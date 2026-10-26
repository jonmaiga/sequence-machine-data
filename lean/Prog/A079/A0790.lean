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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A079000: a(n) is taken to be the smallest positive integer greater than a(n-1) which is consistent with the condition "n is a member of the sequence if and only if a(n) is odd".

The programs for A079000, the canonical program `A079000.P1314353409810898066` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079000 has offset 1).

The definition of A079000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079000.P9038381109362936272

`A079253(n)+1`
-/

namespace A079000.P9038381109362936272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079253 n + 1

end

end A079000.P9038381109362936272

namespace A079000

/-- `A079253(n)+1` -/
def P9038381109362936272.Spec : Prop :=
  ∀ n, P9038381109362936272.a n = A079000 (n + 1)

theorem P9038381109362936272.correct : P9038381109362936272.Spec := by
  intro n
  simp only [A079000, Nat.add_sub_cancel, A079000.P9038381109362936272.a, A079000.P1314353409810898066.a, A079253, A079253.P13462614389333212130.a, A079948, A079948.P13030321842741128819.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079000

/-! ## A079000.P1314353409810898066

`A079948(n)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A079000

/-- `A079948(n)+a(n-1)` -/
def P1314353409810898066.Spec : Prop :=
  ∀ n, P1314353409810898066.a n = A079000 (n + 1)

theorem P1314353409810898066.correct : P1314353409810898066.Spec := by
  intro n
  simp only [A079000, Nat.add_sub_cancel]

end A079000

/-! ## A079000.P14335862259396561819

`comp[A079251(n+1)-1]+1`
-/

namespace A079000.P14335862259396561819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079251 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A079000.P14335862259396561819

namespace A079000

/-- `comp[A079251(n+1)-1]+1` -/
def P14335862259396561819.Spec : Prop :=
  ∀ n, (P14335862259396561819.a n : ℤ) = A079000 (n + 1)

end A079000

/-! ## A079000.P15536907973573083248

`∑[A079948(n+1)]+1-A079948(n+1)`
-/

namespace A079000.P15536907973573083248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A079948 (n + 1))

end

end A079000.P15536907973573083248

namespace A079000

/-- `∑[A079948(n+1)]+1-A079948(n+1)` -/
def P15536907973573083248.Spec : Prop :=
  ∀ n, P15536907973573083248.a n = A079000 (n + 1)

end A079000

/-! ## A079000.P13131698654509702269

`A080639(n+2)-1`
-/

namespace A079000.P13131698654509702269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080639 (n + 2) - 1

end

end A079000.P13131698654509702269

namespace A079000

/-- `A080639(n+2)-1` -/
def P13131698654509702269.Spec : Prop :=
  ∀ n, P13131698654509702269.a n = A079000 (n + 1)

end A079000

/-! ## A079000.P12886852641306944455

`A023443(A080639(n+2))`
-/

namespace A079000.P12886852641306944455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A080639 (n + 2)).toNat

end

end A079000.P12886852641306944455

namespace A079000

/-- `A023443(A080639(n+2))` -/
def P12886852641306944455.Spec : Prop :=
  ∀ n, P12886852641306944455.a n = A079000 (n + 1)

end A079000

/-! ## A079000.P9958382446605321617

`A023444(A080639(n+2)+1)`
-/

namespace A079000.P9958382446605321617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A080639 (n + 2) + 1).toNat

end

end A079000.P9958382446605321617

namespace A079000

/-- `A023444(A080639(n+2)+1)` -/
def P9958382446605321617.Spec : Prop :=
  ∀ n, P9958382446605321617.a n = A079000 (n + 1)

end A079000

/-! ## A079000.P8035062285893680636

`A328399(A080587(2*n+1)+1)`
-/

namespace A079000.P8035062285893680636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A080587 (2 * n + 1) + 1).toNat

end

end A079000.P8035062285893680636

namespace A079000

/-- `A328399(A080587(2*n+1)+1)` -/
def P8035062285893680636.Spec : Prop :=
  ∀ n, P8035062285893680636.a n = A079000 (n + 1)

end A079000

/-! ## A079000.P15483572924153135226

`A260429(A080587(2*n+1)+1)`
-/

namespace A079000.P15483572924153135226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260429 (A080587 (2 * n + 1) + 1).toNat

end

end A079000.P15483572924153135226

namespace A079000

/-- `A260429(A080587(2*n+1)+1)` -/
def P15483572924153135226.Spec : Prop :=
  ∀ n, P15483572924153135226.a n = A079000 (n + 1)

end A079000

/-! ## A079000.P9991365977978737955

`A028242(A080587(2*n+1)+1)`
-/

namespace A079000.P9991365977978737955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A080587 (2 * n + 1) + 1).toNat

end

end A079000.P9991365977978737955

namespace A079000

/-- `A028242(A080587(2*n+1)+1)` -/
def P9991365977978737955.Spec : Prop :=
  ∀ n, P9991365977978737955.a n = A079000 (n + 1)

end A079000

/-! ## A079000.P9955276071403290475

`A025480(A080587(2*n+1)+3)`
-/

namespace A079000.P9955276071403290475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A080587 (2 * n + 1) + 3).toNat

end

end A079000.P9955276071403290475

namespace A079000

/-- `A025480(A080587(2*n+1)+3)` -/
def P9955276071403290475.Spec : Prop :=
  ∀ n, P9955276071403290475.a n = A079000 (n + 1)

end A079000

/-! ## A079000.P6199330504028849378

`A110657(2*A080587(2*n+1))`
-/

namespace A079000.P6199330504028849378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (2 * A080587 (2 * n + 1)).toNat

end

end A079000.P6199330504028849378

namespace A079000

/-- `A110657(2*A080587(2*n+1))` -/
def P6199330504028849378.Spec : Prop :=
  ∀ n, P6199330504028849378.a n = A079000 (n + 1)

end A079000

/-!
# A079002: Numbers n such that the Fibonacci residues F(k) mod n form the complete set (0,1,2,...,n-1).

The programs for A079002, there is no canonical definition to state claims against.
-/

/-! ## A079002.P12870856639548163392

`record[C(A066853(n+1), n)]`
-/

namespace A079002.P12870856639548163392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A066853 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079002.P12870856639548163392

/-! ## A079002.P18383517137944659568

`eq[0, A118965(n+1)]+1`
-/

namespace A079002.P18383517137944659568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118965 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A079002.P18383517137944659568

/-! ## A079002.P15467147528323687515

`eq[n, A066853(A028310(n))]`
-/

namespace A079002.P15467147528323687515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066853 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A079002.P15467147528323687515

/-! ## A079002.P15337598208084446689

`record[A066853(A066853(n+1))]`
-/

namespace A079002.P15337598208084446689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066853 (A066853 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079002.P15337598208084446689

/-! ## A079002.P1473554655794289393

`record[gcd(A118965(n+1), A262401(n+1))]`
-/

namespace A079002.P1473554655794289393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A118965 (n + 1)) (A262401 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079002.P1473554655794289393

/-! ## A079002.P8068093202532425069

`A066853(eq[n+1, A066853(n+1)]+1)`
-/

namespace A079002.P8068093202532425069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066853 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A079002.P8068093202532425069

/-!
# A079003: Least k >= 3 such that Fibonacci(k) == -1 (mod 3^n).

The programs for A079003, the canonical program `A079003.P3973055864373135510` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079003 has offset 1).

The definition of A079003 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079003.P3973055864373135510

`3*a(n-1)-4` with `a(0)=3, a(1)=6`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079003

/-- `3*a(n-1)-4` -/
def P3973055864373135510.Spec : Prop :=
  ∀ n, P3973055864373135510.a n = A079003 (n + 1)

theorem P3973055864373135510.correct : P3973055864373135510.Spec := by
  intro n
  simp only [A079003, Nat.add_sub_cancel]

end A079003

/-! ## A079003.P3986640487037747561

`∑[ogf((-3+6x+x^2)/(-1+3x))]`
-/

namespace A079003.P3986640487037747561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -6, -1] [1, -3] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079003.P3986640487037747561

namespace A079003

/-- `∑[ogf((-3+6x+x^2)/(-1+3x))]` -/
def P3986640487037747561.Spec : Prop :=
  ∀ n, P3986640487037747561.a n = A079003 (n + 1)

end A079003

/-! ## A079003.P4273347413045412159

`ogf((3-6x-x^2)/(1-4x+3x^2))`
-/

namespace A079003.P4273347413045412159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -6, -1] [1, -4, 3] n

end

end A079003.P4273347413045412159

namespace A079003

/-- `ogf((3-6x-x^2)/(1-4x+3x^2))` -/
def P4273347413045412159.Spec : Prop :=
  ∀ n, P4273347413045412159.a n = A079003 (n + 1)

end A079003

/-! ## A079003.P14325168252534918035

`floor(4*3^(n-1))+2`
-/

namespace A079003.P14325168252534918035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 2

end

end A079003.P14325168252534918035

namespace A079003

/-- `floor(4*3^(n-1))+2` -/
def P14325168252534918035.Spec : Prop :=
  ∀ n, P14325168252534918035.a n = A079003 (n + 1)

end A079003

/-! ## A079003.P642265641998747144

`or(2, floor(4*3^(n-1)))`
-/

namespace A079003.P642265641998747144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A079003.P642265641998747144

namespace A079003

/-- `or(2, floor(4*3^(n-1)))` -/
def P642265641998747144.Spec : Prop :=
  ∀ n, P642265641998747144.a n = A079003 (n + 1)

end A079003

/-! ## A079003.P7174501748799435557

`xor(2, floor(4*3^(n-1)))`
-/

namespace A079003.P7174501748799435557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A079003.P7174501748799435557

namespace A079003

/-- `xor(2, floor(4*3^(n-1)))` -/
def P7174501748799435557.Spec : Prop :=
  ∀ n, P7174501748799435557.a n = A079003 (n + 1)

end A079003

/-! ## A079003.P680786074681753703

`record[or(2, ceil(4*3^(n-2)))]`
-/

namespace A079003.P680786074681753703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ⌈4 * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079003.P680786074681753703

namespace A079003

/-- `record[or(2, ceil(4*3^(n-2)))]` -/
def P680786074681753703.Spec : Prop :=
  ∀ n, P680786074681753703.a n = A079003 (n + 1)

end A079003

/-! ## A079003.P6385028436196272455

`record[A074324(n)+2]`
-/

namespace A079003.P6385028436196272455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074324 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079003.P6385028436196272455

namespace A079003

/-- `record[A074324(n)+2]` -/
def P6385028436196272455.Spec : Prop :=
  ∀ n, P6385028436196272455.a n = A079003 (n + 1)

end A079003

/-! ## A079003.P11800567408688741319

`record[A326339(n)+2]`
-/

namespace A079003.P11800567408688741319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326339 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079003.P11800567408688741319

namespace A079003

/-- `record[A326339(n)+2]` -/
def P11800567408688741319.Spec : Prop :=
  ∀ n, P11800567408688741319.a n = A079003 (n + 1)

end A079003

/-! ## A079003.P5729032468372329171

`record[A166552(n+1)+2]`
-/

namespace A079003.P5729032468372329171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166552 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079003.P5729032468372329171

namespace A079003

/-- `record[A166552(n+1)+2]` -/
def P5729032468372329171.Spec : Prop :=
  ∀ n, P5729032468372329171.a n = A079003 (n + 1)

end A079003

/-! ## A079003.P9274705650232563573

`2*(Δ[A157532(n+1)^(n-1)]+1)`
-/

namespace A079003.P9274705650232563573
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157532 (n + 1) : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + 1)

end

end A079003.P9274705650232563573

namespace A079003

/-- `2*(Δ[A157532(n+1)^(n-1)]+1)` -/
def P9274705650232563573.Spec : Prop :=
  ∀ n, P9274705650232563573.a n = (A079003 (n + 1) : ℚ)

end A079003

/-! ## A079003.P7031524743499729291

`(A054977(n)+1)*A100702(n)`
-/

namespace A079003.P7031524743499729291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A054977 n + 1) * A100702 n

end

end A079003.P7031524743499729291

namespace A079003

/-- `(A054977(n)+1)*A100702(n)` -/
def P7031524743499729291.Spec : Prop :=
  ∀ n, P7031524743499729291.a n = A079003 (n + 1)

end A079003

/-! ## A079003.P7270778283293278910

`A100702(n)*A178815(n+1)`
-/

namespace A079003.P7270778283293278910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100702 n * A178815 (n + 1)

end

end A079003.P7270778283293278910

namespace A079003

/-- `A100702(n)*A178815(n+1)` -/
def P7270778283293278910.Spec : Prop :=
  ∀ n, P7270778283293278910.a n = A079003 (n + 1)

end A079003

/-! ## A079003.P8469460785316856850

`Δ[A094388(n)²]/Δ[A094388(n)]`
-/

namespace A079003.P8469460785316856850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

end

end A079003.P8469460785316856850

namespace A079003

/-- `Δ[A094388(n)²]/Δ[A094388(n)]` -/
def P8469460785316856850.Spec : Prop :=
  ∀ n, P8469460785316856850.a n = (A079003 (n + 1) : ℚ)

end A079003

/-!
# A079004: Least x>=3 such that F(x)==1 (mod 3^n) where F(x) denotes the x-th Fibonacci number (A000045).

The programs for A079004, the canonical program `A079004.P8797451518385814989` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079004 has offset 1).

The definition of A079004 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079004.P8797451518385814989

`3*a(n-1)+4` with `a(0)=7, a(1)=10, a(2)=10`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079004

/-- `3*a(n-1)+4` -/
def P8797451518385814989.Spec : Prop :=
  ∀ n, (P8797451518385814989.a n : ℤ) = A079004 (n + 1)

theorem P8797451518385814989.correct : P8797451518385814989.Spec := by
  intro n
  simp only [A079004, Nat.add_sub_cancel]

end A079004

/-! ## A079004.P15470097068123417603

`∑[3*a(n-1)]` with `a(0)=7, a(1)=3, a(2)=0, a(3)=24`
-/

namespace A079004.P15470097068123417603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 3, 0, 24] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079004.P15470097068123417603

namespace A079004

/-- `∑[3*a(n-1)]` -/
def P15470097068123417603.Spec : Prop :=
  ∀ n, (P15470097068123417603.a n : ℤ) = A079004 (n + 1)

end A079004

/-! ## A079004.P8800225168476217537

`7-3*(1-a(n-1))` with `a(0)=7, a(1)=10, a(2)=10`
-/

namespace A079004.P8800225168476217537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7, 10, 10] fun n a =>
  7 - 3 * (1 - a (n - 1))

end

end A079004.P8800225168476217537

namespace A079004

/-- `7-3*(1-a(n-1))` -/
def P8800225168476217537.Spec : Prop :=
  ∀ n, P8800225168476217537.a n = A079004 (n + 1)

end A079004

/-! ## A079004.P18191054246232820611

`a(n-1)+a(n-1)+a(n-1)+4` with `a(0)=7, a(1)=10, a(2)=10`
-/

namespace A079004.P18191054246232820611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7, 10, 10] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + 4))

end

end A079004.P18191054246232820611

namespace A079004

/-- `a(n-1)+a(n-1)+a(n-1)+4` -/
def P18191054246232820611.Spec : Prop :=
  ∀ n, (P18191054246232820611.a n : ℤ) = A079004 (n + 1)

theorem P18191054246232820611.correct : P18191054246232820611.Spec := by
  intro n
  simp only [A079004, Nat.add_sub_cancel, A079004.P18191054246232820611.a, A079004.P8797451518385814989.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A079004

/-! ## A079004.P6991213204191847759

`xor(6, A003946(char[1]+n))`
-/

namespace A079004.P6991213204191847759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (A003946 ((if ∃ j, f1 j = n then 1 else 0) + n))

end

end A079004.P6991213204191847759

namespace A079004

/-- `xor(6, A003946(char[1]+n))` -/
def P6991213204191847759.Spec : Prop :=
  ∀ n, P6991213204191847759.a n = A079004 (n + 1)

end A079004

/-!
# A079005: Exponential transform of unsigned Lah-triangle |A008297(n,k)|.

The programs for A079005, there is no canonical definition to state claims against.
-/

/-! ## A079005.P540629535966948445

`(row(n)+1)!/(col(n)+1)!*C(row(n), col(n))*A000110(col(n)+1)`
-/

namespace A079005.P540629535966948445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.triRow n + 1) : ℚ) / (Nat.factorial (SequenceMachineLib.triCol n + 1) : ℚ) * (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℚ) * (A000110 (SequenceMachineLib.triCol n + 1) : ℚ)

end

end A079005.P540629535966948445

/-! ## A079005.P4918184094848184845

`A011972(A112367(n))*A105278(n+1)`
-/

namespace A079005.P4918184094848184845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (A112367 n).toNat * A105278 (n + 1)

end

end A079005.P4918184094848184845

/-! ## A079005.P8919903962192853380

`-(A066667(n)*A292935(A002260(n+1)))`
-/

namespace A079005.P8919903962192853380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A066667 n * A292935 (A002260 (n + 1)).toNat)

end

end A079005.P8919903962192853380

/-! ## A079005.P8142824309671330117

`A000110(A002260(n+1))*A105278(n+1)`
-/

namespace A079005.P8142824309671330117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A002260 (n + 1)).toNat * A105278 (n + 1)

end

end A079005.P8142824309671330117

/-! ## A079005.P5601599510612817765

`abs(A000110(A002260(n+1))*A008297(n+1))`
-/

namespace A079005.P5601599510612817765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000110 (A002260 (n + 1)).toNat * A008297 (n + 1)|

end

end A079005.P5601599510612817765

/-! ## A079005.P4191831959485239374

`abs(A066667(n))*A000110(A349520(2*n+1))`
-/

namespace A079005.P4191831959485239374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A066667 n| * A000110 (A349520 (2 * n + 1)).toNat

end

end A079005.P4191831959485239374

/-!
# A079006: Expansion of q^(-1/4) * (eta(q) * eta(q^4)^2 / eta(q^2)^3)^2 in powers of q.

The programs for A079006, there is no canonical definition to state claims against.
-/

/-! ## A079006.P7714690572191141125

`(-1)^n*A001936(n)`
-/

namespace A079006.P7714690572191141125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A001936 n

end

end A079006.P7714690572191141125

/-! ## A079006.P15657872582924882910

`A127392(n)/2`
-/

namespace A079006.P15657872582924882910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127392 n : ℚ) / 2

end

end A079006.P15657872582924882910

/-! ## A079006.P14280121073275924226

`A281731(2*n)`
-/

namespace A079006.P14280121073275924226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281731 (2 * n)

end

end A079006.P14280121073275924226

/-! ## A079006.P13952214213046965829

`A029841(2*n+1)/4`
-/

namespace A079006.P13952214213046965829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029841 (2 * n + 1) : ℚ) / 4

end

end A079006.P13952214213046965829

/-! ## A079006.P13606630043137554525

`(A230534(2*n)+A092869(2*n))/2`
-/

namespace A079006.P13606630043137554525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230534 (2 * n) + A092869 (2 * n) : ℚ) / 2

end

end A079006.P13606630043137554525

/-! ## A079006.P4413087363122699776

`(A230534(2*n)+A111374(2*n+1))/2`
-/

namespace A079006.P4413087363122699776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230534 (2 * n) + A111374 (2 * n + 1) : ℚ) / 2

end

end A079006.P4413087363122699776

/-! ## A079006.P16666395553688242865

`(A245434(2*n+1)-A111374(2*n+1))/2`
-/

namespace A079006.P16666395553688242865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245434 (2 * n + 1) - A111374 (2 * n + 1) : ℚ) / 2

end

end A079006.P16666395553688242865

/-! ## A079006.P13258938420265506747

`A214639(4*n+1)`
-/

namespace A079006.P13258938420265506747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214639 (4 * n + 1)

end

end A079006.P13258938420265506747

/-! ## A079006.P9988345435314902629

`A208274(4*n+1)/2`
-/

namespace A079006.P9988345435314902629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208274 (4 * n + 1) : ℚ) / 2

end

end A079006.P9988345435314902629

/-! ## A079006.P10665755655432223883

`A208933(4*n+1)-A215348(4*n+1)`
-/

namespace A079006.P10665755655432223883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208933 (4 * n + 1) - A215348 (4 * n + 1)

end

end A079006.P10665755655432223883

/-! ## A079006.P15193239348661710375

`A001936(n)*A033999(n)`
-/

namespace A079006.P15193239348661710375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001936 n * A033999 n

end

end A079006.P15193239348661710375

/-! ## A079006.P16922540877765604888

`A001934(n)*A001936(n)/A004403(n)`
-/

namespace A079006.P16922540877765604888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001934 n * A001936 n : ℚ) / (A004403 n : ℚ)

end

end A079006.P16922540877765604888

/-! ## A079006.P14301070074024785040

`A001936(n)*A001938(n)/A093160(n)`
-/

namespace A079006.P14301070074024785040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001936 n * A001938 n : ℚ) / (A093160 n : ℚ)

end

end A079006.P14301070074024785040

/-! ## A079006.P1535939433877761867

`A001936(n)*A029839(n)/A082304(n)`
-/

namespace A079006.P1535939433877761867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001936 n * A029839 n : ℚ) / (A082304 n : ℚ)

end

end A079006.P1535939433877761867

/-! ## A079006.P5640094625380240499

`A001936(n)*A007096(n)/A189925(n)`
-/

namespace A079006.P5640094625380240499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001936 n * A007096 n : ℚ) / (A189925 n : ℚ)

end

end A079006.P5640094625380240499

/-!
# A079007: a(n) = smallest prime p_k such that the n successive differences between the primes p_k through p_(k+n) are all distinct.

The programs for A079007, there is no canonical definition to state claims against.
-/

/-! ## A079007.P16440922631922099327

`A079889(A054725(Δ[A131577(n)]))`
-/

namespace A079007.P16440922631922099327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079889 (A054725 (f1 (n + 1) - f1 n).toNat).toNat

end

end A079007.P16440922631922099327

/-! ## A079007.P5618394942195351568

`A001221(a(n-1))*A079889(A233583(n+1)-1)` with `a(0)=2`
-/

namespace A079007.P5618394942195351568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001221 (a (n - 1)).toNat * A079889 (A233583 (n + 1) - 1).toNat

end

end A079007.P5618394942195351568

/-!
# A079009: Least k such that the 2^n successive values of phi(k+j) (j=0..2^n-1) are all distinct.

The programs for A079009, there is no canonical definition to state claims against.
-/

/-! ## A079009.P764716744102148909

`A079008(2^n)`
-/

namespace A079009.P764716744102148909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079008 (2 ^ n)

end

end A079009.P764716744102148909

/-! ## A079009.P5958803265393831566

`record[A079008(A001316(n))]`
-/

namespace A079009.P5958803265393831566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079008 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079009.P5958803265393831566

/-! ## A079009.P998978096308399523

`A079008(A011782(n+1))%A341854(n)`
-/

namespace A079009.P998978096308399523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079008 (A011782 (n + 1)).toNat) (A341854 n)

end

end A079009.P998978096308399523

/-! ## A079009.P5969930653821005164

`A335453(n+1)+A079008(A011782(n+1))`
-/

namespace A079009.P5969930653821005164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335453 (n + 1) + A079008 (A011782 (n + 1)).toNat

end

end A079009.P5969930653821005164

/-!
# A079015: Primes introducing consecutive prime 6-tuple of primes or 5-tuple corresponding consecutive p-difference pattern as follows: {d, 2*d, 4*d, 8*d, 16*d}.

The programs for A079015, there is no canonical definition to state claims against.
-/

/-! ## A079015.P4684415260727643936

`A372085(n+1)+A000007(A032308(n))`
-/

namespace A079015.P4684415260727643936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372085 (n + 1) + A000007 (A032308 n).toNat

end

end A079015.P4684415260727643936

/-! ## A079015.P5238678006299916871

`A372085(n+1)+A000007(A318915(n))`
-/

namespace A079015.P5238678006299916871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372085 (n + 1) + A000007 (A318915 n).toNat

end

end A079015.P5238678006299916871

/-! ## A079015.P11443721367722587352

`or(A221150(A027383(n)), A372085(n+1))`
-/

namespace A079015.P11443721367722587352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A221150 (A027383 n).toNat) (A372085 (n + 1))

end

end A079015.P11443721367722587352

/-! ## A079015.P3931792781038132153

`A132199(A287055(n+1))*A372085(n+1)`
-/

namespace A079015.P3931792781038132153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132199 (A287055 (n + 1)).toNat * A372085 (n + 1)

end

end A079015.P3931792781038132153

/-! ## A079015.P1673848955667424631

`A372085(n+1)^A304438(A056899(n+1))`
-/

namespace A079015.P1673848955667424631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372085 (n + 1) : ℚ) ^ (A304438 (A056899 (n + 1)).toNat : ℤ)

end

end A079015.P1673848955667424631

/-!
# A079017: Suppose p and q = p+14 are primes. Define the difference pattern of (p,q) to be the successive differences of the primes in the range p to q. There are 15 possible difference patterns, namely [14], [2,12], [6,8], [8,6], [12,2], [2,4,8], [2,6,6], [2,10,2], [6,2,6], [6,6,2], [8,4,2], [2,4,6,2], [2,6,4,2], [2,2,4,2,4], [2,4,2,4,2]. Sequence gives smallest value of p for each difference pattern, sorted by magnitude.

The programs for A079017, there is no canonical definition to state claims against.
-/

/-! ## A079017.P7986174426934361740

`A153417(A032878(n+1))%A119034(3*(n+1))`
-/

namespace A079017.P7986174426934361740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153417 (A032878 (n + 1)).toNat) (A119034 (3 * (n + 1)))

end

end A079017.P7986174426934361740

/-! ## A079017.P16806415915340189460

`p?[A244953(n)*A280748(n)]`
-/

namespace A079017.P16806415915340189460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244953 n * A280748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079017.P16806415915340189460

/-! ## A079017.P16915628631229980291

`p?[A209837(A184240(n+1)²+n)]`
-/

namespace A079017.P16915628631229980291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209837 (A184240 (n + 1) ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079017.P16915628631229980291

/-! ## A079017.P9256778150411966890

`A153417(∑[A285012(n+1)^A008302(2*n+3)])`
-/

namespace A079017.P9256778150411966890
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285012 (n + 1) : ℚ) ^ (A008302 (2 * n + 3) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153417 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A079017.P9256778150411966890

/-!
# A079018: Suppose p and q = p+16 are primes. Define the difference pattern of (p,q) to be the successive differences of the primes in the range p to q. There are 17 possible difference patterns, namely [16], [4,12], [6,10], [10,6], [12,4], [4,2,10], [4,6,6], [4,8,4], [6,4,6], [6,6,4], [10,2,4], [4,2,4,6], [4,2,6,4], [4,6,2,4], [6,4,2,4], [4,2,4,2,4], [2,2,4,2,4,2]. Sequence gives smallest value of p for each difference pattern, sorted by magnitude.

The programs for A079018, there is no canonical definition to state claims against.
-/

/-! ## A079018.P11032092845360033830

`A049488(record[A232479(n+1)])`
-/

namespace A079018.P11032092845360033830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049488 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A079018.P11032092845360033830

/-! ## A079018.P6403005008365602584

`∩[A031157(n+1), A363287(n+1)]`
-/

namespace A079018.P6403005008365602584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079018.P6403005008365602584

/-! ## A079018.P4576335286955099943

`∩[A049488(n+1), A363287(n+1)]`
-/

namespace A079018.P4576335286955099943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079018.P4576335286955099943

/-! ## A079018.P15517010774317975122

`∩[A031157(n+1), A332110(n+1)-1]`
-/

namespace A079018.P15517010774317975122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332110 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079018.P15517010774317975122

/-!
# A079019: Suppose p and q = p+18 are primes. Define the difference pattern of (p,q) to be the successive differences of the primes in the range p to q. There are 49 possible difference patterns, shown in the Comments line. Sequence gives smallest value of p for each difference pattern, sorted by magnitude.

The programs for A079019, there is no canonical definition to state claims against.
-/

/-! ## A079019.P16362382213407350117

`A153418(∑[A144379(A264692(n+1))])`
-/

namespace A079019.P16362382213407350117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144379 (A264692 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153418 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A079019.P16362382213407350117

/-! ## A079019.P17486264541047941654

`A153418(A328335(n+1)%A280447(n+1))`
-/

namespace A079019.P17486264541047941654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153418 (Int.tmod (A328335 (n + 1)) (A280447 (n + 1))).toNat

end

end A079019.P17486264541047941654

/-! ## A079019.P9547700523551348881

`A153418(A122132(n+1)%A303480(2*(n+1)))`
-/

namespace A079019.P9547700523551348881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153418 (Int.tmod (A122132 (n + 1)) (A303480 (2 * (n + 1)))).toNat

end

end A079019.P9547700523551348881

/-! ## A079019.P3339192699069509640

`∩[A153418(n+1), A284055(n+1)]`
-/

namespace A079019.P3339192699069509640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153418 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079019.P3339192699069509640

/-!
# A079020: Suppose p and q = p+20 are primes. Define the difference pattern of (p,q) to be the successive differences of the primes in the range p to q. There are 56 possible difference patterns, shown in the Comments line. Sequence gives smallest value of p for each difference pattern, sorted by magnitude.

The programs for A079020, there is no canonical definition to state claims against.
-/

/-! ## A079020.P477427393752871420

`record[A153419(n+1)*A267115(A184940(n+5)+1)]`
-/

namespace A079020.P477427393752871420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153419 (n + 1) * A267115 (A184940 (n + 5) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079020.P477427393752871420

/-! ## A079020.P8933058311824833399

`∩[A153419(n+1), A279367(n+1)]`
-/

namespace A079020.P8933058311824833399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279367 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A079020.P8933058311824833399

/-! ## A079020.P5160999378675266550

`record[A153419(n+1)/A184340(2*n+3)]`
-/

namespace A079020.P5160999378675266550
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153419 (n + 1) : ℚ) / (A184340 (2 * n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079020.P5160999378675266550

/-! ## A079020.P13874554011440956291

`record[p?[A352442(n+1)-20]]`
-/

namespace A079020.P13874554011440956291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352442 (n + 1) - 20

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079020.P13874554011440956291

/-!
# A079021: Suppose p and q = p+22 are primes. Define the difference pattern of (p,q) to be the successive differences of the primes in the range p to q. There are 51 possible difference patterns, shown in the Comments line. Sequence gives smallest value of p for each difference pattern, sorted by magnitude.

The programs for A079021, there is no canonical definition to state claims against.
-/

/-! ## A079021.P6026337585445517203

`A242476(lt[A242472(n+1), A242491(3*n+2)])`
-/

namespace A079021.P6026337585445517203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242491 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242476 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A079021.P6026337585445517203

/-! ## A079021.P8876395987408984782

`A242476(lt[A242472(n+1), A242455(3*n+1)])`
-/

namespace A079021.P8876395987408984782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242455 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242476 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A079021.P8876395987408984782

/-!
# A079025: Triangular array read by rows: column sums of frequency distributions associated with number of divisors of least prime signatures.

The programs for A079025, there is no canonical definition to state claims against.
-/

/-! ## A079025.P9886161551867142857

`A321745(A146985(n))`
-/

namespace A079025.P9886161551867142857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321745 (A146985 n).toNat

end

end A079025.P9886161551867142857

/-! ## A079025.P9948080034193792913

`A127321(A184694(n+1))`
-/

namespace A079025.P9948080034193792913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A184694 (n + 1)).toNat

end

end A079025.P9948080034193792913

/-! ## A079025.P984813528066625061

`A184956(A282316(n+1))`
-/

namespace A079025.P984813528066625061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184956 (A282316 (n + 1)).toNat

end

end A079025.P984813528066625061

/-! ## A079025.P16963886231060749206

`A319951(A252828(n+1))`
-/

namespace A079025.P16963886231060749206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A252828 (n + 1)).toNat

end

end A079025.P16963886231060749206

/-! ## A079025.P13258470303416294236

`A389182(A198285(n+1))`
-/

namespace A079025.P13258470303416294236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389182 (A198285 (n + 1)).toNat

end

end A079025.P13258470303416294236

/-!
# A079026: Numbers that can be represented as 2*p + 3*q, where p and q are prime.

The programs for A079026, there is no canonical definition to state claims against.
-/

/-! ## A079026.P15530719865447648820

`eq[char[A219955(n+1)], A151933(n)]`
-/

namespace A079026.P15530719865447648820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219955 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A079026.P15530719865447648820

/-! ## A079026.P11717800035990976674

`eq[char[A219955(n+1)], A151622(n)]`
-/

namespace A079026.P11717800035990976674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219955 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A079026.P11717800035990976674

/-! ## A079026.P11914354950505541745

`lt[A339242(A339218(n)), A352493(n)]`
-/

namespace A079026.P11914354950505541745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339242 (A339218 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352493 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079026.P11914354950505541745

/-!
# A079027: a(n) = det(M(n)) where M(n) is the n X n matrix defined by m(i,i)=6, m(i,j)=i/j.

The programs for A079027, the canonical program `A079027.P3373489611850967774` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079027 has offset 1).

The definition of A079027 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079027.P10731775863492501428

`(n+6)*5^n`
-/

namespace A079027.P10731775863492501428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 6) * 5 ^ n

end

end A079027.P10731775863492501428

namespace A079027

/-- `(n+6)*5^n` -/
def P10731775863492501428.Spec : Prop :=
  ∀ n, (P10731775863492501428.a n : ℤ) = A079027 (n + 1)

theorem P10731775863492501428.correct : P10731775863492501428.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A079027, Nat.add_sub_cancel, A079027.P10731775863492501428.a, A079027.P3373489611850967774.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A079027, Nat.add_sub_cancel, A079027.P10731775863492501428.a, A079027.P3373489611850967774.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A079027

/-! ## A079027.P3373489611850967774

`10*a(n-1)-25*a(n-2)` with `a(0)=6, a(1)=35`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079027

/-- `10*a(n-1)-25*a(n-2)` -/
def P3373489611850967774.Spec : Prop :=
  ∀ n, P3373489611850967774.a n = A079027 (n + 1)

theorem P3373489611850967774.correct : P3373489611850967774.Spec := by
  intro n
  simp only [A079027, Nat.add_sub_cancel]

end A079027

/-! ## A079027.P15553138361928937576

`ogf((6-25x)/(1-10x+25x^2))`
-/

namespace A079027.P15553138361928937576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -25] [1, -10, 25] n

end

end A079027.P15553138361928937576

namespace A079027

/-- `ogf((6-25x)/(1-10x+25x^2))` -/
def P15553138361928937576.Spec : Prop :=
  ∀ n, P15553138361928937576.a n = A079027 (n + 1)

end A079027

/-! ## A079027.P14974874115352323262

`A081105(n+1)`
-/

namespace A079027.P14974874115352323262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081105 (n + 1)

end

end A079027.P14974874115352323262

namespace A079027

/-- `A081105(n+1)` -/
def P14974874115352323262.Spec : Prop :=
  ∀ n, P14974874115352323262.a n = A079027 (n + 1)

end A079027

/-! ## A079027.P9903968701341635510

`record[A081105(abs(1-n))]`
-/

namespace A079027.P9903968701341635510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081105 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079027.P9903968701341635510

namespace A079027

/-- `record[A081105(abs(1-n))]` -/
def P9903968701341635510.Spec : Prop :=
  ∀ n, P9903968701341635510.a n = A079027 (n + 1)

end A079027

/-! ## A079027.P2983330670647485254

`abs((n+6)*Δ[A003463(n)])`
-/

namespace A079027.P2983330670647485254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 6 : ℤ) * (f1 (n + 1) - f1 n)|

end

end A079027.P2983330670647485254

namespace A079027

/-- `abs((n+6)*Δ[A003463(n)])` -/
def P2983330670647485254.Spec : Prop :=
  ∀ n, P2983330670647485254.a n = A079027 (n + 1)

end A079027

/-! ## A079027.P161616708623064367

`A000351(n)+5*a(n-1)` with `a(0)=6`
-/

namespace A079027.P161616708623064367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A000351 n + 5 * a (n - 1)

end

end A079027.P161616708623064367

namespace A079027

/-- `A000351(n)+5*a(n-1)` -/
def P161616708623064367.Spec : Prop :=
  ∀ n, P161616708623064367.a n = A079027 (n + 1)

end A079027

/-! ## A079027.P790709171682637690

`A024049(n)+5*a(n-1)+1` with `a(0)=6`
-/

namespace A079027.P790709171682637690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A024049 n + (5 * a (n - 1) + 1)

end

end A079027.P790709171682637690

namespace A079027

/-- `A024049(n)+5*a(n-1)+1` -/
def P790709171682637690.Spec : Prop :=
  ∀ n, P790709171682637690.a n = A079027 (n + 1)

end A079027

/-! ## A079027.P16656803567578608591

`record[A017920(n)*A027656(n+10)]`
-/

namespace A079027.P16656803567578608591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017920 n * A027656 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079027.P16656803567578608591

namespace A079027

/-- `record[A017920(n)*A027656(n+10)]` -/
def P16656803567578608591.Spec : Prop :=
  ∀ n, P16656803567578608591.a n = A079027 (n + 1)

end A079027

/-! ## A079027.P6311099247973967664

`Δ[A057651(n)]+n*A000351(n)`
-/

namespace A079027.P6311099247973967664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057651 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ) * A000351 n

end

end A079027.P6311099247973967664

namespace A079027

/-- `Δ[A057651(n)]+n*A000351(n)` -/
def P6311099247973967664.Spec : Prop :=
  ∀ n, P6311099247973967664.a n = A079027 (n + 1)

end A079027

/-! ## A079027.P14669321922322162798

`A053464(n+1)+A000351(n+1)`
-/

namespace A079027.P14669321922322162798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053464 (n + 1) + A000351 (n + 1)

end

end A079027.P14669321922322162798

namespace A079027

/-- `A053464(n+1)+A000351(n+1)` -/
def P14669321922322162798.Spec : Prop :=
  ∀ n, P14669321922322162798.a n = A079027 (n + 1)

end A079027

/-! ## A079027.P11209187581159907356

`2*A082308(n+1)-A006234(n+4)`
-/

namespace A079027.P11209187581159907356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082308 (n + 1) - A006234 (n + 4)

end

end A079027.P11209187581159907356

namespace A079027

/-- `2*A082308(n+1)-A006234(n+4)` -/
def P11209187581159907356.Spec : Prop :=
  ∀ n, P11209187581159907356.a n = A079027 (n + 1)

end A079027

/-! ## A079027.P16318102778419601832

`A000351(n+1)+(n+1)*A000351(n)`
-/

namespace A079027.P16318102778419601832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (n + 1) + (n + 1 : ℤ) * A000351 n

end

end A079027.P16318102778419601832

namespace A079027

/-- `A000351(n+1)+(n+1)*A000351(n)` -/
def P16318102778419601832.Spec : Prop :=
  ∀ n, P16318102778419601832.a n = A079027 (n + 1)

theorem P16318102778419601832.correct : P16318102778419601832.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A079027, Nat.add_sub_cancel, A079027.P16318102778419601832.a, A079027.P3373489611850967774.a, A000351, A000351.P3157381177678935815.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A079027, Nat.add_sub_cancel, A079027.P16318102778419601832.a, A079027.P3373489611850967774.a, A000351, A000351.P3157381177678935815.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A079027

/-! ## A079027.P6449601402721918414

`A056451(2*(n+1))+(n+1)*A056451(2*n)`
-/

namespace A079027.P6449601402721918414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056451 (2 * (n + 1)) + (n + 1 : ℤ) * A056451 (2 * n)

end

end A079027.P6449601402721918414

namespace A079027

/-- `A056451(2*(n+1))+(n+1)*A056451(2*n)` -/
def P6449601402721918414.Spec : Prop :=
  ∀ n, P6449601402721918414.a n = A079027 (n + 1)

end A079027

/-! ## A079027.P12336375621510592248

`A000351(n+1)+A036291(n)+A000351(n)`
-/

namespace A079027.P12336375621510592248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (n + 1) + (A036291 n + A000351 n)

end

end A079027.P12336375621510592248

namespace A079027

/-- `A000351(n+1)+A036291(n)+A000351(n)` -/
def P12336375621510592248.Spec : Prop :=
  ∀ n, P12336375621510592248.a n = A079027 (n + 1)

theorem P12336375621510592248.correct : P12336375621510592248.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A079027, Nat.add_sub_cancel, A079027.P12336375621510592248.a, A079027.P3373489611850967774.a, A000351, A000351.P3157381177678935815.a, A036291, A036291.P15305288486312192511.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A079027, Nat.add_sub_cancel, A079027.P12336375621510592248.a, A079027.P3373489611850967774.a, A000351, A000351.P3157381177678935815.a, A036291, A036291.P15305288486312192511.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A079027

/-!
# A079028: a(0) = 1, a(n) = (n + 4)*4^(n-1) for n >= 1.

The programs for A079028, the canonical program `A079028.P9531822176195216177` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079028 has offset 0).

The definition of A079028 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+4)*4^(n-1)` (program `A079028.P12852838910797698276`, by `A079028.P12852838910797698276.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A079028.P12852838910797698276

`(n+4)*4^(n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A079028.P12852838910797698276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℚ) * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A079028.P12852838910797698276

namespace A079028

/-- `(n+4)*4^(n-1)` -/
def P12852838910797698276.Spec : Prop :=
  ∀ n, P12852838910797698276.a n = (A079028 n : ℚ)

theorem P12852838910797698276.correct : P12852838910797698276.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A079028, Nat.add_sub_cancel, A079028.P12852838910797698276.a, A079028.P9531822176195216177.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A079028, Nat.add_sub_cancel, A079028.P12852838910797698276.a, A079028.P9531822176195216177.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A079028

/-! ## A079028.P9531822176195216177

`8*a(n-1)-16*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079028

/-- `8*a(n-1)-16*a(n-2)` -/
def P9531822176195216177.Spec : Prop :=
  ∀ n, P9531822176195216177.a n = A079028 n

theorem P9531822176195216177.correct : P9531822176195216177.Spec := by
  intro n
  simp only [A079028]

end A079028

/-! ## A079028.P12932535334923528561

`ogf((1-3x)/(1-8x+16x^2))`
-/

namespace A079028.P12932535334923528561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -8, 16] n

end

end A079028.P12932535334923528561

namespace A079028

/-- `ogf((1-3x)/(1-8x+16x^2))` -/
def P12932535334923528561.Spec : Prop :=
  ∀ n, P12932535334923528561.a n = A079028 n

end A079028

/-! ## A079028.P17905401563974913989

`record[(n/8+1)*(-2)^n]`
-/

namespace A079028.P17905401563974913989
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 8 + 1) * ((-2) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079028.P17905401563974913989

namespace A079028

/-- `record[(n/8+1)*(-2)^n]` -/
def P17905401563974913989.Spec : Prop :=
  ∀ n, P17905401563974913989.a n = (A079028 n : ℚ)

end A079028

/-! ## A079028.P13142971205611472182

`A111297(2*n)`
-/

namespace A079028.P13142971205611472182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111297 (2 * n)

end

end A079028.P13142971205611472182

namespace A079028

/-- `A111297(2*n)` -/
def P13142971205611472182.Spec : Prop :=
  ∀ n, P13142971205611472182.a n = A079028 n

end A079028

/-! ## A079028.P2214668870963271773

`A002697(n)+4^n`
-/

namespace A079028.P2214668870963271773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n + (4 ^ n : ℤ)

end

end A079028.P2214668870963271773

namespace A079028

/-- `A002697(n)+4^n` -/
def P2214668870963271773.Spec : Prop :=
  ∀ n, P2214668870963271773.a n = A079028 n

end A079028

/-! ## A079028.P8573237721684596672

`A011782(n)²+4*a(n-1)` with `a(0)=1`
-/

namespace A079028.P8573237721684596672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A011782 n ^ 2 + 4 * a (n - 1)

end

end A079028.P8573237721684596672

namespace A079028

/-- `A011782(n)²+4*a(n-1)` -/
def P8573237721684596672.Spec : Prop :=
  ∀ n, P8573237721684596672.a n = A079028 n

end A079028

/-! ## A079028.P8305878406659845662

`A087449(n)+A002450(n)`
-/

namespace A079028.P8305878406659845662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087449 n + A002450 n

end

end A079028.P8305878406659845662

namespace A079028

/-- `A087449(n)+A002450(n)` -/
def P8305878406659845662.Spec : Prop :=
  ∀ n, P8305878406659845662.a n = A079028 n

end A079028

/-! ## A079028.P14675385213778815907

`A241478(n)+A068551(n)`
-/

namespace A079028.P14675385213778815907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241478 n + A068551 n

end

end A079028.P14675385213778815907

namespace A079028

/-- `A241478(n)+A068551(n)` -/
def P14675385213778815907.Spec : Prop :=
  ∀ n, P14675385213778815907.a n = A079028 n

end A079028

/-! ## A079028.P2952756541255321770

`A241524(n)-A172060(n)`
-/

namespace A079028.P2952756541255321770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241524 n - A172060 n

end

end A079028.P2952756541255321770

namespace A079028

/-- `A241524(n)-A172060(n)` -/
def P2952756541255321770.Spec : Prop :=
  ∀ n, P2952756541255321770.a n = A079028 n

end A079028

/-! ## A079028.P16576725450636711060

`A084221(2*n)+A002697(n)`
-/

namespace A079028.P16576725450636711060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084221 (2 * n) + A002697 n

end

end A079028.P16576725450636711060

namespace A079028

/-- `A084221(2*n)+A002697(n)` -/
def P16576725450636711060.Spec : Prop :=
  ∀ n, P16576725450636711060.a n = A079028 n

end A079028

/-! ## A079028.P1407400725730619094

`A087449(n)+A001045(2*n)`
-/

namespace A079028.P1407400725730619094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087449 n + A001045 (2 * n)

end

end A079028.P1407400725730619094

namespace A079028

/-- `A087449(n)+A001045(2*n)` -/
def P1407400725730619094.Spec : Prop :=
  ∀ n, P1407400725730619094.a n = A079028 n

end A079028

/-! ## A079028.P4959026797611567621

`A011782(Δ[n²])+A002697(n)`
-/

namespace A079028.P4959026797611567621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A002697 n

end

end A079028.P4959026797611567621

namespace A079028

/-- `A011782(Δ[n²])+A002697(n)` -/
def P4959026797611567621.Spec : Prop :=
  ∀ n, P4959026797611567621.a n = A079028 n

end A079028

/-! ## A079028.P1642273151739880070

`A131577(n+1)²+A002697(n)`
-/

namespace A079028.P1642273151739880070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (n + 1) ^ 2 + A002697 n

end

end A079028.P1642273151739880070

namespace A079028

/-- `A131577(n+1)²+A002697(n)` -/
def P1642273151739880070.Spec : Prop :=
  ∀ n, P1642273151739880070.a n = A079028 n

end A079028

/-! ## A079028.P9753943334079300744

`A049610(2*n)+A000079(n)²`
-/

namespace A079028.P9753943334079300744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (2 * n) + A000079 n ^ 2

end

end A079028.P9753943334079300744

namespace A079028

/-- `A049610(2*n)+A000079(n)²` -/
def P9753943334079300744.Spec : Prop :=
  ∀ n, P9753943334079300744.a n = A079028 n

end A079028

/-! ## A079028.P6962628395855293143

`A000079(n)²-A168150(2*n)`
-/

namespace A079028.P6962628395855293143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 - A168150 (2 * n)

end

end A079028.P6962628395855293143

namespace A079028

/-- `A000079(n)²-A168150(2*n)` -/
def P6962628395855293143.Spec : Prop :=
  ∀ n, P6962628395855293143.a n = A079028 n

end A079028

/-! ## A079028.P5069915157927202866

`A000302(n)+n*A011782(n)²`
-/

namespace A079028.P5069915157927202866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n + (n : ℤ) * A011782 n ^ 2

end

end A079028.P5069915157927202866

namespace A079028

/-- `A000302(n)+n*A011782(n)²` -/
def P5069915157927202866.Spec : Prop :=
  ∀ n, P5069915157927202866.a n = A079028 n

end A079028

/-! ## A079028.P5701774726970328636

`A000302(n)+n*A131577(n)²`
-/

namespace A079028.P5701774726970328636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n + (n : ℤ) * A131577 n ^ 2

end

end A079028.P5701774726970328636

namespace A079028

/-- `A000302(n)+n*A131577(n)²` -/
def P5701774726970328636.Spec : Prop :=
  ∀ n, P5701774726970328636.a n = A079028 n

end A079028

/-! ## A079028.P10167206082828388899

`A131577(2*n+1)+A002697(n)`
-/

namespace A079028.P10167206082828388899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (2 * n + 1) + A002697 n

end

end A079028.P10167206082828388899

namespace A079028

/-- `A131577(2*n+1)+A002697(n)` -/
def P10167206082828388899.Spec : Prop :=
  ∀ n, P10167206082828388899.a n = A079028 n

end A079028

/-! ## A079028.P2736900967791482125

`A049610(2*n)+A000079(2*n)`
-/

namespace A079028.P2736900967791482125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (2 * n) + A000079 (2 * n)

end

end A079028.P2736900967791482125

namespace A079028

/-- `A049610(2*n)+A000079(2*n)` -/
def P2736900967791482125.Spec : Prop :=
  ∀ n, P2736900967791482125.a n = A079028 n

end A079028

/-!
# A079029: Least k such that the class number of quadratic order of discriminant D=-4k equals p, where p runs through the primes.

The programs for A079029, there is no canonical definition to state claims against.
-/

/-! ## A079029.P3425648615461611124

`A079030(p?[comp[n²]])`
-/

namespace A079029.P3425648615461611124
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079030 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A079029.P3425648615461611124

/-! ## A079029.P18443370858010147150

`A079030(A000040(n+1))`
-/

namespace A079029.P18443370858010147150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079030 (A000040 (n + 1)).toNat

end

end A079029.P18443370858010147150

/-! ## A079029.P9094285578171862235

`A079030(A216883(n+1))`
-/

namespace A079029.P9094285578171862235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079030 (A216883 (n + 1)).toNat

end

end A079029.P9094285578171862235

/-! ## A079029.P4087624711910357526

`A079030(A216884(n+1))`
-/

namespace A079029.P4087624711910357526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079030 (A216884 (n + 1)).toNat

end

end A079029.P4087624711910357526

/-! ## A079029.P14162430832892667434

`A079030(A216885(n+1))`
-/

namespace A079029.P14162430832892667434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079030 (A216885 (n + 1)).toNat

end

end A079029.P14162430832892667434

/-! ## A079029.P8049372147818965835

`A079030(A385492(n+1))`
-/

namespace A079029.P8049372147818965835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079030 (A385492 (n + 1)).toNat

end

end A079029.P8049372147818965835

/-! ## A079029.P425911283135174463

`A079030(A008578(n+2))`
-/

namespace A079029.P425911283135174463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079030 (A008578 (n + 2)).toNat

end

end A079029.P425911283135174463

/-! ## A079029.P17196683856522156940

`A079030(A015919(n+2))`
-/

namespace A079029.P17196683856522156940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079030 (A015919 (n + 2)).toNat

end

end A079029.P17196683856522156940

/-! ## A079029.P11326800256988450853

`A079030(A064555(n+2))`
-/

namespace A079029.P11326800256988450853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079030 (A064555 (n + 2)).toNat

end

end A079029.P11326800256988450853

/-!
# A079031: Least k > n such that p(n) divides p(k), where p(k) denotes the k-th partition number (A000041).

The programs for A079031, there is no canonical definition to state claims against.
-/

/-! ## A079031.P2998218349814314712

`A346696(n)+n`
-/

namespace A079031.P2998218349814314712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346696 n + (n : ℤ)

end

end A079031.P2998218349814314712

/-! ## A079031.P1068539476352657311

`abs(A001489(n)-A346696(n))`
-/

namespace A079031.P1068539476352657311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 n - A346696 n|

end

end A079031.P1068539476352657311

/-! ## A079031.P1737392047480822089

`A005843(n)-(n-A346696(n))`
-/

namespace A079031.P1737392047480822089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A346696 n)

end

end A079031.P1737392047480822089

/-! ## A079031.P3531695150812649958

`abs(n-(A000038(n)-A346696(n)))`
-/

namespace A079031.P3531695150812649958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - (A000038 n - A346696 n)|

end

end A079031.P3531695150812649958

/-! ## A079031.P10198448874179527085

`n-(A000038(∏{p}[1-n, #])-A346696(n))`
-/

namespace A079031.P10198448874179527085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A000038 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) - A346696 n)

end

end A079031.P10198448874179527085

/-! ## A079031.P7646375060360024779

`n-(A000038(∑[char[3*n]])-A346696(n))`
-/

namespace A079031.P7646375060360024779
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A000038 (∑ j ∈ Finset.range (n + 1), f1 j) - A346696 n)

end

end A079031.P7646375060360024779

/-! ## A079031.P5598234544466972246

`n-A008683(A007918(n))*A346696(n)`
-/

namespace A079031.P5598234544466972246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A008683 (A007918 n).toNat * A346696 n

end

end A079031.P5598234544466972246

/-! ## A079031.P5832160983783163348

`floor(A178334(n)/2)-(A001489(n)-A346696(n))`
-/

namespace A079031.P5832160983783163348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A178334 n : ℚ) / 2⌋ - (A001489 n - A346696 n)

end

end A079031.P5832160983783163348

/-!
# A079032: Smallest nontrivial partition number divisible by the n-th partition number.

The programs for A079032, there is no canonical definition to state claims against.
-/

/-! ## A079032.P18295693406874478300

`A000041(A346696(n)+A028310(n))`
-/

namespace A079032.P18295693406874478300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A346696 n + A028310 n).toNat

