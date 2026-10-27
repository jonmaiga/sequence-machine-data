import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A073600: 

The programs for A073600, there is no canonical definition to state claims against.
-/

/-! ## A073600.P14303344722303812635

`(n+1)^A073601(n+1)`
-/

namespace A073600.P14303344722303812635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A073601 (n + 1) : ℤ)

end

end A073600.P14303344722303812635

/-!
# A073601: Least k>1 such that n^k and n have equal leading decimal digits.

The programs for A073601, there is no canonical definition to state claims against.
-/

/-! ## A073601.P13039508809764298071

`gcd(A001281(A051223(n+1)), A051248(n+1))`
-/

namespace A073601.P13039508809764298071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001281 (A051223 (n + 1)).toNat) (A051248 (n + 1))

end

end A073601.P13039508809764298071

/-! ## A073601.P13271984198091334187

`gcd(A051248(n+1), A137579(A000045(n)))`
-/

namespace A073601.P13271984198091334187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051248 (n + 1)) (A137579 (A000045 n).toNat)

end

end A073601.P13271984198091334187

/-!
# A073602: a(n) is the smallest prime different from a(k) for k < n such that sum(a(j), j=1..n) is a multiple of the n-th prime.

The programs for A073602, there is no canonical definition to state claims against.
-/

/-! ## A073602.P4159934800760449072

`p?[xor(∑[2*n]+3, A297720(n+1))]`
-/

namespace A073602.P4159934800760449072
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∑ j ∈ Finset.range (n + 1), f2 j + 3 : ℕ) : ℤ) (A297720 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073602.P4159934800760449072

/-! ## A073602.P16168108768502043655

`A139171(A234467(n)%A000302(n+2))`
-/

namespace A073602.P16168108768502043655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139171 (Int.tmod (A234467 n) (A000302 (n + 2))).toNat

end

end A073602.P16168108768502043655

/-!
# A073603: Smallest multiple of n-th prime which is == 1 mod (n+1)-st prime.

The programs for A073603, there is no canonical definition to state claims against.
-/

/-! ## A073603.P10884085007647033777

`A000040(n+1)*A069830(n+1)`
-/

namespace A073603.P10884085007647033777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A069830 (n + 1)

end

end A073603.P10884085007647033777

/-! ## A073603.P17351022987313700975

`A006094(n+1)-A077338(n+1)`
-/

namespace A073603.P17351022987313700975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - A077338 (n + 1)

end

end A073603.P17351022987313700975

/-! ## A073603.P17392799795245306954

`A037166(n+1)+Δ[A007504(n)]-A077338(n+1)`
-/

namespace A073603.P17392799795245306954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037166 (n + 1) + (f1 (n + 1) - f1 n) - A077338 (n + 1)

end

end A073603.P17392799795245306954

/-! ## A073603.P10827806668190720543

`Δ[A007504(n)]*A065091(n+1)-A077338(n+1)`
-/

namespace A073603.P10827806668190720543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A065091 (n + 1) - A077338 (n + 1)

end

end A073603.P10827806668190720543

/-! ## A073603.P16968784647130589237

`A251720(n+1)/Δ[A007504(n)]-A077338(n+1)`
-/

namespace A073603.P16968784647130589237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251720 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ) - (A077338 (n + 1) : ℚ)

end

end A073603.P16968784647130589237

/-! ## A073603.P2064780471050977306

`A000040(n+1)+A037166(n+1)-A077338(n+1)`
-/

namespace A073603.P2064780471050977306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A037166 (n + 1) - A077338 (n + 1))

end

end A073603.P2064780471050977306

/-! ## A073603.P10539331757759903901

`A001043(n+1)+A037165(n+1)-A077338(n+1)`
-/

namespace A073603.P10539331757759903901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + (A037165 (n + 1) - A077338 (n + 1))

end

end A073603.P10539331757759903901

/-! ## A073603.P13868786777312451940

`A037167(n+1)+A065091(n+1)-A077338(n+1)`
-/

namespace A073603.P13868786777312451940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037167 (n + 1) + (A065091 (n + 1) - A077338 (n + 1))

end

end A073603.P13868786777312451940

/-! ## A073603.P3656659649483224795

`A123134(n+1)-(A077338(n+1)+A000040(n+1))`
-/

namespace A073603.P3656659649483224795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123134 (n + 1) - (A077338 (n + 1) + A000040 (n + 1))

end

end A073603.P3656659649483224795

/-! ## A073603.P11187822712176322092

`A001248(n+1)+A291463(n+1)-A077338(n+1)`
-/

namespace A073603.P11187822712176322092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + (A291463 (n + 1) - A077338 (n + 1))

end

end A073603.P11187822712176322092

/-! ## A073603.P8782255381394041332

`A286624(n+1)-(A077338(n+1)+A008864(n+1))`
-/

namespace A073603.P8782255381394041332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286624 (n + 1) - (A077338 (n + 1) + A008864 (n + 1))

end

end A073603.P8782255381394041332

/-! ## A073603.P12450948165962159984

`A111071(n+1)+A215848(n+1)-A077338(n+1)`
-/

namespace A073603.P12450948165962159984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111071 (n + 1) + (A215848 (n + 1) - A077338 (n + 1))

end

end A073603.P12450948165962159984

/-! ## A073603.P9883094353813778792

`A037165(n+1)+A011974(n+2)-A077338(n+1)`
-/

namespace A073603.P9883094353813778792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037165 (n + 1) + A011974 (n + 2) - A077338 (n + 1)

end

end A073603.P9883094353813778792

/-! ## A073603.P17701919644993262627

`A000040(n+1)*A065091(n+1)-A077338(n+1)`
-/

namespace A073603.P17701919644993262627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A065091 (n + 1) - A077338 (n + 1)

end

end A073603.P17701919644993262627

/-! ## A073603.P11648323842499993687

`A251720(n+1)/A000040(n+1)-A077338(n+1)`
-/

namespace A073603.P11648323842499993687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251720 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ) - (A077338 (n + 1) : ℚ)

end

end A073603.P11648323842499993687

/-! ## A073603.P517484930401867322

`(A194367(n+1)+A087454(n+2))*A069830(n+1)`
-/

namespace A073603.P517484930401867322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A194367 (n + 1) + A087454 (n + 2)) * A069830 (n + 1)

end

end A073603.P517484930401867322

/-! ## A073603.P5982245270505487327

`(A000040(n+2)-A077005(n+2))*A000040(n+1)`
-/

namespace A073603.P5982245270505487327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) - A077005 (n + 2)) * A000040 (n + 1)

end

end A073603.P5982245270505487327

/-! ## A073603.P5427781066493380357

`p?[A004273(n)+2]*A069830(n+1)`
-/

namespace A073603.P5427781066493380357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A069830 (n + 1)

end

end A073603.P5427781066493380357

/-! ## A073603.P9194672076579961503

`p?[A022998(n)+2]*A069830(n+1)`
-/

namespace A073603.P9194672076579961503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A069830 (n + 1)

end

end A073603.P9194672076579961503

/-! ## A073603.P1075456045986129353

`A008578(n+2)*A122585(A008578(n+2))`
-/

namespace A073603.P1075456045986129353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A122585 (A008578 (n + 2)).toNat

end

end A073603.P1075456045986129353

/-!
# A073604: Smallest multiple of (n+1)-st prime which is == 1 mod n-th prime.

The programs for A073604, there is no canonical definition to state claims against.
-/

/-! ## A073604.P5154524242658822618

`A077338(n+1)+1`
-/

namespace A073604.P5154524242658822618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077338 (n + 1) + 1

end

end A073604.P5154524242658822618

/-! ## A073604.P4836734451904287932

`A006094(n+1)+1-A073603(n+1)`
-/

namespace A073604.P4836734451904287932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + (1 - A073603 (n + 1))

end

end A073604.P4836734451904287932

/-! ## A073604.P10248215107493079145

`A000040(n+1)*A077005(n+2)+1`
-/

namespace A073604.P10248215107493079145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A077005 (n + 2) + 1

end

end A073604.P10248215107493079145

/-! ## A073604.P10813266284465620336

`p?[2*n+1]*A087454(n+2)`
-/

namespace A073604.P10813266284465620336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) * A087454 (n + 2)

end

end A073604.P10813266284465620336

/-! ## A073604.P17126478092642380626

`A065091(n+1)*A087454(n+2)`
-/

namespace A073604.P17126478092642380626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) * A087454 (n + 2)

end

end A073604.P17126478092642380626

/-! ## A073604.P1729895757342010773

`A000040(n+2)*A087454(n+2)`
-/

namespace A073604.P1729895757342010773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A087454 (n + 2)

end

end A073604.P1729895757342010773

/-! ## A073604.P12730269085524933731

`(A000040(n+1)-A194367(n+1))*A000040(n+2)`
-/

namespace A073604.P12730269085524933731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - A194367 (n + 1)) * A000040 (n + 2)

end

end A073604.P12730269085524933731

/-! ## A073604.P3316349697349874375

`(A077005(n+2)+A069830(n+1))*A087454(n+2)`
-/

namespace A073604.P3316349697349874375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077005 (n + 2) + A069830 (n + 1)) * A087454 (n + 2)

end

end A073604.P3316349697349874375

/-! ## A073604.P14294851313762209883

`A073603(n+2)/A069830(n+2)*A087454(n+2)`
-/

namespace A073604.P14294851313762209883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073603 (n + 2) : ℚ) / (A069830 (n + 2) : ℚ) * (A087454 (n + 2) : ℚ)

end

end A073604.P14294851313762209883

/-! ## A073604.P12806681990205605491

`(A194367(n+2)+A087454(n+3))*A087454(n+2)`
-/

namespace A073604.P12806681990205605491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A194367 (n + 2) + A087454 (n + 3)) * A087454 (n + 2)

end

end A073604.P12806681990205605491

/-! ## A073604.P8010267532603892581

`p?[2*n+1]*A362254(p?[2*n+1])`
-/

namespace A073604.P8010267532603892581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) * A362254 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

end

end A073604.P8010267532603892581

/-! ## A073604.P4426514523306796005

`A006005(n+2)*A362254(A006005(n+2))`
-/

namespace A073604.P4426514523306796005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2) * A362254 (A006005 (n + 2)).toNat

end

end A073604.P4426514523306796005

/-! ## A073604.P10153250128352353186

`A058077(n+1)%A006094(n+1)`
-/

namespace A073604.P10153250128352353186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058077 (n + 1)) (A006094 (n + 1))

end

end A073604.P10153250128352353186

/-!
# A073605: Smallest number m such that m + k == 0 mod k-th prime for all k from 1 to n.

The programs for A073605, there is no canonical definition to state claims against.
-/

/-! ## A073605.P18225132951384091656

`A069561(n+1)-1`
-/

namespace A073605.P18225132951384091656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069561 (n + 1) - 1

end

end A073605.P18225132951384091656

/-! ## A073605.P4830279622712626102

`A002110(n+1)-A053664(n+1)`
-/

namespace A073605.P4830279622712626102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) - A053664 (n + 1)

end

end A073605.P4830279622712626102

/-! ## A073605.P14293569229100050795

`A002110(n+1)-A187930(n+1)-1`
-/

namespace A073605.P14293569229100050795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) - A187930 (n + 1) - 1

end

end A073605.P14293569229100050795

/-! ## A073605.P10517450711792139677

`∏[sqrt(A001248(n+1))]-A053664(n+1)`
-/

namespace A073605.P10517450711792139677
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (A053664 (n + 1) : ℝ)

end

end A073605.P10517450711792139677

/-! ## A073605.P16323383445949990497

`∏[p?[A259153(n)]]-A187930(n+1)-1`
-/

namespace A073605.P16323383445949990497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A187930 (n + 1) - 1

end

end A073605.P16323383445949990497

/-!
# A073606: Smaller of two consecutive integers divisible respectively by two consecutive primes.

The programs for A073606, the canonical program `A073606.P10056077290561013336` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073606 has offset 1).

The definition of A073606 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2856 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073606.P10056077290561013336

`lt[1, gcd(n, A064989(n+1))]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A073606

/-- `lt[1, gcd(n, A064989(n+1))]` -/
def P10056077290561013336.Spec : Prop :=
  ∀ n, (P10056077290561013336.a n : ℤ) = A073606 (n + 1)

theorem P10056077290561013336.correct : P10056077290561013336.Spec := by
  intro n
  simp only [A073606, Nat.add_sub_cancel]

end A073606

/-! ## A073606.P597144060756456636

`lt[2, gcd(n+2, A003961(n+1))]+1`
-/

namespace A073606.P597144060756456636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A003961 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A073606.P597144060756456636

namespace A073606

/-- `lt[2, gcd(n+2, A003961(n+1))]+1` -/
def P597144060756456636.Spec : Prop :=
  ∀ n, (P597144060756456636.a n : ℤ) = A073606 (n + 1)

end A073606

/-! ## A073606.P1938277272899364559

`lt[2, gcd(n+1, A253885(abs(1-n))-n)]`
-/

namespace A073606.P1938277272899364559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A253885 |1 - (n : ℤ)|.toNat - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A073606.P1938277272899364559

namespace A073606

/-- `lt[2, gcd(n+1, A253885(abs(1-n))-n)]` -/
def P1938277272899364559.Spec : Prop :=
  ∀ n, (P1938277272899364559.a n : ℤ) = A073606 (n + 1)

end A073606

/-! ## A073606.P15763408455310367366

`lt[1, gcd(n², A349122(2*A003602(n+1)-1))]`
-/

namespace A073606.P15763408455310367366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 : ℤ) (A349122 (2 * A003602 (n + 1) - 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A073606.P15763408455310367366

namespace A073606

/-- `lt[1, gcd(n², A349122(2*A003602(n+1)-1))]` -/
def P15763408455310367366.Spec : Prop :=
  ∀ n, (P15763408455310367366.a n : ℤ) = A073606 (n + 1)

end A073606

/-!
# A073607: Smallest of three consecutive integers divisible by three consecutive primes respectively.

The programs for A073607, there is no canonical definition to state claims against.
-/

/-! ## A073607.P10445172870320181797

`A092998(A344012(n+1))`
-/

namespace A073607.P10445172870320181797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092998 (A344012 (n + 1)).toNat

end

end A073607.P10445172870320181797

/-! ## A073607.P15422439981643888858

`A099389(2*(n+1))+A014963(A099398(2*n))`
-/

namespace A073607.P15422439981643888858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099389 (2 * (n + 1)) + A014963 (A099398 (2 * n)).toNat

end

end A073607.P15422439981643888858

/-! ## A073607.P11072618249608153655

`A106577(A039956(2*(n+1))-A053264(2*(n+2)))`
-/

namespace A073607.P11072618249608153655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106577 (A039956 (2 * (n + 1)) - A053264 (2 * (n + 2))).toNat

end

end A073607.P11072618249608153655

/-!
# A073609: a(0) = 2; a(n) for n > 0 is the smallest prime greater than a(n-1) that differs from a(n-1) by a square.

The programs for A073609, there is no canonical definition to state claims against.
-/

/-! ## A073609.P7907845859478644038

`∑[A249807(n+1)]+1`
-/

namespace A073609.P7907845859478644038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A073609.P7907845859478644038

/-! ## A073609.P17602397519804750941

`a(n-1)+A249807(n+1)%A051797(n)` with `a(0)=2`
-/

namespace A073609.P17602397519804750941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + Int.tmod (A249807 (n + 1)) (A051797 n)

end

end A073609.P17602397519804750941

/-! ## A073609.P12363751410901163139

`a(n-1)+A249807(n+1)+A000007(n+1)` with `a(0)=2`
-/

namespace A073609.P12363751410901163139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A249807 (n + 1) + A000007 (n + 1))

end

end A073609.P12363751410901163139

/-! ## A073609.P4998979879897226998

`A249807(A008621(4*n))+a(n-1)` with `a(0)=2`
-/

namespace A073609.P4998979879897226998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A249807 (A008621 (4 * n)).toNat + a (n - 1)

end

end A073609.P4998979879897226998

/-! ## A073609.P16552696240301491174

`p?[∑[A249807(n)]]`
-/

namespace A073609.P16552696240301491174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249807 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073609.P16552696240301491174

/-! ## A073609.P10440632591932409234

`A151800(∑[A249807(n+1)])`
-/

namespace A073609.P10440632591932409234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A073609.P10440632591932409234

/-! ## A073609.P5012290693228852556

`a(n-1)+A179478(n-1)²` with `a(0)=2`
-/

namespace A073609.P5012290693228852556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + A179478 (n - 1) ^ 2

end

end A073609.P5012290693228852556

/-!
# A073610: Number of primes of the form n-p where p is a prime.

The programs for A073610, there is no canonical definition to state claims against.
-/

/-! ## A073610.P14007600070107179784

`A230980(n)-A062602(n+1)`
-/

namespace A073610.P14007600070107179784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n - A062602 (n + 1)

end

end A073610.P14007600070107179784

/-! ## A073610.P16501807152357471454

`A117929(n+1)+A061358(n+1)`
-/

namespace A073610.P16501807152357471454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117929 (n + 1) + A061358 (n + 1)

end

end A073610.P16501807152357471454

/-! ## A073610.P9245140240836343493

`A098983(n+1)-A282318(n+1)`
-/

namespace A073610.P9245140240836343493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098983 (n + 1) - A282318 (n + 1)

end

end A073610.P9245140240836343493

/-! ## A073610.P14132377618983447334

`A002126(n+1)-2*A010051(n+1)`
-/

namespace A073610.P14132377618983447334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (n + 1) - 2 * A010051 (n + 1)

end

end A073610.P14132377618983447334

/-! ## A073610.P7773726397508701517

`n-(A295630(n+1)+A295629(n+1))`
-/

namespace A073610.P7773726397508701517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A295630 (n + 1) + A295629 (n + 1))

end

end A073610.P7773726397508701517

/-! ## A073610.P12431749542156831832

`A000720(A005171(n+1)+n)-A062602(n+1)`
-/

namespace A073610.P12431749542156831832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A005171 (n + 1) + (n : ℤ)).toNat - A062602 (n + 1)

end

end A073610.P12431749542156831832

/-! ## A073610.P5867349422862203772

`A061358(n+1)+A004526(n)-A295630(n+1)`
-/

namespace A073610.P5867349422862203772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (n + 1) + (A004526 n - A295630 (n + 1))

end

end A073610.P5867349422862203772

/-! ## A073610.P9640632686548893217

`A000720(n+1)-(A062602(n+1)+A010051(n+1))`
-/

namespace A073610.P9640632686548893217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - (A062602 (n + 1) + A010051 (n + 1))

end

end A073610.P9640632686548893217

/-! ## A073610.P12067962064958300243

`A098983(n+1)+A089263(2*n+1)*A282318(n+1)`
-/

namespace A073610.P12067962064958300243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098983 (n + 1) + A089263 (2 * n + 1) * A282318 (n + 1)

end

end A073610.P12067962064958300243

/-! ## A073610.P10530756768775448602

`A062602(A101300(n)+2)-A062602(n+1)`
-/

namespace A073610.P10530756768775448602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (A101300 n + 2).toNat - A062602 (n + 1)

end

end A073610.P10530756768775448602

/-!
# A073611: Smallest m such that there are n primes of the form m-p where p is a prime. Index of the first occurrence of n in A073610.

The programs for A073611, there is no canonical definition to state claims against.
-/

/-! ## A073611.P4140035399950971653

`A298990(n)+A298990(n)%A050067(n+1)`
-/

namespace A073611.P4140035399950971653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298990 n + Int.tmod (A298990 n) (A050067 (n + 1))

end

end A073611.P4140035399950971653

/-! ## A073611.P15020217384674713429

`eq[A028234(3*n+1), A065120(A001157(2*(n+2)))]`
-/

namespace A073611.P15020217384674713429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (A001157 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073611.P15020217384674713429

/-!
# A073612: Group the positive integers as (1, 2), (3, 4, 5), (6, 7, 8, 9, 10), (11, 12, 13, 14, 15, 16, 17), ... the n-th group containing prime(n) elements. Except the first, all groups contain an odd number of elements and hence have a middle term. Sequence gives the middle terms starting from group 2.

The programs for A073612, the canonical program `A073612.P11465339140112871520` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073612 has offset 2).

The definition of A073612 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061802, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A073612.P11465339140112871520

`(A061802(n+1)+1)/2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A073612

/-- `(A061802(n+1)+1)/2` -/
def P11465339140112871520.Spec : Prop :=
  ∀ n, P11465339140112871520.a n = (A073612 (n + 2) : ℚ)

end A073612

/-! ## A073612.P3552072775018829820

`A007504(n+2)-(A000040(n+2)-1)/2`
-/

namespace A073612.P3552072775018829820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 2) : ℚ) - (A000040 (n + 2) - 1 : ℚ) / 2

end

end A073612.P3552072775018829820

namespace A073612

/-- `A007504(n+2)-(A000040(n+2)-1)/2` -/
def P3552072775018829820.Spec : Prop :=
  ∀ n, P3552072775018829820.a n = (A073612 (n + 2) : ℚ)

