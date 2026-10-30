import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B003.C000
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B008.C000
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A221701: Let K be a local ring with a principal maximal ideal J of nilpotent degree 2 with |K/J|>2; a(n) = number of D-invariant ideals in the ring R_n(K,J).

The programs for A221701, there is no canonical definition to state claims against.
-/

/-! ## A221701.P15256705874872886307

`2*A221703(n+2)-A221704(n+2)`
-/

namespace A221701.P15256705874872886307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A221703 (n + 2) - A221704 (n + 2)

end

end A221701.P15256705874872886307

/-!
# A221703: Let K be a local ring with a principal maximal ideal J of nilpotent degree 3 with |K/J|>2; a(n) = number of D-invariant ideals in the ring R_n(K,J).

The programs for A221703, there is no canonical definition to state claims against.
-/

/-! ## A221703.P13508535449480761346

`(A221704(n+2)+A221701(n+2))/2`
-/

namespace A221703.P13508535449480761346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221704 (n + 2) + A221701 (n + 2) : ℚ) / 2

end

end A221703.P13508535449480761346

/-! ## A221703.P17124637878646461654

`A014682(A221704(n+2)+A221701(n+2))`
-/

namespace A221703.P17124637878646461654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A221704 (n + 2) + A221701 (n + 2)).toNat

end

end A221703.P17124637878646461654

/-!
# A221704: Let K be a local ring with a principal maximal ideal J of nilpotent degree 4 with |K/J|>2; a(n) = number of D-invariant ideals in the ring R_n(K,J).

The programs for A221704, there is no canonical definition to state claims against.
-/

/-! ## A221704.P10762533514864299056

`2*A221703(n+2)-A221701(n+2)`
-/

namespace A221704.P10762533514864299056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A221703 (n + 2) - A221701 (n + 2)

end

end A221704.P10762533514864299056

/-!
# A221705: Coefficients in q-expansion of modular form (of weight 2 and level 800) associated with the curve y^2 = x^3 - 25x.

The programs for A221705, there is no canonical definition to state claims against.
-/

/-! ## A221705.P3812260988877038779

`A221702(4*n+1)`
-/

namespace A221705.P3812260988877038779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221702 (4 * n + 1)

end

end A221705.P3812260988877038779

/-!
# A221706: Kochanski approximates to sqrt(2) starting with R_0=3, S_0=2.

The programs for A221706, there is no canonical definition to state claims against.
-/

/-! ## A221706.P7022486537094051945

`A028254(n+2)-1`
-/

namespace A221706.P7022486537094051945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028254 (n + 2) - 1

end

end A221706.P7022486537094051945

/-! ## A221706.P2226344302443750627

`∑[abs(Δ[A028254(n+1)])]`
-/

namespace A221706.P2226344302443750627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028254 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221706.P2226344302443750627

/-! ## A221706.P7309001203446822683

`A057428(n+1)+A028254(n+2)`
-/

namespace A221706.P7309001203446822683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A028254 (n + 2)

end

end A221706.P7309001203446822683

/-! ## A221706.P1986707913235607928

`A134824(n+2)+A028254(n+2)`
-/

namespace A221706.P1986707913235607928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A028254 (n + 2)

end

end A221706.P1986707913235607928

/-! ## A221706.P4164539449022359821

`A030203(val(n+1, 10)+1)+A028254(n+2)`
-/

namespace A221706.P4164539449022359821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030203 (SequenceMachineLib.valuation (n + 1) 10 + 1) + A028254 (n + 2)

end

end A221706.P4164539449022359821

/-!
# A221707: Numbers n such that A216377(n) = 1.

The programs for A221707, there is no canonical definition to state claims against.
-/

/-! ## A221707.P11770168627552849388

`eq[1, A216377(n+2)]+2`
-/

namespace A221707.P11770168627552849388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216377 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A221707.P11770168627552849388

/-! ## A221707.P2801006748174724933

`record[A020725(n+1)/A216377(n+2)]`
-/

namespace A221707.P2801006748174724933
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020725 (n + 1) : ℚ) / (A216377 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221707.P2801006748174724933

/-! ## A221707.P6219867853758126189

`record[(A000027(n+1)+1)/A216377(n+2)]`
-/

namespace A221707.P6219867853758126189
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) + 1 : ℚ) / (A216377 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221707.P6219867853758126189

/-! ## A221707.P10404815311361977973

`record[A000720(A000040(n+2)+1)/A216377(n+2)]`
-/

namespace A221707.P10404815311361977973
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000720 (A000040 (n + 2) + 1).toNat : ℚ) / (A216377 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221707.P10404815311361977973

/-! ## A221707.P13451170831887153682

`A000720(p?[A065091(n+1)*A216377(n+2)])`
-/

namespace A221707.P13451170831887153682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) * A216377 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A221707.P13451170831887153682

/-!
# A221708: Records in A216377.

The programs for A221708, there is no canonical definition to state claims against.
-/

/-! ## A221708.P15114952341232034848

`A001030(n+1)+record[A267699(n)]`
-/

namespace A221708.P15114952341232034848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001030 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221708.P15114952341232034848

/-! ## A221708.P2894306913322079796

`A018143(n)+A010878(A000110(n))`
-/

namespace A221708.P2894306913322079796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018143 n + A010878 (A000110 n).toNat

end

end A221708.P2894306913322079796

/-! ## A221708.P6829174691806280115

`A296658(A008965(n+1))+A007782(n)`
-/

namespace A221708.P6829174691806280115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296658 (A008965 (n + 1)).toNat + A007782 n

end

end A221708.P6829174691806280115

/-! ## A221708.P9667436534376365737

`A118030(n+1)+A055642(A000516(n+1))`
-/

namespace A221708.P9667436534376365737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118030 (n + 1) + A055642 (A000516 (n + 1)).toNat

end

end A221708.P9667436534376365737

/-!
# A221714: Numbers written in base 2 with digits rearranged to be in decreasing order.

The programs for A221714, the canonical program `A221714.P3890911169790140761` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221714 has offset 0).

The definition of A221714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221714.P3890911169790140761

`A007088(A073138(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A221714

/-- `A007088(A073138(n))` -/
def P3890911169790140761.Spec : Prop :=
  ∀ n, P3890911169790140761.a n = A221714 n

theorem P3890911169790140761.correct : P3890911169790140761.Spec := by
  intro n
  simp only [A221714]

end A221714

/-! ## A221714.P10257135259520102082

`A007088(A319650(n)+n)`
-/

namespace A221714.P10257135259520102082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A319650 n + (n : ℤ)).toNat

end

end A221714.P10257135259520102082

namespace A221714

/-- `A007088(A319650(n)+n)` -/
def P10257135259520102082.Spec : Prop :=
  ∀ n, P10257135259520102082.a n = A221714 n

theorem P10257135259520102082.correct : P10257135259520102082.Spec := by
  intro n
  simp only [A221714, Nat.add_sub_cancel, A221714.P10257135259520102082.a, A221714.P3890911169790140761.a, A007088, A007088.P12432121332583687413.a, A073138, A073138.P4418127481005985757.a, A319650, A319650.P14664312154430006966.a, A038573, A038573.P5952807231814584452.a, A080100, A080100.P10210311042903193849.a, A097256, A097256.P18324559811505528946.a, A001316, A001316.P6434973587264609955.f1, A001316.P6434973587264609955.a, A080791, A080791.P6131873509789506769.a, A007814, A007814.P13537437864234730737.a, A036987, A036987.P1789601236562705309.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A221714

/-! ## A221714.P5796472094930691321

`A007088(A073139(n)+A073137(n))`
-/

namespace A221714.P5796472094930691321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A073139 n + A073137 n).toNat

end

end A221714.P5796472094930691321

namespace A221714

/-- `A007088(A073139(n)+A073137(n))` -/
def P5796472094930691321.Spec : Prop :=
  ∀ n, P5796472094930691321.a n = A221714 n

end A221714

/-! ## A221714.P3666672639364881937

`A007088(A164884(n)+A038573(n))`
-/

namespace A221714.P3666672639364881937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A164884 n + A038573 n).toNat

end

end A221714.P3666672639364881937

namespace A221714

/-- `A007088(A164884(n)+A038573(n))` -/
def P3666672639364881937.Spec : Prop :=
  ∀ n, P3666672639364881937.a n = A221714 n

end A221714

/-! ## A221714.P12283667661148335198

`A007088(A073140(n)-A073137(n))`
-/

namespace A221714.P12283667661148335198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A073140 n - A073137 n).toNat

end

end A221714.P12283667661148335198

namespace A221714

/-- `A007088(A073140(n)-A073137(n))` -/
def P12283667661148335198.Spec : Prop :=
  ∀ n, P12283667661148335198.a n = A221714 n

theorem P12283667661148335198.correct : P12283667661148335198.Spec := by
  intro n
  simp only [A221714, Nat.add_sub_cancel, A221714.P12283667661148335198.a, A221714.P3890911169790140761.a, A007088, A007088.P12432121332583687413.a, A073137, A073137.P15165915416940425348.a, A073138, A073138.P4418127481005985757.a, A073140, A073140.P4323079817452288887.a, A038573, A038573.P5952807231814584452.a, A053644, A053644.P1707366427427647095.a, A080100, A080100.P10210311042903193849.a, A097256, A097256.P18324559811505528946.a, A001316, A001316.P6434973587264609955.f1, A001316.P6434973587264609955.a, A080791, A080791.P6131873509789506769.a, A007814, A007814.P13537437864234730737.a, A036987, A036987.P1789601236562705309.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A221714

/-! ## A221714.P2608272235164336133

`A007088(A256999(A073137(n)))`
-/

namespace A221714.P2608272235164336133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A256999 (A073137 n).toNat).toNat

end

end A221714.P2608272235164336133

namespace A221714

/-- `A007088(A256999(A073137(n)))` -/
def P2608272235164336133.Spec : Prop :=
  ∀ n, P2608272235164336133.a n = A221714 n

end A221714

/-! ## A221714.P10467398675062294376

`A007088(A164884(2*n)-A164884(n))`
-/

namespace A221714.P10467398675062294376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A164884 (2 * n) - A164884 n).toNat

end

end A221714.P10467398675062294376

namespace A221714

/-- `A007088(A164884(2*n)-A164884(n))` -/
def P10467398675062294376.Spec : Prop :=
  ∀ n, P10467398675062294376.a n = A221714 n

end A221714

/-! ## A221714.P14915701482945924390

`A007088(A383849(A073137(2*n)))`
-/

namespace A221714.P14915701482945924390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A383849 (A073137 (2 * n)).toNat).toNat

end

end A221714.P14915701482945924390

namespace A221714

/-- `A007088(A383849(A073137(2*n)))` -/
def P14915701482945924390.Spec : Prop :=
  ∀ n, P14915701482945924390.a n = A221714 n

end A221714

/-! ## A221714.P5209982247060827073

`A007088(A030109(A073137(2*n+1)))`
-/

namespace A221714.P5209982247060827073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A030109 (A073137 (2 * n + 1)).toNat).toNat

end

end A221714.P5209982247060827073

namespace A221714

/-- `A007088(A030109(A073137(2*n+1)))` -/
def P5209982247060827073.Spec : Prop :=
  ∀ n, P5209982247060827073.a n = A221714 n

end A221714

/-! ## A221714.P1639943919835196528

`A007623(A351988(A059590(n)))`
-/

namespace A221714.P1639943919835196528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A351988 (A059590 n).toNat).toNat

end

end A221714.P1639943919835196528

namespace A221714

/-- `A007623(A351988(A059590(n)))` -/
def P1639943919835196528.Spec : Prop :=
  ∀ n, P1639943919835196528.a n = A221714 n

end A221714

/-!
# A221715: Start of n-th doubling run in A114183.

The programs for A221715, there is no canonical definition to state claims against.
-/

/-! ## A221715.P4854551391353401843

`A213656(n+1)/A011782(A221716(n+1))`
-/

namespace A221715.P4854551391353401843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213656 (n + 1) : ℚ) / (A011782 (A221716 (n + 1)).toNat : ℚ)

end

end A221715.P4854551391353401843

/-! ## A221715.P10522429625938095989

`A213656(n+1)/A011782(Δ[A213220(n+1)])`
-/

namespace A221715.P10522429625938095989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213220 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213656 (n + 1) : ℚ) / (A011782 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A221715.P10522429625938095989

/-! ## A221715.P8651292490599106782

`A213656(n+1)/A011782(A213220(n+2)-A213220(n+1))`
-/

namespace A221715.P8651292490599106782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213656 (n + 1) : ℚ) / (A011782 (A213220 (n + 2) - A213220 (n + 1)).toNat : ℚ)

end

end A221715.P8651292490599106782

/-! ## A221715.P9077318215554090365

`A114183(A213220(n+1))`
-/

namespace A221715.P9077318215554090365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114183 (A213220 (n + 1)).toNat

end

end A221715.P9077318215554090365

/-! ## A221715.P2122943101275110

`A114183(∑[A221716(n+1)]+1-A221716(n+1))`
-/

namespace A221715.P2122943101275110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114183 (∑ j ∈ Finset.range (n + 1), f1 j + (1 - A221716 (n + 1))).toNat

end

end A221715.P2122943101275110

/-!
# A221716: Length of n-th doubling run in A114183.

The programs for A221716, there is no canonical definition to state claims against.
-/

/-! ## A221716.P6884911124959606029

`Δ[A213220(n+1)]`
-/

namespace A221716.P6884911124959606029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221716.P6884911124959606029

/-! ## A221716.P7183953602226624409

`A213220(n+2)-A213220(n+1)`
-/

namespace A221716.P7183953602226624409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213220 (n + 2) - A213220 (n + 1)

end

end A221716.P7183953602226624409

/-! ## A221716.P14681868146231764572

`abs(Δ[A213220(A008619(2*n))])`
-/

namespace A221716.P14681868146231764572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213220 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A221716.P14681868146231764572

/-! ## A221716.P1827627284933598975

`Δ[A213220(A008619(2*n))-2^A008683(A133410(n))]`
-/

namespace A221716.P1827627284933598975
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213220 (A008619 (2 * n)).toNat : ℚ) - (2 : ℚ) ^ (A008683 (A133410 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221716.P1827627284933598975

/-! ## A221716.P17045352227253326682

`A000005(A213656(n+1)/A221715(n+1))`
-/

namespace A221716.P17045352227253326682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A213656 (n + 1) : ℚ) / (A221715 (n + 1) : ℚ))).toNat

end

end A221716.P17045352227253326682

/-! ## A221716.P17929552803690388827

`Δ[A189419(A221715(n+1))]`
-/

namespace A221716.P17929552803690388827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189419 (A221715 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221716.P17929552803690388827

/-! ## A221716.P132952774308601909

`Δ[record[A213220(A028920(n))]]`
-/

namespace A221716.P132952774308601909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213220 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221716.P132952774308601909

/-! ## A221716.P11837879543207402225

`A001511(A213656(n+1)/A221715(n+1))`
-/

namespace A221716.P11837879543207402225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway ((A213656 (n + 1) : ℚ) / (A221715 (n + 1) : ℚ))).toNat

end

end A221716.P11837879543207402225

/-!
# A221717: Non-cuban primes.

The programs for A221717, the canonical program `A221717.P12333639464907125794` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221717 has offset 1).

The definition of A221717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221717.P12333639464907125794

`p?[comp[Δ[n^3]]]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221717

