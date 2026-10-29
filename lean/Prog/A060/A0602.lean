import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A060200: Number of Sophie Germain primes <= prime(2^n).

The programs for A060200, there is no canonical definition to state claims against.
-/

/-! ## A060200.P4900876117722951027

`A156874(A033844(n+1))`
-/

namespace A060200.P4900876117722951027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156874 (A033844 (n + 1)).toNat

end

end A060200.P4900876117722951027

/-! ## A060200.P13568981994691936545

`A156874(A051440(n+1))`
-/

namespace A060200.P13568981994691936545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156874 (A051440 (n + 1)).toNat

end

end A060200.P13568981994691936545

/-! ## A060200.P8103051618381683971

`A156874(A000040(2^(n+1)))`
-/

namespace A060200.P8103051618381683971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156874 (A000040 (2 ^ (n + 1))).toNat

end

end A060200.P8103051618381683971

/-! ## A060200.P15009213859818982193

`A156874(A066373(n+2)+A011782(n))`
-/

namespace A060200.P15009213859818982193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156874 (A066373 (n + 2) + A011782 n).toNat

end

end A060200.P15009213859818982193

/-! ## A060200.P16010845564291202610

`A156874(A319559(n)+A066373(n+2))`
-/

namespace A060200.P16010845564291202610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156874 (A319559 n + A066373 (n + 2)).toNat

end

end A060200.P16010845564291202610

/-!
# A060201: Images of centered hexamorphic numbers: suppose k-th centered hexagonal number H_c(k) (A003215) ends in k; sequence gives value of H_c(k).

The programs for A060201, there is no canonical definition to state claims against.
-/

/-! ## A060201.P17512623104246918297

`A277402(A094534(n+1))`
-/

namespace A060201.P17512623104246918297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277402 (A094534 (n + 1)).toNat

end

end A060201.P17512623104246918297

/-! ## A060201.P12361120743329092335

`A003215(A094534(n+1)-1)`
-/

namespace A060201.P12361120743329092335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (A094534 (n + 1) - 1).toNat

end

end A060201.P12361120743329092335

/-! ## A060201.P15651952608312369387

`A003215(xor(1, A094534(n+1)))`
-/

namespace A060201.P15651952608312369387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (Int.xor 1 (A094534 (n + 1))).toNat

end

end A060201.P15651952608312369387

/-! ## A060201.P7681856220603446534

`A003215(and(-2, A094534(n+1)))`
-/

namespace A060201.P7681856220603446534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (Int.land (-2) (A094534 (n + 1))).toNat

end

end A060201.P7681856220603446534

/-!
# A060202: Let G = complete graph on 4 vertices, create the sequence G, L(G), L(L(G)), L(L(L(G))), ... where each graph in this sequence is the line graph of the previous graph; a(n) is number of vertices of the n-th graph in this sequence.

The programs for A060202, there is no canonical definition to state claims against.
-/

/-! ## A060202.P13329752652870349475

`(2^(n-2)+1)*a(n-1)` with `a(0)=4`
-/

namespace A060202.P13329752652870349475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + 1) * a (n - 1)

end

end A060202.P13329752652870349475

/-! ## A060202.P1365352262293080183

`∏[2^n/a(C(2, n+2))+1]` with `a(0)=4`
-/

namespace A060202.P1365352262293080183
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4] fun n f1 =>
  (2 ^ n : ℚ) / f1 (Nat.choose 2 (n + 2)) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060202.P1365352262293080183

/-! ## A060202.P1140649314195550519

`a(n-1)+a(n-1)/2^(2-n)` with `a(0)=4`
-/

namespace A060202.P1140649314195550519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + a (n - 1) / (2 : ℚ) ^ (2 - (n : ℤ) : ℤ)

end

end A060202.P1140649314195550519

/-! ## A060202.P14134325275076216742

`a(n-1)*A056469(n)/2` with `a(0)=4`
-/

namespace A060202.P14134325275076216742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) * (A056469 n : ℚ) / 2

end

end A060202.P14134325275076216742

/-! ## A060202.P15637796947156569992

`(A011782(n)+2)*a(n-1)/2` with `a(0)=4`
-/

namespace A060202.P15637796947156569992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  (A011782 n + 2 : ℚ) * a (n - 1) / 2

end

end A060202.P15637796947156569992

/-!
# A060203: Least cube root of unity mod p, greater than 1, where p is the n-th prime congruent to 1 mod 3.

The programs for A060203, there is no canonical definition to state claims against.
-/

/-! ## A060203.P1647184968543077021

`A091733(p?[3*n+1])`
-/

namespace A060203.P1647184968543077021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091733 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A060203.P1647184968543077021

/-! ## A060203.P6977101700878353937

`A070668(A002476(n+1))`
-/

namespace A060203.P6977101700878353937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070668 (A002476 (n + 1)).toNat

end

end A060203.P6977101700878353937

/-! ## A060203.P14744337451635839426

`A070668(A007645(n+2))`
-/

namespace A060203.P14744337451635839426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070668 (A007645 (n + 2)).toNat

end

end A060203.P14744337451635839426

/-! ## A060203.P453086088716846972

`A070668(A045375(n+2))`
-/

namespace A060203.P453086088716846972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070668 (A045375 (n + 2)).toNat

end

end A060203.P453086088716846972

/-! ## A060203.P17679153537501292560

`A070668(A123365(n+2))`
-/

namespace A060203.P17679153537501292560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070668 (A123365 (n + 2)).toNat

end

end A060203.P17679153537501292560

/-!
# A060204: Square pyramorphic numbers: suppose the k-th square pyramidal number S(k) (A000330) ends in k; sequence gives value of S(k).

The programs for A060204, there is no canonical definition to state claims against.
-/

/-! ## A060204.P655131936213906242

`A000330(A093534(n+2))`
-/

namespace A060204.P655131936213906242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A093534 (n + 2)).toNat

end

end A060204.P655131936213906242

/-!
# A060206: Number of rotationally symmetric closed meanders of length 4n+2.

The programs for A060206, there is no canonical definition to state claims against.
-/

/-! ## A060206.P6924227731027456779

`A000682(2*n+1)`
-/

namespace A060206.P6924227731027456779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000682 (2 * n + 1)

end

end A060206.P6924227731027456779

/-! ## A060206.P8465115114906786076

`record[A000682(C(or(1, n), n))]`
-/

namespace A060206.P8465115114906786076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000682 (Nat.choose (Nat.lor 1 n) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060206.P8465115114906786076

/-! ## A060206.P14977129595837767085

`record[A000682(n+2)^(n%2)]`
-/

namespace A060206.P14977129595837767085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000682 (n + 2) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060206.P14977129595837767085

/-! ## A060206.P4605094517217834733

`A000136(2*n+1)/Δ[n²]`
-/

namespace A060206.P4605094517217834733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000136 (2 * n + 1) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A060206.P4605094517217834733

/-! ## A060206.P17819093228008032985

`A227167(2*n+1)/(2*n+1)`
-/

namespace A060206.P17819093228008032985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227167 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A060206.P17819093228008032985

/-!
# A060207: Start at 2^n, iterate function PrimePi (A000720) until fixed point is reached; sequence gives number of steps.

The programs for A060207, there is no canonical definition to state claims against.
-/

/-! ## A060207.P397135356845047107

`A091987(n)+1`
-/

namespace A060207.P397135356845047107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091987 n + 1

end

end A060207.P397135356845047107

/-! ## A060207.P4317567146830162369

`A020725(A091987(n))`
-/

namespace A060207.P4317567146830162369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A091987 n).toNat

end

end A060207.P4317567146830162369

/-! ## A060207.P15282917200588459207

`A008619(2*A091987(n))`
-/

namespace A060207.P15282917200588459207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A091987 n).toNat

end

end A060207.P15282917200588459207

/-! ## A060207.P18232420112481743158

`A028242(2*A091987(n))`
-/

namespace A060207.P18232420112481743158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A091987 n).toNat

end

end A060207.P18232420112481743158

/-! ## A060207.P15582204524681103870

`A029579(2*A091987(n))`
-/

namespace A060207.P15582204524681103870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A091987 n).toNat

end

end A060207.P15582204524681103870

/-! ## A060207.P3317371054056380018

`A052938(2*A091987(n))`
-/

namespace A060207.P3317371054056380018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A091987 n).toNat

end

end A060207.P3317371054056380018

/-! ## A060207.P10754527470277557548

`A330393(2*A091987(n))`
-/

namespace A060207.P10754527470277557548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330393 (2 * A091987 n).toNat

end

end A060207.P10754527470277557548

/-! ## A060207.P7223952875441986304

`A008611(3*A091987(n))`
-/

namespace A060207.P7223952875441986304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A091987 n).toNat

end

end A060207.P7223952875441986304

/-! ## A060207.P16030128523168888290

`A008620(3*A091987(n))`
-/

namespace A060207.P16030128523168888290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A091987 n).toNat

end

end A060207.P16030128523168888290

/-! ## A060207.P9852409806287863212

`A008621(4*A091987(n))`
-/

namespace A060207.P9852409806287863212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * A091987 n).toNat

end

end A060207.P9852409806287863212

/-!
# A060208: a(n) = 2*pi(n) - pi(2*n), where pi(i) = A000720(i).

The programs for A060208, the canonical program `A060208.P7183975736576041079` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060208 has offset 1).

The definition of A060208 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A000720(n+1)-A000720(2*(n+1))` (program `A060208.P7183975736576041079`, by `A060208.P7183975736576041079.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060208.P7183975736576041079

`2*A000720(n+1)-A000720(2*(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060208

/-- `2*A000720(n+1)-A000720(2*(n+1))` -/
def P7183975736576041079.Spec : Prop :=
  ∀ n, P7183975736576041079.a n = A060208 (n + 1)

theorem P7183975736576041079.correct : P7183975736576041079.Spec := by
  intro n
  simp only [A060208, Nat.add_sub_cancel]

end A060208

/-! ## A060208.P17968863081242371943

`A000720(n+1)-A108954(n+1)`
-/

namespace A060208.P17968863081242371943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A108954 (n + 1)

end

end A060208.P17968863081242371943

namespace A060208

/-- `A000720(n+1)-A108954(n+1)` -/
def P17968863081242371943.Spec : Prop :=
  ∀ n, P17968863081242371943.a n = A060208 (n + 1)

theorem P17968863081242371943.correct : P17968863081242371943.Spec := by
  intro n
  simp only [A060208, Nat.add_sub_cancel, A060208.P17968863081242371943.a, A060208.P7183975736576041079.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A108954, A108954.P13763132661793771575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A060208

/-! ## A060208.P3263259208516589785

`A077150(n+1)-A037228(n+1)`
-/

namespace A060208.P3263259208516589785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077150 (n + 1) - A037228 (n + 1)

end

end A060208.P3263259208516589785

namespace A060208

/-- `A077150(n+1)-A037228(n+1)` -/
def P3263259208516589785.Spec : Prop :=
  ∀ n, P3263259208516589785.a n = A060208 (n + 1)

theorem P3263259208516589785.correct : P3263259208516589785.Spec := by
  intro n
  simp only [A060208, Nat.add_sub_cancel, A060208.P3263259208516589785.a, A060208.P7183975736576041079.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A037228, A037228.P4220557198165153324.a, A077150, A077150.P11374106053638200958.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A060208

/-! ## A060208.P13965070985112688281

`A210469(n+1)-A097454(n+1)`
-/

namespace A060208.P13965070985112688281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210469 (n + 1) - A097454 (n + 1)

end

end A060208.P13965070985112688281

namespace A060208

/-- `A210469(n+1)-A097454(n+1)` -/
def P13965070985112688281.Spec : Prop :=
  ∀ n, P13965070985112688281.a n = A060208 (n + 1)

theorem P13965070985112688281.correct : P13965070985112688281.Spec := by
  intro n
  simp only [A060208, Nat.add_sub_cancel, A060208.P13965070985112688281.a, A060208.P7183975736576041079.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A097454, A097454.P2717210328983116484.a, A210469, A210469.P5188979352257746080.a, A072731, A072731.P11631103641081885778.a, A065855, A065855.P16805213270251966039.a, A062298, A062298.P8226643735375377344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A060208

/-! ## A060208.P7088623557574731988

`A376759(n+1)-A062298(n+1)`
-/

namespace A060208.P7088623557574731988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376759 (n + 1) - A062298 (n + 1)

end

end A060208.P7088623557574731988

namespace A060208

/-- `A376759(n+1)-A062298(n+1)` -/
def P7088623557574731988.Spec : Prop :=
  ∀ n, P7088623557574731988.a n = A060208 (n + 1)

theorem P7088623557574731988.correct : P7088623557574731988.Spec := by
  intro n
  simp only [A060208, Nat.add_sub_cancel, A060208.P7088623557574731988.a, A060208.P7183975736576041079.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A062298, A062298.P8226643735375377344.a, A376759, A376759.P6507737170924248319.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A060208

/-! ## A060208.P5692216884474509344

`A000720(n+1)-A056171(2*(n+1))`
-/

namespace A060208.P5692216884474509344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A056171 (2 * (n + 1))

end

end A060208.P5692216884474509344

namespace A060208

/-- `A000720(n+1)-A056171(2*(n+1))` -/
def P5692216884474509344.Spec : Prop :=
  ∀ n, P5692216884474509344.a n = A060208 (n + 1)

end A060208

/-! ## A060208.P10036753541003836094

`2*A000720(n+1)-A099802(n+1)`
-/

namespace A060208.P10036753541003836094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000720 (n + 1) - A099802 (n + 1)

end

end A060208.P10036753541003836094

namespace A060208

/-- `2*A000720(n+1)-A099802(n+1)` -/
def P10036753541003836094.Spec : Prop :=
  ∀ n, P10036753541003836094.a n = A060208 (n + 1)

end A060208

/-! ## A060208.P14281043993379078744

`∑[2*A010051(n+1)]-A099802(n+1)`
-/

namespace A060208.P14281043993379078744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A099802 (n + 1)

end

end A060208.P14281043993379078744

namespace A060208

/-- `∑[2*A010051(n+1)]-A099802(n+1)` -/
def P14281043993379078744.Spec : Prop :=
  ∀ n, P14281043993379078744.a n = A060208 (n + 1)

end A060208

/-! ## A060208.P4643122307285450028

`∑[char[A020639(n+2)-1]]-A108954(n+1)`
-/

namespace A060208.P4643122307285450028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A108954 (n + 1)

end

end A060208.P4643122307285450028

namespace A060208

/-- `∑[char[A020639(n+2)-1]]-A108954(n+1)` -/
def P4643122307285450028.Spec : Prop :=
  ∀ n, P4643122307285450028.a n = A060208 (n + 1)

end A060208

/-! ## A060208.P3492758231216223322

`A065896(n+1)-(A005843(A065855(n+1))+1)`
-/

namespace A060208.P3492758231216223322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065896 (n + 1) - (A005843 (A065855 (n + 1)).toNat + 1)

end

end A060208.P3492758231216223322

namespace A060208

/-- `A065896(n+1)-(A005843(A065855(n+1))+1)` -/
def P3492758231216223322.Spec : Prop :=
  ∀ n, P3492758231216223322.a n = A060208 (n + 1)

end A060208

/-! ## A060208.P16730202418081874439

`A005843(A000720(n+1))-A000720(2*(n+1))`
-/

namespace A060208.P16730202418081874439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A000720 (n + 1)).toNat - A000720 (2 * (n + 1))

end

end A060208.P16730202418081874439

namespace A060208

/-- `A005843(A000720(n+1))-A000720(2*(n+1))` -/
def P16730202418081874439.Spec : Prop :=
  ∀ n, P16730202418081874439.a n = A060208 (n + 1)

end A060208

/-! ## A060208.P4855555137010314418

`A000720(n+1)+A010051(n+1)-A035250(n+1)`
-/

namespace A060208.P4855555137010314418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A010051 (n + 1) - A035250 (n + 1))

end

end A060208.P4855555137010314418

namespace A060208

/-- `A000720(n+1)+A010051(n+1)-A035250(n+1)` -/
def P4855555137010314418.Spec : Prop :=
  ∀ n, P4855555137010314418.a n = A060208 (n + 1)

end A060208

/-! ## A060208.P12117500506754780560

`A000720(n+1)+A193990(n+1)-A067434(n+1)`
-/

namespace A060208.P12117500506754780560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A193990 (n + 1) - A067434 (n + 1))

end

end A060208.P12117500506754780560

namespace A060208

/-- `A000720(n+1)+A193990(n+1)-A067434(n+1)` -/
def P12117500506754780560.Spec : Prop :=
  ∀ n, P12117500506754780560.a n = A060208 (n + 1)

theorem P12117500506754780560.correct : P12117500506754780560.Spec := by
  intro n
  simp only [A060208, Nat.add_sub_cancel, A060208.P12117500506754780560.a, A060208.P7183975736576041079.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A067434, A067434.P13929793644750032362.a, A193990, A193990.P7884612137994625744.a, A056173, A056173.P15098762460861555107.a, A056175, A056175.P9200230780470454519.a, A108954, A108954.P13763132661793771575.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001405, A001405.P5205018418992951678.a, A056057, A056057.P2194597549001614042.a, A056169, A056169.P17430176249366647977.a, A008833, A008833.P11016767941717339701.f1, A008833.P11016767941717339701.a, A055231, A055231.P8962300905713718501.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A060208

/-! ## A060208.P16305880535733795006

`A000720(n+1)+A101264(n+1)-A035250(n+2)`
-/

namespace A060208.P16305880535733795006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A101264 (n + 1) - A035250 (n + 2))

end

end A060208.P16305880535733795006

namespace A060208

/-- `A000720(n+1)+A101264(n+1)-A035250(n+2)` -/
def P16305880535733795006.Spec : Prop :=
  ∀ n, P16305880535733795006.a n = A060208 (n + 1)

end A060208

/-! ## A060208.P5036416666057996321

`∑[char[A014963(n+2)-1]]-1-A108954(n+1)`
-/

namespace A060208.P5036416666057996321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - A108954 (n + 1)

end

end A060208.P5036416666057996321

namespace A060208

/-- `∑[char[A014963(n+2)-1]]-1-A108954(n+1)` -/
def P5036416666057996321.Spec : Prop :=
  ∀ n, P5036416666057996321.a n = A060208 (n + 1)

end A060208

/-! ## A060208.P2084032205758888445

`A056172(2*(n+1))-A056171(2*(n+1))`
-/

namespace A060208.P2084032205758888445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * (n + 1)) - A056171 (2 * (n + 1))

end

end A060208.P2084032205758888445

namespace A060208

/-- `A056172(2*(n+1))-A056171(2*(n+1))` -/
def P2084032205758888445.Spec : Prop :=
  ∀ n, P2084032205758888445.a n = A060208 (n + 1)

end A060208

/-! ## A060208.P11088284025413043330

`A193990(n+1)-A071854(n+1)`
-/

namespace A060208.P11088284025413043330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193990 (n + 1) - A071854 (n + 1)

end

end A060208.P11088284025413043330

namespace A060208

/-- `A193990(n+1)-A071854(n+1)` -/
def P11088284025413043330.Spec : Prop :=
  ∀ n, P11088284025413043330.a n = A060208 (n + 1)

theorem P11088284025413043330.correct : P11088284025413043330.Spec := by
  intro n
  simp only [A060208, Nat.add_sub_cancel, A060208.P11088284025413043330.a, A060208.P7183975736576041079.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A071854, A071854.P11151984717235714317.a, A193990, A193990.P7884612137994625744.a, A067434, A067434.P13929793644750032362.a, A108954, A108954.P13763132661793771575.a, A056173, A056173.P15098762460861555107.a, A056175, A056175.P9200230780470454519.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001405, A001405.P5205018418992951678.a, A056057, A056057.P2194597549001614042.a, A056169, A056169.P17430176249366647977.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A060208

/-! ## A060208.P2392330717425414532

`A067434(n+1)-(A108954(n+1)+A071854(n+1))`
-/

namespace A060208.P2392330717425414532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (n + 1) - (A108954 (n + 1) + A071854 (n + 1))

end

end A060208.P2392330717425414532

namespace A060208

/-- `A067434(n+1)-(A108954(n+1)+A071854(n+1))` -/
def P2392330717425414532.Spec : Prop :=
  ∀ n, P2392330717425414532.a n = A060208 (n + 1)

theorem P2392330717425414532.correct : P2392330717425414532.Spec := by
  intro n
  simp only [A060208, Nat.add_sub_cancel, A060208.P2392330717425414532.a, A060208.P7183975736576041079.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A067434, A067434.P13929793644750032362.a, A071854, A071854.P11151984717235714317.a, A108954, A108954.P13763132661793771575.a, A056173, A056173.P15098762460861555107.a, A056175, A056175.P9200230780470454519.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001405, A001405.P5205018418992951678.a, A056057, A056057.P2194597549001614042.a, A056169, A056169.P17430176249366647977.a, A008833, A008833.P11016767941717339701.f1, A008833.P11016767941717339701.a, A055231, A055231.P8962300905713718501.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A060208

/-! ## A060208.P11712174429105785990

`A212210(∑[n+1])`
-/

namespace A060208.P11712174429105785990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212210 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060208.P11712174429105785990

namespace A060208

/-- `A212210(∑[n+1])` -/
def P11712174429105785990.Spec : Prop :=
  ∀ n, P11712174429105785990.a n = A060208 (n + 1)

end A060208

/-! ## A060208.P8170987920223332721

`-A047886(∑[n+2])`
-/

namespace A060208.P8170987920223332721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A047886 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060208.P8170987920223332721

namespace A060208

/-- `-A047886(∑[n+2])` -/
def P8170987920223332721.Spec : Prop :=
  ∀ n, P8170987920223332721.a n = A060208 (n + 1)

end A060208

/-!
# A060209: Dunckley sequence: number of bases in which the n-th composite number is a Smith number.

The programs for A060209, there is no canonical definition to state claims against.
-/

/-! ## A060209.P17642520123035548235

`A001222(A286891(n+1)%A048114(n+3))`
-/

namespace A060209.P17642520123035548235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A286891 (n + 1)) (A048114 (n + 3))).toNat

end

end A060209.P17642520123035548235

/-! ## A060209.P13655263010309197080

`p?[A172453(n)]%A127830(n)`
-/

namespace A060209.P13655263010309197080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A127830 n)

end

end A060209.P13655263010309197080

/-! ## A060209.P93053569593178364

`A001221(A089977(n))-A078646(n+1)`
-/

namespace A060209.P93053569593178364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A089977 n).toNat - A078646 (n + 1)

end

end A060209.P93053569593178364

/-! ## A060209.P5319041277176495182

`A069345(A014761(n+1))%A117910(n)`
-/

namespace A060209.P5319041277176495182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069345 (A014761 (n + 1)).toNat) (A117910 n)

end

end A060209.P5319041277176495182

/-!
# A060210: Largest prime factor of 1+smaller term of twin primes.

The programs for A060210, the canonical program `A060210.P857598385223716445` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060210 has offset 1).

The definition of A060210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060210.P857598385223716445

`A006530(A040040(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A060210

/-- `A006530(A040040(n+1))` -/
def P857598385223716445.Spec : Prop :=
  ∀ n, P857598385223716445.a n = A060210 (n + 1)

theorem P857598385223716445.correct : P857598385223716445.Spec := by
  intro n
  simp only [A060210, Nat.add_sub_cancel]

end A060210

/-! ## A060210.P17055400889755587986

`A006530(A168497(n+2))`
-/

namespace A060210.P17055400889755587986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A168497 (n + 2)).toNat

end

end A060210.P17055400889755587986

namespace A060210

/-- `A006530(A168497(n+2))` -/
def P17055400889755587986.Spec : Prop :=
  ∀ n, P17055400889755587986.a n = A060210 (n + 1)

end A060210

/-! ## A060210.P9924325137062206547

`A006530(A243811(n+1)+2)`
-/

namespace A060210.P9924325137062206547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A243811 (n + 1) + 2).toNat

end

end A060210.P9924325137062206547

namespace A060210

/-- `A006530(A243811(n+1)+2)` -/
def P9924325137062206547.Spec : Prop :=
  ∀ n, P9924325137062206547.a n = A060210 (n + 1)

theorem P9924325137062206547.correct : P9924325137062206547.Spec := by
  intro n
  simp only [A060210, Nat.add_sub_cancel, A060210.P9924325137062206547.a, A060210.P857598385223716445.a, A006530, A006530.P13372528560459906635.a, A040040, A040040.P16619200629137818045.a, A243811, A243811.P316071856288439546.a, A014574, A014574.P4587706211531852143.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A000010, A000010.P4673923239450215316.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A063919, A063919.P11181265949704613022.a, A087207, A087207.P12536008426233777954.a, A166597, A166597.P14552351031517696526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060210

/-! ## A060210.P17227704366045146305

`A006530(A014574(n+1)/2)`
-/

namespace A060210.P17227704366045146305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A014574 (n + 1) : ℚ) / 2)).toNat

end

end A060210.P17227704366045146305

namespace A060210

/-- `A006530(A014574(n+1)/2)` -/
def P17227704366045146305.Spec : Prop :=
  ∀ n, P17227704366045146305.a n = A060210 (n + 1)

end A060210

/-! ## A060210.P13647052995674121163

`A006530(sqrt(A075369(n+1))/2)`
-/

namespace A060210.P13647052995674121163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.sqrt (A075369 (n + 1) : ℝ) / 2)).toNat

end

end A060210.P13647052995674121163

namespace A060210

/-- `A006530(sqrt(A075369(n+1))/2)` -/
def P13647052995674121163.Spec : Prop :=
  ∀ n, P13647052995674121163.a n = A060210 (n + 1)

end A060210

/-! ## A060210.P3760363740646732050

`A006530(floor(A176810(n+1)/4))`
-/

namespace A060210.P3760363740646732050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ⌊(A176810 (n + 1) : ℚ) / 4⌋.toNat

end

end A060210.P3760363740646732050

namespace A060210

/-- `A006530(floor(A176810(n+1)/4))` -/
def P3760363740646732050.Spec : Prop :=
  ∀ n, P3760363740646732050.a n = A060210 (n + 1)

end A060210

/-! ## A060210.P13609450673203047368

`A006530((A001359(n+1)+1)/2)`
-/

namespace A060210.P13609450673203047368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A001359 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A060210.P13609450673203047368

namespace A060210

/-- `A006530((A001359(n+1)+1)/2)` -/
def P13609450673203047368.Spec : Prop :=
  ∀ n, P13609450673203047368.a n = A060210 (n + 1)

end A060210

/-! ## A060210.P5190885545547016138

`A006530((A006512(n+1)-1)/2)`
-/

namespace A060210.P5190885545547016138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A006512 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A060210.P5190885545547016138

namespace A060210

/-- `A006530((A006512(n+1)-1)/2)` -/
def P5190885545547016138.Spec : Prop :=
  ∀ n, P5190885545547016138.a n = A060210 (n + 1)

end A060210

/-! ## A060210.P10025772209723121683

`A006530(A075369(n+1)/A054735(n+1))`
-/

namespace A060210.P10025772209723121683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A075369 (n + 1) : ℚ) / (A054735 (n + 1) : ℚ))).toNat

end

end A060210.P10025772209723121683

namespace A060210

/-- `A006530(A075369(n+1)/A054735(n+1))` -/
def P10025772209723121683.Spec : Prop :=
  ∀ n, P10025772209723121683.a n = A060210 (n + 1)

end A060210

/-! ## A060210.P17516918037378945451

`A006530(A120876(n+1)%A006512(n+1))`
-/

namespace A060210.P17516918037378945451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.tmod (A120876 (n + 1)) (A006512 (n + 1))).toNat

end

end A060210.P17516918037378945451

namespace A060210

/-- `A006530(A120876(n+1)%A006512(n+1))` -/
def P17516918037378945451.Spec : Prop :=
  ∀ n, P17516918037378945451.a n = A060210 (n + 1)

end A060210

/-! ## A060210.P2264132752441109756

`A023509(A029707(n+1))`
-/

namespace A060210.P2264132752441109756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023509 (A029707 (n + 1)).toNat

end

end A060210.P2264132752441109756

namespace A060210

/-- `A023509(A029707(n+1))` -/
def P2264132752441109756.Spec : Prop :=
  ∀ n, P2264132752441109756.a n = A060210 (n + 1)

end A060210

/-! ## A060210.P895127543302251576

`A023503(A107770(n+1))`
-/

namespace A060210.P895127543302251576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023503 (A107770 (n + 1)).toNat

end

end A060210.P895127543302251576

namespace A060210

/-- `A023503(A107770(n+1))` -/
def P895127543302251576.Spec : Prop :=
  ∀ n, P895127543302251576.a n = A060210 (n + 1)

end A060210

/-! ## A060210.P6344789195328300259

`A023525(A029707(n+1)+1)`
-/

namespace A060210.P6344789195328300259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023525 (A029707 (n + 1) + 1).toNat

end

end A060210.P6344789195328300259

namespace A060210

/-- `A023525(A029707(n+1)+1)` -/
def P6344789195328300259.Spec : Prop :=
  ∀ n, P6344789195328300259.a n = A060210 (n + 1)

end A060210

/-! ## A060210.P3358263340448764481

