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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A178601: a(n) = s(s(n)), where s(n) = sigma(n)-n = A001065(n).

The programs for A178601, the canonical program `A178601.P12753285223020669852` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178601 has offset 2).

The definition of A178601 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178601.P12753285223020669852

`A001065(A001065(n+2))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A178601

/-- `A001065(A001065(n+2))` -/
def P12753285223020669852.Spec : Prop :=
  ∀ n, P12753285223020669852.a n = A178601 (n + 2)

theorem P12753285223020669852.correct : P12753285223020669852.Spec := by
  intro n
  simp only [A178601, Nat.add_sub_cancel]

end A178601

/-! ## A178601.P6407953249165326509

`A091818(A173455(n+2))/2`
-/

namespace A178601.P6407953249165326509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091818 (A173455 (n + 2)).toNat : ℚ) / 2

end

end A178601.P6407953249165326509

namespace A178601

/-- `A091818(A173455(n+2))/2` -/
def P6407953249165326509.Spec : Prop :=
  ∀ n, P6407953249165326509.a n = (A178601 (n + 2) : ℚ)

end A178601

/-! ## A178601.P12958788036750090124

`∑{d}[A319699(2*(n+2)), A051953(#)]`
-/

namespace A178601.P12958788036750090124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319699 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A051953 d

end

end A178601.P12958788036750090124

namespace A178601

/-- `∑{d}[A319699(2*(n+2)), A051953(#)]` -/
def P12958788036750090124.Spec : Prop :=
  ∀ n, P12958788036750090124.a n = A178601 (n + 2)

end A178601

/-! ## A178601.P15142162424758776105

`A319699(A091818(n+2))`
-/

namespace A178601.P15142162424758776105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319699 (A091818 (n + 2)).toNat

end

end A178601.P15142162424758776105

namespace A178601

/-- `A319699(A091818(n+2))` -/
def P15142162424758776105.Spec : Prop :=
  ∀ n, P15142162424758776105.a n = A178601 (n + 2)

end A178601

/-! ## A178601.P18044241471038999447

`A319699(A062967(n+2)+1)`
-/

namespace A178601.P18044241471038999447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319699 (A062967 (n + 2) + 1).toNat

end

end A178601.P18044241471038999447

namespace A178601

/-- `A319699(A062967(n+2)+1)` -/
def P18044241471038999447.Spec : Prop :=
  ∀ n, P18044241471038999447.a n = A178601 (n + 2)

end A178601

/-! ## A178601.P9373891884409619780

`A319699(2*A173455(n+2))`
-/

namespace A178601.P9373891884409619780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319699 (2 * A173455 (n + 2)).toNat

end

end A178601.P9373891884409619780

namespace A178601

/-- `A319699(2*A173455(n+2))` -/
def P9373891884409619780.Spec : Prop :=
  ∀ n, P9373891884409619780.a n = A178601 (n + 2)

end A178601

/-! ## A178601.P6227173775964507129

`A319699(2*A319699(2*(n+2)))`
-/

namespace A178601.P6227173775964507129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319699 (2 * A319699 (2 * (n + 2))).toNat

end

end A178601.P6227173775964507129

namespace A178601

/-- `A319699(2*A319699(2*(n+2)))` -/
def P6227173775964507129.Spec : Prop :=
  ∀ n, P6227173775964507129.a n = A178601 (n + 2)

end A178601

/-! ## A178601.P12817396367941647746

`A319699(A389906(A319699(A389906(n+2))))`
-/

namespace A178601.P12817396367941647746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319699 (A389906 (A319699 (A389906 (n + 2)).toNat).toNat).toNat

end

end A178601.P12817396367941647746

namespace A178601

/-- `A319699(A389906(A319699(A389906(n+2))))` -/
def P12817396367941647746.Spec : Prop :=
  ∀ n, P12817396367941647746.a n = A178601 (n + 2)

end A178601

/-!
# A178602: Expansion of the polynomial (1+x^3)*(1+x^11)*(1+x^15)*(1+x^23).

The programs for A178602, there is no canonical definition to state claims against.
-/

/-! ## A178602.P10454423139791195827

`and(A178651(n), A326382(n+1))`
-/

namespace A178602.P10454423139791195827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A178651 n) (A326382 (n + 1))

end

end A178602.P10454423139791195827

/-! ## A178602.P9434993388150467118

`and(A178651(n), A199137(n))`
-/

namespace A178602.P9434993388150467118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A178651 n) (A199137 n)

end

end A178602.P9434993388150467118

/-! ## A178602.P8304844441179505874

`and(A118049(n), A178651(n))`
-/

namespace A178602.P8304844441179505874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118049 n) (A178651 n)

end

end A178602.P8304844441179505874

/-! ## A178602.P968130806596930223

`and(A178651(n), A216392(n+1))`
-/

namespace A178602.P968130806596930223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A178651 n) (A216392 (n + 1))

end

end A178602.P968130806596930223

/-! ## A178602.P16994977129224628969

`A082115(A037289(n+5))*A178651(n)`
-/

namespace A178602.P16994977129224628969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082115 (A037289 (n + 5)).toNat * A178651 n

end

end A178602.P16994977129224628969

/-!
# A178604: Increasing prime numbers p such that p does not divide the sum of the previous primes (p included) with the same property. We include the initial exception when p=3.

The programs for A178604, there is no canonical definition to state claims against.
-/

/-! ## A178604.P14442940076438813168

`record[p?[A319290(A248433(n+1))]]`
-/

namespace A178604.P14442940076438813168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319290 (A248433 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178604.P14442940076438813168

/-! ## A178604.P29038350304496742

`record[p?[A232748(n+1)+A225281(n+1)]]`
-/

namespace A178604.P29038350304496742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232748 (n + 1) + A225281 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178604.P29038350304496742

/-!
# A178605: a(n) = number of 6-digit primes with digit sum n, where n runs through the non-multiples of 3 in the range [2..53].

The programs for A178605, there is no canonical definition to state claims against.
-/

/-! ## A178605.P2698952648218744808

`A178701(n+86)`
-/

namespace A178605.P2698952648218744808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178701 (n + 86)

end

end A178605.P2698952648218744808

/-!
# A178606: Smallest prime > n!! (double factorial of n).

The programs for A178606, there is no canonical definition to state claims against.
-/

/-! ## A178606.P12704630050649703758

`A216466(n+1)+A057019(n+1)`
-/

namespace A178606.P12704630050649703758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216466 (n + 1) + A057019 (n + 1)

end

end A178606.P12704630050649703758

/-! ## A178606.P13518131382506725929

`A151800(A248809(∑[n]))`
-/

namespace A178606.P13518131382506725929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A248809 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A178606.P13518131382506725929

/-! ## A178606.P10749032519140932264

`A151800(Δ[A129981(n)])`
-/

namespace A178606.P10749032519140932264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (n + 1) - f1 n).toNat

end

end A178606.P10749032519140932264

/-! ## A178606.P9737532423722978914

`A151800(record[A092081(n)])`
-/

namespace A178606.P9737532423722978914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A178606.P9737532423722978914

/-! ## A178606.P2719526540013566834

`A151800(A006882(n+1))`
-/

namespace A178606.P2719526540013566834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A006882 (n + 1)).toNat

end

end A178606.P2719526540013566834

/-!
# A178607: Largest prime < n!! (double factorial of n).

The programs for A178607, there is no canonical definition to state claims against.
-/

/-! ## A178607.P15287195715600204099

`A006882(n+3)-A076198(n+3)`
-/

namespace A178607.P15287195715600204099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (n + 3) - A076198 (n + 3)

end

end A178607.P15287195715600204099

/-! ## A178607.P15888757649414823119

`A216466(n+3)-A076198(n+3)`
-/

namespace A178607.P15888757649414823119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216466 (n + 3) - A076198 (n + 3)

end

end A178607.P15888757649414823119

/-!
# A178608: Primes of the form (2*k^3 + 3*k^2 + k - 12)/6.

The programs for A178608, there is no canonical definition to state claims against.
-/

/-! ## A178608.P958971041795196781

`p?[∑[n²]-2]`
-/

namespace A178608.P958971041795196781
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178608.P958971041795196781

/-! ## A178608.P8178866553668375819

`record[p?[a(n-1)+n²]]` with `a(0)=3, a(1)=2, a(2)=3`
-/

namespace A178608.P8178866553668375819
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 3] fun n f2 =>
  f2 (n - 1) + n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178608.P8178866553668375819

/-! ## A178608.P3281847179647939265

`∏{p}[p?[a(n-1)+(n+1)²], #]` with `a(0)=1, a(1)=3`
-/

namespace A178608.P3281847179647939265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  f2 (n - 1) + (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A178608.P3281847179647939265

/-! ## A178608.P11782854160502853700

`abs(p?[a(n-1)+n²]-1)+1` with `a(0)=1, a(1)=-2, a(2)=3`
-/

namespace A178608.P11782854160502853700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 3] fun n f1 =>
  f1 (n - 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1| + 1

end

end A178608.P11782854160502853700

/-! ## A178608.P8285791252909484803

`or(1, p?[A000330(n)-2])`
-/

namespace A178608.P8285791252909484803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A178608.P8285791252909484803

/-!
# A178609: Largest k < n such that prime(n-k) + prime(n+k) = 2*prime(n).

The programs for A178609, there is no canonical definition to state claims against.
-/

/-! ## A178609.P14080449020249586173

`A054540(3*n+1)%A005940(A341949(n+6))`
-/

namespace A178609.P14080449020249586173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054540 (3 * n + 1)) (A005940 (A341949 (n + 6)).toNat)

end

end A178609.P14080449020249586173

/-!
# A178610: n-th semiprime minus difference between the prime indices of the two factors of n-th semiprime.

The programs for A178610, the canonical program `A178610.P3507936517445186257` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178610 has offset 1).

The definition of A178610 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, A176506, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A178610.P3507936517445186257

`A001358(n+1)-A176506(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A178610

/-- `A001358(n+1)-A176506(n+1)` -/
def P3507936517445186257.Spec : Prop :=
  ∀ n, P3507936517445186257.a n = A178610 (n + 1)

theorem P3507936517445186257.correct : P3507936517445186257.Spec := by
  intro n
  simp only [A178610, Nat.add_sub_cancel]

end A178610

/-! ## A178610.P10282874549651461402

`sqrt(A074985(n+1))-A176506(n+1)`
-/

namespace A178610.P10282874549651461402
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A074985 (n + 1) : ℝ) - (A176506 (n + 1) : ℝ)

end

end A178610.P10282874549651461402

namespace A178610

/-- `sqrt(A074985(n+1))-A176506(n+1)` -/
def P10282874549651461402.Spec : Prop :=
  ∀ n, P10282874549651461402.a n = (A178610 (n + 1) : ℝ)

end A178610

/-! ## A178610.P4348649708660753706

`A186621(n+1)+1-A176506(n+1)`
-/

namespace A178610.P4348649708660753706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + (1 - A176506 (n + 1))

end

end A178610.P4348649708660753706

namespace A178610

/-- `A186621(n+1)+1-A176506(n+1)` -/
def P4348649708660753706.Spec : Prop :=
  ∀ n, P4348649708660753706.a n = A178610 (n + 1)

theorem P4348649708660753706.correct : P4348649708660753706.Spec := by
  intro n
  simp only [A178610, Nat.add_sub_cancel, A178610.P4348649708660753706.a, A178610.P3507936517445186257.a, A001358, A001358.P632087320844056370.a, A176506, A176506.P10839499400759222980.a, A186621, A186621.P5089299060388261365.a, A088707, A088707.P7291141647877559993.a, A338912, A338912.P12481881722546763833.a, A338913, A338913.P16990008710777632167.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A084126, A084126.P17807045994218046963.f1, A084126.P17807045994218046963.a, A084127, A084127.P351147232306075665.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A006530, A006530.P13372528560459906635.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A178610

/-! ## A178610.P12211724432901382462

`A075818(n+1)/2-A176506(n+1)`
-/

namespace A178610.P12211724432901382462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (n + 1) : ℚ) / 2 - (A176506 (n + 1) : ℚ)

end

end A178610.P12211724432901382462

namespace A178610

/-- `A075818(n+1)/2-A176506(n+1)` -/
def P12211724432901382462.Spec : Prop :=
  ∀ n, P12211724432901382462.a n = (A178610 (n + 1) : ℚ)

theorem P12211724432901382462.correct : P12211724432901382462.Spec := by
  intro n
  simp only [A178610, Nat.add_sub_cancel, A178610.P12211724432901382462.a, A178610.P3507936517445186257.a, A001358, A001358.P632087320844056370.a, A075818, A075818.P6886237212657486754.a, A176506, A176506.P10839499400759222980.a, A088707, A088707.P7291141647877559993.a, A338912, A338912.P12481881722546763833.a, A338913, A338913.P16990008710777632167.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A084126, A084126.P17807045994218046963.f1, A084126.P17807045994218046963.a, A084127, A084127.P351147232306075665.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A006530, A006530.P13372528560459906635.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A178610

/-! ## A178610.P6902265818584198721

`lt[0, A064911(n+1)]+1-A176506(n+1)`
-/

namespace A178610.P6902265818584198721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ) - A176506 (n + 1)

end

end A178610.P6902265818584198721

namespace A178610

/-- `lt[0, A064911(n+1)]+1-A176506(n+1)` -/
def P6902265818584198721.Spec : Prop :=
  ∀ n, P6902265818584198721.a n = A178610 (n + 1)

end A178610

/-! ## A178610.P3873994909237977595

`eq[2, A001222(n+1)]+1-A176506(n+1)`
-/

namespace A178610.P3873994909237977595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) - A176506 (n + 1)

end

end A178610.P3873994909237977595

namespace A178610

/-- `eq[2, A001222(n+1)]+1-A176506(n+1)` -/
def P3873994909237977595.Spec : Prop :=
  ∀ n, P3873994909237977595.a n = A178610 (n + 1)

end A178610

/-! ## A178610.P17937338492773871522

`A001358(n+1)+A338912(n+1)-A338913(n+1)`
-/

namespace A178610.P17937338492773871522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) + (A338912 (n + 1) - A338913 (n + 1))

end

end A178610.P17937338492773871522

namespace A178610

/-- `A001358(n+1)+A338912(n+1)-A338913(n+1)` -/
def P17937338492773871522.Spec : Prop :=
  ∀ n, P17937338492773871522.a n = A178610 (n + 1)

theorem P17937338492773871522.correct : P17937338492773871522.Spec := by
  intro n
  simp only [A178610, Nat.add_sub_cancel, A178610.P17937338492773871522.a, A178610.P3507936517445186257.a, A001358, A001358.P632087320844056370.a, A176506, A176506.P10839499400759222980.a, A338912, A338912.P12481881722546763833.a, A338913, A338913.P16990008710777632167.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A084126, A084126.P17807045994218046963.f1, A084126.P17807045994218046963.a, A084127, A084127.P351147232306075665.a, A088707, A088707.P7291141647877559993.a, A006530, A006530.P13372528560459906635.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A070229, A070229.P5792893597916963980.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A178610

/-! ## A178610.P16348296345984670517

`A084126(n+1)*A084127(n+1)-A176506(n+1)`
-/

namespace A178610.P16348296345984670517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084126 (n + 1) * A084127 (n + 1) - A176506 (n + 1)

end

end A178610.P16348296345984670517

namespace A178610

/-- `A084126(n+1)*A084127(n+1)-A176506(n+1)` -/
def P16348296345984670517.Spec : Prop :=
  ∀ n, P16348296345984670517.a n = A178610 (n + 1)

end A178610

/-! ## A178610.P10425465206377269450

`eq[2, A226378(n)]-A176506(n+1)`
-/

namespace A178610.P10425465206377269450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A176506 (n + 1)

end

end A178610.P10425465206377269450

namespace A178610

/-- `eq[2, A226378(n)]-A176506(n+1)` -/
def P10425465206377269450.Spec : Prop :=
  ∀ n, P10425465206377269450.a n = A178610 (n + 1)

end A178610

/-! ## A178610.P1279892792920410714

`A176540(n+2)-A241917(A176540(n+2))`
-/

namespace A178610.P1279892792920410714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 2) - A241917 (A176540 (n + 2)).toNat

end

end A178610.P1279892792920410714

namespace A178610

/-- `A176540(n+2)-A241917(A176540(n+2))` -/
def P1279892792920410714.Spec : Prop :=
  ∀ n, P1279892792920410714.a n = A178610 (n + 1)

end A178610

/-! ## A178610.P854467571502280788

`record[A088739(n+1)]-A176506(n+1)`
-/

namespace A178610.P854467571502280788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A176506 (n + 1)

end

end A178610.P854467571502280788

namespace A178610

/-- `record[A088739(n+1)]-A176506(n+1)` -/
def P854467571502280788.Spec : Prop :=
  ∀ n, P854467571502280788.a n = A178610 (n + 1)

end A178610

/-!
# A178611: n-th semiprime minus sum of prime indices of the two factors of n-th semiprime.

The programs for A178611, the canonical program `A178611.P10185603375269794879` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178611 has offset 1).

The definition of A178611 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001358, A176504, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A178611.P10185603375269794879

`A001358(n+1)-A176504(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A178611

/-- `A001358(n+1)-A176504(n+1)` -/
def P10185603375269794879.Spec : Prop :=
  ∀ n, P10185603375269794879.a n = A178611 (n + 1)

theorem P10185603375269794879.correct : P10185603375269794879.Spec := by
  intro n
  simp only [A178611, Nat.add_sub_cancel]

end A178611

/-! ## A178611.P11653072988180429195

`sqrt(A074985(n+1))-A176504(n+1)`
-/

namespace A178611.P11653072988180429195
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A074985 (n + 1) : ℝ) - (A176504 (n + 1) : ℝ)

end

end A178611.P11653072988180429195

namespace A178611

/-- `sqrt(A074985(n+1))-A176504(n+1)` -/
def P11653072988180429195.Spec : Prop :=
  ∀ n, P11653072988180429195.a n = (A178611 (n + 1) : ℝ)

end A178611

/-! ## A178611.P3244327301128711823

`A001358(n+1)-(A338913(n+1)+A338912(n+1))`
-/

namespace A178611.P3244327301128711823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - (A338913 (n + 1) + A338912 (n + 1))

end

end A178611.P3244327301128711823

namespace A178611

/-- `A001358(n+1)-(A338913(n+1)+A338912(n+1))` -/
def P3244327301128711823.Spec : Prop :=
  ∀ n, P3244327301128711823.a n = A178611 (n + 1)

theorem P3244327301128711823.correct : P3244327301128711823.Spec := by
  intro n
  simp only [A178611, Nat.add_sub_cancel, A178611.P3244327301128711823.a, A178611.P10185603375269794879.a, A001358, A001358.P632087320844056370.a, A176504, A176504.P7149096578735921133.a, A338912, A338912.P12481881722546763833.a, A338913, A338913.P16990008710777632167.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A084126, A084126.P17807045994218046963.f1, A084126.P17807045994218046963.a, A084127, A084127.P351147232306075665.a, A088707, A088707.P7291141647877559993.a, A006530, A006530.P13372528560459906635.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A070229, A070229.P5792893597916963980.a, A072000, A072000.P3706059858088101648.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A178611

/-! ## A178611.P2026933791472560297

`A163831(A176193(n+1))`
-/

namespace A178611.P2026933791472560297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163831 (A176193 (n + 1)).toNat

end

end A178611.P2026933791472560297

namespace A178611

/-- `A163831(A176193(n+1))` -/
def P2026933791472560297.Spec : Prop :=
  ∀ n, P2026933791472560297.a n = A178611 (n + 1)

end A178611

/-! ## A178611.P17515522167398887612

`A163831(eq[2, A062502(n+1)])`
-/

namespace A178611.P17515522167398887612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163831 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178611.P17515522167398887612

namespace A178611

/-- `A163831(eq[2, A062502(n+1)])` -/
def P17515522167398887612.Spec : Prop :=
  ∀ n, P17515522167398887612.a n = A178611 (n + 1)

end A178611

/-! ## A178611.P9451295124346981905

`A178503(A001358(n+1))`
-/

namespace A178611.P9451295124346981905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178503 (A001358 (n + 1)).toNat

end

end A178611.P9451295124346981905

namespace A178611

/-- `A178503(A001358(n+1))` -/
def P9451295124346981905.Spec : Prop :=
  ∀ n, P9451295124346981905.a n = A178611 (n + 1)

end A178611

/-! ## A178611.P2698721861928301899

`A178503(A176540(n+2))`
-/

namespace A178611.P2698721861928301899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178503 (A176540 (n + 2)).toNat

end

end A178611.P2698721861928301899

namespace A178611

/-- `A178503(A176540(n+2))` -/
def P2698721861928301899.Spec : Prop :=
  ∀ n, P2698721861928301899.a n = A178611 (n + 1)

end A178611

/-! ## A178611.P9959842266772765898

`A178503(sqrt(A074985(n+1)))`
-/

namespace A178611.P9959842266772765898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178503 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

end

end A178611.P9959842266772765898

namespace A178611

/-- `A178503(sqrt(A074985(n+1)))` -/
def P9959842266772765898.Spec : Prop :=
  ∀ n, P9959842266772765898.a n = A178611 (n + 1)

end A178611

/-! ## A178611.P819596598853348118

`A178503(A186621(n+1)+1)`
-/

namespace A178611.P819596598853348118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178503 (A186621 (n + 1) + 1).toNat

end

end A178611.P819596598853348118

namespace A178611

/-- `A178503(A186621(n+1)+1)` -/
def P819596598853348118.Spec : Prop :=
  ∀ n, P819596598853348118.a n = A178611 (n + 1)

end A178611

/-! ## A178611.P6440624707470121848

`A178503(A088707(n+1)-1)`
-/

namespace A178611.P6440624707470121848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178503 (A088707 (n + 1) - 1).toNat

end

end A178611.P6440624707470121848

namespace A178611

/-- `A178503(A088707(n+1)-1)` -/
def P6440624707470121848.Spec : Prop :=
  ∀ n, P6440624707470121848.a n = A178611 (n + 1)

end A178611

/-! ## A178611.P7677712748343150009

`A178503(lt[0, A064911(n+1)]+1)`
-/

namespace A178611.P7677712748343150009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178503 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A178611.P7677712748343150009

namespace A178611

/-- `A178503(lt[0, A064911(n+1)]+1)` -/
def P7677712748343150009.Spec : Prop :=
  ∀ n, P7677712748343150009.a n = A178611 (n + 1)

end A178611

/-! ## A178611.P5578070320645628305

`A178503(eq[2, A050379(n+1)]+1)`
-/

namespace A178611.P5578070320645628305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178503 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A178611.P5578070320645628305

namespace A178611

/-- `A178503(eq[2, A050379(n+1)]+1)` -/
def P5578070320645628305.Spec : Prop :=
  ∀ n, P5578070320645628305.a n = A178611 (n + 1)

end A178611

/-! ## A178611.P15677824152342826640

`record[A088739(n+1)]-A176504(n+1)`
-/

namespace A178611.P15677824152342826640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A176504 (n + 1)

end

end A178611.P15677824152342826640

namespace A178611

/-- `record[A088739(n+1)]-A176504(n+1)` -/
def P15677824152342826640.Spec : Prop :=
  ∀ n, P15677824152342826640.a n = A178611 (n + 1)

end A178611

/-!
# A178612: Positive numbers of the form p^6 - 4*p^4*q + 4*p^2*q^2 + 4*q^3 (and p*q <> 0).

The programs for A178612, there is no canonical definition to state claims against.
-/

/-! ## A178612.P11231773365155137356

`A162823(∑[2^n])-A329693(n)`
-/

namespace A178612.P11231773365155137356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162823 (∑ j ∈ Finset.range (n + 1), f1 j) - A329693 n

end

end A178612.P11231773365155137356

/-!
# A178614: a(n) = prime(n)!/(n+1)!.

The programs for A178614, the canonical program `A178614.P3968478043835653884` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178614 has offset 1).

The definition of A178614 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178614.P12476827886718877664

`A177946(n+1)/(n+2)`
-/

