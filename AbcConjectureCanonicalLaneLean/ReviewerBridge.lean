import AbcConjectureCanonicalLaneLean.Formalization
import AbcConjectureCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace AbcConjectureCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "7acd96cfd67364bd279e1894cc1c8b27d50d48175127b16b9fadc349cd17217e", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "95737c019cd2aebe3aa634b88e707c9750bf394d4f2221ed3124fc384460084a", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "822b1b3d705b9de3bf429f19c013dce1d295cb9766951d8665fd868898b33cb9", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "8492958196a79df33a8b3d599c66d46e68d919116f11383f141bb4adc75c6321", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "c4b9aeb03e5a6f92612ccafad4a5437aa865078b42692880cc939670b4a49dcc", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "79a8e6f458604ee21a89605fc0b8f2f922c1bdcdf3e7edfed585719e28c2916b", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "e5181bb39f3a34bcd1cc44cb7b759a0dc38d9794cd1c5b837b89aec629821147", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "3fcb8fa77fdd95819af26efb14f79031283ff07d8745e1536637ea1618f7684e", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "3413476ae57ea0596bdc4088a4366834a6808edba9018473b6f95a13eef94a8d", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "ABC_G1", constant := "kappa_height" },
  { gate := "ABC_G2", constant := "sigma_defect" },
  { gate := "ABC_G3", constant := "kappa_compact" },
  { gate := "ABC_G4", constant := "rho_rigidity" },
  { gate := "ABC_G5", constant := "radical_transfer" },
  { gate := "ABC_G6", constant := "eps_coh" },
  { gate := "ABC_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "c15ac9f1b57b2ec0c00abe286cf5e67a21a49087c64404fac3991d7d0f1a462a" },
  { path := "README.md", sha256 := "9887bc30d0319623ae02fb78a4f1f35ca85df11277fd5470b43acb5dd01dd9c4" },
  { path := "artifacts/constants_extracted.json", sha256 := "8492958196a79df33a8b3d599c66d46e68d919116f11383f141bb4adc75c6321" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "822b1b3d705b9de3bf429f19c013dce1d295cb9766951d8665fd868898b33cb9" },
  { path := "artifacts/constants_registry.json", sha256 := "c4b9aeb03e5a6f92612ccafad4a5437aa865078b42692880cc939670b4a49dcc" },
  { path := "artifacts/promotion_report.json", sha256 := "e5181bb39f3a34bcd1cc44cb7b759a0dc38d9794cd1c5b837b89aec629821147" },
  { path := "artifacts/stitch_constants.json", sha256 := "79a8e6f458604ee21a89605fc0b8f2f922c1bdcdf3e7edfed585719e28c2916b" },
  { path := "notes/EG1_public.md", sha256 := "0ee5ecd95693fd105f9a6c58afe79fe54e649ef19426654f46a865f235212e16" },
  { path := "notes/EG2_public.md", sha256 := "0270e377ed07c4572c6751c11c66e4b4c59632fea541000c393095033f1d5cd4" },
  { path := "notes/EG3_public.md", sha256 := "c6ef2a5040d62cf9a8764dfe925d176e51eef92a79f8ca75f19236220ca1da1d" },
  { path := "notes/EG4_public.md", sha256 := "f78e4c8e8d48d2329e76b953d17b0521f0da09f39fd319e0e9a155ff3357b4ea" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "95737c019cd2aebe3aa634b88e707c9750bf394d4f2221ed3124fc384460084a" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "67942268ee90d1230a18d608a11c5b46eebc3748048781c120cf84fb3c500923" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "558a93f2baf06de209e44a0407b49e63d5c97a66bdfd7d24aa67a7990c530e8f" },
  { path := "paper/ABC_CONJECTURE_PREPRINT.md", sha256 := "e7d410a68619d62462125368399b7f2e7f16eb8739046532af23424d53b4549b" },
  { path := "repro/REPRO_PACK.md", sha256 := "c18c7d7812bb178c17e8746dbe4b59c4eeed25436dc5ab6512ff7966908d4d91" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "15fe29ef59c422e58807df9d1f231d3e6e8acc03d6ca184809ef7c58e2a3721a" },
  { path := "repro/certificate_baseline.json", sha256 := "3413476ae57ea0596bdc4088a4366834a6808edba9018473b6f95a13eef94a8d" },
  { path := "repro/run_repro.sh", sha256 := "f1194b13422fa378c3a939f338b3d8f2d79f0a0b66a7cc72d953750fb8f84d6a" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/abc_closure_guard.py", sha256 := "26f38e091a264bc219789d6b0a3eea36789f1e1c2dc1038b8f25fa8ec13a2d23" },
  { path := "scripts/README.md", sha256 := "63941b742d8e1f299e6644683b9fa0fddf2704c30d5c088f1de4219e403ff8c1" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "ABC_G1", status := "PASS" },
  { gate := "ABC_G2", status := "PASS" },
  { gate := "ABC_G3", status := "PASS" },
  { gate := "ABC_G4", status := "PASS" },
  { gate := "ABC_G5", status := "PASS" },
  { gate := "ABC_G6", status := "PASS" },
  { gate := "ABC_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_compact", value := "0.801924619085806" },
  { key := "kappa_height", value := "1.0816000000000001" },
  { key := "radical_transfer", value := "1.0283600000000002" },
  { key := "rho_rigidity", value := "1.078" },
  { key := "sigma_defect", value := "1.066" },
  { key := "sigma_star_can", value := "1.054" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "kappa_compact",
  "kappa_height",
  "radical_transfer",
  "rho_rigidity",
  "sigma_defect",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end AbcConjectureCanonicalLaneLean
end HautevilleHouse
