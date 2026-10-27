import SequenceMachineLib.Basic
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
import Seq.B000.C016
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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
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
# A375300: Triangle T(n,k) read by rows that has the A001710(n)-th lexicographic permutation of [1,...,n] as row n.

The programs for A375300, there is no canonical definition to state claims against.
-/

/-! ## A375300.P3091676157736963834

`A124769(A333271(n+1)+A035528(n))`
-/

namespace A375300.P3091676157736963834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (A333271 (n + 1) + A035528 n).toNat

end

end A375300.P3091676157736963834

/-! ## A375300.P5539445926868507931

`A123400(A136158(3*n)+A024816(n+1))`
-/

namespace A375300.P5539445926868507931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123400 (A136158 (3 * n) + A024816 (n + 1)).toNat

end

end A375300.P5539445926868507931

/-! ## A375300.P14087509495212538835

`A377168(A329703(n))-char[A262923(2*(n+2))]`
-/

namespace A375300.P14087509495212538835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262923 (2 * (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377168 (A329703 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A375300.P14087509495212538835

/-! ## A375300.P4133270620496929440

`A377168(A329703(n))-char[A287507(3*n+1)]`
-/

namespace A375300.P4133270620496929440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287507 (3 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377168 (A329703 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A375300.P4133270620496929440

/-! ## A375300.P16929470593989501952

`A366770(A334436(n+3)%A116053(2*n+5))`
-/

namespace A375300.P16929470593989501952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366770 (Int.tmod (A334436 (n + 3)) (A116053 (2 * n + 5))).toNat

end

end A375300.P16929470593989501952

/-!
# A375302: a(n) is the rank of row n of A375301 in a lexicographic permutation of [1, ..., n].

The programs for A375302, there is no canonical definition to state claims against.
-/

/-! ## A375302.P18310105198823815284

`C(∏{e}[A351609(n)+1, #+1], 2)-1`
-/

namespace A375302.P18310105198823815284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351609 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)) 2 : ℤ) - 1

end

end A375302.P18310105198823815284

/-! ## A375302.P16519619430870968411

`A123578(C(C(A346006(n), 2), 2))`
-/

namespace A375302.P16519619430870968411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (Nat.choose (Nat.choose (A346006 n).toNat 2) 2)

end

end A375302.P16519619430870968411

/-!
# A375303: a(n) is the rank of row n of A130517 in a lexicographic permutation of [1, ..., n].

The programs for A375303, there is no canonical definition to state claims against.
-/

/-! ## A375303.P4601937449353703903

`A065183(A007489(n))`
-/

namespace A375303.P4601937449353703903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065183 (A007489 n).toNat

end

end A375303.P4601937449353703903

/-! ## A375303.P9535481139631311994

`A261220(A001189(n+1))`
-/

namespace A375303.P9535481139631311994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261220 (A001189 (n + 1)).toNat

end

end A375303.P9535481139631311994

/-! ## A375303.P17421876759898044219

`A261220(A000085(n+1)-1)`
-/

namespace A375303.P17421876759898044219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261220 (A000085 (n + 1) - 1).toNat

end

end A375303.P17421876759898044219

/-! ## A375303.P17750160695467518921

`A275804(A000110(n+1)-1)`
-/

namespace A375303.P17750160695467518921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275804 (A000110 (n + 1) - 1).toNat

end

end A375303.P17750160695467518921

/-!
# A375306: Terms as well as digits fit the even/odd/odd pattern; this is the lexicographically earliest injective sequence with this property.

The programs for A375306, there is no canonical definition to state claims against.
-/

/-! ## A375306.P3169133395149105479

`A184955(2*n)+A006369(n)`
-/

namespace A375306.P3169133395149105479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (2 * n) + A006369 n

end

end A375306.P3169133395149105479

/-!
# A375307: a(n) = Sum_{k=0..floor(3*n/5)} binomial(3*n-3*k,2*k).

The programs for A375307, the canonical program `A375307.P13392262908807206912` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375307 has offset 0).

The definition of A375307 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375307.P13392262908807206912

`2*a(n-1)+5*a(n-2)+3*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=16, a(4)=52`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A375307

/-- `2*a(n-1)+5*a(n-2)+3*a(n-3)-3*a(n-4)+a(n-5)` -/
def P13392262908807206912.Spec : Prop :=
  ∀ n, P13392262908807206912.a n = A375307 n

theorem P13392262908807206912.correct : P13392262908807206912.Spec := by
  intro n
  simp only [A375307]

end A375307

/-! ## A375307.P12792177317614426448

`A116090(2*n)`
-/

namespace A375307.P12792177317614426448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116090 (2 * n)

end

end A375307.P12792177317614426448

namespace A375307

/-- `A116090(2*n)` -/
def P12792177317614426448.Spec : Prop :=
  ∀ n, P12792177317614426448.a n = A375307 n

end A375307

/-! ## A375307.P4924325064662080539

`A001687(A016921(n))`
-/

namespace A375307.P4924325064662080539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (A016921 n).toNat

end

end A375307.P4924325064662080539

namespace A375307

/-- `A001687(A016921(n))` -/
def P4924325064662080539.Spec : Prop :=
  ∀ n, P4924325064662080539.a n = A375307 n

end A375307

/-! ## A375307.P12729947219673640621

`A001687(A308196(n))`
-/

namespace A375307.P12729947219673640621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (A308196 n).toNat

end

end A375307.P12729947219673640621

namespace A375307

/-- `A001687(A308196(n))` -/
def P12729947219673640621.Spec : Prop :=
  ∀ n, P12729947219673640621.a n = A375307 n

end A375307

/-! ## A375307.P11509609408557491026

`A001687(A016777(2*n))`
-/

namespace A375307.P11509609408557491026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (A016777 (2 * n)).toNat

end

end A375307.P11509609408557491026

namespace A375307

/-- `A001687(A016777(2*n))` -/
def P11509609408557491026.Spec : Prop :=
  ∀ n, P11509609408557491026.a n = A375307 n

end A375307

/-! ## A375307.P2687962962924168475

`A001687(A016861(n)+n)`
-/

namespace A375307.P2687962962924168475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (A016861 n + (n : ℤ)).toNat

end

end A375307.P2687962962924168475

namespace A375307

/-- `A001687(A016861(n)+n)` -/
def P2687962962924168475.Spec : Prop :=
  ∀ n, P2687962962924168475.a n = A375307 n

end A375307

/-! ## A375307.P17466997269666471961

`A001687(A144917(n+2))`
-/

namespace A375307.P17466997269666471961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (A144917 (n + 2)).toNat

end

end A375307.P17466997269666471961

namespace A375307

/-- `A001687(A144917(n+2))` -/
def P17466997269666471961.Spec : Prop :=
  ∀ n, P17466997269666471961.a n = A375307 n

end A375307

/-!
# A375308: a(n) = Sum_{k=0..floor(2*n/3)} binomial(4*n-4*k,2*k).

The programs for A375308, the canonical program `A375308.P15703181248884195186` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375308 has offset 0).

The definition of A375308 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375308.P15703181248884195186

`A375279(2*n)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A375308

/-- `A375279(2*n)` -/
def P15703181248884195186.Spec : Prop :=
  ∀ n, P15703181248884195186.a n = A375308 n

theorem P15703181248884195186.correct : P15703181248884195186.Spec := by
  intro n
  simp only [A375308]

end A375308

/-! ## A375308.P5277026717600480148

`A375314(2*n)`
-/

namespace A375308.P5277026717600480148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375314 (2 * n)

end

end A375308.P5277026717600480148

namespace A375308

/-- `A375314(2*n)` -/
def P5277026717600480148.Spec : Prop :=
  ∀ n, P5277026717600480148.a n = A375308 n

end A375308

/-! ## A375308.P8943464622785543990

`A291741(A004273(2*n))`
-/

namespace A375308.P8943464622785543990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291741 (A004273 (2 * n)).toNat

end

end A375308.P8943464622785543990

namespace A375308

/-- `A291741(A004273(2*n))` -/
def P8943464622785543990.Spec : Prop :=
  ∀ n, P8943464622785543990.a n = A375308 n

end A375308

/-! ## A375308.P12100918508051289288

`A291741(A163985(2*n))`
-/

namespace A375308.P12100918508051289288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291741 (A163985 (2 * n)).toNat

end

end A375308.P12100918508051289288

namespace A375308

/-- `A291741(A163985(2*n))` -/
def P12100918508051289288.Spec : Prop :=
  ∀ n, P12100918508051289288.a n = A375308 n

end A375308

/-! ## A375308.P13606976470331481068

`A375279(A004277(n))+A000007(n+4)`
-/

namespace A375308.P13606976470331481068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375279 (A004277 n).toNat + A000007 (n + 4)

end

end A375308.P13606976470331481068

namespace A375308

/-- `A375279(A004277(n))+A000007(n+4)` -/
def P13606976470331481068.Spec : Prop :=
  ∀ n, P13606976470331481068.a n = A375308 n

end A375308

/-!
# A375310: Numbers k such that k!^2 + (k-1)!^2 - 1 is prime.

The programs for A375310, there is no canonical definition to state claims against.
-/

/-! ## A375310.P17450148706081225146

`A134930(eq[A054716(n+3)-2, A103452(n)])`
-/

namespace A375310.P17450148706081225146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054716 (n + 3) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134930 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A375310.P17450148706081225146

/-!
# A375313: Primes p such that the prime triple (p, p+2 or p+4, p+6) generates a prime number when the digits are concatenated.

The programs for A375313, there is no canonical definition to state claims against.
-/

/-! ## A375313.P3278302078173029547

`∩[A007529(n+1), A030468(n+1)]`
-/

namespace A375313.P3278302078173029547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375313.P3278302078173029547

/-!
# A375314: a(n) = Sum_{k=0..floor(n/2)} binomial(4*k,n-2*k).

The programs for A375314, the canonical program `A375314.P18178343523960760969` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375314 has offset 0).

The definition of A375314 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375314.P18178343523960760969

`a(n-2)+4*a(n-3)+6*a(n-4)+4*a(n-5)+a(n-6)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=4, a(4)=7, a(5)=12`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A375314

/-- `a(n-2)+4*a(n-3)+6*a(n-4)+4*a(n-5)+a(n-6)` -/
def P18178343523960760969.Spec : Prop :=
  ∀ n, (P18178343523960760969.a n : ℤ) = A375314 n

theorem P18178343523960760969.correct : P18178343523960760969.Spec := by
  intro n
  simp only [A375314]

end A375314

/-! ## A375314.P16610653433902365600

`A375316(n)-a(n-1)` with `a(0)=1`
-/

namespace A375314.P16610653433902365600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A375316 n - a (n - 1)

end

end A375314.P16610653433902365600

namespace A375314

/-- `A375316(n)-a(n-1)` -/
def P16610653433902365600.Spec : Prop :=
  ∀ n, P16610653433902365600.a n = A375314 n

end A375314

/-! ## A375314.P10940674545520173963

`A291741(A004273(n))`
-/

namespace A375314.P10940674545520173963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291741 (A004273 n).toNat

end

end A375314.P10940674545520173963

namespace A375314

/-- `A291741(A004273(n))` -/
def P10940674545520173963.Spec : Prop :=
  ∀ n, P10940674545520173963.a n = A375314 n

end A375314

/-! ## A375314.P7391623852913089224

`A291741(A163985(n))`
-/

namespace A375314.P7391623852913089224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291741 (A163985 n).toNat

end

end A375314.P7391623852913089224

namespace A375314

/-- `A291741(A163985(n))` -/
def P7391623852913089224.Spec : Prop :=
  ∀ n, P7391623852913089224.a n = A375314 n

end A375314

/-! ## A375314.P12077466383656800985

`A291741(2*n-A057427(n))`
-/

namespace A375314.P12077466383656800985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291741 ((2 * n : ℤ) - A057427 n).toNat

end

end A375314.P12077466383656800985

namespace A375314

/-- `A291741(2*n-A057427(n))` -/
def P12077466383656800985.Spec : Prop :=
  ∀ n, P12077466383656800985.a n = A375314 n

end A375314

/-!
# A375315: Expansion of (1 + x)/(1 - x^2*(1 + x)^3).

The programs for A375315, the canonical program `A375315.P15218912521083381031` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375315 has offset 0).

The definition of A375315 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-x^2-3x^3-3x^4-x^5))` (program `A375315.P15218912521083381031`, by `A375315.P15218912521083381031.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A375315.P15218912521083381031

`ogf((1+x)/(1-x^2-3x^3-3x^4-x^5))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A375315

/-- `ogf((1+x)/(1-x^2-3x^3-3x^4-x^5))` -/
def P15218912521083381031.Spec : Prop :=
  ∀ n, P15218912521083381031.a n = A375315 n

theorem P15218912521083381031.correct : P15218912521083381031.Spec := by
  intro n
  simp only [A375315]

end A375315

/-! ## A375315.P11831948456720172580

`a(n-2)+3*a(n-3)+3*a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4, a(4)=7`
-/

namespace A375315.P11831948456720172580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 4, 7] fun n a =>
  a (n - 2) + 3 * a (n - 3) + 3 * a (n - 4) + a (n - 5)

end

end A375315.P11831948456720172580

namespace A375315

/-- `a(n-2)+3*a(n-3)+3*a(n-4)+a(n-5)` -/
def P11831948456720172580.Spec : Prop :=
  ∀ n, (P11831948456720172580.a n : ℤ) = A375315 n

end A375315

/-! ## A375315.P7370986199689258868

`A001687(3*(n+1))`
-/

namespace A375315.P7370986199689258868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (3 * (n + 1))

end

end A375315.P7370986199689258868

namespace A375315

/-- `A001687(3*(n+1))` -/
def P7370986199689258868.Spec : Prop :=
  ∀ n, P7370986199689258868.a n = A375315 n

end A375315

/-! ## A375315.P15133682764996604421

`∑[abs(Δ[A001687(3*n)])]`
-/

namespace A375315.P15133682764996604421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375315.P15133682764996604421

namespace A375315

/-- `∑[abs(Δ[A001687(3*n)])]` -/
def P15133682764996604421.Spec : Prop :=
  ∀ n, P15133682764996604421.a n = A375315 n

end A375315

/-! ## A375315.P16480659405384702163

`A375317(n)-a(n-1)` with `a(0)=1`
-/

namespace A375315.P16480659405384702163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A375317 n - a (n - 1)

end

end A375315.P16480659405384702163

namespace A375315

/-- `A375317(n)-a(n-1)` -/
def P16480659405384702163.Spec : Prop :=
  ∀ n, P16480659405384702163.a n = A375315 n

end A375315

/-! ## A375315.P5640485536407461686

`A375317(n+1)-(A116090(n+1)+A116090(n))`
-/

namespace A375315.P5640485536407461686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375317 (n + 1) - (A116090 (n + 1) + A116090 n)

end

end A375315.P5640485536407461686

namespace A375315

/-- `A375317(n+1)-(A116090(n+1)+A116090(n))` -/
def P5640485536407461686.Spec : Prop :=
  ∀ n, P5640485536407461686.a n = A375315 n

end A375315

/-!
# A375316: Expansion of (1 + x)/(1 - x^2*(1 + x)^4).

The programs for A375316, the canonical program `A375316.P12889222795696281699` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375316 has offset 0).

The definition of A375316 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-x^2-4x^3-6x^4-4x^5-x^6))` (program `A375316.P12889222795696281699`, by `A375316.P12889222795696281699.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A375316.P4013927241074724504