`A052248(eq[1, A062301(n+1)])`
-/

namespace A060210.P3358263340448764481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052248 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060210.P3358263340448764481

namespace A060210

/-- `A052248(eq[1, A062301(n+1)])` -/
def P3358263340448764481.Spec : Prop :=
  ∀ n, P3358263340448764481.a n = A060210 (n + 1)

end A060210

/-! ## A060210.P103251856280990891

`A006530(A078579(n+1))`
-/

namespace A060210.P103251856280990891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A078579 (n + 1)).toNat

end

end A060210.P103251856280990891

namespace A060210

/-- `A006530(A078579(n+1))` -/
def P103251856280990891.Spec : Prop :=
  ∀ n, P103251856280990891.a n = A060210 (n + 1)

end A060210

/-! ## A060210.P2523073300227791989

`A006530(A014574(n+1))`
-/

namespace A060210.P2523073300227791989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A014574 (n + 1)).toNat

end

end A060210.P2523073300227791989

namespace A060210

/-- `A006530(A014574(n+1))` -/
def P2523073300227791989.Spec : Prop :=
  ∀ n, P2523073300227791989.a n = A060210 (n + 1)

end A060210

/-! ## A060210.P14083357791378630977

`A006530(sqrt(A075369(n+1)))`
-/

namespace A060210.P14083357791378630977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.sqrt (A075369 (n + 1) : ℝ))).toNat

end

end A060210.P14083357791378630977

namespace A060210

/-- `A006530(sqrt(A075369(n+1)))` -/
def P14083357791378630977.Spec : Prop :=
  ∀ n, P14083357791378630977.a n = A060210 (n + 1)

end A060210

/-! ## A060210.P325127127408739330

`A006530(A001359(n+1)+1)`
-/

namespace A060210.P325127127408739330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001359 (n + 1) + 1).toNat

end

end A060210.P325127127408739330

namespace A060210

/-- `A006530(A001359(n+1)+1)` -/
def P325127127408739330.Spec : Prop :=
  ∀ n, P325127127408739330.a n = A060210 (n + 1)

end A060210

/-! ## A060210.P16705728054597073970

`A006530(A006512(n+1)-1)`
-/

namespace A060210.P16705728054597073970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006512 (n + 1) - 1).toNat

end

end A060210.P16705728054597073970

namespace A060210

/-- `A006530(A006512(n+1)-1)` -/
def P16705728054597073970.Spec : Prop :=
  ∀ n, P16705728054597073970.a n = A060210 (n + 1)

end A060210

/-! ## A060210.P16986399558317777235

`A006530(A067829(n+2)-1)`
-/

namespace A060210.P16986399558317777235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A067829 (n + 2) - 1).toNat

end

end A060210.P16986399558317777235

namespace A060210

/-- `A006530(A067829(n+2)-1)` -/
def P16986399558317777235.Spec : Prop :=
  ∀ n, P16986399558317777235.a n = A060210 (n + 1)

end A060210

/-!
# A060211: Larger term of a pair of twin primes such that the prime factors of their average are only 2 and 3. Proper subset of A058383.

The programs for A060211, there is no canonical definition to state claims against.
-/

/-! ## A060211.P5221271349707951510

`A027856(n+2)+1`
-/

namespace A060211.P5221271349707951510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027856 (n + 2) + 1

end

end A060211.P5221271349707951510

/-! ## A060211.P4124113265599532549

`A078884(n+2)`
-/

namespace A060211.P4124113265599532549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078884 (n + 2)

end

end A060211.P4124113265599532549

/-! ## A060211.P7380471875161562374

`A059960(n+1)+2`
-/

namespace A060211.P7380471875161562374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059960 (n + 1) + 2

end

end A060211.P7380471875161562374

/-! ## A060211.P7596638238665196252

`A078883(n+2)+2`
-/

namespace A060211.P7596638238665196252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078883 (n + 2) + 2

end

end A060211.P7596638238665196252

/-! ## A060211.P10882743312553866095

`record[A078884(A141256(A141256(n)))]`
-/

namespace A060211.P10882743312553866095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078884 (A141256 (A141256 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060211.P10882743312553866095

/-!
# A060212: Primes q such that 6*q-1 and 6*q+1 are twin primes. Proper subset of A002822.

The programs for A060212, there is no canonical definition to state claims against.
-/

/-! ## A060212.P15416552644396611261

`A171179(n+1)/6`
-/

namespace A060212.P15416552644396611261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171179 (n + 1) : ℚ) / 6

end

end A060212.P15416552644396611261

/-! ## A060212.P621365958158266700

`(A060213(n+1)+1)/6`
-/

namespace A060212.P621365958158266700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060213 (n + 1) + 1 : ℚ) / 6

end

end A060212.P621365958158266700

/-! ## A060212.P3248860788296619614

`p?[ceil(A001359(n+2)/6)]`
-/

namespace A060212.P3248860788296619614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001359 (n + 2) : ℚ) / 6⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060212.P3248860788296619614

/-! ## A060212.P6808801515430262033

`∩[A007693(n+1), A164134(n+1)]`
-/

namespace A060212.P6808801515430262033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060212.P6808801515430262033

/-! ## A060212.P14784625856194675583

`∩[A007693(n+1), A158015(n+1)]`
-/

namespace A060212.P14784625856194675583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060212.P14784625856194675583

/-! ## A060212.P8709863300565373515

`∩[A158015(n+1), A164134(n+1)]`
-/

namespace A060212.P8709863300565373515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060212.P8709863300565373515

/-! ## A060212.P6339770762516791067

`p?[A283809(n+1)]`
-/

namespace A060212.P6339770762516791067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060212.P6339770762516791067

/-! ## A060212.P801074870741268294

`∩[A007693(n+1), A283809(n+1)]`
-/

namespace A060212.P801074870741268294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060212.P801074870741268294

/-! ## A060212.P16327526406052618595

`∩[A158015(n+1), A283809(n+1)]`
-/

namespace A060212.P16327526406052618595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060212.P16327526406052618595

/-! ## A060212.P6362744366481651578

`∩[A164134(n+1), A283809(n+1)]`
-/

namespace A060212.P6362744366481651578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060212.P6362744366481651578

/-! ## A060212.P12417358881813187673

`∩[A283562(n+1), A283809(n+1)]`
-/

namespace A060212.P12417358881813187673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060212.P12417358881813187673

/-! ## A060212.P7078262396306101611

`p?[A182521(n+1)]`
-/

namespace A060212.P7078262396306101611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060212.P7078262396306101611

/-! ## A060212.P12620319126914254496

`∩[A007693(n+1), A182521(n+1)]`
-/

namespace A060212.P12620319126914254496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060212.P12620319126914254496

/-! ## A060212.P1528906755307588164

`∩[A158015(n+1), A182521(n+1)]`
-/

namespace A060212.P1528906755307588164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060212.P1528906755307588164

/-! ## A060212.P3898084357195688186

`∩[A164134(n+1), A182521(n+1)]`
-/

namespace A060212.P3898084357195688186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060212.P3898084357195688186

/-! ## A060212.P15975847938767847000

`∩[A182521(n+1), A283562(n+1)]`
-/

namespace A060212.P15975847938767847000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060212.P15975847938767847000

/-! ## A060212.P10484064917324182826

`∩[A042993(n+1), A182521(n+1)]`
-/

namespace A060212.P10484064917324182826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060212.P10484064917324182826

/-! ## A060212.P8089646047741246517

`∩[A042993(n+1), A283809(n+1)]`
-/

namespace A060212.P8089646047741246517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060212.P8089646047741246517

/-! ## A060212.P10246804278912968140

`p?[A002822(n+1)]`
-/

namespace A060212.P10246804278912968140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060212.P10246804278912968140

/-! ## A060212.P15621675790784835245

`p?[record[A182483(n+2)]]`
-/

namespace A060212.P15621675790784835245
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182483 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060212.P15621675790784835245

/-!
# A060213: Lesser of twin primes whose average is 6 times a prime.

The programs for A060213, there is no canonical definition to state claims against.
-/

/-! ## A060213.P15605604581946316416

`6*A060212(n+1)-1`
-/

namespace A060213.P15605604581946316416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A060212 (n + 1) - 1

end

end A060213.P15605604581946316416

/-! ## A060213.P14538110063763720394

`A171179(n+1)-1`
-/

namespace A060213.P14538110063763720394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171179 (n + 1) - 1

end

end A060213.P14538110063763720394

/-! ## A060213.P10970231553170837379

`A008683(A045468(n+1))+6*A060212(n+1)`
-/

namespace A060213.P10970231553170837379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A045468 (n + 1)).toNat + 6 * A060212 (n + 1)

end

end A060213.P10970231553170837379

/-! ## A060213.P133221701383811524

`∩[A001359(n+1), A283532(n+1)]`
-/

namespace A060213.P133221701383811524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060213.P133221701383811524

/-! ## A060213.P10257279763211539662

`∩[A283532(n+1), A378983(n+1)]`
-/

namespace A060213.P10257279763211539662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060213.P10257279763211539662

/-! ## A060213.P18340931984799162778

`6*p?[A002822(n+1)]-1`
-/

namespace A060213.P18340931984799162778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A060213.P18340931984799162778

/-! ## A060213.P4737513530122057734

`∩[A054799(n+1), A283532(n+1)]`
-/

namespace A060213.P4737513530122057734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060213.P4737513530122057734

/-! ## A060213.P3252860717729353556

`∩[A063700(n+1), A283532(n+1)]`
-/

namespace A060213.P3252860717729353556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060213.P3252860717729353556

/-! ## A060213.P15831020509018335201

`∩[A111166(n+1), A283532(n+1)]`
-/

namespace A060213.P15831020509018335201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060213.P15831020509018335201

/-! ## A060213.P645538297915438170

`∩[A124588(n+1), A283532(n+1)]`
-/

namespace A060213.P645538297915438170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060213.P645538297915438170

/-! ## A060213.P981664839145598913

`∩[A181747(n+1), A283532(n+1)]`
-/

namespace A060213.P981664839145598913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060213.P981664839145598913

/-! ## A060213.P9089677884958948000

`∩[A014574(n+1), A075281(n+1)]-1`
-/

namespace A060213.P9089677884958948000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075281 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A060213.P9089677884958948000

/-! ## A060213.P7317458042708350178

`∩[A063693(n+1), A283532(n+1)]`
-/

namespace A060213.P7317458042708350178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060213.P7317458042708350178

/-! ## A060213.P14396636852090269450

`∩[A280255(n+1), A283532(n+1)]`
-/

namespace A060213.P14396636852090269450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060213.P14396636852090269450

/-! ## A060213.P7224321371942363555

`∩[A075281(n+1), A120432(n+1)]-1`
-/

namespace A060213.P7224321371942363555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120432 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A060213.P7224321371942363555

/-! ## A060213.P5623250845292039869

`∩[A075281(n+1), A306298(n+1)]-1`
-/

namespace A060213.P5623250845292039869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306298 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A060213.P5623250845292039869

/-! ## A060213.P17878641483506640166

`∩[A283532(n+1), A394509(n+1)]`
-/

namespace A060213.P17878641483506640166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060213.P17878641483506640166

/-! ## A060213.P16378522506450381653

`∩[A283532(n+1), A395788(n+1)]`
-/

namespace A060213.P16378522506450381653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060213.P16378522506450381653

/-! ## A060213.P9185696630130193215

`∩[A073534(n+1), A283532(n+1)]`
-/

namespace A060213.P9185696630130193215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060213.P9185696630130193215

/-! ## A060213.P2812951840308782292

`∩[A280590(n+1), A283532(n+1)]`
-/

namespace A060213.P2812951840308782292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060213.P2812951840308782292

/-!
# A060215: Least a(n) such that the period of continued fraction for sqrt(a(n)) has at least n successive 1's.

The programs for A060215, there is no canonical definition to state claims against.
-/

/-! ## A060215.P11384100473218916289

`A309666(n+1)^(floor(n^(1/3))^3)!`
-/

namespace A060215.P11384100473218916289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309666 (n + 1) ^ Nat.factorial (⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋ ^ 3).toNat

end

end A060215.P11384100473218916289

/-! ## A060215.P13125768547767684693

`A033862(A309666(n+1))`
-/

namespace A060215.P13125768547767684693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033862 (A309666 (n + 1)).toNat

end

end A060215.P13125768547767684693

/-! ## A060215.P7670544388640990913

`A309666(A365822(n+1))`
-/

namespace A060215.P7670544388640990913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309666 (A365822 (n + 1)).toNat

end

end A060215.P7670544388640990913

/-! ## A060215.P14487354846228237828

`A063929(C(A309666(n+1), 2))`
-/

namespace A060215.P14487354846228237828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063929 (Nat.choose (A309666 (n + 1)).toNat 2)

end

end A060215.P14487354846228237828

/-!
# A060216: Number of orbits of length n under the full 13-shift (whose periodic points are counted by A001022).

The programs for A060216, the canonical program `A060216.P13373903378428832859` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060216 has offset 1).

The definition of A060216 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060216.P13373903378428832859