end

end A079032.P18295693406874478300

/-!
# A079033: First differences of A023203.

The programs for A079033, there is no canonical definition to state claims against.
-/

/-! ## A079033.P9009179156776832726

`Δ[A087696(n+1)]`
-/

namespace A079033.P9009179156776832726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079033.P9009179156776832726

/-! ## A079033.P6570717986189870080

`Δ[A092146(n+1)]`
-/

namespace A079033.P6570717986189870080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079033.P6570717986189870080

/-! ## A079033.P12821167523510056951

`Δ[2*A088765(n+1)]`
-/

namespace A079033.P12821167523510056951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079033.P12821167523510056951

/-! ## A079033.P10570293836254040341

`A005843(Δ[A088765(n+1)])`
-/

namespace A079033.P10570293836254040341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (f1 (n + 1) - f1 n).toNat

end

end A079033.P10570293836254040341

/-! ## A079033.P2538286039873784349

`A087696(n+2)-A087696(n+1)`
-/

namespace A079033.P2538286039873784349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087696 (n + 2) - A087696 (n + 1)

end

end A079033.P2538286039873784349

/-! ## A079033.P10299001096086820008

`A092146(n+2)-A092146(n+1)`
-/

namespace A079033.P10299001096086820008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092146 (n + 2) - A092146 (n + 1)

end

end A079033.P10299001096086820008

/-! ## A079033.P14629391862175866340

`Δ[p?[A015916(n+1)]]`
-/

namespace A079033.P14629391862175866340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015916 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079033.P14629391862175866340

/-! ## A079033.P6576801754187756287

`Δ[p?[A262086(n+1)]]`
-/

namespace A079033.P6576801754187756287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262086 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079033.P6576801754187756287

/-! ## A079033.P14842632698921016091

`Δ[A140445(Δ[n²])]`
-/

namespace A079033.P14842632698921016091
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140445 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079033.P14842632698921016091

/-! ## A079033.P2540855667684732345

`A140445(2*n+3)-A140445(2*n+1)`
-/

namespace A079033.P2540855667684732345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140445 (2 * n + 3) - A140445 (2 * n + 1)

end

end A079033.P2540855667684732345

/-! ## A079033.P12409801213652958268

`Δ[p?[p?[2*n+1]+10]]`
-/

namespace A079033.P12409801213652958268
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) + 10

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A079033.P12409801213652958268

/-! ## A079033.P9646756651416849885

`Δ[p?[A172407(n+1)]]`
-/

namespace A079033.P9646756651416849885
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172407 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079033.P9646756651416849885

/-! ## A079033.P15019473863523530729

`Δ[p?[A175225(n+1)]]`
-/

namespace A079033.P15019473863523530729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175225 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079033.P15019473863523530729

/-! ## A079033.P9564288996713584671

`Δ[p?[A040976(n+1)-8]]`
-/

namespace A079033.P9564288996713584671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - 8

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079033.P9564288996713584671

/-! ## A079033.P7795374543188154941

`Δ[p?[A000040(n+1)+10]]`
-/

namespace A079033.P7795374543188154941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 10

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079033.P7795374543188154941

/-! ## A079033.P214916359308903889

`Δ[p?[A006093(n+1)-9]]`
-/

namespace A079033.P214916359308903889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - 9

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079033.P214916359308903889

/-!
# A079034: Determinant of M(n), the n X n matrix defined by m(i,i) = 1, m(i,j) = i-j.

The programs for A079034, the canonical program `A079034.P6997679153751098089` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079034 has offset 0).

The definition of A079034 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079034.P1249839310922039748

`(n^4-n²+12)/12`
-/

namespace A079034.P1249839310922039748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 4 : ℤ) - (n ^ 2 : ℤ) + 12 : ℚ) / 12

end

end A079034.P1249839310922039748

namespace A079034

/-- `(n^4-n²+12)/12` -/
def P1249839310922039748.Spec : Prop :=
  ∀ n, P1249839310922039748.a n = (A079034 n : ℚ)

end A079034

/-! ## A079034.P6997679153751098089