namespace A178614.P12476827886718877664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177946 (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A178614.P12476827886718877664

namespace A178614

/-- `A177946(n+1)/(n+2)` -/
def P12476827886718877664.Spec : Prop :=
  ∀ n, P12476827886718877664.a n = (A178614 (n + 1) : ℚ)

end A178614

/-! ## A178614.P3968478043835653884

`A039716(n+1)/A000142(n+2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A178614

/-- `A039716(n+1)/A000142(n+2)` -/
def P3968478043835653884.Spec : Prop :=
  ∀ n, P3968478043835653884.a n = (A178614 (n + 1) : ℚ)

end A178614

/-! ## A178614.P12625234334240762008

`record[∑{p}[n+2, #!]]/(n+2)!`
-/

namespace A178614.P12625234334240762008
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorial p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (Nat.factorial (n + 2) : ℚ)

end

end A178614.P12625234334240762008

namespace A178614

/-- `record[∑{p}[n+2, #!]]/(n+2)!` -/
def P12625234334240762008.Spec : Prop :=
  ∀ n, P12625234334240762008.a n = (A178614 (n + 1) : ℚ)

end A178614

/-! ## A178614.P17730502727411786579

`record[∏{p}[n+2, #!]]/(n+2)!`
-/

namespace A178614.P17730502727411786579
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (Nat.factorial (n + 2) : ℚ)

end

end A178614.P17730502727411786579

namespace A178614

/-- `record[∏{p}[n+2, #!]]/(n+2)!` -/
def P17730502727411786579.Spec : Prop :=
  ∀ n, P17730502727411786579.a n = (A178614 (n + 1) : ℚ)

end A178614

/-! ## A178614.P14999184901980185169

`A000040(n+1)!/(n+2)!`
-/

namespace A178614.P14999184901980185169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000040 (n + 1)).toNat : ℚ) / (Nat.factorial (n + 2) : ℚ)

end

end A178614.P14999184901980185169

namespace A178614

/-- `A000040(n+1)!/(n+2)!` -/
def P14999184901980185169.Spec : Prop :=
  ∀ n, P14999184901980185169.a n = (A178614 (n + 1) : ℚ)

end A178614

/-!
# A178615: Smaller of two consecutive numbers that are not the sum of 3 nonzero squares.

The programs for A178615, there is no canonical definition to state claims against.
-/

/-! ## A178615.P1893833041671128561

`A004214(eq[1, Δ[A004214(n+1)]]+1)`
-/

namespace A178615.P1893833041671128561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A178615.P1893833041671128561

/-! ## A178615.P432246295650667286

`A004214(eq[1, A004214(n+2)-A004214(n+1)]+1)`
-/

namespace A178615.P432246295650667286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 2) - A004214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A178615.P432246295650667286

/-! ## A178615.P3865937007112721906

`∩[A023443(A004214(n+1)), A214328(n+1)]`
-/

namespace A178615.P3865937007112721906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A004214 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178615.P3865937007112721906

/-! ## A178615.P17155874540483094532

`eq[A025427(n+1)+A025427(n), A000007(n)]`
-/

namespace A178615.P17155874540483094532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (n + 1) + A025427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A178615.P17155874540483094532

/-! ## A178615.P13926776233496962683

`∩[A023443(A134739(n+1)^(1/3)), A214328(n+1)]`
-/

namespace A178615.P13926776233496962683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.roundAway ((A134739 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178615.P13926776233496962683

/-!
# A178616: Triangle by columns, odd columns of Pascal's triangle A007318, otherwise (1, 0, 0, 0, ...).

The programs for A178616, there is no canonical definition to state claims against.
-/

/-! ## A178616.P242853103411491759

`A007318(n)*A133872(A188341(n+1))`
-/

namespace A178616.P242853103411491759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A133872 (A188341 (n + 1)).toNat

end

end A178616.P242853103411491759

/-! ## A178616.P13664407717647883524

`A133872(A188341(n+1))*A206735(n)`
-/

namespace A178616.P13664407717647883524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A188341 (n + 1)).toNat * A206735 n

end

end A178616.P13664407717647883524

/-! ## A178616.P7989089994731657668

`A133084(n+1)*A133872(A188341(n+1))`
-/

namespace A178616.P7989089994731657668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133084 (n + 1) * A133872 (A188341 (n + 1)).toNat

end

end A178616.P7989089994731657668

/-! ## A178616.P6974263359240468060

`A007318(n)*A000035(A269955(n))`
-/

namespace A178616.P6974263359240468060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000035 (A269955 n).toNat

end

end A178616.P6974263359240468060

/-! ## A178616.P12831645485591095092

`A177990(n+1)*A184050(n)`
-/

namespace A178616.P12831645485591095092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177990 (n + 1) * A184050 n

end

end A178616.P12831645485591095092

/-!
# A178617: a(n) = n^4 - (n+1)^3.

The programs for A178617, the canonical program `A178617.P4739096274739236676` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178617 has offset 0).

The definition of A178617 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4-(n+1)^3` (program `A178617.P4739096274739236676`, by `A178617.P4739096274739236676.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A178617.P4739096274739236676

`n^4-(n+1)^3`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178617

/-- `n^4-(n+1)^3` -/
def P4739096274739236676.Spec : Prop :=
  ∀ n, P4739096274739236676.a n = A178617 n

theorem P4739096274739236676.correct : P4739096274739236676.Spec := by
  intro n
  simp only [A178617]

end A178617

/-! ## A178617.P314417484754906044

`∑[A084367(n)-A010004(n)]`
-/

namespace A178617.P314417484754906044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084367 n - A010004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178617.P314417484754906044

namespace A178617

/-- `∑[A084367(n)-A010004(n)]` -/
def P314417484754906044.Spec : Prop :=
  ∀ n, P314417484754906044.a n = A178617 n

end A178617

/-! ## A178617.P670783781562081067

`-(A068601(n+1)+A024002(n))`
-/

namespace A178617.P670783781562081067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A068601 (n + 1) + A024002 n)

end

end A178617.P670783781562081067

namespace A178617

/-- `-(A068601(n+1)+A024002(n))` -/
def P670783781562081067.Spec : Prop :=
  ∀ n, P670783781562081067.a n = A178617 n

theorem P670783781562081067.correct : P670783781562081067.Spec := by
  intro n
  simp only [A178617, Nat.add_sub_cancel, A178617.P670783781562081067.a, A178617.P4739096274739236676.a, A024002, A024002.P17733923598411083701.a, A068601, A068601.P18163521696996894258.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178617

/-! ## A178617.P2474927003778179864

`Δ[A267691(n)-∑[n]²]`
-/

namespace A178617.P2474927003778179864
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267691 n - (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178617.P2474927003778179864

namespace A178617

/-- `Δ[A267691(n)-∑[n]²]` -/
def P2474927003778179864.Spec : Prop :=
  ∀ n, P2474927003778179864.a n = A178617 n

end A178617

/-! ## A178617.P16451910391644137864

`Δ[∑[A085537(n)]-A000583(n)]`
-/

namespace A178617.P16451910391644137864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085537 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178617.P16451910391644137864

namespace A178617

/-- `Δ[∑[A085537(n)]-A000583(n)]` -/
def P16451910391644137864.Spec : Prop :=
  ∀ n, P16451910391644137864.a n = A178617 n

end A178617

/-! ## A178617.P13997516252994591334

`A121721(∑[4*(n+1)])`
-/

namespace A178617.P13997516252994591334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121721 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178617.P13997516252994591334

namespace A178617

/-- `A121721(∑[4*(n+1)])` -/
def P13997516252994591334.Spec : Prop :=
  ∀ n, P13997516252994591334.a n = A178617 n

end A178617

/-!
# A178619: Triangle T(n,k) with the coefficient of [x^k] of the series (1-x)^(n+1)* Sum_{j>=0} binomial(n + 4*j, 4*j)*x^j in row n, column k.

The programs for A178619, there is no canonical definition to state claims against.
-/

/-! ## A178619.P2023863112895425997

`A050345(A332644(n)+A103881(n+1))`
-/

namespace A178619.P2023863112895425997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050345 (A332644 n + A103881 (n + 1)).toNat

end

end A178619.P2023863112895425997

/-! ## A178619.P15136817821770434376

`or(A124927(n), A141696(A032559(n+1)))`
-/

namespace A178619.P15136817821770434376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124927 n) (A141696 (A032559 (n + 1)).toNat)

end

end A178619.P15136817821770434376

/-! ## A178619.P7407719423632841259

`or(A176488(n), A339941(A032559(n+1)))`
-/

namespace A178619.P7407719423632841259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A176488 n) (A339941 (A032559 (n + 1)).toNat)

end

end A178619.P7407719423632841259

/-! ## A178619.P1047408736892216665

`or(A176488(n), A339941(A043314(n+1)))`
-/

namespace A178619.P1047408736892216665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A176488 n) (A339941 (A043314 (n + 1)).toNat)

end

end A178619.P1047408736892216665

/-! ## A178619.P947465900669643714

`A072154(A128347(n+1)%A157400(n+1))`
-/

namespace A178619.P947465900669643714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (Int.tmod (A128347 (n + 1)) (A157400 (n + 1))).toNat

end

end A178619.P947465900669643714

/-!
# A178620: Sum of binary digits ( = sum of ternary digits ) of terms in A037301.

The programs for A178620, the canonical program `A178620.P15378923799213463569` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178620 has offset 0).

The definition of A178620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1290 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178620.P15378923799213463569

`A000120(A037301(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A178620

/-- `A000120(A037301(n+1))` -/
def P15378923799213463569.Spec : Prop :=
  ∀ n, P15378923799213463569.a n = A178620 n

theorem P15378923799213463569.correct : P15378923799213463569.Spec := by
  intro n
  simp only [A178620]

end A178620

/-! ## A178620.P9793621029949392964

`A000120(eq[0, A180017(n)])`
-/

namespace A178620.P9793621029949392964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178620.P9793621029949392964

namespace A178620

/-- `A000120(eq[0, A180017(n)])` -/
def P9793621029949392964.Spec : Prop :=
  ∀ n, P9793621029949392964.a n = A178620 n

end A178620

/-! ## A178620.P15923970389274902718

`A053735(A037301(2*n+1-n))`
-/

namespace A178620.P15923970389274902718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A037301 (2 * n + 1 - n)).toNat

end

end A178620.P15923970389274902718

namespace A178620

/-- `A053735(A037301(2*n+1-n))` -/
def P15923970389274902718.Spec : Prop :=
  ∀ n, P15923970389274902718.a n = A178620 n

end A178620

/-! ## A178620.P7169233733972390780

`A000120(eq[A000120(n), A053735(n)])`
-/

namespace A178620.P7169233733972390780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A178620.P7169233733972390780

namespace A178620

/-- `A000120(eq[A000120(n), A053735(n)])` -/
def P7169233733972390780.Spec : Prop :=
  ∀ n, P7169233733972390780.a n = A178620 n

end A178620

/-! ## A178620.P7355441068770953527

`A000120(eq[A092391(n), A230641(n)])`
-/

namespace A178620.P7355441068770953527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A178620.P7355441068770953527

namespace A178620

/-- `A000120(eq[A092391(n), A230641(n)])` -/
def P7355441068770953527.Spec : Prop :=
  ∀ n, P7355441068770953527.a n = A178620 n

end A178620

/-! ## A178620.P16899506933897393762

`A000120(eq[2*A000120(n), A096288(n)])`
-/

namespace A178620.P16899506933897393762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A178620.P16899506933897393762

namespace A178620

/-- `A000120(eq[2*A000120(n), A096288(n)])` -/
def P16899506933897393762.Spec : Prop :=
  ∀ n, P16899506933897393762.a n = A178620 n

end A178620

/-! ## A178620.P655602242636971696

`A053735(eq[2*A053735(n), A096288(n)])`
-/

namespace A178620.P655602242636971696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A178620.P655602242636971696

namespace A178620

/-- `A053735(eq[2*A053735(n), A096288(n)])` -/
def P655602242636971696.Spec : Prop :=
  ∀ n, P655602242636971696.a n = A178620 n

end A178620

/-! ## A178620.P13408427472557740264

`A000120(eq[A096288(n)/2, A000120(n)])`
-/

namespace A178620.P13408427472557740264
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096288 n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A178620.P13408427472557740264

namespace A178620

/-- `A000120(eq[A096288(n)/2, A000120(n)])` -/
def P13408427472557740264.Spec : Prop :=
  ∀ n, P13408427472557740264.a n = A178620 n

end A178620

/-! ## A178620.P5084177993719485480

`A053735(eq[A096288(n)/2, A053735(n)])`
-/

namespace A178620.P5084177993719485480
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096288 n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A178620.P5084177993719485480

namespace A178620

/-- `A053735(eq[A096288(n)/2, A053735(n)])` -/
def P5084177993719485480.Spec : Prop :=
  ∀ n, P5084177993719485480.a n = A178620 n

end A178620

/-! ## A178620.P7592633301171115172

`A000120(eq[A000120(n)+n, A230641(n)])`
-/

namespace A178620.P7592633301171115172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A178620.P7592633301171115172

namespace A178620

/-- `A000120(eq[A000120(n)+n, A230641(n)])` -/
def P7592633301171115172.Spec : Prop :=
  ∀ n, P7592633301171115172.a n = A178620 n

end A178620

/-! ## A178620.P7388313099141987019

`A000120(eq[n, A230641(n)-A000120(n)])`
-/

namespace A178620.P7388313099141987019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230641 n - A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178620.P7388313099141987019

namespace A178620

/-- `A000120(eq[n, A230641(n)-A000120(n)])` -/
def P7388313099141987019.Spec : Prop :=
  ∀ n, P7388313099141987019.a n = A178620 n

end A178620

/-! ## A178620.P14368925934629091197

`A053735(3*A037301(n+1))`
-/

namespace A178620.P14368925934629091197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (3 * A037301 (n + 1)).toNat

end

end A178620.P14368925934629091197

namespace A178620

/-- `A053735(3*A037301(n+1))` -/
def P14368925934629091197.Spec : Prop :=
  ∀ n, P14368925934629091197.a n = A178620 n

end A178620

/-!
# A178621: A (1, 2) Somos-4 sequence associated to the elliptic curve E: y^2 + x*y - y = x^3 - x.

The programs for A178621, the canonical program `A178621.P13581635777025571295` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178621 has offset 1).

The definition of A178621 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178621.P13581635777025571295

`(a(n-1)*a(n-3)+2*a(n-2)²)/a(n-4)` with `a(0)=1, a(1)=1, a(2)=-2, a(3)=5`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178621

/-- `(a(n-1)*a(n-3)+2*a(n-2)²)/a(n-4)` -/
def P13581635777025571295.Spec : Prop :=
  ∀ n, P13581635777025571295.a n = (A178621 (n + 1) : ℚ)

end A178621

/-!
# A178622: A (1, -2) Somos-4 sequence associated to the elliptic curve E: y^2 - 3*x*y - y = x^3 - x.

The programs for A178622, the canonical program `A178622.P8504727363817887011` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178622 has offset 0).

The definition of A178622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178622.P12813461180953849059

`A242107(2*n)`
-/

namespace A178622.P12813461180953849059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242107 (2 * n)

end

end A178622.P12813461180953849059

namespace A178622

/-- `A242107(2*n)` -/
def P12813461180953849059.Spec : Prop :=
  ∀ n, P12813461180953849059.a n = A178622 n

end A178622

/-! ## A178622.P8504727363817887011

`(a(n-1)*a(n-3)-2*a(n-2)²)/a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178622

/-- `(a(n-1)*a(n-3)-2*a(n-2)²)/a(n-4)` -/
def P8504727363817887011.Spec : Prop :=
  ∀ n, P8504727363817887011.a n = (A178622 n : ℚ)

end A178622

/-! ## A178622.P13443675700991387920

`(a(n-1)*a(n-3)-2*a(n-2)*a(n-2))/a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=1`
-/

namespace A178622.P13443675700991387920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 1, 2, 1] fun n a =>
  (a (n - 1) * a (n - 3) - 2 * a (n - 2) * a (n - 2)) / a (n - 4)

end

end A178622.P13443675700991387920

namespace A178622

/-- `(a(n-1)*a(n-3)-2*a(n-2)*a(n-2))/a(n-4)` -/
def P13443675700991387920.Spec : Prop :=
  ∀ n, P13443675700991387920.a n = (A178622 n : ℚ)

end A178622

/-! ## A178622.P5109115448302504716

`A242107(A004277(n))-A000007(n)`
-/

namespace A178622.P5109115448302504716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242107 (A004277 n).toNat - A000007 n

end

end A178622.P5109115448302504716

namespace A178622

/-- `A242107(A004277(n))-A000007(n)` -/
def P5109115448302504716.Spec : Prop :=
  ∀ n, P5109115448302504716.a n = A178622 n

end A178622

/-! ## A178622.P16896652355194250563

`A242107(A004277(n))-A112316(n)`
-/

namespace A178622.P16896652355194250563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242107 (A004277 n).toNat - A112316 n

end

end A178622.P16896652355194250563

namespace A178622

/-- `A242107(A004277(n))-A112316(n)` -/
def P16896652355194250563.Spec : Prop :=
  ∀ n, P16896652355194250563.a n = A178622 n

end A178622

/-! ## A178622.P12081425717581358910

`A242107(eq[1, A001511(n+1)])/A054977(n)`
-/

namespace A178622.P12081425717581358910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242107 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / (A054977 n : ℚ)

end

end A178622.P12081425717581358910

namespace A178622

/-- `A242107(eq[1, A001511(n+1)])/A054977(n)` -/
def P12081425717581358910.Spec : Prop :=
  ∀ n, P12081425717581358910.a n = (A178622 n : ℚ)

end A178622

/-! ## A178622.P15385731619010650292

`A242107(A004277(n))-a(A065357(n)²-1)` with `a(0)=0`
-/

namespace A178622.P15385731619010650292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A242107 (A004277 n).toNat - a (A065357 n ^ 2 - 1).toNat

end

end A178622.P15385731619010650292

namespace A178622

/-- `A242107(A004277(n))-a(A065357(n)²-1)` -/
def P15385731619010650292.Spec : Prop :=
  ∀ n, P15385731619010650292.a n = A178622 n

end A178622

/-! ## A178622.P15098947692269972722

`A242107(eq[1, A001511(n+1)])+n-A055643(n)`
-/

namespace A178622.P15098947692269972722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242107 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + ((n : ℤ) - A055643 n)

end

end A178622.P15098947692269972722

namespace A178622

/-- `A242107(eq[1, A001511(n+1)])+n-A055643(n)` -/
def P15098947692269972722.Spec : Prop :=
  ∀ n, P15098947692269972722.a n = A178622 n

end A178622

/-!
# A178623: Triangle T(n,m) read by rows: T(n,0)= prime(n); T(n,m)=1 if m>=1.

The programs for A178623, the canonical program `A178623.P14236001565579889142` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178623 has offset 0).

The definition of A178623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178623.P10476102726375971831

`A130296(lt[0, A143536(n+1)])`
-/

namespace A178623.P10476102726375971831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A178623.P10476102726375971831

namespace A178623

/-- `A130296(lt[0, A143536(n+1)])` -/
def P10476102726375971831.Spec : Prop :=
  ∀ n, P10476102726375971831.a n = A178623 n

end A178623

/-! ## A178623.P10602896972569109272

`A130296(eq[1, A143536(n+1)])`
-/

namespace A178623.P10602896972569109272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178623.P10602896972569109272

namespace A178623

/-- `A130296(eq[1, A143536(n+1)])` -/
def P10602896972569109272.Spec : Prop :=
  ∀ n, P10602896972569109272.a n = A178623 n

end A178623

/-! ## A178623.P14236001565579889142

`A130296(lt[1, A143544(n+1)])`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A178623

/-- `A130296(lt[1, A143544(n+1)])` -/
def P14236001565579889142.Spec : Prop :=
  ∀ n, P14236001565579889142.a n = A178623 n

theorem P14236001565579889142.correct : P14236001565579889142.Spec := by
  intro n
  simp only [A178623]

end A178623

/-! ## A178623.P3375120500575776001

`A130296(eq[2, A143544(n+1)])`
-/

namespace A178623.P3375120500575776001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A178623.P3375120500575776001

namespace A178623

/-- `A130296(eq[2, A143544(n+1)])` -/
def P3375120500575776001.Spec : Prop :=
  ∀ n, P3375120500575776001.a n = A178623 n

end A178623

/-! ## A178623.P9481987521786578675

`gcd(A175944(n+1), A391928(n))`
-/

namespace A178623.P9481987521786578675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A175944 (n + 1)) (A391928 n)

end

end A178623.P9481987521786578675

namespace A178623

/-- `gcd(A175944(n+1), A391928(n))` -/
def P9481987521786578675.Spec : Prop :=
  ∀ n, (P9481987521786578675.a n : ℤ) = A178623 n

end A178623

/-! ## A178623.P5138414887064109233

`gcd(1-A340753(n+1), A063905(n+1))`
-/

namespace A178623.P5138414887064109233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A340753 (n + 1)) (A063905 (n + 1))

end

end A178623.P5138414887064109233

namespace A178623

/-- `gcd(1-A340753(n+1), A063905(n+1))` -/
def P5138414887064109233.Spec : Prop :=
  ∀ n, (P5138414887064109233.a n : ℤ) = A178623 n

end A178623

/-! ## A178623.P11641980279122327432

`∏{p}[char[A014284(n+1)]*A175944(n+1), #]`
-/

namespace A178623.P11641980279122327432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A175944 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A178623.P11641980279122327432

namespace A178623

/-- `∏{p}[char[A014284(n+1)]*A175944(n+1), #]` -/
def P11641980279122327432.Spec : Prop :=
  ∀ n, (P11641980279122327432.a n : ℤ) = A178623 n

end A178623

/-! ## A178623.P6738166569256064897

`gcd(A000010(A340753(n+1)), A063905(n+1))`
-/

namespace A178623.P6738166569256064897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (A340753 (n + 1)).toNat) (A063905 (n + 1))

end

end A178623.P6738166569256064897

namespace A178623

/-- `gcd(A000010(A340753(n+1)), A063905(n+1))` -/
def P6738166569256064897.Spec : Prop :=
  ∀ n, (P6738166569256064897.a n : ℤ) = A178623 n

end A178623

/-!
# A178624: A (1,3) Somos-4 sequence associated to the elliptic curve E: y^2 + 2*x*y - y = x^3 - x.

The programs for A178624, the canonical program `A178624.P12848720179855279700` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178624 has offset 1).

The definition of A178624 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178624.P12848720179855279700

`(a(n-1)*a(n-3)+3*a(n-2)²)/a(n-4)` with `a(0)=1, a(1)=1, a(2)=-3, a(3)=11`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178624

/-- `(a(n-1)*a(n-3)+3*a(n-2)²)/a(n-4)` -/
def P12848720179855279700.Spec : Prop :=
  ∀ n, P12848720179855279700.a n = (A178624 (n + 1) : ℚ)

end A178624

/-!
# A178625: A (1,-1) Somos-4 sequence associated to the elliptic curve E : y^2 + x*y - y = x^3 + 3*x^2 - x.

The programs for A178625, the canonical program `A178625.P4803337718943360599` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178625 has offset 0).

The definition of A178625 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178625.P4803337718943360599

`(a(n-1)*a(n-3)-a(n-2)²)/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=-4`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178625

/-- `(a(n-1)*a(n-3)-a(n-2)²)/a(n-4)` -/
def P4803337718943360599.Spec : Prop :=
  ∀ n, P4803337718943360599.a n = (A178625 n : ℚ)

end A178625

/-!
# A178626: Convolution of Pell(n) and 10^n.

The programs for A178626, the canonical program `A178626.P17258030256803653362` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178626 has offset 1).

The definition of A178626 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178626.P17258030256803653362

`12*a(n-1)-19*a(n-2)-10*a(n-3)` with `a(0)=1, a(1)=12, a(2)=125`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178626

/-- `12*a(n-1)-19*a(n-2)-10*a(n-3)` -/
def P17258030256803653362.Spec : Prop :=
  ∀ n, P17258030256803653362.a n = A178626 (n + 1)

theorem P17258030256803653362.correct : P17258030256803653362.Spec := by
  intro n
  simp only [A178626, Nat.add_sub_cancel]

end A178626

/-! ## A178626.P14029358460334255269

`ogf(1/(1-12x+19x^2+10x^3))`
-/

namespace A178626.P14029358460334255269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -12, 19, 10] n

end

end A178626.P14029358460334255269

namespace A178626

/-- `ogf(1/(1-12x+19x^2+10x^3))` -/
def P14029358460334255269.Spec : Prop :=
  ∀ n, P14029358460334255269.a n = A178626 (n + 1)

end A178626

/-! ## A178626.P7020632141149758415

`∑[A001333(n)]+10*a(n-1)` with `a(0)=1`
-/

namespace A178626.P7020632141149758415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 10 * a (n - 1)

end

end A178626.P7020632141149758415

namespace A178626

/-- `∑[A001333(n)]+10*a(n-1)` -/
def P7020632141149758415.Spec : Prop :=
  ∀ n, P7020632141149758415.a n = A178626 (n + 1)

end A178626

/-! ## A178626.P6756206928324335537

`Δ[A024537(n)]+10*a(n-1)` with `a(0)=1`
-/

namespace A178626.P6756206928324335537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024537 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + 10 * a (n - 1)

end

end A178626.P6756206928324335537

namespace A178626

/-- `Δ[A024537(n)]+10*a(n-1)` -/
def P6756206928324335537.Spec : Prop :=
  ∀ n, P6756206928324335537.a n = A178626 (n + 1)

end A178626

/-! ## A178626.P2379225345845545228

`record[A106513(n)]+10*a(n-1)` with `a(0)=1`
-/

namespace A178626.P2379225345845545228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106513 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 10 * a (n - 1)

end

end A178626.P2379225345845545228

namespace A178626

/-- `record[A106513(n)]+10*a(n-1)` -/
def P2379225345845545228.Spec : Prop :=
  ∀ n, P2379225345845545228.a n = A178626 (n + 1)

end A178626

/-! ## A178626.P1349491938764809994

`A000129(n+1)+10*a(n-1)` with `a(0)=1`
-/

namespace A178626.P1349491938764809994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000129 (n + 1) + 10 * a (n - 1)

end

end A178626.P1349491938764809994

namespace A178626

/-- `A000129(n+1)+10*a(n-1)` -/
def P1349491938764809994.Spec : Prop :=
  ∀ n, P1349491938764809994.a n = A178626 (n + 1)

end A178626

/-! ## A178626.P3171659872579828294