/-- `p?[comp[Δ[n^3]]]` -/
def P12333639464907125794.Spec : Prop :=
  ∀ n, (P12333639464907125794.a n : ℤ) = A221717 (n + 1)

theorem P12333639464907125794.correct : P12333639464907125794.Spec := by
  intro n
  simp only [A221717, Nat.add_sub_cancel]

end A221717

/-! ## A221717.P13964778834047478462

`record[A006530(comp[∑[6*n]]+1)]`
-/

namespace A221717.P13964778834047478462
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221717.P13964778834047478462

namespace A221717

/-- `record[A006530(comp[∑[6*n]]+1)]` -/
def P13964778834047478462.Spec : Prop :=
  ∀ n, P13964778834047478462.a n = A221717 (n + 1)

end A221717

/-! ## A221717.P3085719380856935113

`record[A014963(comp[3*(n²+n)]+1)]`
-/

namespace A221717.P3085719380856935113
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n ^ 2 + n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221717.P3085719380856935113

namespace A221717

/-- `record[A014963(comp[3*(n²+n)]+1)]` -/
def P3085719380856935113.Spec : Prop :=
  ∀ n, P3085719380856935113.a n = A221717 (n + 1)

end A221717

/-! ## A221717.P2949768705818856931

`filter[A038673(n+1), A010051(#)]`
-/

namespace A221717.P2949768705818856931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A221717.P2949768705818856931

namespace A221717

/-- `filter[A038673(n+1), A010051(#)]` -/
def P2949768705818856931.Spec : Prop :=
  ∀ n, P2949768705818856931.a n = A221717 (n + 1)

end A221717

/-! ## A221717.P13630755402058963846

`filter[A038673(n+2), A080339(#)]`
-/

namespace A221717.P13630755402058963846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038673 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A221717.P13630755402058963846

namespace A221717

/-- `filter[A038673(n+2), A080339(#)]` -/
def P13630755402058963846.Spec : Prop :=
  ∀ n, P13630755402058963846.a n = A221717 (n + 1)

end A221717

/-! ## A221717.P9771739324424765184

`∩[A000040(n+1), A038673(n+1)]`
-/

namespace A221717.P9771739324424765184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038673 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221717.P9771739324424765184

namespace A221717

/-- `∩[A000040(n+1), A038673(n+1)]` -/
def P9771739324424765184.Spec : Prop :=
  ∀ n, (P9771739324424765184.a n : ℤ) = A221717 (n + 1)

end A221717

/-! ## A221717.P3916155812266291572

`∩[A038673(n+1), A182986(n+1)]`
-/

namespace A221717.P3916155812266291572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221717.P3916155812266291572

namespace A221717

/-- `∩[A038673(n+1), A182986(n+1)]` -/
def P3916155812266291572.Spec : Prop :=
  ∀ n, (P3916155812266291572.a n : ℤ) = A221717 (n + 1)

end A221717

/-! ## A221717.P15072638586988495054

`record[p?[A318500(A158405(n+1)+n+1)]]`
-/

namespace A221717.P15072638586988495054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318500 (A158405 (n + 1) + (n + 1 : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221717.P15072638586988495054

namespace A221717

/-- `record[p?[A318500(A158405(n+1)+n+1)]]` -/
def P15072638586988495054.Spec : Prop :=
  ∀ n, P15072638586988495054.a n = A221717 (n + 1)

end A221717

/-! ## A221717.P10083702492663075000

`record[A051664(comp[(n+1)*3*n]+1)]`
-/

namespace A221717.P10083702492663075000
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (3 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221717.P10083702492663075000

namespace A221717

/-- `record[A051664(comp[(n+1)*3*n]+1)]` -/
def P10083702492663075000.Spec : Prop :=
  ∀ n, P10083702492663075000.a n = A221717 (n + 1)

end A221717

/-! ## A221717.P17256551254706747557

`eq[A003415(n), A265411(3*n)]`
-/

namespace A221717.P17256551254706747557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265411 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221717.P17256551254706747557

namespace A221717

/-- `eq[A003415(n), A265411(3*n)]` -/
def P17256551254706747557.Spec : Prop :=
  ∀ n, (P17256551254706747557.a n : ℤ) = A221717 (n + 1)

end A221717

/-! ## A221717.P11093338817777351210

`eq[A018783(n), A265411(3*n)]`
-/

namespace A221717.P11093338817777351210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265411 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221717.P11093338817777351210

namespace A221717

/-- `eq[A018783(n), A265411(3*n)]` -/
def P11093338817777351210.Spec : Prop :=
  ∀ n, (P11093338817777351210.a n : ℤ) = A221717 (n + 1)

end A221717

/-! ## A221717.P4441428120841900558

`eq[A078898(n), A265411(3*n)]`
-/

namespace A221717.P4441428120841900558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265411 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221717.P4441428120841900558

namespace A221717

/-- `eq[A078898(n), A265411(3*n)]` -/
def P4441428120841900558.Spec : Prop :=
  ∀ n, (P4441428120841900558.a n : ℤ) = A221717 (n + 1)

end A221717

/-! ## A221717.P17964177981276417023

`eq[A105700(n), A265411(3*n)]`
-/

namespace A221717.P17964177981276417023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265411 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221717.P17964177981276417023

namespace A221717

/-- `eq[A105700(n), A265411(3*n)]` -/
def P17964177981276417023.Spec : Prop :=
  ∀ n, (P17964177981276417023.a n : ℤ) = A221717 (n + 1)

end A221717

/-! ## A221717.P6098036156910919470

`eq[A107463(n), A265411(3*n)]`
-/

namespace A221717.P6098036156910919470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265411 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221717.P6098036156910919470

namespace A221717

/-- `eq[A107463(n), A265411(3*n)]` -/
def P6098036156910919470.Spec : Prop :=
  ∀ n, (P6098036156910919470.a n : ℤ) = A221717 (n + 1)

end A221717

/-! ## A221717.P8792910485493886302

`eq[A175126(n), A265411(3*n)]`
-/

namespace A221717.P8792910485493886302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265411 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221717.P8792910485493886302

namespace A221717

/-- `eq[A175126(n), A265411(3*n)]` -/
def P8792910485493886302.Spec : Prop :=
  ∀ n, (P8792910485493886302.a n : ℤ) = A221717 (n + 1)

end A221717

/-! ## A221717.P11072729050287874434

`eq[A265411(3*n), A302055(n)]`
-/

namespace A221717.P11072729050287874434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265411 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221717.P11072729050287874434

namespace A221717

/-- `eq[A265411(3*n), A302055(n)]` -/
def P11072729050287874434.Spec : Prop :=
  ∀ n, (P11072729050287874434.a n : ℤ) = A221717 (n + 1)

end A221717

/-! ## A221717.P14750653041798193284

`eq[A265411(3*n), A328771(n)]`
-/

namespace A221717.P14750653041798193284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265411 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328771 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221717.P14750653041798193284

namespace A221717

/-- `eq[A265411(3*n), A328771(n)]` -/
def P14750653041798193284.Spec : Prop :=
  ∀ n, (P14750653041798193284.a n : ℤ) = A221717 (n + 1)

end A221717

/-! ## A221717.P8867693926461807936

`eq[A265411(3*n), A328772(n)]`
-/

namespace A221717.P8867693926461807936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265411 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328772 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221717.P8867693926461807936

namespace A221717

/-- `eq[A265411(3*n), A328772(n)]` -/
def P8867693926461807936.Spec : Prop :=
  ∀ n, (P8867693926461807936.a n : ℤ) = A221717 (n + 1)

end A221717

/-! ## A221717.P13501942773129803830

`eq[A265411(3*n), A335405(n)]`
-/

namespace A221717.P13501942773129803830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265411 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335405 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A221717.P13501942773129803830

namespace A221717

/-- `eq[A265411(3*n), A335405(n)]` -/
def P13501942773129803830.Spec : Prop :=
  ∀ n, (P13501942773129803830.a n : ℤ) = A221717 (n + 1)

end A221717

/-!
# A221718: Floor(sqrt(3*2^n)).

The programs for A221718, the canonical program `A221718.P14729684843826935988` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221718 has offset 0).

The definition of A221718 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(sqrt(3*2^n))` (program `A221718.P14729684843826935988`, by `A221718.P14729684843826935988.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A221718.P14729684843826935988

`floor(sqrt(3*2^n))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221718

/-- `floor(sqrt(3*2^n))` -/
def P14729684843826935988.Spec : Prop :=
  ∀ n, (P14729684843826935988.a n : ℤ) = A221718 n

theorem P14729684843826935988.correct : P14729684843826935988.Spec := by
  intro n
  simp only [A221718]

end A221718

/-! ## A221718.P14981676393802859437

`record[floor(sqrt(A087009(n)))]`
-/

namespace A221718.P14981676393802859437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A087009 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221718.P14981676393802859437

namespace A221718

/-- `record[floor(sqrt(A087009(n)))]` -/
def P14981676393802859437.Spec : Prop :=
  ∀ n, P14981676393802859437.a n = A221718 n

end A221718

/-! ## A221718.P15917341940318753345

`ceil(sqrt(A007283(n)))-1`
-/

namespace A221718.P15917341940318753345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A007283 n : ℝ)⌉ - 1

end

end A221718.P15917341940318753345

namespace A221718

/-- `ceil(sqrt(A007283(n)))-1` -/
def P15917341940318753345.Spec : Prop :=
  ∀ n, P15917341940318753345.a n = A221718 n

end A221718

/-! ## A221718.P15724222011559204558

`ceil(sqrt(A181565(n)))-1`
-/

namespace A221718.P15724222011559204558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A181565 n : ℝ)⌉ - 1

end

end A221718.P15724222011559204558

namespace A221718

/-- `ceil(sqrt(A181565(n)))-1` -/
def P15724222011559204558.Spec : Prop :=
  ∀ n, P15724222011559204558.a n = A221718 n

end A221718

/-! ## A221718.P16501278597635770950

`record[floor(sqrt(A163864(n+1)))]`
-/

namespace A221718.P16501278597635770950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A163864 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221718.P16501278597635770950

namespace A221718

/-- `record[floor(sqrt(A163864(n+1)))]` -/
def P16501278597635770950.Spec : Prop :=
  ∀ n, P16501278597635770950.a n = A221718 n

end A221718

/-! ## A221718.P9371748530511461700

`record[floor(sqrt(A164073(n+1)))]`
-/

namespace A221718.P9371748530511461700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A164073 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221718.P9371748530511461700

namespace A221718

/-- `record[floor(sqrt(A164073(n+1)))]` -/
def P9371748530511461700.Spec : Prop :=
  ∀ n, P9371748530511461700.a n = A221718 n

end A221718

/-! ## A221718.P15766212921750926849

`ceil(sqrt(A052955(2*n+1)))-1`
-/

namespace A221718.P15766212921750926849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A052955 (2 * n + 1) : ℝ)⌉ - 1

end

end A221718.P15766212921750926849

namespace A221718

/-- `ceil(sqrt(A052955(2*n+1)))-1` -/
def P15766212921750926849.Spec : Prop :=
  ∀ n, P15766212921750926849.a n = A221718 n

end A221718

/-! ## A221718.P5891327921999373004

`ceil(sqrt(A209721(2*(n+1))))-1`
-/

namespace A221718.P5891327921999373004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A209721 (2 * (n + 1)) : ℝ)⌉ - 1

end

end A221718.P5891327921999373004

namespace A221718

/-- `ceil(sqrt(A209721(2*(n+1))))-1` -/
def P5891327921999373004.Spec : Prop :=
  ∀ n, P5891327921999373004.a n = A221718 n

end A221718

/-! ## A221718.P4666994590296306322

`record[floor(sqrt(2*A277880(n+1)))]`
-/

namespace A221718.P4666994590296306322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A277880 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221718.P4666994590296306322

namespace A221718

/-- `record[floor(sqrt(2*A277880(n+1)))]` -/
def P4666994590296306322.Spec : Prop :=
  ∀ n, P4666994590296306322.a n = A221718 n

end A221718

/-! ## A221718.P8641612760030820739

`record[floor(sqrt(A277880(n+1)))]`
-/

namespace A221718.P8641612760030820739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A277880 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221718.P8641612760030820739

namespace A221718

/-- `record[floor(sqrt(A277880(n+1)))]` -/
def P8641612760030820739.Spec : Prop :=
  ∀ n, P8641612760030820739.a n = A221718 n

end A221718

/-!
# A221719: a(n) = 3*2^n - Fibonacci(n+3) - 1.

The programs for A221719, the canonical program `A221719.P12211535061211735157` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221719 has offset 0).

The definition of A221719 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*2^n-A000045(n+3)-1` (program `A221719.P12211535061211735157`, by `A221719.P12211535061211735157.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A221719.P9908894777786296235

`ogf((2x-2x^2-x^3)/(1-4x+4x^2+x^3-2x^4))`
-/

namespace A221719.P9908894777786296235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -2, -1] [1, -4, 4, 1, -2] n

end

end A221719.P9908894777786296235

namespace A221719

/-- `ogf((2x-2x^2-x^3)/(1-4x+4x^2+x^3-2x^4))` -/
def P9908894777786296235.Spec : Prop :=
  ∀ n, P9908894777786296235.a n = A221719 n

end A221719

/-! ## A221719.P1414033005408428977

`A104004(n)-1`
-/

namespace A221719.P1414033005408428977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104004 n - 1

end

end A221719.P1414033005408428977

namespace A221719

/-- `A104004(n)-1` -/
def P1414033005408428977.Spec : Prop :=
  ∀ n, P1414033005408428977.a n = A221719 n

end A221719

/-! ## A221719.P12211535061211735157

`3*2^n-A000045(n+3)-1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A221719

/-- `3*2^n-A000045(n+3)-1` -/
def P12211535061211735157.Spec : Prop :=
  ∀ n, P12211535061211735157.a n = A221719 n

theorem P12211535061211735157.correct : P12211535061211735157.Spec := by
  intro n
  simp only [A221719]

end A221719

/-! ## A221719.P2919061492299489347

`A083329(n+1)-A000045(n+3)`
-/

namespace A221719.P2919061492299489347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 (n + 1) - A000045 (n + 3)

end

end A221719.P2919061492299489347

namespace A221719

/-- `A083329(n+1)-A000045(n+3)` -/
def P2919061492299489347.Spec : Prop :=
  ∀ n, P2919061492299489347.a n = A221719 n

end A221719

/-! ## A221719.P1220988087752152345

`4*a(n-1)-4*a(n-2)-a(n-3)+2*a(n-4)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=15`
-/

namespace A221719.P1220988087752152345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 6, 15] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2) - a (n - 3) + 2 * a (n - 4)

end

end A221719.P1220988087752152345

namespace A221719

/-- `4*a(n-1)-4*a(n-2)-a(n-3)+2*a(n-4)` -/
def P1220988087752152345.Spec : Prop :=
  ∀ n, P1220988087752152345.a n = A221719 n

end A221719

/-! ## A221719.P1209467228219775870

`abs(Δ[Δ[A100321(n)]])-1`
-/

namespace A221719.P1209467228219775870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100321 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - 1

end

end A221719.P1209467228219775870

namespace A221719

/-- `abs(Δ[Δ[A100321(n)]])-1` -/
def P1209467228219775870.Spec : Prop :=
  ∀ n, P1209467228219775870.a n = A221719 n

end A221719

/-! ## A221719.P764227336898547566

`A001611(n)+2*a(n-1)` with `a(0)=0`
-/

namespace A221719.P764227336898547566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001611 n + 2 * a (n - 1)

end

end A221719.P764227336898547566

namespace A221719

/-- `A001611(n)+2*a(n-1)` -/
def P764227336898547566.Spec : Prop :=
  ∀ n, P764227336898547566.a n = A221719 n

end A221719

/-! ## A221719.P14220730595922425386

`2*a(n-1)+A000045(n)+1` with `a(0)=0`
-/

namespace A221719.P14220730595922425386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + (A000045 n + 1)

end

end A221719.P14220730595922425386

namespace A221719

/-- `2*a(n-1)+A000045(n)+1` -/
def P14220730595922425386.Spec : Prop :=
  ∀ n, P14220730595922425386.a n = A221719 n

end A221719

/-! ## A221719.P17716280898490241839

`A007283(n)-A048577(n)`
-/

namespace A221719.P17716280898490241839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n - A048577 n

end

end A221719.P17716280898490241839

namespace A221719

/-- `A007283(n)-A048577(n)` -/
def P17716280898490241839.Spec : Prop :=
  ∀ n, P17716280898490241839.a n = A221719 n

end A221719

/-! ## A221719.P13559613199880821685

`A153893(n)-A020695(n)`
-/

namespace A221719.P13559613199880821685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 n - A020695 n

end

end A221719.P13559613199880821685

namespace A221719

/-- `A153893(n)-A020695(n)` -/
def P13559613199880821685.Spec : Prop :=
  ∀ n, P13559613199880821685.a n = A221719 n

end A221719

/-! ## A221719.P5999153564414776512

`A175657(n)-A001611(n)`
-/

namespace A221719.P5999153564414776512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175657 n - A001611 n

end

end A221719.P5999153564414776512

namespace A221719

/-- `A175657(n)-A001611(n)` -/
def P5999153564414776512.Spec : Prop :=
  ∀ n, P5999153564414776512.a n = A221719 n

end A221719

/-! ## A221719.P10660861920626136605

`A181565(n)-A018910(n)`
-/

namespace A221719.P10660861920626136605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181565 n - A018910 n

end

end A221719.P10660861920626136605

namespace A221719

/-- `A181565(n)-A018910(n)` -/
def P10660861920626136605.Spec : Prop :=
  ∀ n, P10660861920626136605.a n = A221719 n

end A221719

/-! ## A221719.P16795809684072757774

`A008466(n+1)+A000225(n)`
-/

namespace A221719.P16795809684072757774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008466 (n + 1) + A000225 n

end

end A221719.P16795809684072757774

namespace A221719

/-- `A008466(n+1)+A000225(n)` -/
def P16795809684072757774.Spec : Prop :=
  ∀ n, P16795809684072757774.a n = A221719 n

theorem P16795809684072757774.correct : P16795809684072757774.Spec := by
  intro n
  simp only [A221719, Nat.add_sub_cancel, A221719.P16795809684072757774.a, A221719.P12211535061211735157.a, A000045, A000045.P11838749114346432762.a, A000225, A000225.P6535533121115206393.a, A008466, A008466.P13225017953189168160.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A221719

/-! ## A221719.P11336347473806988680

`A004119(n+1)-A018910(n)`
-/

namespace A221719.P11336347473806988680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004119 (n + 1) - A018910 n

end

end A221719.P11336347473806988680

namespace A221719

/-- `A004119(n+1)-A018910(n)` -/
def P11336347473806988680.Spec : Prop :=
  ∀ n, P11336347473806988680.a n = A221719 n

end A221719

/-! ## A221719.P10358451516609796160

`A007283(n)-(A020695(n)+1)`
-/

namespace A221719.P10358451516609796160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n - (A020695 n + 1)

end

end A221719.P10358451516609796160

namespace A221719

/-- `A007283(n)-(A020695(n)+1)` -/
def P10358451516609796160.Spec : Prop :=
  ∀ n, P10358451516609796160.a n = A221719 n

end A221719

/-! ## A221719.P1054431017615787539

`A033484(n)-(A001911(n)+1)`
-/

namespace A221719.P1054431017615787539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n - (A001911 n + 1)

end

end A221719.P1054431017615787539

namespace A221719

/-- `A033484(n)-(A001911(n)+1)` -/
def P1054431017615787539.Spec : Prop :=
  ∀ n, P1054431017615787539.a n = A221719 n

theorem P1054431017615787539.correct : P1054431017615787539.Spec := by
  intro n
  simp only [A221719, Nat.add_sub_cancel, A221719.P1054431017615787539.a, A221719.P12211535061211735157.a, A000045, A000045.P11838749114346432762.a, A001911, A001911.P2299546665043418976.a, A033484, A033484.P10856640375789116383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A221719

/-! ## A221719.P4402477048469393707

`A003945(n+1)-A048577(n)`
-/

namespace A221719.P4402477048469393707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (n + 1) - A048577 n

end

end A221719.P4402477048469393707

namespace A221719

/-- `A003945(n+1)-A048577(n)` -/
def P4402477048469393707.Spec : Prop :=
  ∀ n, P4402477048469393707.a n = A221719 n

end A221719

/-! ## A221719.P2828408624701682067

`A027973(n)-(A027934(n)+1)`
-/

namespace A221719.P2828408624701682067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027973 n - (A027934 n + 1)

end

end A221719.P2828408624701682067

namespace A221719

/-- `A027973(n)-(A027934(n)+1)` -/
def P2828408624701682067.Spec : Prop :=
  ∀ n, P2828408624701682067.a n = A221719 n

end A221719

/-! ## A221719.P17075165901833597706

`A052940(n)-A071679(n+1)`
-/

namespace A221719.P17075165901833597706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052940 n - A071679 (n + 1)

end

end A221719.P17075165901833597706

namespace A221719

/-- `A052940(n)-A071679(n+1)` -/
def P17075165901833597706.Spec : Prop :=
  ∀ n, P17075165901833597706.a n = A221719 n

end A221719

/-! ## A221719.P5590624854223282812

`A175657(n)-(A000045(n)+1)`
-/

namespace A221719.P5590624854223282812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175657 n - (A000045 n + 1)

end

end A221719.P5590624854223282812

namespace A221719

/-- `A175657(n)-(A000045(n)+1)` -/
def P5590624854223282812.Spec : Prop :=
  ∀ n, P5590624854223282812.a n = A221719 n

end A221719

/-!
# A221720: An avoidance sequence for a pair of tree patterns that is not the avoidance sequence for any set of permutations.

The programs for A221720, there is no canonical definition to state claims against.
-/

/-! ## A221720.P5319527029154408590

`A003056(A133436(n*a(n-1)))` with `a(0)=1`
-/

namespace A221720.P5319527029154408590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003056 (A133436 ((n : ℤ) * a (n - 1)).toNat).toNat

end

end A221720.P5319527029154408590

/-!
# A221721: Number of n X 3 arrays of occupancy after each element stays put or moves to some horizontal, diagonal or antidiagonal neighbor.

The programs for A221721, there is no canonical definition to state claims against.
-/

/-! ## A221721.P10532327683687581489

`A221723(∑[n+3]+1)`
-/

namespace A221721.P10532327683687581489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221723 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221721.P10532327683687581489

/-! ## A221721.P8759596106682855463

`A008289(n+1)*A221723(A034856(n+2))`
-/

namespace A221721.P8759596106682855463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008289 (n + 1) * A221723 (A034856 (n + 2)).toNat

end

end A221721.P8759596106682855463

/-!
# A221722: Number of n X 4 arrays of occupancy after each element stays put or moves to some horizontal, diagonal or antidiagonal neighbor.

The programs for A221722, there is no canonical definition to state claims against.
-/

/-! ## A221722.P5450264857585856414

`A221723(abs(n-2-∑[n+5]))`
-/

namespace A221722.P5450264857585856414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221723 |(n : ℤ) - 2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|.toNat

end

end A221722.P5450264857585856414

/-!
# A221724: Number of 3Xn arrays of occupancy after each element stays put or moves to some horizontal, diagonal or antidiagonal neighbor.

The programs for A221724, there is no canonical definition to state claims against.
-/

/-! ## A221724.P1990786162718572108

`A221723(∑[n+2]+4)`
-/

namespace A221724.P1990786162718572108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221723 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221724.P1990786162718572108

/-! ## A221724.P13160661402652866504

`and(-1, A221723(A167614(n+1)))`
-/

namespace A221724.P13160661402652866504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A221723 (A167614 (n + 1)).toNat)

end

end A221724.P13160661402652866504

/-! ## A221724.P14787547038138472556

`A221723(A167614(n+1))+A011744(n)`
-/

namespace A221724.P14787547038138472556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221723 (A167614 (n + 1)).toNat + A011744 n

end

end A221724.P14787547038138472556

/-! ## A221724.P3748466414641796275

`A221723(A167614(n+1))+A066035(n)`
-/

namespace A221724.P3748466414641796275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221723 (A167614 (n + 1)).toNat + A066035 n

end

end A221724.P3748466414641796275

/-!
# A221725: Number of 4Xn arrays of occupancy after each element stays put or moves to some horizontal, diagonal or antidiagonal neighbor.

The programs for A221725, there is no canonical definition to state claims against.
-/

/-! ## A221725.P3016877489802775696

`A221723(A141214(n)+7)`
-/

namespace A221725.P3016877489802775696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221723 (A141214 n + 7).toNat

end

end A221725.P3016877489802775696

/-! ## A221725.P2200487622962028816

`A221723(A052905(n)+9)`
-/

namespace A221725.P2200487622962028816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221723 (A052905 n + 9).toNat

end

end A221725.P2200487622962028816

/-! ## A221725.P4915370472748621532

`A221723(A055999(n)+10)`
-/

namespace A221725.P4915370472748621532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221723 (A055999 n + 10).toNat

end

end A221725.P4915370472748621532

/-!
# A221726: Number of nX3 arrays of occupancy after each element stays put or moves to some horizontal, diagonal or antidiagonal neighbor, with every occupancy equal to zero or two.

The programs for A221726, there is no canonical definition to state claims against.
-/

/-! ## A221726.P9836334603304909150

`A221728(∑[n+3]+1)`
-/

namespace A221726.P9836334603304909150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221728 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221726.P9836334603304909150

/-! ## A221726.P15928289573567499547

`lcm(2, A221728(Δ[A008778(n)]))`
-/

namespace A221726.P15928289573567499547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A221728 (f1 (n + 1) - f1 n).toNat)

end

end A221726.P15928289573567499547

/-! ## A221726.P14054011015320997432

`A014963(10*n+8)*A221728(Δ[A008778(n)])`
-/

namespace A221726.P14054011015320997432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * n + 8) * A221728 (f1 (n + 1) - f1 n).toNat