`a(n-2)+4*a(n-3)+6*a(n-4)+4*a(n-5)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=5, a(4)=11, a(5)=19`
-/

namespace A375316.P4013927241074724504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 5, 11, 19] fun n a =>
  a (n - 2) + 4 * a (n - 3) + 6 * a (n - 4) + 4 * a (n - 5) + a (n - 6)

end

end A375316.P4013927241074724504

namespace A375316

/-- `a(n-2)+4*a(n-3)+6*a(n-4)+4*a(n-5)+a(n-6)` -/
def P4013927241074724504.Spec : Prop :=
  ∀ n, (P4013927241074724504.a n : ℤ) = A375316 n

end A375316

/-! ## A375316.P12889222795696281699

`ogf((1+x)/(1-x^2-4x^3-6x^4-4x^5-x^6))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A375316

/-- `ogf((1+x)/(1-x^2-4x^3-6x^4-4x^5-x^6))` -/
def P12889222795696281699.Spec : Prop :=
  ∀ n, P12889222795696281699.a n = A375316 n

theorem P12889222795696281699.correct : P12889222795696281699.Spec := by
  intro n
  simp only [A375316]

end A375316

/-! ## A375316.P16071260781276962587

`A291741(2*n)`
-/

namespace A375316.P16071260781276962587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291741 (2 * n)

end

end A375316.P16071260781276962587

namespace A375316

/-- `A291741(2*n)` -/
def P16071260781276962587.Spec : Prop :=
  ∀ n, P16071260781276962587.a n = A375316 n

end A375316

/-! ## A375316.P12237879292159997869

`A291741(A005843(n))%A006976(n+3)`
-/

namespace A375316.P12237879292159997869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291741 (A005843 n).toNat) (A006976 (n + 3))

end

end A375316.P12237879292159997869

namespace A375316

/-- `A291741(A005843(n))%A006976(n+3)` -/
def P12237879292159997869.Spec : Prop :=
  ∀ n, P12237879292159997869.a n = A375316 n

end A375316

/-!
# A375317: Expansion of (1 + x)^2/(1 - x^2*(1 + x)^3).

The programs for A375317, the canonical program `A375317.P2463577981191266148` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375317 has offset 0).

The definition of A375317 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+x^2)/(1-x^2-3x^3-3x^4-x^5))` (program `A375317.P2463577981191266148`, by `A375317.P2463577981191266148.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A375317.P2463577981191266148

`ogf((1+2x+x^2)/(1-x^2-3x^3-3x^4-x^5))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A375317

/-- `ogf((1+2x+x^2)/(1-x^2-3x^3-3x^4-x^5))` -/
def P2463577981191266148.Spec : Prop :=
  ∀ n, P2463577981191266148.a n = A375317 n

theorem P2463577981191266148.correct : P2463577981191266148.Spec := by
  intro n
  simp only [A375317]

end A375317

/-! ## A375317.P5173104179920481970

`a(n-2)+3*a(n-3)+3*a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=5, a(4)=11`
-/

namespace A375317.P5173104179920481970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 5, 11] fun n a =>
  a (n - 2) + 3 * a (n - 3) + 3 * a (n - 4) + a (n - 5)

end

end A375317.P5173104179920481970

namespace A375317

/-- `a(n-2)+3*a(n-3)+3*a(n-4)+a(n-5)` -/
def P5173104179920481970.Spec : Prop :=
  ∀ n, (P5173104179920481970.a n : ℤ) = A375317 n

end A375317

/-! ## A375317.P572857570216177313

`A001687(3*(n+1)+2)`
-/

namespace A375317.P572857570216177313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001687 (3 * (n + 1) + 2)

end

end A375317.P572857570216177313

namespace A375317

/-- `A001687(3*(n+1)+2)` -/
def P572857570216177313.Spec : Prop :=
  ∀ n, P572857570216177313.a n = A375317 n

end A375317

/-! ## A375317.P1810692429701403047

`A116090(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A375317.P1810692429701403047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A116090 (n + 2) - a (n - 1)

end

end A375317.P1810692429701403047

namespace A375317

/-- `A116090(n+2)-a(n-1)` -/
def P1810692429701403047.Spec : Prop :=
  ∀ n, P1810692429701403047.a n = A375317 n

end A375317

/-! ## A375317.P3693251492688042602

`A375364(n+2)+A033999(n+1)`
-/

namespace A375317.P3693251492688042602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375364 (n + 2) + A033999 (n + 1)

end

end A375317.P3693251492688042602

namespace A375317

/-- `A375364(n+2)+A033999(n+1)` -/
def P3693251492688042602.Spec : Prop :=
  ∀ n, P3693251492688042602.a n = A375317 n

end A375317

/-! ## A375317.P14176652053142392900

`A375364(n+2)-A054354(A054353(n+1))`
-/

namespace A375317.P14176652053142392900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375364 (n + 2) - A054354 (A054353 (n + 1)).toNat

end

end A375317.P14176652053142392900

namespace A375317

/-- `A375364(n+2)-A054354(A054353(n+1))` -/
def P14176652053142392900.Spec : Prop :=
  ∀ n, P14176652053142392900.a n = A375317 n

end A375317

/-!
# A375318: Expansion of 1/(1 - x^3*(1 + x)^4).

The programs for A375318, the canonical program `A375318.P11413705080849687556` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375318 has offset 0).

The definition of A375318 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-4x^4-6x^5-4x^6-x^7))` (program `A375318.P11413705080849687556`, by `A375318.P11413705080849687556.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A375318.P2067737879130941398

`a(n-3)+4*a(n-4)+6*a(n-5)+4*a(n-6)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=4, a(5)=6, a(6)=5`
-/

namespace A375318.P2067737879130941398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1, 4, 6, 5] fun n a =>
  a (n - 3) + 4 * a (n - 4) + 6 * a (n - 5) + 4 * a (n - 6) + a (n - 7)

end

end A375318.P2067737879130941398

namespace A375318

/-- `a(n-3)+4*a(n-4)+6*a(n-5)+4*a(n-6)+a(n-7)` -/
def P2067737879130941398.Spec : Prop :=
  ∀ n, (P2067737879130941398.a n : ℤ) = A375318 n

end A375318

/-! ## A375318.P11413705080849687556

`ogf(1/(1-x^3-4x^4-6x^5-4x^6-x^7))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A375318

/-- `ogf(1/(1-x^3-4x^4-6x^5-4x^6-x^7))` -/
def P11413705080849687556.Spec : Prop :=
  ∀ n, P11413705080849687556.a n = A375318 n

theorem P11413705080849687556.correct : P11413705080849687556.Spec := by
  intro n
  simp only [A375318]

end A375318

/-! ## A375318.P8669950205735507371

`A369814(4*n)`
-/

namespace A375318.P8669950205735507371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369814 (4 * n)

end

end A375318.P8669950205735507371

namespace A375318

/-- `A369814(4*n)` -/
def P8669950205735507371.Spec : Prop :=
  ∀ n, P8669950205735507371.a n = A375318 n

end A375318

/-! ## A375318.P516602244320848056

`A375320(n)-a(n-1)` with `a(0)=1`
-/

namespace A375318.P516602244320848056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A375320 n - a (n - 1)

end

end A375318.P516602244320848056

namespace A375318

/-- `A375320(n)-a(n-1)` -/
def P516602244320848056.Spec : Prop :=
  ∀ n, P516602244320848056.a n = A375318 n

end A375318

/-!
# A375319: Expansion of (1 + x)/(1 - x^3*(1 + x)^3).

The programs for A375319, the canonical program `A375319.P14669537948721260129` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375319 has offset 0).

The definition of A375319 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-x^3-3x^4-3x^5-x^6))` (program `A375319.P14669537948721260129`, by `A375319.P14669537948721260129.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A375319.P1148940894808745649

`a(n-3)+3*a(n-4)+3*a(n-5)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1, a(4)=4, a(5)=6`
-/

namespace A375319.P1148940894808745649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 1, 4, 6] fun n a =>
  a (n - 3) + 3 * a (n - 4) + 3 * a (n - 5) + a (n - 6)

end

end A375319.P1148940894808745649

namespace A375319

/-- `a(n-3)+3*a(n-4)+3*a(n-5)+a(n-6)` -/
def P1148940894808745649.Spec : Prop :=
  ∀ n, (P1148940894808745649.a n : ℤ) = A375319 n

end A375319

/-! ## A375319.P14669537948721260129

`ogf((1+x)/(1-x^3-3x^4-3x^5-x^6))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A375319

/-- `ogf((1+x)/(1-x^3-3x^4-3x^5-x^6))` -/
def P14669537948721260129.Spec : Prop :=
  ∀ n, P14669537948721260129.a n = A375319 n

theorem P14669537948721260129.correct : P14669537948721260129.Spec := by
  intro n
  simp only [A375319]

end A375319

/-! ## A375319.P4828391253733656478

`A115055(n+1)+A115055(n+2)`
-/

namespace A375319.P4828391253733656478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115055 (n + 1) + A115055 (n + 2)

end

end A375319.P4828391253733656478

namespace A375319

/-- `A115055(n+1)+A115055(n+2)` -/
def P4828391253733656478.Spec : Prop :=
  ∀ n, P4828391253733656478.a n = A375319 n

end A375319

/-! ## A375319.P10293605588377118840

`A375321(n)-a(n-1)` with `a(0)=1`
-/

namespace A375319.P10293605588377118840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A375321 n - a (n - 1)

end

end A375319.P10293605588377118840

namespace A375319

/-- `A375321(n)-a(n-1)` -/
def P10293605588377118840.Spec : Prop :=
  ∀ n, P10293605588377118840.a n = A375319 n

end A375319

/-!
# A375320: Expansion of (1 + x)/(1 - x^3*(1 + x)^4).

The programs for A375320, the canonical program `A375320.P12081057098021114222` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375320 has offset 0).

The definition of A375320 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-x^3-4x^4-6x^5-4x^6-x^7))` (program `A375320.P12081057098021114222`, by `A375320.P12081057098021114222.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A375320.P8365662817105466861

`a(n-3)+4*a(n-4)+6*a(n-5)+4*a(n-6)+a(n-7)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1, a(4)=5, a(5)=10, a(6)=11`
-/

namespace A375320.P8365662817105466861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0, 1, 5, 10, 11] fun n a =>
  a (n - 3) + 4 * a (n - 4) + 6 * a (n - 5) + 4 * a (n - 6) + a (n - 7)

end

end A375320.P8365662817105466861

namespace A375320

/-- `a(n-3)+4*a(n-4)+6*a(n-5)+4*a(n-6)+a(n-7)` -/
def P8365662817105466861.Spec : Prop :=
  ∀ n, (P8365662817105466861.a n : ℤ) = A375320 n

end A375320

/-! ## A375320.P12081057098021114222

`ogf((1+x)/(1-x^3-4x^4-6x^5-4x^6-x^7))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A375320

/-- `ogf((1+x)/(1-x^3-4x^4-6x^5-4x^6-x^7))` -/
def P12081057098021114222.Spec : Prop :=
  ∀ n, P12081057098021114222.a n = A375320 n

theorem P12081057098021114222.correct : P12081057098021114222.Spec := by
  intro n
  simp only [A375320]

end A375320

/-! ## A375320.P2842070078840962105

`A369814(3*(n+1)+n)`
-/

namespace A375320.P2842070078840962105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369814 (3 * (n + 1) + n)

end

end A375320.P2842070078840962105

namespace A375320

/-- `A369814(3*(n+1)+n)` -/
def P2842070078840962105.Spec : Prop :=
  ∀ n, P2842070078840962105.a n = A375320 n

end A375320

/-! ## A375320.P15741008662382505967

`A375318(abs(1-n))+A375318(n)`
-/

namespace A375320.P15741008662382505967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375318 |1 - (n : ℤ)|.toNat + A375318 n

end

end A375320.P15741008662382505967

namespace A375320

/-- `A375318(abs(1-n))+A375318(n)` -/
def P15741008662382505967.Spec : Prop :=
  ∀ n, P15741008662382505967.a n = A375320 n

end A375320

/-!
# A375321: Expansion of (1 + x)^2/(1 - x^3*(1 + x)^3).

The programs for A375321, the canonical program `A375321.P10750031478637682014` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375321 has offset 0).

The definition of A375321 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+x^2)/(1-x^3-3x^4-3x^5-x^6))` (program `A375321.P10750031478637682014`, by `A375321.P10750031478637682014.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A375321.P17661163339954603702

`a(n-3)+3*a(n-4)+3*a(n-5)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=1, a(4)=5, a(5)=10`
-/

namespace A375321.P17661163339954603702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1, 1, 5, 10] fun n a =>
  a (n - 3) + 3 * a (n - 4) + 3 * a (n - 5) + a (n - 6)

end

end A375321.P17661163339954603702

namespace A375321

/-- `a(n-3)+3*a(n-4)+3*a(n-5)+a(n-6)` -/
def P17661163339954603702.Spec : Prop :=
  ∀ n, (P17661163339954603702.a n : ℤ) = A375321 n

end A375321

/-! ## A375321.P10750031478637682014

`ogf((1+2x+x^2)/(1-x^3-3x^4-3x^5-x^6))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A375321

/-- `ogf((1+2x+x^2)/(1-x^3-3x^4-3x^5-x^6))` -/
def P10750031478637682014.Spec : Prop :=
  ∀ n, P10750031478637682014.a n = A375321 n

theorem P10750031478637682014.correct : P10750031478637682014.Spec := by
  intro n
  simp only [A375321]

end A375321

/-! ## A375321.P17829264768922936474

`A115055(n+5)-a(n-1)` with `a(0)=1`
-/

namespace A375321.P17829264768922936474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A115055 (n + 5) - a (n - 1)

end

end A375321.P17829264768922936474

namespace A375321

/-- `A115055(n+5)-a(n-1)` -/
def P17829264768922936474.Spec : Prop :=
  ∀ n, P17829264768922936474.a n = A375321 n

end A375321

/-!
# A375322: Carmichael numbers k such that k-1 is a Novak-Carmichael number.

The programs for A375322, there is no canonical definition to state claims against.
-/

/-! ## A375322.P5652979893319567328

`A002997(lt[A165656(n+1), A080593(n)])`
-/

namespace A375322.P5652979893319567328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080593 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A375322.P5652979893319567328

/-! ## A375322.P10998798835750163337

`A002997(A013948(n+2)%A007541(3*(n+1)))`
-/

namespace A375322.P10998798835750163337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002997 (Int.tmod (A013948 (n + 2)) (A007541 (3 * (n + 1)))).toNat

end

end A375322.P10998798835750163337

/-!
# A375324: Numbers of the form 3^k + 2 that admit at least one divisor of the form 3^m + 2 with 1 <= m < k.

The programs for A375324, there is no canonical definition to state claims against.
-/

/-! ## A375324.P8455035460680449919

`3^A388145(n+1)+2`
-/

namespace A375324.P8455035460680449919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A388145 (n + 1) : ℤ) + 2

end

end A375324.P8455035460680449919

/-! ## A375324.P5695587705574210498

`A168607(A388145(n+1))`
-/

namespace A375324.P5695587705574210498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168607 (A388145 (n + 1)).toNat

end

end A375324.P5695587705574210498

/-!
# A375325: a(n) is the number of divisors of n which are Loeschian numbers (A003136).

The programs for A375325, the canonical program `A375325.P4910902372028041489` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375325 has offset 1).

The definition of A375325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375325.P4910902372028041489

`∑{d}[n+1, A353816(#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A375325

/-- `∑{d}[n+1, A353816(#)]` -/
def P4910902372028041489.Spec : Prop :=
  ∀ n, P4910902372028041489.a n = A375325 (n + 1)

theorem P4910902372028041489.correct : P4910902372028041489.Spec := by
  intro n
  simp only [A375325, Nat.add_sub_cancel]

end A375325

/-! ## A375325.P14777041640520747796

`∑{d}[n+1, floor(sqrt(A325973(#)%3))]`
-/

namespace A375325.P14777041640520747796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.sqrt (Int.tmod (A325973 d) 3)

end

end A375325.P14777041640520747796

namespace A375325

/-- `∑{d}[n+1, floor(sqrt(A325973(#)%3))]` -/
def P14777041640520747796.Spec : Prop :=
  ∀ n, P14777041640520747796.a n = A375325 (n + 1)

end A375325

/-! ## A375325.P15469109332819058105

`gcd(A007846(n), A246655(A367955(n+2)))`
-/

namespace A375325.P15469109332819058105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007846 n) (A246655 (A367955 (n + 2)).toNat)

end

end A375325.P15469109332819058105

namespace A375325

/-- `gcd(A007846(n), A246655(A367955(n+2)))` -/
def P15469109332819058105.Spec : Prop :=
  ∀ n, (P15469109332819058105.a n : ℤ) = A375325 (n + 1)

end A375325

/-!
# A375337: a(n) = binomial(prime(n), phi(prime(n) + 1)).

The programs for A375337, the canonical program `A375337.P16252604061458685989` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375337 has offset 1).