`A215928(n+1)+10*a(n-1)` with `a(0)=1`
-/

namespace A178626.P3171659872579828294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A215928 (n + 1) + 10 * a (n - 1)

end

end A178626.P3171659872579828294

namespace A178626

/-- `A215928(n+1)+10*a(n-1)` -/
def P3171659872579828294.Spec : Prop :=
  ∀ n, P3171659872579828294.a n = A178626 (n + 1)

end A178626

/-! ## A178626.P14036250834966951277

`10*a(n-1)-A176981(n+2)` with `a(0)=1`
-/

namespace A178626.P14036250834966951277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  10 * a (n - 1) - A176981 (n + 2)

end

end A178626.P14036250834966951277

namespace A178626

/-- `10*a(n-1)-A176981(n+2)` -/
def P14036250834966951277.Spec : Prop :=
  ∀ n, P14036250834966951277.a n = A178626 (n + 1)

end A178626

/-!
# A178627: A (1,1) Somos-4 sequence associated to the elliptic curve E: y^2 + x*y - y = x^3 - x^2 + x and point (0,0).

The programs for A178627, the canonical program `A178627.P12612297649447766529` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178627 has offset 0).

The definition of A178627 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178627.P12612297649447766529

`(a(n-1)*a(n-3)+a(n-2)²)/a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=-1, a(4)=-2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178627

/-- `(a(n-1)*a(n-3)+a(n-2)²)/a(n-4)` -/
def P12612297649447766529.Spec : Prop :=
  ∀ n, P12612297649447766529.a n = (A178627 n : ℚ)

end A178627

/-!
# A178628: A (1,1) Somos-4 sequence associated to the elliptic curve E: y^2 - x*y - y = x^3 + x^2 + x.

The programs for A178628, the canonical program `A178628.P11469414281150696690` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178628 has offset 1).

The definition of A178628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178628.P11469414281150696690

`(a(n-1)*a(n-3)+a(n-2)²)/a(n-4)` with `a(0)=1, a(1)=1, a(2)=-1, a(3)=-4`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178628

/-- `(a(n-1)*a(n-3)+a(n-2)²)/a(n-4)` -/
def P11469414281150696690.Spec : Prop :=
  ∀ n, P11469414281150696690.a n = (A178628 (n + 1) : ℚ)

end A178628

/-! ## A178628.P17101684634845499763

`A057077(n)*A178417(n+1)`
-/

namespace A178628.P17101684634845499763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A178417 (n + 1)

end

end A178628.P17101684634845499763

namespace A178628

/-- `A057077(n)*A178417(n+1)` -/
def P17101684634845499763.Spec : Prop :=
  ∀ n, P17101684634845499763.a n = A178628 (n + 1)

end A178628

/-! ## A178628.P6189646707603584004

`A087960(n+3)*A178417(n+1)`
-/

namespace A178628.P6189646707603584004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (n + 3) * A178417 (n + 1)

end

end A178628.P6189646707603584004

namespace A178628

/-- `A087960(n+3)*A178417(n+1)` -/
def P6189646707603584004.Spec : Prop :=
  ∀ n, P6189646707603584004.a n = A178628 (n + 1)

end A178628

/-! ## A178628.P17361434375954031877

`A178417(n+1)/A057077(n+4)`
-/

namespace A178628.P17361434375954031877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178417 (n + 1) : ℚ) / (A057077 (n + 4) : ℚ)

end

end A178628.P17361434375954031877

namespace A178628

/-- `A178417(n+1)/A057077(n+4)` -/
def P17361434375954031877.Spec : Prop :=
  ∀ n, P17361434375954031877.a n = (A178628 (n + 1) : ℚ)

end A178628

/-! ## A178628.P6177464408771473394

`A033999(A000096(n))*A178417(n+1)`
-/

namespace A178628.P6177464408771473394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A000096 n).toNat * A178417 (n + 1)

end

end A178628.P6177464408771473394

namespace A178628

/-- `A033999(A000096(n))*A178417(n+1)` -/
def P6177464408771473394.Spec : Prop :=
  ∀ n, P6177464408771473394.a n = A178628 (n + 1)

end A178628

/-! ## A178628.P8255584093427357551

`A033999(A004526(n))*A178417(n+1)`
-/

namespace A178628.P8255584093427357551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A004526 n).toNat * A178417 (n + 1)

end

end A178628.P8255584093427357551

namespace A178628

/-- `A033999(A004526(n))*A178417(n+1)` -/
def P8255584093427357551.Spec : Prop :=
  ∀ n, P8255584093427357551.a n = A178628 (n + 1)

end A178628

/-! ## A178628.P1310542824889735808

`A178417(n+1)/A087960(A178405(n+1))`
-/

namespace A178628.P1310542824889735808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178417 (n + 1) : ℚ) / (A087960 (A178405 (n + 1)).toNat : ℚ)

end

end A178628.P1310542824889735808

namespace A178628

/-- `A178417(n+1)/A087960(A178405(n+1))` -/
def P1310542824889735808.Spec : Prop :=
  ∀ n, P1310542824889735808.a n = (A178628 (n + 1) : ℚ)

end A178628

/-!
# A178630: a(n) = 18*((10^n - 1)/9)^2.

The programs for A178630, the canonical program `A178630.P8228154791409845847` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178630 has offset 1).

The definition of A178630 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178630.P11848440079867366509

`18*((10^(n+1)-1)/9)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A178630.P11848440079867366509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  18 * (((10 ^ (n + 1) : ℤ) - 1 : ℚ) / 9) ^ 2

end

end A178630.P11848440079867366509

namespace A178630

/-- `18*((10^(n+1)-1)/9)²` -/
def P11848440079867366509.Spec : Prop :=
  ∀ n, P11848440079867366509.a n = (A178630 (n + 1) : ℚ)

end A178630

/-! ## A178630.P8228154791409845847

`((A002276(n)*10+1)*10^n+A002281(n))*10+8`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A178630

/-- `((A002276(n)*10+1)*10^n+A002281(n))*10+8` -/
def P8228154791409845847.Spec : Prop :=
  ∀ n, P8228154791409845847.a n = A178630 (n + 1)

theorem P8228154791409845847.correct : P8228154791409845847.Spec := by
  intro n
  simp only [A178630, Nat.add_sub_cancel]

end A178630

/-! ## A178630.P2926227698637281616

`∑[10*a(n-1)]²/2` with `a(0)=6`
-/

namespace A178630.P2926227698637281616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / 2

end

end A178630.P2926227698637281616

namespace A178630

/-- `∑[10*a(n-1)]²/2` -/
def P2926227698637281616.Spec : Prop :=
  ∀ n, P2926227698637281616.a n = (A178630 (n + 1) : ℚ)

end A178630

/-! ## A178630.P7008932949875104

`lcm(18, ∑[10*a(n-1)]²)` with `a(0)=3`
-/

namespace A178630.P7008932949875104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 18 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A178630.P7008932949875104

namespace A178630

/-- `lcm(18, ∑[10*a(n-1)]²)` -/
def P7008932949875104.Spec : Prop :=
  ∀ n, (P7008932949875104.a n : ℤ) = A178630 (n + 1)

end A178630

/-! ## A178630.P7448301471178630643

`A075415(n+1)/2`
-/

namespace A178630.P7448301471178630643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075415 (n + 1) : ℚ) / 2

end

end A178630.P7448301471178630643

namespace A178630

/-- `A075415(n+1)/2` -/
def P7448301471178630643.Spec : Prop :=
  ∀ n, P7448301471178630643.a n = (A178630 (n + 1) : ℚ)

end A178630

/-! ## A178630.P9986347440194023533

`A178633(n+1)/3`
-/

namespace A178630.P9986347440194023533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178633 (n + 1) : ℚ) / 3

end

end A178630.P9986347440194023533

namespace A178630

/-- `A178633(n+1)/3` -/
def P9986347440194023533.Spec : Prop :=
  ∀ n, P9986347440194023533.a n = (A178630 (n + 1) : ℚ)

end A178630

/-! ## A178630.P14950970213949784824

`A178635(n+1)/4`
-/

namespace A178630.P14950970213949784824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178635 (n + 1) : ℚ) / 4

end

end A178630.P14950970213949784824

namespace A178630

/-- `A178635(n+1)/4` -/
def P14950970213949784824.Spec : Prop :=
  ∀ n, P14950970213949784824.a n = (A178630 (n + 1) : ℚ)

end A178630

/-! ## A178630.P3420619214415116293

`Δ[2*∑[A075412(n)]]`
-/

namespace A178630.P3420619214415116293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075412 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178630.P3420619214415116293

namespace A178630

/-- `Δ[2*∑[A075412(n)]]` -/
def P3420619214415116293.Spec : Prop :=
  ∀ n, P3420619214415116293.a n = A178630 (n + 1)

end A178630

/-! ## A178630.P7708233402134655816

`Δ[∑[A075415(n)]/2]`
-/

namespace A178630.P7708233402134655816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075415 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178630.P7708233402134655816

namespace A178630

/-- `Δ[∑[A075415(n)]/2]` -/
def P7708233402134655816.Spec : Prop :=
  ∀ n, P7708233402134655816.a n = (A178630 (n + 1) : ℚ)

end A178630

/-! ## A178630.P14790093803307452038

`A002280(n+1)²/2`
-/

namespace A178630.P14790093803307452038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002280 (n + 1) ^ 2 : ℚ) / 2

end

end A178630.P14790093803307452038

namespace A178630

/-- `A002280(n+1)²/2` -/
def P14790093803307452038.Spec : Prop :=
  ∀ n, P14790093803307452038.a n = (A178630 (n + 1) : ℚ)

end A178630

/-!
# A178631: a(n) = 27*((10^n - 1)/9)^2.

The programs for A178631, the canonical program `A178631.P10205965919072706542` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178631 has offset 1).

The definition of A178631 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178631.P17043248041851176059

`27*((10^(n+1)-1)/9)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A178631.P17043248041851176059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  27 * (((10 ^ (n + 1) : ℤ) - 1 : ℚ) / 9) ^ 2

end

end A178631.P17043248041851176059

namespace A178631

/-- `27*((10^(n+1)-1)/9)²` -/
def P17043248041851176059.Spec : Prop :=
  ∀ n, P17043248041851176059.a n = (A178631 (n + 1) : ℚ)

end A178631

/-! ## A178631.P10205965919072706542

`((A002277(n)*10+2)*10^n+A002280(n))*10+7`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A178631

/-- `((A002277(n)*10+2)*10^n+A002280(n))*10+7` -/
def P10205965919072706542.Spec : Prop :=
  ∀ n, P10205965919072706542.a n = A178631 (n + 1)

theorem P10205965919072706542.correct : P10205965919072706542.Spec := by
  intro n
  simp only [A178631, Nat.add_sub_cancel]

end A178631

/-! ## A178631.P3374004808926354670

`6*∑[10*a(n-1)]²/2` with `a(0)=3`
-/

namespace A178631.P3374004808926354670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / 2

end

end A178631.P3374004808926354670

namespace A178631

/-- `6*∑[10*a(n-1)]²/2` -/
def P3374004808926354670.Spec : Prop :=
  ∀ n, P3374004808926354670.a n = (A178631 (n + 1) : ℚ)

end A178631

/-! ## A178631.P9465039226936216075

`A178633(n+1)/2`
-/

namespace A178631.P9465039226936216075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178633 (n + 1) : ℚ) / 2

end

end A178631.P9465039226936216075

namespace A178631

/-- `A178633(n+1)/2` -/
def P9465039226936216075.Spec : Prop :=
  ∀ n, P9465039226936216075.a n = (A178631 (n + 1) : ℚ)

end A178631

/-! ## A178631.P7530100868961115712

`A059988(n+1)/3`
-/

namespace A178631.P7530100868961115712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059988 (n + 1) : ℚ) / 3

end

end A178631.P7530100868961115712

namespace A178631

/-- `A059988(n+1)/3` -/
def P7530100868961115712.Spec : Prop :=
  ∀ n, P7530100868961115712.a n = (A178631 (n + 1) : ℚ)

end A178631

/-! ## A178631.P13992880954859908844

`∑[3*Δ[A075412(n)]]`
-/

namespace A178631.P13992880954859908844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075412 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178631.P13992880954859908844

namespace A178631

/-- `∑[3*Δ[A075412(n)]]` -/
def P13992880954859908844.Spec : Prop :=
  ∀ n, P13992880954859908844.a n = A178631 (n + 1)

end A178631

/-! ## A178631.P11568634201635928779

`∑[Δ[A059988(n)]/3]`
-/

namespace A178631.P11568634201635928779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059988 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178631.P11568634201635928779

namespace A178631

/-- `∑[Δ[A059988(n)]/3]` -/
def P11568634201635928779.Spec : Prop :=
  ∀ n, P11568634201635928779.a n = (A178631 (n + 1) : ℚ)

end A178631

/-! ## A178631.P10426967165726097174

`A002283(n+1)²/3`
-/

namespace A178631.P10426967165726097174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002283 (n + 1) ^ 2 : ℚ) / 3

end

end A178631.P10426967165726097174

namespace A178631

/-- `A002283(n+1)²/3` -/
def P10426967165726097174.Spec : Prop :=
  ∀ n, P10426967165726097174.a n = (A178631 (n + 1) : ℚ)

end A178631

/-! ## A178631.P2479456627726474359

`floor(A169601(n+1)/3)`
-/

namespace A178631.P2479456627726474359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A169601 (n + 1) : ℚ) / 3⌋

end

end A178631.P2479456627726474359

namespace A178631

/-- `floor(A169601(n+1)/3)` -/
def P2479456627726474359.Spec : Prop :=
  ∀ n, P2479456627726474359.a n = A178631 (n + 1)

end A178631

/-! ## A178631.P9965228964194624308

`A061433(2*(n+1))/3`
-/

namespace A178631.P9965228964194624308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061433 (2 * (n + 1)) : ℚ) / 3

end

end A178631.P9965228964194624308

namespace A178631

/-- `A061433(2*(n+1))/3` -/
def P9965228964194624308.Spec : Prop :=
  ∀ n, P9965228964194624308.a n = (A178631 (n + 1) : ℚ)

end A178631

/-!
# A178632: a(n) = 45*((10^n - 1)/9)^2.

The programs for A178632, the canonical program `A178632.P9409455296089398004` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178632 has offset 1).

The definition of A178632 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178632.P17549049397512777465

`45*((10^(n+1)-1)/9)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A178632.P17549049397512777465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  45 * (((10 ^ (n + 1) : ℤ) - 1 : ℚ) / 9) ^ 2

end

end A178632.P17549049397512777465

namespace A178632

/-- `45*((10^(n+1)-1)/9)²` -/
def P17549049397512777465.Spec : Prop :=
  ∀ n, P17549049397512777465.a n = (A178632 (n + 1) : ℚ)

end A178632

/-! ## A178632.P9409455296089398004

`(A002279(n)*10^(n+1)+A002278(n+1))*10+5`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A178632

/-- `(A002279(n)*10^(n+1)+A002278(n+1))*10+5` -/
def P9409455296089398004.Spec : Prop :=
  ∀ n, P9409455296089398004.a n = A178632 (n + 1)

theorem P9409455296089398004.correct : P9409455296089398004.Spec := by
  intro n
  simp only [A178632, Nat.add_sub_cancel]

end A178632

/-! ## A178632.P13186289830400098667

`∑[5*Δ[A075412(n)]]`
-/

namespace A178632.P13186289830400098667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075412 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178632.P13186289830400098667

namespace A178632

/-- `∑[5*Δ[A075412(n)]]` -/
def P13186289830400098667.Spec : Prop :=
  ∀ n, P13186289830400098667.a n = A178632 (n + 1)

end A178632

/-! ## A178632.P8104232069120681020

`A002279(2*(n+1))-∑[10*a(n-1)]` with `a(0)=10`
-/

namespace A178632.P8104232069120681020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002279 (2 * (n + 1)) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A178632.P8104232069120681020

namespace A178632

/-- `A002279(2*(n+1))-∑[10*a(n-1)]` -/
def P8104232069120681020.Spec : Prop :=
  ∀ n, P8104232069120681020.a n = A178632 (n + 1)

end A178632

/-! ## A178632.P8249789194997814907

`A178631(n+1)+A178630(n+1)`
-/

namespace A178632.P8249789194997814907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178631 (n + 1) + A178630 (n + 1)

end

end A178632.P8249789194997814907

namespace A178632

/-- `A178631(n+1)+A178630(n+1)` -/
def P8249789194997814907.Spec : Prop :=
  ∀ n, P8249789194997814907.a n = A178632 (n + 1)

end A178632

/-! ## A178632.P2646865769287997525

`A059988(n+1)-A075415(n+1)`
-/

namespace A178632.P2646865769287997525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059988 (n + 1) - A075415 (n + 1)

end

end A178632.P2646865769287997525

namespace A178632

/-- `A059988(n+1)-A075415(n+1)` -/
def P2646865769287997525.Spec : Prop :=
  ∀ n, P2646865769287997525.a n = A178632 (n + 1)

end A178632

/-! ## A178632.P1676386679601503080

`A178633(n+1)-A075412(n+1)`
-/

namespace A178632.P1676386679601503080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178633 (n + 1) - A075412 (n + 1)

end

end A178632.P1676386679601503080

namespace A178632

/-- `A178633(n+1)-A075412(n+1)` -/
def P1676386679601503080.Spec : Prop :=
  ∀ n, P1676386679601503080.a n = A178632 (n + 1)

end A178632

/-! ## A178632.P12761317015679613239

`A178634(n+1)-A178630(n+1)`
-/

namespace A178632.P12761317015679613239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178634 (n + 1) - A178630 (n + 1)

end

end A178632.P12761317015679613239

namespace A178632

/-- `A178634(n+1)-A178630(n+1)` -/
def P12761317015679613239.Spec : Prop :=
  ∀ n, P12761317015679613239.a n = A178632 (n + 1)

end A178632

/-! ## A178632.P11682906477938381409

`A178635(n+1)-A178631(n+1)`
-/

namespace A178632.P11682906477938381409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178635 (n + 1) - A178631 (n + 1)

end

end A178632.P11682906477938381409

namespace A178632

/-- `A178635(n+1)-A178631(n+1)` -/
def P11682906477938381409.Spec : Prop :=
  ∀ n, P11682906477938381409.a n = A178632 (n + 1)

end A178632

/-! ## A178632.P14788984877761804736

`A075415(n+1)+A002277(n+1)²`
-/

namespace A178632.P14788984877761804736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075415 (n + 1) + A002277 (n + 1) ^ 2

end

end A178632.P14788984877761804736

namespace A178632

/-- `A075415(n+1)+A002277(n+1)²` -/
def P14788984877761804736.Spec : Prop :=
  ∀ n, P14788984877761804736.a n = A178632 (n + 1)

end A178632

/-!
# A178633: a(n) = 54*((10^n - 1)/9)^2.

The programs for A178633, the canonical program `A178633.P4454025448965253150` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178633 has offset 1).

The definition of A178633 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178633.P14518977220177877695

`54*((10^(n+1)-1)/9)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A178633.P14518977220177877695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  54 * (((10 ^ (n + 1) : ℤ) - 1 : ℚ) / 9) ^ 2

end

end A178633.P14518977220177877695

namespace A178633

/-- `54*((10^(n+1)-1)/9)²` -/
def P14518977220177877695.Spec : Prop :=
  ∀ n, P14518977220177877695.a n = (A178633 (n + 1) : ℚ)

end A178633

/-! ## A178633.P4454025448965253150

`((A002280(n)*10+5)*10^n+A002277(n))*10+4`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A178633

/-- `((A002280(n)*10+5)*10^n+A002277(n))*10+4` -/
def P4454025448965253150.Spec : Prop :=
  ∀ n, P4454025448965253150.a n = A178633 (n + 1)

theorem P4454025448965253150.correct : P4454025448965253150.Spec := by
  intro n
  simp only [A178633, Nat.add_sub_cancel]

end A178633

/-! ## A178633.P6828189392749618796

`lcm(2, A178631(n+1))`
-/

namespace A178633.P6828189392749618796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A178631 (n + 1))

end

end A178633.P6828189392749618796

namespace A178633

/-- `lcm(2, A178631(n+1))` -/
def P6828189392749618796.Spec : Prop :=
  ∀ n, (P6828189392749618796.a n : ℤ) = A178633 (n + 1)

end A178633

/-! ## A178633.P15852253960345210088

`∑[6*Δ[A075412(n)]]`
-/

namespace A178633.P15852253960345210088
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075412 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178633.P15852253960345210088

namespace A178633

/-- `∑[6*Δ[A075412(n)]]` -/
def P15852253960345210088.Spec : Prop :=
  ∀ n, P15852253960345210088.a n = A178633 (n + 1)

end A178633

/-! ## A178633.P15104630795922532770

`or(2, 3*A178630(n+1))`
-/

namespace A178633.P15104630795922532770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (3 * A178630 (n + 1))

end

end A178633.P15104630795922532770

namespace A178633

/-- `or(2, 3*A178630(n+1))` -/
def P15104630795922532770.Spec : Prop :=
  ∀ n, P15104630795922532770.a n = A178633 (n + 1)

end A178633

/-! ## A178633.P1051928338883469482

`A178630(n+1)+A075415(n+1)`
-/

namespace A178633.P1051928338883469482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178630 (n + 1) + A075415 (n + 1)

end

end A178633.P1051928338883469482

namespace A178633

/-- `A178630(n+1)+A075415(n+1)` -/
def P1051928338883469482.Spec : Prop :=
  ∀ n, P1051928338883469482.a n = A178633 (n + 1)

end A178633

/-! ## A178633.P4533287480270055808

`A178632(n+1)+A075412(n+1)`
-/

namespace A178633.P4533287480270055808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178632 (n + 1) + A075412 (n + 1)

end

end A178633.P4533287480270055808

namespace A178633

/-- `A178632(n+1)+A075412(n+1)` -/
def P4533287480270055808.Spec : Prop :=
  ∀ n, P4533287480270055808.a n = A178633 (n + 1)

end A178633

/-! ## A178633.P11965643755336863137

`A168624(n+1)-A074992(n+1)`
-/

namespace A178633.P11965643755336863137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168624 (n + 1) - A074992 (n + 1)

end

end A178633.P11965643755336863137

namespace A178633

/-- `A168624(n+1)-A074992(n+1)` -/
def P11965643755336863137.Spec : Prop :=
  ∀ n, P11965643755336863137.a n = A178633 (n + 1)

end A178633

/-! ## A178633.P15538299023426592906

`A178634(n+1)-A075412(n+1)`
-/

namespace A178633.P15538299023426592906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178634 (n + 1) - A075412 (n + 1)

end

end A178633.P15538299023426592906

namespace A178633

/-- `A178634(n+1)-A075412(n+1)` -/
def P15538299023426592906.Spec : Prop :=
  ∀ n, P15538299023426592906.a n = A178633 (n + 1)

end A178633

/-! ## A178633.P14447405360811543124

`A178635(n+1)-A178630(n+1)`
-/

namespace A178633.P14447405360811543124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178635 (n + 1) - A178630 (n + 1)

end

end A178633.P14447405360811543124

namespace A178633

/-- `A178635(n+1)-A178630(n+1)` -/
def P14447405360811543124.Spec : Prop :=
  ∀ n, P14447405360811543124.a n = A178633 (n + 1)

end A178633

/-!
# A178634: a(n) = 63*((10^n - 1)/9)^2.

The programs for A178634, the canonical program `A178634.P7265615430456287864` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178634 has offset 1).

The definition of A178634 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178634.P1196019215360919514

`63*((10^(n+1)-1)/9)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A178634.P1196019215360919514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  63 * (((10 ^ (n + 1) : ℤ) - 1 : ℚ) / 9) ^ 2

end

end A178634.P1196019215360919514

namespace A178634

/-- `63*((10^(n+1)-1)/9)²` -/
def P1196019215360919514.Spec : Prop :=
  ∀ n, P1196019215360919514.a n = (A178634 (n + 1) : ℚ)

end A178634

/-! ## A178634.P7265615430456287864

`((A002281(n)*10+6)*10^n+A002276(n))*10+3`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A178634

/-- `((A002281(n)*10+6)*10^n+A002276(n))*10+3` -/
def P7265615430456287864.Spec : Prop :=
  ∀ n, P7265615430456287864.a n = A178634 (n + 1)

theorem P7265615430456287864.correct : P7265615430456287864.Spec := by
  intro n
  simp only [A178634, Nat.add_sub_cancel]

end A178634

/-! ## A178634.P5294715491328784034

`∑[7*Δ[A075412(n)]]`
-/

namespace A178634.P5294715491328784034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075412 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178634.P5294715491328784034

namespace A178634

/-- `∑[7*Δ[A075412(n)]]` -/
def P5294715491328784034.Spec : Prop :=
  ∀ n, P5294715491328784034.a n = A178634 (n + 1)

end A178634

/-! ## A178634.P636598079474469555

`A178633(n+1)+A075412(n+1)`
-/

namespace A178634.P636598079474469555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178633 (n + 1) + A075412 (n + 1)

end

end A178634.P636598079474469555

namespace A178634

/-- `A178633(n+1)+A075412(n+1)` -/
def P636598079474469555.Spec : Prop :=
  ∀ n, P636598079474469555.a n = A178634 (n + 1)

end A178634

