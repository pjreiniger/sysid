// Copyright (c) FIRST and other WPILib contributors.
// Open Source Software; you can modify and/or share it under the terms of
// the WPILib BSD license file in the root directory of this project.

#pragma once

#include <functional>
#include <memory>
#include <optional>
#include <string>
#include <thread>
#include <vector>

#include <glass/View.h>
#include <implot.h>
#include <portable-file-dialogs.h>
#include <units/time.h>
#include <units/voltage.h>
#include <wpi/Logger.h>
#include <wpi/StringMap.h>

#include "sysid/analysis/AnalysisManager.h"
#include "sysid/analysis/AnalysisType.h"
#include "sysid/analysis/FeedbackAnalysis.h"
#include "sysid/analysis/FeedbackControllerPreset.h"
#include "sysid/view/AnalyzerPlot.h"

struct ImPlotPoint;

namespace sysid {
class Analyzer : public glass::View {
 public:
  static constexpr const char* kPresetNames[] = {
      "Default",    "WPILib (2020-)",  "WPILib (Pre-2020)", "CTRE (New)",
      "CTRE (Old)", "REV (Brushless)", "REV (Brushed)",     "Venom"};

  static constexpr const char* kLoopTypes[] = {"Position", "Velocity"};

  explicit Analyzer(wpi::Logger& logger);

  void Display() override;
  ~Analyzer() override { AbortDataPrep(); };

 private:
  void SelectFile();
  void PrepareData();
  void Calculate();
  void ResetManagerState();
  void PrepareGraphs();
  void RefreshInformation();
  void AbortDataPrep();
  void DisplayFeedforwardGains(bool combined = false);
  void ConfigParamsOnFileSelect();

  /**
   * Loads the diagnostic plots.
   *
   * @return returns true if the plots have already been loaded, false if they
   * have just finished loading.
   */
  bool LoadPlots();

  bool first = true;
  std::string m_exception;

  // Everything related to feedback controller calculations.
  AnalysisManager::Settings m_settings;
  wpi::StringMap<FeedbackControllerPreset> m_presets;

  int m_selectedLoopType = 1;
  int m_selectedPreset = 0;

  // Feedforward and feedback gains.
  std::vector<double> m_ff;
  double m_rSquared;
  double m_Kp;
  double m_Kd;

  // Track width
  std::optional<double> m_trackWidth;

  // Units
  double m_factor;
  std::string m_unit;
  int m_selectedOverrideUnit = 0;

  // Data analysis
  std::unique_ptr<AnalysisManager> m_manager;
  AnalysisType m_type;
  int m_window = 8;
  double m_threshold = 0.2;
  float m_stepTestDuration = 0.0;

  bool combinedGraphFit = false;

  // File manipulation
  std::unique_ptr<pfd::open_file> m_selector;
  std::string* m_location;

  // Logger
  wpi::Logger& m_logger;

  // Plot
  AnalyzerPlot m_plot{m_logger};
  bool m_prevPlotsLoaded = false;

  // Stores graph scroll bar position and states for keeping track of scroll
  // positions after loading graphs
  float m_graphScroll;

  std::atomic<bool> m_abortDataPrep{false};
  std::thread m_dataThread;
};
}  // namespace sysid