`1/(n+1)*∑{d}[n+1, A008683(#)*13^((n+1)/#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060216

/-- `1/(n+1)*∑{d}[n+1, A008683(#)*13^((n+1)/#)]` -/
def P13373903378428832859.Spec : Prop :=
  ∀ n, P13373903378428832859.a n = (A060216 (n + 1) : ℝ)

end A060216

/-! ## A060216.P1001985400377849719

`A074650(eq[12, A193592(n)])`
-/

namespace A060216.P1001985400377849719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060216.P1001985400377849719

namespace A060216

/-- `A074650(eq[12, A193592(n)])` -/
def P1001985400377849719.Spec : Prop :=
  ∀ n, P1001985400377849719.a n = A060216 (n + 1)

end A060216

/-! ## A060216.P8232465744683072932

`A074650(eq[15, A219347(n)])`
-/

namespace A060216.P8232465744683072932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060216.P8232465744683072932

namespace A060216

/-- `A074650(eq[15, A219347(n)])` -/
def P8232465744683072932.Spec : Prop :=
  ∀ n, P8232465744683072932.a n = A060216 (n + 1)

end A060216

/-! ## A060216.P2685886526741427599

`A074650(eq[22, A185782(n+1)])`
-/

namespace A060216.P2685886526741427599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060216.P2685886526741427599

namespace A060216

/-- `A074650(eq[22, A185782(n+1)])` -/
def P2685886526741427599.Spec : Prop :=
  ∀ n, P2685886526741427599.a n = A060216 (n + 1)

end A060216

/-! ## A060216.P5532073942334994622

`A074650(A000217(n+12)+n+1)`
-/

namespace A060216.P5532073942334994622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (A000217 (n + 12) + (n + 1 : ℤ)).toNat

end

end A060216.P5532073942334994622

namespace A060216

/-- `A074650(A000217(n+12)+n+1)` -/
def P5532073942334994622.Spec : Prop :=
  ∀ n, P5532073942334994622.a n = A060216 (n + 1)

end A060216

/-!
# A060217: Number of orbits of length n under the full 14-shift (whose periodic points are counted by A001023).

The programs for A060217, the canonical program `A060217.P18130553868199321722` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060217 has offset 1).

The definition of A060217 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060217.P18130553868199321722

`1/(n+1)*∑{d}[n+1, A008683(#)*A001023((n+1)/#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060217

/-- `1/(n+1)*∑{d}[n+1, A008683(#)*A001023((n+1)/#)]` -/
def P18130553868199321722.Spec : Prop :=
  ∀ n, P18130553868199321722.a n = (A060217 (n + 1) : ℚ)

end A060217

/-! ## A060217.P6423886520720037705

`A074650(eq[13, A193592(n)])`
-/

namespace A060217.P6423886520720037705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060217.P6423886520720037705

namespace A060217

/-- `A074650(eq[13, A193592(n)])` -/
def P6423886520720037705.Spec : Prop :=
  ∀ n, P6423886520720037705.a n = A060217 (n + 1)

end A060217

/-! ## A060217.P8968320016971556126

`A074650(eq[18, A219347(n)])`
-/

namespace A060217.P8968320016971556126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060217.P8968320016971556126

namespace A060217

/-- `A074650(eq[18, A219347(n)])` -/
def P8968320016971556126.Spec : Prop :=
  ∀ n, P8968320016971556126.a n = A060217 (n + 1)

end A060217

/-! ## A060217.P17976110281577346880

`A074650(eq[24, A185782(n+1)])`
-/

namespace A060217.P17976110281577346880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060217.P17976110281577346880

namespace A060217

/-- `A074650(eq[24, A185782(n+1)])` -/
def P17976110281577346880.Spec : Prop :=
  ∀ n, P17976110281577346880.a n = A060217 (n + 1)

end A060217

/-!
# A060218: Number of orbits of length n under the full 15-shift (whose periodic points are counted by A001024).

The programs for A060218, the canonical program `A060218.P11942011506607416017` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060218 has offset 1).

The definition of A060218 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060218.P11942011506607416017

`1/(n+1)*∑{d}[n+1, A008683(#)*A001024((n+1)/#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060218

/-- `1/(n+1)*∑{d}[n+1, A008683(#)*A001024((n+1)/#)]` -/
def P11942011506607416017.Spec : Prop :=
  ∀ n, P11942011506607416017.a n = (A060218 (n + 1) : ℚ)

end A060218

/-! ## A060218.P2196207637344937463

`A074650(eq[14, A193592(n)])`
-/

namespace A060218.P2196207637344937463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060218.P2196207637344937463

namespace A060218

/-- `A074650(eq[14, A193592(n)])` -/
def P2196207637344937463.Spec : Prop :=
  ∀ n, P2196207637344937463.a n = A060218 (n + 1)

end A060218

/-! ## A060218.P5651586813504415202

`A074650(eq[22, A219347(n)])`
-/

namespace A060218.P5651586813504415202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060218.P5651586813504415202

namespace A060218

/-- `A074650(eq[22, A219347(n)])` -/
def P5651586813504415202.Spec : Prop :=
  ∀ n, P5651586813504415202.a n = A060218 (n + 1)

end A060218

/-!
# A060219: Number of orbits of length n under the full 16-shift (whose periodic points are counted by A001025).

The programs for A060219, the canonical program `A060219.P17990476528296427149` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060219 has offset 1).

The definition of A060219 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060219.P17990476528296427149

`1/(n+1)*∑{d}[n+1, A008683(#)*16^((n+1)/#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060219

/-- `1/(n+1)*∑{d}[n+1, A008683(#)*16^((n+1)/#)]` -/
def P17990476528296427149.Spec : Prop :=
  ∀ n, P17990476528296427149.a n = (A060219 (n + 1) : ℝ)

end A060219

/-! ## A060219.P15914276309162084915

`A074650(eq[15, A193592(n)])`
-/

namespace A060219.P15914276309162084915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060219.P15914276309162084915

namespace A060219

/-- `A074650(eq[15, A193592(n)])` -/
def P15914276309162084915.Spec : Prop :=
  ∀ n, P15914276309162084915.a n = A060219 (n + 1)

end A060219

/-! ## A060219.P5746325974341189409

`A074650(eq[27, A219347(n)])`
-/

namespace A060219.P5746325974341189409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060219.P5746325974341189409

namespace A060219

/-- `A074650(eq[27, A219347(n)])` -/
def P5746325974341189409.Spec : Prop :=
  ∀ n, P5746325974341189409.a n = A060219 (n + 1)

end A060219

/-! ## A060219.P12864338539740501120

`A074650(eq[28, A185782(n+1)])`
-/

namespace A060219.P12864338539740501120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060219.P12864338539740501120

namespace A060219

/-- `A074650(eq[28, A185782(n+1)])` -/
def P12864338539740501120.Spec : Prop :=
  ∀ n, P12864338539740501120.a n = A060219 (n + 1)

end A060219

/-! ## A060219.P1215557281744944281

`A143324(eq[15, A025581(n)]+1)/(n+1)`
-/

namespace A060219.P1215557281744944281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / (n + 1 : ℚ)

end

end A060219.P1215557281744944281

namespace A060219

/-- `A143324(eq[15, A025581(n)]+1)/(n+1)` -/
def P1215557281744944281.Spec : Prop :=
  ∀ n, P1215557281744944281.a n = (A060219 (n + 1) : ℚ)

end A060219

/-!
# A060220: Number of orbits of length n under the full 17-shift (whose periodic points are counted by A001026).

The programs for A060220, the canonical program `A060220.P17937666478876557106` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060220 has offset 1).

The definition of A060220 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060220.P17937666478876557106

`1/(n+1)*∑{d}[n+1, A008683(#)*A001026((n+1)/#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060220

/-- `1/(n+1)*∑{d}[n+1, A008683(#)*A001026((n+1)/#)]` -/
def P17937666478876557106.Spec : Prop :=
  ∀ n, P17937666478876557106.a n = (A060220 (n + 1) : ℚ)

end A060220

/-! ## A060220.P14811704142428168833

`A074650(eq[16, A193592(n)])`
-/

namespace A060220.P14811704142428168833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060220.P14811704142428168833

namespace A060220

/-- `A074650(eq[16, A193592(n)])` -/
def P14811704142428168833.Spec : Prop :=
  ∀ n, P14811704142428168833.a n = A060220 (n + 1)

end A060220

/-! ## A060220.P6238663845241869952

`A074650(eq[32, A219347(n)])`
-/

namespace A060220.P6238663845241869952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060220.P6238663845241869952

namespace A060220

/-- `A074650(eq[32, A219347(n)])` -/
def P6238663845241869952.Spec : Prop :=
  ∀ n, P6238663845241869952.a n = A060220 (n + 1)

end A060220

/-! ## A060220.P12215769097038006365

`A074650(eq[30, A185782(n+1)])`
-/

namespace A060220.P12215769097038006365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060220.P12215769097038006365

namespace A060220

/-- `A074650(eq[30, A185782(n+1)])` -/
def P12215769097038006365.Spec : Prop :=
  ∀ n, P12215769097038006365.a n = A060220 (n + 1)

end A060220

/-!
# A060221: Number of orbits of length n under the full 18-shift (whose periodic points are counted by A001027).

The programs for A060221, the canonical program `A060221.P5602501011197964046` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060221 has offset 1).

The definition of A060221 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060221.P5602501011197964046

`1/(n+1)*∑{d}[n+1, A008683(#)*A001027((n+1)/#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060221

/-- `1/(n+1)*∑{d}[n+1, A008683(#)*A001027((n+1)/#)]` -/
def P5602501011197964046.Spec : Prop :=
  ∀ n, P5602501011197964046.a n = (A060221 (n + 1) : ℚ)

end A060221

/-! ## A060221.P13474516313078483829

`A074650(eq[17, A193592(n)])`
-/

namespace A060221.P13474516313078483829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060221.P13474516313078483829

namespace A060221

/-- `A074650(eq[17, A193592(n)])` -/
def P13474516313078483829.Spec : Prop :=
  ∀ n, P13474516313078483829.a n = A060221 (n + 1)

end A060221

/-! ## A060221.P3157801416347489640

`A074650(eq[38, A219347(n)])`
-/

namespace A060221.P3157801416347489640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  38

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060221.P3157801416347489640

namespace A060221

/-- `A074650(eq[38, A219347(n)])` -/
def P3157801416347489640.Spec : Prop :=
  ∀ n, P3157801416347489640.a n = A060221 (n + 1)

end A060221

/-! ## A060221.P16838054608909771061

`A074650(eq[32, A185782(n+1)])`
-/

namespace A060221.P16838054608909771061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074650 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A060221.P16838054608909771061

namespace A060221

/-- `A074650(eq[32, A185782(n+1)])` -/
def P16838054608909771061.Spec : Prop :=
  ∀ n, P16838054608909771061.a n = A060221 (n + 1)

end A060221

/-!
# A060222: Number of orbits of length n under the full 19-shift (whose periodic points are counted by A001029).

The programs for A060222, the canonical program `A060222.P11053841935585558143` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060222 has offset 1).

The definition of A060222 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060222.P11053841935585558143

`1/(n+1)*∑{d}[n+1, A008683(#)*A001029((n+1)/#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060222

/-- `1/(n+1)*∑{d}[n+1, A008683(#)*A001029((n+1)/#)]` -/
def P11053841935585558143.Spec : Prop :=
  ∀ n, P11053841935585558143.a n = (A060222 (n + 1) : ℚ)

end A060222

/-!
# A060223: Number of orbits of length n under the map whose periodic points are counted by A000670.

The programs for A060223, there is no canonical definition to state claims against.
-/

/-! ## A060223.P7550840242558768530

`A296975(A028310(n))/A028310(n)`
-/

namespace A060223.P7550840242558768530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296975 (A028310 n).toNat : ℚ) / (A028310 n : ℚ)

end

end A060223.P7550840242558768530

/-! ## A060223.P4717439625894548664

`A296975(A233583(n+1))/A233583(n+1)`
-/

namespace A060223.P4717439625894548664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296975 (A233583 (n + 1)).toNat : ℚ) / (A233583 (n + 1) : ℚ)

end

end A060223.P4717439625894548664

/-! ## A060223.P5684855665475978293

`A296975(A065033(2*n))/A065033(2*n)`
-/

namespace A060223.P5684855665475978293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296975 (A065033 (2 * n)).toNat : ℚ) / (A065033 (2 * n) : ℚ)

end

end A060223.P5684855665475978293

/-! ## A060223.P9909568826498467026

`A296372(C(n, 2)+1)`
-/

namespace A060223.P9909568826498467026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296372 (Nat.choose n 2 + 1)

end

end A060223.P9909568826498467026

/-! ## A060223.P499873882972259194

`A296372(∑[abs(1-n)])`
-/

namespace A060223.P499873882972259194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296372 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A060223.P499873882972259194

/-!
# A060224: Number of orbits of length n under the map whose periodic points are counted by A047863.

The programs for A060224, there is no canonical definition to state claims against.
-/

/-! ## A060224.P7307828245494706994

`A387486(a(n-1))+n` with `a(0)=2, a(1)=2`
-/

namespace A060224.P7307828245494706994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A387486 (a (n - 1)).toNat + (n : ℤ)

end

end A060224.P7307828245494706994

/-!
# A060225: Prices of Monopoly properties starting with Mediterranean Avenue and ending with Boardwalk. Does not include railroads or utilities.

The programs for A060225, there is no canonical definition to state claims against.
-/

/-! ## A060225.P16006489902689039314

`20*A241216(A001970(n+4))`
-/

namespace A060225.P16006489902689039314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 * A241216 (A001970 (n + 4)).toNat

end

end A060225.P16006489902689039314

/-! ## A060225.P15192221835635142765

`20*A345378(A037074(n+1))`
-/

namespace A060225.P15192221835635142765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 * A345378 (A037074 (n + 1)).toNat

end

end A060225.P15192221835635142765

/-! ## A060225.P15818784491608948400

`5*A120427(A120397(3*n+5))`
-/

namespace A060225.P15818784491608948400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A120427 (A120397 (3 * n + 5)).toNat

end

end A060225.P15818784491608948400

/-!
# A060226: a(n) = n^n - n*(n-1)^(n-1).

The programs for A060226, the canonical program `A060226.P609599655644722523` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060226 has offset 0).

The definition of A060226 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A060226.anchor (n : ℕ) : (A060226 n : ℚ) = (n ^ n : ℚ) - (n : ℚ) * ((n : ℤ) - 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ)` in `Proof.A060.A060226`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060226.P609599655644722523

`n^n-n*(n-1)^(n-1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060226

/-- `n^n-n*(n-1)^(n-1)` -/
def P609599655644722523.Spec : Prop :=
  ∀ n, P609599655644722523.a n = (A060226 n : ℚ)

end A060226

/-! ## A060226.P13058673284728941697

`A241580(round(1/acot(∑[n]))+n)`
-/

namespace A060226.P13058673284728941697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241580 (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) + (n : ℤ)).toNat

end

end A060226.P13058673284728941697

namespace A060226

/-- `A241580(round(1/acot(∑[n]))+n)` -/
def P13058673284728941697.Spec : Prop :=
  ∀ n, P13058673284728941697.a n = A060226 n

end A060226

/-! ## A060226.P16406092195349705533

`A241580(record[A132460(n)])`
-/

namespace A060226.P16406092195349705533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132460 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241580 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060226.P16406092195349705533

namespace A060226

/-- `A241580(record[A132460(n)])` -/
def P16406092195349705533.Spec : Prop :=
  ∀ n, P16406092195349705533.a n = A060226 n

end A060226

/-! ## A060226.P9513730507397453393

`A241580(A134189(n+1))`
-/

namespace A060226.P9513730507397453393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241580 (A134189 (n + 1)).toNat

end

end A060226.P9513730507397453393

namespace A060226

/-- `A241580(A134189(n+1))` -/
def P9513730507397453393.Spec : Prop :=
  ∀ n, P9513730507397453393.a n = A060226 n

end A060226

/-! ## A060226.P10191087951615847370

`A241580(A212342(n+1))`
-/

namespace A060226.P10191087951615847370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241580 (A212342 (n + 1)).toNat

end

end A060226.P10191087951615847370

namespace A060226

/-- `A241580(A212342(n+1))` -/
def P10191087951615847370.Spec : Prop :=
  ∀ n, P10191087951615847370.a n = A060226 n

end A060226

/-!
# A060229: Smaller member of a twin prime pair whose mean is a multiple of A002110(3)=30.

The programs for A060229, the canonical program `A060229.P2803371139708944737` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060229 has offset 1).

The definition of A060229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6503 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060229.P10418330813505035777

`A282326(n+1)-2`
-/

namespace A060229.P10418330813505035777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282326 (n + 1) - 2

end

end A060229.P10418330813505035777

namespace A060229

/-- `A282326(n+1)-2` -/
def P10418330813505035777.Spec : Prop :=
  ∀ n, P10418330813505035777.a n = A060229 (n + 1)

theorem P10418330813505035777.correct : P10418330813505035777.Spec := by
  intro n
  simp only [A060229, Nat.add_sub_cancel, A060229.P10418330813505035777.a, A060229.P2803371139708944737.f1, A060229.P2803371139708944737.f2, A060229.P2803371139708944737.a, A001359, A001359.P8865495035699438537.a, A030433, A030433.P5160408850318071491.a, A282326, A282326.P5010439827126536252.a, A077800, A077800.P16009445446139691322.a, A102700, A102700.P10486691176846618732.a, A096281, A096281.P9870488552655544131.a, A105042, A105042.P10666840312701966561.f1, A105042.P10666840312701966561.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060229

/-! ## A060229.P17388372500162247355

`10*A124518(n+1)-1`
-/

namespace A060229.P17388372500162247355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A124518 (n + 1) - 1

end

end A060229.P17388372500162247355

namespace A060229

/-- `10*A124518(n+1)-1` -/
def P17388372500162247355.Spec : Prop :=
  ∀ n, P17388372500162247355.a n = A060229 (n + 1)

end A060229

/-! ## A060229.P2803371139708944737

`∩[A001359(n+1), A030433(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A060229

/-- `∩[A001359(n+1), A030433(n+1)]` -/
def P2803371139708944737.Spec : Prop :=
  ∀ n, (P2803371139708944737.a n : ℤ) = A060229 (n + 1)

theorem P2803371139708944737.correct : P2803371139708944737.Spec := by
  intro n
  simp only [A060229, Nat.add_sub_cancel]

end A060229

/-! ## A060229.P2495972381239149529

`∩[A378983(n+1), A030433(n+1)]`
-/

namespace A060229.P2495972381239149529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060229.P2495972381239149529

namespace A060229

/-- `∩[A378983(n+1), A030433(n+1)]` -/
def P2495972381239149529.Spec : Prop :=
  ∀ n, (P2495972381239149529.a n : ℤ) = A060229 (n + 1)

end A060229

/-! ## A060229.P8591974227004431269

`∩[A030433(n+1), A047078(n+1)]`
-/

namespace A060229.P8591974227004431269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060229.P8591974227004431269

namespace A060229

/-- `∩[A030433(n+1), A047078(n+1)]` -/
def P8591974227004431269.Spec : Prop :=
  ∀ n, (P8591974227004431269.a n : ℤ) = A060229 (n + 1)

end A060229

/-! ## A060229.P17620525547965324594

`∩[A030433(n+1), A087693(n)]`
-/

namespace A060229.P17620525547965324594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087693 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060229.P17620525547965324594

namespace A060229

/-- `∩[A030433(n+1), A087693(n)]` -/
def P17620525547965324594.Spec : Prop :=
  ∀ n, (P17620525547965324594.a n : ℤ) = A060229 (n + 1)

end A060229

/-! ## A060229.P13068902732092623043

`∩[A181606(n+1), A087693(n)]`
-/

namespace A060229.P13068902732092623043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087693 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060229.P13068902732092623043

namespace A060229

/-- `∩[A181606(n+1), A087693(n)]` -/
def P13068902732092623043.Spec : Prop :=
  ∀ n, (P13068902732092623043.a n : ℤ) = A060229 (n + 1)

end A060229

/-! ## A060229.P4996304943866583991

`∩[A030433(n+1), A054799(n+1)]`
-/

namespace A060229.P4996304943866583991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060229.P4996304943866583991

namespace A060229

/-- `∩[A030433(n+1), A054799(n+1)]` -/
def P4996304943866583991.Spec : Prop :=
  ∀ n, (P4996304943866583991.a n : ℤ) = A060229 (n + 1)

end A060229

/-! ## A060229.P4359019490216288282

`∩[A132236(n+1), A087693(n)]`
-/

namespace A060229.P4359019490216288282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087693 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060229.P4359019490216288282

namespace A060229

/-- `∩[A132236(n+1), A087693(n)]` -/
def P4359019490216288282.Spec : Prop :=
  ∀ n, (P4359019490216288282.a n : ℤ) = A060229 (n + 1)

end A060229

/-! ## A060229.P5980002120272120169

`∩[A001359(n+1), A132236(n+1)]`
-/

namespace A060229.P5980002120272120169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060229.P5980002120272120169

namespace A060229

/-- `∩[A001359(n+1), A132236(n+1)]` -/
def P5980002120272120169.Spec : Prop :=
  ∀ n, (P5980002120272120169.a n : ℤ) = A060229 (n + 1)

end A060229

/-! ## A060229.P6367825248872558500

`p?[p?[15*n+1]-2]`
-/

namespace A060229.P6367825248872558500
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060229.P6367825248872558500

namespace A060229

/-- `p?[p?[15*n+1]-2]` -/
def P6367825248872558500.Spec : Prop :=
  ∀ n, P6367825248872558500.a n = A060229 (n + 1)

end A060229

/-! ## A060229.P8660147542887285564

`p?[A030430(n+1)-2]`
-/

namespace A060229.P8660147542887285564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060229.P8660147542887285564

namespace A060229

/-- `p?[A030430(n+1)-2]` -/
def P8660147542887285564.Spec : Prop :=
  ∀ n, P8660147542887285564.a n = A060229 (n + 1)

end A060229

/-! ## A060229.P7915033478267563239

`p?[A132230(n+1)-2]`
-/

namespace A060229.P7915033478267563239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060229.P7915033478267563239

namespace A060229

/-- `p?[A132230(n+1)-2]` -/
def P7915033478267563239.Spec : Prop :=
  ∀ n, P7915033478267563239.a n = A060229 (n + 1)

end A060229

/-! ## A060229.P5452701809498717683

`∩[A001838(n+1), A030433(n+1)]`
-/

namespace A060229.P5452701809498717683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030433 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060229.P5452701809498717683

namespace A060229

/-- `∩[A001838(n+1), A030433(n+1)]` -/
def P5452701809498717683.Spec : Prop :=
  ∀ n, (P5452701809498717683.a n : ℤ) = A060229 (n + 1)

end A060229

/-! ## A060229.P2733720207070567079

`∩[A001097(n+1), A132236(n+1)]`
-/

namespace A060229.P2733720207070567079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060229.P2733720207070567079

namespace A060229

/-- `∩[A001097(n+1), A132236(n+1)]` -/
def P2733720207070567079.Spec : Prop :=
  ∀ n, (P2733720207070567079.a n : ℤ) = A060229 (n + 1)

end A060229

/-! ## A060229.P4891804171050207289

`∩[A132236(n+1), A132247(n+1)]`
-/

namespace A060229.P4891804171050207289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060229.P4891804171050207289

namespace A060229

/-- `∩[A132236(n+1), A132247(n+1)]` -/
def P4891804171050207289.Spec : Prop :=
  ∀ n, (P4891804171050207289.a n : ℤ) = A060229 (n + 1)

end A060229

/-! ## A060229.P13179558637242813325

`∩[A132236(n+1), A171688(n+1)]`
-/

namespace A060229.P13179558637242813325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171688 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060229.P13179558637242813325

namespace A060229

/-- `∩[A132236(n+1), A171688(n+1)]` -/
def P13179558637242813325.Spec : Prop :=
  ∀ n, (P13179558637242813325.a n : ℤ) = A060229 (n + 1)

end A060229

/-! ## A060229.P942904398046233612

`∩[A132236(n+1), A265760(n+1)]`
-/

namespace A060229.P942904398046233612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060229.P942904398046233612

namespace A060229

/-- `∩[A132236(n+1), A265760(n+1)]` -/
def P942904398046233612.Spec : Prop :=
  ∀ n, (P942904398046233612.a n : ℤ) = A060229 (n + 1)

end A060229

/-! ## A060229.P9408243873775268836

`∩[A001097(n+1), A132230(n+1)-2]`
-/

namespace A060229.P9408243873775268836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060229.P9408243873775268836

namespace A060229

/-- `∩[A001097(n+1), A132230(n+1)-2]` -/
def P9408243873775268836.Spec : Prop :=
  ∀ n, (P9408243873775268836.a n : ℤ) = A060229 (n + 1)

end A060229

/-! ## A060229.P6480315934863596824

`∩[A132230(n+1)-2, A132247(n+1)]`
-/

namespace A060229.P6480315934863596824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060229.P6480315934863596824

namespace A060229

/-- `∩[A132230(n+1)-2, A132247(n+1)]` -/
def P6480315934863596824.Spec : Prop :=
  ∀ n, (P6480315934863596824.a n : ℤ) = A060229 (n + 1)

end A060229

/-!
# A060230: Smaller of twin primes whose middle term is a multiple of A002110(4)=210.

The programs for A060230, the canonical program `A060230.P12084537768286370496` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060230 has offset 1).

The definition of A060230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1526 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060230.P15952926429045363573

`∩[A001359(n+1), A142099(n+1)]`
-/

namespace A060230.P15952926429045363573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060230.P15952926429045363573

namespace A060230

/-- `∩[A001359(n+1), A142099(n+1)]` -/
def P15952926429045363573.Spec : Prop :=
  ∀ n, (P15952926429045363573.a n : ℤ) = A060230 (n + 1)

end A060230

/-! ## A060230.P12084537768286370496

`∩[A060229(n+1), A142099(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A060230

/-- `∩[A060229(n+1), A142099(n+1)]` -/
def P12084537768286370496.Spec : Prop :=
  ∀ n, (P12084537768286370496.a n : ℤ) = A060230 (n + 1)

theorem P12084537768286370496.correct : P12084537768286370496.Spec := by
  intro n
  simp only [A060230, Nat.add_sub_cancel]

end A060230

/-! ## A060230.P17312056542612361665

`∩[A001359(n+1), A140535(n+1)]`
-/

namespace A060230.P17312056542612361665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060230.P17312056542612361665

namespace A060230

/-- `∩[A001359(n+1), A140535(n+1)]` -/
def P17312056542612361665.Spec : Prop :=
  ∀ n, (P17312056542612361665.a n : ℤ) = A060230 (n + 1)

end A060230

/-! ## A060230.P16009472703456912485

`∩[A060229(n+1), A140535(n+1)]`
-/

namespace A060230.P16009472703456912485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060230.P16009472703456912485

namespace A060230

/-- `∩[A060229(n+1), A140535(n+1)]` -/
def P16009472703456912485.Spec : Prop :=
  ∀ n, (P16009472703456912485.a n : ℤ) = A060230 (n + 1)

end A060230

/-! ## A060230.P1566734949634142692

`∩[A140535(n+1), A293605(n+1)-2]`
-/

namespace A060230.P1566734949634142692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293605 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060230.P1566734949634142692

namespace A060230

/-- `∩[A140535(n+1), A293605(n+1)-2]` -/
def P1566734949634142692.Spec : Prop :=
  ∀ n, (P1566734949634142692.a n : ℤ) = A060230 (n + 1)

end A060230

/-! ## A060230.P14867864108847649790

`∩[A140535(n+1), A378983(n+1)]`
-/

namespace A060230.P14867864108847649790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060230.P14867864108847649790

namespace A060230

/-- `∩[A140535(n+1), A378983(n+1)]` -/
def P14867864108847649790.Spec : Prop :=
  ∀ n, (P14867864108847649790.a n : ℤ) = A060230 (n + 1)

end A060230

/-! ## A060230.P14582383760859036524

`∩[A142099(n+1), A378983(n+1)]`
-/

namespace A060230.P14582383760859036524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060230.P14582383760859036524

namespace A060230

/-- `∩[A142099(n+1), A378983(n+1)]` -/
def P14582383760859036524.Spec : Prop :=
  ∀ n, (P14582383760859036524.a n : ℤ) = A060230 (n + 1)

end A060230

/-! ## A060230.P5562931288226284141

`∩[A140535(n+1), A181606(n+1)]`
-/

namespace A060230.P5562931288226284141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060230.P5562931288226284141

namespace A060230

/-- `∩[A140535(n+1), A181606(n+1)]` -/
def P5562931288226284141.Spec : Prop :=
  ∀ n, (P5562931288226284141.a n : ℤ) = A060230 (n + 1)

end A060230

/-! ## A060230.P8226810916666188377

`∩[A047078(n+1), A140535(n+1)]`
-/

namespace A060230.P8226810916666188377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060230.P8226810916666188377

namespace A060230

/-- `∩[A047078(n+1), A140535(n+1)]` -/
def P8226810916666188377.Spec : Prop :=
  ∀ n, (P8226810916666188377.a n : ℤ) = A060230 (n + 1)

end A060230

/-! ## A060230.P14434055972169344296

`∩[A047078(n+1), A142099(n+1)]`
-/

namespace A060230.P14434055972169344296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060230.P14434055972169344296

namespace A060230

/-- `∩[A047078(n+1), A142099(n+1)]` -/
def P14434055972169344296.Spec : Prop :=
  ∀ n, (P14434055972169344296.a n : ℤ) = A060230 (n + 1)

end A060230

/-! ## A060230.P17729882741572759592

`∩[A060229(n+1), A111092(n+1)]`
-/

namespace A060230.P17729882741572759592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060230.P17729882741572759592

namespace A060230

/-- `∩[A060229(n+1), A111092(n+1)]` -/
def P17729882741572759592.Spec : Prop :=
  ∀ n, (P17729882741572759592.a n : ℤ) = A060230 (n + 1)

end A060230

/-! ## A060230.P7973899744951176815

`∩[A060229(n+1), A141898(n+1)]`
-/

namespace A060230.P7973899744951176815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060230.P7973899744951176815

namespace A060230

/-- `∩[A060229(n+1), A141898(n+1)]` -/
def P7973899744951176815.Spec : Prop :=
  ∀ n, (P7973899744951176815.a n : ℤ) = A060230 (n + 1)

end A060230

/-! ## A060230.P15494382323289505429

`∩[A141898(n+1), A181606(n+1)]`
-/

namespace A060230.P15494382323289505429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060230.P15494382323289505429

namespace A060230

/-- `∩[A141898(n+1), A181606(n+1)]` -/
def P15494382323289505429.Spec : Prop :=
  ∀ n, (P15494382323289505429.a n : ℤ) = A060230 (n + 1)

end A060230

/-! ## A060230.P1724497290771814198

`∩[A089720(n+1)-2, A111092(n+1)]`
-/

namespace A060230.P1724497290771814198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089720 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060230.P1724497290771814198

namespace A060230

/-- `∩[A089720(n+1)-2, A111092(n+1)]` -/
def P1724497290771814198.Spec : Prop :=
  ∀ n, (P1724497290771814198.a n : ℤ) = A060230 (n + 1)

end A060230

/-! ## A060230.P7163233989549278409

`∩[A089720(n+1)-2, A140535(n+1)]`
-/

namespace A060230.P7163233989549278409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089720 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060230.P7163233989549278409

namespace A060230

/-- `∩[A089720(n+1)-2, A140535(n+1)]` -/
def P7163233989549278409.Spec : Prop :=
  ∀ n, (P7163233989549278409.a n : ℤ) = A060230 (n + 1)

end A060230

/-! ## A060230.P9652923977635300656

`∩[A111092(n+1), A124826(n+1)-2]`
-/

namespace A060230.P9652923977635300656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060230.P9652923977635300656

namespace A060230

/-- `∩[A111092(n+1), A124826(n+1)-2]` -/
def P9652923977635300656.Spec : Prop :=
  ∀ n, (P9652923977635300656.a n : ℤ) = A060230 (n + 1)

end A060230

/-! ## A060230.P10453158742286872197

`∩[A124826(n+1)-2, A140535(n+1)]`
-/

namespace A060230.P10453158742286872197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124826 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060230.P10453158742286872197

namespace A060230

/-- `∩[A124826(n+1)-2, A140535(n+1)]` -/
def P10453158742286872197.Spec : Prop :=
  ∀ n, (P10453158742286872197.a n : ℤ) = A060230 (n + 1)

end A060230

/-! ## A060230.P5278457865653750088

`∩[A111092(n+1), A293605(n+1)-2]`
-/

namespace A060230.P5278457865653750088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293605 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060230.P5278457865653750088

namespace A060230

/-- `∩[A111092(n+1), A293605(n+1)-2]` -/
def P5278457865653750088.Spec : Prop :=
  ∀ n, (P5278457865653750088.a n : ℤ) = A060230 (n + 1)

end A060230

/-! ## A060230.P3560188005043729842

`∩[A111092(n+2)-2, A111092(n+2)]`
-/

namespace A060230.P3560188005043729842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111092 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060230.P3560188005043729842

namespace A060230

/-- `∩[A111092(n+2)-2, A111092(n+2)]` -/
def P3560188005043729842.Spec : Prop :=
  ∀ n, (P3560188005043729842.a n : ℤ) = A060230 (n + 1)

end A060230

/-! ## A060230.P12548439382984985190

`∩[A140535(n+1), A210360(n+1)]`
-/

namespace A060230.P12548439382984985190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060230.P12548439382984985190

namespace A060230

/-- `∩[A140535(n+1), A210360(n+1)]` -/
def P12548439382984985190.Spec : Prop :=
  ∀ n, (P12548439382984985190.a n : ℤ) = A060230 (n + 1)

end A060230

/-!
# A060231: Smaller of twin primes whose middle term is a multiple of A002110(5)=2310.

The programs for A060231, the canonical program `A060231.P3993353208591184516` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060231 has offset 1).

The definition of A060231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 265 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060231.P3993353208591184516

`∩[A060230(n+1), A142640(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A060231

/-- `∩[A060230(n+1), A142640(n+1)]` -/
def P3993353208591184516.Spec : Prop :=
  ∀ n, (P3993353208591184516.a n : ℤ) = A060231 (n + 1)

theorem P3993353208591184516.correct : P3993353208591184516.Spec := by
  intro n
  simp only [A060231, Nat.add_sub_cancel]

end A060231

/-! ## A060231.P12153251128215149524

`∩[A060230(n+1), A142068(n+1)]`
-/

namespace A060231.P12153251128215149524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060231.P12153251128215149524

namespace A060231

/-- `∩[A060230(n+1), A142068(n+1)]` -/
def P12153251128215149524.Spec : Prop :=
  ∀ n, (P12153251128215149524.a n : ℤ) = A060231 (n + 1)

end A060231

/-!
# A060232: Smaller of twin primes whose mean (average) is a multiple of A002110(6)=30030.

The programs for A060232, there is no canonical definition to state claims against.
-/

/-! ## A060232.P5580890846564840781

`A235716(n+1)-1`
-/

namespace A060232.P5580890846564840781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235716 (n + 1) - 1

end

end A060232.P5580890846564840781

/-! ## A060232.P7847776196599202108

`A280193(p?[3*n+5])+A235716(n+1)`
-/

namespace A060232.P7847776196599202108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + A235716 (n + 1)

end

end A060232.P7847776196599202108

/-! ## A060232.P11397858854060916910

`A321800(A007318(n))+A235716(n+1)`
-/

namespace A060232.P11397858854060916910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A007318 n).toNat + A235716 (n + 1)

end

end A060232.P11397858854060916910

/-! ## A060232.P12249182597851706751

`A321800(A275332(n))+A235716(n+1)`
-/

namespace A060232.P12249182597851706751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A275332 n).toNat + A235716 (n + 1)

end

end A060232.P12249182597851706751

/-! ## A060232.P9103786245408784200

`A302050(A002586(n+1))+A235716(n+1)`
-/

namespace A060232.P9103786245408784200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 (A002586 (n + 1)).toNat + A235716 (n + 1)

end

end A060232.P9103786245408784200

/-!
# A060234: a(n) = (prime(n) mod (prime(n+1)-prime(n))).

The programs for A060234, the canonical program `A060234.P162499315375231868` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060234 has offset 1).

The definition of A060234 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)%(A000040(n+2)-A000040(n+1))` (program `A060234.P162499315375231868`, by `A060234.P162499315375231868.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060234.P162499315375231868

`A000040(n+1)%(A000040(n+2)-A000040(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060234

/-- `A000040(n+1)%(A000040(n+2)-A000040(n+1))` -/
def P162499315375231868.Spec : Prop :=
  ∀ n, P162499315375231868.a n = A060234 (n + 1)

theorem P162499315375231868.correct : P162499315375231868.Spec := by
  intro n
  simp only [A060234, Nat.add_sub_cancel]

end A060234

/-! ## A060234.P17356311295307121818

`A033287(n)%A001223(n+1)`
-/

namespace A060234.P17356311295307121818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033287 n) (A001223 (n + 1))

end

end A060234.P17356311295307121818

namespace A060234

/-- `A033287(n)%A001223(n+1)` -/
def P17356311295307121818.Spec : Prop :=
  ∀ n, P17356311295307121818.a n = A060234 (n + 1)

end A060234

/-! ## A060234.P4365667189311298806

`Δ[A007504(n)]%A001223(n+1)`
-/

namespace A060234.P4365667189311298806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A001223 (n + 1))

end

end A060234.P4365667189311298806

namespace A060234

/-- `Δ[A007504(n)]%A001223(n+1)` -/
def P4365667189311298806.Spec : Prop :=
  ∀ n, P4365667189311298806.a n = A060234 (n + 1)

end A060234

/-! ## A060234.P10045129807899308182

`A000040(n+1)%A001223(n+1)`
-/

namespace A060234.P10045129807899308182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A001223 (n + 1))

end

end A060234.P10045129807899308182

namespace A060234

/-- `A000040(n+1)%A001223(n+1)` -/
def P10045129807899308182.Spec : Prop :=
  ∀ n, P10045129807899308182.a n = A060234 (n + 1)

end A060234

/-! ## A060234.P13035778619242002857

`A006005(n+1)%A001223(n+1)`
-/

namespace A060234.P13035778619242002857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006005 (n + 1)) (A001223 (n + 1))

end

end A060234.P13035778619242002857

namespace A060234

/-- `A006005(n+1)%A001223(n+1)` -/
def P13035778619242002857.Spec : Prop :=
  ∀ n, P13035778619242002857.a n = A060234 (n + 1)

end A060234

/-! ## A060234.P17428280281901595013

`A045319(n+1)%A001223(n+1)`
-/

namespace A060234.P17428280281901595013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045319 (n + 1)) (A001223 (n + 1))

end

end A060234.P17428280281901595013

namespace A060234

/-- `A045319(n+1)%A001223(n+1)` -/
def P17428280281901595013.Spec : Prop :=
  ∀ n, P17428280281901595013.a n = A060234 (n + 1)

end A060234

/-! ## A060234.P6010756676628858299

`A045344(n+1)%A001223(n+1)`
-/

namespace A060234.P6010756676628858299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045344 (n + 1)) (A001223 (n + 1))

end

end A060234.P6010756676628858299

namespace A060234

/-- `A045344(n+1)%A001223(n+1)` -/
def P6010756676628858299.Spec : Prop :=
  ∀ n, P6010756676628858299.a n = A060234 (n + 1)

end A060234

/-! ## A060234.P3593421009841364926

`A062234(n+1)%A001223(n+1)`
-/

namespace A060234.P3593421009841364926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062234 (n + 1)) (A001223 (n + 1))

end

end A060234.P3593421009841364926

namespace A060234

/-- `A062234(n+1)%A001223(n+1)` -/
def P3593421009841364926.Spec : Prop :=
  ∀ n, P3593421009841364926.a n = A060234 (n + 1)

end A060234

/-! ## A060234.P13184533160622717735

`A065091(n+1)%A001223(n+1)`
-/

namespace A060234.P13184533160622717735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065091 (n + 1)) (A001223 (n + 1))

end

end A060234.P13184533160622717735

namespace A060234

/-- `A065091(n+1)%A001223(n+1)` -/
def P13184533160622717735.Spec : Prop :=
  ∀ n, P13184533160622717735.a n = A060234 (n + 1)

end A060234

/-! ## A060234.P8809652309041977837

`A126990(n+1)%A001223(n+1)`
-/

namespace A060234.P8809652309041977837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126990 (n + 1)) (A001223 (n + 1))

end

end A060234.P8809652309041977837

namespace A060234

/-- `A126990(n+1)%A001223(n+1)` -/
def P8809652309041977837.Spec : Prop :=
  ∀ n, P8809652309041977837.a n = A060234 (n + 1)

end A060234

/-! ## A060234.P10849411308119772063

`A140475(n+1)%A001223(n+1)`
-/

namespace A060234.P10849411308119772063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140475 (n + 1)) (A001223 (n + 1))

end

end A060234.P10849411308119772063

namespace A060234

/-- `A140475(n+1)%A001223(n+1)` -/
def P10849411308119772063.Spec : Prop :=
  ∀ n, P10849411308119772063.a n = A060234 (n + 1)

end A060234

/-! ## A060234.P11670509924436212614

`A210497(n+1)%A001223(n+1)`
-/

namespace A060234.P11670509924436212614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210497 (n + 1)) (A001223 (n + 1))

end

end A060234.P11670509924436212614

namespace A060234

/-- `A210497(n+1)%A001223(n+1)` -/
def P11670509924436212614.Spec : Prop :=
  ∀ n, P11670509924436212614.a n = A060234 (n + 1)

end A060234

/-! ## A060234.P1417149016316651834

`A000040(n+1)-A001223(n+1)*A102551(n+1)`
-/

namespace A060234.P1417149016316651834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A001223 (n + 1) * A102551 (n + 1)

end

end A060234.P1417149016316651834

namespace A060234

/-- `A000040(n+1)-A001223(n+1)*A102551(n+1)` -/
def P1417149016316651834.Spec : Prop :=
  ∀ n, P1417149016316651834.a n = A060234 (n + 1)

end A060234

/-! ## A060234.P8093039334365738157

`A008578(n+2)%A001223(n+1)`
-/

namespace A060234.P8093039334365738157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 2)) (A001223 (n + 1))

end

end A060234.P8093039334365738157

namespace A060234

/-- `A008578(n+2)%A001223(n+1)` -/
def P8093039334365738157.Spec : Prop :=
  ∀ n, P8093039334365738157.a n = A060234 (n + 1)

end A060234

/-! ## A060234.P13385963914068458814

`A090942(n+2)%A001223(n+1)`
-/

namespace A060234.P13385963914068458814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090942 (n + 2)) (A001223 (n + 1))

end

end A060234.P13385963914068458814

namespace A060234

/-- `A090942(n+2)%A001223(n+1)` -/
def P13385963914068458814.Spec : Prop :=
  ∀ n, P13385963914068458814.a n = A060234 (n + 1)

end A060234

/-! ## A060234.P5492756625250223360

`record[A006530(n+2)]%Δ[A040976(n+1)]`
-/

namespace A060234.P5492756625250223360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (f2 (n + 1) - f2 n)

end

end A060234.P5492756625250223360

namespace A060234

/-- `record[A006530(n+2)]%Δ[A040976(n+1)]` -/
def P5492756625250223360.Spec : Prop :=
  ∀ n, P5492756625250223360.a n = A060234 (n + 1)

end A060234

/-! ## A060234.P2336020931007373822

`record[A020639(n+2)]%Δ[A040976(n+1)]`
-/

namespace A060234.P2336020931007373822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (f2 (n + 1) - f2 n)

end

end A060234.P2336020931007373822

namespace A060234

/-- `record[A020639(n+2)]%Δ[A040976(n+1)]` -/
def P2336020931007373822.Spec : Prop :=
  ∀ n, P2336020931007373822.a n = A060234 (n + 1)

end A060234

/-! ## A060234.P12829454246622247337

`A063884(n+1)%A001223(n+1)`
-/

namespace A060234.P12829454246622247337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063884 (n + 1)) (A001223 (n + 1))

end

end A060234.P12829454246622247337

namespace A060234

/-- `A063884(n+1)%A001223(n+1)` -/
def P12829454246622247337.Spec : Prop :=
  ∀ n, P12829454246622247337.a n = A060234 (n + 1)

end A060234

/-! ## A060234.P6715030839265273347

`p?[A092579(n+1)]%A001223(n+1)`
-/

namespace A060234.P6715030839265273347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A001223 (n + 1))

end

end A060234.P6715030839265273347

namespace A060234

/-- `p?[A092579(n+1)]%A001223(n+1)` -/
def P6715030839265273347.Spec : Prop :=
  ∀ n, P6715030839265273347.a n = A060234 (n + 1)

end A060234

/-! ## A060234.P12428207802424605507

`p?[A054403(n+1)]%A001223(n+1)`
-/

namespace A060234.P12428207802424605507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A001223 (n + 1))

end

end A060234.P12428207802424605507

namespace A060234

/-- `p?[A054403(n+1)]%A001223(n+1)` -/
def P12428207802424605507.Spec : Prop :=
  ∀ n, P12428207802424605507.a n = A060234 (n + 1)