`A002415(n)+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A079034

/-- `A002415(n)+1` -/
def P6997679153751098089.Spec : Prop :=
  ∀ n, P6997679153751098089.a n = A079034 n

theorem P6997679153751098089.correct : P6997679153751098089.Spec := by
  intro n
  simp only [A079034]

end A079034

/-! ## A079034.P15469984409186500247

`C(n², 2)/6+1`
-/

namespace A079034.P15469984409186500247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2) 2 : ℚ) / 6 + 1

end

end A079034.P15469984409186500247

namespace A079034

/-- `C(n², 2)/6+1` -/
def P15469984409186500247.Spec : Prop :=
  ∀ n, P15469984409186500247.a n = (A079034 n : ℚ)

end A079034

/-! ## A079034.P9265505417413635866

`abs(xor(C(n², 2)/6, -1))`
-/

namespace A079034.P9265505417413635866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (SequenceMachineLib.roundAway ((Nat.choose (n ^ 2) 2 : ℚ) / 6)) (-1)|

end

end A079034.P9265505417413635866

namespace A079034

/-- `abs(xor(C(n², 2)/6, -1))` -/
def P9265505417413635866.Spec : Prop :=
  ∀ n, P9265505417413635866.a n = A079034 n

end A079034

/-! ## A079034.P12035947534893316788

`-xor(C(n², 2)/6, -1)`
-/

namespace A079034.P12035947534893316788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (SequenceMachineLib.roundAway ((Nat.choose (n ^ 2) 2 : ℚ) / 6)) (-1)

end

end A079034.P12035947534893316788

namespace A079034

/-- `-xor(C(n², 2)/6, -1)` -/
def P12035947534893316788.Spec : Prop :=
  ∀ n, P12035947534893316788.a n = A079034 n

end A079034

/-! ## A079034.P6577895829858771418

`A008911(n)/2+1`
-/

namespace A079034.P6577895829858771418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008911 n : ℚ) / 2 + 1

end

end A079034.P6577895829858771418

namespace A079034

/-- `A008911(n)/2+1` -/
def P6577895829858771418.Spec : Prop :=
  ∀ n, P6577895829858771418.a n = (A079034 n : ℚ)

end A079034

/-! ## A079034.P4497943975605931928

`A006011(n)/3+1`
-/

namespace A079034.P4497943975605931928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006011 n : ℚ) / 3 + 1

end

end A079034.P4497943975605931928

namespace A079034

/-- `A006011(n)/3+1` -/
def P4497943975605931928.Spec : Prop :=
  ∀ n, P4497943975605931928.a n = (A079034 n : ℚ)

theorem P4497943975605931928.correct : P4497943975605931928.Spec := by
  intro n
  simp only [A079034, Nat.add_sub_cancel, A079034.P4497943975605931928.a, A079034.P6997679153751098089.a, A002415, A002415.P7373830119072566170.a, A006011, A006011.P3668477608306639061.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079034

/-! ## A079034.P1691290460602975899

`A112742(n)/4+1`
-/

namespace A079034.P1691290460602975899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112742 n : ℚ) / 4 + 1

end

end A079034.P1691290460602975899

namespace A079034

/-- `A112742(n)/4+1` -/
def P1691290460602975899.Spec : Prop :=
  ∀ n, P1691290460602975899.a n = (A079034 n : ℚ)

end A079034

/-! ## A079034.P15715302169850950957

`∑[A000330(abs(1-n))]`
-/

namespace A079034.P15715302169850950957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079034.P15715302169850950957

namespace A079034

/-- `∑[A000330(abs(1-n))]` -/
def P15715302169850950957.Spec : Prop :=
  ∀ n, P15715302169850950957.a n = A079034 n

end A079034

/-! ## A079034.P9888536588136515942

`A136396(n)-(n²+n)`
-/

namespace A079034.P9888536588136515942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136396 n - (n ^ 2 + n : ℤ)

end

end A079034.P9888536588136515942

namespace A079034

/-- `A136396(n)-(n²+n)` -/
def P9888536588136515942.Spec : Prop :=
  ∀ n, P9888536588136515942.a n = A079034 n

end A079034

/-! ## A079034.P1740543055655025687

`A116701(n)+A007290(n)`
-/

namespace A079034.P1740543055655025687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116701 n + A007290 n

end

end A079034.P1740543055655025687

namespace A079034

/-- `A116701(n)+A007290(n)` -/
def P1740543055655025687.Spec : Prop :=
  ∀ n, P1740543055655025687.a n = A079034 n

end A079034

/-! ## A079034.P1571808815306943190

`A258837(n)+A006008(n)`
-/

namespace A079034.P1571808815306943190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258837 n + A006008 n

end

end A079034.P1571808815306943190

namespace A079034

/-- `A258837(n)+A006008(n)` -/
def P1571808815306943190.Spec : Prop :=
  ∀ n, P1571808815306943190.a n = A079034 n

end A079034

/-! ## A079034.P1541746058909040940

`A323847(n)+A014626(n)`
-/

namespace A079034.P1541746058909040940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323847 n + A014626 n

end

end A079034.P1541746058909040940

namespace A079034

/-- `A323847(n)+A014626(n)` -/
def P1541746058909040940.Spec : Prop :=
  ∀ n, P1541746058909040940.a n = A079034 n

end A079034

/-! ## A079034.P10263823783552376343

`A014206(n)-A080260(n)`
-/

namespace A079034.P10263823783552376343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n - A080260 n

end

end A079034.P10263823783552376343

namespace A079034

/-- `A014206(n)-A080260(n)` -/
def P10263823783552376343.Spec : Prop :=
  ∀ n, P10263823783552376343.a n = A079034 n

end A079034

/-! ## A079034.P4301036981450257543

`A136395(n)-A045943(n)`
-/

namespace A079034.P4301036981450257543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136395 n - A045943 n

end

end A079034.P4301036981450257543

namespace A079034

/-- `A136395(n)-A045943(n)` -/
def P4301036981450257543.Spec : Prop :=
  ∀ n, P4301036981450257543.a n = A079034 n

end A079034

/-! ## A079034.P12893739608325603806

`A152947(n+1)+A117662(n)`
-/

namespace A079034.P12893739608325603806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152947 (n + 1) + A117662 n

end

end A079034.P12893739608325603806

namespace A079034

/-- `A152947(n+1)+A117662(n)` -/
def P12893739608325603806.Spec : Prop :=
  ∀ n, P12893739608325603806.a n = A079034 n

end A079034

/-! ## A079034.P7921442743573515506

`A144335(n+1)-A005582(n)`
-/

namespace A079034.P7921442743573515506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144335 (n + 1) - A005582 n

end

end A079034.P7921442743573515506

namespace A079034

/-- `A144335(n+1)-A005582(n)` -/
def P7921442743573515506.Spec : Prop :=
  ∀ n, P7921442743573515506.a n = A079034 n

end A079034

/-! ## A079034.P1876918535187173565

`A116701(n+1)-∑[n]`
-/

namespace A079034.P1876918535187173565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116701 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A079034.P1876918535187173565

namespace A079034

/-- `A116701(n+1)-∑[n]` -/
def P1876918535187173565.Spec : Prop :=
  ∀ n, P1876918535187173565.a n = A079034 n

end A079034

/-! ## A079034.P8839274656966151904

`A179257(n+1)-(A000389(n+1)+A000217(n))`
-/

namespace A079034.P8839274656966151904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179257 (n + 1) - (A000389 (n + 1) + A000217 n)

end

end A079034.P8839274656966151904

namespace A079034

/-- `A179257(n+1)-(A000389(n+1)+A000217(n))` -/
def P8839274656966151904.Spec : Prop :=
  ∀ n, P8839274656966151904.a n = A079034 n

end A079034

/-! ## A079034.P12099130561729311875

`A000127(n+1)+A000127(n+2)-A002522(n+1)`
-/

namespace A079034.P12099130561729311875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000127 (n + 1) + (A000127 (n + 2) - A002522 (n + 1))

end

end A079034.P12099130561729311875

namespace A079034

/-- `A000127(n+1)+A000127(n+2)-A002522(n+1)` -/
def P12099130561729311875.Spec : Prop :=
  ∀ n, P12099130561729311875.a n = A079034 n

end A079034

/-!
# A079035: Squares, not ending in zero, in which all the digits occur in groups of 2 or more.

The programs for A079035, there is no canonical definition to state claims against.
-/

/-! ## A079035.P6225414402667567288

`A079036(n+1)²`
-/

namespace A079035.P6225414402667567288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079036 (n + 1) ^ 2

end

end A079035.P6225414402667567288

/-!
# A079036: Squares of these numbers have all their digits occurring in groups of 2 or more, without ending in zero.

The programs for A079036, there is no canonical definition to state claims against.
-/

/-! ## A079036.P5105980775189310502

`sqrt(A079035(n+1))`
-/

namespace A079036.P5105980775189310502
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A079035 (n + 1) : ℝ)

end

end A079036.P5105980775189310502

/-! ## A079036.P15942376912296234185

`lcm(2, sqrt(A079035(Δ[n²]-n)))`
-/

namespace A079036.P15942376912296234185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (SequenceMachineLib.roundAway (Real.sqrt (A079035 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ)))

end

end A079036.P15942376912296234185

/-! ## A079036.P12590938413779572392

`record[sqrt(A079035(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A079036.P12590938413779572392
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A079035 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079036.P12590938413779572392

/-! ## A079036.P2443585814707237959

`root(A079035(n+1), A001316(A001316(n)))`
-/

namespace A079036.P2443585814707237959
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A079035 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A079036.P2443585814707237959

/-! ## A079036.P11491254397494684349

`root(A079035(n+1), A133265(A133265(n)))`
-/

namespace A079036.P11491254397494684349
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A079035 (n + 1) : ℝ) ^ (1 / (A133265 (A133265 n).toNat : ℝ))

end

end A079036.P11491254397494684349

/-!
# A079037: a(0)=1; a(n) is the smallest integer > a(n-1) such that sin(a(n)) is closer to an integer (here 0 or -1) than sin(a(n-1)).

The programs for A079037, there is no canonical definition to state claims against.
-/

/-! ## A079037.P10302113342643871799

`filter[A046964(n+1), A022930(#)]`
-/

namespace A079037.P10302113342643871799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022930 (f1 j).toNat = 1) n)

end

end A079037.P10302113342643871799

/-!
# A079038: Fractional part of sinh(n) decreases monotonically to zero.

The programs for A079038, there is no canonical definition to state claims against.
-/

/-! ## A079038.P8124895499013324865

`A079039(and(n+2, floor(acot(1-n))))`
-/

namespace A079038.P8124895499013324865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079039 (Int.land (n + 2 : ℤ) ⌊SequenceMachineLib.acot (1 - (n : ℤ) : ℝ)⌋).toNat

end

end A079038.P8124895499013324865

/-! ## A079038.P15306770969563303717

`A079039(and(n+2, floor(1/(γ-n))))`
-/

namespace A079038.P15306770969563303717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079039 (Int.land (n + 2 : ℤ) ⌊1 / (Real.eulerMascheroniConstant - (n : ℝ))⌋).toNat

end

end A079038.P15306770969563303717

/-! ## A079038.P14369650892410739733

`A079039(comp[Δ[A078993(n+4)]])`
-/

namespace A079038.P14369650892410739733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078993 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079039 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A079038.P14369650892410739733

/-!
# A079041: Numbers n in which the first k digits of n form an integer divisible by k^3, for k = 1, 2, ..., m, where m is the number of digits in n.

The programs for A079041, there is no canonical definition to state claims against.
-/

/-! ## A079041.P977145197703453812

`A079042((2-A015366(n))*A058183(n+1))`
-/

namespace A079041.P977145197703453812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079042 ((2 - A015366 n) * A058183 (n + 1)).toNat

end

end A079041.P977145197703453812

/-! ## A079041.P17575418546583081406

`A079042(A058183(n+1))+A000038(A002106(n+1))`
-/

namespace A079041.P17575418546583081406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079042 (A058183 (n + 1)).toNat + A000038 (A002106 (n + 1)).toNat

end

end A079041.P17575418546583081406

/-! ## A079041.P9586945861127497613

`A079042(A033061(n+1))%A001359(A007955(n+1))`
-/

namespace A079041.P9586945861127497613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079042 (A033061 (n + 1)).toNat) (A001359 (A007955 (n + 1)).toNat)

end

end A079041.P9586945861127497613

/-! ## A079041.P2178179199591040366

`A118759(A079239(n+1))`
-/

namespace A079041.P2178179199591040366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A079239 (n + 1)).toNat

end

end A079041.P2178179199591040366

/-!
# A079042: Numbers n in which the first k digits of n form an integer divisible by k^2, for k = 1, 2, ..., m, where m is the number of digits in n.

The programs for A079042, there is no canonical definition to state claims against.
-/

/-! ## A079042.P9998551814230310274

`lt[(floor(n/2)/5)², n^val(gcd(4, n), 4)]`
-/

namespace A079042.P9998551814230310274
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((⌊(n : ℚ) / 2⌋ : ℚ) / 5) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.valuation (Nat.gcd 4 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A079042.P9998551814230310274

/-! ## A079042.P15443088167963303156

`lt[n/10*n/10, A088440(n)]`
-/

namespace A079042.P15443088167963303156
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 10 * ((n : ℚ) / 10)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A079042.P15443088167963303156

/-! ## A079042.P13603939521532510524

`A118759(A079238(n+1))`
-/

namespace A079042.P13603939521532510524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A079238 (n + 1)).toNat

end

end A079042.P13603939521532510524

/-! ## A079042.P12651600832007946617

`∑[A113311(∑[A326471(n)])]`
-/

namespace A079042.P12651600832007946617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326471 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113311 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079042.P12651600832007946617

/-!
# A079043: a(0)=1, then the fractional part of Pi*a(n) decreases monotonically to zero.

The programs for A079043, there is no canonical definition to state claims against.
-/

/-! ## A079043.P4335749029064751757

`eq[1, A194754(n+1)]+1`
-/

namespace A079043.P4335749029064751757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194754 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A079043.P4335749029064751757

/-! ## A079043.P4742074991851654421

`eq[n, A194755(n+1)]+1`
-/

namespace A079043.P4742074991851654421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194755 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A079043.P4742074991851654421

/-! ## A079043.P930693596083653471

`A062300(A024814(n+2)+1)-4`
-/

namespace A079043.P930693596083653471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062300 (A024814 (n + 2) + 1).toNat - 4

end

end A079043.P930693596083653471

/-! ## A079043.P610310586564903209

`∑[A108689(4*A105960(2*(n+1)))]`
-/

namespace A079043.P610310586564903209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108689 (4 * A105960 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079043.P610310586564903209

/-! ## A079043.P7243892272400602824

`∑[A108689(A296861(n+1)+A296695(n+1))]`
-/

namespace A079043.P7243892272400602824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108689 (A296861 (n + 1) + A296695 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079043.P7243892272400602824

/-!
# A079044: Numbers k such that Sum_{j=0..k} sin(j/Pi) < 0.

The programs for A079044, the canonical program `A079044.P9310845266514396326` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079044 has offset 1).

The definition of A079044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079044.P9310845266514396326

`floor(2*π²*(n+1))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079044

/-- `floor(2*π²*(n+1))` -/
def P9310845266514396326.Spec : Prop :=
  ∀ n, P9310845266514396326.a n = A079044 (n + 1)

theorem P9310845266514396326.correct : P9310845266514396326.Spec := by
  intro n
  simp only [A079044, Nat.add_sub_cancel]

end A079044

/-! ## A079044.P2578780624938699499

`A037085(2*(n+1))`
-/

namespace A079044.P2578780624938699499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037085 (2 * (n + 1))

end

end A079044.P2578780624938699499

namespace A079044

/-- `A037085(2*(n+1))` -/
def P2578780624938699499.Spec : Prop :=
  ∀ n, P2578780624938699499.a n = A079044 (n + 1)

end A079044

/-! ## A079044.P13172962612218882574

`∑[abs(Δ[A037085(2*n)])]`
-/

namespace A079044.P13172962612218882574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037085 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079044.P13172962612218882574

namespace A079044

/-- `∑[abs(Δ[A037085(2*n)])]` -/
def P13172962612218882574.Spec : Prop :=
  ∀ n, P13172962612218882574.a n = A079044 (n + 1)

end A079044

/-! ## A079044.P4404948136848898311

`or(char[1], A037085(n+2+n))`
-/

namespace A079044.P4404948136848898311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A037085 (n + 2 + n))

end

end A079044.P4404948136848898311

namespace A079044

/-- `or(char[1], A037085(n+2+n))` -/
def P4404948136848898311.Spec : Prop :=
  ∀ n, P4404948136848898311.a n = A079044 (n + 1)

end A079044

/-! ## A079044.P11981188813841098448

`∑[A184985(Δ[A037085(2*n)])]`
-/

namespace A079044.P11981188813841098448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037085 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079044.P11981188813841098448

namespace A079044

/-- `∑[A184985(Δ[A037085(2*n)])]` -/
def P11981188813841098448.Spec : Prop :=
  ∀ n, P11981188813841098448.a n = A079044 (n + 1)

end A079044

/-! ## A079044.P1149817363563607460

`record[A037085(A029578(n+3))]`
-/

namespace A079044.P1149817363563607460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037085 (A029578 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079044.P1149817363563607460

namespace A079044

/-- `record[A037085(A029578(n+3))]` -/
def P1149817363563607460.Spec : Prop :=
  ∀ n, P1149817363563607460.a n = A079044 (n + 1)

end A079044

/-! ## A079044.P4566465718545312122

`A059535(12*(n+1))`
-/

namespace A079044.P4566465718545312122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059535 (12 * (n + 1))

end

end A079044.P4566465718545312122

namespace A079044

/-- `A059535(12*(n+1))` -/
def P4566465718545312122.Spec : Prop :=
  ∀ n, P4566465718545312122.a n = A079044 (n + 1)

end A079044

/-! ## A079044.P17903580360524576219

`A028310(A037085(n+2+n))`
-/

namespace A079044.P17903580360524576219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A037085 (n + 2 + n)).toNat

end

end A079044.P17903580360524576219

namespace A079044

/-- `A028310(A037085(n+2+n))` -/
def P17903580360524576219.Spec : Prop :=
  ∀ n, P17903580360524576219.a n = A079044 (n + 1)

end A079044

/-!
# A079047: Number of primes between prime(n) and prime(n)^2.

The programs for A079047, the canonical program `A079047.P13319003001615767345` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079047 has offset 1).

The definition of A079047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079047.P16625641605939484143

`∑[A050216(n)-1]`
-/

namespace A079047.P16625641605939484143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079047.P16625641605939484143

namespace A079047

/-- `∑[A050216(n)-1]` -/
def P16625641605939484143.Spec : Prop :=
  ∀ n, P16625641605939484143.a n = A079047 (n + 1)

end A079047

/-! ## A079047.P5059972568617722176

`A054272(n+1)-1`
-/

namespace A079047.P5059972568617722176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054272 (n + 1) - 1

end

end A079047.P5059972568617722176

namespace A079047

/-- `A054272(n+1)-1` -/
def P5059972568617722176.Spec : Prop :=
  ∀ n, P5059972568617722176.a n = A079047 (n + 1)

end A079047

/-! ## A079047.P2560823413634922506

`A250473(n+1)-2`
-/

namespace A079047.P2560823413634922506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250473 (n + 1) - 2

end

end A079047.P2560823413634922506

namespace A079047

/-- `A250473(n+1)-2` -/
def P2560823413634922506.Spec : Prop :=
  ∀ n, P2560823413634922506.a n = A079047 (n + 1)

end A079047

/-! ## A079047.P8909823274283111801

`A250474(n+1)-3`
-/

namespace A079047.P8909823274283111801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250474 (n + 1) - 3

end

end A079047.P8909823274283111801

namespace A079047

/-- `A250474(n+1)-3` -/
def P8909823274283111801.Spec : Prop :=
  ∀ n, P8909823274283111801.a n = A079047 (n + 1)

end A079047

/-! ## A079047.P3515840775463557557

`A000879(n+1)-(n+1)`
-/

namespace A079047.P3515840775463557557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000879 (n + 1) - (n + 1 : ℤ)

end

end A079047.P3515840775463557557

namespace A079047

/-- `A000879(n+1)-(n+1)` -/
def P3515840775463557557.Spec : Prop :=
  ∀ n, P3515840775463557557.a n = A079047 (n + 1)

end A079047

/-! ## A079047.P13319003001615767345

`A062773(n+1)-(n+2)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A079047

/-- `A062773(n+1)-(n+2)` -/
def P13319003001615767345.Spec : Prop :=
  ∀ n, P13319003001615767345.a n = A079047 (n + 1)

theorem P13319003001615767345.correct : P13319003001615767345.Spec := by
  intro n
  simp only [A079047, Nat.add_sub_cancel]

end A079047

/-! ## A079047.P2537754038698912537

`A251723(n)+a(n-1)` with `a(0)=1`
-/

namespace A079047.P2537754038698912537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A251723 n + a (n - 1)

end

end A079047.P2537754038698912537

namespace A079047

/-- `A251723(n)+a(n-1)` -/
def P2537754038698912537.Spec : Prop :=
  ∀ n, P2537754038698912537.a n = A079047 (n + 1)

end A079047

/-! ## A079047.P11473330449569285179

`A181962(n+1)-2*(n+1)`
-/

namespace A079047.P11473330449569285179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181962 (n + 1) - (2 * (n + 1) : ℤ)

end

end A079047.P11473330449569285179

namespace A079047

/-- `A181962(n+1)-2*(n+1)` -/
def P11473330449569285179.Spec : Prop :=
  ∀ n, P11473330449569285179.a n = A079047 (n + 1)

end A079047

/-! ## A079047.P10626366757823659026

`A117490(A000040(n+1))`
-/

namespace A079047.P10626366757823659026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117490 (A000040 (n + 1)).toNat

end

end A079047.P10626366757823659026

namespace A079047

/-- `A117490(A000040(n+1))` -/
def P10626366757823659026.Spec : Prop :=
  ∀ n, P10626366757823659026.a n = A079047 (n + 1)

end A079047

/-! ## A079047.P8511158881555231152

`A117490(A008578(n+2))`
-/

namespace A079047.P8511158881555231152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117490 (A008578 (n + 2)).toNat

end

end A079047.P8511158881555231152

namespace A079047

/-- `A117490(A008578(n+2))` -/
def P8511158881555231152.Spec : Prop :=
  ∀ n, P8511158881555231152.a n = A079047 (n + 1)

end A079047

/-! ## A079047.P14777821723387468483

`A117490(A182986(n+2))`
-/

namespace A079047.P14777821723387468483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117490 (A182986 (n + 2)).toNat

end

end A079047.P14777821723387468483

namespace A079047

/-- `A117490(A182986(n+2))` -/
def P14777821723387468483.Spec : Prop :=
  ∀ n, P14777821723387468483.a n = A079047 (n + 1)

end A079047

/-! ## A079047.P8408785331642612425

`A117490(record[A006530(n+2)])`
-/

namespace A079047.P8408785331642612425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117490 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A079047.P8408785331642612425

namespace A079047

/-- `A117490(record[A006530(n+2)])` -/
def P8408785331642612425.Spec : Prop :=
  ∀ n, P8408785331642612425.a n = A079047 (n + 1)

end A079047

/-! ## A079047.P4489600706320724697

`A117490(record[A020639(n+2)])`
-/

namespace A079047.P4489600706320724697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117490 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A079047.P4489600706320724697

namespace A079047

/-- `A117490(record[A020639(n+2)])` -/
def P4489600706320724697.Spec : Prop :=
  ∀ n, P4489600706320724697.a n = A079047 (n + 1)

end A079047

/-! ## A079047.P2639931697166186193

`∑[A251723(A000007(n)+n)]`
-/

namespace A079047.P2639931697166186193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251723 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079047.P2639931697166186193

namespace A079047

/-- `∑[A251723(A000007(n)+n)]` -/
def P2639931697166186193.Spec : Prop :=
  ∀ n, P2639931697166186193.a n = A079047 (n + 1)

end A079047

/-! ## A079047.P7459926797569478419

`A001478(n+1)+A000879(n+1)`
-/

namespace A079047.P7459926797569478419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + A000879 (n + 1)

end

end A079047.P7459926797569478419

namespace A079047

/-- `A001478(n+1)+A000879(n+1)` -/
def P7459926797569478419.Spec : Prop :=
  ∀ n, P7459926797569478419.a n = A079047 (n + 1)

end A079047

/-! ## A079047.P8519148947650428426

`A066883(n+1)+A006093(n+1)`
-/

namespace A079047.P8519148947650428426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066883 (n + 1) + A006093 (n + 1)

end

end A079047.P8519148947650428426

namespace A079047

/-- `A066883(n+1)+A006093(n+1)` -/
def P8519148947650428426.Spec : Prop :=
  ∀ n, P8519148947650428426.a n = A079047 (n + 1)

end A079047

/-! ## A079047.P14588772750673332551

`A276824(n+1)+A101301(n+1)`
-/

namespace A079047.P14588772750673332551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276824 (n + 1) + A101301 (n + 1)

end

end A079047.P14588772750673332551

namespace A079047

/-- `A276824(n+1)+A101301(n+1)` -/
def P14588772750673332551.Spec : Prop :=
  ∀ n, P14588772750673332551.a n = A079047 (n + 1)

end A079047

/-! ## A079047.P2292220969692438171

`A182174(n+1)-A053683(n+1)`
-/

namespace A079047.P2292220969692438171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182174 (n + 1) - A053683 (n + 1)

end

end A079047.P2292220969692438171

namespace A079047

/-- `A182174(n+1)-A053683(n+1)` -/
def P2292220969692438171.Spec : Prop :=
  ∀ n, P2292220969692438171.a n = A079047 (n + 1)

end A079047

/-! ## A079047.P17397121575738373512

`A038107(record[A006530(n+2)])-(n+1)`
-/

namespace A079047.P17397121575738373512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - (n + 1 : ℤ)

end

end A079047.P17397121575738373512

namespace A079047

/-- `A038107(record[A006530(n+2)])-(n+1)` -/
def P17397121575738373512.Spec : Prop :=
  ∀ n, P17397121575738373512.a n = A079047 (n + 1)

end A079047

/-! ## A079047.P17940978075923374347

`A038107(record[A020639(n+2)])-(n+1)`
-/

namespace A079047.P17940978075923374347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - (n + 1 : ℤ)

end

end A079047.P17940978075923374347

namespace A079047

/-- `A038107(record[A020639(n+2)])-(n+1)` -/
def P17940978075923374347.Spec : Prop :=
  ∀ n, P17940978075923374347.a n = A079047 (n + 1)

end A079047

/-!
# A079049: Recamán variation: a(1) = 1; for n > 1, a(n) = a(n-1)-prime(n) if that number is positive and not already in the sequence, otherwise a(n) = a(n-1)+prime(n).

The programs for A079049, there is no canonical definition to state claims against.
-/

/-! ## A079049.P6920436002381222272

`A103634(A397813(n+1))`
-/

namespace A079049.P6920436002381222272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103634 (A397813 (n + 1)).toNat

end

end A079049.P6920436002381222272

/-!
# A079050: Sum of the digits of LookAndSay(n).

The programs for A079050, there is no canonical definition to state claims against.
-/

/-! ## A079050.P3230821257691814956

`A007953(A045918(n))`
-/

namespace A079050.P3230821257691814956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A045918 n).toNat

end

end A079050.P3230821257691814956

/-! ## A079050.P9960216790714491649

`A217928(n)+A055642(A381431(n+1))`
-/

namespace A079050.P9960216790714491649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217928 n + A055642 (A381431 (n + 1)).toNat

end

end A079050.P9960216790714491649

/-! ## A079050.P11344612146923051933

`∑{digits}[A330286(n), #]`
-/

namespace A079050.P11344612146923051933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A079050.P11344612146923051933

/-! ## A079050.P14775476775062121692

`A007953(A330286(n))`
-/

namespace A079050.P14775476775062121692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A330286 n).toNat

end

end A079050.P14775476775062121692

/-! ## A079050.P16161300624096033227

`∑{digits}[A097598(n), #]`
-/

namespace A079050.P16161300624096033227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097598 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A079050.P16161300624096033227

/-!
# A079054: a(n) = -1 if the closest prime to prime(n) is prime(n-1); = 1 if the closest prime to prime(n) is prime(n+1); = 0 if prime(n-1) and prime(n+1) are equally close to prime(n).

The programs for A079054, the canonical program `A079054.P1655160976094069587` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079054 has offset 2).

The definition of A079054 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079054.P7917186341926229260

`Δ[-A092243(n+1)]`
-/

namespace A079054.P7917186341926229260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A092243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079054.P7917186341926229260

namespace A079054

/-- `Δ[-A092243(n+1)]` -/
def P7917186341926229260.Spec : Prop :=
  ∀ n, P7917186341926229260.a n = A079054 (n + 2)

end A079054

/-! ## A079054.P1655160976094069587

