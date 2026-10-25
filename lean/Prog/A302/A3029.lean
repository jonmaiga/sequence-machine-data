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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A302900: Number of permutations of [n] having exactly seven alternating descents.

The programs for A302900, there is no canonical definition to state claims against.
-/

/-! ## A302900.P3438051950792166393

`A145876(A374009(n+1))`
-/

namespace A302900.P3438051950792166393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A374009 (n + 1)).toNat

end

end A302900.P3438051950792166393

/-! ## A302900.P1940192306964684000

`A145876(eq[9, A131818(n+1)])`
-/

namespace A302900.P1940192306964684000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302900.P1940192306964684000

/-! ## A302900.P2280167593682063515

`A145876(eq[5, A219347(n)])`
-/

namespace A302900.P2280167593682063515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302900.P2280167593682063515

/-! ## A302900.P2463697495461189976

`A145876(eq[7, A193592(n)])`
-/

namespace A302900.P2463697495461189976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302900.P2463697495461189976

/-! ## A302900.P9033731772105999854

`A145876(eq[8, A348422(n+1)])`
-/

namespace A302900.P9033731772105999854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302900.P9033731772105999854

/-! ## A302900.P6159105397071998981

`A145876(eq[64, A057728(n+1)])`
-/

namespace A302900.P6159105397071998981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302900.P6159105397071998981

/-! ## A302900.P1908443523046298952

`A145876(A000217(n+7)+n+1)`
-/

namespace A302900.P1908443523046298952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A000217 (n + 7) + (n + 1 : ℤ)).toNat

end

end A302900.P1908443523046298952

/-!
# A302901: Number of permutations of [n] having exactly eight alternating descents.

The programs for A302901, there is no canonical definition to state claims against.
-/

/-! ## A302901.P13731256608545262272

`A145876(A374010(n+1))`
-/

namespace A302901.P13731256608545262272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A374010 (n + 1)).toNat

end

end A302901.P13731256608545262272

/-! ## A302901.P10735631204368542387

`A145876(eq[17, A066657(n)])`
-/

namespace A302901.P10735631204368542387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302901.P10735631204368542387

/-! ## A302901.P14337771565633873096

`A145876(eq[10, A131818(n+1)])`
-/

namespace A302901.P14337771565633873096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302901.P14337771565633873096

/-! ## A302901.P15875983376963831747

`A145876(eq[5, A264391(n)])`
-/

namespace A302901.P15875983376963831747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302901.P15875983376963831747

/-! ## A302901.P10233518303140917307

`A145876(eq[6, A219347(n)])`
-/

namespace A302901.P10233518303140917307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302901.P10233518303140917307

/-! ## A302901.P6818301784834061689

`A145876(eq[8, A193592(n)])`
-/

namespace A302901.P6818301784834061689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302901.P6818301784834061689

/-!
# A302902: Number of permutations of [n] having exactly nine alternating descents.

The programs for A302902, there is no canonical definition to state claims against.
-/

/-! ## A302902.P4690651065249996490

`A145876(A374011(n+1))`
-/

namespace A302902.P4690651065249996490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A374011 (n + 1)).toNat

end

end A302902.P4690651065249996490

/-! ## A302902.P14382228330015499816

`A145876(eq[11, A131818(n+1)])`
-/

namespace A302902.P14382228330015499816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302902.P14382228330015499816

/-! ## A302902.P13291583284262265530

`A145876(eq[8, A219347(n)])`
-/

namespace A302902.P13291583284262265530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302902.P13291583284262265530

/-! ## A302902.P3556992675150178934

`A145876(eq[9, A193592(n)])`
-/

namespace A302902.P3556992675150178934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302902.P3556992675150178934

/-! ## A302902.P5726830680213160509

`A145876(eq[16, A185782(n+1)])`
-/

namespace A302902.P5726830680213160509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302902.P5726830680213160509

/-!
# A302903: Number of permutations of [2n+1] having exactly n alternating descents.

The programs for A302903, there is no canonical definition to state claims against.
-/

/-! ## A302903.P17231062428351004467

`A302905(2*n+1)`
-/

namespace A302903.P17231062428351004467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302905 (2 * n + 1)

end

end A302903.P17231062428351004467

/-! ## A302903.P533132889113549767

`A145876((n+1)²+n²)`
-/

namespace A302903.P533132889113549767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 ((n + 1) ^ 2 + n ^ 2)

end

end A302903.P533132889113549767

/-! ## A302903.P1317657219414883934

`record[A302905(A056753(n))]`
-/

namespace A302903.P1317657219414883934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302905 (A056753 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302903.P1317657219414883934

/-! ## A302903.P1732971992767911317

`record[gcd(A079977(n), A302905(n))]`
-/

namespace A302903.P1732971992767911317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079977 n) (A302905 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302903.P1732971992767911317

/-! ## A302903.P16678591276333284365

`record[A003982(n)*A145876(n+1)]`
-/

namespace A302903.P16678591276333284365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A145876 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302903.P16678591276333284365

/-!
# A302904: Number of permutations of [2n] having exactly n-1 alternating descents.

The programs for A302904, there is no canonical definition to state claims against.
-/

/-! ## A302904.P17912795286153101714

`A302905(2*n)`
-/

namespace A302904.P17912795286153101714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302905 (2 * n)

end

end A302904.P17912795286153101714

/-! ## A302904.P8432366406147715925

`A145876(A058331(n))`
-/

namespace A302904.P8432366406147715925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A058331 n).toNat

end

end A302904.P8432366406147715925

/-! ## A302904.P12310891878650601321

`A145876(A004277(n²))`
-/

namespace A302904.P12310891878650601321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A004277 (n ^ 2)).toNat

end

end A302904.P12310891878650601321

/-! ## A302904.P8086365747435955986

`A145876(A005408(n²))`
-/

namespace A302904.P8086365747435955986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A005408 (n ^ 2)).toNat

end

end A302904.P8086365747435955986

/-! ## A302904.P5084610490722510490

`A145876(A001105(n)+1)`
-/

namespace A302904.P5084610490722510490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A001105 n + 1).toNat

end

end A302904.P5084610490722510490

/-!
# A302905: Number of permutations of [n] having exactly ceiling(n/2)-1 alternating descents.

The programs for A302905, there is no canonical definition to state claims against.
-/

/-! ## A302905.P12685533599068763608

`A145876(A007590(n)+1)`
-/

namespace A302905.P12685533599068763608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A007590 n + 1).toNat

end

end A302905.P12685533599068763608

/-! ## A302905.P3658837554269444652

`A145876(A099392(n+1))`
-/

namespace A302905.P3658837554269444652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (A099392 (n + 1)).toNat

end

end A302905.P3658837554269444652

/-! ## A302905.P16532006822636832484

`A145876(or(1, A007590(n)))`
-/

namespace A302905.P16532006822636832484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (Int.lor 1 (A007590 n)).toNat

end

end A302905.P16532006822636832484

/-! ## A302905.P7903762932277066522

`A145876(xor(1, A007590(n)))`
-/

namespace A302905.P7903762932277066522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (Int.xor 1 (A007590 n)).toNat

end

end A302905.P7903762932277066522

/-! ## A302905.P2365638928714343000

`A145876(∑[n+1]-A007494(n))`
-/

namespace A302905.P2365638928714343000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145876 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A007494 n).toNat

end

end A302905.P2365638928714343000

/-!
# A302906: a(0) = 0; for n > 0, a(n) = a(n-1) + 5*n + 4.

The programs for A302906, the canonical program `A302906.P8000708644831065369` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302906 has offset 0).

The definition of A302906 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+5*n+4` (program `A302906.P8000708644831065369`, by `A302906.P8000708644831065369.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A302906.P16800975733308333446

`n*(5*n+13)/2`
-/

namespace A302906.P16800975733308333446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (5 * n + 13) : ℚ) / 2

end

end A302906.P16800975733308333446

namespace A302906

/-- `n*(5*n+13)/2` -/
def P16800975733308333446.Spec : Prop :=
  ∀ n, P16800975733308333446.a n = (A302906 n : ℚ)

theorem P16800975733308333446.correct : P16800975733308333446.Spec := by
  intro n
  induction n with
  | zero => simp [A302906, A302906.P16800975733308333446.a, A302906.P8000708644831065369.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A302906, Nat.add_sub_cancel, A302906.P16800975733308333446.a, A302906.P8000708644831065369.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A302906

/-! ## A302906.P8000708644831065369

`a(n-1)+5*n+4` with `a(0)=0`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A302906

/-- `a(n-1)+5*n+4` -/
def P8000708644831065369.Spec : Prop :=
  ∀ n, (P8000708644831065369.a n : ℤ) = A302906 n

theorem P8000708644831065369.correct : P8000708644831065369.Spec := by
  intro n
  simp only [A302906]

end A302906

/-! ## A302906.P17810992157212207903

`∑[a(n-1)+5]` with `a(0)=0, a(1)=9`
-/

namespace A302906.P17810992157212207903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 9] fun n f1 =>
  f1 (n - 1) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302906.P17810992157212207903

namespace A302906

/-- `∑[a(n-1)+5]` -/
def P17810992157212207903.Spec : Prop :=
  ∀ n, (P17810992157212207903.a n : ℤ) = A302906 n

end A302906

/-! ## A302906.P1416178850261490669

`∑[ogf((9x-4x^2)/(1-2x+x^2))]`
-/

namespace A302906.P1416178850261490669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 9, -4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302906.P1416178850261490669

namespace A302906

/-- `∑[ogf((9x-4x^2)/(1-2x+x^2))]` -/
def P1416178850261490669.Spec : Prop :=
  ∀ n, P1416178850261490669.a n = A302906 n

end A302906

/-! ## A302906.P14043621804936619480

`ogf((9x-4x^2)/(1-3x+3x^2-x^3))`
-/

namespace A302906.P14043621804936619480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 9, -4] [1, -3, 3, -1] n

end

end A302906.P14043621804936619480

namespace A302906

/-- `ogf((9x-4x^2)/(1-3x+3x^2-x^3))` -/
def P14043621804936619480.Spec : Prop :=
  ∀ n, P14043621804936619480.a n = A302906 n

end A302906

/-! ## A302906.P13328596096226795499

`4*n-∑[a(n-1)-5]` with `a(0)=0`
-/

namespace A302906.P13328596096226795499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302906.P13328596096226795499

namespace A302906

/-- `4*n-∑[a(n-1)-5]` -/
def P13328596096226795499.Spec : Prop :=
  ∀ n, P13328596096226795499.a n = A302906 n

end A302906

/-! ## A302906.P990746941526235810

`∑[(n+1)*4%(n+4)+n]`
-/

namespace A302906.P990746941526235810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (4 % (n + 4)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302906.P990746941526235810

namespace A302906

/-- `∑[(n+1)*4%(n+4)+n]` -/
def P990746941526235810.Spec : Prop :=
  ∀ n, (P990746941526235810.a n : ℤ) = A302906 n

end A302906

/-! ## A302906.P1154737602867897073

`A279895(n)+n`
-/

namespace A302906.P1154737602867897073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279895 n + (n : ℤ)

end

end A302906.P1154737602867897073

namespace A302906

/-- `A279895(n)+n` -/
def P1154737602867897073.Spec : Prop :=
  ∀ n, P1154737602867897073.a n = A302906 n

end A302906

/-! ## A302906.P16635169909250131343

`∑[A016897(n)]-4`
-/

namespace A302906.P16635169909250131343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A302906.P16635169909250131343

namespace A302906

/-- `∑[A016897(n)]-4` -/
def P16635169909250131343.Spec : Prop :=
  ∀ n, P16635169909250131343.a n = A302906 n

end A302906

/-! ## A302906.P1126067353952681863

`A140672(n)+n²`
-/

namespace A302906.P1126067353952681863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140672 n + (n ^ 2 : ℤ)

end

end A302906.P1126067353952681863

namespace A302906

/-- `A140672(n)+n²` -/
def P1126067353952681863.Spec : Prop :=
  ∀ n, P1126067353952681863.a n = A302906 n

end A302906

/-! ## A302906.P6221513403276611491

`A139570(n)+∑[n]`
-/

namespace A302906.P6221513403276611491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139570 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A302906.P6221513403276611491

namespace A302906

/-- `A139570(n)+∑[n]` -/
def P6221513403276611491.Spec : Prop :=
  ∀ n, P6221513403276611491.a n = A302906 n

end A302906

/-! ## A302906.P8103563194490017711

`A364352(n+1)-7`
-/

namespace A302906.P8103563194490017711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364352 (n + 1) - 7

end

end A302906.P8103563194490017711

namespace A302906

/-- `A364352(n+1)-7` -/
def P8103563194490017711.Spec : Prop :=
  ∀ n, P8103563194490017711.a n = A302906 n

end A302906

/-! ## A302906.P5198600986432957302

`A131895(n)-1+n`
-/

namespace A302906.P5198600986432957302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131895 n - 1 + (n : ℤ)

end

end A302906.P5198600986432957302

namespace A302906

/-- `A131895(n)-1+n` -/
def P5198600986432957302.Spec : Prop :=
  ∀ n, P5198600986432957302.a n = A302906 n

end A302906

/-! ## A302906.P10315234157726718857

`A028895(n)+4*n`
-/

namespace A302906.P10315234157726718857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028895 n + (4 * n : ℤ)

end

end A302906.P10315234157726718857

namespace A302906

/-- `A028895(n)+4*n` -/
def P10315234157726718857.Spec : Prop :=
  ∀ n, P10315234157726718857.a n = A302906 n

end A302906

/-! ## A302906.P4099044116155764013

`5*A000096(n)-n`
-/

namespace A302906.P4099044116155764013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000096 n - (n : ℤ)

end

end A302906.P4099044116155764013

namespace A302906

/-- `5*A000096(n)-n` -/
def P4099044116155764013.Spec : Prop :=
  ∀ n, P4099044116155764013.a n = A302906 n

end A302906

/-! ## A302906.P10657615826599440726

`A163655(n)-n^3`
-/

namespace A302906.P10657615826599440726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163655 n - (n ^ 3 : ℤ)

end

end A302906.P10657615826599440726

namespace A302906

/-- `A163655(n)-n^3` -/
def P10657615826599440726.Spec : Prop :=
  ∀ n, P10657615826599440726.a n = A302906 n

end A302906

/-! ## A302906.P8367004821237134811

`abs(6*n-A212331(n))`
-/

namespace A302906.P8367004821237134811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(6 * n : ℤ) - A212331 n|

end

end A302906.P8367004821237134811

namespace A302906

/-- `abs(6*n-A212331(n))` -/
def P8367004821237134811.Spec : Prop :=
  ∀ n, P8367004821237134811.a n = A302906 n

end A302906

/-! ## A302906.P18323809384980854815

`A126264(n+1)/2-4`
-/

namespace A302906.P18323809384980854815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126264 (n + 1) : ℚ) / 2 - 4