end A060234

/-!
# A060235: Smallest primes whose residue modulo its difference from the next prime is 2n-1.

The programs for A060235, there is no canonical definition to state claims against.
-/

/-! ## A060235.P17681029783784030708

`A249241(A371917(n+4))`
-/

namespace A060235.P17681029783784030708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249241 (A371917 (n + 4)).toNat

end

end A060235.P17681029783784030708

/-!
# A060236: If n mod 3 = 0 then a(n) = a(n/3), otherwise a(n) = n mod 3.

The programs for A060236, the canonical program `A060236.P15045569037773550193` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060236 has offset 1).

The definition of A060236 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060236.P3302765433420313559

`((n+1)/3^val(n+1, 3))%3`
-/

namespace A060236.P3302765433420313559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))) 3

end

end A060236.P3302765433420313559

namespace A060236

/-- `((n+1)/3^val(n+1, 3))%3` -/
def P3302765433420313559.Spec : Prop :=
  ∀ n, P3302765433420313559.a n = A060236 (n + 1)

end A060236

/-! ## A060236.P15045569037773550193

`1+A080846(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A060236

/-- `1+A080846(n+1)` -/
def P15045569037773550193.Spec : Prop :=
  ∀ n, P15045569037773550193.a n = A060236 (n + 1)

theorem P15045569037773550193.correct : P15045569037773550193.Spec := by
  intro n
  simp only [A060236, Nat.add_sub_cancel]

end A060236

/-! ## A060236.P17366278733694611638

`Δ[a(floor(n/3))+round(n/3)]+1` with `a(0)=0, a(1)=0`
-/

namespace A060236.P17366278733694611638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 ⌊(n : ℚ) / 3⌋.toNat + SequenceMachineLib.roundAway ((n : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A060236.P17366278733694611638

namespace A060236

/-- `Δ[a(floor(n/3))+round(n/3)]+1` -/
def P17366278733694611638.Spec : Prop :=
  ∀ n, P17366278733694611638.a n = A060236 (n + 1)

end A060236

/-! ## A060236.P12251995241586027129

`2-A137893(n+1)`
-/

namespace A060236.P12251995241586027129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A137893 (n + 1)

end

end A060236.P12251995241586027129

namespace A060236

/-- `2-A137893(n+1)` -/
def P12251995241586027129.Spec : Prop :=
  ∀ n, P12251995241586027129.a n = A060236 (n + 1)

theorem P12251995241586027129.correct : P12251995241586027129.Spec := by
  intro n
  simp only [A060236, Nat.add_sub_cancel, A060236.P12251995241586027129.a, A060236.P15045569037773550193.a, A080846, A080846.P6350490556575780844.a, A137893, A137893.P5279872751976216164.a, A062756, A062756.P3953090966624310992.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060236

/-! ## A060236.P5734579982128923313

`A038502(n+1)%3`
-/

namespace A060236.P5734579982128923313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038502 (n + 1)) 3

end

end A060236.P5734579982128923313

namespace A060236

/-- `A038502(n+1)%3` -/
def P5734579982128923313.Spec : Prop :=
  ∀ n, P5734579982128923313.a n = A060236 (n + 1)

end A060236

/-! ## A060236.P1234833045571692001

`A068963(n+1)%3`
-/

namespace A060236.P1234833045571692001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068963 (n + 1)) 3

end

end A060236.P1234833045571692001

namespace A060236

/-- `A068963(n+1)%3` -/
def P1234833045571692001.Spec : Prop :=
  ∀ n, P1234833045571692001.a n = A060236 (n + 1)

end A060236

/-! ## A060236.P6155433718883036383

`A077456(n+1)%3`
-/

namespace A060236.P6155433718883036383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077456 (n + 1)) 3

end

end A060236.P6155433718883036383

namespace A060236

/-- `A077456(n+1)%3` -/
def P6155433718883036383.Spec : Prop :=
  ∀ n, P6155433718883036383.a n = A060236 (n + 1)

end A060236

/-! ## A060236.P3427425002237306308

`gcd(2, A140316(n+1))`
-/

namespace A060236.P3427425002237306308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A140316 (n + 1))

end

end A060236.P3427425002237306308

namespace A060236

/-- `gcd(2, A140316(n+1))` -/
def P3427425002237306308.Spec : Prop :=
  ∀ n, (P3427425002237306308.a n : ℤ) = A060236 (n + 1)

end A060236

/-! ## A060236.P3549814303191503973

`A308364(n+1)%3`
-/

namespace A060236.P3549814303191503973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308364 (n + 1)) 3

end

end A060236.P3549814303191503973

namespace A060236

/-- `A308364(n+1)%3` -/
def P3549814303191503973.Spec : Prop :=
  ∀ n, P3549814303191503973.a n = A060236 (n + 1)

end A060236

/-! ## A060236.P3385952641972989110

`A327625(n+1)%3`
-/

namespace A060236.P3385952641972989110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327625 (n + 1)) 3

end

end A060236.P3385952641972989110

namespace A060236

/-- `A327625(n+1)%3` -/
def P3385952641972989110.Spec : Prop :=
  ∀ n, P3385952641972989110.a n = A060236 (n + 1)

end A060236

/-! ## A060236.P12249403320045288492

`A343430(n+1)%3`
-/

namespace A060236.P12249403320045288492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343430 (n + 1)) 3

end

end A060236.P12249403320045288492

namespace A060236

/-- `A343430(n+1)%3` -/
def P12249403320045288492.Spec : Prop :=
  ∀ n, P12249403320045288492.a n = A060236 (n + 1)

end A060236

/-! ## A060236.P13062512469912967252

`A371492(n+1)%3`
-/

namespace A060236.P13062512469912967252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A371492 (n + 1)) 3

end

end A060236.P13062512469912967252

namespace A060236

/-- `A371492(n+1)%3` -/
def P13062512469912967252.Spec : Prop :=
  ∀ n, P13062512469912967252.a n = A060236 (n + 1)

end A060236

/-! ## A060236.P5540102395544893606

`A372962(n+1)%3`
-/

namespace A060236.P5540102395544893606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372962 (n + 1)) 3

end

end A060236.P5540102395544893606

namespace A060236

/-- `A372962(n+1)%3` -/
def P5540102395544893606.Spec : Prop :=
  ∀ n, P5540102395544893606.a n = A060236 (n + 1)

end A060236

/-! ## A060236.P5707790946708670766

`A372965(n+1)%3`
-/

namespace A060236.P5707790946708670766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372965 (n + 1)) 3

end

end A060236.P5707790946708670766

namespace A060236

/-- `A372965(n+1)%3` -/
def P5707790946708670766.Spec : Prop :=
  ∀ n, P5707790946708670766.a n = A060236 (n + 1)

end A060236

/-! ## A060236.P4580008587298329802

`A373007(n+1)%3`
-/

namespace A060236.P4580008587298329802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373007 (n + 1)) 3

end

end A060236.P4580008587298329802

namespace A060236

/-- `A373007(n+1)%3` -/
def P4580008587298329802.Spec : Prop :=
  ∀ n, P4580008587298329802.a n = A060236 (n + 1)

end A060236

/-! ## A060236.P3675839129508719401

`A373060(n+1)%3`
-/

namespace A060236.P3675839129508719401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373060 (n + 1)) 3

end

end A060236.P3675839129508719401

namespace A060236

/-- `A373060(n+1)%3` -/
def P3675839129508719401.Spec : Prop :=
  ∀ n, P3675839129508719401.a n = A060236 (n + 1)

end A060236

/-! ## A060236.P17573152254227799183

`A373103(n+1)%3`
-/

namespace A060236.P17573152254227799183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373103 (n + 1)) 3

end

end A060236.P17573152254227799183

namespace A060236

/-- `A373103(n+1)%3` -/
def P17573152254227799183.Spec : Prop :=
  ∀ n, P17573152254227799183.a n = A060236 (n + 1)

end A060236

/-! ## A060236.P7986251944680971503

`A390692(n+1)%3`
-/

namespace A060236.P7986251944680971503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A390692 (n + 1)) 3

end

end A060236.P7986251944680971503

namespace A060236

/-- `A390692(n+1)%3` -/
def P7986251944680971503.Spec : Prop :=
  ∀ n, P7986251944680971503.a n = A060236 (n + 1)

end A060236

/-! ## A060236.P9477099476752558767

`abs(Δ[A136690(n)])+1`
-/

namespace A060236.P9477099476752558767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| + 1

end

end A060236.P9477099476752558767

namespace A060236

/-- `abs(Δ[A136690(n)])+1` -/
def P9477099476752558767.Spec : Prop :=
  ∀ n, P9477099476752558767.a n = A060236 (n + 1)

end A060236

/-!
# A060237: a(n) = n!^2 * Sum_{m=1..n}( Sum_{k=1..m} 1/(k*m) ).

The programs for A060237, there is no canonical definition to state claims against.
-/

/-! ## A060237.P15193691424342549816

`A000424(n%round(ϕ*a(n-1)))` with `a(0)=1`
-/

namespace A060237.P15193691424342549816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000424 (Int.tmod (n : ℤ) (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ)))).toNat

end

end A060237.P15193691424342549816

/-! ## A060237.P4225183927330970663

`A025527(n+1)²*record[A027447(n+1)]`
-/

namespace A060237.P4225183927330970663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025527 (n + 1) ^ 2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060237.P4225183927330970663

/-! ## A060237.P3405838685332626374

`A008969(∑[n+1]+3)`
-/

namespace A060237.P3405838685332626374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008969 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A060237.P3405838685332626374

/-! ## A060237.P1161584969746442809

`A112492(∑[n+3])`
-/

namespace A060237.P1161584969746442809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112492 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060237.P1161584969746442809

/-! ## A060237.P15737768534266860338

`A112492(A141214(n))^A178334(n)`
-/

namespace A060237.P15737768534266860338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112492 (A141214 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A060237.P15737768534266860338

/-!
# A060238: a(n) = det(M) where M is an n X n matrix with M[i,j] = lcm(i,j).

The programs for A060238, there is no canonical definition to state claims against.
-/

/-! ## A060238.P14430862695780147783

`n*A023900(n)*a(n-1)` with `a(0)=1`
-/

namespace A060238.P14430862695780147783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A023900 n * a (n - 1)

end

end A060238.P14430862695780147783

/-! ## A060238.P14668400131673104558

`A023359(n)*A023900(A294373(n))`
-/

namespace A060238.P14668400131673104558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023359 n * A023900 (A294373 n).toNat

end

end A060238.P14668400131673104558

/-!
# A060239: a(n) = determinant(P*Q)/n! where P, Q are n X n matrices with P[i,j]=lcm(i,j), Q[i,j]=gcd(i,j).

The programs for A060239, there is no canonical definition to state claims against.
-/

/-! ## A060239.P16102256778395340710

`A001088(n+1)*A060238(n+1)/(n+1)!`
-/

namespace A060239.P16102256778395340710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001088 (n + 1) * A060238 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A060239.P16102256778395340710

/-! ## A060239.P7783195239268887653

`∏[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A023900(n+1)]`
-/

namespace A060239.P7783195239268887653
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) * (A023900 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060239.P7783195239268887653

/-! ## A060239.P3517003162535438680

`∏[Δ[A002088(n)]*A023900(n+1)]`
-/

namespace A060239.P3517003162535438680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A023900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060239.P3517003162535438680

/-! ## A060239.P7903891153204019155

`∏[A000010(n+1)*A023900(n+1)]`
-/

namespace A060239.P7903891153204019155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A023900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060239.P7903891153204019155

/-! ## A060239.P12934897144825391769

`∏[A023900(n+1)]*A001088(n+1)`
-/

namespace A060239.P12934897144825391769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A001088 (n + 1)

end

end A060239.P12934897144825391769

/-! ## A060239.P16480059816242879453

`∏[A023900(n+1)*A282634(∑[n]+1)]`
-/

namespace A060239.P16480059816242879453
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (n + 1) * A282634 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060239.P16480059816242879453

/-! ## A060239.P13424886829679237385

`∏[A000010(n+1)*A334312(∑[n+1])]`
-/

namespace A060239.P13424886829679237385
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A334312 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060239.P13424886829679237385

/-! ## A060239.P5338062870854177225

`∏[(A109606(n+1)+1)*A023900(n+1)]`
-/

namespace A060239.P5338062870854177225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1) * A023900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060239.P5338062870854177225

/-! ## A060239.P6149350199970434262

`∏[(A039649(n+1)-1)*A023900(n+1)]`
-/

namespace A060239.P6149350199970434262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1) * A023900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060239.P6149350199970434262

/-! ## A060239.P14873347437341095729

`∏[(A109606(n+1)+1)*A334312(∑[n+1])]`
-/

namespace A060239.P14873347437341095729
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1) * A334312 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A060239.P14873347437341095729

/-!
# A060242: a(n) = (2^n - 1)*(4^n - 1).

The programs for A060242, the canonical program `A060242.P628711798503248840` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060242 has offset 0).

The definition of A060242 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n-1)*(4^n-1)` (program `A060242.P628711798503248840`, by `A060242.P628711798503248840.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A060242.P628711798503248840

`(2^n-1)*(4^n-1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060242

/-- `(2^n-1)*(4^n-1)` -/
def P628711798503248840.Spec : Prop :=
  ∀ n, P628711798503248840.a n = A060242 n

theorem P628711798503248840.correct : P628711798503248840.Spec := by
  intro n
  simp only [A060242]

end A060242

/-! ## A060242.P2747560115851225345

`lcm((1-2^n)², or(1, 2^n))`
-/

namespace A060242.P2747560115851225345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((1 - (2 ^ n : ℤ)) ^ 2) (Nat.lor 1 (2 ^ n) : ℤ)

end

end A060242.P2747560115851225345

namespace A060242

/-- `lcm((1-2^n)², or(1, 2^n))` -/
def P2747560115851225345.Spec : Prop :=
  ∀ n, (P2747560115851225345.a n : ℤ) = A060242 n

end A060242

/-! ## A060242.P3362413424828554309

`xor(8^n+1-2^n, 4^n)`
-/

namespace A060242.P3362413424828554309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((8 ^ n : ℤ) + (1 - (2 ^ n : ℤ))) (4 ^ n : ℤ)

end

end A060242.P3362413424828554309

namespace A060242

/-- `xor(8^n+1-2^n, 4^n)` -/
def P3362413424828554309.Spec : Prop :=
  ∀ n, P3362413424828554309.a n = A060242 n

end A060242

/-! ## A060242.P1541838295487401365

`A155629(n)-2^n`
-/

namespace A060242.P1541838295487401365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155629 n - (2 ^ n : ℤ)

end

end A060242.P1541838295487401365

namespace A060242

/-- `A155629(n)-2^n` -/
def P1541838295487401365.Spec : Prop :=
  ∀ n, P1541838295487401365.a n = A060242 n

end A060242

/-! ## A060242.P7664353898002081623

`A155599(n)-4^n`
-/

namespace A060242.P7664353898002081623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155599 n - (4 ^ n : ℤ)

end

end A060242.P7664353898002081623

namespace A060242

/-- `A155599(n)-4^n` -/
def P7664353898002081623.Spec : Prop :=
  ∀ n, P7664353898002081623.a n = A060242 n

end A060242

/-! ## A060242.P1310918573023459937

`3^n+A090023(n)-1`
-/

namespace A060242.P1310918573023459937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) + (A090023 n - 1)

end

end A060242.P1310918573023459937

namespace A060242

/-- `3^n+A090023(n)-1` -/
def P1310918573023459937.Spec : Prop :=
  ∀ n, P1310918573023459937.a n = A060242 n

end A060242

/-! ## A060242.P14180608738098625280

`abs((2^n-1)*A024036(n))`
-/

namespace A060242.P14180608738098625280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((2 ^ n : ℤ) - 1) * A024036 n|

end

end A060242.P14180608738098625280

namespace A060242

/-- `abs((2^n-1)*A024036(n))` -/
def P14180608738098625280.Spec : Prop :=
  ∀ n, P14180608738098625280.a n = A060242 n

end A060242

/-! ## A060242.P14007165081661276694

`lcm((1-2^n)², A000051(n))`
-/

namespace A060242.P14007165081661276694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((1 - (2 ^ n : ℤ)) ^ 2) (A000051 n)

end

end A060242.P14007165081661276694

namespace A060242

/-- `lcm((1-2^n)², A000051(n))` -/
def P14007165081661276694.Spec : Prop :=
  ∀ n, (P14007165081661276694.a n : ℤ) = A060242 n

end A060242

/-! ## A060242.P9949022510584197461

`lcm((2^n-1)², A083318(n))`
-/

namespace A060242.P9949022510584197461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((2 ^ n : ℤ) - 1) ^ 2) (A083318 n)

end

end A060242.P9949022510584197461

namespace A060242

/-- `lcm((2^n-1)², A083318(n))` -/
def P9949022510584197461.Spec : Prop :=
  ∀ n, (P9949022510584197461.a n : ℤ) = A060242 n

end A060242

/-! ## A060242.P7584694928618553932

`A001018(n)+1-4^n-2^n`
-/

namespace A060242.P7584694928618553932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n + 1 - (4 ^ n : ℤ) - (2 ^ n : ℤ)

end

end A060242.P7584694928618553932

namespace A060242

/-- `A001018(n)+1-4^n-2^n` -/
def P7584694928618553932.Spec : Prop :=
  ∀ n, P7584694928618553932.a n = A060242 n

end A060242

/-! ## A060242.P15320684907738512893

`A059409(n)-A000225(n)`
-/

namespace A060242.P15320684907738512893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059409 n - A000225 n

end

end A060242.P15320684907738512893

namespace A060242

/-- `A059409(n)-A000225(n)` -/
def P15320684907738512893.Spec : Prop :=
  ∀ n, P15320684907738512893.a n = A060242 n

theorem P15320684907738512893.correct : P15320684907738512893.Spec := by
  intro n
  simp only [A060242, Nat.add_sub_cancel, A060242.P15320684907738512893.a, A060242.P628711798503248840.a, A000225, A000225.P6535533121115206393.a, A059409, A059409.P13303064921923202936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060242

/-! ## A060242.P14763681082292377805

`A001018(n)-A099393(n)`
-/

namespace A060242.P14763681082292377805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n - A099393 n

end

end A060242.P14763681082292377805

namespace A060242

/-- `A001018(n)-A099393(n)` -/
def P14763681082292377805.Spec : Prop :=
  ∀ n, P14763681082292377805.a n = A060242 n

end A060242

/-! ## A060242.P11264493436669794806

`A074518(n)-A074532(n)`
-/

namespace A060242.P11264493436669794806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074518 n - A074532 n

end

end A060242.P11264493436669794806

namespace A060242

/-- `A074518(n)-A074532(n)` -/
def P11264493436669794806.Spec : Prop :=
  ∀ n, P11264493436669794806.a n = A060242 n

end A060242

/-! ## A060242.P1779843916279271446

`A074521(n)-A074533(n)`
-/

namespace A060242.P1779843916279271446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074521 n - A074533 n

end

end A060242.P1779843916279271446

namespace A060242

/-- `A074521(n)-A074533(n)` -/
def P1779843916279271446.Spec : Prop :=
  ∀ n, P1779843916279271446.a n = A060242 n

end A060242

/-! ## A060242.P16503050808403636091

`A062395(n)-A161168(n)`
-/

namespace A060242.P16503050808403636091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062395 n - A161168 n

end

end A060242.P16503050808403636091

namespace A060242

/-- `A062395(n)-A161168(n)` -/
def P16503050808403636091.Spec : Prop :=
  ∀ n, P16503050808403636091.a n = A060242 n

end A060242

/-! ## A060242.P17629861030942636135

`A248217(n)-A024036(n)`
-/

namespace A060242.P17629861030942636135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248217 n - A024036 n

end

end A060242.P17629861030942636135

namespace A060242

/-- `A248217(n)-A024036(n)` -/
def P17629861030942636135.Spec : Prop :=
  ∀ n, P17629861030942636135.a n = A060242 n

end A060242

/-! ## A060242.P14726801643655081601

`A062395(n)+1-A001576(n)`
-/

namespace A060242.P14726801643655081601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062395 n + (1 - A001576 n)

end

end A060242.P14726801643655081601

namespace A060242

/-- `A062395(n)+1-A001576(n)` -/
def P14726801643655081601.Spec : Prop :=
  ∀ n, P14726801643655081601.a n = A060242 n

end A060242

/-! ## A060242.P12283525250715574090

`A063481(n)-A092431(n+1)`
-/

namespace A060242.P12283525250715574090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063481 n - A092431 (n + 1)

end

end A060242.P12283525250715574090

namespace A060242

/-- `A063481(n)-A092431(n+1)` -/
def P12283525250715574090.Spec : Prop :=
  ∀ n, P12283525250715574090.a n = A060242 n

end A060242

/-! ## A060242.P1058880015267741641

`A001018(n)+2-A001576(n)`
-/

namespace A060242.P1058880015267741641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 n + (2 - A001576 n)

end

end A060242.P1058880015267741641

namespace A060242

/-- `A001018(n)+2-A001576(n)` -/
def P1058880015267741641.Spec : Prop :=
  ∀ n, P1058880015267741641.a n = A060242 n

end A060242

/-!
# A060244: Triangle a(n,k) of bipartite partitions of n objects into parts >1, k of which are black.

The programs for A060244, there is no canonical definition to state claims against.
-/

/-! ## A060244.P10148284566299031748

`A371244(A175840(n))`
-/

namespace A060244.P10148284566299031748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371244 (A175840 n).toNat

end

end A060244.P10148284566299031748

/-! ## A060244.P14598416107666519661

`A050370(A036561(n))`
-/

namespace A060244.P14598416107666519661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050370 (A036561 n).toNat

end

end A060244.P14598416107666519661

/-! ## A060244.P8065416935575145431

`A050370(A082234(n+1))`
-/

namespace A060244.P8065416935575145431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050370 (A082234 (n + 1)).toNat

end

end A060244.P8065416935575145431

/-! ## A060244.P17809227193475721373

`A050370(A230445(n)+1)`
-/

namespace A060244.P17809227193475721373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050370 (A230445 n + 1).toNat

end

end A060244.P17809227193475721373

/-! ## A060244.P939724503645706626

`A050370(A094617(n+1)-1)`
-/

namespace A060244.P939724503645706626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050370 (A094617 (n + 1) - 1).toNat

end

end A060244.P939724503645706626

/-! ## A060244.P2291306289832273501

`A050370(A081954(n+1)/2)`
-/

namespace A060244.P2291306289832273501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050370 (SequenceMachineLib.roundAway ((A081954 (n + 1) : ℚ) / 2)).toNat

end

end A060244.P2291306289832273501

/-! ## A060244.P8616219376397107845

`A050370((A094615(n)+1)/2)`
-/

namespace A060244.P8616219376397107845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050370 (SequenceMachineLib.roundAway ((A094615 n + 1 : ℚ) / 2)).toNat

end

end A060244.P8616219376397107845

/-! ## A060244.P16889998610278304461

`A050370(A332815(A089633(n)))`
-/

namespace A060244.P16889998610278304461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050370 (A332815 (A089633 n).toNat).toNat

end

end A060244.P16889998610278304461

/-! ## A060244.P8357664904525555987

`A050370(A155118(∑[A035214(n)]))`
-/

namespace A060244.P8357664904525555987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050370 (A155118 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A060244.P8357664904525555987

/-! ## A060244.P4527213256043929305

`A050370(A094615(n)-A230445(n))`
-/

namespace A060244.P4527213256043929305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050370 (A094615 n - A230445 n).toNat

end

end A060244.P4527213256043929305

/-!
# A060245: Primes p such that the sum of the first p composite numbers is itself prime.

The programs for A060245, the canonical program `A060245.P1972279356398641003` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060245 has offset 1).

The definition of A060245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 883 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060245.P1972279356398641003

`p?[A053782(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A060245

/-- `p?[A053782(n+1)]` -/
def P1972279356398641003.Spec : Prop :=
  ∀ n, P1972279356398641003.a n = A060245 (n + 1)

theorem P1972279356398641003.correct : P1972279356398641003.Spec := by
  intro n
  simp only [A060245, Nat.add_sub_cancel]

end A060245

/-! ## A060245.P9274334201264354878

`p?[record[A053782(A331745(n))]]`
-/

namespace A060245.P9274334201264354878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053782 (A331745 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060245.P9274334201264354878

namespace A060245

/-- `p?[record[A053782(A331745(n))]]` -/
def P9274334201264354878.Spec : Prop :=
  ∀ n, P9274334201264354878.a n = A060245 (n + 1)

end A060245

/-! ## A060245.P14698227682843310021

`∩[A053782(n+1), A348283(n+1)]`
-/

namespace A060245.P14698227682843310021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060245.P14698227682843310021

namespace A060245

/-- `∩[A053782(n+1), A348283(n+1)]` -/
def P14698227682843310021.Spec : Prop :=
  ∀ n, (P14698227682843310021.a n : ℤ) = A060245 (n + 1)

end A060245

/-! ## A060245.P9184804696786850011

`∩[A053782(n+1), A373789(n+1)]`
-/

namespace A060245.P9184804696786850011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060245.P9184804696786850011

namespace A060245

/-- `∩[A053782(n+1), A373789(n+1)]` -/
def P9184804696786850011.Spec : Prop :=
  ∀ n, (P9184804696786850011.a n : ℤ) = A060245 (n + 1)

end A060245

/-! ## A060245.P5345070723246927943

`∩[A053782(n+1), A383300(n+1)]`
-/

namespace A060245.P5345070723246927943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060245.P5345070723246927943

namespace A060245

/-- `∩[A053782(n+1), A383300(n+1)]` -/
def P5345070723246927943.Spec : Prop :=
  ∀ n, (P5345070723246927943.a n : ℤ) = A060245 (n + 1)

end A060245

/-! ## A060245.P16929478030942779098

`∩[A000040(n+1), A053782(n+1)]`
-/

namespace A060245.P16929478030942779098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060245.P16929478030942779098

namespace A060245

/-- `∩[A000040(n+1), A053782(n+1)]` -/
def P16929478030942779098.Spec : Prop :=
  ∀ n, (P16929478030942779098.a n : ℤ) = A060245 (n + 1)

end A060245

/-! ## A060245.P16246017212563825566

`∩[A006005(n+1), A053782(n+1)]`
-/

namespace A060245.P16246017212563825566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060245.P16246017212563825566

namespace A060245

/-- `∩[A006005(n+1), A053782(n+1)]` -/
def P16246017212563825566.Spec : Prop :=
  ∀ n, (P16246017212563825566.a n : ℤ) = A060245 (n + 1)

end A060245

/-! ## A060245.P12216200348234876252

`∩[A008578(n+1), A053782(n+1)]`
-/

namespace A060245.P12216200348234876252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060245.P12216200348234876252

namespace A060245

/-- `∩[A008578(n+1), A053782(n+1)]` -/
def P12216200348234876252.Spec : Prop :=
  ∀ n, (P12216200348234876252.a n : ℤ) = A060245 (n + 1)

end A060245

/-! ## A060245.P11470299170868051280

`∩[A033946(n+1), A053782(n+1)]`
-/

namespace A060245.P11470299170868051280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060245.P11470299170868051280

namespace A060245

/-- `∩[A033946(n+1), A053782(n+1)]` -/
def P11470299170868051280.Spec : Prop :=
  ∀ n, (P11470299170868051280.a n : ℤ) = A060245 (n + 1)

end A060245

/-! ## A060245.P16234614840990815152

`∩[A045344(n+1), A053782(n+1)]`
-/

namespace A060245.P16234614840990815152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060245.P16234614840990815152

namespace A060245

/-- `∩[A045344(n+1), A053782(n+1)]` -/
def P16234614840990815152.Spec : Prop :=
  ∀ n, (P16234614840990815152.a n : ℤ) = A060245 (n + 1)

end A060245

/-! ## A060245.P12810860347395416837

`∩[A046022(n+1), A053782(n+1)]`
-/

namespace A060245.P12810860347395416837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060245.P12810860347395416837

namespace A060245

/-- `∩[A046022(n+1), A053782(n+1)]` -/
def P12810860347395416837.Spec : Prop :=
  ∀ n, (P12810860347395416837.a n : ℤ) = A060245 (n + 1)

end A060245

/-! ## A060245.P14992408160171150283

`∩[A051948(n+1), A053782(n+1)]`
-/

namespace A060245.P14992408160171150283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060245.P14992408160171150283

namespace A060245

/-- `∩[A051948(n+1), A053782(n+1)]` -/
def P14992408160171150283.Spec : Prop :=
  ∀ n, (P14992408160171150283.a n : ℤ) = A060245 (n + 1)

end A060245

/-! ## A060245.P10695694530954876767

`∩[A053782(n+1), A053813(n+1)]`
-/

namespace A060245.P10695694530954876767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060245.P10695694530954876767

namespace A060245

/-- `∩[A053782(n+1), A053813(n+1)]` -/
def P10695694530954876767.Spec : Prop :=
  ∀ n, (P10695694530954876767.a n : ℤ) = A060245 (n + 1)

end A060245

/-! ## A060245.P14954965935922451248

`∩[A053782(n+1), A062972(n+1)]`
-/

namespace A060245.P14954965935922451248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060245.P14954965935922451248

namespace A060245

/-- `∩[A053782(n+1), A062972(n+1)]` -/
def P14954965935922451248.Spec : Prop :=
  ∀ n, (P14954965935922451248.a n : ℤ) = A060245 (n + 1)

end A060245

/-! ## A060245.P7814215747938243207

`∩[A053782(n+1), A065091(n+1)]`
-/

namespace A060245.P7814215747938243207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060245.P7814215747938243207

namespace A060245

/-- `∩[A053782(n+1), A065091(n+1)]` -/
def P7814215747938243207.Spec : Prop :=
  ∀ n, (P7814215747938243207.a n : ℤ) = A060245 (n + 1)

end A060245

/-! ## A060245.P5278285696918028625

`∩[A053782(n+1), A065396(n+1)]`
-/

namespace A060245.P5278285696918028625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060245.P5278285696918028625

namespace A060245

/-- `∩[A053782(n+1), A065396(n+1)]` -/
def P5278285696918028625.Spec : Prop :=
  ∀ n, (P5278285696918028625.a n : ℤ) = A060245 (n + 1)

end A060245

/-! ## A060245.P15173420246410511430

`∩[A053782(n+1), A066050(n+1)]`
-/

namespace A060245.P15173420246410511430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060245.P15173420246410511430

namespace A060245

/-- `∩[A053782(n+1), A066050(n+1)]` -/
def P15173420246410511430.Spec : Prop :=
  ∀ n, (P15173420246410511430.a n : ℤ) = A060245 (n + 1)

end A060245

/-! ## A060245.P14388360067081233189

`∩[A053782(n+1), A067126(n+1)]`
-/

namespace A060245.P14388360067081233189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060245.P14388360067081233189

namespace A060245

/-- `∩[A053782(n+1), A067126(n+1)]` -/
def P14388360067081233189.Spec : Prop :=
  ∀ n, (P14388360067081233189.a n : ℤ) = A060245 (n + 1)

end A060245

/-! ## A060245.P8060187536303135805

`∩[A053782(n+1), A083249(n+1)]`
-/

namespace A060245.P8060187536303135805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060245.P8060187536303135805

namespace A060245

/-- `∩[A053782(n+1), A083249(n+1)]` -/
def P8060187536303135805.Spec : Prop :=
  ∀ n, (P8060187536303135805.a n : ℤ) = A060245 (n + 1)

end A060245

/-! ## A060245.P7067306164144266671

`∩[A053782(n+1), A108719(n+1)]`
-/

namespace A060245.P7067306164144266671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060245.P7067306164144266671

namespace A060245

/-- `∩[A053782(n+1), A108719(n+1)]` -/
def P7067306164144266671.Spec : Prop :=
  ∀ n, (P7067306164144266671.a n : ℤ) = A060245 (n + 1)

end A060245

/-!
# A060246: Triangle whose rows are the degrees of the irreducible representations of the groups PSL(2,p) as p runs through the primes.

The programs for A060246, there is no canonical definition to state claims against.
-/

/-! ## A060246.P14193872112414377461

`A060247(∑[A333901(n)!])`
-/

namespace A060246.P14193872112414377461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A333901 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060247 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060246.P14193872112414377461

/-! ## A060246.P11972641821716535055

`A060247(A060240(A003891(n+2))+n)`
-/

namespace A060246.P11972641821716535055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060247 (A060240 (A003891 (n + 2)).toNat + (n : ℤ)).toNat

end

end A060246.P11972641821716535055

/-! ## A060246.P6865083134880812053

`or(A025458(A191526(n)), A060247(n+1))`
-/

namespace A060246.P6865083134880812053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025458 (A191526 n).toNat) (A060247 (n + 1))

end

end A060246.P6865083134880812053

/-! ## A060246.P12345760391400177429

`or(A060247(n+1), A105700(A033052(n)))`
-/

namespace A060246.P12345760391400177429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060247 (n + 1)) (A105700 (A033052 n).toNat)

end

end A060246.P12345760391400177429

/-!
# A060247: Triangle whose rows are the degrees of the irreducible representations of the groups PSL(2,q) as q runs through the primes and prime powers.

The programs for A060247, there is no canonical definition to state claims against.
-/

/-! ## A060247.P293042431124356198

`and(A060246(n+1), A251149(A288766(n)))`
-/

namespace A060247.P293042431124356198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060246 (n + 1)) (A251149 (A288766 n).toNat)

end

end A060247.P293042431124356198

/-! ## A060247.P12829147300997563473

`and(A060246(n+1), A060266(A060200(n+1)))`
-/

namespace A060247.P12829147300997563473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060246 (n + 1)) (A060266 (A060200 (n + 1)).toNat)

end

end A060247.P12829147300997563473

/-! ## A060247.P547185453027965737

`A060246(n+1)-A002487(A034529(A316304(n+1)))`
-/

namespace A060247.P547185453027965737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060246 (n + 1) - A002487 (A034529 (A316304 (n + 1)).toNat).toNat

end

end A060247.P547185453027965737

/-! ## A060247.P3666445447527072177

`A060246(A187829(n+1))`
-/

namespace A060247.P3666445447527072177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060246 (A187829 (n + 1)).toNat

end

end A060247.P3666445447527072177

/-! ## A060247.P15113355306458839483

`A001222(7^A060246(n+1))`
-/

namespace A060247.P15113355306458839483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A060246 (n + 1) : ℤ))).toNat

end

end A060247.P15113355306458839483

/-!
# A060248: Numbers that begin with the letter "d" in Portuguese.

The programs for A060248, there is no canonical definition to state claims against.
-/

/-! ## A060248.P4592090089323456027

`eq[4, A161377(n)]`
-/

namespace A060248.P4592090089323456027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161377 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060248.P4592090089323456027

/-!
# A060249: Size of the automorphism group of the symmetric group S_n.

The programs for A060249, there is no canonical definition to state claims against.
-/

/-! ## A060249.P15152504121831581060

`lcm(A060817(n+1), A060819(n+1))`
-/

namespace A060249.P15152504121831581060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060817 (n + 1)) (A060819 (n + 1))

end

end A060249.P15152504121831581060

/-! ## A060249.P12631617192801384002

`lcm(A000203(A008619(n)), A060817(n+1))`
-/

namespace A060249.P12631617192801384002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000203 (A008619 n).toNat) (A060817 (n + 1))

end

end A060249.P12631617192801384002

/-! ## A060249.P4242363811593693106

`A014963(A179865(n+1))*A060817(n+1)`
-/

namespace A060249.P4242363811593693106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A179865 (n + 1)).toNat * A060817 (n + 1)

end

end A060249.P4242363811593693106

/-! ## A060249.P7139349112389993713

`A014963(A001107(n+1))*A060817(n+1)`
-/

namespace A060249.P7139349112389993713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001107 (n + 1)).toNat * A060817 (n + 1)

end

end A060249.P7139349112389993713

/-! ## A060249.P5712642100080098041

`or(A060817(n+1), A213358(A224399(n+1)))`
-/

namespace A060249.P5712642100080098041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060817 (n + 1)) (A213358 (A224399 (n + 1)).toNat)

end

end A060249.P5712642100080098041

/-!
# A060251: a(n) = periodic part of decimal expansion of n/n-th prime (leading 0's moved to end).

The programs for A060251, there is no canonical definition to state claims against.
-/

/-! ## A060251.P9821192978676820588

`(n+1)*A060282(n+1)`
-/

namespace A060251.P9821192978676820588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A060282 (n + 1)

end

end A060251.P9821192978676820588

/-! ## A060251.P6472565363694992001

`(n+1)*A060284(A000040(n+1))`
-/

namespace A060251.P6472565363694992001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A060284 (A000040 (n + 1)).toNat

end

end A060251.P6472565363694992001

/-! ## A060251.P2631284710549647506

`(n+1)*A060284(A006005(n+1))`
-/

namespace A060251.P2631284710549647506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A060284 (A006005 (n + 1)).toNat

end

end A060251.P2631284710549647506

/-! ## A060251.P4960601606874410500

`(n+1)*A060284(record[A006530(n+2)])`
-/

namespace A060251.P4960601606874410500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A060284 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060251.P4960601606874410500

/-! ## A060251.P14920053497596167923

`(n+1)*A060284(record[A014963(n+2)])`
-/

namespace A060251.P14920053497596167923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A060284 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060251.P14920053497596167923

/-!
# A060253: Numbers n such that difference between n-th prime and n-th composite number is prime.

The programs for A060253, there is no canonical definition to state claims against.
-/

/-! ## A060253.P13915844164980498312

`A000720(A066277(n+1))`
-/

namespace A060253.P13915844164980498312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A066277 (n + 1)).toNat

end

end A060253.P13915844164980498312

/-! ## A060253.P8458274979373259711

`∑{d}[A066277(n+1), A066328(#)]`
-/

namespace A060253.P8458274979373259711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A066328 d

end

end A060253.P8458274979373259711

/-! ## A060253.P5984803052586616363

`A066328(A066277(n+1)%A066270(n+1))`
-/

namespace A060253.P5984803052586616363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (Int.tmod (A066277 (n + 1)) (A066270 (n + 1))).toNat

end

end A060253.P5984803052586616363

/-! ## A060253.P7497649479291331697

`A061395(2*A066277(n+1))`
-/

namespace A060253.P7497649479291331697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A066277 (n + 1)).toNat

end

end A060253.P7497649479291331697

/-! ## A060253.P14702823512251694964

`A036234(A066277(n+1)-1)`
-/

namespace A060253.P14702823512251694964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A066277 (n + 1) - 1).toNat

end

end A060253.P14702823512251694964

/-! ## A060253.P146436915794401254

`A230980(A066277(n+1)-1)+1`
-/

namespace A060253.P146436915794401254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A066277 (n + 1) - 1).toNat + 1