end A073612

/-! ## A073612.P9346313394459791618

`∑[p?[abs(2*n-3)]+1]+(p?[2*n+1]-3)/2-n`
-/

namespace A073612.P9346313394459791618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - 3|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) + (((f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 3 : ℚ) / 2 - (n : ℚ))

end

end A073612.P9346313394459791618

namespace A073612

/-- `∑[p?[abs(2*n-3)]+1]+(p?[2*n+1]-3)/2-n` -/
def P9346313394459791618.Spec : Prop :=
  ∀ n, P9346313394459791618.a n = (A073612 (n + 2) : ℚ)

end A073612

/-! ## A073612.P9747951233671728940

`(p?[2*n+1]+3)/2+∑[p?[2*n+1]]+1-p?[2*n+1]`
-/

namespace A073612.P9747951233671728940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 3 : ℚ) / 2 + (((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ) - (f4 (SequenceMachineLib.nth (fun j => (f4 j).Prime) n) : ℤ) : ℚ)

end

end A073612.P9747951233671728940

namespace A073612

/-- `(p?[2*n+1]+3)/2+∑[p?[2*n+1]]+1-p?[2*n+1]` -/
def P9747951233671728940.Spec : Prop :=
  ∀ n, P9747951233671728940.a n = (A073612 (n + 2) : ℚ)

end A073612

/-! ## A073612.P11690491465680405591

`ceil(A061802(n+1)/2)`
-/

namespace A073612.P11690491465680405591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A061802 (n + 1) : ℚ) / 2⌉

end

end A073612.P11690491465680405591

namespace A073612

/-- `ceil(A061802(n+1)/2)` -/
def P11690491465680405591.Spec : Prop :=
  ∀ n, P11690491465680405591.a n = A073612 (n + 2)

end A073612

/-! ## A073612.P9973971540198644457

`∑[A162800(n+1)]+2`
-/

namespace A073612.P9973971540198644457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A073612.P9973971540198644457

namespace A073612

/-- `∑[A162800(n+1)]+2` -/
def P9973971540198644457.Spec : Prop :=
  ∀ n, P9973971540198644457.a n = A073612 (n + 2)

end A073612

/-! ## A073612.P6912870193624160984

`∑[A162735(n+1)]+3`
-/

namespace A073612.P6912870193624160984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A073612.P6912870193624160984

namespace A073612

/-- `∑[A162735(n+1)]+3` -/
def P6912870193624160984.Spec : Prop :=
  ∀ n, P6912870193624160984.a n = A073612 (n + 2)

end A073612

/-! ## A073612.P12554308770756016898

`(A102724(n+1)+3)/2`
-/

namespace A073612.P12554308770756016898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102724 (n + 1) + 3 : ℚ) / 2

end

end A073612.P12554308770756016898

namespace A073612

/-- `(A102724(n+1)+3)/2` -/
def P12554308770756016898.Spec : Prop :=
  ∀ n, P12554308770756016898.a n = (A073612 (n + 2) : ℚ)

end A073612

/-! ## A073612.P2241596884387853394

`A024675(n)+a(n-1)` with `a(0)=4`
-/

namespace A073612.P2241596884387853394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A024675 n + a (n - 1)

end

end A073612.P2241596884387853394

namespace A073612

/-- `A024675(n)+a(n-1)` -/
def P2241596884387853394.Spec : Prop :=
  ∀ n, P2241596884387853394.a n = A073612 (n + 2)

end A073612

/-! ## A073612.P17901993385571374976

`∑[sqrt(A076621(n+1))]+1`
-/

namespace A073612.P17901993385571374976
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A076621 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A073612.P17901993385571374976

namespace A073612

/-- `∑[sqrt(A076621(n+1))]+1` -/
def P17901993385571374976.Spec : Prop :=
  ∀ n, P17901993385571374976.a n = (A073612 (n + 2) : ℝ)

end A073612

/-! ## A073612.P16222889522992633927

`∑[∑[A162345(n+1)]]+2`
-/

namespace A073612.P16222889522992633927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A073612.P16222889522992633927

namespace A073612

/-- `∑[∑[A162345(n+1)]]+2` -/
def P16222889522992633927.Spec : Prop :=
  ∀ n, P16222889522992633927.a n = A073612 (n + 2)

end A073612

/-! ## A073612.P551168244020466813

`(∑[A001043(n+1)]+3)/2`
-/

namespace A073612.P551168244020466813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℤ) : ℚ) / 2

end

end A073612.P551168244020466813

namespace A073612

/-- `(∑[A001043(n+1)]+3)/2` -/
def P551168244020466813.Spec : Prop :=
  ∀ n, P551168244020466813.a n = (A073612 (n + 2) : ℚ)

end A073612

/-! ## A073612.P15290246241100462067

`A283623(n+1)+A007504(n)`
-/

namespace A073612.P15290246241100462067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283623 (n + 1) + A007504 n

end

end A073612.P15290246241100462067

namespace A073612

/-- `A283623(n+1)+A007504(n)` -/
def P15290246241100462067.Spec : Prop :=
  ∀ n, P15290246241100462067.a n = A073612 (n + 2)

end A073612

/-! ## A073612.P6757459237446522015

`A237589(n+1)+A098090(n+1)`
-/

namespace A073612.P6757459237446522015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 1) + A098090 (n + 1)

end

end A073612.P6757459237446522015

namespace A073612

/-- `A237589(n+1)+A098090(n+1)` -/
def P6757459237446522015.Spec : Prop :=
  ∀ n, P6757459237446522015.a n = A073612 (n + 2)

end A073612

/-! ## A073612.P1442500392920121928

`A034956(n+2)/A000040(n+2)`
-/

namespace A073612.P1442500392920121928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034956 (n + 2) : ℚ) / (A000040 (n + 2) : ℚ)

end

end A073612.P1442500392920121928

namespace A073612

/-- `A034956(n+2)/A000040(n+2)` -/
def P1442500392920121928.Spec : Prop :=
  ∀ n, P1442500392920121928.a n = (A073612 (n + 2) : ℚ)

end A073612

/-! ## A073612.P11712318664780613516

`A034956(n+2)/Δ[A007504(n+1)]`
-/

namespace A073612.P11712318664780613516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034956 (n + 2) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A073612.P11712318664780613516

namespace A073612

/-- `A034956(n+2)/Δ[A007504(n+1)]` -/
def P11712318664780613516.Spec : Prop :=
  ∀ n, P11712318664780613516.a n = (A073612 (n + 2) : ℚ)

end A073612

/-! ## A073612.P2855682225617433349

`(A034957(n+2)+A000040(n+2))/A000040(n+2)`
-/

namespace A073612.P2855682225617433349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034957 (n + 2) + A000040 (n + 2) : ℚ) / (A000040 (n + 2) : ℚ)

end

end A073612.P2855682225617433349

namespace A073612

/-- `(A034957(n+2)+A000040(n+2))/A000040(n+2)` -/
def P2855682225617433349.Spec : Prop :=
  ∀ n, P2855682225617433349.a n = (A073612 (n + 2) : ℚ)

end A073612

/-! ## A073612.P551765205559641919

`A034956(n+2)/(A034956(n+2)-A034957(n+2))`
-/

namespace A073612.P551765205559641919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034956 (n + 2) : ℚ) / (A034956 (n + 2) - A034957 (n + 2) : ℚ)

end

end A073612.P551765205559641919

namespace A073612

/-- `A034956(n+2)/(A034956(n+2)-A034957(n+2))` -/
def P551765205559641919.Spec : Prop :=
  ∀ n, P551765205559641919.a n = (A073612 (n + 2) : ℚ)

end A073612

/-! ## A073612.P15002231867811592336

`A034956(n+2)/(A034960(n+2)-A034959(n+2))`
-/

namespace A073612.P15002231867811592336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034956 (n + 2) : ℚ) / (A034960 (n + 2) - A034959 (n + 2) : ℚ)

end

end A073612.P15002231867811592336

namespace A073612

/-- `A034956(n+2)/(A034960(n+2)-A034959(n+2))` -/
def P15002231867811592336.Spec : Prop :=
  ∀ n, P15002231867811592336.a n = (A073612 (n + 2) : ℚ)

end A073612

/-! ## A073612.P10326651563737668862

`A034956(n+2)/Δ[A014284(n+2)]`
-/

namespace A073612.P10326651563737668862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034956 (n + 2) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A073612.P10326651563737668862

namespace A073612

/-- `A034956(n+2)/Δ[A014284(n+2)]` -/
def P10326651563737668862.Spec : Prop :=
  ∀ n, P10326651563737668862.a n = (A073612 (n + 2) : ℚ)

end A073612

/-!
# A073613: Triangular numbers which are the sum of two squares.

The programs for A073613, the canonical program `A073613.P6380677151097810050` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073613 has offset 1).

The definition of A073613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073613.P6380677151097810050

`C(A140612(n+1)+1, 2)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073613

/-- `C(A140612(n+1)+1, 2)` -/
def P6380677151097810050.Spec : Prop :=
  ∀ n, (P6380677151097810050.a n : ℤ) = A073613 (n + 1)

theorem P6380677151097810050.correct : P6380677151097810050.Spec := by
  intro n
  simp only [A073613, Nat.add_sub_cancel]

end A073613

/-! ## A073613.P9750509359861633856

`A000217(A140612(n+1))`
-/

namespace A073613.P9750509359861633856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A140612 (n + 1)).toNat

end

end A073613.P9750509359861633856

namespace A073613

/-- `A000217(A140612(n+1))` -/
def P9750509359861633856.Spec : Prop :=
  ∀ n, P9750509359861633856.a n = A073613 (n + 1)

end A073613

/-! ## A073613.P14879282297905849432

`A000217(∩[A001481(n+1)-1, A001481(n+1)])`
-/

namespace A073613.P14879282297905849432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A073613.P14879282297905849432

namespace A073613

/-- `A000217(∩[A001481(n+1)-1, A001481(n+1)])` -/
def P14879282297905849432.Spec : Prop :=
  ∀ n, P14879282297905849432.a n = A073613 (n + 1)

end A073613

/-! ## A073613.P3804725766646390261

`A161680(A140612(n+1)+1)`
-/

namespace A073613.P3804725766646390261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A140612 (n + 1) + 1).toNat

end

end A073613.P3804725766646390261

namespace A073613

/-- `A161680(A140612(n+1)+1)` -/
def P3804725766646390261.Spec : Prop :=
  ∀ n, P3804725766646390261.a n = A073613 (n + 1)

end A073613

/-! ## A073613.P18282137025416166829

`A000217(eq[A070176(n+1), A070176(n)])`
-/

namespace A073613.P18282137025416166829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A073613.P18282137025416166829

namespace A073613

/-- `A000217(eq[A070176(n+1), A070176(n)])` -/
def P18282137025416166829.Spec : Prop :=
  ∀ n, P18282137025416166829.a n = A073613 (n + 1)

end A073613

/-! ## A073613.P11041349006908978896

`A000124(A140612(n+1))-A050320(A020639(n+1))`
-/

namespace A073613.P11041349006908978896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A140612 (n + 1)).toNat - A050320 (A020639 (n + 1)).toNat

end

end A073613.P11041349006908978896

namespace A073613

/-- `A000124(A140612(n+1))-A050320(A020639(n+1))` -/
def P11041349006908978896.Spec : Prop :=
  ∀ n, P11041349006908978896.a n = A073613 (n + 1)

end A073613

/-! ## A073613.P5644455920639061273

`∩[A304441(n+1), A000217(n)]`
-/

namespace A073613.P5644455920639061273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073613.P5644455920639061273

namespace A073613

/-- `∩[A304441(n+1), A000217(n)]` -/
def P5644455920639061273.Spec : Prop :=
  ∀ n, (P5644455920639061273.a n : ℤ) = A073613 (n + 1)

end A073613

/-! ## A073613.P16422985599273180517

`∩[A304441(n+1), A276914(n)]`
-/

namespace A073613.P16422985599273180517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304441 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276914 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073613.P16422985599273180517

namespace A073613

/-- `∩[A304441(n+1), A276914(n)]` -/
def P16422985599273180517.Spec : Prop :=
  ∀ n, (P16422985599273180517.a n : ℤ) = A073613 (n + 1)

end A073613

/-!
# A073615: Let p(k) denote the k-th prime; a(n) = smallest p(m) > p(n) such that the n-1 differences between [p(n), p(n+1), ..., p(2n-1)] are the same as the n-1 differences between [p(m), p(m+1), ..., p(m+n-1)].

The programs for A073615, there is no canonical definition to state claims against.
-/

/-! ## A073615.P14173646227724636766

`A164022(A026714(n+1)*A236411(n+2))`
-/

namespace A073615.P14173646227724636766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164022 (A026714 (n + 1) * A236411 (n + 2)).toNat

end

end A073615.P14173646227724636766

/-! ## A073615.P32171431836125905

`A164022(A236411(n+2)*A273350(n+2))`
-/

namespace A073615.P32171431836125905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164022 (A236411 (n + 2) * A273350 (n + 2)).toNat

end

end A073615.P32171431836125905

/-! ## A073615.P5619476879761914210

`A164022(lcm(A026714(n+1), A236411(n+2)))`
-/

namespace A073615.P5619476879761914210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164022 (Int.lcm (A026714 (n + 1)) (A236411 (n + 2)))

end

end A073615.P5619476879761914210

/-!
# A073617: Consider Pascal's triangle A007318; a(n) = product of terms at +45 degrees slope with the horizontal.

The programs for A073617, there is no canonical definition to state claims against.
-/

/-! ## A073617.P5637312380535981456

`a(n-2)*A210736(n)` with `a(0)=1, a(1)=1`
-/

namespace A073617.P5637312380535981456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) * A210736 n

end

end A073617.P5637312380535981456

/-! ## A073617.P8322300325629908118

`A182027(n+1)/2*a(n-2)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A073617.P8322300325629908118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  (A182027 (n + 1) : ℚ) / 2 * a (n - 2)

end

end A073617.P8322300325629908118

/-! ## A073617.P16522558333631753628

`∏[A081125(n)/A006882(n)]`
-/

namespace A073617.P16522558333631753628
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081125 n : ℚ) / (A006882 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A073617.P16522558333631753628

/-! ## A073617.P13664914484521920099

`∏[A081125(n)/A230698(∑[n])]`
-/

namespace A073617.P13664914484521920099
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081125 n : ℚ) / (A230698 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A073617.P13664914484521920099

/-! ## A073617.P12006103056011552108

`∏[A081125(n)/(A128882(n)+1)]`
-/

namespace A073617.P12006103056011552108
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081125 n : ℚ) / (A128882 n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A073617.P12006103056011552108

/-!
# A073618: Consider Pascal's triangle A007318; a(n) = LCM of terms at +45 degree slope with the horizontal.

The programs for A073618, the canonical program `A073618.P17699801352293354800` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073618 has offset 0).

The definition of A073618 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073618.P17699801352293354800

`lcm(1-n, lcm(2*a(n-2), a(n-1))/2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A073618

/-- `lcm(1-n, lcm(2*a(n-2), a(n-1))/2)` -/
def P17699801352293354800.Spec : Prop :=
  ∀ n, (P17699801352293354800.a n : ℤ) = A073618 n

theorem P17699801352293354800.correct : P17699801352293354800.Spec := by
  intro n
  simp only [A073618]

end A073618

/-! ## A073618.P4002201848525665225

`A025560(floor(acot(n)+n))`
-/

namespace A073618.P4002201848525665225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025560 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A073618.P4002201848525665225

namespace A073618

/-- `A025560(floor(acot(n)+n))` -/
def P4002201848525665225.Spec : Prop :=
  ∀ n, P4002201848525665225.a n = A073618 n

end A073618

/-! ## A073618.P14895844578280236543

`A025560(round(acot(n)+n))`
-/

namespace A073618.P14895844578280236543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025560 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A073618.P14895844578280236543

namespace A073618

/-- `A025560(round(acot(n)+n))` -/
def P14895844578280236543.Spec : Prop :=
  ∀ n, P14895844578280236543.a n = A073618 n

end A073618

/-! ## A073618.P11306476510677664340

`A025560(n^floor(atan(n)))`
-/

namespace A073618.P11306476510677664340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025560 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A073618.P11306476510677664340

namespace A073618

/-- `A025560(n^floor(atan(n)))` -/
def P11306476510677664340.Spec : Prop :=
  ∀ n, P11306476510677664340.a n = A073618 n

end A073618

/-! ## A073618.P6624998775426627099

`A025560(or(n, floor(acot(n))))`
-/

namespace A073618.P6624998775426627099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025560 (Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A073618.P6624998775426627099

namespace A073618

/-- `A025560(or(n, floor(acot(n))))` -/
def P6624998775426627099.Spec : Prop :=
  ∀ n, P6624998775426627099.a n = A073618 n

end A073618

/-! ## A073618.P15597765914567294709

`A025560(A028310(n))`
-/

namespace A073618.P15597765914567294709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025560 (A028310 n).toNat

end

end A073618.P15597765914567294709

namespace A073618

/-- `A025560(A028310(n))` -/
def P15597765914567294709.Spec : Prop :=
  ∀ n, P15597765914567294709.a n = A073618 n

end A073618

/-! ## A073618.P6207157948250227122

`A025560(A233583(n+1))`
-/

namespace A073618.P6207157948250227122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025560 (A233583 (n + 1)).toNat

end

end A073618.P6207157948250227122

namespace A073618

/-- `A025560(A233583(n+1))` -/
def P6207157948250227122.Spec : Prop :=
  ∀ n, P6207157948250227122.a n = A073618 n

end A073618

/-! ## A073618.P16018314382320343344

`A025560(A123108(2*n))`
-/

namespace A073618.P16018314382320343344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025560 (A123108 (2 * n)).toNat

end

end A073618.P16018314382320343344

namespace A073618

/-- `A025560(A123108(2*n))` -/
def P16018314382320343344.Spec : Prop :=
  ∀ n, P16018314382320343344.a n = A073618 n

end A073618

/-! ## A073618.P1795131425216914378

`A025560(gcd(n, A025560(n+1)))`
-/

namespace A073618.P1795131425216914378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025560 (Int.gcd (n : ℤ) (A025560 (n + 1)))

end

end A073618.P1795131425216914378

namespace A073618

/-- `A025560(gcd(n, A025560(n+1)))` -/
def P1795131425216914378.Spec : Prop :=
  ∀ n, P1795131425216914378.a n = A073618 n

end A073618

/-!
# A073620: a(1) = 0; a(n) = smallest prime number which is a sum of n distinct composite numbers.

The programs for A073620, there is no canonical definition to state claims against.
-/

/-! ## A073620.P13201658544380518649

`∑[A089390(n+1)]%A089404(2*n+3)`
-/

namespace A073620.P13201658544380518649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A089404 (2 * n + 3))

end

end A073620.P13201658544380518649

/-!
# A073621: Smallest composite number which is a sum of n distinct composite numbers.

The programs for A073621, there is no canonical definition to state claims against.
-/

/-! ## A073621.P14109622423171955340

`∑[A068631(n+1)%A369355(n+1)]`
-/

namespace A073621.P14109622423171955340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068631 (n + 1)) (A369355 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073621.P14109622423171955340

/-! ## A073621.P17738369255121561897

`∑[A068631(n+1)]%A240897(n+1)`
-/

namespace A073621.P17738369255121561897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A240897 (n + 1))

end

end A073621.P17738369255121561897

/-! ## A073621.P7255330027680783217

`A056926(∑[A068631(n+1)]²)`
-/

namespace A073621.P7255330027680783217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A073621.P7255330027680783217

/-! ## A073621.P16878234212796937046

`A262689(∑[A068631(n+1)]²)`
-/

namespace A073621.P16878234212796937046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A073621.P16878234212796937046

/-!
# A073627: a(1)=a(2)=1; for n > 2, a(n) is the smallest integer such that a(n) > a(n-1) and a(n)+a(n-1) is prime.

The programs for A073627, the canonical program `A073627.P13490953195107515830` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073627 has offset 1).

The definition of A073627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073627.P13490953195107515830

`A062042(n-a(C(2, n)))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A073627

/-- `A062042(n-a(C(2, n)))` -/
def P13490953195107515830.Spec : Prop :=
  ∀ n, P13490953195107515830.a n = A073627 (n + 1)

theorem P13490953195107515830.correct : P13490953195107515830.Spec := by
  intro n
  simp only [A073627, Nat.add_sub_cancel]

end A073627

/-! ## A073627.P827476403574397811

`A151800(a(n-1)+a(n-1))-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A073627.P827476403574397811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A151800 (a (n - 1) + a (n - 1)).toNat - a (n - 1)

end

end A073627.P827476403574397811

namespace A073627

/-- `A151800(a(n-1)+a(n-1))-a(n-1)` -/
def P827476403574397811.Spec : Prop :=
  ∀ n, P827476403574397811.a n = A073627 (n + 1)

end A073627

/-! ## A073627.P6003713831690715880

`A060266(a(n-1))+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A073627.P6003713831690715880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A060266 (a (n - 1)).toNat + a (n - 1)