end

end A302906.P18323809384980854815

namespace A302906

/-- `A126264(n+1)/2-4` -/
def P18323809384980854815.Spec : Prop :=
  ∀ n, P18323809384980854815.a n = (A302906 n : ℚ)

theorem P18323809384980854815.correct : P18323809384980854815.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A302906, Nat.add_sub_cancel, A302906.P18323809384980854815.a, A302906.P8000708644831065369.a, A126264, A126264.P6649181285063801082.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A302906, Nat.add_sub_cancel, A302906.P18323809384980854815.a, A302906.P8000708644831065369.a, A126264, A126264.P6649181285063801082.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A302906

/-! ## A302906.P8924881071104275227

`A166137(n+1)-(n+1)`
-/

namespace A302906.P8924881071104275227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166137 (n + 1) - (n + 1 : ℤ)

end

end A302906.P8924881071104275227

namespace A302906

/-- `A166137(n+1)-(n+1)` -/
def P8924881071104275227.Spec : Prop :=
  ∀ n, P8924881071104275227.a n = A302906 n

end A302906

/-! ## A302906.P4154132663912329740

`A166151(n+1)-(n+2)`
-/

namespace A302906.P4154132663912329740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166151 (n + 1) - (n + 2 : ℤ)

end

end A302906.P4154132663912329740

namespace A302906

/-- `A166151(n+1)-(n+2)` -/
def P4154132663912329740.Spec : Prop :=
  ∀ n, P4154132663912329740.a n = A302906 n

end A302906

/-!
# A302909: Determinant of n X n matrix whose main diagonal consists of the first n 5-gonal numbers and all other elements are 1's.

The programs for A302909, there is no canonical definition to state claims against.
-/

/-! ## A302909.P3292248496274298507

`∏[∑[Δ[n²]-char[1]+n]]`
-/

namespace A302909.P3292248496274298507
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ) - ((if ∃ j, f4 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A302909.P3292248496274298507

/-! ## A302909.P12758873507534377053

`(∑[3*n]+n)*a(n-1)` with `a(0)=1`
-/

namespace A302909.P12758873507534377053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j + n) * a (n - 1)

end

end A302909.P12758873507534377053

/-! ## A302909.P4175288841215329219

`a(n-1)*Δ[(n+2)*C(n, 2)]` with `a(0)=1`
-/

namespace A302909.P4175288841215329219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A302909.P4175288841215329219

/-! ## A302909.P11048512057544447344

`a(n-1)*A115067(n+1)` with `a(0)=1`
-/

namespace A302909.P11048512057544447344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A115067 (n + 1)

end

end A302909.P11048512057544447344

/-! ## A302909.P3894329425314169040

`and((A000326(n+1)-1)*a(n-1), -n)` with `a(0)=1`
-/

namespace A302909.P3894329425314169040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land ((A000326 (n + 1) - 1) * a (n - 1)) (-(n : ℤ))

end

end A302909.P3894329425314169040

/-!
# A302910: Determinant of n X n matrix whose main diagonal consists of the first n 6-gonal numbers and all other elements are 1's.

The programs for A302910, the canonical program `A302910.P13332896841915378701` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302910 has offset 1).

The definition of A302910 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302910.P13332896841915378701