The definition of A375337 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A000040(n+1), A000010(A000040(n+1)+1))` (program `A375337.P16252604061458685989`, by `A375337.P16252604061458685989.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A375337.P16252604061458685989

`C(A000040(n+1), A000010(A000040(n+1)+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A375337

/-- `C(A000040(n+1), A000010(A000040(n+1)+1))` -/
def P16252604061458685989.Spec : Prop :=
  ∀ n, (P16252604061458685989.a n : ℤ) = A375337 (n + 1)

theorem P16252604061458685989.correct : P16252604061458685989.Spec := by
  intro n
  simp only [A375337, Nat.add_sub_cancel]

end A375337

/-! ## A375337.P3767772825452073364

`C(A000040(n+1), A000010(A008864(n+1)))`
-/

namespace A375337.P3767772825452073364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 1)).toNat (A000010 (A008864 (n + 1)).toNat).toNat

end

end A375337.P3767772825452073364

namespace A375337

/-- `C(A000040(n+1), A000010(A008864(n+1)))` -/
def P3767772825452073364.Spec : Prop :=
  ∀ n, (P3767772825452073364.a n : ℤ) = A375337 (n + 1)

end A375337

/-! ## A375337.P18048437867009786725

`C(A006005(n+1), A062401(A006005(n+1)))`
-/

namespace A375337.P18048437867009786725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006005 (n + 1)).toNat (A062401 (A006005 (n + 1)).toNat).toNat

end

end A375337.P18048437867009786725

namespace A375337

/-- `C(A006005(n+1), A062401(A006005(n+1)))` -/
def P18048437867009786725.Spec : Prop :=
  ∀ n, (P18048437867009786725.a n : ℤ) = A375337 (n + 1)

end A375337

/-! ## A375337.P12856776495949914370

`C(A000040(n+1), A016035(A000040(n+1)+1))`
-/

namespace A375337.P12856776495949914370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 1)).toNat (A016035 (A000040 (n + 1) + 1).toNat).toNat

end

end A375337.P12856776495949914370

namespace A375337

/-- `C(A000040(n+1), A016035(A000040(n+1)+1))` -/
def P12856776495949914370.Spec : Prop :=
  ∀ n, (P12856776495949914370.a n : ℤ) = A375337 (n + 1)

end A375337

/-! ## A375337.P2507150279346295851

`C(A040976(n+1)+2, A000010(A008864(n+1)))`
-/

namespace A375337.P2507150279346295851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A040976 (n + 1) + 2).toNat (A000010 (A008864 (n + 1)).toNat).toNat

end

end A375337.P2507150279346295851

namespace A375337

/-- `C(A040976(n+1)+2, A000010(A008864(n+1)))` -/
def P2507150279346295851.Spec : Prop :=
  ∀ n, (P2507150279346295851.a n : ℤ) = A375337 (n + 1)

theorem P2507150279346295851.correct : P2507150279346295851.Spec := by
  intro n
  simp only [A375337, Nat.add_sub_cancel, A375337.P2507150279346295851.a, A375337.P16252604061458685989.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A040976, A040976.P11599754272797435513.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A375337

/-! ## A375337.P7180295745693315843

`C(A001748(n+1)/3, A000010(A008864(n+1)))`
-/

namespace A375337.P7180295745693315843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)).toNat (A000010 (A008864 (n + 1)).toNat).toNat

end

end A375337.P7180295745693315843

namespace A375337

/-- `C(A001748(n+1)/3, A000010(A008864(n+1)))` -/
def P7180295745693315843.Spec : Prop :=
  ∀ n, (P7180295745693315843.a n : ℤ) = A375337 (n + 1)

end A375337

/-! ## A375337.P10091500293656906556

`C(A014692(n+1)+n, A000010(A008864(n+1)))`
-/

namespace A375337.P10091500293656906556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014692 (n + 1) + (n : ℤ)).toNat (A000010 (A008864 (n + 1)).toNat).toNat

end

end A375337.P10091500293656906556

namespace A375337

/-- `C(A014692(n+1)+n, A000010(A008864(n+1)))` -/
def P10091500293656906556.Spec : Prop :=
  ∀ n, (P10091500293656906556.a n : ℤ) = A375337 (n + 1)

theorem P10091500293656906556.correct : P10091500293656906556.Spec := by
  intro n
  simp only [A375337, Nat.add_sub_cancel, A375337.P10091500293656906556.a, A375337.P16252604061458685989.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A014692, A014692.P2004927767556050134.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A375337

/-! ## A375337.P14287265454678155055

`C(A014688(n+1)-(n+1), A000010(A008864(n+1)))`
-/

namespace A375337.P14287265454678155055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014688 (n + 1) - (n + 1 : ℤ)).toNat (A000010 (A008864 (n + 1)).toNat).toNat

end

end A375337.P14287265454678155055

namespace A375337

/-- `C(A014688(n+1)-(n+1), A000010(A008864(n+1)))` -/
def P14287265454678155055.Spec : Prop :=
  ∀ n, (P14287265454678155055.a n : ℤ) = A375337 (n + 1)

end A375337

/-!
# A375339: If n has exactly one non-unitary prime factor then a(n) is the exponent of the highest power of this prime that divides n, otherwise a(n) = 0.

The programs for A375339, the canonical program `A375339.P15531892333472399892` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375339 has offset 1).

The definition of A375339 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A359466, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A375339.P15531892333472399892

`A005361(n+1)*A359466(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A375339

/-- `A005361(n+1)*A359466(n+1)` -/
def P15531892333472399892.Spec : Prop :=
  ∀ n, P15531892333472399892.a n = A375339 (n + 1)

theorem P15531892333472399892.correct : P15531892333472399892.Spec := by
  intro n
  simp only [A375339, Nat.add_sub_cancel]

end A375339

/-! ## A375339.P2486750089044909008

`A051903(n+1)*A359466(n+1)`
-/

namespace A375339.P2486750089044909008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) * A359466 (n + 1)

end

end A375339.P2486750089044909008

namespace A375339

/-- `A051903(n+1)*A359466(n+1)` -/
def P2486750089044909008.Spec : Prop :=
  ∀ n, P2486750089044909008.a n = A375339 (n + 1)

end A375339

/-! ## A375339.P16519319697268181032

`A100995(A057521(n+1))`
-/

namespace A375339.P16519319697268181032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 (A057521 (n + 1)).toNat

end

end A375339.P16519319697268181032

namespace A375339

/-- `A100995(A057521(n+1))` -/
def P16519319697268181032.Spec : Prop :=
  ∀ n, P16519319697268181032.a n = A375339 (n + 1)

end A375339

/-! ## A375339.P4082088536832884459

`A072411(n+1)*A359466(n+1)`
-/

namespace A375339.P4082088536832884459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (n + 1) * A359466 (n + 1)

end

end A375339.P4082088536832884459

namespace A375339

/-- `A072411(n+1)*A359466(n+1)` -/
def P4082088536832884459.Spec : Prop :=
  ∀ n, P4082088536832884459.a n = A375339 (n + 1)

end A375339

/-! ## A375339.P13744416496048024484

`A091050(n+1)*A359466(n+1)`
-/

namespace A375339.P13744416496048024484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091050 (n + 1) * A359466 (n + 1)

end

end A375339.P13744416496048024484

namespace A375339

/-- `A091050(n+1)*A359466(n+1)` -/
def P13744416496048024484.Spec : Prop :=
  ∀ n, P13744416496048024484.a n = A375339 (n + 1)

end A375339

/-! ## A375339.P1191600248985174830

`A157754(n+1)*A359466(n+1)`
-/

namespace A375339.P1191600248985174830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157754 (n + 1) * A359466 (n + 1)

end

end A375339.P1191600248985174830

namespace A375339

/-- `A157754(n+1)*A359466(n+1)` -/
def P1191600248985174830.Spec : Prop :=
  ∀ n, P1191600248985174830.a n = A375339 (n + 1)

end A375339

/-! ## A375339.P10947567903919200132

`A275812(n+1)%A192437(n+1)`
-/

namespace A375339.P10947567903919200132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275812 (n + 1)) (A192437 (n + 1))

end

end A375339.P10947567903919200132

namespace A375339

/-- `A275812(n+1)%A192437(n+1)` -/
def P10947567903919200132.Spec : Prop :=
  ∀ n, P10947567903919200132.a n = A375339 (n + 1)

end A375339

/-! ## A375339.P17886732590246504730

`A372603(n+1)%A192437(n+1)`
-/

namespace A375339.P17886732590246504730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372603 (n + 1)) (A192437 (n + 1))

end

end A375339.P17886732590246504730

namespace A375339

/-- `A372603(n+1)%A192437(n+1)` -/
def P17886732590246504730.Spec : Prop :=
  ∀ n, P17886732590246504730.a n = A375339 (n + 1)

end A375339

/-!
# A375341: The maximum exponent in the prime factorization of the numbers that have exactly one non-unitary prime factor.

The programs for A375341, the canonical program `A375341.P4031493364369694775` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375341 has offset 1).

The definition of A375341 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A190641, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A375341.P4031493364369694775

`A005361(A190641(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A375341

/-- `A005361(A190641(n+1))` -/
def P4031493364369694775.Spec : Prop :=
  ∀ n, P4031493364369694775.a n = A375341 (n + 1)

theorem P4031493364369694775.correct : P4031493364369694775.Spec := by
  intro n
  simp only [A375341, Nat.add_sub_cancel]

end A375341

/-! ## A375341.P17579810654147350083

`∏{e}[eq[1, A359466(n+1)]+1, #]`
-/

namespace A375341.P17579810654147350083
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359466 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A375341.P17579810654147350083

namespace A375341

/-- `∏{e}[eq[1, A359466(n+1)]+1, #]` -/
def P17579810654147350083.Spec : Prop :=
  ∀ n, (P17579810654147350083.a n : ℤ) = A375341 (n + 1)

end A375341

/-! ## A375341.P12802035041988709402

`A051903(A190641(2*n+1-n))`
-/

namespace A375341.P12802035041988709402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A190641 (2 * n + 1 - n)).toNat

end

end A375341.P12802035041988709402

namespace A375341

/-- `A051903(A190641(2*n+1-n))` -/
def P12802035041988709402.Spec : Prop :=
  ∀ n, P12802035041988709402.a n = A375341 (n + 1)

end A375341

/-! ## A375341.P5137096880745126600

`∏{e}[A013929(eq[1, A212177(n+1)]+1), #]`
-/

namespace A375341.P5137096880745126600
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212177 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A375341.P5137096880745126600

namespace A375341

/-- `∏{e}[A013929(eq[1, A212177(n+1)]+1), #]` -/
def P5137096880745126600.Spec : Prop :=
  ∀ n, (P5137096880745126600.a n : ℤ) = A375341 (n + 1)

end A375341

/-! ## A375341.P7537341947963894170

`A275699(n+1)%A050283(n+1)+1`
-/

namespace A375341.P7537341947963894170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275699 (n + 1)) (A050283 (n + 1)) + 1

end

end A375341.P7537341947963894170

namespace A375341

/-- `A275699(n+1)%A050283(n+1)+1` -/
def P7537341947963894170.Spec : Prop :=
  ∀ n, P7537341947963894170.a n = A375341 (n + 1)

end A375341

/-!
# A375342: The maximum exponent in the prime factorization of the numbers whose powerful part is a power of a squarefree number that is larger than 1.

The programs for A375342, the canonical program `A375342.P14847801276659262859` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375342 has offset 1).

The definition of A375342 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A375142, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A375342.P14847801276659262859

`A051903(A375142(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A375342

/-- `A051903(A375142(n+1))` -/
def P14847801276659262859.Spec : Prop :=
  ∀ n, P14847801276659262859.a n = A375342 (n + 1)

theorem P14847801276659262859.correct : P14847801276659262859.Spec := by
  intro n
  simp only [A375342, Nat.add_sub_cancel]

end A375342

/-!
# A375343: Numbers which are the sixth powers of their digit sum.

The programs for A375343, there is no canonical definition to state claims against.
-/

/-! ## A375343.P17758285523754286483

`A055577(n+1)^6`
-/

namespace A375343.P17758285523754286483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055577 (n + 1) ^ 6

end

end A375343.P17758285523754286483

/-!
# A375345: a(n) = b(n, n-1) where b(n, m) = b(n, m-1) + gcd(b(n, m-1), n-m) for m > 0 with b(n, 0) = n.

The programs for A375345, there is no canonical definition to state claims against.
-/

/-! ## A375345.P9466389653506427644

`p?[A338006(2*(n+1))-2]`
-/

namespace A375345.P9466389653506427644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338006 (2 * (n + 1)) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A375345.P9466389653506427644

/-! ## A375345.P11569124477045092712

`A162325(A370204(n))`
-/

namespace A375345.P11569124477045092712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162325 (A370204 n).toNat

end

end A375345.P11569124477045092712

/-! ## A375345.P17148104795382769718

`A060264(A187829(n+1))`
-/

namespace A375345.P17148104795382769718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (A187829 (n + 1)).toNat

end

end A375345.P17148104795382769718

/-! ## A375345.P14121655032512197467

`A117366(A362640(n+2))`
-/

namespace A375345.P14121655032512197467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (A362640 (n + 2)).toNat

end

end A375345.P14121655032512197467

/-! ## A375345.P1614397438784937277

`A101157(A060264(n+1)²)`
-/

namespace A375345.P1614397438784937277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101157 (A060264 (n + 1) ^ 2).toNat

end

end A375345.P1614397438784937277

/-!
# A375349: a(n) is the parity of the n-th cubefree number.

The programs for A375349, the canonical program `A375349.P12087631011185153804` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375349 has offset 1).

The definition of A375349 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A375349.P12547133280680062127

`A004709(n+1)%2`
-/

namespace A375349.P12547133280680062127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004709 (n + 1)) 2

end

end A375349.P12547133280680062127

namespace A375349

/-- `A004709(n+1)%2` -/
def P12547133280680062127.Spec : Prop :=
  ∀ n, P12547133280680062127.a n = A375349 (n + 1)

end A375349

/-! ## A375349.P12087631011185153804

`A000035(A004709(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A375349

/-- `A000035(A004709(n+1))` -/
def P12087631011185153804.Spec : Prop :=
  ∀ n, P12087631011185153804.a n = A375349 (n + 1)

theorem P12087631011185153804.correct : P12087631011185153804.Spec := by
  intro n
  simp only [A375349, Nat.add_sub_cancel]

end A375349

/-! ## A375349.P4386729894181718795

`A277802(n+1)%2`
-/

namespace A375349.P4386729894181718795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277802 (n + 1)) 2

end

end A375349.P4386729894181718795

namespace A375349

/-- `A277802(n+1)%2` -/
def P4386729894181718795.Spec : Prop :=
  ∀ n, P4386729894181718795.a n = A375349 (n + 1)

end A375349

/-! ## A375349.P10569509340172462834

`A277803(n+1)%2`
-/

namespace A375349.P10569509340172462834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277803 (n + 1)) 2