end

end A073627.P6003713831690715880

namespace A073627

/-- `A060266(a(n-1))+a(n-1)` -/
def P6003713831690715880.Spec : Prop :=
  ∀ n, P6003713831690715880.a n = A073627 (n + 1)

end A073627

/-! ## A073627.P3336214068205525445

`A060264(a(n-1))-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A073627.P3336214068205525445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A060264 (a (n - 1)).toNat - a (n - 1)

end

end A073627.P3336214068205525445

namespace A073627

/-- `A060264(a(n-1))-a(n-1)` -/
def P3336214068205525445.Spec : Prop :=
  ∀ n, P3336214068205525445.a n = A073627 (n + 1)

end A073627

/-! ## A073627.P10299563966535357333

`A013632(2*a(n-1))+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A073627.P10299563966535357333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A013632 (2 * a (n - 1)).toNat + a (n - 1)

end

end A073627.P10299563966535357333

namespace A073627

/-- `A013632(2*a(n-1))+a(n-1)` -/
def P10299563966535357333.Spec : Prop :=
  ∀ n, P10299563966535357333.a n = A073627 (n + 1)

end A073627

/-! ## A073627.P11331062102090897622

`A007920(2*a(n-1))+a(n-1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A073627.P11331062102090897622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A007920 (2 * a (n - 1)).toNat + a (n - 1)

end

end A073627.P11331062102090897622

namespace A073627

/-- `A007920(2*a(n-1))+a(n-1)` -/
def P11331062102090897622.Spec : Prop :=
  ∀ n, P11331062102090897622.a n = A073627 (n + 1)

end A073627

/-! ## A073627.P16931804569837119076

`A001281(A087030(2*a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A073627.P16931804569837119076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A001281 (A087030 (2 * a (n - 1)).toNat).toNat

end

end A073627.P16931804569837119076

namespace A073627

/-- `A001281(A087030(2*a(n-1)))` -/
def P16931804569837119076.Spec : Prop :=
  ∀ n, P16931804569837119076.a n = A073627 (n + 1)

end A073627

/-! ## A073627.P3623987454512665007

`A004525(A202998(2*a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A073627.P3623987454512665007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A004525 (A202998 (2 * a (n - 1)).toNat).toNat

end

end A073627.P3623987454512665007

namespace A073627

/-- `A004525(A202998(2*a(n-1)))` -/
def P3623987454512665007.Spec : Prop :=
  ∀ n, P3623987454512665007.a n = A073627 (n + 1)

end A073627

/-!
# A073628: a(0) = 0; a(1) = 1; a(2) = 2; a(n) = smallest number greater than the previous term such that the sum of three successive terms is a prime.

The programs for A073628, there is no canonical definition to state claims against.
-/

/-! ## A073628.P11641165346230630506

`lt[A328827(n+1), A329002(n+1)]`
-/

namespace A073628.P11641165346230630506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329002 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A073628.P11641165346230630506

/-! ## A073628.P17351116539098656239

`lt[A304537(A052331(n+4)), A382879(n+5)]`
-/

namespace A073628.P17351116539098656239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304537 (A052331 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382879 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A073628.P17351116539098656239

/-! ## A073628.P8226423747916791886

`record[and(A194487(n+1), A299757(n+1))]`
-/

namespace A073628.P8226423747916791886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A194487 (n + 1)) (A299757 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073628.P8226423747916791886

/-! ## A073628.P9287519232511522930

`A327103(A174615(n))+A191986(n+1)`
-/

namespace A073628.P9287519232511522930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327103 (A174615 n).toNat + A191986 (n + 1)

end

end A073628.P9287519232511522930

/-! ## A073628.P8858771242859711227

`lt[A001511(A074300(n+1)), A375735(n+1)]`
-/

namespace A073628.P8858771242859711227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A074300 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375735 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A073628.P8858771242859711227

/-!
# A073631: Nonprimes k such that k divides 3^(k-1) - 2^(k-1).

The programs for A073631, there is no canonical definition to state claims against.
-/

/-! ## A073631.P9768492949520905822

`and(A343582(3*n), A343600(A343549(n+3)))`
-/

namespace A073631.P9768492949520905822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A343582 (3 * n)) (A343600 (A343549 (n + 3)).toNat)

end

end A073631.P9768492949520905822

/-!
# A073632: Numbers k such that floor((3/2)^k) = A002379(k) is odd.

The programs for A073632, the canonical program `A073632.P11723121080494302604` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073632 has offset 1).

The definition of A073632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073632.P11723121080494302604

`comp[A073634(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073632

/-- `comp[A073634(n+1)]` -/
def P11723121080494302604.Spec : Prop :=
  ∀ n, (P11723121080494302604.a n : ℤ) = A073632 (n + 1)

theorem P11723121080494302604.correct : P11723121080494302604.Spec := by
  intro n
  simp only [A073632, Nat.add_sub_cancel]

end A073632

/-! ## A073632.P10688988220072564621

`eq[1, A072418(A028310(n))]`
-/

namespace A073632.P10688988220072564621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072418 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073632.P10688988220072564621

namespace A073632

/-- `eq[1, A072418(A028310(n))]` -/
def P10688988220072564621.Spec : Prop :=
  ∀ n, (P10688988220072564621.a n : ℤ) = A073632 (n + 1)

end A073632

/-! ## A073632.P10351886406862477666

`eq[1, A072418(A065033(2*n))]`
-/

namespace A073632.P10351886406862477666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072418 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073632.P10351886406862477666

namespace A073632

/-- `eq[1, A072418(A065033(2*n))]` -/
def P10351886406862477666.Spec : Prop :=
  ∀ n, (P10351886406862477666.a n : ℤ) = A073632 (n + 1)

end A073632

/-! ## A073632.P11174734171082531290

`eq[1, A072418(A123108(2*n))]`
-/

namespace A073632.P11174734171082531290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072418 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073632.P11174734171082531290

namespace A073632

/-- `eq[1, A072418(A123108(2*n))]` -/
def P11174734171082531290.Spec : Prop :=
  ∀ n, (P11174734171082531290.a n : ℤ) = A073632 (n + 1)

end A073632

/-! ## A073632.P6872784310729431823

`lt[1, A072418(A065033(2*n))*A245998(n+1)]`
-/

namespace A073632.P6872784310729431823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072418 (A065033 (2 * n)).toNat * A245998 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A073632.P6872784310729431823

namespace A073632

/-- `lt[1, A072418(A065033(2*n))*A245998(n+1)]` -/
def P6872784310729431823.Spec : Prop :=
  ∀ n, (P6872784310729431823.a n : ℤ) = A073632 (n + 1)

end A073632

/-! ## A073632.P18374273823578000494

`eq[1, gcd(2, A002379(n))]`
-/

namespace A073632.P18374273823578000494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A002379 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073632.P18374273823578000494

namespace A073632

/-- `eq[1, gcd(2, A002379(n))]` -/
def P18374273823578000494.Spec : Prop :=
  ∀ n, (P18374273823578000494.a n : ℤ) = A073632 (n + 1)

end A073632

/-! ## A073632.P15592203061700614516

`lt[0, and(3^n, 2^n)]`
-/

namespace A073632.P15592203061700614516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (3 ^ n) (2 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A073632.P15592203061700614516

namespace A073632

/-- `lt[0, and(3^n, 2^n)]` -/
def P15592203061700614516.Spec : Prop :=
  ∀ n, (P15592203061700614516.a n : ℤ) = A073632 (n + 1)

end A073632

/-! ## A073632.P15504665251776565281

`eq[1, gcd(3, and(2^n, 3^n))]`
-/

namespace A073632.P15504665251776565281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (Nat.land (2 ^ n) (3 ^ n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073632.P15504665251776565281

namespace A073632

/-- `eq[1, gcd(3, and(2^n, 3^n))]` -/
def P15504665251776565281.Spec : Prop :=
  ∀ n, (P15504665251776565281.a n : ℤ) = A073632 (n + 1)

end A073632

/-!
# A073633: Numbers k that divide floor((3/2)^k) = A002379(k).

The programs for A073633, there is no canonical definition to state claims against.
-/

/-! ## A073633.P5743431489536354396

`eq[n, gcd(n, A002379(n))]`
-/

namespace A073633.P5743431489536354396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A002379 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073633.P5743431489536354396

/-!
# A073634: Numbers k such that floor((3/2)^k) = A002379(k) is even.

The programs for A073634, the canonical program `A073634.P3279946231504670858` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073634 has offset 1).

The definition of A073634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4930 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073634.P5224880415599852383

`comp[A073632(n+1)]`
-/

namespace A073634.P5224880415599852383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A073634.P5224880415599852383

namespace A073634

/-- `comp[A073632(n+1)]` -/
def P5224880415599852383.Spec : Prop :=
  ∀ n, (P5224880415599852383.a n : ℤ) = A073634 (n + 1)

end A073634

/-! ## A073634.P3279946231504670858

`eq[0, A072418(n+2)]+2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A073634

/-- `eq[0, A072418(n+2)]+2` -/
def P3279946231504670858.Spec : Prop :=
  ∀ n, (P3279946231504670858.a n : ℤ) = A073634 (n + 1)

theorem P3279946231504670858.correct : P3279946231504670858.Spec := by
  intro n
  simp only [A073634, Nat.add_sub_cancel]

end A073634

/-! ## A073634.P1120986026603394690

`lt[A072418(n+1), 1]+1`
-/

namespace A073634.P1120986026603394690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072418 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A073634.P1120986026603394690

namespace A073634

/-- `lt[A072418(n+1), 1]+1` -/
def P1120986026603394690.Spec : Prop :=
  ∀ n, (P1120986026603394690.a n : ℤ) = A073634 (n + 1)

end A073634

/-! ## A073634.P3159816427082794898

`eq[1, A072418(A028310(n))+1]`
-/

namespace A073634.P3159816427082794898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072418 (A028310 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073634.P3159816427082794898

namespace A073634

/-- `eq[1, A072418(A028310(n))+1]` -/
def P3159816427082794898.Spec : Prop :=
  ∀ n, (P3159816427082794898.a n : ℤ) = A073634 (n + 1)

end A073634

/-! ## A073634.P12775662922041554513

`eq[0, A072418(A065033(2*n))]`
-/

namespace A073634.P12775662922041554513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072418 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073634.P12775662922041554513

namespace A073634

/-- `eq[0, A072418(A065033(2*n))]` -/
def P12775662922041554513.Spec : Prop :=
  ∀ n, (P12775662922041554513.a n : ℤ) = A073634 (n + 1)

end A073634

/-! ## A073634.P3369290992181657527

`lt[A072418(A065033(2*n))*A121842(n), 1]`
-/

namespace A073634.P3369290992181657527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072418 (A065033 (2 * n)).toNat * A121842 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A073634.P3369290992181657527

namespace A073634

/-- `lt[A072418(A065033(2*n))*A121842(n), 1]` -/
def P3369290992181657527.Spec : Prop :=
  ∀ n, (P3369290992181657527.a n : ℤ) = A073634 (n + 1)

end A073634

/-! ## A073634.P14029599236521704039

`eq[2, gcd(2, A002379(n))]`
-/

namespace A073634.P14029599236521704039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A002379 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073634.P14029599236521704039

namespace A073634

/-- `eq[2, gcd(2, A002379(n))]` -/
def P14029599236521704039.Spec : Prop :=
  ∀ n, (P14029599236521704039.a n : ℤ) = A073634 (n + 1)

end A073634

/-! ## A073634.P13077363598949458592

`A088338(n+2)-1`
-/

namespace A073634.P13077363598949458592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088338 (n + 2) - 1

end

end A073634.P13077363598949458592

namespace A073634

/-- `A088338(n+2)-1` -/
def P13077363598949458592.Spec : Prop :=
  ∀ n, P13077363598949458592.a n = A073634 (n + 1)

end A073634

/-! ## A073634.P878962112968865546

`A023443(A088338(n+2))`
-/

namespace A073634.P878962112968865546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A088338 (n + 2)).toNat

end

end A073634.P878962112968865546

namespace A073634

/-- `A023443(A088338(n+2))` -/
def P878962112968865546.Spec : Prop :=
  ∀ n, P878962112968865546.a n = A073634 (n + 1)

end A073634

/-!
# A073636: Period 3: repeat [1, 8, 9] ; Digital root of A000578(n) = n^3 for n >= 1.

The programs for A073636, the canonical program `A073636.P11307021765142878163` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073636 has offset 1).

The definition of A073636 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A073636.P11307021765142878163

`a(n-3)` with `a(0)=1, a(1)=8, a(2)=9`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A073636

/-- `a(n-3)` -/
def P11307021765142878163.Spec : Prop :=
  ∀ n, (P11307021765142878163.a n : ℤ) = A073636 (n + 1)

theorem P11307021765142878163.correct : P11307021765142878163.Spec := by
  intro n
  simp only [A073636, Nat.add_sub_cancel]

end A073636

/-!
# A073637: Digital root (cf. A010888) of prime(n)^3.

The programs for A073637, the canonical program `A073637.P17344468345420777235` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073637 has offset 1).

The definition of A073637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073637.P374850438944601314

`dr(p?[ceil(2/acot(n))]^3)`
-/

namespace A073637.P374850438944601314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 3)

end

end A073637.P374850438944601314

namespace A073637

/-- `dr(p?[ceil(2/acot(n))]^3)` -/
def P374850438944601314.Spec : Prop :=
  ∀ n, (P374850438944601314.a n : ℤ) = A073637 (n + 1)

end A073637

/-! ## A073637.P17344468345420777235

`dr((4*p?[round(8*n/7)])^3)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A073637

/-- `dr((4*p?[round(8*n/7)])^3)` -/
def P17344468345420777235.Spec : Prop :=
  ∀ n, (P17344468345420777235.a n : ℤ) = A073637 (n + 1)

theorem P17344468345420777235.correct : P17344468345420777235.Spec := by
  intro n
  simp only [A073637, Nat.add_sub_cancel]

end A073637

/-! ## A073637.P3069543972975386746

`dr(Δ[A242188(n)])`
-/

namespace A073637.P3069543972975386746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242188 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A073637.P3069543972975386746

namespace A073637

/-- `dr(Δ[A242188(n)])` -/
def P3069543972975386746.Spec : Prop :=
  ∀ n, (P3069543972975386746.a n : ℤ) = A073637 (n + 1)

end A073637

/-! ## A073637.P3274067946926526637

`dr(A030078(n+1))`
-/

namespace A073637.P3274067946926526637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A030078 (n + 1))

end

end A073637.P3274067946926526637

namespace A073637

/-- `dr(A030078(n+1))` -/
def P3274067946926526637.Spec : Prop :=
  ∀ n, (P3274067946926526637.a n : ℤ) = A073637 (n + 1)

end A073637

/-! ## A073637.P5021977666694248803

`dr(A179665(n+1))`
-/

namespace A073637.P5021977666694248803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A179665 (n + 1))

end

end A073637.P5021977666694248803

namespace A073637

/-- `dr(A179665(n+1))` -/
def P5021977666694248803.Spec : Prop :=
  ∀ n, (P5021977666694248803.a n : ℤ) = A073637 (n + 1)

end A073637

/-! ## A073637.P18260469524550307333

`dr(A235398(n+1))`
-/

namespace A073637.P18260469524550307333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A235398 (n + 1))

end

end A073637.P18260469524550307333

namespace A073637

/-- `dr(A235398(n+1))` -/
def P18260469524550307333.Spec : Prop :=
  ∀ n, (P18260469524550307333.a n : ℤ) = A073637 (n + 1)

end A073637

/-! ## A073637.P4988805361969368740

`dr(sqrt(A030516(n+1)))`
-/

namespace A073637.P4988805361969368740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway (Real.sqrt (A030516 (n + 1) : ℝ)))

end

end A073637.P4988805361969368740

namespace A073637

/-- `dr(sqrt(A030516(n+1)))` -/
def P4988805361969368740.Spec : Prop :=
  ∀ n, (P4988805361969368740.a n : ℤ) = A073637 (n + 1)

end A073637

/-! ## A073637.P9068168848338708559

`dr(A153481(n+1)+2)`
-/

namespace A073637.P9068168848338708559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A153481 (n + 1) + 2)

end

end A073637.P9068168848338708559

namespace A073637

/-- `dr(A153481(n+1)+2)` -/
def P9068168848338708559.Spec : Prop :=
  ∀ n, (P9068168848338708559.a n : ℤ) = A073637 (n + 1)

end A073637

/-! ## A073637.P9773412884136162171

`A073636(A007605(n+1))`
-/

namespace A073637.P9773412884136162171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073636 (A007605 (n + 1)).toNat

end

end A073637.P9773412884136162171

namespace A073637

/-- `A073636(A007605(n+1))` -/
def P9773412884136162171.Spec : Prop :=
  ∀ n, P9773412884136162171.a n = A073637 (n + 1)

end A073637

/-! ## A073637.P18049090841994927059

`A073636(A039710(n+1))`
-/

namespace A073637.P18049090841994927059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073636 (A039710 (n + 1)).toNat

end

end A073637.P18049090841994927059

namespace A073637

/-- `A073636(A039710(n+1))` -/
def P18049090841994927059.Spec : Prop :=
  ∀ n, P18049090841994927059.a n = A073637 (n + 1)

end A073637

/-! ## A073637.P2549977829999743564

`A073636(A039713(n+1))`
-/

namespace A073637.P2549977829999743564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073636 (A039713 (n + 1)).toNat

end

end A073637.P2549977829999743564

namespace A073637

/-- `A073636(A039713(n+1))` -/
def P2549977829999743564.Spec : Prop :=
  ∀ n, P2549977829999743564.a n = A073637 (n + 1)

end A073637

/-! ## A073637.P6487396924774209412

`A073636(A095959(n+1))`
-/

namespace A073637.P6487396924774209412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073636 (A095959 (n + 1)).toNat

end

end A073637.P6487396924774209412

namespace A073637

/-- `A073636(A095959(n+1))` -/
def P6487396924774209412.Spec : Prop :=
  ∀ n, P6487396924774209412.a n = A073637 (n + 1)

end A073637

/-! ## A073637.P11099425995656475910

`dr(A000040(n+1)²*A000040(n+1))`
-/

namespace A073637.P11099425995656475910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000040 (n + 1) ^ 2 * A000040 (n + 1))

end

end A073637.P11099425995656475910

namespace A073637

/-- `dr(A000040(n+1)²*A000040(n+1))` -/
def P11099425995656475910.Spec : Prop :=
  ∀ n, (P11099425995656475910.a n : ℤ) = A073637 (n + 1)

end A073637

/-! ## A073637.P2131090620302371984

`dr(A004087(n+1)²*A004087(n+1))`
-/

namespace A073637.P2131090620302371984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A004087 (n + 1) ^ 2 * A004087 (n + 1))

end

end A073637.P2131090620302371984

namespace A073637

/-- `dr(A004087(n+1)²*A004087(n+1))` -/
def P2131090620302371984.Spec : Prop :=
  ∀ n, (P2131090620302371984.a n : ℤ) = A073637 (n + 1)

end A073637

/-! ## A073637.P13361295498974813181

`dr(A028905(n+1)²*A028905(n+1))`
-/

namespace A073637.P13361295498974813181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A028905 (n + 1) ^ 2 * A028905 (n + 1))

end

end A073637.P13361295498974813181

namespace A073637

/-- `dr(A028905(n+1)²*A028905(n+1))` -/
def P13361295498974813181.Spec : Prop :=
  ∀ n, (P13361295498974813181.a n : ℤ) = A073637 (n + 1)

end A073637

/-! ## A073637.P205993480177662106

`dr(A028906(n+1)²*A028906(n+1))`
-/

namespace A073637.P205993480177662106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A028906 (n + 1) ^ 2 * A028906 (n + 1))

end

end A073637.P205993480177662106

namespace A073637

/-- `dr(A028906(n+1)²*A028906(n+1))` -/
def P205993480177662106.Spec : Prop :=
  ∀ n, (P205993480177662106.a n : ℤ) = A073637 (n + 1)

end A073637

/-! ## A073637.P916147711407979025

`dr(A038194(n+1)²*A038194(n+1))`
-/

namespace A073637.P916147711407979025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A038194 (n + 1) ^ 2 * A038194 (n + 1))

end

end A073637.P916147711407979025

namespace A073637

/-- `dr(A038194(n+1)²*A038194(n+1))` -/
def P916147711407979025.Spec : Prop :=
  ∀ n, (P916147711407979025.a n : ℤ) = A073637 (n + 1)

end A073637

/-! ## A073637.P471937015159625764

`dr(A039704(n+1)²*A039704(n+1))`
-/

namespace A073637.P471937015159625764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A039704 (n + 1) ^ 2 * A039704 (n + 1))

end

end A073637.P471937015159625764

namespace A073637

/-- `dr(A039704(n+1)²*A039704(n+1))` -/
def P471937015159625764.Spec : Prop :=
  ∀ n, (P471937015159625764.a n : ℤ) = A073637 (n + 1)