/-! ## A178634.P8857076402784742849

`A178632(n+1)+A178630(n+1)`
-/

namespace A178634.P8857076402784742849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178632 (n + 1) + A178630 (n + 1)

end

end A178634.P8857076402784742849

namespace A178634

/-- `A178632(n+1)+A178630(n+1)` -/
def P8857076402784742849.Spec : Prop :=
  ∀ n, P8857076402784742849.a n = A178634 (n + 1)

end A178634

/-! ## A178634.P5576721515394375952

`A059988(n+1)-A178630(n+1)`
-/

namespace A178634.P5576721515394375952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059988 (n + 1) - A178630 (n + 1)

end

end A178634.P5576721515394375952

namespace A178634

/-- `A059988(n+1)-A178630(n+1)` -/
def P5576721515394375952.Spec : Prop :=
  ∀ n, P5576721515394375952.a n = A178634 (n + 1)

end A178634

/-! ## A178634.P16994159540460859568

`A178631(n+1)+2*A178630(n+1)`
-/

namespace A178634.P16994159540460859568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178631 (n + 1) + 2 * A178630 (n + 1)

end

end A178634.P16994159540460859568

namespace A178634

/-- `A178631(n+1)+2*A178630(n+1)` -/
def P16994159540460859568.Spec : Prop :=
  ∀ n, P16994159540460859568.a n = A178634 (n + 1)

end A178634

/-! ## A178634.P18418624484489130450

`A059988(n+1)-2*A075412(n+1)`
-/

namespace A178634.P18418624484489130450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059988 (n + 1) - 2 * A075412 (n + 1)

end

end A178634.P18418624484489130450

namespace A178634

/-- `A059988(n+1)-2*A075412(n+1)` -/
def P18418624484489130450.Spec : Prop :=
  ∀ n, P18418624484489130450.a n = A178634 (n + 1)

end A178634

/-! ## A178634.P8997701611280575186

`A178631(n+1)+A178635(n+1)/2`
-/

namespace A178634.P8997701611280575186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178631 (n + 1) : ℚ) + (A178635 (n + 1) : ℚ) / 2

end

end A178634.P8997701611280575186

namespace A178634

/-- `A178631(n+1)+A178635(n+1)/2` -/
def P8997701611280575186.Spec : Prop :=
  ∀ n, P8997701611280575186.a n = (A178634 (n + 1) : ℚ)

end A178634

/-! ## A178634.P15249279195747755632

`A178633(n+1)+A178630(n+1)/2`
-/

namespace A178634.P15249279195747755632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178633 (n + 1) : ℚ) + (A178630 (n + 1) : ℚ) / 2

end

end A178634.P15249279195747755632

namespace A178634

/-- `A178633(n+1)+A178630(n+1)/2` -/
def P15249279195747755632.Spec : Prop :=
  ∀ n, P15249279195747755632.a n = (A178634 (n + 1) : ℚ)

end A178634

/-!
# A178635: a(n) = 72*((10^n - 1)/9)^2.

The programs for A178635, the canonical program `A178635.P7995468334030923801` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178635 has offset 1).

The definition of A178635 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178635.P10184685180531685899

`72*((10^(n+1)-1)/9)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A178635.P10184685180531685899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  72 * (((10 ^ (n + 1) : ℤ) - 1 : ℚ) / 9) ^ 2

end

end A178635.P10184685180531685899

namespace A178635

/-- `72*((10^(n+1)-1)/9)²` -/
def P10184685180531685899.Spec : Prop :=
  ∀ n, P10184685180531685899.a n = (A178635 (n + 1) : ℚ)

end A178635

/-! ## A178635.P7995468334030923801

`((A002282(n)*10+7)*10^n+A002275(n))*10+2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A178635

/-- `((A002282(n)*10+7)*10^n+A002275(n))*10+2` -/
def P7995468334030923801.Spec : Prop :=
  ∀ n, P7995468334030923801.a n = A178635 (n + 1)

theorem P7995468334030923801.correct : P7995468334030923801.Spec := by
  intro n
  simp only [A178635, Nat.add_sub_cancel]

end A178635

/-! ## A178635.P787884565425616825

`Δ[2*∑[A075415(n)]]`
-/

namespace A178635.P787884565425616825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075415 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178635.P787884565425616825

namespace A178635

/-- `Δ[2*∑[A075415(n)]]` -/
def P787884565425616825.Spec : Prop :=
  ∀ n, P787884565425616825.a n = A178635 (n + 1)

end A178635

/-! ## A178635.P1282752859980494844

`record[2*A308900(n+2)²]`
-/

namespace A178635.P1282752859980494844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A308900 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178635.P1282752859980494844

namespace A178635

/-- `record[2*A308900(n+2)²]` -/
def P1282752859980494844.Spec : Prop :=
  ∀ n, P1282752859980494844.a n = A178635 (n + 1)

end A178635

/-! ## A178635.P14498564831376930995

`4*(A178630(n+1)+1)-4`
-/

namespace A178635.P14498564831376930995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A178630 (n + 1) + 1) - 4

end

end A178635.P14498564831376930995

namespace A178635

/-- `4*(A178630(n+1)+1)-4` -/
def P14498564831376930995.Spec : Prop :=
  ∀ n, P14498564831376930995.a n = A178635 (n + 1)

end A178635

/-! ## A178635.P7757205013405875095

`A075415(n+1)+A075415(n+1)`
-/

namespace A178635.P7757205013405875095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075415 (n + 1) + A075415 (n + 1)

end

end A178635.P7757205013405875095

namespace A178635

/-- `A075415(n+1)+A075415(n+1)` -/
def P7757205013405875095.Spec : Prop :=
  ∀ n, P7757205013405875095.a n = A178635 (n + 1)

end A178635

/-! ## A178635.P16887065116837866313

`A178634(n+1)+A075412(n+1)`
-/

namespace A178635.P16887065116837866313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178634 (n + 1) + A075412 (n + 1)

end

end A178635.P16887065116837866313

namespace A178635

/-- `A178634(n+1)+A075412(n+1)` -/
def P16887065116837866313.Spec : Prop :=
  ∀ n, P16887065116837866313.a n = A178635 (n + 1)

end A178635

/-! ## A178635.P17043138550198053078

`A178632(n+1)+A178631(n+1)`
-/

namespace A178635.P17043138550198053078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178632 (n + 1) + A178631 (n + 1)

end

end A178635.P17043138550198053078

namespace A178635

/-- `A178632(n+1)+A178631(n+1)` -/
def P17043138550198053078.Spec : Prop :=
  ∀ n, P17043138550198053078.a n = A178635 (n + 1)

end A178635

/-! ## A178635.P2692241454454672780

`A178633(n+1)+A178630(n+1)`
-/

namespace A178635.P2692241454454672780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178633 (n + 1) + A178630 (n + 1)

end

end A178635.P2692241454454672780

namespace A178635

/-- `A178633(n+1)+A178630(n+1)` -/
def P2692241454454672780.Spec : Prop :=
  ∀ n, P2692241454454672780.a n = A178635 (n + 1)

end A178635

/-! ## A178635.P112763283776067993

`A059988(n+1)-A075412(n+1)`
-/

namespace A178635.P112763283776067993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059988 (n + 1) - A075412 (n + 1)

end

end A178635.P112763283776067993

namespace A178635

/-- `A059988(n+1)-A075412(n+1)` -/
def P112763283776067993.Spec : Prop :=
  ∀ n, P112763283776067993.a n = A178635 (n + 1)

end A178635

/-!
# A178636: If n = Product (p_i^k_i) for i = 1, ..., j then a(n) is the sum of the divisors d that are not in the set {1, p_1^k_1, p_2^k_2, ..., p_j^k_j}.

The programs for A178636, the canonical program `A178636.P5283396583048980149` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178636 has offset 1).

The definition of A178636 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167515, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A178636.P5283396583048980149

`A167515(n+1)-1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A178636

/-- `A167515(n+1)-1` -/
def P5283396583048980149.Spec : Prop :=
  ∀ n, P5283396583048980149.a n = A178636 (n + 1)

theorem P5283396583048980149.correct : P5283396583048980149.Spec := by
  intro n
  simp only [A178636, Nat.add_sub_cancel]

end A178636

/-! ## A178636.P7065867739269319546

`A000203(n+1)-A159077(n+1)`
-/

namespace A178636.P7065867739269319546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A159077 (n + 1)

end

end A178636.P7065867739269319546

namespace A178636

/-- `A000203(n+1)-A159077(n+1)` -/
def P7065867739269319546.Spec : Prop :=
  ∀ n, P7065867739269319546.a n = A178636 (n + 1)

theorem P7065867739269319546.correct : P7065867739269319546.Spec := by
  intro n
  simp only [A178636, Nat.add_sub_cancel, A178636.P7065867739269319546.a, A178636.P5283396583048980149.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A159077, A159077.P14146349899783805996.a, A167515, A167515.P2764876312369213402.a, A008475, A008475.P12981903007955240503.f1, A008475.P12981903007955240503.a, A092509, A092509.P8072479887117834933.a, A014683, A014683.P4274130993241959458.a, A048671, A048671.P10271734858964489763.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178636

/-! ## A178636.P6398151025092530349

`∑{d}[n+1, #]-(∑{p}[n+1, #^val(n+1, #)]+1)`
-/

namespace A178636.P6398151025092530349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) p + 1 : ℕ) : ℤ)

end

end A178636.P6398151025092530349

namespace A178636

/-- `∑{d}[n+1, #]-(∑{p}[n+1, #^val(n+1, #)]+1)` -/
def P6398151025092530349.Spec : Prop :=
  ∀ n, P6398151025092530349.a n = A178636 (n + 1)

end A178636

/-! ## A178636.P10318828064669671323

`A039653(n+1)-A008475(n+1)`
-/

namespace A178636.P10318828064669671323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1) - A008475 (n + 1)

end

end A178636.P10318828064669671323

namespace A178636

/-- `A039653(n+1)-A008475(n+1)` -/
def P10318828064669671323.Spec : Prop :=
  ∀ n, P10318828064669671323.a n = A178636 (n + 1)

end A178636

/-! ## A178636.P18238771250894583537

`A000203(n+1)-(A008475(n+1)+1)`
-/

namespace A178636.P18238771250894583537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A008475 (n + 1) + 1)

end

end A178636.P18238771250894583537

namespace A178636

/-- `A000203(n+1)-(A008475(n+1)+1)` -/
def P18238771250894583537.Spec : Prop :=
  ∀ n, P18238771250894583537.a n = A178636 (n + 1)

theorem P18238771250894583537.correct : P18238771250894583537.Spec := by
  intro n
  simp only [A178636, Nat.add_sub_cancel, A178636.P18238771250894583537.a, A178636.P5283396583048980149.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008475, A008475.P12981903007955240503.f1, A008475.P12981903007955240503.a, A167515, A167515.P2764876312369213402.a, A092509, A092509.P8072479887117834933.a, A014683, A014683.P4274130993241959458.a, A048671, A048671.P10271734858964489763.a, A002944, A002944.P11615207776596987764.a, A003418, A003418.P6976248655893080794.a, A010051, A010051.P15078252821583414300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A178636

/-! ## A178636.P4433114137698099519

`A001065(n+1)+A086664(n+1)-1`
-/

namespace A178636.P4433114137698099519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A086664 (n + 1) - 1)

end

end A178636.P4433114137698099519

namespace A178636

/-- `A001065(n+1)+A086664(n+1)-1` -/
def P4433114137698099519.Spec : Prop :=
  ∀ n, P4433114137698099519.a n = A178636 (n + 1)