end

end A221726.P14054011015320997432

/-! ## A221726.P1711882975041007416

`A000005(((-1)^n)²)*A221728(Δ[A008778(n)])`
-/

namespace A221726.P1711882975041007416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (((-1) ^ n) ^ 2).toNat * A221728 (f1 (n + 1) - f1 n).toNat

end

end A221726.P1711882975041007416

/-!
# A221727: Number of nX4 arrays of occupancy after each element stays put or moves to some horizontal, diagonal or antidiagonal neighbor, with every occupancy equal to zero or two.

The programs for A221727, there is no canonical definition to state claims against.
-/

/-! ## A221727.P13805147006185406138

`A221728(A141214(n+1))`
-/

namespace A221727.P13805147006185406138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221728 (A141214 (n + 1)).toNat

end

end A221727.P13805147006185406138

/-! ## A221727.P12810809985639372660

`A221728(A055998(n+2))`
-/

namespace A221727.P12810809985639372660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221728 (A055998 (n + 2)).toNat

end

end A221727.P12810809985639372660

/-! ## A221727.P6803911517793744401

`A221728(A155212(n)+5)`
-/

namespace A221727.P6803911517793744401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221728 (A155212 n + 5).toNat

end

end A221727.P6803911517793744401

/-!
# A221728: T(n,k)=Number of nXk arrays of occupancy after each element stays put or moves to some horizontal, diagonal or antidiagonal neighbor, with every occupancy equal to zero or two.

The programs for A221728, there is no canonical definition to state claims against.
-/

/-! ## A221728.P15432185907007083095

`and(A212896(A337408(n+1)), A337408(n+1))`
-/

namespace A221728.P15432185907007083095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A212896 (A337408 (n + 1)).toNat) (A337408 (n + 1))

end

end A221728.P15432185907007083095

/-!
# A221729: Number of 3Xn arrays of occupancy after each element stays put or moves to some horizontal, diagonal or antidiagonal neighbor, with every occupancy equal to zero or two.

The programs for A221729, there is no canonical definition to state claims against.
-/

/-! ## A221729.P16351044598882572770

`A221728(∑[A051004(n+2)]+4)`
-/

namespace A221729.P16351044598882572770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051004 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221728 (∑ j ∈ Finset.range (n + 1), f1 j + 4).toNat

end

end A221729.P16351044598882572770

/-! ## A221729.P12687750077574053521

`A221728(lcm((n+1)/∏{p}[n+1, #], A167614(n+1)))`
-/

namespace A221729.P12687750077574053521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221728 (Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A167614 (n + 1)))

end

end A221729.P12687750077574053521

/-! ## A221729.P12078620534581746621

`A221728(A020752(n)-A072405(n))`
-/

namespace A221729.P12078620534581746621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221728 (A020752 n - A072405 n).toNat

end

end A221729.P12078620534581746621

/-! ## A221729.P9469260258637560103

`A221728(A023358(n)*A167614(n+1))`
-/

namespace A221729.P9469260258637560103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221728 (A023358 n * A167614 (n + 1)).toNat

end

end A221729.P9469260258637560103

/-!
# A221730: Number of 4 X n arrays of occupancy after each element stays put or moves to some horizontal, diagonal or antidiagonal neighbor, with every occupancy equal to zero or two.

The programs for A221730, there is no canonical definition to state claims against.
-/

/-! ## A221730.P5403959216206241198

`A221728(A141214(n)+7)`
-/

namespace A221730.P5403959216206241198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221728 (A141214 n + 7).toNat

end

end A221730.P5403959216206241198

/-! ## A221730.P3436817003606735269

`A221728(A052905(n)+9)`
-/

namespace A221730.P3436817003606735269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221728 (A052905 n + 9).toNat

end

end A221730.P3436817003606735269

/-! ## A221730.P12114962676613737024

`A221728(A055999(n)+10)`
-/

namespace A221730.P12114962676613737024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221728 (A055999 n + 10).toNat

end

end A221730.P12114962676613737024

/-! ## A221730.P9019310616570655029

`A221728(eq[5, A066657(n)])`
-/

namespace A221730.P9019310616570655029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221730.P9019310616570655029