end A073637

/-! ## A073637.P6678202306955093149

`dr(A137521(n+1)²*A137521(n+1))`
-/

namespace A073637.P6678202306955093149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A137521 (n + 1) ^ 2 * A137521 (n + 1))

end

end A073637.P6678202306955093149

namespace A073637

/-- `dr(A137521(n+1)²*A137521(n+1))` -/
def P6678202306955093149.Spec : Prop :=
  ∀ n, (P6678202306955093149.a n : ℤ) = A073637 (n + 1)

end A073637

/-! ## A073637.P1705502683642199839

`dr(A140353(n+1)²*A140353(n+1))`
-/

namespace A073637.P1705502683642199839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A140353 (n + 1) ^ 2 * A140353 (n + 1))

end

end A073637.P1705502683642199839

namespace A073637

/-- `dr(A140353(n+1)²*A140353(n+1))` -/
def P1705502683642199839.Spec : Prop :=
  ∀ n, (P1705502683642199839.a n : ℤ) = A073637 (n + 1)

end A073637

/-!
# A073638: Number of anti-divisors of n (A066272) sets a record.

The programs for A073638, there is no canonical definition to state claims against.
-/

/-! ## A073638.P10642222188980738094

`A066464(record[A066272(n+1)])`
-/

namespace A073638.P10642222188980738094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066464 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073638.P10642222188980738094

/-! ## A073638.P17788453536323797135

`A066464(record[A242029(n+1)+A111775(n+1)])`
-/

namespace A073638.P17788453536323797135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242029 (n + 1) + A111775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066464 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073638.P17788453536323797135

/-! ## A073638.P7880326868457550635

`A066464(record[A214270(n+1)+1-A001227(n+1)])`
-/

namespace A073638.P7880326868457550635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214270 (n + 1) + (1 - A001227 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066464 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073638.P7880326868457550635

/-! ## A073638.P4758715816563206440

`A066464(record[A214270(n+1)-A111775(2*(n+1))])`
-/

namespace A073638.P4758715816563206440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214270 (n + 1) - A111775 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066464 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073638.P4758715816563206440

/-! ## A073638.P12755246552863378442

`A066464(record[A111775(2*n+1)+A111775(2*(n+1))+A111775(2*n+3)])`
-/

namespace A073638.P12755246552863378442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111775 (2 * n + 1) + (A111775 (2 * (n + 1)) + A111775 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066464 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073638.P12755246552863378442

/-!
# A073639: Numbers k such that x^k + x + 1 is a primitive polynomial modulo 2.

The programs for A073639, there is no canonical definition to state claims against.
-/

/-! ## A073639.P2900654438181277199

`eq[3, A132448(n+1)]+1`
-/

namespace A073639.P2900654438181277199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132448 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A073639.P2900654438181277199

/-! ## A073639.P14329896319500848971

`eq[3, A132448(A028310(n))]`
-/

namespace A073639.P14329896319500848971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132448 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073639.P14329896319500848971

/-! ## A073639.P14979497616971939381

`A020725(eq[3, A132448(n+1)])`
-/

namespace A073639.P14979497616971939381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073639.P14979497616971939381

/-! ## A073639.P5043050011435754362

`record[A073726(n+1)/A074744(n+1)]`
-/

namespace A073639.P5043050011435754362
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073726 (n + 1) : ℚ) / (A074744 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073639.P5043050011435754362

/-! ## A073639.P17534347050759834634

`record[A194125(n+1)/A074744(n+1)]`
-/

namespace A073639.P17534347050759834634
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194125 (n + 1) : ℚ) / (A074744 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073639.P17534347050759834634

/-!
# A073640: a(1) = 2; a(n) = smallest prime greater than the previous term such that concatenation of two successive terms is a prime.

The programs for A073640, there is no canonical definition to state claims against.
-/

/-! ## A073640.P9853983042134000219

`A000040(A080152(n+1))`
-/

namespace A073640.P9853983042134000219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A080152 (n + 1)).toNat

end

end A073640.P9853983042134000219

/-! ## A073640.P298349681804713869

`A008578(A080152(n+1)+1)`
-/

namespace A073640.P298349681804713869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A080152 (n + 1) + 1).toNat

end

end A073640.P298349681804713869

/-! ## A073640.P1007142289209641953

`A182986(A080152(n+1)+1)`
-/

namespace A073640.P1007142289209641953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A080152 (n + 1) + 1).toNat

end

end A073640.P1007142289209641953

/-! ## A073640.P18399890785395016319

`A158611(A080152(n+1)+2)`
-/

namespace A073640.P18399890785395016319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A080152 (n + 1) + 2).toNat

end

end A073640.P18399890785395016319

/-! ## A073640.P10221580371621153849

`A006005(A080152(n+1))+A000007(n)`
-/

namespace A073640.P10221580371621153849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A080152 (n + 1)).toNat + A000007 n

end

end A073640.P10221580371621153849

/-! ## A073640.P5208787456176000830

`A006093(A080152(n+1))+A000108(C(2, n+2))`
-/

namespace A073640.P5208787456176000830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A080152 (n + 1)).toNat + A000108 (Nat.choose 2 (n + 2))

end

end A073640.P5208787456176000830

/-! ## A073640.P4886407111493149423

`A006093(A080152(n+1))+A018252(gcd(n, n+1))`
-/

namespace A073640.P4886407111493149423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A080152 (n + 1)).toNat + A018252 (Nat.gcd n (n + 1))

end

end A073640.P4886407111493149423

/-! ## A073640.P11965607791478843184

`A006005(A080152(n+1))*A014963(A017089(n))`
-/

namespace A073640.P11965607791478843184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A080152 (n + 1)).toNat * A014963 (A017089 n).toNat

end

end A073640.P11965607791478843184

/-! ## A073640.P16208693456543936846

`A073846(2*A080152(n+1))`
-/

namespace A073640.P16208693456543936846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A080152 (n + 1)).toNat

end

end A073640.P16208693456543936846

/-!
# A073641: a(1) = 2; a(n) = smallest prime not included earlier such that concatenation of two successive terms is a prime.

The programs for A073641, there is no canonical definition to state claims against.
-/

/-! ## A073641.P7003001926924947501

`floor(A075609(n+1)+acot(n))`
-/

namespace A073641.P7003001926924947501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A075609 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A073641.P7003001926924947501

/-! ## A073641.P14840793024282182701

`A075609(n%a(n-1)+1)` with `a(0)=2`
-/

namespace A073641.P14840793024282182701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A075609 (Int.tmod (n : ℤ) (a (n - 1)) + 1).toNat

end

end A073641.P14840793024282182701

/-! ## A073641.P6703705785714357717

`A075609(n+1)+A000007(n)`
-/

namespace A073641.P6703705785714357717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075609 (n + 1) + A000007 n

end

end A073641.P6703705785714357717

/-! ## A073641.P12244010597107392749

`A054977(n)*A075609(n+1)`
-/

namespace A073641.P12244010597107392749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A075609 (n + 1)

end

end A073641.P12244010597107392749

/-! ## A073641.P12589462034747156743

`A151800(A075609(n+1)-1)`
-/

namespace A073641.P12589462034747156743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A075609 (n + 1) - 1).toNat

end

end A073641.P12589462034747156743

/-! ## A073641.P16748324916075760972

`A006530(2*A075609(n+1))`
-/

namespace A073641.P16748324916075760972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A075609 (n + 1)).toNat

end

end A073641.P16748324916075760972

/-! ## A073641.P8909245566710710926

`A006530(lcm(2, A075609(n+1)))`
-/

namespace A073641.P8909245566710710926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (A075609 (n + 1)))

end

end A073641.P8909245566710710926

/-! ## A073641.P11891780733319555710

`A007918(A075609(n+1))`
-/

namespace A073641.P11891780733319555710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A075609 (n + 1)).toNat

end

end A073641.P11891780733319555710

/-! ## A073641.P1178559416168922861

`A002034(2*A075609(n+1))`
-/

namespace A073641.P1178559416168922861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (2 * A075609 (n + 1)).toNat

end

end A073641.P1178559416168922861

/-! ## A073641.P14148553601560404385

`A233583(A075609(n+1)+1)`
-/

namespace A073641.P14148553601560404385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A075609 (n + 1) + 1).toNat

end

end A073641.P14148553601560404385

/-!
# A073642: Replace 2^k in the binary representation of n with k (i.e., if n = 2^b + 2^c + 2^d + ... then a(n) = b + c + d + ...).

The programs for A073642, the canonical program `A073642.P15123079599203656975` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073642 has offset 0).

The definition of A073642 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A029931, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A073642.P15123079599203656975

`A029931(floor(n/2))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A073642

/-- `A029931(floor(n/2))` -/
def P15123079599203656975.Spec : Prop :=
  ∀ n, P15123079599203656975.a n = A073642 n

theorem P15123079599203656975.correct : P15123079599203656975.Spec := by
  intro n
  simp only [A073642]

end A073642

/-! ## A073642.P10748957459060079780

`a(n-2^floor(log2(n)))+floor(log2(n))` with `a(0)=0`
-/

namespace A073642.P10748957459060079780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 2 ^ Nat.log 2 n) + Nat.log 2 n

end

end A073642.P10748957459060079780

namespace A073642

/-- `a(n-2^floor(log2(n)))+floor(log2(n))` -/
def P10748957459060079780.Spec : Prop :=
  ∀ n, (P10748957459060079780.a n : ℤ) = A073642 n

end A073642

/-! ## A073642.P874677311184311686

`log2(A029930(floor(n/2)))`
-/

namespace A073642.P874677311184311686
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A029930 ⌊(n : ℚ) / 2⌋.toNat : ℝ)

end

end A073642.P874677311184311686

namespace A073642

/-- `log2(A029930(floor(n/2)))` -/
def P874677311184311686.Spec : Prop :=
  ∀ n, P874677311184311686.a n = (A073642 n : ℝ)

end A073642

/-! ## A073642.P10181189557828195196

`a(and(n, n-1))+1-A088705(n)` with `a(0)=0`
-/

namespace A073642.P10181189557828195196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1 - A088705 n

end

end A073642.P10181189557828195196

namespace A073642

/-- `a(and(n, n-1))+1-A088705(n)` -/
def P10181189557828195196.Spec : Prop :=
  ∀ n, P10181189557828195196.a n = A073642 n

end A073642

/-! ## A073642.P878666345356780934

`A029931(ceil(abs((1-n)/2)))%or(1, n)`
-/

namespace A073642.P878666345356780934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029931 ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉.toNat) (Nat.lor 1 n : ℤ)

end

end A073642.P878666345356780934

namespace A073642

/-- `A029931(ceil(abs((1-n)/2)))%or(1, n)` -/
def P878666345356780934.Spec : Prop :=
  ∀ n, P878666345356780934.a n = A073642 n

end A073642

/-! ## A073642.P10483535094789212933

`A000120(floor(n/2))+a(floor(n/2))` with `a(0)=0`
-/

namespace A073642.P10483535094789212933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000120 ⌊(n : ℚ) / 2⌋.toNat + a ⌊(n : ℚ) / 2⌋.toNat

end

end A073642.P10483535094789212933

namespace A073642

/-- `A000120(floor(n/2))+a(floor(n/2))` -/
def P10483535094789212933.Spec : Prop :=
  ∀ n, P10483535094789212933.a n = A073642 n

end A073642

/-! ## A073642.P15621890901517101536

`A124757(n)+A080791(n)`
-/

namespace A073642.P15621890901517101536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 n + A080791 n

end

end A073642.P15621890901517101536

namespace A073642

/-- `A124757(n)+A080791(n)` -/
def P15621890901517101536.Spec : Prop :=
  ∀ n, P15621890901517101536.a n = A073642 n

end A073642

/-! ## A073642.P13350267055853315383

`A029931(n)-A000120(n)`
-/

namespace A073642.P13350267055853315383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n - A000120 n

end

end A073642.P13350267055853315383

namespace A073642

/-- `A029931(n)-A000120(n)` -/
def P13350267055853315383.Spec : Prop :=
  ∀ n, P13350267055853315383.a n = A073642 n

end A073642

/-! ## A073642.P17156651062263117908

`A245788(n)-A198192(n)`
-/

namespace A073642.P17156651062263117908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245788 n - A198192 n

end

end A073642.P17156651062263117908

namespace A073642

/-- `A245788(n)-A198192(n)` -/
def P17156651062263117908.Spec : Prop :=
  ∀ n, P17156651062263117908.a n = A073642 n

end A073642

/-! ## A073642.P6605126757871828522

`A011371(n)+A029931(n)-n`
-/

namespace A073642.P6605126757871828522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n + (A029931 n - (n : ℤ))

end

end A073642.P6605126757871828522

namespace A073642

/-- `A011371(n)+A029931(n)-n` -/
def P6605126757871828522.Spec : Prop :=
  ∀ n, P6605126757871828522.a n = A073642 n

end A073642

/-! ## A073642.P8061221690044375259

`n*A000120(n)-A198192(n)`
-/

namespace A073642.P8061221690044375259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000120 n - A198192 n

end

end A073642.P8061221690044375259

namespace A073642

/-- `n*A000120(n)-A198192(n)` -/
def P8061221690044375259.Spec : Prop :=
  ∀ n, P8061221690044375259.a n = A073642 n

theorem P8061221690044375259.correct : P8061221690044375259.Spec := by
  intro n
  simp only [A073642, Nat.add_sub_cancel, A073642.P8061221690044375259.a, A073642.P15123079599203656975.a, A000120, A000120.P2816527436160941581.a, A029931, A029931.P9873769426762813119.a, A198192, A198192.P297267374256015153.a, A005187, A005187.P3874015513960485494.a, A029930, A029930.P3707852897458008637.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073642

/-! ## A073642.P15989131945704833694

`log2(A029930(n))-(2*n-A005187(n))`
-/

namespace A073642.P15989131945704833694
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A029930 n : ℝ) - ((2 * n : ℤ) - A005187 n : ℝ)

end

end A073642.P15989131945704833694

namespace A073642

/-- `log2(A029930(n))-(2*n-A005187(n))` -/
def P15989131945704833694.Spec : Prop :=
  ∀ n, P15989131945704833694.a n = (A073642 n : ℝ)

end A073642

/-! ## A073642.P3460095559593933173

`A000523(n)+a(n-2^A000523(n))` with `a(0)=0`
-/

namespace A073642.P3460095559593933173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000523 n + a (SequenceMachineLib.roundAway ((n : ℚ) - (2 : ℚ) ^ (A000523 n : ℤ))).toNat

end

end A073642.P3460095559593933173

namespace A073642

/-- `A000523(n)+a(n-2^A000523(n))` -/
def P3460095559593933173.Spec : Prop :=
  ∀ n, P3460095559593933173.a n = A073642 n

end A073642

/-! ## A073642.P10658570932352295928

`A029931(n)+1-A029931(A001316(n))`
-/

namespace A073642.P10658570932352295928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n + (1 - A029931 (A001316 n).toNat)

end

end A073642.P10658570932352295928

namespace A073642

/-- `A029931(n)+1-A029931(A001316(n))` -/
def P10658570932352295928.Spec : Prop :=
  ∀ n, P10658570932352295928.a n = A073642 n

end A073642

/-! ## A073642.P1041053302499011763

`A280700(n)+A283981(n)-A000120(n)`
-/

namespace A073642.P1041053302499011763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280700 n + (A283981 n - A000120 n)

end

end A073642.P1041053302499011763

namespace A073642

/-- `A280700(n)+A283981(n)-A000120(n)` -/
def P1041053302499011763.Spec : Prop :=
  ∀ n, P1041053302499011763.a n = A073642 n

end A073642

/-! ## A073642.P1083434715689570762

`A000217(A000120(n))+A055941(n)-A000120(n)`
-/

namespace A073642.P1083434715689570762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000120 n).toNat + (A055941 n - A000120 n)

end

end A073642.P1083434715689570762

namespace A073642

/-- `A000217(A000120(n))+A055941(n)-A000120(n)` -/
def P1083434715689570762.Spec : Prop :=
  ∀ n, P1083434715689570762.a n = A073642 n

end A073642

/-! ## A073642.P17144586543363246707

`A197354(n)-A029931(n)`
-/

namespace A073642.P17144586543363246707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197354 n - A029931 n

end

end A073642.P17144586543363246707

namespace A073642

/-- `A197354(n)-A029931(n)` -/
def P17144586543363246707.Spec : Prop :=
  ∀ n, P17144586543363246707.a n = A073642 n

end A073642

/-! ## A073642.P5452352081744603343

`A231204(n)-A359495(n)`
-/

namespace A073642.P5452352081744603343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 n - A359495 n

end

end A073642.P5452352081744603343

namespace A073642

/-- `A231204(n)-A359495(n)` -/
def P5452352081744603343.Spec : Prop :=
  ∀ n, P5452352081744603343.a n = A073642 n

end A073642

/-! ## A073642.P9823529756821495493

`A029931(n)+A231204(n)-A230877(n)`
-/

namespace A073642.P9823529756821495493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n + (A231204 n - A230877 n)

end

end A073642.P9823529756821495493

namespace A073642

/-- `A029931(n)+A231204(n)-A230877(n)` -/
def P9823529756821495493.Spec : Prop :=
  ∀ n, P9823529756821495493.a n = A073642 n

end A073642

/-! ## A073642.P15470662681558739692

`log2(A029930(n))-A324467(n)/3`
-/

namespace A073642.P15470662681558739692
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A029930 n : ℝ) - ((A324467 n : ℚ) / 3 : ℝ)

end

end A073642.P15470662681558739692

namespace A073642

/-- `log2(A029930(n))-A324467(n)/3` -/
def P15470662681558739692.Spec : Prop :=
  ∀ n, P15470662681558739692.a n = (A073642 n : ℝ)

end A073642

/-!
# A073644: Largest k such that the harmonic mean of phi(n), phi(n+1), ...., phi(n+x) is an integer for any x with 0<=x<=k.

The programs for A073644, there is no canonical definition to state claims against.
-/

/-! ## A073644.P10697530766272462526

`val(A000217(A295678(n)+7), 4)`
-/

namespace A073644.P10697530766272462526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000217 (A295678 n + 7).toNat).toNat 4

end

end A073644.P10697530766272462526

/-! ## A073644.P5519724382017096680

`A083891(A157727(n)-A103609(n))`
-/

namespace A073644.P5519724382017096680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083891 (A157727 n - A103609 n).toNat

end

end A073644.P5519724382017096680

/-! ## A073644.P8486946080919120464

`A155839(n)%A001221(A258894(n+1))`
-/

namespace A073644.P8486946080919120464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155839 n) (A001221 (A258894 (n + 1)).toNat)

end

end A073644.P8486946080919120464

/-! ## A073644.P8568995669244340939

`A056626(A295678(n)+7)`
-/

namespace A073644.P8568995669244340939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056626 (A295678 n + 7).toNat

end

end A073644.P8568995669244340939

/-! ## A073644.P3068900143845990276

`and(A003983(n+1), A087036(A001399(n+1)))`
-/

namespace A073644.P3068900143845990276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003983 (n + 1)) (A087036 (A001399 (n + 1)).toNat)

end

end A073644.P3068900143845990276

/-!
# A073645: a(1)=2 and, for all n>=1, a(n) is the length of the n-th run of increasing consecutive integers with each run after the first starting with 1.

The programs for A073645, the canonical program `A073645.P5920658511944243410` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073645 has offset 1).

The definition of A073645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073645.P5920658511944243410

`a(n-1)*char[∑[A025581(n)]]+1` with `a(0)=2`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A073645

/-- `a(n-1)*char[∑[A025581(n)]]+1` -/
def P5920658511944243410.Spec : Prop :=
  ∀ n, (P5920658511944243410.a n : ℤ) = A073645 (n + 1)

theorem P5920658511944243410.correct : P5920658511944243410.Spec := by
  intro n
  simp only [A073645, Nat.add_sub_cancel]

end A073645

/-! ## A073645.P15460495796307260024

`Δ[comp[A212013(n+1)]]`
-/

namespace A073645.P15460495796307260024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212013 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A073645.P15460495796307260024

namespace A073645

/-- `Δ[comp[A212013(n+1)]]` -/
def P15460495796307260024.Spec : Prop :=
  ∀ n, P15460495796307260024.a n = A073645 (n + 1)

end A073645

/-! ## A073645.P10136011450955295525

`Δ[comp[∑[A004736(n+1)]]]`
-/

namespace A073645.P10136011450955295525
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A073645.P10136011450955295525

namespace A073645

/-- `Δ[comp[∑[A004736(n+1)]]]` -/
def P10136011450955295525.Spec : Prop :=
  ∀ n, P10136011450955295525.a n = A073645 (n + 1)

end A073645

/-! ## A073645.P9333964483579763933

`Δ[comp[∑[A025581(n+1)]]]`
-/

namespace A073645.P9333964483579763933
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A073645.P9333964483579763933

namespace A073645

/-- `Δ[comp[∑[A025581(n+1)]]]` -/
def P9333964483579763933.Spec : Prop :=
  ∀ n, P9333964483579763933.a n = A073645 (n + 1)

end A073645

/-! ## A073645.P18368665813831325712

`Δ[comp[∑[A057555(2*(n+1))]]]`
-/

namespace A073645.P18368665813831325712
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A073645.P18368665813831325712

namespace A073645

/-- `Δ[comp[∑[A057555(2*(n+1))]]]` -/
def P18368665813831325712.Spec : Prop :=
  ∀ n, P18368665813831325712.a n = A073645 (n + 1)

end A073645

/-! ## A073645.P7606263588214866624

`Δ[comp[∑[A057554(2*(n+1))+1]]]`
-/

namespace A073645.P7606263588214866624
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057554 (2 * (n + 1)) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A073645.P7606263588214866624

namespace A073645

/-- `Δ[comp[∑[A057554(2*(n+1))+1]]]` -/
def P7606263588214866624.Spec : Prop :=
  ∀ n, P7606263588214866624.a n = A073645 (n + 1)

end A073645

/-! ## A073645.P17311042821985274733

`A023533(n)+A014709(A087118(n+1))`
-/

namespace A073645.P17311042821985274733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 n + A014709 (A087118 (n + 1)).toNat

end

end A073645.P17311042821985274733

namespace A073645

/-- `A023533(n)+A014709(A087118(n+1))` -/
def P17311042821985274733.Spec : Prop :=
  ∀ n, P17311042821985274733.a n = A073645 (n + 1)

end A073645

/-! ## A073645.P7561309012126267706

`gcd(a(n-1)+1, A007877(A043687(n+1)))` with `a(0)=2`
-/

namespace A073645.P7561309012126267706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.gcd (a (n - 1) + 1 : ℤ) (A007877 (A043687 (n + 1)).toNat)

end

end A073645.P7561309012126267706

namespace A073645

/-- `gcd(a(n-1)+1, A007877(A043687(n+1)))` -/
def P7561309012126267706.Spec : Prop :=
  ∀ n, (P7561309012126267706.a n : ℤ) = A073645 (n + 1)

end A073645

/-!
# A073646: Least number formed by concatenating the prime factors of n in base 10.

The programs for A073646, there is no canonical definition to state claims against.
-/

/-! ## A073646.P8867172813298432121

`A004185(A037276(n+1)%A083617(n+1))`
-/

namespace A073646.P8867172813298432121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (Int.tmod (A037276 (n + 1)) (A083617 (n + 1))).toNat

end

end A073646.P8867172813298432121

/-! ## A073646.P11490308034910735122

`A004185(A084796(n+1)%A083617(n+1))`
-/

namespace A073646.P11490308034910735122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (Int.tmod (A084796 (n + 1)) (A083617 (n + 1))).toNat

end

end A073646.P11490308034910735122

/-! ## A073646.P9280353025893533690

`A004185(A084797(n+1)%A083617(n+1))`
-/

namespace A073646.P9280353025893533690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (Int.tmod (A084797 (n + 1)) (A083617 (n + 1))).toNat

end

end A073646.P9280353025893533690

/-! ## A073646.P10848928253060030999

`A000034((4*n)²)*A004185(A084797(n+1))`
-/

namespace A073646.P10848928253060030999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 ((4 * n) ^ 2) * A004185 (A084797 (n + 1)).toNat

end

end A073646.P10848928253060030999

/-!
# A073648: Middle members of prime triples {p, p+2, p+6}.

The programs for A073648, the canonical program `A073648.P13149246164954547153` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073648 has offset 1).

The definition of A073648 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022004, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A073648.P13149246164954547153

`A022004(n+1)+2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A073648