theorem P4433114137698099519.correct : P4433114137698099519.Spec := by
  intro n
  simp only [A178636, Nat.add_sub_cancel, A178636.P4433114137698099519.a, A178636.P5283396583048980149.a, A001065, A001065.P4097147489331274860.a, A086664, A086664.P5056455571502811925.a, A167515, A167515.P2764876312369213402.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008475, A008475.P12981903007955240503.f1, A008475.P12981903007955240503.a, A092509, A092509.P8072479887117834933.a, A014683, A014683.P4274130993241959458.a, A048671, A048671.P10271734858964489763.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178636

/-! ## A178636.P16013094929317294922

`A086665(n+1)-(A078771(n+1)+1)`
-/

namespace A178636.P16013094929317294922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086665 (n + 1) - (A078771 (n + 1) + 1)

end

end A178636.P16013094929317294922

namespace A178636

/-- `A086665(n+1)-(A078771(n+1)+1)` -/
def P16013094929317294922.Spec : Prop :=
  ∀ n, P16013094929317294922.a n = A178636 (n + 1)

theorem P16013094929317294922.correct : P16013094929317294922.Spec := by
  intro n
  simp only [A178636, Nat.add_sub_cancel, A178636.P16013094929317294922.a, A178636.P5283396583048980149.a, A078771, A078771.P8502218742761172896.a, A086665, A086665.P3185455482541912894.a, A167515, A167515.P2764876312369213402.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A008475, A008475.P12981903007955240503.f1, A008475.P12981903007955240503.a, A092509, A092509.P8072479887117834933.a, A014683, A014683.P4274130993241959458.a, A048671, A048671.P10271734858964489763.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178636

/-! ## A178636.P4444764343907664883

`A088580(n+1)-(A159077(n+1)+1)`
-/

namespace A178636.P4444764343907664883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A159077 (n + 1) + 1)

end

end A178636.P4444764343907664883

namespace A178636

/-- `A088580(n+1)-(A159077(n+1)+1)` -/
def P4444764343907664883.Spec : Prop :=
  ∀ n, P4444764343907664883.a n = A178636 (n + 1)

theorem P4444764343907664883.correct : P4444764343907664883.Spec := by
  intro n
  simp only [A178636, Nat.add_sub_cancel, A178636.P4444764343907664883.a, A178636.P5283396583048980149.a, A088580, A088580.P3089093194242277422.a, A159077, A159077.P14146349899783805996.a, A167515, A167515.P2764876312369213402.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008475, A008475.P12981903007955240503.f1, A008475.P12981903007955240503.a, A092509, A092509.P8072479887117834933.a, A014683, A014683.P4274130993241959458.a, A048671, A048671.P10271734858964489763.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178636

/-! ## A178636.P184936549755275887

`abs(A143348(n+1))-(A008475(n+1)+1)`
-/

namespace A178636.P184936549755275887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143348 (n + 1)| - (A008475 (n + 1) + 1)

end

end A178636.P184936549755275887

namespace A178636

/-- `abs(A143348(n+1))-(A008475(n+1)+1)` -/
def P184936549755275887.Spec : Prop :=
  ∀ n, P184936549755275887.a n = A178636 (n + 1)

end A178636

/-! ## A178636.P8164056636702630563

`A023889(n+1)+A035321(n+1)-A008475(n+1)`
-/

namespace A178636.P8164056636702630563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023889 (n + 1) + (A035321 (n + 1) - A008475 (n + 1))

end

end A178636.P8164056636702630563

namespace A178636

/-- `A023889(n+1)+A035321(n+1)-A008475(n+1)` -/
def P8164056636702630563.Spec : Prop :=
  ∀ n, P8164056636702630563.a n = A178636 (n + 1)

theorem P8164056636702630563.correct : P8164056636702630563.Spec := by
  intro n
  simp only [A178636, Nat.add_sub_cancel, A178636.P8164056636702630563.a, A178636.P5283396583048980149.a, A008475, A008475.P12981903007955240503.f1, A008475.P12981903007955240503.a, A023889, A023889.P17073280978498141665.a, A035321, A035321.P11913534039744093094.f1, A035321.P11913534039744093094.a, A167515, A167515.P2764876312369213402.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A023888, A023888.P17873500436284849145.a, A074591, A074591.P7866340962004254295.a, A092509, A092509.P8072479887117834933.a, A010055, A010055.P13747394931985969733.f1, A010055.P13747394931985969733.a, A014683, A014683.P4274130993241959458.a, A048671, A048671.P10271734858964489763.a, A002944, A002944.P11615207776596987764.a, A003418, A003418.P6976248655893080794.a, A010051, A010051.P15078252821583414300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A178636

/-! ## A178636.P1826456445009284294

`A023888(n+1)+A035321(n+1)-A159077(n+1)`
-/

namespace A178636.P1826456445009284294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023888 (n + 1) + (A035321 (n + 1) - A159077 (n + 1))

end

end A178636.P1826456445009284294

namespace A178636

/-- `A023888(n+1)+A035321(n+1)-A159077(n+1)` -/
def P1826456445009284294.Spec : Prop :=
  ∀ n, P1826456445009284294.a n = A178636 (n + 1)

theorem P1826456445009284294.correct : P1826456445009284294.Spec := by
  intro n
  simp only [A178636, Nat.add_sub_cancel, A178636.P1826456445009284294.a, A178636.P5283396583048980149.a, A023888, A023888.P17873500436284849145.a, A035321, A035321.P11913534039744093094.f1, A035321.P11913534039744093094.a, A159077, A159077.P14146349899783805996.a, A167515, A167515.P2764876312369213402.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008475, A008475.P12981903007955240503.f1, A008475.P12981903007955240503.a, A074591, A074591.P7866340962004254295.a, A010055, A010055.P13747394931985969733.f1, A010055.P13747394931985969733.a, A092509, A092509.P8072479887117834933.a, A014683, A014683.P4274130993241959458.a, A048671, A048671.P10271734858964489763.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178636

/-! ## A178636.P3818844650606490795

`A023443(A167515(n+1))`
-/

namespace A178636.P3818844650606490795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A167515 (n + 1)).toNat

end

end A178636.P3818844650606490795

namespace A178636

/-- `A023443(A167515(n+1))` -/
def P3818844650606490795.Spec : Prop :=
  ∀ n, P3818844650606490795.a n = A178636 (n + 1)

end A178636

/-!
# A178637: a(n) = sum of divisors d of n such that d is not equal to p^k where p = prime, k >=1.

The programs for A178637, the canonical program `A178637.P1570303736559003244` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178637 has offset 1).

The definition of A178637 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035321, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A178637.P1570303736559003244

`A035321(n+1)+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A178637

/-- `A035321(n+1)+1` -/
def P1570303736559003244.Spec : Prop :=
  ∀ n, P1570303736559003244.a n = A178637 (n + 1)

theorem P1570303736559003244.correct : P1570303736559003244.Spec := by
  intro n
  simp only [A178637, Nat.add_sub_cancel]

end A178637

/-! ## A178637.P14070716186481379754

`A000203(n+1)-A023889(n+1)`
-/

namespace A178637.P14070716186481379754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A023889 (n + 1)

end

end A178637.P14070716186481379754

namespace A178637

/-- `A000203(n+1)-A023889(n+1)` -/
def P14070716186481379754.Spec : Prop :=
  ∀ n, P14070716186481379754.a n = A178637 (n + 1)

theorem P14070716186481379754.correct : P14070716186481379754.Spec := by
  intro n
  simp only [A178637, Nat.add_sub_cancel, A178637.P14070716186481379754.a, A178637.P1570303736559003244.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A023889, A023889.P17073280978498141665.a, A035321, A035321.P11913534039744093094.f1, A035321.P11913534039744093094.a, A023888, A023888.P17873500436284849145.a, A074591, A074591.P7866340962004254295.a, A010055, A010055.P13747394931985969733.f1, A010055.P13747394931985969733.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178637

/-! ## A178637.P2832116876394202391

`∑{d}[n+1, A074591(#)]+1`
-/

namespace A178637.P2832116876394202391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074591 d + 1

end

end A178637.P2832116876394202391

namespace A178637

/-- `∑{d}[n+1, A074591(#)]+1` -/
def P2832116876394202391.Spec : Prop :=
  ∀ n, P2832116876394202391.a n = A178637 (n + 1)

end A178637

/-! ## A178637.P14741006431402727749

`∑{d}[n+1, #%(#^A001221(#))]+1`
-/

namespace A178637.P14741006431402727749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (d : ℤ) (SequenceMachineLib.roundAway ((d : ℚ) ^ (A001221 d : ℤ))) + 1

end

end A178637.P14741006431402727749

namespace A178637

/-- `∑{d}[n+1, #%(#^A001221(#))]+1` -/
def P14741006431402727749.Spec : Prop :=
  ∀ n, P14741006431402727749.a n = A178637 (n + 1)

end A178637

/-! ## A178637.P8650465683974249565

`A088580(n+1)-A023888(n+1)`
-/

namespace A178637.P8650465683974249565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - A023888 (n + 1)

end

end A178637.P8650465683974249565

namespace A178637

/-- `A088580(n+1)-A023888(n+1)` -/
def P8650465683974249565.Spec : Prop :=
  ∀ n, P8650465683974249565.a n = A178637 (n + 1)

theorem P8650465683974249565.correct : P8650465683974249565.Spec := by
  intro n
  simp only [A178637, Nat.add_sub_cancel, A178637.P8650465683974249565.a, A178637.P1570303736559003244.a, A023888, A023888.P17873500436284849145.a, A035321, A035321.P11913534039744093094.f1, A035321.P11913534039744093094.a, A088580, A088580.P3089093194242277422.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A074591, A074591.P7866340962004254295.a, A010055, A010055.P13747394931985969733.f1, A010055.P13747394931985969733.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178637

/-! ## A178637.P15073781165720399938

`A023890(n+1)-A284117(n+1)`
-/

namespace A178637.P15073781165720399938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (n + 1) - A284117 (n + 1)

end

end A178637.P15073781165720399938

namespace A178637

/-- `A023890(n+1)-A284117(n+1)` -/
def P15073781165720399938.Spec : Prop :=
  ∀ n, P15073781165720399938.a n = A178637 (n + 1)

end A178637

/-! ## A178637.P8337553326601966058

`A035322(n+1)+A074591(n+1)+1`
-/

namespace A178637.P8337553326601966058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035322 (n + 1) + (A074591 (n + 1) + 1)

end

end A178637.P8337553326601966058

namespace A178637

/-- `A035322(n+1)+A074591(n+1)+1` -/
def P8337553326601966058.Spec : Prop :=
  ∀ n, P8337553326601966058.a n = A178637 (n + 1)

theorem P8337553326601966058.correct : P8337553326601966058.Spec := by
  intro n
  simp only [A178637, Nat.add_sub_cancel, A178637.P8337553326601966058.a, A178637.P1570303736559003244.a, A035321, A035321.P11913534039744093094.f1, A035321.P11913534039744093094.a, A035322, A035322.P14766267427097087689.f1, A035322.P14766267427097087689.a, A074591, A074591.P7866340962004254295.a, A010055, A010055.P13747394931985969733.f1, A010055.P13747394931985969733.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178637

/-! ## A178637.P14709749017038493052

`A000203(n+1)+1-A023888(n+1)`
-/

namespace A178637.P14709749017038493052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (1 - A023888 (n + 1))

end

end A178637.P14709749017038493052

namespace A178637

/-- `A000203(n+1)+1-A023888(n+1)` -/
def P14709749017038493052.Spec : Prop :=
  ∀ n, P14709749017038493052.a n = A178637 (n + 1)

theorem P14709749017038493052.correct : P14709749017038493052.Spec := by
  intro n
  simp only [A178637, Nat.add_sub_cancel, A178637.P14709749017038493052.a, A178637.P1570303736559003244.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A023888, A023888.P17873500436284849145.a, A035321, A035321.P11913534039744093094.f1, A035321.P11913534039744093094.a, A074591, A074591.P7866340962004254295.a, A010055, A010055.P13747394931985969733.f1, A010055.P13747394931985969733.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178637

/-! ## A178637.P11125052489427511567

`A023891(n+1)+1-A284117(n+1)`
-/

namespace A178637.P11125052489427511567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023891 (n + 1) + (1 - A284117 (n + 1))

end

end A178637.P11125052489427511567

namespace A178637

/-- `A023891(n+1)+1-A284117(n+1)` -/
def P11125052489427511567.Spec : Prop :=
  ∀ n, P11125052489427511567.a n = A178637 (n + 1)

end A178637

/-! ## A178637.P7670823275721226286

`A001065(n+1)+1+n-A023889(n+1)`
-/

namespace A178637.P7670823275721226286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + 1 + (n : ℤ) - A023889 (n + 1)

end

end A178637.P7670823275721226286

namespace A178637

/-- `A001065(n+1)+1+n-A023889(n+1)` -/
def P7670823275721226286.Spec : Prop :=
  ∀ n, P7670823275721226286.a n = A178637 (n + 1)

theorem P7670823275721226286.correct : P7670823275721226286.Spec := by
  intro n
  simp only [A178637, Nat.add_sub_cancel, A178637.P7670823275721226286.a, A178637.P1570303736559003244.a, A001065, A001065.P4097147489331274860.a, A023889, A023889.P17073280978498141665.a, A035321, A035321.P11913534039744093094.f1, A035321.P11913534039744093094.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A023888, A023888.P17873500436284849145.a, A074591, A074591.P7866340962004254295.a, A010055, A010055.P13747394931985969733.f1, A010055.P13747394931985969733.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178637

/-! ## A178637.P16542622506317133687

`A064987(n+1)/(n+1)-A023889(n+1)`
-/

namespace A178637.P16542622506317133687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) - (A023889 (n + 1) : ℚ)

end

end A178637.P16542622506317133687

namespace A178637

/-- `A064987(n+1)/(n+1)-A023889(n+1)` -/
def P16542622506317133687.Spec : Prop :=
  ∀ n, P16542622506317133687.a n = (A178637 (n + 1) : ℚ)

end A178637

/-! ## A178637.P6558026073041878526

`2*(n+1)-A033879(n+1)-A023889(n+1)`
-/

namespace A178637.P6558026073041878526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A033879 (n + 1) - A023889 (n + 1)

end

end A178637.P6558026073041878526

namespace A178637

/-- `2*(n+1)-A033879(n+1)-A023889(n+1)` -/
def P6558026073041878526.Spec : Prop :=
  ∀ n, P6558026073041878526.a n = A178637 (n + 1)

theorem P6558026073041878526.correct : P6558026073041878526.Spec := by
  intro n
  simp only [A178637, Nat.add_sub_cancel, A178637.P6558026073041878526.a, A178637.P1570303736559003244.a, A023889, A023889.P17073280978498141665.a, A033879, A033879.P11735613842914743111.a, A035321, A035321.P11913534039744093094.f1, A035321.P11913534039744093094.a, A023888, A023888.P17873500436284849145.a, A033880, A033880.P6005875780263802708.a, A074591, A074591.P7866340962004254295.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A010055, A010055.P13747394931985969733.f1, A010055.P13747394931985969733.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178637

/-! ## A178637.P8999933997151695809

`A000593(n+1)+A146076(n+1)-A023889(n+1)`
-/

namespace A178637.P8999933997151695809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + (A146076 (n + 1) - A023889 (n + 1))

end

end A178637.P8999933997151695809

namespace A178637

/-- `A000593(n+1)+A146076(n+1)-A023889(n+1)` -/
def P8999933997151695809.Spec : Prop :=
  ∀ n, P8999933997151695809.a n = A178637 (n + 1)

theorem P8999933997151695809.correct : P8999933997151695809.Spec := by
  intro n
  simp only [A178637, Nat.add_sub_cancel, A178637.P8999933997151695809.a, A178637.P1570303736559003244.a, A000593, A000593.P13640346029616979906.a, A023889, A023889.P17073280978498141665.a, A035321, A035321.P11913534039744093094.f1, A035321.P11913534039744093094.a, A146076, A146076.P5513778411624192836.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A023888, A023888.P17873500436284849145.a, A038712, A038712.P3404197303190209645.a, A074591, A074591.P7866340962004254295.a, A010055, A010055.P13747394931985969733.f1, A010055.P13747394931985969733.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178637

/-! ## A178637.P10966048264874993506

`A079667(n+1)+A117004(n+1)-A023889(n+1)`
-/

namespace A178637.P10966048264874993506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079667 (n + 1) + (A117004 (n + 1) - A023889 (n + 1))

end

end A178637.P10966048264874993506

namespace A178637

/-- `A079667(n+1)+A117004(n+1)-A023889(n+1)` -/
def P10966048264874993506.Spec : Prop :=
  ∀ n, P10966048264874993506.a n = A178637 (n + 1)

end A178637

/-! ## A178637.P4124928406771481718

`A048250(n+1)+A162296(n+1)-A023889(n+1)`
-/

namespace A178637.P4124928406771481718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) + (A162296 (n + 1) - A023889 (n + 1))

end

end A178637.P4124928406771481718

namespace A178637

/-- `A048250(n+1)+A162296(n+1)-A023889(n+1)` -/
def P4124928406771481718.Spec : Prop :=
  ∀ n, P4124928406771481718.a n = A178637 (n + 1)

end A178637

/-! ## A178637.P16121256080596387719

`A159077(n+1)+A167515(n+1)-A023888(n+1)`
-/

namespace A178637.P16121256080596387719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159077 (n + 1) + (A167515 (n + 1) - A023888 (n + 1))

end

end A178637.P16121256080596387719

namespace A178637

/-- `A159077(n+1)+A167515(n+1)-A023888(n+1)` -/
def P16121256080596387719.Spec : Prop :=
  ∀ n, P16121256080596387719.a n = A178637 (n + 1)

theorem P16121256080596387719.correct : P16121256080596387719.Spec := by
  intro n
  simp only [A178637, Nat.add_sub_cancel, A178637.P16121256080596387719.a, A178637.P1570303736559003244.a, A023888, A023888.P17873500436284849145.a, A035321, A035321.P11913534039744093094.f1, A035321.P11913534039744093094.a, A159077, A159077.P14146349899783805996.a, A167515, A167515.P2764876312369213402.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008475, A008475.P12981903007955240503.f1, A008475.P12981903007955240503.a, A074591, A074591.P7866340962004254295.a, A010055, A010055.P13747394931985969733.f1, A010055.P13747394931985969733.a, A092509, A092509.P8072479887117834933.a, A014683, A014683.P4274130993241959458.a, A048671, A048671.P10271734858964489763.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178637

/-! ## A178637.P14919892076641940565

`A007913(n+1)+A326126(n+1)-A023889(n+1)`
-/

namespace A178637.P14919892076641940565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) + (A326126 (n + 1) - A023889 (n + 1))

end

end A178637.P14919892076641940565

namespace A178637

/-- `A007913(n+1)+A326126(n+1)-A023889(n+1)` -/
def P14919892076641940565.Spec : Prop :=
  ∀ n, P14919892076641940565.a n = A178637 (n + 1)

theorem P14919892076641940565.correct : P14919892076641940565.Spec := by
  intro n
  simp only [A178637, Nat.add_sub_cancel, A178637.P14919892076641940565.a, A178637.P1570303736559003244.a, A007913, A007913.P11359412940648999332.a, A023889, A023889.P17073280978498141665.a, A035321, A035321.P11913534039744093094.f1, A035321.P11913534039744093094.a, A326126, A326126.P126110095243043684.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A023888, A023888.P17873500436284849145.a, A059479, A059479.P17464652159649958448.a, A074591, A074591.P7866340962004254295.a, A010055, A010055.P13747394931985969733.f1, A010055.P13747394931985969733.a, A355264, A355264.P1842573885147649764.f1, A355264.P1842573885147649764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178637

/-! ## A178637.P16032430873914061501

`A011772(n+1)+A344765(n+1)-A023889(n+1)`
-/

namespace A178637.P16032430873914061501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (n + 1) + (A344765 (n + 1) - A023889 (n + 1))

end

end A178637.P16032430873914061501

namespace A178637

/-- `A011772(n+1)+A344765(n+1)-A023889(n+1)` -/
def P16032430873914061501.Spec : Prop :=
  ∀ n, P16032430873914061501.a n = A178637 (n + 1)

end A178637

/-! ## A178637.P6593018299655153249

`A184395(n+1)+A184396(n+1)-A023889(n+1)`
-/

namespace A178637.P6593018299655153249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184395 (n + 1) + (A184396 (n + 1) - A023889 (n + 1))

end

end A178637.P6593018299655153249

namespace A178637

/-- `A184395(n+1)+A184396(n+1)-A023889(n+1)` -/
def P6593018299655153249.Spec : Prop :=
  ∀ n, P6593018299655153249.a n = A178637 (n + 1)

end A178637

/-!
# A178638: a(n) is the number of divisors d of n such that d^k is not equal to n for any k >= 1.

The programs for A178638, the canonical program `A178638.P8804259736585962114` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178638 has offset 1).

The definition of A178638 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089723, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A178638.P8804259736585962114

`A000005(n+1)-A089723(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A178638

/-- `A000005(n+1)-A089723(n+1)` -/
def P8804259736585962114.Spec : Prop :=
  ∀ n, P8804259736585962114.a n = A178638 (n + 1)

theorem P8804259736585962114.correct : P8804259736585962114.Spec := by
  intro n
  simp only [A178638, Nat.add_sub_cancel]

end A178638

/-! ## A178638.P11210975694411533110

`A325765(n)-A259362(n+1)`
-/

namespace A178638.P11210975694411533110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 n - A259362 (n + 1)

end

end A178638.P11210975694411533110

namespace A178638

/-- `A325765(n)-A259362(n+1)` -/
def P11210975694411533110.Spec : Prop :=
  ∀ n, P11210975694411533110.a n = A178638 (n + 1)

end A178638

/-! ## A178638.P3088970942922711253

`Δ[A006218(n)]-A089723(n+1)`
-/

namespace A178638.P3088970942922711253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A089723 (n + 1)

end

end A178638.P3088970942922711253

namespace A178638

/-- `Δ[A006218(n)]-A089723(n+1)` -/
def P3088970942922711253.Spec : Prop :=
  ∀ n, P3088970942922711253.a n = A178638 (n + 1)

end A178638

/-! ## A178638.P7712937665429964451

`Δ[A054519(n)]-A089723(n+1)`
-/

namespace A178638.P7712937665429964451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A089723 (n + 1)

end

end A178638.P7712937665429964451

namespace A178638

/-- `Δ[A054519(n)]-A089723(n+1)` -/
def P7712937665429964451.Spec : Prop :=
  ∀ n, P7712937665429964451.a n = A178638 (n + 1)

end A178638

/-! ## A178638.P8208801329879622019

`n+1-A049820(n+1)-A089723(n+1)`
-/

namespace A178638.P8208801329879622019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A049820 (n + 1) - A089723 (n + 1)

end

end A178638.P8208801329879622019

namespace A178638

/-- `n+1-A049820(n+1)-A089723(n+1)` -/
def P8208801329879622019.Spec : Prop :=
  ∀ n, P8208801329879622019.a n = A178638 (n + 1)

theorem P8208801329879622019.correct : P8208801329879622019.Spec := by
  intro n
  simp only [A178638, Nat.add_sub_cancel, A178638.P8208801329879622019.a, A178638.P8804259736585962114.a, A000005, A000005.P16091521709108585461.a, A049820, A049820.P9428372222244335888.a, A089723, A089723.P9953764260173719197.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A052409, A052409.P7338948793466901153.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A051904, A051904.P9263651810596342710.a, A046523, A046523.P3407874444772092792.a, A071178, A071178.P17375525505785378954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178638

/-! ## A178638.P6048520945773457303

`A062249(n+1)-(n+1)-A089723(n+1)`
-/

namespace A178638.P6048520945773457303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062249 (n + 1) - (n + 1 : ℤ) - A089723 (n + 1)

end

end A178638.P6048520945773457303

namespace A178638

/-- `A062249(n+1)-(n+1)-A089723(n+1)` -/
def P6048520945773457303.Spec : Prop :=
  ∀ n, P6048520945773457303.a n = A178638 (n + 1)

theorem P6048520945773457303.correct : P6048520945773457303.Spec := by
  intro n
  simp only [A178638, Nat.add_sub_cancel, A178638.P6048520945773457303.a, A178638.P8804259736585962114.a, A000005, A000005.P16091521709108585461.a, A062249, A062249.P5473932307129171226.a, A089723, A089723.P9953764260173719197.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A052409, A052409.P7338948793466901153.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A051904, A051904.P9263651810596342710.a, A046523, A046523.P3407874444772092792.a, A071178, A071178.P17375525505785378954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178638

/-! ## A178638.P3926628081060932986

`∑{d}[n+1, ((A001221(#)+1)%2)!]-A089723(n+1)`
-/

namespace A178638.P3926628081060932986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), Nat.factorial (Int.tmod (A001221 d + 1) 2).toNat : ℕ) : ℤ) - A089723 (n + 1)

end

end A178638.P3926628081060932986

namespace A178638

/-- `∑{d}[n+1, ((A001221(#)+1)%2)!]-A089723(n+1)` -/
def P3926628081060932986.Spec : Prop :=
  ∀ n, P3926628081060932986.a n = A178638 (n + 1)

end A178638

/-! ## A178638.P1767141516791296390

`A032741(n+1)-A032741(A052409(n+1))`
-/

namespace A178638.P1767141516791296390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) - A032741 (A052409 (n + 1)).toNat

end

end A178638.P1767141516791296390

namespace A178638

/-- `A032741(n+1)-A032741(A052409(n+1))` -/
def P1767141516791296390.Spec : Prop :=
  ∀ n, P1767141516791296390.a n = A178638 (n + 1)

theorem P1767141516791296390.correct : P1767141516791296390.Spec := by
  intro n
  simp only [A178638, Nat.add_sub_cancel, A178638.P1767141516791296390.a, A178638.P8804259736585962114.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A052409, A052409.P7338948793466901153.a, A089723, A089723.P9953764260173719197.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A051904, A051904.P9263651810596342710.a, A046523, A046523.P3407874444772092792.a, A071178, A071178.P17375525505785378954.a, A006530, A006530.P13372528560459906635.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A178638

/-! ## A178638.P16402583441371897243

`A000005(n+1)-A000005(A253641(n+1))`
-/

namespace A178638.P16402583441371897243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A000005 (A253641 (n + 1)).toNat

end

end A178638.P16402583441371897243

namespace A178638

/-- `A000005(n+1)-A000005(A253641(n+1))` -/
def P16402583441371897243.Spec : Prop :=
  ∀ n, P16402583441371897243.a n = A178638 (n + 1)

end A178638

/-! ## A178638.P6736304114864504374

`A032741(n+1)-A032741(A253641(n+1))`
-/

namespace A178638.P6736304114864504374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1) - A032741 (A253641 (n + 1)).toNat

end

end A178638.P6736304114864504374

namespace A178638

/-- `A032741(n+1)-A032741(A253641(n+1))` -/
def P6736304114864504374.Spec : Prop :=
  ∀ n, P6736304114864504374.a n = A178638 (n + 1)

end A178638

/-! ## A178638.P7920461797407533280

`A006218(n+1)-(A089723(n+1)+A006218(n))`
-/

namespace A178638.P7920461797407533280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) - (A089723 (n + 1) + A006218 n)

end

end A178638.P7920461797407533280

namespace A178638

/-- `A006218(n+1)-(A089723(n+1)+A006218(n))` -/
def P7920461797407533280.Spec : Prop :=
  ∀ n, P7920461797407533280.a n = A178638 (n + 1)

end A178638

/-! ## A178638.P7220134828193756964

`∑{d}[n+1, A057427(#)]-A089723(n+1)`
-/

namespace A178638.P7220134828193756964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 d - A089723 (n + 1)

end

end A178638.P7220134828193756964

namespace A178638

/-- `∑{d}[n+1, A057427(#)]-A089723(n+1)` -/
def P7220134828193756964.Spec : Prop :=
  ∀ n, P7220134828193756964.a n = A178638 (n + 1)

end A178638

/-! ## A178638.P10531837776795143604

`abs(A089723(n+1)-∑{d}[n+1, A260232(#+3)%2])`
-/

namespace A178638.P10531837776795143604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A089723 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A260232 (d + 3)) 2|

end

end A178638.P10531837776795143604

namespace A178638

/-- `abs(A089723(n+1)-∑{d}[n+1, A260232(#+3)%2])` -/
def P10531837776795143604.Spec : Prop :=
  ∀ n, P10531837776795143604.a n = A178638 (n + 1)

end A178638

/-!
# A178640: Triangle T(n,k) with the coefficient [x^k] of the series (-1)^(n+1) * (x-1)^(n+1) * Sum_{j>=0} (5+8*j)^n*x^j in row n, column k.

The programs for A178640, there is no canonical definition to state claims against.
-/

/-! ## A178640.P7852215491605549121

`or(A018638(A022171(n)), A038245(n))`
-/

namespace A178640.P7852215491605549121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A018638 (A022171 n).toNat) (A038245 n)

end

end A178640.P7852215491605549121

/-! ## A178640.P9002631475279674722

`or(A038245(n), A144470(A022180(n)))`
-/

namespace A178640.P9002631475279674722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038245 n) (A144470 (A022180 n).toNat)

end

end A178640.P9002631475279674722

/-! ## A178640.P14124847280709622171

`or(A038245(n), A227117(A238743(n)))`
-/

namespace A178640.P14124847280709622171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038245 n) (A227117 (A238743 n).toNat)

end

end A178640.P14124847280709622171

/-!
# A178641: Primes p such that primorial(p)/2 + 2 is composite.

The programs for A178641, there is no canonical definition to state claims against.
-/

/-! ## A178641.P14834449141735534821

`A065091(lt[1, A139457(n+1)])`
-/

namespace A178641.P14834449141735534821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A178641.P14834449141735534821

/-! ## A178641.P768690910785156066

`A000040(lt[1, A139457(n+1)]+1)`
-/

namespace A178641.P768690910785156066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A178641.P768690910785156066

/-! ## A178641.P2473607108399620207

`A006005(lt[1, A139457(n+1)]+1)`
-/

namespace A178641.P2473607108399620207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A178641.P2473607108399620207

/-! ## A178641.P8373349535147622430

`A008578(lt[1, A139457(n+1)]+2)`
-/

namespace A178641.P8373349535147622430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A178641.P8373349535147622430

/-! ## A178641.P11489301768871846463

`A182986(lt[1, A139457(n+1)]+2)`
-/

namespace A178641.P11489301768871846463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A178641.P11489301768871846463

/-! ## A178641.P12686321291412168369

`A000040(comp[A067027(n+1)-1]+1)`
-/

namespace A178641.P12686321291412168369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067027 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A178641.P12686321291412168369

/-! ## A178641.P11855665581494971940

`A156037(lt[1, A139457(n+1)]+1)+1`
-/

namespace A178641.P11855665581494971940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) + 1

end

end A178641.P11855665581494971940

/-! ## A178641.P4623437983712980354

`A100484(lt[1, A139457(n+1)]+1)/2`
-/

namespace A178641.P4623437983712980354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139457 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) : ℚ) / 2

end

end A178641.P4623437983712980354

/-!
# A178642: Primes p such that primorial(p)/2 - 2 is not prime.

The programs for A178642, there is no canonical definition to state claims against.
-/

/-! ## A178642.P10372775178214506926

`p?[A179203(n)-A167707(n+1)]`
-/

namespace A178642.P10372775178214506926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179203 n - A167707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178642.P10372775178214506926

/-! ## A178642.P9973137936161720882

`p?[A284526(n+1)%A062860(n)]`
-/

namespace A178642.P9973137936161720882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284526 (n + 1)) (A062860 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178642.P9973137936161720882

/-! ## A178642.P14144462347897267218

`p?[A284526(n+4)%A179283(n+1)]`
-/

namespace A178642.P14144462347897267218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284526 (n + 4)) (A179283 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A178642.P14144462347897267218

/-!
# A178644: A (1,3) Somos-4 sequence associated to the elliptic curve E: y^2 + x*y - y = x^3 - x^2 + 2*x.

The programs for A178644, the canonical program `A178644.P10326504406402512983` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178644 has offset 0).

The definition of A178644 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A178644.P10326504406402512983

`(a(n-1)*a(n-3)+3*a(n-2)²)/a(n-4)` with `a(0)=1, a(1)=1, a(2)=-3, a(3)=-10`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178644

/-- `(a(n-1)*a(n-3)+3*a(n-2)²)/a(n-4)` -/
def P10326504406402512983.Spec : Prop :=
  ∀ n, P10326504406402512983.a n = (A178644 n : ℚ)

end A178644

/-! ## A178644.P719945331117108338

`A111059(n+1)-A257883(A111059(n+1))`
-/

namespace A178644.P719945331117108338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111059 (n + 1) - A257883 (A111059 (n + 1)).toNat

end

end A178644.P719945331117108338

namespace A178644

/-- `A111059(n+1)-A257883(A111059(n+1))` -/
def P719945331117108338.Spec : Prop :=
  ∀ n, P719945331117108338.a n = A178644 n

end A178644

/-!
# A178645: a(n) = sum of divisors d of n such that d^k is not equal to n for any k >= 1.

The programs for A178645, there is no canonical definition to state claims against.
-/

/-! ## A178645.P12647911113547449989

`A000203(n+1)-A175067(n+1)`
-/

namespace A178645.P12647911113547449989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A175067 (n + 1)

end

end A178645.P12647911113547449989

/-! ## A178645.P5703769968822694160

`A001065(n+1)-A175070(n+1)`
-/

namespace A178645.P5703769968822694160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A175070 (n + 1)

end

end A178645.P5703769968822694160

/-! ## A178645.P16634286331049319896

`A000203(n+1)-(A175070(n+1)+n+1)`
-/

namespace A178645.P16634286331049319896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A175070 (n + 1) + (n + 1 : ℤ))

end

end A178645.P16634286331049319896

/-! ## A178645.P5247522251504659298

`A001065(n+1)+n+1-A175067(n+1)`
-/

namespace A178645.P5247522251504659298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + ((n + 1 : ℤ) - A175067 (n + 1))

end

end A178645.P5247522251504659298

/-!
# A178646: a(n) = product of divisors d of n such that d^k is not equal to n for any k >= 1.

The programs for A178646, the canonical program `A178646.P15418868558420132707` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178646 has offset 1).

The definition of A178646 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A175068, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A178646.P15418868558420132707

`A007955(n+1)/A175068(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A178646

/-- `A007955(n+1)/A175068(n+1)` -/
def P15418868558420132707.Spec : Prop :=
  ∀ n, P15418868558420132707.a n = (A178646 (n + 1) : ℚ)

end A178646

/-! ## A178646.P7826901443489522812

`A007956(n+1)/A175069(n+1)`
-/

namespace A178646.P7826901443489522812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007956 (n + 1) : ℚ) / (A175069 (n + 1) : ℚ)

end

end A178646.P7826901443489522812

namespace A178646

/-- `A007956(n+1)/A175069(n+1)` -/
def P7826901443489522812.Spec : Prop :=
  ∀ n, P7826901443489522812.a n = (A178646 (n + 1) : ℚ)

end A178646

/-! ## A178646.P7563035268647465292

`sqrt(A062758(n+1))/A175068(n+1)`
-/

namespace A178646.P7563035268647465292
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062758 (n + 1) : ℝ) / (A175068 (n + 1) : ℝ)

end

end A178646.P7563035268647465292

namespace A178646

/-- `sqrt(A062758(n+1))/A175068(n+1)` -/
def P7563035268647465292.Spec : Prop :=
  ∀ n, P7563035268647465292.a n = (A178646 (n + 1) : ℝ)

end A178646

/-! ## A178646.P8303152135213345415

`sqrt(A277169(n+1))/A175069(n+1)`
-/

namespace A178646.P8303152135213345415
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A277169 (n + 1) : ℝ) / (A175069 (n + 1) : ℝ)

end

end A178646.P8303152135213345415

namespace A178646

/-- `sqrt(A277169(n+1))/A175069(n+1)` -/
def P8303152135213345415.Spec : Prop :=
  ∀ n, P8303152135213345415.a n = (A178646 (n + 1) : ℝ)

end A178646

/-! ## A178646.P1160199965531609836

`A007955(n+1)/((n+1)*A175069(n+1))`
-/

namespace A178646.P1160199965531609836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / ((n + 1 : ℤ) * A175069 (n + 1) : ℚ)

end

end A178646.P1160199965531609836

namespace A178646

/-- `A007955(n+1)/((n+1)*A175069(n+1))` -/
def P1160199965531609836.Spec : Prop :=
  ∀ n, P1160199965531609836.a n = (A178646 (n + 1) : ℚ)

end A178646

/-! ## A178646.P9542611473908239309

`sqrt(n+1)^A000005(n+1)/A175068(n+1)`
-/

namespace A178646.P9542611473908239309
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) ^ (A000005 (n + 1) : ℤ) / (A175068 (n + 1) : ℝ)

end

end A178646.P9542611473908239309

namespace A178646

/-- `sqrt(n+1)^A000005(n+1)/A175068(n+1)` -/
def P9542611473908239309.Spec : Prop :=
  ∀ n, P9542611473908239309.a n = (A178646 (n + 1) : ℝ)

end A178646

/-! ## A178646.P741625288255825753

`(n+1)^(A000005(C(n+1, n))/2)/A175068(n+1)`
-/

namespace A178646.P741625288255825753
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A000005 (Nat.choose (n + 1) n) : ℚ) / 2 : ℝ) / (A175068 (n + 1) : ℝ)

end

end A178646.P741625288255825753

namespace A178646

/-- `(n+1)^(A000005(C(n+1, n))/2)/A175068(n+1)` -/
def P741625288255825753.Spec : Prop :=
  ∀ n, P741625288255825753.a n = (A178646 (n + 1) : ℝ)

end A178646

/-! ## A178646.P7324631974418948236

`(n+1)^(A000005(2*n+1-n)/2)/A175068(n+1)`
-/

namespace A178646.P7324631974418948236
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A000005 (2 * n + 1 - n) : ℚ) / 2 : ℝ) / (A175068 (n + 1) : ℝ)

end

end A178646.P7324631974418948236

namespace A178646

/-- `(n+1)^(A000005(2*n+1-n)/2)/A175068(n+1)` -/
def P7324631974418948236.Spec : Prop :=
  ∀ n, P7324631974418948236.a n = (A178646 (n + 1) : ℝ)

end A178646

/-! ## A178646.P17440486160357837608

`A087652(n+1)/A003557(A175068(n+1))`
-/

namespace A178646.P17440486160357837608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087652 (n + 1) : ℚ) / (A003557 (A175068 (n + 1)).toNat : ℚ)

end

end A178646.P17440486160357837608

namespace A178646

/-- `A087652(n+1)/A003557(A175068(n+1))` -/
def P17440486160357837608.Spec : Prop :=
  ∀ n, P17440486160357837608.a n = (A178646 (n + 1) : ℚ)

end A178646

/-!
# A178647: Decimal expansion of erf(1/sqrt(2)): the probability of falling within +- 1 standard deviation of the mean, assuming a normal distribution.

The programs for A178647, there is no canonical definition to state claims against.
-/

/-! ## A178647.P12678389585620541075

`9-A379853(n)`
-/

namespace A178647.P12678389585620541075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A379853 n

end

end A178647.P12678389585620541075

/-!
# A178649: a(n) = product of nonsquarefree divisors of n.

The programs for A178649, the canonical program `A178649.P7773768711783204358` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178649 has offset 1).

The definition of A178649 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078599, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A178649.P7773768711783204358

`A007955(n+1)/A078599(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A178649

/-- `A007955(n+1)/A078599(n+1)` -/
def P7773768711783204358.Spec : Prop :=
  ∀ n, P7773768711783204358.a n = (A178649 (n + 1) : ℚ)

end A178649

/-! ## A178649.P2306096955329206014

`A007955(n+1)/A007955(A007947(n+1))`
-/

namespace A178649.P2306096955329206014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A007955 (A007947 (n + 1)).toNat : ℚ)