end

end A060253.P146436915794401254

/-! ## A060253.P5177750213501389677

`A066277(n+1)-A026233(A066277(n+1)-1)`
-/

namespace A060253.P5177750213501389677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066277 (n + 1) - A026233 (A066277 (n + 1) - 1).toNat

end

end A060253.P5177750213501389677

/-! ## A060253.P7698305216416419508

`A049084(2*A066277(n+1)-A066277(n+1))`
-/

namespace A060253.P7698305216416419508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (2 * A066277 (n + 1) - A066277 (n + 1)).toNat

end

end A060253.P7698305216416419508

/-! ## A060253.P10578157994780544190

`A055396(2*A066277(n+1)-A066277(n+1))`
-/

namespace A060253.P10578157994780544190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (2 * A066277 (n + 1) - A066277 (n + 1)).toNat

end

end A060253.P10578157994780544190

/-! ## A060253.P1886980811434153490

`A003963(2*A066277(n+1))`
-/

namespace A060253.P1886980811434153490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A066277 (n + 1)).toNat

end

end A060253.P1886980811434153490

/-!
# A060254: Primes which are the sum of two consecutive composite numbers.

The programs for A060254, the canonical program `A060254.P6574363649956652698` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060254 has offset 1).

The definition of A060254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060254.P8606092469422800095

`2*A096784(n+1)+1`
-/

namespace A060254.P8606092469422800095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096784 (n + 1) + 1

end

end A060254.P8606092469422800095

namespace A060254

/-- `2*A096784(n+1)+1` -/
def P8606092469422800095.Spec : Prop :=
  ∀ n, P8606092469422800095.a n = A060254 (n + 1)

end A060254

/-! ## A060254.P2287891758651355503

`A167915(n+2)`
-/

namespace A060254.P2287891758651355503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167915 (n + 2)

end

end A060254.P2287891758651355503

namespace A060254

/-- `A167915(n+2)` -/
def P2287891758651355503.Spec : Prop :=
  ∀ n, P2287891758651355503.a n = A060254 (n + 1)

end A060254

/-! ## A060254.P6574363649956652698

`A176902(n+2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A060254

/-- `A176902(n+2)` -/
def P6574363649956652698.Spec : Prop :=
  ∀ n, P6574363649956652698.a n = A060254 (n + 1)

theorem P6574363649956652698.correct : P6574363649956652698.Spec := by
  intro n
  simp only [A060254, Nat.add_sub_cancel]

end A060254

/-! ## A060254.P11015076022431765958

`∩[A034849(n+1), A059456(n+1)]`
-/

namespace A060254.P11015076022431765958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060254.P11015076022431765958

namespace A060254

/-- `∩[A034849(n+1), A059456(n+1)]` -/
def P11015076022431765958.Spec : Prop :=
  ∀ n, (P11015076022431765958.a n : ℤ) = A060254 (n + 1)

end A060254

/-! ## A060254.P3626703214422013066

`∩[A059456(n+2), A176897(n+2)]`
-/

namespace A060254.P3626703214422013066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176897 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060254.P3626703214422013066

namespace A060254

/-- `∩[A059456(n+2), A176897(n+2)]` -/
def P3626703214422013066.Spec : Prop :=
  ∀ n, (P3626703214422013066.a n : ℤ) = A060254 (n + 1)

end A060254

/-! ## A060254.P3723058947885139116

`A000040(A096677(n+1))`
-/

namespace A060254.P3723058947885139116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A096677 (n + 1)).toNat

end

end A060254.P3723058947885139116

namespace A060254

/-- `A000040(A096677(n+1))` -/
def P3723058947885139116.Spec : Prop :=
  ∀ n, P3723058947885139116.a n = A060254 (n + 1)

end A060254

/-! ## A060254.P13933060603840728132

`p?[A002808(n+2)+A002808(n+1)]`
-/

namespace A060254.P13933060603840728132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 2) + A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060254.P13933060603840728132

namespace A060254

/-- `p?[A002808(n+2)+A002808(n+1)]` -/
def P13933060603840728132.Spec : Prop :=
  ∀ n, P13933060603840728132.a n = A060254 (n + 1)

end A060254

/-! ## A060254.P5262110672199800397

`p?[A018252(n+2)+A018252(n+3)]`
-/

namespace A060254.P5262110672199800397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) + A018252 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060254.P5262110672199800397

namespace A060254

/-- `p?[A018252(n+2)+A018252(n+3)]` -/
def P5262110672199800397.Spec : Prop :=
  ∀ n, P5262110672199800397.a n = A060254 (n + 1)

end A060254

/-! ## A060254.P10668988333014778816

`∩[A059456(n+1), A063449(n+1)]`
-/

namespace A060254.P10668988333014778816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060254.P10668988333014778816

namespace A060254

/-- `∩[A059456(n+1), A063449(n+1)]` -/
def P10668988333014778816.Spec : Prop :=
  ∀ n, (P10668988333014778816.a n : ℤ) = A060254 (n + 1)

end A060254

/-! ## A060254.P2125341122775417833

`p?[2*A068780(n+1)+1]`
-/

namespace A060254.P2125341122775417833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A068780 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060254.P2125341122775417833

namespace A060254

/-- `p?[2*A068780(n+1)+1]` -/
def P2125341122775417833.Spec : Prop :=
  ∀ n, P2125341122775417833.a n = A060254 (n + 1)

end A060254

/-! ## A060254.P3569256040214842142

`p?[2*A005381(n+1)-1]`
-/

namespace A060254.P3569256040214842142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005381 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060254.P3569256040214842142

namespace A060254

/-- `p?[2*A005381(n+1)-1]` -/
def P3569256040214842142.Spec : Prop :=
  ∀ n, P3569256040214842142.a n = A060254 (n + 1)

end A060254

/-! ## A060254.P7423227106052734280

`p?[Δ[A002808(n+2)²]]`
-/

namespace A060254.P7423227106052734280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060254.P7423227106052734280

namespace A060254

/-- `p?[Δ[A002808(n+2)²]]` -/
def P7423227106052734280.Spec : Prop :=
  ∀ n, P7423227106052734280.a n = A060254 (n + 1)

end A060254

/-! ## A060254.P9628617681003695535

`p?[A163602(n+1)]`
-/

namespace A060254.P9628617681003695535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060254.P9628617681003695535

namespace A060254

/-- `p?[A163602(n+1)]` -/
def P9628617681003695535.Spec : Prop :=
  ∀ n, P9628617681003695535.a n = A060254 (n + 1)

end A060254

/-! ## A060254.P15587974672000735790

`p?[A166037(n+3)]`
-/

namespace A060254.P15587974672000735790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060254.P15587974672000735790

namespace A060254

/-- `p?[A166037(n+3)]` -/
def P15587974672000735790.Spec : Prop :=
  ∀ n, P15587974672000735790.a n = A060254 (n + 1)

end A060254

/-! ## A060254.P17313678234350913951

`p?[Δ[A062312(n+1)]]`
-/

namespace A060254.P17313678234350913951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062312 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060254.P17313678234350913951

namespace A060254

/-- `p?[Δ[A062312(n+1)]]` -/
def P17313678234350913951.Spec : Prop :=
  ∀ n, P17313678234350913951.a n = A060254 (n + 1)

end A060254

/-! ## A060254.P16326266742223427693

`p?[Δ[A161753(n+1)]]`
-/

namespace A060254.P16326266742223427693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161753 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060254.P16326266742223427693

namespace A060254

/-- `p?[Δ[A161753(n+1)]]` -/
def P16326266742223427693.Spec : Prop :=
  ∀ n, P16326266742223427693.a n = A060254 (n + 1)

end A060254

/-! ## A060254.P17558293377141913570

`p?[Δ[A018252(n+1)²]]`
-/

namespace A060254.P17558293377141913570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060254.P17558293377141913570

namespace A060254

/-- `p?[Δ[A018252(n+1)²]]` -/
def P17558293377141913570.Spec : Prop :=
  ∀ n, P17558293377141913570.a n = A060254 (n + 1)

end A060254

/-! ## A060254.P12973425751462576422

`p?[Δ[comp[A000040(n+1)]²]]`
-/

namespace A060254.P12973425751462576422
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060254.P12973425751462576422

namespace A060254

/-- `p?[Δ[comp[A000040(n+1)]²]]` -/
def P12973425751462576422.Spec : Prop :=
  ∀ n, P12973425751462576422.a n = A060254 (n + 1)

end A060254

/-! ## A060254.P16946966613729737373

`p?[Δ[comp[A006530(n+1)]²]]`
-/

namespace A060254.P16946966613729737373
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060254.P16946966613729737373

namespace A060254

/-- `p?[Δ[comp[A006530(n+1)]²]]` -/
def P16946966613729737373.Spec : Prop :=
  ∀ n, P16946966613729737373.a n = A060254 (n + 1)

end A060254

/-! ## A060254.P6535101386942914702

`p?[Δ[comp[A020639(n+1)]²]]`
-/

namespace A060254.P6535101386942914702
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060254.P6535101386942914702

namespace A060254

/-- `p?[Δ[comp[A020639(n+1)]²]]` -/
def P6535101386942914702.Spec : Prop :=
  ∀ n, P6535101386942914702.a n = A060254 (n + 1)

end A060254

/-!
# A060255: Smaller of twin primes {p, p+2} whose average p+1 = k*q is the least multiple of the n-th primorial number q such that k*q-1 and k*q+1 are twin primes.

The programs for A060255, there is no canonical definition to state claims against.
-/

/-! ## A060255.P10384845851633019200

`A002110(n+1)*A060256(n+1)-1`
-/

namespace A060255.P10384845851633019200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) * A060256 (n + 1) - 1

end

end A060255.P10384845851633019200

/-! ## A060255.P17956181561914407580

`∏[A000040(n+1)]*A060256(n+1)-1`
-/

namespace A060255.P17956181561914407580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A060256 (n + 1) - 1

end

end A060255.P17956181561914407580

/-! ## A060255.P16156812404802493819

`A008683(A180450(n+1))+A002110(n+1)*A060256(n+1)`
-/

namespace A060255.P16156812404802493819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A180450 (n + 1)).toNat + A002110 (n + 1) * A060256 (n + 1)

end

end A060255.P16156812404802493819

/-!
# A060256: Smallest multiple a(n) of n-th primorial q(n) such that a(n)*q(n)-1 and a(n)*q(n)+1 are a pair of twin primes.

The programs for A060256, there is no canonical definition to state claims against.
-/

/-! ## A060256.P16242694964112116039

`ceil(A060255(n+1)/Δ[A143293(n)])`
-/

namespace A060256.P16242694964112116039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A060255 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌉

end

end A060256.P16242694964112116039

/-! ## A060256.P9603213948673631110

`round(A060255(n+1)/A002110(n+1))`
-/

namespace A060256.P9603213948673631110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A060255 (n + 1) : ℚ) / (A002110 (n + 1) : ℚ))

end

end A060256.P9603213948673631110

/-! ## A060256.P6632935574074988510

`A384545(n+1)+A186685(A370493(n+1))`
-/

namespace A060256.P6632935574074988510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384545 (n + 1) + A186685 (A370493 (n + 1)).toNat

end

end A060256.P6632935574074988510

/-! ## A060256.P15998235296396720917

`A384545(n+1)+A161435(A001157(3*n+4))`
-/

namespace A060256.P15998235296396720917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384545 (n + 1) + A161435 (A001157 (3 * n + 4)).toNat

end

end A060256.P15998235296396720917

/-! ## A060256.P10303193701370871627

`A384545(n+1)+A359514(A153508(n+1))`
-/

namespace A060256.P10303193701370871627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384545 (n + 1) + A359514 (A153508 (n + 1)).toNat

end

end A060256.P10303193701370871627

/-!
# A060257: Numbers k such that 1/prime(k) has period prime(k) - 1.

The programs for A060257, there is no canonical definition to state claims against.
-/

/-! ## A060257.P9854085626306109270

`A000720(A001913(n+1))`
-/

namespace A060257.P9854085626306109270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001913 (n + 1)).toNat

end

end A060257.P9854085626306109270

/-! ## A060257.P13029480904874680813

`A382963(n)+a(n-1)` with `a(0)=4`
-/

namespace A060257.P13029480904874680813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A382963 n + a (n - 1)

end

end A060257.P13029480904874680813

/-! ## A060257.P3776846994517577507

`eq[1, A060370(n+2)]+2`
-/

namespace A060257.P3776846994517577507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060370 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A060257.P3776846994517577507

/-! ## A060257.P11037240624638070731

`eq[1, A006556(n+3)]+3`
-/

namespace A060257.P11037240624638070731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006556 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A060257.P11037240624638070731

/-! ## A060257.P5734044894030706661

`lt[A158611(n+2), A048595(n+2)]+2`
-/

namespace A060257.P5734044894030706661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048595 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A060257.P5734044894030706661

/-! ## A060257.P13998291381758702060

`lt[A000961(n+1), A048595(A028310(n))]`
-/

namespace A060257.P13998291381758702060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048595 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A060257.P13998291381758702060

/-! ## A060257.P15705992279678823976

`A000720(A006883(n+2))`
-/

namespace A060257.P15705992279678823976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006883 (n + 2)).toNat

end

end A060257.P15705992279678823976

/-! ## A060257.P12253670646991907708

`lt[eq[1, A001222(n+1)], A002371(n+1)+1]+1`
-/

namespace A060257.P12253670646991907708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002371 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f4 j) n + 1

end

end A060257.P12253670646991907708

/-! ## A060257.P5241122068319801070

`eq[2, A023142(A008578(n+1))]`
-/

namespace A060257.P5241122068319801070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023142 (A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A060257.P5241122068319801070

/-! ## A060257.P9689904512999288347

`A049084(A001913(2*n+1-n))`
-/

namespace A060257.P9689904512999288347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A001913 (2 * n + 1 - n)).toNat

end

end A060257.P9689904512999288347

/-! ## A060257.P17904649324126514962

`lt[A229511(n), A002371(n+1)]+1`
-/

namespace A060257.P17904649324126514962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229511 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002371 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A060257.P17904649324126514962

/-! ## A060257.P3524350716717869327

`lt[A229511(n+1), A048595(n+2)]+2`
-/

namespace A060257.P3524350716717869327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048595 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A060257.P3524350716717869327

/-!
# A060258: Numbers k such that 1/prime(k) has period prime(k) - 1 and 1/prime(k+1) has period prime(k+1) - 1.

The programs for A060258, there is no canonical definition to state claims against.
-/

/-! ## A060258.P13979427854756171720

`∩[A060257(n+1)-1, A060257(n+1)]`
-/

namespace A060258.P13979427854756171720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060257 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060258.P13979427854756171720

/-! ## A060258.P13300330264717060144

`record[A060257(n+2)/Δ[A060257(n+2)]]`
-/

namespace A060258.P13300330264717060144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060257 (n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060257 (n + 2) : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060258.P13300330264717060144

/-! ## A060258.P11246294158180257504

`A060257(eq[1, A060257(n+2)-A060257(n+1)]+1)`
-/

namespace A060258.P11246294158180257504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060257 (n + 2) - A060257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A060258.P11246294158180257504

/-! ## A060258.P12634255918845443748

`A060257(eq[1, A060257(n+2)%A060257(n+1)]+1)`
-/

namespace A060258.P12634255918845443748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060257 (n + 2)) (A060257 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060257 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A060258.P12634255918845443748

/-! ## A060258.P5058017077179818461

`∩[A060257(n+1), A023443(A060257(n+1))]`
-/

namespace A060258.P5058017077179818461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A060257 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060258.P5058017077179818461

/-!
# A060259: Denoting 4 consecutive primes by p, q, r and s, these are the values of q such that q and r have 10 as a primitive root, but p and s do not.

The programs for A060259, there is no canonical definition to state claims against.
-/

/-! ## A060259.P9488627940376448732

`A107685(A037001(n+2))`
-/

namespace A060259.P9488627940376448732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107685 (A037001 (n + 2)).toNat

end

end A060259.P9488627940376448732

/-!
# A060260: Numbers k such that prime(k), prime(k+1) and prime(k+2) have 10 as a primitive root, but prime(k-1) and prime(k+3) do not.

The programs for A060260, there is no canonical definition to state claims against.
-/

/-! ## A060260.P7357043306810545546

`A000720(A060261(n+1))`
-/

namespace A060260.P7357043306810545546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A060261 (n + 1)).toNat

end

end A060260.P7357043306810545546

/-! ## A060260.P11686435683264686772

`A061395(or(1, A060261(n+1)))`
-/

namespace A060260.P11686435683264686772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A060261 (n + 1))).toNat

end

end A060260.P11686435683264686772

/-! ## A060260.P572332435184458213

`∑{d}[A060261(n+1), A061395(#)]`
-/

namespace A060260.P572332435184458213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A060260.P572332435184458213

/-! ## A060260.P4729283599328520356

`A061395(A060261(n+1)%A069106(n+1))`
-/

namespace A060260.P4729283599328520356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A060261 (n + 1)) (A069106 (n + 1))).toNat

end

end A060260.P4729283599328520356

/-! ## A060260.P11112343709247266196

`A061395(lcm(A008836(n+1), A060261(n+1)))`
-/

namespace A060260.P11112343709247266196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm (A008836 (n + 1)) (A060261 (n + 1)))

end

end A060260.P11112343709247266196

/-! ## A060260.P8734076169693114197

`A061395(2*A060261(n+1))`
-/

namespace A060260.P8734076169693114197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A060261 (n + 1)).toNat

end

end A060260.P8734076169693114197

/-!
# A060261: Denoting 5 consecutive primes by p, q, r, s and t, these are the values of q such that q, r and s have 10 as a primitive root, but p and t do not.

The programs for A060261, there is no canonical definition to state claims against.
-/

/-! ## A060261.P3409624168197471274

`A002371(A060260(n+1))+1`
-/

namespace A060261.P3409624168197471274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002371 (A060260 (n + 1)).toNat + 1

end

end A060261.P3409624168197471274

/-! ## A060261.P7487953951965616628

`A000040(A060260(n+1))`
-/

namespace A060261.P7487953951965616628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A060260 (n + 1)).toNat

end

end A060261.P7487953951965616628

/-! ## A060261.P1576888188600750058

`A008578(A060260(n+1)+1)`
-/

namespace A060261.P1576888188600750058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A060260 (n + 1) + 1).toNat

end

end A060261.P1576888188600750058

/-! ## A060261.P17656560663784747643

`A045319(A060260(n+1)-1)`
-/

namespace A060261.P17656560663784747643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A060260 (n + 1) - 1).toNat

end

end A060261.P17656560663784747643

/-! ## A060261.P13582068646385713799

`A065091(A060260(n+1)-1)`
-/

namespace A060261.P13582068646385713799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A060260 (n + 1) - 1).toNat

end

end A060261.P13582068646385713799

/-! ## A060261.P1022940002906976233

`A158611(A060260(n+1)+2)`
-/

namespace A060261.P1022940002906976233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A060260 (n + 1) + 2).toNat

end

end A060261.P1022940002906976233

/-! ## A060261.P8353144847736357415

`A006093(A060260(n+1))+(A000041(n)%2)!`
-/

namespace A060261.P8353144847736357415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A060260 (n + 1)).toNat + (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ)

end

end A060261.P8353144847736357415

/-! ## A060261.P17170926254448542784

`A000038(n+1)+A006093(A060260(n+1))+1`
-/

namespace A060261.P17170926254448542784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + (A006093 (A060260 (n + 1)).toNat + 1)

end

end A060261.P17170926254448542784

/-! ## A060261.P17845250251594971891