`round(tanh(A073274(n+1)-1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A079054

/-- `round(tanh(A073274(n+1)-1))` -/
def P1655160976094069587.Spec : Prop :=
  ∀ n, P1655160976094069587.a n = A079054 (n + 2)

theorem P1655160976094069587.correct : P1655160976094069587.Spec := by
  intro n
  simp only [A079054, Nat.add_sub_cancel]

end A079054

/-! ## A079054.P3585379093345149319

`round(tanh(Δ[-A001223(n+1)]))`
-/

namespace A079054.P3585379093345149319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (f1 (n + 1) - f1 n : ℝ))

end

end A079054.P3585379093345149319

namespace A079054

/-- `round(tanh(Δ[-A001223(n+1)]))` -/
def P3585379093345149319.Spec : Prop :=
  ∀ n, P3585379093345149319.a n = A079054 (n + 2)

end A079054

/-! ## A079054.P5270921800233754954

`round(atan(atan(-A036263(n+1))))`
-/

namespace A079054.P5270921800233754954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (Real.arctan (-A036263 (n + 1) : ℝ)))

end

end A079054.P5270921800233754954

namespace A079054

/-- `round(atan(atan(-A036263(n+1))))` -/
def P5270921800233754954.Spec : Prop :=
  ∀ n, P5270921800233754954.a n = A079054 (n + 2)

end A079054

/-! ## A079054.P13632141050007243354

`A016118(2-Δ[A092243(n+1)])`
-/

namespace A079054.P13632141050007243354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016118 (2 - (f1 (n + 1) - f1 n)).toNat

end

end A079054.P13632141050007243354

namespace A079054

/-- `A016118(2-Δ[A092243(n+1)])` -/
def P13632141050007243354.Spec : Prop :=
  ∀ n, P13632141050007243354.a n = A079054 (n + 2)

end A079054

/-! ## A079054.P16329736736845395389

`A089451(3-Δ[A092243(n+1)])`
-/

namespace A079054.P16329736736845395389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089451 (3 - (f1 (n + 1) - f1 n)).toNat

end

end A079054.P16329736736845395389

namespace A079054

/-- `A089451(3-Δ[A092243(n+1)])` -/
def P16329736736845395389.Spec : Prop :=
  ∀ n, P16329736736845395389.a n = A079054 (n + 2)

end A079054

/-! ## A079054.P17112320525941736510

`A092243(n+1)-A092243(n+2)`
-/

namespace A079054.P17112320525941736510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092243 (n + 1) - A092243 (n + 2)

end

end A079054.P17112320525941736510

namespace A079054

/-- `A092243(n+1)-A092243(n+2)` -/
def P17112320525941736510.Spec : Prop :=
  ∀ n, P17112320525941736510.a n = A079054 (n + 2)

end A079054

/-! ## A079054.P6607406323045365128

`A108415(n+2)-2`
-/

namespace A079054.P6607406323045365128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108415 (n + 2) - 2

end

end A079054.P6607406323045365128

namespace A079054

/-- `A108415(n+2)-2` -/
def P6607406323045365128.Spec : Prop :=
  ∀ n, P6607406323045365128.a n = A079054 (n + 2)

theorem P6607406323045365128.correct : P6607406323045365128.Spec := by
  intro n
  simp only [A079054, Nat.add_sub_cancel, A079054.P6607406323045365128.a, A079054.P1655160976094069587.a, A073274, A073274.P9123969946531876833.a, A108415, A108415.P14242309755812235254.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A073273, A073273.P1596800208937550110.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079054

/-! ## A079054.P17542598254413838352

`1-A107599(n+2)`
-/

namespace A079054.P17542598254413838352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A107599 (n + 2)

end

end A079054.P17542598254413838352

namespace A079054

/-- `1-A107599(n+2)` -/
def P17542598254413838352.Spec : Prop :=
  ∀ n, P17542598254413838352.a n = A079054 (n + 2)

theorem P17542598254413838352.correct : P17542598254413838352.Spec := by
  intro n
  simp only [A079054, Nat.add_sub_cancel, A079054.P17542598254413838352.a, A079054.P1655160976094069587.a, A073274, A073274.P9123969946531876833.a, A107599, A107599.P7799038033738361722.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A073273, A073273.P1596800208937550110.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079054

/-!
# A079055: Numbers of prime pairs (p,q), p<=q, such that (p+q) divides n.

The programs for A079055, there is no canonical definition to state claims against.
-/

/-! ## A079055.P15214566322350673308

`∑{d}[n+1, A061358(#)]`
-/

namespace A079055.P15214566322350673308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061358 d

end

end A079055.P15214566322350673308

/-! ## A079055.P1932354394156568882

`∑{d}[n+1, A110654(A073610(#))]`
-/

namespace A079055.P1932354394156568882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A110654 (A073610 d).toNat

end

end A079055.P1932354394156568882

/-! ## A079055.P508560720887708581

`A304486(A236852(n+1))-1`
-/

namespace A079055.P508560720887708581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304486 (A236852 (n + 1)).toNat - 1

end

end A079055.P508560720887708581

/-!
# A079056: Numbers of prime triples (p,q,r), p<=q<=r, such that (p+q+r) divides n.

The programs for A079056, there is no canonical definition to state claims against.
-/

/-! ## A079056.P16922714970124722787

`∑{d}[n+1, A068307(#)]`
-/

namespace A079056.P16922714970124722787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068307 d

end

end A079056.P16922714970124722787

/-!
# A079057: a(n) = Sum_{k=1..n} bigomega(tau(k)).

The programs for A079057, the canonical program `A079057.P8314943623986169743` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079057 has offset 1).

The definition of A079057 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079057.P8314943623986169743

`∑[∑{e}[∏{e}[n+1, #+1], #]]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079057

/-- `∑[∑{e}[∏{e}[n+1, #+1], #]]` -/
def P8314943623986169743.Spec : Prop :=
  ∀ n, (P8314943623986169743.a n : ℤ) = A079057 (n + 1)

theorem P8314943623986169743.correct : P8314943623986169743.Spec := by
  intro n
  simp only [A079057, Nat.add_sub_cancel]

end A079057

/-! ## A079057.P644677704314302581

`∑[∑{e}[∑{d}[n+1, gcd(n, #)], #]]`
-/

namespace A079057.P644677704314302581
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), Nat.gcd n d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079057.P644677704314302581

namespace A079057

/-- `∑[∑{e}[∑{d}[n+1, gcd(n, #)], #]]` -/
def P644677704314302581.Spec : Prop :=
  ∀ n, (P644677704314302581.a n : ℤ) = A079057 (n + 1)

end A079057

/-! ## A079057.P15285464963879648423

`∑[A058061(n+1)]`
-/

namespace A079057.P15285464963879648423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079057.P15285464963879648423

namespace A079057

/-- `∑[A058061(n+1)]` -/
def P15285464963879648423.Spec : Prop :=
  ∀ n, P15285464963879648423.a n = A079057 (n + 1)

end A079057

/-! ## A079057.P3755377717125120030

`∑[∑{e}[A000005(n+1), #]]`
-/

namespace A079057.P3755377717125120030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079057.P3755377717125120030

namespace A079057

/-- `∑[∑{e}[A000005(n+1), #]]` -/
def P3755377717125120030.Spec : Prop :=
  ∀ n, (P3755377717125120030.a n : ℤ) = A079057 (n + 1)

end A079057

/-! ## A079057.P7261005326083367321

`∑[∑{e}[n+1, A001222(#+1)]]`
-/

namespace A079057.P7261005326083367321
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A001222 (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079057.P7261005326083367321

namespace A079057

/-- `∑[∑{e}[n+1, A001222(#+1)]]` -/
def P7261005326083367321.Spec : Prop :=
  ∀ n, P7261005326083367321.a n = A079057 (n + 1)

end A079057

/-! ## A079057.P11713376478653146637

`∑[A001222(∏{e}[n+1, #+1])]`
-/

namespace A079057.P11713376478653146637
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079057.P11713376478653146637

namespace A079057

/-- `∑[A001222(∏{e}[n+1, #+1])]` -/
def P11713376478653146637.Spec : Prop :=
  ∀ n, P11713376478653146637.a n = A079057 (n + 1)

end A079057

/-! ## A079057.P1642737205228154677

`∑[A001222(Δ[A006218(n)])]`
-/

namespace A079057.P1642737205228154677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079057.P1642737205228154677

namespace A079057

/-- `∑[A001222(Δ[A006218(n)])]` -/
def P1642737205228154677.Spec : Prop :=
  ∀ n, P1642737205228154677.a n = A079057 (n + 1)

end A079057

/-! ## A079057.P1202074385667873268

`∑[A001222(A000005(n+1))]`
-/

namespace A079057.P1202074385667873268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079057.P1202074385667873268

namespace A079057

/-- `∑[A001222(A000005(n+1))]` -/
def P1202074385667873268.Spec : Prop :=
  ∀ n, P1202074385667873268.a n = A079057 (n + 1)

end A079057

/-! ## A079057.P14602690185712580535

`∑[A001222(A032741(n+1)+1)]`
-/

namespace A079057.P14602690185712580535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A032741 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079057.P14602690185712580535

namespace A079057

/-- `∑[A001222(A032741(n+1)+1)]` -/
def P14602690185712580535.Spec : Prop :=
  ∀ n, P14602690185712580535.a n = A079057 (n + 1)

end A079057

/-! ## A079057.P7874079785172537882

`∑[A001222(A320111(2*(n+1)))]`
-/

namespace A079057.P7874079785172537882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A320111 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079057.P7874079785172537882

namespace A079057

/-- `∑[A001222(A320111(2*(n+1)))]` -/
def P7874079785172537882.Spec : Prop :=
  ∀ n, P7874079785172537882.a n = A079057 (n + 1)

end A079057

/-! ## A079057.P2465562171461210276

`∑[A001222(A038040(n+1)/(n+1))]`
-/

namespace A079057.P2465562171461210276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079057.P2465562171461210276

namespace A079057

/-- `∑[A001222(A038040(n+1)/(n+1))]` -/
def P2465562171461210276.Spec : Prop :=
  ∀ n, P2465562171461210276.a n = A079057 (n + 1)

end A079057

/-! ## A079057.P12036457216261748495

`∑[A001222(A000005(2*n-(n-1))²)/2]`
-/

namespace A079057.P12036457216261748495
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A000005 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat ^ 2).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079057.P12036457216261748495

namespace A079057

/-- `∑[A001222(A000005(2*n-(n-1))²)/2]` -/
def P12036457216261748495.Spec : Prop :=
  ∀ n, P12036457216261748495.a n = (A079057 (n + 1) : ℚ)

end A079057

/-! ## A079057.P1937769777510130026

`a(n-1)+A001222(A000005(n+1)²)/2` with `a(0)=0`
-/

namespace A079057.P1937769777510130026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A001222 (A000005 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A079057.P1937769777510130026

namespace A079057

/-- `a(n-1)+A001222(A000005(n+1)²)/2` -/
def P1937769777510130026.Spec : Prop :=
  ∀ n, P1937769777510130026.a n = (A079057 (n + 1) : ℚ)

end A079057

/-! ## A079057.P5005576495460003879

`A001222(A000005(2*n+1-n))+a(n-1)` with `a(0)=0`
-/

namespace A079057.P5005576495460003879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001222 (A000005 (2 * n + 1 - n)).toNat + a (n - 1)

end

end A079057.P5005576495460003879

namespace A079057

/-- `A001222(A000005(2*n+1-n))+a(n-1)` -/
def P5005576495460003879.Spec : Prop :=
  ∀ n, P5005576495460003879.a n = A079057 (n + 1)

end A079057

/-! ## A079057.P10145068881971138465

`∑[A001222(∑{d}[n+1, A057427(#)])]`
-/

namespace A079057.P10145068881971138465
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ d ∈ Nat.divisors (f2 n), A057427 d).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079057.P10145068881971138465

namespace A079057

/-- `∑[A001222(∑{d}[n+1, A057427(#)])]` -/
def P10145068881971138465.Spec : Prop :=
  ∀ n, P10145068881971138465.a n = A079057 (n + 1)

end A079057

/-! ## A079057.P5663931551417061680

`∑[A001222(A069157(2*(n+1)))]`
-/

namespace A079057.P5663931551417061680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A069157 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079057.P5663931551417061680

namespace A079057

/-- `∑[A001222(A069157(2*(n+1)))]` -/
def P5663931551417061680.Spec : Prop :=
  ∀ n, P5663931551417061680.a n = A079057 (n + 1)

end A079057

/-! ## A079057.P14712115514361010485

`∑[A001222(A183063(2*(n+1)))]`
-/

namespace A079057.P14712115514361010485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A183063 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079057.P14712115514361010485

namespace A079057

/-- `∑[A001222(A183063(2*(n+1)))]` -/
def P14712115514361010485.Spec : Prop :=
  ∀ n, P14712115514361010485.a n = A079057 (n + 1)

end A079057

/-! ## A079057.P11576774716549665455

`∑[A001222(A038040(n+1))-A001222(n+1)]`
-/

namespace A079057.P11576774716549665455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A038040 (n + 1)).toNat - A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079057.P11576774716549665455

namespace A079057

/-- `∑[A001222(A038040(n+1))-A001222(n+1)]` -/
def P11576774716549665455.Spec : Prop :=
  ∀ n, P11576774716549665455.a n = A079057 (n + 1)

end A079057

/-! ## A079057.P10828518144267287221

`∑[A001222(A001222(A293514(n+1))+1)]`
-/

namespace A079057.P10828518144267287221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001222 (A293514 (n + 1)).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079057.P10828518144267287221

namespace A079057

/-- `∑[A001222(A001222(A293514(n+1))+1)]` -/
def P10828518144267287221.Spec : Prop :=
  ∀ n, P10828518144267287221.a n = A079057 (n + 1)

end A079057

/-! ## A079057.P9419349768006249136

`∑[A001222(A114896(∑[n]))]`
-/

namespace A079057.P9419349768006249136
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A114896 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A079057.P9419349768006249136

namespace A079057

/-- `∑[A001222(A114896(∑[n]))]` -/
def P9419349768006249136.Spec : Prop :=
  ∀ n, P9419349768006249136.a n = A079057 (n + 1)

end A079057

/-!
# A079058: Least k > 0 such that A025591(k) >= p(n) (p(n)=the n-th partition number).

The programs for A079058, there is no canonical definition to state claims against.
-/

/-! ## A079058.P9430644519456158698

`A108852(∑[A363076(n+1)+n])`
-/

namespace A079058.P9430644519456158698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363076 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108852 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A079058.P9430644519456158698

/-! ## A079058.P7854473702044137756

`A002024(A229488(Δ[n²]))`
-/

namespace A079058.P7854473702044137756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A229488 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A079058.P7854473702044137756

/-! ## A079058.P9536609111728932182

`A072649(∑[∑[A336203(n)]])`
-/

namespace A079058.P9536609111728932182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336203 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A079058.P9536609111728932182

/-! ## A079058.P6623677340143500103

`A072649(A325325(2*n)+n²)`
-/

namespace A079058.P6623677340143500103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (A325325 (2 * n) + (n ^ 2 : ℤ)).toNat

end

end A079058.P6623677340143500103

/-! ## A079058.P6402805589578104553

`A213711(A196039(n+1))`
-/

namespace A079058.P6402805589578104553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213711 (A196039 (n + 1)).toNat

end

end A079058.P6402805589578104553

/-!
# A079060: Least k such that the least positive primitive root of prime(k) equals prime(n).

The programs for A079060, there is no canonical definition to state claims against.
-/

/-! ## A079060.P13525150119445772427

`A066529(record[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1]+2)`
-/

namespace A079060.P13525150119445772427
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066529 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2)).toNat

end

end A079060.P13525150119445772427

/-! ## A079060.P5649576764882132907

`A066529(A051599(∑[n]))`
-/

namespace A079060.P5649576764882132907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066529 (A051599 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A079060.P5649576764882132907

/-! ## A079060.P2633808418078004394

`A066529(Δ[A007504(n)])`
-/

namespace A079060.P2633808418078004394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066529 (f1 (n + 1) - f1 n).toNat

end

end A079060.P2633808418078004394

/-! ## A079060.P5819894944962191281

`A066529(record[A162753(n)])`
-/

namespace A079060.P5819894944962191281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066529 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A079060.P5819894944962191281

/-! ## A079060.P3692159512373308051

`A066529(A000040(n+1))`
-/

namespace A079060.P3692159512373308051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066529 (A000040 (n + 1)).toNat

end

end A079060.P3692159512373308051

/-!
# A079061: Smallest prime p such that the least positive primitive root of p equals prime(n).

The programs for A079061, there is no canonical definition to state claims against.
-/

/-! ## A079061.P9842563614314173426

`A023048(A000040(n+1))`
-/

namespace A079061.P9842563614314173426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023048 (A000040 (n + 1)).toNat

end

end A079061.P9842563614314173426

/-! ## A079061.P13622726311553922328

`A023048(p?[gcd(1-n, floor(n/2))])`
-/

namespace A079061.P13622726311553922328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023048 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A079061.P13622726311553922328

/-! ## A079061.P16950233362392493126

`A023048(p?[a(n-1)+2])` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A079061.P16950233362392493126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023048 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A079061.P16950233362392493126

/-! ## A079061.P16849202562130828096

`A023048(Δ[A007504(n)])`
-/

namespace A079061.P16849202562130828096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023048 (f1 (n + 1) - f1 n).toNat

end

end A079061.P16849202562130828096

/-! ## A079061.P3623475260177469290

`A023048(record[A051698(n)])`
-/

namespace A079061.P3623475260177469290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023048 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A079061.P3623475260177469290

/-!
# A079062: a(1) = 2; for n>1, a(n) = smallest prime p such that p - a(n-1) = c^e for some positive integers c,e > 1.

The programs for A079062, there is no canonical definition to state claims against.
-/

/-! ## A079062.P12000639953095087859

`or(2, Δ[A177455(A028310(n))])`
-/

namespace A079062.P12000639953095087859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177455 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (f1 (n + 1) - f1 n)

end

end A079062.P12000639953095087859

/-! ## A079062.P13161117823387831570

`A000038(n)+Δ[A177455(A028310(n))]`
-/

namespace A079062.P13161117823387831570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177455 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (f1 (n + 1) - f1 n)

end

end A079062.P13161117823387831570

/-! ## A079062.P292611183916950536

`Δ[A177455(A028310(n))]+2*A000007(n)`
-/

namespace A079062.P292611183916950536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177455 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A000007 n

end

end A079062.P292611183916950536

/-! ## A079062.P6324889580048708624

`or(2, A177455(n+1)-A177455(A028310(n)))`
-/

namespace A079062.P6324889580048708624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A177455 (n + 1) - A177455 (A028310 n).toNat)

end

end A079062.P6324889580048708624

/-! ## A079062.P17642059607143832048

`Δ[A177455(A028310(n))%A005894(n)]`
-/

namespace A079062.P17642059607143832048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177455 (A028310 n).toNat) (A005894 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A079062.P17642059607143832048

/-!
# A079063: Least k such that sqrt(prime(n+k))-sqrt(prime(n))>1.

The programs for A079063, there is no canonical definition to state claims against.
-/

/-! ## A079063.P1674398293186048361

`A261675(A267849(n+8))+A261675(n)`
-/

namespace A079063.P1674398293186048361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261675 (A267849 (n + 8)).toNat + A261675 n

end

end A079063.P1674398293186048361

/-! ## A079063.P15736888653794685632

`A109082(A360248(3*n+4)+A010062(n))`
-/

namespace A079063.P15736888653794685632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A360248 (3 * n + 4) + A010062 n).toNat

end

end A079063.P15736888653794685632

/-!
# A079064: a(n) is the next available entirely straight or curved number, depending on whether n contains a straight digit or not.

The programs for A079064, there is no canonical definition to state claims against.
-/

/-! ## A079064.P17162536685283169748

`lt[A360892(A074458(n)), A154054(n+5)]`
-/

namespace A079064.P17162536685283169748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360892 (A074458 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154054 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A079064.P17162536685283169748

/-! ## A079064.P3463965034182993766

`eq[A078029(A038724(n)), A078029(n)]`
-/

namespace A079064.P3463965034182993766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078029 (A038724 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079064.P3463965034182993766

/-! ## A079064.P2401767639119592420

`eq[A092942(n), A092942(A240237(n))]`
-/

namespace A079064.P2401767639119592420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 (A240237 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079064.P2401767639119592420

/-! ## A079064.P6746874627973649015

`eq[A112156(n), A112156(A240237(n))]`
-/

namespace A079064.P6746874627973649015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112156 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112156 (A240237 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079064.P6746874627973649015

/-! ## A079064.P7316381652773713012

`eq[A033688(n), A033688(A227876(n))]`
-/

namespace A079064.P7316381652773713012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033688 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033688 (A227876 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A079064.P7316381652773713012

/-!
# A079065: In prime factorization of n replace odd primes with 3.

The programs for A079065, the canonical program `A079065.P5255729659051602087` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079065 has offset 1).

The definition of A079065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079065.P5255729659051602087

`∏{d}[n+1, A086369(A014963(#))]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A079065

/-- `∏{d}[n+1, A086369(A014963(#))]` -/
def P5255729659051602087.Spec : Prop :=
  ∀ n, P5255729659051602087.a n = A079065 (n + 1)

theorem P5255729659051602087.correct : P5255729659051602087.Spec := by
  intro n
  simp only [A079065, Nat.add_sub_cancel]

end A079065

/-! ## A079065.P11219922492834237350

`A166624(n+1)/A394497(n+1)`
-/

namespace A079065.P11219922492834237350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166624 (n + 1) : ℚ) / (A394497 (n + 1) : ℚ)

end

end A079065.P11219922492834237350

namespace A079065

/-- `A166624(n+1)/A394497(n+1)` -/
def P11219922492834237350.Spec : Prop :=
  ∀ n, P11219922492834237350.a n = (A079065 (n + 1) : ℚ)

end A079065

/-! ## A079065.P12935935788835707266

`3^A083025(n+1)*A065338(n+1)`
-/

namespace A079065.P12935935788835707266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A083025 (n + 1) : ℤ) * (A065338 (n + 1) : ℚ)

end

end A079065.P12935935788835707266

namespace A079065

/-- `3^A083025(n+1)*A065338(n+1)` -/
def P12935935788835707266.Spec : Prop :=
  ∀ n, P12935935788835707266.a n = (A079065 (n + 1) : ℚ)

end A079065

/-! ## A079065.P5558154476873605586

`∏{d}[n+1, A000045(A000005(2*A014963(#)))]`
-/

namespace A079065.P5558154476873605586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000045 (A000005 (2 * A014963 d).toNat).toNat

end

end A079065.P5558154476873605586

namespace A079065

/-- `∏{d}[n+1, A000045(A000005(2*A014963(#)))]` -/
def P5558154476873605586.Spec : Prop :=
  ∀ n, P5558154476873605586.a n = A079065 (n + 1)

end A079065

/-! ## A079065.P16086237624458611934

`∏{d}[n+1, A032741(2*A014963(#))]`
-/

namespace A079065.P16086237624458611934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A032741 (2 * A014963 d).toNat

end

end A079065.P16086237624458611934

namespace A079065

/-- `∏{d}[n+1, A032741(2*A014963(#))]` -/
def P16086237624458611934.Spec : Prop :=
  ∀ n, P16086237624458611934.a n = A079065 (n + 1)

end A079065

/-! ## A079065.P12426618059029888866

`∏{d}[n+1, A000005(or(1, A014963(#)²))]`
-/

namespace A079065.P12426618059029888866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000005 (Int.lor 1 (A014963 d ^ 2)).toNat

end

end A079065.P12426618059029888866

namespace A079065

/-- `∏{d}[n+1, A000005(or(1, A014963(#)²))]` -/
def P12426618059029888866.Spec : Prop :=
  ∀ n, P12426618059029888866.a n = A079065 (n + 1)

end A079065

/-! ## A079065.P14756279860087463458

`gcd(A108951(n+1), A156180(n))`
-/

namespace A079065.P14756279860087463458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A108951 (n + 1)) (A156180 n)

end

end A079065.P14756279860087463458

namespace A079065

/-- `gcd(A108951(n+1), A156180(n))` -/
def P14756279860087463458.Spec : Prop :=
  ∀ n, (P14756279860087463458.a n : ℤ) = A079065 (n + 1)

end A079065

/-! ## A079065.P12616655460032894646

`A342767(∑[n+3]+1)`
-/

namespace A079065.P12616655460032894646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342767 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A079065.P12616655460032894646

namespace A079065

/-- `A342767(∑[n+3]+1)` -/
def P12616655460032894646.Spec : Prop :=
  ∀ n, P12616655460032894646.a n = A079065 (n + 1)

end A079065

/-! ## A079065.P2914070592522549418

`∏{e}[A181821(n+1), A157532(#)]`
-/

namespace A079065.P2914070592522549418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A157532 (Nat.factorization (f1 n).natAbs p)

end

end A079065.P2914070592522549418

namespace A079065

/-- `∏{e}[A181821(n+1), A157532(#)]` -/
def P2914070592522549418.Spec : Prop :=
  ∀ n, P2914070592522549418.a n = A079065 (n + 1)

end A079065

/-! ## A079065.P3995266114048242995

`A342767(A167614(2*(n+1)))/2`
-/

namespace A079065.P3995266114048242995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342767 (A167614 (2 * (n + 1))).toNat : ℚ) / 2

end

end A079065.P3995266114048242995

namespace A079065

/-- `A342767(A167614(2*(n+1)))/2` -/
def P3995266114048242995.Spec : Prop :=
  ∀ n, P3995266114048242995.a n = (A079065 (n + 1) : ℚ)

end A079065

/-!
# A079066: "Memory" of prime(n): the number of distinct (previous) primes contained as substrings in prime(n).

The programs for A079066, there is no canonical definition to state claims against.
-/

/-! ## A079066.P14108322609797214795

`A039996(n+1)-1`
-/

namespace A079066.P14108322609797214795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (n + 1) - 1

end

end A079066.P14108322609797214795

/-! ## A079066.P5072877629683216133

`A039997(A000040(n+1))-1`
-/

namespace A079066.P5072877629683216133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (A000040 (n + 1)).toNat - 1

end

end A079066.P5072877629683216133

/-! ## A079066.P15059628290280300566

`A004883(A039996(n+1))`
-/

namespace A079066.P15059628290280300566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004883 (A039996 (n + 1)).toNat

end

end A079066.P15059628290280300566

/-! ## A079066.P2806294675335445622

`A023444(A039996(n+1)+1)`
-/

namespace A079066.P2806294675335445622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A039996 (n + 1) + 1).toNat

end

end A079066.P2806294675335445622

/-! ## A079066.P7067027072135545097

`A289207(A039996(n+1)+1)`
-/

namespace A079066.P7067027072135545097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A039996 (n + 1) + 1).toNat

end

end A079066.P7067027072135545097

/-! ## A079066.P7477263628251437551

`A023445(A039996(n+1)+2)`
-/

namespace A079066.P7477263628251437551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A039996 (n + 1) + 2).toNat

end

end A079066.P7477263628251437551

/-! ## A079066.P14286357106897611801

`A023446(A039996(n+1)+3)`
-/

namespace A079066.P14286357106897611801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A039996 (n + 1) + 3).toNat

end

end A079066.P14286357106897611801

/-! ## A079066.P17928327288808622070

`A122203(C(A039996(n+1), 2))`
-/

namespace A079066.P17928327288808622070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122203 (Nat.choose (A039996 (n + 1)).toNat 2)

end

end A079066.P17928327288808622070

/-! ## A079066.P8891143443926138566

`A122204(C(A039996(n+1), 2))`
-/

namespace A079066.P8891143443926138566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122204 (Nat.choose (A039996 (n + 1)).toNat 2)

end

end A079066.P8891143443926138566

/-! ## A079066.P12471907944521003722

`A127229(n+5)%A039996(n+1)`
-/

namespace A079066.P12471907944521003722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A039996 (n + 1))

end

end A079066.P12471907944521003722

/-! ## A079066.P8292441301082366328

`A023443(A039996(n+1)%A154359(n))`
-/

namespace A079066.P8292441301082366328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (Int.tmod (A039996 (n + 1)) (A154359 n)).toNat

end

end A079066.P8292441301082366328

/-! ## A079066.P4417906886738183713

`A272159(A039996(n+1))%A016933(n)`
-/

namespace A079066.P4417906886738183713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272159 (A039996 (n + 1)).toNat) (A016933 n)

end

end A079066.P4417906886738183713

/-! ## A079066.P10489468240110459141

`A023443(A039996(n+1))%A001358(n+1)`
-/

namespace A079066.P10489468240110459141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023443 (A039996 (n + 1)).toNat) (A001358 (n + 1))

end

end A079066.P10489468240110459141

/-! ## A079066.P12026935444616975836

`A134824(A020722(n))+A039996(n+1)`
-/

namespace A079066.P12026935444616975836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A020722 n).toNat + A039996 (n + 1)

end

end A079066.P12026935444616975836

/-! ## A079066.P17887378751448255686

`A134824(A038722(n+2))+A039996(n+1)`
-/

namespace A079066.P17887378751448255686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A038722 (n + 2)).toNat + A039996 (n + 1)

end

end A079066.P17887378751448255686

/-! ## A079066.P12913743925431426909

`A134824(A015910(2*n+3))+A039996(n+1)`
-/

namespace A079066.P12913743925431426909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (A015910 (2 * n + 3)).toNat + A039996 (n + 1)

end

end A079066.P12913743925431426909

/-! ## A079066.P4226043152161300389

`A099837(A104844(n+1))+A039996(n+1)`
-/

namespace A079066.P4226043152161300389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099837 (A104844 (n + 1)).toNat + A039996 (n + 1)

end

end A079066.P4226043152161300389

/-! ## A079066.P835159640218227269

`A134824(3*(n+1))+A039996(n+1)`
-/

namespace A079066.P835159640218227269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (3 * (n + 1)) + A039996 (n + 1)

end

end A079066.P835159640218227269

/-! ## A079066.P1060133702810960204

`A200748(n)%A039996(n+1)`
-/

namespace A079066.P1060133702810960204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A039996 (n + 1))

end

end A079066.P1060133702810960204

/-! ## A079066.P3257176339643461915

`A058197(n+1)%A039996(n+1)`
-/

namespace A079066.P3257176339643461915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058197 (n + 1)) (A039996 (n + 1))

end

end A079066.P3257176339643461915

/-!
# A079067: Number of primes less than greatest prime factor of n but not dividing n.

The programs for A079067, the canonical program `A079067.P15788458216202685682` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079067 has offset 1).

The definition of A079067 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087207, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A079067.P5042397562473955995

`A061395(n+1)-A001221(n+1)`
-/

namespace A079067.P5042397562473955995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) - A001221 (n + 1)

end

end A079067.P5042397562473955995

namespace A079067

/-- `A061395(n+1)-A001221(n+1)` -/
def P5042397562473955995.Spec : Prop :=
  ∀ n, P5042397562473955995.a n = A079067 (n + 1)

end A079067

/-! ## A079067.P4241639427410852138

`A049084(A006530(n+1))-A001221(n+1)`
-/

namespace A079067.P4241639427410852138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A006530 (n + 1)).toNat - A001221 (n + 1)

end

end A079067.P4241639427410852138

namespace A079067

/-- `A049084(A006530(n+1))-A001221(n+1)` -/
def P4241639427410852138.Spec : Prop :=
  ∀ n, P4241639427410852138.a n = A079067 (n + 1)

end A079067

/-! ## A079067.P15788458216202685682