end

end A375349.P10569509340172462834

namespace A375349

/-- `A277803(n+1)%2` -/
def P10569509340172462834.Spec : Prop :=
  ∀ n, P10569509340172462834.a n = A375349 (n + 1)

end A375349

/-! ## A375349.P1564204842576567120

`A382888(n+1)%2`
-/

namespace A375349.P1564204842576567120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A382888 (n + 1)) 2

end

end A375349.P1564204842576567120

namespace A375349

/-- `A382888(n+1)%2` -/
def P1564204842576567120.Spec : Prop :=
  ∀ n, P1564204842576567120.a n = A375349 (n + 1)

end A375349

/-! ## A375349.P1426309926123835343

`A392365(n+1)%2`
-/

namespace A375349.P1426309926123835343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392365 (n + 1)) 2

end

end A375349.P1426309926123835343

namespace A375349

/-- `A392365(n+1)%2` -/
def P1426309926123835343.Spec : Prop :=
  ∀ n, P1426309926123835343.a n = A375349 (n + 1)

end A375349

/-! ## A375349.P160774440584013340

`and(1, A242867(n+1))`
-/

namespace A375349.P160774440584013340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A242867 (n + 1))

end

end A375349.P160774440584013340

namespace A375349

/-- `and(1, A242867(n+1))` -/
def P160774440584013340.Spec : Prop :=
  ∀ n, P160774440584013340.a n = A375349 (n + 1)

end A375349

/-! ## A375349.P16734208274121227417

`(eq[1, A050361(n+1)]+1)%2`
-/

namespace A375349.P16734208274121227417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) % 2

end

end A375349.P16734208274121227417

namespace A375349

/-- `(eq[1, A050361(n+1)]+1)%2` -/
def P16734208274121227417.Spec : Prop :=
  ∀ n, (P16734208274121227417.a n : ℤ) = A375349 (n + 1)

end A375349

/-! ## A375349.P5028979962206538789

`and(A004709(n+1), A060576(n))`
-/

namespace A375349.P5028979962206538789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004709 (n + 1)) (A060576 n)

end

end A375349.P5028979962206538789

namespace A375349

/-- `and(A004709(n+1), A060576(n))` -/
def P5028979962206538789.Spec : Prop :=
  ∀ n, P5028979962206538789.a n = A375349 (n + 1)

end A375349

/-! ## A375349.P7549507550214876355

`and(A004709(n+1), A158388(n))`
-/

namespace A375349.P7549507550214876355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004709 (n + 1)) (A158388 n)

end

end A375349.P7549507550214876355

namespace A375349

/-- `and(A004709(n+1), A158388(n))` -/
def P7549507550214876355.Spec : Prop :=
  ∀ n, P7549507550214876355.a n = A375349 (n + 1)

end A375349

/-! ## A375349.P12841375200869779250

`and(A004709(n+1), A267870(n))`
-/

namespace A375349.P12841375200869779250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004709 (n + 1)) (A267870 n)

end

end A375349.P12841375200869779250

namespace A375349

/-- `and(A004709(n+1), A267870(n))` -/
def P12841375200869779250.Spec : Prop :=
  ∀ n, P12841375200869779250.a n = A375349 (n + 1)

end A375349

/-! ## A375349.P9186135315520504534

`and(A004709(n+1), A267871(n))`
-/

namespace A375349.P9186135315520504534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004709 (n + 1)) (A267871 n)

end

end A375349.P9186135315520504534

namespace A375349

/-- `and(A004709(n+1), A267871(n))` -/
def P9186135315520504534.Spec : Prop :=
  ∀ n, P9186135315520504534.a n = A375349 (n + 1)

end A375349

/-! ## A375349.P13290140278162663077

`A000035(A277803(n+1))`
-/

namespace A375349.P13290140278162663077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A277803 (n + 1)).toNat

end

end A375349.P13290140278162663077

namespace A375349

/-- `A000035(A277803(n+1))` -/
def P13290140278162663077.Spec : Prop :=
  ∀ n, P13290140278162663077.a n = A375349 (n + 1)

end A375349

/-! ## A375349.P13390755812567559648

`A000035(A382888(n+1))`
-/

namespace A375349.P13390755812567559648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A382888 (n + 1)).toNat

end

end A375349.P13390755812567559648

namespace A375349

/-- `A000035(A382888(n+1))` -/
def P13390755812567559648.Spec : Prop :=
  ∀ n, P13390755812567559648.a n = A375349 (n + 1)

end A375349

/-! ## A375349.P10242169053171143164

`A059841(A004709(n+1)+1)`
-/

namespace A375349.P10242169053171143164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A004709 (n + 1) + 1).toNat

end

end A375349.P10242169053171143164

namespace A375349

/-- `A059841(A004709(n+1)+1)` -/
def P10242169053171143164.Spec : Prop :=
  ∀ n, P10242169053171143164.a n = A375349 (n + 1)

end A375349

/-! ## A375349.P13358152745709250497

`and(A004709(n+1), A176410(n))`
-/

namespace A375349.P13358152745709250497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004709 (n + 1)) (A176410 n)

end

end A375349.P13358152745709250497

namespace A375349

/-- `and(A004709(n+1), A176410(n))` -/
def P13358152745709250497.Spec : Prop :=
  ∀ n, P13358152745709250497.a n = A375349 (n + 1)

end A375349

/-! ## A375349.P12143179060077951518

`and(A004709(n+1), A176794(n))`
-/

namespace A375349.P12143179060077951518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004709 (n + 1)) (A176794 n)

end

end A375349.P12143179060077951518

namespace A375349

/-- `and(A004709(n+1), A176794(n))` -/
def P12143179060077951518.Spec : Prop :=
  ∀ n, P12143179060077951518.a n = A375349 (n + 1)

end A375349

/-! ## A375349.P219180104144373726

`and(A004709(n+1), A048578(n))`
-/

namespace A375349.P219180104144373726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004709 (n + 1)) (A048578 n)

end

end A375349.P219180104144373726

namespace A375349

/-- `and(A004709(n+1), A048578(n))` -/
def P219180104144373726.Spec : Prop :=
  ∀ n, P219180104144373726.a n = A375349 (n + 1)

end A375349

/-! ## A375349.P5031665686935229401

`and(A004709(n+1), A020737(n))`
-/

namespace A375349.P5031665686935229401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004709 (n + 1)) (A020737 n)

end

end A375349.P5031665686935229401

namespace A375349

/-- `and(A004709(n+1), A020737(n))` -/
def P5031665686935229401.Spec : Prop :=
  ∀ n, P5031665686935229401.a n = A375349 (n + 1)

end A375349

/-! ## A375349.P149396675070567516

`and(A004709(n+1), A276918(n))`
-/

namespace A375349.P149396675070567516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004709 (n + 1)) (A276918 n)

end

end A375349.P149396675070567516

namespace A375349

/-- `and(A004709(n+1), A276918(n))` -/
def P149396675070567516.Spec : Prop :=
  ∀ n, P149396675070567516.a n = A375349 (n + 1)

end A375349

/-!
# A375352: Numbers k such that 14*k + 2 is a square.

The programs for A375352, the canonical program `A375352.P7430129675206332176` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375352 has offset 1).

The definition of A375352 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375352.P7430129675206332176

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=7, a(2)=23, a(3)=41, a(4)=73`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A375352

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P7430129675206332176.Spec : Prop :=
  ∀ n, P7430129675206332176.a n = A375352 (n + 1)

theorem P7430129675206332176.correct : P7430129675206332176.Spec := by
  intro n
  simp only [A375352, Nat.add_sub_cancel]

end A375352

/-! ## A375352.P9376667788935476519

`2*A212965(n)-1`
-/

namespace A375352.P9376667788935476519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212965 n - 1

end

end A375352.P9376667788935476519

namespace A375352

/-- `2*A212965(n)-1` -/
def P9376667788935476519.Spec : Prop :=
  ∀ n, P9376667788935476519.a n = A375352 (n + 1)

end A375352

/-! ## A375352.P7736614472421035478

`(A113804(n+1)²-2)/14`
-/

namespace A375352.P7736614472421035478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113804 (n + 1) ^ 2 - 2 : ℚ) / 14

end

end A375352.P7736614472421035478

namespace A375352

/-- `(A113804(n+1)²-2)/14` -/
def P7736614472421035478.Spec : Prop :=
  ∀ n, P7736614472421035478.a n = (A375352 (n + 1) : ℚ)

end A375352

/-! ## A375352.P6421993156409298830

`2*(∑[n*(gcd(2, n)+2)]+1)-1`
-/

namespace A375352.P6421993156409298830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.gcd 2 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℕ) : ℤ) - 1

end

end A375352.P6421993156409298830

namespace A375352

/-- `2*(∑[n*(gcd(2, n)+2)]+1)-1` -/
def P6421993156409298830.Spec : Prop :=
  ∀ n, P6421993156409298830.a n = A375352 (n + 1)

end A375352

/-! ## A375352.P10292858282598824757

`(2*n+1)²-∑[2*n*and(1, n)]`
-/

namespace A375352.P10292858282598824757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A375352.P10292858282598824757

namespace A375352

/-- `(2*n+1)²-∑[2*n*and(1, n)]` -/
def P10292858282598824757.Spec : Prop :=
  ∀ n, P10292858282598824757.a n = A375352 (n + 1)

end A375352

/-! ## A375352.P7372343576363633482

`A220082(n+1)+n²+n`
-/

namespace A375352.P7372343576363633482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220082 (n + 1) + (n ^ 2 + n : ℤ)

end

end A375352.P7372343576363633482

namespace A375352

/-- `A220082(n+1)+n²+n` -/
def P7372343576363633482.Spec : Prop :=
  ∀ n, P7372343576363633482.a n = A375352 (n + 1)

end A375352

/-! ## A375352.P2451401314050972785

`A074377(n)+A005891(n)`
-/

namespace A375352.P2451401314050972785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074377 n + A005891 n

end

end A375352.P2451401314050972785

namespace A375352

/-- `A074377(n)+A005891(n)` -/
def P2451401314050972785.Spec : Prop :=
  ∀ n, P2451401314050972785.a n = A375352 (n + 1)

end A375352

/-! ## A375352.P17396574899470155498

`A186424(n)+A046092(n)`
-/

namespace A375352.P17396574899470155498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186424 n + A046092 n

end

end A375352.P17396574899470155498

namespace A375352

/-- `A186424(n)+A046092(n)` -/
def P17396574899470155498.Spec : Prop :=
  ∀ n, P17396574899470155498.a n = A375352 (n + 1)

end A375352

/-! ## A375352.P11172973488299373273

`A213399(n)+A045943(n)`
-/

namespace A375352.P11172973488299373273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213399 n + A045943 n

end

end A375352.P11172973488299373273

namespace A375352

/-- `A213399(n)+A045943(n)` -/
def P11172973488299373273.Spec : Prop :=
  ∀ n, P11172973488299373273.a n = A375352 (n + 1)

end A375352

/-! ## A375352.P2274372369188876351

`A266725(n)+A090381(n)`
-/

namespace A375352.P2274372369188876351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266725 n + A090381 n

end

end A375352.P2274372369188876351

namespace A375352

/-- `A266725(n)+A090381(n)` -/
def P2274372369188876351.Spec : Prop :=
  ∀ n, P2274372369188876351.a n = A375352 (n + 1)

end A375352

/-! ## A375352.P8259794030203230495

`A081438(n)-A213496(n)`
-/

namespace A375352.P8259794030203230495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081438 n - A213496 n

end

end A375352.P8259794030203230495

namespace A375352

/-- `A081438(n)-A213496(n)` -/
def P8259794030203230495.Spec : Prop :=
  ∀ n, P8259794030203230495.a n = A375352 (n + 1)

end A375352

/-! ## A375352.P5608747928568412568

`A062123(n)-A266883(n)`
-/

namespace A375352.P5608747928568412568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062123 n - A266883 n

end

end A375352.P5608747928568412568

namespace A375352

/-- `A062123(n)-A266883(n)` -/
def P5608747928568412568.Spec : Prop :=
  ∀ n, P5608747928568412568.a n = A375352 (n + 1)

end A375352

/-! ## A375352.P14536875026793680920

`A130472(n)+A069099(n+1)`
-/

namespace A375352.P14536875026793680920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 n + A069099 (n + 1)

end

end A375352.P14536875026793680920

namespace A375352

/-- `A130472(n)+A069099(n+1)` -/
def P14536875026793680920.Spec : Prop :=
  ∀ n, P14536875026793680920.a n = A375352 (n + 1)

end A375352

/-! ## A375352.P5312660636019660501

`A174114(n+1)+A028895(n)`
-/

namespace A375352.P5312660636019660501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174114 (n + 1) + A028895 n

end

end A375352.P5312660636019660501

namespace A375352

/-- `A174114(n+1)+A028895(n)` -/
def P5312660636019660501.Spec : Prop :=
  ∀ n, P5312660636019660501.a n = A375352 (n + 1)

end A375352

/-! ## A375352.P11041277242452936665

`A195818(n)+A057029(n+1)`
-/

namespace A375352.P11041277242452936665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195818 n + A057029 (n + 1)

end

end A375352.P11041277242452936665

namespace A375352

/-- `A195818(n)+A057029(n+1)` -/
def P11041277242452936665.Spec : Prop :=
  ∀ n, P11041277242452936665.a n = A375352 (n + 1)

end A375352

/-! ## A375352.P12806596661092622370

`A179986(n)+A123684(n+1)`
-/

namespace A375352.P12806596661092622370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179986 n + A123684 (n + 1)

end

end A375352.P12806596661092622370

namespace A375352

/-- `A179986(n)+A123684(n+1)` -/
def P12806596661092622370.Spec : Prop :=
  ∀ n, P12806596661092622370.a n = A375352 (n + 1)

end A375352

/-! ## A375352.P8013490686658015732

`A245524(n+1)+A147875(n)`
-/

namespace A375352.P8013490686658015732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245524 (n + 1) + A147875 n

end

end A375352.P8013490686658015732

namespace A375352

/-- `A245524(n+1)+A147875(n)` -/
def P8013490686658015732.Spec : Prop :=
  ∀ n, P8013490686658015732.a n = A375352 (n + 1)

end A375352

/-! ## A375352.P10418763606444488923

`A374584(n+1)+A132354(n)`
-/

namespace A375352.P10418763606444488923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374584 (n + 1) + A132354 n

end

end A375352.P10418763606444488923

namespace A375352

/-- `A374584(n+1)+A132354(n)` -/
def P10418763606444488923.Spec : Prop :=
  ∀ n, P10418763606444488923.a n = A375352 (n + 1)

end A375352

/-! ## A375352.P8237786280107727421

`A069099(n+1)-A001057(n)`
-/

namespace A375352.P8237786280107727421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069099 (n + 1) - A001057 n

end

end A375352.P8237786280107727421

namespace A375352

/-- `A069099(n+1)-A001057(n)` -/
def P8237786280107727421.Spec : Prop :=
  ∀ n, P8237786280107727421.a n = A375352 (n + 1)

end A375352

/-! ## A375352.P352131472743844543

`A060544(n+1)-A074378(n)`
-/

namespace A375352.P352131472743844543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060544 (n + 1) - A074378 n

end

end A375352.P352131472743844543

namespace A375352

/-- `A060544(n+1)-A074378(n)` -/
def P352131472743844543.Spec : Prop :=
  ∀ n, P352131472743844543.a n = A375352 (n + 1)

end A375352

/-!
# A375353: T(m,n) = Number of m X n knot/link mosaics read by rows, with 1<=n<=m.

The programs for A375353, there is no canonical definition to state claims against.
-/

/-! ## A375353.P15048694273366117245

`A008621(A066117(n+1)-A091946(2*n+3))`
-/

namespace A375353.P15048694273366117245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A066117 (n + 1) - A091946 (2 * n + 3)).toNat

end

end A375353.P15048694273366117245

/-!
# A375354: T(m,n) is the number of suitably connected m X n Legendrian mosaics read by rows, with 1<=n<=m.

The programs for A375354, there is no canonical definition to state claims against.
-/

/-! ## A375354.P16927865433149362648

`A359536(A194583(n))`
-/

namespace A375354.P16927865433149362648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359536 (A194583 n).toNat

end

end A375354.P16927865433149362648

/-! ## A375354.P8136750074165453961

`A130044(A375353(n+1))`
-/

namespace A375354.P8136750074165453961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130044 (A375353 (n + 1)).toNat

end

end A375354.P8136750074165453961

/-!
# A375358: a(n) is the greatest difference between m and k, with m, k both prime such that k + m = p + q, where (p, q) is the n-th twin prime pair.

The programs for A375358, there is no canonical definition to state claims against.
-/

/-! ## A375358.P2616537237612708818

`A303603(A014574(n+1))`
-/

namespace A375358.P2616537237612708818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303603 (A014574 (n + 1)).toNat

end

end A375358.P2616537237612708818

/-! ## A375358.P14201341356665756410

`A303603(A167777(n+2))`
-/

namespace A375358.P14201341356665756410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303603 (A167777 (n + 2)).toNat

end

end A375358.P14201341356665756410

/-! ## A375358.P5799021310392057784

`A303603(eq[1, A325142(n)])`
-/

namespace A375358.P5799021310392057784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303603 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A375358.P5799021310392057784

/-! ## A375358.P14096960921141629847

`A303603(A001359(n+1)+1)`
-/

namespace A375358.P14096960921141629847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303603 (A001359 (n + 1) + 1).toNat

end

end A375358.P14096960921141629847

/-! ## A375358.P17757727743849648045

`2*A264527(A040040(n+1))`
-/

namespace A375358.P17757727743849648045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A264527 (A040040 (n + 1)).toNat

end

end A375358.P17757727743849648045

/-!
# A375359: The maximum exponent in the prime factorization of the smallest number whose square is divisible by n.

The programs for A375359, the canonical program `A375359.P18365082364199674777` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375359 has offset 1).

The definition of A375359 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A375359.P18365082364199674777

`ceil(A051903(n+1)/2)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A375359