end

end A178649.P2306096955329206014

namespace A178649

/-- `A007955(n+1)/A007955(A007947(n+1))` -/
def P2306096955329206014.Spec : Prop :=
  ∀ n, P2306096955329206014.a n = (A178649 (n + 1) : ℚ)

end A178649

/-! ## A178649.P5543338392023752530

`∏{d}[n+1, gcd(#, A008683(#))]`
-/

namespace A178649.P5543338392023752530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Int.gcd (d : ℤ) (A008683 d)

end

end A178649.P5543338392023752530

namespace A178649

/-- `∏{d}[n+1, gcd(#, A008683(#))]` -/
def P5543338392023752530.Spec : Prop :=
  ∀ n, (P5543338392023752530.a n : ℤ) = A178649 (n + 1)

end A178649

/-! ## A178649.P4592266856736644965

`∏{d}[n+1, #]/A061537(∏{p}[n+1, #])`
-/

namespace A178649.P4592266856736644965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (A061537 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℚ)

end

end A178649.P4592266856736644965

namespace A178649

/-- `∏{d}[n+1, #]/A061537(∏{p}[n+1, #])` -/
def P4592266856736644965.Spec : Prop :=
  ∀ n, P4592266856736644965.a n = (A178649 (n + 1) : ℚ)

end A178649

/-! ## A178649.P15157085890046517552

`A087652(n+1)/A290479(n+1)`
-/

namespace A178649.P15157085890046517552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087652 (n + 1) : ℚ) / (A290479 (n + 1) : ℚ)

end

end A178649.P15157085890046517552

namespace A178649

/-- `A087652(n+1)/A290479(n+1)` -/
def P15157085890046517552.Spec : Prop :=
  ∀ n, P15157085890046517552.a n = (A178649 (n + 1) : ℚ)

end A178649

/-! ## A178649.P17571849405942969643

`A087652(n+1)/A087652(A007947(n+1))`
-/

namespace A178649.P17571849405942969643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087652 (n + 1) : ℚ) / (A087652 (A007947 (n + 1)).toNat : ℚ)

end

end A178649.P17571849405942969643

namespace A178649

/-- `A087652(n+1)/A087652(A007947(n+1))` -/
def P17571849405942969643.Spec : Prop :=
  ∀ n, P17571849405942969643.a n = (A178649 (n + 1) : ℚ)

end A178649

/-! ## A178649.P12996564301464862620

`A007955(n+1)/A007955(A007955(n+1)/A087652(n+1))`
-/

namespace A178649.P12996564301464862620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A007955 (SequenceMachineLib.roundAway ((A007955 (n + 1) : ℚ) / (A087652 (n + 1) : ℚ))).toNat : ℚ)

end

end A178649.P12996564301464862620

namespace A178649

/-- `A007955(n+1)/A007955(A007955(n+1)/A087652(n+1))` -/
def P12996564301464862620.Spec : Prop :=
  ∀ n, P12996564301464862620.a n = (A178649 (n + 1) : ℚ)

end A178649

/-! ## A178649.P6186668316065795692

`sqrt(A062758(n+1))/A078599(n+1)`
-/

namespace A178649.P6186668316065795692
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062758 (n + 1) : ℝ) / (A078599 (n + 1) : ℝ)

end

end A178649.P6186668316065795692

namespace A178649

/-- `sqrt(A062758(n+1))/A078599(n+1)` -/
def P6186668316065795692.Spec : Prop :=
  ∀ n, P6186668316065795692.a n = (A178649 (n + 1) : ℝ)

end A178649

/-!
# A178650: Triangle read by rows A051731 * A070909.

The programs for A178650, there is no canonical definition to state claims against.
-/

/-! ## A178650.P2563360014956277260

`A217232(A102480(n))+A144515(n)`
-/

namespace A178650.P2563360014956277260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217232 (A102480 n).toNat + A144515 n

end

end A178650.P2563360014956277260

/-! ## A178650.P5124673429813339137

`or(A011655(A230176(n+1)), A144515(n))`
-/

namespace A178650.P5124673429813339137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011655 (A230176 (n + 1)).toNat) (A144515 n)

end

end A178650.P5124673429813339137

/-! ## A178650.P2663802577177199908

`A275609(A049029(n+1)+3)`
-/

namespace A178650.P2663802577177199908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275609 (A049029 (n + 1) + 3).toNat

end

end A178650.P2663802577177199908

/-! ## A178650.P16940127302889027161

`∑{e}[A055910(n+4), A294254(n)%#]+1`
-/

namespace A178650.P16940127302889027161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055910 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Int.tmod (A294254 n) (Nat.factorization (f1 n).natAbs p : ℤ) + 1

end

end A178650.P16940127302889027161

/-! ## A178650.P4482232830287527525

`A127170(n+1)^A127170(A226234(n))`
-/

namespace A178650.P4482232830287527525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127170 (n + 1) : ℚ) ^ (A127170 (A226234 n).toNat : ℤ)

end

end A178650.P4482232830287527525

/-!
# A178651: Expansion of the polynomial (1+x^3)*(1+x^11)*(1+x^15)*(1+x^19)*(1+x^23)*(1+x^27)*(1+x^35).

The programs for A178651, there is no canonical definition to state claims against.
-/

/-! ## A178651.P5868066815257286506

`A358752(A338165(n+2))`
-/

namespace A178651.P5868066815257286506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358752 (A338165 (n + 2)).toNat

end

end A178651.P5868066815257286506

/-! ## A178651.P9558303323316163568

`A266786(or(A092196(n+1), A228875(n+1)))`
-/

namespace A178651.P9558303323316163568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266786 (Int.lor (A092196 (n + 1)) (A228875 (n + 1))).toNat

end

end A178651.P9558303323316163568

/-! ## A178651.P3867236808315603215

`and(A076478(A076438(2*(n+2))), A305936(n+1))`
-/

namespace A178651.P3867236808315603215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A076478 (A076438 (2 * (n + 2))).toNat) (A305936 (n + 1))

end

end A178651.P3867236808315603215

/-! ## A178651.P1167160781050358108

`A086009(A097458(n+5)%A322156(2*(n+2)))`
-/

namespace A178651.P1167160781050358108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086009 (Int.tmod (A097458 (n + 5)) (A322156 (2 * (n + 2)))).toNat

end

end A178651.P1167160781050358108

/-! ## A178651.P8543090389344748553

`A173861(xor(ceil(n/2), ∏{d}[n+1, #]))`
-/

namespace A178651.P8543090389344748553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173861 (Int.xor ⌈(n : ℚ) / 2⌉ ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)).toNat

end

end A178651.P8543090389344748553

/-!
# A178652: Primes of the form 4^k + 13^2.

The programs for A178652, there is no canonical definition to state claims against.
-/

/-! ## A178652.P9281859985982788354

`A000302(A178653(n+1))+169`
-/

namespace A178652.P9281859985982788354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A178653 (n + 1)).toNat + 169

end

end A178652.P9281859985982788354

/-!
# A178653: Numbers k that 4^k + 13^2 is prime.

The programs for A178653, there is no canonical definition to state claims against.
-/

/-! ## A178653.P5052847208688764670

`val(Δ[A178652(n+1)], 4)`
-/

namespace A178653.P5052847208688764670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178652 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 4

end

end A178653.P5052847208688764670

/-! ## A178653.P7484640988959826910

`or(1, A069769(A069784(2*n+1)))`
-/

namespace A178653.P7484640988959826910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A069769 (A069784 (2 * n + 1)).toNat)

end

end A178653.P7484640988959826910

/-! ## A178653.P1625026535484650479

`eq[gcd(9, A266183(n+1)), A005811(n)]`
-/

namespace A178653.P1625026535484650479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 9 (A266183 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A178653.P1625026535484650479

/-! ## A178653.P6553577135712857883

`∑[A034444(∑[A322364(n)])]`
-/

namespace A178653.P6553577135712857883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322364 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178653.P6553577135712857883

/-! ## A178653.P17688584920238386482

`∑[A037445(∑[A322364(n)])]`
-/

namespace A178653.P17688584920238386482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322364 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178653.P17688584920238386482

/-!
# A178654: Palindromic primes of the form (q//R(q))/11 where q is an emirp, R() denotes digit-reversal and // concatenation.

The programs for A178654, there is no canonical definition to state claims against.
-/

/-! ## A178654.P14719571403869619211

`∩[A002385(n+1), A345905(n+1)]`
-/

namespace A178654.P14719571403869619211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178654.P14719571403869619211

/-! ## A178654.P8529499999874899153

`∩[A340252(n+1), A345905(n+1)]`
-/

namespace A178654.P8529499999874899153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178654.P8529499999874899153

/-! ## A178654.P18147437362595091987

`∩[A324989(n+1), A345905(n+1)]`
-/

namespace A178654.P18147437362595091987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178654.P18147437362595091987

/-! ## A178654.P2553382272841332843

`∩[A327325(n+1), A345905(n+1)]`
-/

namespace A178654.P2553382272841332843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178654.P2553382272841332843

/-! ## A178654.P8565417053786060663

`∩[A345905(n+1), A363246(n+1)]`
-/

namespace A178654.P8565417053786060663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178654.P8565417053786060663

/-! ## A178654.P4359017642728224075

`∩[A083137(n+1), A345905(n+1)]`
-/

namespace A178654.P4359017642728224075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178654.P4359017642728224075

/-! ## A178654.P10318704356264301542

`∩[A169829(n+1), A345905(n+1)]`
-/

namespace A178654.P10318704356264301542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178654.P10318704356264301542

/-!
# A178655: Triangle which contains the first differences of the Catalan triangle A001263 constructed along rows.

The programs for A178655, the canonical program `A178655.P14680724150822790654` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178655 has offset 0).

The definition of A178655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178655.P14680724150822790654

`A131198(n)-A090181(A028310(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A178655

/-- `A131198(n)-A090181(A028310(n))` -/
def P14680724150822790654.Spec : Prop :=
  ∀ n, P14680724150822790654.a n = A178655 n

theorem P14680724150822790654.correct : P14680724150822790654.Spec := by
  intro n
  simp only [A178655]

end A178655

/-! ## A178655.P7666055638001714586

`A000038(n)+Δ[A090181(n)]`
-/

namespace A178655.P7666055638001714586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (f1 (n + 1) - f1 n)

end

end A178655.P7666055638001714586

namespace A178655

/-- `A000038(n)+Δ[A090181(n)]` -/
def P7666055638001714586.Spec : Prop :=
  ∀ n, P7666055638001714586.a n = A178655 n

end A178655

/-! ## A178655.P3223275668392277227

`Δ[A090181(n)+2%A185869(n+1)]`
-/

namespace A178655.P3223275668392277227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 n + Int.tmod 2 (A185869 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178655.P3223275668392277227

namespace A178655

/-- `Δ[A090181(n)+2%A185869(n+1)]` -/
def P3223275668392277227.Spec : Prop :=
  ∀ n, P3223275668392277227.a n = A178655 n

end A178655

/-! ## A178655.P8816965032623524466

`A090181(A061579(n))-A090181(A038722(n+1))`
-/

namespace A178655.P8816965032623524466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 (A061579 n).toNat - A090181 (A038722 (n + 1)).toNat

end

end A178655.P8816965032623524466

namespace A178655

/-- `A090181(A061579(n))-A090181(A038722(n+1))` -/
def P8816965032623524466.Spec : Prop :=
  ∀ n, P8816965032623524466.a n = A178655 n

end A178655

/-! ## A178655.P15541282493380873334

`A131198(n)-A131198(A061579(A061579(n)+1))`
-/

namespace A178655.P15541282493380873334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131198 n - A131198 (A061579 (A061579 n + 1).toNat).toNat

end

end A178655.P15541282493380873334

namespace A178655

/-- `A131198(n)-A131198(A061579(A061579(n)+1))` -/
def P15541282493380873334.Spec : Prop :=
  ∀ n, P15541282493380873334.a n = A178655 n

end A178655

/-! ## A178655.P9785053177605972104

`Δ[A107279(2*n)+A090181(n)]`
-/

namespace A178655.P9785053177605972104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (2 * n) + A090181 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178655.P9785053177605972104

namespace A178655

/-- `Δ[A107279(2*n)+A090181(n)]` -/
def P9785053177605972104.Spec : Prop :=
  ∀ n, P9785053177605972104.a n = A178655 n

end A178655

/-! ## A178655.P13453301779406405869

`Δ[A112329(A000040(n+1))+A090181(n)]`
-/

namespace A178655.P13453301779406405869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (A000040 (n + 1)).toNat + A090181 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178655.P13453301779406405869

namespace A178655

/-- `Δ[A112329(A000040(n+1))+A090181(n)]` -/
def P13453301779406405869.Spec : Prop :=
  ∀ n, P13453301779406405869.a n = A178655 n

end A178655

/-! ## A178655.P10119248805044333859

`Δ[(A090181(n)+1)%A002999(n)]`
-/

namespace A178655.P10119248805044333859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090181 n + 1) (A002999 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A178655.P10119248805044333859

namespace A178655

/-- `Δ[(A090181(n)+1)%A002999(n)]` -/
def P10119248805044333859.Spec : Prop :=
  ∀ n, P10119248805044333859.a n = A178655 n

end A178655

/-!
# A178656: The positions of products of 2 primes that are the differences of 2 primes in A002808.

The programs for A178656, there is no canonical definition to state claims against.
-/

/-! ## A178656.P9541584405604666234

`A026238(A178378(n+1))`
-/

namespace A178656.P9541584405604666234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A178378 (n + 1)).toNat

end

end A178656.P9541584405604666234

/-! ## A178656.P8762346326239301972

`A062298(A178378(n+1)-1)`
-/

namespace A178656.P8762346326239301972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A178378 (n + 1) - 1).toNat

end

end A178656.P8762346326239301972

/-! ## A178656.P1575605874822062483

`∑{d}[A178378(n+1), A066246(#)]`
-/

namespace A178656.P1575605874822062483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A066246 d

end

end A178656.P1575605874822062483

/-! ## A178656.P14918775130621674444

`A066246(A178378(n+1))%A019496(n)`
-/

namespace A178656.P14918775130621674444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066246 (A178378 (n + 1)).toNat) (A019496 n)

end

end A178656.P14918775130621674444

/-! ## A178656.P8455426653422463417

`A066246(lcm(A033999(n), A178378(n+1)))`
-/

namespace A178656.P8455426653422463417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (Int.lcm (A033999 n) (A178378 (n + 1)))

end

end A178656.P8455426653422463417

/-! ## A178656.P8745234808244986757

`∏{d}[A066246(A178378(n+1)), A014963(#)]`
-/

namespace A178656.P8745234808244986757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066246 (A178378 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A178656.P8745234808244986757

/-! ## A178656.P17162110009766627202

`A007318(∑[n])*A066246(A178378(n+1))`
-/

namespace A178656.P17162110009766627202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A066246 (A178378 (n + 1)).toNat

end

end A178656.P17162110009766627202

/-! ## A178656.P14800685648551047960

`char[A004442(n)]*A066246(A178378(n+1))`
-/

namespace A178656.P14800685648551047960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A066246 (A178378 (n + 1)).toNat

end

end A178656.P14800685648551047960

/-! ## A178656.P6264945859145086179

`char[A008612(n)]*A066246(A178378(n+1))`
-/

namespace A178656.P6264945859145086179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A066246 (A178378 (n + 1)).toNat

end

end A178656.P6264945859145086179

/-!
# A178657: Irregular triangle: the coefficient [x^k] of the polynomial (1-x)^(2*n-1) * Sum_{s>=0} A001263(n+2*s,2*s+1)*x^s in row n >= 1 and column k >= 0.

The programs for A178657, there is no canonical definition to state claims against.
-/

/-! ## A178657.P13115078737582874060

`A164306(∑[∑[A276086(3*(n+1))]])`
-/

namespace A178657.P13115078737582874060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A178657.P13115078737582874060

/-! ## A178657.P13553448359272887687

`A300383(A139600(n)+A062258(n))`
-/

namespace A178657.P13553448359272887687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300383 (A139600 n + A062258 n).toNat

end

end A178657.P13553448359272887687

/-! ## A178657.P10964801564342246909

`A114176(A002262(n)*A225546(n+1))`
-/

namespace A178657.P10964801564342246909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114176 (A002262 n * A225546 (n + 1)).toNat

end

end A178657.P10964801564342246909

/-! ## A178657.P7109618942166431745

`A114176(A115346(n)*A225546(n+1))`
-/

namespace A178657.P7109618942166431745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114176 (A115346 n * A225546 (n + 1)).toNat

end

end A178657.P7109618942166431745

/-! ## A178657.P2025322287283374248

`A335265(A337485(2*n+1)+A214083(n))`
-/

namespace A178657.P2025322287283374248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335265 (A337485 (2 * n + 1) + A214083 n).toNat

end

end A178657.P2025322287283374248

/-!
# A178659: Numbers n such that n^2 +- (n-1)^2 are primes.

The programs for A178659, there is no canonical definition to state claims against.
-/

/-! ## A178659.P723126292708759925

`1+A068501(n+1)`
-/

namespace A178659.P723126292708759925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A068501 (n + 1)

end

end A178659.P723126292708759925

/-! ## A178659.P12456461728807556041

`ceil(A048161(n+1)/2)`
-/

namespace A178659.P12456461728807556041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A048161 (n + 1) : ℚ) / 2⌉

end

end A178659.P12456461728807556041

/-! ## A178659.P10087743606454613105

`round(sqrt(A067756(n+1)/2))`
-/

namespace A178659.P10087743606454613105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A067756 (n + 1) : ℚ) / 2 : ℝ))

end

end A178659.P10087743606454613105

/-! ## A178659.P10726527818293780072

`(sqrt(A263951(n+1))+1)/2`
-/

namespace A178659.P10726527818293780072
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A263951 (n + 1) : ℝ) + 1) / 2

end

end A178659.P10726527818293780072

/-! ## A178659.P7248989543146626861

`floor(sqrt(A259979(n+1))/2)+1`
-/

namespace A178659.P7248989543146626861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A259979 (n + 1) : ℝ) / 2⌋ + 1

end

end A178659.P7248989543146626861

/-! ## A178659.P13844014447663765353

`round(sqrt(A067755(n+1)/2+1))`
-/

namespace A178659.P13844014447663765353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A067755 (n + 1) : ℚ) / 2 + 1 : ℝ))

end

end A178659.P13844014447663765353

/-! ## A178659.P7617383096833504616

`(A048161(A000027(n+1))+1)/2`
-/

namespace A178659.P7617383096833504616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048161 (A000027 (n + 1)).toNat + 1 : ℚ) / 2

end

end A178659.P7617383096833504616

/-! ## A178659.P8373608661513083895

`A067756(n+1)%A048161(n+1)`
-/

namespace A178659.P8373608661513083895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067756 (n + 1)) (A048161 (n + 1))

end

end A178659.P8373608661513083895

/-! ## A178659.P232331920555358169

`A067755(n+1)/(A048161(n+1)-1)`
-/

namespace A178659.P232331920555358169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067755 (n + 1) : ℚ) / (A048161 (n + 1) - 1 : ℚ)

end

end A178659.P232331920555358169

/-! ## A178659.P7718402702438746176

`(p?[A281575(n+1)]+1)/2`
-/

namespace A178659.P7718402702438746176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281575 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℚ) / 2

end

end A178659.P7718402702438746176

/-! ## A178659.P11446176107733405323

`(p?[A172438(n+1)]+1)/2`
-/

namespace A178659.P11446176107733405323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172438 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℚ) / 2

end

end A178659.P11446176107733405323

/-! ## A178659.P10446626464728080708

`(A048161(n+1)+1)/A001222(A070552(n+1))`
-/

namespace A178659.P10446626464728080708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048161 (n + 1) + 1 : ℚ) / (A001222 (A070552 (n + 1)).toNat : ℚ)

end

end A178659.P10446626464728080708

/-! ## A178659.P17686854951498747995

`(A048161(n+1)+1)/A000005(A110589(n+1))`
-/

namespace A178659.P17686854951498747995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048161 (n + 1) + 1 : ℚ) / (A000005 (A110589 (n + 1)).toNat : ℚ)

end

end A178659.P17686854951498747995

/-! ## A178659.P18183308697047294144

`(p?[A002731(n+1)]+1)/2`
-/

namespace A178659.P18183308697047294144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002731 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℚ) / 2

end

end A178659.P18183308697047294144

/-! ## A178659.P2666608278863794670

`ceil(p?[2*A027861(n+1)+1]/2)`
-/

namespace A178659.P2666608278863794670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027861 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌉

end

end A178659.P2666608278863794670

/-! ## A178659.P12232915169449243240

`∩[A005097(n+1), A027861(n+1)]+1`
-/

namespace A178659.P12232915169449243240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A178659.P12232915169449243240

/-! ## A178659.P16126527083138604225

`∩[A027861(n+1), A102781(n+1)]+1`
-/

namespace A178659.P16126527083138604225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A178659.P16126527083138604225

/-! ## A178659.P781833092620723902

`A014682(A048161(n+1)+1)`
-/

namespace A178659.P781833092620723902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A048161 (n + 1) + 1).toNat

end

end A178659.P781833092620723902

/-! ## A178659.P7152481233931139046

`A000203(sqrt(A263951(n+1)))/2`
-/

namespace A178659.P7152481233931139046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.roundAway (Real.sqrt (A263951 (n + 1) : ℝ))).toNat : ℚ) / 2

end

end A178659.P7152481233931139046

/-! ## A178659.P654229899086548827

`(A085712(n+1)+2)/4`
-/

namespace A178659.P654229899086548827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085712 (n + 1) + 2 : ℚ) / 4

end

end A178659.P654229899086548827

/-!
# A178662: Semiprimes of the form m*k such that (m-1)/(k+1) is also semiprime.

The programs for A178662, there is no canonical definition to state claims against.
-/

/-! ## A178662.P10057255897919851628

`A171136(6*A000430(n+1))`
-/

namespace A178662.P10057255897919851628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171136 (6 * A000430 (n + 1)).toNat

end

end A178662.P10057255897919851628

/-! ## A178662.P8106373952654478335

`A171136(6*A009087(n+1))`
-/

namespace A178662.P8106373952654478335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171136 (6 * A009087 (n + 1)).toNat

end

end A178662.P8106373952654478335

/-!
# A178663: a(1)=1. For n>1, a(n) is the smallest number greater than a(n-1) such that exactly one of n and a(n) is prime and the other is composite.

The programs for A178663, there is no canonical definition to state claims against.
-/

/-! ## A178663.P8680436870314476878

`A163578(n+1)-floor(acot(n))`
-/

namespace A178663.P8680436870314476878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163578 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A178663.P8680436870314476878

/-! ## A178663.P10697775744412974856

`A171526(A163578(n+1))`
-/

namespace A178663.P10697775744412974856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171526 (A163578 (n + 1)).toNat

end

end A178663.P10697775744412974856

/-! ## A178663.P3521069367036917535

`A163578(n+1)-A000007(n)`
-/

namespace A178663.P3521069367036917535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163578 (n + 1) - A000007 n

end

end A178663.P3521069367036917535

/-! ## A178663.P7632495046130674419

`A163578(n+1)-A112316(n)`
-/

namespace A178663.P7632495046130674419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163578 (n + 1) - A112316 n

end

end A178663.P7632495046130674419

/-! ## A178663.P13088705399026749991

`A163578(n+1)-A151878(n)`
-/

namespace A178663.P13088705399026749991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163578 (n + 1) - A151878 n

end

end A178663.P13088705399026749991

/-! ## A178663.P2094721230643581037

`A163578(n+1)-A151909(n)`
-/

namespace A178663.P2094721230643581037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163578 (n + 1) - A151909 n

end

end A178663.P2094721230643581037

/-! ## A178663.P12313455151119123447

`A163578(n+1)-A151933(n)`
-/

namespace A178663.P12313455151119123447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163578 (n + 1) - A151933 n

end

end A178663.P12313455151119123447

/-! ## A178663.P7088534899323838253

`A163578(n+1)-A151934(n)`
-/

namespace A178663.P7088534899323838253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163578 (n + 1) - A151934 n

end

end A178663.P7088534899323838253

/-! ## A178663.P8401840169626870071

`A163578(n+1)-A151935(n)`
-/

namespace A178663.P8401840169626870071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163578 (n + 1) - A151935 n

end