`(A006093(A060260(n+1))+1)%A016793(n+1)`
-/

namespace A060261.P17845250251594971891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (A060260 (n + 1)).toNat + 1) (A016793 (n + 1))

end

end A060261.P17845250251594971891

/-! ## A060261.P1873781491752885172

`A006093(A060260(n+1))+A000041(gcd(n, n+1))`
-/

namespace A060261.P1873781491752885172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A060260 (n + 1)).toNat + A000041 (Nat.gcd n (n + 1))

end

end A060261.P1873781491752885172

/-! ## A060261.P2426262668598944094

`A006093(A060260(n+1))+log2(A020639(2*(n+1)))`
-/

namespace A060261.P2426262668598944094
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A006093 (A060260 (n + 1)).toNat : ℝ) + Real.logb 2 (A020639 (2 * (n + 1)) : ℝ)

end

end A060261.P2426262668598944094

/-! ## A060261.P14366025490723487965

`char[A345769(n+1)]+A006093(A060260(n+1))+1`
-/

namespace A060261.P14366025490723487965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345769 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A006093 (A060260 (n + 1)).toNat + 1)

end

end A060261.P14366025490723487965

/-! ## A060261.P17359399100641930867

`A006093(A060260(n+1))+A005134(A093998(n))`
-/

namespace A060261.P17359399100641930867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A060260 (n + 1)).toNat + A005134 (A093998 n).toNat

end

end A060261.P17359399100641930867

/-! ## A060261.P4236508488312458385

`A006530(A006093(A060260(n+1))+1)`
-/

namespace A060261.P4236508488312458385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006093 (A060260 (n + 1)).toNat + 1).toNat

end

end A060261.P4236508488312458385

/-! ## A060261.P17710982673326634823

`A334348(A184218(n+1))+A006093(A060260(n+1))+1`
-/

namespace A060261.P17710982673326634823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334348 (A184218 (n + 1)).toNat + (A006093 (A060260 (n + 1)).toNat + 1)

end

end A060261.P17710982673326634823

/-! ## A060261.P12305220366984702817

`A006093(A060260(n+1))-A008683(A048988(n+1))`
-/

namespace A060261.P12305220366984702817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A060260 (n + 1)).toNat - A008683 (A048988 (n + 1)).toNat

end

end A060261.P12305220366984702817

/-!
# A060263: a(n) = smallest prime q such that precisely n successive primes p starting at q have reciprocals with period p-1 and prevprime(q) is not such a prime.

The programs for A060263, there is no canonical definition to state claims against.
-/

/-! ## A060263.P7464928938578311504

`A000040(A060262(n+2))`
-/

namespace A060263.P7464928938578311504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A060262 (n + 2)).toNat

end

end A060263.P7464928938578311504

/-! ## A060263.P10997541923996955437

`A045344(A060262(n+2)-1)`
-/

namespace A060263.P10997541923996955437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A060262 (n + 2) - 1).toNat

end

end A060263.P10997541923996955437

/-!
# A060264: First prime after 2n.

The programs for A060264, the canonical program `A060264.P4854329161308632623` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060264 has offset 0).

The definition of A060264 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A060264.P4854329161308632623

`A151800(2*n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A060264

/-- `A151800(2*n)` -/
def P4854329161308632623.Spec : Prop :=
  ∀ n, P4854329161308632623.a n = A060264 n

theorem P4854329161308632623.correct : P4854329161308632623.Spec := by
  intro n
  simp only [A060264]

end A060264

/-! ## A060264.P15648879782971785495

`and(-1, A151800(gcd(n, C(2, n))+n))`
-/

namespace A060264.P15648879782971785495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A151800 (Nat.gcd n (Nat.choose 2 n) + n))

end

end A060264.P15648879782971785495

namespace A060264

/-- `and(-1, A151800(gcd(n, C(2, n))+n))` -/
def P15648879782971785495.Spec : Prop :=
  ∀ n, P15648879782971785495.a n = A060264 n

end A060264

/-! ## A060264.P12362358163741854786

`A000027(A151800(Δ[n²]-1))`
-/

namespace A060264.P12362358163741854786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A151800 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat).toNat

end

end A060264.P12362358163741854786

namespace A060264

/-- `A000027(A151800(Δ[n²]-1))` -/
def P12362358163741854786.Spec : Prop :=
  ∀ n, P12362358163741854786.a n = A060264 n

end A060264

/-! ## A060264.P10920713298340955059

`A000040(n+1-A224710(n+2))`
-/

namespace A060264.P10920713298340955059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n + 1 : ℤ) - A224710 (n + 2)).toNat

end

end A060264.P10920713298340955059

namespace A060264

/-- `A000040(n+1-A224710(n+2))` -/
def P10920713298340955059.Spec : Prop :=
  ∀ n, P10920713298340955059.a n = A060264 n

end A060264

/-! ## A060264.P17463314048141427691

`A007918(2*n)+char[1]`
-/

namespace A060264.P17463314048141427691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (2 * n) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A060264.P17463314048141427691

namespace A060264

/-- `A007918(2*n)+char[1]` -/
def P17463314048141427691.Spec : Prop :=
  ∀ n, P17463314048141427691.a n = A060264 n

end A060264

/-! ## A060264.P149769793800446505

`A007918(A014601(n))`
-/

namespace A060264.P149769793800446505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A014601 n).toNat

end

end A060264.P149769793800446505

namespace A060264

/-- `A007918(A014601(n))` -/
def P149769793800446505.Spec : Prop :=
  ∀ n, P149769793800446505.a n = A060264 n

end A060264

/-! ## A060264.P11801165367817517615

`A007918(A029739(n+1))`
-/

namespace A060264.P11801165367817517615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A029739 (n + 1)).toNat

end

end A060264.P11801165367817517615

namespace A060264

/-- `A007918(A029739(n+1))` -/
def P11801165367817517615.Spec : Prop :=
  ∀ n, P11801165367817517615.a n = A060264 n

end A060264

/-! ## A060264.P12848367018899030662

`A007918(A047231(n+1))`
-/

namespace A060264.P12848367018899030662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A047231 (n + 1)).toNat

end

end A060264.P12848367018899030662

namespace A060264

/-- `A007918(A047231(n+1))` -/
def P12848367018899030662.Spec : Prop :=
  ∀ n, P12848367018899030662.a n = A060264 n

end A060264

/-! ## A060264.P1547023789828398968

`A007918(A047414(n+1))`
-/

namespace A060264.P1547023789828398968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A047414 (n + 1)).toNat

end

end A060264.P1547023789828398968

namespace A060264

/-- `A007918(A047414(n+1))` -/
def P1547023789828398968.Spec : Prop :=
  ∀ n, P1547023789828398968.a n = A060264 n

end A060264

/-! ## A060264.P17781447033142321493

`A007918(A047444(n+1))`
-/

namespace A060264.P17781447033142321493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A047444 (n + 1)).toNat

end

end A060264.P17781447033142321493

namespace A060264

/-- `A007918(A047444(n+1))` -/
def P17781447033142321493.Spec : Prop :=
  ∀ n, P17781447033142321493.a n = A060264 n

end A060264

/-! ## A060264.P8109059884408591871

`A007918(A047485(n+1))`
-/

namespace A060264.P8109059884408591871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A047485 (n + 1)).toNat

end

end A060264.P8109059884408591871

namespace A060264

/-- `A007918(A047485(n+1))` -/
def P8109059884408591871.Spec : Prop :=
  ∀ n, P8109059884408591871.a n = A060264 n

end A060264

/-! ## A060264.P9777823568860364719

`A007918(A054684(n+1))`
-/

namespace A060264.P9777823568860364719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A054684 (n + 1)).toNat

end

end A060264.P9777823568860364719

namespace A060264

/-- `A007918(A054684(n+1))` -/
def P9777823568860364719.Spec : Prop :=
  ∀ n, P9777823568860364719.a n = A060264 n

end A060264

/-! ## A060264.P5056594419240074669

`A007918(A004278(n+2))`
-/

namespace A060264.P5056594419240074669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A004278 (n + 2)).toNat

end

end A060264.P5056594419240074669

namespace A060264

/-- `A007918(A004278(n+2))` -/
def P5056594419240074669.Spec : Prop :=
  ∀ n, P5056594419240074669.a n = A060264 n

end A060264

/-! ## A060264.P16091120230542855568

`A007918(A058992(n+2))`
-/

namespace A060264.P16091120230542855568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A058992 (n + 2)).toNat

end

end A060264.P16091120230542855568

namespace A060264

/-- `A007918(A058992(n+2))` -/
def P16091120230542855568.Spec : Prop :=
  ∀ n, P16091120230542855568.a n = A060264 n

end A060264

/-! ## A060264.P11262730438224163927

`A007918(Δ[n²])`
-/

namespace A060264.P11262730438224163927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A060264.P11262730438224163927

namespace A060264

/-- `A007918(Δ[n²])` -/
def P11262730438224163927.Spec : Prop :=
  ∀ n, P11262730438224163927.a n = A060264 n

end A060264

/-! ## A060264.P673419629324836880

`sqrt(A069549(2*n+1))`
-/

namespace A060264.P673419629324836880
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A069549 (2 * n + 1) : ℝ)

end

end A060264.P673419629324836880

namespace A060264

/-- `sqrt(A069549(2*n+1))` -/
def P673419629324836880.Spec : Prop :=
  ∀ n, P673419629324836880.a n = (A060264 n : ℝ)

end A060264

/-! ## A060264.P11783687417089866391

`A013632(2*n)+2*n`
-/

namespace A060264.P11783687417089866391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (2 * n) + (2 * n : ℤ)

end

end A060264.P11783687417089866391

namespace A060264

/-- `A013632(2*n)+2*n` -/
def P11783687417089866391.Spec : Prop :=
  ∀ n, P11783687417089866391.a n = A060264 n

end A060264

/-!
# A060265: Largest prime less than 2n.

The programs for A060265, the canonical program `A060265.P16861797515286908946` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060265 has offset 2).

The definition of A060265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060265.P9470967359991943160

`A007917(2*(n+2))`
-/

namespace A060265.P9470967359991943160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (2 * (n + 2))

end

end A060265.P9470967359991943160

namespace A060265

/-- `A007917(2*(n+2))` -/
def P9470967359991943160.Spec : Prop :=
  ∀ n, P9470967359991943160.a n = A060265 (n + 2)

end A060265

/-! ## A060265.P11026522165786565895

`A088631(n+2)+2+n`
-/

namespace A060265.P11026522165786565895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088631 (n + 2) + 2 + (n : ℤ)

end

end A060265.P11026522165786565895

namespace A060265

/-- `A088631(n+2)+2+n` -/
def P11026522165786565895.Spec : Prop :=
  ∀ n, P11026522165786565895.a n = A060265 (n + 2)

theorem P11026522165786565895.correct : P11026522165786565895.Spec := by
  intro n
  simp only [A060265, Nat.add_sub_cancel, A060265.P11026522165786565895.a, A060265.P16861797515286908946.a, A049653, A049653.P2986559009846252833.a, A088631, A088631.P7843051689605076685.a, A049711, A049711.P4440062402042869045.a, A064722, A064722.P17255395012520951887.a, A175851, A175851.P13592010490707745070.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060265

/-! ## A060265.P16861797515286908946

`2*(n+2)-A049653(n+2)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A060265

/-- `2*(n+2)-A049653(n+2)` -/
def P16861797515286908946.Spec : Prop :=
  ∀ n, P16861797515286908946.a n = A060265 (n + 2)

theorem P16861797515286908946.correct : P16861797515286908946.Spec := by
  intro n
  simp only [A060265, Nat.add_sub_cancel]

end A060265

/-! ## A060265.P11346978918795915463

`2*(n+3)-A049613(n+3)`
-/

namespace A060265.P11346978918795915463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 3) : ℤ) - A049613 (n + 3)

end

end A060265.P11346978918795915463

namespace A060265

/-- `2*(n+3)-A049613(n+3)` -/
def P11346978918795915463.Spec : Prop :=
  ∀ n, P11346978918795915463.a n = A060265 (n + 2)

theorem P11346978918795915463.correct : P11346978918795915463.Spec := by
  intro n
  simp only [A060265, Nat.add_sub_cancel, A060265.P11346978918795915463.a, A060265.P16861797515286908946.a, A049613, A049613.P6165397218719363825.a, A049653, A049653.P2986559009846252833.a, A049711, A049711.P4440062402042869045.a, A064722, A064722.P17255395012520951887.a, A175851, A175851.P13592010490707745070.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060265

/-! ## A060265.P9643046736432514314

`A000040(A099801(n+1))`
-/

namespace A060265.P9643046736432514314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A099801 (n + 1)).toNat

end

end A060265.P9643046736432514314

namespace A060265

/-- `A000040(A099801(n+1))` -/
def P9643046736432514314.Spec : Prop :=
  ∀ n, P9643046736432514314.a n = A060265 (n + 2)

end A060265

/-! ## A060265.P386100591012049301

`A065091(A308754(n)+1)`
-/

namespace A060265.P386100591012049301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A308754 n + 1).toNat

end

end A060265.P386100591012049301

namespace A060265

/-- `A065091(A308754(n)+1)` -/
def P386100591012049301.Spec : Prop :=
  ∀ n, P386100591012049301.a n = A060265 (n + 2)

end A060265

/-! ## A060265.P16262112178044007351

`A000040(A308754(n)+2)`
-/

namespace A060265.P16262112178044007351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A308754 n + 2).toNat

end

end A060265.P16262112178044007351

namespace A060265

/-- `A000040(A308754(n)+2)` -/
def P16262112178044007351.Spec : Prop :=
  ∀ n, P16262112178044007351.a n = A060265 (n + 2)

end A060265

/-! ## A060265.P5801156027453148248

`A008578(A099801(n+1)+1)`
-/

namespace A060265.P5801156027453148248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A099801 (n + 1) + 1).toNat

end

end A060265.P5801156027453148248

namespace A060265

/-- `A008578(A099801(n+1)+1)` -/
def P5801156027453148248.Spec : Prop :=
  ∀ n, P5801156027453148248.a n = A060265 (n + 2)

end A060265

/-! ## A060265.P15141629037562613741

`A000040(A000720(2*(n+2)))`
-/

namespace A060265.P15141629037562613741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (2 * (n + 2))).toNat

end

end A060265.P15141629037562613741

namespace A060265

/-- `A000040(A000720(2*(n+2)))` -/
def P15141629037562613741.Spec : Prop :=
  ∀ n, P15141629037562613741.a n = A060265 (n + 2)

end A060265

/-! ## A060265.P6275335499661124962

`A060308(A101264(n+1)+n+1)`
-/

namespace A060265.P6275335499661124962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A101264 (n + 1) + (n + 1 : ℤ)).toNat

end

end A060265.P6275335499661124962

namespace A060265

/-- `A060308(A101264(n+1)+n+1)` -/
def P6275335499661124962.Spec : Prop :=
  ∀ n, P6275335499661124962.a n = A060265 (n + 2)

end A060265

/-! ## A060265.P804530094244182804

`A060264(n+2-A049847(n+2))`
-/

namespace A060265.P804530094244182804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 ((n + 2 : ℤ) - A049847 (n + 2)).toNat

end

end A060265.P804530094244182804

namespace A060265

/-- `A060264(n+2-A049847(n+2))` -/
def P804530094244182804.Spec : Prop :=
  ∀ n, P804530094244182804.a n = A060265 (n + 2)

end A060265

/-! ## A060265.P7663509054061799887

`A060308(n+2)`
-/

namespace A060265.P7663509054061799887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (n + 2)

end

end A060265.P7663509054061799887

namespace A060265

/-- `A060308(n+2)` -/
def P7663509054061799887.Spec : Prop :=
  ∀ n, P7663509054061799887.a n = A060265 (n + 2)

end A060265

/-! ## A060265.P4917799175709529807

`A000040(A099802(n+2))`
-/

namespace A060265.P4917799175709529807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A099802 (n + 2)).toNat

end

end A060265.P4917799175709529807

namespace A060265

/-- `A000040(A099802(n+2))` -/
def P4917799175709529807.Spec : Prop :=
  ∀ n, P4917799175709529807.a n = A060265 (n + 2)

end A060265

/-! ## A060265.P10156279382233418619

`A008578(A099802(n+2)+1)`
-/

namespace A060265.P10156279382233418619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A099802 (n + 2) + 1).toNat

end

end A060265.P10156279382233418619

namespace A060265

/-- `A008578(A099802(n+2)+1)` -/
def P10156279382233418619.Spec : Prop :=
  ∀ n, P10156279382233418619.a n = A060265 (n + 2)

end A060265

/-! ## A060265.P7943044207793634114

`A065091(A099802(n+2)-1)`
-/

namespace A060265.P7943044207793634114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A099802 (n + 2) - 1).toNat

end

end A060265.P7943044207793634114

namespace A060265

/-- `A065091(A099802(n+2)-1)` -/
def P7943044207793634114.Spec : Prop :=
  ∀ n, P7943044207793634114.a n = A060265 (n + 2)

end A060265

/-! ## A060265.P8609492567020971552

`A000040(A108954(n+2)+A000720(n+2))`
-/

namespace A060265.P8609492567020971552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A108954 (n + 2) + A000720 (n + 2)).toNat

end

end A060265.P8609492567020971552

namespace A060265

/-- `A000040(A108954(n+2)+A000720(n+2))` -/
def P8609492567020971552.Spec : Prop :=
  ∀ n, P8609492567020971552.a n = A060265 (n + 2)

end A060265

/-! ## A060265.P2219115587182706324

`A000040(∑[A090406(2*n+1)])`
-/

namespace A060265.P2219115587182706324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090406 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A060265.P2219115587182706324

namespace A060265

/-- `A000040(∑[A090406(2*n+1)])` -/
def P2219115587182706324.Spec : Prop :=
  ∀ n, P2219115587182706324.a n = A060265 (n + 2)

end A060265

/-! ## A060265.P4056563656449975735

`A335285(2*n+3)`
-/

namespace A060265.P4056563656449975735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335285 (2 * n + 3)

end

end A060265.P4056563656449975735

namespace A060265

/-- `A335285(2*n+3)` -/
def P4056563656449975735.Spec : Prop :=
  ∀ n, P4056563656449975735.a n = A060265 (n + 2)

end A060265

/-! ## A060265.P9078123019143574524

`A070320(2*n+3)+1`
-/

namespace A060265.P9078123019143574524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070320 (2 * n + 3) + 1

end

end A060265.P9078123019143574524

namespace A060265

/-- `A070320(2*n+3)+1` -/
def P9078123019143574524.Spec : Prop :=
  ∀ n, P9078123019143574524.a n = A060265 (n + 2)

end A060265

/-!
# A060266: Difference between 2n and the following prime.

The programs for A060266, the canonical program `A060266.P13024036352084086722` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060266 has offset 1).

The definition of A060266 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060266.P13024036352084086722

`A151800(2*(n+1))-2*(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A060266

/-- `A151800(2*(n+1))-2*(n+1)` -/
def P13024036352084086722.Spec : Prop :=
  ∀ n, P13024036352084086722.a n = A060266 (n + 1)

theorem P13024036352084086722.correct : P13024036352084086722.Spec := by
  intro n
  simp only [A060266, Nat.add_sub_cancel]

end A060266

/-! ## A060266.P15508208446117224565

`A151800(Δ[n²]+1)%(2*(n+1))`
-/

namespace A060266.P15508208446117224565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151800 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat) (2 * (n + 1) : ℤ)

end

end A060266.P15508208446117224565

namespace A060266

/-- `A151800(Δ[n²]+1)%(2*(n+1))` -/
def P15508208446117224565.Spec : Prop :=
  ∀ n, P15508208446117224565.a n = A060266 (n + 1)

end A060266

/-! ## A060266.P9566794200790699922

`A175851(A119257(2*(n+1))-1)`
-/

namespace A060266.P9566794200790699922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (A119257 (2 * (n + 1)) - 1).toNat

end

end A060266.P9566794200790699922

namespace A060266

/-- `A175851(A119257(2*(n+1))-1)` -/
def P9566794200790699922.Spec : Prop :=
  ∀ n, P9566794200790699922.a n = A060266 (n + 1)

end A060266

/-! ## A060266.P13367375159783584629

`A151800(A004277(n+1))-2-n-n`
-/

namespace A060266.P13367375159783584629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A004277 (n + 1)).toNat - 2 - (n : ℤ) - (n : ℤ)

end

end A060266.P13367375159783584629

namespace A060266

/-- `A151800(A004277(n+1))-2-n-n` -/
def P13367375159783584629.Spec : Prop :=
  ∀ n, P13367375159783584629.a n = A060266 (n + 1)

end A060266

/-! ## A060266.P2392212867031817770

`A060264(n+1)-2*(n+1)`
-/

namespace A060266.P2392212867031817770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (n + 1) - (2 * (n + 1) : ℤ)

end

end A060266.P2392212867031817770

namespace A060266

/-- `A060264(n+1)-2*(n+1)` -/
def P2392212867031817770.Spec : Prop :=
  ∀ n, P2392212867031817770.a n = A060266 (n + 1)

end A060266

/-! ## A060266.P16451751309313355007

`A020483(n+1)+A060264(n+1)-A020484(n+1)`
-/

namespace A060266.P16451751309313355007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (n + 1) + (A060264 (n + 1) - A020484 (n + 1))

end

end A060266.P16451751309313355007

namespace A060266

/-- `A020483(n+1)+A060264(n+1)-A020484(n+1)` -/
def P16451751309313355007.Spec : Prop :=
  ∀ n, P16451751309313355007.a n = A060266 (n + 1)

end A060266

/-! ## A060266.P13174763601215524911

`A054906(n+1)+A060264(n+1)-A020484(n+1)`
-/

namespace A060266.P13174763601215524911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054906 (n + 1) + (A060264 (n + 1) - A020484 (n + 1))

end

end A060266.P13174763601215524911

namespace A060266

/-- `A054906(n+1)+A060264(n+1)-A020484(n+1)` -/
def P13174763601215524911.Spec : Prop :=
  ∀ n, P13174763601215524911.a n = A060266 (n + 1)

end A060266

/-! ## A060266.P1080915463911586745

`A053542(2*n+1-A000720(2*n+1))`
-/

namespace A060266.P1080915463911586745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053542 ((2 * n + 1 : ℤ) - A000720 (2 * n + 1)).toNat

end

end A060266.P1080915463911586745

namespace A060266

/-- `A053542(2*n+1-A000720(2*n+1))` -/
def P1080915463911586745.Spec : Prop :=
  ∀ n, P1080915463911586745.a n = A060266 (n + 1)

end A060266

/-! ## A060266.P12929287313544917610

`A071960(2*(n+1))+1`
-/

namespace A060266.P12929287313544917610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071960 (2 * (n + 1)) + 1

end

end A060266.P12929287313544917610

namespace A060266

/-- `A071960(2*(n+1))+1` -/
def P12929287313544917610.Spec : Prop :=
  ∀ n, P12929287313544917610.a n = A060266 (n + 1)

end A060266

/-! ## A060266.P6317341439250268577

`A266620(2*(n+1))-2*(n+1)`
-/

namespace A060266.P6317341439250268577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266620 (2 * (n + 1)) - (2 * (n + 1) : ℤ)

end

end A060266.P6317341439250268577

namespace A060266

/-- `A266620(2*(n+1))-2*(n+1)` -/
def P6317341439250268577.Spec : Prop :=
  ∀ n, P6317341439250268577.a n = A060266 (n + 1)

end A060266

/-! ## A060266.P4429310578362546561

`A007920(A103517(n))`
-/

namespace A060266.P4429310578362546561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A103517 n).toNat

end

end A060266.P4429310578362546561

namespace A060266

/-- `A007920(A103517(n))` -/
def P4429310578362546561.Spec : Prop :=
  ∀ n, P4429310578362546561.a n = A060266 (n + 1)

end A060266

/-! ## A060266.P999090517304219690

`A007920(A361871(n+1))`
-/

namespace A060266.P999090517304219690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A361871 (n + 1)).toNat

end

end A060266.P999090517304219690

namespace A060266

/-- `A007920(A361871(n+1))` -/
def P999090517304219690.Spec : Prop :=
  ∀ n, P999090517304219690.a n = A060266 (n + 1)

end A060266

/-! ## A060266.P11766676817694359701

`filter[A007920(n), A000035(#)]`
-/

namespace A060266.P11766676817694359701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A060266.P11766676817694359701

namespace A060266

/-- `filter[A007920(n), A000035(#)]` -/
def P11766676817694359701.Spec : Prop :=
  ∀ n, P11766676817694359701.a n = A060266 (n + 1)

end A060266

/-! ## A060266.P13715385501612129857

`A007920(2*(A028310(n)+1))`
-/

namespace A060266.P13715385501612129857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (2 * (A028310 n + 1)).toNat

end

end A060266.P13715385501612129857

namespace A060266

/-- `A007920(2*(A028310(n)+1))` -/
def P13715385501612129857.Spec : Prop :=
  ∀ n, P13715385501612129857.a n = A060266 (n + 1)

end A060266

/-! ## A060266.P5556666324882104441

`A109613(A007920(2*(n+1)))`
-/

namespace A060266.P5556666324882104441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A007920 (2 * (n + 1))).toNat

end

end A060266.P5556666324882104441

namespace A060266

/-- `A109613(A007920(2*(n+1)))` -/
def P5556666324882104441.Spec : Prop :=
  ∀ n, P5556666324882104441.a n = A060266 (n + 1)

end A060266

/-! ## A060266.P14836957410549012157

`A007920(A179278(2*(n+1)))`
-/

namespace A060266.P14836957410549012157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A179278 (2 * (n + 1))).toNat

end

end A060266.P14836957410549012157

namespace A060266

/-- `A007920(A179278(2*(n+1)))` -/
def P14836957410549012157.Spec : Prop :=
  ∀ n, P14836957410549012157.a n = A060266 (n + 1)

end A060266

/-! ## A060266.P12025326600450087898

`A007920(2*A254667(n+1))`
-/

namespace A060266.P12025326600450087898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (2 * A254667 (n + 1)).toNat

end

end A060266.P12025326600450087898

namespace A060266

/-- `A007920(2*A254667(n+1))` -/
def P12025326600450087898.Spec : Prop :=
  ∀ n, P12025326600450087898.a n = A060266 (n + 1)

end A060266

/-! ## A060266.P3053874076279703172

`or(1, A007920(A004277(n+1)))`
-/

namespace A060266.P3053874076279703172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A007920 (A004277 (n + 1)).toNat)

end

end A060266.P3053874076279703172

namespace A060266

/-- `or(1, A007920(A004277(n+1)))` -/
def P3053874076279703172.Spec : Prop :=
  ∀ n, P3053874076279703172.a n = A060266 (n + 1)

end A060266

/-! ## A060266.P13122368227716317872

`A007920(lt[A266222(n), 1]+1)`
-/

namespace A060266.P13122368227716317872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266222 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A060266.P13122368227716317872

namespace A060266

/-- `A007920(lt[A266222(n), 1]+1)` -/
def P13122368227716317872.Spec : Prop :=
  ∀ n, P13122368227716317872.a n = A060266 (n + 1)

end A060266

/-! ## A060266.P6582382530621572882

`A013632(2*n+1)-A057427(n)`
-/

namespace A060266.P6582382530621572882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (2 * n + 1) - A057427 n

end

end A060266.P6582382530621572882

namespace A060266

/-- `A013632(2*n+1)-A057427(n)` -/
def P6582382530621572882.Spec : Prop :=
  ∀ n, P6582382530621572882.a n = A060266 (n + 1)

end A060266

/-!
# A060267: Difference between 2 closest primes surrounding 2n.

The programs for A060267, the canonical program `A060267.P17094486573284264601` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060267 has offset 2).

The definition of A060267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060267.P13782032336232416411

`A072680(2*(n+2))`
-/

namespace A060267.P13782032336232416411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072680 (2 * (n + 2))

end

end A060267.P13782032336232416411

namespace A060267

/-- `A072680(2*(n+2))` -/
def P13782032336232416411.Spec : Prop :=
  ∀ n, P13782032336232416411.a n = A060267 (n + 2)

end A060267

/-! ## A060267.P17094486573284264601