`(n+1+1/2)*(2*(n+1)-1)!/(3*2^(n-1))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A302910

/-- `(n+1+1/2)*(2*(n+1)-1)!/(3*2^(n-1))` -/
def P13332896841915378701.Spec : Prop :=
  ∀ n, P13332896841915378701.a n = (A302910 (n + 1) : ℚ)

end A302910

/-! ## A302910.P17226959905141656797

`∏[record[abs((n-1)*Δ[n²])]]`
-/

namespace A302910.P17226959905141656797
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 1) * ((f3 (n + 1) : ℤ) - (f3 n : ℤ))|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A302910.P17226959905141656797

namespace A302910

/-- `∏[record[abs((n-1)*Δ[n²])]]` -/
def P17226959905141656797.Spec : Prop :=
  ∀ n, P17226959905141656797.a n = A302910 (n + 1)

end A302910

/-! ## A302910.P15131599046504276892

`n!*∏[2*n+3]/3`
-/

namespace A302910.P15131599046504276892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3)

end

end A302910.P15131599046504276892

namespace A302910

/-- `n!*∏[2*n+3]/3` -/
def P15131599046504276892.Spec : Prop :=
  ∀ n, P15131599046504276892.a n = (A302910 (n + 1) : ℚ)

end A302910

/-! ## A302910.P7824019623810274414

`∏[floor(3/acot(n))+2*n²]`
-/

namespace A302910.P7824019623810274414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ + (2 * n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A302910.P7824019623810274414

namespace A302910

/-- `∏[floor(3/acot(n))+2*n²]` -/
def P7824019623810274414.Spec : Prop :=
  ∀ n, P7824019623810274414.a n = A302910 (n + 1)

end A302910

/-! ## A302910.P10816744050270066234

`∏[∑[4*n]+round(1/acot(n))]`
-/

namespace A302910.P10816744050270066234
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A302910.P10816744050270066234

namespace A302910

/-- `∏[∑[4*n]+round(1/acot(n))]` -/
def P10816744050270066234.Spec : Prop :=
  ∀ n, P10816744050270066234.a n = A302910 (n + 1)

end A302910

/-!
# A302911: Determinant of n X n matrix whose main diagonal consists of the first n 7-gonal numbers and all other elements are 1's.

The programs for A302911, there is no canonical definition to state claims against.
-/

/-! ## A302911.P114057193034541188

`∏[∑[5*n]+round(1/acot(n))]`
-/

namespace A302911.P114057193034541188
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A302911.P114057193034541188

/-! ## A302911.P9472074914080889215

`(∑[5*n]+n)*a(n-1)` with `a(0)=1`
-/

namespace A302911.P9472074914080889215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j + n) * a (n - 1)

end

end A302911.P9472074914080889215

/-! ## A302911.P5849244808546607920

`∏[A008706(∑[n])+n]`
-/

namespace A302911.P5849244808546607920
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (∑ j ∈ Finset.range (n + 1), f2 j) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A302911.P5849244808546607920

/-! ## A302911.P3459661188792484168

`∏[A132209(n)+∑[n+1]]`
-/

namespace A302911.P3459661188792484168
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132209 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A302911.P3459661188792484168

/-! ## A302911.P10318903528746375833

`∏[∑[A267873(2*n)+n]]`
-/

namespace A302911.P10318903528746375833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267873 (2 * n) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A302911.P10318903528746375833

/-!
# A302912: Determinant of n X n matrix whose main diagonal consists of the first n 8-gonal numbers and all other elements are 1's.

The programs for A302912, there is no canonical definition to state claims against.
-/

/-! ## A302912.P8501995053226142984

`∏[floor(acot(n))+∑[6*n]+n]`
-/

namespace A302912.P8501995053226142984
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + ((∑ j ∈ Finset.range (n + 1), f2 j + n : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A302912.P8501995053226142984

/-! ## A302912.P14648233549052791425

`(∑[6*n]+n)*a(n-1)` with `a(0)=1`
-/

namespace A302912.P14648233549052791425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j + n) * a (n - 1)

end

end A302912.P14648233549052791425

/-! ## A302912.P10885008277929666932

`(3*n+4)*n*a(n-1)` with `a(0)=1`
-/

namespace A302912.P10885008277929666932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (3 * n + 4) * (n * a (n - 1))

end

end A302912.P10885008277929666932

/-! ## A302912.P13555088807199893547

`∏[round(1/acot(5*n))+3*n²-n]`
-/

namespace A302912.P13555088807199893547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (5 * n : ℝ)) + ((3 * n ^ 2 : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A302912.P13555088807199893547

/-! ## A302912.P5879068869179796942

`n!*A051604(n)`
-/

namespace A302912.P5879068869179796942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A051604 n

end

end A302912.P5879068869179796942

/-!
# A302913: Determinant of n X n matrix whose main diagonal consists of the first n 9-gonal numbers and all other elements are 1's.

The programs for A302913, there is no canonical definition to state claims against.
-/

/-! ## A302913.P311363047311764093

`(∑[7*n]+n)*a(n-1)` with `a(0)=1`
-/

namespace A302913.P311363047311764093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j + n) * a (n - 1)

end

end A302913.P311363047311764093

/-! ## A302913.P8198394191611839858

`∏[A028310(∑[7*n]+n)]`
-/

namespace A302913.P8198394191611839858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A302913.P8198394191611839858

/-! ## A302913.P17992408264612302697

`∏[A218471(n)+A008458(n)]`
-/

namespace A302913.P17992408264612302697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218471 n + A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A302913.P17992408264612302697

/-! ## A302913.P8055556386697388015

`∏[A000007(n)+A024966(n)+n]`
-/

namespace A302913.P8055556386697388015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A024966 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A302913.P8055556386697388015

/-! ## A302913.P8531380203953344459

`∏[A008458(A000217(n))+A000096(n)]`
-/

namespace A302913.P8531380203953344459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A000217 n).toNat + A000096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A302913.P8531380203953344459

/-!
# A302914: Determinant of n X n matrix whose main diagonal consists of the first n 10-gonal numbers and all other elements are 1's.

The programs for A302914, there is no canonical definition to state claims against.
-/

/-! ## A302914.P7462610750681126022

`∏[4*n+5]/5*n!`
-/

namespace A302914.P7462610750681126022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5 * (Nat.factorial n : ℚ)

end

end A302914.P7462610750681126022

/-! ## A302914.P13224566329683823935

`(∑[8*n]+n)*a(n-1)` with `a(0)=1`
-/

namespace A302914.P13224566329683823935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (∑ j ∈ Finset.range (n + 1), f1 j + n) * a (n - 1)

end

end A302914.P13224566329683823935

/-! ## A302914.P4046169900819756669

`(4*n+5)*n*a(n-1)` with `a(0)=1`
-/

namespace A302914.P4046169900819756669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (4 * n + 5) * (n * a (n - 1))

end

end A302914.P4046169900819756669

/-! ## A302914.P11703730175966457136

`∏[(2*n+1)²+abs(1-n)]/2`
-/

namespace A302914.P11703730175966457136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) + |1 - (n : ℤ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A302914.P11703730175966457136

/-! ## A302914.P8556464039828570657

`∏[round(n/3^acot(n))+(2*n+1)²]`
-/

namespace A302914.P8556464039828570657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / (3 : ℝ) ^ (SequenceMachineLib.acot (n : ℝ))) + ((2 * n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A302914.P8556464039828570657

/-!
# A302915: Number of relatively prime enriched p-trees of weight n.

The programs for A302915, there is no canonical definition to state claims against.
-/

/-! ## A302915.P7330552646494639156

`record[A326306(A014550(n+1))]`
-/

namespace A302915.P7330552646494639156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326306 (A014550 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302915.P7330552646494639156

/-! ## A302915.P9111472423528856584

`record[A336869(A133094(n+1))]`
-/

namespace A302915.P9111472423528856584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336869 (A133094 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302915.P9111472423528856584

/-! ## A302915.P13988920209448182368

`record[A336869(A338360(n+1))]`
-/

namespace A302915.P13988920209448182368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336869 (A338360 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302915.P13988920209448182368

/-!
# A302916: Number of relatively prime p-trees of weight n.

The programs for A302916, there is no canonical definition to state claims against.
-/

/-! ## A302916.P2051872998256683667

`A117174(A199205(n+1))`
-/

namespace A302916.P2051872998256683667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117174 (A199205 (n + 1)).toNat

end

end A302916.P2051872998256683667

/-! ## A302916.P6221216331903614118

`A117174(A143823(n)-n)`
-/

namespace A302916.P6221216331903614118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117174 (A143823 n - (n : ℤ)).toNat

end

end A302916.P6221216331903614118

/-! ## A302916.P4362797169745656150

`A051889(A227683(n+1)*A246566(n))`
-/

namespace A302916.P4362797169745656150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A227683 (n + 1) * A246566 n).toNat

end

end A302916.P4362797169745656150

/-!
# A302917: Solution to a(1) = 1 and Sum_y Product_i a(y_i) = 0 for each n > 1, where the sum is over all relatively prime or monic partitions of n.

The programs for A302917, there is no canonical definition to state claims against.
-/

/-! ## A302917.P11065473833942090238

`round(sin(A177215(2*n+3)*A317765(n+1)))`
-/

namespace A302917.P11065473833942090238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (A177215 (2 * n + 3) * A317765 (n + 1) : ℝ))

end

end A302917.P11065473833942090238

/-! ## A302917.P16176296985190616368

`round(sin(A177215(2*n+3)*A318153(n+1)))`
-/

namespace A302917.P16176296985190616368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (A177215 (2 * n + 3) * A318153 (n + 1) : ℝ))

end

end A302917.P16176296985190616368

/-! ## A302917.P16593623950626812477

`A128834(A313358(n)^A119326(n))`
-/

namespace A302917.P16593623950626812477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (SequenceMachineLib.roundAway ((A313358 n : ℚ) ^ (A119326 n : ℤ))).toNat

end

end A302917.P16593623950626812477

/-! ## A302917.P9541699683442586711

`A128834(A313358(n)^A273866(n+1))`
-/

namespace A302917.P9541699683442586711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (SequenceMachineLib.roundAway ((A313358 n : ℚ) ^ (A273866 (n + 1) : ℤ))).toNat

end

end A302917.P9541699683442586711

/-! ## A302917.P4780317658118583383

`A189673(A000032(A001065(n+1)))-A189673(n+1)`
-/

namespace A302917.P4780317658118583383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189673 (A000032 (A001065 (n + 1)).toNat).toNat - A189673 (n + 1)

end

end A302917.P4780317658118583383

/-!
# A302918: Number of nonequivalent minimal total dominating sets in the n-cycle graph up to rotation.

The programs for A302918, there is no canonical definition to state claims against.
-/

/-! ## A302918.P13747025954217182969

`A000120(A017818(∑[A014673(n+1)]))`
-/

namespace A302918.P13747025954217182969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A017818 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A302918.P13747025954217182969

/-! ## A302918.P11010386563233533061

`A302242(A171978(n)+A171975(n+1))`
-/

namespace A302918.P11010386563233533061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A171978 n + A171975 (n + 1)).toNat

end

end A302918.P11010386563233533061

/-! ## A302918.P11839825577700839596

`A297034(A018185(n+1))`
-/

namespace A302918.P11839825577700839596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297034 (A018185 (n + 1)).toNat

end

end A302918.P11839825577700839596

/-! ## A302918.P4127244008861465909

`A085021(A008965(n+1)-A000120(n))`
-/

namespace A302918.P4127244008861465909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085021 (A008965 (n + 1) - A000120 n).toNat

end

end A302918.P4127244008861465909

/-!
# A302919: The number of ways of placing 2n-1 white balls and 2n-1 black balls into unlabeled bins such that each bin has both an odd number of white balls and black balls.

The programs for A302919, there is no canonical definition to state claims against.
-/

/-! ## A302919.P16250490253567190024

`∑[A356713(A143619(5*n+2))]`
-/

namespace A302919.P16250490253567190024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356713 (A143619 (5 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302919.P16250490253567190024

/-! ## A302919.P5010737880053666269

`A000006(∑[A018010(comp[2*n+3])])`
-/

namespace A302919.P5010737880053666269
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018010 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A302919.P5010737880053666269

/-! ## A302919.P10691227422898526461

`A026819(A117376(n)+A001349(n))`
-/

namespace A302919.P10691227422898526461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A117376 n + A001349 n).toNat

end

end A302919.P10691227422898526461

/-!
# A302920: Number of ways to write prime(n)^2 as x^2 + 2*y^2 + 3*2^z with x,y,z nonnegative integers.

The programs for A302920, there is no canonical definition to state claims against.
-/

/-! ## A302920.P10259943545114455590

`A301471(p?[comp[n²]])`
-/

namespace A302920.P10259943545114455590
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301471 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A302920.P10259943545114455590

/-! ## A302920.P14785280688350641023

`A301471(Δ[A007504(n)])`
-/

namespace A302920.P14785280688350641023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301471 (f1 (n + 1) - f1 n).toNat

end

end A302920.P14785280688350641023

/-! ## A302920.P597991903357758386

`A301471(A000040(n+1))`
-/

namespace A302920.P597991903357758386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301471 (A000040 (n + 1)).toNat

end

end A302920.P597991903357758386

/-! ## A302920.P13758384317038472846

`A301471(A008578(n+2))`
-/

namespace A302920.P13758384317038472846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301471 (A008578 (n + 2)).toNat

end

end A302920.P13758384317038472846

/-! ## A302920.P2859919073593778067

`A301471(A182986(n+2))`
-/

namespace A302920.P2859919073593778067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301471 (A182986 (n + 2)).toNat

end

end A302920.P2859919073593778067

/-! ## A302920.P5829855828224364382

`A301471(record[A006530(n+2)])`
-/

namespace A302920.P5829855828224364382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301471 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A302920.P5829855828224364382

/-! ## A302920.P14311858348852440985

`A301471(record[A014963(n+2)])`
-/

namespace A302920.P14311858348852440985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301471 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A302920.P14311858348852440985

/-! ## A302920.P11393360071694175576

`A301471(record[A020639(n+2)])`
-/

namespace A302920.P11393360071694175576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301471 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A302920.P11393360071694175576

/-!
# A302921: Values of A000010(m) where gcd(A000010(m), m) equals the number of solutions of A000010(m) = A000010(x), and m is the least solution.

The programs for A302921, there is no canonical definition to state claims against.
-/

/-! ## A302921.P14935145308469275492

`A302838(eq[A084938(n), A116374(3*n+2)])`
-/

namespace A302921.P14935145308469275492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116374 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302838 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A302921.P14935145308469275492

/-!
# A302922: Raw moments of a Fibonacci-geometric probability distribution.

The programs for A302922, there is no canonical definition to state claims against.
-/

/-! ## A302922.P8625096352583251015

`(A103437(n)-A103436(n))/2`
-/

namespace A302922.P8625096352583251015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103437 n - A103436 n : ℚ) / 2

end

end A302922.P8625096352583251015

/-!
# A302923: Raw half-moments of a Fibonacci-geometric probability distribution.

The programs for A302923, there is no canonical definition to state claims against.
-/

/-! ## A302923.P16360416028440202846

`1/2*A302922(n+1)`
-/

namespace A302923.P16360416028440202846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A302922 (n + 1) : ℚ)

end

end A302923.P16360416028440202846

/-! ## A302923.P8486526507621837762

`A302922(n+1)/2`
-/

namespace A302923.P8486526507621837762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302922 (n + 1) : ℚ) / 2

end

end A302923.P8486526507621837762

/-! ## A302923.P14991630363839279059

`Δ[∑[A302922(n)]/2]`
-/

namespace A302923.P14991630363839279059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302922 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A302923.P14991630363839279059

/-! ## A302923.P7874667495863506648

`record[A302922(A193592(n))/2]`
-/

namespace A302923.P7874667495863506648
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302922 (A193592 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302923.P7874667495863506648

/-! ## A302923.P4572669286012717946

`record[A302922(A152547(n))/2]`
-/

namespace A302923.P4572669286012717946
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302922 (A152547 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302923.P4572669286012717946

/-!
# A302925: Central half-moments of a Fibonacci-geometric probability distribution.

The programs for A302925, there is no canonical definition to state claims against.
-/

/-! ## A302925.P4695584264508553756

`1/2*A302924(n+1)`
-/

namespace A302925.P4695584264508553756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A302924 (n + 1) : ℚ)

end

end A302925.P4695584264508553756

/-! ## A302925.P4706686267216172530

`A302924(n+1)/2`
-/

namespace A302925.P4706686267216172530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302924 (n + 1) : ℚ) / 2

end

end A302925.P4706686267216172530

/-! ## A302925.P11488352859508852185

`Δ[∑[A302924(n)]/2]`
-/

namespace A302925.P11488352859508852185
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302924 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A302925.P11488352859508852185

/-! ## A302925.P146921717162034340

`record[A302924(A158416(n))/2]`
-/

namespace A302925.P146921717162034340
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302924 (A158416 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302925.P146921717162034340

/-! ## A302925.P15928967573760090737

`record[A302924(A328396(n))/2]`
-/

namespace A302925.P15928967573760090737
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302924 (A328396 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302925.P15928967573760090737

/-!
# A302926: Cumulants of a Fibonacci-geometric probability distribution.

The programs for A302926, there is no canonical definition to state claims against.
-/

/-! ## A302926.P17191956321695882736

`2*A302927(n)`
-/

namespace A302926.P17191956321695882736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A302927 n

end

end A302926.P17191956321695882736

/-! ## A302926.P13680519031632614872

`record[lcm(2, A302927(A025581(n)))]`
-/

namespace A302926.P13680519031632614872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A302927 (A025581 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302926.P13680519031632614872

/-! ## A302926.P10346656957075258475

`A302927(n)+record[A302927(A025581(n))]`
-/

namespace A302926.P10346656957075258475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302927 (A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302927 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302926.P10346656957075258475

/-! ## A302926.P2238060726900151085

`A302927(n)+A302927(n)%A302922(n)`
-/

namespace A302926.P2238060726900151085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302927 n + Int.tmod (A302927 n) (A302922 n)

end

end A302926.P2238060726900151085

/-!
# A302927: Half-cumulants of a Fibonacci-geometric probability distribution.

The programs for A302927, there is no canonical definition to state claims against.
-/

/-! ## A302927.P6496907756674297448

`A302926(n)/2`
-/

namespace A302927.P6496907756674297448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302926 n : ℚ) / 2

end

end A302927.P6496907756674297448

/-! ## A302927.P9666977991320099165

`2^A033999(or(1, n))*A302926(n)`
-/

namespace A302927.P9666977991320099165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A033999 (Nat.lor 1 n) : ℤ) * (A302926 n : ℚ)

end

end A302927.P9666977991320099165

/-! ## A302927.P1203530569395337290

`2^A008683(A063535(n))*A302926(n)`
-/

namespace A302927.P1203530569395337290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A063535 n).toNat : ℤ) * (A302926 n : ℚ)

end

end A302927.P1203530569395337290

/-! ## A302927.P3264047906188630607

`2^A033999(A045458(n+1))*A302926(n)`
-/

namespace A302927.P3264047906188630607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A033999 (A045458 (n + 1)).toNat : ℤ) * (A302926 n : ℚ)

end

end A302927.P3264047906188630607

/-! ## A302927.P2076897978152346975

`2^A033999(A092216(n+1))*A302926(n)`
-/

namespace A302927.P2076897978152346975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A033999 (A092216 (n + 1)).toNat : ℤ) * (A302926 n : ℚ)

end

end A302927.P2076897978152346975

/-! ## A302927.P11457689771649810744

`2^A033999(A320561(n+1))*A302926(n)`
-/

namespace A302927.P11457689771649810744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A033999 (A320561 (n + 1)).toNat : ℤ) * (A302926 n : ℚ)

end

end A302927.P11457689771649810744

/-!
# A302930: Maximum number of 6's possible in an infinite Minesweeper grid with n mines.

The programs for A302930, there is no canonical definition to state claims against.
-/

/-! ## A302930.P3477463895611190543

`∑[char[comp[floor(n²/8)]]]`
-/

namespace A302930.P3477463895611190543
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 8⌋

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302930.P3477463895611190543

/-! ## A302930.P4914139204399388559

`n+2-floor(record[sqrt(xor(7, n))])`
-/

namespace A302930.P4914139204399388559
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 7 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A302930.P4914139204399388559

/-! ## A302930.P3499314838899491304

`n-(floor(sqrt(or(4, 8*n)))-2)`
-/

namespace A302930.P3499314838899491304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((Nat.sqrt (Nat.lor 4 (8 * n)) : ℤ) - 2)

end

end A302930.P3499314838899491304

/-! ## A302930.P11555931701243383767

`(2*n+5)%comp[floor(n²/8)]`
-/

namespace A302930.P11555931701243383767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 8⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 5) % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A302930.P11555931701243383767

/-!
# A302931: Maximum number of 7's possible in an infinite Minesweeper grid with n mines.

The programs for A302931, there is no canonical definition to state claims against.
-/

/-! ## A302931.P15217322416375458855

`floor(((1-n)²+n)/A198390(n+1))`
-/

namespace A302931.P15217322416375458855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((1 - (n : ℤ)) ^ 2 + (n : ℤ) : ℚ) / (A198390 (n + 1) : ℚ)⌋

end

end A302931.P15217322416375458855

/-! ## A302931.P1394247698550770540

`floor(A365321(n)/A078358(n+1))`
-/

namespace A302931.P1394247698550770540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A365321 n : ℚ) / (A078358 (n + 1) : ℚ)⌋

end

end A302931.P1394247698550770540

/-! ## A302931.P17792017947207189642

`floor(A132411(n)/A134334(n+4))`
-/

namespace A302931.P17792017947207189642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A132411 n : ℚ) / (A134334 (n + 4) : ℚ)⌋

end

end A302931.P17792017947207189642

/-! ## A302931.P15595225458399842091

`floor(A000982(n)/(A272576(n)+11))`
-/

namespace A302931.P15595225458399842091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000982 n : ℚ) / (A272576 n + 11 : ℚ)⌋

end

end A302931.P15595225458399842091

/-! ## A302931.P4507486647287159302

`floor(A082041(n)/A330103(3*(n+1)))`
-/

namespace A302931.P4507486647287159302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A082041 n : ℚ) / (A330103 (3 * (n + 1)) : ℚ)⌋

end

end A302931.P4507486647287159302

/-!
# A302934: Highly composite deficient numbers: deficient numbers k whose number of divisors d(k) > d(m) for all deficient numbers m < k.

The programs for A302934, there is no canonical definition to state claims against.
-/

/-! ## A302934.P4686666748428401021

`∑[A089856(2*a(n-1))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=8, a(5)=16, a(6)=32`
-/

namespace A302934.P4686666748428401021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4, 8, 16, 32] fun n f1 =>
  A089856 (2 * f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302934.P4686666748428401021

/-! ## A302934.P7594349529955456801

`∑[A143937(2*a(n-1))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=8, a(5)=16, a(6)=32`
-/

namespace A302934.P7594349529955456801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4, 8, 16, 32] fun n f1 =>
  A143937 (2 * f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302934.P7594349529955456801

/-! ## A302934.P6226974712538258624

`∑[A337868(2*a(n-1))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=8, a(5)=16, a(6)=32`
-/

namespace A302934.P6226974712538258624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4, 8, 16, 32] fun n f1 =>
  A337868 (2 * f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302934.P6226974712538258624

/-! ## A302934.P7656727948902673062

`∑[A353853(2*a(n-1))]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=8, a(5)=16, a(6)=32`
-/

namespace A302934.P7656727948902673062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4, 8, 16, 32] fun n f1 =>
  A353853 (2 * f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302934.P7656727948902673062

/-!
# A302935: Unitary highly composite deficient numbers: unitary deficient numbers k whose number of unitary divisors ud(k) > ud(m) for all unitary deficient numbers m < k.

The programs for A302935, there is no canonical definition to state claims against.
-/

/-! ## A302935.P1835988646234258445

`filter[A302572(n+1), A022928(#)]`
-/

namespace A302935.P1835988646234258445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022928 (f1 j).toNat = 1) n)

end

end A302935.P1835988646234258445

/-!
# A302936: Bi-unitary highly composite deficient numbers: bi-unitary deficient numbers k whose number of bi-unitary divisors bd(k) > bd(m) for all bi-unitary deficient numbers m < k.

The programs for A302936, there is no canonical definition to state claims against.
-/

/-! ## A302936.P11607557338766725621

`A010554(A099242(n))`
-/

namespace A302936.P11607557338766725621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A099242 n).toNat

end

end A302936.P11607557338766725621

/-! ## A302936.P129379463664094748

`∏{e}[A125797(n), A357402(#)]`
-/

namespace A302936.P129379463664094748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125797 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A357402 (Nat.factorization (f1 n).natAbs p)

end

end A302936.P129379463664094748

/-!
# A302938: Lexicographically first sequence of distinct terms such that the sum of any two terms is not a term of the sequence, and the sum of any two digits is not a digit of the sequence.

The programs for A302938, there is no canonical definition to state claims against.
-/

/-! ## A302938.P1377915872623396537

`∩[A001729(n+1), A211186(n+1)]`
-/

namespace A302938.P1377915872623396537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302938.P1377915872623396537

/-! ## A302938.P8607405789318529557

`∩[A072958(n+1), A211186(n+1)]`
-/

namespace A302938.P8607405789318529557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072958 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302938.P8607405789318529557

/-! ## A302938.P13359644763580695668

`∩[A082741(n+1), A211186(n+1)]`
-/

namespace A302938.P13359644763580695668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302938.P13359644763580695668

/-! ## A302938.P17585895375033105088

`∩[A211186(n+1), A214677(n+1)]`
-/

namespace A302938.P17585895375033105088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302938.P17585895375033105088

/-!
# A302940: Lexicographically first sequence of distinct terms such that the product of any two terms is not a term of the sequence, and the product of any two digits is not a digit of the sequence.

The programs for A302940, there is no canonical definition to state claims against.
-/

/-! ## A302940.P2210319852451688277

`eq[A032741(n), A323086(A089401(n+1))]`
-/

namespace A302940.P2210319852451688277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323086 (A089401 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A302940.P2210319852451688277

/-!
# A302941: Number of total dominating sets in the 2n-crossed prism graph.

The programs for A302941, the canonical program `A302941.P10962283102722459246` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302941 has offset 1).

The definition of A302941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302941.P10962283102722459246

`A006497(n+1)²`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A302941

/-- `A006497(n+1)²` -/
def P10962283102722459246.Spec : Prop :=
  ∀ n, P10962283102722459246.a n = A302941 (n + 1)

theorem P10962283102722459246.correct : P10962283102722459246.Spec := by
  intro n
  simp only [A302941, Nat.add_sub_cancel]

end A302941

/-! ## A302941.P795061855525649313

`record[a(n-2)+3*a(n-1)]²` with `a(0)=3, a(1)=2, a(2)=3`
-/

namespace A302941.P795061855525649313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 3] fun n f1 =>
  f1 (n - 2) + 3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A302941.P795061855525649313

namespace A302941

/-- `record[a(n-2)+3*a(n-1)]²` -/
def P795061855525649313.Spec : Prop :=
  ∀ n, (P795061855525649313.a n : ℤ) = A302941 (n + 1)

end A302941

/-! ## A302941.P18354551988116114695

`(A100230(n+1)+1)²`
-/

namespace A302941.P18354551988116114695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100230 (n + 1) + 1) ^ 2