/-- `ceil(A051903(n+1)/2)` -/
def P18365082364199674777.Spec : Prop :=
  ∀ n, P18365082364199674777.a n = A375359 (n + 1)

theorem P18365082364199674777.correct : P18365082364199674777.Spec := by
  intro n
  simp only [A375359, Nat.add_sub_cancel]

end A375359

/-! ## A375359.P15925248148097413503

`A051903(A019554(n+1))`
-/

namespace A375359.P15925248148097413503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A019554 (n + 1)).toNat

end

end A375359.P15925248148097413503

namespace A375359

/-- `A051903(A019554(n+1))` -/
def P15925248148097413503.Spec : Prop :=
  ∀ n, P15925248148097413503.a n = A375359 (n + 1)

end A375359

/-! ## A375359.P9751414202118387484

`A110654(A051903(n+1))`
-/

namespace A375359.P9751414202118387484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A051903 (n + 1)).toNat

end

end A375359.P9751414202118387484

namespace A375359

/-- `A110654(A051903(n+1))` -/
def P9751414202118387484.Spec : Prop :=
  ∀ n, P9751414202118387484.a n = A375359 (n + 1)

end A375359

/-! ## A375359.P18320498742262549126

`A051903(A053143(n+1))/2`
-/

namespace A375359.P18320498742262549126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051903 (A053143 (n + 1)).toNat : ℚ) / 2

end

end A375359.P18320498742262549126

namespace A375359

/-- `A051903(A053143(n+1))/2` -/
def P18320498742262549126.Spec : Prop :=
  ∀ n, P18320498742262549126.a n = (A375359 (n + 1) : ℚ)

end A375359

/-! ## A375359.P1186834323162297798

`ceil(A372601(n+1)/2)`
-/

namespace A375359.P1186834323162297798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A372601 (n + 1) : ℚ) / 2⌉

end

end A375359.P1186834323162297798

namespace A375359

/-- `ceil(A372601(n+1)/2)` -/
def P1186834323162297798.Spec : Prop :=
  ∀ n, P1186834323162297798.a n = A375359 (n + 1)

end A375359

/-! ## A375359.P13607825927095266518

`A004526(A067132(n+1))`
-/

namespace A375359.P13607825927095266518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A067132 (n + 1)).toNat

end

end A375359.P13607825927095266518

namespace A375359

/-- `A004526(A067132(n+1))` -/
def P13607825927095266518.Spec : Prop :=
  ∀ n, P13607825927095266518.a n = A375359 (n + 1)

end A375359

/-! ## A375359.P16843727318731478366

`A244415(A046523(n+1))`
-/

namespace A375359.P16843727318731478366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (A046523 (n + 1)).toNat

end

end A375359.P16843727318731478366

namespace A375359

/-- `A244415(A046523(n+1))` -/
def P16843727318731478366.Spec : Prop :=
  ∀ n, P16843727318731478366.a n = A375359 (n + 1)

end A375359

/-! ## A375359.P3699019681610016292

`A392276(n+1)+A381955(n+1)`
-/

namespace A375359.P3699019681610016292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392276 (n + 1) + A381955 (n + 1)

end

end A375359.P3699019681610016292

namespace A375359

/-- `A392276(n+1)+A381955(n+1)` -/
def P3699019681610016292.Spec : Prop :=
  ∀ n, P3699019681610016292.a n = A375359 (n + 1)

end A375359

/-! ## A375359.P15140535140739300977

`A051903(A254732(n+1)-(n+1))`
-/

namespace A375359.P15140535140739300977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A254732 (n + 1) - (n + 1 : ℤ)).toNat

end

end A375359.P15140535140739300977

namespace A375359

/-- `A051903(A254732(n+1)-(n+1))` -/
def P15140535140739300977.Spec : Prop :=
  ∀ n, P15140535140739300977.a n = A375359 (n + 1)

end A375359

/-! ## A375359.P5462686933686570249

`A051903(n+1)-A392276(n+1)`
-/

namespace A375359.P5462686933686570249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) - A392276 (n + 1)

end

end A375359.P5462686933686570249

namespace A375359

/-- `A051903(n+1)-A392276(n+1)` -/
def P5462686933686570249.Spec : Prop :=
  ∀ n, P5462686933686570249.a n = A375359 (n + 1)

end A375359

/-! ## A375359.P16609721644026264468

`A051903((n+1)/A000188(n+1))`
-/

namespace A375359.P16609721644026264468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000188 (n + 1) : ℚ))).toNat

end

end A375359.P16609721644026264468

namespace A375359

/-- `A051903((n+1)/A000188(n+1))` -/
def P16609721644026264468.Spec : Prop :=
  ∀ n, P16609721644026264468.a n = A375359 (n + 1)

end A375359

/-! ## A375359.P18179052166167058202

`(A381955(n+1)+A051903(n+1))/2`
-/

namespace A375359.P18179052166167058202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381955 (n + 1) + A051903 (n + 1) : ℚ) / 2

end

end A375359.P18179052166167058202

namespace A375359

/-- `(A381955(n+1)+A051903(n+1))/2` -/
def P18179052166167058202.Spec : Prop :=
  ∀ n, P18179052166167058202.a n = (A375359 (n + 1) : ℚ)

end A375359

/-! ## A375359.P6663861580420531894

`A051903(n+1)-A372602(n+1)/2`
-/

namespace A375359.P6663861580420531894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051903 (n + 1) : ℚ) - (A372602 (n + 1) : ℚ) / 2

end

end A375359.P6663861580420531894

namespace A375359

/-- `A051903(n+1)-A372602(n+1)/2` -/
def P6663861580420531894.Spec : Prop :=
  ∀ n, P6663861580420531894.a n = (A375359 (n + 1) : ℚ)

end A375359

/-! ## A375359.P2206908711330043157

`A051903(n+1)-A051903(A000188(n+1))`
-/

namespace A375359.P2206908711330043157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) - A051903 (A000188 (n + 1)).toNat

end

end A375359.P2206908711330043157

namespace A375359

/-- `A051903(n+1)-A051903(A000188(n+1))` -/
def P2206908711330043157.Spec : Prop :=
  ∀ n, P2206908711330043157.a n = A375359 (n + 1)

end A375359

/-! ## A375359.P15492856018229035148

`A392275((n+1)*A000188(n+1))`
-/

namespace A375359.P15492856018229035148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392275 ((n + 1 : ℤ) * A000188 (n + 1)).toNat

end

end A375359.P15492856018229035148

namespace A375359

/-- `A392275((n+1)*A000188(n+1))` -/
def P15492856018229035148.Spec : Prop :=
  ∀ n, P15492856018229035148.a n = A375359 (n + 1)

end A375359

/-! ## A375359.P14756215526695010528

`A001221(A294874((n+1)*A007947(n+1)))`
-/

namespace A375359.P14756215526695010528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A294874 ((n + 1 : ℤ) * A007947 (n + 1)).toNat).toNat

end

end A375359.P14756215526695010528

namespace A375359

/-- `A001221(A294874((n+1)*A007947(n+1)))` -/
def P14756215526695010528.Spec : Prop :=
  ∀ n, P14756215526695010528.a n = A375359 (n + 1)

end A375359

/-! ## A375359.P5457952059271045689

`A001221(A294873(n+1))`
-/

namespace A375359.P5457952059271045689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A294873 (n + 1)).toNat

end

end A375359.P5457952059271045689

namespace A375359

/-- `A001221(A294873(n+1))` -/
def P5457952059271045689.Spec : Prop :=
  ∀ n, P5457952059271045689.a n = A375359 (n + 1)

end A375359

/-! ## A375359.P2555666320685955113

`and(A183115(n), A325837(n+1))`
-/

namespace A375359.P2555666320685955113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A183115 n) (A325837 (n + 1))

end

end A375359.P2555666320685955113

namespace A375359

/-- `and(A183115(n), A325837(n+1))` -/
def P2555666320685955113.Spec : Prop :=
  ∀ n, P2555666320685955113.a n = A375359 (n + 1)

end A375359

/-! ## A375359.P5255873936641252510

`and(A183120(n), A325837(n+1))`
-/

namespace A375359.P5255873936641252510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A183120 n) (A325837 (n + 1))

end

end A375359.P5255873936641252510

namespace A375359

/-- `and(A183120(n), A325837(n+1))` -/
def P5255873936641252510.Spec : Prop :=
  ∀ n, P5255873936641252510.a n = A375359 (n + 1)

end A375359

/-! ## A375359.P8547676559330692594

`and(A091344(n), A325837(n+1))`
-/

namespace A375359.P8547676559330692594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091344 n) (A325837 (n + 1))

end

end A375359.P8547676559330692594

namespace A375359

/-- `and(A091344(n), A325837(n+1))` -/
def P8547676559330692594.Spec : Prop :=
  ∀ n, P8547676559330692594.a n = A375359 (n + 1)

end A375359

/-!
# A375360: The maximum exponent in the prime factorization of the smallest exponentially odd number that is divisible by n.

The programs for A375360, the canonical program `A375360.P7444135275151362843` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375360 has offset 1).

The definition of A375360 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A375360.P7444135275151362843