`A166597(2*(n+2))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A060267

/-- `A166597(2*(n+2))` -/
def P17094486573284264601.Spec : Prop :=
  ∀ n, P17094486573284264601.a n = A060267 (n + 2)

theorem P17094486573284264601.correct : P17094486573284264601.Spec := by
  intro n
  simp only [A060267, Nat.add_sub_cancel]

end A060267

/-! ## A060267.P1700151116757666360

`A001223(A099801(n+1))`
-/

namespace A060267.P1700151116757666360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A099801 (n + 1)).toNat

end

end A060267.P1700151116757666360

namespace A060267

/-- `A001223(A099801(n+1))` -/
def P1700151116757666360.Spec : Prop :=
  ∀ n, P1700151116757666360.a n = A060267 (n + 2)

end A060267

/-! ## A060267.P2535568434398131576

`A001223(A308754(n)+2)`
-/

namespace A060267.P2535568434398131576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A308754 n + 2).toNat

end

end A060267.P2535568434398131576

namespace A060267

/-- `A001223(A308754(n)+2)` -/
def P2535568434398131576.Spec : Prop :=
  ∀ n, P2535568434398131576.a n = A060267 (n + 2)

end A060267

/-! ## A060267.P15947367670399378901

`A001223(A000720(2*(n+2)))`
-/

namespace A060267.P15947367670399378901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A000720 (2 * (n + 2))).toNat

end

end A060267.P15947367670399378901

namespace A060267

/-- `A001223(A000720(2*(n+2)))` -/
def P15947367670399378901.Spec : Prop :=
  ∀ n, P15947367670399378901.a n = A060267 (n + 2)

end A060267

/-! ## A060267.P4480468097100387934

`A054541(A000720(2*(n+2))+1)`
-/

namespace A060267.P4480468097100387934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (A000720 (2 * (n + 2)) + 1).toNat

end

end A060267.P4480468097100387934

namespace A060267

/-- `A054541(A000720(2*(n+2))+1)` -/
def P4480468097100387934.Spec : Prop :=
  ∀ n, P4480468097100387934.a n = A060267 (n + 2)

end A060267

/-! ## A060267.P5860414191578744681

`A001223(∑[A010051(2*n+3)]+1)`
-/

namespace A060267.P5860414191578744681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A060267.P5860414191578744681

namespace A060267

/-- `A001223(∑[A010051(2*n+3)]+1)` -/
def P5860414191578744681.Spec : Prop :=
  ∀ n, P5860414191578744681.a n = A060267 (n + 2)

end A060267

/-! ## A060267.P17620613597335724042

`A076368(A000720(2*(n+1)+1)+1)-1`
-/

namespace A060267.P17620613597335724042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (A000720 (2 * (n + 1) + 1) + 1).toNat - 1

end

end A060267.P17620613597335724042

namespace A060267

/-- `A076368(A000720(2*(n+1)+1)+1)-1` -/
def P17620613597335724042.Spec : Prop :=
  ∀ n, P17620613597335724042.a n = A060267 (n + 2)

end A060267

/-! ## A060267.P8224881965130973771

`A151800(A060265(n+2))-A060265(n+2)`
-/

namespace A060267.P8224881965130973771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A060265 (n + 2)).toNat - A060265 (n + 2)

end

end A060267.P8224881965130973771

namespace A060267

/-- `A151800(A060265(n+2))-A060265(n+2)` -/
def P8224881965130973771.Spec : Prop :=
  ∀ n, P8224881965130973771.a n = A060267 (n + 2)

end A060267

/-! ## A060267.P18241039167145146548

`A001223(A099802(n+2))`
-/

namespace A060267.P18241039167145146548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A099802 (n + 2)).toNat

end

end A060267.P18241039167145146548

namespace A060267

/-- `A001223(A099802(n+2))` -/
def P18241039167145146548.Spec : Prop :=
  ∀ n, P18241039167145146548.a n = A060267 (n + 2)

end A060267

/-! ## A060267.P12856438553743492041

`A238737(n+1)+A060266(n+2)`
-/

namespace A060267.P12856438553743492041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238737 (n + 1) + A060266 (n + 2)

end

end A060267.P12856438553743492041

namespace A060267

/-- `A238737(n+1)+A060266(n+2)` -/
def P12856438553743492041.Spec : Prop :=
  ∀ n, P12856438553743492041.a n = A060267 (n + 2)

end A060267

/-! ## A060267.P13734058615661908229

`A060266(n+2)+A049653(n+2)`
-/

namespace A060267.P13734058615661908229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (n + 2) + A049653 (n + 2)

end

end A060267.P13734058615661908229

namespace A060267

/-- `A060266(n+2)+A049653(n+2)` -/
def P13734058615661908229.Spec : Prop :=
  ∀ n, P13734058615661908229.a n = A060267 (n + 2)

end A060267

/-! ## A060267.P12093728556392319631

`A001223(n+2-A210469(n+2))`
-/

namespace A060267.P12093728556392319631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 ((n + 2 : ℤ) - A210469 (n + 2)).toNat

end

end A060267.P12093728556392319631

namespace A060267

/-- `A001223(n+2-A210469(n+2))` -/
def P12093728556392319631.Spec : Prop :=
  ∀ n, P12093728556392319631.a n = A060267 (n + 2)

end A060267

/-! ## A060267.P13445916794260501333

`A151800(A060308(n+2))-A060308(n+2)`
-/

namespace A060267.P13445916794260501333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A060308 (n + 2)).toNat - A060308 (n + 2)

end

end A060267.P13445916794260501333

namespace A060267

/-- `A151800(A060308(n+2))-A060308(n+2)` -/
def P13445916794260501333.Spec : Prop :=
  ∀ n, P13445916794260501333.a n = A060267 (n + 2)

end A060267

/-! ## A060267.P4731447001132353503

`A060264(n+2)-A060265(n+2)`
-/

namespace A060267.P4731447001132353503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (n + 2) - A060265 (n + 2)

end

end A060267.P4731447001132353503

namespace A060267

/-- `A060264(n+2)-A060265(n+2)` -/
def P4731447001132353503.Spec : Prop :=
  ∀ n, P4731447001132353503.a n = A060267 (n + 2)

end A060267

/-! ## A060267.P6908603547674121349

`A060264(n+2)-A060308(n+2)`
-/

namespace A060267.P6908603547674121349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (n + 2) - A060308 (n + 2)

end

end A060267.P6908603547674121349

namespace A060267

/-- `A060264(n+2)-A060308(n+2)` -/
def P6908603547674121349.Spec : Prop :=
  ∀ n, P6908603547674121349.a n = A060267 (n + 2)

end A060267

/-! ## A060267.P4568086976476990825

`A096501(A151800(2*(n+2)))`
-/

namespace A060267.P4568086976476990825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (A151800 (2 * (n + 2))).toNat

end

end A060267.P4568086976476990825

namespace A060267

/-- `A096501(A151800(2*(n+2)))` -/
def P4568086976476990825.Spec : Prop :=
  ∀ n, P4568086976476990825.a n = A060267 (n + 2)

end A060267

/-!
# A060268: Distance of 2n from the closest prime.

The programs for A060268, the canonical program `A060268.P4299807381361394483` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060268 has offset 2).

The definition of A060268 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5686 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060268.P18045735178109984408

`A334208(2*(n+2))`
-/

namespace A060268.P18045735178109984408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334208 (2 * (n + 2))

end

end A060268.P18045735178109984408

namespace A060268

/-- `A334208(2*(n+2))` -/
def P18045735178109984408.Spec : Prop :=
  ∀ n, P18045735178109984408.a n = A060268 (n + 2)

end A060268

/-! ## A060268.P4299807381361394483

`A053543(A065896(n+2))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A060268

/-- `A053543(A065896(n+2))` -/
def P4299807381361394483.Spec : Prop :=
  ∀ n, P4299807381361394483.a n = A060268 (n + 2)

theorem P4299807381361394483.correct : P4299807381361394483.Spec := by
  intro n
  simp only [A060268, Nat.add_sub_cancel]

end A060268

/-! ## A060268.P3512970755769202665

`filter[A053543(n+1), A000035(#)]`
-/

namespace A060268.P3512970755769202665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A060268.P3512970755769202665

namespace A060268

/-- `filter[A053543(n+1), A000035(#)]` -/
def P3512970755769202665.Spec : Prop :=
  ∀ n, P3512970755769202665.a n = A060268 (n + 2)

end A060268

/-! ## A060268.P18322174795609687421

`A051699(2*(n+2))`
-/

namespace A060268.P18322174795609687421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (2 * (n + 2))

end

end A060268.P18322174795609687421

namespace A060268

/-- `A051699(2*(n+2))` -/
def P18322174795609687421.Spec : Prop :=
  ∀ n, P18322174795609687421.a n = A060268 (n + 2)

end A060268

/-! ## A060268.P4652854131705386514

`A051700(2*(n+2))`
-/

namespace A060268.P4652854131705386514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (2 * (n + 2))

end

end A060268.P4652854131705386514

namespace A060268

/-- `A051700(2*(n+2))` -/
def P4652854131705386514.Spec : Prop :=
  ∀ n, P4652854131705386514.a n = A060268 (n + 2)

end A060268

/-! ## A060268.P316599934174272318

`or(1, A051700(A103517(n+1)))`
-/

namespace A060268.P316599934174272318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A051700 (A103517 (n + 1)).toNat)

end

end A060268.P316599934174272318

namespace A060268

/-- `or(1, A051700(A103517(n+1)))` -/
def P316599934174272318.Spec : Prop :=
  ∀ n, P316599934174272318.a n = A060268 (n + 2)

end A060268

/-! ## A060268.P7231239596346927408

`filter[A051699(2*n), A000035(#)]`
-/

namespace A060268.P7231239596346927408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A060268.P7231239596346927408

namespace A060268

/-- `filter[A051699(2*n), A000035(#)]` -/
def P7231239596346927408.Spec : Prop :=
  ∀ n, P7231239596346927408.a n = A060268 (n + 2)

end A060268

/-! ## A060268.P10295001650792790043

`filter[A051699(2*n), A115971(#)]`
-/

namespace A060268.P10295001650792790043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A060268.P10295001650792790043

namespace A060268

/-- `filter[A051699(2*n), A115971(#)]` -/
def P10295001650792790043.Spec : Prop :=
  ∀ n, P10295001650792790043.a n = A060268 (n + 2)

end A060268

/-! ## A060268.P9277564927003415745

`filter[A051699(2*n), A125122(#)]`
-/

namespace A060268.P9277564927003415745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A125122 (f1 j).toNat = 1) n)

end

end A060268.P9277564927003415745

namespace A060268

/-- `filter[A051699(2*n), A125122(#)]` -/
def P9277564927003415745.Spec : Prop :=
  ∀ n, P9277564927003415745.a n = A060268 (n + 2)

end A060268

/-! ## A060268.P11334064214984856579

`abs(A004277(n+2)-A051698(A004277(n+2)))`
-/

namespace A060268.P11334064214984856579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004277 (n + 2) - A051698 (A004277 (n + 2)).toNat|

end

end A060268.P11334064214984856579

namespace A060268

/-- `abs(A004277(n+2)-A051698(A004277(n+2)))` -/
def P11334064214984856579.Spec : Prop :=
  ∀ n, P11334064214984856579.a n = A060268 (n + 2)

end A060268

/-! ## A060268.P4896338978480831775

`A362831(A004767(n+1))`
-/

namespace A060268.P4896338978480831775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362831 (A004767 (n + 1)).toNat

end

end A060268.P4896338978480831775

namespace A060268

/-- `A362831(A004767(n+1))` -/
def P4896338978480831775.Spec : Prop :=
  ∀ n, P4896338978480831775.a n = A060268 (n + 2)

end A060268

/-!
# A060270: Distance of n-th primorial from previous prime.

The programs for A060270, there is no canonical definition to state claims against.
-/

/-! ## A060270.P1210132809650803491

`A058044(n+2)-A038711(n+2)`
-/

namespace A060270.P1210132809650803491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058044 (n + 2) - A038711 (n + 2)

end

end A060270.P1210132809650803491

/-! ## A060270.P12841876831812293526

`2*A340041(n+2)-A038711(n+2)`
-/

namespace A060270.P12841876831812293526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A340041 (n + 2) - A038711 (n + 2)

end

end A060270.P12841876831812293526

/-! ## A060270.P11595159558018316494

`A004277(A340041(n+2))-A038711(n+2)`
-/

namespace A060270.P11595159558018316494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A340041 (n + 2)).toNat - A038711 (n + 2)

end

end A060270.P11595159558018316494

/-! ## A060270.P17645422303867352584

`A002110(n+2)-A007014(n+2)`
-/

namespace A060270.P17645422303867352584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 2) - A007014 (n + 2)

end

end A060270.P17645422303867352584

/-! ## A060270.P4098717836626449044

`A057588(n+2)+1-A007014(n+2)`
-/

namespace A060270.P4098717836626449044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057588 (n + 2) + (1 - A007014 (n + 2))

end

end A060270.P4098717836626449044

/-!
# A060271: Difference between smallest prime following and largest prime preceding 2*(n-th prime).

The programs for A060271, the canonical program `A060271.P16265143597692740306` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060271 has offset 1).

The definition of A060271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060271.P16265143597692740306

`A001223(A020900(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A060271

/-- `A001223(A020900(n+1))` -/
def P16265143597692740306.Spec : Prop :=
  ∀ n, P16265143597692740306.a n = A060271 (n + 1)

theorem P16265143597692740306.correct : P16265143597692740306.Spec := by
  intro n
  simp only [A060271, Nat.add_sub_cancel]

end A060271

/-! ## A060271.P8286131576841766379

`A059789(n)+A059787(n+1)`
-/

namespace A060271.P8286131576841766379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059789 n + A059787 (n + 1)

end

end A060271.P8286131576841766379

namespace A060271

/-- `A059789(n)+A059787(n+1)` -/
def P8286131576841766379.Spec : Prop :=
  ∀ n, P8286131576841766379.a n = A060271 (n + 1)

theorem P8286131576841766379.correct : P8286131576841766379.Spec := by
  intro n
  simp only [A060271, Nat.add_sub_cancel, A060271.P8286131576841766379.a, A060271.P16265143597692740306.a, A001223, A001223.P5034056745985311719.a, A020900, A020900.P12967914466540950521.a, A059787, A059787.P10805631217386349978.a, A059789, A059789.P9702671069679894887.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A059786, A059786.P8715638951535635433.a, A100484, A100484.P9678625670825099636.a, A045344, A045344.P8697885089310436463.a, A065475, A065475.P2637304413385993180.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A060271

/-! ## A060271.P12263290311864445151

`A059786(n+1)-A059788(n+1)`
-/

namespace A060271.P12263290311864445151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059786 (n + 1) - A059788 (n + 1)

end

end A060271.P12263290311864445151

namespace A060271

/-- `A059786(n+1)-A059788(n+1)` -/
def P12263290311864445151.Spec : Prop :=
  ∀ n, P12263290311864445151.a n = A060271 (n + 1)

end A060271

/-! ## A060271.P9272956236642130397

`A166597(A076274(n+2))`
-/

namespace A060271.P9272956236642130397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (A076274 (n + 2)).toNat

end

end A060271.P9272956236642130397

namespace A060271

/-- `A166597(A076274(n+2))` -/
def P9272956236642130397.Spec : Prop :=
  ∀ n, P9272956236642130397.a n = A060271 (n + 1)

end A060271

/-! ## A060271.P4119491948358063313

`A166597(2*A000040(n+1))`
-/

namespace A060271.P4119491948358063313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (2 * A000040 (n + 1)).toNat

end

end A060271.P4119491948358063313

namespace A060271

/-- `A166597(2*A000040(n+1))` -/
def P4119491948358063313.Spec : Prop :=
  ∀ n, P4119491948358063313.a n = A060271 (n + 1)

end A060271

/-! ## A060271.P29726396169157930

`A001223(A000720(A001747(n+2)))`
-/

namespace A060271.P29726396169157930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A000720 (A001747 (n + 2)).toNat).toNat

end

end A060271.P29726396169157930

namespace A060271

/-- `A001223(A000720(A001747(n+2)))` -/
def P29726396169157930.Spec : Prop :=
  ∀ n, P29726396169157930.a n = A060271 (n + 1)

end A060271

/-! ## A060271.P5838142531706129070

`A166597(A000040(n+1)+A000040(n+1))`
-/

namespace A060271.P5838142531706129070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (A000040 (n + 1) + A000040 (n + 1)).toNat

end

end A060271.P5838142531706129070

namespace A060271

/-- `A166597(A000040(n+1)+A000040(n+1))` -/
def P5838142531706129070.Spec : Prop :=
  ∀ n, P5838142531706129070.a n = A060271 (n + 1)

end A060271

/-! ## A060271.P18040073164268936268

`A072680(2*A000040(n+1))`
-/

namespace A060271.P18040073164268936268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072680 (2 * A000040 (n + 1)).toNat

end

end A060271.P18040073164268936268

namespace A060271

/-- `A072680(2*A000040(n+1))` -/
def P18040073164268936268.Spec : Prop :=
  ∀ n, P18040073164268936268.a n = A060271 (n + 1)

end A060271

/-! ## A060271.P730398290931393471

`A072680(2*A008578(n+2))`
-/

namespace A060271.P730398290931393471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072680 (2 * A008578 (n + 2)).toNat

end

end A060271.P730398290931393471

namespace A060271

/-- `A072680(2*A008578(n+2))` -/
def P730398290931393471.Spec : Prop :=
  ∀ n, P730398290931393471.a n = A060271 (n + 1)

end A060271

/-! ## A060271.P6106530625563604430

`A060267(A000040(n+1))`
-/

namespace A060271.P6106530625563604430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060267 (A000040 (n + 1)).toNat

end

end A060271.P6106530625563604430

namespace A060271

/-- `A060267(A000040(n+1))` -/
def P6106530625563604430.Spec : Prop :=
  ∀ n, P6106530625563604430.a n = A060271 (n + 1)

end A060271

/-! ## A060271.P9885839104038970709

`A060267(A008578(n+2))`
-/

namespace A060271.P9885839104038970709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060267 (A008578 (n + 2)).toNat

end

end A060271.P9885839104038970709

namespace A060271

/-- `A060267(A008578(n+2))` -/
def P9885839104038970709.Spec : Prop :=
  ∀ n, P9885839104038970709.a n = A060271 (n + 1)

end A060271

/-! ## A060271.P16878929402064193291

`A060267(A182986(n+2))`
-/

namespace A060271.P16878929402064193291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060267 (A182986 (n + 2)).toNat

end

end A060271.P16878929402064193291

namespace A060271

/-- `A060267(A182986(n+2))` -/
def P16878929402064193291.Spec : Prop :=
  ∀ n, P16878929402064193291.a n = A060271 (n + 1)

end A060271

/-! ## A060271.P3590755173771828370

`A001223(A108954(A000040(n+1))+n+1)`
-/

namespace A060271.P3590755173771828370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A108954 (A000040 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A060271.P3590755173771828370

namespace A060271

/-- `A001223(A108954(A000040(n+1))+n+1)` -/
def P3590755173771828370.Spec : Prop :=
  ∀ n, P3590755173771828370.a n = A060271 (n + 1)

end A060271

/-! ## A060271.P18244163649479814827

`A013632(A059788(n+1))`
-/

namespace A060271.P18244163649479814827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A059788 (n + 1)).toNat

end

end A060271.P18244163649479814827

namespace A060271

/-- `A013632(A059788(n+1))` -/
def P18244163649479814827.Spec : Prop :=
  ∀ n, P18244163649479814827.a n = A060271 (n + 1)

end A060271

/-! ## A060271.P5402237405338924349

`A013633(A059788(n+1)+1)`
-/

namespace A060271.P5402237405338924349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013633 (A059788 (n + 1) + 1).toNat

end

end A060271.P5402237405338924349

namespace A060271

/-- `A013633(A059788(n+1)+1)` -/
def P5402237405338924349.Spec : Prop :=
  ∀ n, P5402237405338924349.a n = A060271 (n + 1)

end A060271

/-! ## A060271.P3488594878518524871

`A013633(A100484(n+1))`
-/

namespace A060271.P3488594878518524871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013633 (A100484 (n + 1)).toNat

end

end A060271.P3488594878518524871

namespace A060271

/-- `A013633(A100484(n+1))` -/
def P3488594878518524871.Spec : Prop :=
  ∀ n, P3488594878518524871.a n = A060271 (n + 1)

end A060271

/-! ## A060271.P4888954417831427389

`A013633(A001747(n+2))`
-/

namespace A060271.P4888954417831427389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013633 (A001747 (n + 2)).toNat

end

end A060271.P4888954417831427389

namespace A060271

/-- `A013633(A001747(n+2))` -/
def P4888954417831427389.Spec : Prop :=
  ∀ n, P4888954417831427389.a n = A060271 (n + 1)

end A060271

/-! ## A060271.P13382890965181160849

`A013633(2*A000040(n+1))`
-/

namespace A060271.P13382890965181160849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013633 (2 * A000040 (n + 1)).toNat

end

end A060271.P13382890965181160849

namespace A060271

/-- `A013633(2*A000040(n+1))` -/
def P13382890965181160849.Spec : Prop :=
  ∀ n, P13382890965181160849.a n = A060271 (n + 1)

end A060271

/-! ## A060271.P16158827427093186868

`A013633(2*A008578(n+2))`
-/

namespace A060271.P16158827427093186868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013633 (2 * A008578 (n + 2)).toNat

end

end A060271.P16158827427093186868

namespace A060271

/-- `A013633(2*A008578(n+2))` -/
def P16158827427093186868.Spec : Prop :=
  ∀ n, P16158827427093186868.a n = A060271 (n + 1)

end A060271

/-! ## A060271.P39998944037666565

`A013633(A000040(n+1)+A000040(n+1))`
-/

namespace A060271.P39998944037666565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013633 (A000040 (n + 1) + A000040 (n + 1)).toNat

end

end A060271.P39998944037666565

namespace A060271

/-- `A013633(A000040(n+1)+A000040(n+1))` -/
def P39998944037666565.Spec : Prop :=
  ∀ n, P39998944037666565.a n = A060271 (n + 1)

end A060271

/-!
# A060272: Distance from n^2 to closest prime.

The programs for A060272, the canonical program `A060272.P7091301025821284521` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060272 has offset 1).

The definition of A060272 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113425, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A060272.P7091301025821284521

`abs(A000290(n+1)-A113425(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A060272

/-- `abs(A000290(n+1)-A113425(n+1))` -/
def P7091301025821284521.Spec : Prop :=
  ∀ n, P7091301025821284521.a n = A060272 (n + 1)

theorem P7091301025821284521.correct : P7091301025821284521.Spec := by
  intro n
  simp only [A060272, Nat.add_sub_cancel]

end A060272

/-! ## A060272.P13179628705934439924

`abs(A000290(n+1)-A113426(n+1))`
-/

namespace A060272.P13179628705934439924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000290 (n + 1) - A113426 (n + 1)|

end

end A060272.P13179628705934439924

namespace A060272

/-- `abs(A000290(n+1)-A113426(n+1))` -/
def P13179628705934439924.Spec : Prop :=
  ∀ n, P13179628705934439924.a n = A060272 (n + 1)

end A060272

/-! ## A060272.P12021722219922842736

`abs((n+1)²-A113425(n+1))`
-/

namespace A060272.P12021722219922842736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n + 1) ^ 2 : ℤ) - A113425 (n + 1)|

end

end A060272.P12021722219922842736

namespace A060272

/-- `abs((n+1)²-A113425(n+1))` -/
def P12021722219922842736.Spec : Prop :=
  ∀ n, P12021722219922842736.a n = A060272 (n + 1)

theorem P12021722219922842736.correct : P12021722219922842736.Spec := by
  intro n
  simp only [A060272, Nat.add_sub_cancel, A060272.P12021722219922842736.a, A060272.P7091301025821284521.a, A000290, A000290.P12206242496348924484.a, A113425, A113425.P1006635442297593075.a, A077018, A077018.P4691575513976680086.a, A076973, A076973.P10635609584503843541.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A076272, A076272.P7601863913326616952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A060272

/-! ## A060272.P14030017562853298719

`abs((n+1)²-A113426(n+1))`
-/

namespace A060272.P14030017562853298719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n + 1) ^ 2 : ℤ) - A113426 (n + 1)|

end

end A060272.P14030017562853298719

namespace A060272

/-- `abs((n+1)²-A113426(n+1))` -/
def P14030017562853298719.Spec : Prop :=
  ∀ n, P14030017562853298719.a n = A060272 (n + 1)

end A060272

/-! ## A060272.P9368338030670173013

`abs(A113425(n+1)-Δ[A000330(n)])`
-/

namespace A060272.P9368338030670173013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113425 (n + 1) - (f1 (n + 1) - f1 n)|

end

end A060272.P9368338030670173013

namespace A060272

/-- `abs(A113425(n+1)-Δ[A000330(n)])` -/
def P9368338030670173013.Spec : Prop :=
  ∀ n, P9368338030670173013.a n = A060272 (n + 1)

end A060272

/-! ## A060272.P8240614874499776728

`A066635(A113426(n+1)-(2*n+1))`
-/

namespace A060272.P8240614874499776728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066635 (A113426 (n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A060272.P8240614874499776728

namespace A060272

/-- `A066635(A113426(n+1)-(2*n+1))` -/
def P8240614874499776728.Spec : Prop :=
  ∀ n, P8240614874499776728.a n = A060272 (n + 1)

end A060272

/-! ## A060272.P890207664992052185

`A051699((n+1)²)`
-/

namespace A060272.P890207664992052185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 ((n + 1) ^ 2)

end

end A060272.P890207664992052185

namespace A060272

/-- `A051699((n+1)²)` -/
def P890207664992052185.Spec : Prop :=
  ∀ n, P890207664992052185.a n = A060272 (n + 1)

end A060272

/-! ## A060272.P1403282549700915172

`A051700((n+1)²)`
-/

namespace A060272.P1403282549700915172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 ((n + 1) ^ 2)

end

end A060272.P1403282549700915172

namespace A060272

/-- `A051700((n+1)²)` -/
def P1403282549700915172.Spec : Prop :=
  ∀ n, P1403282549700915172.a n = A060272 (n + 1)

end A060272

/-! ## A060272.P3721340406587425443

`2-∑[-Δ[A051700(n²)]]`
-/

namespace A060272.P3721340406587425443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060272.P3721340406587425443

namespace A060272

/-- `2-∑[-Δ[A051700(n²)]]` -/
def P3721340406587425443.Spec : Prop :=
  ∀ n, P3721340406587425443.a n = A060272 (n + 1)

end A060272

/-! ## A060272.P17563117568891522764

`A118541(A051699((n+1)^2))`
-/

namespace A060272.P17563117568891522764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118541 (A051699 ((n + 1) ^ 2)).toNat

end

end A060272.P17563117568891522764

namespace A060272

/-- `A118541(A051699((n+1)^2))` -/
def P17563117568891522764.Spec : Prop :=
  ∀ n, P17563117568891522764.a n = A060272 (n + 1)

end A060272

/-! ## A060272.P1247767104599040718

`A043320(A051699(∑[2*n+1]))`
-/

namespace A060272.P1247767104599040718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043320 (A051699 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A060272.P1247767104599040718

namespace A060272

/-- `A043320(A051699(∑[2*n+1]))` -/
def P1247767104599040718.Spec : Prop :=
  ∀ n, P1247767104599040718.a n = A060272 (n + 1)

end A060272

/-! ## A060272.P2105149933004634747

`A051700(A000290(n+1))*A051700(A051700(n+1))`
-/

namespace A060272.P2105149933004634747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A000290 (n + 1)).toNat * A051700 (A051700 (n + 1)).toNat

end

end A060272.P2105149933004634747

namespace A060272

/-- `A051700(A000290(n+1))*A051700(A051700(n+1))` -/
def P2105149933004634747.Spec : Prop :=
  ∀ n, P2105149933004634747.a n = A060272 (n + 1)

end A060272

/-!
# A060273: Hard numbers: a(n) = smallest positive number m with f(m) = n, where f(m) is the smallest number of digits that are needed to construct m using only 1's, 2's and any number of +, -, *, ^ signs, allowing concatenation of the digits.

The programs for A060273, there is no canonical definition to state claims against.
-/

/-! ## A060273.P15845996956726593131

`∑[A263312(∏[A112798(n+2)])]`
-/

namespace A060273.P15845996956726593131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263312 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060273.P15845996956726593131

/-!
# A060275: At least two ordered triples of positive numbers have sum n and equal products.

The programs for A060275, the canonical program `A060275.P15926730302555462033` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060275 has offset 1).

The definition of A060275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060275.P15926730302555462033

`floor(atan(∑[n])²+n+13)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060275

/-- `floor(atan(∑[n])²+n+13)` -/
def P15926730302555462033.Spec : Prop :=
  ∀ n, P15926730302555462033.a n = A060275 (n + 1)

theorem P15926730302555462033.correct : P15926730302555462033.Spec := by
  intro n
  simp only [A060275, Nat.add_sub_cancel]

end A060275

/-!
# A060276: a(1) = 2; a(n) = smallest prime > a(n-1) such that the sum of any three nondecreasing terms, chosen from a(1), ..., a(n-1) and a(n), is unique.

The programs for A060276, there is no canonical definition to state claims against.
-/

/-! ## A060276.P867983054149271836

`p?[record[A263027(A034851(n))]]`
-/

namespace A060276.P867983054149271836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263027 (A034851 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060276.P867983054149271836

/-! ## A060276.P1540266838910450251

`∩[A023192(n+1), A113165(n+1)]`
-/

namespace A060276.P1540266838910450251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060276.P1540266838910450251

/-!
# A060277: Number of m for which a+b+c = n; abc = m has at least two distinct solutions (a,b,c) with 1 <= a <= b <= c.

The programs for A060277, there is no canonical definition to state claims against.
-/

/-! ## A060277.P4019516817511931218

`A306403(n+1)-A306435(n+1)`
-/

namespace A060277.P4019516817511931218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306403 (n + 1) - A306435 (n + 1)

end

end A060277.P4019516817511931218

/-!
# A060278: Sum of composite divisors of n less than n.

The programs for A060278, the canonical program `A060278.P961630484478703475` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060278 has offset 1).

The definition of A060278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060278.P961630484478703475

`A206773(n+1)-round(n/(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A060278

/-- `A206773(n+1)-round(n/(n+1))` -/
def P961630484478703475.Spec : Prop :=
  ∀ n, P961630484478703475.a n = A060278 (n + 1)

theorem P961630484478703475.correct : P961630484478703475.Spec := by
  intro n
  simp only [A060278, Nat.add_sub_cancel]

end A060278

/-! ## A060278.P8570760570603780656

`∑{d}[n+1, (#%(n+1))%A023890(#)]`
-/

namespace A060278.P8570760570603780656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod ((d % (n + 1) : ℕ) : ℤ) (A023890 d)

end

end A060278.P8570760570603780656

namespace A060278

/-- `∑{d}[n+1, (#%(n+1))%A023890(#)]` -/
def P8570760570603780656.Spec : Prop :=
  ∀ n, P8570760570603780656.a n = A060278 (n + 1)

end A060278

/-! ## A060278.P11962394065984121815

`A048050(n+1)-A105221(n+1)`
-/

namespace A060278.P11962394065984121815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1) - A105221 (n + 1)

end

end A060278.P11962394065984121815

namespace A060278

/-- `A048050(n+1)-A105221(n+1)` -/
def P11962394065984121815.Spec : Prop :=
  ∀ n, P11962394065984121815.a n = A060278 (n + 1)

end A060278

/-! ## A060278.P14470194738437233622

`(A206773(n+1)-1)*A057427(n)`
-/

namespace A060278.P14470194738437233622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A206773 (n + 1) - 1) * A057427 n

end

end A060278.P14470194738437233622

namespace A060278

/-- `(A206773(n+1)-1)*A057427(n)` -/
def P14470194738437233622.Spec : Prop :=
  ∀ n, P14470194738437233622.a n = A060278 (n + 1)

end A060278

/-! ## A060278.P1920900756234638872

`(1-A206773(n+1))*A057428(n)`
-/

namespace A060278.P1920900756234638872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A206773 (n + 1)) * A057428 n