end

end A302941.P18354551988116114695

namespace A302941

/-- `(A100230(n+1)+1)²` -/
def P18354551988116114695.Spec : Prop :=
  ∀ n, P18354551988116114695.a n = A302941 (n + 1)

end A302941

/-! ## A302941.P12381070397480838904

`record[A006497(round(xor(1, n)/2))²]`
-/

namespace A302941.P12381070397480838904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006497 (SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302941.P12381070397480838904

namespace A302941

/-- `record[A006497(round(xor(1, n)/2))²]` -/
def P12381070397480838904.Spec : Prop :=
  ∀ n, P12381070397480838904.a n = A302941 (n + 1)

end A302941

/-! ## A302941.P15628264708918710071

`record[A006497(A008611(n))²]`
-/

namespace A302941.P15628264708918710071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006497 (A008611 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302941.P15628264708918710071

namespace A302941

/-- `record[A006497(A008611(n))²]` -/
def P15628264708918710071.Spec : Prop :=
  ∀ n, P15628264708918710071.a n = A302941 (n + 1)

end A302941

/-! ## A302941.P13267059922446471148

`record[A006497(A008624(n))²]`
-/

namespace A302941.P13267059922446471148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006497 (A008624 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302941.P13267059922446471148

namespace A302941

/-- `record[A006497(A008624(n))²]` -/
def P13267059922446471148.Spec : Prop :=
  ∀ n, P13267059922446471148.a n = A302941 (n + 1)

end A302941

/-! ## A302941.P12228835558177944280

`record[A006497(A028242(n))²]`
-/

namespace A302941.P12228835558177944280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006497 (A028242 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302941.P12228835558177944280

namespace A302941

/-- `record[A006497(A028242(n))²]` -/
def P12228835558177944280.Spec : Prop :=
  ∀ n, P12228835558177944280.a n = A302941 (n + 1)

end A302941

/-! ## A302941.P11204988556404924977

`record[A006497(A321126(n))²]`
-/

namespace A302941.P11204988556404924977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006497 (A321126 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302941.P11204988556404924977

namespace A302941

/-- `record[A006497(A321126(n))²]` -/
def P11204988556404924977.Spec : Prop :=
  ∀ n, P11204988556404924977.a n = A302941 (n + 1)

end A302941

/-! ## A302941.P9272317682737920571

`(A020704(n)+A006190(n))²`
-/

namespace A302941.P9272317682737920571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020704 n + A006190 n) ^ 2

end

end A302941.P9272317682737920571

namespace A302941

/-- `(A020704(n)+A006190(n))²` -/
def P9272317682737920571.Spec : Prop :=
  ∀ n, P9272317682737920571.a n = A302941 (n + 1)

end A302941

/-! ## A302941.P12931242458397504682

`A006497(A000027(n+1))^2`
-/

namespace A302941.P12931242458397504682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006497 (A000027 (n + 1)).toNat ^ 2

end

end A302941.P12931242458397504682

namespace A302941

/-- `A006497(A000027(n+1))^2` -/
def P12931242458397504682.Spec : Prop :=
  ∀ n, P12931242458397504682.a n = A302941 (n + 1)

end A302941

/-!
# A302942: a(n) = (2^n-1)^2*(2^n + 2).

The programs for A302942, the canonical program `A302942.P16545712681070063244` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302942 has offset 0).

The definition of A302942 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n-1)²*(2^n+2)` (program `A302942.P16545712681070063244`, by `A302942.P16545712681070063244.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A302942.P16545712681070063244

`(2^n-1)²*(2^n+2)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A302942

/-- `(2^n-1)²*(2^n+2)` -/
def P16545712681070063244.Spec : Prop :=
  ∀ n, P16545712681070063244.a n = A302942 n

theorem P16545712681070063244.correct : P16545712681070063244.Spec := by
  intro n
  simp only [A302942]

end A302942

/-! ## A302942.P1642442394775407528

`11*a(n-1)-26*a(n-2)+16*a(n-3)` with `a(0)=0, a(1)=4, a(2)=54`
-/

namespace A302942.P1642442394775407528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 54] fun n a =>
  11 * a (n - 1) - 26 * a (n - 2) + 16 * a (n - 3)

end

end A302942.P1642442394775407528

namespace A302942

/-- `11*a(n-1)-26*a(n-2)+16*a(n-3)` -/
def P1642442394775407528.Spec : Prop :=
  ∀ n, P1642442394775407528.a n = A302942 n

theorem P1642442394775407528.correct : P1642442394775407528.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A302942, Nat.add_sub_cancel, A302942.P1642442394775407528.a, A302942.P16545712681070063244.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A302942, Nat.add_sub_cancel, A302942.P1642442394775407528.a, A302942.P16545712681070063244.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A302942

/-! ## A302942.P11636911491601247292

`8^n-(A007283(n)-2)`
-/

namespace A302942.P11636911491601247292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) - (A007283 n - 2)

end

end A302942.P11636911491601247292

namespace A302942

/-- `8^n-(A007283(n)-2)` -/
def P11636911491601247292.Spec : Prop :=
  ∀ n, P11636911491601247292.a n = A302942 n

end A302942

/-! ## A302942.P4255954136598086495

`abs(∑[2^n]-A155599(n))`
-/

namespace A302942.P4255954136598086495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A155599 n|

end

end A302942.P4255954136598086495

namespace A302942

/-- `abs(∑[2^n]-A155599(n))` -/
def P4255954136598086495.Spec : Prop :=
  ∀ n, P4255954136598086495.a n = A302942 n

end A302942

/-! ## A302942.P13493118838190012708

`A155599(n)-∑[A000079(n)]`
-/

namespace A302942.P13493118838190012708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155599 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302942.P13493118838190012708

namespace A302942

/-- `A155599(n)-∑[A000079(n)]` -/
def P13493118838190012708.Spec : Prop :=
  ∀ n, P13493118838190012708.a n = A302942 n

end A302942

/-! ## A302942.P10508169518125109594

`A000079(3*n)+2-A007283(n)`
-/

namespace A302942.P10508169518125109594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (3 * n) + (2 - A007283 n)

end

end A302942.P10508169518125109594

namespace A302942

/-- `A000079(3*n)+2-A007283(n)` -/
def P10508169518125109594.Spec : Prop :=
  ∀ n, P10508169518125109594.a n = A302942 n

theorem P10508169518125109594.correct : P10508169518125109594.Spec := by
  intro n
  simp only [A302942, Nat.add_sub_cancel, A302942.P10508169518125109594.a, A302942.P16545712681070063244.a, A000079, A000079.P10855139691139572931.a, A007283, A007283.P7218590649391847614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A302942

/-! ## A302942.P5759319820319286633

`A000225(n)*A099393(n)-A000225(n)`
-/

namespace A302942.P5759319820319286633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n * A099393 n - A000225 n

end

end A302942.P5759319820319286633

namespace A302942

/-- `A000225(n)*A099393(n)-A000225(n)` -/
def P5759319820319286633.Spec : Prop :=
  ∀ n, P5759319820319286633.a n = A302942 n

end A302942

/-! ## A302942.P14889223127514425308

`A024089(n)-(A000325(n+1)+A000225(n))`
-/

namespace A302942.P14889223127514425308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024089 n - (A000325 (n + 1) + A000225 n)

end

end A302942.P14889223127514425308

namespace A302942

/-- `A024089(n)-(A000325(n+1)+A000225(n))` -/
def P14889223127514425308.Spec : Prop :=
  ∀ n, P14889223127514425308.a n = A302942 n

end A302942

/-!
# A302943: Lexicographically earliest sequence of distinct terms such that the successive quantities of digits between two successive 4s are given by the succession of the sequence's digits itself.

The programs for A302943, there is no canonical definition to state claims against.
-/

/-! ## A302943.P17401588216237511622

`A273469(n+1)%A074004(n+5)`
-/

namespace A302943.P17401588216237511622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273469 (n + 1)) (A074004 (n + 5))

end

end A302943.P17401588216237511622

/-! ## A302943.P577861923450933708

`A273469(n+1)%A001097(A293317(n))`
-/

namespace A302943.P577861923450933708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273469 (n + 1)) (A001097 (A293317 n).toNat)

end

end A302943.P577861923450933708

/-! ## A302943.P5040136235315811

`A278939(n+1)+A066829(A278911(n+1))`
-/

namespace A302943.P5040136235315811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278939 (n + 1) + A066829 (A278911 (n + 1)).toNat

end

end A302943.P5040136235315811

/-! ## A302943.P10056882572052777718

`A278939(n+1)%A278975(A000045(n+1))`
-/

namespace A302943.P10056882572052777718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278939 (n + 1)) (A278975 (A000045 (n + 1)).toNat)

end

end A302943.P10056882572052777718

/-! ## A302943.P12765379011095221879

`A273469(n+1)+A066503(A273499(3*n+2))`
-/

namespace A302943.P12765379011095221879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273469 (n + 1) + A066503 (A273499 (3 * n + 2)).toNat

end

end A302943.P12765379011095221879

/-!
# A302944: a(n) = 4*((2*n-1)*a(n-1) + (-1)^n*(n-2)!), with a(1) = 8, n > 1.

The programs for A302944, the canonical program `A302944.P3615074165041949988` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302944 has offset 1).

The definition of A302944 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*((2*(n+1)-1)*a(n-1)+(-1)^(n+1)*(n-1)!)` (program `A302944.P3615074165041949988`, by `A302944.P3615074165041949988.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A302944.P3615074165041949988

`4*((2*(n+1)-1)*a(n-1)+(-1)^(n+1)*(n-1)!)` with `a(0)=8`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A302944

/-- `4*((2*(n+1)-1)*a(n-1)+(-1)^(n+1)*(n-1)!)` -/
def P3615074165041949988.Spec : Prop :=
  ∀ n, P3615074165041949988.a n = A302944 (n + 1)

theorem P3615074165041949988.correct : P3615074165041949988.Spec := by
  intro n
  simp only [A302944, Nat.add_sub_cancel]

end A302944

/-!
# A302945: a(n) = 4*(2*n+1)(n*a(n-1) + (-1)^(n-1)*((n-1)!)^2), with a(0) = 0, n > 0.

The programs for A302945, the canonical program `A302945.P11314532422798899888` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302945 has offset 0).

The definition of A302945 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302945.P11314532422798899888

`4*(2*n+1)*(n*a(n-1)+(-1)^(n-1)*(n-1)!²)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A302945

/-- `4*(2*n+1)*(n*a(n-1)+(-1)^(n-1)*(n-1)!²)` -/
def P11314532422798899888.Spec : Prop :=
  ∀ n, P11314532422798899888.a n = (A302945 n : ℚ)

end A302945

/-!
# A302946: Number of minimal (and minimum) total dominating sets in the 2n-crossed prism graph.

The programs for A302946, the canonical program `A302946.P4673643266567686871` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302946 has offset 1).

The definition of A302946 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302946.P4673643266567686871

`5*a(n-1)+5*a(n-2)-a(n-3)` with `a(0)=4, a(1)=36, a(2)=196`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A302946

/-- `5*a(n-1)+5*a(n-2)-a(n-3)` -/
def P4673643266567686871.Spec : Prop :=
  ∀ n, P4673643266567686871.a n = A302946 (n + 1)

theorem P4673643266567686871.correct : P4673643266567686871.Spec := by
  intro n
  simp only [A302946, Nat.add_sub_cancel]

end A302946

/-! ## A302946.P17620398853610497604

`4*A090390(n+1)`
-/

namespace A302946.P17620398853610497604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A090390 (n + 1)

end

end A302946.P17620398853610497604

namespace A302946

/-- `4*A090390(n+1)` -/
def P17620398853610497604.Spec : Prop :=
  ∀ n, P17620398853610497604.a n = A302946 (n + 1)

end A302946

/-! ## A302946.P8414113168517719210

`4*A001333(n+1)²`
-/

namespace A302946.P8414113168517719210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001333 (n + 1) ^ 2

end

end A302946.P8414113168517719210

namespace A302946

/-- `4*A001333(n+1)²` -/
def P8414113168517719210.Spec : Prop :=
  ∀ n, P8414113168517719210.a n = A302946 (n + 1)

end A302946

/-! ## A302946.P4109947895139912850

`round((sqrt(2)+1)^(n+1))²`
-/

namespace A302946.P4109947895139912850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 1) ^ (n + 1)) ^ 2

end

end A302946.P4109947895139912850

namespace A302946

/-- `round((sqrt(2)+1)^(n+1))²` -/
def P4109947895139912850.Spec : Prop :=
  ∀ n, P4109947895139912850.a n = A302946 (n + 1)

end A302946

/-! ## A302946.P5558484295888305409

`Δ[ogf((2-4x+2x^2)/(1-5x-5x^2+x^3))]`
-/