`A051903(A356191(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A375360

/-- `A051903(A356191(n+1))` -/
def P7444135275151362843.Spec : Prop :=
  ∀ n, P7444135275151362843.a n = A375360 (n + 1)

theorem P7444135275151362843.correct : P7444135275151362843.Spec := by
  intro n
  simp only [A375360, Nat.add_sub_cancel]

end A375360

/-! ## A375360.P6866994802689489142

`A063196(A067132(n+1))`
-/

namespace A375360.P6866994802689489142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (A067132 (n + 1)).toNat

end

end A375360.P6866994802689489142

namespace A375360

/-- `A063196(A067132(n+1))` -/
def P6866994802689489142.Spec : Prop :=
  ∀ n, P6866994802689489142.a n = A375360 (n + 1)

end A375360

/-! ## A375360.P13376841325757430861

`A372602(n+1)+A057427(n)`
-/

namespace A375360.P13376841325757430861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372602 (n + 1) + A057427 n

end

end A375360.P13376841325757430861

namespace A375360

/-- `A372602(n+1)+A057427(n)` -/
def P13376841325757430861.Spec : Prop :=
  ∀ n, P13376841325757430861.a n = A375360 (n + 1)

end A375360

/-! ## A375360.P393168259926844675

`A372602(n+1)-A057428(n)`
-/

namespace A375360.P393168259926844675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372602 (n + 1) - A057428 n

end

end A375360.P393168259926844675

namespace A375360

/-- `A372602(n+1)-A057428(n)` -/
def P393168259926844675.Spec : Prop :=
  ∀ n, P393168259926844675.a n = A375360 (n + 1)

end A375360

/-! ## A375360.P12450691888265407045

`2*A051903(n+1)-A372601(n+1)`
-/

namespace A375360.P12450691888265407045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051903 (n + 1) - A372601 (n + 1)

end

end A375360.P12450691888265407045

namespace A375360

/-- `2*A051903(n+1)-A372601(n+1)` -/
def P12450691888265407045.Spec : Prop :=
  ∀ n, P12450691888265407045.a n = A375360 (n + 1)

end A375360

/-! ## A375360.P13522127729414724031

`A372602(n+1)+A052928(n+1)/A131055(n+1)`
-/

namespace A375360.P13522127729414724031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372602 (n + 1) : ℚ) + (A052928 (n + 1) : ℚ) / (A131055 (n + 1) : ℚ)

end

end A375360.P13522127729414724031

namespace A375360

/-- `A372602(n+1)+A052928(n+1)/A131055(n+1)` -/
def P13522127729414724031.Spec : Prop :=
  ∀ n, P13522127729414724031.a n = (A375360 (n + 1) : ℚ)

end A375360

/-! ## A375360.P431714055289049380

`A061395(A383705(n+1))`
-/

namespace A375360.P431714055289049380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A383705 (n + 1)).toNat

end

end A375360.P431714055289049380

namespace A375360

/-- `A061395(A383705(n+1))` -/
def P431714055289049380.Spec : Prop :=
  ∀ n, P431714055289049380.a n = A375360 (n + 1)

end A375360

/-! ## A375360.P12360090682340077796

`A372601((n+1)*A336643(n+1))`
-/

namespace A375360.P12360090682340077796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372601 ((n + 1 : ℤ) * A336643 (n + 1)).toNat

end

end A375360.P12360090682340077796

namespace A375360

/-- `A372601((n+1)*A336643(n+1))` -/
def P12360090682340077796.Spec : Prop :=
  ∀ n, P12360090682340077796.a n = A375360 (n + 1)

end A375360

/-! ## A375360.P14686985060549496686

`A372601(A356191(2*n+1-n))`
-/

namespace A375360.P14686985060549496686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372601 (A356191 (2 * n + 1 - n)).toNat

end

end A375360.P14686985060549496686

namespace A375360

/-- `A372601(A356191(2*n+1-n))` -/
def P14686985060549496686.Spec : Prop :=
  ∀ n, P14686985060549496686.a n = A375360 (n + 1)

end A375360

/-! ## A375360.P5731262552737455667

`A334202(A286779(n+1)²)`
-/

namespace A375360.P5731262552737455667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334202 (A286779 (n + 1) ^ 2).toNat

end

end A375360.P5731262552737455667

namespace A375360

/-- `A334202(A286779(n+1)²)` -/
def P5731262552737455667.Spec : Prop :=
  ∀ n, P5731262552737455667.a n = A375360 (n + 1)

end A375360

/-! ## A375360.P10583719770451195438

`A372601(A064549(n+1))`
-/

namespace A375360.P10583719770451195438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372601 (A064549 (n + 1)).toNat

end

end A375360.P10583719770451195438

namespace A375360

/-- `A372601(A064549(n+1))` -/
def P10583719770451195438.Spec : Prop :=
  ∀ n, P10583719770451195438.a n = A375360 (n + 1)

end A375360

/-! ## A375360.P484690712913350223

`A392278((n+1)²)-A392278(n+1)`
-/

namespace A375360.P484690712913350223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392278 ((n + 1) ^ 2) - A392278 (n + 1)

end

end A375360.P484690712913350223

namespace A375360

/-- `A392278((n+1)²)-A392278(n+1)` -/
def P484690712913350223.Spec : Prop :=
  ∀ n, P484690712913350223.a n = A375360 (n + 1)

end A375360

/-!
# A375361: Odd numbers with at least two prime divisors of the form 4*k + 1 counted with multiplicity.

The programs for A375361, there is no canonical definition to state claims against.
-/

/-! ## A375361.P6185200126796697097

`∩[2*n+1, A009177(n+1)]`
-/

namespace A375361.P6185200126796697097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375361.P6185200126796697097

/-! ## A375361.P1912376144528798661

`record[A000265(A009177(1+n))]`
-/

namespace A375361.P1912376144528798661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A009177 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375361.P1912376144528798661

/-! ## A375361.P1920721423646275015

`record[A028234(A009177(n+2))]`
-/

namespace A375361.P1920721423646275015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A009177 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375361.P1920721423646275015

/-! ## A375361.P7393767366055310077

`filter[A009177(n+1), A000035(#)]`
-/

namespace A375361.P7393767366055310077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A375361.P7393767366055310077

/-! ## A375361.P5631399953156013430

`filter[A009177(n+1), A266070(#)]`
-/

namespace A375361.P5631399953156013430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A375361.P5631399953156013430

/-! ## A375361.P16566698801057519896

`filter[A009177(n+1), A266246(#)]`
-/

namespace A375361.P16566698801057519896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266246 (f1 j).toNat = 1) n)

end

end A375361.P16566698801057519896

/-! ## A375361.P12574941842583068730

`filter[A009177(n+1), A266444(#)]`
-/

namespace A375361.P12574941842583068730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266444 (f1 j).toNat = 1) n)

end

end A375361.P12574941842583068730

/-! ## A375361.P11491433425073446568

`filter[A009177(n+1), A266611(#)]`
-/

namespace A375361.P11491433425073446568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A375361.P11491433425073446568

/-! ## A375361.P7075617263874724728

`filter[A009177(n+1), A266719(#)]`
-/

namespace A375361.P7075617263874724728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A375361.P7075617263874724728

/-! ## A375361.P13653517603576902850

`filter[A009177(n+1), A266789(#)]`
-/

namespace A375361.P13653517603576902850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266789 (f1 j).toNat = 1) n)

end

end A375361.P13653517603576902850

/-!
# A375362: Expansion of 1/( (1 + x) * (1 - x*(1 + x)^3) ).

The programs for A375362, the canonical program `A375362.P1134036776548849197` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375362 has offset 0).

The definition of A375362 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x^2-6x^3-4x^4-x^5))` (program `A375362.P1134036776548849197`, by `A375362.P1134036776548849197.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A375362.P1134036776548849197

`ogf(1/(1-4x^2-6x^3-4x^4-x^5))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A375362

/-- `ogf(1/(1-4x^2-6x^3-4x^4-x^5))` -/
def P1134036776548849197.Spec : Prop :=
  ∀ n, P1134036776548849197.a n = A375362 n

theorem P1134036776548849197.correct : P1134036776548849197.Spec := by
  intro n
  simp only [A375362]

end A375362

/-! ## A375362.P14901228672254291871

`4*a(n-2)+6*a(n-3)+4*a(n-4)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=4, a(3)=6, a(4)=20`
-/

namespace A375362.P14901228672254291871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 4, 6, 20] fun n a =>
  4 * a (n - 2) + 6 * a (n - 3) + 4 * a (n - 4) + a (n - 5)

end

end A375362.P14901228672254291871

namespace A375362

/-- `4*a(n-2)+6*a(n-3)+4*a(n-4)+a(n-5)` -/
def P14901228672254291871.Spec : Prop :=
  ∀ n, (P14901228672254291871.a n : ℤ) = A375362 n

end A375362

/-! ## A375362.P2725026483578953572

`A003269(3*n)+(-1)^n`
-/

namespace A375362.P2725026483578953572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003269 (3 * n) + (-1) ^ n

end

end A375362.P2725026483578953572

namespace A375362

/-- `A003269(3*n)+(-1)^n` -/
def P2725026483578953572.Spec : Prop :=
  ∀ n, P2725026483578953572.a n = A375362 n

end A375362

/-! ## A375362.P4875939805940909675

`A033999(n)+A003269(3*n)`
-/

namespace A375362.P4875939805940909675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A003269 (3 * n)

end

end A375362.P4875939805940909675

namespace A375362

/-- `A033999(n)+A003269(3*n)` -/
def P4875939805940909675.Spec : Prop :=
  ∀ n, P4875939805940909675.a n = A375362 n

end A375362

/-! ## A375362.P8021524677308548752

`A010892(A008585(n))+A003269(3*n)`
-/

namespace A375362.P8021524677308548752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A008585 n).toNat + A003269 (3 * n)

end

end A375362.P8021524677308548752

namespace A375362

/-- `A010892(A008585(n))+A003269(3*n)` -/
def P8021524677308548752.Spec : Prop :=
  ∀ n, P8021524677308548752.a n = A375362 n

end A375362

/-! ## A375362.P5600250108799299831

`A099234(n)-a(n-1)` with `a(0)=1`
-/

namespace A375362.P5600250108799299831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A099234 n - a (n - 1)

end

end A375362.P5600250108799299831

namespace A375362

/-- `A099234(n)-a(n-1)` -/
def P5600250108799299831.Spec : Prop :=
  ∀ n, P5600250108799299831.a n = A375362 n

end A375362

/-!
# A375363: Expansion of 1/( (1 + x)^2 * (1 - x*(1 + x)^3) ).

The programs for A375363, the canonical program `A375363.P5197238404905779259` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375363 has offset 0).

The definition of A375363 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x-4x^2-10x^3-10x^4-5x^5-x^6))` (program `A375363.P5197238404905779259`, by `A375363.P5197238404905779259.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A375363.P5197238404905779259

`ogf(1/(1+x-4x^2-10x^3-10x^4-5x^5-x^6))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A375363

/-- `ogf(1/(1+x-4x^2-10x^3-10x^4-5x^5-x^6))` -/
def P5197238404905779259.Spec : Prop :=
  ∀ n, P5197238404905779259.a n = A375363 n

theorem P5197238404905779259.correct : P5197238404905779259.Spec := by
  intro n
  simp only [A375363]

end A375363

/-! ## A375363.P13736224185288456756

`A375362(n)-a(n-1)` with `a(0)=1`
-/

namespace A375363.P13736224185288456756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A375362 n - a (n - 1)

end

end A375363.P13736224185288456756

namespace A375363

/-- `A375362(n)-a(n-1)` -/
def P13736224185288456756.Spec : Prop :=
  ∀ n, P13736224185288456756.a n = A375363 n

end A375363

/-! ## A375363.P15629285224397350872

`A003269(3*n)+(-1)^n-a(n-1)` with `a(0)=1`
-/

namespace A375363.P15629285224397350872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003269 (3 * n) + (-1) ^ n - a (n - 1)

end

end A375363.P15629285224397350872

namespace A375363

/-- `A003269(3*n)+(-1)^n-a(n-1)` -/
def P15629285224397350872.Spec : Prop :=
  ∀ n, P15629285224397350872.a n = A375363 n

end A375363

/-!
# A375364: Expansion of 1/( (1 + x) * (1 - x^2*(1 + x)^3) ).

The programs for A375364, the canonical program `A375364.P16451094500735447169` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375364 has offset 0).

The definition of A375364 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x-x^2-4x^3-6x^4-4x^5-x^6))` (program `A375364.P16451094500735447169`, by `A375364.P16451094500735447169.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A375364.P16451094500735447169

`ogf(1/(1+x-x^2-4x^3-6x^4-4x^5-x^6))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A375364

/-- `ogf(1/(1+x-x^2-4x^3-6x^4-4x^5-x^6))` -/
def P16451094500735447169.Spec : Prop :=
  ∀ n, P16451094500735447169.a n = A375364 n

theorem P16451094500735447169.correct : P16451094500735447169.Spec := by
  intro n
  simp only [A375364]

end A375364

/-! ## A375364.P14787909337924663698

`A116090(n)-a(n-1)` with `a(0)=1`
-/

namespace A375364.P14787909337924663698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A116090 n - a (n - 1)

end

end A375364.P14787909337924663698

namespace A375364

/-- `A116090(n)-a(n-1)` -/
def P14787909337924663698.Spec : Prop :=
  ∀ n, P14787909337924663698.a n = A375364 n

end A375364

/-! ## A375364.P1881520655537793382

`A001687(A016777(n))-a(n-1)` with `a(0)=1`
-/

namespace A375364.P1881520655537793382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001687 (A016777 n).toNat - a (n - 1)

end

end A375364.P1881520655537793382

namespace A375364

/-- `A001687(A016777(n))-a(n-1)` -/
def P1881520655537793382.Spec : Prop :=
  ∀ n, P1881520655537793382.a n = A375364 n

end A375364

/-! ## A375364.P10626501516186728790

`A116090(n+1)-(A375365(n+1)+A375365(n))`
-/

namespace A375364.P10626501516186728790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116090 (n + 1) - (A375365 (n + 1) + A375365 n)

end

end A375364.P10626501516186728790

namespace A375364

/-- `A116090(n+1)-(A375365(n+1)+A375365(n))` -/
def P10626501516186728790.Spec : Prop :=
  ∀ n, P10626501516186728790.a n = A375364 n

end A375364

/-!
# A375365: Expansion of 1/( (1 + x)^2 * (1 - x^2*(1 + x)^3) ).

The programs for A375365, the canonical program `A375365.P15263180592855615809` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375365 has offset 0).

The definition of A375365 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+2x-5x^3-10x^4-10x^5-5x^6-x^7))` (program `A375365.P15263180592855615809`, by `A375365.P15263180592855615809.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A375365.P15263180592855615809

`ogf(1/(1+2x-5x^3-10x^4-10x^5-5x^6-x^7))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A375365

/-- `ogf(1/(1+2x-5x^3-10x^4-10x^5-5x^6-x^7))` -/
def P15263180592855615809.Spec : Prop :=
  ∀ n, P15263180592855615809.a n = A375365 n

theorem P15263180592855615809.correct : P15263180592855615809.Spec := by
  intro n
  simp only [A375365]

end A375365

/-! ## A375365.P8795460823517116936

`A375364(n)-a(n-1)` with `a(0)=1`
-/

namespace A375365.P8795460823517116936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A375364 n - a (n - 1)

end

end A375365.P8795460823517116936

namespace A375365

/-- `A375364(n)-a(n-1)` -/
def P8795460823517116936.Spec : Prop :=
  ∀ n, P8795460823517116936.a n = A375365 n

end A375365

/-!
# A375371: Expansion of 1/( (1 + x)^2 * (1 - x*(1 + x)^2) ).

The programs for A375371, the canonical program `A375371.P5693978733306800856` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375371 has offset 0).

The definition of A375371 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x-3x^2-6x^3-4x^4-x^5))` (program `A375371.P5693978733306800856`, by `A375371.P5693978733306800856.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A375371.P5693978733306800856