/-- `A022004(n+1)+2` -/
def P13149246164954547153.Spec : Prop :=
  ∀ n, P13149246164954547153.a n = A073648 (n + 1)

theorem P13149246164954547153.correct : P13149246164954547153.Spec := by
  intro n
  simp only [A073648, Nat.add_sub_cancel]

end A073648

/-! ## A073648.P3778046776112100159

`A098412(n+1)-4`
-/

namespace A073648.P3778046776112100159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098412 (n + 1) - 4

end

end A073648.P3778046776112100159

namespace A073648

/-- `A098412(n+1)-4` -/
def P3778046776112100159.Spec : Prop :=
  ∀ n, P3778046776112100159.a n = A073648 (n + 1)

theorem P3778046776112100159.correct : P3778046776112100159.Spec := by
  intro n
  simp only [A073648, Nat.add_sub_cancel, A073648.P3778046776112100159.a, A073648.P13149246164954547153.a, A022004, A022004.P15960404509347598822.f1, A022004.P15960404509347598822.f2, A022004.P15960404509347598822.a, A098412, A098412.P17347800589930056568.a, A001359, A001359.P8865495035699438537.a, A341357, A341357.P1519009481148112330.f1, A341357.P1519009481148112330.a, A006094, A006094.P10257567645245129766.a, A077800, A077800.P16009445446139691322.a, A212769, A212769.P7578630407448011221.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A096281, A096281.P9870488552655544131.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073648

/-! ## A073648.P12984946198260161891

`floor(A163635(n+1)/3)`
-/

namespace A073648.P12984946198260161891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A163635 (n + 1) : ℚ) / 3⌋

end

end A073648.P12984946198260161891

namespace A073648

/-- `floor(A163635(n+1)/3)` -/
def P12984946198260161891.Spec : Prop :=
  ∀ n, P12984946198260161891.a n = A073648 (n + 1)

end A073648

/-! ## A073648.P3296532892288991740

`(A163635(2*n+1-n)-2)/3`
-/

namespace A073648.P3296532892288991740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163635 ((2 * n : ℤ) + (1 - (n : ℤ))).toNat - 2 : ℚ) / 3

end

end A073648.P3296532892288991740

namespace A073648

/-- `(A163635(2*n+1-n)-2)/3` -/
def P3296532892288991740.Spec : Prop :=
  ∀ n, P3296532892288991740.a n = (A073648 (n + 1) : ℚ)

end A073648

/-! ## A073648.P3921216997574568300

`A005171(A000040(n+1))+(A163635(n+1)-2)/3`
-/

namespace A073648.P3921216997574568300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005171 (A000040 (n + 1)).toNat : ℚ) + (A163635 (n + 1) - 2 : ℚ) / 3

end

end A073648.P3921216997574568300

namespace A073648

/-- `A005171(A000040(n+1))+(A163635(n+1)-2)/3` -/
def P3921216997574568300.Spec : Prop :=
  ∀ n, P3921216997574568300.a n = (A073648 (n + 1) : ℚ)

end A073648

/-! ## A073648.P1694659509005593434

`A005171(A104843(n+1))+(A163635(n+1)-2)/3`
-/

namespace A073648.P1694659509005593434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005171 (A104843 (n + 1)).toNat : ℚ) + (A163635 (n + 1) - 2 : ℚ) / 3

end

end A073648.P1694659509005593434

namespace A073648

/-- `A005171(A104843(n+1))+(A163635(n+1)-2)/3` -/
def P1694659509005593434.Spec : Prop :=
  ∀ n, P1694659509005593434.a n = (A073648 (n + 1) : ℚ)

end A073648

/-! ## A073648.P4607099596900059549

`∩[A098414(n+1), A194581(n+1)]`
-/

namespace A073648.P4607099596900059549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073648.P4607099596900059549

namespace A073648

/-- `∩[A098414(n+1), A194581(n+1)]` -/
def P4607099596900059549.Spec : Prop :=
  ∀ n, (P4607099596900059549.a n : ℤ) = A073648 (n + 1)

end A073648

/-! ## A073648.P9723530736252606026

`∩[A029710(n+1), A098414(n+1)]`
-/

namespace A073648.P9723530736252606026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073648.P9723530736252606026

namespace A073648

/-- `∩[A029710(n+1), A098414(n+1)]` -/
def P9723530736252606026.Spec : Prop :=
  ∀ n, (P9723530736252606026.a n : ℤ) = A073648 (n + 1)

end A073648

/-! ## A073648.P17072494087306145859

`∩[A194581(n+1), A029710(n+1)]`
-/

namespace A073648.P17072494087306145859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194581 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073648.P17072494087306145859

namespace A073648

/-- `∩[A194581(n+1), A029710(n+1)]` -/
def P17072494087306145859.Spec : Prop :=
  ∀ n, (P17072494087306145859.a n : ℤ) = A073648 (n + 1)

end A073648

/-! ## A073648.P8621099343982645420

`∩[A216098(n+1), A029710(n+1)]`
-/

namespace A073648.P8621099343982645420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073648.P8621099343982645420

namespace A073648

/-- `∩[A216098(n+1), A029710(n+1)]` -/
def P8621099343982645420.Spec : Prop :=
  ∀ n, (P8621099343982645420.a n : ℤ) = A073648 (n + 1)

end A073648

/-! ## A073648.P3232234757083263809

`∩[A015913(n+1), A098414(n+1)]`
-/

namespace A073648.P3232234757083263809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073648.P3232234757083263809

namespace A073648

/-- `∩[A015913(n+1), A098414(n+1)]` -/
def P3232234757083263809.Spec : Prop :=
  ∀ n, (P3232234757083263809.a n : ℤ) = A073648 (n + 1)

end A073648

/-! ## A073648.P13286595501343021888

`∩[A006512(n+1), A015913(n+1)]`
-/

namespace A073648.P13286595501343021888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073648.P13286595501343021888

namespace A073648

/-- `∩[A006512(n+1), A015913(n+1)]` -/
def P13286595501343021888.Spec : Prop :=
  ∀ n, (P13286595501343021888.a n : ℤ) = A073648 (n + 1)

end A073648

/-! ## A073648.P15597512605088788823

`∩[A006512(n+1), A029710(n+1)]`
-/

namespace A073648.P15597512605088788823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073648.P15597512605088788823

namespace A073648

/-- `∩[A006512(n+1), A029710(n+1)]` -/
def P15597512605088788823.Spec : Prop :=
  ∀ n, (P15597512605088788823.a n : ℤ) = A073648 (n + 1)

end A073648

/-! ## A073648.P2444201497353927993

`∩[A029710(n+1), A067829(n+1)]`
-/

namespace A073648.P2444201497353927993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073648.P2444201497353927993

namespace A073648

/-- `∩[A029710(n+1), A067829(n+1)]` -/
def P2444201497353927993.Spec : Prop :=
  ∀ n, (P2444201497353927993.a n : ℤ) = A073648 (n + 1)

end A073648

/-! ## A073648.P7608242819986578838

`∩[A006512(n+1), A098414(n+1)]`
-/

namespace A073648.P7608242819986578838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073648.P7608242819986578838

namespace A073648

/-- `∩[A006512(n+1), A098414(n+1)]` -/
def P7608242819986578838.Spec : Prop :=
  ∀ n, (P7608242819986578838.a n : ℤ) = A073648 (n + 1)

end A073648

/-! ## A073648.P1493237378556206279

`∩[A067829(n+1), A098414(n+1)]`
-/

namespace A073648.P1493237378556206279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073648.P1493237378556206279

namespace A073648

/-- `∩[A067829(n+1), A098414(n+1)]` -/
def P1493237378556206279.Spec : Prop :=
  ∀ n, (P1493237378556206279.a n : ℤ) = A073648 (n + 1)

end A073648

/-! ## A073648.P10743474243164230587

`∩[A006512(n+1), A172238(n+1)]`
-/

namespace A073648.P10743474243164230587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073648.P10743474243164230587

namespace A073648

/-- `∩[A006512(n+1), A172238(n+1)]` -/
def P10743474243164230587.Spec : Prop :=
  ∀ n, (P10743474243164230587.a n : ℤ) = A073648 (n + 1)

end A073648

/-! ## A073648.P3116184038533876439

`∩[A015913(n+1), A172057(n+1)]`
-/

namespace A073648.P3116184038533876439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073648.P3116184038533876439

namespace A073648

/-- `∩[A015913(n+1), A172057(n+1)]` -/
def P3116184038533876439.Spec : Prop :=
  ∀ n, (P3116184038533876439.a n : ℤ) = A073648 (n + 1)

end A073648

/-! ## A073648.P4066724311392690446

`∩[A006512(n+1), A194581(n+1)]`
-/

namespace A073648.P4066724311392690446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073648.P4066724311392690446

namespace A073648

/-- `∩[A006512(n+1), A194581(n+1)]` -/
def P4066724311392690446.Spec : Prop :=
  ∀ n, (P4066724311392690446.a n : ℤ) = A073648 (n + 1)

end A073648

/-! ## A073648.P14153467380461381393

`∩[A029710(n+1), A172057(n+1)]`
-/

namespace A073648.P14153467380461381393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073648.P14153467380461381393

namespace A073648

/-- `∩[A029710(n+1), A172057(n+1)]` -/
def P14153467380461381393.Spec : Prop :=
  ∀ n, (P14153467380461381393.a n : ℤ) = A073648 (n + 1)

end A073648

/-!
# A073649: Define the composite field of a prime q to be f(q) = (t,s) if p, q, r are three consecutive primes and q-p = t and r-q = s. This is a sequence of primes q with field (4,2).

The programs for A073649, there is no canonical definition to state claims against.
-/

/-! ## A073649.P3463472106180756922

`A098413(n+1)-2`
-/

namespace A073649.P3463472106180756922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098413 (n + 1) - 2

end

end A073649.P3463472106180756922

/-! ## A073649.P11936817440961652875

`A144840(n+1)+3`
-/

namespace A073649.P11936817440961652875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144840 (n + 1) + 3

end

end A073649.P11936817440961652875

/-! ## A073649.P12951934269246145679

`A022005(n+1)+4`
-/

namespace A073649.P12951934269246145679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022005 (n + 1) + 4

end

end A073649.P12951934269246145679

/-! ## A073649.P9154533659790649226

`3*A062767(n+1)+5`
-/

namespace A073649.P9154533659790649226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A062767 (n + 1) + 5

end

end A073649.P9154533659790649226

/-! ## A073649.P427119378597141097

`3*2*A215918(n+1)+5`
-/

namespace A073649.P427119378597141097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (2 * A215918 (n + 1)) + 5

end

end A073649.P427119378597141097

/-! ## A073649.P6524493863393201792

`∩[A001359(n+1), A098414(n+1)]`
-/

namespace A073649.P6524493863393201792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073649.P6524493863393201792

/-! ## A073649.P1448719025308637993

`∩[A001359(n+1), A031505(n+1)]`
-/

namespace A073649.P1448719025308637993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073649.P1448719025308637993

/-! ## A073649.P7968412395213517876

`∩[A001359(n+1), A046132(n+1)]`
-/

namespace A073649.P7968412395213517876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073649.P7968412395213517876

/-! ## A073649.P18050702057349386340

`∩[A031505(n+1), A098414(n+1)]`
-/

namespace A073649.P18050702057349386340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073649.P18050702057349386340

/-! ## A073649.P16059823228681380359

`∩[A031505(n+1), A141830(n+1)]`
-/

namespace A073649.P16059823228681380359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073649.P16059823228681380359

/-! ## A073649.P17624259822301237630

`∩[A046132(n+1), A141830(n+1)]`
-/

namespace A073649.P17624259822301237630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073649.P17624259822301237630

/-! ## A073649.P14460389037714512600

`∩[A378983(n+1), A031505(n+1)]`
-/

namespace A073649.P14460389037714512600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073649.P14460389037714512600

/-! ## A073649.P17223890624291920162

`∩[A031505(n+1), A054799(n+1)]`
-/

namespace A073649.P17223890624291920162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073649.P17223890624291920162

/-! ## A073649.P2393280069239371225

`∩[A031505(n+1), A063700(n+1)]`
-/

namespace A073649.P2393280069239371225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073649.P2393280069239371225

/-! ## A073649.P12264005311085480598

`∩[A046132(n+1), A054799(n+1)]`
-/

namespace A073649.P12264005311085480598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073649.P12264005311085480598

/-! ## A073649.P12659690801394209616

`∩[A046132(n+1), A063700(n+1)]`
-/

namespace A073649.P12659690801394209616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073649.P12659690801394209616

/-! ## A073649.P13051485529835763047

`∩[A031505(n+1), A111166(n+1)]`
-/

namespace A073649.P13051485529835763047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073649.P13051485529835763047

/-! ## A073649.P17827324335871973737

`∩[A054799(n+1), A098414(n+1)]`
-/

namespace A073649.P17827324335871973737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073649.P17827324335871973737

/-! ## A073649.P4629772738782527678

`∩[A046132(n+1), A111166(n+1)]`
-/

namespace A073649.P4629772738782527678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073649.P4629772738782527678

/-! ## A073649.P6139789530099098107

`∩[A098414(n+1), A063700(n+1)]`
-/

namespace A073649.P6139789530099098107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073649.P6139789530099098107

/-!
# A073650: Define the composite field of a prime q to be f(q) = (t,s) if p, q, r are three consecutive primes and q-p = t and r-q = s. This is a sequence of primes q with field (2,6).

The programs for A073650, the canonical program `A073650.P10655186245204518636` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073650 has offset 1).

The definition of A073650 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073650.P10655186245204518636