namespace A302946.P5558484295888305409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4, 2] [1, -5, -5, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A302946.P5558484295888305409

namespace A302946

/-- `Δ[ogf((2-4x+2x^2)/(1-5x-5x^2+x^3))]` -/
def P5558484295888305409.Spec : Prop :=
  ∀ n, P5558484295888305409.a n = A302946 (n + 1)

end A302946

/-! ## A302946.P9980335690380608652

`Δ[Δ[A114619(n)]]`
-/

namespace A302946.P9980335690380608652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114619 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A302946.P9980335690380608652

namespace A302946

/-- `Δ[Δ[A114619(n)]]` -/
def P9980335690380608652.Spec : Prop :=
  ∀ n, P9980335690380608652.a n = A302946 (n + 1)

end A302946

/-! ## A302946.P5785764081512259844

`4*A078057(n)²`
-/

namespace A302946.P5785764081512259844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A078057 n ^ 2

end

end A302946.P5785764081512259844

namespace A302946

/-- `4*A078057(n)²` -/
def P5785764081512259844.Spec : Prop :=
  ∀ n, P5785764081512259844.a n = A302946 (n + 1)

end A302946

/-! ## A302946.P120845826837920133

`lcm(4, A041010(n)²)`
-/

namespace A302946.P120845826837920133
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A041010 n ^ 2)

end

end A302946.P120845826837920133

namespace A302946

/-- `lcm(4, A041010(n)²)` -/
def P120845826837920133.Spec : Prop :=
  ∀ n, (P120845826837920133.a n : ℤ) = A302946 (n + 1)

end A302946

/-! ## A302946.P14807165690961325536

`Δ[2*A084159(n)]`
-/

namespace A302946.P14807165690961325536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A302946.P14807165690961325536

namespace A302946

/-- `Δ[2*A084159(n)]` -/
def P14807165690961325536.Spec : Prop :=
  ∀ n, P14807165690961325536.a n = A302946 (n + 1)

end A302946

/-! ## A302946.P5352270341174827570

`Δ[or(2, A002315(n))]`
-/

namespace A302946.P5352270341174827570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A002315 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A302946.P5352270341174827570

namespace A302946

/-- `Δ[or(2, A002315(n))]` -/
def P5352270341174827570.Spec : Prop :=
  ∀ n, P5352270341174827570.a n = A302946 (n + 1)

end A302946

/-! ## A302946.P17571198247871246615

`record[Δ[A266505(n)]²]`
-/

namespace A302946.P17571198247871246615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266505 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302946.P17571198247871246615

namespace A302946

/-- `record[Δ[A266505(n)]²]` -/
def P17571198247871246615.Spec : Prop :=
  ∀ n, P17571198247871246615.a n = A302946 (n + 1)

end A302946

/-! ## A302946.P6727725246582552223

`4*A111587(2*n)`
-/

namespace A302946.P6727725246582552223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A111587 (2 * n)

end

end A302946.P6727725246582552223

namespace A302946

/-- `4*A111587(2*n)` -/
def P6727725246582552223.Spec : Prop :=
  ∀ n, P6727725246582552223.a n = A302946 (n + 1)

end A302946

/-! ## A302946.P5323179717369414692

`record[(A174504(n)+1)²]`
-/

namespace A302946.P5323179717369414692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A174504 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302946.P5323179717369414692

namespace A302946

/-- `record[(A174504(n)+1)²]` -/
def P5323179717369414692.Spec : Prop :=
  ∀ n, P5323179717369414692.a n = A302946 (n + 1)

end A302946

/-! ## A302946.P5910624340319800171

`Δ[Δ[2*A079291(n)]]`
-/

namespace A302946.P5910624340319800171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079291 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A302946.P5910624340319800171

namespace A302946

/-- `Δ[Δ[2*A079291(n)]]` -/
def P5910624340319800171.Spec : Prop :=
  ∀ n, P5910624340319800171.a n = A302946 (n + 1)

end A302946

/-! ## A302946.P13428043975669026143

`Δ[or(2, Δ[A001108(n)])]`
-/

namespace A302946.P13428043975669026143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A302946.P13428043975669026143

namespace A302946

/-- `Δ[or(2, Δ[A001108(n)])]` -/
def P13428043975669026143.Spec : Prop :=
  ∀ n, P13428043975669026143.a n = A302946 (n + 1)

end A302946

/-! ## A302946.P3818088849545721162

`Δ[Δ[2*A000129(n)²]]`
-/

namespace A302946.P3818088849545721162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000129 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A302946.P3818088849545721162

namespace A302946

/-- `Δ[Δ[2*A000129(n)²]]` -/
def P3818088849545721162.Spec : Prop :=
  ∀ n, P3818088849545721162.a n = A302946 (n + 1)

end A302946

/-! ## A302946.P15837442780010510377

`record[Δ[A189050(n+1)]²]`
-/

namespace A302946.P15837442780010510377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189050 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302946.P15837442780010510377

namespace A302946

/-- `record[Δ[A189050(n+1)]²]` -/
def P15837442780010510377.Spec : Prop :=
  ∀ n, P15837442780010510377.a n = A302946 (n + 1)

end A302946

/-! ## A302946.P6970571818464139221

`2*(A184327(n+1)+1)`
-/

namespace A302946.P6970571818464139221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A184327 (n + 1) + 1)

end

end A302946.P6970571818464139221

namespace A302946

/-- `2*(A184327(n+1)+1)` -/
def P6970571818464139221.Spec : Prop :=
  ∀ n, P6970571818464139221.a n = A302946 (n + 1)

end A302946

/-! ## A302946.P11202290688333572811

`4*A249576(3*n+4)²`
-/

namespace A302946.P11202290688333572811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A249576 (3 * n + 4) ^ 2

end

end A302946.P11202290688333572811

namespace A302946

/-- `4*A249576(3*n+4)²` -/
def P11202290688333572811.Spec : Prop :=
  ∀ n, P11202290688333572811.a n = A302946 (n + 1)

end A302946

/-! ## A302946.P12748083417495112176

`A002203(n+1)*A002203(n+1)`
-/

namespace A302946.P12748083417495112176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 (n + 1) * A002203 (n + 1)

end

end A302946.P12748083417495112176

namespace A302946

/-- `A002203(n+1)*A002203(n+1)` -/
def P12748083417495112176.Spec : Prop :=
  ∀ n, P12748083417495112176.a n = A302946 (n + 1)

end A302946

/-!
# A302947: Number of n X n 0..1 arrays with every element equal to 1, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302947, there is no canonical definition to state claims against.
-/

/-! ## A302947.P10486966629392503983

`A302953(∑[4*n]+1)`
-/

namespace A302947.P10486966629392503983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302947.P10486966629392503983

/-! ## A302947.P11312173193068013465

`A302953(A001844(n))+A033665(n)`
-/

namespace A302947.P11312173193068013465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (A001844 n).toNat + A033665 n

end

end A302947.P11312173193068013465

/-! ## A302947.P2768395348274717452

`A302953(A001844(n))+A277159(n)`
-/

namespace A302947.P2768395348274717452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (A001844 n).toNat + A277159 n

end

end A302947.P2768395348274717452

/-! ## A302947.P569430022231128473

`A040790(n)*A302953(A001844(n))`
-/

namespace A302947.P569430022231128473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040790 n * A302953 (A001844 n).toNat

end

end A302947.P569430022231128473

/-! ## A302947.P2533263047982245037

`A055642(n)*A302953(A001844(n))`
-/

namespace A302947.P2533263047982245037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A302953 (A001844 n).toNat

end

end A302947.P2533263047982245037

/-!
# A302948: Number of nX3 0..1 arrays with every element equal to 1, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302948, there is no canonical definition to state claims against.
-/

/-! ## A302948.P6313131168929046660

`A302953(∑[n+3]+1)`
-/

namespace A302948.P6313131168929046660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302948.P6313131168929046660

/-! ## A302948.P9514639865550698596

`record[A302953(A198464(n+1))]`
-/

namespace A302948.P9514639865550698596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302948.P9514639865550698596

/-! ## A302948.P13392601760193101601

`record[gcd(A055138(n), A302953(n+1))]`
-/

namespace A302948.P13392601760193101601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055138 n) (A302953 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302948.P13392601760193101601

/-! ## A302948.P2337956301726771555

`A302953(A034856(n+2))+A025469(n)`
-/

namespace A302948.P2337956301726771555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (A034856 (n + 2)).toNat + A025469 n

end

end A302948.P2337956301726771555

/-! ## A302948.P3669821201584131248

`A302953(A034856(n+2))+A185255(n)`
-/

namespace A302948.P3669821201584131248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (A034856 (n + 2)).toNat + A185255 n

end

end A302948.P3669821201584131248

/-!
# A302949: Number of nX4 0..1 arrays with every element equal to 1, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302949, there is no canonical definition to state claims against.
-/

/-! ## A302949.P5437144159266152504

`A302953(A141214(n+1))`
-/

namespace A302949.P5437144159266152504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (A141214 (n + 1)).toNat

end

end A302949.P5437144159266152504

/-! ## A302949.P4720010778909778171

`A302953(A027379(n+2))`
-/

namespace A302949.P4720010778909778171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (A027379 (n + 2)).toNat

end

end A302949.P4720010778909778171

/-! ## A302949.P6523711116488084500

`A302953(A155212(n)+5)`
-/

namespace A302949.P6523711116488084500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (A155212 n + 5).toNat

end

end A302949.P6523711116488084500

/-! ## A302949.P13768805728912627369

`A302953(A056000(n)+7)`
-/

namespace A302949.P13768805728912627369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (A056000 n + 7).toNat

end

end A302949.P13768805728912627369

/-! ## A302949.P8360231250064367667

`A302953(eq[2, A220062(n)])`
-/

namespace A302949.P8360231250064367667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302949.P8360231250064367667

/-!
# A302950: Number of n X 5 0..1 arrays with every element equal to 1, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302950, there is no canonical definition to state claims against.
-/

/-! ## A302950.P16911575404330073802

`A302953(Δ[A264443(n)])`
-/

namespace A302950.P16911575404330073802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (f1 (n + 1) - f1 n).toNat

end

end A302950.P16911575404330073802

/-! ## A302950.P1522570673806738156

`A302953(eq[2, A092921(n)])`
-/

namespace A302950.P1522570673806738156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302950.P1522570673806738156

/-! ## A302950.P7462262517450321465

`A302953(eq[4, A193592(n)])`
-/

namespace A302950.P7462262517450321465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302950.P7462262517450321465

/-! ## A302950.P6244283467646623322

`A302953(Δ[A023545(n+1)])`
-/

namespace A302950.P6244283467646623322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (f1 (n + 1) - f1 n).toNat

end

end A302950.P6244283467646623322

/-! ## A302950.P10347043582383494552

`A302953(eq[5, A200370(n+1)])`
-/

namespace A302950.P10347043582383494552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302950.P10347043582383494552

/-!
# A302951: Number of nX6 0..1 arrays with every element equal to 1, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302951, there is no canonical definition to state claims against.
-/

/-! ## A302951.P8637461286848418394

`A302953(eq[3, A219347(n)])`
-/

namespace A302951.P8637461286848418394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302951.P8637461286848418394

/-! ## A302951.P8223101078675257863

`A302953(eq[5, A193592(n)])`
-/

namespace A302951.P8223101078675257863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302951.P8223101078675257863

/-! ## A302951.P266067963023046360

`A302953(A055999(n+3)+1)`
-/

namespace A302951.P266067963023046360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (A055999 (n + 3) + 1).toNat

end

end A302951.P266067963023046360

/-! ## A302951.P11032971453865971382

`A302953(A133263(n+6)-7)`
-/

namespace A302951.P11032971453865971382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (A133263 (n + 6) - 7).toNat

end

end A302951.P11032971453865971382

/-! ## A302951.P14316970741422297261

`A302953(eq[6, A200370(n+1)])`
-/

namespace A302951.P14316970741422297261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302951.P14316970741422297261

/-!
# A302952: Number of nX7 0..1 arrays with every element equal to 1, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302952, there is no canonical definition to state claims against.
-/

/-! ## A302952.P4672914850085050750

`A302953(eq[4, A219347(n)])`
-/

namespace A302952.P4672914850085050750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302952.P4672914850085050750

/-! ## A302952.P12089837423983895815

`A302953(eq[6, A193592(n)])`
-/

namespace A302952.P12089837423983895815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302952.P12089837423983895815

/-! ## A302952.P7015017248000123426

`A302953(Δ[A023551(n+2)])`
-/

namespace A302952.P7015017248000123426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (f1 (n + 1) - f1 n).toNat

end

end A302952.P7015017248000123426

/-! ## A302952.P14260958895203985709

`A302953(A000096(n+6)-5)`
-/

namespace A302952.P14260958895203985709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (A000096 (n + 6) - 5).toNat

end

end A302952.P14260958895203985709

/-! ## A302952.P7723360965757579325

`A302953(A000124(n+7)-7)`
-/

namespace A302952.P7723360965757579325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (A000124 (n + 7) - 7).toNat

end

end A302952.P7723360965757579325

/-!
# A302953: T(n,k) = Number of n X k 0..1 arrays with every element equal to 1, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302953, there is no canonical definition to state claims against.
-/

/-! ## A302953.P5688739273784957675

`A302381(n+1)+A185255(A176420(n))`
-/

namespace A302953.P5688739273784957675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302381 (n + 1) + A185255 (A176420 n).toNat

end

end A302953.P5688739273784957675

/-! ## A302953.P6932375916025502104

`xor(A054070(A022173(n)), A303102(n+1))`
-/

namespace A302953.P6932375916025502104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054070 (A022173 n).toNat) (A303102 (n + 1))

end

end A302953.P6932375916025502104

/-! ## A302953.P10775395727435464739

`A185255(A176420(n))+A303102(n+1)+A016389(A022166(n))`
-/

namespace A302953.P10775395727435464739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A176420 n).toNat + (A303102 (n + 1) + A016389 (A022166 n).toNat)

end

end A302953.P10775395727435464739

/-! ## A302953.P9783892484469147923

`A185255(A176420(n))+A303102(n+1)+A016389(A027336(n))`
-/

namespace A302953.P9783892484469147923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A176420 n).toNat + (A303102 (n + 1) + A016389 (A027336 n).toNat)

end

end A302953.P9783892484469147923

/-! ## A302953.P7743268951551263530

`A185255(A176420(n))+A303102(n+1)-A014707(A022171(n))`
-/

namespace A302953.P7743268951551263530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A176420 n).toNat + (A303102 (n + 1) - A014707 (A022171 n).toNat)

end

end A302953.P7743268951551263530

/-!
# A302954: Number of 3Xn 0..1 arrays with every element equal to 1, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302954, there is no canonical definition to state claims against.
-/

/-! ## A302954.P248706494545597564

`A302953(∑[n+2]+4)`
-/

namespace A302954.P248706494545597564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302954.P248706494545597564

/-! ## A302954.P14768247562200143750

`A302953(A167614(n+1))+A185037(n)`
-/