`A080791(A087207(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A079067

/-- `A080791(A087207(n+1))` -/
def P15788458216202685682.Spec : Prop :=
  ∀ n, P15788458216202685682.a n = A079067 (n + 1)

theorem P15788458216202685682.correct : P15788458216202685682.Spec := by
  intro n
  simp only [A079067, Nat.add_sub_cancel]

end A079067

/-! ## A079067.P17807890767928546439

`A001221(A083720(n+1))`
-/

namespace A079067.P17807890767928546439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A083720 (n + 1)).toNat

end

end A079067.P17807890767928546439

namespace A079067

/-- `A001221(A083720(n+1))` -/
def P17807890767928546439.Spec : Prop :=
  ∀ n, P17807890767928546439.a n = A079067 (n + 1)

end A079067

/-! ## A079067.P8295601475912413078

`A048865(n+1)-A083721(n+1)`
-/

namespace A079067.P8295601475912413078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1) - A083721 (n + 1)

end

end A079067.P8295601475912413078

namespace A079067

/-- `A048865(n+1)-A083721(n+1)` -/
def P8295601475912413078.Spec : Prop :=
  ∀ n, P8295601475912413078.a n = A079067 (n + 1)

end A079067

/-! ## A079067.P15375009250918032049

`A159081(n+1)-A083399(n+1)`
-/

namespace A079067.P15375009250918032049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159081 (n + 1) - A083399 (n + 1)

end

end A079067.P15375009250918032049

namespace A079067

/-- `A159081(n+1)-A083399(n+1)` -/
def P15375009250918032049.Spec : Prop :=
  ∀ n, P15375009250918032049.a n = A079067 (n + 1)

end A079067

/-! ## A079067.P12531216182815256775

`A297113(n+1)-A001222(n+1)`
-/

namespace A079067.P12531216182815256775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (n + 1) - A001222 (n + 1)

end

end A079067.P12531216182815256775

namespace A079067

/-- `A297113(n+1)-A001222(n+1)` -/
def P12531216182815256775.Spec : Prop :=
  ∀ n, P12531216182815256775.a n = A079067 (n + 1)

end A079067

/-! ## A079067.P4041160287732957619

`A252735(n+1)-A297155(n+1)`
-/

namespace A079067.P4041160287732957619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (n + 1) - A297155 (n + 1)

end

end A079067.P4041160287732957619

namespace A079067

/-- `A252735(n+1)-A297155(n+1)` -/
def P4041160287732957619.Spec : Prop :=
  ∀ n, P4041160287732957619.a n = A079067 (n + 1)

end A079067

/-! ## A079067.P6536205410294752813

`A297167(n+1)-A252736(n+1)`
-/

namespace A079067.P6536205410294752813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297167 (n + 1) - A252736 (n + 1)

end

end A079067.P6536205410294752813

namespace A079067

/-- `A297167(n+1)-A252736(n+1)` -/
def P6536205410294752813.Spec : Prop :=
  ∀ n, P6536205410294752813.a n = A079067 (n + 1)

end A079067

/-! ## A079067.P7174749423051934917

`A378993(n+1)-A243291(n+1)`
-/

namespace A079067.P7174749423051934917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378993 (n + 1) - A243291 (n + 1)

end

end A079067.P7174749423051934917

namespace A079067

/-- `A378993(n+1)-A243291(n+1)` -/
def P7174749423051934917.Spec : Prop :=
  ∀ n, P7174749423051934917.a n = A079067 (n + 1)

end A079067

/-! ## A079067.P5093462747618107257

`A318995(n+1)-A325166(n+1)`
-/

namespace A079067.P5093462747618107257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (n + 1) - A325166 (n + 1)

end

end A079067.P5093462747618107257

namespace A079067

/-- `A318995(n+1)-A325166(n+1)` -/
def P5093462747618107257.Spec : Prop :=
  ∀ n, P5093462747618107257.a n = A079067 (n + 1)

end A079067

/-! ## A079067.P8498637229831011669

`A061395(n+1)+1-A083399(n+1)`
-/

namespace A079067.P8498637229831011669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) + (1 - A083399 (n + 1))

end

end A079067.P8498637229831011669

namespace A079067

/-- `A061395(n+1)+1-A083399(n+1)` -/
def P8498637229831011669.Spec : Prop :=
  ∀ n, P8498637229831011669.a n = A079067 (n + 1)

end A079067

/-! ## A079067.P7177747146183699557

`A297113(n+1)-A255201(n+1)/2`
-/

namespace A079067.P7177747146183699557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297113 (n + 1) : ℚ) - (A255201 (n + 1) : ℚ) / 2

end

end A079067.P7177747146183699557

namespace A079067

/-- `A297113(n+1)-A255201(n+1)/2` -/
def P7177747146183699557.Spec : Prop :=
  ∀ n, P7177747146183699557.a n = (A079067 (n + 1) : ℚ)

end A079067

/-! ## A079067.P1016373711604185677

`A061395(n+1)-A001222(∏{p}[n+1, #])`
-/

namespace A079067.P1016373711604185677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) - A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A079067.P1016373711604185677

namespace A079067

/-- `A061395(n+1)-A001222(∏{p}[n+1, #])` -/
def P1016373711604185677.Spec : Prop :=
  ∀ n, P1016373711604185677.a n = A079067 (n + 1)

end A079067

/-! ## A079067.P4154156128041700312

`A061395(n+1)-A001222(A061389(n+1))`
-/

namespace A079067.P4154156128041700312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) - A001222 (A061389 (n + 1)).toNat

end

end A079067.P4154156128041700312

namespace A079067

/-- `A061395(n+1)-A001222(A061389(n+1))` -/
def P4154156128041700312.Spec : Prop :=
  ∀ n, P4154156128041700312.a n = A079067 (n + 1)

end A079067

/-! ## A079067.P3669633732781284280

`A061395(n+1)-A061395(A046523(n+1))`
-/

namespace A079067.P3669633732781284280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) - A061395 (A046523 (n + 1)).toNat

end

end A079067.P3669633732781284280

namespace A079067

/-- `A061395(n+1)-A061395(A046523(n+1))` -/
def P3669633732781284280.Spec : Prop :=
  ∀ n, P3669633732781284280.a n = A079067 (n + 1)

end A079067

/-! ## A079067.P11111356507690258933

`A061395(n+1)-A061395(A071364(n+1))`
-/

namespace A079067.P11111356507690258933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) - A061395 (A071364 (n + 1)).toNat

end

end A079067.P11111356507690258933

namespace A079067

/-- `A061395(n+1)-A061395(A071364(n+1))` -/
def P11111356507690258933.Spec : Prop :=
  ∀ n, P11111356507690258933.a n = A079067 (n + 1)

end A079067

/-! ## A079067.P14165851793934637434

`A061395(n+1)-A001222(A181819(n+1))`
-/

namespace A079067.P14165851793934637434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) - A001222 (A181819 (n + 1)).toNat

end

end A079067.P14165851793934637434

namespace A079067

/-- `A061395(n+1)-A001222(A181819(n+1))` -/
def P14165851793934637434.Spec : Prop :=
  ∀ n, P14165851793934637434.a n = A079067 (n + 1)

end A079067

/-! ## A079067.P2432577767279799878

`A061395(n+1)-A061395(A238745(n+1))`
-/

namespace A079067.P2432577767279799878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) - A061395 (A238745 (n + 1)).toNat

end

end A079067.P2432577767279799878

namespace A079067

/-- `A061395(n+1)-A061395(A238745(n+1))` -/
def P2432577767279799878.Spec : Prop :=
  ∀ n, P2432577767279799878.a n = A079067 (n + 1)

end A079067

/-! ## A079067.P1472586608857423961

`A056239(A064989(n+1))-A325166(n+1)`
-/

namespace A079067.P1472586608857423961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A064989 (n + 1)).toNat - A325166 (n + 1)

end

end A079067.P1472586608857423961

namespace A079067

/-- `A056239(A064989(n+1))-A325166(n+1)` -/
def P1472586608857423961.Spec : Prop :=
  ∀ n, P1472586608857423961.a n = A079067 (n + 1)

end A079067

/-!
# A079068: Largest prime less than greatest prime factor of n but not dividing n, or 1 if no such prime exists.

The programs for A079068, the canonical program `A079068.P15493252620268949018` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079068 has offset 1).

The definition of A079068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079068.P14358702181442635061

`A008578(A339662(n+1)+1)`
-/

namespace A079068.P14358702181442635061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A339662 (n + 1) + 1).toNat

end

end A079068.P14358702181442635061

namespace A079068

/-- `A008578(A339662(n+1)+1)` -/
def P14358702181442635061.Spec : Prop :=
  ∀ n, P14358702181442635061.a n = A079068 (n + 1)

end A079068

/-! ## A079068.P15493252620268949018

`A006530(A319627(∏{p}[n+1, #]))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A079068

/-- `A006530(A319627(∏{p}[n+1, #]))` -/
def P15493252620268949018.Spec : Prop :=
  ∀ n, P15493252620268949018.a n = A079068 (n + 1)

theorem P15493252620268949018.correct : P15493252620268949018.Spec := by
  intro n
  simp only [A079068, Nat.add_sub_cancel]

end A079068

/-! ## A079068.P18157184938959781260

`gcd(A064989(n+1), A377774(n+1))`
-/

namespace A079068.P18157184938959781260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064989 (n + 1)) (A377774 (n + 1))

end

end A079068.P18157184938959781260

namespace A079068

/-- `gcd(A064989(n+1), A377774(n+1))` -/
def P18157184938959781260.Spec : Prop :=
  ∀ n, (P18157184938959781260.a n : ℤ) = A079068 (n + 1)

end A079068

/-! ## A079068.P3410037847653124359

`A006530(A319627(A007947(n+1)))`
-/

namespace A079068.P3410037847653124359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A319627 (A007947 (n + 1)).toNat).toNat

end

end A079068.P3410037847653124359

namespace A079068

/-- `A006530(A319627(A007947(n+1)))` -/
def P3410037847653124359.Spec : Prop :=
  ∀ n, P3410037847653124359.a n = A079068 (n + 1)

end A079068

/-! ## A079068.P10420144017219687017

`A006530(A319627(A089247(n+1)))`
-/

namespace A079068.P10420144017219687017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A319627 (A089247 (n + 1)).toNat).toNat

end

end A079068.P10420144017219687017

namespace A079068

/-- `A006530(A319627(A089247(n+1)))` -/
def P10420144017219687017.Spec : Prop :=
  ∀ n, P10420144017219687017.a n = A079068 (n + 1)

end A079068

/-! ## A079068.P5542956721859264609

`A006530(A319627(A078615(n+1)))`
-/

namespace A079068.P5542956721859264609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A319627 (A078615 (n + 1)).toNat).toNat

end

end A079068.P5542956721859264609

namespace A079068

/-- `A006530(A319627(A078615(n+1)))` -/
def P5542956721859264609.Spec : Prop :=
  ∀ n, P5542956721859264609.a n = A079068 (n + 1)

end A079068

/-! ## A079068.P11984655458269706537

`A006530(A319627(A015052(n+1)²))`
-/

namespace A079068.P11984655458269706537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A319627 (A015052 (n + 1) ^ 2).toNat).toNat

end

end A079068.P11984655458269706537

namespace A079068

/-- `A006530(A319627(A015052(n+1)²))` -/
def P11984655458269706537.Spec : Prop :=
  ∀ n, P11984655458269706537.a n = A079068 (n + 1)

end A079068

/-! ## A079068.P16388700268175270136

`A006530(A319627(A053166(n+1)²))`
-/

namespace A079068.P16388700268175270136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A319627 (A053166 (n + 1) ^ 2).toNat).toNat

end

end A079068.P16388700268175270136

namespace A079068

/-- `A006530(A319627(A053166(n+1)²))` -/
def P16388700268175270136.Spec : Prop :=
  ∀ n, P16388700268175270136.a n = A079068 (n + 1)

end A079068

/-! ## A079068.P7186440563489608269

`A006530(A319627(A348036(n+1)²))`
-/

namespace A079068.P7186440563489608269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A319627 (A348036 (n + 1) ^ 2).toNat).toNat

end

end A079068.P7186440563489608269

namespace A079068

/-- `A006530(A319627(A348036(n+1)²))` -/
def P7186440563489608269.Spec : Prop :=
  ∀ n, P7186440563489608269.a n = A079068 (n + 1)

end A079068

/-! ## A079068.P18015847786331832676

`A006530(A319627(sqrt(A053167(n+1))))`
-/

namespace A079068.P18015847786331832676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A319627 (SequenceMachineLib.roundAway (Real.sqrt (A053167 (n + 1) : ℝ))).toNat).toNat

end

end A079068.P18015847786331832676

namespace A079068

/-- `A006530(A319627(sqrt(A053167(n+1))))` -/
def P18015847786331832676.Spec : Prop :=
  ∀ n, P18015847786331832676.a n = A079068 (n + 1)

end A079068

/-!
# A079069: a(n) = a(n-2) * a(n-3) + a(n-3), n>3. a(1) = a(2) = a(3) = 1.

The programs for A079069, the canonical program `A079069.P5266602302643926682` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079069 has offset 1).

The definition of A079069 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)*a(n-3)+a(n-3)` (program `A079069.P5266602302643926682`, by `A079069.P5266602302643926682.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A079069.P17200887396974995264

`(1+a(n-2))*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A079069.P17200887396974995264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (1 + a (n - 2)) * a (n - 3)

end

end A079069.P17200887396974995264

namespace A079069

/-- `(1+a(n-2))*a(n-3)` -/
def P17200887396974995264.Spec : Prop :=
  ∀ n, (P17200887396974995264.a n : ℤ) = A079069 (n + 1)

theorem P17200887396974995264.correct : P17200887396974995264.Spec := by
  intro n
  simp only [A079069, Nat.add_sub_cancel, A079069.P17200887396974995264.a, A079069.P5266602302643926682.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A079069

/-! ## A079069.P5266602302643926682

`a(n-2)*a(n-3)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079069

/-- `a(n-2)*a(n-3)+a(n-3)` -/
def P5266602302643926682.Spec : Prop :=
  ∀ n, (P5266602302643926682.a n : ℤ) = A079069 (n + 1)

theorem P5266602302643926682.correct : P5266602302643926682.Spec := by
  intro n
  simp only [A079069, Nat.add_sub_cancel]

end A079069

/-! ## A079069.P8135420106403767575

`(a(n-2)+1)/a(n-3)^(-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A079069.P8135420106403767575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (a (n - 2) + 1) / a (n - 3) ^ (-1 : ℤ)

end

end A079069.P8135420106403767575

namespace A079069

/-- `(a(n-2)+1)/a(n-3)^(-1)` -/
def P8135420106403767575.Spec : Prop :=
  ∀ n, P8135420106403767575.a n = (A079069 (n + 1) : ℚ)

end A079069

/-! ## A079069.P12956708380094607688

`ratio[A078919(n+1)]`
-/

namespace A079069.P12956708380094607688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078919 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A079069.P12956708380094607688

namespace A079069

/-- `ratio[A078919(n+1)]` -/
def P12956708380094607688.Spec : Prop :=
  ∀ n, P12956708380094607688.a n = (A079069 (n + 1) : ℚ)

end A079069

/-! ## A079069.P17877175023868451936

`A078919(n+2)/A078919(n+1)`
-/

namespace A079069.P17877175023868451936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078919 (n + 2) : ℚ) / (A078919 (n + 1) : ℚ)

end

end A079069.P17877175023868451936

namespace A079069

/-- `A078919(n+2)/A078919(n+1)` -/
def P17877175023868451936.Spec : Prop :=
  ∀ n, P17877175023868451936.a n = (A079069 (n + 1) : ℚ)

end A079069

/-!
# A079070: Number of numbers < n having in binary representation the same number of 0's as n.

The programs for A079070, there is no canonical definition to state claims against.
-/

/-! ## A079070.P9839657633086437689

`A068076(A298847(n+1))`
-/

namespace A079070.P9839657633086437689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068076 (A298847 (n + 1)).toNat

end

end A079070.P9839657633086437689

/-! ## A079070.P17769157881942151601

`A263017(A298847(n+1))-A000120(A001316(n))`
-/

namespace A079070.P17769157881942151601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263017 (A298847 (n + 1)).toNat - A000120 (A001316 n).toNat

end

end A079070.P17769157881942151601

/-! ## A079070.P8385839334690086238

`A263017(A298847(n+1))+A000217(n)-A000124(n)`
-/

namespace A079070.P8385839334690086238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263017 (A298847 (n + 1)).toNat + (A000217 n - A000124 n)

end

end A079070.P8385839334690086238

/-! ## A079070.P13464131698348984026

`A070198(A048967(n))%A263017(A298847(n+1))`
-/

namespace A079070.P13464131698348984026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 (A048967 n).toNat) (A263017 (A298847 (n + 1)).toNat)

end

end A079070.P13464131698348984026

/-! ## A079070.P10174018930906996796

`A070198(n)%A263017(A298847(n+1))`
-/

namespace A079070.P10174018930906996796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A263017 (A298847 (n + 1)).toNat)

end

end A079070.P10174018930906996796

/-! ## A079070.P14150559269300025915

`A072828(n+1)%A263017(A298847(n+1))`
-/

namespace A079070.P14150559269300025915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A263017 (A298847 (n + 1)).toNat)

end

end A079070.P14150559269300025915

/-! ## A079070.P6273528010490017337

`A079071(A298847(n+1)+A140513(n))`
-/

namespace A079070.P6273528010490017337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079071 (A298847 (n + 1) + A140513 n).toNat

end

end A079070.P6273528010490017337

/-!
# A079071: Number of numbers < n whose binary representation has the same number of 0's and 1's as n does.

The programs for A079071, there is no canonical definition to state claims against.
-/

/-! ## A079071.P1978660994715619012

`A375216(n)-1`
-/

namespace A079071.P1978660994715619012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375216 n - 1

end

end A079071.P1978660994715619012

/-! ## A079071.P12364875006497979794

`A023444(A375216(n)+1)`
-/

namespace A079071.P12364875006497979794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A375216 n + 1).toNat

end

end A079071.P12364875006497979794

/-! ## A079071.P4670005972371755907

`A068076(n-A053644(n))`
-/

namespace A079071.P4670005972371755907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068076 ((n : ℤ) - A053644 n).toNat

end

end A079071.P4670005972371755907

/-! ## A079071.P13727537802726987190

`A263328(n)-A263328(A073137(n))`
-/

namespace A079071.P13727537802726987190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263328 n - A263328 (A073137 n).toNat

end

end A079071.P13727537802726987190

/-! ## A079071.P10456363826512660368

`A083800(n+1)%A375216(n)`
-/

namespace A079071.P10456363826512660368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A375216 n)

end

end A079071.P10456363826512660368

/-! ## A079071.P397409330356088774

`A070198(n)%A375216(n)`
-/

namespace A079071.P397409330356088774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A375216 n)

end

end A079071.P397409330356088774

/-! ## A079071.P4172369299369931953

`A079782(n+1)%A375216(n)`
-/

namespace A079071.P4172369299369931953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A375216 n)

end

end A079071.P4172369299369931953

/-! ## A079071.P7408137403311650682

`A083685(n+1)%A375216(n)`
-/

namespace A079071.P7408137403311650682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A375216 n)

end

end A079071.P7408137403311650682

/-! ## A079071.P14594168054480945934

`A121934(n+1)%A375216(n)`
-/

namespace A079071.P14594168054480945934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A375216 n)

end

end A079071.P14594168054480945934

/-! ## A079071.P3918460736286985160

`A030494(n+1)%A375216(n)`
-/

namespace A079071.P3918460736286985160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A375216 n)

end

end A079071.P3918460736286985160

/-! ## A079071.P3091288291167514390

`A072828(n+1)%A375216(n)`
-/

namespace A079071.P3091288291167514390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A375216 n)

end

end A079071.P3091288291167514390

/-!
# A079074: Sum of numbers < n having in binary representation the same number of 0's and 1's as n.

The programs for A079074, there is no canonical definition to state claims against.
-/

/-! ## A079074.P311611895841364706

`A079072(n)-A079072(A073137(n))`
-/

namespace A079074.P311611895841364706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079072 n - A079072 (A073137 n).toNat

end

end A079074.P311611895841364706

/-! ## A079074.P14232863232782599860

`A079073(n)-A079073(A073137(n))`
-/

namespace A079074.P14232863232782599860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079073 n - A079073 (A073137 n).toNat

end

end A079074.P14232863232782599860

/-!
# A079076: Numerator of Sum_{1 0} n/k.

The programs for A079076, there is no canonical definition to state claims against.
-/

/-! ## A079076.P11481275134492851473

`A000120(A007691(n+1))*A281085(n+1)`
-/

namespace A079076.P11481275134492851473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A007691 (n + 1)).toNat * A281085 (n + 1)

end

end A079076.P11481275134492851473

/-!
# A079078: a(0) = 1, a(1) = 2; for n > 1, a(n) = prime(n)*a(n-2).

The programs for A079078, the canonical program `A079078.P1988373255373327412` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079078 has offset 0).

The definition of A079078 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n)*a(n-2)` (program `A079078.P1988373255373327412`, by `A079078.P1988373255373327412.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A079078.P1988373255373327412

`A000040(n)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A079078

/-- `A000040(n)*a(n-2)` -/
def P1988373255373327412.Spec : Prop :=
  ∀ n, P1988373255373327412.a n = A079078 n

theorem P1988373255373327412.correct : P1988373255373327412.Spec := by
  intro n
  simp only [A079078]

end A079078

/-! ## A079078.P16565527015456144087

`a(n-2)*A006005(n)` with `a(0)=1, a(1)=2`
-/

namespace A079078.P16565527015456144087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) * A006005 n

end

end A079078.P16565527015456144087

namespace A079078

/-- `a(n-2)*A006005(n)` -/
def P16565527015456144087.Spec : Prop :=
  ∀ n, P16565527015456144087.a n = A079078 n

end A079078

/-! ## A079078.P10162412573242483436

`a(n-2)*A008578(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A079078.P10162412573242483436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) * A008578 (n + 1)

end

end A079078.P10162412573242483436

namespace A079078

/-- `a(n-2)*A008578(n+1)` -/
def P10162412573242483436.Spec : Prop :=
  ∀ n, P10162412573242483436.a n = A079078 n

end A079078

/-! ## A079078.P7447951697828299585

`∏[eq[n, ∏{d}[n, #]]]/a(n-1)` with `a(0)=1`
-/

namespace A079078.P7447951697828299585
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / a (n - 1)

end

end A079078.P7447951697828299585

namespace A079078

/-- `∏[eq[n, ∏{d}[n, #]]]/a(n-1)` -/
def P7447951697828299585.Spec : Prop :=
  ∀ n, P7447951697828299585.a n = (A079078 n : ℚ)

end A079078

/-! ## A079078.P2086423807936774775

`∏[lt[∏{d}[n, #], n+1]]/a(n-1)` with `a(0)=1`
-/

namespace A079078.P2086423807936774775
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), d

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / a (n - 1)

end

end A079078.P2086423807936774775

namespace A079078

/-- `∏[lt[∏{d}[n, #], n+1]]/a(n-1)` -/
def P2086423807936774775.Spec : Prop :=
  ∀ n, P2086423807936774775.a n = (A079078 n : ℚ)

end A079078

/-! ## A079078.P11084055493097064932

`A002110(n)/a(n-1)` with `a(0)=1`
-/

namespace A079078.P11084055493097064932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A002110 n : ℚ) / a (n - 1)

end

end A079078.P11084055493097064932

namespace A079078

/-- `A002110(n)/a(n-1)` -/
def P11084055493097064932.Spec : Prop :=
  ∀ n, P11084055493097064932.a n = (A079078 n : ℚ)

end A079078

/-! ## A079078.P16602766367880392100

`A121281(∑[n])/a(n-1)` with `a(0)=1`
-/

namespace A079078.P16602766367880392100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A121281 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / a (n - 1)

end

end A079078.P16602766367880392100

namespace A079078

/-- `A121281(∑[n])/a(n-1)` -/
def P16602766367880392100.Spec : Prop :=
  ∀ n, P16602766367880392100.a n = (A079078 n : ℚ)

end A079078

/-!
# A079079: a(n) = (prime(n)+1)*(prime(n+1)+1)/4.

The programs for A079079, the canonical program `A079079.P9221945843868535999` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079079 has offset 1).

The definition of A079079 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079079.P9221945843868535999

`(A000040(n+1)+1)*(A000040(n+2)+1)/4`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A079079

/-- `(A000040(n+1)+1)*(A000040(n+2)+1)/4` -/
def P9221945843868535999.Spec : Prop :=
  ∀ n, P9221945843868535999.a n = (A079079 (n + 1) : ℚ)

end A079079

/-! ## A079079.P945200980617174090

`A180617(n+1)/4`
-/

namespace A079079.P945200980617174090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180617 (n + 1) : ℚ) / 4

end

end A079079.P945200980617174090

namespace A079079

/-- `A180617(n+1)/4` -/
def P945200980617174090.Spec : Prop :=
  ∀ n, P945200980617174090.a n = (A079079 (n + 1) : ℚ)

end A079079

/-! ## A079079.P7160586823191389505

`ceil(A126199(n+1)/4)`
-/

namespace A079079.P7160586823191389505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A126199 (n + 1) : ℚ) / 4⌉

end

end A079079.P7160586823191389505

namespace A079079

/-- `ceil(A126199(n+1)/4)` -/
def P7160586823191389505.Spec : Prop :=
  ∀ n, P7160586823191389505.a n = A079079 (n + 1)

end A079079

/-! ## A079079.P6384040566468333769

`A079080(n+1)*A079081(n+1)`
-/

namespace A079079.P6384040566468333769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079080 (n + 1) * A079081 (n + 1)

end

end A079079.P6384040566468333769

namespace A079079

/-- `A079080(n+1)*A079081(n+1)` -/
def P6384040566468333769.Spec : Prop :=
  ∀ n, P6384040566468333769.a n = A079079 (n + 1)

end A079079

/-! ## A079079.P12083427759156310967

`A006254(n+1)/2*A008864(n+1)`
-/

namespace A079079.P12083427759156310967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006254 (n + 1) : ℚ) / 2 * (A008864 (n + 1) : ℚ)

end

end A079079.P12083427759156310967

namespace A079079

/-- `A006254(n+1)/2*A008864(n+1)` -/
def P12083427759156310967.Spec : Prop :=
  ∀ n, P12083427759156310967.a n = (A079079 (n + 1) : ℚ)

end A079079

/-! ## A079079.P13669988614474744217

`(A286624(n+1)+A065091(n+1))/4`
-/

namespace A079079.P13669988614474744217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286624 (n + 1) + A065091 (n + 1) : ℚ) / 4

end

end A079079.P13669988614474744217

namespace A079079

/-- `(A286624(n+1)+A065091(n+1))/4` -/
def P13669988614474744217.Spec : Prop :=
  ∀ n, P13669988614474744217.a n = (A079079 (n + 1) : ℚ)

end A079079

/-! ## A079079.P9811804360893069761

`A063086(n+1)*A309772(n+1)/4`
-/

namespace A079079.P9811804360893069761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063086 (n + 1) * A309772 (n + 1) : ℚ) / 4

end

end A079079.P9811804360893069761

namespace A079079

/-- `A063086(n+1)*A309772(n+1)/4` -/
def P9811804360893069761.Spec : Prop :=
  ∀ n, P9811804360893069761.a n = (A079079 (n + 1) : ℚ)

end A079079

/-! ## A079079.P11425236327697959540

`(A006094(n+1)+A001043(n+1)+1)/4`
-/

namespace A079079.P11425236327697959540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006094 (n + 1) + A001043 (n + 1) + 1 : ℚ) / 4

end

end A079079.P11425236327697959540

namespace A079079

/-- `(A006094(n+1)+A001043(n+1)+1)/4` -/
def P11425236327697959540.Spec : Prop :=
  ∀ n, P11425236327697959540.a n = (A079079 (n + 1) : ℚ)

end A079079

/-! ## A079079.P8328069185297308944

`A111333(n+1)+A005097(n+1)*A130291(n+1)`
-/

namespace A079079.P8328069185297308944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1) + A005097 (n + 1) * A130291 (n + 1)

end

end A079079.P8328069185297308944

namespace A079079

/-- `A111333(n+1)+A005097(n+1)*A130291(n+1)` -/
def P8328069185297308944.Spec : Prop :=
  ∀ n, P8328069185297308944.a n = A079079 (n + 1)

end A079079

/-! ## A079079.P6037531052368875066

`A006254(n+1)/A000040(n+1)*A034953(n+1)`
-/

namespace A079079.P6037531052368875066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006254 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ) * (A034953 (n + 1) : ℚ)

end

end A079079.P6037531052368875066

namespace A079079

/-- `A006254(n+1)/A000040(n+1)*A034953(n+1)` -/
def P6037531052368875066.Spec : Prop :=
  ∀ n, P6037531052368875066.a n = (A079079 (n + 1) : ℚ)

end A079079

/-! ## A079079.P7351817504727991307

`A008864(n+2)*A008864(n+1)/4`
-/

namespace A079079.P7351817504727991307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 2) * A008864 (n + 1) : ℚ) / 4

end

end A079079.P7351817504727991307

namespace A079079

/-- `A008864(n+2)*A008864(n+1)/4` -/
def P7351817504727991307.Spec : Prop :=
  ∀ n, P7351817504727991307.a n = (A079079 (n + 1) : ℚ)

end A079079

/-! ## A079079.P3408164478235164309

`A111333(n+1)+A102781(n+2)*A130291(n+1)`
-/

namespace A079079.P3408164478235164309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1) + A102781 (n + 2) * A130291 (n + 1)

end

end A079079.P3408164478235164309

namespace A079079

/-- `A111333(n+1)+A102781(n+2)*A130291(n+1)` -/
def P3408164478235164309.Spec : Prop :=
  ∀ n, P3408164478235164309.a n = A079079 (n + 1)

end A079079

/-! ## A079079.P6243314348804755290

`A111333(n+1)+A130290(n+2)*A130291(n+1)`
-/

namespace A079079.P6243314348804755290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1) + A130290 (n + 2) * A130291 (n + 1)

end

end A079079.P6243314348804755290

namespace A079079

/-- `A111333(n+1)+A130290(n+2)*A130291(n+1)` -/
def P6243314348804755290.Spec : Prop :=
  ∀ n, P6243314348804755290.a n = A079079 (n + 1)

end A079079

/-! ## A079079.P8258285678543087675

`A079081(n+1)/A079082(n+1)*A023523(n+2)`
-/

namespace A079079.P8258285678543087675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079081 (n + 1) : ℚ) / (A079082 (n + 1) : ℚ) * (A023523 (n + 2) : ℚ)

end

end A079079.P8258285678543087675

namespace A079079

/-- `A079081(n+1)/A079082(n+1)*A023523(n+2)` -/
def P8258285678543087675.Spec : Prop :=
  ∀ n, P8258285678543087675.a n = (A079079 (n + 1) : ℚ)

end A079079

/-! ## A079079.P5447744321368212603

`∑{d}[A023515(n+2)+1, #]/4`
-/

namespace A079079.P5447744321368212603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 2) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℚ) / 4

end

end A079079.P5447744321368212603

namespace A079079

/-- `∑{d}[A023515(n+2)+1, #]/4` -/
def P5447744321368212603.Spec : Prop :=
  ∀ n, P5447744321368212603.a n = (A079079 (n + 1) : ℚ)

end A079079

/-!
# A079080: a(n) = gcd((prime(n)+1)*(prime(n+1)+1)/4, prime(n)*prime(n+1)+1).

The programs for A079080, the canonical program `A079080.P16274895171269666363` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079080 has offset 1).

The definition of A079080 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd((A000040(n+1)+1)*(A000040(n+2)+1)/4, A000040(n+1)*A000040(n+2)+1)` (program `A079080.P16274895171269666363`, by `A079080.P16274895171269666363.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A079080.P14548325111839159972

`gcd(A079079(n+1), A023523(n+2))`
-/

namespace A079080.P14548325111839159972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079079 (n + 1)) (A023523 (n + 2))

end

end A079080.P14548325111839159972

namespace A079080