`A049437(n+2)+2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A073650

/-- `A049437(n+2)+2` -/
def P10655186245204518636.Spec : Prop :=
  ∀ n, P10655186245204518636.a n = A073650 (n + 1)

theorem P10655186245204518636.correct : P10655186245204518636.Spec := by
  intro n
  simp only [A073650, Nat.add_sub_cancel]

end A073650

/-! ## A073650.P3393446354846021910

`∩[A052158(n+1), A095672(n+1)]`
-/

namespace A073650.P3393446354846021910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073650.P3393446354846021910

namespace A073650

/-- `∩[A052158(n+1), A095672(n+1)]` -/
def P3393446354846021910.Spec : Prop :=
  ∀ n, (P3393446354846021910.a n : ℤ) = A073650 (n + 1)

end A073650

/-! ## A073650.P1623326085537511570

`∩[A006512(n+1), A052158(n+1)]`
-/

namespace A073650.P1623326085537511570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073650.P1623326085537511570

namespace A073650

/-- `∩[A006512(n+1), A052158(n+1)]` -/
def P1623326085537511570.Spec : Prop :=
  ∀ n, (P1623326085537511570.a n : ℤ) = A073650 (n + 1)

end A073650

/-! ## A073650.P5708472983048868449

`∩[A006512(n+1), A095672(n+1)]`
-/

namespace A073650.P5708472983048868449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073650.P5708472983048868449

namespace A073650

/-- `∩[A006512(n+1), A095672(n+1)]` -/
def P5708472983048868449.Spec : Prop :=
  ∀ n, (P5708472983048868449.a n : ℤ) = A073650 (n + 1)

end A073650

/-! ## A073650.P11076852180360495298

`∩[A052158(n+1), A067829(n+1)]`
-/

namespace A073650.P11076852180360495298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073650.P11076852180360495298

namespace A073650

/-- `∩[A052158(n+1), A067829(n+1)]` -/
def P11076852180360495298.Spec : Prop :=
  ∀ n, (P11076852180360495298.a n : ℤ) = A073650 (n + 1)

end A073650

/-! ## A073650.P11204073363242322913

`∩[A067829(n+1), A095672(n+1)]`
-/

namespace A073650.P11204073363242322913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073650.P11204073363242322913

namespace A073650

/-- `∩[A067829(n+1), A095672(n+1)]` -/
def P11204073363242322913.Spec : Prop :=
  ∀ n, (P11204073363242322913.a n : ℤ) = A073650 (n + 1)

end A073650

/-! ## A073650.P15649510701999662600

`∩[A052158(n+1), A172057(n+1)]`
-/

namespace A073650.P15649510701999662600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073650.P15649510701999662600

namespace A073650

/-- `∩[A052158(n+1), A172057(n+1)]` -/
def P15649510701999662600.Spec : Prop :=
  ∀ n, (P15649510701999662600.a n : ℤ) = A073650 (n + 1)

end A073650

/-! ## A073650.P1615543290881317262

`∩[A095672(n+1), A172057(n+1)]`
-/

namespace A073650.P1615543290881317262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073650.P1615543290881317262

namespace A073650

/-- `∩[A095672(n+1), A172057(n+1)]` -/
def P1615543290881317262.Spec : Prop :=
  ∀ n, (P1615543290881317262.a n : ℤ) = A073650 (n + 1)

end A073650

/-! ## A073650.P9935385183544806025

`∩[A052158(n+1), A339692(n+1)]`
-/

namespace A073650.P9935385183544806025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073650.P9935385183544806025

namespace A073650

/-- `∩[A052158(n+1), A339692(n+1)]` -/
def P9935385183544806025.Spec : Prop :=
  ∀ n, (P9935385183544806025.a n : ℤ) = A073650 (n + 1)

end A073650

/-! ## A073650.P17956782465190326826

`p?[A007599(A084291(n+1))+A001359(n+1)]`
-/

namespace A073650.P17956782465190326826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007599 (A084291 (n + 1)).toNat + A001359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073650.P17956782465190326826

namespace A073650

/-- `p?[A007599(A084291(n+1))+A001359(n+1)]` -/
def P17956782465190326826.Spec : Prop :=
  ∀ n, P17956782465190326826.a n = A073650 (n + 1)

end A073650

/-! ## A073650.P14051305114709791209

`∩[A052158(n+1), A320391(n+1)]`
-/

namespace A073650.P14051305114709791209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073650.P14051305114709791209

namespace A073650

/-- `∩[A052158(n+1), A320391(n+1)]` -/
def P14051305114709791209.Spec : Prop :=
  ∀ n, (P14051305114709791209.a n : ℤ) = A073650 (n + 1)

end A073650

/-! ## A073650.P15426147066002909313

`∩[A095672(n+1), A320391(n+1)]`
-/

namespace A073650.P15426147066002909313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073650.P15426147066002909313

namespace A073650

/-- `∩[A095672(n+1), A320391(n+1)]` -/
def P15426147066002909313.Spec : Prop :=
  ∀ n, (P15426147066002909313.a n : ℤ) = A073650 (n + 1)

end A073650

/-! ## A073650.P9341432101348979631

`∩[A052158(n+1), A391049(n+1)]`
-/

namespace A073650.P9341432101348979631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073650.P9341432101348979631

namespace A073650

/-- `∩[A052158(n+1), A391049(n+1)]` -/
def P9341432101348979631.Spec : Prop :=
  ∀ n, (P9341432101348979631.a n : ℤ) = A073650 (n + 1)

end A073650

/-! ## A073650.P2601877758042203449

`p?[A031924(n+1)-2]+2`
-/

namespace A073650.P2601877758042203449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A073650.P2601877758042203449

namespace A073650

/-- `p?[A031924(n+1)-2]+2` -/
def P2601877758042203449.Spec : Prop :=
  ∀ n, P2601877758042203449.a n = A073650 (n + 1)

end A073650

/-! ## A073650.P17235373678568404384

`∩[A006512(n+1), A031924(n+1)]`
-/

namespace A073650.P17235373678568404384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073650.P17235373678568404384

namespace A073650

/-- `∩[A006512(n+1), A031924(n+1)]` -/
def P17235373678568404384.Spec : Prop :=
  ∀ n, (P17235373678568404384.a n : ℤ) = A073650 (n + 1)

end A073650

/-! ## A073650.P3293000607436604279

`∩[A031924(n+1), A067829(n+1)]`
-/

namespace A073650.P3293000607436604279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073650.P3293000607436604279

namespace A073650

/-- `∩[A031924(n+1), A067829(n+1)]` -/
def P3293000607436604279.Spec : Prop :=
  ∀ n, (P3293000607436604279.a n : ℤ) = A073650 (n + 1)

end A073650

/-! ## A073650.P2193046195173497508

`∩[A031924(n+1), A095672(n+1)]`
-/

namespace A073650.P2193046195173497508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073650.P2193046195173497508

namespace A073650

/-- `∩[A031924(n+1), A095672(n+1)]` -/
def P2193046195173497508.Spec : Prop :=
  ∀ n, (P2193046195173497508.a n : ℤ) = A073650 (n + 1)

end A073650

/-! ## A073650.P15476422453701343187

`∩[A031924(n+1), A172057(n+1)]`
-/

namespace A073650.P15476422453701343187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073650.P15476422453701343187

namespace A073650

/-- `∩[A031924(n+1), A172057(n+1)]` -/
def P15476422453701343187.Spec : Prop :=
  ∀ n, (P15476422453701343187.a n : ℤ) = A073650 (n + 1)

end A073650

/-! ## A073650.P15867568622404077245

`∩[A031924(n+1), A320391(n+1)]`
-/

namespace A073650.P15867568622404077245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073650.P15867568622404077245

namespace A073650

/-- `∩[A031924(n+1), A320391(n+1)]` -/
def P15867568622404077245.Spec : Prop :=
  ∀ n, (P15867568622404077245.a n : ℤ) = A073650 (n + 1)

end A073650

/-! ## A073650.P2411841593193815156

`∩[A001359(n+1)+2, A031924(n+1)]`
-/

namespace A073650.P2411841593193815156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073650.P2411841593193815156

namespace A073650

/-- `∩[A001359(n+1)+2, A031924(n+1)]` -/
def P2411841593193815156.Spec : Prop :=
  ∀ n, (P2411841593193815156.a n : ℤ) = A073650 (n + 1)

end A073650

/-!
# A073651: Define the composite field of a prime q to be f(q) = (t,s) if p, q, r are three consecutive primes and q-p = t and r-q = s. This is a sequence of primes q with field (6,2).

The programs for A073651, there is no canonical definition to state claims against.
-/

/-! ## A073651.P14138448123038451148

`A049438(n+1)+6`
-/

namespace A073651.P14138448123038451148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049438 (n + 1) + 6

end

end A073651.P14138448123038451148

/-! ## A073651.P14905009031500449424

`A001359(eq[6, A001359(n+1)%A088175(n+1)]+1)`
-/

namespace A073651.P14905009031500449424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001359 (n + 1)) (A088175 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A073651.P14905009031500449424

/-! ## A073651.P6288962021421349968

`p?[A031925(n+1)+2]-2`
-/

namespace A073651.P6288962021421349968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031925 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A073651.P6288962021421349968

/-! ## A073651.P5757185329067764274

`∩[A031925(n+1), A087693(n)]`
-/

namespace A073651.P5757185329067764274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087693 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073651.P5757185329067764274

/-! ## A073651.P8272419499699100346

`∩[A001359(n+1), A031925(n+1)]`
-/

namespace A073651.P8272419499699100346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073651.P8272419499699100346

/-! ## A073651.P13200539301296642522

`∩[A001838(n+1), A031925(n+1)]`
-/

namespace A073651.P13200539301296642522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073651.P13200539301296642522

/-! ## A073651.P16632538870461974894

`∩[A031925(n+1), A054799(n+1)]`
-/

namespace A073651.P16632538870461974894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073651.P16632538870461974894

/-! ## A073651.P14445865250072887332

`∩[A031925(n+1), A063693(n+1)]`
-/

namespace A073651.P14445865250072887332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073651.P14445865250072887332

/-! ## A073651.P14609400244593804850

`∩[A031925(n+1), A063700(n+1)]`
-/

namespace A073651.P14609400244593804850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073651.P14609400244593804850

/-! ## A073651.P15903984433970759908

`∩[A031925(n+1), A073534(n+1)]`
-/

namespace A073651.P15903984433970759908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073651.P15903984433970759908

/-! ## A073651.P6798634645972468551

`∩[A031925(n+1), A111166(n+1)]`
-/

namespace A073651.P6798634645972468551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073651.P6798634645972468551

/-! ## A073651.P7158223683909486793

`∩[A031925(n+1), A124588(n+1)]`
-/

namespace A073651.P7158223683909486793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073651.P7158223683909486793

/-! ## A073651.P11454844467884704790

`∩[A031925(n+1), A126193(n+1)]`
-/

namespace A073651.P11454844467884704790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073651.P11454844467884704790

/-! ## A073651.P10082439953815131796

`∩[A031925(n+1), A181747(n+1)]`
-/

namespace A073651.P10082439953815131796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073651.P10082439953815131796

/-! ## A073651.P1422983424456277488

`∩[A031925(n+1), A238528(n+1)]`
-/

namespace A073651.P1422983424456277488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073651.P1422983424456277488

/-! ## A073651.P4767941112457972192

`∩[A031925(n+1), A280255(n+1)]`
-/

namespace A073651.P4767941112457972192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073651.P4767941112457972192

/-! ## A073651.P17900440270017454046

`∩[A031925(n+1), A280590(n+1)]`
-/

namespace A073651.P17900440270017454046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073651.P17900440270017454046

/-! ## A073651.P11267104488414981626

`∩[A031925(n+1), A378983(n+1)]`
-/

namespace A073651.P11267104488414981626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073651.P11267104488414981626

/-! ## A073651.P12788278136420320232

`∩[A031925(n+1), A394509(n+1)]`
-/

namespace A073651.P12788278136420320232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073651.P12788278136420320232

/-! ## A073651.P4041507929532939453

`∩[A031925(n+1), A395788(n+1)]`
-/

namespace A073651.P4041507929532939453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073651.P4041507929532939453

/-!
# A073652: Primes which occur as the difference of consecutive prime powers >1 as and when they occur.

The programs for A073652, there is no canonical definition to state claims against.
-/

/-! ## A073652.P9303324147015583725

`p?[A053707(n+2)]`
-/

namespace A073652.P9303324147015583725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053707 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073652.P9303324147015583725

/-! ## A073652.P6819436166220466794

`p?[Δ[A025475(n+2)]]`
-/

namespace A073652.P6819436166220466794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073652.P6819436166220466794

/-! ## A073652.P2239324900029499266

`p?[Δ[A249435(n+2)]]`
-/

namespace A073652.P2239324900029499266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249435 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073652.P2239324900029499266

/-!
# A073653: a(1)=3, a(2)=5; for n > 2, a(n) = smallest prime not included earlier such that a(n-2) + a(n-1) + a(n) is a prime.

The programs for A073653, there is no canonical definition to state claims against.
-/

/-! ## A073653.P12005218669908041442

`A065091(A107897(n+1))`
-/

namespace A073653.P12005218669908041442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A107897 (n + 1)).toNat

end

end A073653.P12005218669908041442

/-! ## A073653.P3444288741235795399

`A000040(A107897(n+1)+1)`
-/

namespace A073653.P3444288741235795399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A107897 (n + 1) + 1).toNat

end

end A073653.P3444288741235795399

/-! ## A073653.P3310827628985628253

`A006005(A107897(n+1)+1)`
-/

namespace A073653.P3310827628985628253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A107897 (n + 1) + 1).toNat

end

end A073653.P3310827628985628253

/-! ## A073653.P9208469938705474443

`A008578(A107897(n+1)+2)`
-/

namespace A073653.P9208469938705474443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A107897 (n + 1) + 2).toNat

end

end A073653.P9208469938705474443

/-! ## A073653.P3370678770714646330

`A324050(A107897(n+1)+2)`
-/

namespace A073653.P3370678770714646330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (A107897 (n + 1) + 2).toNat

end

end A073653.P3370678770714646330

/-! ## A073653.P18209801342119292387

`A093515(2*A107897(n+1))`
-/

namespace A073653.P18209801342119292387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (2 * A107897 (n + 1)).toNat

end

end A073653.P18209801342119292387

/-! ## A073653.P5758562749113307691

`A045344(A107897(n+1))+A000007(n)`
-/

namespace A073653.P5758562749113307691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A107897 (n + 1)).toNat + A000007 n

end

end A073653.P5758562749113307691

/-! ## A073653.P9890060869897549002

`or(A045344(A107897(n+1)), A322217(n))`
-/

namespace A073653.P9890060869897549002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A045344 (A107897 (n + 1)).toNat) (A322217 n)

end

end A073653.P9890060869897549002

/-! ## A073653.P12749811080916060553

`A001222(a(n-1))*A045344(A107897(n+1))` with `a(0)=3`
-/

namespace A073653.P12749811080916060553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A001222 (a (n - 1)).toNat * A045344 (A107897 (n + 1)).toNat

end

end A073653.P12749811080916060553

/-!
# A073654: A073653 is defined to be 'rearrangement of odd primes such that sum of three consecutive terms is a prime'. This is the sequence of those primes whose relative position is not disturbed in this rearrangement.

The programs for A073654, there is no canonical definition to state claims against.
-/

/-! ## A073654.P5206443010042362097

`record[gcd(A065091(n+1), A073653(n+1))]`
-/

namespace A073654.P5206443010042362097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065091 (n + 1)) (A073653 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073654.P5206443010042362097

/-! ## A073654.P11926123072065581095

`A065091(eq[A065091(n+1), A073653(n+1)]+1)`
-/

namespace A073654.P11926123072065581095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A073654.P11926123072065581095

/-! ## A073654.P18286731345945755335

`A000040(eq[n+1, A107897(n+1)]+2)`
-/

namespace A073654.P18286731345945755335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A073654.P18286731345945755335

/-! ## A073654.P3851941104342056076

`∩[A316413(A259018(2*n+3)), A000040(n+1)]`
-/

namespace A073654.P3851941104342056076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316413 (A259018 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073654.P3851941104342056076

/-!
# A073656: Rearrangement of Fibonacci numbers such that sum of two consecutive terms is a prime.

The programs for A073656, there is no canonical definition to state claims against.
-/

/-! ## A073656.P4576817866724453185

`A000044(A119755(n+1))`
-/

namespace A073656.P4576817866724453185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000044 (A119755 (n + 1)).toNat

end

end A073656.P4576817866724453185

/-! ## A073656.P6033313110999656094

`A212804(A119755(n+1)+1)`
-/

namespace A073656.P6033313110999656094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A119755 (n + 1) + 1).toNat

end

end A073656.P6033313110999656094

/-! ## A073656.P11193484856145663989

`A324969(A119755(n+1)+1)`
-/

namespace A073656.P11193484856145663989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (A119755 (n + 1) + 1).toNat

end

end A073656.P11193484856145663989

/-! ## A073656.P991083614811478388

`A053602(2*A119755(n+1))`
-/

namespace A073656.P991083614811478388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A119755 (n + 1)).toNat

end

end A073656.P991083614811478388

/-! ## A073656.P12225287848518850191

`A000045(ceil(sqrt(A187941(n+1))))`
-/

namespace A073656.P12225287848518850191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈Real.sqrt (A187941 (n + 1) : ℝ)⌉.toNat

end

end A073656.P12225287848518850191

/-!
# A073658: Rearrangement of squares such that sum of two consecutive terms is a prime.

The programs for A073658, there is no canonical definition to state claims against.
-/

/-! ## A073658.P717074030005322058

`A100208(n+1)²`
-/

namespace A073658.P717074030005322058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100208 (n + 1) ^ 2

end

end A073658.P717074030005322058

/-! ## A073658.P6755426619427746037

`A100208(A000027(n+1))^2`
-/

namespace A073658.P6755426619427746037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100208 (A000027 (n + 1)).toNat ^ 2

end

end A073658.P6755426619427746037

/-! ## A073658.P14407493345085958750

`A100208(n+1)^A078880(round(ratio[n+1]))`
-/

namespace A073658.P14407493345085958750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100208 (n + 1) : ℚ) ^ (A078880 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat : ℤ)

end

end A073658.P14407493345085958750

/-! ## A073658.P354102714951082920

`A100208(n+1)^A087889(round(ratio[n+1]))`
-/

namespace A073658.P354102714951082920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100208 (n + 1) : ℚ) ^ (A087889 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat : ℤ)

end

end A073658.P354102714951082920

/-! ## A073658.P16118843539896479472

`A100208(A000027(n+1))*A100208(n+1)`
-/

namespace A073658.P16118843539896479472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100208 (A000027 (n + 1)).toNat * A100208 (n + 1)

end

end A073658.P16118843539896479472

/-! ## A073658.P10304671754902165974

`A100208(or(n+1, A000007(n)))*A100208(n+1)`
-/

namespace A073658.P10304671754902165974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100208 (Int.lor (n + 1 : ℤ) (A000007 n)).toNat * A100208 (n + 1)

end

end A073658.P10304671754902165974

/-! ## A073658.P211161376289017501

`A000290(A100208(n+1)%A016825(n))`
-/

namespace A073658.P211161376289017501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A100208 (n + 1)) (A016825 n)).toNat

end

end A073658.P211161376289017501

/-! ## A073658.P14222255913055149897

`A000290(lcm(A000034(n), A100208(n+1)))`
-/

namespace A073658.P14222255913055149897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.lcm (A000034 n) (A100208 (n + 1)))

end

end A073658.P14222255913055149897

/-! ## A073658.P15362114487807249637

`A000290(2*A100208(n+1)-A100208(n+1))`
-/

namespace A073658.P15362114487807249637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A100208 (n + 1) - A100208 (n + 1)).toNat

end

end A073658.P15362114487807249637

/-! ## A073658.P4139920143680936551

`A100209(n)-a(n-1)` with `a(0)=1`
-/

namespace A073658.P4139920143680936551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A100209 n - a (n - 1)

end

end A073658.P4139920143680936551

/-! ## A073658.P6287132244522378029

`A100209(n+1)-A100208(n+2)*A100208(n+2)`
-/

namespace A073658.P6287132244522378029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100209 (n + 1) - A100208 (n + 2) * A100208 (n + 2)

end

end A073658.P6287132244522378029

/-! ## A073658.P8167017794304288056

`A100208(n+1)^A000005(A100202(n+1))`
-/

namespace A073658.P8167017794304288056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100208 (n + 1) : ℚ) ^ (A000005 (A100202 (n + 1)).toNat : ℤ)

end

end A073658.P8167017794304288056

/-! ## A073658.P2502910103149913690

`A100208(n+1)^A000005(A100201(n+1))`
-/

namespace A073658.P2502910103149913690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100208 (n + 1) : ℚ) ^ (A000005 (A100201 (n + 1)).toNat : ℤ)

end

end A073658.P2502910103149913690

/-! ## A073658.P13548498198085158675

`A100208(n+1)^A000005(A100203(n+1))`
-/

namespace A073658.P13548498198085158675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100208 (n + 1) : ℚ) ^ (A000005 (A100203 (n + 1)).toNat : ℤ)

end

end A073658.P13548498198085158675

/-! ## A073658.P12650651539846977207

`A100208(n+1)^A000005(A100210(n+1))`
-/

namespace A073658.P12650651539846977207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100208 (n + 1) : ℚ) ^ (A000005 (A100210 (n + 1)).toNat : ℤ)

end

end A073658.P12650651539846977207

/-! ## A073658.P9058464556908360524

`A100208(n+1)^A000005(A100209(n+1))`
-/

namespace A073658.P9058464556908360524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100208 (n + 1) : ℚ) ^ (A000005 (A100209 (n + 1)).toNat : ℤ)

end

end A073658.P9058464556908360524

/-!
# A073659: a(1) = 1; for n > 1, a(n) is the smallest even number not already in the sequence such that a(1) + ... + a(n) is a prime.

The programs for A073659, there is no canonical definition to state claims against.
-/

/-! ## A073659.P9172165263897116280

`A054408(n+1)+char[1]/a(n-1)` with `a(0)=1`
-/

namespace A073659.P9172165263897116280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A054408 (n + 1) : ℚ) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) / a (n - 1)

end

end A073659.P9172165263897116280

/-! ## A073659.P1137640398044979842

`A054408(A181440(n+1))`
-/

namespace A073659.P1137640398044979842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054408 (A181440 (n + 1)).toNat

end

end A073659.P1137640398044979842

/-! ## A073659.P4373497139394346555

`A054408(A154955(n+1)+1+n)`
-/

namespace A073659.P4373497139394346555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054408 (A154955 (n + 1) + 1 + (n : ℤ)).toNat

end

end A073659.P4373497139394346555

/-! ## A073659.P11023839211020444462

`A054408(n+1-Δ[A054408(n+1)]%2)`
-/

namespace A073659.P11023839211020444462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054408 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054408 ((n + 1 : ℤ) - Int.tmod (f1 (n + 1) - f1 n) 2).toNat

end

end A073659.P11023839211020444462

/-! ## A073659.P3653126558006127957

`A036453(n+1)*A110654(A054408(n+1))`
-/

namespace A073659.P3653126558006127957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A110654 (A054408 (n + 1)).toNat

end

end A073659.P3653126558006127957

/-! ## A073659.P5363028992230974047

`A054408(n+1)-A008683(A007434(n+1))`
-/

namespace A073659.P5363028992230974047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054408 (n + 1) - A008683 (A007434 (n + 1)).toNat

end

end A073659.P5363028992230974047

/-! ## A073659.P18355650092048759231

`A054408(n+1)+A008683(2*A007434(n+1))`
-/

namespace A073659.P18355650092048759231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054408 (n + 1) + A008683 (2 * A007434 (n + 1)).toNat

end

end A073659.P18355650092048759231

/-!
# A073660: Terms of A073659 which retain their relative positions.

The programs for A073660, there is no canonical definition to state claims against.
-/

/-! ## A073660.P8478416802354666034

`record[gcd(2*n, A073659(n+1))]`
-/

namespace A073660.P8478416802354666034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A073659 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073660.P8478416802354666034

/-! ## A073660.P16298230045781642501

`A004277(eq[A004277(n), A073659(n+1)])`
-/

namespace A073660.P16298230045781642501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A073660.P16298230045781642501

/-! ## A073660.P3657410775925277853

`eq[n, A073659(A008619(n))]`
-/

namespace A073660.P3657410775925277853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073659 (A008619 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073660.P3657410775925277853

/-! ## A073660.P12574372574993268610

`eq[n, A073659(A003602(n+1))]`
-/

namespace A073660.P12574372574993268610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073659 (A003602 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073660.P12574372574993268610

/-! ## A073660.P5213184059743271824

`eq[n, A073659(A004526(n)+1)]`
-/

namespace A073660.P5213184059743271824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073659 (A004526 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073660.P5213184059743271824

/-! ## A073660.P3084921517155286104

`eq[n, A073659(A065033(n+1))]`
-/

namespace A073660.P3084921517155286104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073659 (A065033 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073660.P3084921517155286104

/-!
# A073663: Total number of branches of length k (k>=1) in all ordered trees with n+k edges (it is independent of k).

The programs for A073663, the canonical program `A073663.P161504416552192918` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073663 has offset 0).

The definition of A073663 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073663.P2566400053234853674

`A262768(n)+A068875(n)`
-/

namespace A073663.P2566400053234853674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262768 n + A068875 n

end

end A073663.P2566400053234853674

namespace A073663

/-- `A262768(n)+A068875(n)` -/
def P2566400053234853674.Spec : Prop :=
  ∀ n, P2566400053234853674.a n = A073663 n

end A073663

/-! ## A073663.P161504416552192918

`Δ[Δ[A037955(A004275(n))]]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073663