namespace A302954.P14768247562200143750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (A167614 (n + 1)).toNat + A185037 n

end

end A302954.P14768247562200143750

/-! ## A302954.P9021622632987471534

`A057427(n)*A302953(A167614(n+1))`
-/

namespace A302954.P9021622632987471534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A302953 (A167614 (n + 1)).toNat

end

end A302954.P9021622632987471534

/-! ## A302954.P12734066373126284345

`A302953(A167614(n+1))%A021154(n)`
-/

namespace A302954.P12734066373126284345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302953 (A167614 (n + 1)).toNat) (A021154 n)

end

end A302954.P12734066373126284345

/-! ## A302954.P17842655039417067613

`lcm(A033999(n), A302953(A167614(n+1)))`
-/

namespace A302954.P17842655039417067613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A302953 (A167614 (n + 1)).toNat)

end

end A302954.P17842655039417067613

/-!
# A302955: Number of 4Xn 0..1 arrays with every element equal to 1, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302955, there is no canonical definition to state claims against.
-/

/-! ## A302955.P9501312865357948661

`A302953(A141214(n)+7)`
-/

namespace A302955.P9501312865357948661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (A141214 n + 7).toNat

end

end A302955.P9501312865357948661

/-! ## A302955.P11353239020877638892

`A302953(A052905(n)+9)`
-/

namespace A302955.P11353239020877638892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (A052905 n + 9).toNat

end

end A302955.P11353239020877638892

/-! ## A302955.P17324038383395121147

`A302953(A055999(n)+10)`
-/

namespace A302955.P17324038383395121147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (A055999 n + 10).toNat

end

end A302955.P17324038383395121147

/-! ## A302955.P14975172789869367404

`A302953(A167614(n+2)+1)`
-/

namespace A302955.P14975172789869367404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (A167614 (n + 2) + 1).toNat

end

end A302955.P14975172789869367404

/-! ## A302955.P13245914720468063255

`A302953(A166136(n+2)-2)`
-/

namespace A302955.P13245914720468063255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (A166136 (n + 2) - 2).toNat

end

end A302955.P13245914720468063255

/-!
# A302956: Number of 5Xn 0..1 arrays with every element equal to 1, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302956, there is no canonical definition to state claims against.
-/

/-! ## A302956.P8974365709472728262

`A302953(A155212(n)+13)`
-/

namespace A302956.P8974365709472728262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (A155212 n + 13).toNat

end

end A302956.P8974365709472728262

/-! ## A302956.P10101538613231279736

`A302953(A056000(n)+15)`
-/

namespace A302956.P10101538613231279736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (A056000 n + 15).toNat

end

end A302956.P10101538613231279736

/-! ## A302956.P14754166908654703949

`A302953(eq[7, A066657(n)])`
-/

namespace A302956.P14754166908654703949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302956.P14754166908654703949

/-! ## A302956.P13403320766665537020

`A302953(A051936(n+4)+14)`
-/

namespace A302956.P13403320766665537020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (A051936 (n + 4) + 14).toNat

end

end A302956.P13403320766665537020

/-! ## A302956.P12115493174912779806

`A302953(eq[6, A131818(n+1)])`
-/

namespace A302956.P12115493174912779806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302956.P12115493174912779806

/-!
# A302957: Number of 6Xn 0..1 arrays with every element equal to 1, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302957, there is no canonical definition to state claims against.
-/

/-! ## A302957.P5729233635893270243

`A302953(A000217(n+5)+6)`
-/

namespace A302957.P5729233635893270243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (A000217 (n + 5) + 6).toNat

end

end A302957.P5729233635893270243

/-! ## A302957.P10988899475266899306

`A302953(A055999(n+2)+12)`
-/

namespace A302957.P10988899475266899306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (A055999 (n + 2) + 12).toNat

end

end A302957.P10988899475266899306

/-! ## A302957.P444208859384092797

`A302953(eq[6, A130270(n+1)])`
-/

namespace A302957.P444208859384092797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302957.P444208859384092797

/-! ## A302957.P5684641083580445971

`A302953(eq[7, A131818(n+1)])`
-/

namespace A302957.P5684641083580445971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302957.P5684641083580445971

/-! ## A302957.P10736526429122877152

`A302953(A133263(n+6)-(n+2))`
-/

namespace A302957.P10736526429122877152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (A133263 (n + 6) - (n + 2 : ℤ)).toNat

end

end A302957.P10736526429122877152

/-!
# A302958: Number of 7Xn 0..1 arrays with every element equal to 1, 2, 3, 4 or 5 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302958, there is no canonical definition to state claims against.
-/

/-! ## A302958.P14200903476524461495

`A302953(A056119(n)+28)`
-/

namespace A302958.P14200903476524461495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (A056119 n + 28).toNat

end

end A302958.P14200903476524461495

/-! ## A302958.P12348462650673016126

`A302953(eq[11, A066657(n)])`
-/

namespace A302958.P12348462650673016126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302958.P12348462650673016126

/-! ## A302958.P13736655515113376728

`A302953(eq[8, A131818(n+1)])`
-/

namespace A302958.P13736655515113376728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302958.P13736655515113376728

/-! ## A302958.P75755270647655447

`A302953(A000096(n+6)+1-n)`
-/

namespace A302958.P75755270647655447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (A000096 (n + 6) + 1 - (n : ℤ)).toNat

end

end A302958.P75755270647655447

/-! ## A302958.P2438642969293467051

`A302953(A000124(n+7)-(n+1))`
-/

namespace A302958.P2438642969293467051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302953 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A302958.P2438642969293467051

/-!
# A302959: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302959, there is no canonical definition to state claims against.
-/

/-! ## A302959.P1246711877523794326

`A302965(∑[4*n]+1)`
-/

namespace A302959.P1246711877523794326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302959.P1246711877523794326

/-! ## A302959.P129225703194578265

`A302965(A001844(n))+A171765(n)`
-/

namespace A302959.P129225703194578265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (A001844 n).toNat + A171765 n

end

end A302959.P129225703194578265

/-! ## A302959.P15475226880134271327

`lcm(A033999(n), A302965(A001844(n)))`
-/

namespace A302959.P15475226880134271327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A302965 (A001844 n).toNat)

end

end A302959.P15475226880134271327

/-!
# A302960: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 3 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302960, there is no canonical definition to state claims against.
-/

/-! ## A302960.P543992596534025981

`A302965(∑[n+3]+1)`
-/

namespace A302960.P543992596534025981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302960.P543992596534025981

/-!
# A302961: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 3 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302961, there is no canonical definition to state claims against.
-/

/-! ## A302961.P4505515815324447885

`A302965(A141214(n+1))`
-/

namespace A302961.P4505515815324447885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (A141214 (n + 1)).toNat

end

end A302961.P4505515815324447885

/-! ## A302961.P4420093504730896503

`A302965(A027379(n+2))`
-/

namespace A302961.P4420093504730896503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (A027379 (n + 2)).toNat

end

end A302961.P4420093504730896503

/-! ## A302961.P18400106938968376467

`A302965(A155212(n)+5)`
-/

namespace A302961.P18400106938968376467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (A155212 n + 5).toNat

end

end A302961.P18400106938968376467

/-! ## A302961.P900140141501909421

`A302965(eq[4, A140997(n)])`
-/

namespace A302961.P900140141501909421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302961.P900140141501909421

/-! ## A302961.P16773605726661140305

`A302965(Δ[A006416(n+2)])`
-/

namespace A302961.P16773605726661140305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (f1 (n + 1) - f1 n).toNat

end

end A302961.P16773605726661140305

/-!
# A302962: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302962, there is no canonical definition to state claims against.
-/

/-! ## A302962.P2266877706284922512

`A302965(Δ[A264443(n)])`
-/

namespace A302962.P2266877706284922512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (f1 (n + 1) - f1 n).toNat

end

end A302962.P2266877706284922512

/-! ## A302962.P10812885088614658749

`A302965(A056115(n)+11)`
-/

namespace A302962.P10812885088614658749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (A056115 n + 11).toNat

end

end A302962.P10812885088614658749

/-! ## A302962.P5492302625710412908

`A302965(eq[2, A092921(n)])`
-/

namespace A302962.P5492302625710412908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302962.P5492302625710412908

/-! ## A302962.P4869962040876595064

`A302965(eq[4, A193592(n)])`
-/

namespace A302962.P4869962040876595064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302962.P4869962040876595064

/-! ## A302962.P8683938907568548146

`A302965(Δ[A023545(n+1)])`
-/

namespace A302962.P8683938907568548146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (f1 (n + 1) - f1 n).toNat

end

end A302962.P8683938907568548146

/-!
# A302963: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302963, there is no canonical definition to state claims against.
-/

/-! ## A302963.P8667930932497883734

`A302965(A052905(n+3))`
-/

namespace A302963.P8667930932497883734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (A052905 (n + 3)).toNat

end

end A302963.P8667930932497883734

/-! ## A302963.P12600043627484547651

`A302965(eq[3, A219347(n)])`
-/

namespace A302963.P12600043627484547651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302963.P12600043627484547651

/-! ## A302963.P649250716437890920

`A302965(eq[5, A193592(n)])`
-/

namespace A302963.P649250716437890920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302963.P649250716437890920

/-! ## A302963.P13075371530157802514

`A302965(eq[16, A166065(n)])`
-/

namespace A302963.P13075371530157802514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302963.P13075371530157802514

/-! ## A302963.P8232455851325809714

`A302965(eq[8, A185782(n+1)])`
-/

namespace A302963.P8232455851325809714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302963.P8232455851325809714

/-!
# A302964: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302964, there is no canonical definition to state claims against.
-/

/-! ## A302964.P16642023067130787324

`A302965(A055999(n+4))`
-/

namespace A302964.P16642023067130787324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (A055999 (n + 4)).toNat

end

end A302964.P16642023067130787324

/-! ## A302964.P6233099333995128616

`A302965(eq[4, A219347(n)])`
-/

namespace A302964.P6233099333995128616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302964.P6233099333995128616

/-! ## A302964.P14969159003096934981

`A302965(eq[6, A193592(n)])`
-/

namespace A302964.P14969159003096934981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302964.P14969159003096934981

/-! ## A302964.P8316734933959045999

`A302965(eq[7, A200370(n+1)])`
-/

namespace A302964.P8316734933959045999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302964.P8316734933959045999

/-! ## A302964.P5630240828985052649

`A302965(eq[10, A185782(n+1)])`
-/

namespace A302964.P5630240828985052649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302964.P5630240828985052649

/-!
# A302965: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 3 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302965, there is no canonical definition to state claims against.
-/

/-! ## A302965.P3824156347755422524

`A302265(n+1)+A011731(A022171(n))`
-/

namespace A302965.P3824156347755422524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (n + 1) + A011731 (A022171 n).toNat

end

end A302965.P3824156347755422524

/-! ## A302965.P8789871828946180955

`A302265(n+1)+A199092(A094816(n))`
-/

namespace A302965.P8789871828946180955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (n + 1) + A199092 (A094816 n).toNat

end

end A302965.P8789871828946180955

/-! ## A302965.P218077978404195456

`A327146(A331569(n))+A302265(n+1)`
-/

namespace A302965.P218077978404195456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327146 (A331569 n).toNat + A302265 (n + 1)

end

end A302965.P218077978404195456

/-! ## A302965.P16624124609148659287

`A302265(n+1)-A016389(A022166(n))`
-/

namespace A302965.P16624124609148659287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (n + 1) - A016389 (A022166 n).toNat

end

end A302965.P16624124609148659287

/-! ## A302965.P3777921097349459412

`A302265(n+1)-A016389(A027336(n))`
-/

namespace A302965.P3777921097349459412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302265 (n + 1) - A016389 (A027336 n).toNat

end

end A302965.P3777921097349459412

/-!
# A302966: Number of 3Xn 0..1 arrays with every element equal to 0, 1, 2, 3 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302966, there is no canonical definition to state claims against.
-/

/-! ## A302966.P2484627346198131749

`A302965(∑[n+2]+4)`
-/

namespace A302966.P2484627346198131749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302966.P2484627346198131749

/-! ## A302966.P15599321568289328999

`A016168(n)*A302965(A167614(n+1))`
-/

namespace A302966.P15599321568289328999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016168 n * A302965 (A167614 (n + 1)).toNat

end

end A302966.P15599321568289328999

/-! ## A302966.P12324508270704395519

`A152851(n)*A302965(A167614(n+1))`
-/

namespace A302966.P12324508270704395519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152851 n * A302965 (A167614 (n + 1)).toNat

end

end A302966.P12324508270704395519

/-! ## A302966.P7234244092809938903

`lcm(A020985(n), A302965(A167614(n+1)))`
-/

namespace A302966.P7234244092809938903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A302965 (A167614 (n + 1)).toNat)

end

end A302966.P7234244092809938903

/-! ## A302966.P10116326151893066853

`A302965(A167614(n+1))%A222990(n+1)`
-/

namespace A302966.P10116326151893066853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302965 (A167614 (n + 1)).toNat) (A222990 (n + 1))

end

end A302966.P10116326151893066853

/-!
# A302967: Number of 4Xn 0..1 arrays with every element equal to 0, 1, 2, 3 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302967, there is no canonical definition to state claims against.
-/

/-! ## A302967.P13275853347962547347

`A302965(A141214(n)+7)`
-/

namespace A302967.P13275853347962547347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (A141214 n + 7).toNat

end

end A302967.P13275853347962547347

/-! ## A302967.P15745795911139355976

`A302965(A052905(n)+9)`
-/

namespace A302967.P15745795911139355976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (A052905 n + 9).toNat

end

end A302967.P15745795911139355976

/-! ## A302967.P15834309609258985232

`A302965(A055999(n)+10)`
-/

namespace A302967.P15834309609258985232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (A055999 n + 10).toNat

end

end A302967.P15834309609258985232

/-! ## A302967.P10340847278883883474

`A302965(A167614(n+2)+1)`
-/

namespace A302967.P10340847278883883474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (A167614 (n + 2) + 1).toNat

end

end A302967.P10340847278883883474

/-! ## A302967.P69555785032658272

`A302965(eq[5, A131818(n+1)])`
-/

namespace A302967.P69555785032658272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302967.P69555785032658272

/-!
# A302968: Number of 5Xn 0..1 arrays with every element equal to 0, 1, 2, 3 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302968, there is no canonical definition to state claims against.
-/

/-! ## A302968.P14585111600153680439

`A302965(A167499(n+3))`
-/

namespace A302968.P14585111600153680439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (A167499 (n + 3)).toNat

end

end A302968.P14585111600153680439

/-! ## A302968.P14584074198001289539

`A302965(A155212(n)+13)`
-/

namespace A302968.P14584074198001289539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (A155212 n + 13).toNat