/-!
# A221731: Number of n X 2 arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221731, the canonical program `A221731.P6489021291248113796` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221731 has offset 1).

The definition of A221731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221731.P5173305169182784135

`ogf((3+2x)/(1-5x-2x^2))`
-/

namespace A221731.P5173305169182784135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2] [1, -5, -2] n

end

end A221731.P5173305169182784135

namespace A221731

/-- `ogf((3+2x)/(1-5x-2x^2))` -/
def P5173305169182784135.Spec : Prop :=
  ∀ n, P5173305169182784135.a n = A221731 (n + 1)

end A221731

/-! ## A221731.P6489021291248113796

`5*a(n-1)+2*a(n-2)` with `a(0)=3, a(1)=17`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221731

/-- `5*a(n-1)+2*a(n-2)` -/
def P6489021291248113796.Spec : Prop :=
  ∀ n, (P6489021291248113796.a n : ℤ) = A221731 (n + 1)

theorem P6489021291248113796.correct : P6489021291248113796.Spec := by
  intro n
  simp only [A221731, Nat.add_sub_cancel]

end A221731

/-! ## A221731.P8011537374465155238

`∑{#}[n+1, C(n+1, #)*A354131(#)]`
-/

namespace A221731.P8011537374465155238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 1) k : ℤ) * A354131 k

end

end A221731.P8011537374465155238

namespace A221731

/-- `∑{#}[n+1, C(n+1, #)*A354131(#)]` -/
def P8011537374465155238.Spec : Prop :=
  ∀ n, P8011537374465155238.a n = A221731 (n + 1)

end A221731

/-! ## A221731.P11263837964520483440

`A180038(n+1)+A015535(n+1)`
-/

namespace A221731.P11263837964520483440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180038 (n + 1) + A015535 (n + 1)

end

end A221731.P11263837964520483440

namespace A221731

/-- `A180038(n+1)+A015535(n+1)` -/
def P11263837964520483440.Spec : Prop :=
  ∀ n, P11263837964520483440.a n = A221731 (n + 1)

end A221731

/-! ## A221731.P69119093750539337

`A233020(n+1)+2*A015535(n)`
-/

namespace A221731.P69119093750539337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233020 (n + 1) + 2 * A015535 n

end

end A221731.P69119093750539337

namespace A221731

/-- `A233020(n+1)+2*A015535(n)` -/
def P69119093750539337.Spec : Prop :=
  ∀ n, P69119093750539337.a n = A221731 (n + 1)

end A221731

/-! ## A221731.P13549752088512441138

`A124610(n+1)+2*A015535(n+1)`
-/

namespace A221731.P13549752088512441138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124610 (n + 1) + 2 * A015535 (n + 1)

end

end A221731.P13549752088512441138

namespace A221731

/-- `A124610(n+1)+2*A015535(n+1)` -/
def P13549752088512441138.Spec : Prop :=
  ∀ n, P13549752088512441138.a n = A221731 (n + 1)

end A221731

/-! ## A221731.P2246536790306334235

`2*A180038(n+1)-A124610(n+1)`
-/

namespace A221731.P2246536790306334235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180038 (n + 1) - A124610 (n + 1)

end

end A221731.P2246536790306334235

namespace A221731

/-- `2*A180038(n+1)-A124610(n+1)` -/
def P2246536790306334235.Spec : Prop :=
  ∀ n, P2246536790306334235.a n = A221731 (n + 1)

end A221731

/-! ## A221731.P5583856302311405635

`A100638(4*n+1)+A100638(4*n+2)`
-/

namespace A221731.P5583856302311405635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100638 (4 * n + 1) + A100638 (4 * n + 2)

end

end A221731.P5583856302311405635

namespace A221731

/-- `A100638(4*n+1)+A100638(4*n+2)` -/
def P5583856302311405635.Spec : Prop :=
  ∀ n, P5583856302311405635.a n = A221731 (n + 1)

end A221731

/-! ## A221731.P8712499776058793769

`Δ[Δ[A015535(n)]]-A015535(n)`
-/

namespace A221731.P8712499776058793769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015535 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A015535 n

end

end A221731.P8712499776058793769

namespace A221731

/-- `Δ[Δ[A015535(n)]]-A015535(n)` -/
def P8712499776058793769.Spec : Prop :=
  ∀ n, P8712499776058793769.a n = A221731 (n + 1)

end A221731

/-! ## A221731.P6731408514946704368

`A327765(n+1)-A180038(n+1)`
-/

namespace A221731.P6731408514946704368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327765 (n + 1) - A180038 (n + 1)

end

end A221731.P6731408514946704368

namespace A221731

/-- `A327765(n+1)-A180038(n+1)` -/
def P6731408514946704368.Spec : Prop :=
  ∀ n, P6731408514946704368.a n = A221731 (n + 1)

end A221731

/-! ## A221731.P9657256248053752537

`(A327765(n+1)+A015535(n+1))/2`
-/

namespace A221731.P9657256248053752537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327765 (n + 1) + A015535 (n + 1) : ℚ) / 2

end

end A221731.P9657256248053752537

namespace A221731

/-- `(A327765(n+1)+A015535(n+1))/2` -/
def P9657256248053752537.Spec : Prop :=
  ∀ n, P9657256248053752537.a n = (A221731 (n + 1) : ℚ)

end A221731

/-! ## A221731.P9086744602717597933

`A327765(n+1)-(A124610(n+1)+A015535(n+1))`
-/

namespace A221731.P9086744602717597933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327765 (n + 1) - (A124610 (n + 1) + A015535 (n + 1))

end

end A221731.P9086744602717597933

namespace A221731

/-- `A327765(n+1)-(A124610(n+1)+A015535(n+1))` -/
def P9086744602717597933.Spec : Prop :=
  ∀ n, P9086744602717597933.a n = A221731 (n + 1)

end A221731

/-!
# A221732: Number of n X 3 arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221732, there is no canonical definition to state claims against.
-/

/-! ## A221732.P18177210961643788353

`ogf((8+8x+32x^2-16x^3)/(1-18x-17x^2-6x^3+17x^4))`
-/

namespace A221732.P18177210961643788353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 8, 32, -16] [1, -18, -17, -6, 17] n

end

end A221732.P18177210961643788353

/-! ## A221732.P10213316653748650627

`A221736(∑[n+3]+1)`
-/

namespace A221732.P10213316653748650627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221736 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221732.P10213316653748650627

/-! ## A221732.P8569227313690332180

`A221736(A034856(n+2))%A179605(3*n+4)`
-/

namespace A221732.P8569227313690332180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221736 (A034856 (n + 2)).toNat) (A179605 (3 * n + 4))

end

end A221732.P8569227313690332180

/-!
# A221733: Number of nX4 arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221733, there is no canonical definition to state claims against.
-/

/-! ## A221733.P5916122372871854403

`A221736(A141214(n+1))`
-/

namespace A221733.P5916122372871854403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221736 (A141214 (n + 1)).toNat

end

end A221733.P5916122372871854403

/-! ## A221733.P10717709678462427316

`A221736(A155212(n)+5)`
-/

namespace A221733.P10717709678462427316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221736 (A155212 n + 5).toNat

end

end A221733.P10717709678462427316

/-! ## A221733.P17573133177066287844

`A221736(A056000(n)+7)`
-/

namespace A221733.P17573133177066287844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221736 (A056000 n + 7).toNat

end

end A221733.P17573133177066287844

/-! ## A221733.P5628802490942037461

`A221736(eq[2, A152157(n)])`
-/

namespace A221733.P5628802490942037461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221733.P5628802490942037461

/-!
# A221734: Number of nX5 arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221734, there is no canonical definition to state claims against.
-/

/-! ## A221734.P7741672584226487045

`A221736(Δ[A264443(n)])`
-/

namespace A221734.P7741672584226487045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221736 (f1 (n + 1) - f1 n).toNat

end

end A221734.P7741672584226487045

/-! ## A221734.P14407822165006791728

`A221736(A046691(n+3))`
-/

namespace A221734.P14407822165006791728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221736 (A046691 (n + 3)).toNat

end

end A221734.P14407822165006791728

/-! ## A221734.P16470100193609170075

`A221736(A056115(n)+11)`
-/

namespace A221734.P16470100193609170075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221736 (A056115 n + 11).toNat

end

end A221734.P16470100193609170075

/-!
# A221735: Number of nX6 arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221735, there is no canonical definition to state claims against.
-/

/-! ## A221735.P10180837932423560313

`A221736(eq[16, A057728(n+1)])`
-/

namespace A221735.P10180837932423560313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221735.P10180837932423560313

/-! ## A221735.P10125377263976100379

`A221736(Δ[Δ[A006504(n+1)]])`
-/

namespace A221735.P10125377263976100379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221736 (f1 (n + 1) - f1 n).toNat

end

end A221735.P10125377263976100379

/-!
# A221737: Number of 2 X n arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221737, there is no canonical definition to state claims against.
-/

/-! ## A221737.P16392174719276850315

`A221736(∑[n+1]+2)`
-/

namespace A221737.P16392174719276850315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221736 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221737.P16392174719276850315

/-! ## A221737.P5797224974581109057

`record[A221736(A133263(∑{e}[n, #]))]`
-/

namespace A221737.P5797224974581109057
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221736 (A133263 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221737.P5797224974581109057

/-! ## A221737.P1687442920660645472

`record[gcd(A221736(n+1), A284823(n+1))]`
-/

namespace A221737.P1687442920660645472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221736 (n + 1)) (A284823 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221737.P1687442920660645472

/-!
# A221738: Number of 3Xn arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221738, there is no canonical definition to state claims against.
-/

/-! ## A221738.P17529611176745279754

`A221736(∑[n+2]+4)`
-/

namespace A221738.P17529611176745279754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221736 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221738.P17529611176745279754

/-! ## A221738.P3447739027352337103

`A221736(A167614(n+1))^ceil(acot(n))`
-/

namespace A221738.P3447739027352337103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221736 (A167614 (n + 1)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A221738.P3447739027352337103

/-! ## A221738.P2980964185603274242

`A221736(A167614(n+1))+A025442(n)`
-/

namespace A221738.P2980964185603274242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221736 (A167614 (n + 1)).toNat + A025442 n

end

end A221738.P2980964185603274242

/-! ## A221738.P14705082745796071576

`A321803(n)+A221736(A167614(n+1))`
-/

namespace A221738.P14705082745796071576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321803 n + A221736 (A167614 (n + 1)).toNat

end

end A221738.P14705082745796071576

/-! ## A221738.P12941285254170672725

`A221736(A167614(n+1))%A221733(n+1)`
-/

namespace A221738.P12941285254170672725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221736 (A167614 (n + 1)).toNat) (A221733 (n + 1))

end

end A221738.P12941285254170672725

/-!
# A221739: Number of 4Xn arrays of occupancy after each element stays put or moves to some horizontal or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221739, there is no canonical definition to state claims against.
-/

/-! ## A221739.P9418688062224309292

`A221736(A141214(n)+7)`
-/

namespace A221739.P9418688062224309292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221736 (A141214 n + 7).toNat

end

end A221739.P9418688062224309292

/-! ## A221739.P2398635725112838892

`A221736(A052905(n)+9)`
-/

namespace A221739.P2398635725112838892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221736 (A052905 n + 9).toNat

end

end A221739.P2398635725112838892

/-! ## A221739.P5220074502124572950

`A221736(A055999(n)+10)`
-/

namespace A221739.P5220074502124572950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221736 (A055999 n + 10).toNat

end

end A221739.P5220074502124572950

/-! ## A221739.P17567248371522205664

`A221736(eq[5, A066657(n)])`
-/

namespace A221739.P17567248371522205664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221739.P17567248371522205664

/-! ## A221739.P16473243905034478567

`A221736(A167614(n+2)+1)`
-/

namespace A221739.P16473243905034478567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221736 (A167614 (n + 2) + 1).toNat

end

end A221739.P16473243905034478567

/-!
# A221740: a(n) = -4*((n-1)*(n+1)^(n+1)+1)/(((-1)^n-3)*n^3).

The programs for A221740, the canonical program `A221740.P3391149456112789674` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221740 has offset 1).

The definition of A221740 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A221740.P3391149456112789674