/-- `Δ[Δ[A037955(A004275(n))]]` -/
def P161504416552192918.Spec : Prop :=
  ∀ n, P161504416552192918.a n = A073663 n

theorem P161504416552192918.correct : P161504416552192918.Spec := by
  intro n
  simp only [A073663]

end A073663

/-! ## A073663.P7269738857340104700

`Δ[A122218(A001844(n))]`
-/

namespace A073663.P7269738857340104700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122218 (A001844 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073663.P7269738857340104700

namespace A073663

/-- `Δ[A122218(A001844(n))]` -/
def P7269738857340104700.Spec : Prop :=
  ∀ n, P7269738857340104700.a n = A073663 n

end A073663

/-! ## A073663.P9079278744595888290

`Δ[Δ[A097805(A058331(n))]]`
-/

namespace A073663.P9079278744595888290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A058331 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073663.P9079278744595888290

namespace A073663

/-- `Δ[Δ[A097805(A058331(n))]]` -/
def P9079278744595888290.Spec : Prop :=
  ∀ n, P9079278744595888290.a n = A073663 n

end A073663

/-! ## A073663.P11682565251252317549

`Δ[Δ[A097805(A275543(n))]]`
-/

namespace A073663.P11682565251252317549
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A275543 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073663.P11682565251252317549

namespace A073663

/-- `Δ[Δ[A097805(A275543(n))]]` -/
def P11682565251252317549.Spec : Prop :=
  ∀ n, P11682565251252317549.a n = A073663 n

end A073663

/-! ## A073663.P6029167762296609678

`Δ[Δ[A097805(A005843(n²)+1)]]`
-/

namespace A073663.P6029167762296609678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A005843 (n ^ 2) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073663.P6029167762296609678

namespace A073663

/-- `Δ[Δ[A097805(A005843(n²)+1)]]` -/
def P6029167762296609678.Spec : Prop :=
  ∀ n, P6029167762296609678.a n = A073663 n

end A073663

/-!
# A073664: Even numbers which retain their relative position in A073661 (are not disturbed in the rearrangement process).

The programs for A073664, there is no canonical definition to state claims against.
-/

/-! ## A073664.P9286110598927025742

`record[gcd(2*(n+1), A073661(n+1))]`
-/

namespace A073664.P9286110598927025742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * (n + 1) : ℤ) (A073661 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073664.P9286110598927025742

/-! ## A073664.P1091086388042226448

`record[A073661(n+1)/(A073661(n+1)-A005408(n))]`
-/

namespace A073664.P1091086388042226448
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073661 (n + 1) : ℚ) / (A073661 (n + 1) - A005408 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073664.P1091086388042226448

/-! ## A073664.P4840848539960078259

`eq[n, A073661(A065033(n))]`
-/

namespace A073664.P4840848539960078259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073661 (A065033 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073664.P4840848539960078259

/-!
# A073666: Rearrangement of natural numbers such that a(k)*a(k+1) + 1 is a prime for all k.

The programs for A073666, there is no canonical definition to state claims against.
-/

/-! ## A073666.P17840579055457048600

`A117923(A092842(n+1)%A050286(n+1))`
-/

namespace A073666.P17840579055457048600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117923 (Int.tmod (A092842 (n + 1)) (A050286 (n + 1))).toNat

end

end A073666.P17840579055457048600

/-! ## A073666.P10464125515518988488

`A092842(A117923(n+1)%A113350(3*n+1))`
-/

namespace A073666.P10464125515518988488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092842 (Int.tmod (A117923 (n + 1)) (A113350 (3 * n + 1))).toNat

end

end A073666.P10464125515518988488

/-! ## A073666.P8450687436138585681

`A117923(A092842(n+1))%A344582(2*n+3)`
-/

namespace A073666.P8450687436138585681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117923 (A092842 (n + 1)).toNat) (A344582 (2 * n + 3))

end

end A073666.P8450687436138585681

/-!
# A073667: Numbers which retain their position in A073666 (position not disturbed by the rearrangement).

The programs for A073667, there is no canonical definition to state claims against.
-/

/-! ## A073667.P17632809584860570017

`record[gcd(n+1, A073666(n+1))]`
-/

namespace A073667.P17632809584860570017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A073666 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073667.P17632809584860570017

/-! ## A073667.P9693965986561149420

`eq[n, A073666(A028310(n))]`
-/

namespace A073667.P9693965986561149420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073666 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073667.P9693965986561149420

/-! ## A073667.P5497695363830790960

`eq[n, A073666(A000038(n)+n)]`
-/

namespace A073667.P5497695363830790960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073666 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073667.P5497695363830790960

/-! ## A073667.P14897095444378455588

`eq[n, A073666(A004277(n)-n)]`
-/

namespace A073667.P14897095444378455588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073666 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073667.P14897095444378455588

/-! ## A073667.P5495538356250138084

`eq[n, A073666(A065033(2*n))]`
-/

namespace A073667.P5495538356250138084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073666 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073667.P5495538356250138084

/-!
# A073668: Decimal expansion of Sum_{k>=1} 1/(10^k - 1).

The programs for A073668, there is no canonical definition to state claims against.
-/

/-! ## A073668.P4846729871507979946

`A000005(∑[A003945(C(n, 46))])`
-/

namespace A073668.P4846729871507979946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (Nat.choose n 46)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A073668.P4846729871507979946

/-! ## A073668.P15271003653628201218

`A000005(∑[A131246(C(n+1, 47))])`
-/

namespace A073668.P15271003653628201218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131246 (Nat.choose (n + 1) 47)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A073668.P15271003653628201218

/-! ## A073668.P10023067182008496768

`A185284(A352521(n))+∏{e}[n+1, #+1]`
-/

namespace A073668.P10023067182008496768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A352521 n).toNat + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A073668.P10023067182008496768

/-!
# A073669: a(1) = 1, a(n) = the smallest composite multiple of n such that every partial sum is prime.

The programs for A073669, there is no canonical definition to state claims against.
-/

/-! ## A073669.P12531887829563588230

`Δ[A084697(n+1)%A060890(n)]`
-/

namespace A073669.P12531887829563588230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084697 (n + 1)) (A060890 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073669.P12531887829563588230

/-! ## A073669.P6860285420539335503

`lcm(Δ[A084697(n+1)], A074828(n+1))`
-/

namespace A073669.P6860285420539335503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084697 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A074828 (n + 1))

end

end A073669.P6860285420539335503

/-! ## A073669.P11923526739757051943

`A000041(C(2, n))*Δ[A084697(n+1)]`
-/

namespace A073669.P11923526739757051943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 n) * (f1 (n + 1) - f1 n)

end

end A073669.P11923526739757051943

/-! ## A073669.P2719823280728246583

`(gcd(3, A084697(n+1))+n)*A263455(n+1)`
-/

namespace A073669.P2719823280728246583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 (A084697 (n + 1)) + n : ℤ) * A263455 (n + 1)

end

end A073669.P2719823280728246583

/-! ## A073669.P15559590367271866675

`A064505(Δ[A084697(n+1)])`
-/

namespace A073669.P15559590367271866675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064505 (f1 (n + 1) - f1 n).toNat

end

end A073669.P15559590367271866675

/-! ## A073669.P1961179140185631170

`Δ[A084697(n+1)]*A134451(A005728(n))`
-/

namespace A073669.P1961179140185631170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A134451 (A005728 n).toNat

end

end A073669.P1961179140185631170

/-!
# A073672: Rearrangement of natural numbers such that sum of n (n>1) terms starting from the n-th term (included) is a prime.

The programs for A073672, there is no canonical definition to state claims against.
-/

/-! ## A073672.P3611576279088461263

`A143691(n+1)+A121373(A051797(n))`
-/

namespace A073672.P3611576279088461263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143691 (n + 1) + A121373 (A051797 n).toNat

end

end A073672.P3611576279088461263

/-! ## A073672.P16568872434260483405

`A197870(A000129(n))+A143691(n+1)`
-/

namespace A073672.P16568872434260483405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197870 (A000129 n).toNat + A143691 (n + 1)

end

end A073672.P16568872434260483405

/-! ## A073672.P807421744646092340

`A143691(n+1)+A008683(A001793(n+1))`
-/

namespace A073672.P807421744646092340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143691 (n + 1) + A008683 (A001793 (n + 1)).toNat

end

end A073672.P807421744646092340

/-! ## A073672.P8030898295526700634

`A143691(n+1)+A008683(A302915(n+1))`
-/

namespace A073672.P8030898295526700634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143691 (n + 1) + A008683 (A302915 (n + 1)).toNat

end

end A073672.P8030898295526700634

/-! ## A073672.P12604427877010721889

`A143691(n+1)+A121373(A228361(3*n))`
-/

namespace A073672.P12604427877010721889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143691 (n + 1) + A121373 (A228361 (3 * n)).toNat

end

end A073672.P12604427877010721889

/-!
# A073675: Rearrangement of natural numbers such that a(n) is the smallest proper divisor of n not included earlier but if no such divisor exists then a(n) is the smallest proper multiple of n not included earlier, subject always to the condition that a(n) is not equal to n.

The programs for A073675, the canonical program `A073675.P5905341681042066843` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073675 has offset 1).

The definition of A073675 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073675.P1836674590224354501

`(n+1)*2^A309873(n+1)`
-/

namespace A073675.P1836674590224354501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (2 : ℚ) ^ (A309873 (n + 1) : ℤ)

end

end A073675.P1836674590224354501

namespace A073675

/-- `(n+1)*2^A309873(n+1)` -/
def P1836674590224354501.Spec : Prop :=
  ∀ n, P1836674590224354501.a n = (A073675 (n + 1) : ℚ)

end A073675

/-! ## A073675.P8594414379740700584

`2*(n+1)/A056832(n+1)²`
-/

namespace A073675.P8594414379740700584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (A056832 (n + 1) ^ 2 : ℚ)

end

end A073675.P8594414379740700584

namespace A073675

/-- `2*(n+1)/A056832(n+1)²` -/
def P8594414379740700584.Spec : Prop :=
  ∀ n, P8594414379740700584.a n = (A073675 (n + 1) : ℚ)

end A073675

/-! ## A073675.P11466258030861796050

`2/(n+1)*A214682(n+1)²`
-/

namespace A073675.P11466258030861796050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A214682 (n + 1) ^ 2 : ℚ)

end

end A073675.P11466258030861796050

namespace A073675

/-- `2/(n+1)*A214682(n+1)²` -/
def P11466258030861796050.Spec : Prop :=
  ∀ n, P11466258030861796050.a n = (A073675 (n + 1) : ℚ)

end A073675

/-! ## A073675.P512461188863806883

`lcm(lcm(4, n+1)/4, Δ[A300838(n)])`
-/

namespace A073675.P512461188863806883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300838 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((Nat.lcm 4 (n + 1) : ℚ) / 4)) (f1 (n + 1) - f1 n)

end

end A073675.P512461188863806883

namespace A073675

/-- `lcm(lcm(4, n+1)/4, Δ[A300838(n)])` -/
def P512461188863806883.Spec : Prop :=
  ∀ n, (P512461188863806883.a n : ℤ) = A073675 (n + 1)

end A073675

/-! ## A073675.P9551315875012175102

`2*(n+1)/A191254(2*(n+1))²`
-/

namespace A073675.P9551315875012175102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (A191254 (2 * (n + 1)) ^ 2 : ℚ)

end

end A073675.P9551315875012175102

namespace A073675

/-- `2*(n+1)/A191254(2*(n+1))²` -/
def P9551315875012175102.Spec : Prop :=
  ∀ n, P9551315875012175102.a n = (A073675 (n + 1) : ℚ)

end A073675

/-! ## A073675.P2155642938781058625

`(n+1)*gcd(2, A007814(n+1))²/2`
-/

namespace A073675.P2155642938781058625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * Int.gcd 2 (A007814 (n + 1)) ^ 2 : ℚ) / 2

end

end A073675.P2155642938781058625

namespace A073675

/-- `(n+1)*gcd(2, A007814(n+1))²/2` -/
def P2155642938781058625.Spec : Prop :=
  ∀ n, P2155642938781058625.a n = (A073675 (n + 1) : ℚ)

end A073675

/-! ## A073675.P15416407872465947849

`A016777(A214682(n+1))-(n+2)`
-/

namespace A073675.P15416407872465947849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A214682 (n + 1)).toNat - (n + 2 : ℤ)

end

end A073675.P15416407872465947849

namespace A073675

/-- `A016777(A214682(n+1))-(n+2)` -/
def P15416407872465947849.Spec : Prop :=
  ∀ n, P15416407872465947849.a n = A073675 (n + 1)

end A073675

/-! ## A073675.P16606370305168386586

`A016789(A214682(n+1)-1)-n`
-/

namespace A073675.P16606370305168386586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A214682 (n + 1) - 1).toNat - (n : ℤ)

end

end A073675.P16606370305168386586

namespace A073675

/-- `A016789(A214682(n+1)-1)-n` -/
def P16606370305168386586.Spec : Prop :=
  ∀ n, P16606370305168386586.a n = A073675 (n + 1)

end A073675

/-! ## A073675.P4624151205761735784

`(A035263(n+1)+1)*A214682(n+1)`
-/

namespace A073675.P4624151205761735784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035263 (n + 1) + 1) * A214682 (n + 1)

end

end A073675.P4624151205761735784

namespace A073675

/-- `(A035263(n+1)+1)*A214682(n+1)` -/
def P4624151205761735784.Spec : Prop :=
  ∀ n, P4624151205761735784.a n = A073675 (n + 1)

end A073675

/-! ## A073675.P6867211025105845649

`A007913(2*(n+1))*A008833(n+1)`
-/

namespace A073675.P6867211025105845649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 * (n + 1)) * A008833 (n + 1)

end

end A073675.P6867211025105845649

namespace A073675

/-- `A007913(2*(n+1))*A008833(n+1)` -/
def P6867211025105845649.Spec : Prop :=
  ∀ n, P6867211025105845649.a n = A073675 (n + 1)

end A073675

/-! ## A073675.P697763792598924822

`A083346(2*(n+1))*A085731(n+1)`
-/

namespace A073675.P697763792598924822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (2 * (n + 1)) * A085731 (n + 1)

end

end A073675.P697763792598924822

namespace A073675

/-- `A083346(2*(n+1))*A085731(n+1)` -/
def P697763792598924822.Spec : Prop :=
  ∀ n, P697763792598924822.a n = A073675 (n + 1)

end A073675

/-! ## A073675.P5905341681042066843

`A065883(2*(n+1))*A234957(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A073675

/-- `A065883(2*(n+1))*A234957(n+1)` -/
def P5905341681042066843.Spec : Prop :=
  ∀ n, P5905341681042066843.a n = A073675 (n + 1)

theorem P5905341681042066843.correct : P5905341681042066843.Spec := by
  intro n
  simp only [A073675, Nat.add_sub_cancel]

end A073675

/-! ## A073675.P6395633466543400232

`A327938(2*(n+1))*A327939(n+1)`
-/

namespace A073675.P6395633466543400232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327938 (2 * (n + 1)) * A327939 (n + 1)

end

end A073675.P6395633466543400232

namespace A073675

/-- `A327938(2*(n+1))*A327939(n+1)` -/
def P6395633466543400232.Spec : Prop :=
  ∀ n, P6395633466543400232.a n = A073675 (n + 1)

end A073675

/-! ## A073675.P2922408684694659198

`A145109(n+1)/(2*A007913(n+1))`
-/

namespace A073675.P2922408684694659198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145109 (n + 1) : ℚ) / (2 * A007913 (n + 1) : ℚ)

end

end A073675.P2922408684694659198

namespace A073675

/-- `A145109(n+1)/(2*A007913(n+1))` -/
def P2922408684694659198.Spec : Prop :=
  ∀ n, P2922408684694659198.a n = (A073675 (n + 1) : ℚ)

end A073675

/-! ## A073675.P17757623255930654816

`2/A056832(n+1)*A214682(n+1)`
-/

namespace A073675.P17757623255930654816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A056832 (n + 1) : ℚ) * (A214682 (n + 1) : ℚ)

end

end A073675.P17757623255930654816

namespace A073675

/-- `2/A056832(n+1)*A214682(n+1)` -/
def P17757623255930654816.Spec : Prop :=
  ∀ n, P17757623255930654816.a n = (A073675 (n + 1) : ℚ)

end A073675

/-! ## A073675.P7202810254582062186

`A007913(2*A235872(n+1))*A214682(n+1)`
-/

namespace A073675.P7202810254582062186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (2 * A235872 (n + 1)).toNat * A214682 (n + 1)

end

end A073675.P7202810254582062186

namespace A073675

/-- `A007913(2*A235872(n+1))*A214682(n+1)` -/
def P7202810254582062186.Spec : Prop :=
  ∀ n, P7202810254582062186.a n = A073675 (n + 1)

end A073675

/-! ## A073675.P16426256357678296512

`A000079(xor(1, A007814(n+1)))*A000265(n+1)`
-/

namespace A073675.P16426256357678296512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Int.xor 1 (A007814 (n + 1))).toNat * A000265 (n + 1)

end

end A073675.P16426256357678296512

namespace A073675

/-- `A000079(xor(1, A007814(n+1)))*A000265(n+1)` -/
def P16426256357678296512.Spec : Prop :=
  ∀ n, P16426256357678296512.a n = A073675 (n + 1)

end A073675

/-! ## A073675.P1862816472036584675

`A214682(n+1)*A268727(∑{d}[and(n+1, -(n+1)), #])`
-/

namespace A073675.P1862816472036584675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214682 (n + 1) * A268727 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A073675.P1862816472036584675

namespace A073675

/-- `A214682(n+1)*A268727(∑{d}[and(n+1, -(n+1)), #])` -/
def P1862816472036584675.Spec : Prop :=
  ∀ n, P1862816472036584675.a n = A073675 (n + 1)

end A073675

/-! ## A073675.P12023161237801800240

`A307150(n+1)*A307266(n+1)/A307267(n+1)`
-/

namespace A073675.P12023161237801800240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307150 (n + 1) * A307266 (n + 1) : ℚ) / (A307267 (n + 1) : ℚ)

end

end A073675.P12023161237801800240

namespace A073675

/-- `A307150(n+1)*A307266(n+1)/A307267(n+1)` -/
def P12023161237801800240.Spec : Prop :=
  ∀ n, P12023161237801800240.a n = (A073675 (n + 1) : ℚ)

end A073675

/-! ## A073675.P8901338036486634946

`A084483(2*(n+1))/2`
-/

namespace A073675.P8901338036486634946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084483 (2 * (n + 1)) : ℚ) / 2

end

end A073675.P8901338036486634946

namespace A073675

/-- `A084483(2*(n+1))/2` -/
def P8901338036486634946.Spec : Prop :=
  ∀ n, P8901338036486634946.a n = (A073675 (n + 1) : ℚ)

end A073675

/-!
# A073679: a(1) = 4, a(n+1) is the smallest composite number > a(n) such that all of the differences a(n+1)-a(n) are distinct primes.

The programs for A073679, there is no canonical definition to state claims against.
-/

/-! ## A073679.P1399339876625579745

`A127018(A165661(A000931(n)))+A007504(n)`
-/

namespace A073679.P1399339876625579745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127018 (A165661 (A000931 n).toNat).toNat + A007504 n

end

end A073679.P1399339876625579745

/-! ## A073679.P7027964001056251156

`A007504(n)+A002808(A058343(n)!)`
-/

namespace A073679.P7027964001056251156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n + A002808 (Nat.factorial (A058343 n).toNat)

end

end A073679.P7027964001056251156

/-! ## A073679.P2528763465654021414

`A100484(A058343(n)!)+A007504(n)`
-/

namespace A073679.P2528763465654021414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (Nat.factorial (A058343 n).toNat) + A007504 n

end

end A073679.P2528763465654021414

/-! ## A073679.P14262412919798317059

`A127018(A058343(n)!)+A007504(n)`
-/

namespace A073679.P14262412919798317059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127018 (Nat.factorial (A058343 n).toNat) + A007504 n

end

end A073679.P14262412919798317059

/-! ## A073679.P8764668066470891680