end A178663.P8401840169626870071

/-! ## A178663.P17312911230483282751

`A163578(n+1)/A054977(n)`
-/

namespace A178663.P17312911230483282751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163578 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A178663.P17312911230483282751

/-!
# A178664: a(n) = 2^n concatenated with itself.

The programs for A178664, the canonical program `A178664.P2807692713744163170` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178664 has offset 0).

The definition of A178664 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A020338, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A178664.P2807692713744163170

`A020338(2^n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A178664

/-- `A020338(2^n)` -/
def P2807692713744163170.Spec : Prop :=
  ∀ n, P2807692713744163170.a n = A178664 n

theorem P2807692713744163170.correct : P2807692713744163170.Spec := by
  intro n
  simp only [A178664]

end A178664

/-! ## A178664.P4474489213323284907

`2^n*A000533(floor(n/log2(10))+1)`
-/

namespace A178664.P4474489213323284907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000533 (⌊(n : ℝ) / Real.logb 2 (10 : ℝ)⌋ + 1).toNat

end

end A178664.P4474489213323284907

namespace A178664

/-- `2^n*A000533(floor(n/log2(10))+1)` -/
def P4474489213323284907.Spec : Prop :=
  ∀ n, P4474489213323284907.a n = A178664 n

end A178664

/-! ## A178664.P17550659617421628943

`A000079(n)*A062397(A034887(n))`
-/

namespace A178664.P17550659617421628943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A062397 (A034887 n).toNat

end

end A178664.P17550659617421628943

namespace A178664

/-- `A000079(n)*A062397(A034887(n))` -/
def P17550659617421628943.Spec : Prop :=
  ∀ n, P17550659617421628943.a n = A178664 n

end A178664

/-! ## A178664.P7200119992019158524

`lcm(A000533(A034887(n)), A122803(n))`
-/

namespace A178664.P7200119992019158524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000533 (A034887 n).toNat) (A122803 n)

end

end A178664.P7200119992019158524

namespace A178664

/-- `lcm(A000533(A034887(n)), A122803(n))` -/
def P7200119992019158524.Spec : Prop :=
  ∀ n, (P7200119992019158524.a n : ℤ) = A178664 n

end A178664

/-! ## A178664.P14812943954410452051

`A062397(A034887(n))*A164587(2*n+1)`
-/

namespace A178664.P14812943954410452051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062397 (A034887 n).toNat * A164587 (2 * n + 1)

end

end A178664.P14812943954410452051

namespace A178664

/-- `A062397(A034887(n))*A164587(2*n+1)` -/
def P14812943954410452051.Spec : Prop :=
  ∀ n, P14812943954410452051.a n = A178664 n

end A178664

/-!
# A178665: Expansion of the polynomial (1+x^3)*(1+x^15)*(1+x^23)*(1+x^27)*(1+x^35)*(1+x^39)*(1+x^47)*(1+x^59).

The programs for A178665, there is no canonical definition to state claims against.
-/

/-! ## A178665.P5503527055714666240

`A000285(n)%Δ[A308468(n+1)]`
-/

namespace A178665.P5503527055714666240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000285 n) (f1 (n + 1) - f1 n)

end

end A178665.P5503527055714666240

/-!
# A178666: Irregular triangle read by rows in which row n gives expansion of the polynomial Product_{k=0..n} (1 + x^(2*k + 1)), n >= -1.

The programs for A178666, there is no canonical definition to state claims against.
-/

/-! ## A178666.P9321983161184590798

`abs(A267611(n))`
-/

namespace A178666.P9321983161184590798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A267611 n|

end

end A178666.P9321983161184590798

/-! ## A178666.P15748963632725672141

`dr(A267611(gcd(n, 2*n)))`
-/

namespace A178666.P15748963632725672141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A267611 (Nat.gcd n (2 * n)))

end

end A178666.P15748963632725672141

/-! ## A178666.P4037778267175147049

`gcd(floor(acot(n)), A267611(char[1]+n))`
-/

namespace A178666.P4037778267175147049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A267611 ((if ∃ j, f1 j = n then 1 else 0) + n))

end

end A178666.P4037778267175147049

/-! ## A178666.P6190623222189928082

`dr(A267611(A028310(n)))`
-/

namespace A178666.P6190623222189928082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A267611 (A028310 n).toNat)

end

end A178666.P6190623222189928082

/-! ## A178666.P4127843527236321002

`gcd(A000038(n), A267611(n))`
-/

namespace A178666.P4127843527236321002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A267611 n)

end

end A178666.P4127843527236321002

/-! ## A178666.P2130015192493299788

`lcm(A020985(n), A267611(n))`
-/

namespace A178666.P2130015192493299788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A267611 n)

end

end A178666.P2130015192493299788

/-! ## A178666.P5449548694303794010

`dr(A267611(-A001489(n)))`
-/

namespace A178666.P5449548694303794010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A267611 (-A001489 n).toNat)

end

end A178666.P5449548694303794010

/-! ## A178666.P2656407360501500274

`dr(A267611(sqrt(A000290(n))))`
-/

namespace A178666.P2656407360501500274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A267611 (SequenceMachineLib.roundAway (Real.sqrt (A000290 n : ℝ))).toNat)

end

end A178666.P2656407360501500274

/-!
# A178668: Maximal prime divisor of the average of the twin prime pairs, different from 2 and 3. In case of maximal prime divisor is 2 or 3, then a(n)=1.

The programs for A178668, the canonical program `A178668.P9523134910986814010` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178668 has offset 1).

The definition of A178668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178668.P7821659431079164217

`lcm(6, A060210(n+1))/6`
-/

namespace A178668.P7821659431079164217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 6 (A060210 (n + 1)) : ℚ) / 6

end

end A178668.P7821659431079164217

namespace A178668

/-- `lcm(6, A060210(n+1))/6` -/
def P7821659431079164217.Spec : Prop :=
  ∀ n, P7821659431079164217.a n = (A178668 (n + 1) : ℚ)

end A178668

/-! ## A178668.P14364438294197912853

`A051724(A060210(n+1))`
-/

namespace A178668.P14364438294197912853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A060210 (n + 1)).toNat

end

end A178668.P14364438294197912853

namespace A178668

/-- `A051724(A060210(n+1))` -/
def P14364438294197912853.Spec : Prop :=
  ∀ n, P14364438294197912853.a n = A178668 (n + 1)

end A178668

/-! ## A178668.P3535282283976572157

`A252375(A014574(n+1))-1`
-/

namespace A178668.P3535282283976572157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252375 (A014574 (n + 1)).toNat - 1

end

end A178668.P3535282283976572157

namespace A178668

/-- `A252375(A014574(n+1))-1` -/
def P3535282283976572157.Spec : Prop :=
  ∀ n, P3535282283976572157.a n = A178668 (n + 1)

end A178668

/-! ## A178668.P13225988678079615994

`A252375(A054735(n+1))-1`
-/

namespace A178668.P13225988678079615994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252375 (A054735 (n + 1)).toNat - 1

end

end A178668.P13225988678079615994

namespace A178668

/-- `A252375(A054735(n+1))-1` -/
def P13225988678079615994.Spec : Prop :=
  ∀ n, P13225988678079615994.a n = A178668 (n + 1)

end A178668

/-! ## A178668.P7289582410249818134

`A065330(2*A060210(n+1))`
-/

namespace A178668.P7289582410249818134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (2 * A060210 (n + 1)).toNat

end

end A178668.P7289582410249818134

namespace A178668

/-- `A065330(2*A060210(n+1))` -/
def P7289582410249818134.Spec : Prop :=
  ∀ n, P7289582410249818134.a n = A178668 (n + 1)

end A178668

/-! ## A178668.P13972576433051831824

`A051724(A006530(A014574(n+1)))`
-/

namespace A178668.P13972576433051831824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A006530 (A014574 (n + 1)).toNat).toNat

end

end A178668.P13972576433051831824

namespace A178668

/-- `A051724(A006530(A014574(n+1)))` -/
def P13972576433051831824.Spec : Prop :=
  ∀ n, P13972576433051831824.a n = A178668 (n + 1)

end A178668

/-! ## A178668.P9523134910986814010

`A006530(A008615(A078579(n+1)))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A178668

/-- `A006530(A008615(A078579(n+1)))` -/
def P9523134910986814010.Spec : Prop :=
  ∀ n, P9523134910986814010.a n = A178668 (n + 1)

theorem P9523134910986814010.correct : P9523134910986814010.Spec := by
  intro n
  simp only [A178668, Nat.add_sub_cancel]

end A178668

/-! ## A178668.P11782706644781065240

`A051724(A006530(A040040(n+1)))`
-/

namespace A178668.P11782706644781065240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A006530 (A040040 (n + 1)).toNat).toNat

end

end A178668.P11782706644781065240

namespace A178668

/-- `A051724(A006530(A040040(n+1)))` -/
def P11782706644781065240.Spec : Prop :=
  ∀ n, P11782706644781065240.a n = A178668 (n + 1)

end A178668

/-! ## A178668.P4528882318963396128

`A051724(A006530(A054735(n+1)))`
-/

namespace A178668.P4528882318963396128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A006530 (A054735 (n + 1)).toNat).toNat

end

end A178668.P4528882318963396128

namespace A178668

/-- `A051724(A006530(A054735(n+1)))` -/
def P4528882318963396128.Spec : Prop :=
  ∀ n, P4528882318963396128.a n = A178668 (n + 1)

end A178668

/-! ## A178668.P13479190861830278504

`A051724(A006530(A111046(n+1)))`
-/

namespace A178668.P13479190861830278504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A006530 (A111046 (n + 1)).toNat).toNat

end

end A178668.P13479190861830278504

namespace A178668

/-- `A051724(A006530(A111046(n+1)))` -/
def P13479190861830278504.Spec : Prop :=
  ∀ n, P13479190861830278504.a n = A178668 (n + 1)

end A178668

/-! ## A178668.P9948237535415231216

`A006530(A065330(A006512(n+1)-1))`
-/

namespace A178668.P9948237535415231216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A065330 (A006512 (n + 1) - 1).toNat).toNat

end

end A178668.P9948237535415231216

namespace A178668

/-- `A006530(A065330(A006512(n+1)-1))` -/
def P9948237535415231216.Spec : Prop :=
  ∀ n, P9948237535415231216.a n = A178668 (n + 1)

end A178668

/-! ## A178668.P11302510842517603892

`gcd(A006530(10*A014574(n+1)), A014574(n+1))`
-/

namespace A178668.P11302510842517603892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006530 (10 * A014574 (n + 1)).toNat) (A014574 (n + 1))

end

end A178668.P11302510842517603892

namespace A178668

/-- `gcd(A006530(10*A014574(n+1)), A014574(n+1))` -/
def P11302510842517603892.Spec : Prop :=
  ∀ n, (P11302510842517603892.a n : ℤ) = A178668 (n + 1)

end A178668

/-!
# A178669: The number of permutations of [n] with 2 cycles of length 2.

The programs for A178669, there is no canonical definition to state claims against.
-/

/-! ## A178669.P2719064453335852808

`record[A114320(n+2)%A114320(n)]`
-/

namespace A178669.P2719064453335852808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114320 (n + 2)) (A114320 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178669.P2719064453335852808

/-! ## A178669.P2687678657602062485

`record[A002262(A055087(n))*A114320(n)]`
-/

namespace A178669.P2687678657602062485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A055087 n).toNat * A114320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178669.P2687678657602062485

/-! ## A178669.P11930158406687182338

`∑[A027480(n)]*A000266(A259361(n²))`
-/

namespace A178669.P11930158406687182338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000266 (A259361 (n ^ 2)).toNat

end

end A178669.P11930158406687182338

/-! ## A178669.P10971968062383254822

`A000217(∑[n]+n)*A114320(A002620(n))`
-/

namespace A178669.P10971968062383254822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j + n) * A114320 (A002620 n).toNat

end

end A178669.P10971968062383254822

/-! ## A178669.P2042865100537693564

`A000217(A000096(n))*A000266(A259361(n²))`
-/

namespace A178669.P2042865100537693564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000096 n).toNat * A000266 (A259361 (n ^ 2)).toNat

end

end A178669.P2042865100537693564

/-!
# A178670: Number of ways to express prime(n) as (prime(n+k) + prime(n-k))/2.

The programs for A178670, there is no canonical definition to state claims against.
-/

/-! ## A178670.P10078009186489792606

`A037904(5*n+4)%A001221(A288068(2*(n+2)))`
-/

namespace A178670.P10078009186489792606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037904 (5 * n + 4)) (A001221 (A288068 (2 * (n + 2))).toNat)

end

end A178670.P10078009186489792606

/-! ## A178670.P6402040869744025325

`A140996(n+4)%A239066(A211006(n+1))`
-/

namespace A178670.P6402040869744025325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140996 (n + 4)) (A239066 (A211006 (n + 1)).toNat)

end

end A178670.P6402040869744025325

/-! ## A178670.P5648923958468240411

`and(A074292(2*(n+2)), A107824(A089710(n+1)))`
-/

namespace A178670.P5648923958468240411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A074292 (2 * (n + 2))) (A107824 (A089710 (n + 1)).toNat)

end

end A178670.P5648923958468240411

/-! ## A178670.P9048647275252196774

`A285099(A346099(n+1)%A199921(n+1))`
-/

namespace A178670.P9048647275252196774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (Int.tmod (A346099 (n + 1)) (A199921 (n + 1))).toNat

end

end A178670.P9048647275252196774

/-! ## A178670.P9403413017348605287

`A093955(A166286(n+1))`
-/

namespace A178670.P9403413017348605287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093955 (A166286 (n + 1)).toNat

end

end A178670.P9403413017348605287

/-!
# A178671: a(n) = 5^n - 5.

The programs for A178671, the canonical program `A178671.P13912322305136915604` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178671 has offset 0).

The definition of A178671 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n-5` (program `A178671.P13912322305136915604`, by `A178671.P13912322305136915604.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A178671.P13912322305136915604

`5^n-5`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178671

/-- `5^n-5` -/
def P13912322305136915604.Spec : Prop :=
  ∀ n, P13912322305136915604.a n = A178671 n

theorem P13912322305136915604.correct : P13912322305136915604.Spec := by
  intro n
  simp only [A178671]

end A178671

/-!
# A178672: a(n) = 6^n - 6.

The programs for A178672, the canonical program `A178672.P3625898502281268343` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178672 has offset 1).

The definition of A178672 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^(n+1)-6` (program `A178672.P3625898502281268343`, by `A178672.P3625898502281268343.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A178672.P3625898502281268343

`6^(n+1)-6`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178672

/-- `6^(n+1)-6` -/
def P3625898502281268343.Spec : Prop :=
  ∀ n, P3625898502281268343.a n = A178672 (n + 1)

theorem P3625898502281268343.correct : P3625898502281268343.Spec := by
  intro n
  simp only [A178672, Nat.add_sub_cancel]

end A178672

/-! ## A178672.P13053681314535812576

`30*A003464(n)`
-/

namespace A178672.P13053681314535812576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A003464 n

end

end A178672.P13053681314535812576

namespace A178672

/-- `30*A003464(n)` -/
def P13053681314535812576.Spec : Prop :=
  ∀ n, P13053681314535812576.a n = A178672 (n + 1)

end A178672

/-! ## A178672.P12941051795871466525

`lcm(6, 1-6^n)`
-/

namespace A178672.P12941051795871466525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 6 (1 - (6 ^ n : ℤ))

end

end A178672.P12941051795871466525

namespace A178672

/-- `lcm(6, 1-6^n)` -/
def P12941051795871466525.Spec : Prop :=
  ∀ n, (P12941051795871466525.a n : ℤ) = A178672 (n + 1)

end A178672

/-! ## A178672.P9764754067490320678

`6*(a(n-1)+5)` with `a(0)=0`
-/

namespace A178672.P9764754067490320678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  6 * (a (n - 1) + 5)

end

end A178672.P9764754067490320678

namespace A178672

/-- `6*(a(n-1)+5)` -/
def P9764754067490320678.Spec : Prop :=
  ∀ n, (P9764754067490320678.a n : ℤ) = A178672 (n + 1)

theorem P9764754067490320678.correct : P9764754067490320678.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A178672, Nat.add_sub_cancel, A178672.P9764754067490320678.a, A178672.P3625898502281268343.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A178672, Nat.add_sub_cancel, A178672.P9764754067490320678.a, A178672.P3625898502281268343.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A178672

/-! ## A178672.P16399727925423435676

`∑[6*a(n-1)]` with `a(0)=0, a(1)=30`
-/

namespace A178672.P16399727925423435676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 30] fun n f1 =>
  6 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178672.P16399727925423435676

namespace A178672

/-- `∑[6*a(n-1)]` -/
def P16399727925423435676.Spec : Prop :=
  ∀ n, (P16399727925423435676.a n : ℤ) = A178672 (n + 1)

end A178672

/-! ## A178672.P14469657201002430693

`record[6^abs(1-n)-6]`
-/

namespace A178672.P14469657201002430693
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (|1 - (n : ℤ)| : ℤ) - 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A178672.P14469657201002430693

namespace A178672

/-- `record[6^abs(1-n)-6]` -/
def P14469657201002430693.Spec : Prop :=
  ∀ n, P14469657201002430693.a n = (A178672 (n + 1) : ℚ)

end A178672

/-! ## A178672.P8096099524423009779

`5*A105281(n)`
-/

namespace A178672.P8096099524423009779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A105281 n

end

end A178672.P8096099524423009779

namespace A178672

/-- `5*A105281(n)` -/
def P8096099524423009779.Spec : Prop :=
  ∀ n, P8096099524423009779.a n = A178672 (n + 1)

end A178672

/-! ## A178672.P15903447321484622841

`6*A024062(n)`
-/

namespace A178672.P15903447321484622841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A024062 n

end

end A178672.P15903447321484622841

namespace A178672

/-- `6*A024062(n)` -/
def P15903447321484622841.Spec : Prop :=
  ∀ n, P15903447321484622841.a n = A178672 (n + 1)

theorem P15903447321484622841.correct : P15903447321484622841.Spec := by
  intro n
  simp only [A178672, Nat.add_sub_cancel, A178672.P15903447321484622841.a, A178672.P3625898502281268343.a, A024062, A024062.P10607984613619163046.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A178672

/-! ## A178672.P6642132948466951004

`2*(A198796(n)-2)`
-/

namespace A178672.P6642132948466951004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A198796 n - 2)

end

end A178672.P6642132948466951004

namespace A178672

/-- `2*(A198796(n)-2)` -/
def P6642132948466951004.Spec : Prop :=
  ∀ n, P6642132948466951004.a n = A178672 (n + 1)

theorem P6642132948466951004.correct : P6642132948466951004.Spec := by
  intro n
  simp only [A178672, Nat.add_sub_cancel, A178672.P6642132948466951004.a, A178672.P3625898502281268343.a, A198796, A198796.P13875279915819405921.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A178672

/-! ## A178672.P4708970079926042782

`2*(A169604(n)-3)`
-/

namespace A178672.P4708970079926042782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A169604 n - 3)

end

end A178672.P4708970079926042782

namespace A178672

/-- `2*(A169604(n)-3)` -/
def P4708970079926042782.Spec : Prop :=
  ∀ n, P4708970079926042782.a n = A178672 (n + 1)

theorem P4708970079926042782.correct : P4708970079926042782.Spec := by
  intro n
  simp only [A178672, Nat.add_sub_cancel, A178672.P4708970079926042782.a, A178672.P3625898502281268343.a, A169604, A169604.P2454332461179498099.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A178672

/-! ## A178672.P2447753703756382581

`2*(A199318(n)-4)`
-/

namespace A178672.P2447753703756382581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A199318 n - 4)

end

end A178672.P2447753703756382581

namespace A178672

/-- `2*(A199318(n)-4)` -/
def P2447753703756382581.Spec : Prop :=
  ∀ n, P2447753703756382581.a n = A178672 (n + 1)

theorem P2447753703756382581.correct : P2447753703756382581.Spec := by
  intro n
  simp only [A178672, Nat.add_sub_cancel, A178672.P2447753703756382581.a, A178672.P3625898502281268343.a, A199318, A199318.P17752477068625558702.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A178672

/-! ## A178672.P8282019843634093325

`3*(A199317(n)-3)`
-/

namespace A178672.P8282019843634093325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A199317 n - 3)

end

end A178672.P8282019843634093325

namespace A178672

/-- `3*(A199317(n)-3)` -/
def P8282019843634093325.Spec : Prop :=
  ∀ n, P8282019843634093325.a n = A178672 (n + 1)

theorem P8282019843634093325.correct : P8282019843634093325.Spec := by
  intro n
  simp only [A178672, Nat.add_sub_cancel, A178672.P8282019843634093325.a, A178672.P3625898502281268343.a, A199317, A199317.P340006666861304313.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A178672

/-! ## A178672.P11932385248584433165

`6*(A000400(n)-1)`
-/

namespace A178672.P11932385248584433165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A000400 n - 1)

end

end A178672.P11932385248584433165

namespace A178672

/-- `6*(A000400(n)-1)` -/
def P11932385248584433165.Spec : Prop :=
  ∀ n, P11932385248584433165.a n = A178672 (n + 1)

theorem P11932385248584433165.correct : P11932385248584433165.Spec := by
  intro n
  simp only [A178672, Nat.add_sub_cancel, A178672.P11932385248584433165.a, A178672.P3625898502281268343.a, A000400, A000400.P10889281521385558416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A178672

/-! ## A178672.P5885679570679634014

`6*(A253209(n)-6)`
-/

namespace A178672.P5885679570679634014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A253209 n - 6)

end

end A178672.P5885679570679634014

namespace A178672

/-- `6*(A253209(n)-6)` -/
def P5885679570679634014.Spec : Prop :=
  ∀ n, P5885679570679634014.a n = A178672 (n + 1)

theorem P5885679570679634014.correct : P5885679570679634014.Spec := by
  intro n
  simp only [A178672, Nat.add_sub_cancel, A178672.P5885679570679634014.a, A178672.P3625898502281268343.a, A253209, A253209.P16301065234557695078.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A178672

/-! ## A178672.P17158402855546984347

`15*(A152596(n)-1)`
-/

namespace A178672.P17158402855546984347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * (A152596 n - 1)

end

end A178672.P17158402855546984347

namespace A178672

/-- `15*(A152596(n)-1)` -/
def P17158402855546984347.Spec : Prop :=
  ∀ n, P17158402855546984347.a n = A178672 (n + 1)

end A178672

/-! ## A178672.P14598735753144489064

`3*(A164559(n+1)-1)`
-/

namespace A178672.P14598735753144489064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A164559 (n + 1) - 1)

end

end A178672.P14598735753144489064

namespace A178672

/-- `3*(A164559(n+1)-1)` -/
def P14598735753144489064.Spec : Prop :=
  ∀ n, P14598735753144489064.a n = A178672 (n + 1)

end A178672

/-! ## A178672.P10149321275609264619

`2*(A081341(n+1)-3)`
-/

namespace A178672.P10149321275609264619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A081341 (n + 1) - 3)

end

end A178672.P10149321275609264619

namespace A178672

/-- `2*(A081341(n+1)-3)` -/
def P10149321275609264619.Spec : Prop :=
  ∀ n, P10149321275609264619.a n = A178672 (n + 1)

end A178672

/-! ## A178672.P1285540634999400970

`3*(A167747(n+1)-2)`
-/

namespace A178672.P1285540634999400970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A167747 (n + 1) - 2)

end

end A178672.P1285540634999400970

namespace A178672

/-- `3*(A167747(n+1)-2)` -/
def P1285540634999400970.Spec : Prop :=
  ∀ n, P1285540634999400970.a n = A178672 (n + 1)

end A178672

/-! ## A178672.P17009020705889480860

`30*A329115(2*n+1)`
-/

namespace A178672.P17009020705889480860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A329115 (2 * n + 1)

end

end A178672.P17009020705889480860

namespace A178672

/-- `30*A329115(2*n+1)` -/
def P17009020705889480860.Spec : Prop :=
  ∀ n, P17009020705889480860.a n = A178672 (n + 1)

end A178672

/-! ## A178672.P17273024640976729047

`2*(A181288(A016885(n))-2)`
-/

namespace A178672.P17273024640976729047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A181288 (A016885 n).toNat - 2)

end

end A178672.P17273024640976729047

namespace A178672

/-- `2*(A181288(A016885(n))-2)` -/
def P17273024640976729047.Spec : Prop :=
  ∀ n, P17273024640976729047.a n = A178672 (n + 1)

end A178672

/-!
# A178674: a(n) = 3^n + 3.

The programs for A178674, the canonical program `A178674.P4081505136580915789` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178674 has offset 0).

The definition of A178674 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+3` (program `A178674.P4081505136580915789`, by `A178674.P4081505136580915789.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A178674.P4081505136580915789

`3^n+3`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178674

/-- `3^n+3` -/
def P4081505136580915789.Spec : Prop :=
  ∀ n, (P4081505136580915789.a n : ℤ) = A178674 n

theorem P4081505136580915789.correct : P4081505136580915789.Spec := by
  intro n
  simp only [A178674]

end A178674

/-!
# A178675: a(n) = 4^n + 4.

The programs for A178675, the canonical program `A178675.P10806121798149005468` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178675 has offset 0).

The definition of A178675 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+4` (program `A178675.P10806121798149005468`, by `A178675.P10806121798149005468.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A178675.P10806121798149005468