`ogf(1/(1+x-3x^2-6x^3-4x^4-x^5))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A375371

/-- `ogf(1/(1+x-3x^2-6x^3-4x^4-x^5))` -/
def P5693978733306800856.Spec : Prop :=
  ∀ n, P5693978733306800856.a n = A375371 n

theorem P5693978733306800856.correct : P5693978733306800856.Spec := by
  intro n
  simp only [A375371]

end A375371

/-! ## A375371.P8607918206982037116

`A135851(2*n+3)+A099254(3*n)`
-/

namespace A375371.P8607918206982037116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (2 * n + 3) + A099254 (3 * n)

end

end A375371.P8607918206982037116

namespace A375371

/-- `A135851(2*n+3)+A099254(3*n)` -/
def P8607918206982037116.Spec : Prop :=
  ∀ n, P8607918206982037116.a n = A375371 n

end A375371

/-! ## A375371.P5150062177102880785

`(-1)^n*∑[A077899(n)]`
-/

namespace A375371.P5150062177102880785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A375371.P5150062177102880785

namespace A375371

/-- `(-1)^n*∑[A077899(n)]` -/
def P5150062177102880785.Spec : Prop :=
  ∀ n, P5150062177102880785.a n = A375371 n

end A375371

/-! ## A375371.P6816152743971279417

`∑[A077899(n)]/A057077(2*n)`
-/

namespace A375371.P6816152743971279417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077899 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A057077 (2 * n) : ℚ)

end

end A375371.P6816152743971279417

namespace A375371

/-- `∑[A077899(n)]/A057077(2*n)` -/
def P6816152743971279417.Spec : Prop :=
  ∀ n, P6816152743971279417.a n = (A375371 n : ℚ)

end A375371

/-! ## A375371.P5760673462471653154

`∑[A077899(n)]*A057077(2*n+1)`
-/

namespace A375371.P5760673462471653154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057077 (2 * n + 1)

end

end A375371.P5760673462471653154

namespace A375371

/-- `∑[A077899(n)]*A057077(2*n+1)` -/
def P5760673462471653154.Spec : Prop :=
  ∀ n, P5760673462471653154.a n = A375371 n

end A375371

/-!
# A375372: Expansion of 1/( (1 + x) * (1 - x^2*(1 + x)^2) ).

The programs for A375372, the canonical program `A375372.P443055085033158638` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375372 has offset 0).

The definition of A375372 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+x-x^2-3x^3-3x^4-x^5))` (program `A375372.P443055085033158638`, by `A375372.P443055085033158638.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A375372.P443055085033158638

`ogf(1/(1+x-x^2-3x^3-3x^4-x^5))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A375372

/-- `ogf(1/(1+x-x^2-3x^3-3x^4-x^5))` -/
def P443055085033158638.Spec : Prop :=
  ∀ n, P443055085033158638.a n = A375372 n

theorem P443055085033158638.correct : P443055085033158638.Spec := by
  intro n
  simp only [A375372]

end A375372

/-! ## A375372.P16005709320309913202

`A094686(n)-a(n-1)` with `a(0)=1`
-/

namespace A375372.P16005709320309913202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A094686 n - a (n - 1)

end

end A375372.P16005709320309913202

namespace A375372

/-- `A094686(n)-a(n-1)` -/
def P16005709320309913202.Spec : Prop :=
  ∀ n, P16005709320309913202.a n = A375372 n

end A375372

/-! ## A375372.P17782998250941688311

`A165326(n+1)+Δ[A173173(n+1)]`
-/

namespace A375372.P17782998250941688311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (n + 1) + (f1 (n + 1) - f1 n)

end

end A375372.P17782998250941688311

namespace A375372

/-- `A165326(n+1)+Δ[A173173(n+1)]` -/
def P17782998250941688311.Spec : Prop :=
  ∀ n, P17782998250941688311.a n = A375372 n

end A375372

/-! ## A375372.P16674407872692279952

`A165326(3*n+1)+Δ[A173673(2*n+3)]`
-/

namespace A375372.P16674407872692279952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (3 * n + 1) + (f1 (n + 1) - f1 n)

end

end A375372.P16674407872692279952

namespace A375372

/-- `A165326(3*n+1)+Δ[A173673(2*n+3)]` -/
def P16674407872692279952.Spec : Prop :=
  ∀ n, P16674407872692279952.a n = A375372 n

end A375372

/-! ## A375372.P6751732677997836369

`Δ[ceil(A000045(n+1)/2)+n%2]`
-/

namespace A375372.P6751732677997836369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000045 (n + 1) : ℚ) / 2⌉ + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A375372.P6751732677997836369

namespace A375372

/-- `Δ[ceil(A000045(n+1)/2)+n%2]` -/
def P6751732677997836369.Spec : Prop :=
  ∀ n, P6751732677997836369.a n = A375372 n

end A375372

/-!
# A375373: Expansion of 1/( (1 + x)^2 * (1 - x^2*(1 + x)^2) ).

The programs for A375373, the canonical program `A375373.P3571904792004837149` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375373 has offset 0).

The definition of A375373 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1+2x-4x^3-6x^4-4x^5-x^6))` (program `A375373.P3571904792004837149`, by `A375373.P3571904792004837149.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A375373.P3571904792004837149

`ogf(1/(1+2x-4x^3-6x^4-4x^5-x^6))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A375373

/-- `ogf(1/(1+2x-4x^3-6x^4-4x^5-x^6))` -/
def P3571904792004837149.Spec : Prop :=
  ∀ n, P3571904792004837149.a n = A375373 n

theorem P3571904792004837149.correct : P3571904792004837149.Spec := by
  intro n
  simp only [A375373]

end A375373

/-! ## A375373.P15487898001832816935

`A375372(n)-a(n-1)` with `a(0)=1`
-/

namespace A375373.P15487898001832816935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A375372 n - a (n - 1)

end

end A375373.P15487898001832816935

namespace A375373

/-- `A375372(n)-a(n-1)` -/
def P15487898001832816935.Spec : Prop :=
  ∀ n, P15487898001832816935.a n = A375373 n

end A375373

/-! ## A375373.P2064455024451931338

`Δ[A004695(n)+A001057(n)]`
-/

namespace A375373.P2064455024451931338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 n + A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A375373.P2064455024451931338

namespace A375373

/-- `Δ[A004695(n)+A001057(n)]` -/
def P2064455024451931338.Spec : Prop :=
  ∀ n, P2064455024451931338.a n = A375373 n

end A375373

/-! ## A375373.P11215585696024904514

`A099254(3*n)+Δ[A004695(n)]`
-/

namespace A375373.P11215585696024904514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099254 (3 * n) + (f1 (n + 1) - f1 n)

end

end A375373.P11215585696024904514

namespace A375373

/-- `A099254(3*n)+Δ[A004695(n)]` -/
def P11215585696024904514.Spec : Prop :=
  ∀ n, P11215585696024904514.a n = A375373 n

end A375373

/-!
# A375374: Let X be the sequence of power towers built of 2's and 3's, sorted first by their height and then colexicographically: 2, 3, 2^2, 3^2, 2^3, 3^3, 2^2^2, 3^2^2, etc. Sequence gives the permutation of indices which reorders X by magnitude.

The programs for A375374, there is no canonical definition to state claims against.
-/

/-! ## A375374.P32985428005789751

`A081241(A185969(n+1))`
-/

namespace A375374.P32985428005789751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081241 (A185969 (n + 1)).toNat

end

end A375374.P32985428005789751

/-! ## A375374.P18423155769597858729

`A185969(A299237(n+1))`
-/

namespace A375374.P18423155769597858729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185969 (A299237 (n + 1)).toNat

end

end A375374.P18423155769597858729

/-! ## A375374.P5595040496939616948

`A375375(A375375(A375375(n+1)))`
-/

namespace A375374.P5595040496939616948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375375 (A375375 (A375375 (n + 1)).toNat).toNat

end

end A375374.P5595040496939616948

/-!
# A375375: Inverse permutation to A375374.

The programs for A375375, there is no canonical definition to state claims against.
-/

/-! ## A375375.P7407360036952827913

`A256231(A081241(n+1))`
-/

namespace A375375.P7407360036952827913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256231 (A081241 (n + 1)).toNat

end

end A375375.P7407360036952827913

/-! ## A375375.P5879975228646829303

`A299237(A256231(n+1))`
-/

namespace A375375.P5879975228646829303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299237 (A256231 (n + 1)).toNat

end

end A375375.P5879975228646829303

/-! ## A375375.P4010678218193437969

`A256231(A059893(n+2)-1)`
-/

namespace A375375.P4010678218193437969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256231 (A059893 (n + 2) - 1).toNat

end

end A375375.P4010678218193437969

/-! ## A375375.P2124296439432693537

`A256231(A145342(n+3)-2)`
-/

namespace A375375.P2124296439432693537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256231 (A145342 (n + 3) - 2).toNat

end

end A375375.P2124296439432693537

/-! ## A375375.P4265742080643498362

`A256231(A030109(2*n+5)-1)`
-/

namespace A375375.P4265742080643498362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256231 (A030109 (2 * n + 5) - 1).toNat

end

end A375375.P4265742080643498362

/-! ## A375375.P3441158999268048788

`A256231((A145341(n+3)-3)/2)`
-/

namespace A375375.P3441158999268048788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256231 (SequenceMachineLib.roundAway ((A145341 (n + 3) - 3 : ℚ) / 2)).toNat

end

end A375375.P3441158999268048788

/-! ## A375375.P9347023998596136071

`A375374(A375374(A375374(n+1)))`
-/

namespace A375375.P9347023998596136071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375374 (A375374 (A375374 (n + 1)).toNat).toNat

end

end A375375.P9347023998596136071

/-!
# A375376: Square array read by antidiagonals: Let n = Sum_{i=1..m} 2^e_i be the binary expansion of n, let S be the set {e_i+2; 1 <= i <= m}, and let X be the sequence of power towers built of numbers in S, sorted first by their height and then colexicographically. The n-th row of the array gives the permutation of indices which reorders X by magnitude. In case of ties, keep the colexicographic order.

The programs for A375376, there is no canonical definition to state claims against.
-/

/-! ## A375376.P625978373430327073

`A375377(A296765(n+4)-3)`
-/

namespace A375376.P625978373430327073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375377 (A296765 (n + 4) - 3).toNat

end

end A375376.P625978373430327073

/-! ## A375376.P18154640371198232142

`A375377(n+1)%A375403(n+1)`
-/

namespace A375376.P18154640371198232142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A375377 (n + 1)) (A375403 (n + 1))

end

end A375376.P18154640371198232142

/-! ## A375376.P11048512393386354808

`A375377(n+1)%A236305(A054336(n))`
-/

namespace A375376.P11048512393386354808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A375377 (n + 1)) (A236305 (A054336 n).toNat)

end

end A375376.P11048512393386354808

/-! ## A375376.P15129536754359116812

`A375377(n+1)+A000007(A115068(n+1))`
-/

namespace A375376.P15129536754359116812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375377 (n + 1) + A000007 (A115068 (n + 1)).toNat

end

end A375376.P15129536754359116812

/-! ## A375376.P15141695569773523407

`A375377(n+1)+A000007(A342786(n+3))`
-/

namespace A375376.P15141695569773523407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375377 (n + 1) + A000007 (A342786 (n + 3)).toNat

end

end A375376.P15141695569773523407

/-! ## A375376.P8385997985157552560

`A375377(n+1)+A008683(A375399(n+3))`
-/

namespace A375376.P8385997985157552560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375377 (n + 1) + A008683 (A375399 (n + 3)).toNat

end

end A375376.P8385997985157552560

/-! ## A375376.P15428678156632973292

`A375377(n+1)-A354926(A269599(n+4))`
-/

namespace A375376.P15428678156632973292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375377 (n + 1) - A354926 (A269599 (n + 4)).toNat

end

end A375376.P15428678156632973292

/-! ## A375376.P37703650840621820

`A375377(n+1)+A005926(A084606(n))`
-/

namespace A375376.P37703650840621820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375377 (n + 1) + A005926 (A084606 n).toNat

end

end A375376.P37703650840621820

/-! ## A375376.P4614373783062600082

`A375377(n+1)+A000007(A335448(n+1))`
-/

namespace A375376.P4614373783062600082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375377 (n + 1) + A000007 (A335448 (n + 1)).toNat

end

end A375376.P4614373783062600082

/-! ## A375376.P4419871959562848924

`A375377(n+1)+A339742(A001248(n+1))`
-/

namespace A375376.P4419871959562848924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375377 (n + 1) + A339742 (A001248 (n + 1)).toNat

end

end A375376.P4419871959562848924

/-!
# A375378: Value of the power tower formed by the numbers in the n-th composition (in standard order).

The programs for A375378, the canonical program `A375378.P14882579800046314677` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375378 has offset 0).

The definition of A375378 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065120, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A375378.P14882579800046314677

`A065120(n)^a(A053645(n))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A375378

/-- `A065120(n)^a(A053645(n))` -/
def P14882579800046314677.Spec : Prop :=
  ∀ n, P14882579800046314677.a n = (A375378 n : ℝ)

end A375378

/-! ## A375378.P10677288592008329247

`A290109(A057335(n))`
-/

namespace A375378.P10677288592008329247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290109 (A057335 n).toNat

end

end A375378.P10677288592008329247

namespace A375378

/-- `A290109(A057335(n))` -/
def P10677288592008329247.Spec : Prop :=
  ∀ n, P10677288592008329247.a n = A375378 n

end A375378

/-! ## A375378.P16985944016506917962

`A290109(A356603(n))`
-/

namespace A375378.P16985944016506917962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290109 (A356603 n).toNat

end

end A375378.P16985944016506917962

namespace A375378

/-- `A290109(A356603(n))` -/
def P16985944016506917962.Spec : Prop :=
  ∀ n, P16985944016506917962.a n = A375378 n

end A375378

/-! ## A375378.P12466331783251989870

`A319988(3*(n+1))+A001511(C(n, floor(n/3)))`
-/

namespace A375378.P12466331783251989870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319988 (3 * (n + 1)) + A001511 (Nat.choose n ⌊(n : ℚ) / 3⌋.toNat)

end

end A375378.P12466331783251989870

namespace A375378

/-- `A319988(3*(n+1))+A001511(C(n, floor(n/3)))` -/
def P12466331783251989870.Spec : Prop :=
  ∀ n, P12466331783251989870.a n = A375378 n

end A375378

/-! ## A375378.P3404916400729207848

`A357180(A333630(n))^A357180(n)`
-/

namespace A375378.P3404916400729207848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357180 (A333630 n).toNat : ℚ) ^ (A357180 n : ℤ)

end

end A375378.P3404916400729207848

namespace A375378

/-- `A357180(A333630(n))^A357180(n)` -/
def P3404916400729207848.Spec : Prop :=
  ∀ n, P3404916400729207848.a n = (A375378 n : ℚ)

end A375378

/-!
# A375379: Value of the power tower formed by the numbers obtained by adding 1 to the terms in the n-th composition (in standard order).

The programs for A375379, the canonical program `A375379.P12503235433013472216` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375379 has offset 0).

The definition of A375379 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065120, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A375379.P12503235433013472216

`(A065120(n)+1)^a(A053645(n))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A375379

/-- `(A065120(n)+1)^a(A053645(n))` -/
def P12503235433013472216.Spec : Prop :=
  ∀ n, P12503235433013472216.a n = (A375379 n : ℝ)

end A375379

/-! ## A375379.P3591653550782723018

`A375378(A124108(n))`
-/

namespace A375379.P3591653550782723018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375378 (A124108 n).toNat

end

end A375379.P3591653550782723018

namespace A375379

/-- `A375378(A124108(n))` -/
def P3591653550782723018.Spec : Prop :=
  ∀ n, P3591653550782723018.a n = A375379 n

end A375379

/-!
# A375381: E.g.f.: (exp(-x) - exp(x) - 2)/(exp(-x) + exp(x) - 4).

The programs for A375381, there is no canonical definition to state claims against.
-/

/-! ## A375381.P17450157858983766678

`A327034(n)/gcd(2, ∏{p}[n, #])`
-/

namespace A375381.P17450157858983766678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327034 n : ℚ) / (Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ)

end

end A375381.P17450157858983766678

/-! ## A375381.P6884846659180084268

`floor(A260504(n)/((n+1)%2+2))+1`
-/

namespace A375381.P6884846659180084268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A260504 n : ℚ) / (((n + 1) % 2 + 2 : ℕ) : ℚ)⌋ + 1

end

end A375381.P6884846659180084268

/-! ## A375381.P7766227285932164495

`A327034(n)/A279387(A265641(n+1))`
-/

namespace A375381.P7766227285932164495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327034 n : ℚ) / (A279387 (A265641 (n + 1)).toNat : ℚ)

end

end A375381.P7766227285932164495

/-! ## A375381.P10830426508448621786

`A032742(A260504(n)+1)`
-/

namespace A375381.P10830426508448621786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A260504 n + 1).toNat