`-4*(n*(n+2)^(n+2)+1)/(((-1)^(n+1)-3)*(n+1)^3)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221740

/-- `-4*(n*(n+2)^(n+2)+1)/(((-1)^(n+1)-3)*(n+1)^3)` -/
def P3391149456112789674.Spec : Prop :=
  ∀ n, P3391149456112789674.a n = (A221740 (n + 1) : ℚ)

end A221740

/-! ## A221740.P14530847377790750191

`abs(A051846(n+1)/A030640(n))`
-/

namespace A221740.P14530847377790750191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A051846 (n + 1) : ℚ) / (A030640 n : ℚ)|

end

end A221740.P14530847377790750191

namespace A221740

/-- `abs(A051846(n+1)/A030640(n))` -/
def P14530847377790750191.Spec : Prop :=
  ∀ n, P14530847377790750191.a n = (A221740 (n + 1) : ℚ)

end A221740

/-! ## A221740.P14241432587803162907

`abs((n*A058128(n+2)+1)/A030640(n))`
-/

namespace A221740.P14241432587803162907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) * A058128 (n + 2) + 1 : ℚ) / (A030640 n : ℚ)|

end

end A221740.P14241432587803162907

namespace A221740

/-- `abs((n*A058128(n+2)+1)/A030640(n))` -/
def P14241432587803162907.Spec : Prop :=
  ∀ n, P14241432587803162907.a n = (A221740 (n + 1) : ℚ)

end A221740

/-! ## A221740.P15027785848208595200

`abs((n*A023811(n+2)+1+n)/A030640(n))`
-/

namespace A221740.P15027785848208595200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) * A023811 (n + 2) + 1 + (n : ℤ) : ℚ) / (A030640 n : ℚ)|

end

end A221740.P15027785848208595200

namespace A221740

/-- `abs((n*A023811(n+2)+1+n)/A030640(n))` -/
def P15027785848208595200.Spec : Prop :=
  ∀ n, P15027785848208595200.a n = (A221740 (n + 1) : ℚ)

end A221740

/-! ## A221740.P13690394198276491633

`abs((A000169(n+2)-A060073(n+2))/A030640(n))`
-/

namespace A221740.P13690394198276491633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A000169 (n + 2) - A060073 (n + 2) : ℚ) / (A030640 n : ℚ)|

end

end A221740.P13690394198276491633

namespace A221740

/-- `abs((A000169(n+2)-A060073(n+2))/A030640(n))` -/
def P13690394198276491633.Spec : Prop :=
  ∀ n, P13690394198276491633.a n = (A221740 (n + 1) : ℚ)

end A221740

/-!
# A221741: a(n) = -4*(((n+1)^(n+1)-(n+1))/((n+1)-1)^2-1)/((-3+(-1)^n)*n).

The programs for A221741, there is no canonical definition to state claims against.
-/

/-! ## A221741.P18034251151117376740

`abs(A023811(n+2)/A030640(n))`
-/

namespace A221741.P18034251151117376740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A023811 (n + 2) : ℚ) / (A030640 n : ℚ)|

end

end A221741.P18034251151117376740

/-! ## A221741.P2549164212358947386

`A023811(n+2)/A060819(2*(n+1))`
-/

namespace A221741.P2549164212358947386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023811 (n + 2) : ℚ) / (A060819 (2 * (n + 1)) : ℚ)

end

end A221741.P2549164212358947386

/-! ## A221741.P8689130078617374727

`A023811(n+2)/gcd(n+1, A000096(n+1))`
-/

namespace A221741.P8689130078617374727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023811 (n + 2) : ℚ) / (Int.gcd (n + 1 : ℤ) (A000096 (n + 1)) : ℚ)

end

end A221741.P8689130078617374727

/-! ## A221741.P2154344828518450600

`A023811(n+2)/gcd(A023811(n+2), A131738(n))`
-/

namespace A221741.P2154344828518450600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023811 (n + 2) : ℚ) / (Int.gcd (A023811 (n + 2)) (A131738 n) : ℚ)

end

end A221741.P2154344828518450600

/-! ## A221741.P7189132908527149575

`lcm(A005843(n+1), A023811(n+2))/A005843(n+1)`
-/

namespace A221741.P7189132908527149575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A005843 (n + 1)) (A023811 (n + 2)) : ℚ) / (A005843 (n + 1) : ℚ)

end

end A221741.P7189132908527149575

/-!
# A221742: Carmichael numbers of the form (6*k+1)*(12*k+1)*(18*k+1) which are the product of four prime numbers.

The programs for A221742, there is no canonical definition to state claims against.
-/

/-! ## A221742.P20791519151967239

`A382809(A221743(n+1))`
-/

namespace A221742.P20791519151967239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382809 (A221743 (n + 1)).toNat

end

end A221742.P20791519151967239

/-! ## A221742.P1930073560934432602

`A011199(6*A221743(n+1))`
-/

namespace A221742.P1930073560934432602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011199 (6 * A221743 (n + 1)).toNat

end

end A221742.P1930073560934432602

/-!
# A221744: Integer solutions to n^4 = x^3 + y^2 (values of x sorted by n).

The programs for A221744, there is no canonical definition to state claims against.
-/

/-! ## A221744.P14079085898117996662

`A135609(n)-A332951(∑[ceil(3^(n-1))])`
-/

namespace A221744.P14079085898117996662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135609 n - A332951 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A221744.P14079085898117996662

/-!
# A221746: Number of nX2 arrays of occupancy after each element moves to some king-move neighbor, without move-in move-out straight through or left turns.

The programs for A221746, there is no canonical definition to state claims against.
-/

/-! ## A221746.P10866306142033931423

`A221749(∑[n+1]+2)`
-/

namespace A221746.P10866306142033931423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221749 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221746.P10866306142033931423

/-! ## A221746.P5719686359671231334

`record[A109466(n)*A221749(n+3)]`
-/

namespace A221746.P5719686359671231334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109466 n * A221749 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221746.P5719686359671231334

/-! ## A221746.P7930380140215301029

`record[gcd(A159854(n), A221749(n+1))]`
-/

namespace A221746.P7930380140215301029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A159854 n) (A221749 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221746.P7930380140215301029

/-! ## A221746.P8554378513745373731

`record[A221749(n+3)/A221723(n+1)]`
-/

namespace A221746.P8554378513745373731
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221749 (n + 3) : ℚ) / (A221723 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221746.P8554378513745373731

/-!
# A221747: Number of nX3 arrays of occupancy after each element moves to some king-move neighbor, without move-in move-out straight through or left turns.

The programs for A221747, there is no canonical definition to state claims against.
-/

/-! ## A221747.P11053628400037565503

`A221749(∑[n+2]+4)`
-/

namespace A221747.P11053628400037565503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221749 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221747.P11053628400037565503

/-! ## A221747.P2355475449078320437

`and(-1, A221749(A167614(n+1)))`
-/

namespace A221747.P2355475449078320437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A221749 (A167614 (n + 1)).toNat)

end

end A221747.P2355475449078320437

/-! ## A221747.P8708369339454206817

`A221749(ceil(n+3+C(n+2, 2)+ϕ))+A000007(n+1)`
-/

namespace A221747.P8708369339454206817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221749 ⌈(n + 3 : ℝ) + ((Nat.choose (n + 2) 2 : ℝ) + Real.goldenRatio)⌉.toNat + A000007 (n + 1)

end

end A221747.P8708369339454206817

/-!
# A221748: Number of nX4 arrays of occupancy after each element moves to some king-move neighbor, without move-in move-out straight through or left turns.

The programs for A221748, there is no canonical definition to state claims against.
-/

/-! ## A221748.P7545732895632517154

`A221749(∑[n+3]+7)`
-/

namespace A221748.P7545732895632517154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221749 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A221748.P7545732895632517154

/-! ## A221748.P3401972365993596608

`record[A221749(A190080(n+1))]`
-/

namespace A221748.P3401972365993596608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221749 (A190080 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221748.P3401972365993596608

/-!
# A221750: Number of n X n arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221750, there is no canonical definition to state claims against.
-/

/-! ## A221750.P17691766888757531177

`A221755(∑[4*n]+1)`
-/

namespace A221750.P17691766888757531177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221755 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221750.P17691766888757531177

/-! ## A221750.P10364411087110280454

`A221755(A001844(n))+char[7]`
-/

namespace A221750.P10364411087110280454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221755 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A221750.P10364411087110280454

/-! ## A221750.P2809015771302261885

`and(-1, A221755(A000982(2*n+1)))`
-/

namespace A221750.P2809015771302261885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A221755 (A000982 (2 * n + 1)).toNat)

end

end A221750.P2809015771302261885

/-!
# A221751: Number of nX4 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221751, there is no canonical definition to state claims against.
-/

/-! ## A221751.P15471182644989649860

`A221755(∑[n+4]+3)`
-/

namespace A221751.P15471182644989649860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221755 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A221751.P15471182644989649860

/-! ## A221751.P8365392059177084339

`record[A221755(A198461(n+1))]`
-/

namespace A221751.P8365392059177084339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221755 (A198461 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221751.P8365392059177084339

/-! ## A221751.P13143360380663921997

`record[gcd(A221755(n+1), A299038(n+3))]`
-/

namespace A221751.P13143360380663921997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221755 (n + 1)) (A299038 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221751.P13143360380663921997

/-!
# A221752: Number of nX5 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221752, there is no canonical definition to state claims against.
-/

/-! ## A221752.P1470812501867711270

`A221755(∑[n+5]+6)`
-/

namespace A221752.P1470812501867711270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221755 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A221752.P1470812501867711270

/-!
# A221753: Number of nX6 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221753, there is no canonical definition to state claims against.
-/

/-! ## A221753.P15211226894371968160

`A221755(C(n+6, 2)+n+1)`
-/

namespace A221753.P15211226894371968160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221755 (Nat.choose (n + 6) 2 + n + 1)

end

end A221753.P15211226894371968160

/-! ## A221753.P12927067943919788954

`A221755(A052905(n+3))`
-/

namespace A221753.P12927067943919788954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221755 (A052905 (n + 3)).toNat

end

end A221753.P12927067943919788954

/-! ## A221753.P6394851256514296179

`A221755(A056119(n)+16)`
-/

namespace A221753.P6394851256514296179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221755 (A056119 n + 16).toNat

end

end A221753.P6394851256514296179

/-! ## A221753.P1107063832563643098

`A221755(eq[3, A219347(n)])`
-/

namespace A221753.P1107063832563643098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221755 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221753.P1107063832563643098

/-!
# A221754: Number of nX7 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221754, there is no canonical definition to state claims against.
-/

/-! ## A221754.P1255676455599181091

`A221755(C(n+7, 2)+n+1)`
-/

namespace A221754.P1255676455599181091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221755 (Nat.choose (n + 7) 2 + (n + 1))

end

end A221754.P1255676455599181091

/-! ## A221754.P5871543557413113436

`A221755(A055999(n+4))`
-/

namespace A221754.P5871543557413113436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221755 (A055999 (n + 4)).toNat

end

end A221754.P5871543557413113436

/-! ## A221754.P13485216726242228945

`A221755(eq[4, A219347(n)])`
-/

namespace A221754.P13485216726242228945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221755 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221754.P13485216726242228945

/-!
# A221755: T(n,k)=Number of nXk arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221755, there is no canonical definition to state claims against.
-/

/-! ## A221755.P8532241324010209707

`and(A053716(n+1), A067693(A221483(n+1)))`
-/

namespace A221755.P8532241324010209707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053716 (n + 1)) (A067693 (A221483 (n + 1)).toNat)

end

end A221755.P8532241324010209707

/-! ## A221755.P7019499699269213692

`and(A067693(A221483(n+1)), A083781(n+1))`
-/

namespace A221755.P7019499699269213692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A067693 (A221483 (n + 1)).toNat) (A083781 (n + 1))

end

end A221755.P7019499699269213692

/-! ## A221755.P7597424456765160383

`and(A067693(A221483(n+1)), A096702(n+1))`
-/

namespace A221755.P7597424456765160383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A067693 (A221483 (n + 1)).toNat) (A096702 (n + 1))

end

end A221755.P7597424456765160383

/-! ## A221755.P14097067463044137418

`and(A067693(A221483(n+1)), A210191(n+1))`
-/

namespace A221755.P14097067463044137418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A067693 (A221483 (n + 1)).toNat) (A210191 (n + 1))

end

end A221755.P14097067463044137418

/-! ## A221755.P14342231264775980037

`and(A051634(3*n+4), A067693(A221483(n+1)))`
-/

namespace A221755.P14342231264775980037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051634 (3 * n + 4)) (A067693 (A221483 (n + 1)).toNat)

end

end A221755.P14342231264775980037

/-!
# A221756: Number of 2 X n arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221756, the canonical program `A221756.P12917714057447650015` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221756 has offset 1).

The definition of A221756 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221756.P5510872509833936144

`ogf((2x-x^2-4x^3)/(1-x-6x^2-x^3+4x^4))`
-/

namespace A221756.P5510872509833936144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1, -4] [1, -1, -6, -1, 4] n

end

end A221756.P5510872509833936144

namespace A221756

/-- `ogf((2x-x^2-4x^3)/(1-x-6x^2-x^3+4x^4))` -/
def P5510872509833936144.Spec : Prop :=
  ∀ n, P5510872509833936144.a n = A221756 (n + 1)

end A221756

/-! ## A221756.P12917714057447650015

`a(n-1)+6*a(n-2)+a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=2, a(2)=1, a(3)=9`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221756

/-- `a(n-1)+6*a(n-2)+a(n-3)-4*a(n-4)` -/
def P12917714057447650015.Spec : Prop :=
  ∀ n, P12917714057447650015.a n = A221756 (n + 1)

theorem P12917714057447650015.correct : P12917714057447650015.Spec := by
  intro n
  simp only [A221756, Nat.add_sub_cancel]

end A221756

/-! ## A221756.P10163387972119666840

`A221755(∑[n+1]+2)`
-/

namespace A221756.P10163387972119666840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221755 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221756.P10163387972119666840

namespace A221756

/-- `A221755(∑[n+1]+2)` -/
def P10163387972119666840.Spec : Prop :=
  ∀ n, P10163387972119666840.a n = A221756 (n + 1)

end A221756

/-! ## A221756.P6354431734794854077

`A007318(C(2, n))*A221755(A000096(n)+3)`
-/

namespace A221756.P6354431734794854077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A221755 (A000096 n + 3).toNat

end

end A221756.P6354431734794854077

namespace A221756

/-- `A007318(C(2, n))*A221755(A000096(n)+3)` -/
def P6354431734794854077.Spec : Prop :=
  ∀ n, P6354431734794854077.a n = A221756 (n + 1)

end A221756

/-! ## A221756.P12751234626260553326

`gcd(11, A007318(n))*A221755(A000096(n)+3)`
-/

namespace A221756.P12751234626260553326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 11 (A007318 n) : ℤ) * A221755 (A000096 n + 3).toNat

end

end A221756.P12751234626260553326

namespace A221756

/-- `gcd(11, A007318(n))*A221755(A000096(n)+3)` -/
def P12751234626260553326.Spec : Prop :=
  ∀ n, P12751234626260553326.a n = A221756 (n + 1)

end A221756

/-!
# A221757: Number of 3 X n arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221757, there is no canonical definition to state claims against.
-/

/-! ## A221757.P17873533051685409282

`A221755(∑[n+2]+4)`
-/

namespace A221757.P17873533051685409282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221755 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221757.P17873533051685409282

/-! ## A221757.P12361101489996825248

`ceil(acot(n))*A221755(A167614(n+1))`
-/

namespace A221757.P12361101489996825248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A221755 (A167614 (n + 1)).toNat

end

end A221757.P12361101489996825248

/-! ## A221757.P1854801090980086025

`A221755(A167614(n+1))+A025442(n)`
-/

namespace A221757.P1854801090980086025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221755 (A167614 (n + 1)).toNat + A025442 n

end

end A221757.P1854801090980086025

/-! ## A221757.P16215990113937645980

`A221755(A167614(n+1))+A025469(n)`
-/

namespace A221757.P16215990113937645980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221755 (A167614 (n + 1)).toNat + A025469 n

end

end A221757.P16215990113937645980

/-! ## A221757.P15537246943001346916

`A221755(A167614(n+1))+A055967(n)`
-/

namespace A221757.P15537246943001346916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221755 (A167614 (n + 1)).toNat + A055967 n

end

end A221757.P15537246943001346916

/-!
# A221758: Number of 4Xn arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221758, there is no canonical definition to state claims against.
-/

/-! ## A221758.P17943987739059030046

`A221755(∑[n+3]+7)`
-/

namespace A221758.P17943987739059030046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221755 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A221758.P17943987739059030046

/-!
# A221759: Number of 5Xn arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221759, there is no canonical definition to state claims against.
-/

/-! ## A221759.P17943885715977478830

`A221755(A167499(n+3))`
-/

namespace A221759.P17943885715977478830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221755 (A167499 (n + 3)).toNat

end

end A221759.P17943885715977478830

/-! ## A221759.P13495344268994990066

`A221755(A155212(n)+13)`
-/

namespace A221759.P13495344268994990066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221755 (A155212 n + 13).toNat

end

end A221759.P13495344268994990066

/-! ## A221759.P13539178504958627269

`A221755(A056000(n)+15)`
-/

namespace A221759.P13539178504958627269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221755 (A056000 n + 15).toNat

end

end A221759.P13539178504958627269

/-! ## A221759.P3186045610758387042

`A221755(eq[7, A066657(n)])`
-/

namespace A221759.P3186045610758387042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221755 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221759.P3186045610758387042

/-! ## A221759.P12281030604573840420

`A221755(A166136(n+3)-1)`
-/

namespace A221759.P12281030604573840420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221755 (A166136 (n + 3) - 1).toNat

end

end A221759.P12281030604573840420

/-!
# A221760: Number of 6Xn arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221760, there is no canonical definition to state claims against.
-/

/-! ## A221760.P10434952784024705141

`A221755(∑[n+5]+16)`
-/

namespace A221760.P10434952784024705141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221755 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A221760.P10434952784024705141

/-!
# A221761: Number of 7Xn arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without move-in move-out straight through or left turns.

The programs for A221761, there is no canonical definition to state claims against.
-/

/-! ## A221761.P15043140417498927244

`A221755(A167487(n+5))`
-/

namespace A221761.P15043140417498927244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221755 (A167487 (n + 5)).toNat

end

end A221761.P15043140417498927244

/-! ## A221761.P4614180912816296561

`A221755(A056119(n)+28)`
-/

namespace A221761.P4614180912816296561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221755 (A056119 n + 28).toNat

end

end A221761.P4614180912816296561

/-! ## A221761.P17822341954658468620

`A221755(eq[11, A066657(n)])`
-/

namespace A221761.P17822341954658468620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221755 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221761.P17822341954658468620

/-!
# A221762: Numbers m such that 11*m^2 + 5 is a square.

The programs for A221762, the canonical program `A221762.P6060710751891883182` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221762 has offset 1).

The definition of A221762 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A221762.P14105308204605506377

`ogf((1+2x+2x^2+x^3)/(1-20x^2+x^4))`
-/

namespace A221762.P14105308204605506377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 2, 1] [1, 0, -20, 0, 1] n

end

end A221762.P14105308204605506377

namespace A221762

/-- `ogf((1+2x+2x^2+x^3)/(1-20x^2+x^4))` -/
def P14105308204605506377.Spec : Prop :=
  ∀ n, P14105308204605506377.a n = A221762 (n + 1)

end A221762

/-! ## A221762.P6060710751891883182

`20*a(n-2)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=22, a(3)=41`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221762

/-- `20*a(n-2)-a(n-4)` -/
def P6060710751891883182.Spec : Prop :=
  ∀ n, P6060710751891883182.a n = A221762 (n + 1)

theorem P6060710751891883182.correct : P6060710751891883182.Spec := by
  intro n
  simp only [A221762, Nat.add_sub_cancel]

end A221762

/-! ## A221762.P2799008231756962478

`2*A041015(n)-A221763(n+1)`
-/

namespace A221762.P2799008231756962478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A041015 n - A221763 (n + 1)

end

end A221762.P2799008231756962478

namespace A221762

/-- `2*A041015(n)-A221763(n+1)` -/
def P2799008231756962478.Spec : Prop :=
  ∀ n, P2799008231756962478.a n = A221762 (n + 1)

end A221762

/-!
# A221763: Numbers m such that 11*m^2 - 7 is a square.

The programs for A221763, the canonical program `A221763.P2764776250911335249` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221763 has offset 1).

The definition of A221763 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A221763.P2764776250911335249

`ogf((1+4x-4x^2-x^3)/(1-20x^2+x^4))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221763