/-- `gcd(A079079(n+1), A023523(n+2))` -/
def P14548325111839159972.Spec : Prop :=
  ∀ n, (P14548325111839159972.a n : ℤ) = A079080 (n + 1)

end A079080

/-! ## A079080.P16274895171269666363

`gcd((A000040(n+1)+1)*(A000040(n+2)+1)/4, A000040(n+1)*A000040(n+2)+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A079080

/-- `gcd((A000040(n+1)+1)*(A000040(n+2)+1)/4, A000040(n+1)*A000040(n+2)+1)` -/
def P16274895171269666363.Spec : Prop :=
  ∀ n, (P16274895171269666363.a n : ℤ) = A079080 (n + 1)

theorem P16274895171269666363.correct : P16274895171269666363.Spec := by
  intro n
  simp only [A079080, Nat.add_sub_cancel]

end A079080

/-! ## A079080.P15914601799176188642

`gcd(Δ[A061802(n)], A079079(n+1))`
-/

namespace A079080.P15914601799176188642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A079079 (n + 1))

end

end A079080.P15914601799176188642

namespace A079080

/-- `gcd(Δ[A061802(n)], A079079(n+1))` -/
def P15914601799176188642.Spec : Prop :=
  ∀ n, (P15914601799176188642.a n : ℤ) = A079080 (n + 1)

end A079080

/-! ## A079080.P12388139340348429838

`A079079(n+1)/A079081(n+1)`
-/

namespace A079080.P12388139340348429838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079079 (n + 1) : ℚ) / (A079081 (n + 1) : ℚ)

end

end A079080.P12388139340348429838

namespace A079080

/-- `A079079(n+1)/A079081(n+1)` -/
def P12388139340348429838.Spec : Prop :=
  ∀ n, P12388139340348429838.a n = (A079080 (n + 1) : ℚ)

end A079080

/-! ## A079080.P14160508124010882700

`ceil(A006094(n+1)/A079082(n+1))`
-/

namespace A079080.P14160508124010882700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006094 (n + 1) : ℚ) / (A079082 (n + 1) : ℚ)⌉

end

end A079080.P14160508124010882700

namespace A079080

/-- `ceil(A006094(n+1)/A079082(n+1))` -/
def P14160508124010882700.Spec : Prop :=
  ∀ n, P14160508124010882700.a n = A079080 (n + 1)

end A079080

/-! ## A079080.P420185340563018416

`gcd(A079079(n+1)+A001043(n+1), A001043(n+1))`
-/

namespace A079080.P420185340563018416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079079 (n + 1) + A001043 (n + 1)) (A001043 (n + 1))

end

end A079080.P420185340563018416

namespace A079080

/-- `gcd(A079079(n+1)+A001043(n+1), A001043(n+1))` -/
def P420185340563018416.Spec : Prop :=
  ∀ n, (P420185340563018416.a n : ℤ) = A079080 (n + 1)

end A079080

/-! ## A079080.P10074934414145719643

`A023523(n+2)/A079082(n+1)`
-/

namespace A079080.P10074934414145719643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023523 (n + 2) : ℚ) / (A079082 (n + 1) : ℚ)

end

end A079080.P10074934414145719643

namespace A079080

/-- `A023523(n+2)/A079082(n+1)` -/
def P10074934414145719643.Spec : Prop :=
  ∀ n, P10074934414145719643.a n = (A079080 (n + 1) : ℚ)

end A079080

/-! ## A079080.P3089585633726328775

`ceil(A000203(A006094(n+1))/4)/A079081(n+1)`
-/

namespace A079080.P3089585633726328775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A000203 (A006094 (n + 1)).toNat : ℚ) / 4⌉ : ℚ) / (A079081 (n + 1) : ℚ)

end

end A079080.P3089585633726328775

namespace A079080

/-- `ceil(A000203(A006094(n+1))/4)/A079081(n+1)` -/
def P3089585633726328775.Spec : Prop :=
  ∀ n, P3089585633726328775.a n = (A079080 (n + 1) : ℚ)

end A079080

/-!
# A079081: Numerator of (prime(n)+1)*(prime(n+1)+1)/(4*(prime(n)*prime(n+1)+1)).

The programs for A079081, the canonical program `A079081.P14946958580795685552` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079081 has offset 1).

The definition of A079081 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079081.P14946958580795685552

`A079079(n+1)/A079080(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A079081

/-- `A079079(n+1)/A079080(n+1)` -/
def P14946958580795685552.Spec : Prop :=
  ∀ n, P14946958580795685552.a n = (A079081 (n + 1) : ℚ)

end A079081

/-! ## A079081.P9548741709484251638

`(A079079(n+1)*A079082(n+1))%A006094(n+1)`
-/

namespace A079081.P9548741709484251638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079079 (n + 1) * A079082 (n + 1)) (A006094 (n + 1))

end

end A079081.P9548741709484251638

namespace A079081

/-- `(A079079(n+1)*A079082(n+1))%A006094(n+1)` -/
def P9548741709484251638.Spec : Prop :=
  ∀ n, P9548741709484251638.a n = A079081 (n + 1)

end A079081

/-! ## A079081.P17216490425828627648

`A079079(n+1)/gcd(A001043(n+1), A079079(n+1))`
-/

namespace A079081.P17216490425828627648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079079 (n + 1) : ℚ) / (Int.gcd (A001043 (n + 1)) (A079079 (n + 1)) : ℚ)

end

end A079081.P17216490425828627648

namespace A079081

/-- `A079079(n+1)/gcd(A001043(n+1), A079079(n+1))` -/
def P17216490425828627648.Spec : Prop :=
  ∀ n, P17216490425828627648.a n = (A079081 (n + 1) : ℚ)

end A079081

/-! ## A079081.P649815142414276237

`lcm(A079079(n+1), A099407(n+1))/A099407(n+1)`
-/

namespace A079081.P649815142414276237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A079079 (n + 1)) (A099407 (n + 1)) : ℚ) / (A099407 (n + 1) : ℚ)

end

end A079081.P649815142414276237

namespace A079081

/-- `lcm(A079079(n+1), A099407(n+1))/A099407(n+1)` -/
def P649815142414276237.Spec : Prop :=
  ∀ n, P649815142414276237.a n = (A079081 (n + 1) : ℚ)

end A079081

/-! ## A079081.P14565741736275786584

`A079079(n+1)*A079082(n+1)/A023523(n+2)`
-/

namespace A079081.P14565741736275786584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079079 (n + 1) * A079082 (n + 1) : ℚ) / (A023523 (n + 2) : ℚ)

end

end A079081.P14565741736275786584

namespace A079081

/-- `A079079(n+1)*A079082(n+1)/A023523(n+2)` -/
def P14565741736275786584.Spec : Prop :=
  ∀ n, P14565741736275786584.a n = (A079081 (n + 1) : ℚ)

end A079081

/-! ## A079081.P1825163658320644412

`ceil(A000203(A006094(n+1))/4)/A079080(n+1)`
-/

namespace A079081.P1825163658320644412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A000203 (A006094 (n + 1)).toNat : ℚ) / 4⌉ : ℚ) / (A079080 (n + 1) : ℚ)

end

end A079081.P1825163658320644412

namespace A079081

/-- `ceil(A000203(A006094(n+1))/4)/A079080(n+1)` -/
def P1825163658320644412.Spec : Prop :=
  ∀ n, P1825163658320644412.a n = (A079081 (n + 1) : ℚ)

end A079081

/-!
# A079082: Denominator of (prime(n)+1)*(prime(n+1)+1)/(4*(prime(n)*prime(n+1)+1)).

The programs for A079082, the canonical program `A079082.P9463845105595939532` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079082 has offset 1).

The definition of A079082 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A079082.P9463845105595939532

`A023523(n+2)/A079080(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A079082

/-- `A023523(n+2)/A079080(n+1)` -/
def P9463845105595939532.Spec : Prop :=
  ∀ n, P9463845105595939532.a n = (A079082 (n + 1) : ℚ)

end A079082

/-! ## A079082.P1401266110138794929

`(A006094(n+1)+1)/A079080(n+1)`
-/

namespace A079082.P1401266110138794929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006094 (n + 1) + 1 : ℚ) / (A079080 (n + 1) : ℚ)

end

end A079082.P1401266110138794929

namespace A079082

/-- `(A006094(n+1)+1)/A079080(n+1)` -/
def P1401266110138794929.Spec : Prop :=
  ∀ n, P1401266110138794929.a n = (A079082 (n + 1) : ℚ)

end A079082

/-! ## A079082.P526400796589794847

`(A037166(n+1)+A008864(n+1))/A079080(n+1)`
-/

namespace A079082.P526400796589794847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037166 (n + 1) + A008864 (n + 1) : ℚ) / (A079080 (n + 1) : ℚ)

end

end A079082.P526400796589794847

namespace A079082

/-- `(A037166(n+1)+A008864(n+1))/A079080(n+1)` -/
def P526400796589794847.Spec : Prop :=
  ∀ n, P526400796589794847.a n = (A079082 (n + 1) : ℚ)

end A079082

/-! ## A079082.P13263719865417695067

`A079081(n+1)/A079079(n+1)*A023523(n+2)`
-/

namespace A079082.P13263719865417695067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079081 (n + 1) : ℚ) / (A079079 (n + 1) : ℚ) * (A023523 (n + 2) : ℚ)

end

end A079082.P13263719865417695067

namespace A079082

/-- `A079081(n+1)/A079079(n+1)*A023523(n+2)` -/
def P13263719865417695067.Spec : Prop :=
  ∀ n, P13263719865417695067.a n = (A079082 (n + 1) : ℚ)

end A079082

/-! ## A079082.P7983451716370020115

`A063041(p?[A004273(n)])/A079080(n+1)`
-/

namespace A079082.P7983451716370020115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063041 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / (A079080 (n + 1) : ℚ)

end

end A079082.P7983451716370020115

namespace A079082

/-- `A063041(p?[A004273(n)])/A079080(n+1)` -/
def P7983451716370020115.Spec : Prop :=
  ∀ n, P7983451716370020115.a n = (A079082 (n + 1) : ℚ)

end A079082

/-! ## A079082.P781982573308206005

`A063041(p?[A005408(n)])/A079080(n+1)`
-/

namespace A079082.P781982573308206005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063041 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / (A079080 (n + 1) : ℚ)

end

end A079082.P781982573308206005

namespace A079082

/-- `A063041(p?[A005408(n)])/A079080(n+1)` -/
def P781982573308206005.Spec : Prop :=
  ∀ n, P781982573308206005.a n = (A079082 (n + 1) : ℚ)

end A079082

/-! ## A079082.P2922974182709839416

`A063041(A065091(n+1))/A079080(n+1)`
-/

namespace A079082.P2922974182709839416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063041 (A065091 (n + 1)).toNat : ℚ) / (A079080 (n + 1) : ℚ)

end

end A079082.P2922974182709839416

namespace A079082

/-- `A063041(A065091(n+1))/A079080(n+1)` -/
def P2922974182709839416.Spec : Prop :=
  ∀ n, P2922974182709839416.a n = (A079082 (n + 1) : ℚ)

end A079082

/-! ## A079082.P8533342257227242674

`A063041(p?[A116570(n)])/A079080(n+1)`
-/

namespace A079082.P8533342257227242674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063041 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / (A079080 (n + 1) : ℚ)

end

end A079082.P8533342257227242674

namespace A079082

/-- `A063041(p?[A116570(n)])/A079080(n+1)` -/
def P8533342257227242674.Spec : Prop :=
  ∀ n, P8533342257227242674.a n = (A079082 (n + 1) : ℚ)

end A079082

/-!
# A079083: Smallest odd prime factor of (prime(n)+1)*(prime(n+1)+1)/4.

The programs for A079083, there is no canonical definition to state claims against.
-/

/-! ## A079083.P11376299657632617662

`A078701(A079079(n+1))`
-/

namespace A079083.P11376299657632617662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (A079079 (n + 1)).toNat

end

end A079083.P11376299657632617662

/-! ## A079083.P10851803125824544740

`A020639(∏{p}[A309772(n+1), #]/2)`
-/

namespace A079083.P10851803125824544740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℚ) / 2)).toNat

end

end A079083.P10851803125824544740

/-! ## A079083.P15279708920018722447

`A020639(∏{p}[A079093(n+1), A000265(#)])`
-/

namespace A079083.P15279708920018722447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000265 p).toNat

end

end A079083.P15279708920018722447

/-! ## A079083.P18406807320892497014

`A020639(∏{p}[A079079(n+1), A026741(#)])`
-/

namespace A079083.P18406807320892497014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A026741 p).toNat

end

end A079083.P18406807320892497014

/-! ## A079083.P16090937838063467214

`A020639(∏{p}[A079093(n+1), A026741(#)])`
-/

namespace A079083.P16090937838063467214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A026741 p).toNat

end

end A079083.P16090937838063467214

/-! ## A079083.P1799531771549070174

`A020639(∏{p}[A309772(n+1), A026741(#)])`
-/

namespace A079083.P1799531771549070174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A026741 p).toNat

end

end A079083.P1799531771549070174

/-! ## A079083.P16982517221088673749

`A020639(A023511(n+1)*A023511(n+2))`
-/

namespace A079083.P16982517221088673749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A023511 (n + 1) * A023511 (n + 2)).toNat

end

end A079083.P16982517221088673749

/-! ## A079083.P12383954649641610638

`A020639(A057024(n+1)*A057024(n+2))`
-/

namespace A079083.P12383954649641610638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A057024 (n + 1) * A057024 (n + 2)).toNat

end

end A079083.P12383954649641610638

/-! ## A079083.P7891189140560229990

`A020639(lcm(A023511(n+1), A023511(n+2)))`
-/

namespace A079083.P7891189140560229990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lcm (A023511 (n + 1)) (A023511 (n + 2)))

end

end A079083.P7891189140560229990

/-! ## A079083.P10235691911503320099

`A020639(lcm(A057024(n+1), A057024(n+2)))`
-/

namespace A079083.P10235691911503320099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lcm (A057024 (n + 1)) (A057024 (n + 2)))

end

end A079083.P10235691911503320099

/-! ## A079083.P11103484611276804977

`A020639(A000265(A079093(n+1)))`
-/

namespace A079083.P11103484611276804977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000265 (A079093 (n + 1)).toNat).toNat

end

end A079083.P11103484611276804977

/-! ## A079083.P10047569342497635735

`A020639(A000265(A079080(n+1)*A079081(n+1)))`
-/

namespace A079083.P10047569342497635735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000265 (A079080 (n + 1) * A079081 (n + 1)).toNat).toNat

end

end A079083.P10047569342497635735

/-!
# A079084: Greatest prime factor of (prime(n)+1)*(prime(n+1)+1)/4.

The programs for A079084, the canonical program `A079084.P17451903791275680554` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079084 has offset 1).

The definition of A079084 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A079084.P17451903791275680554

`A006530(A079079(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A079084

/-- `A006530(A079079(n+1))` -/
def P17451903791275680554.Spec : Prop :=
  ∀ n, P17451903791275680554.a n = A079084 (n + 1)

theorem P17451903791275680554.correct : P17451903791275680554.Spec := by
  intro n
  simp only [A079084, Nat.add_sub_cancel]

end A079084

/-! ## A079084.P4269153934147464082

`A006530(∏{p}[A006094(n+1), A126288(#)])`
-/

namespace A079084.P4269153934147464082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A126288 p).toNat

end

end A079084.P4269153934147464082

namespace A079084

/-- `A006530(∏{p}[A006094(n+1), A126288(#)])` -/
def P4269153934147464082.Spec : Prop :=
  ∀ n, P4269153934147464082.a n = A079084 (n + 1)

end A079084

/-! ## A079084.P5278263545126667108

`A006530(A023509(n+1)*A023509(n+2))`
-/

namespace A079084.P5278263545126667108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A023509 (n + 1) * A023509 (n + 2)).toNat

end

end A079084.P5278263545126667108

namespace A079084

/-- `A006530(A023509(n+1)*A023509(n+2))` -/
def P5278263545126667108.Spec : Prop :=
  ∀ n, P5278263545126667108.a n = A079084 (n + 1)

end A079084

/-! ## A079084.P11615519851513790526

`A006530(lcm(A023509(n+1), A023509(n+2)))`
-/

namespace A079084.P11615519851513790526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm (A023509 (n + 1)) (A023509 (n + 2)))

end

end A079084.P11615519851513790526

namespace A079084

/-- `A006530(lcm(A023509(n+1), A023509(n+2)))` -/
def P11615519851513790526.Spec : Prop :=
  ∀ n, P11615519851513790526.a n = A079084 (n + 1)

end A079084

/-! ## A079084.P12935641233165228373

`A006530(A006530(A008864(n+1))*A006254(n+1))`
-/

namespace A079084.P12935641233165228373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006530 (A008864 (n + 1)).toNat * A006254 (n + 1)).toNat

end

end A079084.P12935641233165228373

namespace A079084

/-- `A006530(A006530(A008864(n+1))*A006254(n+1))` -/
def P12935641233165228373.Spec : Prop :=
  ∀ n, P12935641233165228373.a n = A079084 (n + 1)

end A079084

/-! ## A079084.P11168816757369655812

`A006530(A079093(n+1)/A020639(A079080(n+1)))`
-/

namespace A079084.P11168816757369655812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A079093 (n + 1) : ℚ) / (A020639 (A079080 (n + 1)).toNat : ℚ))).toNat

end

end A079084.P11168816757369655812

namespace A079084

/-- `A006530(A079093(n+1)/A020639(A079080(n+1)))` -/
def P11168816757369655812.Spec : Prop :=
  ∀ n, P11168816757369655812.a n = A079084 (n + 1)

end A079084

/-! ## A079084.P16116058325490337774

`A006530(A006530(A079081(n+1))*A079080(n+1))`
-/

namespace A079084.P16116058325490337774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006530 (A079081 (n + 1)).toNat * A079080 (n + 1)).toNat

end

end A079084.P16116058325490337774

namespace A079084

/-- `A006530(A006530(A079081(n+1))*A079080(n+1))` -/
def P16116058325490337774.Spec : Prop :=
  ∀ n, P16116058325490337774.a n = A079084 (n + 1)

end A079084

/-! ## A079084.P14144413846839789916

`A006530(A079093(n+1))`
-/

namespace A079084.P14144413846839789916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A079093 (n + 1)).toNat

end

end A079084.P14144413846839789916

namespace A079084

/-- `A006530(A079093(n+1))` -/
def P14144413846839789916.Spec : Prop :=
  ∀ n, P14144413846839789916.a n = A079084 (n + 1)

end A079084

/-! ## A079084.P7197493509748267932

`A006530((A005097(n+1)+1)*A057024(n+1))`
-/

namespace A079084.P7197493509748267932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((A005097 (n + 1) + 1) * A057024 (n + 1)).toNat

end

end A079084.P7197493509748267932

namespace A079084

/-- `A006530((A005097(n+1)+1)*A057024(n+1))` -/
def P7197493509748267932.Spec : Prop :=
  ∀ n, P7197493509748267932.a n = A079084 (n + 1)

end A079084

/-! ## A079084.P14320169521869093384

`A006530(A309772(n+1)/2)`
-/

namespace A079084.P14320169521869093384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A309772 (n + 1) : ℚ) / 2)).toNat

end

end A079084.P14320169521869093384

namespace A079084

/-- `A006530(A309772(n+1)/2)` -/
def P14320169521869093384.Spec : Prop :=
  ∀ n, P14320169521869093384.a n = A079084 (n + 1)

end A079084

/-! ## A079084.P3747853155803988731

`A006530(A079080(n+1)*A079081(n+1))`
-/

namespace A079084.P3747853155803988731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A079080 (n + 1) * A079081 (n + 1)).toNat

end

end A079084.P3747853155803988731

namespace A079084

/-- `A006530(A079080(n+1)*A079081(n+1))` -/
def P3747853155803988731.Spec : Prop :=
  ∀ n, P3747853155803988731.a n = A079084 (n + 1)

end A079084

/-! ## A079084.P16582775097592610294

`A006530(lcm(A079080(n+1), A079081(n+1)))`
-/

namespace A079084.P16582775097592610294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm (A079080 (n + 1)) (A079081 (n + 1)))

end

end A079084.P16582775097592610294

namespace A079084

/-- `A006530(lcm(A079080(n+1), A079081(n+1)))` -/
def P16582775097592610294.Spec : Prop :=
  ∀ n, P16582775097592610294.a n = A079084 (n + 1)

end A079084

/-!
# A079085: Number of distinct prime factors of (prime(n)+1)*(prime(n+1)+1)/4.

The programs for A079085, the canonical program `A079085.P14446471783722856133` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079085 has offset 1).

The definition of A079085 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A079085.P14446471783722856133

`A001221(A079079(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A079085

/-- `A001221(A079079(n+1))` -/
def P14446471783722856133.Spec : Prop :=
  ∀ n, P14446471783722856133.a n = A079085 (n + 1)

theorem P14446471783722856133.correct : P14446471783722856133.Spec := by
  intro n
  simp only [A079085, Nat.add_sub_cancel]

end A079085

/-! ## A079085.P5317628270432158747

`A001221((A000040(n+1)+1)*(A000040(n+2)+1)/4)`
-/

namespace A079085.P5317628270432158747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway (((A000040 (n + 1) + 1) * (A000040 (n + 2) + 1) : ℚ) / 4)).toNat

end

end A079085.P5317628270432158747

namespace A079085

/-- `A001221((A000040(n+1)+1)*(A000040(n+2)+1)/4)` -/
def P5317628270432158747.Spec : Prop :=
  ∀ n, P5317628270432158747.a n = A079085 (n + 1)

end A079085

/-! ## A079085.P15859101647096427914

`∑{e}[A079093(n+1), #]`
-/

namespace A079085.P15859101647096427914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079093 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A079085.P15859101647096427914

namespace A079085

/-- `∑{e}[A079093(n+1), #]` -/
def P15859101647096427914.Spec : Prop :=
  ∀ n, (P15859101647096427914.a n : ℤ) = A079085 (n + 1)

end A079085

/-! ## A079085.P13716402021987537937

`∑{p}[A079079(n+1), A331186(#)]`
-/

namespace A079085.P13716402021987537937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A331186 p

end

end A079085.P13716402021987537937

namespace A079085

/-- `∑{p}[A079079(n+1), A331186(#)]` -/
def P13716402021987537937.Spec : Prop :=
  ∀ n, P13716402021987537937.a n = A079085 (n + 1)

end A079085

/-! ## A079085.P12236234958123231022

`∑{e}[A079079(n+1), A143259(#²)]`
-/

namespace A079085.P12236234958123231022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A143259 (Nat.factorization (f1 n).natAbs p ^ 2)

end

end A079085.P12236234958123231022

namespace A079085

/-- `∑{e}[A079079(n+1), A143259(#²)]` -/
def P12236234958123231022.Spec : Prop :=
  ∀ n, P12236234958123231022.a n = A079085 (n + 1)

end A079085

/-! ## A079085.P5605141054118549337

`∑{p}[A079079(n+1), A328712(#)+1]`
-/

namespace A079085.P5605141054118549337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A328712 p + 1)

end

end A079085.P5605141054118549337

namespace A079085

/-- `∑{p}[A079079(n+1), A328712(#)+1]` -/
def P5605141054118549337.Spec : Prop :=
  ∀ n, P5605141054118549337.a n = A079085 (n + 1)

end A079085

/-! ## A079085.P9890907959385201156

`∑{e}[A079079(n+1), A195120(A034968(#))]`
-/

namespace A079085.P9890907959385201156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A195120 (A034968 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A079085.P9890907959385201156

namespace A079085

/-- `∑{e}[A079079(n+1), A195120(A034968(#))]` -/
def P9890907959385201156.Spec : Prop :=
  ∀ n, P9890907959385201156.a n = A079085 (n + 1)

end A079085

/-! ## A079085.P7292074734925379045

`A001222(∏{p}[A079079(n+1), A001222(#)+1])`
-/

namespace A079085.P7292074734925379045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A001222 p + 1)).toNat

end

end A079085.P7292074734925379045

namespace A079085

/-- `A001222(∏{p}[A079079(n+1), A001222(#)+1])` -/
def P7292074734925379045.Spec : Prop :=
  ∀ n, P7292074734925379045.a n = A079085 (n + 1)

end A079085

/-! ## A079085.P5210269142071704253

`∑{p}[A079079(n+1), A151512(2*A028641(#))]`
-/

namespace A079085.P5210269142071704253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A151512 (2 * A028641 p).toNat

end

end A079085.P5210269142071704253

namespace A079085

/-- `∑{p}[A079079(n+1), A151512(2*A028641(#))]` -/
def P5210269142071704253.Spec : Prop :=
  ∀ n, P5210269142071704253.a n = A079085 (n + 1)

end A079085

/-! ## A079085.P8308954088102668155

`∑{p}[A079079(n+1), A257089(#)]`
-/

namespace A079085.P8308954088102668155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A257089 p

end

end A079085.P8308954088102668155

namespace A079085

/-- `∑{p}[A079079(n+1), A257089(#)]` -/
def P8308954088102668155.Spec : Prop :=
  ∀ n, P8308954088102668155.a n = A079085 (n + 1)

end A079085

/-! ## A079085.P7593997104744997434

`A001222(∏{p}[A079079(n+1), A001222(#²)])`
-/

namespace A079085.P7593997104744997434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 (p ^ 2)).toNat

end

end A079085.P7593997104744997434

namespace A079085

/-- `A001222(∏{p}[A079079(n+1), A001222(#²)])` -/
def P7593997104744997434.Spec : Prop :=
  ∀ n, P7593997104744997434.a n = A079085 (n + 1)

end A079085

/-! ## A079085.P17362218445214765575

`A001221(A079093(n+1))`
-/

namespace A079085.P17362218445214765575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A079093 (n + 1)).toNat

end

end A079085.P17362218445214765575

namespace A079085

/-- `A001221(A079093(n+1))` -/
def P17362218445214765575.Spec : Prop :=
  ∀ n, P17362218445214765575.a n = A079085 (n + 1)

end A079085

/-! ## A079085.P10161334938905201703

`A001222(∏{p}[A079079(n+1), #])`
-/

namespace A079085.P10161334938905201703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A079085.P10161334938905201703

namespace A079085

/-- `A001222(∏{p}[A079079(n+1), #])` -/
def P10161334938905201703.Spec : Prop :=
  ∀ n, P10161334938905201703.a n = A079085 (n + 1)

end A079085

/-! ## A079085.P1694362939779650856

`A001221(A180617(n+1)/4)`
-/

namespace A079085.P1694362939779650856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A180617 (n + 1) : ℚ) / 4)).toNat

end

end A079085.P1694362939779650856

namespace A079085

/-- `A001221(A180617(n+1)/4)` -/
def P1694362939779650856.Spec : Prop :=
  ∀ n, P1694362939779650856.a n = A079085 (n + 1)

theorem P1694362939779650856.correct : P1694362939779650856.Spec := by
  intro n
  simp only [A079085, Nat.add_sub_cancel, A079085.P1694362939779650856.a, A079085.P14446471783722856133.a, A001221, A001221.P10258181745752134128.a, A079079, A079079.P9221945843868535999.a, A180617, A180617.P4406684303062301047.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A006094, A006094.P10257567645245129766.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079085

/-! ## A079085.P2619208582191272848

`A001221(A079080(n+1)*A079081(n+1))`
-/

namespace A079085.P2619208582191272848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A079080 (n + 1) * A079081 (n + 1)).toNat

end

end A079085.P2619208582191272848

namespace A079085

/-- `A001221(A079080(n+1)*A079081(n+1))` -/
def P2619208582191272848.Spec : Prop :=
  ∀ n, P2619208582191272848.a n = A079085 (n + 1)

end A079085

/-! ## A079085.P8536719142727275521

`A001221(lcm(A111333(n+1), A111333(n+2)))`
-/

namespace A079085.P8536719142727275521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A111333 (n + 1)) (A111333 (n + 2)))

end

end A079085.P8536719142727275521

namespace A079085

/-- `A001221(lcm(A111333(n+1), A111333(n+2)))` -/
def P8536719142727275521.Spec : Prop :=
  ∀ n, P8536719142727275521.a n = A079085 (n + 1)

end A079085

/-!
# A079086: Total number of prime factors of (prime(n)+1)*(prime(n+1)+1)/4.

The programs for A079086, the canonical program `A079086.P16614913600754652005` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079086 has offset 1).

The definition of A079086 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A079086.P16614913600754652005