end

end A302968.P14584074198001289539

/-! ## A302968.P8057785562451523821

`A302965(A167614(n+3)+2)`
-/

namespace A302968.P8057785562451523821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (A167614 (n + 3) + 2).toNat

end

end A302968.P8057785562451523821

/-! ## A302968.P18223213174681022896

`A302965(A141214(n+1)+8)`
-/

namespace A302968.P18223213174681022896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (A141214 (n + 1) + 8).toNat

end

end A302968.P18223213174681022896

/-! ## A302968.P10985678670539757175

`A302965(A046691(n+2)+9)`
-/

namespace A302968.P10985678670539757175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (A046691 (n + 2) + 9).toNat

end

end A302968.P10985678670539757175

/-!
# A302969: Number of 6Xn 0..1 arrays with every element equal to 0, 1, 2, 3 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302969, there is no canonical definition to state claims against.
-/

/-! ## A302969.P6787489563839317754

`A302965(A056115(n)+21)`
-/

namespace A302969.P6787489563839317754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (A056115 n + 21).toNat

end

end A302969.P6787489563839317754

/-! ## A302969.P3076146771924939606

`A302965(A167499(n+4)+1)`
-/

namespace A302969.P3076146771924939606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (A167499 (n + 4) + 1).toNat

end

end A302969.P3076146771924939606

/-! ## A302969.P5925119723511542715

`A302965(A167614(n+4)+3)`
-/

namespace A302969.P5925119723511542715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (A167614 (n + 4) + 3).toNat

end

end A302969.P5925119723511542715

/-! ## A302969.P5757849349952650782

`A302965(A141214(n+2)+9)`
-/

namespace A302969.P5757849349952650782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (A141214 (n + 2) + 9).toNat

end

end A302969.P5757849349952650782

/-! ## A302969.P17662606290461268708

`A302965(eq[7, A131818(n+1)])`
-/

namespace A302969.P17662606290461268708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302969.P17662606290461268708

/-!
# A302970: Number of 7Xn 0..1 arrays with every element equal to 0, 1, 2, 3 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302970, there is no canonical definition to state claims against.
-/

/-! ## A302970.P985640118712976119

`A302965(A056119(n)+28)`
-/

namespace A302970.P985640118712976119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (A056119 n + 28).toNat

end

end A302970.P985640118712976119

/-! ## A302970.P12089079008006826908

`A302965(eq[11, A066657(n)])`
-/

namespace A302970.P12089079008006826908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302970.P12089079008006826908

/-! ## A302970.P12979880918241477966

`A302965(A167614(n+5)+4)`
-/

namespace A302970.P12979880918241477966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (A167614 (n + 5) + 4).toNat

end

end A302970.P12979880918241477966

/-! ## A302970.P206112117581702073

`A302965(eq[8, A131818(n+1)])`
-/

namespace A302970.P206112117581702073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302970.P206112117581702073

/-! ## A302970.P3521322670319537251

`A302965(A060747(n+11)+eq[4, A140996(n)])`
-/

namespace A302970.P3521322670319537251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302965 (A060747 (n + 11) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)).toNat

end

end A302970.P3521322670319537251

/-!
# A302974: a(n) = numerator of tau(n)^n / n^tau(n).

The programs for A302974, there is no canonical definition to state claims against.
-/

/-! ## A302974.P5461100350211075434

`A236284(n+1)/gcd(A062758(n+1), A236284(n+1))`
-/

namespace A302974.P5461100350211075434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236284 (n + 1) : ℚ) / (Int.gcd (A062758 (n + 1)) (A236284 (n + 1)) : ℚ)

end

end A302974.P5461100350211075434

/-! ## A302974.P4145897118760380917

`lcm(A217854(n+1), A236284(n+1))/A062758(n+1)`
-/

namespace A302974.P4145897118760380917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A217854 (n + 1)) (A236284 (n + 1)) : ℚ) / (A062758 (n + 1) : ℚ)

end

end A302974.P4145897118760380917

/-! ## A302974.P15017646041135197357

`∏{e}[n+1, #+1]^xor(1, n)^∏{e}[n+1, #]`
-/

namespace A302974.P15017646041135197357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) ^ Nat.xor 1 n ^ (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A302974.P15017646041135197357

/-!
# A302975: a(n) = denominator of tau(n)^n / n^tau(n).

The programs for A302975, the canonical program `A302975.P17848082813074921203` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302975 has offset 1).

The definition of A302975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2729 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302975.P17848082813074921203

`A137926(n+1)^Δ[A006218(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A302975

/-- `A137926(n+1)^Δ[A006218(n)]` -/
def P17848082813074921203.Spec : Prop :=
  ∀ n, P17848082813074921203.a n = (A302975 (n + 1) : ℚ)

end A302975

/-! ## A302975.P13398762422927512557

`A137926(n+1)^A000005(n+1)`
-/

namespace A302975.P13398762422927512557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137926 (n + 1) : ℚ) ^ (A000005 (n + 1) : ℤ)

end

end A302975.P13398762422927512557

namespace A302975

/-- `A137926(n+1)^A000005(n+1)` -/
def P13398762422927512557.Spec : Prop :=
  ∀ n, P13398762422927512557.a n = (A302975 (n + 1) : ℚ)

end A302975

/-! ## A302975.P7508466997774173551

`sqrt(A137926(n+1))^A062011(n+1)`
-/

namespace A302975.P7508466997774173551
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A137926 (n + 1) : ℝ) ^ (A062011 (n + 1) : ℤ)

end

end A302975.P7508466997774173551

namespace A302975

/-- `sqrt(A137926(n+1))^A062011(n+1)` -/
def P7508466997774173551.Spec : Prop :=
  ∀ n, P7508466997774173551.a n = (A302975 (n + 1) : ℝ)

end A302975

/-! ## A302975.P14589991917880772628

`A137926(n+1)^∑{d}[n+1, A057427(#)]`
-/

namespace A302975.P14589991917880772628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137926 (n + 1) : ℚ) ^ (∑ d ∈ Nat.divisors (f1 n), A057427 d : ℤ)

end

end A302975.P14589991917880772628

namespace A302975

/-- `A137926(n+1)^∑{d}[n+1, A057427(#)]` -/
def P14589991917880772628.Spec : Prop :=
  ∀ n, P14589991917880772628.a n = (A302975 (n + 1) : ℚ)

end A302975

/-! ## A302975.P12055194266844839123

`A137926(n+1)^(A038040(n+1)/(n+1))`
-/

namespace A302975.P12055194266844839123
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A137926 (n + 1) : ℝ) ^ ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ)

end

end A302975.P12055194266844839123

namespace A302975

/-- `A137926(n+1)^(A038040(n+1)/(n+1))` -/
def P12055194266844839123.Spec : Prop :=
  ∀ n, P12055194266844839123.a n = (A302975 (n + 1) : ℝ)

end A302975

/-! ## A302975.P13230638953454620416

`A137926(n+1)^A001227(A003961(n+1))`
-/

namespace A302975.P13230638953454620416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137926 (n + 1) : ℚ) ^ (A001227 (A003961 (n + 1)).toNat : ℤ)

end

end A302975.P13230638953454620416

namespace A302975

/-- `A137926(n+1)^A001227(A003961(n+1))` -/
def P13230638953454620416.Spec : Prop :=
  ∀ n, P13230638953454620416.a n = (A302975 (n + 1) : ℚ)

end A302975

/-! ## A302975.P9240754553356074373

`A137926(n+1)^A001222(A100587(n+1)+1)`
-/

namespace A302975.P9240754553356074373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137926 (n + 1) : ℚ) ^ (A001222 (A100587 (n + 1) + 1).toNat : ℤ)

end

end A302975.P9240754553356074373

namespace A302975

/-- `A137926(n+1)^A001222(A100587(n+1)+1)` -/
def P9240754553356074373.Spec : Prop :=
  ∀ n, P9240754553356074373.a n = (A302975 (n + 1) : ℚ)

end A302975

/-! ## A302975.P15810650668197334555

`A137926(n+1)^A238353(∑[n+1])`
-/

namespace A302975.P15810650668197334555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137926 (n + 1) : ℚ) ^ (A238353 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A302975.P15810650668197334555

namespace A302975

/-- `A137926(n+1)^A238353(∑[n+1])` -/
def P15810650668197334555.Spec : Prop :=
  ∀ n, P15810650668197334555.a n = (A302975 (n + 1) : ℚ)

end A302975

/-! ## A302975.P11183916102509276917

`A137926(n+1)^A004907(A334954(n+1))`
-/

namespace A302975.P11183916102509276917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137926 (n + 1) : ℚ) ^ (A004907 (A334954 (n + 1)).toNat : ℤ)

end

end A302975.P11183916102509276917

namespace A302975

/-- `A137926(n+1)^A004907(A334954(n+1))` -/
def P11183916102509276917.Spec : Prop :=
  ∀ n, P11183916102509276917.a n = (A302975 (n + 1) : ℚ)

end A302975

/-! ## A302975.P17058000578202642106

`A062758(n+1)/gcd(A062758(n+1), A236284(n+1))`
-/

namespace A302975.P17058000578202642106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062758 (n + 1) : ℚ) / (Int.gcd (A062758 (n + 1)) (A236284 (n + 1)) : ℚ)

end

end A302975.P17058000578202642106

namespace A302975

/-- `A062758(n+1)/gcd(A062758(n+1), A236284(n+1))` -/
def P17058000578202642106.Spec : Prop :=
  ∀ n, P17058000578202642106.a n = (A302975 (n + 1) : ℚ)

end A302975

/-!
# A302976: a(n) = tau(n)^n mod n^tau(n).

The programs for A302976, there is no canonical definition to state claims against.
-/

/-! ## A302976.P14449229803443319716

`∏{e}[n+1, (#+1)^(n+1)]%∏{d}[n+1, #²]`
-/

namespace A302976.P14449229803443319716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) ^ (n + 1)) % (∏ d ∈ Nat.divisors (f2 n), d ^ 2)

end

end A302976.P14449229803443319716

/-! ## A302976.P411490587143957331

`A236284(n+1)%∏{d}[n+1, #²]`
-/

namespace A302976.P411490587143957331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236284 (n + 1)) ((∏ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℤ)

end

end A302976.P411490587143957331

/-! ## A302976.P3137875337954230459

`((A032741(n+1)+1)^(n+1))%∏{d}[2*n-(n-1), -#]²`
-/

namespace A302976.P3137875337954230459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((A032741 (n + 1) + 1) ^ (n + 1)) ((∏ d ∈ Nat.divisors (f1 n).natAbs, (-(d : ℤ))) ^ 2)

end

end A302976.P3137875337954230459

/-! ## A302976.P734617187296169724

`A236284(n+1)%A062758(n+1)`
-/

namespace A302976.P734617187296169724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236284 (n + 1)) (A062758 (n + 1))

end

end A302976.P734617187296169724

/-! ## A302976.P5479475706883622577

`(A000005(n+1)^(n+1))%((n+1)^A000005(n+1))`
-/

namespace A302976.P5479475706883622577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (n + 1) ^ (n + 1)) (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A000005 (n + 1) : ℤ)))

end

end A302976.P5479475706883622577

/-!
# A302977: Numerators of the rational factor of Kaplan's series for the Dottie number.

The programs for A302977, there is no canonical definition to state claims against.
-/

/-! ## A302977.P14131788640102456186

`A000038(n)-A362407(n)`
-/

namespace A302977.P14131788640102456186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A362407 n

end

end A302977.P14131788640102456186

/-! ## A302977.P5604074569262514132

`A000122(n²+1)-A362407(n)`
-/

namespace A302977.P5604074569262514132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2 + 1) - A362407 n

end

end A302977.P5604074569262514132

/-! ## A302977.P3663354837362068439

`A354352(A066169(n+1))-A362407(n)`
-/

namespace A302977.P3663354837362068439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354352 (A066169 (n + 1)).toNat - A362407 n

end

end A302977.P3663354837362068439

/-! ## A302977.P12416460540212073020

`A362421(A362419(n+1))-A362407(n)`
-/

namespace A302977.P12416460540212073020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362421 (A362419 (n + 1)).toNat - A362407 n

end

end A302977.P12416460540212073020

/-!
# A302979: Powers of squarefree numbers whose prime indices are relatively prime. Heinz numbers of uniform partitions with relatively prime parts.

The programs for A302979, there is no canonical definition to state claims against.
-/

/-! ## A302979.P3971247293480889155

`record[A062759(A289509(n+1))]`
-/

namespace A302979.P3971247293480889155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062759 (A289509 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302979.P3971247293480889155

/-! ## A302979.P17143167318820177281

`record[A327529(A062759(n+2))]`
-/

namespace A302979.P17143167318820177281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327529 (A062759 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302979.P17143167318820177281

/-! ## A302979.P10167126240356735069

`filter[A289509(n+1), A384667(#)]`
-/

namespace A302979.P10167126240356735069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A384667 (f1 j).toNat = 1) n)

end

end A302979.P10167126240356735069

/-! ## A302979.P5226281703353307373

`∩[A062770(n+1), A289509(n+1)]`
-/

namespace A302979.P5226281703353307373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302979.P5226281703353307373

/-! ## A302979.P16299829394214858049

`∩[A072774(n+1), A289509(n+1)]`
-/

namespace A302979.P16299829394214858049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302979.P16299829394214858049

/-! ## A302979.P1487915961638844124

`eq[A062760(n+1), A289508(n+1)]+1`
-/

namespace A302979.P1487915961638844124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A302979.P1487915961638844124

/-! ## A302979.P10528691397280077978

`eq[A066636(n+1), A289508(n+1)]+1`
-/

namespace A302979.P10528691397280077978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A302979.P10528691397280077978

/-! ## A302979.P9382755710890268675

`A020725(eq[A062760(n+1), A289508(n+1)])`
-/

namespace A302979.P9382755710890268675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A302979.P9382755710890268675

/-!
# A302982: Number of ways to write n as x^2 + 5*y^2 + 2^z + 3*2^w with x,y,z,w nonnegative integers.

The programs for A302982, there is no canonical definition to state claims against.
-/

/-! ## A302982.P1994043838399059201

`A335885(A003242(n)+A001333(n))`
-/

namespace A302982.P1994043838399059201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335885 (A003242 n + A001333 n).toNat

end

end A302982.P1994043838399059201

/-! ## A302982.P16158880641910076790

`A139352(A045891(n)-A115116(n+1))`
-/

namespace A302982.P16158880641910076790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A045891 n - A115116 (n + 1)).toNat

end

end A302982.P16158880641910076790

/-!
# A302983: Number of ways to write n as x^2 + 2*y^2 + 2^z + 3*2^w with x,y,z,w nonnegative integers.