end

end A375381.P10830426508448621786

/-!
# A375384: Triangular numbers that are sandwiched between two squarefree semiprimes.

The programs for A375384, there is no canonical definition to state claims against.
-/

/-! ## A375384.P5010858296560664737

`A121898(A162880(n+1))`
-/

namespace A375384.P5010858296560664737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121898 (A162880 (n + 1)).toNat

end

end A375384.P5010858296560664737

/-! ## A375384.P13400740668434464676

`A121898(A065475(n+1)+1)`
-/

namespace A375384.P13400740668434464676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121898 (A065475 (n + 1) + 1).toNat

end

end A375384.P13400740668434464676

/-! ## A375384.P3217419542694738205

`A121898(A134889(2*(n+1)))`
-/

namespace A375384.P3217419542694738205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121898 (A134889 (2 * (n + 1))).toNat

end

end A375384.P3217419542694738205

/-! ## A375384.P17776821691769091693

`record[A121898(A089554(n+1)+1)]`
-/

namespace A375384.P17776821691769091693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121898 (A089554 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375384.P17776821691769091693

/-!
# A375386: a(n) is the common difference in the longest arithmetic progression of primes ending in prime(n). If there is more than one such arithmetic progression, the smallest difference is chosen.

The programs for A375386, there is no canonical definition to state claims against.
-/

/-! ## A375386.P8715646435723756850

`A376115(p?[2*n+1])`
-/

namespace A375386.P8715646435723756850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376115 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A375386.P8715646435723756850

/-! ## A375386.P16668613130947425211

`A376115(A045344(n+1))`
-/

namespace A375386.P16668613130947425211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376115 (A045344 (n + 1)).toNat

end

end A375386.P16668613130947425211

/-! ## A375386.P7219732573759784349

`A376115(A065091(n+1))`
-/

namespace A375386.P7219732573759784349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376115 (A065091 (n + 1)).toNat

end

end A375386.P7219732573759784349

/-! ## A375386.P12073046171949334983

`A376115(A140475(n+1))`
-/

namespace A375386.P12073046171949334983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376115 (A140475 (n + 1)).toNat

end

end A375386.P12073046171949334983

/-! ## A375386.P4971157070990942166

`A376115(A000040(n+2))`
-/

namespace A375386.P4971157070990942166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376115 (A000040 (n + 2)).toNat

end

end A375386.P4971157070990942166

/-! ## A375386.P6055868120374359535

`A376115(A006005(n+2))`
-/

namespace A375386.P6055868120374359535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376115 (A006005 (n + 2)).toNat

end

end A375386.P6055868120374359535

/-! ## A375386.P6226803542705206405

`A376115(A063884(n+2))`
-/

namespace A375386.P6226803542705206405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376115 (A063884 (n + 2)).toNat

end

end A375386.P6226803542705206405

/-! ## A375386.P17220873363978708318

`A376115(A063904(n+2))`
-/

namespace A375386.P17220873363978708318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376115 (A063904 (n + 2)).toNat

end

end A375386.P17220873363978708318

/-! ## A375386.P11934632864857606884

`A376115(A171577(n+2))`
-/

namespace A375386.P11934632864857606884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376115 (A171577 (n + 2)).toNat

end

end A375386.P11934632864857606884

/-! ## A375386.P6197055861377275250

`A376115(A160656(n+2))`
-/

namespace A375386.P6197055861377275250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376115 (A160656 (n + 2)).toNat

end

end A375386.P6197055861377275250

/-!
# A375388: A family of squares S(m), m > 0, read by squares and then by rows; square S(1) is [1, 1; 1, 1]; for m > 0, square S(m+1) is obtained by replacing each subsquare [t, u; v, w] in S(m) by [t, t+u, u; t+v, t+u+v+w, u+w; v, v+w, w].

The programs for A375388, there is no canonical definition to state claims against.
-/

/-! ## A375388.P10749162184332618889

`A226056(A360936(n+1))`
-/

namespace A375388.P10749162184332618889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226056 (A360936 (n + 1)).toNat

end

end A375388.P10749162184332618889

/-! ## A375388.P8472431832621483015

`A051700(A092047(n+1)+2)`
-/

namespace A375388.P8472431832621483015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A092047 (n + 1) + 2).toNat

end

end A375388.P8472431832621483015

/-! ## A375388.P17591732093298985626

`A076259(A335131(n+5)+A076259(n+1))`
-/

namespace A375388.P17591732093298985626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076259 (A335131 (n + 5) + A076259 (n + 1)).toNat

end

end A375388.P17591732093298985626

/-! ## A375388.P1415357002320105250

`A132399(A178034(n+1))`
-/

namespace A375388.P1415357002320105250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132399 (A178034 (n + 1)).toNat

end

end A375388.P1415357002320105250

/-! ## A375388.P2829482851961451868

`A231813(A197497(n+1))`
-/

namespace A375388.P2829482851961451868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 (A197497 (n + 1)).toNat

end

end A375388.P2829482851961451868

/-!
# A375389: a(n) is the smallest abundant number k such that n - k is abundant, or -1 if there is no such k.

The programs for A375389, there is no canonical definition to state claims against.
-/

/-! ## A375389.P15769537629355058395

`A296412(A215788(n+1))-2`
-/

namespace A375389.P15769537629355058395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296412 (A215788 (n + 1)).toNat - 2

end

end A375389.P15769537629355058395

/-! ## A375389.P17009751657069866018

`A341702(C(A107661(n), A319368(n+3)))`
-/

namespace A375389.P17009751657069866018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341702 (Nat.choose (A107661 n).toNat (A319368 (n + 3)).toNat)

end

end A375389.P17009751657069866018

/-!
# A375390: Numbers k such that k^2 + 1, k^2 + 3 and k^2 + 5 are semiprimes.

The programs for A375390, there is no canonical definition to state claims against.
-/

/-! ## A375390.P1551207241775901383

`lt[3, A375391(n+1)]+1`
-/

namespace A375390.P1551207241775901383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375391 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A375390.P1551207241775901383

/-!
# A375391: a(n) is the greatest odd number k such that n^2 + j is a semiprime for all odd numbers j from 1 to k.

The programs for A375391, there is no canonical definition to state claims against.
-/

/-! ## A375391.P8625805274901557216

`A008836(9*(n²+2*n+2))`
-/

namespace A375391.P8625805274901557216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (9 * (n ^ 2 + 2 * n + 2))

end

end A375391.P8625805274901557216

/-! ## A375391.P10356445191107329760

`A165586(A368989(n+2))`
-/

namespace A375391.P10356445191107329760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165586 (A368989 (n + 2)).toNat

end

end A375391.P10356445191107329760

/-! ## A375391.P8196913377952851882

`A033999(ceil(A000079(n)/A189312(n+1)))`
-/

namespace A375391.P8196913377952851882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 ⌈(A000079 n : ℚ) / (A189312 (n + 1) : ℚ)⌉.toNat

end

end A375391.P8196913377952851882

/-! ## A375391.P5045913111372073425

`A011589(A183008(n))`
-/

namespace A375391.P5045913111372073425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011589 (A183008 n).toNat

end

end A375391.P5045913111372073425

/-! ## A375391.P2165751702754544003

`A011623(A222711(n+2))`
-/

namespace A375391.P2165751702754544003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011623 (A222711 (n + 2)).toNat

end

end A375391.P2165751702754544003

/-!
# A375393: a(0) = 1; a(n) = Sum_{k=0..n-1} (4*k+3) * a(k) * a(n-k-1).

The programs for A375393, there is no canonical definition to state claims against.
-/

/-! ## A375393.P3606600443155526004

`A103391(A322539(n))*A322553(n+1)`
-/

namespace A375393.P3606600443155526004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A322539 n).toNat * A322553 (n + 1)

end

end A375393.P3606600443155526004

/-!
# A375394: Expansion of e.g.f. 1 / (exp(-x^2/2) - x).

The programs for A375394, there is no canonical definition to state claims against.
-/

/-! ## A375394.P5075044798937679364

`A358264(n+1)/(n+1)`
-/

namespace A375394.P5075044798937679364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358264 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A375394.P5075044798937679364

/-! ## A375394.P14148784774054955370

`A080444(A352236(n))`
-/

namespace A375394.P14148784774054955370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080444 (A352236 n).toNat

end

end A375394.P14148784774054955370

/-!
# A375395: Expansion of e.g.f. 1 / (exp(-x^3/6) - x).

The programs for A375395, there is no canonical definition to state claims against.
-/

/-! ## A375395.P7980515913151905481

`A358265(n+1)/(n+1)`
-/

namespace A375395.P7980515913151905481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358265 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A375395.P7980515913151905481

/-!
# A375396: Numbers not divisible by the square of any prime factor except (possibly) the least. Hooklike numbers.

The programs for A375396, there is no canonical definition to state claims against.
-/

/-! ## A375396.P15938137274976949093

`comp[A375397(n+1)-1]+1`
-/

namespace A375396.P15938137274976949093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375397 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A375396.P15938137274976949093

/-! ## A375396.P17019387528399441480

`eq[1, A348505(A028234(n+1))]+1`
-/

namespace A375396.P17019387528399441480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348505 (A028234 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375396.P17019387528399441480

/-! ## A375396.P6708440076460367955

`record[lcm(A007913(n+1), A028233(n+1))]`
-/

namespace A375396.P6708440076460367955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007913 (n + 1)) (A028233 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375396.P6708440076460367955

/-! ## A375396.P17044155336291986453

`lt[A055631(A085731(n+1)), A020639(n+1)]+1`
-/

namespace A375396.P17044155336291986453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055631 (A085731 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A375396.P17044155336291986453

/-! ## A375396.P9211367855065163366

`eq[0, A335453(n+1)]+1`
-/

namespace A375396.P9211367855065163366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335453 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375396.P9211367855065163366

/-!
# A375397: Numbers divisible by the square of some prime factor other than the least. Non-hooklike numbers.

The programs for A375397, there is no canonical definition to state claims against.
-/

/-! ## A375397.P18000422915831798082

`∪[A036785(n+1), A071365(n+1)]`
-/

namespace A375397.P18000422915831798082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375397.P18000422915831798082

/-! ## A375397.P1024143034320637544

`lt[1, A005361(A028234(n+1))]+1`
-/

namespace A375397.P1024143034320637544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A028234 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A375397.P1024143034320637544

/-! ## A375397.P15091812617867399141

`lt[A007947(n+1), A028234(n+1)]+1`
-/

namespace A375397.P15091812617867399141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A375397.P15091812617867399141

/-! ## A375397.P9695575983552596054

`lt[A020639(n+1), A071773(n+1)]+1`
-/

namespace A375397.P9695575983552596054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A375397.P9695575983552596054

/-! ## A375397.P7296181141410395721

`A020725(lt[A007947(n+1), A028234(n+1)])`
-/

namespace A375397.P7296181141410395721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A375397.P7296181141410395721

/-! ## A375397.P17401833668111381670

`∪[A071365(n+1), A335463(n+1)]`
-/

namespace A375397.P17401833668111381670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375397.P17401833668111381670

/-! ## A375397.P17556235596336313953

`∪[A335463(n+1), A360252(n+1)]`
-/

namespace A375397.P17556235596336313953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375397.P17556235596336313953

/-! ## A375397.P13890918114049230980

`∪[A335463(n+1), A389145(n+1)]`
-/

namespace A375397.P13890918114049230980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335463 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375397.P13890918114049230980

/-! ## A375397.P14816055206238447267

`∪[A036785(n+1), A317258(n+1)]`
-/

namespace A375397.P14816055206238447267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375397.P14816055206238447267

/-! ## A375397.P12426317825970514700

`∪[A317258(n+1), A335463(n+1)]`
-/

namespace A375397.P12426317825970514700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317258 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375397.P12426317825970514700

/-!
# A375398: Numbers k such that the minima of maximal anti-runs in the weakly increasing sequence of prime factors of k (with multiplicity) are distinct.

The programs for A375398, there is no canonical definition to state claims against.
-/

/-! ## A375398.P13887839785381681301

`comp[A375399(n+1)-1]+1`
-/

namespace A375398.P13887839785381681301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375399 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A375398.P13887839785381681301

/-! ## A375398.P12253117894921701747

`record[lcm(∏{p}[n+1, #], A353271(n+1))]`
-/

namespace A375398.P12253117894921701747
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) (A353271 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375398.P12253117894921701747

/-! ## A375398.P592207373534065761

`filter[A385098(n+1), A212793(#)]`
-/

namespace A375398.P592207373534065761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A375398.P592207373534065761

/-! ## A375398.P12545962987895522964

`filter[A385098(n+1), A355823(#)]`
-/

namespace A375398.P12545962987895522964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A375398.P12545962987895522964

/-! ## A375398.P18423384339825349241

`filter[A385098(n+1), A355825(#)]`
-/

namespace A375398.P18423384339825349241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355825 (f1 j).toNat = 1) n)

end

end A375398.P18423384339825349241

/-! ## A375398.P2273397102975181843

`filter[A385098(n+1), A359471(#)]`
-/

namespace A375398.P2273397102975181843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A375398.P2273397102975181843

/-! ## A375398.P4471005616932515335

`filter[A385098(n+1), A359550(#)]`
-/

namespace A375398.P4471005616932515335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A375398.P4471005616932515335

/-! ## A375398.P18335795184501217969

`record[A353271(n+1)*A353274(n+1)]`
-/

namespace A375398.P18335795184501217969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353271 (n + 1) * A353274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375398.P18335795184501217969

/-! ## A375398.P2740554501595633604

`record[gcd(A304481(n+1), A332461(n+1))]`
-/

namespace A375398.P2740554501595633604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A304481 (n + 1)) (A332461 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375398.P2740554501595633604

/-! ## A375398.P17381326570997323052

`∪[A005117(n+1), A247180(A355529(n+1))]`
-/

namespace A375398.P17381326570997323052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (A355529 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375398.P17381326570997323052

/-!
# A375399: Numbers k such that the minima of maximal anti-runs in the weakly increasing sequence of prime factors of k (with multiplicity) are not distinct.

The programs for A375399, there is no canonical definition to state claims against.
-/

/-! ## A375399.P11972512020937541766

`∪[A086133(n+1), A212164(n+1)]`
-/

namespace A375399.P11972512020937541766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375399.P11972512020937541766

/-! ## A375399.P18137646628842368411

`∪[A034719(n+1), A283050(n+1)]`
-/

namespace A375399.P18137646628842368411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375399.P18137646628842368411

/-! ## A375399.P11158584622124622823

`∪[A046099(n+1), A283050(n+1)]`
-/

namespace A375399.P11158584622124622823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375399.P11158584622124622823

/-! ## A375399.P17421923738910479254

`∪[A048108(n+1), A283050(n+1)]`
-/

namespace A375399.P17421923738910479254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375399.P17421923738910479254

/-! ## A375399.P3969405419285080314

`∪[A074451(n+1), A283050(n+1)]`
-/

namespace A375399.P3969405419285080314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375399.P3969405419285080314

/-! ## A375399.P4990971021245319350

`∪[A046099(n+1), A365869(n+1)]`
-/

namespace A375399.P4990971021245319350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375399.P4990971021245319350

/-! ## A375399.P11859095400730271467

`∪[A354561(n+1), A283050(n+1)]`
-/

namespace A375399.P11859095400730271467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375399.P11859095400730271467