/-- `ogf((1+4x-4x^2-x^3)/(1-20x^2+x^4))` -/
def P2764776250911335249.Spec : Prop :=
  ∀ n, P2764776250911335249.a n = A221763 (n + 1)

theorem P2764776250911335249.correct : P2764776250911335249.Spec := by
  intro n
  simp only [A221763, Nat.add_sub_cancel]

end A221763

/-! ## A221763.P1213117035241420343

`2*A041015(n)-A221762(n+1)`
-/

namespace A221763.P1213117035241420343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A041015 n - A221762 (n + 1)

end

end A221763.P1213117035241420343

namespace A221763

/-- `2*A041015(n)-A221762(n+1)` -/
def P1213117035241420343.Spec : Prop :=
  ∀ n, P1213117035241420343.a n = A221763 (n + 1)

end A221763

/-! ## A221763.P8684410278398487064

`A004277(A041015(n))-A221762(n+1)`
-/

namespace A221763.P8684410278398487064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A041015 n).toNat - A221762 (n + 1)

end

end A221763.P8684410278398487064

namespace A221763

/-- `A004277(A041015(n))-A221762(n+1)` -/
def P8684410278398487064.Spec : Prop :=
  ∀ n, P8684410278398487064.a n = A221763 (n + 1)

end A221763

/-!
# A221764: Number of n X 3 arrays of occupancy after each element moves to some horizontal or vertical neighbor, without 2-loops or left turns.

The programs for A221764, the canonical program `A221764.P5589034281538812972` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221764 has offset 1).

The definition of A221764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221764.P15614921470322905316

`ogf((3x-8x^2+6x^3)/(1-8x+14x^2-8x^3+x^4))`
-/

namespace A221764.P15614921470322905316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -8, 6] [1, -8, 14, -8, 1] n

end

end A221764.P15614921470322905316

namespace A221764

/-- `ogf((3x-8x^2+6x^3)/(1-8x+14x^2-8x^3+x^4))` -/
def P15614921470322905316.Spec : Prop :=
  ∀ n, P15614921470322905316.a n = A221764 (n + 1)

end A221764

/-! ## A221764.P5589034281538812972

`∑[6*a(n-1)-a(n-2)+1]` with `a(0)=0, a(1)=3, a(2)=13`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221764

/-- `∑[6*a(n-1)-a(n-2)+1]` -/
def P5589034281538812972.Spec : Prop :=
  ∀ n, P5589034281538812972.a n = A221764 (n + 1)

theorem P5589034281538812972.correct : P5589034281538812972.Spec := by
  intro n
  simp only [A221764, Nat.add_sub_cancel]

end A221764

/-! ## A221764.P3105186674075772612

`6*a(n-1)-a(n-2)-4+n` with `a(0)=0, a(1)=3`
-/

namespace A221764.P3105186674075772612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  6 * a (n - 1) - a (n - 2) - 4 + (n : ℤ)

end

end A221764.P3105186674075772612

namespace A221764

/-- `6*a(n-1)-a(n-2)-4+n` -/
def P3105186674075772612.Spec : Prop :=
  ∀ n, P3105186674075772612.a n = A221764 (n + 1)

end A221764

/-! ## A221764.P11120046428879386025

`6*a(n-1)-a(n-2)-(4-n)` with `a(0)=0, a(1)=3`
-/

namespace A221764.P11120046428879386025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  6 * a (n - 1) - a (n - 2) - (4 - (n : ℤ))

end

end A221764.P11120046428879386025

namespace A221764

/-- `6*a(n-1)-a(n-2)-(4-n)` -/
def P11120046428879386025.Spec : Prop :=
  ∀ n, P11120046428879386025.a n = A221764 (n + 1)

end A221764

/-! ## A221764.P189132814620605336

`∑[A204514(2*n+1)+A053142(n)]`
-/

namespace A221764.P189132814620605336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204514 (2 * n + 1) + A053142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221764.P189132814620605336

namespace A221764

/-- `∑[A204514(2*n+1)+A053142(n)]` -/
def P189132814620605336.Spec : Prop :=
  ∀ n, P189132814620605336.a n = A221764 (n + 1)

end A221764

/-! ## A221764.P12628765956646515817

`∑[A204514(2*n+1)+∑[A204512(2*(n+1))]]`
-/

namespace A221764.P12628765956646515817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204512 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204514 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221764.P12628765956646515817

namespace A221764

/-- `∑[A204514(2*n+1)+∑[A204512(2*(n+1))]]` -/
def P12628765956646515817.Spec : Prop :=
  ∀ n, P12628765956646515817.a n = A221764 (n + 1)

end A221764

/-!
# A221765: Number of nX4 arrays of occupancy after each element moves to some horizontal or vertical neighbor, without 2-loops or left turns.

The programs for A221765, there is no canonical definition to state claims against.
-/

/-! ## A221765.P9524447850522504320

`A221768(∑[n+2]+7-xor(n, -1))`
-/

namespace A221765.P9524447850522504320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221768 (((∑ j ∈ Finset.range (n + 1), f1 j + 7 : ℕ) : ℤ) - Int.xor (n : ℤ) (-1)).toNat

end

end A221765.P9524447850522504320

/-! ## A221765.P13681343289070224111

`A221768(C(Δ[n²]-(n-4), 2)-n)`
-/

namespace A221765.P13681343289070224111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221768 (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((n : ℤ) - 4)).toNat 2 - n)

end

end A221765.P13681343289070224111

/-! ## A221765.P7636888123247180552

`A221768(A141214(n)+7)`
-/

namespace A221765.P7636888123247180552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221768 (A141214 n + 7).toNat

end

end A221765.P7636888123247180552

/-! ## A221765.P15897938051897121498

`A221768(A052905(n)+9)`
-/

namespace A221765.P15897938051897121498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221768 (A052905 n + 9).toNat

end

end A221765.P15897938051897121498

/-! ## A221765.P6977980091656081035

`A221768(A055999(n)+10)`
-/

namespace A221765.P6977980091656081035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221768 (A055999 n + 10).toNat

end

end A221765.P6977980091656081035

/-!
# A221766: Number of nX5 arrays of occupancy after each element moves to some horizontal or vertical neighbor, without 2-loops or left turns.

The programs for A221766, there is no canonical definition to state claims against.
-/

/-! ## A221766.P10606790134728174652

`A221768(A167499(n+3))`
-/

namespace A221766.P10606790134728174652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221768 (A167499 (n + 3)).toNat

end

end A221766.P10606790134728174652

/-! ## A221766.P7665716414116304273

`A221768(A155212(n)+13)`
-/

namespace A221766.P7665716414116304273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221768 (A155212 n + 13).toNat

end

end A221766.P7665716414116304273

/-! ## A221766.P2929685989413914368

`A221768(A056000(n)+15)`
-/

namespace A221766.P2929685989413914368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221768 (A056000 n + 15).toNat

end

end A221766.P2929685989413914368

/-! ## A221766.P5238867082559786944

`A221768(eq[7, A066657(n)])`
-/

namespace A221766.P5238867082559786944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221768 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221766.P5238867082559786944

/-! ## A221766.P426667974939949232

`A221768(A167614(n+3)+2)`
-/

namespace A221766.P426667974939949232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221768 (A167614 (n + 3) + 2).toNat

end

end A221766.P426667974939949232

/-!
# A221767: Number of nX6 arrays of occupancy after each element moves to some horizontal or vertical neighbor, without 2-loops or left turns.

The programs for A221767, there is no canonical definition to state claims against.
-/

/-! ## A221767.P7066609576607703915

`A221768(A056115(n)+21)`
-/

namespace A221767.P7066609576607703915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221768 (A056115 n + 21).toNat

end

end A221767.P7066609576607703915

/-! ## A221767.P8846942834013401897

`A221768(A167499(n+4)+1)`
-/

namespace A221767.P8846942834013401897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221768 (A167499 (n + 4) + 1).toNat

end

end A221767.P8846942834013401897

/-! ## A221767.P11102158826688634122

`A221768(A077169(n+6)+1)`
-/

namespace A221767.P11102158826688634122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221768 (A077169 (n + 6) + 1).toNat

end

end A221767.P11102158826688634122

/-! ## A221767.P7743126247639347198

`A221768(A167614(n+4)+3)`
-/

namespace A221767.P7743126247639347198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221768 (A167614 (n + 4) + 3).toNat

end

end A221767.P7743126247639347198

/-! ## A221767.P5810657015311037273

`A221768(A000217(n+5)+6)`
-/

namespace A221767.P5810657015311037273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221768 (A000217 (n + 5) + 6).toNat

end

end A221767.P5810657015311037273

/-!
# A221768: T(n,k)=Number of nXk arrays of occupancy after each element moves to some horizontal or vertical neighbor, without 2-loops or left turns.

The programs for A221768, there is no canonical definition to state claims against.
-/

/-! ## A221768.P12850389687251727320

`A122921(A230840(n+1))`
-/

namespace A221768.P12850389687251727320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A230840 (n + 1)).toNat

end

end A221768.P12850389687251727320

/-! ## A221768.P12417412954876178603

`A325785(A008518(n))-1`
-/

namespace A221768.P12417412954876178603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325785 (A008518 n).toNat - 1

end

end A221768.P12417412954876178603

/-! ## A221768.P9884911038423645418

`A157465(A099594(n)^A033264(n+1))`
-/

namespace A221768.P9884911038423645418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157465 (SequenceMachineLib.roundAway ((A099594 n : ℚ) ^ (A033264 (n + 1) : ℤ))).toNat

end

end A221768.P9884911038423645418

/-! ## A221768.P17010166101721491460

`A316455(A086645(n))%A288383(n+1)`
-/

namespace A221768.P17010166101721491460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316455 (A086645 n).toNat) (A288383 (n + 1))

end

end A221768.P17010166101721491460

/-!
# A221769: Number of n X 2 arrays of occupancy after each element stays put or moves to some horizontal or vertical neighbor, without move-in move-out left turns.

The programs for A221769, there is no canonical definition to state claims against.
-/

/-! ## A221769.P8423500209567292291

`A221773(∑[n+1]+2)`
-/

namespace A221769.P8423500209567292291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221773 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221769.P8423500209567292291

/-! ## A221769.P6176193745470189908

`record[A221773(A220692(n+1)+2)]`
-/

namespace A221769.P6176193745470189908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221773 (A220692 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221769.P6176193745470189908

/-! ## A221769.P12543216665388540794

`record[A221773(n+3)/A221736(n+1)]`
-/

namespace A221769.P12543216665388540794
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221773 (n + 3) : ℚ) / (A221736 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221769.P12543216665388540794

/-! ## A221769.P3117401853000438082

`record[A221773(A198455(n+1))]`
-/

namespace A221769.P3117401853000438082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221773 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221769.P3117401853000438082

/-! ## A221769.P18304365149785701072

`record[A221773(n+3)/A221723(n+1)]`
-/

namespace A221769.P18304365149785701072
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221773 (n + 3) : ℚ) / (A221723 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221769.P18304365149785701072

/-!
# A221770: Number of nX3 arrays of occupancy after each element stays put or moves to some horizontal or vertical neighbor, without move-in move-out left turns.

The programs for A221770, there is no canonical definition to state claims against.
-/

/-! ## A221770.P8740375142099745613

`A221773(∑[n+2]+4)`
-/

namespace A221770.P8740375142099745613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221773 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221770.P8740375142099745613

/-! ## A221770.P4022959238098085018

`A221773(A167614(n+1))+A102683(n)`
-/

namespace A221770.P4022959238098085018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221773 (A167614 (n + 1)).toNat + A102683 n

end

end A221770.P4022959238098085018

/-! ## A221770.P3483210625601597648

`A221773(A167614(n+1))+A185284(n)`
-/

namespace A221770.P3483210625601597648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221773 (A167614 (n + 1)).toNat + A185284 n

end

end A221770.P3483210625601597648

/-! ## A221770.P639017774558568268

`A133502(n)*A221773(A167614(n+1))`
-/

namespace A221770.P639017774558568268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133502 n * A221773 (A167614 (n + 1)).toNat

end

end A221770.P639017774558568268

/-! ## A221770.P3519153031695650725

`lcm(A221773(A167614(n+1)), A321804(n))`
-/

namespace A221770.P3519153031695650725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A221773 (A167614 (n + 1)).toNat) (A321804 n)

end

end A221770.P3519153031695650725

/-!
# A221771: Number of nX4 arrays of occupancy after each element stays put or moves to some horizontal or vertical neighbor, without move-in move-out left turns.

The programs for A221771, there is no canonical definition to state claims against.
-/