`A001222(A079079(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A079086

/-- `A001222(A079079(n+1))` -/
def P16614913600754652005.Spec : Prop :=
  ∀ n, P16614913600754652005.a n = A079086 (n + 1)

theorem P16614913600754652005.correct : P16614913600754652005.Spec := by
  intro n
  simp only [A079086, Nat.add_sub_cancel]

end A079086

/-! ## A079086.P2962868192673544990

`A001222((A000040(n+1)+1)*(A000040(n+2)+1)/4)`
-/

namespace A079086.P2962868192673544990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (((A000040 (n + 1) + 1) * (A000040 (n + 2) + 1) : ℚ) / 4)).toNat

end

end A079086.P2962868192673544990

namespace A079086

/-- `A001222((A000040(n+1)+1)*(A000040(n+2)+1)/4)` -/
def P2962868192673544990.Spec : Prop :=
  ∀ n, P2962868192673544990.a n = A079086 (n + 1)

end A079086

/-! ## A079086.P8818626701959393373

`A001222(A006254(n+1))+A001222(A111333(n+1))`
-/

namespace A079086.P8818626701959393373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006254 (n + 1)).toNat + A001222 (A111333 (n + 1)).toNat

end

end A079086.P8818626701959393373

namespace A079086

/-- `A001222(A006254(n+1))+A001222(A111333(n+1))` -/
def P8818626701959393373.Spec : Prop :=
  ∀ n, P8818626701959393373.a n = A079086 (n + 1)

end A079086

/-! ## A079086.P5138292085083428126

`A023514(n+2)+A023514(n+1)-2`
-/

namespace A079086.P5138292085083428126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023514 (n + 2) + (A023514 (n + 1) - 2)

end

end A079086.P5138292085083428126

namespace A079086

/-- `A023514(n+2)+A023514(n+1)-2` -/
def P5138292085083428126.Spec : Prop :=
  ∀ n, P5138292085083428126.a n = A079086 (n + 1)

end A079086

/-! ## A079086.P7905747677690159473

`A001222(A102781(n+2)+1)+A001222(A102781(n+1)+1)`
-/

namespace A079086.P7905747677690159473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A102781 (n + 2) + 1).toNat + A001222 (A102781 (n + 1) + 1).toNat

end

end A079086.P7905747677690159473

namespace A079086

/-- `A001222(A102781(n+2)+1)+A001222(A102781(n+1)+1)` -/
def P7905747677690159473.Spec : Prop :=
  ∀ n, P7905747677690159473.a n = A079086 (n + 1)

end A079086

/-! ## A079086.P9932408719138769486

`A252736(A000040(n+2)+1)+A252736(A000040(n+1)+1)`
-/

namespace A079086.P9932408719138769486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A000040 (n + 2) + 1).toNat + A252736 (A000040 (n + 1) + 1).toNat

end

end A079086.P9932408719138769486

namespace A079086

/-- `A252736(A000040(n+2)+1)+A252736(A000040(n+1)+1)` -/
def P9932408719138769486.Spec : Prop :=
  ∀ n, P9932408719138769486.a n = A079086 (n + 1)

end A079086

/-! ## A079086.P15957351071908869644

`∑{e}[A079080(n+1)*A079081(n+1), #]`
-/

namespace A079086.P15957351071908869644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079080 (n + 1) * A079081 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A079086.P15957351071908869644

namespace A079086

/-- `∑{e}[A079080(n+1)*A079081(n+1), #]` -/
def P15957351071908869644.Spec : Prop :=
  ∀ n, (P15957351071908869644.a n : ℤ) = A079086 (n + 1)

end A079086

/-! ## A079086.P17069416726659944022

`A001222(A278228(n+2)*A278228(n+1))-2`
-/

namespace A079086.P17069416726659944022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278228 (n + 2) * A278228 (n + 1)).toNat - 2

end

end A079086.P17069416726659944022

namespace A079086

/-- `A001222(A278228(n+2)*A278228(n+1))-2` -/
def P17069416726659944022.Spec : Prop :=
  ∀ n, P17069416726659944022.a n = A079086 (n + 1)

end A079086

/-! ## A079086.P530661750770236884

`A001222(A180617(n+1)/4)`
-/

namespace A079086.P530661750770236884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A180617 (n + 1) : ℚ) / 4)).toNat

end

end A079086.P530661750770236884

namespace A079086

/-- `A001222(A180617(n+1)/4)` -/
def P530661750770236884.Spec : Prop :=
  ∀ n, P530661750770236884.a n = A079086 (n + 1)

theorem P530661750770236884.correct : P530661750770236884.Spec := by
  intro n
  simp only [A079086, Nat.add_sub_cancel, A079086.P530661750770236884.a, A079086.P16614913600754652005.a, A001222, A001222.P11318177267732088261.a, A079079, A079079.P9221945843868535999.a, A180617, A180617.P4406684303062301047.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A006094, A006094.P10257567645245129766.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079086

/-! ## A079086.P6049820571205549728

`A001222(A006254(n+1)*A111333(n+1))`
-/

namespace A079086.P6049820571205549728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006254 (n + 1) * A111333 (n + 1)).toNat

end

end A079086.P6049820571205549728

namespace A079086

/-- `A001222(A006254(n+1)*A111333(n+1))` -/
def P6049820571205549728.Spec : Prop :=
  ∀ n, P6049820571205549728.a n = A079086 (n + 1)

end A079086

/-! ## A079086.P6698754370100478709

`A001222(A079080(n+1)*A079081(n+1))`
-/

namespace A079086.P6698754370100478709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A079080 (n + 1) * A079081 (n + 1)).toNat

end

end A079086.P6698754370100478709

namespace A079086

/-- `A001222(A079080(n+1)*A079081(n+1))` -/
def P6698754370100478709.Spec : Prop :=
  ∀ n, P6698754370100478709.a n = A079086 (n + 1)

end A079086

/-!
# A079087: Maximum exponent in prime factorization of (prime(n)+1)*(prime(n+1)+1)/4.

The programs for A079087, the canonical program `A079087.P15333323950352493770` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079087 has offset 1).

The definition of A079087 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A079087.P15333323950352493770

`A051903(A079079(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A079087

/-- `A051903(A079079(n+1))` -/
def P15333323950352493770.Spec : Prop :=
  ∀ n, P15333323950352493770.a n = A079087 (n + 1)

theorem P15333323950352493770.correct : P15333323950352493770.Spec := by
  intro n
  simp only [A079087, Nat.add_sub_cancel]

end A079087

/-! ## A079087.P813897670618904462

`A067132(A079079(n+1)/A079093(n+1))`
-/

namespace A079087.P813897670618904462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (SequenceMachineLib.roundAway ((A079079 (n + 1) : ℚ) / (A079093 (n + 1) : ℚ))).toNat

end

end A079087.P813897670618904462

namespace A079087

/-- `A067132(A079079(n+1)/A079093(n+1))` -/
def P813897670618904462.Spec : Prop :=
  ∀ n, P813897670618904462.a n = A079087 (n + 1)

end A079087

/-! ## A079087.P14284816174009496627

`A067132(ceil(A126199(n+1)/4)/A079093(n+1))`
-/

namespace A079087.P14284816174009496627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (SequenceMachineLib.roundAway ((⌈(A126199 (n + 1) : ℚ) / 4⌉ : ℚ) / (A079093 (n + 1) : ℚ))).toNat

end

end A079087.P14284816174009496627

namespace A079087

/-- `A067132(ceil(A126199(n+1)/4)/A079093(n+1))` -/
def P14284816174009496627.Spec : Prop :=
  ∀ n, P14284816174009496627.a n = A079087 (n + 1)

end A079087

/-! ## A079087.P7598131474585288174

`A067132(round(A126199(n+1)/4)/A079093(n+1))`
-/

namespace A079087.P7598131474585288174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((A126199 (n + 1) : ℚ) / 4) : ℚ) / (A079093 (n + 1) : ℚ))).toNat

end

end A079087.P7598131474585288174

namespace A079087

/-- `A067132(round(A126199(n+1)/4)/A079093(n+1))` -/
def P7598131474585288174.Spec : Prop :=
  ∀ n, P7598131474585288174.a n = A079087 (n + 1)

end A079087

/-! ## A079087.P15321650936131210461

`A067132(A079080(n+1)*A079081(n+1)/A079093(n+1))`
-/

namespace A079087.P15321650936131210461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (SequenceMachineLib.roundAway ((A079080 (n + 1) * A079081 (n + 1) : ℚ) / (A079093 (n + 1) : ℚ))).toNat

end

end A079087.P15321650936131210461

namespace A079087

/-- `A067132(A079080(n+1)*A079081(n+1)/A079093(n+1))` -/
def P15321650936131210461.Spec : Prop :=
  ∀ n, P15321650936131210461.a n = A079087 (n + 1)

end A079087

/-! ## A079087.P10351108147483359854

`A067132(A006254(n+1)/2*A008864(n+1)/A079093(n+1))`
-/

namespace A079087.P10351108147483359854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (SequenceMachineLib.roundAway ((A006254 (n + 1) : ℚ) / 2 * (A008864 (n + 1) : ℚ) / (A079093 (n + 1) : ℚ))).toNat

end

end A079087.P10351108147483359854

namespace A079087

/-- `A067132(A006254(n+1)/2*A008864(n+1)/A079093(n+1))` -/
def P10351108147483359854.Spec : Prop :=
  ∀ n, P10351108147483359854.a n = A079087 (n + 1)

end A079087

/-! ## A079087.P8040137960204688430

`A051903(A180617(n+1)/4)`
-/

namespace A079087.P8040137960204688430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((A180617 (n + 1) : ℚ) / 4)).toNat

end

end A079087.P8040137960204688430

namespace A079087

/-- `A051903(A180617(n+1)/4)` -/
def P8040137960204688430.Spec : Prop :=
  ∀ n, P8040137960204688430.a n = A079087 (n + 1)

theorem P8040137960204688430.correct : P8040137960204688430.Spec := by
  intro n
  simp only [A079087, Nat.add_sub_cancel, A079087.P8040137960204688430.a, A079087.P15333323950352493770.a, A051903, A051903.P13920478898438787932.f1, A051903.P13920478898438787932.a, A079079, A079079.P9221945843868535999.a, A180617, A180617.P4406684303062301047.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079087

/-! ## A079087.P1057527839137881345

`A051903(ceil(A126199(n+1)/4))`
-/

namespace A079087.P1057527839137881345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 ⌈(A126199 (n + 1) : ℚ) / 4⌉.toNat

end

end A079087.P1057527839137881345

namespace A079087

/-- `A051903(ceil(A126199(n+1)/4))` -/
def P1057527839137881345.Spec : Prop :=
  ∀ n, P1057527839137881345.a n = A079087 (n + 1)

end A079087

/-! ## A079087.P11774404428346199533

`A051903(round(A126199(n+1)/4))`
-/

namespace A079087.P11774404428346199533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((A126199 (n + 1) : ℚ) / 4)).toNat

end

end A079087.P11774404428346199533

namespace A079087

/-- `A051903(round(A126199(n+1)/4))` -/
def P11774404428346199533.Spec : Prop :=
  ∀ n, P11774404428346199533.a n = A079087 (n + 1)

end A079087

/-! ## A079087.P10490424638645857687

`A051903(A006254(n+1)*A111333(n+1))`
-/

namespace A079087.P10490424638645857687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A006254 (n + 1) * A111333 (n + 1)).toNat

end

end A079087.P10490424638645857687

namespace A079087

/-- `A051903(A006254(n+1)*A111333(n+1))` -/
def P10490424638645857687.Spec : Prop :=
  ∀ n, P10490424638645857687.a n = A079087 (n + 1)

end A079087

/-! ## A079087.P14962385415055701465

`A051903(A079080(n+1)*A079081(n+1))`
-/

namespace A079087.P14962385415055701465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A079080 (n + 1) * A079081 (n + 1)).toNat

end

end A079087.P14962385415055701465

namespace A079087

/-- `A051903(A079080(n+1)*A079081(n+1))` -/
def P14962385415055701465.Spec : Prop :=
  ∀ n, P14962385415055701465.a n = A079087 (n + 1)

end A079087

/-!
# A079088: Number of divisors of (prime(n)+1)*(prime(n+1)+1)/4.

The programs for A079088, the canonical program `A079088.P13785481457284140472` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079088 has offset 1).

The definition of A079088 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079088.P13785481457284140472

`A000005(A079079(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A079088

/-- `A000005(A079079(n+1))` -/
def P13785481457284140472.Spec : Prop :=
  ∀ n, P13785481457284140472.a n = A079088 (n + 1)

theorem P13785481457284140472.correct : P13785481457284140472.Spec := by
  intro n
  simp only [A079088, Nat.add_sub_cancel]

end A079088

/-! ## A079088.P16254338026033159835

`A000005((A000040(n+1)+1)*(A000040(n+2)+1)/4)`
-/

namespace A079088.P16254338026033159835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (((A000040 (n + 1) + 1) * (A000040 (n + 2) + 1) : ℚ) / 4)).toNat

end

end A079088.P16254338026033159835

namespace A079088

/-- `A000005((A000040(n+1)+1)*(A000040(n+2)+1)/4)` -/
def P16254338026033159835.Spec : Prop :=
  ∀ n, P16254338026033159835.a n = A079088 (n + 1)

end A079088

/-! ## A079088.P1932493532949013807

`∏{e}[A180617(n+1)/4, #+1]`
-/

namespace A079088.P1932493532949013807
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180617 (n + 1) : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p + 1)

end

end A079088.P1932493532949013807

namespace A079088

/-- `∏{e}[A180617(n+1)/4, #+1]` -/
def P1932493532949013807.Spec : Prop :=
  ∀ n, (P1932493532949013807.a n : ℤ) = A079088 (n + 1)

end A079088

/-! ## A079088.P7883162191807612269

`∑{d}[A079079(n+1), gcd(#, A073026(n+1))]`
-/

namespace A079088.P7883162191807612269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079079 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.gcd (d : ℤ) (A073026 (n + 1))

end

end A079088.P7883162191807612269

namespace A079088

/-- `∑{d}[A079079(n+1), gcd(#, A073026(n+1))]` -/
def P7883162191807612269.Spec : Prop :=
  ∀ n, (P7883162191807612269.a n : ℤ) = A079088 (n + 1)

end A079088

/-! ## A079088.P11515610934897240791

`∏{e}[A079080(n+1)*A079081(n+1), #+1]`
-/

namespace A079088.P11515610934897240791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079080 (n + 1) * A079081 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A079088.P11515610934897240791

namespace A079088

/-- `∏{e}[A079080(n+1)*A079081(n+1), #+1]` -/
def P11515610934897240791.Spec : Prop :=
  ∀ n, (P11515610934897240791.a n : ℤ) = A079088 (n + 1)

end A079088

/-! ## A079088.P11424206915187245849

`∏{e}[A111333(n+1)+A130290(n+2)*A130291(n+1), #+1]`
-/

namespace A079088.P11424206915187245849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1) + A130290 (n + 2) * A130291 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A079088.P11424206915187245849

namespace A079088

/-- `∏{e}[A111333(n+1)+A130290(n+2)*A130291(n+1), #+1]` -/
def P11424206915187245849.Spec : Prop :=
  ∀ n, (P11424206915187245849.a n : ℤ) = A079088 (n + 1)

end A079088

/-! ## A079088.P9587378664808283347

`A000005(A180617(n+1)/4)`
-/

namespace A079088.P9587378664808283347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A180617 (n + 1) : ℚ) / 4)).toNat

end

end A079088.P9587378664808283347

namespace A079088

/-- `A000005(A180617(n+1)/4)` -/
def P9587378664808283347.Spec : Prop :=
  ∀ n, P9587378664808283347.a n = A079088 (n + 1)

theorem P9587378664808283347.correct : P9587378664808283347.Spec := by
  intro n
  simp only [A079088, Nat.add_sub_cancel, A079088.P9587378664808283347.a, A079088.P13785481457284140472.a, A000005, A000005.P16091521709108585461.a, A079079, A079079.P9221945843868535999.a, A180617, A180617.P4406684303062301047.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A006094, A006094.P10257567645245129766.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079088

/-! ## A079088.P7123579500210850834

`A000005(∑{d}[A006094(n+1), #/4])`
-/

namespace A079088.P7123579500210850834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) / 4)).toNat

end

end A079088.P7123579500210850834

namespace A079088

/-- `A000005(∑{d}[A006094(n+1), #/4])` -/
def P7123579500210850834.Spec : Prop :=
  ∀ n, P7123579500210850834.a n = A079088 (n + 1)

end A079088

/-! ## A079088.P10054815049365614799

`A000005((p?[2*n+1]+1)/2*record[A006530(2*n+1)-n])`
-/

namespace A079088.P10054815049365614799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1 : ℚ) / 2 * (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ))).toNat

end

end A079088.P10054815049365614799

namespace A079088

/-- `A000005((p?[2*n+1]+1)/2*record[A006530(2*n+1)-n])` -/
def P10054815049365614799.Spec : Prop :=
  ∀ n, P10054815049365614799.a n = A079088 (n + 1)

end A079088

/-! ## A079088.P8685571185640961681

`A000005(A079080(n+1)*A079081(n+1))`
-/

namespace A079088.P8685571185640961681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A079080 (n + 1) * A079081 (n + 1)).toNat

end

end A079088.P8685571185640961681

namespace A079088

/-- `A000005(A079080(n+1)*A079081(n+1))` -/
def P8685571185640961681.Spec : Prop :=
  ∀ n, P8685571185640961681.a n = A079088 (n + 1)

end A079088

/-! ## A079088.P14505166522516546562

`A000005(A111333(n+1)*A111333(n+2))`
-/

namespace A079088.P14505166522516546562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A111333 (n + 1) * A111333 (n + 2)).toNat

end

end A079088.P14505166522516546562

namespace A079088

/-- `A000005(A111333(n+1)*A111333(n+2))` -/
def P14505166522516546562.Spec : Prop :=
  ∀ n, P14505166522516546562.a n = A079088 (n + 1)

end A079088

/-! ## A079088.P15469522445773634563

`A000005(A006254(n+1)/A000040(n+1)*A034953(n+1))`
-/

namespace A079088.P15469522445773634563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A006254 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ) * (A034953 (n + 1) : ℚ))).toNat

end

end A079088.P15469522445773634563

namespace A079088

/-- `A000005(A006254(n+1)/A000040(n+1)*A034953(n+1))` -/
def P15469522445773634563.Spec : Prop :=
  ∀ n, P15469522445773634563.a n = A079088 (n + 1)

end A079088

/-!
# A079089: Sum of divisors of (prime(n)+1)*(prime(n+1)+1)/4.

The programs for A079089, the canonical program `A079089.P14407906461052975020` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079089 has offset 1).

The definition of A079089 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079089.P14407906461052975020

`A000203(A079079(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A079089

/-- `A000203(A079079(n+1))` -/
def P14407906461052975020.Spec : Prop :=
  ∀ n, P14407906461052975020.a n = A079089 (n + 1)

theorem P14407906461052975020.correct : P14407906461052975020.Spec := by
  intro n
  simp only [A079089, Nat.add_sub_cancel]

end A079089

/-! ## A079089.P17986180567582655561

`A000203((A000040(n+1)+1)*(A000040(n+2)+1)/4)`
-/

namespace A079089.P17986180567582655561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (((A000040 (n + 1) + 1) * (A000040 (n + 2) + 1) : ℚ) / 4)).toNat

end

end A079089.P17986180567582655561

namespace A079089

/-- `A000203((A000040(n+1)+1)*(A000040(n+2)+1)/4)` -/
def P17986180567582655561.Spec : Prop :=
  ∀ n, P17986180567582655561.a n = A079089 (n + 1)

end A079089

/-! ## A079089.P10128774577774458102

`∑{d}[(p?[2*n+1]+1)*(p?[round(8*n/7)]+1)/4, #]`
-/

namespace A079089.P10128774577774458102
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + 1 : ℤ) * (f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) + 1) : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A079089.P10128774577774458102

namespace A079089

/-- `∑{d}[(p?[2*n+1]+1)*(p?[round(8*n/7)]+1)/4, #]` -/
def P10128774577774458102.Spec : Prop :=
  ∀ n, (P10128774577774458102.a n : ℤ) = A079089 (n + 1)

end A079089

/-! ## A079089.P14600008217164508771

`∑{d}[A180617(n+1)/4, #]`
-/

namespace A079089.P14600008217164508771
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180617 (n + 1) : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A079089.P14600008217164508771

namespace A079089

/-- `∑{d}[A180617(n+1)/4, #]` -/
def P14600008217164508771.Spec : Prop :=
  ∀ n, (P14600008217164508771.a n : ℤ) = A079089 (n + 1)

end A079089

/-! ## A079089.P8489449383980838853

`∑{d}[ceil(A126199(n+1)/4), #]`
-/

namespace A079089.P8489449383980838853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A126199 (n + 1) : ℚ) / 4⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A079089.P8489449383980838853

namespace A079089

/-- `∑{d}[ceil(A126199(n+1)/4), #]` -/
def P8489449383980838853.Spec : Prop :=
  ∀ n, (P8489449383980838853.a n : ℤ) = A079089 (n + 1)

end A079089

/-! ## A079089.P4334144361071327270

`∑{d}[A079080(n+1)*A079081(n+1), #]`
-/

namespace A079089.P4334144361071327270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079080 (n + 1) * A079081 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A079089.P4334144361071327270

namespace A079089

/-- `∑{d}[A079080(n+1)*A079081(n+1), #]` -/
def P4334144361071327270.Spec : Prop :=
  ∀ n, (P4334144361071327270.a n : ℤ) = A079089 (n + 1)

end A079089

/-! ## A079089.P2124700782429056213

`∑{d}[A006254(n+1)/2*A008864(n+1), #]`
-/

namespace A079089.P2124700782429056213
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006254 (n + 1) : ℚ) / 2 * (A008864 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A079089.P2124700782429056213

namespace A079089

/-- `∑{d}[A006254(n+1)/2*A008864(n+1), #]` -/
def P2124700782429056213.Spec : Prop :=
  ∀ n, (P2124700782429056213.a n : ℤ) = A079089 (n + 1)

end A079089

/-! ## A079089.P7174773264821833522

`∑{d}[(A286624(n+1)+A065091(n+1))/4, #]`
-/

namespace A079089.P7174773264821833522
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286624 (n + 1) + A065091 (n + 1) : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A079089.P7174773264821833522

namespace A079089

/-- `∑{d}[(A286624(n+1)+A065091(n+1))/4, #]` -/
def P7174773264821833522.Spec : Prop :=
  ∀ n, (P7174773264821833522.a n : ℤ) = A079089 (n + 1)

end A079089

/-! ## A079089.P5139298074099633160

`∑{d}[(A006094(n+1)+A001043(n+1)+1)/4, #]`
-/

namespace A079089.P5139298074099633160
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006094 (n + 1) + A001043 (n + 1) + 1 : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A079089.P5139298074099633160

namespace A079089

/-- `∑{d}[(A006094(n+1)+A001043(n+1)+1)/4, #]` -/
def P5139298074099633160.Spec : Prop :=
  ∀ n, (P5139298074099633160.a n : ℤ) = A079089 (n + 1)

end A079089

/-! ## A079089.P12728330619401866118

`∑{d}[A111333(n+1)+A005097(n+1)*A130291(n+1), #]`
-/

namespace A079089.P12728330619401866118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1) + A005097 (n + 1) * A130291 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A079089.P12728330619401866118

namespace A079089

/-- `∑{d}[A111333(n+1)+A005097(n+1)*A130291(n+1), #]` -/
def P12728330619401866118.Spec : Prop :=
  ∀ n, (P12728330619401866118.a n : ℤ) = A079089 (n + 1)

end A079089

/-! ## A079089.P11988121101684315174

`∑{d}[A111333(n+1)+A130290(n+2)*A130291(n+1), #]`
-/

namespace A079089.P11988121101684315174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1) + A130290 (n + 2) * A130291 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A079089.P11988121101684315174

namespace A079089

/-- `∑{d}[A111333(n+1)+A130290(n+2)*A130291(n+1), #]` -/
def P11988121101684315174.Spec : Prop :=
  ∀ n, (P11988121101684315174.a n : ℤ) = A079089 (n + 1)

end A079089

/-! ## A079089.P4991509083979143256

`A000203(A180617(n+1)/4)`
-/

namespace A079089.P4991509083979143256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A180617 (n + 1) : ℚ) / 4)).toNat

end

end A079089.P4991509083979143256

namespace A079089

/-- `A000203(A180617(n+1)/4)` -/
def P4991509083979143256.Spec : Prop :=
  ∀ n, P4991509083979143256.a n = A079089 (n + 1)

theorem P4991509083979143256.correct : P4991509083979143256.Spec := by
  intro n
  simp only [A079089, Nat.add_sub_cancel, A079089.P4991509083979143256.a, A079089.P14407906461052975020.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A079079, A079079.P9221945843868535999.a, A180617, A180617.P4406684303062301047.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079089

/-! ## A079089.P16886105669936625376

`A000203(∑{d}[A006094(n+1), #/4])`
-/

namespace A079089.P16886105669936625376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) / 4)).toNat

end

end A079089.P16886105669936625376

namespace A079089

/-- `A000203(∑{d}[A006094(n+1), #/4])` -/
def P16886105669936625376.Spec : Prop :=
  ∀ n, P16886105669936625376.a n = A079089 (n + 1)

end A079089

/-! ## A079089.P4640006045604232693

`A000203(A079080(n+1)*A079081(n+1))`
-/

namespace A079089.P4640006045604232693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A079080 (n + 1) * A079081 (n + 1)).toNat

end

end A079089.P4640006045604232693

namespace A079089

/-- `A000203(A079080(n+1)*A079081(n+1))` -/
def P4640006045604232693.Spec : Prop :=
  ∀ n, P4640006045604232693.a n = A079089 (n + 1)

end A079089

/-! ## A079089.P6051195673088870797

`A000203(A006254(n+1)/A000040(n+1)*A034953(n+1))`
-/

namespace A079089.P6051195673088870797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A006254 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ) * (A034953 (n + 1) : ℚ))).toNat

end

end A079089.P6051195673088870797

namespace A079089

/-- `A000203(A006254(n+1)/A000040(n+1)*A034953(n+1))` -/
def P6051195673088870797.Spec : Prop :=
  ∀ n, P6051195673088870797.a n = A079089 (n + 1)

end A079089

/-!
# A079090: Sum of distinct prime factors of (prime(n)+1)*(prime(n+1)+1)/4.

The programs for A079090, the canonical program `A079090.P7688684910206676053` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079090 has offset 1).

The definition of A079090 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A079090.P7688684910206676053

`A008472(A079079(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A079090

/-- `A008472(A079079(n+1))` -/
def P7688684910206676053.Spec : Prop :=
  ∀ n, P7688684910206676053.a n = A079090 (n + 1)

theorem P7688684910206676053.correct : P7688684910206676053.Spec := by
  intro n
  simp only [A079090, Nat.add_sub_cancel]

end A079090

/-! ## A079090.P14473548198844936515

`∑{p}[A079093(n+1), #]`
-/

namespace A079090.P14473548198844936515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079093 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A079090.P14473548198844936515

namespace A079090

/-- `∑{p}[A079093(n+1), #]` -/
def P14473548198844936515.Spec : Prop :=
  ∀ n, (P14473548198844936515.a n : ℤ) = A079090 (n + 1)

end A079090

/-! ## A079090.P3728152553947609501

`∑{p}[A180617(n+1)/4, #]`
-/

namespace A079090.P3728152553947609501
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180617 (n + 1) : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A079090.P3728152553947609501

namespace A079090

/-- `∑{p}[A180617(n+1)/4, #]` -/
def P3728152553947609501.Spec : Prop :=
  ∀ n, (P3728152553947609501.a n : ℤ) = A079090 (n + 1)

end A079090

/-! ## A079090.P5928982089954682510

`∑{p}[A079080(n+1)*A079081(n+1), #]`
-/

namespace A079090.P5928982089954682510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079080 (n + 1) * A079081 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A079090.P5928982089954682510

namespace A079090

/-- `∑{p}[A079080(n+1)*A079081(n+1), #]` -/
def P5928982089954682510.Spec : Prop :=
  ∀ n, (P5928982089954682510.a n : ℤ) = A079090 (n + 1)

end A079090

/-! ## A079090.P3304131687677174175

`∑{p}[A006254(n+1)/A000040(n+1)*A034953(n+1), #]`
-/

namespace A079090.P3304131687677174175
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006254 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ) * (A034953 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A079090.P3304131687677174175

namespace A079090

/-- `∑{p}[A006254(n+1)/A000040(n+1)*A034953(n+1), #]` -/
def P3304131687677174175.Spec : Prop :=
  ∀ n, (P3304131687677174175.a n : ℤ) = A079090 (n + 1)

end A079090

/-! ## A079090.P15881896744491187204

`A001414(A079093(n+1))`
-/

namespace A079090.P15881896744491187204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A079093 (n + 1)).toNat

end

end A079090.P15881896744491187204

namespace A079090

/-- `A001414(A079093(n+1))` -/
def P15881896744491187204.Spec : Prop :=
  ∀ n, P15881896744491187204.a n = A079090 (n + 1)

end A079090

/-! ## A079090.P13752109276895792890

`∑{p}[A000203(A006094(n+1))/4, #]`
-/

namespace A079090.P13752109276895792890
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A006094 (n + 1)).toNat : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A079090.P13752109276895792890

namespace A079090

/-- `∑{p}[A000203(A006094(n+1))/4, #]` -/
def P13752109276895792890.Spec : Prop :=
  ∀ n, (P13752109276895792890.a n : ℤ) = A079090 (n + 1)

end A079090

/-!
# A079091: Sum of all prime factors of (prime(n)+1)*(prime(n+1)+1)/4.

The programs for A079091, the canonical program `A079091.P8514234596208376302` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079091 has offset 1).

The definition of A079091 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A079091.P8514234596208376302

`A001414(A079079(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A079091

/-- `A001414(A079079(n+1))` -/
def P8514234596208376302.Spec : Prop :=
  ∀ n, P8514234596208376302.a n = A079091 (n + 1)

theorem P8514234596208376302.correct : P8514234596208376302.Spec := by
  intro n
  simp only [A079091, Nat.add_sub_cancel]

end A079091

/-! ## A079091.P945160035338454758

`A001414(A079080(n+1))+A001414(A079081(n+1))`
-/

namespace A079091.P945160035338454758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A079080 (n + 1)).toNat + A001414 (A079081 (n + 1)).toNat

end

end A079091.P945160035338454758

namespace A079091

/-- `A001414(A079080(n+1))+A001414(A079081(n+1))` -/
def P945160035338454758.Spec : Prop :=
  ∀ n, P945160035338454758.a n = A079091 (n + 1)

end A079091

/-! ## A079091.P1123123643273929674

`A001414(A180617(n+1)/4)`
-/

namespace A079091.P1123123643273929674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.roundAway ((A180617 (n + 1) : ℚ) / 4)).toNat

end

end A079091.P1123123643273929674

namespace A079091

/-- `A001414(A180617(n+1)/4)` -/
def P1123123643273929674.Spec : Prop :=
  ∀ n, P1123123643273929674.a n = A079091 (n + 1)

theorem P1123123643273929674.correct : P1123123643273929674.Spec := by
  intro n
  simp only [A079091, Nat.add_sub_cancel, A079091.P1123123643273929674.a, A079091.P8514234596208376302.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A079079, A079079.P9221945843868535999.a, A180617, A180617.P4406684303062301047.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A079091

/-! ## A079091.P1290689961223119508

`A001414(ceil(A126199(n+1)/4))`
-/

namespace A079091.P1290689961223119508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 ⌈(A126199 (n + 1) : ℚ) / 4⌉.toNat

end

end A079091.P1290689961223119508

namespace A079091

/-- `A001414(ceil(A126199(n+1)/4))` -/
def P1290689961223119508.Spec : Prop :=
  ∀ n, P1290689961223119508.a n = A079091 (n + 1)

end A079091

/-! ## A079091.P2594429441092394675

`A001414(∑{d}[A023515(n+2)+1, #]/4)`
-/

namespace A079091.P2594429441092394675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℚ) / 4)).toNat

