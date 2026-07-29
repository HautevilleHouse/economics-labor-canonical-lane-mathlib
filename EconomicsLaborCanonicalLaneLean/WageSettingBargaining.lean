import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsLaborCanonicalLaneLean

structure WageSettingPackage where
  reservationWage : ℝ
  bargainingPower : ℝ
  wage : ℝ
  bargainingSolution : Prop

structure WageSettingEvidence (W : WageSettingPackage) where
  reservationWageClosed : W.reservationWage ≥ 0
  bargainingPowerClosed : W.bargainingPower ∈ Set.Ioo (0 : ℝ) 1
  wageClosed : W.wage = W.reservationWage + W.bargainingPower * (1 - W.reservationWage)
  bargainingSolutionClosed : W.bargainingSolution

def WageSettingClosed (W : WageSettingPackage) : Prop :=
  W.reservationWage ≥ 0 ∧ W.bargainingPower ∈ Set.Ioo (0 : ℝ) 1 ∧
  W.wage = W.reservationWage + W.bargainingPower * (1 - W.reservationWage) ∧ W.bargainingSolution

theorem wage_setting_closed_from_evidence (W : WageSettingPackage) (E : WageSettingEvidence W) : WageSettingClosed W :=
  And.intro E.reservationWageClosed (And.intro E.bargainingPowerClosed (And.intro E.wageClosed E.bargainingSolutionClosed))

end EconomicsLaborCanonicalLaneLean
end HautevilleHouse