/-! ## A221771.P18279051735241986262

`A221773(∑[n+3]+7)`
-/

namespace A221771.P18279051735241986262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221773 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A221771.P18279051735241986262

/-! ## A221771.P8170793943524565374

`A221773(A055998(n+2))+A180989(n+1)`
-/

namespace A221771.P8170793943524565374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221773 (A055998 (n + 2)).toNat + A180989 (n + 1)

end

end A221771.P8170793943524565374

/-!
# A221772: Number of nX5 arrays of occupancy after each element stays put or moves to some horizontal or vertical neighbor, without move-in move-out left turns.

The programs for A221772, there is no canonical definition to state claims against.
-/

/-! ## A221772.P16536414320867513981

`A221773(A374005(n+1))`
-/

namespace A221772.P16536414320867513981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221773 (A374005 (n + 1)).toNat

end

end A221772.P16536414320867513981

/-! ## A221772.P10566375798941737156

`A221773(eq[7, A066657(n)])`
-/

namespace A221772.P10566375798941737156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221773 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221772.P10566375798941737156

/-!
# A221773: T(n,k)=Number of nXk arrays of occupancy after each element stays put or moves to some horizontal or vertical neighbor, without move-in move-out left turns.

The programs for A221773, there is no canonical definition to state claims against.
-/

/-! ## A221773.P10408640787472680364

`A267952(n+1)+A185135(A185135(n))`
-/

namespace A221773.P10408640787472680364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267952 (n + 1) + A185135 (A185135 n).toNat

end

end A221773.P10408640787472680364

/-! ## A221773.P17997461103551968488

`or(A267952(n+1), A373948(A189867(n+3)))`
-/

namespace A221773.P17997461103551968488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A267952 (n + 1)) (A373948 (A189867 (n + 3)).toNat)

end

end A221773.P17997461103551968488

/-!
# A221774: Number of nX2 arrays of occupancy after each element stays put or moves to some king-move neighbor, without move-in move-out left turns.

The programs for A221774, there is no canonical definition to state claims against.
-/

/-! ## A221774.P6544846835391515393

`A221776(∑[n+1]+2)`
-/

namespace A221774.P6544846835391515393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221776 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221774.P6544846835391515393

/-! ## A221774.P10019313626699002843

`record[A010054(n)*A221776(n+2)]`
-/

namespace A221774.P10019313626699002843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A221776 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221774.P10019313626699002843

/-! ## A221774.P3377180747154659158

`record[A221776(n+3)/A207823(n)]`
-/

namespace A221774.P3377180747154659158
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221776 (n + 3) : ℚ) / (A207823 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221774.P3377180747154659158

/-! ## A221774.P4823371414759788634

`record[A221776(n+3)/A221780(n+1)]`
-/

namespace A221774.P4823371414759788634
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221776 (n + 3) : ℚ) / (A221780 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221774.P4823371414759788634

/-!
# A221775: Number of nX3 arrays of occupancy after each element stays put or moves to some king-move neighbor, without move-in move-out left turns.

The programs for A221775, there is no canonical definition to state claims against.
-/

/-! ## A221775.P1013780600121432893

`A221776(∑[n+2]+4)`
-/

namespace A221775.P1013780600121432893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221776 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221775.P1013780600121432893

/-! ## A221775.P16764381526505726552

`and(-1, A221776(A167614(n+1)))`
-/

namespace A221775.P16764381526505726552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A221776 (A167614 (n + 1)).toNat)

end

end A221775.P16764381526505726552

/-! ## A221775.P12032120116210349235

`A221776(A167614(n+1))+A185284(n)`
-/

namespace A221775.P12032120116210349235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221776 (A167614 (n + 1)).toNat + A185284 n

end

end A221775.P12032120116210349235

/-!
# A221777: Number of n X 2 arrays of occupancy after each element stays put or moves to some horizontal, diagonal or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221777, the canonical program `A221777.P3873841590698484422` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221777 has offset 1).

The definition of A221777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221777.P3873841590698484422