`4^n+4`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178675

/-- `4^n+4` -/
def P10806121798149005468.Spec : Prop :=
  ∀ n, (P10806121798149005468.a n : ℤ) = A178675 n

theorem P10806121798149005468.correct : P10806121798149005468.Spec := by
  intro n
  simp only [A178675]

end A178675

/-!
# A178676: a(n) = 5^n + 5.

The programs for A178676, the canonical program `A178676.P7184030861696971418` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178676 has offset 0).

The definition of A178676 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n+5` (program `A178676.P7184030861696971418`, by `A178676.P7184030861696971418.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A178676.P7184030861696971418

`5^n+5`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178676

/-- `5^n+5` -/
def P7184030861696971418.Spec : Prop :=
  ∀ n, (P7184030861696971418.a n : ℤ) = A178676 n

theorem P7184030861696971418.correct : P7184030861696971418.Spec := by
  intro n
  simp only [A178676]

end A178676

/-!
# A178677: If n mod 2 == 0, a(n) = a(floor(n/2)), otherwise a(n) = a(a(floor((n-1)/2))) + a(n - a(floor((n-1)/2))).

The programs for A178677, there is no canonical definition to state claims against.
-/

/-! ## A178677.P59188916172054672

`A001221(A139145(2*n+1))`
-/

namespace A178677.P59188916172054672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A139145 (2 * n + 1)).toNat

end

end A178677.P59188916172054672

/-! ## A178677.P9103948993026578914

`A032358(A267695(n+1))`
-/

namespace A178677.P9103948993026578914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032358 (A267695 (n + 1)).toNat

end

end A178677.P9103948993026578914

/-! ## A178677.P10342710752423421502

`A327928(A097331(n))+A000120(n)`
-/

namespace A178677.P10342710752423421502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327928 (A097331 n).toNat + A000120 n

end

end A178677.P10342710752423421502

/-! ## A178677.P1423889235339024482

`A284745(A230368(n+3))+A000120(n)`
-/

namespace A178677.P1423889235339024482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284745 (A230368 (n + 3)).toNat + A000120 n

end

end A178677.P1423889235339024482

/-! ## A178677.P18110199521200946636

`A096577(A000010(n+4))+A000120(n)`
-/

namespace A178677.P18110199521200946636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096577 (A000010 (n + 4)).toNat + A000120 n

end

end A178677.P18110199521200946636

/-!
# A178679: Numbers n such that the binary expansion of n starts with the base 3 expansion of n.

The programs for A178679, there is no canonical definition to state claims against.
-/

/-! ## A178679.P10643488611256751705

`filter[A178680(n+1), A293163(#)]`
-/

namespace A178679.P10643488611256751705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A293163 (f1 j).toNat = 1) n)

end

end A178679.P10643488611256751705

/-! ## A178679.P13410718927943163450

`∩[A037465(n), A178680(n+1)]`
-/

namespace A178679.P13410718927943163450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A178679.P13410718927943163450

/-! ## A178679.P6237415370375089363

`A178680(A350103(n)+A029804(n+1))`
-/

namespace A178679.P6237415370375089363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178680 (A350103 n + A029804 (n + 1)).toNat

end

end A178679.P6237415370375089363

/-! ## A178679.P8575510226511658576

`A178680(∪[A149514(n+1), A010352(n+2)])`
-/

namespace A178679.P8575510226511658576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010352 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178680 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A178679.P8575510226511658576

/-! ## A178679.P15307736828538615836

`A178680(∪[A024652(3*(n+1))+5, A010352(n+1)])`
-/

namespace A178679.P15307736828538615836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024652 (3 * (n + 1)) + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010352 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178680 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A178679.P15307736828538615836

/-!
# A178681: a(n) = 6^n + 6.

The programs for A178681, the canonical program `A178681.P11144221657547729573` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178681 has offset 0).

The definition of A178681 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n+6` (program `A178681.P11144221657547729573`, by `A178681.P11144221657547729573.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A178681.P11144221657547729573

`6^n+6`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A178681

/-- `6^n+6` -/
def P11144221657547729573.Spec : Prop :=
  ∀ n, (P11144221657547729573.a n : ℤ) = A178681 n

theorem P11144221657547729573.correct : P11144221657547729573.Spec := by
  intro n
  simp only [A178681]

end A178681

/-!
# A178682: The number of functions f:{1,2,...,n}->{1,2,...,n} such that the number of elements that are mapped to m is divisible by m.

The programs for A178682, there is no canonical definition to state claims against.
-/

/-! ## A178682.P11529280274091994465

`A326500(∑[n]+n)`
-/

namespace A178682.P11529280274091994465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326500 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A178682.P11529280274091994465

/-! ## A178682.P12865227819557567672

`or(char[1], A326500(A000096(n)))`
-/

namespace A178682.P12865227819557567672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A326500 (A000096 n).toNat)

end

end A178682.P12865227819557567672

/-! ## A178682.P7928958606710815731

`A326500(A000096(n))^abs(A165471(n))`
-/

namespace A178682.P7928958606710815731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326500 (A000096 n).toNat : ℚ) ^ (|A165471 n| : ℤ)

end

end A178682.P7928958606710815731

/-! ## A178682.P11032620977237887526

`A326500(A000096(n))^A034807(n²)`
-/

namespace A178682.P11032620977237887526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326500 (A000096 n).toNat : ℚ) ^ (A034807 (n ^ 2) : ℤ)

end

end A178682.P11032620977237887526

/-! ## A178682.P10795715051876740114

`A007318(∑[n])*A326500(A000096(n))`
-/

namespace A178682.P10795715051876740114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A326500 (A000096 n).toNat

end

end A178682.P10795715051876740114

/-! ## A178682.P4086864797969617746

`A326500(A000096(n))+char[A017262(n)]`
-/

namespace A178682.P4086864797969617746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326500 (A000096 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A178682.P4086864797969617746

/-! ## A178682.P18303011253698051806

`A326500(A000096(n))^(A000038(n)+1)`
-/

namespace A178682.P18303011253698051806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326500 (A000096 n).toNat : ℚ) ^ (A000038 n + 1 : ℤ)

end

end A178682.P18303011253698051806

/-! ## A178682.P9815116943840974415

`A000035(A005385(n+1))*A326500(A000096(n))`
-/

namespace A178682.P9815116943840974415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A005385 (n + 1)).toNat * A326500 (A000096 n).toNat

end

end A178682.P9815116943840974415

/-! ## A178682.P9448934458321696440

`A010052(A052041(n+1))*A326500(A000096(n))`
-/

namespace A178682.P9448934458321696440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A052041 (n + 1)).toNat * A326500 (A000096 n).toNat

end

end A178682.P9448934458321696440

/-! ## A178682.P4412211288375199340

`A326500(A000096(n))%A001348(n+1)`
-/

namespace A178682.P4412211288375199340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326500 (A000096 n).toNat) (A001348 (n + 1))

end

end A178682.P4412211288375199340

/-!
# A178684: Partial sums of cardinalities of coalition sets A095941.

The programs for A178684, there is no canonical definition to state claims against.
-/

/-! ## A178684.P5197397934008357160

`∑[A095941(n+1)]`
-/

namespace A178684.P5197397934008357160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178684.P5197397934008357160

/-! ## A178684.P13459569602994543677

`∑[∑[∑[A337698(n)]]]`
-/

namespace A178684.P13459569602994543677
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337698 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178684.P13459569602994543677

/-! ## A178684.P15083794345849410107

`∑[∑[2^n-A036469(n)]]`
-/

namespace A178684.P15083794345849410107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A036469 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178684.P15083794345849410107

/-! ## A178684.P10641584198613749212

`∑[∑[2^n]]-A325951(n)`
-/

namespace A178684.P10641584198613749212
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A325951 n

end

end A178684.P10641584198613749212

/-! ## A178684.P3236303986658504343

`∑[∑[2^n-∑[A000009(n)]]]`
-/

namespace A178684.P3236303986658504343
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178684.P3236303986658504343

/-!
# A178685: G.f.: A(x) = x/Series_Reversion(G(x)) where x*A(G(x)) = G(x) is the g.f. of A000699.

The programs for A178685, there is no canonical definition to state claims against.
-/

/-! ## A178685.P17002339148485660124

`A022457(A186184(n)+1)`
-/

namespace A178685.P17002339148485660124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022457 (A186184 n + 1).toNat

end

end A178685.P17002339148485660124

/-! ## A178685.P10756792752440241869

`or(1, A134558(A001105(n)))`
-/

namespace A178685.P10756792752440241869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A134558 (A001105 n).toNat)

end

end A178685.P10756792752440241869

/-!
# A178686: Expansion of the polynomial (1+x^3)*(1+x^5)*(1+x^7)*(1+x^9).

The programs for A178686, there is no canonical definition to state claims against.
-/

/-! ## A178686.P229954140155774540

`A142724(n+30)`
-/

namespace A178686.P229954140155774540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142724 (n + 30)

end

end A178686.P229954140155774540

/-! ## A178686.P12940176376396969573

`A169988(n)-a(n-1)` with `a(0)=1`
-/

namespace A178686.P12940176376396969573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A169988 n - a (n - 1)

end

end A178686.P12940176376396969573

/-! ## A178686.P17926799050272731807

`A174656(n-a(2%n))` with `a(0)=1, a(1)=0`
-/

namespace A178686.P17926799050272731807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A174656 ((n : ℤ) - a (2 % n)).toNat

end

end A178686.P17926799050272731807

/-! ## A178686.P2251104755961903622

`A174656(abs(n-ceil(acot(n)))+1)`
-/

namespace A178686.P2251104755961903622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174656 (|(n : ℤ) - ⌈SequenceMachineLib.acot (n : ℝ)⌉| + 1).toNat

end

end A178686.P2251104755961903622

/-!
# A178687: Expansion of the polynomial (1+x^3)*(1+x^5)*(1+x^7)*(1+x^9)*(1+x^11).

The programs for A178687, there is no canonical definition to state claims against.
-/

/-! ## A178687.P14172495102558540530

`A142724(n+55)`
-/

namespace A178687.P14172495102558540530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142724 (n + 55)

end

end A178687.P14172495102558540530

/-! ## A178687.P16549781954398261454

`A169989(n)-a(n-1)` with `a(0)=1`
-/

namespace A178687.P16549781954398261454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A169989 n - a (n - 1)

end

end A178687.P16549781954398261454

/-! ## A178687.P12846922298368591682

`A170969(A169864(n+1))`
-/

namespace A178687.P12846922298368591682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170969 (A169864 (n + 1)).toNat

end

end A178687.P12846922298368591682

/-! ## A178687.P6535606316294546155

`A170969(A300997(n+2))`
-/

namespace A178687.P6535606316294546155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170969 (A300997 (n + 2)).toNat

end

end A178687.P6535606316294546155

/-! ## A178687.P14518517675846703004

`abs(∑[A033999(n)*A169989(n)])`
-/

namespace A178687.P14518517675846703004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A169989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A178687.P14518517675846703004

/-!
# A178688: A006983(n) + 1.

The programs for A178688, there is no canonical definition to state claims against.
-/

/-! ## A178688.P1283801969516321590

`A006983(n+1)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A178688.P1283801969516321590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006983 (n + 1) + 1

end

end A178688.P1283801969516321590

/-! ## A178688.P5655971457626797024

`A199343(A006983(n+1))`
-/

namespace A178688.P5655971457626797024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 (A006983 (n + 1)).toNat

end

end A178688.P5655971457626797024

/-! ## A178688.P945491589859504885

`A181735(n+1)+1-A181340(n+1)`
-/

namespace A178688.P945491589859504885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181735 (n + 1) + (1 - A181340 (n + 1))

end

end A178688.P945491589859504885

/-! ## A178688.P4154011909685152507

`A217156(n+1)+1-A217155(n+1)`
-/

namespace A178688.P4154011909685152507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217156 (n + 1) + (1 - A217155 (n + 1))

end

end A178688.P4154011909685152507

/-! ## A178688.P15976978967292330537

`A181735(n+1)-A023443(A181340(n+1))`
-/

namespace A178688.P15976978967292330537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181735 (n + 1) - A023443 (A181340 (n + 1)).toNat

end

end A178688.P15976978967292330537

/-!
# A178689: Partial sums of A122836 (number of topologies on n labeled elements in which at least one element belongs to some pair of noncomparable members of the topology).

The programs for A178689, there is no canonical definition to state claims against.
-/

/-! ## A178689.P12999183123693937443

`∑[A122836(n)]`
-/

namespace A178689.P12999183123693937443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122836 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178689.P12999183123693937443

/-! ## A178689.P8082310986839416414

`∑[A000798(n)-A122835(n)]`
-/

namespace A178689.P8082310986839416414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000798 n - A122835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178689.P8082310986839416414

/-! ## A178689.P10148768597083368949

`A173399(n)-∑[A122835(n)]`
-/

namespace A178689.P10148768597083368949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173399 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178689.P10148768597083368949

/-! ## A178689.P8839790741705223108

`∑[A245767(∑[n]+n)-A122835(n)]`
-/

namespace A178689.P8839790741705223108
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245767 (∑ j ∈ Finset.range (n + 1), f2 j + n) - A122835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178689.P8839790741705223108

/-! ## A178689.P17773293063919824892

`∑[A326909(n)-A006058(n)-A122835(n)]`
-/

namespace A178689.P17773293063919824892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326909 n - A006058 n - A122835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A178689.P17773293063919824892

/-!
# A178690: Expansion of (exp(3*x)-1)*(exp(2*x)-1)*(exp(x)-1).

The programs for A178690, the canonical program `A178690.P17185701927195899815` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A178690 has offset 0).

The definition of A178690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A178690.P17185701927195899815

`A155627(n)-or(1, A005057(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A178690

/-- `A155627(n)-or(1, A005057(n))` -/
def P17185701927195899815.Spec : Prop :=
  ∀ n, P17185701927195899815.a n = A178690 n

theorem P17185701927195899815.correct : P17185701927195899815.Spec := by
  intro n
  simp only [A178690]

end A178690

/-! ## A178690.P17246222728346243864

`A057427(n)+A155627(n)-A155596(n)`
-/

namespace A178690.P17246222728346243864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + (A155627 n - A155596 n)

end

end A178690.P17246222728346243864

namespace A178690

/-- `A057427(n)+A155627(n)-A155596(n)` -/
def P17246222728346243864.Spec : Prop :=
  ∀ n, P17246222728346243864.a n = A178690 n

end A178690

/-! ## A178690.P4814267599006772542

`char[A029579(n)]+A155627(n)-A155596(n)`
-/

namespace A178690.P4814267599006772542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A155627 n - A155596 n)

end

end A178690.P4814267599006772542

namespace A178690

/-- `char[A029579(n)]+A155627(n)-A155596(n)` -/
def P4814267599006772542.Spec : Prop :=
  ∀ n, P4814267599006772542.a n = A178690 n

end A178690

/-! ## A178690.P5135174751865426880

`char[A027750(n+1)]+A155627(n)-A155596(n)`
-/

namespace A178690.P5135174751865426880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A155627 n - A155596 n)

end

end A178690.P5135174751865426880

namespace A178690

/-- `char[A027750(n+1)]+A155627(n)-A155596(n)` -/
def P5135174751865426880.Spec : Prop :=
  ∀ n, P5135174751865426880.a n = A178690 n

end A178690

/-! ## A178690.P12139389098628648697

`char[A060000(n+1)]+A155627(n)-A155596(n)`
-/

namespace A178690.P12139389098628648697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A155627 n - A155596 n)

end

end A178690.P12139389098628648697

namespace A178690

/-- `char[A060000(n+1)]+A155627(n)-A155596(n)` -/
def P12139389098628648697.Spec : Prop :=
  ∀ n, P12139389098628648697.a n = A178690 n

end A178690

/-!
# A178691: Expansion of the polynomial (1+x^3)*(1+x^5)*(1+x^7)*(1+x^9)*(1+x^11)*(1+x^13).

The programs for A178691, there is no canonical definition to state claims against.
-/

/-! ## A178691.P1289027562833632630

`A142724(n+91)`
-/

namespace A178691.P1289027562833632630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142724 (n + 91)

end

end A178691.P1289027562833632630

/-! ## A178691.P14171788457133011028

`A169990(n)-a(n-1)` with `a(0)=1`
-/

namespace A178691.P14171788457133011028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A169990 n - a (n - 1)

end

end A178691.P14171788457133011028

/-! ## A178691.P6084718566742353348

`abs(∑[A033999(n)*A169990(n)])`
-/

namespace A178691.P6084718566742353348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A169990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A178691.P6084718566742353348

/-! ## A178691.P10617571023146814348

`∑[A033999(n)*A169990(n)]*A057077(2*n)`
-/

namespace A178691.P10617571023146814348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A169990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057077 (2 * n)

end

end A178691.P10617571023146814348

/-! ## A178691.P9372672921092149591

`∑[A033999(n)*A169990(n)]*A081729(3*n)`
-/

namespace A178691.P9372672921092149591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A169990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A081729 (3 * n)

end

end A178691.P9372672921092149591

/-!
# A178692: Expansion of the polynomial (1+x^3)*(1+x^5)*(1+x^7)*(1+x^9)*(1+x^11)*(1+x^13)*(1+x^15).

The programs for A178692, there is no canonical definition to state claims against.
-/

/-! ## A178692.P16140741542374546915

`A169991(n)-a(n-1)` with `a(0)=1`
-/

namespace A178692.P16140741542374546915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A169991 n - a (n - 1)

end

end A178692.P16140741542374546915

/-! ## A178692.P10207722922144647382

`gcd(A015070(A112193(n)), A178695(n))`
-/

namespace A178692.P10207722922144647382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A015070 (A112193 n).toNat) (A178695 n)

end

end A178692.P10207722922144647382

/-! ## A178692.P17485100177122977701

`A178696(n)-A185284(A026138(n+1))`
-/

namespace A178692.P17485100177122977701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178696 n - A185284 (A026138 (n + 1)).toNat

end

end A178692.P17485100177122977701

/-! ## A178692.P12200123818447325937

`A178695(n)/A140356(A126015(n+1))`
-/

namespace A178692.P12200123818447325937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178695 n : ℚ) / (A140356 (A126015 (n + 1)).toNat : ℚ)

end

end A178692.P12200123818447325937

/-! ## A178692.P7831425447870940570

`A178696(n)-A178687(A178688(n+5))`
-/

namespace A178692.P7831425447870940570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178696 n - A178687 (A178688 (n + 5)).toNat

end

end A178692.P7831425447870940570

/-!
# A178693: Numerators of coefficients of Maclaurin series for 2 - sqrt(1 - x - x^2).

The programs for A178693, there is no canonical definition to state claims against.
-/

/-! ## A178693.P11213897939867976423

`A002143(A111224(n+1)^A172471(n))`
-/

namespace A178693.P11213897939867976423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002143 (SequenceMachineLib.roundAway ((A111224 (n + 1) : ℚ) ^ (A172471 n : ℤ))).toNat

end

end A178693.P11213897939867976423

/-!
# A178694: Numerators of coefficients of Maclaurin series for (1-x-x^2)^(-1/2).

The programs for A178694, there is no canonical definition to state claims against.
-/

/-! ## A178694.P11958758404424965096

`A084770(n)/A001316(n)`
-/

namespace A178694.P11958758404424965096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084770 n : ℚ) / (A001316 n : ℚ)

end

end A178694.P11958758404424965096

/-! ## A178694.P1811180162821869984

`A084770(n)/A048896(2*n)`
-/

namespace A178694.P1811180162821869984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084770 n : ℚ) / (A048896 (2 * n) : ℚ)

end

end A178694.P1811180162821869984

/-! ## A178694.P8575477874804859412

`A084770(n)/2^A000120(n)`
-/

namespace A178694.P8575477874804859412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084770 n : ℚ) / (2 : ℚ) ^ (A000120 n : ℤ)

end

end A178694.P8575477874804859412

/-! ## A178694.P4971913248123489936

`A084770(n)/A000079(A000120(n))`
-/

namespace A178694.P4971913248123489936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084770 n : ℚ) / (A000079 (A000120 n).toNat : ℚ)

end

end A178694.P4971913248123489936

/-! ## A178694.P5715222663042792064

`A084770(n)/gcd(A000079(n), A084770(n))`
-/

namespace A178694.P5715222663042792064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084770 n : ℚ) / (Int.gcd (A000079 n) (A084770 n) : ℚ)

end

end A178694.P5715222663042792064

/-!
# A178695: Expansion of the polynomial (1+x^3)*(1+x^5)*(1+x^7)*(1+x^9)*(1+x^11)*(1+x^13)*(1+x^15)*(1+x^17).

The programs for A178695, there is no canonical definition to state claims against.
-/

/-! ## A178695.P8479208423901760024

`A169992(n)-a(n-1)` with `a(0)=1`
-/

namespace A178695.P8479208423901760024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A169992 n - a (n - 1)

end

end A178695.P8479208423901760024

/-! ## A178695.P16546258649554702096

`A178696(n)-A185284(A000201(n+1))`
-/

namespace A178695.P16546258649554702096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178696 n - A185284 (A000201 (n + 1)).toNat

end

end A178695.P16546258649554702096

/-! ## A178695.P10440848279831900370

`A178696(n)-A025469(A104144(n+2))`
-/

namespace A178695.P10440848279831900370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178696 n - A025469 (A104144 (n + 2)).toNat

end

end A178695.P10440848279831900370

/-! ## A178695.P9844377397298105460

`A178697(n)-A178687(A178688(n+3))`
-/

namespace A178695.P9844377397298105460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178697 n - A178687 (A178688 (n + 3)).toNat

end

end A178695.P9844377397298105460

/-! ## A178695.P4800402163983546611

`A178696(n)-A010057(A353838(3*(n+1)))`
-/

namespace A178695.P4800402163983546611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178696 n - A010057 (A353838 (3 * (n + 1))).toNat

end

end A178695.P4800402163983546611

/-!
# A178696: Expansion of the polynomial (1+x^3)*(1+x^5)*(1+x^7)*(1+x^9)*(1+x^11)*(1+x^13)*(1+x^15)*(1+x^17)*(1+x^19).

The programs for A178696, there is no canonical definition to state claims against.
-/

/-! ## A178696.P16933558902547231495

`A169993(n)-a(n-1)` with `a(0)=1`
-/

namespace A178696.P16933558902547231495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A169993 n - a (n - 1)

end

end A178696.P16933558902547231495

/-! ## A178696.P243229991590512858

`A178697(n)-A185284(A046687(n+1))`
-/

namespace A178696.P243229991590512858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178697 n - A185284 (A046687 (n + 1)).toNat

end

end A178696.P243229991590512858

/-! ## A178696.P1694370164381186421

`A178697(n)-A102683(A339502(n+7))`
-/

namespace A178696.P1694370164381186421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178697 n - A102683 (A339502 (n + 7)).toNat

end

end A178696.P1694370164381186421

/-! ## A178696.P3218083931202609352

`A178697(n)-A178686(A178688(n+1))`
-/

namespace A178696.P3218083931202609352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178697 n - A178686 (A178688 (n + 1)).toNat

end

end A178696.P3218083931202609352

/-!
# A178697: Expansion of the polynomial (1+x^3)*(1+x^5)*(1+x^7)*(1+x^9)*(1+x^11)*(1+x^13)*(1+x^15)*(1+x^17)*(1+x^19)*(1+x^21).

The programs for A178697, there is no canonical definition to state claims against.
-/

/-! ## A178697.P5633488552644767689

`A169994(n)-a(n-1)` with `a(0)=1`
-/

namespace A178697.P5633488552644767689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A169994 n - a (n - 1)

end

end A178697.P5633488552644767689

/-! ## A178697.P3953443605010247310

`abs(∑[A033999(n)*A169994(n)])`
-/

namespace A178697.P3953443605010247310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A169994 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A178697.P3953443605010247310

/-! ## A178697.P10504885986789918413

`(-1)^n*∑[A033999(n+2)*A169994(n)]`
-/

namespace A178697.P10504885986789918413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 2) * A169994 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A178697.P10504885986789918413

/-! ## A178697.P8522915818509029264

`∑[A033999(n)*A169994(n)]*A033999(n+2)`
-/

namespace A178697.P8522915818509029264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A169994 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 (n + 2)

end

end A178697.P8522915818509029264

/-! ## A178697.P4473710114011712336

`∑[A033999(n)*A169994(n)]*A057077(2*n)`
-/

namespace A178697.P4473710114011712336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A169994 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057077 (2 * n)

end

end A178697.P4473710114011712336

/-! ## A178697.P13753403629107994402

`∑[A033999(n)*A169994(n)]*A087960(2*n)`
-/

namespace A178697.P13753403629107994402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A169994 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A087960 (2 * n)

end

end A178697.P13753403629107994402

/-! ## A178697.P16370225473293788007

`∑[A033999(n)*A169994(n)]/A033999(41*n)`
-/

namespace A178697.P16370225473293788007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A169994 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A033999 (41 * n) : ℚ)

end

end A178697.P16370225473293788007

/-! ## A178697.P8658415471397643783

`∑[A033999(n)*A169994(n)]*A108086(C(2*n, 2))`
-/

namespace A178697.P8658415471397643783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A169994 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A108086 (Nat.choose (2 * n) 2)

end

end A178697.P8658415471397643783