`A036439(n+1)+A036439(A058343(n)!)`
-/

namespace A073679.P8764668066470891680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (n + 1) + A036439 (Nat.factorial (A058343 n).toNat)

end

end A073679.P8764668066470891680

/-!
# A073680: a(1) =2, a(2) = 3, a(n+2) = smallest prime such that a(n+2) - a(n+1) is a multiple of a(n).

The programs for A073680, there is no canonical definition to state claims against.
-/

/-! ## A073680.P11013295825262141289

`p?[A247983(record[A127218(n)])]`
-/

namespace A073680.P11013295825262141289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247983 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073680.P11013295825262141289

/-! ## A073680.P17110303252125337185

`record[p?[A284478(A104346(n))]]`
-/

namespace A073680.P17110303252125337185
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284478 (A104346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073680.P17110303252125337185

/-! ## A073680.P12407601167684168779

`p?[or(A007067(n), A087005(n+1))]`
-/

namespace A073680.P12407601167684168779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007067 n) (A087005 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073680.P12407601167684168779

/-!
# A073681: Smallest of three consecutive primes whose sum is a prime.

The programs for A073681, there is no canonical definition to state claims against.
-/

/-! ## A073681.P16924982649495181847

`A045344(A072225(n+1)-1)`
-/

namespace A073681.P16924982649495181847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A072225 (n + 1) - 1).toNat

end

end A073681.P16924982649495181847

/-! ## A073681.P15187114074508076771

`A000040(A072225(n+1))`
-/

namespace A073681.P15187114074508076771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A072225 (n + 1)).toNat

end

end A073681.P15187114074508076771

/-! ## A073681.P14145004640369907906

`A158611(A072225(n+1)+2)`
-/

namespace A073681.P14145004640369907906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A072225 (n + 1) + 2).toNat

end

end A073681.P14145004640369907906

/-! ## A073681.P9515028119094426521

`∑{d}[A072225(n+1), A007444(#)]`
-/

namespace A073681.P9515028119094426521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A073681.P9515028119094426521

/-! ## A073681.P1511401722102405834

`A000040(eq[2, A248498(n+1)]+1)`
-/

namespace A073681.P1511401722102405834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248498 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A073681.P1511401722102405834

/-! ## A073681.P7441995959072729822

`A006005(or(A000007(n), A072225(n+1)))`
-/

namespace A073681.P7441995959072729822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (Int.lor (A000007 n) (A072225 (n + 1))).toNat

end

end A073681.P7441995959072729822

/-! ## A073681.P13318936304403296636

`A006005(or(A000038(n), A072225(n+1)))`
-/

namespace A073681.P13318936304403296636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (Int.lor (A000038 n) (A072225 (n + 1))).toNat

end

end A073681.P13318936304403296636

/-! ## A073681.P12652194578427286307

`A034962(n+1)-A001043(A072225(n+1)+1)`
-/

namespace A073681.P12652194578427286307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034962 (n + 1) - A001043 (A072225 (n + 1) + 1).toNat

end

end A073681.P12652194578427286307

/-! ## A073681.P4003076479123709814

`A034962(n+1)-A011974(A072225(n+1)+2)`
-/

namespace A073681.P4003076479123709814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034962 (n + 1) - A011974 (A072225 (n + 1) + 2).toNat

end

end A073681.P4003076479123709814

/-! ## A073681.P13343262865671951405

`A001043(A072225(n+1))-A152469(n+1)`
-/

namespace A073681.P13343262865671951405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (A072225 (n + 1)).toNat - A152469 (n + 1)

end

end A073681.P13343262865671951405

/-! ## A073681.P8272710211279464907

`A011974(A072225(n+1)+1)-A152469(n+1)`
-/

namespace A073681.P8272710211279464907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (A072225 (n + 1) + 1).toNat - A152469 (n + 1)

end

end A073681.P8272710211279464907

/-! ## A073681.P8451447971619815746

`A034962(n+1)-(A152470(n+1)+A152469(n+1))`
-/

namespace A073681.P8451447971619815746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034962 (n + 1) - (A152470 (n + 1) + A152469 (n + 1))

end

end A073681.P8451447971619815746

/-! ## A073681.P1800245499701293425

`p?[A000040(n+1)*A010051(A034961(n+1))]`
-/

namespace A073681.P1800245499701293425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A010051 (A034961 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073681.P1800245499701293425

/-! ## A073681.P7354541934055301590

`A000040(A084360(A152470(n+1)))`
-/

namespace A073681.P7354541934055301590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A084360 (A152470 (n + 1)).toNat).toNat

end

end A073681.P7354541934055301590

/-! ## A073681.P2421175982887409768

`A064989(A152469(n+1))`
-/

namespace A073681.P2421175982887409768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A152469 (n + 1)).toNat

end

end A073681.P2421175982887409768

/-! ## A073681.P13110126952727424128

`A033302(A152470(n+1))`
-/

namespace A073681.P13110126952727424128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033302 (A152470 (n + 1)).toNat

end

end A073681.P13110126952727424128

/-! ## A073681.P5195634983417693462

`A278922(A034962(n+1))`
-/

namespace A073681.P5195634983417693462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278922 (A034962 (n + 1)).toNat

end

end A073681.P5195634983417693462

/-!
# A073682: Prime sum of n-th group of successive primes in A073684.

The programs for A073682, there is no canonical definition to state claims against.
-/

/-! ## A073682.P18039720183323900804

`Δ[A034387(A073683(n+1)-1)]`
-/

namespace A073682.P18039720183323900804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A073683 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073682.P18039720183323900804

/-! ## A073682.P9810451739028701569

`Δ[A034387(A000010(A073683(n+1)))]`
-/

namespace A073682.P9810451739028701569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A000010 (A073683 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073682.P9810451739028701569

/-!
# A073683: Group the primes such that the sum of each group is a prime. Each group from the second onwards should contain at least 3 primes: (2, 3), (5, 7, 11), (13, 17, 19, 23, 29), (31, 37, 41), (43, 47, 53, 59, 61), ... This is the sequence of the leading element in each group.

The programs for A073683, there is no canonical definition to state claims against.
-/

/-! ## A073683.P9456190340400632208

`A008578(∑[A073684(A028310(n))])`
-/

namespace A073683.P9456190340400632208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073684 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A073683.P9456190340400632208

/-! ## A073683.P5569172456585436116

`A000040(∑[A073684(n+1)]+1-A073684(n+1))`
-/

namespace A073683.P5569172456585436116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + (1 - A073684 (n + 1))).toNat

end

end A073683.P5569172456585436116

/-!
# A073684: Sum of next a(n) successive primes is prime.

The programs for A073684, there is no canonical definition to state claims against.
-/

/-! ## A073684.P11002728965610155244

`Δ[A000720(A073683(n+1))]`
-/

namespace A073684.P11002728965610155244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A073683 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073684.P11002728965610155244

/-! ## A073684.P2884826259032366432

`Δ[A000720(A071195(a(n-1)+1))]` with `a(0)=0, a(1)=2`
-/

namespace A073684.P2884826259032366432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  A000720 (A071195 (f1 (n - 1) + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073684.P2884826259032366432

/-!
# A073685: Group the composite numbers so that the sum of each group is a prime, sequence gives number of terms in each group.

The programs for A073685, there is no canonical definition to state claims against.
-/

/-! ## A073685.P14112607909881528022

`Δ[A026233(A073687(n+1))]`
-/

namespace A073685.P14112607909881528022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (A073687 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073685.P14112607909881528022

/-! ## A073685.P18327757574666726698

`A026233(A073687(n+2))-A026233(A073687(n+1))`
-/

namespace A073685.P18327757574666726698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (A073687 (n + 2)).toNat - A026233 (A073687 (n + 1)).toNat

end

end A073685.P18327757574666726698

/-!
# A073686: Group the composite numbers so that the sum of each group is a prime; sequence gives sum of terms in each group.

The programs for A073686, there is no canonical definition to state claims against.
-/

/-! ## A073686.P18029069487992159812

`A093860(A259021(n+1)-A302567(n+1))`
-/

namespace A073686.P18029069487992159812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093860 (A259021 (n + 1) - A302567 (n + 1)).toNat

end

end A073686.P18029069487992159812

/-!
# A073688: Group the natural numbers so that the product of the terms in each group + 1 is a prime: (1), (2), (3, 4), (5, 6), (7, 8, 9, 10, 11), (12), (13, 14, 15), (16), ... This is the sequence of such primes.

The programs for A073688, there is no canonical definition to state claims against.
-/

/-! ## A073688.P7715021900964111867

`A087564(A073689(n))`
-/

namespace A073688.P7715021900964111867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087564 (A073689 n).toNat

end

end A073688.P7715021900964111867

/-! ## A073688.P9524960257602395690

`A087564(∑[A073690(abs(1-n))])`
-/

namespace A073688.P9524960257602395690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073690 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087564 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A073688.P9524960257602395690

/-! ## A073688.P954243911411455832

`A087564(∑[A073690(n)]+1-A073690(n))`
-/

namespace A073688.P954243911411455832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087564 (∑ j ∈ Finset.range (n + 1), f1 j + (1 - A073690 n)).toNat

end

end A073688.P954243911411455832

/-!
# A073689: Group the natural numbers so that the product of the terms in each group + 1 is a prime: (1), (2), (3, 4), (5, 6), (7, 8, 9, 10, 11), (12), (13, 14, 15), (16), ... Sequence gives first term in each group.

The programs for A073689, there is no canonical definition to state claims against.
-/

/-! ## A073689.P11350493149802551665

`∑[A073690(abs(1-n))]`
-/

namespace A073689.P11350493149802551665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073690 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073689.P11350493149802551665

/-! ## A073689.P7600852793190598048

`A073690(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A073689.P7600852793190598048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A073690 (n - 1) + a (n - 1)

end

end A073689.P7600852793190598048

/-! ## A073689.P14951696050270830629

`∑[A073690(log2(A011782(n)))%98]`
-/

namespace A073689.P14951696050270830629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073690 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat) 98

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073689.P14951696050270830629

/-! ## A073689.P6633534814335591931

`∑[A073690(n)]+1-A073690(n)`
-/

namespace A073689.P6633534814335591931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A073690 n)

end

end A073689.P6633534814335591931

/-! ## A073689.P12932634053564172113

`A231901(a(n-1)-1)+1` with `a(0)=1`
-/

namespace A073689.P12932634053564172113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A231901 (a (n - 1) - 1).toNat + 1

end

end A073689.P12932634053564172113

/-! ## A073689.P7354846098410199543

`∑[A073690(n-A057427(n))]*A050603(n²)`
-/

namespace A073689.P7354846098410199543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073690 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A050603 (n ^ 2)

end

end A073689.P7354846098410199543

/-! ## A073689.P15731030149572925200

`a(n-1)+A087565(a(n-1))+1` with `a(0)=1`
-/

namespace A073689.P15731030149572925200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A087565 (a (n - 1)).toNat + 1)

end

end A073689.P15731030149572925200

/-!
# A073690: Group the natural numbers so that the product of the terms in each group + 1 is a prime: (1), (2), (3, 4), (5, 6), (7, 8, 9, 10, 11), (12), (13, 14, 15), (16), ... This is the sequence of the number of terms in each group.

The programs for A073690, there is no canonical definition to state claims against.
-/

/-! ## A073690.P13317375015126454105

`Δ[A073689(n)]`
-/

namespace A073690.P13317375015126454105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073690.P13317375015126454105

/-! ## A073690.P14305516166836474319

`A073689(n+1)-A073689(n)`
-/

namespace A073690.P14305516166836474319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073689 (n + 1) - A073689 n

end

end A073690.P14305516166836474319

/-! ## A073690.P15354749952443525596

`record[A073689(A344180(n))]-A073689(n)`
-/

namespace A073690.P15354749952443525596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073689 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A073689 n

end

end A073690.P15354749952443525596

/-! ## A073690.P4572787396238412257

`Δ[A231901(a(n-1))]` with `a(0)=0`
-/

namespace A073690.P4572787396238412257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A231901 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073690.P4572787396238412257

/-! ## A073690.P5935637905540313749

`Δ[a(n-1)+A087565(a(n-1))+1]` with `a(0)=1`
-/

namespace A073690.P5935637905540313749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (A087565 (f1 (n - 1)).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073690.P5935637905540313749

/-!
# A073691: Primes p = product(A073692(n), A073692(n)+2,..., A073692(n+1)-2) plus 2.

The programs for A073691, there is no canonical definition to state claims against.
-/

/-! ## A073691.P13374695103565232206

`A054353(A120108(Δ[n!]))`
-/

namespace A073691.P13374695103565232206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (A120108 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A073691.P13374695103565232206

/-!
# A073692: a(0)=1; for n > 0, a(n) is the smallest odd number k such that (2 + Product_{j=a(n-1)..k-2, j odd} j) is prime.

The programs for A073692, there is no canonical definition to state claims against.
-/

/-! ## A073692.P7396891749628082979

`lt[A327845(A327815(n+3)), A327832(n+1)]`
-/

namespace A073692.P7396891749628082979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327845 (A327815 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A073692.P7396891749628082979

/-! ## A073692.P17302463795396248853

`∑[A010888(A338029(n+1))]+n`
-/

namespace A073692.P17302463795396248853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A338029 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A073692.P17302463795396248853

/-! ## A073692.P6712638892598250692

`lt[A002033(A025487(2*n+1)), val(n+1, 2)+1]`
-/

namespace A073692.P6712638892598250692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A025487 (2 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A073692.P6712638892598250692

/-! ## A073692.P14500831334750970129

`eq[A030204(A238343(3*(n+1))), A237271(n+1)]`
-/

namespace A073692.P14500831334750970129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030204 (A238343 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073692.P14500831334750970129

/-!
# A073693: Product of next a(n) odd numbers plus 2 is prime.

The programs for A073693, there is no canonical definition to state claims against.
-/

/-! ## A073693.P4908120454491328014

`Δ[A073692(n)/2]`
-/

namespace A073693.P4908120454491328014
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073692 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073693.P4908120454491328014

/-! ## A073693.P12550226993162308292

`Δ[A000463(A073692(n))]`
-/

namespace A073693.P12550226993162308292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A073692 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073693.P12550226993162308292

/-! ## A073693.P7487998158575159147

`A001281(Δ[A073692(n)])`
-/

namespace A073693.P7487998158575159147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (n + 1) - f1 n).toNat

end

end A073693.P7487998158575159147

/-! ## A073693.P4837516984056721866

`A004525(Δ[A073692(n)])`
-/

namespace A073693.P4837516984056721866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A073693.P4837516984056721866

/-! ## A073693.P1278087699508509027

`A004526(Δ[A073692(n)])`
-/

namespace A073693.P1278087699508509027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A073693.P1278087699508509027

/-! ## A073693.P17657078460112145896

`A006370(Δ[A073692(n)])`
-/

namespace A073693.P17657078460112145896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (f1 (n + 1) - f1 n).toNat

end

end A073693.P17657078460112145896

/-! ## A073693.P4710696688405717895

`abs(A001057(Δ[A073692(n)]))`
-/

namespace A073693.P4710696688405717895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (f1 (n + 1) - f1 n).toNat|

end

end A073693.P4710696688405717895

/-! ## A073693.P12118124691707527603

`Δ[A001057(A073692(n)+2)]`
-/

namespace A073693.P12118124691707527603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A073692 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073693.P12118124691707527603

/-! ## A073693.P13376825615599646881

`A001057(Δ[A073692(n)]-1)`
-/

namespace A073693.P13376825615599646881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (f1 (n + 1) - f1 n - 1).toNat

end

end A073693.P13376825615599646881

/-! ## A073693.P661243668223727679

`Δ[A003602(A073692(n)+2)]`
-/

namespace A073693.P661243668223727679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A073692 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073693.P661243668223727679

/-! ## A073693.P15548580369350576737

`A003602(Δ[A073692(n)]-1)`
-/

namespace A073693.P15548580369350576737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (f1 (n + 1) - f1 n - 1).toNat

end

end A073693.P15548580369350576737

/-!
# A073695: Primes arising in A073697.

The programs for A073695, there is no canonical definition to state claims against.
-/

/-! ## A073695.P12207527314956649767

`A110336(A073696(n)/2)`
-/

namespace A073695.P12207527314956649767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110336 (SequenceMachineLib.roundAway ((A073696 n : ℚ) / 2)).toNat

end

end A073695.P12207527314956649767

/-! ## A073695.P10110463663205661297

`A110336(∑[A305360(n+1)])`
-/

namespace A073695.P10110463663205661297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110336 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A073695.P10110463663205661297

/-! ## A073695.P5072654099934349779

`A110336(∑[A055818(n)²])`
-/

namespace A073695.P5072654099934349779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110336 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A073695.P5072654099934349779

/-!
# A073696: Initial members of groups in A073697.

The programs for A073696, there is no canonical definition to state claims against.
-/

/-! ## A073696.P14721529827515272668

`∑[A131565(A131685(3*(n+1)))]`
-/

namespace A073696.P14721529827515272668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131565 (A131685 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073696.P14721529827515272668

/-! ## A073696.P83916387448016494

`∑[gcd(A054612(2*n), A093483(2*n+1))]`
-/

namespace A073696.P83916387448016494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054612 (2 * n)) (A093483 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073696.P83916387448016494

/-! ## A073696.P10673166236352778292

`∑[A249919(A185293(n+3)+A104878(n))]`
-/

namespace A073696.P10673166236352778292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249919 (A185293 (n + 3) + A104878 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073696.P10673166236352778292

/-! ## A073696.P14048038901379347102

`∑[A000005(A177794(2*(n+1))+A034254(n+1))]`
-/

namespace A073696.P14048038901379347102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A177794 (2 * (n + 1)) + A034254 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073696.P14048038901379347102

/-!
# A073697: Group the even numbers so that the product of the terms in each group + 1 is a prime: (2), (4), (6), (8, 10, 12, 14), (16), (18), ... Sequence gives number of terms in each group.

The programs for A073697, there is no canonical definition to state claims against.
-/

/-! ## A073697.P4145573758302790934

`Δ[A073696(n)/2]`
-/

namespace A073697.P4145573758302790934
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073696 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073697.P4145573758302790934

/-! ## A073697.P2231151288569263698

`A001281(Δ[A073696(n)])`
-/

namespace A073697.P2231151288569263698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f1 (n + 1) - f1 n).toNat

end

end A073697.P2231151288569263698

/-! ## A073697.P6219574595424705369

`A004525(Δ[A073696(n)])`
-/

namespace A073697.P6219574595424705369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (n + 1) - f1 n).toNat

end

end A073697.P6219574595424705369

/-! ## A073697.P16285725408650080437

`A004526(Δ[A073696(n)])`
-/

namespace A073697.P16285725408650080437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (n + 1) - f1 n).toNat

end

end A073697.P16285725408650080437

/-! ## A073697.P17975659803466065864

`A006370(Δ[A073696(n)])`
-/

namespace A073697.P17975659803466065864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (f1 (n + 1) - f1 n).toNat

end

end A073697.P17975659803466065864

/-! ## A073697.P8123120900237953383

`A014682(Δ[A073696(n)])`
-/

namespace A073697.P8123120900237953383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f1 (n + 1) - f1 n).toNat

end

end A073697.P8123120900237953383

/-!
# A073698: a(n) is smallest prime not already in the sequence such that the sum of the first n terms is an n-th power.

The programs for A073698, there is no canonical definition to state claims against.
-/

/-! ## A073698.P7846870778964700292

`A000010(Δ[((n+1)²/∏{p}[n+1, #])^n])+1`
-/

namespace A073698.P7846870778964700292
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat + 1

end

end A073698.P7846870778964700292

/-!
# A073699: Floor((Product of composite numbers up to n)/(product of primes up to n)).

The programs for A073699, there is no canonical definition to state claims against.
-/

/-! ## A073699.P2136696630173642582

`floor(A049614(n+1)/A034386(n+1))`
-/

namespace A073699.P2136696630173642582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049614 (n + 1) : ℚ) / (A034386 (n + 1) : ℚ)⌋

end

end A073699.P2136696630173642582

/-! ## A073699.P18120391886987541664

`A138470(A288546(n+7))`
-/

namespace A073699.P18120391886987541664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138470 (A288546 (n + 7)).toNat

end

end A073699.P18120391886987541664

/-! ## A073699.P9561155772106992410

`floor(A342998(n)/A045492(n))`
-/

namespace A073699.P9561155772106992410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A342998 n : ℚ) / (A045492 n : ℚ)⌋

end

end A073699.P9561155772106992410

/-! ## A073699.P12196373745739355484

`A140997(A342456(n))*A263363(n)`
-/

namespace A073699.P12196373745739355484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140997 (A342456 n).toNat * A263363 n

end

end A073699.P12196373745739355484

/-! ## A073699.P16956640780298013059

`A000132(n)%A331886(A018242(n))`
-/

namespace A073699.P16956640780298013059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000132 n) (A331886 (A018242 n).toNat)

end

end A073699.P16956640780298013059