`ogf((3+x-x^2-x^3)/(1-8x+5x^2-7x^3+4x^4+x^5))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221777

/-- `ogf((3+x-x^2-x^3)/(1-8x+5x^2-7x^3+4x^4+x^5))` -/
def P3873841590698484422.Spec : Prop :=
  ∀ n, P3873841590698484422.a n = A221777 (n + 1)

theorem P3873841590698484422.correct : P3873841590698484422.Spec := by
  intro n
  simp only [A221777, Nat.add_sub_cancel]

end A221777

/-! ## A221777.P14387731216290591512

`A221780(∑[2+n])`
-/

namespace A221777.P14387731216290591512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221780 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A221777.P14387731216290591512

namespace A221777

/-- `A221780(∑[2+n])` -/
def P14387731216290591512.Spec : Prop :=
  ∀ n, P14387731216290591512.a n = A221777 (n + 1)

end A221777

/-! ## A221777.P2393185898126237348

`A221929(∑[n+2])`
-/

namespace A221777.P2393185898126237348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221929 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A221777.P2393185898126237348

namespace A221777

/-- `A221929(∑[n+2])` -/
def P2393185898126237348.Spec : Prop :=
  ∀ n, P2393185898126237348.a n = A221777 (n + 1)

end A221777

/-! ## A221777.P16089213063493597909

`record[ratio[1/A221780(n+2)]]`
-/

namespace A221777.P16089213063493597909
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A221780 (n + 2) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) / f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221777.P16089213063493597909

namespace A221777

/-- `record[ratio[1/A221780(n+2)]]` -/
def P16089213063493597909.Spec : Prop :=
  ∀ n, P16089213063493597909.a n = (A221777 (n + 1) : ℚ)

end A221777

/-!
# A221778: Number of nX3 arrays of occupancy after each element stays put or moves to some horizontal, diagonal or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221778, there is no canonical definition to state claims against.
-/

/-! ## A221778.P3660350116953304149

`A221780(∑[n+3]+1)`
-/

namespace A221778.P3660350116953304149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221780 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221778.P3660350116953304149

/-! ## A221778.P3603536421531450508

`A221780(A052905(n)+3)-A326684(n)`
-/

namespace A221778.P3603536421531450508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221780 (A052905 n + 3).toNat - A326684 n

end

end A221778.P3603536421531450508

/-!
# A221779: Number of nX4 arrays of occupancy after each element stays put or moves to some horizontal, diagonal or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221779, there is no canonical definition to state claims against.
-/

/-! ## A221779.P3539680731008634518

`A221780(A141214(n+1))`
-/

namespace A221779.P3539680731008634518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221780 (A141214 (n + 1)).toNat

end

end A221779.P3539680731008634518

/-! ## A221779.P16714919189808570942

`A221780(A027379(n+2))`
-/

namespace A221779.P16714919189808570942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221780 (A027379 (n + 2)).toNat

end

end A221779.P16714919189808570942

/-!
# A221781: Number of 2Xn arrays of occupancy after each element stays put or moves to some horizontal, diagonal or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221781, there is no canonical definition to state claims against.
-/

/-! ## A221781.P18346219798553599826

`A221780(∑[n+1]+2)`
-/

namespace A221781.P18346219798553599826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221780 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221781.P18346219798553599826

/-! ## A221781.P3450493160434520305

`record[ratio[A221780(A080036(n))]]`
-/

namespace A221781.P3450493160434520305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221780 (A080036 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221781.P3450493160434520305

/-! ## A221781.P11991055394051878627

`record[A221780(gcd(n, A303913(n)))]`
-/

namespace A221781.P11991055394051878627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221780 (Int.gcd (n : ℤ) (A303913 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221781.P11991055394051878627

/-! ## A221781.P9159819612658927633

`record[A221780(A133263(∑{digits}[n, #]))]`
-/

namespace A221781.P9159819612658927633
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221780 (A133263 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221781.P9159819612658927633

/-! ## A221781.P17845196635651997951

`record[A221780(A133263(∏{digits}[n, #]))]`
-/

namespace A221781.P17845196635651997951
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221780 (A133263 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221781.P17845196635651997951

/-!
# A221782: Number of 3Xn arrays of occupancy after each element stays put or moves to some horizontal, diagonal or antidiagonal neighbor, without move-in move-out left turns.

The programs for A221782, there is no canonical definition to state claims against.
-/

/-! ## A221782.P15226105806444091150

`A221780(∑[n+2]+4)`
-/

namespace A221782.P15226105806444091150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221780 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221782.P15226105806444091150

/-! ## A221782.P15722805391138358730

`and(-1, A221780(A167614(n+1)))`
-/

namespace A221782.P15722805391138358730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A221780 (A167614 (n + 1)).toNat)

end

end A221782.P15722805391138358730

/-! ## A221782.P7725341117514625320

`record[gcd(A221780(n+1), A303913(n))]`
-/

namespace A221782.P7725341117514625320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221780 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221782.P7725341117514625320

/-! ## A221782.P3994862137611556898

`A221780(A167614(n+1))+A011737(n)`
-/

namespace A221782.P3994862137611556898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221780 (A167614 (n + 1)).toNat + A011737 n

end

end A221782.P3994862137611556898

/-!
# A221783: Number of nX4 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without 2-loops or left turns.

The programs for A221783, the canonical program `A221783.P13574060532170941755` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221783 has offset 1).

The definition of A221783 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221783.P13574060532170941755

`5*a(n-2)+5*a(n-3)+a(n-5)` with `a(0)=0, a(1)=3, a(2)=5, a(3)=16, a(4)=41`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221783

/-- `5*a(n-2)+5*a(n-3)+a(n-5)` -/
def P13574060532170941755.Spec : Prop :=
  ∀ n, (P13574060532170941755.a n : ℤ) = A221783 (n + 1)

theorem P13574060532170941755.correct : P13574060532170941755.Spec := by
  intro n
  simp only [A221783, Nat.add_sub_cancel]

end A221783

/-! ## A221783.P10969774664734375522

`A221787(A141214(n+1))`
-/

namespace A221783.P10969774664734375522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221787 (A141214 (n + 1)).toNat

end

end A221783.P10969774664734375522

namespace A221783

/-- `A221787(A141214(n+1))` -/
def P10969774664734375522.Spec : Prop :=
  ∀ n, P10969774664734375522.a n = A221783 (n + 1)

end A221783

/-! ## A221783.P17436824360460310628

`A221787(A055998(n+2))`
-/

namespace A221783.P17436824360460310628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221787 (A055998 (n + 2)).toNat

end

end A221783.P17436824360460310628

namespace A221783

/-- `A221787(A055998(n+2))` -/
def P17436824360460310628.Spec : Prop :=
  ∀ n, P17436824360460310628.a n = A221783 (n + 1)

end A221783

/-! ## A221783.P8830943829069834205

`A221787(A155212(n)+5)`
-/

namespace A221783.P8830943829069834205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221787 (A155212 n + 5).toNat

end

end A221783.P8830943829069834205

namespace A221783

/-- `A221787(A155212(n)+5)` -/
def P8830943829069834205.Spec : Prop :=
  ∀ n, P8830943829069834205.a n = A221783 (n + 1)

end A221783

/-! ## A221783.P11009323690905919532

`A221787(A056000(n)+7)`
-/

namespace A221783.P11009323690905919532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221787 (A056000 n + 7).toNat

end

end A221783.P11009323690905919532

namespace A221783

/-- `A221787(A056000(n)+7)` -/
def P11009323690905919532.Spec : Prop :=
  ∀ n, P11009323690905919532.a n = A221783 (n + 1)

end A221783

/-!
# A221784: Number of n X 5 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without 2-loops or left turns.

The programs for A221784, there is no canonical definition to state claims against.
-/

/-! ## A221784.P11317715567526042481

`A221787(Δ[A264443(n)])`
-/

namespace A221784.P11317715567526042481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221787 (f1 (n + 1) - f1 n).toNat

end

end A221784.P11317715567526042481

/-! ## A221784.P14942292733156918351

`A221787(A060577(n+4))`
-/

namespace A221784.P14942292733156918351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221787 (A060577 (n + 4)).toNat

end

end A221784.P14942292733156918351

/-! ## A221784.P1223670492479982240

`A221787(A056115(n)+11)`
-/

namespace A221784.P1223670492479982240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221787 (A056115 n + 11).toNat

end

end A221784.P1223670492479982240

/-! ## A221784.P11842790593030870301

`A221787(eq[2, A092921(n)])`
-/

namespace A221784.P11842790593030870301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221787 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221784.P11842790593030870301

/-! ## A221784.P17435041326764043148

`A221787(eq[3, A152157(n)])`
-/

namespace A221784.P17435041326764043148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221787 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221784.P17435041326764043148

/-!
# A221785: Number of nX6 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without 2-loops or left turns.

The programs for A221785, there is no canonical definition to state claims against.
-/

/-! ## A221785.P5197142091760292732

`A221787(A052905(n+3))`
-/

namespace A221785.P5197142091760292732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221787 (A052905 (n + 3)).toNat

end

end A221785.P5197142091760292732

/-! ## A221785.P2677853299473011132

`A221787(A056119(n)+16)`
-/

namespace A221785.P2677853299473011132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221787 (A056119 n + 16).toNat

end

end A221785.P2677853299473011132

/-! ## A221785.P533321039191949950

`A221787(eq[3, A219347(n)])`
-/

namespace A221785.P533321039191949950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221787 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221785.P533321039191949950

/-! ## A221785.P2113536094396606337

`A221787(eq[5, A152157(n)])`
-/

namespace A221785.P2113536094396606337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221787 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221785.P2113536094396606337

/-! ## A221785.P16467944613872791239

`A221787(eq[5, A193592(n)])`
-/

namespace A221785.P16467944613872791239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221787 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221785.P16467944613872791239

/-!
# A221786: Number of nX7 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without 2-loops or left turns.

The programs for A221786, there is no canonical definition to state claims against.
-/

/-! ## A221786.P5050026503929592399

`A221787(A055999(n+4))`
-/

namespace A221786.P5050026503929592399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221787 (A055999 (n + 4)).toNat

end

end A221786.P5050026503929592399

/-! ## A221786.P1954248653010543129

`A221787(eq[4, A219347(n)])`
-/

namespace A221786.P1954248653010543129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221787 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221786.P1954248653010543129

/-! ## A221786.P6112914642943483897

`A221787(eq[6, A193592(n)])`
-/

namespace A221786.P6112914642943483897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221787 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221786.P6112914642943483897

/-! ## A221786.P5938860301393412128

`A221787(eq[7, A152157(n)])`
-/

namespace A221786.P5938860301393412128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221787 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221786.P5938860301393412128

/-!
# A221788: Number of 3 X n arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without 2-loops or left turns.

The programs for A221788, the canonical program `A221788.P2512246268146636081` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221788 has offset 1).

The definition of A221788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221788.P10336968865643837010

`ogf((5x^3-16x^4+20x^5)/(1-8x+14x^2-8x^3+x^4))`
-/

namespace A221788.P10336968865643837010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 5, -16, 20] [1, -8, 14, -8, 1] n

end

end A221788.P10336968865643837010

namespace A221788

/-- `ogf((5x^3-16x^4+20x^5)/(1-8x+14x^2-8x^3+x^4))` -/
def P10336968865643837010.Spec : Prop :=
  ∀ n, P10336968865643837010.a n = A221788 (n + 1)

end A221788

/-! ## A221788.P2512246268146636081

`8*a(n-1)-14*a(n-2)+8*a(n-3)-a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=5, a(4)=24, a(5)=142`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221788

/-- `8*a(n-1)-14*a(n-2)+8*a(n-3)-a(n-4)` -/
def P2512246268146636081.Spec : Prop :=
  ∀ n, P2512246268146636081.a n = A221788 (n + 1)

theorem P2512246268146636081.correct : P2512246268146636081.Spec := by
  intro n
  simp only [A221788, Nat.add_sub_cancel]

end A221788

/-! ## A221788.P9563023741421679776

`A221787(∑[n+2]+4)`
-/

namespace A221788.P9563023741421679776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221787 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221788.P9563023741421679776

namespace A221788

/-- `A221787(∑[n+2]+4)` -/
def P9563023741421679776.Spec : Prop :=
  ∀ n, P9563023741421679776.a n = A221788 (n + 1)

end A221788

/-! ## A221788.P5031007354872000582

`lcm((-1)^n, A221787(A167614(n+1)))`
-/

namespace A221788.P5031007354872000582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A221787 (A167614 (n + 1)).toNat)

end

end A221788.P5031007354872000582

namespace A221788

/-- `lcm((-1)^n, A221787(A167614(n+1)))` -/
def P5031007354872000582.Spec : Prop :=
  ∀ n, (P5031007354872000582.a n : ℤ) = A221788 (n + 1)

end A221788

/-! ## A221788.P11932293045073774325

`A221787(A167614(n+1))+A025469(n)`
-/

namespace A221788.P11932293045073774325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221787 (A167614 (n + 1)).toNat + A025469 n

end

end A221788.P11932293045073774325

namespace A221788

/-- `A221787(A167614(n+1))+A025469(n)` -/
def P11932293045073774325.Spec : Prop :=
  ∀ n, P11932293045073774325.a n = A221788 (n + 1)

end A221788

/-!
# A221789: Number of 4Xn arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without 2-loops or left turns.

The programs for A221789, there is no canonical definition to state claims against.
-/

/-! ## A221789.P12124711558092715228

`A221787(∑[n+3]+7)`
-/

namespace A221789.P12124711558092715228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221787 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A221789.P12124711558092715228

/-!
# A221790: Number of 5 X n arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without 2-loops or left turns.

The programs for A221790, there is no canonical definition to state claims against.
-/

/-! ## A221790.P16594099336860723532

`A221787(A167499(n+3))`
-/

namespace A221790.P16594099336860723532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221787 (A167499 (n + 3)).toNat

end

end A221790.P16594099336860723532

/-! ## A221790.P13674215164917048750

`A221787(A155212(n)+13)`
-/

namespace A221790.P13674215164917048750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221787 (A155212 n + 13).toNat

end

end A221790.P13674215164917048750

/-! ## A221790.P10288145696727633380

`A221787(A056000(n)+15)`
-/

namespace A221790.P10288145696727633380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221787 (A056000 n + 15).toNat

end

end A221790.P10288145696727633380

/-! ## A221790.P15798826384202285706

`A221787(eq[7, A066657(n)])`
-/

namespace A221790.P15798826384202285706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221787 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221790.P15798826384202285706

/-! ## A221790.P2228749472924380026

`A221787(A166136(n+3)-1)`
-/

namespace A221790.P2228749472924380026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221787 (A166136 (n + 3) - 1).toNat

end

end A221790.P2228749472924380026

/-!
# A221791: Number of 6Xn arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor, without 2-loops or left turns.

The programs for A221791, there is no canonical definition to state claims against.
-/

/-! ## A221791.P18091182233509194590

`A221787(A056115(n)+21)`
-/

namespace A221791.P18091182233509194590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221787 (A056115 n + 21).toNat

end

end A221791.P18091182233509194590

/-! ## A221791.P18164202505118202462

`A221787(A167499(n+4)+1)`
-/

namespace A221791.P18164202505118202462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221787 (A167499 (n + 4) + 1).toNat

end

end A221791.P18164202505118202462

/-! ## A221791.P14175839702922592242

`A221787(A167614(n+4)+3)`
-/

namespace A221791.P14175839702922592242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221787 (A167614 (n + 4) + 3).toNat

end

end A221791.P14175839702922592242

/-! ## A221791.P14519192906706391595

`A221787(A000124(n+5)+5)`
-/

namespace A221791.P14519192906706391595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221787 (A000124 (n + 5) + 5).toNat

end

end A221791.P14519192906706391595

/-! ## A221791.P3838378840911493230

`A221787(A000096(n+4)+7)`
-/

namespace A221791.P3838378840911493230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221787 (A000096 (n + 4) + 7).toNat

end

end A221791.P3838378840911493230

/-!
# A221792: Number of n-digit cuban primes.

The programs for A221792, there is no canonical definition to state claims against.
-/

/-! ## A221792.P10362247162272967863

`A113478(n+1)-A113478(n)`
-/

namespace A221792.P10362247162272967863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113478 (n + 1) - A113478 n

end

end A221792.P10362247162272967863

/-! ## A221792.P12435636903872282532

`Δ[A113478(n)]`
-/

namespace A221792.P12435636903872282532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221792.P12435636903872282532

/-! ## A221792.P15056726623999000093

`A113478(A291769(n))-A210520(2*n)`
-/

namespace A221792.P15056726623999000093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113478 (A291769 n).toNat - A210520 (2 * n)

end

end A221792.P15056726623999000093

/-! ## A221792.P9400906035731170340

`Δ[A210520(2*n)]`
-/

namespace A221792.P9400906035731170340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210520 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221792.P9400906035731170340

/-! ## A221792.P8155454639521408834

`Δ[record[A210520(and(n, n+1))]]`
-/

namespace A221792.P8155454639521408834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210520 (Nat.land n (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A221792.P8155454639521408834

/-!
# A221793: Partial sums of cuban primes A002407, that is, primes equal to the difference of two consecutive cubes.

The programs for A221793, there is no canonical definition to state claims against.
-/

/-! ## A221793.P7084685891655002822

`∑[A002407(1+n)]`
-/

namespace A221793.P7084685891655002822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002407 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221793.P7084685891655002822

/-! ## A221793.P13294437333162138046

`A002407(n+1)+a(n-1)` with `a(0)=7`
-/

namespace A221793.P13294437333162138046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A002407 (n + 1) + a (n - 1)

end

end A221793.P13294437333162138046

/-! ## A221793.P10878213541555002274

`∑[(3*A121259(n+1)²+1)/4]`
-/

namespace A221793.P10878213541555002274
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A121259 (n + 1) ^ 2 + 1 : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221793.P10878213541555002274

/-! ## A221793.P5410916819120359343

`∑[(3*(2*A002504(n+1)-1)²+1)/4]`
-/

namespace A221793.P5410916819120359343
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * (2 * A002504 (n + 1) - 1) ^ 2 + 1 : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221793.P5410916819120359343

/-! ## A221793.P9220801360810295376

`∑[A334520(n+2)]`
-/

namespace A221793.P9220801360810295376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334520 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221793.P9220801360810295376

/-! ## A221793.P12415030616046371934

`∑[A068626(A002640(n+1))]`
-/

namespace A221793.P12415030616046371934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068626 (A002640 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221793.P12415030616046371934

/-! ## A221793.P8948391210028492479

`∑[A003215(A111251(n+1))]`
-/

namespace A221793.P8948391210028492479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (A111251 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221793.P8948391210028492479

/-! ## A221793.P9971915551250874501

`∑[record[A081256(3*n+5)]]`
-/

namespace A221793.P9971915551250874501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (3 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221793.P9971915551250874501

/-! ## A221793.P4876085417618166288

`∑[A081256(A002640(n+1)+1)]`
-/

namespace A221793.P4876085417618166288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081256 (A002640 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221793.P4876085417618166288

/-! ## A221793.P10893418553712617996

`∑[p?[Δ[n^3]]]`
-/

namespace A221793.P10893418553712617996
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221793.P10893418553712617996

/-!
# A221794: Number of primes of the form (x+1)^3 - x^3 with x <= 10^n.

The programs for A221794, there is no canonical definition to state claims against.
-/

/-! ## A221794.P7367720827090852718

`A278452(A002110(n)+A000337(n))`
-/

namespace A221794.P7367720827090852718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278452 (A002110 n + A000337 n).toNat

end

end A221794.P7367720827090852718

/-!
# A221795: Number of n X 2 arrays of occupancy after each element moves to some horizontal or vertical neighbor, without move-in move-out straight through or left turns.

The programs for A221795, the canonical program `A221795.P3580348415809328229` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221795 has offset 1).

The definition of A221795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221795.P2631892378837827730

`ogf((1+4x+x^2-4x^3)/(1-x-6x^2-x^3+4x^4))`
-/

namespace A221795.P2631892378837827730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 1, -4] [1, -1, -6, -1, 4] n

end

end A221795.P2631892378837827730

namespace A221795

/-- `ogf((1+4x+x^2-4x^3)/(1-x-6x^2-x^3+4x^4))` -/
def P2631892378837827730.Spec : Prop :=
  ∀ n, P2631892378837827730.a n = A221795 (n + 1)

end A221795

/-! ## A221795.P3580348415809328229

`a(n-1)+6*a(n-2)+a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=5, a(2)=12, a(3)=39`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A221795

/-- `a(n-1)+6*a(n-2)+a(n-3)-4*a(n-4)` -/
def P3580348415809328229.Spec : Prop :=
  ∀ n, P3580348415809328229.a n = A221795 (n + 1)

theorem P3580348415809328229.correct : P3580348415809328229.Spec := by
  intro n
  simp only [A221795, Nat.add_sub_cancel]

end A221795

/-! ## A221795.P1370211552935607120

`A221800(∑[n+1]+2)`
-/

namespace A221795.P1370211552935607120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221800 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221795.P1370211552935607120

namespace A221795

/-- `A221800(∑[n+1]+2)` -/
def P1370211552935607120.Spec : Prop :=
  ∀ n, P1370211552935607120.a n = A221795 (n + 1)

end A221795

/-! ## A221795.P3987070679896744240

`record[A221800(A114220(n)+1)]`
-/

namespace A221795.P3987070679896744240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221800 (A114220 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221795.P3987070679896744240

namespace A221795

/-- `record[A221800(A114220(n)+1)]` -/
def P3987070679896744240.Spec : Prop :=
  ∀ n, P3987070679896744240.a n = A221795 (n + 1)

end A221795

/-! ## A221795.P4530277061925416839

`record[A010054(n)*A221800(n+2)]`
-/

namespace A221795.P4530277061925416839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A221800 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221795.P4530277061925416839

namespace A221795

/-- `record[A010054(n)*A221800(n+2)]` -/
def P4530277061925416839.Spec : Prop :=
  ∀ n, P4530277061925416839.a n = A221795 (n + 1)

end A221795

/-!
# A221796: Number of n X 3 arrays of occupancy after each element moves to some horizontal or vertical neighbor, without move-in move-out straight through or left turns.

The programs for A221796, there is no canonical definition to state claims against.
-/

/-! ## A221796.P2114745179001615465

`A221800(∑[n+2]+4)`
-/

namespace A221796.P2114745179001615465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221800 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221796.P2114745179001615465

/-! ## A221796.P13653804728048225670

`A221800(A167614(n+1))+A036600(n)`
-/

namespace A221796.P13653804728048225670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221800 (A167614 (n + 1)).toNat + A036600 n

end

end A221796.P13653804728048225670

/-! ## A221796.P12470403830491835245

`A221800(A167614(n+1))+A118135(n)`
-/

namespace A221796.P12470403830491835245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221800 (A167614 (n + 1)).toNat + A118135 n

end

end A221796.P12470403830491835245

/-! ## A221796.P14351157061582059847

`A221800(A167614(n+1))+A185203(n)`
-/

namespace A221796.P14351157061582059847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221800 (A167614 (n + 1)).toNat + A185203 n

end

end A221796.P14351157061582059847

/-! ## A221796.P11894511865996137755

`A221800(A167614(n+1))+A185246(n)`
-/

namespace A221796.P11894511865996137755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221800 (A167614 (n + 1)).toNat + A185246 n

end

end A221796.P11894511865996137755

/-!
# A221797: Number of nX4 arrays of occupancy after each element moves to some horizontal or vertical neighbor, without move-in move-out straight through or left turns.

The programs for A221797, there is no canonical definition to state claims against.
-/

/-! ## A221797.P12686587809709499672

`A221800(∑[n+3]+7)`
-/

namespace A221797.P12686587809709499672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221800 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A221797.P12686587809709499672

/-! ## A221797.P14375415509847845628

`A133687(n)*A221800(A374004(n+1))`
-/

namespace A221797.P14375415509847845628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133687 n * A221800 (A374004 (n + 1)).toNat

end

end A221797.P14375415509847845628

/-!
# A221798: Number of nX5 arrays of occupancy after each element moves to some horizontal or vertical neighbor, without move-in move-out straight through or left turns.

The programs for A221798, there is no canonical definition to state claims against.
-/

/-! ## A221798.P4036667464403940096

`A221800(A374005(n+1))`
-/

namespace A221798.P4036667464403940096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221800 (A374005 (n + 1)).toNat

end

end A221798.P4036667464403940096

/-! ## A221798.P7813643174620484298

`A221800(A167499(n+3))`
-/

namespace A221798.P7813643174620484298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221800 (A167499 (n + 3)).toNat

end

end A221798.P7813643174620484298

/-! ## A221798.P9488592420663209982

`A221800(A155212(n)+13)`
-/

namespace A221798.P9488592420663209982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221800 (A155212 n + 13).toNat

end

end A221798.P9488592420663209982

/-! ## A221798.P286094418249513397

`A221800(A056000(n)+15)`
-/

namespace A221798.P286094418249513397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221800 (A056000 n + 15).toNat

end

end A221798.P286094418249513397

/-! ## A221798.P12293388457504355843

`A221800(eq[7, A066657(n)])`
-/

namespace A221798.P12293388457504355843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221798.P12293388457504355843

/-!
# A221799: Number of nX6 arrays of occupancy after each element moves to some horizontal or vertical neighbor, without move-in move-out straight through or left turns.

The programs for A221799, there is no canonical definition to state claims against.
-/

/-! ## A221799.P12464214780758023487

`A221800(C(n+7, 2)-n)`
-/

namespace A221799.P12464214780758023487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221800 (Nat.choose (n + 7) 2 - n)

end

end A221799.P12464214780758023487

/-! ## A221799.P10113906529148732435

`A221800(A374007(n+1))`
-/

namespace A221799.P10113906529148732435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221800 (A374007 (n + 1)).toNat

end

end A221799.P10113906529148732435

/-! ## A221799.P675901508567048337

`A221800(A166136(n+4))`
-/

namespace A221799.P675901508567048337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221800 (A166136 (n + 4)).toNat

end

end A221799.P675901508567048337

/-! ## A221799.P17167464361282555054

`A221800(A056115(n)+21)`
-/

namespace A221799.P17167464361282555054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221800 (A056115 n + 21).toNat

end

end A221799.P17167464361282555054