end

end A060278.P1920900756234638872

namespace A060278

/-- `(1-A206773(n+1))*A057428(n)` -/
def P1920900756234638872.Spec : Prop :=
  ∀ n, P1920900756234638872.a n = A060278 (n + 1)

end A060278

/-! ## A060278.P7859388286587597977

`A048050(n+1)-A008472(n+1)%(n+1)`
-/

namespace A060278.P7859388286587597977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1) - Int.tmod (A008472 (n + 1)) (n + 1 : ℤ)

end

end A060278.P7859388286587597977

namespace A060278

/-- `A048050(n+1)-A008472(n+1)%(n+1)` -/
def P7859388286587597977.Spec : Prop :=
  ∀ n, P7859388286587597977.a n = A060278 (n + 1)

end A060278

/-! ## A060278.P2822817480867870552

`∑{d}[n+1, A023891(#)*A157658((n+1)/#)]`
-/

namespace A060278.P2822817480867870552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023891 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060278.P2822817480867870552

namespace A060278

/-- `∑{d}[n+1, A023891(#)*A157658((n+1)/#)]` -/
def P2822817480867870552.Spec : Prop :=
  ∀ n, P2822817480867870552.a n = A060278 (n + 1)

end A060278

/-!
# A060279: Number of labeled rooted trees with all 2n nodes of odd degree.

The programs for A060279, there is no canonical definition to state claims against.
-/

/-! ## A060279.P16291246228772825209

`2*(n+1)*A007106(n+1)`
-/

namespace A060279.P16291246228772825209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A007106 (n + 1)

end

end A060279.P16291246228772825209

/-! ## A060279.P10560306244550760509

`2*(n+1)*A058014(record[xor(1, n)])`
-/

namespace A060279.P10560306244550760509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A058014 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A060279.P10560306244550760509

/-! ## A060279.P7401247316972605400

`2*(n+1)*A058014(2*n+1)`
-/

namespace A060279.P7401247316972605400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A058014 (2 * n + 1)

end

end A060279.P7401247316972605400

/-! ## A060279.P1976660336688658584

`A058014(record[xor(1, n)])*A119432(n+1)`
-/

namespace A060279.P1976660336688658584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058014 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) * A119432 (n + 1)

end

end A060279.P1976660336688658584

/-!
# A060280: Number of orbits of length n under the map whose periodic points are counted by A001350.

The programs for A060280, the canonical program `A060280.P432054768348529022` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060280 has offset 1).

The definition of A060280 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060280.P11810905438432272819

`A031367(n+1)/(n+1)`
-/

namespace A060280.P11810905438432272819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031367 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A060280.P11810905438432272819

namespace A060280

/-- `A031367(n+1)/(n+1)` -/
def P11810905438432272819.Spec : Prop :=
  ∀ n, P11810905438432272819.a n = (A060280 (n + 1) : ℚ)

end A060280

/-! ## A060280.P432054768348529022

`1/(n+1)*∑{d}[n+1, A008683(#)*A001350((n+1)/#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060280

/-- `1/(n+1)*∑{d}[n+1, A008683(#)*A001350((n+1)/#)]` -/
def P432054768348529022.Spec : Prop :=
  ∀ n, P432054768348529022.a n = (A060280 (n + 1) : ℚ)

end A060280

/-! ## A060280.P6758970590518727874

`A006206(n+1)-char[1]`
-/

namespace A060280.P6758970590518727874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006206 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A060280.P6758970590518727874

namespace A060280

/-- `A006206(n+1)-char[1]` -/
def P6758970590518727874.Spec : Prop :=
  ∀ n, P6758970590518727874.a n = A060280 (n + 1)

end A060280

/-! ## A060280.P17737373979964357534

`A159075(n)+A006206(n+1)`
-/

namespace A060280.P17737373979964357534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A006206 (n + 1)

end

end A060280.P17737373979964357534

namespace A060280

/-- `A159075(n)+A006206(n+1)` -/
def P17737373979964357534.Spec : Prop :=
  ∀ n, P17737373979964357534.a n = A060280 (n + 1)

end A060280

/-! ## A060280.P1203222288158981575

`A006206(n+1)*A060576(n)`
-/

namespace A060280.P1203222288158981575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006206 (n + 1) * A060576 n

end

end A060280.P1203222288158981575

namespace A060280

/-- `A006206(n+1)*A060576(n)` -/
def P1203222288158981575.Spec : Prop :=
  ∀ n, P1203222288158981575.a n = A060280 (n + 1)

end A060280

/-! ## A060280.P6907546490060414927

`lcm(A006206(n+1), A105812(n))`
-/

namespace A060280.P6907546490060414927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006206 (n + 1)) (A105812 n)

end

end A060280.P6907546490060414927

namespace A060280

/-- `lcm(A006206(n+1), A105812(n))` -/
def P6907546490060414927.Spec : Prop :=
  ∀ n, (P6907546490060414927.a n : ℤ) = A060280 (n + 1)

end A060280

/-! ## A060280.P14342721584937063173

`xor(A006206(n+1), A063524(n))`
-/

namespace A060280.P14342721584937063173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006206 (n + 1)) (A063524 n)

end

end A060280.P14342721584937063173

namespace A060280

/-- `xor(A006206(n+1), A063524(n))` -/
def P14342721584937063173.Spec : Prop :=
  ∀ n, P14342721584937063173.a n = A060280 (n + 1)

end A060280

/-! ## A060280.P10235096791545389812

`∑{d}[n+1, A008683(#)*A032189((n+1)/#)]`
-/

namespace A060280.P10235096791545389812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A032189 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A060280.P10235096791545389812

namespace A060280

/-- `∑{d}[n+1, A008683(#)*A032189((n+1)/#)]` -/
def P10235096791545389812.Spec : Prop :=
  ∀ n, P10235096791545389812.a n = A060280 (n + 1)

end A060280

/-! ## A060280.P12148006017234355720

`∑{d}[n+1, A008683(#)*A000358((n+1)/#)]-char[1]`
-/

namespace A060280.P12148006017234355720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A000358 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A060280.P12148006017234355720

namespace A060280

/-- `∑{d}[n+1, A008683(#)*A000358((n+1)/#)]-char[1]` -/
def P12148006017234355720.Spec : Prop :=
  ∀ n, P12148006017234355720.a n = A060280 (n + 1)

end A060280

/-! ## A060280.P10961346371988117874

`A006206(n+1)*A057427(A124625(n))`
-/

namespace A060280.P10961346371988117874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006206 (n + 1) * A057427 (A124625 n).toNat

end

end A060280.P10961346371988117874

namespace A060280

/-- `A006206(n+1)*A057427(A124625(n))` -/
def P10961346371988117874.Spec : Prop :=
  ∀ n, P10961346371988117874.a n = A060280 (n + 1)

end A060280

/-! ## A060280.P13403899264688197108

`A018243(n+1)+A006206(n+1)-A113788(n+1)`
-/

namespace A060280.P13403899264688197108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018243 (n + 1) + A006206 (n + 1) - A113788 (n + 1)

end

end A060280.P13403899264688197108

namespace A060280

/-- `A018243(n+1)+A006206(n+1)-A113788(n+1)` -/
def P13403899264688197108.Spec : Prop :=
  ∀ n, P13403899264688197108.a n = A060280 (n + 1)

end A060280

/-! ## A060280.P1200541928481903470

`A006206(n+1)%A000032(n)`
-/

namespace A060280.P1200541928481903470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006206 (n + 1)) (A000032 n)

end

end A060280.P1200541928481903470

namespace A060280

/-- `A006206(n+1)%A000032(n)` -/
def P1200541928481903470.Spec : Prop :=
  ∀ n, P1200541928481903470.a n = A060280 (n + 1)

end A060280

/-! ## A060280.P8290053306675519915

`A059966(n+1)-A065491(n)`
-/

namespace A060280.P8290053306675519915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (n + 1) - A065491 n

end

end A060280.P8290053306675519915

namespace A060280

/-- `A059966(n+1)-A065491(n)` -/
def P8290053306675519915.Spec : Prop :=
  ∀ n, P8290053306675519915.a n = A060280 (n + 1)

end A060280

/-! ## A060280.P6148489800261199698

`A006206(A000027(n+1))%A060477(n+1)`
-/

namespace A060280.P6148489800261199698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006206 (A000027 (n + 1)).toNat) (A060477 (n + 1))

end

end A060280.P6148489800261199698

namespace A060280

/-- `A006206(A000027(n+1))%A060477(n+1)` -/
def P6148489800261199698.Spec : Prop :=
  ∀ n, P6148489800261199698.a n = A060280 (n + 1)

end A060280

/-! ## A060280.P9130484231288605134

`and(A006206(n+1), A283592(n))`
-/

namespace A060280.P9130484231288605134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006206 (n + 1)) (A283592 n)

end

end A060280.P9130484231288605134

namespace A060280

/-- `and(A006206(n+1), A283592(n))` -/
def P9130484231288605134.Spec : Prop :=
  ∀ n, P9130484231288605134.a n = A060280 (n + 1)

end A060280

/-! ## A060280.P12127496883882582375

`and(A006206(n+1), A283651(n))`
-/

namespace A060280.P12127496883882582375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006206 (n + 1)) (A283651 n)

end

end A060280.P12127496883882582375

namespace A060280

/-- `and(A006206(n+1), A283651(n))` -/
def P12127496883882582375.Spec : Prop :=
  ∀ n, P12127496883882582375.a n = A060280 (n + 1)

end A060280

/-! ## A060280.P11781853972716866662

`and(A006206(n+1), A284485(n))`
-/

namespace A060280.P11781853972716866662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006206 (n + 1)) (A284485 n)

end

end A060280.P11781853972716866662

namespace A060280

/-- `and(A006206(n+1), A284485(n))` -/
def P11781853972716866662.Spec : Prop :=
  ∀ n, P11781853972716866662.a n = A060280 (n + 1)

end A060280

/-! ## A060280.P14302113331585364716

`and(A006206(n+1), A083329(n))`
-/

namespace A060280.P14302113331585364716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006206 (n + 1)) (A083329 n)

end

end A060280.P14302113331585364716

namespace A060280

/-- `and(A006206(n+1), A083329(n))` -/
def P14302113331585364716.Spec : Prop :=
  ∀ n, P14302113331585364716.a n = A060280 (n + 1)

end A060280

/-! ## A060280.P8695971909484984887

`and(A006206(n+1), A283507(n))`
-/

namespace A060280.P8695971909484984887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006206 (n + 1)) (A283507 n)

end

end A060280.P8695971909484984887

namespace A060280

/-- `and(A006206(n+1), A283507(n))` -/
def P8695971909484984887.Spec : Prop :=
  ∀ n, P8695971909484984887.a n = A060280 (n + 1)

end A060280

/-! ## A060280.P16879746932776966828

`and(A006206(n+1), A284354(n))`
-/

namespace A060280.P16879746932776966828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A006206 (n + 1)) (A284354 n)

end

end A060280.P16879746932776966828

namespace A060280

/-- `and(A006206(n+1), A284354(n))` -/
def P16879746932776966828.Spec : Prop :=
  ∀ n, P16879746932776966828.a n = A060280 (n + 1)

end A060280

/-!
# A060281: Triangle T(n,k) read by rows giving number of labeled mappings (or functional digraphs) from n points to themselves (endofunctions) with exactly k cycles, k=1..n.

The programs for A060281, there is no canonical definition to state claims against.
-/

/-! ## A060281.P912759528123692633

`A398135(comp[∑[n]])`
-/

namespace A060281.P912759528123692633
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398135 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A060281.P912759528123692633

/-! ## A060281.P7927144284537777000

`filter[A398135(n+1), A109720(#)]`
-/

namespace A060281.P7927144284537777000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A060281.P7927144284537777000

/-! ## A060281.P6511831753699248958

`filter[A398135(n+1), A145568(#)]`
-/

namespace A060281.P6511831753699248958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A060281.P6511831753699248958

/-! ## A060281.P17549570680029071200

`filter[A398135(n+1), A168181(#)]`
-/

namespace A060281.P17549570680029071200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A060281.P17549570680029071200

/-! ## A060281.P16295461293273743432

`filter[A398135(n+1), A276398(#)]`
-/

namespace A060281.P16295461293273743432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276398 (f1 j).toNat = 1) n)

end

end A060281.P16295461293273743432

/-!
# A060282: Periodic part of decimal expansion of reciprocal of n-th prime (leading 0's omitted).

The programs for A060282, there is no canonical definition to state claims against.
-/

/-! ## A060282.P4455864902337047151

`floor(10^A002371(n+1)/A000040(n+1))`
-/

namespace A060282.P4455864902337047151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℚ) ^ (A002371 (n + 1) : ℤ) / (A000040 (n + 1) : ℚ)⌋

end

end A060282.P4455864902337047151

/-! ## A060282.P5021116907137737813

`A060251(n+1)/(n+1)`
-/

namespace A060282.P5021116907137737813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060251 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A060282.P5021116907137737813

/-! ## A060282.P10754710013434321533

`A060284(Δ[A007504(n)])`
-/

namespace A060282.P10754710013434321533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060284 (f1 (n + 1) - f1 n).toNat

end

end A060282.P10754710013434321533

/-! ## A060282.P15752984424548207449

`A060284(A000040(n+1))`
-/

namespace A060282.P15752984424548207449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060284 (A000040 (n + 1)).toNat

end

end A060282.P15752984424548207449

/-! ## A060282.P801566934115999702

`A060284(A006005(n+1))`
-/

namespace A060282.P801566934115999702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060284 (A006005 (n + 1)).toNat

end

end A060282.P801566934115999702

/-!
# A060283: Periodic part of decimal expansion of reciprocal of n-th prime (leading 0's moved to end).

The programs for A060283, there is no canonical definition to state claims against.
-/

/-! ## A060283.P5319650242366026973

`A036275(A000040(n+1))`
-/

namespace A060283.P5319650242366026973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036275 (A000040 (n + 1)).toNat

end

end A060283.P5319650242366026973

/-! ## A060283.P7111834330914987499

`A036275(p?[n-(-1)^n])`
-/

namespace A060283.P7111834330914987499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036275 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A060283.P7111834330914987499

/-! ## A060283.P6276405926066827433

`A036275(Δ[A007504(n)])`
-/

namespace A060283.P6276405926066827433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036275 (f1 (n + 1) - f1 n).toNat

end

end A060283.P6276405926066827433

/-! ## A060283.P16428679806639156169

`A036275(record[A036262(n)])`
-/

namespace A060283.P16428679806639156169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036275 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060283.P16428679806639156169

/-! ## A060283.P15251313195409081689

`A036275(record[A006530(n+2)])`
-/

namespace A060283.P15251313195409081689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036275 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A060283.P15251313195409081689

/-!
# A060284: Periodic part of decimal expansion of 1/n (leading 0's omitted).

The programs for A060284, there is no canonical definition to state claims against.
-/

/-! ## A060284.P16792320208648215185

`A036275(n+1)/A174726(A219578(2*n+1))`
-/

namespace A060284.P16792320208648215185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036275 (n + 1) : ℚ) / (A174726 (A219578 (2 * n + 1)).toNat : ℚ)

end

end A060284.P16792320208648215185

/-! ## A060284.P2555588719756808043

`A036275(n+1)%A206685(A200057(2*(n+1)))`
-/

namespace A060284.P2555588719756808043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036275 (n + 1)) (A206685 (A200057 (2 * (n + 1))).toNat)

end

end A060284.P2555588719756808043

/-!
# A060286: a(n) = 2^(p-1)*(2^p-1) where p is prime(n).

The programs for A060286, the canonical program `A060286.P8823515190653250868` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060286 has offset 1).

The definition of A060286 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A060286.P8823515190653250868

`A006516(A000040(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A060286

/-- `A006516(A000040(n+1))` -/
def P8823515190653250868.Spec : Prop :=
  ∀ n, P8823515190653250868.a n = A060286 (n + 1)

theorem P8823515190653250868.correct : P8823515190653250868.Spec := by
  intro n
  simp only [A060286, Nat.add_sub_cancel]

end A060286

/-! ## A060286.P7452194001793256803

`C(2^p?[comp[n²]], 2)`
-/

namespace A060286.P7452194001793256803
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) 2

end

end A060286.P7452194001793256803

namespace A060286

/-- `C(2^p?[comp[n²]], 2)` -/
def P7452194001793256803.Spec : Prop :=
  ∀ n, (P7452194001793256803.a n : ℤ) = A060286 (n + 1)

end A060286

/-! ## A060286.P12553366580681380764

`C(Δ[A076793(n)], 2)`
-/

namespace A060286.P12553366580681380764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076793 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 2

end

end A060286.P12553366580681380764

namespace A060286

/-- `C(Δ[A076793(n)], 2)` -/
def P12553366580681380764.Spec : Prop :=
  ∀ n, (P12553366580681380764.a n : ℤ) = A060286 (n + 1)

end A060286

/-! ## A060286.P16418691554894883688

`C(A034785(n+1), 2)`
-/

namespace A060286.P16418691554894883688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A034785 (n + 1)).toNat 2

end

end A060286.P16418691554894883688

namespace A060286

/-- `C(A034785(n+1), 2)` -/
def P16418691554894883688.Spec : Prop :=
  ∀ n, (P16418691554894883688.a n : ℤ) = A060286 (n + 1)

end A060286

/-! ## A060286.P11724337364658741146

`C(2^Δ[A007504(n)], 2)`
-/

namespace A060286.P11724337364658741146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((2 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat 2

end

end A060286.P11724337364658741146

namespace A060286

/-- `C(2^Δ[A007504(n)], 2)` -/
def P11724337364658741146.Spec : Prop :=
  ∀ n, (P11724337364658741146.a n : ℤ) = A060286 (n + 1)

end A060286

/-!
# A060288: Distinct (non-overlapping) twin Harshad numbers whose sum is prime.

The programs for A060288, there is no canonical definition to state claims against.
-/

/-! ## A060288.P16381987283274748486

`A060290(lt[A060281(n+2), A060274(n+2)])`
-/

namespace A060288.P16381987283274748486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060281 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060274 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060290 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A060288.P16381987283274748486

/-! ## A060288.P15229352934289969550

`∩[A060290(n+1), A098379(n)]`
-/

namespace A060288.P15229352934289969550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098379 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060288.P15229352934289969550

/-!
# A060289: Number of distinct (non-overlapping) twin Harshad numbers whose sum is prime and where the 2nd Harshad is <= 10^n.

The programs for A060289, there is no canonical definition to state claims against.
-/

/-! ## A060289.P16925390245747761686

`A055679(∑{d}[A219682(n+1), #])`
-/

namespace A060289.P16925390245747761686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A060289.P16925390245747761686

/-!
# A060290: Primes which are sums of twin Harshad numbers (includes overlaps).

The programs for A060290, there is no canonical definition to state claims against.
-/

/-! ## A060290.P13269181325878639065

`p?[2*A330927(n+1)+1]`
-/

namespace A060290.P13269181325878639065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A330927 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060290.P13269181325878639065

/-! ## A060290.P5873358255609072031

`record[A006530(A016825(A330927(n+1)))]`
-/

namespace A060290.P5873358255609072031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A016825 (A330927 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060290.P5873358255609072031

/-! ## A060290.P10714887733116273541

`p?[Δ[A005349(n+1)²]]`
-/

namespace A060290.P10714887733116273541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060290.P10714887733116273541

/-! ## A060290.P6961915961858639416

`p?[A005349(n+2)²-A005349(n+1)²]`
-/

namespace A060290.P6961915961858639416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 2) ^ 2 - A005349 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060290.P6961915961858639416

/-! ## A060290.P8872439244281103886

`p?[Δ[(eq[0, A070635(n+1)]+1)²]]`
-/

namespace A060290.P8872439244281103886
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060290.P8872439244281103886

/-! ## A060290.P2840588571354465301

`p?[A005408(A330927(n+1))]`
-/

namespace A060290.P2840588571354465301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A330927 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060290.P2840588571354465301

/-! ## A060290.P13027691390863527570

`p?[A004273(A330927(n+1)+1)]`
-/

namespace A060290.P13027691390863527570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A330927 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A060290.P13027691390863527570

/-!
# A060291: Number of twin Harshads, including overlaps, whose sum is prime and where the 2nd Harshad is <= 10^n.

The programs for A060291, there is no canonical definition to state claims against.
-/

/-! ## A060291.P13493617320719351351

`Δ[xor(A000096(n+4), A002631(n+1))]`
-/

namespace A060291.P13493617320719351351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000096 (n + 4)) (A002631 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A060291.P13493617320719351351

/-!
# A060292: At least two unordered triples of positive numbers have product n and equal sums.

The programs for A060292, there is no canonical definition to state claims against.
-/

/-! ## A060292.P1957899721401066675

`lt[A226378(n), A034836(A028310(n))]`
-/

namespace A060292.P1957899721401066675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A060292.P1957899721401066675

/-! ## A060292.P8982110248331850888

`∩[A254836(n+1), A347451(n+1)]`
-/

namespace A060292.P8982110248331850888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A060292.P8982110248331850888

/-!
# A060293: Expected coupon collection numbers rounded up; i.e., if aiming to collect a set of n coupons, the expected number of random coupons required to receive the full set.

The programs for A060293, the canonical program `A060293.P16217448225578200051` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060293 has offset 0).

The definition of A060293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060293.P16217448225578200051

`ceil(n*∑[ceil(a(n-1))/n])` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060293

/-- `ceil(n*∑[ceil(a(n-1))/n])` -/
def P16217448225578200051.Spec : Prop :=
  ∀ n, P16217448225578200051.a n = A060293 n

theorem P16217448225578200051.correct : P16217448225578200051.Spec := by
  intro n
  simp only [A060293]

end A060293

/-! ## A060293.P5020837417908978253

`ceil(∑[∑[1/floor(n-a(n-1))]])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A060293.P5020837417908978253
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f2 =>
  1 / (⌊(n : ℚ) - f2 (n - 1)⌋ : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A060293.P5020837417908978253

namespace A060293

/-- `ceil(∑[∑[1/floor(n-a(n-1))]])` -/
def P5020837417908978253.Spec : Prop :=
  ∀ n, P5020837417908978253.a n = A060293 n

end A060293

/-! ## A060293.P5760677376309220759

`ceil(∑[∑[1/(n-ceil(a(n-1)))]])` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A060293.P5760677376309220759
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f2 =>
  1 / ((n : ℤ) - ⌈f2 (n - 1)⌉ : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A060293.P5760677376309220759

namespace A060293

/-- `ceil(∑[∑[1/(n-ceil(a(n-1)))]])` -/
def P5760677376309220759.Spec : Prop :=
  ∀ n, P5760677376309220759.a n = A060293 n

end A060293

/-! ## A060293.P14790653989250415924

`ceil(∑[∑[n/A103505(n)]])`
-/

namespace A060293.P14790653989250415924
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A103505 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A060293.P14790653989250415924

namespace A060293

/-- `ceil(∑[∑[n/A103505(n)]])` -/
def P14790653989250415924.Spec : Prop :=
  ∀ n, P14790653989250415924.a n = A060293 n

end A060293

/-! ## A060293.P11430348451178925747

`A326178(n)+A022819(n)`
-/

namespace A060293.P11430348451178925747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 n + A022819 n

end

end A060293.P11430348451178925747

namespace A060293

/-- `A326178(n)+A022819(n)` -/
def P11430348451178925747.Spec : Prop :=
  ∀ n, P11430348451178925747.a n = A060293 n

end A060293

/-! ## A060293.P18112105372994758911

`A071417(∑[n])`
-/

namespace A060293.P18112105372994758911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071417 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A060293.P18112105372994758911

namespace A060293

/-- `A071417(∑[n])` -/
def P18112105372994758911.Spec : Prop :=
  ∀ n, P18112105372994758911.a n = A060293 n

end A060293

/-! ## A060293.P2797745266674389000

`record[A071417(n)]`
-/

namespace A060293.P2797745266674389000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A060293.P2797745266674389000

namespace A060293

/-- `record[A071417(n)]` -/
def P2797745266674389000.Spec : Prop :=
  ∀ n, P2797745266674389000.a n = A060293 n

end A060293

/-! ## A060293.P220978321487316481

`A071417(A133263(n)-1)+n`
-/

namespace A060293.P220978321487316481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071417 (A133263 n - 1).toNat + (n : ℤ)

end

end A060293.P220978321487316481

namespace A060293

/-- `A071417(A133263(n)-1)+n` -/
def P220978321487316481.Spec : Prop :=
  ∀ n, P220978321487316481.a n = A060293 n

end A060293

/-! ## A060293.P16663328197646256199

`A071417(A000217(n))%Δ[A001296(n)]`
-/

namespace A060293.P16663328197646256199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071417 (A000217 n).toNat) (f1 (n + 1) - f1 n)

end

end A060293.P16663328197646256199

namespace A060293

/-- `A071417(A000217(n))%Δ[A001296(n)]` -/
def P16663328197646256199.Spec : Prop :=
  ∀ n, P16663328197646256199.a n = A060293 n

end A060293

/-! ## A060293.P6755328231780230893

`A071417(A000217(n))+A000918(n+1)%2`
-/

namespace A060293.P6755328231780230893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071417 (A000217 n).toNat + Int.tmod (A000918 (n + 1)) 2

end

end A060293.P6755328231780230893

namespace A060293

/-- `A071417(A000217(n))+A000918(n+1)%2` -/
def P6755328231780230893.Spec : Prop :=
  ∀ n, P6755328231780230893.a n = A060293 n

end A060293

/-!
# A060296: Number of regular convex polytopes in n-dimensional space, or -1 if the number is infinite.

The programs for A060296, the canonical program `A060296.P14595603154354389751` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A060296 has offset 0).

The definition of A060296 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A060296.P14595603154354389751

`a(n-1)` with `a(0)=1, a(1)=1, a(2)=-1, a(3)=5, a(4)=6, a(5)=3`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A060296

/-- `a(n-1)` -/
def P14595603154354389751.Spec : Prop :=
  ∀ n, P14595603154354389751.a n = A060296 n

theorem P14595603154354389751.correct : P14595603154354389751.Spec := by
  intro n
  simp only [A060296]

end A060296

/-!
# A060297: Periodic part of decimal expansion of n / next prime > n.

The programs for A060297, there is no canonical definition to state claims against.
-/

/-! ## A060297.P17854092634555088775

`(n+1)*A060282(A036234(n+1))`
-/

namespace A060297.P17854092634555088775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A060282 (A036234 (n + 1)).toNat

end

end A060297.P17854092634555088775

/-! ## A060297.P304787488757834718

`(n+1)*A060282(A000720(n+1)+1)`
-/

namespace A060297.P304787488757834718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A060282 (A000720 (n + 1) + 1).toNat

end

end A060297.P304787488757834718

/-!
# A060298: Number of powers x^y (x,y > 1) with n digits.

The programs for A060298, there is no canonical definition to state claims against.
-/

/-! ## A060298.P6480149443272128403

`∑[A121857(A018041(n)²)]`
-/

namespace A060298.P6480149443272128403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121857 (A018041 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A060298.P6480149443272128403