The programs for A302983, there is no canonical definition to state claims against.
-/

/-! ## A302983.P11099261734219216780

`A302985(n+1)+A102683(A005133(n+1))`
-/

namespace A302983.P11099261734219216780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302985 (n + 1) + A102683 (A005133 (n + 1)).toNat

end

end A302983.P11099261734219216780

/-! ## A302983.P6670593494948762375

`A302985(n+1)+A102683(A000225(n))`
-/

namespace A302983.P6670593494948762375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302985 (n + 1) + A102683 (A000225 n).toNat

end

end A302983.P6670593494948762375

/-! ## A302983.P649012068995990146

`A302985(n+1)+A000035(A185213(n))`
-/

namespace A302983.P649012068995990146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302985 (n + 1) + A000035 (A185213 n).toNat

end

end A302983.P649012068995990146

/-! ## A302983.P2269115998232939169

`A302985(n+1)+A102683(A255047(n))`
-/

namespace A302983.P2269115998232939169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302985 (n + 1) + A102683 (A255047 n).toNat

end

end A302983.P2269115998232939169

/-! ## A302983.P3373492615195846392

`A346619(A347258(n+1))+A302985(n+1)`
-/

namespace A302983.P3373492615195846392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346619 (A347258 (n + 1)).toNat + A302985 (n + 1)

end

end A302983.P3373492615195846392

/-!
# A302985: Number of ordered pairs (x, y) of nonnegative integers such that n - 2^x - 3*2^y has the form u^2 + 2*v^2 with u and v integers.

The programs for A302985, there is no canonical definition to state claims against.
-/

/-! ## A302985.P19615524029542622

`A068063(A302983(n+1)²)`
-/

namespace A302985.P19615524029542622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A302983 (n + 1) ^ 2).toNat

end

end A302985.P19615524029542622

/-! ## A302985.P10918942419614212631

`A068063(A302983(n+1)^2)`
-/

namespace A302985.P10918942419614212631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A302983 (n + 1) ^ 2).toNat

end

end A302985.P10918942419614212631

/-! ## A302985.P6096068695283265097

`A000196(A089866(A302983(n+1)²))`
-/

namespace A302985.P6096068695283265097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A089866 (A302983 (n + 1) ^ 2).toNat).toNat

end

end A302985.P6096068695283265097

/-! ## A302985.P5776457544380696745

`A302983(n+1)-A102683(A005133(n+1))`
-/

namespace A302985.P5776457544380696745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302983 (n + 1) - A102683 (A005133 (n + 1)).toNat

end

end A302985.P5776457544380696745

/-!
# A302988: Primes p such that p - 3 divides 3^p - 3.

The programs for A302988, there is no canonical definition to state claims against.
-/

/-! ## A302988.P15468052160805740122

`p?[A242788(n+1)]`
-/

namespace A302988.P15468052160805740122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A302988.P15468052160805740122

/-! ## A302988.P17128652954716959993

`p?[record[A242788(A133310(n))]]`
-/

namespace A302988.P17128652954716959993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242788 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A302988.P17128652954716959993

/-! ## A302988.P12982507221728477202

`p?[record[A242788(A141256(n))]]`
-/

namespace A302988.P12982507221728477202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242788 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A302988.P12982507221728477202

/-! ## A302988.P15770574589758771166

`p?[record[A242788(A158416(n))]]`
-/

namespace A302988.P15770574589758771166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242788 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A302988.P15770574589758771166

/-! ## A302988.P10020839486900697260

`∩[A049573(n+1), A242788(n+1)]`
-/

namespace A302988.P10020839486900697260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302988.P10020839486900697260

/-!
# A302989: a(n) = n^n + n*n + n.

The programs for A302989, the canonical program `A302989.P3463615677680757259` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302989 has offset 0).

The definition of A302989 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^n+n*n+n` (program `A302989.P3463615677680757259`, by `A302989.P3463615677680757259.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A302989.P3375508969861273509

`n^n+n²+n`
-/

namespace A302989.P3375508969861273509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n + n ^ 2 + n

end

end A302989.P3375508969861273509

namespace A302989

/-- `n^n+n²+n` -/
def P3375508969861273509.Spec : Prop :=
  ∀ n, (P3375508969861273509.a n : ℤ) = A302989 n

theorem P3375508969861273509.correct : P3375508969861273509.Spec := by
  intro n
  simp only [A302989, Nat.add_sub_cancel, A302989.P3375508969861273509.a, A302989.P3463615677680757259.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A302989

/-! ## A302989.P3463615677680757259

`n^n+n*n+n`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A302989

/-- `n^n+n*n+n` -/
def P3463615677680757259.Spec : Prop :=
  ∀ n, (P3463615677680757259.a n : ℤ) = A302989 n

theorem P3463615677680757259.correct : P3463615677680757259.Spec := by
  intro n
  simp only [A302989]

end A302989

/-! ## A302989.P666349337752517444

`abs(n^n+∑[n]/tan(acot(2)))`
-/

namespace A302989.P666349337752517444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |(n ^ n : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.tan (SequenceMachineLib.acot (2 : ℝ))|

end

end A302989.P666349337752517444

namespace A302989

/-- `abs(n^n+∑[n]/tan(acot(2)))` -/
def P666349337752517444.Spec : Prop :=
  ∀ n, P666349337752517444.a n = (A302989 n : ℝ)

end A302989

/-! ## A302989.P6494956210356687472

`abs(n^n+∑[n]/cot(atan(2)))`
-/

namespace A302989.P6494956210356687472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |(n ^ n : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.cot (Real.arctan (2 : ℝ))|

end

end A302989.P6494956210356687472

namespace A302989

/-- `abs(n^n+∑[n]/cot(atan(2)))` -/
def P6494956210356687472.Spec : Prop :=
  ∀ n, P6494956210356687472.a n = (A302989 n : ℝ)

end A302989

/-! ## A302989.P15062287476035714743

`floor(n^n+∑[n]/tan(acot(2)))`
-/

namespace A302989.P15062287476035714743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ n : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.tan (SequenceMachineLib.acot (2 : ℝ))⌋

end

end A302989.P15062287476035714743

namespace A302989

/-- `floor(n^n+∑[n]/tan(acot(2)))` -/
def P15062287476035714743.Spec : Prop :=
  ∀ n, P15062287476035714743.a n = A302989 n

end A302989

/-! ## A302989.P5749234572185306225

`ceil(n^n+∑[n]/tan(acot(2)))`
-/

namespace A302989.P5749234572185306225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ n : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.tan (SequenceMachineLib.acot (2 : ℝ))⌉

end

end A302989.P5749234572185306225

namespace A302989

/-- `ceil(n^n+∑[n]/tan(acot(2)))` -/
def P5749234572185306225.Spec : Prop :=
  ∀ n, P5749234572185306225.a n = A302989 n

end A302989

/-! ## A302989.P10957734317801316102

`round(n^n+∑[n]/tan(acot(2)))`
-/

namespace A302989.P10957734317801316102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ n : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.tan (SequenceMachineLib.acot (2 : ℝ)))

end

end A302989.P10957734317801316102

namespace A302989

/-- `round(n^n+∑[n]/tan(acot(2)))` -/
def P10957734317801316102.Spec : Prop :=
  ∀ n, P10957734317801316102.a n = A302989 n

end A302989

/-! ## A302989.P2302658967526520146

`floor(∑[a(n-1)+2]+n^n)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A302989.P2302658967526520146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ n

end

end A302989.P2302658967526520146

namespace A302989

/-- `floor(∑[a(n-1)+2]+n^n)` -/
def P2302658967526520146.Spec : Prop :=
  ∀ n, (P2302658967526520146.a n : ℤ) = A302989 n

end A302989

/-! ## A302989.P7002905713412563907

`floor(n^n-∑[a(n-1)-2])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A302989.P7002905713412563907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302989.P7002905713412563907

namespace A302989

/-- `floor(n^n-∑[a(n-1)-2])` -/
def P7002905713412563907.Spec : Prop :=
  ∀ n, P7002905713412563907.a n = A302989 n

end A302989

/-! ## A302989.P7486971680434769457

`2*(∑[n]+A110132(2*n)/2)`
-/

namespace A302989.P7486971680434769457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (A110132 (2 * n) : ℚ) / 2)

end

end A302989.P7486971680434769457

namespace A302989

/-- `2*(∑[n]+A110132(2*n)/2)` -/
def P7486971680434769457.Spec : Prop :=
  ∀ n, P7486971680434769457.a n = (A302989 n : ℚ)

end A302989

/-!
# A302993: Number of unitary abundant numbers < 10^n.

The programs for A302993, there is no canonical definition to state claims against.
-/

/-! ## A302993.P2109489097327016553

`xor(A054088(A052141(n)), A352389(n+5))`
-/

namespace A302993.P2109489097327016553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054088 (A052141 n).toNat) (A352389 (n + 5))

end

end A302993.P2109489097327016553

/-!
# A302994: Number of bi-unitary abundant numbers < 10^n.

The programs for A302994, there is no canonical definition to state claims against.
-/

/-! ## A302994.P174755769306040334

`xor(A002262(A136253(n+3)), A045623(3*n))`
-/

namespace A302994.P174755769306040334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002262 (A136253 (n + 3)).toNat) (A045623 (3 * n))

end

end A302994.P174755769306040334

/-!
# A302995: a(n) = [x^(n^2)] (theta_3(x) - 1)^n/(2^n*(1 - x)), where theta_3() is the Jacobi theta function.

The programs for A302995, there is no canonical definition to state claims against.
-/

/-! ## A302995.P18064055920063363755

`A188208(∑[floor(n/3)^n])`
-/

namespace A302995.P18064055920063363755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋ ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188208 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A302995.P18064055920063363755

/-! ## A302995.P9124410218212315795

`A341141(xor(1, floor(n²/3)²))`
-/

namespace A302995.P9124410218212315795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341141 ((Int.xor 1 (⌊(n ^ 2 : ℚ) / 3⌋ ^ 2)).toNat + 10)

end

end A302995.P9124410218212315795

/-!
# A302996: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals: A(n,k) = [x^(n^2)] theta_3(x)^k, where theta_3() is the Jacobi theta function.

The programs for A302996, there is no canonical definition to state claims against.
-/

/-! ## A302996.P13615900723702862058

`gcd(A341935(A266213(n)), A378239(n))`
-/

namespace A302996.P13615900723702862058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A341935 (A266213 n).toNat) (A378239 n)

end

end A302996.P13615900723702862058

/-! ## A302996.P15169665041685402374

`A052409(A073423(n)+A319075(n)²)`
-/

namespace A302996.P15169665041685402374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (A073423 n + A319075 n ^ 2).toNat

end

end A302996.P15169665041685402374

/-! ## A302996.P14976676507117465929

`gcd(A010816(n), A052409(A319075(n)²))`
-/

namespace A302996.P14976676507117465929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010816 n) (A052409 (A319075 n ^ 2).toNat)

end

end A302996.P14976676507117465929

/-! ## A302996.P15985133230700917337

`A185782(n+1)%A000040(A022167(n))`
-/

namespace A302996.P15985133230700917337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185782 (n + 1)) (A000040 (A022167 n).toNat)

end

end A302996.P15985133230700917337

/-! ## A302996.P3117260788219209810

`gcd(A008683(A285061(n)), A185782(n+1))`
-/

namespace A302996.P3117260788219209810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (A285061 n).toNat) (A185782 (n + 1))

end

end A302996.P3117260788219209810

/-!
# A302997: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals: A(n,k) = [x^(n^2)] theta_3(x)^k/(1 - x), where theta_3() is the Jacobi theta function.

The programs for A302997, there is no canonical definition to state claims against.
-/

/-! ## A302997.P8174806818343922977

`A070788(A007318(n))%A169865(n+1)`
-/

namespace A302997.P8174806818343922977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070788 (A007318 n).toNat) (A169865 (n + 1))

end

end A302997.P8174806818343922977

/-! ## A302997.P407520737253003769

`2*A228250(n)%p?[A103609(n)]+1`
-/

namespace A302997.P407520737253003769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A228250 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) + 1

end

end A302997.P407520737253003769

/-!
# A302998: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals: A(n,k) = [x^(n^2)] (1 + theta_3(x))^k/(2^k*(1 - x)), where theta_3() is the Jacobi theta function.

The programs for A302998, there is no canonical definition to state claims against.
-/

/-! ## A302998.P9520346714767342657

`A275583(A303484(n)%A129539(n))`
-/

namespace A302998.P9520346714767342657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275583 (Int.tmod (A303484 n) (A129539 n)).toNat

end

end A302998.P9520346714767342657

/-! ## A302998.P1606031012349084415

`A275583(A303484(n))%record[A110429(n)]`
-/

namespace A302998.P1606031012349084415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110429 (n + 100)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275583 (A303484 n).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A302998.P1606031012349084415

/-! ## A302998.P13293323801013012680

`A275583(A335453(3*n+1)+A303484(n))`
-/

namespace A302998.P13293323801013012680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275583 (A335453 (3 * n + 1) + A303484 n).toNat

end

end A302998.P13293323801013012680

/-! ## A302998.P4171893276892140181

`A275583(A303484(n))+A003982(A219621(n+1))`
-/

namespace A302998.P4171893276892140181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275583 (A303484 n).toNat + A003982 (A219621 (n + 1)).toNat

end

end A302998.P4171893276892140181

/-! ## A302998.P8945489258711605210

`A090106(A303484(n))`
-/

namespace A302998.P8945489258711605210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090106 (A303484 n).toNat

end

end A302998.P8945489258711605210

/-!
# A302999: a(n) = Product_{k=1..n} (Fibonacci(k+2) - 1).

The programs for A302999, there is no canonical definition to state claims against.
-/

/-! ## A302999.P1816669973431395291

`∏[ceil(ϕ*a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A302999.P1816669973431395291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ⌈Real.goldenRatio * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A302999.P1816669973431395291

/-! ## A302999.P3323441297089263913

`∏[ceil(a(n-1)/(ϕ-1))]` with `a(0)=1, a(1)=1`
-/

namespace A302999.P3323441297089263913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ⌈(f1 (n - 1) : ℝ) / (Real.goldenRatio - 1)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A302999.P3323441297089263913

/-! ## A302999.P7589066002037259622

`∏[round(ϕ*a(n-1))+1]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A302999.P7589066002037259622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A302999.P7589066002037259622

/-! ## A302999.P902899421447400827

`∏[A193922(∑[n])]`
-/

namespace A302999.P902899421447400827
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193922 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A302999.P902899421447400827

/-! ## A302999.P3540547338089374785

`a(n-1)*∑[A000045(n)]` with `a(0)=1`
-/

namespace A302999.P3540547338089374785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A302999.P3540547338089374785