end

end A079091.P2594429441092394675

namespace A079091

/-- `A001414(∑{d}[A023515(n+2)+1, #]/4)` -/
def P2594429441092394675.Spec : Prop :=
  ∀ n, P2594429441092394675.a n = A079091 (n + 1)

end A079091

/-! ## A079091.P3223179332003457002

`A001414(A079080(n+1)*A079081(n+1))`
-/

namespace A079091.P3223179332003457002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A079080 (n + 1) * A079081 (n + 1)).toNat

end

end A079091.P3223179332003457002

namespace A079091

/-- `A001414(A079080(n+1)*A079081(n+1))` -/
def P3223179332003457002.Spec : Prop :=
  ∀ n, P3223179332003457002.a n = A079091 (n + 1)

end A079091

/-!
# A079092: Euler's totient of (prime(n)+1)*(prime(n+1)+1)/4.

The programs for A079092, the canonical program `A079092.P7315273055174450665` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079092 has offset 1).

The definition of A079092 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A079092.P7315273055174450665

`A000010(A079079(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A079092

/-- `A000010(A079079(n+1))` -/
def P7315273055174450665.Spec : Prop :=
  ∀ n, P7315273055174450665.a n = A079092 (n + 1)

theorem P7315273055174450665.correct : P7315273055174450665.Spec := by
  intro n
  simp only [A079092, Nat.add_sub_cancel]

end A079092

/-! ## A079092.P10603040468439874361

`A000010((A000040(n+1)+1)*(A000040(n+2)+1)/4)`
-/

namespace A079092.P10603040468439874361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (((A000040 (n + 1) + 1) * (A000040 (n + 2) + 1) : ℚ) / 4)).toNat

end

end A079092.P10603040468439874361

namespace A079092

/-- `A000010((A000040(n+1)+1)*(A000040(n+2)+1)/4)` -/
def P10603040468439874361.Spec : Prop :=
  ∀ n, P10603040468439874361.a n = A079092 (n + 1)

end A079092

/-! ## A079092.P7204465237897583751

`A000010(A180617(n+1)/4)`
-/

namespace A079092.P7204465237897583751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A180617 (n + 1) : ℚ) / 4)).toNat

end

end A079092.P7204465237897583751

namespace A079092

/-- `A000010(A180617(n+1)/4)` -/
def P7204465237897583751.Spec : Prop :=
  ∀ n, P7204465237897583751.a n = A079092 (n + 1)

theorem P7204465237897583751.correct : P7204465237897583751.Spec := by
  intro n
  simp only [A079092, Nat.add_sub_cancel, A079092.P7204465237897583751.a, A079092.P7315273055174450665.a, A000010, A000010.P4673923239450215316.a, A079079, A079079.P9221945843868535999.a, A180617, A180617.P4406684303062301047.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A003557, A003557.P6364735403900941810.a, A006094, A006094.P10257567645245129766.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A079092

/-! ## A079092.P10199920640864158516

`A000010(ceil(A126199(n+1)/4))`
-/

namespace A079092.P10199920640864158516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ⌈(A126199 (n + 1) : ℚ) / 4⌉.toNat

end

end A079092.P10199920640864158516

namespace A079092

/-- `A000010(ceil(A126199(n+1)/4))` -/
def P10199920640864158516.Spec : Prop :=
  ∀ n, P10199920640864158516.a n = A079092 (n + 1)

end A079092

/-! ## A079092.P16806352150315029406

`A000010(round(A126199(n+1)/4))`
-/

namespace A079092.P16806352150315029406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A126199 (n + 1) : ℚ) / 4)).toNat

end

end A079092.P16806352150315029406

namespace A079092

/-- `A000010(round(A126199(n+1)/4))` -/
def P16806352150315029406.Spec : Prop :=
  ∀ n, P16806352150315029406.a n = A079092 (n + 1)

end A079092

/-! ## A079092.P1796161738316656884

`A000010((A126199(n+1)+1)/4)`
-/

namespace A079092.P1796161738316656884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A126199 (n + 1) + 1 : ℚ) / 4)).toNat

end

end A079092.P1796161738316656884

namespace A079092

/-- `A000010((A126199(n+1)+1)/4)` -/
def P1796161738316656884.Spec : Prop :=
  ∀ n, P1796161738316656884.a n = A079092 (n + 1)

theorem P1796161738316656884.correct : P1796161738316656884.Spec := by
  intro n
  simp only [A079092, Nat.add_sub_cancel, A079092.P1796161738316656884.a, A079092.P7315273055174450665.a, A000010, A000010.P4673923239450215316.a, A079079, A079079.P9221945843868535999.a, A126199, A126199.P9184133218425217126.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A079092

/-! ## A079092.P3245927808848367648

`A000010(∑{d}[A006094(n+1), #/4])`
-/

namespace A079092.P3245927808848367648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) / 4)).toNat

end

end A079092.P3245927808848367648

namespace A079092

/-- `A000010(∑{d}[A006094(n+1), #/4])` -/
def P3245927808848367648.Spec : Prop :=
  ∀ n, P3245927808848367648.a n = A079092 (n + 1)

end A079092

/-! ## A079092.P2631941690355355583

`A000010(record[A079079(ceil(C(or(1, n), n)/2))])`
-/

namespace A079092.P2631941690355355583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079079 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A079092.P2631941690355355583

namespace A079092

/-- `A000010(record[A079079(ceil(C(or(1, n), n)/2))])` -/
def P2631941690355355583.Spec : Prop :=
  ∀ n, P2631941690355355583.a n = A079092 (n + 1)

end A079092

/-! ## A079092.P9651599994506778527

`A000010(ceil(p?[2*n+1]/2)*A130291(n+1))`
-/

namespace A079092.P9651599994506778527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌉ * A130291 (n + 1)).toNat

end

end A079092.P9651599994506778527

namespace A079092

/-- `A000010(ceil(p?[2*n+1]/2)*A130291(n+1))` -/
def P9651599994506778527.Spec : Prop :=
  ∀ n, P9651599994506778527.a n = A079092 (n + 1)

end A079092

/-! ## A079092.P15941580113471201901

`A000010(A006254(n+1)*A130291(n+1))`
-/

namespace A079092.P15941580113471201901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A006254 (n + 1) * A130291 (n + 1)).toNat

end

end A079092.P15941580113471201901

namespace A079092

/-- `A000010(A006254(n+1)*A130291(n+1))` -/
def P15941580113471201901.Spec : Prop :=
  ∀ n, P15941580113471201901.a n = A079092 (n + 1)

end A079092

/-! ## A079092.P18260837952044479913

`A000010(A079080(n+1)*A079081(n+1))`
-/

namespace A079092.P18260837952044479913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A079080 (n + 1) * A079081 (n + 1)).toNat

end

end A079092.P18260837952044479913

namespace A079092

/-- `A000010(A079080(n+1)*A079081(n+1))` -/
def P18260837952044479913.Spec : Prop :=
  ∀ n, P18260837952044479913.a n = A079092 (n + 1)

end A079092

/-! ## A079092.P8383518798587539005

`A000010(A130291(n+1)*A130291(n+2))`
-/

namespace A079092.P8383518798587539005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A130291 (n + 1) * A130291 (n + 2)).toNat

end

end A079092.P8383518798587539005

namespace A079092

/-- `A000010(A130291(n+1)*A130291(n+2))` -/
def P8383518798587539005.Spec : Prop :=
  ∀ n, P8383518798587539005.a n = A079092 (n + 1)

end A079092

/-! ## A079092.P17496846640494660772

`A000010(A008864(n+2)/4*A008864(n+1))`
-/

namespace A079092.P17496846640494660772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A008864 (n + 2) : ℚ) / 4 * (A008864 (n + 1) : ℚ))).toNat

end

end A079092.P17496846640494660772

namespace A079092

/-- `A000010(A008864(n+2)/4*A008864(n+1))` -/
def P17496846640494660772.Spec : Prop :=
  ∀ n, P17496846640494660772.a n = A079092 (n + 1)

end A079092

/-! ## A079092.P6070493145580729246

`A000010(A006254(n+1)/A000040(n+1)*A034953(n+1))`
-/

namespace A079092.P6070493145580729246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A006254 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ) * (A034953 (n + 1) : ℚ))).toNat

end

end A079092.P6070493145580729246

namespace A079092

/-- `A000010(A006254(n+1)/A000040(n+1)*A034953(n+1))` -/
def P6070493145580729246.Spec : Prop :=
  ∀ n, P6070493145580729246.a n = A079092 (n + 1)

end A079092

/-!
# A079093: Squarefree kernel of (prime(n)+1)*(prime(n+1)+1)/4.

The programs for A079093, the canonical program `A079093.P18049403196778155305` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079093 has offset 1).

The definition of A079093 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079093.P18049403196778155305

`A007947(A079079(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A079093

/-- `A007947(A079079(n+1))` -/
def P18049403196778155305.Spec : Prop :=
  ∀ n, P18049403196778155305.a n = A079093 (n + 1)

theorem P18049403196778155305.correct : P18049403196778155305.Spec := by
  intro n
  simp only [A079093, Nat.add_sub_cancel]

end A079093

/-! ## A079093.P11412959789517591418

`∏{p}[A180617(n+1)/4, #]`
-/

namespace A079093.P11412959789517591418
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180617 (n + 1) : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A079093.P11412959789517591418

namespace A079093

/-- `∏{p}[A180617(n+1)/4, #]` -/
def P11412959789517591418.Spec : Prop :=
  ∀ n, (P11412959789517591418.a n : ℤ) = A079093 (n + 1)

end A079093

/-! ## A079093.P835060915250854032

`∏{p}[A079080(n+1)*A079081(n+1), #]`
-/

namespace A079093.P835060915250854032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079080 (n + 1) * A079081 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A079093.P835060915250854032

namespace A079093

/-- `∏{p}[A079080(n+1)*A079081(n+1), #]` -/
def P835060915250854032.Spec : Prop :=
  ∀ n, (P835060915250854032.a n : ℤ) = A079093 (n + 1)

end A079093

/-! ## A079093.P12719429478609976396

`∏{p}[(A006094(n+1)+A001043(n+1)+1)/4, #]`
-/

namespace A079093.P12719429478609976396
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006094 (n + 1) + A001043 (n + 1) + 1 : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A079093.P12719429478609976396

namespace A079093

/-- `∏{p}[(A006094(n+1)+A001043(n+1)+1)/4, #]` -/
def P12719429478609976396.Spec : Prop :=
  ∀ n, (P12719429478609976396.a n : ℤ) = A079093 (n + 1)

end A079093

/-! ## A079093.P3491201819919406222

`∏{p}[A111333(n+1)+A005097(n+1)*A130291(n+1), #]`
-/

namespace A079093.P3491201819919406222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1) + A005097 (n + 1) * A130291 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A079093.P3491201819919406222

namespace A079093

/-- `∏{p}[A111333(n+1)+A005097(n+1)*A130291(n+1), #]` -/
def P3491201819919406222.Spec : Prop :=
  ∀ n, (P3491201819919406222.a n : ℤ) = A079093 (n + 1)

end A079093

/-! ## A079093.P6677117752420693812

`∏{p}[A008864(n+1)*A024701(n+1)/A006093(n+2), #]`
-/

namespace A079093.P6677117752420693812
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) * A024701 (n + 1) : ℚ) / (A006093 (n + 2) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A079093.P6677117752420693812

namespace A079093

/-- `∏{p}[A008864(n+1)*A024701(n+1)/A006093(n+2), #]` -/
def P6677117752420693812.Spec : Prop :=
  ∀ n, (P6677117752420693812.a n : ℤ) = A079093 (n + 1)

end A079093

/-!
# A079094: Arithmetic derivative of (prime(n)+1)*(prime(n+1)+1)/4.

The programs for A079094, the canonical program `A079094.P5860095368831372493` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079094 has offset 1).

The definition of A079094 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A079094.P5860095368831372493

`A003415(A079079(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A079094

/-- `A003415(A079079(n+1))` -/
def P5860095368831372493.Spec : Prop :=
  ∀ n, P5860095368831372493.a n = A079094 (n + 1)

theorem P5860095368831372493.correct : P5860095368831372493.Spec := by
  intro n
  simp only [A079094, Nat.add_sub_cancel]

end A079094

/-! ## A079094.P10737556530091054907

`∑{d}[A079079(n+1), A300251(#)]`
-/

namespace A079094.P10737556530091054907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A079094.P10737556530091054907

namespace A079094

/-- `∑{d}[A079079(n+1), A300251(#)]` -/
def P10737556530091054907.Spec : Prop :=
  ∀ n, P10737556530091054907.a n = A079094 (n + 1)

end A079094

/-! ## A079094.P7446261630816594685

`∑{d}[A180617(n+1)/4, A300251(#)]`
-/

namespace A079094.P7446261630816594685
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180617 (n + 1) : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A300251 d

end

end A079094.P7446261630816594685

namespace A079094

/-- `∑{d}[A180617(n+1)/4, A300251(#)]` -/
def P7446261630816594685.Spec : Prop :=
  ∀ n, P7446261630816594685.a n = A079094 (n + 1)

end A079094

/-! ## A079094.P7686138205661292022

`∑{d}[ceil(A126199(n+1)/4), A300251(#)]`
-/

namespace A079094.P7686138205661292022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A126199 (n + 1) : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A079094.P7686138205661292022

namespace A079094

/-- `∑{d}[ceil(A126199(n+1)/4), A300251(#)]` -/
def P7686138205661292022.Spec : Prop :=
  ∀ n, P7686138205661292022.a n = A079094 (n + 1)

end A079094

/-! ## A079094.P8762412748887439500

`∑{d}[A079080(n+1)*A079081(n+1), A300251(#)]`
-/

namespace A079094.P8762412748887439500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079080 (n + 1) * A079081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A079094.P8762412748887439500

namespace A079094

/-- `∑{d}[A079080(n+1)*A079081(n+1), A300251(#)]` -/
def P8762412748887439500.Spec : Prop :=
  ∀ n, P8762412748887439500.a n = A079094 (n + 1)

end A079094

/-! ## A079094.P5417573499428129656

`∑{d}[A006254(n+1)/2*A008864(n+1), A300251(#)]`
-/

namespace A079094.P5417573499428129656
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006254 (n + 1) : ℚ) / 2 * (A008864 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A300251 d

end

end A079094.P5417573499428129656

namespace A079094

/-- `∑{d}[A006254(n+1)/2*A008864(n+1), A300251(#)]` -/
def P5417573499428129656.Spec : Prop :=
  ∀ n, P5417573499428129656.a n = A079094 (n + 1)

end A079094

/-! ## A079094.P13798746444253943492

`∑{d}[A000203(A006094(n+1))/4, A300251(#)]`
-/

namespace A079094.P13798746444253943492
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A006094 (n + 1)).toNat : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A300251 d

end

end A079094.P13798746444253943492

namespace A079094

/-- `∑{d}[A000203(A006094(n+1))/4, A300251(#)]` -/
def P13798746444253943492.Spec : Prop :=
  ∀ n, P13798746444253943492.a n = A079094 (n + 1)

end A079094

/-! ## A079094.P5533531693197728554

`A348497(A180617(n+1)/4)`
-/

namespace A079094.P5533531693197728554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348497 (SequenceMachineLib.roundAway ((A180617 (n + 1) : ℚ) / 4)).toNat

end

end A079094.P5533531693197728554

namespace A079094

/-- `A348497(A180617(n+1)/4)` -/
def P5533531693197728554.Spec : Prop :=
  ∀ n, P5533531693197728554.a n = A079094 (n + 1)

end A079094

/-! ## A079094.P14336431101315236193

`A348497(ceil(A126199(n+1)/4))`
-/

namespace A079094.P14336431101315236193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348497 ⌈(A126199 (n + 1) : ℚ) / 4⌉.toNat

end

end A079094.P14336431101315236193

namespace A079094

/-- `A348497(ceil(A126199(n+1)/4))` -/
def P14336431101315236193.Spec : Prop :=
  ∀ n, P14336431101315236193.a n = A079094 (n + 1)

end A079094

/-! ## A079094.P17814236990125164869

`A348497((A126199(n+1)+1)/4)`
-/

namespace A079094.P17814236990125164869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348497 (SequenceMachineLib.roundAway ((A126199 (n + 1) + 1 : ℚ) / 4)).toNat

end

end A079094.P17814236990125164869

namespace A079094

/-- `A348497((A126199(n+1)+1)/4)` -/
def P17814236990125164869.Spec : Prop :=
  ∀ n, P17814236990125164869.a n = A079094 (n + 1)

end A079094

/-!
# A079095: Squarefree numbers of the form (prime(k)+1)*(prime(k+1)+1)/4.

The programs for A079095, the canonical program `A079095.P14370046378917256101` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079095 has offset 1).

The definition of A079095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A079095.P14370046378917256101

`A079079(eq[1, A079087(n+1)]+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A079095

/-- `A079079(eq[1, A079087(n+1)]+1)` -/
def P14370046378917256101.Spec : Prop :=
  ∀ n, P14370046378917256101.a n = A079095 (n + 1)

theorem P14370046378917256101.correct : P14370046378917256101.Spec := by
  intro n
  simp only [A079095, Nat.add_sub_cancel]

end A079095

/-! ## A079095.P17441143671019225161

`record[A079093(n+1)/A079087(n+1)]`
-/

namespace A079095.P17441143671019225161
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079093 (n + 1) : ℚ) / (A079087 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079095.P17441143671019225161

namespace A079095

/-- `record[A079093(n+1)/A079087(n+1)]` -/
def P17441143671019225161.Spec : Prop :=
  ∀ n, P17441143671019225161.a n = (A079095 (n + 1) : ℚ)

end A079095

/-! ## A079095.P11023607728980248315

`record[and(A079079(n+1), A079093(n+1))]`
-/

namespace A079095.P11023607728980248315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A079079 (n + 1)) (A079093 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079095.P11023607728980248315

namespace A079095

/-- `record[and(A079079(n+1), A079093(n+1))]` -/
def P11023607728980248315.Spec : Prop :=
  ∀ n, P11023607728980248315.a n = A079095 (n + 1)

end A079095

/-! ## A079095.P17099311838152107779

`A079079(eq[A079085(n+1), A079086(n+1)]+1)`
-/

namespace A079095.P17099311838152107779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079079 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A079095.P17099311838152107779

namespace A079095

/-- `A079079(eq[A079085(n+1), A079086(n+1)]+1)` -/
def P17099311838152107779.Spec : Prop :=
  ∀ n, P17099311838152107779.a n = A079095 (n + 1)

end A079095

/-! ## A079095.P14640355364850160733

`A079079(eq[A079090(n+1), A079091(n+1)]+1)`
-/

namespace A079095.P14640355364850160733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079079 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A079095.P14640355364850160733

namespace A079095

/-- `A079079(eq[A079090(n+1), A079091(n+1)]+1)` -/
def P14640355364850160733.Spec : Prop :=
  ∀ n, P14640355364850160733.a n = A079095 (n + 1)

end A079095

/-! ## A079095.P11209619372122764460

`record[A079079(n+1)^(A079085(n+1)/A079086(n+1))]`
-/

namespace A079095.P11209619372122764460
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A079079 (n + 1) : ℝ) ^ ((A079085 (n + 1) : ℚ) / (A079086 (n + 1) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A079095.P11209619372122764460

namespace A079095

/-- `record[A079079(n+1)^(A079085(n+1)/A079086(n+1))]` -/
def P11209619372122764460.Spec : Prop :=
  ∀ n, P11209619372122764460.a n = (A079095 (n + 1) : ℝ)

end A079095

/-!
# A079097: Mix odd numbers and squares.

The programs for A079097, the canonical program `A079097.P4415988176669205072` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A079097 has offset 0).

The definition of A079097 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A079097.P4415988176669205072

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=5, a(5)=9`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A079097

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P4415988176669205072.Spec : Prop :=
  ∀ n, P4415988176669205072.a n = A079097 n

theorem P4415988176669205072.correct : P4415988176669205072.Spec := by
  intro n
  simp only [A079097]

end A079097

/-! ## A079097.P16581018219215110976

`gcd(C(n, 2), xor(1, n))²+n`
-/

namespace A079097.P16581018219215110976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.choose n 2) (Nat.xor 1 n) ^ 2 + n

end

end A079097.P16581018219215110976

namespace A079097

/-- `gcd(C(n, 2), xor(1, n))²+n` -/
def P16581018219215110976.Spec : Prop :=
  ∀ n, (P16581018219215110976.a n : ℤ) = A079097 n

end A079097

/-! ## A079097.P1138570752031049212

`gcd(1-n, floor(n/2))²+n`
-/

namespace A079097.P1138570752031049212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋ ^ 2 + n

end

end A079097.P1138570752031049212

namespace A079097

/-- `gcd(1-n, floor(n/2))²+n` -/
def P1138570752031049212.Spec : Prop :=
  ∀ n, (P1138570752031049212.a n : ℤ) = A079097 n

end A079097

/-! ## A079097.P4605556335047361106

`(1-∑[n]%(n+1))²+n`
-/

namespace A079097.P4605556335047361106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) : ℕ) : ℤ)) ^ 2 + (n : ℤ)

end

end A079097.P4605556335047361106

namespace A079097

/-- `(1-∑[n]%(n+1))²+n` -/
def P4605556335047361106.Spec : Prop :=
  ∀ n, P4605556335047361106.a n = A079097 n

end A079097

/-! ## A079097.P3079904684232691389

`(gcd(n+1, ∑[n])-n)²+n`
-/

namespace A079097.P3079904684232691389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - (n : ℤ)) ^ 2 + (n : ℤ)

end

end A079097.P3079904684232691389

namespace A079097

/-- `(gcd(n+1, ∑[n])-n)²+n` -/
def P3079904684232691389.Spec : Prop :=
  ∀ n, P3079904684232691389.a n = A079097 n

end A079097

/-! ## A079097.P4627242150422556447

`a((n-2)*n%2)+n` with `a(0)=1, a(1)=1`
-/

namespace A079097.P4627242150422556447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (((n : ℤ) - 2) * ((n % 2 : ℕ) : ℤ)).toNat + n

end

end A079097.P4627242150422556447

namespace A079097

/-- `a((n-2)*n%2)+n` -/
def P4627242150422556447.Spec : Prop :=
  ∀ n, (P4627242150422556447.a n : ℤ) = A079097 n

end A079097

/-! ## A079097.P9436939299421107144

`C(a(n-2), and(1, n))+n` with `a(0)=1, a(1)=1`
-/

namespace A079097.P9436939299421107144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.choose (a (n - 2)) (Nat.land 1 n) + n

end

end A079097.P9436939299421107144

namespace A079097

/-- `C(a(n-2), and(1, n))+n` -/
def P9436939299421107144.Spec : Prop :=
  ∀ n, (P9436939299421107144.a n : ℤ) = A079097 n

end A079097

/-! ## A079097.P7856641409735934380

`gcd((n+1)%2, a(n-2))+n` with `a(0)=1, a(1)=1`
-/

namespace A079097.P7856641409735934380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.gcd ((n + 1) % 2) (a (n - 2)) + n

end

end A079097.P7856641409735934380

namespace A079097

/-- `gcd((n+1)%2, a(n-2))+n` -/
def P7856641409735934380.Spec : Prop :=
  ∀ n, (P7856641409735934380.a n : ℤ) = A079097 n

end A079097

/-! ## A079097.P8048750658405597867

`floor((n+1)/2)/a(n-1)*∑[n]` with `a(0)=1`
-/

namespace A079097.P8048750658405597867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (⌊(n + 1 : ℚ) / 2⌋ : ℚ) / a (n - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A079097.P8048750658405597867

namespace A079097

/-- `floor((n+1)/2)/a(n-1)*∑[n]` -/
def P8048750658405597867.Spec : Prop :=
  ∀ n, P8048750658405597867.a n = (A079097 n : ℚ)

end A079097

/-! ## A079097.P14528305920831942191

`gcd(lcm(n+1, 2*n)+n+1, ∑[n]²)`
-/

namespace A079097.P14528305920831942191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.lcm (n + 1) (2 * n) + (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A079097.P14528305920831942191

namespace A079097

/-- `gcd(lcm(n+1, 2*n)+n+1, ∑[n]²)` -/
def P14528305920831942191.Spec : Prop :=
  ∀ n, (P14528305920831942191.a n : ℤ) = A079097 n

end A079097

/-! ## A079097.P14677915807326192779

`gcd(((n+1)²/∏{p}[n+1, #])^8, ∑[lcm(2, (n+1)²)/2])`
-/

namespace A079097.P14677915807326192779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 ((n + 1) ^ 2) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ 8)) (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A079097.P14677915807326192779

namespace A079097

/-- `gcd(((n+1)²/∏{p}[n+1, #])^8, ∑[lcm(2, (n+1)²)/2])` -/
def P14677915807326192779.Spec : Prop :=
  ∀ n, (P14677915807326192779.a n : ℤ) = A079097 n

end A079097

/-! ## A079097.P5784285795247637422

`A057979(n)²+n`
-/

namespace A079097.P5784285795247637422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n ^ 2 + (n : ℤ)

end

end A079097.P5784285795247637422

namespace A079097

/-- `A057979(n)²+n` -/
def P5784285795247637422.Spec : Prop :=
  ∀ n, P5784285795247637422.a n = A079097 n

end A079097

/-! ## A079097.P12339200792607014859

`gcd(∑[n]², A212760(n))`
-/

namespace A079097.P12339200792607014859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) (A212760 n)

end

end A079097.P12339200792607014859

namespace A079097

/-- `gcd(∑[n]², A212760(n))` -/
def P12339200792607014859.Spec : Prop :=
  ∀ n, (P12339200792607014859.a n : ℤ) = A079097 n

end A079097

/-! ## A079097.P14110691080405814447

`(2-A133622(n+1))²+n`
-/

namespace A079097.P14110691080405814447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A133622 (n + 1)) ^ 2 + (n : ℤ)

end

end A079097.P14110691080405814447

namespace A079097

/-- `(2-A133622(n+1))²+n` -/
def P14110691080405814447.Spec : Prop :=
  ∀ n, P14110691080405814447.a n = A079097 n

end A079097

/-! ## A079097.P677010185333386942

`(A026741(n+1)-n)²+n`
-/

namespace A079097.P677010185333386942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A026741 (n + 1) - (n : ℤ)) ^ 2 + (n : ℤ)

end

end A079097.P677010185333386942

namespace A079097

/-- `(A026741(n+1)-n)²+n` -/
def P677010185333386942.Spec : Prop :=
  ∀ n, P677010185333386942.a n = A079097 n

end A079097

/-! ## A079097.P228541722056022899

`A212760(n-1)/a(n-1)` with `a(0)=1`
-/

namespace A079097.P228541722056022899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A212760 (n - 1) : ℚ) / a (n - 1)

end

end A079097.P228541722056022899

namespace A079097

/-- `A212760(n-1)/a(n-1)` -/
def P228541722056022899.Spec : Prop :=
  ∀ n, P228541722056022899.a n = (A079097 n : ℚ)

end A079097

/-! ## A079097.P7315512027803613770

`A129889(n)+A008619(n)`
-/

namespace A079097.P7315512027803613770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129889 n + A008619 n

end

end A079097.P7315512027803613770

namespace A079097

/-- `A129889(n)+A008619(n)` -/
def P7315512027803613770.Spec : Prop :=
  ∀ n, P7315512027803613770.a n = A079097 n

end A079097

/-! ## A079097.P10728588910577885067

`A346004(n)+A059841(n)`
-/

namespace A079097.P10728588910577885067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346004 n + A059841 n

end

end A079097.P10728588910577885067

namespace A079097

/-- `A346004(n)+A059841(n)` -/
def P10728588910577885067.Spec : Prop :=
  ∀ n, P10728588910577885067.a n = A079097 n

end A079097

/-! ## A079097.P3751639208483734144

`A213041(n)-A129370(n)`
-/

namespace A079097.P3751639208483734144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213041 n - A129370 n

end

end A079097.P3751639208483734144

namespace A079097

/-- `A213041(n)-A129370(n)` -/
def P3751639208483734144.Spec : Prop :=
  ∀ n, P3751639208483734144.a n = A079097 n

end A079097

/-! ## A079097.P17505238952409677902

`gcd(A000537(n), A212759(n))`
-/

namespace A079097.P17505238952409677902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000537 n) (A212759 n)

end

end A079097.P17505238952409677902

namespace A079097

/-- `gcd(A000537(n), A212759(n))` -/
def P17505238952409677902.Spec : Prop :=
  ∀ n, (P17505238952409677902.a n : ℤ) = A079097 n

end A079097

/-!
# A079099: Number of 0's in n primorial or 0's in A002110(n).

The programs for A079099, there is no canonical definition to state claims against.
-/

/-! ## A079099.P8947668218494252609

`∑{digits}[A002110(n), A000007(#)]`
-/

namespace A079099.P8947668218494252609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000007 x).sum

end

end A079099.P8947668218494252609

/-! ## A079099.P2005893572847815461

`∑{digits}[A002110(n), A015070(#)]`
-/

namespace A079099.P2005893572847815461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A015070 x).sum

end

end A079099.P2005893572847815461

/-! ## A079099.P17456597704240164683

`∑{digits}[A002110(n), A055641(#)]`
-/

namespace A079099.P17456597704240164683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A055641 x).sum

end

end A079099.P17456597704240164683

/-! ## A079099.P8247098470646140018

`∑{digits}[A002110(n), A085854(#)]`
-/

namespace A079099.P8247098470646140018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A085854 x).sum

end

end A079099.P8247098470646140018

/-! ## A079099.P7624660040107536908

`∑{digits}[A002110(n), A210709(#)]`
-/

namespace A079099.P7624660040107536908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A210709 x).sum

end

end A079099.P7624660040107536908

