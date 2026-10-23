import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A315500: Coordination sequence Gal.5.325.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315500, there is no canonical definition to state claims against.
-/

/-! ## A315500.P15894370462196592594

`A315490(n)+A044939(A002212(n))`
-/

namespace A315500.P15894370462196592594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315490 n + A044939 (A002212 n).toNat

end

end A315500.P15894370462196592594

/-! ## A315500.P6755575158976091050

`A069010(A350798(n))+A008587(n)`
-/

namespace A315500.P6755575158976091050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A350798 n).toNat + A008587 n

end

end A315500.P6755575158976091050

/-! ## A315500.P2635562293313368853

`A345941(A000984(n))+A073140(2*n)`
-/

namespace A315500.P2635562293313368853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345941 (A000984 n).toNat + A073140 (2 * n)

end

end A315500.P2635562293313368853

/-!
# A315501: Coordination sequence Gal.4.149.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315501, there is no canonical definition to state claims against.
-/

/-! ## A315501.P13162754624134643439

`A008574(n)+A002264(A315960(n))`
-/

namespace A315501.P13162754624134643439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A002264 (A315960 n).toNat

end

end A315501.P13162754624134643439

/-! ## A315501.P7335625159569336107

`A004525(A022144(n))+A002264(A315960(n))`
-/

namespace A315501.P7335625159569336107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A022144 n).toNat + A002264 (A315960 n).toNat

end

end A315501.P7335625159569336107

/-! ## A315501.P12246734993953977724

`A298793(2*n)-A304495(A000110(n))`
-/

namespace A315501.P12246734993953977724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298793 (2 * n) - A304495 (A000110 n).toNat

end

end A315501.P12246734993953977724

/-! ## A315501.P12777437703020567855

`A315495(n)+A037913(A038092(n+9))`
-/

namespace A315501.P12777437703020567855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315495 n + A037913 (A038092 (n + 9)).toNat

end

end A315501.P12777437703020567855

/-! ## A315501.P17619593045140138390

`A339929(p?[A351831(n+1)])+A313799(n)`
-/

namespace A315501.P17619593045140138390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339929 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A313799 n

end

end A315501.P17619593045140138390

/-!
# A315502: Coordination sequence Gal.4.148.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315502, there is no canonical definition to state claims against.
-/

/-! ## A315502.P11091854502324337287

`A315342(n)+A284203((n+1)²)`
-/

namespace A315502.P11091854502324337287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315342 n + A284203 ((n + 1) ^ 2)

end

end A315502.P11091854502324337287

/-! ## A315502.P3424422220595309042

`or(A007814(A000108(n)), A301708(n))`
-/

namespace A315502.P3424422220595309042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (A000108 n).toNat) (A301708 n)

end

end A315502.P3424422220595309042

/-! ## A315502.P14609366999305299866

`or(A005171(A008708(n)), A315342(n))`
-/

namespace A315502.P14609366999305299866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005171 (A008708 n).toNat) (A315342 n)

end

end A315502.P14609366999305299866

/-! ## A315502.P13457245434145630771

`xor(A011558(A000757(n)), A231001(n))`
-/

namespace A315502.P13457245434145630771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011558 (A000757 n).toNat) (A231001 n)

end

end A315502.P13457245434145630771

/-!
# A315503: Coordination sequence Gal.6.370.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315503, there is no canonical definition to state claims against.
-/

/-! ## A315503.P3977964151192304408

`5*n+1+A001899(A059058(2*(n+2)))`
-/

namespace A315503.P3977964151192304408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 1 : ℤ) + A001899 (A059058 (2 * (n + 2))).toNat

end

end A315503.P3977964151192304408

/-!
# A315504: Coordination sequence Gal.6.593.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315504, there is no canonical definition to state claims against.
-/

/-! ## A315504.P10177371422628348876

`A314989(n)+A001222(A301600(n))`
-/

namespace A315504.P10177371422628348876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314989 n + A001222 (A301600 n).toNat

end

end A315504.P10177371422628348876

/-! ## A315504.P9857091584074217384

`A315554(n)-A188037(A006390(n))`
-/

namespace A315504.P9857091584074217384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315554 n - A188037 (A006390 n).toNat

end

end A315504.P9857091584074217384

/-! ## A315504.P10299429182605289750

`A356225(A306853(n+1))+A301724(n)`
-/

namespace A315504.P10299429182605289750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356225 (A306853 (n + 1)).toNat + A301724 n

end

end A315504.P10299429182605289750

/-! ## A315504.P10265273985161021306

`A174697(3*A064368(n))-A188037(A006390(n))`
-/

namespace A315504.P10265273985161021306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174697 (3 * A064368 n).toNat - A188037 (A006390 n).toNat

end

end A315504.P10265273985161021306

/-! ## A315504.P11733957087021315940

`A044939(A022144(2*n))+A315490(n)+A044939(A002212(n))`
-/

namespace A315504.P11733957087021315940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044939 (A022144 (2 * n)).toNat + (A315490 n + A044939 (A002212 n).toNat)

end

end A315504.P11733957087021315940

/-!
# A315505: Coordination sequence Gal.3.59.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315505, the canonical program `A315505.P9032332142105930141` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315505 has offset 0).

The definition of A315505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2253 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315505.P9032332142105930141

`A314776(n)+n`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A315505

/-- `A314776(n)+n` -/
def P9032332142105930141.Spec : Prop :=
  ∀ n, P9032332142105930141.a n = A315505 n

theorem P9032332142105930141.correct : P9032332142105930141.Spec := by
  intro n
  simp only [A315505]

end A315505

/-! ## A315505.P4677608692528251076

`(A315237(n)+A008458(n))/2`
-/

namespace A315505.P4677608692528251076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315237 n + A008458 n : ℚ) / 2

end

end A315505.P4677608692528251076

namespace A315505

/-- `(A315237(n)+A008458(n))/2` -/
def P4677608692528251076.Spec : Prop :=
  ∀ n, P4677608692528251076.a n = (A315505 n : ℚ)

end A315505

/-! ## A315505.P17441394645368402368

`A005843(n)-(n-A314776(n))`
-/

namespace A315505.P17441394645368402368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A314776 n)

end

end A315505.P17441394645368402368

namespace A315505

/-- `A005843(n)-(n-A314776(n))` -/
def P17441394645368402368.Spec : Prop :=
  ∀ n, P17441394645368402368.a n = A315505 n

end A315505

/-! ## A315505.P4756466144278412808

`A257088(Δ[A054925(n)])+5*n`
-/

namespace A315505.P4756466144278412808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (f1 (n + 1) - f1 n).toNat + (5 * n : ℤ)

end

end A315505.P4756466144278412808

namespace A315505

/-- `A257088(Δ[A054925(n)])+5*n` -/
def P4756466144278412808.Spec : Prop :=
  ∀ n, P4756466144278412808.a n = A315505 n

end A315505

/-! ## A315505.P12216094602968758970

`A022998(A004525(n))+A008706(n)`
-/

namespace A315505.P12216094602968758970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A004525 n).toNat + A008706 n

end

end A315505.P12216094602968758970

namespace A315505

/-- `A022998(A004525(n))+A008706(n)` -/
def P12216094602968758970.Spec : Prop :=
  ∀ n, P12216094602968758970.a n = A315505 n

end A315505

/-! ## A315505.P16337515308246084757

`A008706(n)+A004396(A028390(n))`
-/

namespace A315505.P16337515308246084757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + A004396 (A028390 n).toNat

end

end A315505.P16337515308246084757

namespace A315505

/-- `A008706(n)+A004396(A028390(n))` -/
def P16337515308246084757.Spec : Prop :=
  ∀ n, P16337515308246084757.a n = A315505 n

end A315505

/-! ## A315505.P3484282077497414115

`A257088(A004525(n))+A008587(n)`
-/

namespace A315505.P3484282077497414115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (A004525 n).toNat + A008587 n

end

end A315505.P3484282077497414115

namespace A315505

/-- `A257088(A004525(n))+A008587(n)` -/
def P3484282077497414115.Spec : Prop :=
  ∀ n, P3484282077497414115.a n = A315505 n

end A315505

/-! ## A315505.P111887121561129298

`A022998(A004525(n))+A008574(n)+n`
-/

namespace A315505.P111887121561129298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A004525 n).toNat + (A008574 n + (n : ℤ))

end

end A315505.P111887121561129298

namespace A315505

/-- `A022998(A004525(n))+A008574(n)+n` -/
def P111887121561129298.Spec : Prop :=
  ∀ n, P111887121561129298.a n = A315505 n

end A315505

/-! ## A315505.P14043706488884761225

`A008574(n)+A004396(A028390(n))+n`
-/

namespace A315505.P14043706488884761225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A004396 (A028390 n).toNat + (n : ℤ))

end

end A315505.P14043706488884761225

namespace A315505

/-- `A008574(n)+A004396(A028390(n))+n` -/
def P14043706488884761225.Spec : Prop :=
  ∀ n, P14043706488884761225.a n = A315505 n

end A315505

/-! ## A315505.P7263728864295998775

`A008458(n)+A004396(A028390(n))-n`
-/

namespace A315505.P7263728864295998775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A004396 (A028390 n).toNat - (n : ℤ))

end

end A315505.P7263728864295998775

namespace A315505

/-- `A008458(n)+A004396(A028390(n))-n` -/
def P7263728864295998775.Spec : Prop :=
  ∀ n, P7263728864295998775.a n = A315505 n

end A315505

/-! ## A315505.P17278615682754102445

`A008458(n)+A008579(n)-A313321(n)`
-/

namespace A315505.P17278615682754102445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008579 n - A313321 n)

end

end A315505.P17278615682754102445

namespace A315505

/-- `A008458(n)+A008579(n)-A313321(n)` -/
def P17278615682754102445.Spec : Prop :=
  ∀ n, P17278615682754102445.a n = A315505 n

end A315505

/-! ## A315505.P113293163739404641

`A315237(n)+A001281(A008458(n)-A315237(n))`
-/

namespace A315505.P113293163739404641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315237 n + A001281 (A008458 n - A315237 n).toNat

end

end A315505.P113293163739404641

namespace A315505

/-- `A315237(n)+A001281(A008458(n)-A315237(n))` -/
def P113293163739404641.Spec : Prop :=
  ∀ n, P113293163739404641.a n = A315505 n

end A315505

/-! ## A315505.P13932645695945732531

`A004277(n)+A004526(A315237(n))+n`
-/

namespace A315505.P13932645695945732531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (A004526 (A315237 n).toNat + (n : ℤ))

end

end A315505.P13932645695945732531

namespace A315505

/-- `A004277(n)+A004526(A315237(n))+n` -/
def P13932645695945732531.Spec : Prop :=
  ∀ n, P13932645695945732531.a n = A315505 n

end A315505

/-! ## A315505.P15330974397089331582

`A005843(n)+A004525(A315237(n))+n`
-/

namespace A315505.P15330974397089331582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A004525 (A315237 n).toNat + (n : ℤ))

end

end A315505.P15330974397089331582

namespace A315505

/-- `A005843(n)+A004525(A315237(n))+n` -/
def P15330974397089331582.Spec : Prop :=
  ∀ n, P15330974397089331582.a n = A315505 n

end A315505

/-! ## A315505.P7624754979931306793

`A004396(A028390(n)+A008458(n))+n`
-/

namespace A315505.P7624754979931306793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A028390 n + A008458 n).toNat + (n : ℤ)

end

end A315505.P7624754979931306793

namespace A315505

/-- `A004396(A028390(n)+A008458(n))+n` -/
def P7624754979931306793.Spec : Prop :=
  ∀ n, P7624754979931306793.a n = A315505 n

end A315505

/-! ## A315505.P1611661815761402852

`A001281(A315237(n)+A008458(n))`
-/

namespace A315505.P1611661815761402852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315237 n + A008458 n).toNat

end

end A315505.P1611661815761402852

namespace A315505

/-- `A001281(A315237(n)+A008458(n))` -/
def P1611661815761402852.Spec : Prop :=
  ∀ n, P1611661815761402852.a n = A315505 n

end A315505

/-!
# A315507: Coordination sequence Gal.6.199.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315507, the canonical program `A315507.P16703237087407935918` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315507 has offset 0).

The definition of A315507 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315507.P11432545552913105360

`abs(A008592(n)-A312980(n))`
-/

namespace A315507.P11432545552913105360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312980 n|

end

end A315507.P11432545552913105360

namespace A315507

/-- `abs(A008592(n)-A312980(n))` -/
def P11432545552913105360.Spec : Prop :=
  ∀ n, P11432545552913105360.a n = A315507 n

end A315507

/-! ## A315507.P16703237087407935918

`A315460(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A315507

/-- `A315460(n)+Δ[A011864(n)]` -/
def P16703237087407935918.Spec : Prop :=
  ∀ n, P16703237087407935918.a n = A315507 n

theorem P16703237087407935918.correct : P16703237087407935918.Spec := by
  intro n
  simp only [A315507]

end A315507

/-! ## A315507.P15305975936654852331

`2*A008706(n)-A312980(n)`
-/

namespace A315507.P15305975936654852331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312980 n

end

end A315507.P15305975936654852331

namespace A315507

/-- `2*A008706(n)-A312980(n)` -/
def P15305975936654852331.Spec : Prop :=
  ∀ n, P15305975936654852331.a n = A315507 n

end A315507

/-! ## A315507.P17990131276961375908

`2*A313689(n)-A312902(n)`
-/

namespace A315507.P17990131276961375908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313689 n - A312902 n

end

end A315507.P17990131276961375908

namespace A315507

/-- `2*A313689(n)-A312902(n)` -/
def P17990131276961375908.Spec : Prop :=
  ∀ n, P17990131276961375908.a n = A315507 n

end A315507

/-! ## A315507.P8058388498920142614

`A135042(2*n+1)-A312980(n)`
-/

namespace A315507.P8058388498920142614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A312980 n

end

end A315507.P8058388498920142614

namespace A315507

/-- `A135042(2*n+1)-A312980(n)` -/
def P8058388498920142614.Spec : Prop :=
  ∀ n, P8058388498920142614.a n = A315507 n

end A315507

/-! ## A315507.P13310199318036684607

`A008458(n)+A008574(n)-A312980(n)`
-/

namespace A315507.P13310199318036684607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312980 n)

end

end A315507.P13310199318036684607

namespace A315507

/-- `A008458(n)+A008574(n)-A312980(n)` -/
def P13310199318036684607.Spec : Prop :=
  ∀ n, P13310199318036684607.a n = A315507 n

end A315507

/-! ## A315507.P14202558166031214565

`A312902(n)+A005843(A313689(n)-A312902(n))`
-/

namespace A315507.P14202558166031214565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312902 n + A005843 (A313689 n - A312902 n).toNat

end

end A315507.P14202558166031214565

namespace A315507

/-- `A312902(n)+A005843(A313689(n)-A312902(n))` -/
def P14202558166031214565.Spec : Prop :=
  ∀ n, P14202558166031214565.a n = A315507 n

end A315507

/-! ## A315507.P9826428133500890675

`(A315730(n)+A315302(n))/2`
-/

namespace A315507.P9826428133500890675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315730 n + A315302 n : ℚ) / 2

end

end A315507.P9826428133500890675

namespace A315507

/-- `(A315730(n)+A315302(n))/2` -/
def P9826428133500890675.Spec : Prop :=
  ∀ n, P9826428133500890675.a n = (A315507 n : ℚ)

end A315507

/-! ## A315507.P16036525466205283315

`A315302(n)+A001281(A315730(n)-A315302(n))`
-/

namespace A315507.P16036525466205283315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315302 n + A001281 (A315730 n - A315302 n).toNat

end

end A315507.P16036525466205283315

namespace A315507

/-- `A315302(n)+A001281(A315730(n)-A315302(n))` -/
def P16036525466205283315.Spec : Prop :=
  ∀ n, P16036525466205283315.a n = A315507 n

end A315507

/-! ## A315507.P325682048899262340

`A005843(A313689(n))-A312902(n)`
-/

namespace A315507.P325682048899262340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313689 n).toNat - A312902 n

end

end A315507.P325682048899262340

namespace A315507

/-- `A005843(A313689(n))-A312902(n)` -/
def P325682048899262340.Spec : Prop :=
  ∀ n, P325682048899262340.a n = A315507 n

end A315507

/-! ## A315507.P3827535030192983588

`A005843(A008706(n))-A312980(n)`
-/

namespace A315507.P3827535030192983588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312980 n

end

end A315507.P3827535030192983588

namespace A315507

/-- `A005843(A008706(n))-A312980(n)` -/
def P3827535030192983588.Spec : Prop :=
  ∀ n, P3827535030192983588.a n = A315507 n

end A315507

/-! ## A315507.P623546815212096476

`A065502(A008458(n))-A312980(n)`
-/

namespace A315507.P623546815212096476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A312980 n

end

end A315507.P623546815212096476

namespace A315507

/-- `A065502(A008458(n))-A312980(n)` -/
def P623546815212096476.Spec : Prop :=
  ∀ n, P623546815212096476.a n = A315507 n

end A315507

/-! ## A315507.P11482289543186334096

`A271324(A022144(n))-A312980(n)`
-/

namespace A315507.P11482289543186334096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271324 (A022144 n).toNat - A312980 n

end

end A315507.P11482289543186334096

namespace A315507

/-- `A271324(A022144(n))-A312980(n)` -/
def P11482289543186334096.Spec : Prop :=
  ∀ n, P11482289543186334096.a n = A315507 n

end A315507

/-! ## A315507.P6570341080217886368

`A001281(A315730(n)+A315302(n))`
-/

namespace A315507.P6570341080217886368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315730 n + A315302 n).toNat

end

end A315507.P6570341080217886368

namespace A315507

/-- `A001281(A315730(n)+A315302(n))` -/
def P6570341080217886368.Spec : Prop :=
  ∀ n, P6570341080217886368.a n = A315507 n

end A315507

/-!
# A315508: Coordination sequence Gal.6.325.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315508, the canonical program `A315508.P17212227273649796777` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315508 has offset 0).

The definition of A315508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315508.P17212227273649796777

`A315069(n)+A253262(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A315508

/-- `A315069(n)+A253262(n)` -/
def P17212227273649796777.Spec : Prop :=
  ∀ n, P17212227273649796777.a n = A315508 n

theorem P17212227273649796777.correct : P17212227273649796777.Spec := by
  intro n
  simp only [A315508]

end A315508

/-! ## A315508.P846630147091134412

`A330025(n)+A313842(n)`
-/

namespace A315508.P846630147091134412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A313842 n

end

end A315508.P846630147091134412

namespace A315508

/-- `A330025(n)+A313842(n)` -/
def P846630147091134412.Spec : Prop :=
  ∀ n, P846630147091134412.a n = A315508 n

end A315508

/-! ## A315508.P3871322650052394377

`abs(A008592(n)-A312979(n))`
-/

namespace A315508.P3871322650052394377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312979 n|

end

end A315508.P3871322650052394377

namespace A315508

/-- `abs(A008592(n)-A312979(n))` -/
def P3871322650052394377.Spec : Prop :=
  ∀ n, P3871322650052394377.a n = A315508 n

end A315508

/-! ## A315508.P8121048027165144613

`2*A008706(n)-A312979(n)`
-/

namespace A315508.P8121048027165144613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312979 n

end

end A315508.P8121048027165144613

namespace A315508

/-- `2*A008706(n)-A312979(n)` -/
def P8121048027165144613.Spec : Prop :=
  ∀ n, P8121048027165144613.a n = A315508 n

end A315508

/-! ## A315508.P3041169373896820023

`A008458(n)+A008574(n)-A312979(n)`
-/

namespace A315508.P3041169373896820023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312979 n)

end

end A315508.P3041169373896820023

namespace A315508

/-- `A008458(n)+A008574(n)-A312979(n)` -/
def P3041169373896820023.Spec : Prop :=
  ∀ n, P3041169373896820023.a n = A315508 n

end A315508

/-! ## A315508.P17804118930608067303

`A250120(n)+A313476(n)-A008574(n)`
-/

namespace A315508.P17804118930608067303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + (A313476 n - A008574 n)

end

end A315508.P17804118930608067303

namespace A315508

/-- `A250120(n)+A313476(n)-A008574(n)` -/
def P17804118930608067303.Spec : Prop :=
  ∀ n, P17804118930608067303.a n = A315508 n

end A315508

/-! ## A315508.P4258906889120848859

`2*A315518(n)-A315536(n)`
-/

namespace A315508.P4258906889120848859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315518 n - A315536 n

end

end A315508.P4258906889120848859

namespace A315508

/-- `2*A315518(n)-A315536(n)` -/
def P4258906889120848859.Spec : Prop :=
  ∀ n, P4258906889120848859.a n = A315508 n

end A315508

/-! ## A315508.P8558961126723213159

`A315742(n)-Δ[A011858(n)]`
-/

namespace A315508.P8558961126723213159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315742 n - (f1 (n + 1) - f1 n)

end

end A315508.P8558961126723213159

namespace A315508

/-- `A315742(n)-Δ[A011858(n)]` -/
def P8558961126723213159.Spec : Prop :=
  ∀ n, P8558961126723213159.a n = A315508 n

end A315508

/-! ## A315508.P602016342251970311

`A315742(n)-A057354(n+1)`
-/

namespace A315508.P602016342251970311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315742 n - A057354 (n + 1)

end

end A315508.P602016342251970311

namespace A315508

/-- `A315742(n)-A057354(n+1)` -/
def P602016342251970311.Spec : Prop :=
  ∀ n, P602016342251970311.a n = A315508 n

end A315508

/-! ## A315508.P1122283489009432975

`A008458(n)+A250120(n)-A313928(n)`
-/

namespace A315508.P1122283489009432975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A250120 n - A313928 n)

end

end A315508.P1122283489009432975

namespace A315508

/-- `A008458(n)+A250120(n)-A313928(n)` -/
def P1122283489009432975.Spec : Prop :=
  ∀ n, P1122283489009432975.a n = A315508 n

end A315508

/-! ## A315508.P3324102206684261427

`A004396(A315303(n))+2*n`
-/

namespace A315508.P3324102206684261427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315303 n).toNat + (2 * n : ℤ)

end

end A315508.P3324102206684261427

namespace A315508

/-- `A004396(A315303(n))+2*n` -/
def P3324102206684261427.Spec : Prop :=
  ∀ n, P3324102206684261427.a n = A315508 n

end A315508

/-! ## A315508.P7618124501997114287

`A004396(A315445(n))+2*n`
-/

namespace A315508.P7618124501997114287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315445 n).toNat + (2 * n : ℤ)

end

end A315508.P7618124501997114287

namespace A315508

/-- `A004396(A315445(n))+2*n` -/
def P7618124501997114287.Spec : Prop :=
  ∀ n, P7618124501997114287.a n = A315508 n

end A315508

/-! ## A315508.P6251684916832696665

`A004396(2*A314827(n)-n)`
-/

namespace A315508.P6251684916832696665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A314827 n - (n : ℤ)).toNat

end

end A315508.P6251684916832696665

namespace A315508

/-- `A004396(2*A314827(n)-n)` -/
def P6251684916832696665.Spec : Prop :=
  ∀ n, P6251684916832696665.a n = A315508 n

end A315508

/-! ## A315508.P8908374452497781229

`A004396(A314827(n)+A314827(n)-n)`
-/

namespace A315508.P8908374452497781229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314827 n + (A314827 n - (n : ℤ))).toNat

end

end A315508.P8908374452497781229

namespace A315508

/-- `A004396(A314827(n)+A314827(n)-n)` -/
def P8908374452497781229.Spec : Prop :=
  ∀ n, P8908374452497781229.a n = A315508 n

end A315508

/-! ## A315508.P7184116834156835282

`A004396(A314827(n)-(n-A314827(n)))`
-/

namespace A315508.P7184116834156835282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314827 n - ((n : ℤ) - A314827 n)).toNat

end

end A315508.P7184116834156835282

namespace A315508

/-- `A004396(A314827(n)-(n-A314827(n)))` -/
def P7184116834156835282.Spec : Prop :=
  ∀ n, P7184116834156835282.a n = A315508 n

end A315508

/-!
# A315509: Coordination sequence Gal.6.633.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315509, the canonical program `A315509.P2705733174138675004` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315509 has offset 0).

The definition of A315509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315509.P2705733174138675004

`abs(A008592(n)-A312976(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A315509

/-- `abs(A008592(n)-A312976(n))` -/
def P2705733174138675004.Spec : Prop :=
  ∀ n, P2705733174138675004.a n = A315509 n

theorem P2705733174138675004.correct : P2705733174138675004.Spec := by
  intro n
  simp only [A315509]

end A315509

/-! ## A315509.P8849243903464011646

`A315466(n)+Δ[A011864(n)]`
-/

namespace A315509.P8849243903464011646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315466 n + (f1 (n + 1) - f1 n)

end

end A315509.P8849243903464011646

namespace A315509

/-- `A315466(n)+Δ[A011864(n)]` -/
def P8849243903464011646.Spec : Prop :=
  ∀ n, P8849243903464011646.a n = A315509 n

end A315509

/-! ## A315509.P11883992152374123682

`2*A008706(n)-A312976(n)`
-/

namespace A315509.P11883992152374123682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312976 n

end

end A315509.P11883992152374123682

namespace A315509

/-- `2*A008706(n)-A312976(n)` -/
def P11883992152374123682.Spec : Prop :=
  ∀ n, P11883992152374123682.a n = A315509 n

end A315509

/-! ## A315509.P11688748825310090912

`A135042(Δ[n²])-A312976(n)`
-/

namespace A315509.P11688748825310090912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A312976 n

end

end A315509.P11688748825310090912

namespace A315509

/-- `A135042(Δ[n²])-A312976(n)` -/
def P11688748825310090912.Spec : Prop :=
  ∀ n, P11688748825310090912.a n = A315509 n

end A315509

/-! ## A315509.P12283515343334732224

`A008458(n)+A008574(n)-A312976(n)`
-/

namespace A315509.P12283515343334732224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312976 n)

end

end A315509.P12283515343334732224

namespace A315509

/-- `A008458(n)+A008574(n)-A312976(n)` -/
def P12283515343334732224.Spec : Prop :=
  ∀ n, P12283515343334732224.a n = A315509 n

end A315509

/-! ## A315509.P6773161358612654009

`A008458(n)-A004525(A008458(n)-A315396(n))`
-/

namespace A315509.P6773161358612654009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (A008458 n - A315396 n).toNat

end

end A315509.P6773161358612654009

namespace A315509

/-- `A008458(n)-A004525(A008458(n)-A315396(n))` -/
def P6773161358612654009.Spec : Prop :=
  ∀ n, P6773161358612654009.a n = A315509 n

end A315509

/-! ## A315509.P15909472524097359226

`2*n+A004396(A315450(n))`
-/

namespace A315509.P15909472524097359226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A315450 n).toNat

end

end A315509.P15909472524097359226

namespace A315509

/-- `2*n+A004396(A315450(n))` -/
def P15909472524097359226.Spec : Prop :=
  ∀ n, P15909472524097359226.a n = A315509 n

end A315509

/-! ## A315509.P2127770483606657979

`A008585(n)-(n-A004396(A315450(n)))`
-/

namespace A315509.P2127770483606657979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A004396 (A315450 n).toNat)

end

end A315509.P2127770483606657979

namespace A315509

/-- `A008585(n)-(n-A004396(A315450(n)))` -/
def P2127770483606657979.Spec : Prop :=
  ∀ n, P2127770483606657979.a n = A315509 n

end A315509

/-! ## A315509.P10570288930152574343

`A005843(A008706(n))-A312976(n)`
-/

namespace A315509.P10570288930152574343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312976 n

end

end A315509.P10570288930152574343

namespace A315509

/-- `A005843(A008706(n))-A312976(n)` -/
def P10570288930152574343.Spec : Prop :=
  ∀ n, P10570288930152574343.a n = A315509 n

end A315509

/-! ## A315509.P5077156571918997805

`2*A008574(n)-A004525(A313296(n))`
-/

namespace A315509.P5077156571918997805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 n - A004525 (A313296 n).toNat

end

end A315509.P5077156571918997805

namespace A315509

/-- `2*A008574(n)-A004525(A313296(n))` -/
def P5077156571918997805.Spec : Prop :=
  ∀ n, P5077156571918997805.a n = A315509 n

end A315509

/-! ## A315509.P926973991326773611

`A004396(A315450(n)+A008486(n))`
-/

namespace A315509.P926973991326773611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315450 n + A008486 n).toNat

end

end A315509.P926973991326773611

namespace A315509

/-- `A004396(A315450(n)+A008486(n))` -/
def P926973991326773611.Spec : Prop :=
  ∀ n, P926973991326773611.a n = A315509 n

end A315509

/-! ## A315509.P16334869303276033770

`A004396(A315450(n)+A008585(n))`
-/

namespace A315509.P16334869303276033770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315450 n + A008585 n).toNat

end

end A315509.P16334869303276033770

namespace A315509

/-- `A004396(A315450(n)+A008585(n))` -/
def P16334869303276033770.Spec : Prop :=
  ∀ n, P16334869303276033770.a n = A315509 n

end A315509

/-! ## A315509.P15256710777140453450

`A004525(A315396(n)+A008458(n))`
-/

namespace A315509.P15256710777140453450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315396 n + A008458 n).toNat

end

end A315509.P15256710777140453450

namespace A315509

/-- `A004525(A315396(n)+A008458(n))` -/
def P15256710777140453450.Spec : Prop :=
  ∀ n, P15256710777140453450.a n = A315509 n

end A315509

/-! ## A315509.P1678412486847204273

`A004396(2*A315521(n))-A005843(n)`
-/

namespace A315509.P1678412486847204273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A315521 n).toNat - A005843 n

end

end A315509.P1678412486847204273

namespace A315509

/-- `A004396(2*A315521(n))-A005843(n)` -/
def P1678412486847204273.Spec : Prop :=
  ∀ n, P1678412486847204273.a n = A315509 n

end A315509

/-!
# A315510: Coordination sequence Gal.5.290.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315510, the canonical program `A315510.P17321051507186431582` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315510 has offset 0).

The definition of A315510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 223 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315510.P17321051507186431582

`abs(A008592(n)-A312975(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315510

/-- `abs(A008592(n)-A312975(n))` -/
def P17321051507186431582.Spec : Prop :=
  ∀ n, P17321051507186431582.a n = A315510 n

theorem P17321051507186431582.correct : P17321051507186431582.Spec := by
  intro n
  simp only [A315510]

end A315510

/-! ## A315510.P16258085211908073045

`2*A008706(n)-A312975(n)`
-/

namespace A315510.P16258085211908073045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312975 n

end

end A315510.P16258085211908073045

namespace A315510

/-- `2*A008706(n)-A312975(n)` -/
def P16258085211908073045.Spec : Prop :=
  ∀ n, P16258085211908073045.a n = A315510 n

end A315510

/-! ## A315510.P16609492765119060765

`A004525(A315398(n)+A008458(n))`
-/

namespace A315510.P16609492765119060765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315398 n + A008458 n).toNat

end

end A315510.P16609492765119060765

namespace A315510

/-- `A004525(A315398(n)+A008458(n))` -/
def P16609492765119060765.Spec : Prop :=
  ∀ n, P16609492765119060765.a n = A315510 n

end A315510

/-! ## A315510.P8696036146825222305

`A004525(A315398(n)+A008588(n))`
-/

namespace A315510.P8696036146825222305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315398 n + A008588 n).toNat

end

end A315510.P8696036146825222305

namespace A315510

/-- `A004525(A315398(n)+A008588(n))` -/
def P8696036146825222305.Spec : Prop :=
  ∀ n, P8696036146825222305.a n = A315510 n

end A315510

/-! ## A315510.P13989281288122772567

`A313894(n)+A128834(A004396(n))`
-/

namespace A315510.P13989281288122772567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n + A128834 (A004396 n).toNat

end

end A315510.P13989281288122772567

namespace A315510

/-- `A313894(n)+A128834(A004396(n))` -/
def P13989281288122772567.Spec : Prop :=
  ∀ n, P13989281288122772567.a n = A315510 n

end A315510

/-! ## A315510.P1904931761385844755

`A314141(n)+A128834(A006369(n))`
-/

namespace A315510.P1904931761385844755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314141 n + A128834 (A006369 n).toNat

end

end A315510.P1904931761385844755

namespace A315510

/-- `A314141(n)+A128834(A006369(n))` -/
def P1904931761385844755.Spec : Prop :=
  ∀ n, P1904931761385844755.a n = A315510 n

end A315510

/-! ## A315510.P17216048690069943062

`A005843(A008706(n))-A312975(n)`
-/

namespace A315510.P17216048690069943062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312975 n

end

end A315510.P17216048690069943062

namespace A315510

/-- `A005843(A008706(n))-A312975(n)` -/
def P17216048690069943062.Spec : Prop :=
  ∀ n, P17216048690069943062.a n = A315510 n

end A315510

/-! ## A315510.P11341331983652038603

`A184418(A008574(n))-A312975(n)`
-/

namespace A315510.P11341331983652038603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A312975 n

end

end A315510.P11341331983652038603

namespace A315510

/-- `A184418(A008574(n))-A312975(n)` -/
def P11341331983652038603.Spec : Prop :=
  ∀ n, P11341331983652038603.a n = A315510 n

end A315510

/-! ## A315510.P15880238911815581463

`A314828(n)+A004396(A004396(2*n))`
-/

namespace A315510.P15880238911815581463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314828 n + A004396 (A004396 (2 * n)).toNat

end

end A315510.P15880238911815581463

namespace A315510

/-- `A314828(n)+A004396(A004396(2*n))` -/
def P15880238911815581463.Spec : Prop :=
  ∀ n, P15880238911815581463.a n = A315510 n

end A315510

/-! ## A315510.P4540654238043572488

`A314141(n)+A102283(A004396(2*n))`
-/

namespace A315510.P4540654238043572488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314141 n + A102283 (A004396 (2 * n)).toNat

end

end A315510.P4540654238043572488

namespace A315510

/-- `A314141(n)+A102283(A004396(2*n))` -/
def P4540654238043572488.Spec : Prop :=
  ∀ n, P4540654238043572488.a n = A315510 n

end A315510

/-! ## A315510.P1092287171910022992

`A314205(n)+A134667(A004396(2*n))`
-/

namespace A315510.P1092287171910022992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314205 n + A134667 (A004396 (2 * n)).toNat

end

end A315510.P1092287171910022992

namespace A315510

/-- `A314205(n)+A134667(A004396(2*n))` -/
def P1092287171910022992.Spec : Prop :=
  ∀ n, P1092287171910022992.a n = A315510 n

end A315510

/-! ## A315510.P8235771647968942793

`2*A008574(n)-A004525(A313293(n))`
-/

namespace A315510.P8235771647968942793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 n - A004525 (A313293 n).toNat

end

end A315510.P8235771647968942793

namespace A315510

/-- `2*A008574(n)-A004525(A313293(n))` -/
def P8235771647968942793.Spec : Prop :=
  ∀ n, P8235771647968942793.a n = A315510 n

end A315510

/-! ## A315510.P4926649608352408099

`A004525(3*A314828(n)-A008576(n))`
-/

namespace A315510.P4926649608352408099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (3 * A314828 n - A008576 n).toNat

end

end A315510.P4926649608352408099

namespace A315510

/-- `A004525(3*A314828(n)-A008576(n))` -/
def P4926649608352408099.Spec : Prop :=
  ∀ n, P4926649608352408099.a n = A315510 n

end A315510

/-! ## A315510.P15985004982582787302

`A313894(n)-A102283(A006369(4*n))`
-/

namespace A315510.P15985004982582787302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n - A102283 (A006369 (4 * n)).toNat

end

end A315510.P15985004982582787302

namespace A315510

/-- `A313894(n)-A102283(A006369(4*n))` -/
def P15985004982582787302.Spec : Prop :=
  ∀ n, P15985004982582787302.a n = A315510 n

end A315510

/-! ## A315510.P7787724537694105739

`A008458(n)+A008574(n)-A312975(n)`
-/

namespace A315510.P7787724537694105739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312975 n)

end

end A315510.P7787724537694105739

namespace A315510

/-- `A008458(n)+A008574(n)-A312975(n)` -/
def P7787724537694105739.Spec : Prop :=
  ∀ n, P7787724537694105739.a n = A315510 n

end A315510

/-! ## A315510.P15339268702457970877

`A314141(n)-A102283(A004396(n)+n)`
-/

namespace A315510.P15339268702457970877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314141 n - A102283 (A004396 n + (n : ℤ)).toNat

end

end A315510.P15339268702457970877

namespace A315510

/-- `A314141(n)-A102283(A004396(n)+n)` -/
def P15339268702457970877.Spec : Prop :=
  ∀ n, P15339268702457970877.a n = A315510 n

end A315510

/-! ## A315510.P13168447360444297776

`A313894(n)-A102283(A006369(n)+n)`
-/

namespace A315510.P13168447360444297776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n - A102283 (A006369 n + (n : ℤ)).toNat

end

end A315510.P13168447360444297776

namespace A315510

/-- `A313894(n)-A102283(A006369(n)+n)` -/
def P13168447360444297776.Spec : Prop :=
  ∀ n, P13168447360444297776.a n = A315510 n

end A315510

/-! ## A315510.P15826308385750239182

`A314828(n)+A004525(A314828(n)-A008576(n))`
-/

namespace A315510.P15826308385750239182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314828 n + A004525 (A314828 n - A008576 n).toNat

end

end A315510.P15826308385750239182

namespace A315510

/-- `A314828(n)+A004525(A314828(n)-A008576(n))` -/
def P15826308385750239182.Spec : Prop :=
  ∀ n, P15826308385750239182.a n = A315510 n

end A315510

/-! ## A315510.P6135745523416511878

`A008458(n)-A004525(A008458(n)-A315398(n))`
-/

namespace A315510.P6135745523416511878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (A008458 n - A315398 n).toNat

end

end A315510.P6135745523416511878

namespace A315510

/-- `A008458(n)-A004525(A008458(n)-A315398(n))` -/
def P6135745523416511878.Spec : Prop :=
  ∀ n, P6135745523416511878.a n = A315510 n

end A315510

/-!
# A315511: Coordination sequence Gal.4.139.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315511, the canonical program `A315511.P9490866284203063030` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315511 has offset 0).

The definition of A315511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2272 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315511.P9490866284203063030

`a(n-1)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=6, a(2)=11, a(3)=17, a(4)=21, a(5)=27, a(6)=32, a(7)=38, a(8)=44`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A315511

/-- `a(n-1)+a(n-7)-a(n-8)` -/
def P9490866284203063030.Spec : Prop :=
  ∀ n, P9490866284203063030.a n = A315511 n

theorem P9490866284203063030.correct : P9490866284203063030.Spec := by
  intro n
  simp only [A315511]

end A315511

/-! ## A315511.P1556969424834845490

`A315452(n)+Δ[floor((n²-n)/7)]`
-/

namespace A315511.P1556969424834845490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 7⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315452 n + (f1 (n + 1) - f1 n)

end

end A315511.P1556969424834845490

namespace A315511

/-- `A315452(n)+Δ[floor((n²-n)/7)]` -/
def P1556969424834845490.Spec : Prop :=
  ∀ n, P1556969424834845490.a n = A315511 n

end A315511

/-! ## A315511.P17501457811650923198

`A315676(n)-A238470(n)`
-/

namespace A315511.P17501457811650923198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315676 n - A238470 n

end

end A315511.P17501457811650923198

namespace A315511

/-- `A315676(n)-A238470(n)` -/
def P17501457811650923198.Spec : Prop :=
  ∀ n, P17501457811650923198.a n = A315511 n

end A315511

/-! ## A315511.P16511745460994511183

`abs(A008592(n)-A312974(n))`
-/

namespace A315511.P16511745460994511183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312974 n|

end

end A315511.P16511745460994511183

namespace A315511

/-- `abs(A008592(n)-A312974(n))` -/
def P16511745460994511183.Spec : Prop :=
  ∀ n, P16511745460994511183.a n = A315511 n

end A315511

/-! ## A315511.P16924103449173190240

`2*A008706(n)-A312974(n)`
-/

namespace A315511.P16924103449173190240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312974 n

end

end A315511.P16924103449173190240

namespace A315511

/-- `2*A008706(n)-A312974(n)` -/
def P16924103449173190240.Spec : Prop :=
  ∀ n, P16924103449173190240.a n = A315511 n

end A315511

/-! ## A315511.P13262526671395285421

`A315701(n)-A242062(2*n)`
-/

namespace A315511.P13262526671395285421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315701 n - A242062 (2 * n)

end

end A315511.P13262526671395285421

namespace A315511

/-- `A315701(n)-A242062(2*n)` -/
def P13262526671395285421.Spec : Prop :=
  ∀ n, P13262526671395285421.a n = A315511 n

end A315511

/-! ## A315511.P15478274695372817169

`A191276(2*n+1)+A004277(n)`
-/

namespace A315511.P15478274695372817169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191276 (2 * n + 1) + A004277 n

end

end A315511.P15478274695372817169

namespace A315511

/-- `A191276(2*n+1)+A004277(n)` -/
def P15478274695372817169.Spec : Prop :=
  ∀ n, P15478274695372817169.a n = A315511 n

end A315511

/-! ## A315511.P3208868527775258038

`A314838(n)+A057357(2*n+1)`
-/

namespace A315511.P3208868527775258038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314838 n + A057357 (2 * n + 1)

end

end A315511.P3208868527775258038

namespace A315511

/-- `A314838(n)+A057357(2*n+1)` -/
def P3208868527775258038.Spec : Prop :=
  ∀ n, P3208868527775258038.a n = A315511 n

end A315511

/-! ## A315511.P12723312864069721399

`A191276(2*n+1)+A028310(2*n)`
-/

namespace A315511.P12723312864069721399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191276 (2 * n + 1) + A028310 (2 * n)

end

end A315511.P12723312864069721399

namespace A315511

/-- `A191276(2*n+1)+A028310(2*n)` -/
def P12723312864069721399.Spec : Prop :=
  ∀ n, P12723312864069721399.a n = A315511 n

end A315511

/-! ## A315511.P16150928209807985744

`A008458(n)+A008574(n)-A312974(n)`
-/

namespace A315511.P16150928209807985744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312974 n)

end

end A315511.P16150928209807985744

namespace A315511

/-- `A008458(n)+A008574(n)-A312974(n)` -/
def P16150928209807985744.Spec : Prop :=
  ∀ n, P16150928209807985744.a n = A315511 n

end A315511

/-! ## A315511.P2011523157415197842

`A314193(n)+A238469(n)`
-/

namespace A315511.P2011523157415197842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314193 n + A238469 n

end

end A315511.P2011523157415197842

namespace A315511

/-- `A314193(n)+A238469(n)` -/
def P2011523157415197842.Spec : Prop :=
  ∀ n, P2011523157415197842.a n = A315511 n

end A315511

/-! ## A315511.P17298621033958602966

`A315490(n)-A238469(2*n)`
-/

namespace A315511.P17298621033958602966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315490 n - A238469 (2 * n)

end

end A315511.P17298621033958602966

namespace A315511

/-- `A315490(n)-A238469(2*n)` -/
def P17298621033958602966.Spec : Prop :=
  ∀ n, P17298621033958602966.a n = A315511 n

end A315511

/-! ## A315511.P14016927552509905528

`A004396(A315309(n))+2*n`
-/

namespace A315511.P14016927552509905528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315309 n).toNat + (2 * n : ℤ)

end

end A315511.P14016927552509905528

namespace A315511

/-- `A004396(A315309(n))+2*n` -/
def P14016927552509905528.Spec : Prop :=
  ∀ n, P14016927552509905528.a n = A315511 n

end A315511

/-! ## A315511.P873790437646378427

`A005843(n)+A004396(A315309(n))`
-/

namespace A315511.P873790437646378427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A315309 n).toNat

end

end A315511.P873790437646378427

namespace A315511

/-- `A005843(n)+A004396(A315309(n))` -/
def P873790437646378427.Spec : Prop :=
  ∀ n, P873790437646378427.a n = A315511 n

end A315511

/-! ## A315511.P12373502762382767657

`A315647(n)+A238468(n)`
-/

namespace A315511.P12373502762382767657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315647 n + A238468 n

end

end A315511.P12373502762382767657

namespace A315511

/-- `A315647(n)+A238468(n)` -/
def P12373502762382767657.Spec : Prop :=
  ∀ n, P12373502762382767657.a n = A315511 n

end A315511

/-! ## A315511.P12506497738646140736

`A314148(2*n)+A314148(n+1)-A314148(2*n+1)`
-/

namespace A315511.P12506497738646140736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314148 (2 * n) + (A314148 (n + 1) - A314148 (2 * n + 1))

end

end A315511.P12506497738646140736

namespace A315511

/-- `A314148(2*n)+A314148(n+1)-A314148(2*n+1)` -/
def P12506497738646140736.Spec : Prop :=
  ∀ n, P12506497738646140736.a n = A315511 n

end A315511

/-!
# A315512: Coordination sequence Gal.6.626.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315512, the canonical program `A315512.P16857491610922492177` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315512 has offset 0).

The definition of A315512 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315512.P5792631722210176086

`abs(A008592(n)-A312969(n))`
-/

namespace A315512.P5792631722210176086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312969 n|

end

end A315512.P5792631722210176086

namespace A315512

/-- `abs(A008592(n)-A312969(n))` -/
def P5792631722210176086.Spec : Prop :=
  ∀ n, P5792631722210176086.a n = A315512 n

end A315512

/-! ## A315512.P16857491610922492177

`A315246(n)+∑[A021913(n)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A315512

/-- `A315246(n)+∑[A021913(n)]` -/
def P16857491610922492177.Spec : Prop :=
  ∀ n, P16857491610922492177.a n = A315512 n

theorem P16857491610922492177.correct : P16857491610922492177.Spec := by
  intro n
  simp only [A315512]

end A315512

/-! ## A315512.P18419031077938207417

`A315246(n)+Δ[A011848(n)]`
-/

namespace A315512.P18419031077938207417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315246 n + (f1 (n + 1) - f1 n)

end

end A315512.P18419031077938207417

namespace A315512

/-- `A315246(n)+Δ[A011848(n)]` -/
def P18419031077938207417.Spec : Prop :=
  ∀ n, P18419031077938207417.a n = A315512 n

end A315512

/-! ## A315512.P16507714087980394621

`A315471(n)+Δ[A011865(n)]`
-/

namespace A315512.P16507714087980394621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315471 n + (f1 (n + 1) - f1 n)

end

end A315512.P16507714087980394621

namespace A315512

/-- `A315471(n)+Δ[A011865(n)]` -/
def P16507714087980394621.Spec : Prop :=
  ∀ n, P16507714087980394621.a n = A315512 n

end A315512

/-! ## A315512.P14650737974514978015

`A315246(n)+n-A004525(n)`
-/

namespace A315512.P14650737974514978015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315246 n + ((n : ℤ) - A004525 n)

end

end A315512.P14650737974514978015

namespace A315512

/-- `A315246(n)+n-A004525(n)` -/
def P14650737974514978015.Spec : Prop :=
  ∀ n, P14650737974514978015.a n = A315512 n

end A315512

/-! ## A315512.P7179038668768760604

`A313833(n)+A004396(A004525(n))`
-/

namespace A315512.P7179038668768760604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313833 n + A004396 (A004525 n).toNat

end

end A315512.P7179038668768760604

namespace A315512

/-- `A313833(n)+A004396(A004525(n))` -/
def P7179038668768760604.Spec : Prop :=
  ∀ n, P7179038668768760604.a n = A315512 n

end A315512

/-! ## A315512.P18079435168223699821

`A313837(n)+A004525(A004396(n))`
-/

namespace A315512.P18079435168223699821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313837 n + A004525 (A004396 n).toNat

end

end A315512.P18079435168223699821

namespace A315512

/-- `A313837(n)+A004525(A004396(n))` -/
def P18079435168223699821.Spec : Prop :=
  ∀ n, P18079435168223699821.a n = A315512 n

end A315512

/-! ## A315512.P9177814772826870442

`A313900(n)+A134667(A004525(n))`
-/

namespace A315512.P9177814772826870442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313900 n + A134667 (A004525 n).toNat

end

end A315512.P9177814772826870442

namespace A315512

/-- `A313900(n)+A134667(A004525(n))` -/
def P9177814772826870442.Spec : Prop :=
  ∀ n, P9177814772826870442.a n = A315512 n

end A315512

/-! ## A315512.P6037246452355655276

`A008458(n)+A008574(n)-A312969(n)`
-/

namespace A315512.P6037246452355655276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312969 n)

end

end A315512.P6037246452355655276

namespace A315512

/-- `A008458(n)+A008574(n)-A312969(n)` -/
def P6037246452355655276.Spec : Prop :=
  ∀ n, P6037246452355655276.a n = A315512 n

end A315512

/-! ## A315512.P5080376759010242214

`∑{d}[A008592(n)-A312969(n), A000010(#)]`
-/

namespace A315512.P5080376759010242214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A312969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315512.P5080376759010242214

namespace A315512

/-- `∑{d}[A008592(n)-A312969(n), A000010(#)]` -/
def P5080376759010242214.Spec : Prop :=
  ∀ n, P5080376759010242214.a n = A315512 n

end A315512

/-! ## A315512.P13688435910014656210

`A008458(n)-A004525(A008458(n)-A315246(n))`
-/

namespace A315512.P13688435910014656210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (A008458 n - A315246 n).toNat

end

end A315512.P13688435910014656210

namespace A315512

/-- `A008458(n)-A004525(A008458(n)-A315246(n))` -/
def P13688435910014656210.Spec : Prop :=
  ∀ n, P13688435910014656210.a n = A315512 n

end A315512

/-! ## A315512.P1375389012544195924

`2*A008574(n)-A004525(A310470(n))`
-/

namespace A315512.P1375389012544195924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 n - A004525 (A310470 n).toNat

end

end A315512.P1375389012544195924

namespace A315512

/-- `2*A008574(n)-A004525(A310470(n))` -/
def P1375389012544195924.Spec : Prop :=
  ∀ n, P1375389012544195924.a n = A315512 n

end A315512

/-! ## A315512.P2444452238295839639

`A004525(A315741(2*n))`
-/

namespace A315512.P2444452238295839639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315741 (2 * n)).toNat

end

end A315512.P2444452238295839639

namespace A315512

/-- `A004525(A315741(2*n))` -/
def P2444452238295839639.Spec : Prop :=
  ∀ n, P2444452238295839639.a n = A315512 n

end A315512

/-! ## A315512.P17358041487546903822

`A004525(A314108(2*n)+n)`
-/

namespace A315512.P17358041487546903822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314108 (2 * n) + (n : ℤ)).toNat

end

end A315512.P17358041487546903822

namespace A315512

/-- `A004525(A314108(2*n)+n)` -/
def P17358041487546903822.Spec : Prop :=
  ∀ n, P17358041487546903822.a n = A315512 n

end A315512

/-! ## A315512.P11870763738189507542

`A004525(A315462(2*n)+n)`
-/

namespace A315512.P11870763738189507542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315462 (2 * n) + (n : ℤ)).toNat

end

end A315512.P11870763738189507542

namespace A315512

/-- `A004525(A315462(2*n)+n)` -/
def P11870763738189507542.Spec : Prop :=
  ∀ n, P11870763738189507542.a n = A315512 n

end A315512

/-! ## A315512.P12327619974492250091

`A004525(A315465(2*n)+n)`
-/

namespace A315512.P12327619974492250091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315465 (2 * n) + (n : ℤ)).toNat

end

end A315512.P12327619974492250091

namespace A315512

/-- `A004525(A315465(2*n)+n)` -/
def P12327619974492250091.Spec : Prop :=
  ∀ n, P12327619974492250091.a n = A315512 n

end A315512

/-! ## A315512.P9569913614524648994

`A004525(A163806(n)+A008593(n))`
-/

namespace A315512.P9569913614524648994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A163806 n + A008593 n).toNat

end

end A315512.P9569913614524648994

namespace A315512

/-- `A004525(A163806(n)+A008593(n))` -/
def P9569913614524648994.Spec : Prop :=
  ∀ n, P9569913614524648994.a n = A315512 n

end A315512

/-! ## A315512.P1454839182223978999

`A004525(A315246(n)+A008458(n))`
-/

namespace A315512.P1454839182223978999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315246 n + A008458 n).toNat

end

end A315512.P1454839182223978999

namespace A315512

/-- `A004525(A315246(n)+A008458(n))` -/
def P1454839182223978999.Spec : Prop :=
  ∀ n, P1454839182223978999.a n = A315512 n

end A315512

/-! ## A315512.P7182406810701338897

`A004525(A315246(n)+A008588(n))`
-/

namespace A315512.P7182406810701338897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315246 n + A008588 n).toNat

end

end A315512.P7182406810701338897

namespace A315512

/-- `A004525(A315246(n)+A008588(n))` -/
def P7182406810701338897.Spec : Prop :=
  ∀ n, P7182406810701338897.a n = A315512 n

end A315512

/-! ## A315512.P15742615647637191691

`A004525(A315515(2*n)+A004396(n))`
-/

namespace A315512.P15742615647637191691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315515 (2 * n) + A004396 n).toNat

end

end A315512.P15742615647637191691

namespace A315512

/-- `A004525(A315515(2*n)+A004396(n))` -/
def P15742615647637191691.Spec : Prop :=
  ∀ n, P15742615647637191691.a n = A315512 n

end A315512

/-!
# A315513: Coordination sequence Gal.6.645.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315513, there is no canonical definition to state claims against.
-/

/-! ## A315513.P18301133775913126635

`A315525(n)-A340007(A193649(n))`
-/

namespace A315513.P18301133775913126635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315525 n - A340007 (A193649 n).toNat

end

end A315513.P18301133775913126635

/-! ## A315513.P18209855814562325724

`A327500(A047102(n+1))+A313836(n)`
-/

namespace A315513.P18209855814562325724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327500 (A047102 (n + 1)).toNat + A313836 n

end

end A315513.P18209855814562325724

/-! ## A315513.P15664222075056448975

`A315526(n)-A007814(A303546(n+1))`
-/

namespace A315513.P15664222075056448975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315526 n - A007814 (A303546 (n + 1)).toNat

end

end A315513.P15664222075056448975

/-! ## A315513.P9652718399700904484

`A297037(A344170(2*(n+2)))+A051611(2*n+1)`
-/

namespace A315513.P9652718399700904484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297037 (A344170 (2 * (n + 2))).toNat + A051611 (2 * n + 1)

end

end A315513.P9652718399700904484

/-!
# A315515: Coordination sequence Gal.6.200.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315515, the canonical program `A315515.P6282386179263163100` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315515 has offset 0).

The definition of A315515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2316 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315515.P5338147850485037966

`A313680(n)+A004396(n)`
-/

namespace A315515.P5338147850485037966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313680 n + A004396 n

end

end A315515.P5338147850485037966

namespace A315515

/-- `A313680(n)+A004396(n)` -/
def P5338147850485037966.Spec : Prop :=
  ∀ n, P5338147850485037966.a n = A315515 n

end A315515

/-! ## A315515.P3610655626007416472

`abs(A008592(n)-A312963(n))`
-/

namespace A315515.P3610655626007416472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312963 n|

end

end A315515.P3610655626007416472

namespace A315515

/-- `abs(A008592(n)-A312963(n))` -/
def P3610655626007416472.Spec : Prop :=
  ∀ n, P3610655626007416472.a n = A315515 n

end A315515

/-! ## A315515.P6282386179263163100

`A315253(n)+∑[A021913(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A315515

/-- `A315253(n)+∑[A021913(n)]` -/
def P6282386179263163100.Spec : Prop :=
  ∀ n, P6282386179263163100.a n = A315515 n

theorem P6282386179263163100.correct : P6282386179263163100.Spec := by
  intro n
  simp only [A315515]

end A315515

/-! ## A315515.P16328678513592833418

`A315253(n)+Δ[A011848(n)]`
-/

namespace A315515.P16328678513592833418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315253 n + (f1 (n + 1) - f1 n)

end

end A315515.P16328678513592833418

namespace A315515

/-- `A315253(n)+Δ[A011848(n)]` -/
def P16328678513592833418.Spec : Prop :=
  ∀ n, P16328678513592833418.a n = A315515 n

end A315515

/-! ## A315515.P4067165560088074223

`A313680(n)+n-∑[A022003(n)]`
-/

namespace A315515.P4067165560088074223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313680 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A315515.P4067165560088074223

namespace A315515

/-- `A313680(n)+n-∑[A022003(n)]` -/
def P4067165560088074223.Spec : Prop :=
  ∀ n, P4067165560088074223.a n = A315515 n

end A315515

/-! ## A315515.P16899596463293686680

`A313680(n)+A002264(2*n+1)`
-/

namespace A315515.P16899596463293686680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313680 n + A002264 (2 * n + 1)

end

end A315515.P16899596463293686680

namespace A315515

/-- `A313680(n)+A002264(2*n+1)` -/
def P16899596463293686680.Spec : Prop :=
  ∀ n, P16899596463293686680.a n = A315515 n

end A315515

/-! ## A315515.P11777509569665736533

`A314091(n)+A008612(2*n+1)`
-/

namespace A315515.P11777509569665736533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314091 n + A008612 (2 * n + 1)

end

end A315515.P11777509569665736533

namespace A315515

/-- `A314091(n)+A008612(2*n+1)` -/
def P11777509569665736533.Spec : Prop :=
  ∀ n, P11777509569665736533.a n = A315515 n

end A315515

/-! ## A315515.P16981815867904737368

`A008458(n)+A008574(n)-A312963(n)`
-/

namespace A315515.P16981815867904737368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312963 n)

end

end A315515.P16981815867904737368

namespace A315515

/-- `A008458(n)+A008574(n)-A312963(n)` -/
def P16981815867904737368.Spec : Prop :=
  ∀ n, P16981815867904737368.a n = A315515 n

end A315515

/-! ## A315515.P16804788831440199657

`A005843(n)-(A004396(A005843(n))-A313680(n))`
-/

namespace A315515.P16804788831440199657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - (A004396 (A005843 n).toNat - A313680 n)

end

end A315515.P16804788831440199657

namespace A315515

/-- `A005843(n)-(A004396(A005843(n))-A313680(n))` -/
def P16804788831440199657.Spec : Prop :=
  ∀ n, P16804788831440199657.a n = A315515 n

end A315515

/-! ## A315515.P2885046870961342856

`A315738(n)-A004525(n-A004396(n))`
-/

namespace A315515.P2885046870961342856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315738 n - A004525 ((n : ℤ) - A004396 n).toNat

end

end A315515.P2885046870961342856

namespace A315515

/-- `A315738(n)-A004525(n-A004396(n))` -/
def P2885046870961342856.Spec : Prop :=
  ∀ n, P2885046870961342856.a n = A315515 n

end A315515

/-! ## A315515.P18443765295269514190

`A315741(n)-∑[A022003(n)]`
-/

namespace A315515.P18443765295269514190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315741 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315515.P18443765295269514190

namespace A315515

/-- `A315741(n)-∑[A022003(n)]` -/
def P18443765295269514190.Spec : Prop :=
  ∀ n, P18443765295269514190.a n = A315515 n

end A315515

/-! ## A315515.P6975261441129682277

`A315741(n)-A002264(n+1)`
-/

namespace A315515.P6975261441129682277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315741 n - A002264 (n + 1)

end

end A315515.P6975261441129682277

namespace A315515

/-- `A315741(n)-A002264(n+1)` -/
def P6975261441129682277.Spec : Prop :=
  ∀ n, P6975261441129682277.a n = A315515 n

end A315515

/-! ## A315515.P570943140394676766

`A004396(n)+A315741(n)-n`
-/

namespace A315515.P570943140394676766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A315741 n - (n : ℤ))

end

end A315515.P570943140394676766

namespace A315515

/-- `A004396(n)+A315741(n)-n` -/
def P570943140394676766.Spec : Prop :=
  ∀ n, P570943140394676766.a n = A315515 n

end A315515

/-! ## A315515.P951912401642519426

`A008576(n)+A315741(n)-A008486(n)`
-/

namespace A315515.P951912401642519426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A315741 n - A008486 n)

end

end A315515.P951912401642519426

namespace A315515

/-- `A008576(n)+A315741(n)-A008486(n)` -/
def P951912401642519426.Spec : Prop :=
  ∀ n, P951912401642519426.a n = A315515 n

end A315515

/-!
# A315516: Coordination sequence Gal.6.326.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315516, the canonical program `A315516.P12141593539764391929` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315516 has offset 0).

The definition of A315516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315516.P18246116616006441918

`abs(A008592(n)-A312961(n))`
-/

namespace A315516.P18246116616006441918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312961 n|

end

end A315516.P18246116616006441918

namespace A315516

/-- `abs(A008592(n)-A312961(n))` -/
def P18246116616006441918.Spec : Prop :=
  ∀ n, P18246116616006441918.a n = A315516 n

end A315516

/-! ## A315516.P5165032552509528752

`2*A008706(n)-A312961(n)`
-/

namespace A315516.P5165032552509528752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312961 n

end

end A315516.P5165032552509528752

namespace A315516

/-- `2*A008706(n)-A312961(n)` -/
def P5165032552509528752.Spec : Prop :=
  ∀ n, P5165032552509528752.a n = A315516 n

end A315516

/-! ## A315516.P674548708390541427

`A135042(2*n+1)-A312961(n)`
-/

namespace A315516.P674548708390541427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A312961 n

end

end A315516.P674548708390541427

namespace A315516

/-- `A135042(2*n+1)-A312961(n)` -/
def P674548708390541427.Spec : Prop :=
  ∀ n, P674548708390541427.a n = A315516 n

end A315516

/-! ## A315516.P5585551858005495894

`A184418(A008574(n))-A312961(n)`
-/

namespace A315516.P5585551858005495894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A312961 n

end

end A315516.P5585551858005495894

namespace A315516

/-- `A184418(A008574(n))-A312961(n)` -/
def P5585551858005495894.Spec : Prop :=
  ∀ n, P5585551858005495894.a n = A315516 n

end A315516

/-! ## A315516.P211428384824400615

`A008458(n)+A008574(n)-A312961(n)`
-/

namespace A315516.P211428384824400615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312961 n)

end

end A315516.P211428384824400615

namespace A315516

/-- `A008458(n)+A008574(n)-A312961(n)` -/
def P211428384824400615.Spec : Prop :=
  ∀ n, P211428384824400615.a n = A315516 n

end A315516

/-! ## A315516.P12141593539764391929

`A008458(n)+A312891(n)-A310404(n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A315516

/-- `A008458(n)+A312891(n)-A310404(n)` -/
def P12141593539764391929.Spec : Prop :=
  ∀ n, P12141593539764391929.a n = A315516 n

theorem P12141593539764391929.correct : P12141593539764391929.Spec := by
  intro n
  simp only [A315516]

end A315516

/-! ## A315516.P16502130395681045779

`A312961(n)+A005843(A008706(n)-A312961(n))`
-/

namespace A315516.P16502130395681045779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312961 n + A005843 (A008706 n - A312961 n).toNat

end

end A315516.P16502130395681045779

namespace A315516

/-- `A312961(n)+A005843(A008706(n)-A312961(n))` -/
def P16502130395681045779.Spec : Prop :=
  ∀ n, P16502130395681045779.a n = A315516 n

end A315516

/-! ## A315516.P13149366504796810301

`A005843(A008706(n))-A312961(n)`
-/

namespace A315516.P13149366504796810301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312961 n

end

end A315516.P13149366504796810301

namespace A315516

/-- `A005843(A008706(n))-A312961(n)` -/
def P13149366504796810301.Spec : Prop :=
  ∀ n, P13149366504796810301.a n = A315516 n

end A315516

/-! ## A315516.P18311630569929854131

`A065502(A008458(n))-A312961(n)`
-/

namespace A315516.P18311630569929854131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A312961 n

end

end A315516.P18311630569929854131

namespace A315516

/-- `A065502(A008458(n))-A312961(n)` -/
def P18311630569929854131.Spec : Prop :=
  ∀ n, P18311630569929854131.a n = A315516 n

end A315516

/-!
# A315517: Coordination sequence Gal.6.208.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315517, the canonical program `A315517.P14622737058717203202` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315517 has offset 0).

The definition of A315517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2296 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315517.P14622737058717203202

`a(n-1)+a(n-2)-2*a(n-4)+a(n-6)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=6, a(2)=11, a(3)=17, a(4)=22, a(5)=27, a(6)=32, a(7)=37, a(8)=42`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A315517

/-- `a(n-1)+a(n-2)-2*a(n-4)+a(n-6)+a(n-7)-a(n-8)` -/
def P14622737058717203202.Spec : Prop :=
  ∀ n, P14622737058717203202.a n = A315517 n

theorem P14622737058717203202.correct : P14622737058717203202.Spec := by
  intro n
  simp only [A315517]

end A315517

/-! ## A315517.P2580975793406393191

`A315482(n)+Δ[floor(C(n, 2)/6)]`
-/

namespace A315517.P2580975793406393191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 2 : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315482 n + (f1 (n + 1) - f1 n)

end

end A315517.P2580975793406393191

namespace A315517

/-- `A315482(n)+Δ[floor(C(n, 2)/6)]` -/
def P2580975793406393191.Spec : Prop :=
  ∀ n, P2580975793406393191.a n = A315517 n

end A315517

/-! ## A315517.P302983401788550977

`A313688(n)+A004396(n)`
-/

namespace A315517.P302983401788550977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313688 n + A004396 n

end

end A315517.P302983401788550977

namespace A315517

/-- `A313688(n)+A004396(n)` -/
def P302983401788550977.Spec : Prop :=
  ∀ n, P302983401788550977.a n = A315517 n

end A315517

/-! ## A315517.P17369510925484084476

`A313824(n)+A004525(n)`
-/

namespace A315517.P17369510925484084476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313824 n + A004525 n

end

end A315517.P17369510925484084476

namespace A315517

/-- `A313824(n)+A004525(n)` -/
def P17369510925484084476.Spec : Prop :=
  ∀ n, P17369510925484084476.a n = A315517 n

end A315517

/-! ## A315517.P4121998397657361683

`A315258(n)+n-A004525(n)`
-/

namespace A315517.P4121998397657361683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315258 n + ((n : ℤ) - A004525 n)

end

end A315517.P4121998397657361683

namespace A315517

/-- `A315258(n)+n-A004525(n)` -/
def P4121998397657361683.Spec : Prop :=
  ∀ n, P4121998397657361683.a n = A315517 n

end A315517

/-! ## A315517.P6122060851375611216

`A313688(n)+n-∑[A022003(n)]`
-/

namespace A315517.P6122060851375611216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313688 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A315517.P6122060851375611216

namespace A315517

/-- `A313688(n)+n-∑[A022003(n)]` -/
def P6122060851375611216.Spec : Prop :=
  ∀ n, P6122060851375611216.a n = A315517 n

end A315517

/-! ## A315517.P5471065098913681462

`A313688(n)+A002264(2*n+1)`
-/

namespace A315517.P5471065098913681462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313688 n + A002264 (2 * n + 1)

end

end A315517.P5471065098913681462

namespace A315517

/-- `A313688(n)+A002264(2*n+1)` -/
def P5471065098913681462.Spec : Prop :=
  ∀ n, P5471065098913681462.a n = A315517 n

end A315517

/-! ## A315517.P10325398403140237554

`A313859(n)+A004396(A004525(n))`
-/

namespace A315517.P10325398403140237554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313859 n + A004396 (A004525 n).toNat

end

end A315517.P10325398403140237554

namespace A315517

/-- `A313859(n)+A004396(A004525(n))` -/
def P10325398403140237554.Spec : Prop :=
  ∀ n, P10325398403140237554.a n = A315517 n

end A315517

/-! ## A315517.P12285647223311127437

`A313533(n)+A004525(A004396(n)+n)`
-/

namespace A315517.P12285647223311127437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313533 n + A004525 (A004396 n + (n : ℤ)).toNat

end

end A315517.P12285647223311127437

namespace A315517

/-- `A313533(n)+A004525(A004396(n)+n)` -/
def P12285647223311127437.Spec : Prop :=
  ∀ n, P12285647223311127437.a n = A315517 n

end A315517

/-! ## A315517.P17206463248978637446

`A008458(n)+A008574(n)-A312950(n)`
-/

namespace A315517.P17206463248978637446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312950 n)

end

end A315517.P17206463248978637446

namespace A315517

/-- `A008458(n)+A008574(n)-A312950(n)` -/
def P17206463248978637446.Spec : Prop :=
  ∀ n, P17206463248978637446.a n = A315517 n

end A315517

/-! ## A315517.P2411183218496803009

`A315641(n)-A102283(A004525(n+6))`
-/

namespace A315517.P2411183218496803009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315641 n - A102283 (A004525 (n + 6)).toNat

end

end A315517.P2411183218496803009

namespace A315517

/-- `A315641(n)-A102283(A004525(n+6))` -/
def P2411183218496803009.Spec : Prop :=
  ∀ n, P2411183218496803009.a n = A315517 n

end A315517

/-! ## A315517.P17342178692861759320

`A315641(n)-A102283(n-A004525(n))`
-/

namespace A315517.P17342178692861759320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315641 n - A102283 ((n : ℤ) - A004525 n).toNat

end

end A315517.P17342178692861759320

namespace A315517

/-- `A315641(n)-A102283(n-A004525(n))` -/
def P17342178692861759320.Spec : Prop :=
  ∀ n, P17342178692861759320.a n = A315517 n

end A315517

/-! ## A315517.P18292700665931393298

`A315315(n)+A002264(n+1)`
-/

namespace A315517.P18292700665931393298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315315 n + A002264 (n + 1)

end

end A315517.P18292700665931393298

namespace A315517

/-- `A315315(n)+A002264(n+1)` -/
def P18292700665931393298.Spec : Prop :=
  ∀ n, P18292700665931393298.a n = A315517 n

end A315517

/-! ## A315517.P8876610603914632163

`A315315(n)+n-A004396(n)`
-/

namespace A315517.P8876610603914632163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315315 n + ((n : ℤ) - A004396 n)

end

end A315517.P8876610603914632163

namespace A315517

/-- `A315315(n)+n-A004396(n)` -/
def P8876610603914632163.Spec : Prop :=
  ∀ n, P8876610603914632163.a n = A315517 n

end A315517

/-! ## A315517.P16498047672947967342

`A008486(n)+A315315(n)-A008576(n)`
-/

namespace A315517.P16498047672947967342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A315315 n - A008576 n)

end

end A315517.P16498047672947967342

namespace A315517

/-- `A008486(n)+A315315(n)-A008576(n)` -/
def P16498047672947967342.Spec : Prop :=
  ∀ n, P16498047672947967342.a n = A315517 n

end A315517

/-! ## A315517.P6131456058062768240

`round(A315747(n)-n/3)`
-/

namespace A315517.P6131456058062768240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A315747 n : ℚ) - (n : ℚ) / 3)

end

end A315517.P6131456058062768240

namespace A315517

/-- `round(A315747(n)-n/3)` -/
def P6131456058062768240.Spec : Prop :=
  ∀ n, P6131456058062768240.a n = A315517 n

end A315517

/-! ## A315517.P11855112637731704571

`A315747(n)-A002264(n+1)`
-/

namespace A315517.P11855112637731704571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315747 n - A002264 (n + 1)

end

end A315517.P11855112637731704571

namespace A315517

/-- `A315747(n)-A002264(n+1)` -/
def P11855112637731704571.Spec : Prop :=
  ∀ n, P11855112637731704571.a n = A315517 n

end A315517

/-! ## A315517.P3056452121305559868

`A004396(n)+A315747(n)-n`
-/

namespace A315517.P3056452121305559868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A315747 n - (n : ℤ))

end

end A315517.P3056452121305559868

namespace A315517

/-- `A004396(n)+A315747(n)-n` -/
def P3056452121305559868.Spec : Prop :=
  ∀ n, P3056452121305559868.a n = A315517 n

end A315517

/-! ## A315517.P16500942407846221573

`A314825(n)+n`
-/

namespace A315517.P16500942407846221573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314825 n + (n : ℤ)

end

end A315517.P16500942407846221573

namespace A315517

/-- `A314825(n)+n` -/
def P16500942407846221573.Spec : Prop :=
  ∀ n, P16500942407846221573.a n = A315517 n

end A315517

/-!
# A315518: Coordination sequence Gal.5.291.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315518, the canonical program `A315518.P4860043378548832056` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315518 has offset 0).

The definition of A315518 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2261 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315518.P2463448930795493350

`round(C(2, n+2)+n*(3/5+5))-comp[xor(2, 6*n)+3]+n`
-/

namespace A315518.P2463448930795493350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (6 * n) + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose 2 (n + 2) : ℚ) + (n : ℚ) * ((3 : ℚ) / 5 + 5)) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (n : ℤ)

end

end A315518.P2463448930795493350

namespace A315518

/-- `round(C(2, n+2)+n*(3/5+5))-comp[xor(2, 6*n)+3]+n` -/
def P2463448930795493350.Spec : Prop :=
  ∀ n, P2463448930795493350.a n = A315518 n

end A315518

/-! ## A315518.P2113388646902533100

`A314827(n)+n`
-/

namespace A315518.P2113388646902533100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314827 n + (n : ℤ)

end

end A315518.P2113388646902533100

namespace A315518

/-- `A314827(n)+n` -/
def P2113388646902533100.Spec : Prop :=
  ∀ n, P2113388646902533100.a n = A315518 n

end A315518

/-! ## A315518.P756098094690627552

`abs(A008592(n)-A312948(n))`
-/

namespace A315518.P756098094690627552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312948 n|

end

end A315518.P756098094690627552

namespace A315518

/-- `abs(A008592(n)-A312948(n))` -/
def P756098094690627552.Spec : Prop :=
  ∀ n, P756098094690627552.a n = A315518 n

end A315518

/-! ## A315518.P1213768118535255473

`A314670(n)+A047263(n+1)`
-/

namespace A315518.P1213768118535255473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314670 n + A047263 (n + 1)

end

end A315518.P1213768118535255473

namespace A315518

/-- `A314670(n)+A047263(n+1)` -/
def P1213768118535255473.Spec : Prop :=
  ∀ n, P1213768118535255473.a n = A315518 n

end A315518

/-! ## A315518.P13710360736877740682

`(A315303(n)+A008458(n))/2`
-/

namespace A315518.P13710360736877740682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315303 n + A008458 n : ℚ) / 2

end

end A315518.P13710360736877740682

namespace A315518

/-- `(A315303(n)+A008458(n))/2` -/
def P13710360736877740682.Spec : Prop :=
  ∀ n, P13710360736877740682.a n = (A315518 n : ℚ)

end A315518

/-! ## A315518.P17149813254915258403

`A311958(n)+A330025(n)+n`
-/

namespace A315518.P17149813254915258403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311958 n + (A330025 n + (n : ℤ))

end

end A315518.P17149813254915258403

namespace A315518

/-- `A311958(n)+A330025(n)+n` -/
def P17149813254915258403.Spec : Prop :=
  ∀ n, P17149813254915258403.a n = A315518 n

end A315518

/-! ## A315518.P10708677128388446881

`A005843(n)-(n-A314827(n))`
-/

namespace A315518.P10708677128388446881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A314827 n)

end

end A315518.P10708677128388446881

namespace A315518

/-- `A005843(n)-(n-A314827(n))` -/
def P10708677128388446881.Spec : Prop :=
  ∀ n, P10708677128388446881.a n = A315518 n

end A315518

/-! ## A315518.P14341637899135737897

`A313719(n)+n-Δ[A011858(n)]`
-/

namespace A315518.P14341637899135737897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313719 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A315518.P14341637899135737897

namespace A315518

/-- `A313719(n)+n-Δ[A011858(n)]` -/
def P14341637899135737897.Spec : Prop :=
  ∀ n, P14341637899135737897.a n = A315518 n

end A315518

/-! ## A315518.P4860043378548832056

`A315468(n)+A110654(A057354(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A315518

/-- `A315468(n)+A110654(A057354(n))` -/
def P4860043378548832056.Spec : Prop :=
  ∀ n, P4860043378548832056.a n = A315518 n

theorem P4860043378548832056.correct : P4860043378548832056.Spec := by
  intro n
  simp only [A315518]

end A315518

/-! ## A315518.P5972794751364022793

`A314670(n)+A004525(A151988(2*n))`
-/

namespace A315518.P5972794751364022793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314670 n + A004525 (A151988 (2 * n)).toNat

end

end A315518.P5972794751364022793

namespace A315518

/-- `A314670(n)+A004525(A151988(2*n))` -/
def P5972794751364022793.Spec : Prop :=
  ∀ n, P5972794751364022793.a n = A315518 n

end A315518

/-! ## A315518.P18002730714792230027

`A330025(A330025(n)+n)+A313916(n)`
-/

namespace A315518.P18002730714792230027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A330025 n + (n : ℤ)).toNat + A313916 n

end

end A315518.P18002730714792230027

namespace A315518

/-- `A330025(A330025(n)+n)+A313916(n)` -/
def P18002730714792230027.Spec : Prop :=
  ∀ n, P18002730714792230027.a n = A315518 n

end A315518

/-! ## A315518.P2873250822711260665

`A008458(n)+A008574(n)-A312948(n)`
-/

namespace A315518.P2873250822711260665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312948 n)

end

end A315518.P2873250822711260665

namespace A315518

/-- `A008458(n)+A008574(n)-A312948(n)` -/
def P2873250822711260665.Spec : Prop :=
  ∀ n, P2873250822711260665.a n = A315518 n

end A315518

/-! ## A315518.P424009687715736939

`A250120(n)+A313537(n)-A008574(n)`
-/

namespace A315518.P424009687715736939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + (A313537 n - A008574 n)

end

end A315518.P424009687715736939

namespace A315518

/-- `A250120(n)+A313537(n)-A008574(n)` -/
def P424009687715736939.Spec : Prop :=
  ∀ n, P424009687715736939.a n = A315518 n

end A315518

/-! ## A315518.P3347333852700060499

`A315737(n)-A330025(n-A330025(n))`
-/

namespace A315518.P3347333852700060499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315737 n - A330025 ((n : ℤ) - A330025 n).toNat

end

end A315518.P3347333852700060499

namespace A315518

/-- `A315737(n)-A330025(n-A330025(n))` -/
def P3347333852700060499.Spec : Prop :=
  ∀ n, P3347333852700060499.a n = A315518 n

end A315518

/-! ## A315518.P1408825986994711769

`∑{d}[A008592(n)-A312948(n), A000010(#)]`
-/

namespace A315518.P1408825986994711769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A312948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315518.P1408825986994711769

namespace A315518

/-- `∑{d}[A008592(n)-A312948(n), A000010(#)]` -/
def P1408825986994711769.Spec : Prop :=
  ∀ n, P1408825986994711769.a n = A315518 n

end A315518

/-! ## A315518.P11778025169391432512

`A005843(n)+A005843(A008574(n))-A312948(n)`
-/

namespace A315518.P11778025169391432512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A312948 n)

end

end A315518.P11778025169391432512

namespace A315518

/-- `A005843(n)+A005843(A008574(n))-A312948(n)` -/
def P11778025169391432512.Spec : Prop :=
  ∀ n, P11778025169391432512.a n = A315518 n

end A315518

/-! ## A315518.P10825669660076084112

`A330025(n)+A313898(n)`
-/

namespace A315518.P10825669660076084112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A313898 n

end

end A315518.P10825669660076084112

namespace A315518

/-- `A330025(n)+A313898(n)` -/
def P10825669660076084112.Spec : Prop :=
  ∀ n, P10825669660076084112.a n = A315518 n

end A315518

/-! ## A315518.P4781132127971224627

`A008458(n)+A250120(n)-A313898(n)`
-/

namespace A315518.P4781132127971224627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A250120 n - A313898 n)

end

end A315518.P4781132127971224627

namespace A315518

/-- `A008458(n)+A250120(n)-A313898(n)` -/
def P4781132127971224627.Spec : Prop :=
  ∀ n, P4781132127971224627.a n = A315518 n

end A315518

/-! ## A315518.P12199596793053982617

`A315761(n)-A047299(n+1)+n`
-/

namespace A315518.P12199596793053982617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315761 n - A047299 (n + 1) + (n : ℤ)

end

end A315518.P12199596793053982617

namespace A315518

/-- `A315761(n)-A047299(n+1)+n` -/
def P12199596793053982617.Spec : Prop :=
  ∀ n, P12199596793053982617.a n = A315518 n

end A315518

/-! ## A315518.P1138596076692073164

`abs(A008593(n)-A314164(n))`
-/

namespace A315518.P1138596076692073164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - A314164 n|

end

end A315518.P1138596076692073164

namespace A315518

/-- `abs(A008593(n)-A314164(n))` -/
def P1138596076692073164.Spec : Prop :=
  ∀ n, P1138596076692073164.a n = A315518 n

end A315518

/-!
# A315519: Coordination sequence Gal.6.332.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315519, the canonical program `A315519.P253301866715473937` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315519 has offset 0).

The definition of A315519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315519.P253301866715473937

`abs(A008592(n)-A312944(n))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A315519

/-- `abs(A008592(n)-A312944(n))` -/
def P253301866715473937.Spec : Prop :=
  ∀ n, P253301866715473937.a n = A315519 n

theorem P253301866715473937.correct : P253301866715473937.Spec := by
  intro n
  simp only [A315519]

end A315519

/-! ## A315519.P11375173999759437059

`2*A008706(n)-A312944(n)`
-/

namespace A315519.P11375173999759437059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312944 n

end

end A315519.P11375173999759437059

namespace A315519

/-- `2*A008706(n)-A312944(n)` -/
def P11375173999759437059.Spec : Prop :=
  ∀ n, P11375173999759437059.a n = A315519 n

end A315519

/-! ## A315519.P17745932844271426187

`(A315305(n)+A008458(n))/2`
-/

namespace A315519.P17745932844271426187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315305 n + A008458 n : ℚ) / 2

end

end A315519.P17745932844271426187

namespace A315519

/-- `(A315305(n)+A008458(n))/2` -/
def P17745932844271426187.Spec : Prop :=
  ∀ n, P17745932844271426187.a n = (A315519 n : ℚ)

end A315519

/-! ## A315519.P12215255173579688013

`A008458(n)+A008574(n)-A312944(n)`
-/

namespace A315519.P12215255173579688013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312944 n)

end

end A315519.P12215255173579688013

namespace A315519

/-- `A008458(n)+A008574(n)-A312944(n)` -/
def P12215255173579688013.Spec : Prop :=
  ∀ n, P12215255173579688013.a n = A315519 n

end A315519

/-! ## A315519.P6110419490584514392

`A005843(n)+A005843(A008574(n))-A312944(n)`
-/

namespace A315519.P6110419490584514392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A312944 n)

end

end A315519.P6110419490584514392

namespace A315519

/-- `A005843(n)+A005843(A008574(n))-A312944(n)` -/
def P6110419490584514392.Spec : Prop :=
  ∀ n, P6110419490584514392.a n = A315519 n

end A315519

/-! ## A315519.P1779273531771453717

`A315305(n)+A001281(A008458(n)-A315305(n))`
-/

namespace A315519.P1779273531771453717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315305 n + A001281 (A008458 n - A315305 n).toNat

end

end A315519.P1779273531771453717

namespace A315519

/-- `A315305(n)+A001281(A008458(n)-A315305(n))` -/
def P1779273531771453717.Spec : Prop :=
  ∀ n, P1779273531771453717.a n = A315519 n

end A315519

/-! ## A315519.P11726529582216855725

`A315305(n)+A004525(A008458(n)-A315305(n))`
-/

namespace A315519.P11726529582216855725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315305 n + A004525 (A008458 n - A315305 n).toNat

end

end A315519.P11726529582216855725

namespace A315519

/-- `A315305(n)+A004525(A008458(n)-A315305(n))` -/
def P11726529582216855725.Spec : Prop :=
  ∀ n, P11726529582216855725.a n = A315519 n

end A315519

/-! ## A315519.P13280073571580761249

`A008458(n)-A004526(A008458(n)-A315305(n))`
-/

namespace A315519.P13280073571580761249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004526 (A008458 n - A315305 n).toNat

end

end A315519.P13280073571580761249

namespace A315519

/-- `A008458(n)-A004526(A008458(n)-A315305(n))` -/
def P13280073571580761249.Spec : Prop :=
  ∀ n, P13280073571580761249.a n = A315519 n

end A315519

/-! ## A315519.P6877191305007040485

`A008486(n)+A004526(A315305(n))`
-/

namespace A315519.P6877191305007040485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + A004526 (A315305 n).toNat

end

end A315519.P6877191305007040485

namespace A315519

/-- `A008486(n)+A004526(A315305(n))` -/
def P6877191305007040485.Spec : Prop :=
  ∀ n, P6877191305007040485.a n = A315519 n

end A315519

/-! ## A315519.P3629887527341412981

`A005843(A008706(n))-A312944(n)`
-/

namespace A315519.P3629887527341412981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312944 n

end

end A315519.P3629887527341412981

namespace A315519

/-- `A005843(A008706(n))-A312944(n)` -/
def P3629887527341412981.Spec : Prop :=
  ∀ n, P3629887527341412981.a n = A315519 n

end A315519

/-! ## A315519.P6515750971154157137

`A005843(A008574(n)+n)-A312944(n)`
-/

namespace A315519.P6515750971154157137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A312944 n

end

end A315519.P6515750971154157137

namespace A315519

/-- `A005843(A008574(n)+n)-A312944(n)` -/
def P6515750971154157137.Spec : Prop :=
  ∀ n, P6515750971154157137.a n = A315519 n

end A315519

/-! ## A315519.P11941916659736928990

`A008590(n)+A001057(A310420(n))`
-/

namespace A315519.P11941916659736928990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n + A001057 (A310420 n).toNat

end

end A315519.P11941916659736928990

namespace A315519

/-- `A008590(n)+A001057(A310420(n))` -/
def P11941916659736928990.Spec : Prop :=
  ∀ n, P11941916659736928990.a n = A315519 n

end A315519

/-! ## A315519.P13319128966100504027

`A004396(A314669(n)+A008574(n))`
-/

namespace A315519.P13319128966100504027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314669 n + A008574 n).toNat

end

end A315519.P13319128966100504027

namespace A315519

/-- `A004396(A314669(n)+A008574(n))` -/
def P13319128966100504027.Spec : Prop :=
  ∀ n, P13319128966100504027.a n = A315519 n

end A315519

/-! ## A315519.P5383129589905647062

`A004396(A314669(n)+A008586(n))`
-/

namespace A315519.P5383129589905647062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314669 n + A008586 n).toNat

end

end A315519.P5383129589905647062

namespace A315519

/-- `A004396(A314669(n)+A008586(n))` -/
def P5383129589905647062.Spec : Prop :=
  ∀ n, P5383129589905647062.a n = A315519 n

end A315519

/-! ## A315519.P13672070573811912537

`A313543(2*n)+A008574(n+1)-(8*n+4)`
-/

namespace A315519.P13672070573811912537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313543 (2 * n) + (A008574 (n + 1) - (8 * n + 4 : ℤ))

end

end A315519.P13672070573811912537

namespace A315519

/-- `A313543(2*n)+A008574(n+1)-(8*n+4)` -/
def P13672070573811912537.Spec : Prop :=
  ∀ n, P13672070573811912537.a n = A315519 n

end A315519

/-! ## A315519.P11756968121434409438

`A008574(2*n)+A313543(2*n)-A008458(2*n)`
-/

namespace A315519.P11756968121434409438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n) + (A313543 (2 * n) - A008458 (2 * n))

end

end A315519.P11756968121434409438

namespace A315519

/-- `A008574(2*n)+A313543(2*n)-A008458(2*n)` -/
def P11756968121434409438.Spec : Prop :=
  ∀ n, P11756968121434409438.a n = A315519 n

end A315519

/-! ## A315519.P11160314350890312407

`2*A008574(2*n)-A313887(2*n)`
-/

namespace A315519.P11160314350890312407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A313887 (2 * n)

end

end A315519.P11160314350890312407

namespace A315519

/-- `2*A008574(2*n)-A313887(2*n)` -/
def P11160314350890312407.Spec : Prop :=
  ∀ n, P11160314350890312407.a n = A315519 n

end A315519

/-! ## A315519.P8146965594446828906

`A004525(A315642(2*n))`
-/

namespace A315519.P8146965594446828906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315642 (2 * n)).toNat

end

end A315519.P8146965594446828906

namespace A315519

/-- `A004525(A315642(2*n))` -/
def P8146965594446828906.Spec : Prop :=
  ∀ n, P8146965594446828906.a n = A315519 n

end A315519

/-! ## A315519.P15175862330203205276

`A001281(A315305(n)+A008458(n))`
-/

namespace A315519.P15175862330203205276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315305 n + A008458 n).toNat

end

end A315519.P15175862330203205276

namespace A315519

/-- `A001281(A315305(n)+A008458(n))` -/
def P15175862330203205276.Spec : Prop :=
  ∀ n, P15175862330203205276.a n = A315519 n

end A315519

/-! ## A315519.P4621164127462113136

`A004525(A315305(n)+A008458(n))`
-/

namespace A315519.P4621164127462113136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315305 n + A008458 n).toNat

end

end A315519.P4621164127462113136

namespace A315519

/-- `A004525(A315305(n)+A008458(n))` -/
def P4621164127462113136.Spec : Prop :=
  ∀ n, P4621164127462113136.a n = A315519 n

end A315519

/-!
# A315520: Coordination sequence Gal.4.140.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315520, the canonical program `A315520.P6308930368191913586` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315520 has offset 0).

The definition of A315520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315520.P6308930368191913586

`2*a(n-1)-a(n-2)-a(n-4)+2*a(n-5)-a(n-6)` with `a(0)=1, a(1)=6, a(2)=11, a(3)=17, a(4)=22, a(5)=27, a(6)=33`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A315520

/-- `2*a(n-1)-a(n-2)-a(n-4)+2*a(n-5)-a(n-6)` -/
def P6308930368191913586.Spec : Prop :=
  ∀ n, P6308930368191913586.a n = A315520 n

theorem P6308930368191913586.correct : P6308930368191913586.Spec := by
  intro n
  simp only [A315520]

end A315520

/-! ## A315520.P8387613642682274211

`A314829(n)+n`
-/

namespace A315520.P8387613642682274211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314829 n + (n : ℤ)

end

end A315520.P8387613642682274211

namespace A315520

/-- `A314829(n)+n` -/
def P8387613642682274211.Spec : Prop :=
  ∀ n, P8387613642682274211.a n = A315520 n

end A315520

/-! ## A315520.P14470917365853064074

`abs(10*n-A312943(n))`
-/

namespace A315520.P14470917365853064074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A312943 n|

end

end A315520.P14470917365853064074

namespace A315520

/-- `abs(10*n-A312943(n))` -/
def P14470917365853064074.Spec : Prop :=
  ∀ n, P14470917365853064074.a n = A315520 n

end A315520

/-! ## A315520.P16115758011907879975

`A313826(n)+A004525(n)`
-/

namespace A315520.P16115758011907879975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313826 n + A004525 n

end

end A315520.P16115758011907879975

namespace A315520

/-- `A313826(n)+A004525(n)` -/
def P16115758011907879975.Spec : Prop :=
  ∀ n, P16115758011907879975.a n = A315520 n

end A315520

/-! ## A315520.P15411496563445623851

`A313926(n)+A046978(n)`
-/

namespace A315520.P15411496563445623851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313926 n + A046978 n

end

end A315520.P15411496563445623851

namespace A315520

/-- `A313926(n)+A046978(n)` -/
def P15411496563445623851.Spec : Prop :=
  ∀ n, P15411496563445623851.a n = A315520 n

end A315520

/-! ## A315520.P8888010521026836837

`A314161(n)+A188510(n)`
-/

namespace A315520.P8888010521026836837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314161 n + A188510 n

end

end A315520.P8888010521026836837

namespace A315520

/-- `A314161(n)+A188510(n)` -/
def P8888010521026836837.Spec : Prop :=
  ∀ n, P8888010521026836837.a n = A315520 n

end A315520

/-! ## A315520.P14641069994304685710

`A315469(n)+Δ[A011861(n)]`
-/

namespace A315520.P14641069994304685710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315469 n + (f1 (n + 1) - f1 n)

end

end A315520.P14641069994304685710

namespace A315520

/-- `A315469(n)+Δ[A011861(n)]` -/
def P14641069994304685710.Spec : Prop :=
  ∀ n, P14641069994304685710.a n = A315520 n

end A315520

/-! ## A315520.P15548287483295856839

`A315259(n)+A004524(n+1)`
-/

namespace A315520.P15548287483295856839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315259 n + A004524 (n + 1)

end

end A315520.P15548287483295856839

namespace A315520

/-- `A315259(n)+A004524(n+1)` -/
def P15548287483295856839.Spec : Prop :=
  ∀ n, P15548287483295856839.a n = A315520 n

end A315520

/-! ## A315520.P3482786511386943836

`2*A008706(n)-A312943(n)`
-/

namespace A315520.P3482786511386943836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312943 n

end

end A315520.P3482786511386943836

namespace A315520

/-- `2*A008706(n)-A312943(n)` -/
def P3482786511386943836.Spec : Prop :=
  ∀ n, P3482786511386943836.a n = A315520 n

end A315520

/-! ## A315520.P3481475813132650810

`(A315306(n)+A008458(n))/2`
-/

namespace A315520.P3481475813132650810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315306 n + A008458 n : ℚ) / 2

end

end A315520.P3481475813132650810

namespace A315520

/-- `(A315306(n)+A008458(n))/2` -/
def P3481475813132650810.Spec : Prop :=
  ∀ n, P3481475813132650810.a n = (A315520 n : ℚ)

end A315520

/-! ## A315520.P2479952322509678594

`A046978(n)+A312140(n)+n`
-/

namespace A315520.P2479952322509678594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 n + (A312140 n + (n : ℤ))

end

end A315520.P2479952322509678594

namespace A315520

/-- `A046978(n)+A312140(n)+n` -/
def P2479952322509678594.Spec : Prop :=
  ∀ n, P2479952322509678594.a n = A315520 n

end A315520

/-! ## A315520.P1146940190712459917

`A188510(n)+A312943(n)+n`
-/

namespace A315520.P1146940190712459917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 n + (A312943 n + (n : ℤ))

end

end A315520.P1146940190712459917

namespace A315520

/-- `A188510(n)+A312943(n)+n` -/
def P1146940190712459917.Spec : Prop :=
  ∀ n, P1146940190712459917.a n = A315520 n

end A315520

/-! ## A315520.P11503145878765189270

`A315259(n)+n-A004525(n)`
-/

namespace A315520.P11503145878765189270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315259 n + ((n : ℤ) - A004525 n)

end

end A315520.P11503145878765189270

namespace A315520

/-- `A315259(n)+n-A004525(n)` -/
def P11503145878765189270.Spec : Prop :=
  ∀ n, P11503145878765189270.a n = A315520 n

end A315520

/-! ## A315520.P7947126303493077290

`A313875(n)+A004525(A004525(n))`
-/

namespace A315520.P7947126303493077290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313875 n + A004525 (A004525 n).toNat

end

end A315520.P7947126303493077290

namespace A315520

/-- `A313875(n)+A004525(A004525(n))` -/
def P7947126303493077290.Spec : Prop :=
  ∀ n, P7947126303493077290.a n = A315520 n

end A315520

/-! ## A315520.P11998569712202852664

`A004525(A004525(n))+A311843(n)+n`
-/

namespace A315520.P11998569712202852664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + (A311843 n + (n : ℤ))

end

end A315520.P11998569712202852664

namespace A315520

/-- `A004525(A004525(n))+A311843(n)+n` -/
def P11998569712202852664.Spec : Prop :=
  ∀ n, P11998569712202852664.a n = A315520 n

end A315520

/-! ## A315520.P1775041898713429424

`A313685(n)+A004525(A004525(n)+n)`
-/

namespace A315520.P1775041898713429424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313685 n + A004525 (A004525 n + (n : ℤ)).toNat

end

end A315520.P1775041898713429424

namespace A315520

/-- `A313685(n)+A004525(A004525(n)+n)` -/
def P1775041898713429424.Spec : Prop :=
  ∀ n, P1775041898713429424.a n = A315520 n

end A315520

/-! ## A315520.P4141170153047021852

`A008458(n)+A008574(n)-A312943(n)`
-/

namespace A315520.P4141170153047021852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312943 n)

end

end A315520.P4141170153047021852

namespace A315520

/-- `A008458(n)+A008574(n)-A312943(n)` -/
def P4141170153047021852.Spec : Prop :=
  ∀ n, P4141170153047021852.a n = A315520 n

end A315520

/-! ## A315520.P16835288364418270311

`A008458(n)+A250120(n)-A313889(n)`
-/

namespace A315520.P16835288364418270311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A250120 n - A313889 n)

end

end A315520.P16835288364418270311

namespace A315520

/-- `A008458(n)+A250120(n)-A313889(n)` -/
def P16835288364418270311.Spec : Prop :=
  ∀ n, P16835288364418270311.a n = A315520 n

end A315520

/-! ## A315520.P17714072656733069585

`A004525(A004525(n))+A315543(n)-A004525(n)`
-/

namespace A315520.P17714072656733069585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + (A315543 n - A004525 n)

end

end A315520.P17714072656733069585

namespace A315520

/-- `A004525(A004525(n))+A315543(n)-A004525(n)` -/
def P17714072656733069585.Spec : Prop :=
  ∀ n, P17714072656733069585.a n = A315520 n

end A315520

/-!
# A315521: Coordination sequence Gal.6.620.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315521, the canonical program `A315521.P715979807562858068` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315521 has offset 0).

The definition of A315521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315521.P624145184359674054

`abs(A008592(n)-A312935(n))`
-/

namespace A315521.P624145184359674054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312935 n|

end

end A315521.P624145184359674054

namespace A315521

/-- `abs(A008592(n)-A312935(n))` -/
def P624145184359674054.Spec : Prop :=
  ∀ n, P624145184359674054.a n = A315521 n

end A315521

/-! ## A315521.P715979807562858068

`A315486(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315521

/-- `A315486(n)+Δ[A011864(n)]` -/
def P715979807562858068.Spec : Prop :=
  ∀ n, P715979807562858068.a n = A315521 n

theorem P715979807562858068.correct : P715979807562858068.Spec := by
  intro n
  simp only [A315521]

end A315521

/-! ## A315521.P17813895036592137955

`2*A008706(n)-A312935(n)`
-/

namespace A315521.P17813895036592137955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312935 n

end

end A315521.P17813895036592137955

namespace A315521

/-- `2*A008706(n)-A312935(n)` -/
def P17813895036592137955.Spec : Prop :=
  ∀ n, P17813895036592137955.a n = A315521 n

end A315521

/-! ## A315521.P8871999012104384098

`2*A313730(n)-A312927(n)`
-/

namespace A315521.P8871999012104384098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313730 n - A312927 n

end

end A315521.P8871999012104384098

namespace A315521

/-- `2*A313730(n)-A312927(n)` -/
def P8871999012104384098.Spec : Prop :=
  ∀ n, P8871999012104384098.a n = A315521 n

end A315521

/-! ## A315521.P14592346791231251661

`A135042(2*n+1)-A312935(n)`
-/

namespace A315521.P14592346791231251661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A312935 n

end

end A315521.P14592346791231251661

namespace A315521

/-- `A135042(2*n+1)-A312935(n)` -/
def P14592346791231251661.Spec : Prop :=
  ∀ n, P14592346791231251661.a n = A315521 n

end A315521

/-! ## A315521.P13308360552624957147

`A184418(A008574(n))-A312935(n)`
-/

namespace A315521.P13308360552624957147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A312935 n

end

end A315521.P13308360552624957147

namespace A315521

/-- `A184418(A008574(n))-A312935(n)` -/
def P13308360552624957147.Spec : Prop :=
  ∀ n, P13308360552624957147.a n = A315521 n

end A315521

/-! ## A315521.P6014711633938964480

`A008458(n)+A008574(n)-A312935(n)`
-/

namespace A315521.P6014711633938964480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312935 n)

end

end A315521.P6014711633938964480

namespace A315521

/-- `A008458(n)+A008574(n)-A312935(n)` -/
def P6014711633938964480.Spec : Prop :=
  ∀ n, P6014711633938964480.a n = A315521 n

end A315521

/-! ## A315521.P14049450467738398338

`A312935(n)+A005843(A008706(n)-A312935(n))`
-/

namespace A315521.P14049450467738398338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312935 n + A005843 (A008706 n - A312935 n).toNat

end

end A315521.P14049450467738398338

namespace A315521

/-- `A312935(n)+A005843(A008706(n)-A312935(n))` -/
def P14049450467738398338.Spec : Prop :=
  ∀ n, P14049450467738398338.a n = A315521 n

end A315521

/-! ## A315521.P9001852302551334259

`A312927(n)+A005843(A313730(n)-A312927(n))`
-/

namespace A315521.P9001852302551334259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312927 n + A005843 (A313730 n - A312927 n).toNat

end

end A315521.P9001852302551334259

namespace A315521

/-- `A312927(n)+A005843(A313730(n)-A312927(n))` -/
def P9001852302551334259.Spec : Prop :=
  ∀ n, P9001852302551334259.a n = A315521 n

end A315521

/-! ## A315521.P13580832044508395909

`A047263(A314837(n)+1)`
-/

namespace A315521.P13580832044508395909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A314837 n + 1).toNat

end

end A315521.P13580832044508395909

namespace A315521

/-- `A047263(A314837(n)+1)` -/
def P13580832044508395909.Spec : Prop :=
  ∀ n, P13580832044508395909.a n = A315521 n

end A315521

/-! ## A315521.P7944174323639541204

`A005843(A313730(n))-A312927(n)`
-/

namespace A315521.P7944174323639541204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313730 n).toNat - A312927 n

end

end A315521.P7944174323639541204

namespace A315521

/-- `A005843(A313730(n))-A312927(n)` -/
def P7944174323639541204.Spec : Prop :=
  ∀ n, P7944174323639541204.a n = A315521 n

end A315521

/-! ## A315521.P16135328366617074157

`A005843(A008706(n))-A312935(n)`
-/

namespace A315521.P16135328366617074157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312935 n

end

end A315521.P16135328366617074157

namespace A315521

/-- `A005843(A008706(n))-A312935(n)` -/
def P16135328366617074157.Spec : Prop :=
  ∀ n, P16135328366617074157.a n = A315521 n

end A315521

/-! ## A315521.P10769330030077403724

`A065502(A008458(n))-A312935(n)`
-/

namespace A315521.P10769330030077403724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A312935 n

end

end A315521.P10769330030077403724

namespace A315521

/-- `A065502(A008458(n))-A312935(n)` -/
def P10769330030077403724.Spec : Prop :=
  ∀ n, P10769330030077403724.a n = A315521 n

end A315521

/-! ## A315521.P2867780608294006011

`A314149(2*n)+A314149(n+1)-A314149(2*n+1)`
-/

namespace A315521.P2867780608294006011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314149 (2 * n) + (A314149 (n + 1) - A314149 (2 * n + 1))

end

end A315521.P2867780608294006011

namespace A315521

/-- `A314149(2*n)+A314149(n+1)-A314149(2*n+1)` -/
def P2867780608294006011.Spec : Prop :=
  ∀ n, P2867780608294006011.a n = A315521 n

end A315521

/-! ## A315521.P4547654774978669127

`A151988(2*A314837(n))/2`
-/

namespace A315521.P4547654774978669127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151988 (2 * A314837 n).toNat : ℚ) / 2

end

end A315521.P4547654774978669127

namespace A315521

/-- `A151988(2*A314837(n))/2` -/
def P4547654774978669127.Spec : Prop :=
  ∀ n, P4547654774978669127.a n = (A315521 n : ℚ)

end A315521

/-! ## A315521.P11889376293645908280

`A068962(A313534(2*n)+A313534(n))`
-/

namespace A315521.P11889376293645908280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (A313534 (2 * n) + A313534 n).toNat

end

end A315521.P11889376293645908280

namespace A315521

/-- `A068962(A313534(2*n)+A313534(n))` -/
def P11889376293645908280.Spec : Prop :=
  ∀ n, P11889376293645908280.a n = A315521 n

end A315521

/-! ## A315521.P18063691340045767981

`A233583(A017281(n))-A312935(n)`
-/

namespace A315521.P18063691340045767981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A312935 n

end

end A315521.P18063691340045767981

namespace A315521

/-- `A233583(A017281(n))-A312935(n)` -/
def P18063691340045767981.Spec : Prop :=
  ∀ n, P18063691340045767981.a n = A315521 n

end A315521

/-!
# A315522: Coordination sequence Gal.6.621.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315522, the canonical program `A315522.P12566608276242758234` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315522 has offset 0).

The definition of A315522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315522.P12566608276242758234

`2*a(n-1)-a(n-2)-a(n-6)+2*a(n-7)-a(n-8)` with `a(0)=1, a(1)=6, a(2)=11, a(3)=17, a(4)=22, a(5)=28, a(6)=33, a(7)=38, a(8)=44`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A315522

/-- `2*a(n-1)-a(n-2)-a(n-6)+2*a(n-7)-a(n-8)` -/
def P12566608276242758234.Spec : Prop :=
  ∀ n, P12566608276242758234.a n = A315522 n

theorem P12566608276242758234.correct : P12566608276242758234.Spec := by
  intro n
  simp only [A315522]

end A315522

/-! ## A315522.P2733235731497854026

`A314836(n)+n`
-/

namespace A315522.P2733235731497854026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314836 n + (n : ℤ)

end

end A315522.P2733235731497854026

namespace A315522

/-- `A314836(n)+n` -/
def P2733235731497854026.Spec : Prop :=
  ∀ n, P2733235731497854026.a n = A315522 n

end A315522

/-! ## A315522.P2071425333320792745

`round(A315318(n)+n/3)`
-/

namespace A315522.P2071425333320792745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A315318 n : ℚ) + (n : ℚ) / 3)

end

end A315522.P2071425333320792745

namespace A315522

/-- `round(A315318(n)+n/3)` -/
def P2071425333320792745.Spec : Prop :=
  ∀ n, P2071425333320792745.a n = A315522 n

end A315522

/-! ## A315522.P7277976433481218201

`A313702(n)+A004396(n)`
-/

namespace A315522.P7277976433481218201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313702 n + A004396 n

end

end A315522.P7277976433481218201

namespace A315522

/-- `A313702(n)+A004396(n)` -/
def P7277976433481218201.Spec : Prop :=
  ∀ n, P7277976433481218201.a n = A315522 n

end A315522

/-! ## A315522.P13099348434464995407

`A313829(n)+A004525(n)`
-/

namespace A315522.P13099348434464995407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313829 n + A004525 n

end

end A315522.P13099348434464995407

namespace A315522

/-- `A313829(n)+A004525(n)` -/
def P13099348434464995407.Spec : Prop :=
  ∀ n, P13099348434464995407.a n = A315522 n

end A315522

/-! ## A315522.P11021234414556753327

`abs(A008592(n)-A312933(n))`
-/

namespace A315522.P11021234414556753327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312933 n|

end

end A315522.P11021234414556753327

namespace A315522

/-- `abs(A008592(n)-A312933(n))` -/
def P11021234414556753327.Spec : Prop :=
  ∀ n, P11021234414556753327.a n = A315522 n

end A315522

/-! ## A315522.P6308311916987985393

`A315244(n)+∑[A131735(n)]`
-/

namespace A315522.P6308311916987985393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315244 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315522.P6308311916987985393

namespace A315522

/-- `A315244(n)+∑[A131735(n)]` -/
def P6308311916987985393.Spec : Prop :=
  ∀ n, P6308311916987985393.a n = A315522 n

end A315522

/-! ## A315522.P12444371630808869440

`A315318(n)+A002264(n+1)`
-/

namespace A315522.P12444371630808869440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315318 n + A002264 (n + 1)

end

end A315522.P12444371630808869440

namespace A315522

/-- `A315318(n)+A002264(n+1)` -/
def P12444371630808869440.Spec : Prop :=
  ∀ n, P12444371630808869440.a n = A315522 n

end A315522

/-! ## A315522.P14845966553357680353

`A315318(n)+n-A004396(n)`
-/

namespace A315522.P14845966553357680353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315318 n + ((n : ℤ) - A004396 n)

end

end A315522.P14845966553357680353

namespace A315522

/-- `A315318(n)+n-A004396(n)` -/
def P14845966553357680353.Spec : Prop :=
  ∀ n, P14845966553357680353.a n = A315522 n

end A315522

/-! ## A315522.P10625665777045325463

`abs(A008591(n)+n-A312933(n))`
-/

namespace A315522.P10625665777045325463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008591 n + ((n : ℤ) - A312933 n)|

end

end A315522.P10625665777045325463

namespace A315522

/-- `abs(A008591(n)+n-A312933(n))` -/
def P10625665777045325463.Spec : Prop :=
  ∀ n, P10625665777045325463.a n = A315522 n

end A315522

/-! ## A315522.P15776013168228740132

`A313702(n)+A002264(2*n+1)`
-/

namespace A315522.P15776013168228740132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313702 n + A002264 (2 * n + 1)

end

end A315522.P15776013168228740132

namespace A315522

/-- `A313702(n)+A002264(2*n+1)` -/
def P15776013168228740132.Spec : Prop :=
  ∀ n, P15776013168228740132.a n = A315522 n

end A315522

/-! ## A315522.P8779379583861513516

`A313872(n)+A004396(A004525(n))`
-/

namespace A315522.P8779379583861513516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313872 n + A004396 (A004525 n).toNat

end

end A315522.P8779379583861513516

namespace A315522

/-- `A313872(n)+A004396(A004525(n))` -/
def P8779379583861513516.Spec : Prop :=
  ∀ n, P8779379583861513516.a n = A315522 n

end A315522

/-! ## A315522.P16198113161600841455

`A313884(n)+A004525(A004396(n))`
-/

namespace A315522.P16198113161600841455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313884 n + A004525 (A004396 n).toNat

end

end A315522.P16198113161600841455

namespace A315522

/-- `A313884(n)+A004525(A004396(n))` -/
def P16198113161600841455.Spec : Prop :=
  ∀ n, P16198113161600841455.a n = A315522 n

end A315522

/-! ## A315522.P10230205089245345580

`A315322(n)+A004525(n-A004396(n))`
-/

namespace A315522.P10230205089245345580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315322 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A315522.P10230205089245345580

namespace A315522

/-- `A315322(n)+A004525(n-A004396(n))` -/
def P10230205089245345580.Spec : Prop :=
  ∀ n, P10230205089245345580.a n = A315522 n

end A315522

/-! ## A315522.P8476749116476743347

`A008458(n)+A008574(n)-A312933(n)`
-/

namespace A315522.P8476749116476743347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312933 n)

end

end A315522.P8476749116476743347

namespace A315522

/-- `A008458(n)+A008574(n)-A312933(n)` -/
def P8476749116476743347.Spec : Prop :=
  ∀ n, P8476749116476743347.a n = A315522 n

end A315522

/-! ## A315522.P914659877944742958

`A008486(n)+A315318(n)-A008576(n)`
-/

namespace A315522.P914659877944742958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A315318 n - A008576 n)

end

end A315522.P914659877944742958

namespace A315522

/-- `A008486(n)+A315318(n)-A008576(n)` -/
def P914659877944742958.Spec : Prop :=
  ∀ n, P914659877944742958.a n = A315522 n

end A315522

/-! ## A315522.P15876409828096537569

`A004396(A004525(n))+A315540(n)-A004525(n)`
-/

namespace A315522.P15876409828096537569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A315540 n - A004525 n)

end

end A315522.P15876409828096537569

namespace A315522

/-- `A004396(A004525(n))+A315540(n)-A004525(n)` -/
def P15876409828096537569.Spec : Prop :=
  ∀ n, P15876409828096537569.a n = A315522 n

end A315522

/-! ## A315522.P17275793083635352809

`A008585(n)+A004525(A314098(n))`
-/

namespace A315522.P17275793083635352809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + A004525 (A314098 n).toNat

end

end A315522.P17275793083635352809

namespace A315522

/-- `A008585(n)+A004525(A314098(n))` -/
def P17275793083635352809.Spec : Prop :=
  ∀ n, P17275793083635352809.a n = A315522 n

end A315522

/-! ## A315522.P11782324028660153406

`n-A001057(2*A314836(n))`
-/

namespace A315522.P11782324028660153406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001057 (2 * A314836 n).toNat

end

end A315522.P11782324028660153406

namespace A315522

/-- `n-A001057(2*A314836(n))` -/
def P11782324028660153406.Spec : Prop :=
  ∀ n, P11782324028660153406.a n = A315522 n

end A315522

/-! ## A315522.P11872252444732538143

`A004525(A313246(2*n))+A004396(n)`
-/

namespace A315522.P11872252444732538143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313246 (2 * n)).toNat + A004396 n

end

end A315522.P11872252444732538143

namespace A315522

/-- `A004525(A313246(2*n))+A004396(n)` -/
def P11872252444732538143.Spec : Prop :=
  ∀ n, P11872252444732538143.a n = A315522 n

end A315522

/-!
# A315523: Coordination sequence Gal.5.301.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315523, the canonical program `A315523.P7408499700622556491` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315523 has offset 0).

The definition of A315523 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2228 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315523.P7408499700622556491

`A313703(n)+A004396(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A315523

/-- `A313703(n)+A004396(n)` -/
def P7408499700622556491.Spec : Prop :=
  ∀ n, P7408499700622556491.a n = A315523 n

theorem P7408499700622556491.correct : P7408499700622556491.Spec := by
  intro n
  simp only [A315523]

end A315523

/-! ## A315523.P17156193618256598801

`A008706(n)+∑[A113217(n)]`
-/

namespace A315523.P17156193618256598801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315523.P17156193618256598801

namespace A315523

/-- `A008706(n)+∑[A113217(n)]` -/
def P17156193618256598801.Spec : Prop :=
  ∀ n, P17156193618256598801.a n = A315523 n

end A315523

/-! ## A315523.P5037886112061187992

`A315475(n)+Δ[A011862(n)]`
-/

namespace A315523.P5037886112061187992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315475 n + (f1 (n + 1) - f1 n)

end

end A315523.P5037886112061187992

namespace A315523

/-- `A315475(n)+Δ[A011862(n)]` -/
def P5037886112061187992.Spec : Prop :=
  ∀ n, P5037886112061187992.a n = A315523 n

end A315523

/-! ## A315523.P9633725629209414933

`2*A008706(n)-A312932(n)`
-/

namespace A315523.P9633725629209414933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312932 n

end

end A315523.P9633725629209414933

namespace A315523

/-- `2*A008706(n)-A312932(n)` -/
def P9633725629209414933.Spec : Prop :=
  ∀ n, P9633725629209414933.a n = A315523 n

end A315523

/-! ## A315523.P10050045679283450700

`(A315308(n)+A008458(n))/2`
-/

namespace A315523.P10050045679283450700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315308 n + A008458 n : ℚ) / 2

end

end A315523.P10050045679283450700

namespace A315523

/-- `(A315308(n)+A008458(n))/2` -/
def P10050045679283450700.Spec : Prop :=
  ∀ n, P10050045679283450700.a n = (A315523 n : ℚ)

end A315523

/-! ## A315523.P5263318050644373385

`A315416(n)+Δ[2*A011862(n)]`
-/

namespace A315523.P5263318050644373385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315416 n + (f1 (n + 1) - f1 n)

end

end A315523.P5263318050644373385

namespace A315523

/-- `A315416(n)+Δ[2*A011862(n)]` -/
def P5263318050644373385.Spec : Prop :=
  ∀ n, P5263318050644373385.a n = A315523 n

end A315523

/-! ## A315523.P15971046155193389270

`A008574(2*n)-A265187(2*n+1)`
-/

namespace A315523.P15971046155193389270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n) - A265187 (2 * n + 1)

end

end A315523.P15971046155193389270

namespace A315523

/-- `A008574(2*n)-A265187(2*n+1)` -/
def P15971046155193389270.Spec : Prop :=
  ∀ n, P15971046155193389270.a n = A315523 n

end A315523

/-! ## A315523.P7036852763765469825

`A301298(n)+A004396(A042965(n+1))`
-/

namespace A315523.P7036852763765469825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + A004396 (A042965 (n + 1)).toNat

end

end A315523.P7036852763765469825

namespace A315523

/-- `A301298(n)+A004396(A042965(n+1))` -/
def P7036852763765469825.Spec : Prop :=
  ∀ n, P7036852763765469825.a n = A315523 n

end A315523

/-! ## A315523.P8326995595579113233

`A301298(n)+A004396(A004396(2*n))`
-/

namespace A315523.P8326995595579113233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + A004396 (A004396 (2 * n)).toNat

end

end A315523.P8326995595579113233

namespace A315523

/-- `A301298(n)+A004396(A004396(2*n))` -/
def P8326995595579113233.Spec : Prop :=
  ∀ n, P8326995595579113233.a n = A315523 n

end A315523

/-! ## A315523.P949028136008828648

`A008458(n)+A008574(n)-A312932(n)`
-/

namespace A315523.P949028136008828648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312932 n)

end

end A315523.P949028136008828648

namespace A315523

/-- `A008458(n)+A008574(n)-A312932(n)` -/
def P949028136008828648.Spec : Prop :=
  ∀ n, P949028136008828648.a n = A315523 n

end A315523

/-! ## A315523.P9020558040254020279

`A008458(n)+1-A086161(A042965(n+1))`
-/

namespace A315523.P9020558040254020279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (1 - A086161 (A042965 (n + 1)).toNat)

end

end A315523.P9020558040254020279

namespace A315523

/-- `A008458(n)+1-A086161(A042965(n+1))` -/
def P9020558040254020279.Spec : Prop :=
  ∀ n, P9020558040254020279.a n = A315523 n

end A315523

/-! ## A315523.P777457201236529067

`A342851(n+1)+A342851(A017113(n)/2)`
-/

namespace A315523.P777457201236529067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342851 (n + 1) + A342851 (SequenceMachineLib.roundAway ((A017113 n : ℚ) / 2)).toNat

end

end A315523.P777457201236529067

namespace A315523

/-- `A342851(n+1)+A342851(A017113(n)/2)` -/
def P777457201236529067.Spec : Prop :=
  ∀ n, P777457201236529067.a n = A315523 n

end A315523

/-! ## A315523.P2666036353819160095

`A008486(2*n)+A011862(2*n)-A011862(2*n+1)`
-/

namespace A315523.P2666036353819160095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) + (A011862 (2 * n) - A011862 (2 * n + 1))

end

end A315523.P2666036353819160095

namespace A315523

/-- `A008486(2*n)+A011862(2*n)-A011862(2*n+1)` -/
def P2666036353819160095.Spec : Prop :=
  ∀ n, P2666036353819160095.a n = A315523 n

end A315523

/-! ## A315523.P5158765132780632743

`A315748(n)-A004396(n-A004396(n))`
-/

namespace A315523.P5158765132780632743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315748 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A315523.P5158765132780632743

namespace A315523

/-- `A315748(n)-A004396(n-A004396(n))` -/
def P5158765132780632743.Spec : Prop :=
  ∀ n, P5158765132780632743.a n = A315523 n

end A315523

/-! ## A315523.P5555251523628527109

`A005843(A008574(n)+n)-A312932(n)`
-/

namespace A315523.P5555251523628527109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A312932 n

end

end A315523.P5555251523628527109

namespace A315523

/-- `A005843(A008574(n)+n)-A312932(n)` -/
def P5555251523628527109.Spec : Prop :=
  ∀ n, P5555251523628527109.a n = A315523 n

end A315523

/-! ## A315523.P545512563343030730

`A004396(n)+A004396(A022144(n)-A004396(n))`
-/

namespace A315523.P545512563343030730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A022144 n - A004396 n).toNat

end

end A315523.P545512563343030730

namespace A315523

/-- `A004396(n)+A004396(A022144(n)-A004396(n))` -/
def P545512563343030730.Spec : Prop :=
  ∀ n, P545512563343030730.a n = A315523 n

end A315523

/-! ## A315523.P5795497019956551295

`A004396(A313538(2*n)-n)`
-/

namespace A315523.P5795497019956551295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313538 (2 * n) - (n : ℤ)).toNat

end

end A315523.P5795497019956551295

namespace A315523

/-- `A004396(A313538(2*n)-n)` -/
def P5795497019956551295.Spec : Prop :=
  ∀ n, P5795497019956551295.a n = A315523 n

end A315523

/-! ## A315523.P13635747896578952616

`A315706(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A315523.P13635747896578952616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315706 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A315523.P13635747896578952616

namespace A315523

/-- `A315706(2*n)+A008458(n+1)-(12*n+6)` -/
def P13635747896578952616.Spec : Prop :=
  ∀ n, P13635747896578952616.a n = A315523 n

end A315523

/-! ## A315523.P2161458295552761148

`A004396(A298024(2*n))-A004396(n)`
-/

namespace A315523.P2161458295552761148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A298024 (2 * n)).toNat - A004396 n

end

end A315523.P2161458295552761148

namespace A315523

/-- `A004396(A298024(2*n))-A004396(n)` -/
def P2161458295552761148.Spec : Prop :=
  ∀ n, P2161458295552761148.a n = A315523 n

end A315523

/-! ## A315523.P3844311919264899261

`A004396(A315510(n))+2*n`
-/

namespace A315523.P3844311919264899261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315510 n).toNat + (2 * n : ℤ)

end

end A315523.P3844311919264899261

namespace A315523

/-- `A004396(A315510(n))+2*n` -/
def P3844311919264899261.Spec : Prop :=
  ∀ n, P3844311919264899261.a n = A315523 n

end A315523

/-!
# A315524: Coordination sequence Gal.5.298.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315524, there is no canonical definition to state claims against.
-/

/-! ## A315524.P7595364650892695991

`A178181(n)+A073202(A102722(3*n+2))`
-/

namespace A315524.P7595364650892695991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178181 n + A073202 (A102722 (3 * n + 2)).toNat

end

end A315524.P7595364650892695991

/-! ## A315524.P17608273928463881859

`A276853(n)+A000010(A309862(n))`
-/

namespace A315524.P17608273928463881859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276853 n + A000010 (A309862 n).toNat

end

end A315524.P17608273928463881859

/-! ## A315524.P8214208945501961751

`A008458(n)-A091221(A000108(n))`
-/

namespace A315524.P8214208945501961751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A091221 (A000108 n).toNat

end

end A315524.P8214208945501961751

/-! ## A315524.P1372134331162289723

`A008458(n)-A001222(A132373(n))`
-/

namespace A315524.P1372134331162289723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A001222 (A132373 n).toNat

end

end A315524.P1372134331162289723

/-! ## A315524.P7437080431404634761

`A008458(n)-A001221(A149285(n))`
-/

namespace A315524.P7437080431404634761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A001221 (A149285 n).toNat

end

end A315524.P7437080431404634761

/-!
# A315525: Coordination sequence Gal.3.49.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315525, the canonical program `A315525.P9271181442675683873` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315525 has offset 0).

The definition of A315525 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2217 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315525.P10429390404953259877

`round(C(2, n+2)+n*(3/5+5))`
-/

namespace A315525.P10429390404953259877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose 2 (n + 2) : ℚ) + (n : ℚ) * ((3 : ℚ) / 5 + 5))

end

end A315525.P10429390404953259877

namespace A315525

/-- `round(C(2, n+2)+n*(3/5+5))` -/
def P10429390404953259877.Spec : Prop :=
  ∀ n, P10429390404953259877.a n = A315525 n

end A315525

/-! ## A315525.P578389824265538503

`∑[floor(a(n-5))]+n` with `a(0)=1, a(1)=4, a(2)=4, a(3)=5, a(4)=4, a(5)=5, a(6)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A315525.P578389824265538503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 4, 5, 4, 5, 5] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A315525.P578389824265538503

namespace A315525

/-- `∑[floor(a(n-5))]+n` -/
def P578389824265538503.Spec : Prop :=
  ∀ n, (P578389824265538503.a n : ℤ) = A315525 n

end A315525

/-! ## A315525.P9271181442675683873

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=6, a(2)=11, a(3)=17, a(4)=22, a(5)=28, a(6)=34`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A315525

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P9271181442675683873.Spec : Prop :=
  ∀ n, P9271181442675683873.a n = A315525 n

theorem P9271181442675683873.correct : P9271181442675683873.Spec := by
  intro n
  simp only [A315525]

end A315525

/-! ## A315525.P9025915141162997462

`A314840(n)+n`
-/

namespace A315525.P9025915141162997462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314840 n + (n : ℤ)

end

end A315525.P9025915141162997462

namespace A315525

/-- `A314840(n)+n` -/
def P9025915141162997462.Spec : Prop :=
  ∀ n, P9025915141162997462.a n = A315525 n

end A315525

/-! ## A315525.P2223406040793953119

`round(7/5*A008574(n))`
-/

namespace A315525.P2223406040793953119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((7 : ℚ) / 5 * (A008574 n : ℚ))

end

end A315525.P2223406040793953119

namespace A315525

/-- `round(7/5*A008574(n))` -/
def P2223406040793953119.Spec : Prop :=
  ∀ n, P2223406040793953119.a n = A315525 n

end A315525

/-! ## A315525.P15859256557283067594

`round(A008458(n)-2*n/5)`
-/

namespace A315525.P15859256557283067594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008458 n : ℚ) - 2 * ((n : ℚ) / 5))

end

end A315525.P15859256557283067594

namespace A315525

/-- `round(A008458(n)-2*n/5)` -/
def P15859256557283067594.Spec : Prop :=
  ∀ n, P15859256557283067594.a n = A315525 n

end A315525

/-! ## A315525.P4356503739729775886

`A047263(3*n+1)+floor(2/acot(n))`
-/

namespace A315525.P4356503739729775886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (3 * n + 1) + ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

end

end A315525.P4356503739729775886

namespace A315525

/-- `A047263(3*n+1)+floor(2/acot(n))` -/
def P4356503739729775886.Spec : Prop :=
  ∀ n, P4356503739729775886.a n = A315525 n

end A315525

/-! ## A315525.P5062371551050441128

`(4*n+A047516(n+1)-1)%(28*n-a(n-1))` with `a(0)=1`
-/

namespace A315525.P5062371551050441128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod ((4 * n : ℤ) + (A047516 (n + 1) - 1)) ((28 * n : ℤ) - a (n - 1))

end

end A315525.P5062371551050441128

namespace A315525

/-- `(4*n+A047516(n+1)-1)%(28*n-a(n-1))` -/
def P5062371551050441128.Spec : Prop :=
  ∀ n, P5062371551050441128.a n = A315525 n

end A315525

/-! ## A315525.P17436637100783181101

`A047299(A008574(n)+1)`
-/

namespace A315525.P17436637100783181101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (A008574 n + 1).toNat

end

end A315525.P17436637100783181101

namespace A315525

/-- `A047299(A008574(n)+1)` -/
def P17436637100783181101.Spec : Prop :=
  ∀ n, P17436637100783181101.a n = A315525 n

end A315525

/-! ## A315525.P11629765518157955203

`A231001(n)+A000007(n)`
-/

namespace A315525.P11629765518157955203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231001 n + A000007 n

end

end A315525.P11629765518157955203

namespace A315525

/-- `A231001(n)+A000007(n)` -/
def P11629765518157955203.Spec : Prop :=
  ∀ n, P11629765518157955203.a n = A315525 n

end A315525

/-! ## A315525.P16846427824784356711

`A314827(n)+A151988(n)`
-/

namespace A315525.P16846427824784356711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314827 n + A151988 n

end

end A315525.P16846427824784356711

namespace A315525

/-- `A314827(n)+A151988(n)` -/
def P16846427824784356711.Spec : Prop :=
  ∀ n, P16846427824784356711.a n = A315525 n

end A315525

/-! ## A315525.P15267312209702160295

`A008458(n)-Δ[A011858(n)]`
-/

namespace A315525.P15267312209702160295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (f1 (n + 1) - f1 n)

end

end A315525.P15267312209702160295

namespace A315525

/-- `A008458(n)-Δ[A011858(n)]` -/
def P15267312209702160295.Spec : Prop :=
  ∀ n, P15267312209702160295.a n = A315525 n

end A315525

/-! ## A315525.P15540791640222474191

`A047299(A004277(2*n)+1)`
-/

namespace A315525.P15540791640222474191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (A004277 (2 * n) + 1).toNat

end

end A315525.P15540791640222474191

namespace A315525

/-- `A047299(A004277(2*n)+1)` -/
def P15540791640222474191.Spec : Prop :=
  ∀ n, P15540791640222474191.a n = A315525 n

end A315525

/-! ## A315525.P3459106418048747148

`A047299(A008486(n)+1+n)`
-/

namespace A315525.P3459106418048747148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (A008486 n + 1 + (n : ℤ)).toNat

end

end A315525.P3459106418048747148

namespace A315525

/-- `A047299(A008486(n)+1+n)` -/
def P3459106418048747148.Spec : Prop :=
  ∀ n, P3459106418048747148.a n = A315525 n

end A315525

/-! ## A315525.P15122886351539855702

`A047448(n+1)+A008574(n)`
-/

namespace A315525.P15122886351539855702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047448 (n + 1) + A008574 n

end

end A315525.P15122886351539855702

namespace A315525

/-- `A047448(n+1)+A008574(n)` -/
def P15122886351539855702.Spec : Prop :=
  ∀ n, P15122886351539855702.a n = A315525 n

end A315525

/-! ## A315525.P14900302072252360772

`A311807(n)+A047363(n+1)`
-/

namespace A315525.P14900302072252360772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311807 n + A047363 (n + 1)

end

end A315525.P14900302072252360772

namespace A315525

/-- `A311807(n)+A047363(n+1)` -/
def P14900302072252360772.Spec : Prop :=
  ∀ n, P14900302072252360772.a n = A315525 n

end A315525

/-! ## A315525.P12225121395891706275

`A314685(n)+A047263(n+1)`
-/

namespace A315525.P12225121395891706275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314685 n + A047263 (n + 1)

end

end A315525.P12225121395891706275

namespace A315525

/-- `A314685(n)+A047263(n+1)` -/
def P12225121395891706275.Spec : Prop :=
  ∀ n, P12225121395891706275.a n = A315525 n

end A315525

/-! ## A315525.P6387727870036916641

`A047299(A008706(n)+1-n)`
-/

namespace A315525.P6387727870036916641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (A008706 n + (1 - (n : ℤ))).toNat

end

end A315525.P6387727870036916641

namespace A315525

/-- `A047299(A008706(n)+1-n)` -/
def P6387727870036916641.Spec : Prop :=
  ∀ n, P6387727870036916641.a n = A315525 n

end A315525

/-! ## A315525.P10636279578658517695

`A008458(n)-A057354(n+1)`
-/

namespace A315525.P10636279578658517695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A057354 (n + 1)

end

end A315525.P10636279578658517695

namespace A315525

/-- `A008458(n)-A057354(n+1)` -/
def P10636279578658517695.Spec : Prop :=
  ∀ n, P10636279578658517695.a n = A315525 n

end A315525

/-! ## A315525.P18411397086012249597

`A047299(A033627(n+2)+n)`
-/

namespace A315525.P18411397086012249597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (A033627 (n + 2) + (n : ℤ)).toNat

end

end A315525.P18411397086012249597

namespace A315525

/-- `A047299(A033627(n+2)+n)` -/
def P18411397086012249597.Spec : Prop :=
  ∀ n, P18411397086012249597.a n = A315525 n

end A315525

/-!
# A315526: Coordination sequence Gal.6.637.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315526, the canonical program `A315526.P9064506857305553506` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315526 has offset 0).

The definition of A315526 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2214 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315526.P6141119134964771730

`abs(A008592(n)-A312927(n))`
-/

namespace A315526.P6141119134964771730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312927 n|

end

end A315526.P6141119134964771730

namespace A315526

/-- `abs(A008592(n)-A312927(n))` -/
def P6141119134964771730.Spec : Prop :=
  ∀ n, P6141119134964771730.a n = A315526 n

end A315526

/-! ## A315526.P9064506857305553506

`A315491(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315526

/-- `A315491(n)+Δ[A011864(n)]` -/
def P9064506857305553506.Spec : Prop :=
  ∀ n, P9064506857305553506.a n = A315526 n

theorem P9064506857305553506.correct : P9064506857305553506.Spec := by
  intro n
  simp only [A315526]

end A315526

/-! ## A315526.P8320328890541826024

`2*A008706(n)-A312927(n)`
-/

namespace A315526.P8320328890541826024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312927 n

end

end A315526.P8320328890541826024

namespace A315526

/-- `2*A008706(n)-A312927(n)` -/
def P8320328890541826024.Spec : Prop :=
  ∀ n, P8320328890541826024.a n = A315526 n

end A315526

/-! ## A315526.P5022587765025121697

`(A315312(n)+A008458(n))/2`
-/

namespace A315526.P5022587765025121697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315312 n + A008458 n : ℚ) / 2

end

end A315526.P5022587765025121697

namespace A315526

/-- `(A315312(n)+A008458(n))/2` -/
def P5022587765025121697.Spec : Prop :=
  ∀ n, P5022587765025121697.a n = (A315526 n : ℚ)

end A315526

/-! ## A315526.P2671318139101480595

`2*A315519(n)-A315516(n)`
-/

namespace A315526.P2671318139101480595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315519 n - A315516 n

end

end A315526.P2671318139101480595

namespace A315526

/-- `2*A315519(n)-A315516(n)` -/
def P2671318139101480595.Spec : Prop :=
  ∀ n, P2671318139101480595.a n = A315526 n

end A315526

/-! ## A315526.P10927655701578514801

`A000038(n)+A008592(n)-A312927(n)`
-/

namespace A315526.P10927655701578514801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A008592 n - A312927 n)

end

end A315526.P10927655701578514801

namespace A315526

/-- `A000038(n)+A008592(n)-A312927(n)` -/
def P10927655701578514801.Spec : Prop :=
  ∀ n, P10927655701578514801.a n = A315526 n

end A315526

/-! ## A315526.P6610998659307517535

`A008458(n)+A008574(n)-A312927(n)`
-/

namespace A315526.P6610998659307517535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312927 n)

end

end A315526.P6610998659307517535

namespace A315526

/-- `A008458(n)+A008574(n)-A312927(n)` -/
def P6610998659307517535.Spec : Prop :=
  ∀ n, P6610998659307517535.a n = A315526 n

end A315526

/-! ## A315526.P13549113845277459723

`A005843(n)+A005843(A008574(n))-A312927(n)`
-/

namespace A315526.P13549113845277459723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A312927 n)

end

end A315526.P13549113845277459723

namespace A315526

/-- `A005843(n)+A005843(A008574(n))-A312927(n)` -/
def P13549113845277459723.Spec : Prop :=
  ∀ n, P13549113845277459723.a n = A315526 n

end A315526

/-! ## A315526.P1505055041033190558

`A315312(n)+A001281(A008458(n)-A315312(n))`
-/

namespace A315526.P1505055041033190558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315312 n + A001281 (A008458 n - A315312 n).toNat

end

end A315526.P1505055041033190558

namespace A315526

/-- `A315312(n)+A001281(A008458(n)-A315312(n))` -/
def P1505055041033190558.Spec : Prop :=
  ∀ n, P1505055041033190558.a n = A315526 n

end A315526

/-! ## A315526.P11709553706203201070

`A315312(n)+A004525(A008458(n)-A315312(n))`
-/

namespace A315526.P11709553706203201070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315312 n + A004525 (A008458 n - A315312 n).toNat

end

end A315526.P11709553706203201070

namespace A315526

/-- `A315312(n)+A004525(A008458(n)-A315312(n))` -/
def P11709553706203201070.Spec : Prop :=
  ∀ n, P11709553706203201070.a n = A315526 n

end A315526

/-! ## A315526.P12893137460908479207

`A008458(n)-A004526(A008458(n)-A315312(n))`
-/

namespace A315526.P12893137460908479207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004526 (A008458 n - A315312 n).toNat

end

end A315526.P12893137460908479207

namespace A315526

/-- `A008458(n)-A004526(A008458(n)-A315312(n))` -/
def P12893137460908479207.Spec : Prop :=
  ∀ n, P12893137460908479207.a n = A315526 n

end A315526

/-! ## A315526.P15220301560326782214

`A005843(A008706(n))-A312927(n)`
-/

namespace A315526.P15220301560326782214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312927 n

end

end A315526.P15220301560326782214

namespace A315526

/-- `A005843(A008706(n))-A312927(n)` -/
def P15220301560326782214.Spec : Prop :=
  ∀ n, P15220301560326782214.a n = A315526 n

end A315526

/-! ## A315526.P8693950956449446191

`A005843(A008574(n)+n)-A312927(n)`
-/

namespace A315526.P8693950956449446191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A312927 n

end

end A315526.P8693950956449446191

namespace A315526

/-- `A005843(A008574(n)+n)-A312927(n)` -/
def P8693950956449446191.Spec : Prop :=
  ∀ n, P8693950956449446191.a n = A315526 n

end A315526

/-! ## A315526.P11008513658433932250

`A008486(n)+A004526(A315312(n))`
-/

namespace A315526.P11008513658433932250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + A004526 (A315312 n).toNat

end

end A315526.P11008513658433932250

namespace A315526

/-- `A008486(n)+A004526(A315312(n))` -/
def P11008513658433932250.Spec : Prop :=
  ∀ n, P11008513658433932250.a n = A315526 n

end A315526

/-! ## A315526.P3601149749983235229

`A004396(A315478(n))+2*n`
-/

namespace A315526.P3601149749983235229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315478 n).toNat + (2 * n : ℤ)

end

end A315526.P3601149749983235229

namespace A315526

/-- `A004396(A315478(n))+2*n` -/
def P3601149749983235229.Spec : Prop :=
  ∀ n, P3601149749983235229.a n = A315526 n

end A315526

/-! ## A315526.P10024328937373891943

`A005843(n)+A004396(A315478(n))`
-/

namespace A315526.P10024328937373891943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A315478 n).toNat

end

end A315526.P10024328937373891943

namespace A315526

/-- `A005843(n)+A004396(A315478(n))` -/
def P10024328937373891943.Spec : Prop :=
  ∀ n, P10024328937373891943.a n = A315526 n

end A315526

/-! ## A315526.P16595230446678794849

`A004396(A313689(2*n)-n)`
-/

namespace A315526.P16595230446678794849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313689 (2 * n) - (n : ℤ)).toNat

end

end A315526.P16595230446678794849

namespace A315526

/-- `A004396(A313689(2*n)-n)` -/
def P16595230446678794849.Spec : Prop :=
  ∀ n, P16595230446678794849.a n = A315526 n

end A315526

/-! ## A315526.P7669984617752668623

`A004396(A315478(n)+A008486(n))`
-/

namespace A315526.P7669984617752668623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315478 n + A008486 n).toNat

end

end A315526.P7669984617752668623

namespace A315526

/-- `A004396(A315478(n)+A008486(n))` -/
def P7669984617752668623.Spec : Prop :=
  ∀ n, P7669984617752668623.a n = A315526 n

end A315526

/-! ## A315526.P8039548180515795534

`A008486(2*n)+A313696(2*n)-A313738(2*n)`
-/

namespace A315526.P8039548180515795534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) + (A313696 (2 * n) - A313738 (2 * n))

end

end A315526.P8039548180515795534

namespace A315526

/-- `A008486(2*n)+A313696(2*n)-A313738(2*n)` -/
def P8039548180515795534.Spec : Prop :=
  ∀ n, P8039548180515795534.a n = A315526 n

end A315526

/-! ## A315526.P6018562083602282715

`A315750(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A315526.P6018562083602282715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315750 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A315526.P6018562083602282715

namespace A315526

/-- `A315750(2*n)+A008458(n+1)-(12*n+6)` -/
def P6018562083602282715.Spec : Prop :=
  ∀ n, P6018562083602282715.a n = A315526 n

end A315526

/-!
# A315527: Coordination sequence Gal.6.638.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315527, the canonical program `A315527.P15376779248736554616` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315527 has offset 0).

The definition of A315527 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315527.P15376779248736554616

`A314841(n)+n`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A315527

/-- `A314841(n)+n` -/
def P15376779248736554616.Spec : Prop :=
  ∀ n, P15376779248736554616.a n = A315527 n

theorem P15376779248736554616.correct : P15376779248736554616.Spec := by
  intro n
  simp only [A315527]

end A315527

/-! ## A315527.P8053874773998143372

`A311924(n)+comp[or(5, n)-6]`
-/

namespace A315527.P8053874773998143372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 5 n : ℤ) - 6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311924 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A315527.P8053874773998143372

namespace A315527

/-- `A311924(n)+comp[or(5, n)-6]` -/
def P8053874773998143372.Spec : Prop :=
  ∀ n, P8053874773998143372.a n = A315527 n

end A315527

/-! ## A315527.P4745514188937323656

`A313707(n)+A004396(n)`
-/

namespace A315527.P4745514188937323656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313707 n + A004396 n

end

end A315527.P4745514188937323656

namespace A315527

/-- `A313707(n)+A004396(n)` -/
def P4745514188937323656.Spec : Prop :=
  ∀ n, P4745514188937323656.a n = A315527 n

end A315527

/-! ## A315527.P17317500560148424235

`A313833(n)+A004525(n)`
-/

namespace A315527.P17317500560148424235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313833 n + A004525 n

end

end A315527.P17317500560148424235

namespace A315527

/-- `A313833(n)+A004525(n)` -/
def P17317500560148424235.Spec : Prop :=
  ∀ n, P17317500560148424235.a n = A315527 n

end A315527

/-! ## A315527.P16807602883020515739

`A315266(n)+Δ[A011848(n)]`
-/

namespace A315527.P16807602883020515739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315266 n + (f1 (n + 1) - f1 n)

end

end A315527.P16807602883020515739

namespace A315527

/-- `A315266(n)+Δ[A011848(n)]` -/
def P16807602883020515739.Spec : Prop :=
  ∀ n, P16807602883020515739.a n = A315527 n

end A315527

/-! ## A315527.P320740859524218351

`A311924(n)+A047424(n+1)`
-/

namespace A315527.P320740859524218351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311924 n + A047424 (n + 1)

end

end A315527.P320740859524218351

namespace A315527

/-- `A311924(n)+A047424(n+1)` -/
def P320740859524218351.Spec : Prop :=
  ∀ n, P320740859524218351.a n = A315527 n

end A315527

/-! ## A315527.P3988802771723671489

`A128834(n)+A312620(n)+n`
-/

namespace A315527.P3988802771723671489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + (A312620 n + (n : ℤ))

end

end A315527.P3988802771723671489

namespace A315527

/-- `A128834(n)+A312620(n)+n` -/
def P3988802771723671489.Spec : Prop :=
  ∀ n, P3988802771723671489.a n = A315527 n

end A315527

/-! ## A315527.P17538998319145421683

`A315266(n)+n-A004525(n)`
-/

namespace A315527.P17538998319145421683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315266 n + ((n : ℤ) - A004525 n)

end

end A315527.P17538998319145421683

namespace A315527

/-- `A315266(n)+n-A004525(n)` -/
def P17538998319145421683.Spec : Prop :=
  ∀ n, P17538998319145421683.a n = A315527 n

end A315527

/-! ## A315527.P15084971635131993087

`A313707(n)+A004526(comp[4*n])`
-/

namespace A315527.P15084971635131993087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313707 n + A004526 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A315527.P15084971635131993087

namespace A315527

/-- `A313707(n)+A004526(comp[4*n])` -/
def P15084971635131993087.Spec : Prop :=
  ∀ n, P15084971635131993087.a n = A315527 n

end A315527

/-! ## A315527.P17029804799778781428

`A313707(n)+A002264(2*n+1)`
-/

namespace A315527.P17029804799778781428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313707 n + A002264 (2 * n + 1)

end

end A315527.P17029804799778781428

namespace A315527

/-- `A313707(n)+A002264(2*n+1)` -/
def P17029804799778781428.Spec : Prop :=
  ∀ n, P17029804799778781428.a n = A315527 n

end A315527

/-! ## A315527.P887449929049275696

`A313879(n)+A004396(A004525(n))`
-/

namespace A315527.P887449929049275696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313879 n + A004396 (A004525 n).toNat

end

end A315527.P887449929049275696

namespace A315527

/-- `A313879(n)+A004396(A004525(n))` -/
def P887449929049275696.Spec : Prop :=
  ∀ n, P887449929049275696.a n = A315527 n

end A315527

/-! ## A315527.P2765774439753121693

`A313891(n)+A004525(A004396(n))`
-/

namespace A315527.P2765774439753121693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313891 n + A004525 (A004396 n).toNat

end

end A315527.P2765774439753121693

namespace A315527

/-- `A313891(n)+A004525(A004396(n))` -/
def P2765774439753121693.Spec : Prop :=
  ∀ n, P2765774439753121693.a n = A315527 n

end A315527

/-! ## A315527.P11370671156244594016

`A004525(A004396(n))+A311924(n)+n`
-/

namespace A315527.P11370671156244594016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A311924 n + (n : ℤ))

end

end A315527.P11370671156244594016

namespace A315527

/-- `A004525(A004396(n))+A311924(n)+n` -/
def P11370671156244594016.Spec : Prop :=
  ∀ n, P11370671156244594016.a n = A315527 n

end A315527

/-! ## A315527.P6971238151055494137

`A313569(n)+A004525(A004396(n)+n)`
-/

namespace A315527.P6971238151055494137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313569 n + A004525 (A004396 n + (n : ℤ)).toNat

end

end A315527.P6971238151055494137

namespace A315527

/-- `A313569(n)+A004525(A004396(n)+n)` -/
def P6971238151055494137.Spec : Prop :=
  ∀ n, P6971238151055494137.a n = A315527 n

end A315527

/-! ## A315527.P17564008600841257254

`A315322(n)+A004396(n-A004525(n))`
-/

namespace A315527.P17564008600841257254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315322 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A315527.P17564008600841257254

namespace A315527

/-- `A315322(n)+A004396(n-A004525(n))` -/
def P17564008600841257254.Spec : Prop :=
  ∀ n, P17564008600841257254.a n = A315527 n

end A315527

/-! ## A315527.P2941188571512440767

`A008458(n)+A008574(n)-A312926(n)`
-/

namespace A315527.P2941188571512440767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312926 n)

end

end A315527.P2941188571512440767

namespace A315527

/-- `A008458(n)+A008574(n)-A312926(n)` -/
def P2941188571512440767.Spec : Prop :=
  ∀ n, P2941188571512440767.a n = A315527 n

end A315527

/-! ## A315527.P17091393596110716647

`A004396(n)+A313057(n)+A004396(A004525(n))`
-/

namespace A315527.P17091393596110716647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313057 n + A004396 (A004525 n).toNat)

end

end A315527.P17091393596110716647

namespace A315527

/-- `A004396(n)+A313057(n)+A004396(A004525(n))` -/
def P17091393596110716647.Spec : Prop :=
  ∀ n, P17091393596110716647.a n = A315527 n

end A315527

/-! ## A315527.P13507286001506403358

`A004525(A004396(n))+A313213(n)+A004525(n)`
-/

namespace A315527.P13507286001506403358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A313213 n + A004525 n)

end

end A315527.P13507286001506403358

namespace A315527

/-- `A004525(A004396(n))+A313213(n)+A004525(n)` -/
def P13507286001506403358.Spec : Prop :=
  ∀ n, P13507286001506403358.a n = A315527 n

end A315527

/-! ## A315527.P5037620371929153871

`A004525(n)-(A004396(A004525(n))-A315512(n))`
-/

namespace A315527.P5037620371929153871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n - (A004396 (A004525 n).toNat - A315512 n)

end

end A315527.P5037620371929153871

namespace A315527

/-- `A004525(n)-(A004396(A004525(n))-A315512(n))` -/
def P5037620371929153871.Spec : Prop :=
  ∀ n, P5037620371929153871.a n = A315527 n

end A315527

/-! ## A315527.P9953683800635250902

`A004396(A315479(n))+2*n`
-/

namespace A315527.P9953683800635250902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315479 n).toNat + (2 * n : ℤ)

end

end A315527.P9953683800635250902

namespace A315527

/-- `A004396(A315479(n))+2*n` -/
def P9953683800635250902.Spec : Prop :=
  ∀ n, P9953683800635250902.a n = A315527 n

end A315527

/-!
# A315528: Coordination sequence Gal.6.632.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315528, there is no canonical definition to state claims against.
-/

/-! ## A315528.P13564871124368658454

`A067775(n+1)-A115359(A109437(n))`
-/

namespace A315528.P13564871124368658454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067775 (n + 1) - A115359 (A109437 n).toNat

end

end A315528.P13564871124368658454

/-! ## A315528.P7128838305989753384

`A138694(n+1)+A124831(A179006(2*(n+2)))`
-/

namespace A315528.P7128838305989753384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138694 (n + 1) + A124831 (A179006 (2 * (n + 2))).toNat

end

end A315528.P7128838305989753384

/-!
# A315529: Coordination sequence Gal.3.60.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315529, there is no canonical definition to state claims against.
-/

/-! ## A315529.P631900045290739591

`A195098(A313837(n)+A004525(n))`
-/

namespace A315529.P631900045290739591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195098 (A313837 n + A004525 n).toNat

end

end A315529.P631900045290739591

/-! ## A315529.P3771483626965137483

`A178181(n)+A030272(A052382(n+1))`
-/

namespace A315529.P3771483626965137483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178181 n + A030272 (A052382 (n + 1)).toNat

end

end A315529.P3771483626965137483

/-! ## A315529.P4062314101273727500

`A212623(A037254(n+1))+A178181(n)`
-/

namespace A315529.P4062314101273727500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212623 (A037254 (n + 1)).toNat + A178181 n

end

end A315529.P4062314101273727500

/-! ## A315529.P15770289062452847209

`A250120(n)+A057526(A244886(n+1))`
-/

namespace A315529.P15770289062452847209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A057526 (A244886 (n + 1)).toNat

end

end A315529.P15770289062452847209

/-! ## A315529.P11100267942609851922

`A360189(A008472(2*n+3))+A178181(n)`
-/

namespace A315529.P11100267942609851922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360189 (A008472 (2 * n + 3)).toNat + A178181 n

end

end A315529.P11100267942609851922

/-!
# A315530: Coordination sequence Gal.4.148.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315530, there is no canonical definition to state claims against.
-/

/-! ## A315530.P17698091232292883876

`A315540(n)-A248639(A022166(n))`
-/

namespace A315530.P17698091232292883876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315540 n - A248639 (A022166 n).toNat

end

end A315530.P17698091232292883876

/-! ## A315530.P12375867464623279285

`A032796(n+1)+A004976(A001222(2^n))`
-/

namespace A315530.P12375867464623279285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032796 (n + 1) + A004976 (A001222 (2 ^ n)).toNat

end

end A315530.P12375867464623279285

/-! ## A315530.P17903225868113042474

`A124766(A296605(n))+round(n*(3/5+5))`
-/

namespace A315530.P17903225868113042474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A296605 n).toNat + SequenceMachineLib.roundAway ((n : ℚ) * ((3 : ℚ) / 5 + 5))

end

end A315530.P17903225868113042474

/-! ## A315530.P2252613316098226142

`or(round(n*(3/5+5)), A000035(A027193(3*n+1)))`
-/

namespace A315530.P2252613316098226142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((n : ℚ) * ((3 : ℚ) / 5 + 5))) (A000035 (A027193 (3 * n + 1)).toNat)

end

end A315530.P2252613316098226142

/-!
# A315531: Coordination sequence Gal.5.322.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315531, there is no canonical definition to state claims against.
-/

/-! ## A315531.P1444357878144595157

`A311738(n)+record[A001222(A311745(n))]`
-/

namespace A315531.P1444357878144595157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A311745 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311738 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315531.P1444357878144595157

/-! ## A315531.P10765774410249895976

`A000120(A000667(n))+5*n`
-/

namespace A315531.P10765774410249895976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000667 n).toNat + (5 * n : ℤ)

end

end A315531.P10765774410249895976

/-! ## A315531.P13208783834735947446

`A000120(A149335(n))+5*n`
-/

namespace A315531.P13208783834735947446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A149335 n).toNat + (5 * n : ℤ)

end

end A315531.P13208783834735947446

/-! ## A315531.P4198309401953709623

`6*n+1-A001222(A054099(n))`
-/

namespace A315531.P4198309401953709623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 1 : ℤ) - A001222 (A054099 n).toNat

end

end A315531.P4198309401953709623

/-! ## A315531.P5789724034977777368

`floor(2/acot(3*n))-A001221(A213227(n))`
-/

namespace A315531.P5789724034977777368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (3 * n : ℝ)⌋ - A001221 (A213227 n).toNat

end

end A315531.P5789724034977777368

/-!
# A315532: Coordination sequence Gal.6.662.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315532, there is no canonical definition to state claims against.
-/

/-! ## A315532.P1841339420742587306

`A336107((n+1)²)+A313881(n)`
-/

namespace A315532.P1841339420742587306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336107 ((n + 1) ^ 2) + A313881 n

end

end A315532.P1841339420742587306

/-! ## A315532.P12672507738201898453

`A315266(n)+A001222(A124373(n))`
-/

namespace A315532.P12672507738201898453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315266 n + A001222 (A124373 n).toNat

end

end A315532.P12672507738201898453

/-! ## A315532.P2024502773387366640

`xor(A067898(A148972(n)), A315525(n))`
-/

namespace A315532.P2024502773387366640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A067898 (A148972 n).toNat) (A315525 n)

end

end A315532.P2024502773387366640

/-! ## A315532.P17172293000560471721

`A004525(n)+A314841(n)+A001222(A124373(n))`
-/

namespace A315532.P17172293000560471721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A314841 n + A001222 (A124373 n).toNat)

end

end A315532.P17172293000560471721

/-! ## A315532.P3101286821881711669

`A001222(A124373(n))+A315527(n)-A004524(n+1)`
-/

namespace A315532.P3101286821881711669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A124373 n).toNat + (A315527 n - A004524 (n + 1))

end

end A315532.P3101286821881711669

/-!
# A315533: Coordination sequence Gal.5.320.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315533, there is no canonical definition to state claims against.
-/

/-! ## A315533.P8107137852431502824

`A313799(n)+A032741(A322260(n+1))`
-/

namespace A315533.P8107137852431502824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313799 n + A032741 (A322260 (n + 1)).toNat

end

end A315533.P8107137852431502824

/-! ## A315533.P16240747921321151785

`A016921(n)-A001221(A094827(n+1))`
-/

namespace A315533.P16240747921321151785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n - A001221 (A094827 (n + 1)).toNat

end

end A315533.P16240747921321151785

/-! ## A315533.P8728071114026566283

`A315525(n)+A067898(A148972(n))`
-/

namespace A315533.P8728071114026566283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315525 n + A067898 (A148972 n).toNat

end

end A315533.P8728071114026566283

/-! ## A315533.P1652793240668067388

`A313801(n)+A001221(A266668(n))`
-/

namespace A315533.P1652793240668067388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313801 n + A001221 (A266668 n).toNat

end

end A315533.P1652793240668067388

/-! ## A315533.P6302838625739010873

`A155212(n)-A328164(A328142(n+1))`
-/

namespace A315533.P6302838625739010873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155212 n - A328164 (A328142 (n + 1)).toNat

end

end A315533.P6302838625739010873

/-!
# A315534: Coordination sequence Gal.6.624.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315534, the canonical program `A315534.P15836177857492630035` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315534 has offset 0).

The definition of A315534 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315534.P15836177857492630035

`A313720(n)+A004396(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315534

/-- `A313720(n)+A004396(n)` -/
def P15836177857492630035.Spec : Prop :=
  ∀ n, P15836177857492630035.a n = A315534 n

theorem P15836177857492630035.correct : P15836177857492630035.Spec := by
  intro n
  simp only [A315534]

end A315534

/-! ## A315534.P2557514639675002049

`A310373(n)+A064429(n)`
-/

namespace A315534.P2557514639675002049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310373 n + A064429 n

end

end A315534.P2557514639675002049

namespace A315534

/-- `A310373(n)+A064429(n)` -/
def P2557514639675002049.Spec : Prop :=
  ∀ n, P2557514639675002049.a n = A315534 n

end A315534

/-! ## A315534.P3435169591910755862

`abs(A008592(n)-A312909(n))`
-/

namespace A315534.P3435169591910755862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312909 n|

end

end A315534.P3435169591910755862

namespace A315534

/-- `abs(A008592(n)-A312909(n))` -/
def P3435169591910755862.Spec : Prop :=
  ∀ n, P3435169591910755862.a n = A315534 n

end A315534

/-! ## A315534.P12149901423648281986

`A047273(A008576(n)+1+n)`
-/

namespace A315534.P12149901423648281986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (A008576 n + 1 + (n : ℤ)).toNat

end

end A315534.P12149901423648281986

namespace A315534

/-- `A047273(A008576(n)+1+n)` -/
def P12149901423648281986.Spec : Prop :=
  ∀ n, P12149901423648281986.a n = A315534 n

end A315534

/-! ## A315534.P6685815187062068038

`A301729(A047622(n+1)+n)`
-/

namespace A315534.P6685815187062068038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301729 (A047622 (n + 1) + (n : ℤ)).toNat

end

end A315534.P6685815187062068038

namespace A315534

/-- `A301729(A047622(n+1)+n)` -/
def P6685815187062068038.Spec : Prop :=
  ∀ n, P6685815187062068038.a n = A315534 n

end A315534

/-! ## A315534.P11157913236356419068

`A312890(n)+2*A004396(n)`
-/

namespace A315534.P11157913236356419068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312890 n + 2 * A004396 n

end

end A315534.P11157913236356419068

namespace A315534

/-- `A312890(n)+2*A004396(n)` -/
def P11157913236356419068.Spec : Prop :=
  ∀ n, P11157913236356419068.a n = A315534 n

end A315534

/-! ## A315534.P1133736351705709002

`A313720(n)+A002264(2*n+1)`
-/

namespace A315534.P1133736351705709002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313720 n + A002264 (2 * n + 1)

end

end A315534.P1133736351705709002

namespace A315534

/-- `A313720(n)+A002264(2*n+1)` -/
def P1133736351705709002.Spec : Prop :=
  ∀ n, P1133736351705709002.a n = A315534 n

end A315534

/-! ## A315534.P3070672971577895389

`A008458(n)-A004525(3*round(n/3))`
-/

namespace A315534.P3070672971577895389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (3 * SequenceMachineLib.roundAway ((n : ℚ) / 3)).toNat

end

end A315534.P3070672971577895389

namespace A315534

/-- `A008458(n)-A004525(3*round(n/3))` -/
def P3070672971577895389.Spec : Prop :=
  ∀ n, P3070672971577895389.a n = A315534 n

end A315534

/-! ## A315534.P10009995961008903461

`A004396(n)+A315488(n)-A004525(n)`
-/

namespace A315534.P10009995961008903461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A315488 n - A004525 n)

end

end A315534.P10009995961008903461

namespace A315534

/-- `A004396(n)+A315488(n)-A004525(n)` -/
def P10009995961008903461.Spec : Prop :=
  ∀ n, P10009995961008903461.a n = A315534 n

end A315534

/-! ## A315534.P15214072574326436318

`A008458(n)+A008574(n)-A312909(n)`
-/

namespace A315534.P15214072574326436318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312909 n)

end

end A315534.P15214072574326436318

namespace A315534

/-- `A008458(n)+A008574(n)-A312909(n)` -/
def P15214072574326436318.Spec : Prop :=
  ∀ n, P15214072574326436318.a n = A315534 n

end A315534

/-! ## A315534.P12929292969469851199

`A315687(n)-A128834(n-A128834(n))`
-/

namespace A315534.P12929292969469851199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315687 n - A128834 ((n : ℤ) - A128834 n).toNat

end

end A315534.P12929292969469851199

namespace A315534

/-- `A315687(n)-A128834(n-A128834(n))` -/
def P12929292969469851199.Spec : Prop :=
  ∀ n, P12929292969469851199.a n = A315534 n

end A315534

/-! ## A315534.P13856148494870478734

`A301729(A298786(2*n)-A301729(2*n))`
-/

namespace A315534.P13856148494870478734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301729 (A298786 (2 * n) - A301729 (2 * n)).toNat

end

end A315534.P13856148494870478734

namespace A315534

/-- `A301729(A298786(2*n)-A301729(2*n))` -/
def P13856148494870478734.Spec : Prop :=
  ∀ n, P13856148494870478734.a n = A315534 n

end A315534

/-! ## A315534.P3399586732952748407

`A314236(n)+A134667(n)`
-/

namespace A315534.P3399586732952748407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314236 n + A134667 n

end

end A315534.P3399586732952748407

namespace A315534

/-- `A314236(n)+A134667(n)` -/
def P3399586732952748407.Spec : Prop :=
  ∀ n, P3399586732952748407.a n = A315534 n

end A315534

/-! ## A315534.P2380292822494720667

`A314236(n)+A128834(A128834(n)+n)`
-/

namespace A315534.P2380292822494720667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314236 n + A128834 (A128834 n + (n : ℤ)).toNat

end

end A315534.P2380292822494720667

namespace A315534

/-- `A314236(n)+A128834(A128834(n)+n)` -/
def P2380292822494720667.Spec : Prop :=
  ∀ n, P2380292822494720667.a n = A315534 n

end A315534

/-! ## A315534.P9583589697821818006

`round(A315763(n)-n/3)`
-/

namespace A315534.P9583589697821818006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A315763 n : ℚ) - (n : ℚ) / 3)

end

end A315534.P9583589697821818006

namespace A315534

/-- `round(A315763(n)-n/3)` -/
def P9583589697821818006.Spec : Prop :=
  ∀ n, P9583589697821818006.a n = A315534 n

end A315534

/-! ## A315534.P786726027657201481

`A315763(n)-A002264(n+1)`
-/

namespace A315534.P786726027657201481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315763 n - A002264 (n + 1)

end

end A315534.P786726027657201481

namespace A315534

/-- `A315763(n)-A002264(n+1)` -/
def P786726027657201481.Spec : Prop :=
  ∀ n, P786726027657201481.a n = A315534 n

end A315534

/-! ## A315534.P3620276698049802627

`A004396(n)+A315763(n)-n`
-/

namespace A315534.P3620276698049802627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A315763 n - (n : ℤ))

end

end A315534.P3620276698049802627

namespace A315534

/-- `A004396(n)+A315763(n)-n` -/
def P3620276698049802627.Spec : Prop :=
  ∀ n, P3620276698049802627.a n = A315534 n

end A315534

/-! ## A315534.P9457060529787678091

`A008576(n)+A315763(n)-A008486(n)`
-/

namespace A315534.P9457060529787678091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A315763 n - A008486 n)

end

end A315534.P9457060529787678091

namespace A315534

/-- `A008576(n)+A315763(n)-A008486(n)` -/
def P9457060529787678091.Spec : Prop :=
  ∀ n, P9457060529787678091.a n = A315534 n

end A315534

/-! ## A315534.P8661568000585477325

`A004525(A315405(2*n)+n)`
-/

namespace A315534.P8661568000585477325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315405 (2 * n) + (n : ℤ)).toNat

end

end A315534.P8661568000585477325

namespace A315534

/-- `A004525(A315405(2*n)+n)` -/
def P8661568000585477325.Spec : Prop :=
  ∀ n, P8661568000585477325.a n = A315534 n

end A315534

/-! ## A315534.P14275013340178245386

`A004525(3*(A008576(n)+n))`
-/

namespace A315534.P14275013340178245386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (3 * (A008576 n + (n : ℤ))).toNat

end

end A315534.P14275013340178245386

namespace A315534

/-- `A004525(3*(A008576(n)+n))` -/
def P14275013340178245386.Spec : Prop :=
  ∀ n, P14275013340178245386.a n = A315534 n

end A315534

/-!
# A315535: Coordination sequence Gal.5.304.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315535, the canonical program `A315535.P14487333064084558685` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315535 has offset 0).

The definition of A315535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2254 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315535.P14487333064084558685

`A313721(n)+A004396(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315535

/-- `A313721(n)+A004396(n)` -/
def P14487333064084558685.Spec : Prop :=
  ∀ n, P14487333064084558685.a n = A315535 n

theorem P14487333064084558685.correct : P14487333064084558685.Spec := by
  intro n
  simp only [A315535]

end A315535

/-! ## A315535.P5832938671585975481

`abs(A008592(n)-A312908(n))`
-/

namespace A315535.P5832938671585975481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312908 n|

end

end A315535.P5832938671585975481

namespace A315535

/-- `abs(A008592(n)-A312908(n))` -/
def P5832938671585975481.Spec : Prop :=
  ∀ n, P5832938671585975481.a n = A315535 n

end A315535

/-! ## A315535.P14506495323384149179

`A312893(n)+2*A004396(n)`
-/

namespace A315535.P14506495323384149179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312893 n + 2 * A004396 n

end

end A315535.P14506495323384149179

namespace A315535

/-- `A312893(n)+2*A004396(n)` -/
def P14506495323384149179.Spec : Prop :=
  ∀ n, P14506495323384149179.a n = A315535 n

end A315535

/-! ## A315535.P5495867664138581833

`A042965(A008576(n)+1)+2*n`
-/

namespace A315535.P5495867664138581833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A008576 n + 1).toNat + (2 * n : ℤ)

end

end A315535.P5495867664138581833

namespace A315535

/-- `A042965(A008576(n)+1)+2*n` -/
def P5495867664138581833.Spec : Prop :=
  ∀ n, P5495867664138581833.a n = A315535 n

end A315535

/-! ## A315535.P254063805621656395

`A313721(n)+A002264(2*n+1)`
-/

namespace A315535.P254063805621656395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313721 n + A002264 (2 * n + 1)

end

end A315535.P254063805621656395

namespace A315535

/-- `A313721(n)+A002264(2*n+1)` -/
def P254063805621656395.Spec : Prop :=
  ∀ n, P254063805621656395.a n = A315535 n

end A315535

/-! ## A315535.P1507728584254362679

`A004396(A298784(n)-n)+4*n`
-/

namespace A315535.P1507728584254362679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A298784 n - (n : ℤ)).toNat + (4 * n : ℤ)

end

end A315535.P1507728584254362679

namespace A315535

/-- `A004396(A298784(n)-n)+4*n` -/
def P1507728584254362679.Spec : Prop :=
  ∀ n, P1507728584254362679.a n = A315535 n

end A315535

/-! ## A315535.P11145257258257195332

`A005408(n)+A004772(A008576(n))`
-/

namespace A315535.P11145257258257195332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + A004772 (A008576 n).toNat

end

end A315535.P11145257258257195332

namespace A315535

/-- `A005408(n)+A004772(A008576(n))` -/
def P11145257258257195332.Spec : Prop :=
  ∀ n, P11145257258257195332.a n = A315535 n

end A315535

/-! ## A315535.P13250657228531973814

`A313860(n)+A004396(A004396(n))`
-/

namespace A315535.P13250657228531973814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313860 n + A004396 (A004396 n).toNat

end

end A315535.P13250657228531973814

namespace A315535

/-- `A313860(n)+A004396(A004396(n))` -/
def P13250657228531973814.Spec : Prop :=
  ∀ n, P13250657228531973814.a n = A315535 n

end A315535

/-! ## A315535.P5715699398796445997

`A008458(n)-A042965(A086161(n))`
-/

namespace A315535.P5715699398796445997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A042965 (A086161 n).toNat

end

end A315535.P5715699398796445997

namespace A315535

/-- `A008458(n)-A042965(A086161(n))` -/
def P5715699398796445997.Spec : Prop :=
  ∀ n, P5715699398796445997.a n = A315535 n

end A315535

/-! ## A315535.P8841942051273768782

`A313201(n)+2*A004396(A004396(n))`
-/

namespace A315535.P8841942051273768782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313201 n + 2 * A004396 (A004396 n).toNat

end

end A315535.P8841942051273768782

namespace A315535

/-- `A313201(n)+2*A004396(A004396(n))` -/
def P8841942051273768782.Spec : Prop :=
  ∀ n, P8841942051273768782.a n = A315535 n

end A315535

/-! ## A315535.P5687448195851863271

`A313538(n)+A004396(2*A004396(n))`
-/

namespace A315535.P5687448195851863271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313538 n + A004396 (2 * A004396 n).toNat

end

end A315535.P5687448195851863271

namespace A315535

/-- `A313538(n)+A004396(2*A004396(n))` -/
def P5687448195851863271.Spec : Prop :=
  ∀ n, P5687448195851863271.a n = A315535 n

end A315535

/-! ## A315535.P7709490979852804767

`A314828(n)+A004396(A004396(n)+n)`
-/

namespace A315535.P7709490979852804767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314828 n + A004396 (A004396 n + (n : ℤ)).toNat

end

end A315535.P7709490979852804767

namespace A315535

/-- `A314828(n)+A004396(A004396(n)+n)` -/
def P7709490979852804767.Spec : Prop :=
  ∀ n, P7709490979852804767.a n = A315535 n

end A315535

/-! ## A315535.P3861932194952552813

`A301694(n)+A004396(n-A004396(n))`
-/

namespace A315535.P3861932194952552813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301694 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A315535.P3861932194952552813

namespace A315535

/-- `A301694(n)+A004396(n-A004396(n))` -/
def P3861932194952552813.Spec : Prop :=
  ∀ n, P3861932194952552813.a n = A315535 n

end A315535

/-! ## A315535.P1962977911620898116

`A008458(n)+A008574(n)-A312908(n)`
-/

namespace A315535.P1962977911620898116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312908 n)

end

end A315535.P1962977911620898116

namespace A315535

/-- `A008458(n)+A008574(n)-A312908(n)` -/
def P1962977911620898116.Spec : Prop :=
  ∀ n, P1962977911620898116.a n = A315535 n

end A315535

/-! ## A315535.P9374589461671317958

`A042965(A047572(2*n+1))+A004277(n)`
-/

namespace A315535.P9374589461671317958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A047572 (2 * n + 1)).toNat + A004277 n

end

end A315535.P9374589461671317958

namespace A315535

/-- `A042965(A047572(2*n+1))+A004277(n)` -/
def P9374589461671317958.Spec : Prop :=
  ∀ n, P9374589461671317958.a n = A315535 n

end A315535

/-! ## A315535.P5679112474041180777

`A004396(n)+A313026(n)+A004396(A004396(n))`
-/

namespace A315535.P5679112474041180777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313026 n + A004396 (A004396 n).toNat)

end

end A315535.P5679112474041180777

namespace A315535

/-- `A004396(n)+A313026(n)+A004396(A004396(n))` -/
def P5679112474041180777.Spec : Prop :=
  ∀ n, P5679112474041180777.a n = A315535 n

end A315535

/-! ## A315535.P16998817629532800680

`A315757(n)-A004396(n-A004396(n))`
-/

namespace A315535.P16998817629532800680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315757 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A315535.P16998817629532800680

namespace A315535

/-- `A315757(n)-A004396(n-A004396(n))` -/
def P16998817629532800680.Spec : Prop :=
  ∀ n, P16998817629532800680.a n = A315535 n

end A315535

/-! ## A315535.P583085793029681500

`A004396(A301694(n))+2*n`
-/

namespace A315535.P583085793029681500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A301694 n).toNat + (2 * n : ℤ)

end

end A315535.P583085793029681500

namespace A315535

/-- `A004396(A301694(n))+2*n` -/
def P583085793029681500.Spec : Prop :=
  ∀ n, P583085793029681500.a n = A315535 n

end A315535

/-! ## A315535.P1330538569757519579

`A005843(n)+A004396(A301298(n)+A004396(n))`
-/

namespace A315535.P1330538569757519579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A301298 n + A004396 n).toNat

end

end A315535.P1330538569757519579

namespace A315535

/-- `A005843(n)+A004396(A301298(n)+A004396(n))` -/
def P1330538569757519579.Spec : Prop :=
  ∀ n, P1330538569757519579.a n = A315535 n

end A315535

/-! ## A315535.P10144573557693630485

`A005843(n)+A004396(A313538(n)+A004396(n))`
-/

namespace A315535.P10144573557693630485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A313538 n + A004396 n).toNat

end

end A315535.P10144573557693630485

namespace A315535

/-- `A005843(n)+A004396(A313538(n)+A004396(n))` -/
def P10144573557693630485.Spec : Prop :=
  ∀ n, P10144573557693630485.a n = A315535 n

end A315535

/-!
# A315536: Coordination sequence Gal.5.306.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315536, the canonical program `A315536.P12818774156009593680` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315536 has offset 0).

The definition of A315536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2246 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315536.P12818774156009593680

`A314886(n)+n`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A315536

/-- `A314886(n)+n` -/
def P12818774156009593680.Spec : Prop :=
  ∀ n, P12818774156009593680.a n = A315536 n

theorem P12818774156009593680.correct : P12818774156009593680.Spec := by
  intro n
  simp only [A315536]

end A315536

/-! ## A315536.P9035175588564612453

`abs(10*n-A312903(n))`
-/

namespace A315536.P9035175588564612453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A312903 n|

end

end A315536.P9035175588564612453

namespace A315536

/-- `abs(10*n-A312903(n))` -/
def P9035175588564612453.Spec : Prop :=
  ∀ n, P9035175588564612453.a n = A315536 n

end A315536

/-! ## A315536.P9469683999600403654

`abs(A008593(n)-A301726(n))`
-/

namespace A315536.P9469683999600403654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - A301726 n|

end

end A315536.P9469683999600403654

namespace A315536

/-- `abs(A008593(n)-A301726(n))` -/
def P9469683999600403654.Spec : Prop :=
  ∀ n, P9469683999600403654.a n = A315536 n

end A315536

/-! ## A315536.P10442715843446009700

`A314708(n)+A047263(n+1)`
-/

namespace A315536.P10442715843446009700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314708 n + A047263 (n + 1)

end

end A315536.P10442715843446009700

namespace A315536

/-- `A314708(n)+A047263(n+1)` -/
def P10442715843446009700.Spec : Prop :=
  ∀ n, P10442715843446009700.a n = A315536 n

end A315536

/-! ## A315536.P17288956384746597807

`(A315327(n)+A008458(n))/2`
-/

namespace A315536.P17288956384746597807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315327 n + A008458 n : ℚ) / 2

end

end A315536.P17288956384746597807

namespace A315536

/-- `(A315327(n)+A008458(n))/2` -/
def P17288956384746597807.Spec : Prop :=
  ∀ n, P17288956384746597807.a n = (A315536 n : ℚ)

end A315536

/-! ## A315536.P2158161650192921598

`A312143(n)+A330025(n)+n`
-/

namespace A315536.P2158161650192921598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312143 n + (A330025 n + (n : ℤ))

end

end A315536.P2158161650192921598

namespace A315536

/-- `A312143(n)+A330025(n)+n` -/
def P2158161650192921598.Spec : Prop :=
  ∀ n, P2158161650192921598.a n = A315536 n

end A315536

/-! ## A315536.P18172940339390450436

`abs(A008592(n)+n-A301726(n))`
-/

namespace A315536.P18172940339390450436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n + ((n : ℤ) - A301726 n)|

end

end A315536.P18172940339390450436

namespace A315536

/-- `abs(A008592(n)+n-A301726(n))` -/
def P18172940339390450436.Spec : Prop :=
  ∀ n, P18172940339390450436.a n = A315536 n

end A315536

/-! ## A315536.P831710238855759086

`A008706(n)+A004525(A047263(n+1))`
-/

namespace A315536.P831710238855759086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + A004525 (A047263 (n + 1)).toNat

end

end A315536.P831710238855759086

namespace A315536

/-- `A008706(n)+A004525(A047263(n+1))` -/
def P831710238855759086.Spec : Prop :=
  ∀ n, P831710238855759086.a n = A315536 n

end A315536

/-! ## A315536.P5632879436187468954

`A008458(n)+A008574(n)-A312903(n)`
-/

namespace A315536.P5632879436187468954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312903 n)

end

end A315536.P5632879436187468954

namespace A315536

/-- `A008458(n)+A008574(n)-A312903(n)` -/
def P5632879436187468954.Spec : Prop :=
  ∀ n, P5632879436187468954.a n = A315536 n

end A315536

/-! ## A315536.P15621964273208600367

`A250120(n)+A313610(n)-A008574(n)`
-/

namespace A315536.P15621964273208600367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + (A313610 n - A008574 n)

end

end A315536.P15621964273208600367

namespace A315536

/-- `A250120(n)+A313610(n)-A008574(n)` -/
def P15621964273208600367.Spec : Prop :=
  ∀ n, P15621964273208600367.a n = A315536 n

end A315536

/-! ## A315536.P16023757426681079944

`A008458(n)+A250120(n)-A313842(n)`
-/

namespace A315536.P16023757426681079944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A250120 n - A313842 n)

end

end A315536.P16023757426681079944

namespace A315536

/-- `A008458(n)+A250120(n)-A313842(n)` -/
def P16023757426681079944.Spec : Prop :=
  ∀ n, P16023757426681079944.a n = A315536 n

end A315536

/-! ## A315536.P12228464741073098725

`A315755(n)-A330025(n-A330025(n))`
-/

namespace A315536.P12228464741073098725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315755 n - A330025 ((n : ℤ) - A330025 n).toNat

end

end A315536.P12228464741073098725

namespace A315536

/-- `A315755(n)-A330025(n-A330025(n))` -/
def P12228464741073098725.Spec : Prop :=
  ∀ n, P12228464741073098725.a n = A315536 n

end A315536

/-! ## A315536.P5810630654279519712

`A004525(A047263(n+1))+A008574(n)+n`
-/

namespace A315536.P5810630654279519712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A047263 (n + 1)).toNat + (A008574 n + (n : ℤ))

end

end A315536.P5810630654279519712

namespace A315536

/-- `A004525(A047263(n+1))+A008574(n)+n` -/
def P5810630654279519712.Spec : Prop :=
  ∀ n, P5810630654279519712.a n = A315536 n

end A315536

/-! ## A315536.P8418221087045427792

`A004525(A047263(n+1))+A008458(n)-n`
-/

namespace A315536.P8418221087045427792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A047263 (n + 1)).toNat + (A008458 n - (n : ℤ))

end

end A315536.P8418221087045427792

namespace A315536

/-- `A004525(A047263(n+1))+A008458(n)-n` -/
def P8418221087045427792.Spec : Prop :=
  ∀ n, P8418221087045427792.a n = A315536 n

end A315536

/-! ## A315536.P15202095900911936438

`A005843(n)+A005843(A008574(n))-A312903(n)`
-/

namespace A315536.P15202095900911936438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A312903 n)

end

end A315536.P15202095900911936438

namespace A315536

/-- `A005843(n)+A005843(A008574(n))-A312903(n)` -/
def P15202095900911936438.Spec : Prop :=
  ∀ n, P15202095900911936438.a n = A315536 n

end A315536

/-! ## A315536.P13091170677134197667

`A315547(n)+n-A151988(n)`
-/

namespace A315536.P13091170677134197667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315547 n + ((n : ℤ) - A151988 n)

end

end A315536.P13091170677134197667

namespace A315536

/-- `A315547(n)+n-A151988(n)` -/
def P13091170677134197667.Spec : Prop :=
  ∀ n, P13091170677134197667.a n = A315536 n

end A315536

/-! ## A315536.P16360197472832730463

`A330025(n)+A313928(n)`
-/

namespace A315536.P16360197472832730463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A313928 n

end

end A315536.P16360197472832730463

namespace A315536

/-- `A330025(n)+A313928(n)` -/
def P16360197472832730463.Spec : Prop :=
  ∀ n, P16360197472832730463.a n = A315536 n

end A315536

/-! ## A315536.P9464326565695752515

`A005843(A008574(n)+n)-A312903(n)`
-/

namespace A315536.P9464326565695752515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A312903 n

end

end A315536.P9464326565695752515

namespace A315536

/-- `A005843(A008574(n)+n)-A312903(n)` -/
def P9464326565695752515.Spec : Prop :=
  ∀ n, P9464326565695752515.a n = A315536 n

end A315536

/-! ## A315536.P16529986406945755121

`A004525(A313905(n))+3*n`
-/

namespace A315536.P16529986406945755121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313905 n).toNat + (3 * n : ℤ)

end

end A315536.P16529986406945755121

namespace A315536

/-- `A004525(A313905(n))+3*n` -/
def P16529986406945755121.Spec : Prop :=
  ∀ n, P16529986406945755121.a n = A315536 n

end A315536

/-! ## A315536.P8204650901424491058

`A004396(A301724(n))+2*n`
-/

namespace A315536.P8204650901424491058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A301724 n).toNat + (2 * n : ℤ)

end

end A315536.P8204650901424491058

namespace A315536

/-- `A004396(A301724(n))+2*n` -/
def P8204650901424491058.Spec : Prop :=
  ∀ n, P8204650901424491058.a n = A315536 n

end A315536

/-!
# A315537: Coordination sequence Gal.6.641.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315537, the canonical program `A315537.P7494962949586735905` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315537 has offset 0).

The definition of A315537 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2220 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315537.P9508912990647111813

`abs(10*n-A312902(n))`
-/

namespace A315537.P9508912990647111813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A312902 n|

end

end A315537.P9508912990647111813

namespace A315537

/-- `abs(10*n-A312902(n))` -/
def P9508912990647111813.Spec : Prop :=
  ∀ n, P9508912990647111813.a n = A315537 n

end A315537

/-! ## A315537.P7494962949586735905

`ceil(A158676(n)/A017401(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A315537

/-- `ceil(A158676(n)/A017401(n))` -/
def P7494962949586735905.Spec : Prop :=
  ∀ n, P7494962949586735905.a n = A315537 n

theorem P7494962949586735905.correct : P7494962949586735905.Spec := by
  intro n
  simp only [A315537]

end A315537

/-! ## A315537.P13991199608313401140

`2*A008706(n)-A312902(n)`
-/

namespace A315537.P13991199608313401140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312902 n

end

end A315537.P13991199608313401140

namespace A315537

/-- `2*A008706(n)-A312902(n)` -/
def P13991199608313401140.Spec : Prop :=
  ∀ n, P13991199608313401140.a n = A315537 n

end A315537

/-! ## A315537.P14422938208189075770

`(A315329(n)+A008458(n))/2`
-/

namespace A315537.P14422938208189075770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315329 n + A008458 n : ℚ) / 2

end

end A315537.P14422938208189075770

namespace A315537

/-- `(A315329(n)+A008458(n))/2` -/
def P14422938208189075770.Spec : Prop :=
  ∀ n, P14422938208189075770.a n = (A315537 n : ℚ)

end A315537

/-! ## A315537.P10477535831122356749

`A135042(2*n+1)-A312902(n)`
-/

namespace A315537.P10477535831122356749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A312902 n

end

end A315537.P10477535831122356749

namespace A315537

/-- `A135042(2*n+1)-A312902(n)` -/
def P10477535831122356749.Spec : Prop :=
  ∀ n, P10477535831122356749.a n = A315537 n

end A315537

/-! ## A315537.P3624027281844718714

`A008458(n)+A008574(n)-A312902(n)`
-/

namespace A315537.P3624027281844718714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312902 n)

end

end A315537.P3624027281844718714

namespace A315537

/-- `A008458(n)+A008574(n)-A312902(n)` -/
def P3624027281844718714.Spec : Prop :=
  ∀ n, P3624027281844718714.a n = A315537 n

end A315537

/-! ## A315537.P16193117043099420682

`A005843(n)+A005843(A008574(n))-A312902(n)`
-/

namespace A315537.P16193117043099420682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A312902 n)

end

end A315537.P16193117043099420682

namespace A315537

/-- `A005843(n)+A005843(A008574(n))-A312902(n)` -/
def P16193117043099420682.Spec : Prop :=
  ∀ n, P16193117043099420682.a n = A315537 n

end A315537

/-! ## A315537.P10959929541943851296

`A312902(n)+A005843(A008706(n)-A312902(n))`
-/

namespace A315537.P10959929541943851296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312902 n + A005843 (A008706 n - A312902 n).toNat

end

end A315537.P10959929541943851296

namespace A315537

/-- `A312902(n)+A005843(A008706(n)-A312902(n))` -/
def P10959929541943851296.Spec : Prop :=
  ∀ n, P10959929541943851296.a n = A315537 n

end A315537

/-! ## A315537.P12599492945493063729

`A315329(n)+A001281(A008458(n)-A315329(n))`
-/

namespace A315537.P12599492945493063729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315329 n + A001281 (A008458 n - A315329 n).toNat

end

end A315537.P12599492945493063729

namespace A315537

/-- `A315329(n)+A001281(A008458(n)-A315329(n))` -/
def P12599492945493063729.Spec : Prop :=
  ∀ n, P12599492945493063729.a n = A315537 n

end A315537

/-! ## A315537.P8039223501160110549

`A005843(A008706(n))-A312902(n)`
-/

namespace A315537.P8039223501160110549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312902 n

end

end A315537.P8039223501160110549

namespace A315537

/-- `A005843(A008706(n))-A312902(n)` -/
def P8039223501160110549.Spec : Prop :=
  ∀ n, P8039223501160110549.a n = A315537 n

end A315537

/-! ## A315537.P9286010520098337779

`A005843(A008574(n)+n)-A312902(n)`
-/

namespace A315537.P9286010520098337779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A312902 n

end

end A315537.P9286010520098337779

namespace A315537

/-- `A005843(A008574(n)+n)-A312902(n)` -/
def P9286010520098337779.Spec : Prop :=
  ∀ n, P9286010520098337779.a n = A315537 n

end A315537

/-! ## A315537.P15999554703231876431

`A004396(A315334(n))+2*n`
-/

namespace A315537.P15999554703231876431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315334 n).toNat + (2 * n : ℤ)

end

end A315537.P15999554703231876431

namespace A315537

/-- `A004396(A315334(n))+2*n` -/
def P15999554703231876431.Spec : Prop :=
  ∀ n, P15999554703231876431.a n = A315537 n

end A315537

/-! ## A315537.P10459228378653868213

`A004396(A315491(n))+2*n`
-/

namespace A315537.P10459228378653868213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315491 n).toNat + (2 * n : ℤ)

end

end A315537.P10459228378653868213

namespace A315537

/-- `A004396(A315491(n))+2*n` -/
def P10459228378653868213.Spec : Prop :=
  ∀ n, P10459228378653868213.a n = A315537 n

end A315537

/-! ## A315537.P7026813260510179704

`A004396(A315519(n))+2*n`
-/

namespace A315537.P7026813260510179704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315519 n).toNat + (2 * n : ℤ)

end

end A315537.P7026813260510179704

namespace A315537

/-- `A004396(A315519(n))+2*n` -/
def P7026813260510179704.Spec : Prop :=
  ∀ n, P7026813260510179704.a n = A315537 n

end A315537

/-! ## A315537.P1516976549787658777

`A005843(n)+A004396(A315334(n))`
-/

namespace A315537.P1516976549787658777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A315334 n).toNat

end

end A315537.P1516976549787658777

namespace A315537

/-- `A005843(n)+A004396(A315334(n))` -/
def P1516976549787658777.Spec : Prop :=
  ∀ n, P1516976549787658777.a n = A315537 n

end A315537

/-! ## A315537.P17426720408002747437

`A005843(n)+A004396(A315491(n))`
-/

namespace A315537.P17426720408002747437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A315491 n).toNat

end

end A315537.P17426720408002747437

namespace A315537

/-- `A005843(n)+A004396(A315491(n))` -/
def P17426720408002747437.Spec : Prop :=
  ∀ n, P17426720408002747437.a n = A315537 n

end A315537

/-! ## A315537.P14176709606273593788

`A005843(n)+A004396(A315519(n))`
-/

namespace A315537.P14176709606273593788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A315519 n).toNat

end

end A315537.P14176709606273593788

namespace A315537

/-- `A005843(n)+A004396(A315519(n))` -/
def P14176709606273593788.Spec : Prop :=
  ∀ n, P14176709606273593788.a n = A315537 n

end A315537

/-! ## A315537.P6282671821760286380

`A004278(A017005(n))-A311804(2*n)`
-/

namespace A315537.P6282671821760286380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (A017005 n).toNat - A311804 (2 * n)

end

end A315537.P6282671821760286380

namespace A315537

/-- `A004278(A017005(n))-A311804(2*n)` -/
def P6282671821760286380.Spec : Prop :=
  ∀ n, P6282671821760286380.a n = A315537 n

end A315537

/-! ## A315537.P15375707018592746080

`A004396(A313560(2*n)-n)`
-/

namespace A315537.P15375707018592746080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313560 (2 * n) - (n : ℤ)).toNat

end

end A315537.P15375707018592746080

namespace A315537

/-- `A004396(A313560(2*n)-n)` -/
def P15375707018592746080.Spec : Prop :=
  ∀ n, P15375707018592746080.a n = A315537 n

end A315537

/-! ## A315537.P2118261160816678499

`A315655(2*n)/(4*n+2-A004277(2*n))`
-/

namespace A315537.P2118261160816678499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315655 (2 * n) : ℚ) / ((4 * n + 2 : ℤ) - A004277 (2 * n) : ℚ)

end

end A315537.P2118261160816678499

namespace A315537

/-- `A315655(2*n)/(4*n+2-A004277(2*n))` -/
def P2118261160816678499.Spec : Prop :=
  ∀ n, P2118261160816678499.a n = (A315537 n : ℚ)

end A315537

/-!
# A315538: Coordination sequence Gal.3.50.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315538, the canonical program `A315538.P16242246442613001554` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315538 has offset 0).

The definition of A315538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315538.P16242246442613001554

`a(n-3)+17` with `a(0)=1, a(1)=6, a(2)=11, a(3)=17`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A315538

/-- `a(n-3)+17` -/
def P16242246442613001554.Spec : Prop :=
  ∀ n, (P16242246442613001554.a n : ℤ) = A315538 n

theorem P16242246442613001554.correct : P16242246442613001554.Spec := by
  intro n
  simp only [A315538]

end A315538

/-! ## A315538.P11071634075186890126

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=5, a(2)=5, a(3)=6, a(4)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A315538.P11071634075186890126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 5, 6, 6] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315538.P11071634075186890126

namespace A315538

/-- `∑[floor(a(n-3))]` -/
def P11071634075186890126.Spec : Prop :=
  ∀ n, (P11071634075186890126.a n : ℤ) = A315538 n

end A315538

/-! ## A315538.P4760321557637182090

`∑[ceil(a(n-3))]` with `a(0)=1, a(1)=5, a(2)=5, a(3)=6, a(4)=6`

`ceil` is left out, it is the identity on integers.
-/

namespace A315538.P4760321557637182090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 5, 6, 6] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315538.P4760321557637182090

namespace A315538

/-- `∑[ceil(a(n-3))]` -/
def P4760321557637182090.Spec : Prop :=
  ∀ n, (P4760321557637182090.a n : ℤ) = A315538 n

end A315538

/-! ## A315538.P12211879333457506052

`∑[a(n-3)%7]` with `a(0)=1, a(1)=5, a(2)=5, a(3)=6, a(4)=6`
-/

namespace A315538.P12211879333457506052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 5, 6, 6] fun n f1 =>
  f1 (n - 3) % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315538.P12211879333457506052

namespace A315538

/-- `∑[a(n-3)%7]` -/
def P12211879333457506052.Spec : Prop :=
  ∀ n, (P12211879333457506052.a n : ℤ) = A315538 n

end A315538

/-! ## A315538.P9505529131953103977

`ceil(abs(1-8*n)/3)+3*n`
-/

namespace A315538.P9505529131953103977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|1 - (8 * n : ℤ)| : ℚ) / 3⌉ + (3 * n : ℤ)

end

end A315538.P9505529131953103977

namespace A315538

/-- `ceil(abs(1-8*n)/3)+3*n` -/
def P9505529131953103977.Spec : Prop :=
  ∀ n, P9505529131953103977.a n = A315538 n

end A315538

/-! ## A315538.P15729312710985881330

`A004525(A315693(2*n))`
-/

namespace A315538.P15729312710985881330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315693 (2 * n)).toNat

end

end A315538.P15729312710985881330

namespace A315538

/-- `A004525(A315693(2*n))` -/
def P15729312710985881330.Spec : Prop :=
  ∀ n, P15729312710985881330.a n = A315538 n

end A315538

/-! ## A315538.P5996520795843284309

`A004525(A315700(2*n))`
-/

namespace A315538.P5996520795843284309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315700 (2 * n)).toNat

end

end A315538.P5996520795843284309

namespace A315538

/-- `A004525(A315700(2*n))` -/
def P5996520795843284309.Spec : Prop :=
  ∀ n, P5996520795843284309.a n = A315538 n

end A315538

/-! ## A315538.P13548866390727655494

`A004525(A315703(2*n))`
-/

namespace A315538.P13548866390727655494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315703 (2 * n)).toNat

end

end A315538.P13548866390727655494

namespace A315538

/-- `A004525(A315703(2*n))` -/
def P13548866390727655494.Spec : Prop :=
  ∀ n, P13548866390727655494.a n = A315538 n

end A315538

/-! ## A315538.P639697895950630509

`A004525(A315744(2*n))`
-/

namespace A315538.P639697895950630509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315744 (2 * n)).toNat

end

end A315538.P639697895950630509

namespace A315538

/-- `A004525(A315744(2*n))` -/
def P639697895950630509.Spec : Prop :=
  ∀ n, P639697895950630509.a n = A315538 n

end A315538

/-! ## A315538.P15059114919409263243

`A004525(A315747(2*n))`
-/

namespace A315538.P15059114919409263243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315747 (2 * n)).toNat

end

end A315538.P15059114919409263243

namespace A315538

/-- `A004525(A315747(2*n))` -/
def P15059114919409263243.Spec : Prop :=
  ∀ n, P15059114919409263243.a n = A315538 n

end A315538

/-! ## A315538.P16847023276206781823

`A004525(A314043(2*n)+n)`
-/

namespace A315538.P16847023276206781823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314043 (2 * n) + (n : ℤ)).toNat

end

end A315538.P16847023276206781823

namespace A315538

/-- `A004525(A314043(2*n)+n)` -/
def P16847023276206781823.Spec : Prop :=
  ∀ n, P16847023276206781823.a n = A315538 n

end A315538

/-! ## A315538.P12606642003927587517

`A004525(A314048(2*n)+n)`
-/

namespace A315538.P12606642003927587517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314048 (2 * n) + (n : ℤ)).toNat

end

end A315538.P12606642003927587517

namespace A315538

/-- `A004525(A314048(2*n)+n)` -/
def P12606642003927587517.Spec : Prop :=
  ∀ n, P12606642003927587517.a n = A315538 n

end A315538

/-! ## A315538.P4531815146574648119

`A004525(A314107(2*n)+n)`
-/

namespace A315538.P4531815146574648119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314107 (2 * n) + (n : ℤ)).toNat

end

end A315538.P4531815146574648119

namespace A315538

/-- `A004525(A314107(2*n)+n)` -/
def P4531815146574648119.Spec : Prop :=
  ∀ n, P4531815146574648119.a n = A315538 n

end A315538

/-! ## A315538.P14393284527463151970

`A004525(A314110(2*n)+n)`
-/

namespace A315538.P14393284527463151970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314110 (2 * n) + (n : ℤ)).toNat

end

end A315538.P14393284527463151970

namespace A315538

/-- `A004525(A314110(2*n)+n)` -/
def P14393284527463151970.Spec : Prop :=
  ∀ n, P14393284527463151970.a n = A315538 n

end A315538

/-! ## A315538.P17540260146085126533

`A004525(A314185(2*n)+n)`
-/

namespace A315538.P17540260146085126533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314185 (2 * n) + (n : ℤ)).toNat

end

end A315538.P17540260146085126533

namespace A315538

/-- `A004525(A314185(2*n)+n)` -/
def P17540260146085126533.Spec : Prop :=
  ∀ n, P17540260146085126533.a n = A315538 n

end A315538

/-! ## A315538.P5591031189607515202

`A004525(A315415(2*n)+n)`
-/

namespace A315538.P5591031189607515202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315415 (2 * n) + (n : ℤ)).toNat

end

end A315538.P5591031189607515202

namespace A315538

/-- `A004525(A315415(2*n)+n)` -/
def P5591031189607515202.Spec : Prop :=
  ∀ n, P5591031189607515202.a n = A315538 n

end A315538

/-! ## A315538.P4297400169305117236

`A004525(A315417(2*n)+n)`
-/

namespace A315538.P4297400169305117236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315417 (2 * n) + (n : ℤ)).toNat

end

end A315538.P4297400169305117236

namespace A315538

/-- `A004525(A315417(2*n)+n)` -/
def P4297400169305117236.Spec : Prop :=
  ∀ n, P4297400169305117236.a n = A315538 n

end A315538

/-!
# A315539: Coordination sequence Gal.6.642.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315539, the canonical program `A315539.P1091420804308675647` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315539 has offset 0).

The definition of A315539 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315539.P11458597827947294938

`abs(A008592(n)-A312897(n))`
-/

namespace A315539.P11458597827947294938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312897 n|

end

end A315539.P11458597827947294938

namespace A315539

/-- `abs(A008592(n)-A312897(n))` -/
def P11458597827947294938.Spec : Prop :=
  ∀ n, P11458597827947294938.a n = A315539 n

end A315539

/-! ## A315539.P1091420804308675647

`2*n+A004396(A315340(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A315539

/-- `2*n+A004396(A315340(n))` -/
def P1091420804308675647.Spec : Prop :=
  ∀ n, P1091420804308675647.a n = A315539 n

theorem P1091420804308675647.correct : P1091420804308675647.Spec := by
  intro n
  simp only [A315539]

end A315539

/-! ## A315539.P6576196263831121844

`2*n+A004396(A315492(n))`
-/

namespace A315539.P6576196263831121844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A315492 n).toNat

end

end A315539.P6576196263831121844

namespace A315539

/-- `2*n+A004396(A315492(n))` -/
def P6576196263831121844.Spec : Prop :=
  ∀ n, P6576196263831121844.a n = A315539 n

end A315539

/-! ## A315539.P11541866749031808425

`2*A008706(n)-A312897(n)`
-/

namespace A315539.P11541866749031808425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312897 n

end

end A315539.P11541866749031808425

namespace A315539

/-- `2*A008706(n)-A312897(n)` -/
def P11541866749031808425.Spec : Prop :=
  ∀ n, P11541866749031808425.a n = A315539 n

end A315539

/-! ## A315539.P7492830389164715617

`2*A315521(n)-A315509(n)`
-/

namespace A315539.P7492830389164715617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315521 n - A315509 n

end

end A315539.P7492830389164715617

namespace A315539

/-- `2*A315521(n)-A315509(n)` -/
def P7492830389164715617.Spec : Prop :=
  ∀ n, P7492830389164715617.a n = A315539 n

end A315539

/-! ## A315539.P16332983216078813904

`A004525(A315486(n)+6*n)`
-/

namespace A315539.P16332983216078813904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315486 n + (6 * n : ℤ)).toNat

end

end A315539.P16332983216078813904

namespace A315539

/-- `A004525(A315486(n)+6*n)` -/
def P16332983216078813904.Spec : Prop :=
  ∀ n, P16332983216078813904.a n = A315539 n

end A315539

/-! ## A315539.P5722326895504098613

`A005843(n)+A004396(A315521(n))`
-/

namespace A315539.P5722326895504098613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A315521 n).toNat

end

end A315539.P5722326895504098613

namespace A315539

/-- `A005843(n)+A004396(A315521(n))` -/
def P5722326895504098613.Spec : Prop :=
  ∀ n, P5722326895504098613.a n = A315539 n

end A315539

/-! ## A315539.P2232556822526470455

`A004396(A315340(n)+A008486(n))`
-/

namespace A315539.P2232556822526470455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315340 n + A008486 n).toNat

end

end A315539.P2232556822526470455

namespace A315539

/-- `A004396(A315340(n)+A008486(n))` -/
def P2232556822526470455.Spec : Prop :=
  ∀ n, P2232556822526470455.a n = A315539 n

end A315539

/-! ## A315539.P10465430223521415771

`A004525(A315277(n)+A008458(n))`
-/

namespace A315539.P10465430223521415771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315277 n + A008458 n).toNat

end

end A315539.P10465430223521415771

namespace A315539

/-- `A004525(A315277(n)+A008458(n))` -/
def P10465430223521415771.Spec : Prop :=
  ∀ n, P10465430223521415771.a n = A315539 n

end A315539

/-! ## A315539.P94237441601718081

`A004396(A315340(n)+A008585(n))`
-/

namespace A315539.P94237441601718081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315340 n + A008585 n).toNat

end

end A315539.P94237441601718081

namespace A315539

/-- `A004396(A315340(n)+A008585(n))` -/
def P94237441601718081.Spec : Prop :=
  ∀ n, P94237441601718081.a n = A315539 n

end A315539

/-! ## A315539.P3619069856195057765

`A004396(A315492(n)+A008585(n))`
-/

namespace A315539.P3619069856195057765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315492 n + A008585 n).toNat

end

end A315539.P3619069856195057765

namespace A315539

/-- `A004396(A315492(n)+A008585(n))` -/
def P3619069856195057765.Spec : Prop :=
  ∀ n, P3619069856195057765.a n = A315539 n

end A315539

/-! ## A315539.P11975211482485842620

`A005843(A008706(n))-A312897(n)`
-/

namespace A315539.P11975211482485842620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312897 n

end

end A315539.P11975211482485842620

namespace A315539

/-- `A005843(A008706(n))-A312897(n)` -/
def P11975211482485842620.Spec : Prop :=
  ∀ n, P11975211482485842620.a n = A315539 n

end A315539

/-! ## A315539.P11136084982938674954

`A008458(n)+A008574(n)-A312897(n)`
-/

namespace A315539.P11136084982938674954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312897 n)

end

end A315539.P11136084982938674954

namespace A315539

/-- `A008458(n)+A008574(n)-A312897(n)` -/
def P11136084982938674954.Spec : Prop :=
  ∀ n, P11136084982938674954.a n = A315539 n

end A315539

/-! ## A315539.P9044547092912273965

`A008458(n)-A004525(A008458(n)-A315277(n))`
-/

namespace A315539.P9044547092912273965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (A008458 n - A315277 n).toNat

end

end A315539.P9044547092912273965

namespace A315539

/-- `A008458(n)-A004525(A008458(n)-A315277(n))` -/
def P9044547092912273965.Spec : Prop :=
  ∀ n, P9044547092912273965.a n = A315539 n

end A315539

/-!
# A315540: Coordination sequence Gal.6.643.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315540, the canonical program `A315540.P594240874885915824` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315540 has offset 0).

The definition of A315540 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2207 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315540.P594240874885915824

`A314893(n)+n`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315540

/-- `A314893(n)+n` -/
def P594240874885915824.Spec : Prop :=
  ∀ n, P594240874885915824.a n = A315540 n

theorem P594240874885915824.correct : P594240874885915824.Spec := by
  intro n
  simp only [A315540]

end A315540

/-! ## A315540.P6657481975574700522

`abs(11*n-A314124(n))`
-/

namespace A315540.P6657481975574700522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(11 * n : ℤ) - A314124 n|

end

end A315540.P6657481975574700522

namespace A315540

/-- `abs(11*n-A314124(n))` -/
def P6657481975574700522.Spec : Prop :=
  ∀ n, P6657481975574700522.a n = A315540 n

end A315540

/-! ## A315540.P11393789998069990791

`abs(11*n-(A312896(n)+n))`
-/

namespace A315540.P11393789998069990791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(11 * n : ℤ) - (A312896 n + (n : ℤ))|

end

end A315540.P11393789998069990791

namespace A315540

/-- `abs(11*n-(A312896(n)+n))` -/
def P11393789998069990791.Spec : Prop :=
  ∀ n, P11393789998069990791.a n = A315540 n

end A315540

/-! ## A315540.P7814777815323962443

`A313744(n)+A004396(n)`
-/

namespace A315540.P7814777815323962443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313744 n + A004396 n

end

end A315540.P7814777815323962443

namespace A315540

/-- `A313744(n)+A004396(n)` -/
def P7814777815323962443.Spec : Prop :=
  ∀ n, P7814777815323962443.a n = A315540 n

end A315540

/-! ## A315540.P18103065954936856942

`A313872(n)+A004525(n)`
-/

namespace A315540.P18103065954936856942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313872 n + A004525 n

end

end A315540.P18103065954936856942

namespace A315540

/-- `A313872(n)+A004525(n)` -/
def P18103065954936856942.Spec : Prop :=
  ∀ n, P18103065954936856942.a n = A315540 n

end A315540

/-! ## A315540.P6188571904215901205

`abs(A008592(n)-A312896(n))`
-/

namespace A315540.P6188571904215901205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312896 n|

end

end A315540.P6188571904215901205

namespace A315540

/-- `abs(A008592(n)-A312896(n))` -/
def P6188571904215901205.Spec : Prop :=
  ∀ n, P6188571904215901205.a n = A315540 n

end A315540

/-! ## A315540.P4972962272762917931

`A311801(n)+A047229(n+1)`
-/

namespace A315540.P4972962272762917931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311801 n + A047229 (n + 1)

end

end A315540.P4972962272762917931

namespace A315540

/-- `A311801(n)+A047229(n+1)` -/
def P4972962272762917931.Spec : Prop :=
  ∀ n, P4972962272762917931.a n = A315540 n

end A315540

/-! ## A315540.P4868551851953842389

`A314683(n)+A047513(n+1)`
-/

namespace A315540.P4868551851953842389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314683 n + A047513 (n + 1)

end

end A315540.P4868551851953842389

namespace A315540

/-- `A314683(n)+A047513(n+1)` -/
def P4868551851953842389.Spec : Prop :=
  ∀ n, P4868551851953842389.a n = A315540 n

end A315540

/-! ## A315540.P603043603418662276

`A004525(n)+A311801(n)+n`
-/

namespace A315540.P603043603418662276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A311801 n + (n : ℤ))

end

end A315540.P603043603418662276

namespace A315540

/-- `A004525(n)+A311801(n)+n` -/
def P603043603418662276.Spec : Prop :=
  ∀ n, P603043603418662276.a n = A315540 n

end A315540

/-! ## A315540.P9645521298126818442

`A315182(n)+n-A128834(n)`
-/

namespace A315540.P9645521298126818442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315182 n + ((n : ℤ) - A128834 n)

end

end A315540.P9645521298126818442

namespace A315540

/-- `A315182(n)+n-A128834(n)` -/
def P9645521298126818442.Spec : Prop :=
  ∀ n, P9645521298126818442.a n = A315540 n

end A315540

/-! ## A315540.P15397537181492583836

`A008458(n)-A004396(A004524(n+1))`
-/

namespace A315540.P15397537181492583836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004396 (A004524 (n + 1)).toNat

end

end A315540.P15397537181492583836

namespace A315540

/-- `A008458(n)-A004396(A004524(n+1))` -/
def P15397537181492583836.Spec : Prop :=
  ∀ n, P15397537181492583836.a n = A315540 n

end A315540

/-! ## A315540.P10746008238730313506

`A313619(n)+A004525(A004396(n)+n)`
-/

namespace A315540.P10746008238730313506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313619 n + A004525 (A004396 n + (n : ℤ)).toNat

end

end A315540.P10746008238730313506

namespace A315540

/-- `A313619(n)+A004525(A004396(n)+n)` -/
def P10746008238730313506.Spec : Prop :=
  ∀ n, P10746008238730313506.a n = A315540 n

end A315540

/-! ## A315540.P532697195558188098

`A008458(n)+A008574(n)-A312896(n)`
-/

namespace A315540.P532697195558188098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312896 n)

end

end A315540.P532697195558188098

namespace A315540

/-- `A008458(n)+A008574(n)-A312896(n)` -/
def P532697195558188098.Spec : Prop :=
  ∀ n, P532697195558188098.a n = A315540 n

end A315540

/-! ## A315540.P16184871380345644722

`A004525(A004396(n))+A313246(n)+A004525(n)`
-/

namespace A315540.P16184871380345644722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A313246 n + A004525 n)

end

end A315540.P16184871380345644722

namespace A315540

/-- `A004525(A004396(n))+A313246(n)+A004525(n)` -/
def P16184871380345644722.Spec : Prop :=
  ∀ n, P16184871380345644722.a n = A315540 n

end A315540

/-! ## A315540.P16135154078476324696

`A004525(n)-(A004396(A004525(n))-A315522(n))`
-/

namespace A315540.P16135154078476324696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n - (A004396 (A004525 n).toNat - A315522 n)

end

end A315540.P16135154078476324696

namespace A315540

/-- `A004525(n)-(A004396(A004525(n))-A315522(n))` -/
def P16135154078476324696.Spec : Prop :=
  ∀ n, P16135154078476324696.a n = A315540 n

end A315540

/-! ## A315540.P174160418822629382

`A004396(A301708(n))+2*n`
-/

namespace A315540.P174160418822629382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A301708 n).toNat + (2 * n : ℤ)

end

end A315540.P174160418822629382

namespace A315540

/-- `A004396(A301708(n))+2*n` -/
def P174160418822629382.Spec : Prop :=
  ∀ n, P174160418822629382.a n = A315540 n

end A315540

/-! ## A315540.P4623989349453112646

`A004396(A315522(n))+2*n`
-/

namespace A315540.P4623989349453112646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315522 n).toNat + (2 * n : ℤ)

end

end A315540.P4623989349453112646

namespace A315540

/-- `A004396(A315522(n))+2*n` -/
def P4623989349453112646.Spec : Prop :=
  ∀ n, P4623989349453112646.a n = A315540 n

end A315540

/-! ## A315540.P17517850936851543558

`A004396(A301291(n)+4*n)`
-/

namespace A315540.P17517850936851543558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A301291 n + (4 * n : ℤ)).toNat

end

end A315540.P17517850936851543558

namespace A315540

/-- `A004396(A301291(n)+4*n)` -/
def P17517850936851543558.Spec : Prop :=
  ∀ n, P17517850936851543558.a n = A315540 n

end A315540

/-! ## A315540.P4258671404938720297

`A004396(A008574(2*n)+A004525(n))`
-/

namespace A315540.P4258671404938720297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008574 (2 * n) + A004525 n).toNat

end

end A315540.P4258671404938720297

namespace A315540

/-- `A004396(A008574(2*n)+A004525(n))` -/
def P4258671404938720297.Spec : Prop :=
  ∀ n, P4258671404938720297.a n = A315540 n

end A315540

/-! ## A315540.P4662766519706209046

`A004396(2*A301291(n)-A004525(n))`
-/

namespace A315540.P4662766519706209046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A301291 n - A004525 n).toNat

end

end A315540.P4662766519706209046

namespace A315540

/-- `A004396(2*A301291(n)-A004525(n))` -/
def P4662766519706209046.Spec : Prop :=
  ∀ n, P4662766519706209046.a n = A315540 n

end A315540

/-!
# A315541: Coordination sequence Gal.4.136.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315541, the canonical program `A315541.P17977209037693124218` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315541 has offset 0).

The definition of A315541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315541.P17977209037693124218

`a(n-1)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=6, a(2)=11, a(3)=17, a(4)=23, a(5)=29, a(6)=34, a(7)=40, a(8)=46`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A315541

/-- `a(n-1)+a(n-7)-a(n-8)` -/
def P17977209037693124218.Spec : Prop :=
  ∀ n, P17977209037693124218.a n = A315541 n

theorem P17977209037693124218.correct : P17977209037693124218.Spec := by
  intro n
  simp only [A315541]

end A315541

/-! ## A315541.P8368849513551510850

`round(10/7*A008574(n))`
-/

namespace A315541.P8368849513551510850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((10 : ℚ) / 7 * (A008574 n : ℚ))

end

end A315541.P8368849513551510850

namespace A315541

/-- `round(10/7*A008574(n))` -/
def P8368849513551510850.Spec : Prop :=
  ∀ n, P8368849513551510850.a n = A315541 n

end A315541

/-! ## A315541.P4147958878462118438

`round(10*(A008706(n)-n)/7)`
-/

namespace A315541.P4147958878462118438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (10 * ((A008706 n - (n : ℤ) : ℚ) / 7))

end

end A315541.P4147958878462118438

namespace A315541

/-- `round(10*(A008706(n)-n)/7)` -/
def P4147958878462118438.Spec : Prop :=
  ∀ n, P4147958878462118438.a n = A315541 n

end A315541

/-! ## A315541.P8466661745962152762

`A315701(n)-A238470(n)`
-/

namespace A315541.P8466661745962152762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315701 n - A238470 n

end

end A315541.P8466661745962152762

namespace A315541

/-- `A315701(n)-A238470(n)` -/
def P8466661745962152762.Spec : Prop :=
  ∀ n, P8466661745962152762.a n = A315541 n

end A315541

/-! ## A315541.P6786436315123713981

`A083033(n+1)+A008574(n)`
-/

namespace A315541.P6786436315123713981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083033 (n + 1) + A008574 n

end

end A315541.P6786436315123713981

namespace A315541

/-- `A083033(n+1)+A008574(n)` -/
def P6786436315123713981.Spec : Prop :=
  ∀ n, P6786436315123713981.a n = A315541 n

end A315541

/-! ## A315541.P7721527959172735900

`A314838(n)+A047588(n+1)`
-/

namespace A315541.P7721527959172735900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314838 n + A047588 (n + 1)

end

end A315541.P7721527959172735900

namespace A315541

/-- `A314838(n)+A047588(n+1)` -/
def P7721527959172735900.Spec : Prop :=
  ∀ n, P7721527959172735900.a n = A315541 n

end A315541

/-! ## A315541.P4047991251905609036

`(A315339(n)+A008458(n))/2`
-/

namespace A315541.P4047991251905609036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315339 n + A008458 n : ℚ) / 2

end

end A315541.P4047991251905609036

namespace A315541

/-- `(A315339(n)+A008458(n))/2` -/
def P4047991251905609036.Spec : Prop :=
  ∀ n, P4047991251905609036.a n = (A315541 n : ℚ)

end A315541

/-! ## A315541.P18295834434133872996

`A315423(n)+Δ[2*A011860(n)]`
-/

namespace A315541.P18295834434133872996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315423 n + (f1 (n + 1) - f1 n)

end

end A315541.P18295834434133872996

namespace A315541

/-- `A315423(n)+Δ[2*A011860(n)]` -/
def P18295834434133872996.Spec : Prop :=
  ∀ n, P18295834434133872996.a n = A315541 n

end A315541

/-! ## A315541.P2895567621493702190

`A083033(n+1)+A004277(2*n)`
-/

namespace A315541.P2895567621493702190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083033 (n + 1) + A004277 (2 * n)

end

end A315541.P2895567621493702190

namespace A315541

/-- `A083033(n+1)+A004277(2*n)` -/
def P2895567621493702190.Spec : Prop :=
  ∀ n, P2895567621493702190.a n = A315541 n

end A315541

/-! ## A315541.P5874157944212880771

`A022144(n)-A047588(2*n+1)`
-/

namespace A315541.P5874157944212880771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - A047588 (2 * n + 1)

end

end A315541.P5874157944212880771

namespace A315541

/-- `A022144(n)-A047588(2*n+1)` -/
def P5874157944212880771.Spec : Prop :=
  ∀ n, P5874157944212880771.a n = A315541 n

end A315541

/-! ## A315541.P1218752097099756679

`A083033(n+1)+A008486(n)+n`
-/

namespace A315541.P1218752097099756679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083033 (n + 1) + (A008486 n + (n : ℤ))

end

end A315541.P1218752097099756679

namespace A315541

/-- `A083033(n+1)+A008486(n)+n` -/
def P1218752097099756679.Spec : Prop :=
  ∀ n, P1218752097099756679.a n = A315541 n

end A315541

/-! ## A315541.P11575109409833955356

`A083033(n+1)+A008706(n)-n`
-/

namespace A315541.P11575109409833955356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083033 (n + 1) + (A008706 n - (n : ℤ))

end

end A315541.P11575109409833955356

namespace A315541

/-- `A083033(n+1)+A008706(n)-n` -/
def P11575109409833955356.Spec : Prop :=
  ∀ n, P11575109409833955356.a n = A315541 n

end A315541

/-! ## A315541.P12705079111857637004

`A083033(n+1)+A004275(Δ[n²])`
-/

namespace A315541.P12705079111857637004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083033 (n + 1) + A004275 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A315541.P12705079111857637004

namespace A315541

/-- `A083033(n+1)+A004275(Δ[n²])` -/
def P12705079111857637004.Spec : Prop :=
  ∀ n, P12705079111857637004.a n = A315541 n

end A315541

/-! ## A315541.P11175979463099183130

`A008574(2*n)-A047588(2*n+1)`
-/

namespace A315541.P11175979463099183130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n) - A047588 (2 * n + 1)

end

end A315541.P11175979463099183130

namespace A315541

/-- `A008574(2*n)-A047588(2*n+1)` -/
def P11175979463099183130.Spec : Prop :=
  ∀ n, P11175979463099183130.a n = A315541 n

end A315541

/-! ## A315541.P5439716257303337860

`A057357(Δ[2*n²]-1)+A008574(n)`
-/

namespace A315541.P5439716257303337860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057357 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat + A008574 n

end

end A315541.P5439716257303337860

namespace A315541

/-- `A057357(Δ[2*n²]-1)+A008574(n)` -/
def P5439716257303337860.Spec : Prop :=
  ∀ n, P5439716257303337860.a n = A315541 n

end A315541

/-! ## A315541.P2750442508469288415

`A008458(n)+A008574(n)-A312895(n)`
-/

namespace A315541.P2750442508469288415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312895 n)

end

end A315541.P2750442508469288415

namespace A315541

/-- `A008458(n)+A008574(n)-A312895(n)` -/
def P2750442508469288415.Spec : Prop :=
  ∀ n, P2750442508469288415.a n = A315541 n

end A315541

/-! ## A315541.P4792212070404943380

`A314249(n)+A238469(n)`
-/

namespace A315541.P4792212070404943380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314249 n + A238469 n

end

end A315541.P4792212070404943380

namespace A315541

/-- `A314249(n)+A238469(n)` -/
def P4792212070404943380.Spec : Prop :=
  ∀ n, P4792212070404943380.a n = A315541 n

end A315541

/-! ## A315541.P16074977527123488316

`A004775(A016861(n))+1`
-/

namespace A315541.P16074977527123488316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004775 (A016861 n).toNat + 1

end

end A315541.P16074977527123488316

namespace A315541

/-- `A004775(A016861(n))+1` -/
def P16074977527123488316.Spec : Prop :=
  ∀ n, P16074977527123488316.a n = A315541 n

end A315541

/-! ## A315541.P16213065807506442503

`A047588(A008574(n)+1+n)`
-/

namespace A315541.P16213065807506442503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (A008574 n + 1 + (n : ℤ)).toNat

end

end A315541.P16213065807506442503

namespace A315541

/-- `A047588(A008574(n)+1+n)` -/
def P16213065807506442503.Spec : Prop :=
  ∀ n, P16213065807506442503.a n = A315541 n

end A315541

/-! ## A315541.P7254288987334874133

`A047588(A008458(n)+1-n)`
-/

namespace A315541.P7254288987334874133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (A008458 n + (1 - (n : ℤ))).toNat

end

end A315541.P7254288987334874133

namespace A315541

/-- `A047588(A008458(n)+1-n)` -/
def P7254288987334874133.Spec : Prop :=
  ∀ n, P7254288987334874133.a n = A315541 n

end A315541

/-!
# A315542: Coordination sequence Gal.6.665.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315542, there is no canonical definition to state claims against.
-/

/-! ## A315542.P14153405963311709727

`(A315341(n)+A008458(n))/2`
-/

namespace A315542.P14153405963311709727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315341 n + A008458 n : ℚ) / 2

end

end A315542.P14153405963311709727

/-! ## A315542.P11399136068834309723

`round((A315341(n)+A008588(n))/2)`
-/

namespace A315542.P11399136068834309723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A315341 n + A008588 n : ℚ) / 2)

end

end A315542.P11399136068834309723

/-! ## A315542.P8315827176366923732

`A315341(n)+A001281(A008458(n)-A315341(n))`
-/

namespace A315542.P8315827176366923732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315341 n + A001281 (A008458 n - A315341 n).toNat

end

end A315542.P8315827176366923732

/-! ## A315542.P9433647625693008840

`A315341(n)+A004525(A008458(n)-A315341(n))`
-/

namespace A315542.P9433647625693008840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315341 n + A004525 (A008458 n - A315341 n).toNat

end

end A315542.P9433647625693008840

/-! ## A315542.P18288853821970482949

`A315341(n)+A006370(A008458(n)-A315341(n))`
-/

namespace A315542.P18288853821970482949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315341 n + A006370 (A008458 n - A315341 n).toNat

end

end A315542.P18288853821970482949

/-! ## A315542.P13891466901855362283

`A008458(n)-A004526(A008458(n)-A315341(n))`
-/

namespace A315542.P13891466901855362283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004526 (A008458 n - A315341 n).toNat

end

end A315542.P13891466901855362283

/-! ## A315542.P17947043441575472877

`A008574(n)+A002264(A316046(n))`
-/

namespace A315542.P17947043441575472877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A002264 (A316046 n).toNat

end

end A315542.P17947043441575472877

/-! ## A315542.P17115939087177068180

`A008585(n)+A004525(A315341(n))`
-/

namespace A315542.P17115939087177068180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + A004525 (A315341 n).toNat

end

end A315542.P17115939087177068180

/-! ## A315542.P1178258197686595693

`A008486(n)+A004526(A315341(n))`
-/

namespace A315542.P1178258197686595693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + A004526 (A315341 n).toNat

end

end A315542.P1178258197686595693

/-! ## A315542.P16677200315309176527

`A004525(A008588(n))+A004525(A315341(n))`
-/

namespace A315542.P16677200315309176527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A008588 n).toNat + A004525 (A315341 n).toNat

end

end A315542.P16677200315309176527

/-! ## A315542.P89210257630610932

`A001281(A315341(n)+A008458(n))`
-/

namespace A315542.P89210257630610932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315341 n + A008458 n).toNat

end

end A315542.P89210257630610932

/-! ## A315542.P4188485781327420682

`A004525(A315341(n)+A008458(n))`
-/

namespace A315542.P4188485781327420682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315341 n + A008458 n).toNat

end

end A315542.P4188485781327420682

/-! ## A315542.P17719363405323966772

`A004526(A315341(n)+A008458(n))`
-/

namespace A315542.P17719363405323966772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315341 n + A008458 n).toNat

end

end A315542.P17719363405323966772

/-! ## A315542.P12619473174086418784

`A004525(A315341(n)+A008588(n))`
-/

namespace A315542.P12619473174086418784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315341 n + A008588 n).toNat

end

end A315542.P12619473174086418784

/-! ## A315542.P15755581505104611032

`A006370(A315341(n)+A008458(n))`
-/

namespace A315542.P15755581505104611032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A315341 n + A008458 n).toNat

end

end A315542.P15755581505104611032

/-! ## A315542.P10488194052166004826

`A032742(A315341(n)+A008458(n))`
-/

namespace A315542.P10488194052166004826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A315341 n + A008458 n).toNat

end

end A315542.P10488194052166004826

/-! ## A315542.P9206693374356471536

`A110654(A315341(n)+A008458(n))`
-/

namespace A315542.P9206693374356471536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A315341 n + A008458 n).toNat

end

end A315542.P9206693374356471536

/-! ## A315542.P2715151203138221740

`A110654(A008458(n)-(1-A315341(n)))`
-/

namespace A315542.P2715151203138221740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A008458 n - (1 - A315341 n)).toNat

end

end A315542.P2715151203138221740

/-!
# A315543: Coordination sequence Gal.4.137.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315543, the canonical program `A315543.P9834102323510964404` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315543 has offset 0).

The definition of A315543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315543.P9834102323510964404

`A314896(n)+n`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315543

/-- `A314896(n)+n` -/
def P9834102323510964404.Spec : Prop :=
  ∀ n, P9834102323510964404.a n = A315543 n

theorem P9834102323510964404.correct : P9834102323510964404.Spec := by
  intro n
  simp only [A315543]

end A315543

/-! ## A315543.P6352058388411020675

`abs(10*n-A312894(n))`
-/

namespace A315543.P6352058388411020675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A312894 n|

end

end A315543.P6352058388411020675

namespace A315543

/-- `abs(10*n-A312894(n))` -/
def P6352058388411020675.Spec : Prop :=
  ∀ n, P6352058388411020675.a n = A315543 n

end A315543

/-! ## A315543.P5191907803076514393

`A313875(n)+A004525(n)`
-/

namespace A315543.P5191907803076514393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313875 n + A004525 n

end

end A315543.P5191907803076514393

namespace A315543

/-- `A313875(n)+A004525(n)` -/
def P5191907803076514393.Spec : Prop :=
  ∀ n, P5191907803076514393.a n = A315543 n

end A315543

/-! ## A315543.P13974157898033512724

`A314851(n)+A255347(n)`
-/

namespace A315543.P13974157898033512724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314851 n + A255347 n

end

end A315543.P13974157898033512724

namespace A315543

/-- `A314851(n)+A255347(n)` -/
def P13974157898033512724.Spec : Prop :=
  ∀ n, P13974157898033512724.a n = A315543 n

end A315543

/-! ## A315543.P7496616465436236391

`A311843(n)+A047229(n+1)`
-/

namespace A315543.P7496616465436236391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311843 n + A047229 (n + 1)

end

end A315543.P7496616465436236391

namespace A315543

/-- `A311843(n)+A047229(n+1)` -/
def P7496616465436236391.Spec : Prop :=
  ∀ n, P7496616465436236391.a n = A315543 n

end A315543

/-! ## A315543.P5360843550777196853

`(A315342(n)+A008458(n))/2`
-/

namespace A315543.P5360843550777196853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315342 n + A008458 n : ℚ) / 2

end

end A315543.P5360843550777196853

namespace A315543

/-- `(A315342(n)+A008458(n))/2` -/
def P5360843550777196853.Spec : Prop :=
  ∀ n, P5360843550777196853.a n = (A315543 n : ℚ)

end A315543

/-! ## A315543.P6060797572772542937

`A004525(n)+A311843(n)+n`
-/

namespace A315543.P6060797572772542937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A311843 n + (n : ℤ))

end

end A315543.P6060797572772542937

namespace A315543

/-- `A004525(n)+A311843(n)+n` -/
def P6060797572772542937.Spec : Prop :=
  ∀ n, P6060797572772542937.a n = A315543 n

end A315543

/-! ## A315543.P17513761104203396356

`A046978(n)+A312205(n)+n`
-/

namespace A315543.P17513761104203396356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 n + (A312205 n + (n : ℤ))

end

end A315543.P17513761104203396356

namespace A315543

/-- `A046978(n)+A312205(n)+n` -/
def P17513761104203396356.Spec : Prop :=
  ∀ n, P17513761104203396356.a n = A315543 n

end A315543

/-! ## A315543.P4634273296588472183

`Δ[A011861(n)]+A301291(n)+n`
-/

namespace A315543.P4634273296588472183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A301291 n + (n : ℤ))

end

end A315543.P4634273296588472183

namespace A315543

/-- `Δ[A011861(n)]+A301291(n)+n` -/
def P4634273296588472183.Spec : Prop :=
  ∀ n, P4634273296588472183.a n = A315543 n

end A315543

/-! ## A315543.P6108646805521676656

`A313926(n)+A004525(A004525(n))`
-/

namespace A315543.P6108646805521676656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313926 n + A004525 (A004525 n).toNat

end

end A315543.P6108646805521676656

namespace A315543

/-- `A313926(n)+A004525(A004525(n))` -/
def P6108646805521676656.Spec : Prop :=
  ∀ n, P6108646805521676656.a n = A315543 n

end A315543

/-! ## A315543.P6221871425394948569

`A008458(n)-A004525(A201629(n)/2)`
-/

namespace A315543.P6221871425394948569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (SequenceMachineLib.roundAway ((A201629 n : ℚ) / 2)).toNat

end

end A315543.P6221871425394948569

namespace A315543

/-- `A008458(n)-A004525(A201629(n)/2)` -/
def P6221871425394948569.Spec : Prop :=
  ∀ n, P6221871425394948569.a n = A315543 n

end A315543

/-! ## A315543.P10194856909084875962

`A008706(n)+A004525(A004525(n)+n)`
-/

namespace A315543.P10194856909084875962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + A004525 (A004525 n + (n : ℤ)).toNat

end

end A315543.P10194856909084875962

namespace A315543

/-- `A008706(n)+A004525(A004525(n)+n)` -/
def P10194856909084875962.Spec : Prop :=
  ∀ n, P10194856909084875962.a n = A315543 n

end A315543

/-! ## A315543.P7500104841301111465

`A004525(A004525(n))+A312140(n)+n`
-/

namespace A315543.P7500104841301111465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + (A312140 n + (n : ℤ))

end

end A315543.P7500104841301111465

namespace A315543

/-- `A004525(A004525(n))+A312140(n)+n` -/
def P7500104841301111465.Spec : Prop :=
  ∀ n, P7500104841301111465.a n = A315543 n

end A315543

/-! ## A315543.P750094321158936366

`A315259(n)+n-A004525(A004525(n))`
-/

namespace A315543.P750094321158936366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315259 n + ((n : ℤ) - A004525 (A004525 n).toNat)

end

end A315543.P750094321158936366

namespace A315543

/-- `A315259(n)+n-A004525(A004525(n))` -/
def P750094321158936366.Spec : Prop :=
  ∀ n, P750094321158936366.a n = A315543 n

end A315543

/-! ## A315543.P14727794728323123543

`A315342(n)+A004525(n-A004525(n))`
-/

namespace A315543.P14727794728323123543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315342 n + A004525 ((n : ℤ) - A004525 n).toNat

end

end A315543.P14727794728323123543

namespace A315543

/-- `A315342(n)+A004525(n-A004525(n))` -/
def P14727794728323123543.Spec : Prop :=
  ∀ n, P14727794728323123543.a n = A315543 n

end A315543

/-! ## A315543.P14848711170505001880

`A008458(n)+A008574(n)-A312894(n)`
-/

namespace A315543.P14848711170505001880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312894 n)

end

end A315543.P14848711170505001880

namespace A315543

/-- `A008458(n)+A008574(n)-A312894(n)` -/
def P14848711170505001880.Spec : Prop :=
  ∀ n, P14848711170505001880.a n = A315543 n

end A315543

/-! ## A315543.P7979043648701697302

`A008458(n)-A004525(n-A004525(n))`
-/

namespace A315543.P7979043648701697302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 ((n : ℤ) - A004525 n).toNat

end

end A315543.P7979043648701697302

namespace A315543

/-- `A008458(n)-A004525(n-A004525(n))` -/
def P7979043648701697302.Spec : Prop :=
  ∀ n, P7979043648701697302.a n = A315543 n

end A315543

/-! ## A315543.P18430991117632624280

`A301708(n)+Δ[A011861(n)]`
-/

namespace A315543.P18430991117632624280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301708 n + (f1 (n + 1) - f1 n)

end

end A315543.P18430991117632624280

namespace A315543

/-- `A301708(n)+Δ[A011861(n)]` -/
def P18430991117632624280.Spec : Prop :=
  ∀ n, P18430991117632624280.a n = A315543 n

end A315543

/-! ## A315543.P14139385215772947968

`A005843(n)+A004525(A314161(n))+n`
-/

namespace A315543.P14139385215772947968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A004525 (A314161 n).toNat + (n : ℤ))

end

end A315543.P14139385215772947968

namespace A315543

/-- `A005843(n)+A004525(A314161(n))+n` -/
def P14139385215772947968.Spec : Prop :=
  ∀ n, P14139385215772947968.a n = A315543 n

end A315543

/-! ## A315543.P16785974362582721290

`A028310(A315704(2*n)-A315704(n))`
-/

namespace A315543.P16785974362582721290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A315704 (2 * n) - A315704 n).toNat

end

end A315543.P16785974362582721290

namespace A315543

/-- `A028310(A315704(2*n)-A315704(n))` -/
def P16785974362582721290.Spec : Prop :=
  ∀ n, P16785974362582721290.a n = A315543 n

end A315543

/-!
# A315544: Coordination sequence Gal.6.631.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315544, there is no canonical definition to state claims against.
-/

/-! ## A315544.P16811235718122208722

`or(A047999(2*(n+1)), A130110(A016921(n)))`
-/

namespace A315544.P16811235718122208722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A047999 (2 * (n + 1))) (A130110 (A016921 n).toNat)

end

end A315544.P16811235718122208722

/-! ## A315544.P13894073025557966136

`A178181(n)+A000120(A000837(n))`
-/

namespace A315544.P13894073025557966136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178181 n + A000120 (A000837 n).toNat

end

end A315544.P13894073025557966136

/-! ## A315544.P11260249699609719068

`gcd(C(2*n, n), A330734(C(2*n, n)))+4*n`
-/

namespace A315544.P11260249699609719068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose (2 * n) n : ℤ) (A330734 (Nat.choose (2 * n) n)) + 4 * n

end

end A315544.P11260249699609719068

/-! ## A315544.P6724782353385149944

`A034699(A000984(n))+4*n`
-/

namespace A315544.P6724782353385149944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A000984 n).toNat + (4 * n : ℤ)

end

end A315544.P6724782353385149944

/-! ## A315544.P14696408310850465954

`A330691(A000984(n))+A008586(n)`
-/

namespace A315544.P14696408310850465954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330691 (A000984 n).toNat + A008586 n

end

end A315544.P14696408310850465954

/-!
# A315545: Coordination sequence Gal.5.321.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315545, there is no canonical definition to state claims against.
-/

/-! ## A315545.P12779805574515365566

`A008458(n)-A102669(A106331(n+1))`
-/

namespace A315545.P12779805574515365566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A102669 (A106331 (n + 1)).toNat

end

end A315545.P12779805574515365566

/-! ## A315545.P4622423627264691144

`A315546(n)-A185293(A337376(n))`
-/

namespace A315545.P4622423627264691144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315546 n - A185293 (A337376 n).toNat

end

end A315545.P4622423627264691144

/-! ## A315545.P13378196016692268635

`A008458(n)-A001221(A047974(n))`
-/

namespace A315545.P13378196016692268635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A001221 (A047974 n).toNat

end

end A315545.P13378196016692268635

/-! ## A315545.P3104261558091164008

`A008458(n)-A087436(A001453(n+2))`
-/

namespace A315545.P3104261558091164008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A087436 (A001453 (n + 2)).toNat

end

end A315545.P3104261558091164008

/-! ## A315545.P13155530682207954722

`A105644(n)+A010054(A000244(n))`
-/

namespace A315545.P13155530682207954722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105644 n + A010054 (A000244 n).toNat

end

end A315545.P13155530682207954722

/-!
# A315546: Coordination sequence Gal.5.294.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315546, the canonical program `A315546.P1451297170771805050` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315546 has offset 0).

The definition of A315546 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315546.P1451297170771805050

`A313746(n)+A004396(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315546

/-- `A313746(n)+A004396(n)` -/
def P1451297170771805050.Spec : Prop :=
  ∀ n, P1451297170771805050.a n = A315546 n

theorem P1451297170771805050.correct : P1451297170771805050.Spec := by
  intro n
  simp only [A315546]

end A315546

/-! ## A315546.P377691191544527654

`abs(A008592(n)-A312893(n))`
-/

namespace A315546.P377691191544527654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312893 n|

end

end A315546.P377691191544527654

namespace A315546

/-- `abs(A008592(n)-A312893(n))` -/
def P377691191544527654.Spec : Prop :=
  ∀ n, P377691191544527654.a n = A315546 n

end A315546

/-! ## A315546.P6300946804913584444

`A315495(n)+Δ[A011862(n)]`
-/

namespace A315546.P6300946804913584444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315495 n + (f1 (n + 1) - f1 n)

end

end A315546.P6300946804913584444

namespace A315546

/-- `A315495(n)+Δ[A011862(n)]` -/
def P6300946804913584444.Spec : Prop :=
  ∀ n, P6300946804913584444.a n = A315546 n

end A315546

/-! ## A315546.P7442420946165151518

`A312908(n)+2*A004396(n)`
-/

namespace A315546.P7442420946165151518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312908 n + 2 * A004396 n

end

end A315546.P7442420946165151518

namespace A315546

/-- `A312908(n)+2*A004396(n)` -/
def P7442420946165151518.Spec : Prop :=
  ∀ n, P7442420946165151518.a n = A315546 n

end A315546

/-! ## A315546.P16879379211597492811

`(A315343(n)+A008458(n))/2`
-/

namespace A315546.P16879379211597492811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315343 n + A008458 n : ℚ) / 2

end

end A315546.P16879379211597492811

namespace A315546

/-- `(A315343(n)+A008458(n))/2` -/
def P16879379211597492811.Spec : Prop :=
  ∀ n, P16879379211597492811.a n = (A315546 n : ℚ)

end A315546

/-! ## A315546.P5991942753917040336

`A004396(A008576(n))+4*n`
-/

namespace A315546.P5991942753917040336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008576 n).toNat + (4 * n : ℤ)

end

end A315546.P5991942753917040336

namespace A315546

/-- `A004396(A008576(n))+4*n` -/
def P5991942753917040336.Spec : Prop :=
  ∀ n, P5991942753917040336.a n = A315546 n

end A315546

/-! ## A315546.P7409947942226985103

`A315427(n)+Δ[2*A011862(n)]`
-/

namespace A315546.P7409947942226985103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315427 n + (f1 (n + 1) - f1 n)

end

end A315546.P7409947942226985103

namespace A315546

/-- `A315427(n)+Δ[2*A011862(n)]` -/
def P7409947942226985103.Spec : Prop :=
  ∀ n, P7409947942226985103.a n = A315546 n

end A315546

/-! ## A315546.P3982711101023221635

`floor(2/acot(3*n))-A004396(n-A004396(n))`
-/

namespace A315546.P3982711101023221635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (3 * n : ℝ)⌋ - A004396 ((n : ℤ) - A004396 n).toNat

end

end A315546.P3982711101023221635

namespace A315546

/-- `floor(2/acot(3*n))-A004396(n-A004396(n))` -/
def P3982711101023221635.Spec : Prop :=
  ∀ n, P3982711101023221635.a n = A315546 n

end A315546

/-! ## A315546.P6879859335354590768

`A313894(n)+A004396(A004396(n))`
-/

namespace A315546.P6879859335354590768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n + A004396 (A004396 n).toNat

end

end A315546.P6879859335354590768

namespace A315546

/-- `A313894(n)+A004396(A004396(n))` -/
def P6879859335354590768.Spec : Prop :=
  ∀ n, P6879859335354590768.a n = A315546 n

end A315546

/-! ## A315546.P17048492063974868305

`abs(A008590(n)-A004396(A298786(n)))`
-/

namespace A315546.P17048492063974868305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008590 n - A004396 (A298786 n).toNat|

end

end A315546.P17048492063974868305

namespace A315546

/-- `abs(A008590(n)-A004396(A298786(n)))` -/
def P17048492063974868305.Spec : Prop :=
  ∀ n, P17048492063974868305.a n = A315546 n

end A315546

/-! ## A315546.P704302072606579522

`A313580(n)+A004396(2*A004396(n))`
-/

namespace A315546.P704302072606579522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313580 n + A004396 (2 * A004396 n).toNat

end

end A315546.P704302072606579522

namespace A315546

/-- `A313580(n)+A004396(2*A004396(n))` -/
def P704302072606579522.Spec : Prop :=
  ∀ n, P704302072606579522.a n = A315546 n

end A315546

/-! ## A315546.P14528844168710809490

`A314945(n)+A004396(A004396(2*n))`
-/

namespace A315546.P14528844168710809490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314945 n + A004396 (A004396 (2 * n)).toNat

end

end A315546.P14528844168710809490

namespace A315546

/-- `A314945(n)+A004396(A004396(2*n))` -/
def P14528844168710809490.Spec : Prop :=
  ∀ n, P14528844168710809490.a n = A315546 n

end A315546

/-! ## A315546.P2103716060524682676

`A008458(n)+A008574(n)-A312893(n)`
-/

namespace A315546.P2103716060524682676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312893 n)

end

end A315546.P2103716060524682676

namespace A315546

/-- `A008458(n)+A008574(n)-A312893(n)` -/
def P2103716060524682676.Spec : Prop :=
  ∀ n, P2103716060524682676.a n = A315546 n

end A315546

/-! ## A315546.P10950994463238121480

`A008458(n)-A004396(n-A004396(n))`
-/

namespace A315546.P10950994463238121480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A315546.P10950994463238121480

namespace A315546

/-- `A008458(n)-A004396(n-A004396(n))` -/
def P10950994463238121480.Spec : Prop :=
  ∀ n, P10950994463238121480.a n = A315546 n

end A315546

/-! ## A315546.P5624797383438175807

`A008574(n)+A004396(A042965(2*n+1))`
-/

namespace A315546.P5624797383438175807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004396 (A042965 (2 * n + 1)).toNat

end

end A315546.P5624797383438175807

namespace A315546

/-- `A008574(n)+A004396(A042965(2*n+1))` -/
def P5624797383438175807.Spec : Prop :=
  ∀ n, P5624797383438175807.a n = A315546 n

end A315546

/-! ## A315546.P5415121649223114068

`A313703(2*n)-4*n`
-/

namespace A315546.P5415121649223114068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313703 (2 * n) - (4 * n : ℤ)

end

end A315546.P5415121649223114068

namespace A315546

/-- `A313703(2*n)-4*n` -/
def P5415121649223114068.Spec : Prop :=
  ∀ n, P5415121649223114068.a n = A315546 n

end A315546

/-! ## A315546.P5694141829912045495

`2*A008574(2*n)-A313773(2*n)`
-/

namespace A315546.P5694141829912045495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A313773 (2 * n)

end

end A315546.P5694141829912045495

namespace A315546

/-- `2*A008574(2*n)-A313773(2*n)` -/
def P5694141829912045495.Spec : Prop :=
  ∀ n, P5694141829912045495.a n = A315546 n

end A315546

/-! ## A315546.P9514326793057285391

`A004396(A312896(2*n))`
-/

namespace A315546.P9514326793057285391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312896 (2 * n)).toNat

end

end A315546.P9514326793057285391

namespace A315546

/-- `A004396(A312896(2*n))` -/
def P9514326793057285391.Spec : Prop :=
  ∀ n, P9514326793057285391.a n = A315546 n

end A315546

/-! ## A315546.P6934904531409227539

`A004396(A312901(2*n))`
-/

namespace A315546.P6934904531409227539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312901 (2 * n)).toNat

end

end A315546.P6934904531409227539

namespace A315546

/-- `A004396(A312901(2*n))` -/
def P6934904531409227539.Spec : Prop :=
  ∀ n, P6934904531409227539.a n = A315546 n

end A315546

/-! ## A315546.P10338336810190768029

`A004396(A314677(2*n))`
-/

namespace A315546.P10338336810190768029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314677 (2 * n)).toNat

end

end A315546.P10338336810190768029

namespace A315546

/-- `A004396(A314677(2*n))` -/
def P10338336810190768029.Spec : Prop :=
  ∀ n, P10338336810190768029.a n = A315546 n

end A315546

/-!
# A315547: Coordination sequence Gal.5.295.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315547, the canonical program `A315547.P9153730377971794613` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315547 has offset 0).

The definition of A315547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315547.P9153730377971794613

`A314898(n)+n`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315547

/-- `A314898(n)+n` -/
def P9153730377971794613.Spec : Prop :=
  ∀ n, P9153730377971794613.a n = A315547 n

theorem P9153730377971794613.correct : P9153730377971794613.Spec := by
  intro n
  simp only [A315547]

end A315547

/-! ## A315547.P14959724173330583720

`A314886(n)+A151988(n)`
-/

namespace A315547.P14959724173330583720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314886 n + A151988 n

end

end A315547.P14959724173330583720

namespace A315547

/-- `A314886(n)+A151988(n)` -/
def P14959724173330583720.Spec : Prop :=
  ∀ n, P14959724173330583720.a n = A315547 n

end A315547

/-! ## A315547.P18252760384778135320

`abs(A008592(n)-A312892(n))`
-/

namespace A315547.P18252760384778135320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A312892 n|

end

end A315547.P18252760384778135320

namespace A315547

/-- `abs(A008592(n)-A312892(n))` -/
def P18252760384778135320.Spec : Prop :=
  ∀ n, P18252760384778135320.a n = A315547 n

end A315547

/-! ## A315547.P3811237743881262863

`abs(A008593(n)-A314111(n))`
-/

namespace A315547.P3811237743881262863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - A314111 n|

end

end A315547.P3811237743881262863

namespace A315547

/-- `abs(A008593(n)-A314111(n))` -/
def P3811237743881262863.Spec : Prop :=
  ∀ n, P3811237743881262863.a n = A315547 n

end A315547

/-! ## A315547.P1851671035774477888

`A311440(n)+A047448(n+1)`
-/

namespace A315547.P1851671035774477888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311440 n + A047448 (n + 1)

end

end A315547.P1851671035774477888

namespace A315547

/-- `A311440(n)+A047448(n+1)` -/
def P1851671035774477888.Spec : Prop :=
  ∀ n, P1851671035774477888.a n = A315547 n

end A315547

/-! ## A315547.P9417484228722854356

`A312077(n)+A047363(n+1)`
-/

namespace A315547.P9417484228722854356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312077 n + A047363 (n + 1)

end

end A315547.P9417484228722854356

namespace A315547

/-- `A312077(n)+A047363(n+1)` -/
def P9417484228722854356.Spec : Prop :=
  ∀ n, P9417484228722854356.a n = A315547 n

end A315547

/-! ## A315547.P1578484123026852377

`A314725(n)+A047263(n+1)`
-/

namespace A315547.P1578484123026852377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314725 n + A047263 (n + 1)

end

end A315547.P1578484123026852377

namespace A315547

/-- `A314725(n)+A047263(n+1)` -/
def P1578484123026852377.Spec : Prop :=
  ∀ n, P1578484123026852377.a n = A315547 n

end A315547

/-! ## A315547.P16125180056675600677

`2*A008706(n)-A312892(n)`
-/

namespace A315547.P16125180056675600677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312892 n

end

end A315547.P16125180056675600677

namespace A315547

/-- `2*A008706(n)-A312892(n)` -/
def P16125180056675600677.Spec : Prop :=
  ∀ n, P16125180056675600677.a n = A315547 n

end A315547

/-! ## A315547.P14033959684670756643

`A312162(n)+A330025(n)+n`
-/

namespace A315547.P14033959684670756643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312162 n + (A330025 n + (n : ℤ))

end

end A315547.P14033959684670756643

namespace A315547

/-- `A312162(n)+A330025(n)+n` -/
def P14033959684670756643.Spec : Prop :=
  ∀ n, P14033959684670756643.a n = A315547 n

end A315547

/-! ## A315547.P11618100465998928456

`A315445(n)+n-A253262(n)`
-/

namespace A315547.P11618100465998928456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315445 n + ((n : ℤ) - A253262 n)

end

end A315547.P11618100465998928456

namespace A315547

/-- `A315445(n)+n-A253262(n)` -/
def P11618100465998928456.Spec : Prop :=
  ∀ n, P11618100465998928456.a n = A315547 n

end A315547

/-! ## A315547.P10478325376424496245

`A315255(n)+n-A330025(n)`
-/

namespace A315547.P10478325376424496245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315255 n + ((n : ℤ) - A330025 n)

end

end A315547.P10478325376424496245

namespace A315547

/-- `A315255(n)+n-A330025(n)` -/
def P10478325376424496245.Spec : Prop :=
  ∀ n, P10478325376424496245.a n = A315547 n

end A315547

/-! ## A315547.P16966096571403377005

`abs(A008592(n)+n-A314111(n))`
-/

namespace A315547.P16966096571403377005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n + ((n : ℤ) - A314111 n)|

end

end A315547.P16966096571403377005

namespace A315547

/-- `abs(A008592(n)+n-A314111(n))` -/
def P16966096571403377005.Spec : Prop :=
  ∀ n, P16966096571403377005.a n = A315547 n

end A315547

/-! ## A315547.P1062678997418018723

`A313782(n)+n-Δ[A011858(n)]`
-/

namespace A315547.P1062678997418018723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313782 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A315547.P1062678997418018723

namespace A315547

/-- `A313782(n)+n-Δ[A011858(n)]` -/
def P1062678997418018723.Spec : Prop :=
  ∀ n, P1062678997418018723.a n = A315547 n

end A315547

/-! ## A315547.P12182021432216587680

`A008706(n)+A004396(A151988(n))`
-/

namespace A315547.P12182021432216587680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + A004396 (A151988 n).toNat

end

end A315547.P12182021432216587680

namespace A315547

/-- `A008706(n)+A004396(A151988(n))` -/
def P12182021432216587680.Spec : Prop :=
  ∀ n, P12182021432216587680.a n = A315547 n

end A315547

/-! ## A315547.P9926680124576918267

`A008458(n)+A008574(n)-A312892(n)`
-/

namespace A315547.P9926680124576918267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312892 n)

end

end A315547.P9926680124576918267

namespace A315547

/-- `A008458(n)+A008574(n)-A312892(n)` -/
def P9926680124576918267.Spec : Prop :=
  ∀ n, P9926680124576918267.a n = A315547 n

end A315547

/-! ## A315547.P7793696368378062179

`A250120(n)+A313623(n)-A008574(n)`
-/

namespace A315547.P7793696368378062179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + (A313623 n - A008574 n)

end

end A315547.P7793696368378062179

namespace A315547

/-- `A250120(n)+A313623(n)-A008574(n)` -/
def P7793696368378062179.Spec : Prop :=
  ∀ n, P7793696368378062179.a n = A315547 n

end A315547

/-! ## A315547.P428567109636073221

`A008458(n)+A250120(n)-A313827(n)`
-/

namespace A315547.P428567109636073221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A250120 n - A313827 n)

end

end A315547.P428567109636073221

namespace A315547

/-- `A008458(n)+A250120(n)-A313827(n)` -/
def P428567109636073221.Spec : Prop :=
  ∀ n, P428567109636073221.a n = A315547 n

end A315547

/-! ## A315547.P13323957230455168300

`A008486(2*n)-A004525(A057354(n+1))`
-/

namespace A315547.P13323957230455168300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - A004525 (A057354 (n + 1)).toNat

end

end A315547.P13323957230455168300

namespace A315547

/-- `A008486(2*n)-A004525(A057354(n+1))` -/
def P13323957230455168300.Spec : Prop :=
  ∀ n, P13323957230455168300.a n = A315547 n

end A315547

/-! ## A315547.P10144396001195855213

`A005843(n)+A005843(A008574(n))-A312892(n)`
-/

namespace A315547.P10144396001195855213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A312892 n)

end

end A315547.P10144396001195855213

namespace A315547

/-- `A005843(n)+A005843(A008574(n))-A312892(n)` -/
def P10144396001195855213.Spec : Prop :=
  ∀ n, P10144396001195855213.a n = A315547 n

end A315547

/-! ## A315547.P11926190079005621475

`(A315344(n)+A008458(n))/2`
-/

namespace A315547.P11926190079005621475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315344 n + A008458 n : ℚ) / 2

end

end A315547.P11926190079005621475

namespace A315547

/-- `(A315344(n)+A008458(n))/2` -/
def P11926190079005621475.Spec : Prop :=
  ∀ n, P11926190079005621475.a n = (A315547 n : ℚ)

end A315547

/-!
# A315548: Coordination sequence Gal.6.627.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315548, the canonical program `A315548.P2689930168977784721` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315548 has offset 0).

The definition of A315548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2196 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315548.P2689930168977784721

`abs(10*n-A312891(n))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A315548

/-- `abs(10*n-A312891(n))` -/
def P2689930168977784721.Spec : Prop :=
  ∀ n, P2689930168977784721.a n = A315548 n

theorem P2689930168977784721.correct : P2689930168977784721.Spec := by
  intro n
  simp only [A315548]

end A315548

/-! ## A315548.P13988792351440972976

`2*A008706(n)-A312891(n)`
-/

namespace A315548.P13988792351440972976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A312891 n

end

end A315548.P13988792351440972976

namespace A315548

/-- `2*A008706(n)-A312891(n)` -/
def P13988792351440972976.Spec : Prop :=
  ∀ n, P13988792351440972976.a n = A315548 n

end A315548

/-! ## A315548.P7169531844194058187

`(A315345(n)+A008458(n))/2`
-/

namespace A315548.P7169531844194058187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315345 n + A008458 n : ℚ) / 2

end

end A315548.P7169531844194058187

namespace A315548

/-- `(A315345(n)+A008458(n))/2` -/
def P7169531844194058187.Spec : Prop :=
  ∀ n, P7169531844194058187.a n = (A315548 n : ℚ)

end A315548

/-! ## A315548.P17225305252881815145

`A135042(2*n+1)-A312891(n)`
-/

namespace A315548.P17225305252881815145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A312891 n

end

end A315548.P17225305252881815145

namespace A315548

/-- `A135042(2*n+1)-A312891(n)` -/
def P17225305252881815145.Spec : Prop :=
  ∀ n, P17225305252881815145.a n = A315548 n

end A315548

/-! ## A315548.P16769570007063307083

`A008458(n)+A008574(n)-A312891(n)`
-/

namespace A315548.P16769570007063307083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312891 n)

end

end A315548.P16769570007063307083

namespace A315548

/-- `A008458(n)+A008574(n)-A312891(n)` -/
def P16769570007063307083.Spec : Prop :=
  ∀ n, P16769570007063307083.a n = A315548 n

end A315548

/-! ## A315548.P12846412714102061341

`A005843(n)+A005843(A008574(n))-A312891(n)`
-/

namespace A315548.P12846412714102061341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A312891 n)

end

end A315548.P12846412714102061341

namespace A315548

/-- `A005843(n)+A005843(A008574(n))-A312891(n)` -/
def P12846412714102061341.Spec : Prop :=
  ∀ n, P12846412714102061341.a n = A315548 n

end A315548

/-! ## A315548.P9656458382486420275

`A312891(n)+A005843(A008706(n)-A312891(n))`
-/

namespace A315548.P9656458382486420275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312891 n + A005843 (A008706 n - A312891 n).toNat

end

end A315548.P9656458382486420275

namespace A315548

/-- `A312891(n)+A005843(A008706(n)-A312891(n))` -/
def P9656458382486420275.Spec : Prop :=
  ∀ n, P9656458382486420275.a n = A315548 n

end A315548

/-! ## A315548.P1365678947750247481

`A315345(n)+A001281(A008458(n)-A315345(n))`
-/

namespace A315548.P1365678947750247481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315345 n + A001281 (A008458 n - A315345 n).toNat

end

end A315548.P1365678947750247481

namespace A315548

/-- `A315345(n)+A001281(A008458(n)-A315345(n))` -/
def P1365678947750247481.Spec : Prop :=
  ∀ n, P1365678947750247481.a n = A315548 n

end A315548

/-! ## A315548.P17989114269965385878

`A005843(A008706(n))-A312891(n)`
-/

namespace A315548.P17989114269965385878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A312891 n

end

end A315548.P17989114269965385878

namespace A315548

/-- `A005843(A008706(n))-A312891(n)` -/
def P17989114269965385878.Spec : Prop :=
  ∀ n, P17989114269965385878.a n = A315548 n

end A315548

/-! ## A315548.P18057972365919847321

`A005843(A008574(n)+n)-A312891(n)`
-/

namespace A315548.P18057972365919847321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A312891 n

end

end A315548.P18057972365919847321

namespace A315548

/-- `A005843(A008574(n)+n)-A312891(n)` -/
def P18057972365919847321.Spec : Prop :=
  ∀ n, P18057972365919847321.a n = A315548 n

end A315548

/-! ## A315548.P10974478589451179513

`round(A022144(A313738(n))/7)`
-/

namespace A315548.P10974478589451179513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A022144 (A313738 n).toNat : ℚ) / 7)

end

end A315548.P10974478589451179513

namespace A315548

/-- `round(A022144(A313738(n))/7)` -/
def P10974478589451179513.Spec : Prop :=
  ∀ n, P10974478589451179513.a n = A315548 n

end A315548

/-! ## A315548.P2279450464848025680

`A313704(2*n)-4*n`
-/

namespace A315548.P2279450464848025680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313704 (2 * n) - (4 * n : ℤ)

end

end A315548.P2279450464848025680

namespace A315548

/-- `A313704(2*n)-4*n` -/
def P2279450464848025680.Spec : Prop :=
  ∀ n, P2279450464848025680.a n = A315548 n

end A315548

/-! ## A315548.P9597858443993214290

`2*A008574(2*n)-A313772(2*n)`
-/

namespace A315548.P9597858443993214290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A313772 (2 * n)

end

end A315548.P9597858443993214290

namespace A315548

/-- `2*A008574(2*n)-A313772(2*n)` -/
def P9597858443993214290.Spec : Prop :=
  ∀ n, P9597858443993214290.a n = A315548 n

end A315548

/-! ## A315548.P12081323397564541176

`A004396(A312902(2*n))`
-/

namespace A315548.P12081323397564541176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312902 (2 * n)).toNat

end

end A315548.P12081323397564541176

namespace A315548

/-- `A004396(A312902(2*n))` -/
def P12081323397564541176.Spec : Prop :=
  ∀ n, P12081323397564541176.a n = A315548 n

end A315548

/-! ## A315548.P5214795707924851340

`A004396(A314684(2*n))`
-/

namespace A315548.P5214795707924851340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314684 (2 * n)).toNat

end

end A315548.P5214795707924851340

namespace A315548

/-- `A004396(A314684(2*n))` -/
def P5214795707924851340.Spec : Prop :=
  ∀ n, P5214795707924851340.a n = A315548 n

end A315548

/-! ## A315548.P7003701938714463324

`A004396(A314765(n)+A008574(n))`
-/

namespace A315548.P7003701938714463324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314765 n + A008574 n).toNat

end

end A315548.P7003701938714463324

namespace A315548

/-- `A004396(A314765(n)+A008574(n))` -/
def P7003701938714463324.Spec : Prop :=
  ∀ n, P7003701938714463324.a n = A315548 n

end A315548

/-! ## A315548.P18116375868283858771

`A004396(A314765(n)+A008586(n))`
-/

namespace A315548.P18116375868283858771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314765 n + A008586 n).toNat

end

end A315548.P18116375868283858771

namespace A315548

/-- `A004396(A314765(n)+A008586(n))` -/
def P18116375868283858771.Spec : Prop :=
  ∀ n, P18116375868283858771.a n = A315548 n

end A315548

/-! ## A315548.P14646992790416302793

`A004396(A314849(n)+A008574(n))`
-/

namespace A315548.P14646992790416302793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314849 n + A008574 n).toNat

end

end A315548.P14646992790416302793

namespace A315548

/-- `A004396(A314849(n)+A008574(n))` -/
def P14646992790416302793.Spec : Prop :=
  ∀ n, P14646992790416302793.a n = A315548 n

end A315548

/-! ## A315548.P13992339959929831746

`A004396(A314849(n)+A008586(n))`
-/

namespace A315548.P13992339959929831746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314849 n + A008586 n).toNat

end

end A315548.P13992339959929831746

namespace A315548

/-- `A004396(A314849(n)+A008586(n))` -/
def P13992339959929831746.Spec : Prop :=
  ∀ n, P13992339959929831746.a n = A315548 n

end A315548

/-! ## A315548.P8483723036391211608

`A004525(A315709(2*n))`
-/

namespace A315548.P8483723036391211608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315709 (2 * n)).toNat

end

end A315548.P8483723036391211608

namespace A315548

/-- `A004525(A315709(2*n))` -/
def P8483723036391211608.Spec : Prop :=
  ∀ n, P8483723036391211608.a n = A315548 n

end A315548

/-!
# A315549: Coordination sequence Gal.6.628.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315549, the canonical program `A315549.P12001438916279019003` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315549 has offset 0).

The definition of A315549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2202 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315549.P12001438916279019003

`A314899(n)+n`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A315549

/-- `A314899(n)+n` -/
def P12001438916279019003.Spec : Prop :=
  ∀ n, P12001438916279019003.a n = A315549 n

theorem P12001438916279019003.correct : P12001438916279019003.Spec := by
  intro n
  simp only [A315549]

end A315549

/-! ## A315549.P10922658966681402817

`A313747(n)+A004396(n)`
-/

namespace A315549.P10922658966681402817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313747 n + A004396 n

end

end A315549.P10922658966681402817

namespace A315549

/-- `A313747(n)+A004396(n)` -/
def P10922658966681402817.Spec : Prop :=
  ∀ n, P10922658966681402817.a n = A315549 n

end A315549

/-! ## A315549.P1770065391973858036

`A313879(n)+A004525(n)`
-/

namespace A315549.P1770065391973858036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313879 n + A004525 n

end

end A315549.P1770065391973858036

namespace A315549

/-- `A313879(n)+A004525(n)` -/
def P1770065391973858036.Spec : Prop :=
  ∀ n, P1770065391973858036.a n = A315549 n

end A315549

/-! ## A315549.P3391473125478546923

`A315335(n)+A002264(n+1)`
-/

namespace A315549.P3391473125478546923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315335 n + A002264 (n + 1)

end

end A315549.P3391473125478546923

namespace A315549

/-- `A315335(n)+A002264(n+1)` -/
def P3391473125478546923.Spec : Prop :=
  ∀ n, P3391473125478546923.a n = A315549 n

end A315549

/-! ## A315549.P7432897217633106995

`A311257(n)+A047222(n+1)`
-/

namespace A315549.P7432897217633106995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311257 n + A047222 (n + 1)

end

end A315549.P7432897217633106995

namespace A315549

/-- `A311257(n)+A047222(n+1)` -/
def P7432897217633106995.Spec : Prop :=
  ∀ n, P7432897217633106995.a n = A315549 n

end A315549

/-! ## A315549.P5279040309358380792

`A311861(n)+A047229(n+1)`
-/

namespace A315549.P5279040309358380792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311861 n + A047229 (n + 1)

end

end A315549.P5279040309358380792

namespace A315549

/-- `A311861(n)+A047229(n+1)` -/
def P5279040309358380792.Spec : Prop :=
  ∀ n, P5279040309358380792.a n = A315549 n

end A315549

/-! ## A315549.P8834692349308222999

`A312123(n)+A047424(n+1)`
-/

namespace A315549.P8834692349308222999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312123 n + A047424 (n + 1)

end

end A315549.P8834692349308222999

namespace A315549

/-- `A312123(n)+A047424(n+1)` -/
def P8834692349308222999.Spec : Prop :=
  ∀ n, P8834692349308222999.a n = A315549 n

end A315549

/-! ## A315549.P9599784417661079569

`A314688(n)+A047513(n+1)`
-/

namespace A315549.P9599784417661079569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314688 n + A047513 (n + 1)

end

end A315549.P9599784417661079569

namespace A315549

/-- `A314688(n)+A047513(n+1)` -/
def P9599784417661079569.Spec : Prop :=
  ∀ n, P9599784417661079569.a n = A315549 n

end A315549

/-! ## A315549.P13046843110156141866

`A312909(n)+2*A004396(n)`
-/

namespace A315549.P13046843110156141866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312909 n + 2 * A004396 n

end

end A315549.P13046843110156141866

namespace A315549

/-- `A312909(n)+2*A004396(n)` -/
def P13046843110156141866.Spec : Prop :=
  ∀ n, P13046843110156141866.a n = A315549 n

end A315549

/-! ## A315549.P12673521618249416712

`A004396(n)+A311257(n)+n`
-/

namespace A315549.P12673521618249416712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A311257 n + (n : ℤ))

end

end A315549.P12673521618249416712

namespace A315549

/-- `A004396(n)+A311257(n)+n` -/
def P12673521618249416712.Spec : Prop :=
  ∀ n, P12673521618249416712.a n = A315549 n

end A315549

/-! ## A315549.P14122214404571923536

`A004525(n)+A311861(n)+n`
-/

namespace A315549.P14122214404571923536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A311861 n + (n : ℤ))

end

end A315549.P14122214404571923536

namespace A315549

/-- `A004525(n)+A311861(n)+n` -/
def P14122214404571923536.Spec : Prop :=
  ∀ n, P14122214404571923536.a n = A315549 n

end A315549

/-! ## A315549.P11521652778295606329

`A315335(n)+n-A004396(n)`
-/

namespace A315549.P11521652778295606329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315335 n + ((n : ℤ) - A004396 n)

end

end A315549.P11521652778295606329

namespace A315549

/-- `A315335(n)+n-A004396(n)` -/
def P11521652778295606329.Spec : Prop :=
  ∀ n, P11521652778295606329.a n = A315549 n

end A315549

/-! ## A315549.P5147445476494826748

`A008458(n)-A004525(round(n/3))`
-/

namespace A315549.P5147445476494826748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (SequenceMachineLib.roundAway ((n : ℚ) / 3)).toNat

end

end A315549.P5147445476494826748

namespace A315549

/-- `A008458(n)-A004525(round(n/3))` -/
def P5147445476494826748.Spec : Prop :=
  ∀ n, P5147445476494826748.a n = A315549 n

end A315549

/-! ## A315549.P8704222879238324183

`A008486(2*n)-A004525(round(n/3))`
-/

namespace A315549.P8704222879238324183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - A004525 (SequenceMachineLib.roundAway ((n : ℚ) / 3)).toNat

end

end A315549.P8704222879238324183

namespace A315549

/-- `A008486(2*n)-A004525(round(n/3))` -/
def P8704222879238324183.Spec : Prop :=
  ∀ n, P8704222879238324183.a n = A315549 n

end A315549

/-! ## A315549.P12720666974731656942

`A313924(n)+A004525(A004396(n))`
-/

namespace A315549.P12720666974731656942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313924 n + A004525 (A004396 n).toNat

end

end A315549.P12720666974731656942

namespace A315549

/-- `A313924(n)+A004525(A004396(n))` -/
def P12720666974731656942.Spec : Prop :=
  ∀ n, P12720666974731656942.a n = A315549 n

end A315549

/-! ## A315549.P10788249561128101950

`A313833(n)+A004396(2*A004525(n))`
-/

namespace A315549.P10788249561128101950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313833 n + A004396 (2 * A004525 n).toNat

end

end A315549.P10788249561128101950

namespace A315549

/-- `A313833(n)+A004396(2*A004525(n))` -/
def P10788249561128101950.Spec : Prop :=
  ∀ n, P10788249561128101950.a n = A315549 n

end A315549

/-! ## A315549.P14904361039256757609

`A004525(A004396(n))+A312123(n)+n`
-/

namespace A315549.P14904361039256757609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A312123 n + (n : ℤ))

end

end A315549.P14904361039256757609

namespace A315549

/-- `A004525(A004396(n))+A312123(n)+n` -/
def P14904361039256757609.Spec : Prop :=
  ∀ n, P14904361039256757609.a n = A315549 n

end A315549

/-! ## A315549.P4744420391602694862

`A004396(n)+A313057(n)+A004525(n)`
-/

namespace A315549.P4744420391602694862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313057 n + A004525 n)

end

end A315549.P4744420391602694862

namespace A315549

/-- `A004396(n)+A313057(n)+A004525(n)` -/
def P4744420391602694862.Spec : Prop :=
  ∀ n, P4744420391602694862.a n = A315549 n

end A315549

/-! ## A315549.P9897267803790067661

`A008458(n)+A008574(n)-A312890(n)`
-/

namespace A315549.P9897267803790067661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A312890 n)

end

end A315549.P9897267803790067661

namespace A315549

/-- `A008458(n)+A008574(n)-A312890(n)` -/
def P9897267803790067661.Spec : Prop :=
  ∀ n, P9897267803790067661.a n = A315549 n

end A315549

/-! ## A315549.P3011575041039095719

`A008486(n)+A315335(n)-A008576(n)`
-/

namespace A315549.P3011575041039095719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A315335 n - A008576 n)

end

end A315549.P3011575041039095719

namespace A315549

/-- `A008486(n)+A315335(n)-A008576(n)` -/
def P3011575041039095719.Spec : Prop :=
  ∀ n, P3011575041039095719.a n = A315549 n

end A315549

/-!
# A315550: Coordination sequence Gal.6.631.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315550, there is no canonical definition to state claims against.
-/

/-! ## A315550.P6088748362143745026

`A303431(3*n+2)-A023532(A253772(n+1))`
-/

namespace A315550.P6088748362143745026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303431 (3 * n + 2) - A023532 (A253772 (n + 1)).toNat

end

end A315550.P6088748362143745026

/-! ## A315550.P3531681222046980011

`A314249(n)+A238469(n²²)`
-/

namespace A315550.P3531681222046980011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314249 n + A238469 ((n ^ 2) ^ 2)

end

end A315550.P3531681222046980011

/-! ## A315550.P11906792086897929026

`A324827(A001256(n))+A315536(n)`
-/

namespace A315550.P11906792086897929026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324827 (A001256 n).toNat + A315536 n

end

end A315550.P11906792086897929026

/-! ## A315550.P3851667620934691629

`A008458(n)-A160383(A183117(n))`
-/

namespace A315550.P3851667620934691629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A160383 (A183117 n).toNat

end

end A315550.P3851667620934691629

/-! ## A315550.P11769220602322736392

`A008458(n)-A073779(A295179(n))`
-/

namespace A315550.P11769220602322736392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A073779 (A295179 n).toNat

end

end A315550.P11769220602322736392

/-!
# A315551: Coordination sequence Gal.6.632.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315551, there is no canonical definition to state claims against.
-/

/-! ## A315551.P5015630024622194756

`A008458(n)-A141070(A067328(n+1))`
-/

namespace A315551.P5015630024622194756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A141070 (A067328 (n + 1)).toNat

end

end A315551.P5015630024622194756

/-!
# A315552: Coordination sequence Gal.5.317.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315552, there is no canonical definition to state claims against.
-/

/-! ## A315552.P17764064059760850909

`A004525(A265188(n+1))+A314506(n)^A055959(n)!`
-/

namespace A315552.P17764064059760850909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A265188 (n + 1)).toNat + A314506 n ^ Nat.factorial (A055959 n).toNat

end

end A315552.P17764064059760850909

/-!
# A315553: Coordination sequence Gal.6.666.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315553, there is no canonical definition to state claims against.
-/

/-! ## A315553.P17748359471043205984

`abs(and(A281618(n+1), A296133(n+1))-6*n)`
-/

namespace A315553.P17748359471043205984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.land (A281618 (n + 1)) (A296133 (n + 1)) - (6 * n : ℤ)|

end

end A315553.P17748359471043205984

/-! ## A315553.P1528472431540345622

`A008458(n)-A255318(A052550(n))`
-/

namespace A315553.P1528472431540345622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A255318 (A052550 n).toNat

end

end A315553.P1528472431540345622

/-! ## A315553.P10136323097299929356

`A341450(A288946(n+1))+A315537(n)`
-/

namespace A315553.P10136323097299929356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341450 (A288946 (n + 1)).toNat + A315537 n

end

end A315553.P10136323097299929356

/-! ## A315553.P7734686951051287971

`A008458(n)-and(A004526(n), A096201(n))`
-/

namespace A315553.P7734686951051287971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - Int.land (A004526 n) (A096201 n)

end

end A315553.P7734686951051287971

/-!
# A315554: Coordination sequence Gal.4.146.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315554, the canonical program `A315554.P18025128345172279800` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315554 has offset 0).

The definition of A315554 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2221 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315554.P18025128345172279800

`A315411(n)+A315342(n)%A072154(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315554

/-- `A315411(n)+A315342(n)%A072154(n)` -/
def P18025128345172279800.Spec : Prop :=
  ∀ n, P18025128345172279800.a n = A315554 n

theorem P18025128345172279800.correct : P18025128345172279800.Spec := by
  intro n
  simp only [A315554]

end A315554

/-! ## A315554.P18308163584663392154

`A301708(n)+A315259(n)%A072154(n)`
-/

namespace A315554.P18308163584663392154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301708 n + Int.tmod (A315259 n) (A072154 n)

end

end A315554.P18308163584663392154

namespace A315554

/-- `A301708(n)+A315259(n)%A072154(n)` -/
def P18308163584663392154.Spec : Prop :=
  ∀ n, P18308163584663392154.a n = A315554 n

end A315554

/-! ## A315554.P4925641112806258783

`A315522(n)+A049321(A074358(n))`
-/

namespace A315554.P4925641112806258783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315522 n + A049321 (A074358 n).toNat

end

end A315554.P4925641112806258783

namespace A315554

/-- `A315522(n)+A049321(A074358(n))` -/
def P4925641112806258783.Spec : Prop :=
  ∀ n, P4925641112806258783.a n = A315554 n

end A315554

/-! ## A315554.P1237266558349898641

`A315504(n)+A188037(A006390(n))`
-/

namespace A315554.P1237266558349898641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315504 n + A188037 (A006390 n).toNat

end

end A315554.P1237266558349898641

namespace A315554

/-- `A315504(n)+A188037(A006390(n))` -/
def P1237266558349898641.Spec : Prop :=
  ∀ n, P1237266558349898641.a n = A315554 n

end A315554

/-!
# A315555: Coordination sequence Gal.6.487.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315555, there is no canonical definition to state claims against.
-/

/-! ## A315555.P9715353791369871011

`A008458(n)-A001877(∑[A212092(n)])`
-/

namespace A315555.P9715353791369871011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A001877 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A315555.P9715353791369871011

/-!
# A315556: Coordination sequence Gal.5.316.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315556, there is no canonical definition to state claims against.
-/

/-! ## A315556.P5592182215488622954

`xor(A001221(A125273(n)), A315349(n))`
-/

namespace A315556.P5592182215488622954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A125273 n).toNat) (A315349 n)

end

end A315556.P5592182215488622954

/-!
# A315557: Coordination sequence Gal.6.663.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315557, there is no canonical definition to state claims against.
-/

/-! ## A315557.P1533724275761670618

`or(A175933(A239582(n+1)), A315487(n))`
-/

namespace A315557.P1533724275761670618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A175933 (A239582 (n + 1)).toNat) (A315487 n)

end

end A315557.P1533724275761670618

/-!
# A315558: Coordination sequence Gal.4.147.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315558, there is no canonical definition to state claims against.
-/

/-! ## A315558.P18166006523053583723

`or(A020639(A063727(n)), A315490(n))`
-/

namespace A315558.P18166006523053583723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (A063727 n).toNat) (A315490 n)

end

end A315558.P18166006523053583723

/-! ## A315558.P9346262296944598346

`or(A020639(A092266(n)), A315490(n))`
-/

namespace A315558.P9346262296944598346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (A092266 n).toNat) (A315490 n)

end

end A315558.P9346262296944598346

/-! ## A315558.P731548947648055610

`or(A020639(A113989(n)), A315490(n))`
-/

namespace A315558.P731548947648055610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (A113989 n).toNat) (A315490 n)

end

end A315558.P731548947648055610

/-! ## A315558.P15589032561604874151

`or(A020639(A000984(n)), A315490(n))`
-/

namespace A315558.P15589032561604874151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (A000984 n).toNat) (A315490 n)

end

end A315558.P15589032561604874151

/-! ## A315558.P12202825559667400171

`or(A001221(A149193(n)), A315329(n))`
-/

namespace A315558.P12202825559667400171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A149193 n).toNat) (A315329 n)

end

end A315558.P12202825559667400171

/-!
# A315559: Coordination sequence Gal.4.149.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315559, there is no canonical definition to state claims against.
-/

/-! ## A315559.P8313503927505448417

`A008574(n)+A002264(A316069(n))`
-/

namespace A315559.P8313503927505448417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A002264 (A316069 n).toNat

end

end A315559.P8313503927505448417

/-! ## A315559.P15566445911182947272

`A008706(n)+A008615(A315817(n))`
-/

namespace A315559.P15566445911182947272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + A008615 (A315817 n).toNat

end

end A315559.P15566445911182947272

/-! ## A315559.P4072206544444083108

`A008486(n)+A002264(A316069(n))+n`
-/

namespace A315559.P4072206544444083108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A002264 (A316069 n).toNat + (n : ℤ))

end

end A315559.P4072206544444083108

/-! ## A315559.P3713688504294999165

`A103517(A004273(n))+A002264(A316069(n))`
-/

namespace A315559.P3713688504294999165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A004273 n).toNat + A002264 (A316069 n).toNat

end

end A315559.P3713688504294999165

/-! ## A315559.P7478593541489260585

`A004525(A022144(n))+A002264(A316069(n))`
-/

namespace A315559.P7478593541489260585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A022144 n).toNat + A002264 (A316069 n).toNat

end

end A315559.P7478593541489260585

/-! ## A315559.P2184822899720059859

`A008615(A315817(n)+A128470(n))`
-/

namespace A315559.P2184822899720059859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A315817 n + A128470 n).toNat

end

end A315559.P2184822899720059859

/-!
# A315560: Coordination sequence Gal.5.317.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315560, there is no canonical definition to state claims against.
-/

/-! ## A315560.P10582188931212414151

`A359043(A353405(n))+A235992(2*n+1)`
-/

namespace A315560.P10582188931212414151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359043 (A353405 n).toNat + A235992 (2 * n + 1)

end

end A315560.P10582188931212414151

/-! ## A315560.P4732417862355972951

`∑[dr(A006530(A154638(n)))]`
-/

namespace A315560.P4732417862355972951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A006530 (A154638 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315560.P4732417862355972951

/-! ## A315560.P1969406376293307579

`A285530(A000110(n))+A070089(3*n+1)`
-/

namespace A315560.P1969406376293307579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285530 (A000110 n).toNat + A070089 (3 * n + 1)

end

end A315560.P1969406376293307579

/-!
# A315561: Coordination sequence Gal.5.322.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315561, there is no canonical definition to state claims against.
-/

/-! ## A315561.P60647931677427919

`A250120(n)-A277043(n+4)%2+n`
-/

namespace A315561.P60647931677427919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - Int.tmod (A277043 (n + 4)) 2 + (n : ℤ)

end

end A315561.P60647931677427919

/-! ## A315561.P4287589842822503851

`A315762(n)-A021913(A239080(n))`
-/

namespace A315561.P4287589842822503851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315762 n - A021913 (A239080 n).toNat

end

end A315561.P4287589842822503851

/-! ## A315561.P4687779912120437382

`A250120(n)+A003434(A246349(n+1))`
-/

namespace A315561.P4687779912120437382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A003434 (A246349 (n + 1)).toNat

end

end A315561.P4687779912120437382

/-! ## A315561.P8398401211346210109

`A008587(n)+A000120(A217421(n))`
-/

namespace A315561.P8398401211346210109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n + A000120 (A217421 n).toNat

end

end A315561.P8398401211346210109

/-! ## A315561.P5176945124601904265

`A359466(A000984(n))+A315537(n)`
-/

namespace A315561.P5176945124601904265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359466 (A000984 n).toNat + A315537 n

end

end A315561.P5176945124601904265

/-!
# A315562: Coordination sequence Gal.5.321.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315562, there is no canonical definition to state claims against.
-/

/-! ## A315562.P7891964687520384582

`A315535(n)+A005087(A087957(n))`
-/

namespace A315562.P7891964687520384582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315535 n + A005087 (A087957 n).toNat

end

end A315562.P7891964687520384582

/-! ## A315562.P8418974036341154446

`A008458(n)-A087116(A002944(n+1))`
-/

namespace A315562.P8418974036341154446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A087116 (A002944 (n + 1)).toNat

end

end A315562.P8418974036341154446

/-! ## A315562.P8857747058106431584

`A315561(n)-A178798(A270339(n+1))`
-/

namespace A315562.P8857747058106431584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315561 n - A178798 (A270339 (n + 1)).toNat

end

end A315562.P8857747058106431584

/-! ## A315562.P10919024916828889392

`A315561(n)+A178798(A270339(n+1)+2)`
-/

namespace A315562.P10919024916828889392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315561 n + A178798 (A270339 (n + 1) + 2).toNat

end

end A315562.P10919024916828889392

/-! ## A315562.P16975236227085917431

`A313878(n)+A001221(A106188(n))`
-/

namespace A315562.P16975236227085917431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313878 n + A001221 (A106188 n).toNat

end

end A315562.P16975236227085917431

/-!
# A315563: Coordination sequence Gal.5.320.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315563, the canonical program `A315563.P5990094246815532770` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315563 has offset 0).

The definition of A315563 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2197 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315563.P5990094246815532770

`2*a(n-3)-a(n-6)` with `a(0)=1, a(1)=6, a(2)=11, a(3)=18, a(4)=23, a(5)=28, a(6)=36`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A315563

/-- `2*a(n-3)-a(n-6)` -/
def P5990094246815532770.Spec : Prop :=
  ∀ n, P5990094246815532770.a n = A315563 n

theorem P5990094246815532770.correct : P5990094246815532770.Spec := by
  intro n
  simp only [A315563]

end A315563

/-! ## A315563.P9850544024812771959

`abs(10*n-A301688(n))`
-/

namespace A315563.P9850544024812771959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A301688 n|

end

end A315563.P9850544024812771959

namespace A315563

/-- `abs(10*n-A301688(n))` -/
def P9850544024812771959.Spec : Prop :=
  ∀ n, P9850544024812771959.a n = A315563 n

end A315563

/-! ## A315563.P2169287697600677327

`A301694(n)+A186731(n)`
-/

namespace A315563.P2169287697600677327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301694 n + A186731 n

end

end A315563.P2169287697600677327

namespace A315563

/-- `A301694(n)+A186731(n)` -/
def P2169287697600677327.Spec : Prop :=
  ∀ n, P2169287697600677327.a n = A315563 n

end A315563

/-! ## A315563.P10580811513178565887

`A008458(n)-A087509(n)`
-/

namespace A315563.P10580811513178565887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A087509 n

end

end A315563.P10580811513178565887

namespace A315563

/-- `A008458(n)-A087509(n)` -/
def P10580811513178565887.Spec : Prop :=
  ∀ n, P10580811513178565887.a n = A315563 n

end A315563

/-! ## A315563.P13065312958793359795

`A008458(n)-Δ[A008133(n)]`
-/

namespace A315563.P13065312958793359795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (f1 (n + 1) - f1 n)

end

end A315563.P13065312958793359795

namespace A315563

/-- `A008458(n)-Δ[A008133(n)]` -/
def P13065312958793359795.Spec : Prop :=
  ∀ n, P13065312958793359795.a n = A315563 n

end A315563

/-! ## A315563.P269330585234762692

`record[A165998(n)]-A087509(n)`
-/

namespace A315563.P269330585234762692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A087509 n

end

end A315563.P269330585234762692

namespace A315563

/-- `record[A165998(n)]-A087509(n)` -/
def P269330585234762692.Spec : Prop :=
  ∀ n, P269330585234762692.a n = A315563 n

end A315563

/-! ## A315563.P12985198010729092705

`A301720(n)+2*A087509(n)`
-/

namespace A315563.P12985198010729092705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301720 n + 2 * A087509 n

end

end A315563.P12985198010729092705

namespace A315563

/-- `A301720(n)+2*A087509(n)` -/
def P12985198010729092705.Spec : Prop :=
  ∀ n, P12985198010729092705.a n = A315563 n

end A315563

/-! ## A315563.P7697746740509800299

`A008486(2*n)-A087509(n)`
-/

namespace A315563.P7697746740509800299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - A087509 n

end

end A315563.P7697746740509800299

namespace A315563

/-- `A008486(2*n)-A087509(n)` -/
def P7697746740509800299.Spec : Prop :=
  ∀ n, P7697746740509800299.a n = A315563 n

end A315563

/-! ## A315563.P13295087438546201752

`2*A008706(n)-A301688(n)`
-/

namespace A315563.P13295087438546201752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A301688 n

end

end A315563.P13295087438546201752

namespace A315563

/-- `2*A008706(n)-A301688(n)` -/
def P13295087438546201752.Spec : Prop :=
  ∀ n, P13295087438546201752.a n = A315563 n

end A315563

/-! ## A315563.P12293376893206958716

`A298786(2*n)-A186101(n)`
-/

namespace A315563.P12293376893206958716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298786 (2 * n) - A186101 n

end

end A315563.P12293376893206958716

namespace A315563

/-- `A298786(2*n)-A186101(n)` -/
def P12293376893206958716.Spec : Prop :=
  ∀ n, P12293376893206958716.a n = A315563 n

end A315563

/-! ## A315563.P9040414230238311313

`A008706(n)+n-A087509(n)`
-/

namespace A315563.P9040414230238311313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + ((n : ℤ) - A087509 n)

end

end A315563.P9040414230238311313

namespace A315563

/-- `A008706(n)+n-A087509(n)` -/
def P9040414230238311313.Spec : Prop :=
  ∀ n, P9040414230238311313.a n = A315563 n

end A315563

/-! ## A315563.P12265131730415965478

`A301720(n)+Δ[2*A008133(n)]`
-/

namespace A315563.P12265131730415965478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301720 n + (f1 (n + 1) - f1 n)

end

end A315563.P12265131730415965478

namespace A315563

/-- `A301720(n)+Δ[2*A008133(n)]` -/
def P12265131730415965478.Spec : Prop :=
  ∀ n, P12265131730415965478.a n = A315563 n

end A315563

/-! ## A315563.P13964429999853884318

`A008486(2*n)-Δ[A008133(n)]`
-/

namespace A315563.P13964429999853884318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - (f1 (n + 1) - f1 n)

end

end A315563.P13964429999853884318

namespace A315563

/-- `A008486(2*n)-Δ[A008133(n)]` -/
def P13964429999853884318.Spec : Prop :=
  ∀ n, P13964429999853884318.a n = A315563 n

end A315563

/-! ## A315563.P7043220545576636440

`A008706(n)+n-Δ[A008133(n)]`
-/

namespace A315563.P7043220545576636440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A315563.P7043220545576636440

namespace A315563

/-- `A008706(n)+n-Δ[A008133(n)]` -/
def P7043220545576636440.Spec : Prop :=
  ∀ n, P7043220545576636440.a n = A315563 n

end A315563

/-! ## A315563.P8990946043067858623

`A008486(2*n)-A105964(2*n)`
-/

namespace A315563.P8990946043067858623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - A105964 (2 * n)

end

end A315563.P8990946043067858623

namespace A315563

/-- `A008486(2*n)-A105964(2*n)` -/
def P8990946043067858623.Spec : Prop :=
  ∀ n, P8990946043067858623.a n = A315563 n

end A315563

/-! ## A315563.P11464152918886550045

`A008574(n)+2*n-A087509(n)`
-/

namespace A315563.P11464152918886550045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ((2 * n : ℤ) - A087509 n)

end

end A315563.P11464152918886550045

namespace A315563

/-- `A008574(n)+2*n-A087509(n)` -/
def P11464152918886550045.Spec : Prop :=
  ∀ n, P11464152918886550045.a n = A315563 n

end A315563

/-! ## A315563.P13469252593749240630

`A301720(n)+A005843(A087509(n))`
-/

namespace A315563.P13469252593749240630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301720 n + A005843 (A087509 n).toNat

end

end A315563.P13469252593749240630

namespace A315563

/-- `A301720(n)+A005843(A087509(n))` -/
def P13469252593749240630.Spec : Prop :=
  ∀ n, P13469252593749240630.a n = A315563 n

end A315563

/-!
# A315564: Coordination sequence Gal.6.665.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315564, there is no canonical definition to state claims against.
-/

/-! ## A315564.P13797380611008679030

`(A315365(n)+A008458(n))/2`
-/

namespace A315564.P13797380611008679030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315365 n + A008458 n : ℚ) / 2

end

end A315564.P13797380611008679030

/-! ## A315564.P2474443744462689244

`2*A315365(n)-A316071(n)`
-/

namespace A315564.P2474443744462689244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315365 n - A316071 n

end

end A315564.P2474443744462689244

/-! ## A315564.P7660127827816078284

`A008458(n)+A008579(n)-A313072(n)`
-/

namespace A315564.P7660127827816078284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008579 n - A313072 n)

end

end A315564.P7660127827816078284

/-! ## A315564.P5881725095714577412

`A315365(n)+A001281(A008458(n)-A315365(n))`
-/

namespace A315564.P5881725095714577412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315365 n + A001281 (A008458 n - A315365 n).toNat

end

end A315564.P5881725095714577412

/-! ## A315564.P18308414884758471099

`A315365(n)+A004525(A008458(n)-A315365(n))`
-/

namespace A315564.P18308414884758471099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315365 n + A004525 (A008458 n - A315365 n).toNat

end

end A315564.P18308414884758471099

/-! ## A315564.P10650513456917114218

`A315365(n)+A006370(A008458(n)-A315365(n))`
-/

namespace A315564.P10650513456917114218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315365 n + A006370 (A008458 n - A315365 n).toNat

end

end A315564.P10650513456917114218

/-! ## A315564.P40154271585524163

`A008458(n)-A004526(A008458(n)-A315365(n))`
-/

namespace A315564.P40154271585524163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004526 (A008458 n - A315365 n).toNat

end

end A315564.P40154271585524163

/-! ## A315564.P11209321133392374313

`A008574(n)+A002264(A316071(n))`
-/

namespace A315564.P11209321133392374313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A002264 (A316071 n).toNat

end

end A315564.P11209321133392374313

/-! ## A315564.P13114077777496247387

`A008486(n)+A004526(A315365(n))`
-/

namespace A315564.P13114077777496247387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + A004526 (A315365 n).toNat

end

end A315564.P13114077777496247387

/-! ## A315564.P15305865699339799316

`A008585(n)+A004525(A315365(n))`
-/

namespace A315564.P15305865699339799316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + A004525 (A315365 n).toNat

end

end A315564.P15305865699339799316

/-! ## A315564.P4646110421276498222

`A001281(A315365(n)+A008458(n))`
-/

namespace A315564.P4646110421276498222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315365 n + A008458 n).toNat

end

end A315564.P4646110421276498222

/-! ## A315564.P1113802488177843129

`A004525(A315365(n)+A008458(n))`
-/

namespace A315564.P1113802488177843129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315365 n + A008458 n).toNat

end

end A315564.P1113802488177843129

/-! ## A315564.P8832625618669090267

`A004526(A315365(n)+A008458(n))`
-/

namespace A315564.P8832625618669090267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315365 n + A008458 n).toNat

end

end A315564.P8832625618669090267

/-! ## A315564.P5309835431257843204

`A006370(A315365(n)+A008458(n))`
-/

namespace A315564.P5309835431257843204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A315365 n + A008458 n).toNat

end

end A315564.P5309835431257843204

/-! ## A315564.P1345178615667790748

`A002264(A316071(n)+A017545(n))`
-/

namespace A315564.P1345178615667790748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A316071 n + A017545 n).toNat

end

end A315564.P1345178615667790748

/-!
# A315565: Coordination sequence Gal.6.666.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315565, there is no canonical definition to state claims against.
-/

/-! ## A315565.P15305986653296111265

`A234567(n+1)+A178181(n)+1`
-/

namespace A315565.P15305986653296111265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234567 (n + 1) + (A178181 n + 1)

end

end A315565.P15305986653296111265

/-! ## A315565.P4953474158811297794

`A178181(n)+A008740(A234567(n+1))`
-/

namespace A315565.P4953474158811297794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178181 n + A008740 (A234567 (n + 1)).toNat

end

end A315565.P4953474158811297794

/-! ## A315565.P14471196210961042700

`A008458(n)-A290399(A254863(n+1))`
-/

namespace A315565.P14471196210961042700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A290399 (A254863 (n + 1)).toNat

end

end A315565.P14471196210961042700

/-! ## A315565.P15293731931253745216

`A185628(∑[n+2]-2)-A236998(n+1)`
-/

namespace A315565.P15293731931253745216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185628 (∑ j ∈ Finset.range (n + 1), f1 j - 2) - A236998 (n + 1)

end

end A315565.P15293731931253745216

/-!
# A315568: Coordination sequence Gal.6.92.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315568, there is no canonical definition to state claims against.
-/

/-! ## A315568.P16721308513801705593

`A035019(A323656(floor(sqrt(n)+n)))`
-/

namespace A315568.P16721308513801705593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035019 (A323656 ⌊Real.sqrt (n : ℝ) + (n : ℝ)⌋.toNat).toNat

end

end A315568.P16721308513801705593

/-!
# A315569: Coordination sequence Gal.5.37.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315569, there is no canonical definition to state claims against.
-/

/-! ## A315569.P8660740031528092133

`A298033(∑[∑[A153713(n+5)%2]%2])`
-/

namespace A315569.P8660740031528092133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153713 (n + 5)) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298033 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A315569.P8660740031528092133

/-!
# A315570: Coordination sequence Gal.5.38.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315570, there is no canonical definition to state claims against.
-/

/-! ## A315570.P18416947751345650607

`A035019(A319852(n))`
-/

namespace A315570.P18416947751345650607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035019 (A319852 n).toNat

end

end A315570.P18416947751345650607

/-! ## A315570.P3641307676558366831

`A035019(Δ[A181734(n)])`
-/

namespace A315570.P3641307676558366831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035019 (f1 (n + 1) - f1 n).toNat

end

end A315570.P3641307676558366831

/-! ## A315570.P12306085756655727571

`A035019(11*A002605(n))`
-/

namespace A315570.P12306085756655727571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035019 (11 * A002605 n).toNat

end

end A315570.P12306085756655727571

/-! ## A315570.P279429210346276369

`A035019(lcm(11, A002605(n)))`
-/

namespace A315570.P279429210346276369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035019 (Int.lcm 11 (A002605 n))

end

end A315570.P279429210346276369

/-! ## A315570.P18313396018359784560

`A035019(n*A163087(n))`
-/

namespace A315570.P18313396018359784560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035019 ((n : ℤ) * A163087 n).toNat

end

end A315570.P18313396018359784560

/-!
# A315571: Coordination sequence Gal.6.480.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315571, there is no canonical definition to state claims against.
-/

/-! ## A315571.P12951204999996523373

`A315579(A211858(n)%A197993(n+1))`
-/

namespace A315571.P12951204999996523373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315579 (Int.tmod (A211858 n) (A197993 (n + 1))).toNat

end

end A315571.P12951204999996523373

/-! ## A315571.P6637658799023844079

`A353898(A335387(n+1)*A353898(2*n+1))`
-/

namespace A315571.P6637658799023844079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353898 (A335387 (n + 1) * A353898 (2 * n + 1)).toNat

end

end A315571.P6637658799023844079

/-! ## A315571.P1734631535230515693

`A211648(or(A211646(3*n+1), A211650(n+1)))`
-/

namespace A315571.P1734631535230515693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211648 (Int.lor (A211646 (3 * n + 1)) (A211650 (n + 1))).toNat

end

end A315571.P1734631535230515693

/-! ## A315571.P4655650452187423887

`A035019(A000073(2*n+1))*A195768(2*n+3)`
-/

namespace A315571.P4655650452187423887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035019 (A000073 (2 * n + 1)).toNat * A195768 (2 * n + 3)

end

end A315571.P4655650452187423887

/-!
# A315575: Coordination sequence Gal.4.84.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315575, there is no canonical definition to state claims against.
-/

/-! ## A315575.P564193145009460585

`A301716(round(xor(1, 5*n)/6)%A139056(n+1))`
-/

namespace A315575.P564193145009460585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301716 (Int.tmod (SequenceMachineLib.roundAway ((Nat.xor 1 (5 * n) : ℚ) / 6)) (A139056 (n + 1))).toNat

end

end A315575.P564193145009460585

/-! ## A315575.P414292002640394909

`A177704(A075253(n))*A315791(n)`
-/

namespace A315575.P414292002640394909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177704 (A075253 n).toNat * A315791 n

end

end A315575.P414292002640394909

/-! ## A315575.P9212350758093739736

`A315791(A351870(n)+A342000(n+1))`
-/

namespace A315575.P9212350758093739736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315791 (A351870 n + A342000 (n + 1)).toNat

end

end A315575.P9212350758093739736

/-! ## A315575.P14660977588050884218

`A089650(A211064(n+1))*A315791(n)`
-/

namespace A315575.P14660977588050884218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089650 (A211064 (n + 1)).toNat * A315791 n

end

end A315575.P14660977588050884218

/-! ## A315575.P7258570978634078036

`lcm(A124768(A315747(2*n)), A315791(n))`
-/

namespace A315575.P7258570978634078036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A124768 (A315747 (2 * n)).toNat) (A315791 n)

end

end A315575.P7258570978634078036

/-!
# A315577: Coordination sequence Gal.6.499.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315577, there is no canonical definition to state claims against.
-/

/-! ## A315577.P15745498697786300396

`A008458(A032555(n+1)-A071455(n+1))`
-/

namespace A315577.P15745498697786300396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A032555 (n + 1) - A071455 (n + 1)).toNat

end

end A315577.P15745498697786300396

/-! ## A315577.P8697644860016617292

`A008458(A032559(n+1)-A071455(n+1))`
-/

namespace A315577.P8697644860016617292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A032559 (n + 1) - A071455 (n + 1)).toNat

end

end A315577.P8697644860016617292

/-! ## A315577.P5544812688776407065

`A348719(∑{d}[A099640(n+1), A061395(#)]%2+n)`
-/

namespace A315577.P5544812688776407065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348719 (Int.tmod (∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d) 2 + (n : ℤ)).toNat

end

end A315577.P5544812688776407065

/-!
# A315579: Coordination sequence Gal.6.540.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315579, there is no canonical definition to state claims against.
-/

/-! ## A315579.P10291452811782416997

`A008458(floor(log2(A018620(n+1))))`
-/

namespace A315579.P10291452811782416997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (Nat.log 2 (A018620 (n + 1)).toNat)

end

end A315579.P10291452811782416997

/-! ## A315579.P1331411819896331931

`A008458(floor(log2(A018664(n+1))))`
-/

namespace A315579.P1331411819896331931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (Nat.log 2 (A018664 (n + 1)).toNat)

end

end A315579.P1331411819896331931

/-! ## A315579.P7060916271546567829

`A008458(floor(log2(A018688(n+1))))`
-/

namespace A315579.P7060916271546567829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (Nat.log 2 (A018688 (n + 1)).toNat)

end

end A315579.P7060916271546567829

/-! ## A315579.P11411809769003029817

`A008458(ceil(log2(A018369(n+1))))`
-/

namespace A315579.P11411809769003029817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 ⌈Real.logb 2 (A018369 (n + 1) : ℝ)⌉.toNat

end

end A315579.P11411809769003029817

/-! ## A315579.P331344328636652311

`A008458(ceil(log2(A018405(n+1))))`
-/

namespace A315579.P331344328636652311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 ⌈Real.logb 2 (A018405 (n + 1) : ℝ)⌉.toNat

end

end A315579.P331344328636652311

/-!
# A315580: Coordination sequence Gal.6.500.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315580, there is no canonical definition to state claims against.
-/

/-! ## A315580.P514431548542856406

`A008458(A211858(n)%A197993(n+1))`
-/

namespace A315580.P514431548542856406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (Int.tmod (A211858 n) (A197993 (n + 1))).toNat

end

end A315580.P514431548542856406

/-! ## A315580.P5438385612087303808

`A315579(A226857(n+1)%A129067(n+1))`
-/

namespace A315580.P5438385612087303808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315579 (Int.tmod (A226857 (n + 1)) (A129067 (n + 1))).toNat

end

end A315580.P5438385612087303808

/-! ## A315580.P10700800160457045677

`A315579(A226857(n+1))%A226858(n+1)`
-/

namespace A315580.P10700800160457045677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A315579 (A226857 (n + 1)).toNat) (A226858 (n + 1))

end

end A315580.P10700800160457045677

/-! ## A315580.P11254231075555020394

`A315579(xor(n, A185284(A315590(n))))`
-/

namespace A315580.P11254231075555020394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315579 (Int.xor (n : ℤ) (A185284 (A315590 n).toNat)).toNat

end

end A315580.P11254231075555020394

/-!
# A315581: Coordination sequence Gal.3.34.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315581, there is no canonical definition to state claims against.
-/

/-! ## A315581.P8013017269975490977

`A315596(n)+A315617(n)-A315623(n)`
-/

namespace A315581.P8013017269975490977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315596 n + (A315617 n - A315623 n)

end

end A315581.P8013017269975490977

/-! ## A315581.P13966719288650539959

`A315780(A047363(n+1)%A270011(n+2))`
-/

namespace A315581.P13966719288650539959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315780 (Int.tmod (A047363 (n + 1)) (A270011 (n + 2))).toNat

end

end A315581.P13966719288650539959

/-! ## A315581.P7136979109794757298

`A315780(A047363(n+1))+A008683(A120571(n+1))`
-/

namespace A315581.P7136979109794757298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315780 (A047363 (n + 1)).toNat + A008683 (A120571 (n + 1)).toNat

end

end A315581.P7136979109794757298

/-! ## A315581.P17391949315556896167

`A227128(lt[A304442(n), A353932(2*n+1)])`
-/

namespace A315581.P17391949315556896167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353932 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227128 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A315581.P17391949315556896167

/-!
# A315582: Coordination sequence Gal.6.668.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315582, there is no canonical definition to state claims against.
-/

/-! ## A315582.P3942989012708720935

`A008486(A315658(n)-A008574(n))`
-/

namespace A315582.P3942989012708720935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A315658 n - A008574 n).toNat

end

end A315582.P3942989012708720935

/-! ## A315582.P11309364866267872317

`A008486(A315658(n)%A008574(n))`
-/

namespace A315582.P11309364866267872317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (Int.tmod (A315658 n) (A008574 n)).toNat

end

end A315582.P11309364866267872317

/-! ## A315582.P1117539981458418748

`A008458((A315658(n)-A008574(n))/2)`
-/

namespace A315582.P1117539981458418748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (SequenceMachineLib.roundAway ((A315658 n - A008574 n : ℚ) / 2)).toNat

end

end A315582.P1117539981458418748

/-! ## A315582.P14402053846575451047

`A008486(A315658(n)-(A008486(n)+n))`
-/

namespace A315582.P14402053846575451047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A315658 n - (A008486 n + (n : ℤ))).toNat

end

end A315582.P14402053846575451047

/-! ## A315582.P14301493631996047499

`A008486(A315658(n)-n-A008486(n))`
-/

namespace A315582.P14301493631996047499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A315658 n - (n : ℤ) - A008486 n).toNat

end

end A315582.P14301493631996047499

/-! ## A315582.P8682439839722920586

`A315658(n)-A005843(A008458(n)-A315658(n))`
-/

namespace A315582.P8682439839722920586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315658 n - A005843 (A008458 n - A315658 n).toNat

end

end A315582.P8682439839722920586

/-! ## A315582.P10127387768870288420

`A008486(A315658(n))-A005843(A008458(n))`
-/

namespace A315582.P10127387768870288420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A315658 n).toNat - A005843 (A008458 n).toNat

end

end A315582.P10127387768870288420

/-!
# A315583: Coordination sequence Gal.5.328.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315583, there is no canonical definition to state claims against.
-/

/-! ## A315583.P17535637729292298616

`A315575(eq[A311959(n), A312097(n)])`
-/

namespace A315583.P17535637729292298616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311959 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315575 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A315583.P17535637729292298616

/-! ## A315583.P3678677072258080644

`A301716(n)-A236356(A244725(n+2))`
-/

namespace A315583.P3678677072258080644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301716 n - A236356 (A244725 (n + 2)).toNat

end

end A315583.P3678677072258080644

/-! ## A315583.P2373186114719550295

`A315575(lt[A003269(n), A334662(n+2)])`
-/

namespace A315583.P2373186114719550295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334662 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315575 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A315583.P2373186114719550295

/-! ## A315583.P13178341096920058909

`A315581(A057354(3*n)%A057189(n+1))`
-/

namespace A315583.P13178341096920058909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315581 (Int.tmod (A057354 (3 * n)) (A057189 (n + 1))).toNat

end

end A315583.P13178341096920058909

/-! ## A315583.P12924290346556473139

`A315575(lt[A001542(n), A361540(3*n+4)])`
-/

namespace A315583.P12924290346556473139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361540 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315575 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A315583.P12924290346556473139

/-!
# A315586: Coordination sequence Gal.6.380.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315586, there is no canonical definition to state claims against.
-/

/-! ## A315586.P10312111447751121775

`A007728(n)*A007947(A164908(n))`
-/

namespace A315586.P10312111447751121775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007728 n * A007947 (A164908 n).toNat

end

end A315586.P10312111447751121775

/-! ## A315586.P4144372335073776678

`A008458(A032559(n+1)-A331742(n))`
-/

namespace A315586.P4144372335073776678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A032559 (n + 1) - A331742 n).toNat

end

end A315586.P4144372335073776678

/-! ## A315586.P8312571775511272448

`A028971(eq[A006694(n+2), A167683(n)])`
-/

namespace A315586.P8312571775511272448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028971 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A315586.P8312571775511272448

/-!
# A315587: Coordination sequence Gal.6.391.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315587, there is no canonical definition to state claims against.
-/

/-! ## A315587.P1927888710447659652

`A008458(A032559(n+1)-A294442(n))`
-/

namespace A315587.P1927888710447659652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A032559 (n + 1) - A294442 n).toNat

end

end A315587.P1927888710447659652

/-!
# A315590: Coordination sequence Gal.6.378.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315590, there is no canonical definition to state claims against.
-/

/-! ## A315590.P13135496839484387931

`2*A315595(n)-A315596(n)`
-/

namespace A315590.P13135496839484387931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315595 n - A315596 n

end

end A315590.P13135496839484387931

/-! ## A315590.P9701991660068090541

`A315596(n)-A005843(A315596(n)-A315595(n))`
-/

namespace A315590.P9701991660068090541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315596 n - A005843 (A315596 n - A315595 n).toNat

end

end A315590.P9701991660068090541

/-! ## A315590.P15789563122692676613

`A005843(A315595(n))-A315596(n)`
-/

namespace A315590.P15789563122692676613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315595 n).toNat - A315596 n

end

end A315590.P15789563122692676613

/-! ## A315590.P2075516542917716518

`A028310((2*A315595(n))%(A315596(n)+1)+1)`
-/

namespace A315590.P2075516542917716518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (2 * A315595 n) (A315596 n + 1) + 1).toNat

end

end A315590.P2075516542917716518

/-! ## A315590.P2876568709486296078

`A005843(A315595(n))-(2*A315623(n)-A315764(n))`
-/

namespace A315590.P2876568709486296078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315595 n).toNat - (2 * A315623 n - A315764 n)

end

end A315590.P2876568709486296078

/-!
# A315591: Coordination sequence Gal.6.385.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315591, there is no canonical definition to state claims against.
-/

/-! ## A315591.P9246026885839910736

`A035019(n*(n*(n-5)+5)²)*A135660(3*n+5)`
-/

namespace A315591.P9246026885839910736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035019 ((n : ℤ) * ((n : ℤ) * ((n : ℤ) - 5) + 5) ^ 2).toNat * A135660 (3 * n + 5)

end

end A315591.P9246026885839910736

/-! ## A315591.P6233314238915086699

`A039819(A193642(n+1)-A008482(n))`
-/

namespace A315591.P6233314238915086699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039819 (A193642 (n + 1) - A008482 n).toNat

end

end A315591.P6233314238915086699

/-! ## A315591.P1384645539938896650

`A315594(n)-A005871(A000108(n+1))`
-/

namespace A315591.P1384645539938896650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315594 n - A005871 (A000108 (n + 1)).toNat

end

end A315591.P1384645539938896650

/-! ## A315591.P16167871495704430580

`A315598(A082217(n+1)-A066657(n))`
-/

namespace A315591.P16167871495704430580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315598 (A082217 (n + 1) - A066657 n).toNat

end

end A315591.P16167871495704430580

/-! ## A315591.P16761257992995935547

`A070172(xor(A008592(n), A032555(n+1)))`
-/

namespace A315591.P16761257992995935547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070172 (Int.xor (A008592 n) (A032555 (n + 1))).toNat

end

end A315591.P16761257992995935547

/-!
# A315592: Coordination sequence Gal.6.390.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315592, there is no canonical definition to state claims against.
-/

/-! ## A315592.P7548229415431914083

`A001615(A235036(n)%A291176(n+1))`
-/

namespace A315592.P7548229415431914083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (Int.tmod (A235036 n) (A291176 (n + 1))).toNat

end

end A315592.P7548229415431914083

/-! ## A315592.P719417338490752294

`A315785(lt[A053509(n+1), A278739(n)])`
-/

namespace A315592.P719417338490752294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315785 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A315592.P719417338490752294

/-! ## A315592.P3868371687213589201

`A315591(lt[gcd(n, ∑[n]), 6])`
-/

namespace A315592.P3868371687213589201
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315591 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A315592.P3868371687213589201

/-!
# A315593: Coordination sequence Gal.6.379.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315593, there is no canonical definition to state claims against.
-/

/-! ## A315593.P11666677386020336111

`A062570(eq[A336868(n), A346690(n)])`
-/

namespace A315593.P11666677386020336111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336868 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A315593.P11666677386020336111

/-! ## A315593.P13494652528301864802

`A054523(C(3*5*n-n, 2)+1)`
-/

namespace A315593.P13494652528301864802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (Nat.choose ((3 * (5 * n) : ℤ) - (n : ℤ)).toNat 2 + 1)

end

end A315593.P13494652528301864802

/-! ## A315593.P8763678625777960048

`A225530(14*A062399(n))`
-/

namespace A315593.P8763678625777960048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (14 * A062399 n).toNat

end

end A315593.P8763678625777960048

/-! ## A315593.P16160417035871034547

`A225530(14*A120126(n))`
-/

namespace A315593.P16160417035871034547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (14 * A120126 n).toNat

end

end A315593.P16160417035871034547

/-! ## A315593.P7412011098926396311

`A225530(14*A351870(n))`
-/

namespace A315593.P7412011098926396311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 (14 * A351870 n).toNat

end

end A315593.P7412011098926396311

/-!
# A315594: Coordination sequence Gal.5.332.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315594, there is no canonical definition to state claims against.
-/

/-! ## A315594.P2033123308767451044

`A076868(C(2, ∑{e}[n+1, #])!+n-A104637(n+1))`
-/

namespace A315594.P2033123308767451044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076868 ((Nat.factorial (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) + n : ℤ) - A104637 (n + 1)).toNat

end

end A315594.P2033123308767451044

/-! ## A315594.P16782489007003995515

`A008458(A087051(n)-A271420(n+1))`
-/

namespace A315594.P16782489007003995515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A087051 n - A271420 (n + 1)).toNat

end

end A315594.P16782489007003995515

/-! ## A315594.P9308547984400776275

`A008458(A087051(n)-A346700(n+1))`
-/

namespace A315594.P9308547984400776275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A087051 n - A346700 (n + 1)).toNat

end

end A315594.P9308547984400776275

/-!
# A315595: Coordination sequence Gal.6.375.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315595, there is no canonical definition to state claims against.
-/

/-! ## A315595.P8380924909547764233

`(A315596(n)+A315590(n))/2`
-/

namespace A315595.P8380924909547764233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315596 n + A315590 n : ℚ) / 2

end

end A315595.P8380924909547764233

/-! ## A315595.P5578613088193795641

`A014682(A315596(n)+A315590(n))`
-/

namespace A315595.P5578613088193795641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A315596 n + A315590 n).toNat

end

end A315595.P5578613088193795641

/-! ## A315595.P4199584226313035502

`A315590(n)+A001281(A315596(n)-A315590(n))`
-/

namespace A315595.P4199584226313035502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315590 n + A001281 (A315596 n - A315590 n).toNat

end

end A315595.P4199584226313035502

/-! ## A315595.P620633036792244260

`A315590(n)+A004525(A315596(n)-A315590(n))`
-/

namespace A315595.P620633036792244260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315590 n + A004525 (A315596 n - A315590 n).toNat

end

end A315595.P620633036792244260

/-! ## A315595.P11916145843227427090

`A315590(n)+A006370(A315596(n)-A315590(n))`
-/

namespace A315595.P11916145843227427090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315590 n + A006370 (A315596 n - A315590 n).toNat

end

end A315595.P11916145843227427090

/-! ## A315595.P14447640386763271262

`A315590(n)+A025480(A315596(n)-A315590(n))`
-/

namespace A315595.P14447640386763271262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315590 n + A025480 (A315596 n - A315590 n).toNat

end

end A315595.P14447640386763271262

/-! ## A315595.P13908774431726791065

`A315590(n)+A026741(A315596(n)-A315590(n))`
-/

namespace A315595.P13908774431726791065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315590 n + A026741 (A315596 n - A315590 n).toNat

end

end A315595.P13908774431726791065

/-! ## A315595.P475787146828317244

`A315590(n)+A029578(A315596(n)-A315590(n))`
-/

namespace A315595.P475787146828317244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315590 n + A029578 (A315596 n - A315590 n).toNat

end

end A315595.P475787146828317244

/-! ## A315595.P13668918267295338265

`A315590(n)+A064680(A315596(n)-A315590(n))`
-/

namespace A315595.P13668918267295338265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315590 n + A064680 (A315596 n - A315590 n).toNat

end

end A315595.P13668918267295338265

/-! ## A315595.P9671934097195010473

`A315596(n)-A004526(A315596(n)-A315590(n))`
-/

namespace A315595.P9671934097195010473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315596 n - A004526 (A315596 n - A315590 n).toNat

end

end A315595.P9671934097195010473

/-! ## A315595.P12182698990926375346

`A001281(A315596(n)+A315590(n))`
-/

namespace A315595.P12182698990926375346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315596 n + A315590 n).toNat

end

end A315595.P12182698990926375346

/-! ## A315595.P12380213212724724504

`A004525(A315596(n)+A315590(n))`
-/

namespace A315595.P12380213212724724504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315596 n + A315590 n).toNat

end

end A315595.P12380213212724724504

/-! ## A315595.P13504611262820639325

`A004526(A315596(n)+A315590(n))`
-/

namespace A315595.P13504611262820639325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315596 n + A315590 n).toNat

end

end A315595.P13504611262820639325

/-! ## A315595.P16993434043323765948

`A006370(A315596(n)+A315590(n))`
-/

namespace A315595.P16993434043323765948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A315596 n + A315590 n).toNat

end

end A315595.P16993434043323765948

/-! ## A315595.P9686489260075678916

`A025480(A315596(n)+A315590(n))`
-/

namespace A315595.P9686489260075678916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A315596 n + A315590 n).toNat

end

end A315595.P9686489260075678916

/-! ## A315595.P9739661752262017174

`A026741(A315596(n)+A315590(n))`
-/

namespace A315595.P9739661752262017174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A315596 n + A315590 n).toNat

end

end A315595.P9739661752262017174

/-! ## A315595.P8877032751754396429

`A029578(A315596(n)+A315590(n))`
-/

namespace A315595.P8877032751754396429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A315596 n + A315590 n).toNat

end

end A315595.P8877032751754396429

/-! ## A315595.P5860696601294788518

`A064680(A315596(n)+A315590(n))`
-/

namespace A315595.P5860696601294788518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A315596 n + A315590 n).toNat

end

end A315595.P5860696601294788518

/-! ## A315595.P1274543844186734875

`A065033(A315596(n)+A315590(n))`
-/

namespace A315595.P1274543844186734875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A315596 n + A315590 n).toNat

end

end A315595.P1274543844186734875

/-! ## A315595.P174867914035830631

`A008619(A315590(n)+A315596(n)-1)`
-/

namespace A315595.P174867914035830631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A315590 n + (A315596 n - 1)).toNat

end

end A315595.P174867914035830631

/-!
# A315596: Coordination sequence Gal.3.24.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315596, there is no canonical definition to state claims against.
-/

/-! ## A315596.P12351384167304207286

`2*A315595(n)-A315590(n)`
-/

namespace A315596.P12351384167304207286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315595 n - A315590 n

end

end A315596.P12351384167304207286

/-! ## A315596.P12435539476542816281

`2*A315623(n)-A315764(n)`
-/

namespace A315596.P12435539476542816281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315623 n - A315764 n

end

end A315596.P12435539476542816281

/-! ## A315596.P7696000502589198927

`A315581(n)+A315623(n)-A315617(n)`
-/

namespace A315596.P7696000502589198927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315581 n + (A315623 n - A315617 n)

end

end A315596.P7696000502589198927

/-! ## A315596.P10059089390840070004

`A315764(n)-A005843(A315764(n)-A315623(n))`
-/

namespace A315596.P10059089390840070004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315764 n - A005843 (A315764 n - A315623 n).toNat

end

end A315596.P10059089390840070004

/-! ## A315596.P18153775788799421619

`A005843(A315595(n))-A315590(n)`
-/

namespace A315596.P18153775788799421619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315595 n).toNat - A315590 n

end

end A315596.P18153775788799421619

/-! ## A315596.P8158734493841540682

`A005843(A315623(n))-A315764(n)`
-/

namespace A315596.P8158734493841540682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315623 n).toNat - A315764 n

end

end A315596.P8158734493841540682

/-!
# A315598: Coordination sequence Gal.3.57.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315598, the canonical program `A315598.P6908489528099819853` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315598 has offset 0).

The definition of A315598 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315598.P6908489528099819853

`A008458(A057357(n+1)+A004525(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A315598

/-- `A008458(A057357(n+1)+A004525(n))` -/
def P6908489528099819853.Spec : Prop :=
  ∀ n, P6908489528099819853.a n = A315598 n

theorem P6908489528099819853.correct : P6908489528099819853.Spec := by
  intro n
  simp only [A315598]

end A315598

/-! ## A315598.P4451660451050288637

`A315620(n)+A315622(n)-A315723(n)`
-/

namespace A315598.P4451660451050288637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315620 n + (A315622 n - A315723 n)

end

end A315598.P4451660451050288637

namespace A315598

/-- `A315620(n)+A315622(n)-A315723(n)` -/
def P4451660451050288637.Spec : Prop :=
  ∀ n, P4451660451050288637.a n = A315598 n

end A315598

/-! ## A315598.P11315607863672992513

`2*A315620(n)-A315717(n)`
-/

namespace A315598.P11315607863672992513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A315620 n - A315717 n

end

end A315598.P11315607863672992513

namespace A315598

/-- `2*A315620(n)-A315717(n)` -/
def P11315607863672992513.Spec : Prop :=
  ∀ n, P11315607863672992513.a n = A315598 n

end A315598

/-! ## A315598.P17985978959238026103

`A008458(A301708(n)-A314838(n))`
-/

namespace A315598.P17985978959238026103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A301708 n - A314838 n).toNat

end

end A315598.P17985978959238026103

namespace A315598

/-- `A008458(A301708(n)-A314838(n))` -/
def P17985978959238026103.Spec : Prop :=
  ∀ n, P17985978959238026103.a n = A315598 n

end A315598

/-! ## A315598.P8928809543645931306

`A008458(A301708(n)%A314838(n))`
-/

namespace A315598.P8928809543645931306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (Int.tmod (A301708 n) (A314838 n)).toNat

end

end A315598.P8928809543645931306

namespace A315598

/-- `A008458(A301708(n)%A314838(n))` -/
def P8928809543645931306.Spec : Prop :=
  ∀ n, P8928809543645931306.a n = A315598 n

end A315598

/-! ## A315598.P6261272754749069788

`A005843(A315620(n))-A315717(n)`
-/

namespace A315598.P6261272754749069788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A315620 n).toNat - A315717 n

end

end A315598.P6261272754749069788

namespace A315598

/-- `A005843(A315620(n))-A315717(n)` -/
def P6261272754749069788.Spec : Prop :=
  ∀ n, P6261272754749069788.a n = A315598 n

end A315598

/-! ## A315598.P1299721200489154479

`A299909(2*n)-A052928(A299909(n))`
-/

namespace A315598.P1299721200489154479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299909 (2 * n) - A052928 (A299909 n).toNat

end

end A315598.P1299721200489154479

namespace A315598

/-- `A299909(2*n)-A052928(A299909(n))` -/
def P1299721200489154479.Spec : Prop :=
  ∀ n, P1299721200489154479.a n = A315598 n

end A315598

/-!
# A315599: Coordination sequence Gal.6.611.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315599, there is no canonical definition to state claims against.
-/

/-! ## A315599.P8554229363292224808

`record[A348551(n+1)/A236938(n)!]`
-/

namespace A315599.P8554229363292224808
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348551 (n + 1) : ℚ) / (Nat.factorial (A236938 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315599.P8554229363292224808

/-! ## A315599.P11542016924451782672

`record[and(A000203(n+1), A164732(3*n+1))]`
-/

namespace A315599.P11542016924451782672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (n + 1)) (A164732 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315599.P11542016924451782672

/-! ## A315599.P15951890696951777831

`A348551(lt[A261956(n), A348551(n+1)])`
-/

namespace A315599.P15951890696951777831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261956 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348551 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A315599.P15951890696951777831

/-! ## A315599.P18378325865431023673

`A348551(A268415(n+1)*A283821(n+1))`
-/

namespace A315599.P18378325865431023673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348551 (A268415 (n + 1) * A283821 (n + 1)).toNat

end

end A315599.P18378325865431023673

