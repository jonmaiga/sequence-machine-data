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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A271900: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^17)).

The programs for A271900, the canonical program `A271900.P5189823166170485608` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271900 has offset 0).

The definition of A271900 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^3-x^5+x^8-x^17+x^20+x^22-x^25))` (program `A271900.P5189823166170485608`, by `A271900.P5189823166170485608.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271900.P5189823166170485608

`ogf(1/(1-x^3-x^5+x^8-x^17+x^20+x^22-x^25))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271900

/-- `ogf(1/(1-x^3-x^5+x^8-x^17+x^20+x^22-x^25))` -/
def P5189823166170485608.Spec : Prop :=
  ∀ n, P5189823166170485608.a n = A271900 n

theorem P5189823166170485608.correct : P5189823166170485608.Spec := by
  intro n
  simp only [A271900]

end A271900

/-! ## A271900.P12334398258410511403

`Δ[A164066(n+4)]%A164077(n+1)`
-/

namespace A271900.P12334398258410511403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164066 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A164077 (n + 1))

end

end A271900.P12334398258410511403

namespace A271900

/-- `Δ[A164066(n+4)]%A164077(n+1)` -/
def P12334398258410511403.Spec : Prop :=
  ∀ n, P12334398258410511403.a n = A271900 n

end A271900

/-! ## A271900.P16483304392089894151

`A179801(A261771(n+2))+A033182(2*n)`
-/

namespace A271900.P16483304392089894151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179801 (A261771 (n + 2)).toNat + A033182 (2 * n)

end

end A271900.P16483304392089894151

namespace A271900

/-- `A179801(A261771(n+2))+A033182(2*n)` -/
def P16483304392089894151.Spec : Prop :=
  ∀ n, P16483304392089894151.a n = A271900 n

end A271900

/-! ## A271900.P2297961746298833243

`A008676(lt[n*∏{digits}[n, gcd(#, #!²)], 99])`
-/

namespace A271900.P2297961746298833243
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.gcd x (Nat.factorial x ^ 2)).prod

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  99

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A271900.P2297961746298833243

namespace A271900

/-- `A008676(lt[n*∏{digits}[n, gcd(#, #!²)], 99])` -/
def P2297961746298833243.Spec : Prop :=
  ∀ n, P2297961746298833243.a n = A271900 n

end A271900

/-! ## A271900.P16406831375567809943

`and(Δ[A164066(n+4)], A164061(n+2))`
-/

namespace A271900.P16406831375567809943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164066 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A164061 (n + 2))

end

end A271900.P16406831375567809943

namespace A271900

/-- `and(Δ[A164066(n+4)], A164061(n+2))` -/
def P16406831375567809943.Spec : Prop :=
  ∀ n, P16406831375567809943.a n = A271900 n

end A271900

/-!
# A271901: Length of period of Narayana sequence A000930 modulo n-th prime.

The programs for A271901, there is no canonical definition to state claims against.
-/

/-! ## A271901.P7424734430914104848

`A271953(A000040(n+1))`
-/

namespace A271901.P7424734430914104848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271953 (A000040 (n + 1)).toNat

end

end A271901.P7424734430914104848

/-! ## A271901.P8317828965154925608

`A271953(p?[comp[n²]])`
-/

namespace A271901.P8317828965154925608
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271953 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A271901.P8317828965154925608

/-! ## A271901.P8348600369640483728

`A271953(Δ[A007504(n)])`
-/

namespace A271901.P8348600369640483728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271953 (f1 (n + 1) - f1 n).toNat

end

end A271901.P8348600369640483728

/-! ## A271901.P15137647465834871765

`A271953(record[A051698(n)])`
-/

namespace A271901.P15137647465834871765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A271901.P15137647465834871765

/-! ## A271901.P10448100171396560845

`A271953(A008578(n+2))`
-/

namespace A271901.P10448100171396560845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271953 (A008578 (n + 2)).toNat

end

end A271901.P10448100171396560845

/-! ## A271901.P12068444447539649258

`A271953(A182986(n+2))`
-/

namespace A271901.P12068444447539649258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271953 (A182986 (n + 2)).toNat

end

end A271901.P12068444447539649258

/-! ## A271901.P14215037199024937476

`A271953(eq[1, A003415(n)])`
-/

namespace A271901.P14215037199024937476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271901.P14215037199024937476

/-! ## A271901.P3475440617090127931

`A271953(eq[2, A005128(n)])`
-/

namespace A271901.P3475440617090127931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271953 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271901.P3475440617090127931

/-! ## A271901.P5905015870071458992

`A271953(record[A006530(n+2)])`
-/

namespace A271901.P5905015870071458992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A271901.P5905015870071458992

/-! ## A271901.P1764006201771910081

`A271953(record[A014963(n+2)])`
-/

namespace A271901.P1764006201771910081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A271901.P1764006201771910081

/-! ## A271901.P5545766245330865942

`A271953(record[A020639(n+2)])`
-/

namespace A271901.P5545766245330865942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A271901.P5545766245330865942

/-! ## A271901.P5870757223110949287

`A271953(record[A000010(n+1)+1])`
-/

namespace A271901.P5870757223110949287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A271901.P5870757223110949287

/-! ## A271901.P16719943451775929493

`A271953(A007504(n+1)-A007504(n))`
-/

namespace A271901.P16719943451775929493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271953 (A007504 (n + 1) - A007504 n).toNat

end

end A271901.P16719943451775929493

/-!
# A271902: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 427", based on the 5-celled von Neumann neighborhood.

The programs for A271902, the canonical program `A271902.P16809274100219608149` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271902 has offset 0).

The definition of A271902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3142 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271902.P16809274100219608149

`ogf((1+6x+18x^2+44x^3+61x^4+96x^5+88x^6+68x^7+7x^8+26x^9+6x^10-5x^12)/(1+x-x^3-3x^4-2x^5+2x^7+3x^8+x^9-x^11-x^12))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271902

/-- `ogf((1+6x+18x^2+44x^3+61x^4+96x^5+88x^6+68x^7+7x^8+26x^9+6x^10-5x^12)/(1+x-x^3-3x^4-2x^5+2x^7+3x^8+x^9-x^11-x^12))` -/
def P16809274100219608149.Spec : Prop :=
  ∀ n, P16809274100219608149.a n = A271902 n

theorem P16809274100219608149.correct : P16809274100219608149.Spec := by
  intro n
  simp only [A271902]

end A271902

/-! ## A271902.P15006610709296701416

`∑[A272110(abs(1-n))]-7`
-/

namespace A271902.P15006610709296701416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272110 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 7

end

end A271902.P15006610709296701416

namespace A271902

/-- `∑[A272110(abs(1-n))]-7` -/
def P15006610709296701416.Spec : Prop :=
  ∀ n, P15006610709296701416.a n = A271902 n

end A271902

/-! ## A271902.P15813850134118889514

`A272110(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271902.P15813850134118889514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272110 (n - 1) + a (n - 1)

end

end A271902.P15813850134118889514

namespace A271902

/-- `A272110(n-1)+a(n-1)` -/
def P15813850134118889514.Spec : Prop :=
  ∀ n, P15813850134118889514.a n = A271902 n

end A271902

/-! ## A271902.P13431654811773068201

`Δ[A271904(n)]-A272110(n)`
-/

namespace A271902.P13431654811773068201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271904 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272110 n

end

end A271902.P13431654811773068201

namespace A271902

/-- `Δ[A271904(n)]-A272110(n)` -/
def P13431654811773068201.Spec : Prop :=
  ∀ n, P13431654811773068201.a n = A271902 n

end A271902

/-! ## A271902.P6717552187625134881

`A271904(n+1)-(A272110(n)+A271904(n))`
-/

namespace A271902.P6717552187625134881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271904 (n + 1) - (A272110 n + A271904 n)

end

end A271902.P6717552187625134881

namespace A271902

/-- `A271904(n+1)-(A272110(n)+A271904(n))` -/
def P6717552187625134881.Spec : Prop :=
  ∀ n, P6717552187625134881.a n = A271902 n

end A271902

/-! ## A271902.P10996740038696234219

`A028310(∑[A272110(n)]+1-A272110(n))`
-/

namespace A271902.P10996740038696234219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j + (1 - A272110 n)).toNat

end

end A271902.P10996740038696234219

namespace A271902

/-- `A028310(∑[A272110(n)]+1-A272110(n))` -/
def P10996740038696234219.Spec : Prop :=
  ∀ n, P10996740038696234219.a n = A271902 n

end A271902

/-!
# A271903: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 427", based on the 5-celled von Neumann neighborhood.

The programs for A271903, there is no canonical definition to state claims against.
-/

/-! ## A271903.P9874507971851604587

`A271902(2^n-1)`
-/

namespace A271903.P9874507971851604587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271902 (2 ^ n - 1)

end

end A271903.P9874507971851604587

/-! ## A271903.P17922962447200873810

`record[A271902(A243071(n+1))]`
-/

namespace A271903.P17922962447200873810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271902 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271903.P17922962447200873810

/-! ## A271903.P18791277489905304

`record[A271902(A245611(n+1))]`
-/

namespace A271903.P18791277489905304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271902 (A245611 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271903.P18791277489905304

/-! ## A271903.P3864228312916688183

`record[A271902(A253564(n+1))]`
-/

namespace A271903.P3864228312916688183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271902 (A253564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271903.P3864228312916688183

/-! ## A271903.P16778147623945316750

`A271902(A000225(n))+char[12]`
-/

namespace A271903.P16778147623945316750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271902 (A000225 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A271903.P16778147623945316750

/-!
# A271904: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 427", based on the 5-celled von Neumann neighborhood.

The programs for A271904, the canonical program `A271904.P18036690986461735805` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271904 has offset 0).

The definition of A271904 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271904.P18036690986461735805

`ogf((1+6x+18x^2+44x^3+61x^4+96x^5+88x^6+68x^7+7x^8+26x^9+6x^10-5x^12)/(1-x^2-x^3-2x^4+x^5+2x^6+2x^7+x^8-2x^9-x^10-x^11+x^13))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271904

/-- `ogf((1+6x+18x^2+44x^3+61x^4+96x^5+88x^6+68x^7+7x^8+26x^9+6x^10-5x^12)/(1-x^2-x^3-2x^4+x^5+2x^6+2x^7+x^8-2x^9-x^10-x^11+x^13))` -/
def P18036690986461735805.Spec : Prop :=
  ∀ n, P18036690986461735805.a n = A271904 n

theorem P18036690986461735805.correct : P18036690986461735805.Spec := by
  intro n
  simp only [A271904]

end A271904

/-! ## A271904.P18363098826240007836

`∑[∑[A272110(abs(1-n))]-7]`
-/

namespace A271904.P18363098826240007836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272110 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271904.P18363098826240007836

namespace A271904

/-- `∑[∑[A272110(abs(1-n))]-7]` -/
def P18363098826240007836.Spec : Prop :=
  ∀ n, P18363098826240007836.a n = A271904 n

end A271904

/-! ## A271904.P446647433412322882

`∑[A272110(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A271904.P446647433412322882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A272110 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271904.P446647433412322882

namespace A271904

/-- `∑[A272110(n-1)+a(n-1)]` -/
def P446647433412322882.Spec : Prop :=
  ∀ n, P446647433412322882.a n = A271904 n

end A271904

/-! ## A271904.P2623386403252354554

`∑[A271902(n)]`
-/

namespace A271904.P2623386403252354554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271904.P2623386403252354554

namespace A271904

/-- `∑[A271902(n)]` -/
def P2623386403252354554.Spec : Prop :=
  ∀ n, P2623386403252354554.a n = A271904 n

end A271904

/-! ## A271904.P1156259774671723897

`A271902(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A271904.P1156259774671723897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271902 n + a (A023443 n).toNat

end

end A271904.P1156259774671723897

namespace A271904

/-- `A271902(n)+a(A023443(n))` -/
def P1156259774671723897.Spec : Prop :=
  ∀ n, P1156259774671723897.a n = A271904 n

end A271904

/-! ## A271904.P14418703427610800039

`a(n-1)+A271902(n)+A000007(n)` with `a(0)=1`
-/

namespace A271904.P14418703427610800039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A271902 n + A000007 n)

end

end A271904.P14418703427610800039

namespace A271904

/-- `a(n-1)+A271902(n)+A000007(n)` -/
def P14418703427610800039.Spec : Prop :=
  ∀ n, P14418703427610800039.a n = A271904 n

end A271904

/-! ## A271904.P2170557836026921377

`a(n-1)+A271902(n)+A000038(n)` with `a(0)=1`
-/

namespace A271904.P2170557836026921377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A271902 n + A000038 n)

end

end A271904.P2170557836026921377

namespace A271904

/-- `a(n-1)+A271902(n)+A000038(n)` -/
def P2170557836026921377.Spec : Prop :=
  ∀ n, P2170557836026921377.a n = A271904 n

end A271904

/-! ## A271904.P1041540078655017339

`a(n-1)+A271902(n)%A093485(n)` with `a(0)=1`
-/

namespace A271904.P1041540078655017339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A271902 n) (A093485 n)

end

end A271904.P1041540078655017339

namespace A271904

/-- `a(n-1)+A271902(n)%A093485(n)` -/
def P1041540078655017339.Spec : Prop :=
  ∀ n, P1041540078655017339.a n = A271904 n

end A271904

/-!
# A271905: Number of singular vector tuples for a general n X n X n tensor.

The programs for A271905, there is no canonical definition to state claims against.
-/

/-! ## A271905.P3125264323031343490

`A284308(∑[n+3]+1)`
-/

namespace A271905.P3125264323031343490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284308 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A271905.P3125264323031343490

/-! ## A271905.P13411920445656765737

`record[A284308(gcd(n, A185782(n+2)))]`
-/

namespace A271905.P13411920445656765737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284308 (Int.gcd (n : ℤ) (A185782 (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271905.P13411920445656765737

/-! ## A271905.P4711868660797303094

`A284308(A034856(n+2))+A091337(2*(n+1))`
-/

namespace A271905.P4711868660797303094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284308 (A034856 (n + 2)).toNat + A091337 (2 * (n + 1))

end

end A271905.P4711868660797303094

/-! ## A271905.P1691287508016417666

`((-1)^A000203(n+1))²*A284308(A034856(n+2))`
-/

namespace A271905.P1691287508016417666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1 : ℚ) ^ (A000203 (n + 1) : ℤ)) ^ 2 * (A284308 (A034856 (n + 2)).toNat : ℚ)

end

end A271905.P1691287508016417666

/-! ## A271905.P2818641950823578109

`A284308(A034856(n+2))+A000007(A002478(n))`
-/

namespace A271905.P2818641950823578109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284308 (A034856 (n + 2)).toNat + A000007 (A002478 n).toNat

end

end A271905.P2818641950823578109

/-!
# A271908: a(n) = A186434(n)/4.

The programs for A271908, there is no canonical definition to state claims against.
-/

/-! ## A271908.P6126115058446700244

`A186434(n+1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A271908.P6126115058446700244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186434 (n + 1) : ℚ) / 4

end

end A271908.P6126115058446700244

/-! ## A271908.P4728893896433358875

`floor(A186434(abs(xor(n, -1)))/4)`
-/

namespace A271908.P4728893896433358875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A186434 |Int.xor (n : ℤ) (-1)|.toNat : ℚ) / 4⌋

end

end A271908.P4728893896433358875

/-! ## A271908.P5345430044480292693

`(A187452(n+1)+A190318(n+1)+A190317(n+1))/4`
-/

namespace A271908.P5345430044480292693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187452 (n + 1) + (A190318 (n + 1) + A190317 (n + 1)) : ℚ) / 4

end

end A271908.P5345430044480292693

/-! ## A271908.P2803955109086479138

`A271910(∑[4*n]+1)/4`
-/

namespace A271908.P2803955109086479138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271910 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 4

end

end A271908.P2803955109086479138

/-! ## A271908.P234781865021932224

`lcm(2, A271910((n+1)²+n²))/4`
-/

namespace A271908.P234781865021932224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A271910 ((n + 1) ^ 2 + n ^ 2)) : ℚ) / 4

end

end A271908.P234781865021932224

/-!
# A271909: Numbers k such that k and 3*k+1 have the same number of prime divisors (including multiplicities).

The programs for A271909, the canonical program `A271909.P8657958613654984230` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271909 has offset 1).

The definition of A271909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4796 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271909.P8657958613654984230

`eq[A001222(3*n+4), A001222(n+1)]+1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A271909

/-- `eq[A001222(3*n+4), A001222(n+1)]+1` -/
def P8657958613654984230.Spec : Prop :=
  ∀ n, (P8657958613654984230.a n : ℤ) = A271909 (n + 1)

theorem P8657958613654984230.correct : P8657958613654984230.Spec := by
  intro n
  simp only [A271909, Nat.add_sub_cancel]

end A271909

/-! ## A271909.P1187884375976333746

`eq[A001222(6*n+2), A001222(A004277(n))]`
-/

namespace A271909.P1187884375976333746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (6 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271909.P1187884375976333746

namespace A271909

/-- `eq[A001222(6*n+2), A001222(A004277(n))]` -/
def P1187884375976333746.Spec : Prop :=
  ∀ n, (P1187884375976333746.a n : ℤ) = A271909 (n + 1)

end A271909

/-! ## A271909.P17320605055276547412

`eq[A061142(3*n+4), A061142(n+1)]+1`
-/

namespace A271909.P17320605055276547412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A271909.P17320605055276547412

namespace A271909

/-- `eq[A061142(3*n+4), A061142(n+1)]+1` -/
def P17320605055276547412.Spec : Prop :=
  ∀ n, (P17320605055276547412.a n : ℤ) = A271909 (n + 1)

end A271909

/-! ## A271909.P16828592764456196952

`eq[A086436(3*n+4), A086436(n+1)]+1`
-/

namespace A271909.P16828592764456196952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A271909.P16828592764456196952

namespace A271909

/-- `eq[A086436(3*n+4), A086436(n+1)]+1` -/
def P16828592764456196952.Spec : Prop :=
  ∀ n, (P16828592764456196952.a n : ℤ) = A271909 (n + 1)

end A271909

/-! ## A271909.P12934936122512587322

`eq[A165824(3*n+4), A165824(n+1)]+1`
-/

namespace A271909.P12934936122512587322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A271909.P12934936122512587322

namespace A271909

/-- `eq[A165824(3*n+4), A165824(n+1)]+1` -/
def P12934936122512587322.Spec : Prop :=
  ∀ n, (P12934936122512587322.a n : ℤ) = A271909 (n + 1)

end A271909

/-! ## A271909.P2152497041807332300

`eq[A061142(3*n+1), A061142(A233583(n+1))]`
-/

namespace A271909.P2152497041807332300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271909.P2152497041807332300

namespace A271909

/-- `eq[A061142(3*n+1), A061142(A233583(n+1))]` -/
def P2152497041807332300.Spec : Prop :=
  ∀ n, (P2152497041807332300.a n : ℤ) = A271909 (n + 1)

end A271909

/-! ## A271909.P15399760797256640465

`eq[A073093(3*n+1), A073093(A233583(n+1))]`
-/

namespace A271909.P15399760797256640465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271909.P15399760797256640465

namespace A271909

/-- `eq[A073093(3*n+1), A073093(A233583(n+1))]` -/
def P15399760797256640465.Spec : Prop :=
  ∀ n, (P15399760797256640465.a n : ℤ) = A271909 (n + 1)

end A271909

/-! ## A271909.P15366241799736829668

`eq[A165824(3*n+1), A165824(A233583(n+1))]`
-/

namespace A271909.P15366241799736829668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271909.P15366241799736829668

namespace A271909

/-- `eq[A165824(3*n+1), A165824(A233583(n+1))]` -/
def P15366241799736829668.Spec : Prop :=
  ∀ n, (P15366241799736829668.a n : ℤ) = A271909 (n + 1)

end A271909

/-! ## A271909.P7382890501672317589

`eq[A165831(3*n+1), A165831(A233583(n+1))]`
-/

namespace A271909.P7382890501672317589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165831 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165831 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271909.P7382890501672317589

namespace A271909

/-- `eq[A165831(3*n+1), A165831(A233583(n+1))]` -/
def P7382890501672317589.Spec : Prop :=
  ∀ n, (P7382890501672317589.a n : ℤ) = A271909 (n + 1)

end A271909

/-!
# A271910: Array read by antidiagonals: T(n,k) = number of ways to choose 3 distinct points from an n X k rectangular grid so that they form an isosceles triangle.

The programs for A271910, there is no canonical definition to state claims against.
-/

/-! ## A271910.P9252426379078503436

`A272624(n+1)+A272626(n+1)+A272625(n+1)`
-/

namespace A271910.P9252426379078503436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272624 (n + 1) + (A272626 (n + 1) + A272625 (n + 1))

end

end A271910.P9252426379078503436

/-! ## A271910.P6609263239863822432

`lcm(2, A087667(A173076(n)))`
-/

namespace A271910.P6609263239863822432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A087667 (A173076 n).toNat)

end

end A271910.P6609263239863822432

/-! ## A271910.P2541209619342995932

`xor(A008459(n), A221166(A008459(n)))`
-/

namespace A271910.P2541209619342995932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008459 n) (A221166 (A008459 n).toNat)

end

end A271910.P2541209619342995932

/-!
# A271911: Number of ways to choose three distinct points from a 2 X n grid so that they form an isosceles triangle.

The programs for A271911, the canonical program `A271911.P3581296416992807677` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271911 has offset 1).

The definition of A271911 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271911.P3581296416992807677

`round((n+1)*((n+1)/2+3))-4`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271911

/-- `round((n+1)*((n+1)/2+3))-4` -/
def P3581296416992807677.Spec : Prop :=
  ∀ n, P3581296416992807677.a n = A271911 (n + 1)

theorem P3581296416992807677.correct : P3581296416992807677.Spec := by
  intro n
  simp only [A271911, Nat.add_sub_cancel]

end A271911

/-! ## A271911.P290690958803240331

`∑[or(1, n)+3]-4`
-/

namespace A271911.P290690958803240331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4

end

end A271911.P290690958803240331

namespace A271911

/-- `∑[or(1, n)+3]-4` -/
def P290690958803240331.Spec : Prop :=
  ∀ n, P290690958803240331.a n = A271911 (n + 1)

end A271911

/-! ## A271911.P7816269317337718003

`∑[a(n-2)+2]` with `a(0)=0, a(1)=4, a(2)=6`
-/

namespace A271911.P7816269317337718003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 6] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271911.P7816269317337718003

namespace A271911

/-- `∑[a(n-2)+2]` -/
def P7816269317337718003.Spec : Prop :=
  ∀ n, (P7816269317337718003.a n : ℤ) = A271911 (n + 1)

end A271911

/-! ## A271911.P11088099481356813386

`∑[gcd(2, n)+n+2]-4`
-/

namespace A271911.P11088099481356813386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n + (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4

end

end A271911.P11088099481356813386

namespace A271911

/-- `∑[gcd(2, n)+n+2]-4` -/
def P11088099481356813386.Spec : Prop :=
  ∀ n, P11088099481356813386.a n = A271911 (n + 1)

end A271911

/-! ## A271911.P7101989355141736141

`∑[∑[2-a(n-1)]]` with `a(0)=0, a(1)=4, a(2)=2`
-/

namespace A271911.P7101989355141736141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 2] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271911.P7101989355141736141

namespace A271911

/-- `∑[∑[2-a(n-1)]]` -/
def P7101989355141736141.Spec : Prop :=
  ∀ n, P7101989355141736141.a n = A271911 (n + 1)

end A271911

/-! ## A271911.P8491180647467515058

`or(1, a(n-1)+n)+3` with `a(0)=0`
-/

namespace A271911.P8491180647467515058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 1 (a (n - 1) + n) + 3

end

end A271911.P8491180647467515058

namespace A271911

/-- `or(1, a(n-1)+n)+3` -/
def P8491180647467515058.Spec : Prop :=
  ∀ n, (P8491180647467515058.a n : ℤ) = A271911 (n + 1)

end A271911

/-! ## A271911.P7482197638083955571

`ogf((4x+2x^2-4x^3)/(1-2x+2x^3-x^4))`
-/

namespace A271911.P7482197638083955571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 2, -4] [1, -2, 0, 2, -1] n

end

end A271911.P7482197638083955571

namespace A271911

/-- `ogf((4x+2x^2-4x^3)/(1-2x+2x^3-x^4))` -/
def P7482197638083955571.Spec : Prop :=
  ∀ n, P7482197638083955571.a n = A271911 (n + 1)

end A271911

/-! ## A271911.P6240351888091021656

`a(n-2)+2*(n+3)` with `a(0)=0, a(1)=4`
-/

namespace A271911.P6240351888091021656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 2) + 2 * (n + 3)

end

end A271911.P6240351888091021656

namespace A271911

/-- `a(n-2)+2*(n+3)` -/
def P6240351888091021656.Spec : Prop :=
  ∀ n, (P6240351888091021656.a n : ℤ) = A271911 (n + 1)

end A271911

/-! ## A271911.P13990456929999466841

`∑[and(1, n+1)+n+3]-4`
-/

namespace A271911.P13990456929999466841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1) + (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4

end

end A271911.P13990456929999466841

namespace A271911

/-- `∑[and(1, n+1)+n+3]-4` -/
def P13990456929999466841.Spec : Prop :=
  ∀ n, P13990456929999466841.a n = A271911 (n + 1)

end A271911

/-! ## A271911.P9317480894265647776

`a(n-1)+n+4-n%2` with `a(0)=0`
-/

namespace A271911.P9317480894265647776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) + 4 - ((n % 2 : ℕ) : ℤ)

end

end A271911.P9317480894265647776

namespace A271911

/-- `a(n-1)+n+4-n%2` -/
def P9317480894265647776.Spec : Prop :=
  ∀ n, P9317480894265647776.a n = A271911 (n + 1)

end A271911

/-! ## A271911.P8552815710323911798

`2*(∑[A266977(n)]-1)`
-/

namespace A271911.P8552815710323911798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A271911.P8552815710323911798

namespace A271911

/-- `2*(∑[A266977(n)]-1)` -/
def P8552815710323911798.Spec : Prop :=
  ∀ n, P8552815710323911798.a n = A271911 (n + 1)

end A271911

/-! ## A271911.P9289077199782801972

`2*(A004116(n+1)-1)`
-/

namespace A271911.P9289077199782801972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A004116 (n + 1) - 1)

end

end A271911.P9289077199782801972

namespace A271911

/-- `2*(A004116(n+1)-1)` -/
def P9289077199782801972.Spec : Prop :=
  ∀ n, P9289077199782801972.a n = A271911 (n + 1)

end A271911

/-! ## A271911.P14315247636229599722

`2*(A014616(n+1)-2)`
-/

namespace A271911.P14315247636229599722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A014616 (n + 1) - 2)

end

end A271911.P14315247636229599722

namespace A271911

/-- `2*(A014616(n+1)-2)` -/
def P14315247636229599722.Spec : Prop :=
  ∀ n, P14315247636229599722.a n = A271911 (n + 1)

end A271911

/-! ## A271911.P13345538485276261338

`2*(A024206(n+1)+n)`
-/

namespace A271911.P13345538485276261338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A024206 (n + 1) + (n : ℤ))

end

end A271911.P13345538485276261338

namespace A271911

/-- `2*(A024206(n+1)+n)` -/
def P13345538485276261338.Spec : Prop :=
  ∀ n, P13345538485276261338.a n = A271911 (n + 1)

end A271911

/-! ## A271911.P8842745625266386539

`2*(A036572(n+3)-(n+3))`
-/

namespace A271911.P8842745625266386539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A036572 (n + 3) - (n + 3 : ℤ))

end

end A271911.P8842745625266386539

namespace A271911

/-- `2*(A036572(n+3)-(n+3))` -/
def P8842745625266386539.Spec : Prop :=
  ∀ n, P8842745625266386539.a n = A271911 (n + 1)

end A271911

/-! ## A271911.P7120786221789838891

`A166137(n+1)%A234717(n+1)`
-/

namespace A271911.P7120786221789838891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166137 (n + 1)) (A234717 (n + 1))

end

end A271911.P7120786221789838891

namespace A271911

/-- `A166137(n+1)%A234717(n+1)` -/
def P7120786221789838891.Spec : Prop :=
  ∀ n, P7120786221789838891.a n = A271911 (n + 1)

end A271911

/-! ## A271911.P13948306252963191504

`xor(A135528(n+1), A307028(n+1))`
-/

namespace A271911.P13948306252963191504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A135528 (n + 1)) (A307028 (n + 1))

end

end A271911.P13948306252963191504

namespace A271911

/-- `xor(A135528(n+1), A307028(n+1))` -/
def P13948306252963191504.Spec : Prop :=
  ∀ n, P13948306252963191504.a n = A271911 (n + 1)

end A271911

/-! ## A271911.P1725480426601442788

`A047540(A004116(n+1))`
-/

namespace A271911.P1725480426601442788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047540 (A004116 (n + 1)).toNat

end

end A271911.P1725480426601442788

namespace A271911

/-- `A047540(A004116(n+1))` -/
def P1725480426601442788.Spec : Prop :=
  ∀ n, P1725480426601442788.a n = A271911 (n + 1)

end A271911

/-! ## A271911.P7141292859136277457

`A005843(A002620(n)+2*n)`
-/

namespace A271911.P7141292859136277457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A002620 n + (2 * n : ℤ)).toNat

end

end A271911.P7141292859136277457

namespace A271911

/-- `A005843(A002620(n)+2*n)` -/
def P7141292859136277457.Spec : Prop :=
  ∀ n, P7141292859136277457.a n = A271911 (n + 1)

end A271911

/-!
# A271912: Number of ways to choose three distinct points from a 3 X n grid so that they form an isosceles triangle.

The programs for A271912, the canonical program `A271912.P10620622504300123355` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271912 has offset 1).

The definition of A271912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271912.P10084825123771120248

`ogf((10x+16x^2-4x^3-8x^4-4x^5)/(1-2x+2x^3-x^4))`
-/

namespace A271912.P10084825123771120248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, 16, -4, -8, -4] [1, -2, 0, 2, -1] n

end

end A271912.P10084825123771120248

namespace A271912

/-- `ogf((10x+16x^2-4x^3-8x^4-4x^5)/(1-2x+2x^3-x^4))` -/
def P10084825123771120248.Spec : Prop :=
  ∀ n, P10084825123771120248.a n = A271912 (n + 1)

end A271912

/-! ## A271912.P10620622504300123355

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=10, a(2)=36, a(3)=68, a(4)=108, a(5)=150`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271912

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P10620622504300123355.Spec : Prop :=
  ∀ n, P10620622504300123355.a n = A271912 (n + 1)

theorem P10620622504300123355.correct : P10620622504300123355.Spec := by
  intro n
  simp only [A271912, Nat.add_sub_cancel]

end A271912

/-! ## A271912.P13965041139185491361

`A271910(∑[n+3]+1)`
-/

namespace A271912.P13965041139185491361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271910 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A271912.P13965041139185491361

namespace A271912

/-- `A271910(∑[n+3]+1)` -/
def P13965041139185491361.Spec : Prop :=
  ∀ n, P13965041139185491361.a n = A271912 (n + 1)

end A271912

/-! ## A271912.P7481609357587554157

`lcm(2, A271910(A167614(n+1)))`
-/

namespace A271912.P7481609357587554157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A271910 (A167614 (n + 1)).toNat)

end

end A271912.P7481609357587554157

namespace A271912

/-- `lcm(2, A271910(A167614(n+1)))` -/
def P7481609357587554157.Spec : Prop :=
  ∀ n, (P7481609357587554157.a n : ℤ) = A271912 (n + 1)

end A271912

/-! ## A271912.P11277470647333052594

`and(-2, A271910(A167499(n)+n))`
-/

namespace A271912.P11277470647333052594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A271910 (A167499 n + (n : ℤ)).toNat)

end

end A271912.P11277470647333052594

namespace A271912

/-- `and(-2, A271910(A167499(n)+n))` -/
def P11277470647333052594.Spec : Prop :=
  ∀ n, P11277470647333052594.a n = A271912 (n + 1)

end A271912

/-! ## A271912.P8044218240036559214

`A057427(n)*A271910(A167614(n+1))`
-/

namespace A271912.P8044218240036559214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A271910 (A167614 (n + 1)).toNat

end

end A271912.P8044218240036559214

namespace A271912

/-- `A057427(n)*A271910(A167614(n+1))` -/
def P8044218240036559214.Spec : Prop :=
  ∀ n, P8044218240036559214.a n = A271912 (n + 1)

end A271912

/-! ## A271912.P12871795995840129370

`A271910(A034856(n+2))%A000041(n+11)`
-/

namespace A271912.P12871795995840129370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271910 (A034856 (n + 2)).toNat) (A000041 (n + 11))

end

end A271912.P12871795995840129370

namespace A271912

/-- `A271910(A034856(n+2))%A000041(n+11)` -/
def P12871795995840129370.Spec : Prop :=
  ∀ n, P12871795995840129370.a n = A271912 (n + 1)

end A271912

/-! ## A271912.P14496302066092268720

`lcm(A001222(2*n+1), A271910(A052905(n)+3))`
-/

namespace A271912.P14496302066092268720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001222 (2 * n + 1)) (A271910 (A052905 n + 3).toNat)

end

end A271912.P14496302066092268720

namespace A271912

/-- `lcm(A001222(2*n+1), A271910(A052905(n)+3))` -/
def P14496302066092268720.Spec : Prop :=
  ∀ n, (P14496302066092268720.a n : ℤ) = A271912 (n + 1)

end A271912

/-! ## A271912.P16389065206254820396

`A000041(gcd(n, n+1))*A271910(A034856(n+2))`
-/

namespace A271912.P16389065206254820396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * A271910 (A034856 (n + 2)).toNat

end

end A271912.P16389065206254820396

namespace A271912

/-- `A000041(gcd(n, n+1))*A271910(A034856(n+2))` -/
def P16389065206254820396.Spec : Prop :=
  ∀ n, P16389065206254820396.a n = A271912 (n + 1)

end A271912

/-!
# A271913: Number of ways to choose three distinct points from a 4 X n grid so that they form an isosceles triangle.

The programs for A271913, the canonical program `A271913.P6604620285348834784` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271913 has offset 1).

The definition of A271913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271913.P6604620285348834784

`ogf((16x+36x^2+12x^3-16x^4-16x^5-4x^6-8x^7+4x^9-4x^11)/(1-2x+2x^3-x^4))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271913

/-- `ogf((16x+36x^2+12x^3-16x^4-16x^5-4x^6-8x^7+4x^9-4x^11)/(1-2x+2x^3-x^4))` -/
def P6604620285348834784.Spec : Prop :=
  ∀ n, P6604620285348834784.a n = A271913 (n + 1)

theorem P6604620285348834784.correct : P6604620285348834784.Spec := by
  intro n
  simp only [A271913, Nat.add_sub_cancel]

end A271913

/-! ## A271913.P11007311339922628266

`A271910(∑[n+4]+3)`
-/

namespace A271913.P11007311339922628266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271910 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A271913.P11007311339922628266

namespace A271913

/-- `A271910(∑[n+4]+3)` -/
def P11007311339922628266.Spec : Prop :=
  ∀ n, P11007311339922628266.a n = A271913 (n + 1)

end A271913

/-! ## A271913.P16335522511852373303

`lcm(2, A271910(A027379(n+2)))`
-/

namespace A271913.P16335522511852373303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A271910 (A027379 (n + 2)).toNat)

end

end A271913.P16335522511852373303

namespace A271913

/-- `lcm(2, A271910(A027379(n+2)))` -/
def P16335522511852373303.Spec : Prop :=
  ∀ n, (P16335522511852373303.a n : ℤ) = A271913 (n + 1)

end A271913

/-! ## A271913.P13462298193350336123

`lcm(4, A271910(A055998(n+2)))`
-/

namespace A271913.P13462298193350336123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A271910 (A055998 (n + 2)).toNat)

end

end A271913.P13462298193350336123

namespace A271913

/-- `lcm(4, A271910(A055998(n+2)))` -/
def P13462298193350336123.Spec : Prop :=
  ∀ n, (P13462298193350336123.a n : ℤ) = A271913 (n + 1)

end A271913

/-! ## A271913.P8351674613095048609

`(n%2)!*A271910(A000124(n+3)+3)`
-/

namespace A271913.P8351674613095048609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % 2) : ℤ) * A271910 (A000124 (n + 3) + 3).toNat

end

end A271913.P8351674613095048609

namespace A271913

/-- `(n%2)!*A271910(A000124(n+3)+3)` -/
def P8351674613095048609.Spec : Prop :=
  ∀ n, P8351674613095048609.a n = A271913 (n + 1)

end A271913

/-! ## A271913.P11522158772939355092

`A057427(n)*A271910(A052905(n)+9)`
-/

namespace A271913.P11522158772939355092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A271910 (A052905 n + 9).toNat

end

end A271913.P11522158772939355092

namespace A271913

/-- `A057427(n)*A271910(A052905(n)+9)` -/
def P11522158772939355092.Spec : Prop :=
  ∀ n, P11522158772939355092.a n = A271913 (n + 1)

end A271913

/-! ## A271913.P12823153972724979290

`A271910(A052905(n)+9)%A000040((n+4)²)`
-/

namespace A271913.P12823153972724979290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271910 (A052905 n + 9).toNat) (A000040 ((n + 4) ^ 2))

end

end A271913.P12823153972724979290

namespace A271913

/-- `A271910(A052905(n)+9)%A000040((n+4)²)` -/
def P12823153972724979290.Spec : Prop :=
  ∀ n, P12823153972724979290.a n = A271913 (n + 1)

end A271913

/-! ## A271913.P8853583726009282625

`A271910(A052905(n)+9)+A008683(4*(n+1))`
-/

namespace A271913.P8853583726009282625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271910 (A052905 n + 9).toNat + A008683 (4 * (n + 1))

end

end A271913.P8853583726009282625

namespace A271913

/-- `A271910(A052905(n)+9)+A008683(4*(n+1))` -/
def P8853583726009282625.Spec : Prop :=
  ∀ n, P8853583726009282625.a n = A271913 (n + 1)

end A271913

/-! ## A271913.P5462997364220462329

`A271910(A000096(n+2)+5)^gcd(13, A007318(n))`
-/

namespace A271913.P5462997364220462329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271910 (A000096 (n + 2) + 5).toNat ^ Int.gcd 13 (A007318 n)

end

end A271913.P5462997364220462329

namespace A271913

/-- `A271910(A000096(n+2)+5)^gcd(13, A007318(n))` -/
def P5462997364220462329.Spec : Prop :=
  ∀ n, P5462997364220462329.a n = A271913 (n + 1)

end A271913

/-!
# A271914: Symmetric array read by antidiagonals: T(n,k) (n>=1, k>=1) = maximal number of points that can be chosen in an n X k rectangular grid such that no three distinct points form an isosceles triangle.

The programs for A271914, there is no canonical definition to state claims against.
-/

/-! ## A271914.P17955962649560649744

`A010058(A300539(n+1))+A003056(n)`
-/

namespace A271914.P17955962649560649744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010058 (A300539 (n + 1)).toNat + A003056 n

end

end A271914.P17955962649560649744

/-! ## A271914.P5203842360365799391

`A039966(A323324(n))+A003056(n)`
-/

namespace A271914.P5203842360365799391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039966 (A323324 n).toNat + A003056 n

end

end A271914.P5203842360365799391

/-! ## A271914.P15635438189031341679

`A117707(n)+A039966(A323324(n))`
-/

namespace A271914.P15635438189031341679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 n + A039966 (A323324 n).toNat

end

end A271914.P15635438189031341679

/-! ## A271914.P7505668845039010598

`A124796(A131061(n)²)+A003056(n)`
-/

namespace A271914.P7505668845039010598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124796 (A131061 n ^ 2).toNat + A003056 n

end

end A271914.P7505668845039010598

/-! ## A271914.P12329226791633907997

`A124796(A131061(n)²)+A117707(n)`
-/

namespace A271914.P12329226791633907997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124796 (A131061 n ^ 2).toNat + A117707 n

end

end A271914.P12329226791633907997

/-!
# A271915: Number of ways to choose three distinct points from a 5 X n grid so that they form an isosceles triangle.

The programs for A271915, the canonical program `A271915.P11282315579817521484` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271915 has offset 1).

The definition of A271915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271915.P11282315579817521484

`ogf((24x+60x^2+32x^3-4x^4-24x^5-24x^6-20x^7+4x^8+4x^9-8x^10-8x^11+4x^15-4x^17)/(1-2x+2x^3-x^4))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271915

/-- `ogf((24x+60x^2+32x^3-4x^4-24x^5-24x^6-20x^7+4x^8+4x^9-8x^10-8x^11+4x^15-4x^17)/(1-2x+2x^3-x^4))` -/
def P11282315579817521484.Spec : Prop :=
  ∀ n, P11282315579817521484.a n = A271915 (n + 1)

theorem P11282315579817521484.correct : P11282315579817521484.Spec := by
  intro n
  simp only [A271915, Nat.add_sub_cancel]

end A271915

/-! ## A271915.P12258861136140937093

`A271910(∑[n+5]+6)`
-/

namespace A271915.P12258861136140937093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271910 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A271915.P12258861136140937093

namespace A271915

/-- `A271910(∑[n+5]+6)` -/
def P12258861136140937093.Spec : Prop :=
  ∀ n, P12258861136140937093.a n = A271915 (n + 1)

end A271915

/-! ## A271915.P2076645773788551252

`lcm(2, A271910(A046691(n+3)))`
-/

namespace A271915.P2076645773788551252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A271910 (A046691 (n + 3)).toNat)

end

end A271915.P2076645773788551252

namespace A271915

/-- `lcm(2, A271910(A046691(n+3)))` -/
def P2076645773788551252.Spec : Prop :=
  ∀ n, (P2076645773788551252.a n : ℤ) = A271915 (n + 1)

end A271915

/-! ## A271915.P5997080690009371132

`A054977(n)*A271910(A046691(n+3))`
-/

namespace A271915.P5997080690009371132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A271910 (A046691 (n + 3)).toNat

end

end A271915.P5997080690009371132

namespace A271915

/-- `A054977(n)*A271910(A046691(n+3))` -/
def P5997080690009371132.Spec : Prop :=
  ∀ n, P5997080690009371132.a n = A271915 (n + 1)

end A271915

/-! ## A271915.P6825998307645470209

`A057427(n)*A271910(A046691(n+3))`
-/

namespace A271915.P6825998307645470209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A271910 (A046691 (n + 3)).toNat

end

end A271915.P6825998307645470209

namespace A271915

/-- `A057427(n)*A271910(A046691(n+3))` -/
def P6825998307645470209.Spec : Prop :=
  ∀ n, P6825998307645470209.a n = A271915 (n + 1)

end A271915

/-! ## A271915.P2987301660246759003

`A033999(n)²*A271910(A046691(n+3))`
-/

namespace A271915.P2987301660246759003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A271910 (A046691 (n + 3)).toNat

end

end A271915.P2987301660246759003

namespace A271915

/-- `A033999(n)²*A271910(A046691(n+3))` -/
def P2987301660246759003.Spec : Prop :=
  ∀ n, P2987301660246759003.a n = A271915 (n + 1)

end A271915

/-! ## A271915.P12521649820548301914

`char[A052938(n)]*A271910(A046691(n+3))`
-/

namespace A271915.P12521649820548301914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A271910 (A046691 (n + 3)).toNat

end

end A271915.P12521649820548301914

namespace A271915

/-- `char[A052938(n)]*A271910(A046691(n+3))` -/
def P12521649820548301914.Spec : Prop :=
  ∀ n, P12521649820548301914.a n = A271915 (n + 1)

end A271915

/-! ## A271915.P5161074493860736620

`A271910(A046691(n+3))+A000007(n+1)`
-/

namespace A271915.P5161074493860736620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271910 (A046691 (n + 3)).toNat + A000007 (n + 1)

end

end A271915.P5161074493860736620

namespace A271915

/-- `A271910(A046691(n+3))+A000007(n+1)` -/
def P5161074493860736620.Spec : Prop :=
  ∀ n, P5161074493860736620.a n = A271915 (n + 1)

end A271915

/-! ## A271915.P11978040151193093284

`A271910(A046691(n+3))%A258882(n+1)`
-/

namespace A271915.P11978040151193093284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271910 (A046691 (n + 3)).toNat) (A258882 (n + 1))

end

end A271915.P11978040151193093284

namespace A271915

/-- `A271910(A046691(n+3))%A258882(n+1)` -/
def P11978040151193093284.Spec : Prop :=
  ∀ n, P11978040151193093284.a n = A271915 (n + 1)

end A271915

/-! ## A271915.P11156726343331429692

`A271910(A046691(n+3))+n*A000038(n)`
-/

namespace A271915.P11156726343331429692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271910 (A046691 (n + 3)).toNat + (n : ℤ) * A000038 n

end

end A271915.P11156726343331429692

namespace A271915

/-- `A271910(A046691(n+3))+n*A000038(n)` -/
def P11156726343331429692.Spec : Prop :=
  ∀ n, P11156726343331429692.a n = A271915 (n + 1)

end A271915

/-!
# A271916: Array read by antidiagonals: T(m,n) (m>=1, n>=1) = f(m,n) if m <= n or f(n,m) if n < m, where f(m,n) = m*(m-1)*(3*n-m-1)/6.

The programs for A271916, the canonical program `A271916.P12190795228460927223` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271916 has offset 1).

The definition of A271916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271916.P12190795228460927223

`A115262(n)-A003991(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A271916

/-- `A115262(n)-A003991(n+1)` -/
def P12190795228460927223.Spec : Prop :=
  ∀ n, P12190795228460927223.a n = A271916 (n + 1)

theorem P12190795228460927223.correct : P12190795228460927223.Spec := by
  intro n
  simp only [A271916, Nat.add_sub_cancel]

end A271916

/-! ## A271916.P15063754717796292935

`A115262(n)-(A059036(n)+1)`
-/

namespace A271916.P15063754717796292935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115262 n - (A059036 n + 1)

end

end A271916.P15063754717796292935

namespace A271916

/-- `A115262(n)-(A059036(n)+1)` -/
def P15063754717796292935.Spec : Prop :=
  ∀ n, P15063754717796292935.a n = A271916 (n + 1)

theorem P15063754717796292935.correct : P15063754717796292935.Spec := by
  intro n
  simp only [A271916, Nat.add_sub_cancel, A271916.P15063754717796292935.a, A271916.P12190795228460927223.a, A003991, A003991.P6365127437582401781.a, A059036, A059036.P14090632459187506294.a, A115262, A115262.P17940030342430831789.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A271916

/-! ## A271916.P4579062111838908184

`A115262(n)-A098360(n+1)^(1/3)`
-/

namespace A271916.P4579062111838908184
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A115262 n : ℝ) - (A098360 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A271916.P4579062111838908184

namespace A271916

/-- `A115262(n)-A098360(n+1)^(1/3)` -/
def P4579062111838908184.Spec : Prop :=
  ∀ n, P4579062111838908184.a n = (A271916 (n + 1) : ℝ)

end A271916

/-! ## A271916.P1088149600959225196

`A115262(n)-(A049627(n)+A049615(n))`
-/

namespace A271916.P1088149600959225196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115262 n - (A049627 n + A049615 n)

end

end A271916.P1088149600959225196

namespace A271916

/-- `A115262(n)-(A049627(n)+A049615(n))` -/
def P1088149600959225196.Spec : Prop :=
  ∀ n, P1088149600959225196.a n = A271916 (n + 1)

end A271916

/-! ## A271916.P4822354035209849281

`A115262(n)-(A123578(n)+A086460(n))`
-/

namespace A271916.P4822354035209849281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115262 n - (A123578 n + A086460 n)

end

end A271916.P4822354035209849281

namespace A271916

/-- `A115262(n)-(A123578(n)+A086460(n))` -/
def P4822354035209849281.Spec : Prop :=
  ∀ n, P4822354035209849281.a n = A271916 (n + 1)

end A271916

/-! ## A271916.P3078314331972296903

`A115262(n)-A141611(n)/A007318(n)`
-/

namespace A271916.P3078314331972296903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115262 n : ℚ) - (A141611 n : ℚ) / (A007318 n : ℚ)

end

end A271916.P3078314331972296903

namespace A271916

/-- `A115262(n)-A141611(n)/A007318(n)` -/
def P3078314331972296903.Spec : Prop :=
  ∀ n, P3078314331972296903.a n = (A271916 (n + 1) : ℚ)

end A271916

/-! ## A271916.P14688829148693802930

`A115262(n)-(A003056(n)+A004247(n)+1)`
-/

namespace A271916.P14688829148693802930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115262 n - (A003056 n + (A004247 n + 1))

end

end A271916.P14688829148693802930

namespace A271916

/-- `A115262(n)-(A003056(n)+A004247(n)+1)` -/
def P14688829148693802930.Spec : Prop :=
  ∀ n, P14688829148693802930.a n = A271916 (n + 1)

end A271916

/-! ## A271916.P15451763199243687003

`A185909(n+1)-A127779(n+1)`
-/

namespace A271916.P15451763199243687003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185909 (n + 1) - A127779 (n + 1)

end

end A271916.P15451763199243687003

namespace A271916

/-- `A185909(n+1)-A127779(n+1)` -/
def P15451763199243687003.Spec : Prop :=
  ∀ n, P15451763199243687003.a n = A271916 (n + 1)

theorem P15451763199243687003.correct : P15451763199243687003.Spec := by
  intro n
  simp only [A271916, Nat.add_sub_cancel, A271916.P15451763199243687003.a, A271916.P12190795228460927223.a, A003991, A003991.P6365127437582401781.a, A115262, A115262.P17940030342430831789.a, A127779, A127779.P6962824600330842233.a, A185909, A185909.P3795063088529247606.a, A086271, A086271.P16008910328647451104.a, A094053, A094053.P7632435431613033853.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A271916

/-! ## A271916.P9498621411098114056

`A107985(n)-A185958(n+1)`
-/

namespace A271916.P9498621411098114056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107985 n - A185958 (n + 1)

end

end A271916.P9498621411098114056

namespace A271916

/-- `A107985(n)-A185958(n+1)` -/
def P9498621411098114056.Spec : Prop :=
  ∀ n, P9498621411098114056.a n = A271916 (n + 1)

theorem P9498621411098114056.correct : P9498621411098114056.Spec := by
  intro n
  simp only [A271916, Nat.add_sub_cancel, A271916.P9498621411098114056.a, A271916.P12190795228460927223.a, A003991, A003991.P6365127437582401781.a, A107985, A107985.P18009679851518096281.a, A115262, A115262.P17940030342430831789.a, A185958, A185958.P12776401688919844133.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A271916

/-! ## A271916.P12017211276668461223

`A107985(or(n, char[1]))%A185958(n+1)`
-/

namespace A271916.P12017211276668461223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107985 (Nat.lor n (if ∃ j, f1 j = n then 1 else 0))) (A185958 (n + 1))

end

end A271916.P12017211276668461223

namespace A271916

/-- `A107985(or(n, char[1]))%A185958(n+1)` -/
def P12017211276668461223.Spec : Prop :=
  ∀ n, P12017211276668461223.a n = A271916 (n + 1)

end A271916

/-! ## A271916.P10846240633434187972

`∑{d}[A036561(n), val(#, 6)]`
-/

namespace A271916.P10846240633434187972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, SequenceMachineLib.valuation d 6

end

end A271916.P10846240633434187972

namespace A271916

/-- `∑{d}[A036561(n), val(#, 6)]` -/
def P10846240633434187972.Spec : Prop :=
  ∀ n, (P10846240633434187972.a n : ℤ) = A271916 (n + 1)

end A271916

/-!
# A271917: Array read by antidiagonals: T(m,n) (m>=1, n>=1) = f(m,n) if m <= n or f(n,m) if n < m, where f(m,n) = m*(m^2-1)*(2*n-m)/12.

The programs for A271917, there is no canonical definition to state claims against.
-/

/-! ## A271917.P15239427453232120048

`A007318(n)-A016389(A299905(n))`
-/

namespace A271917.P15239427453232120048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A016389 (A299905 n).toNat

end

end A271917.P15239427453232120048

/-! ## A271917.P15756415383249247575

`abs(A108086(n))-A016389(A299905(n))`
-/

namespace A271917.P15756415383249247575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n| - A016389 (A299905 n).toNat

end

end A271917.P15756415383249247575

/-! ## A271917.P6932772244818627285

`abs(A130595(n))-A016389(A299905(n))`
-/

namespace A271917.P6932772244818627285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n| - A016389 (A299905 n).toNat

end

end A271917.P6932772244818627285

/-! ## A271917.P10112356723257330646

`A007318(n)-A011558(A295716(n+1))`
-/

namespace A271917.P10112356723257330646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A011558 (A295716 (n + 1)).toNat

end

end A271917.P10112356723257330646

/-! ## A271917.P10563656855915512523

`A007318(n)-A284527(A144436(n+1))`
-/

namespace A271917.P10563656855915512523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A284527 (A144436 (n + 1)).toNat

end

end A271917.P10563656855915512523

/-!
# A271919: Numerator of Product_{j=1..n-1} ((3*j+1)/(3*j+2)).

The programs for A271919, there is no canonical definition to state claims against.
-/

/-! ## A271919.P5518343009445854264

`lcm(n+1, A271921(n+1))/(n+1)`
-/

namespace A271919.P5518343009445854264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A271921 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A271919.P5518343009445854264

/-! ## A271919.P8484235854953558581

`lcm(A034164(n), A185047(n))/A034164(n)`
-/

namespace A271919.P8484235854953558581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A034164 n) (A185047 n) : ℚ) / (A034164 n : ℚ)

end

end A271919.P8484235854953558581

/-! ## A271919.P2007754202201172578

`A271921(n+1)/A000005(A000244(n))`
-/

namespace A271919.P2007754202201172578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271921 (n + 1) : ℚ) / (A000005 (A000244 n).toNat : ℚ)

end

end A271919.P2007754202201172578

/-! ## A271919.P15773310082121706325

`A271921(n+1)/A008480(A020714(n))`
-/

namespace A271919.P15773310082121706325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271921 (n + 1) : ℚ) / (A008480 (A020714 n).toNat : ℚ)

end

end A271919.P15773310082121706325

/-! ## A271919.P2960499047191779894

`A271921(n+1)/A001222(A008776(n))`
-/

namespace A271919.P2960499047191779894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271921 (n + 1) : ℚ) / (A001222 (A008776 n).toNat : ℚ)

end

end A271919.P2960499047191779894

/-!
# A271920: Denominator of Product_{j=1..n-1} ((3*j+1)/(3*j+2)).

The programs for A271920, there is no canonical definition to state claims against.
-/

/-! ## A271920.P1573002219846071151

`lcm(A034164(n), A185047(n))/A185047(n)`
-/

namespace A271920.P1573002219846071151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A034164 n) (A185047 n) : ℚ) / (A185047 n : ℚ)

end

end A271920.P1573002219846071151

/-! ## A271920.P2385917324870571163

`A124778(A338882(3*n))*A271922(n+1)`
-/

namespace A271920.P2385917324870571163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (A338882 (3 * n)).toNat * A271922 (n + 1)

end

end A271920.P2385917324870571163

/-! ## A271920.P7152024540918501547

`A138904(A335448(n+1))*A271922(n+1)`
-/

namespace A271920.P7152024540918501547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138904 (A335448 (n + 1)).toNat * A271922 (n + 1)

end

end A271920.P7152024540918501547

/-! ## A271920.P5175250947273978781

`A271922(n+1)*A347437(A007576(n))`
-/

namespace A271920.P5175250947273978781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271922 (n + 1) * A347437 (A007576 n).toNat

end

end A271920.P5175250947273978781

/-! ## A271920.P160750834520088082

`A271922(A061497(n+1))`
-/

namespace A271920.P160750834520088082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271922 (A061497 (n + 1)).toNat

end

end A271920.P160750834520088082

/-!
# A271921: Numerator of n*Product_{j=1..n-1} ((3*j + 1)/(3*j + 2)).

The programs for A271921, there is no canonical definition to state claims against.
-/

/-! ## A271921.P11509075407698521521

`A000005(A000244(n))*A271919(n+1)`
-/

namespace A271921.P11509075407698521521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000244 n).toNat * A271919 (n + 1)

end

end A271921.P11509075407698521521

/-! ## A271921.P2239400939661226440

`A008480(A020714(n))*A271919(n+1)`
-/

namespace A271921.P2239400939661226440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A020714 n).toNat * A271919 (n + 1)

end

end A271921.P2239400939661226440

/-! ## A271921.P12025736468634626372

`A002217(A048133(n))*A271919(n+1)`
-/

namespace A271921.P12025736468634626372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002217 (A048133 n).toNat * A271919 (n + 1)

end

end A271921.P12025736468634626372

/-! ## A271921.P11123781080327675266

`A271919(n+1)*A348406(A128605(n))`
-/

namespace A271921.P11123781080327675266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271919 (n + 1) * A348406 (A128605 n).toNat

end

end A271921.P11123781080327675266

/-! ## A271921.P637922263283708349

`A000027(n+1)*A028310(A271919(n+1))`
-/

namespace A271921.P637922263283708349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A028310 (A271919 (n + 1)).toNat

end

end A271921.P637922263283708349

/-!
# A271922: Denominator of n*Product_{j=1..n-1} ((3*j + 1)/(3*j + 2)).

The programs for A271922, there is no canonical definition to state claims against.
-/

/-! ## A271922.P8549800979265975876

`lcm(n+1, A271920(n+1))/(n+1)`
-/

namespace A271922.P8549800979265975876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A271920 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A271922.P8549800979265975876

/-! ## A271922.P7500853398938966486

`A271920(n+1)/A124778(A338882(3*n))`
-/

namespace A271922.P7500853398938966486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271920 (n + 1) : ℚ) / (A124778 (A338882 (3 * n)).toNat : ℚ)

end

end A271922.P7500853398938966486

/-! ## A271922.P8757450742422729945

`A271920(n+1)/A124778(A214990(n+1))`
-/

namespace A271922.P8757450742422729945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271920 (n + 1) : ℚ) / (A124778 (A214990 (n + 1)).toNat : ℚ)

end

end A271922.P8757450742422729945

/-!
# A271923: Numerator of (1/3)*(Product_{j=0..n-1} (((2*j+1)*(3*j+4))/((j+1)*(6*j+1))) - 1).

The programs for A271923, there is no canonical definition to state claims against.
-/

/-! ## A271923.P14995309100292456501

`lcm(3, A271925(n+1))/3`
-/

namespace A271923.P14995309100292456501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A271925 (n + 1)) : ℚ) / 3

end

end A271923.P14995309100292456501

/-! ## A271923.P16123948296690000518

`A038502(A271925(n+1))`
-/

namespace A271923.P16123948296690000518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A271925 (n + 1)).toNat

end

end A271923.P16123948296690000518

/-!
# A271924: Denominator of (1/3)*(Product_{j=0..n-1} (((2*j+1)*(3*j+4))/((j+1)*(6*j+1))) - 1).

The programs for A271924, there is no canonical definition to state claims against.
-/

/-! ## A271924.P16677910973595740023

`A040443(A112368(n))*A271926(n+1)`
-/

namespace A271924.P16677910973595740023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040443 (A112368 n).toNat * A271926 (n + 1)

end

end A271924.P16677910973595740023

/-! ## A271924.P9496898260333799748

`A040402(A271930(n+1))*A271926(n+1)`
-/

namespace A271924.P9496898260333799748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040402 (A271930 (n + 1)).toNat * A271926 (n + 1)

end

end A271924.P9496898260333799748

/-!
# A271925: Numerator of (Product_{j=0..n-1} (((2*j+1)*(3*j+4))/((j+1)*(6*j+1))) - 1).

The programs for A271925, there is no canonical definition to state claims against.
-/

/-! ## A271925.P3498796719973251110

`A144437(A271924(n+1))*A271923(n+1)`
-/

namespace A271925.P3498796719973251110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144437 (A271924 (n + 1)).toNat * A271923 (n + 1)

end

end A271925.P3498796719973251110

/-!
# A271926: Denominator of (Product_{j=0..n-1} (((2*j+1)*(3*j+4))/((j+1)*(6*j+1))) - 1).

The programs for A271926, there is no canonical definition to state claims against.
-/

/-! ## A271926.P9614947571716632805

`lcm(3, A271924(n+1))/3`
-/

namespace A271926.P9614947571716632805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A271924 (n + 1)) : ℚ) / 3

end

end A271926.P9614947571716632805

/-! ## A271926.P13862682246256808268

`∏{p}[A271924(n+1), A038502(#)]`
-/

namespace A271926.P13862682246256808268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A038502 p

end

end A271926.P13862682246256808268

/-! ## A271926.P9580022224360239489

`∏{p}[A271924(n+1), A106610(#)]`
-/

namespace A271926.P9580022224360239489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A106610 p

end

end A271926.P9580022224360239489

/-!
# A271927: Records in A268868.

The programs for A271927, there is no canonical definition to state claims against.
-/

/-! ## A271927.P12859331720835237705

`A268868(A271928(n+1))`
-/

namespace A271927.P12859331720835237705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268868 (A271928 (n + 1)).toNat

end

end A271927.P12859331720835237705

/-! ## A271927.P16935987609305768120

`record[A268868(n+1)]`
-/

namespace A271927.P16935987609305768120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271927.P16935987609305768120

/-! ## A271927.P315605112989743871

`record[Δ[A096461(n+1)]]`
-/

namespace A271927.P315605112989743871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096461 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271927.P315605112989743871

/-! ## A271927.P13135327893188288844

`record[A096461(n+2)-A096461(n+1)]`
-/

namespace A271927.P13135327893188288844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096461 (n + 2) - A096461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271927.P13135327893188288844

/-! ## A271927.P12039518976617777354

`Δ[A096461(A351870(n+1))]`
-/

namespace A271927.P12039518976617777354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096461 (A351870 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271927.P12039518976617777354

/-!
# A271929: G.f. A(x) satisfies: A(x)^3 = A(x^3) / (1 - 3*x).

The programs for A271929, there is no canonical definition to state claims against.
-/

/-! ## A271929.P15751442948543945580

`A247911(A026325(n))`
-/

namespace A271929.P15751442948543945580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (A026325 n).toNat

end

end A271929.P15751442948543945580

/-! ## A271929.P775764272367684778

`A026819(∑[A352684(n)])`
-/

namespace A271929.P775764272367684778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A271929.P775764272367684778

/-! ## A271929.P16710662294115267560

`A046155(∑[A352684(n)])`
-/

namespace A271929.P16710662294115267560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A271929.P16710662294115267560

/-! ## A271929.P10232008880440514214

`A185283(A255673(n))-A014406(n+1)`
-/

namespace A271929.P10232008880440514214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A255673 n).toNat - A014406 (n + 1)

end

end A271929.P10232008880440514214

/-!
# A271930: G.f. A(x) satisfies: A(x) = A( x^2 + 6*x*A(x)^2 )^(1/2), with A(0)=0, A'(0)=1.

The programs for A271930, there is no canonical definition to state claims against.
-/

/-! ## A271930.P15110028931939464932

`filter[A394147(n), A098725(#)]`
-/

namespace A271930.P15110028931939464932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A271930.P15110028931939464932

/-! ## A271930.P777492782825474219

`or(A308044(A005043(2*(n+1))+2)/2, A064098(n+1))`
-/

namespace A271930.P777492782825474219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A308044 (A005043 (2 * (n + 1)) + 2).toNat : ℚ) / 2)) (A064098 (n + 1))

end

end A271930.P777492782825474219

/-!
# A271931: G.f. A(x) satisfies: A(x) = A( x^5 + 5*x*A(x)^5 )^(1/5), with A(0)=0, A'(0)=1.

The programs for A271931, there is no canonical definition to state claims against.
-/

/-! ## A271931.P7518583230786646320

`A020912(A397147(n+2))`
-/

namespace A271931.P7518583230786646320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020912 (A397147 (n + 2)).toNat

end

end A271931.P7518583230786646320

/-! ## A271931.P10882853060837537062

`A127714(A254875(n))-char[6]`
-/

namespace A271931.P10882853060837537062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127714 (A254875 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A271931.P10882853060837537062

/-! ## A271931.P18432242363979146506

`A187187(A150458(n+1))+char[6]`
-/

namespace A271931.P18432242363979146506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (A150458 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A271931.P18432242363979146506

/-!
# A271932: G.f. A(x) satisfies: A(x) = A( x^7 + 7*x*A(x)^7 )^(1/7), with A(0)=0, A'(0)=1.

The programs for A271932, there is no canonical definition to state claims against.
-/

/-! ## A271932.P1000861578768639582

`A153295(n)-A122841(A041895(n+1))`
-/

namespace A271932.P1000861578768639582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153295 n - A122841 (A041895 (n + 1)).toNat

end

end A271932.P1000861578768639582

/-! ## A271932.P8807336683574853747

`A153295(n)-A137579(A271377(n+1))`
-/

namespace A271932.P8807336683574853747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153295 n - A137579 (A271377 (n + 1)).toNat

end

end A271932.P8807336683574853747

/-! ## A271932.P2636483715655143848

`A153295(A099146(n+1))`
-/

namespace A271932.P2636483715655143848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153295 (A099146 (n + 1)).toNat

end

end A271932.P2636483715655143848

/-! ## A271932.P6328463536922469307

`A014682(2*A153295(n))`
-/

namespace A271932.P6328463536922469307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * A153295 n).toNat

end

end A271932.P6328463536922469307

/-!
# A271933: G.f. A(x) satisfies: A(x) = A( x^11 + 11*x*A(x)^11 )^(1/11), with A(0)=0, A'(0)=1.

The programs for A271933, there is no canonical definition to state claims against.
-/

/-! ## A271933.P8484482243927505691

`or(A058250(n), A068937(A063895(3*n+1)))`
-/

namespace A271933.P8484482243927505691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A058250 n) (A068937 (A063895 (3 * n + 1)).toNat)

end

end A271933.P8484482243927505691

/-! ## A271933.P4179700176058603187

`A380685(∑{d}[A000088(n), A055231(n+1)²%#])`
-/

namespace A271933.P4179700176058603187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380685 (∑ d ∈ Nat.divisors (f1 n).natAbs, Int.tmod (A055231 (n + 1) ^ 2) (d : ℤ)).toNat

end

end A271933.P4179700176058603187

/-!
# A271934: G.f. A(x) satisfies: A(x) = A( x^3 + 6*x*A(x)^3 )^(1/3), with A(0)=0, A'(0)=1.

The programs for A271934, there is no canonical definition to state claims against.
-/

/-! ## A271934.P17413106041306406065

`A247914(A162475(n))+floor(4*n*sqrt(2))%2`
-/

namespace A271934.P17413106041306406065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247914 (A162475 n).toNat + Int.tmod ⌊4 * ((n : ℝ) * Real.sqrt (2 : ℝ))⌋ 2

end

end A271934.P17413106041306406065

/-! ## A271934.P817438240187447116

`A047098(n)+A010872(A051117(n))`
-/

namespace A271934.P817438240187447116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047098 n + A010872 (A051117 n).toNat

end

end A271934.P817438240187447116

/-!
# A271935: G.f. A(x) satisfies: A(x) = A( x^2 + 8*x*A(x)^2 )^(1/2), with A(0)=0, A'(0)=1.

The programs for A271935, there is no canonical definition to state claims against.
-/

/-! ## A271935.P17545032027056777991

`A246509(n)-A353501(A008483(3*n+4))`
-/

namespace A271935.P17545032027056777991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246509 n - A353501 (A008483 (3 * n + 4)).toNat

end

end A271935.P17545032027056777991

/-!
# A271936: Commutative powers: numbers of the form a^b = b^a.

The programs for A271936, there is no canonical definition to state claims against.
-/

/-! ## A271936.P4524769297102363360

`n^n*a(C(2, n))` with `a(0)=1, a(1)=4`
-/

namespace A271936.P4524769297102363360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  n ^ n * a (Nat.choose 2 n)

end

end A271936.P4524769297102363360

/-! ## A271936.P14822031056539898890

`(n*gcd(n, a(n-1)))^n` with `a(0)=1, a(1)=4`
-/

namespace A271936.P14822031056539898890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  (n * Nat.gcd n (a (n - 1))) ^ n

end

end A271936.P14822031056539898890

/-! ## A271936.P8675983618760306675

`floor(2/a(n-2)+n)^n` with `a(0)=1, a(1)=4`
-/

namespace A271936.P8675983618760306675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ⌊2 / (a (n - 2) : ℚ) + (n : ℚ)⌋ ^ n

end

end A271936.P8675983618760306675

/-! ## A271936.P7073449633147954260

`n^gcd(n², n%a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A271936.P7073449633147954260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  n ^ Nat.gcd (n ^ 2) (n % a (n - 2))

end

end A271936.P7073449633147954260

/-! ## A271936.P709866704128254155

`round(3/((n-1)^n+1)+n)^n`
-/

namespace A271936.P709866704128254155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / (((n : ℤ) - 1) ^ n + 1 : ℚ) + (n : ℚ)) ^ n

end

end A271936.P709866704128254155

/-! ## A271936.P2385037894829751398

`A181405(n+1)+n^n`
-/

namespace A271936.P2385037894829751398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181405 (n + 1) + (n ^ n : ℤ)

end

end A271936.P2385037894829751398

/-! ## A271936.P1516030987041902043

`record[A006370(n)^A166514(n)]`
-/

namespace A271936.P1516030987041902043
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006370 n : ℚ) ^ (A166514 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271936.P1516030987041902043

/-! ## A271936.P8109430325799198647

`record[A029578(n)^A273943(n)]`
-/

namespace A271936.P8109430325799198647
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029578 n : ℚ) ^ (A273943 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271936.P8109430325799198647

/-! ## A271936.P3931103286206221306

`record[A283993(n+1)^A283994(n+1)]`
-/

namespace A271936.P3931103286206221306
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283993 (n + 1) : ℚ) ^ (A283994 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271936.P3931103286206221306

/-!
# A271937: a(n) = (7/4)*n^2 + (5/2)*n + (7 + (-1)^n)/8.

The programs for A271937, the canonical program `A271937.P1897585889562658612` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271937 has offset 0).

The definition of A271937 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271937.P18262579829995208033

`ogf((1+3x+3x^2)/(1-2x+2x^3-x^4))`
-/

namespace A271937.P18262579829995208033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 3] [1, -2, 0, 2, -1] n

end

end A271937.P18262579829995208033

namespace A271937

/-- `ogf((1+3x+3x^2)/(1-2x+2x^3-x^4))` -/
def P18262579829995208033.Spec : Prop :=
  ∀ n, P18262579829995208033.a n = A271937 n

end A271937

/-! ## A271937.P1897585889562658612

`7/4*n²+5/2*n+(7+(-1)^n)/8`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271937

/-- `7/4*n²+5/2*n+(7+(-1)^n)/8` -/
def P1897585889562658612.Spec : Prop :=
  ∀ n, P1897585889562658612.a n = (A271937 n : ℚ)

end A271937

/-! ## A271937.P15837158929805699579

`∑[a(n-2)+7]` with `a(0)=1, a(1)=4`
-/

namespace A271937.P15837158929805699579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 2) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271937.P15837158929805699579

namespace A271937

/-- `∑[a(n-2)+7]` -/
def P15837158929805699579.Spec : Prop :=
  ∀ n, (P15837158929805699579.a n : ℤ) = A271937 n

end A271937

/-! ## A271937.P2104356121574666721

`∑[∑[∑[ogf((1+3x+3x^2)/(1+x))]]]`
-/

namespace A271937.P2104356121574666721
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 3] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271937.P2104356121574666721

namespace A271937

/-- `∑[∑[∑[ogf((1+3x+3x^2)/(1+x))]]]` -/
def P2104356121574666721.Spec : Prop :=
  ∀ n, P2104356121574666721.a n = A271937 n

end A271937

/-! ## A271937.P11868040549268293328

`∑[2*n+∑[gcd(2, n)]-1]`
-/

namespace A271937.P11868040549268293328
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271937.P11868040549268293328

namespace A271937

/-- `∑[2*n+∑[gcd(2, n)]-1]` -/
def P11868040549268293328.Spec : Prop :=
  ∀ n, P11868040549268293328.a n = A271937 n

end A271937

/-! ## A271937.P6366045845815631055

`a(n-2)+7*n-2` with `a(0)=1, a(1)=5`
-/

namespace A271937.P6366045845815631055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 2) + (7 * n : ℤ) - 2

end

end A271937.P6366045845815631055

namespace A271937

/-- `a(n-2)+7*n-2` -/
def P6366045845815631055.Spec : Prop :=
  ∀ n, P6366045845815631055.a n = A271937 n

end A271937

/-! ## A271937.P7628948047315268334

`∑[∑[floor(a(n-2))]]-1` with `a(0)=2, a(1)=2, a(2)=4, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A271937.P7628948047315268334
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 4, 3] fun n f2 =>
  f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A271937.P7628948047315268334

namespace A271937

/-- `∑[∑[floor(a(n-2))]]-1` -/
def P7628948047315268334.Spec : Prop :=
  ∀ n, P7628948047315268334.a n = A271937 n

end A271937

/-! ## A271937.P7862226351838385762

`(n+1)*(2*n+1)-∑[∑[and(1, n)]]`
-/

namespace A271937.P7862226351838385762
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (2 * n + 1) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A271937.P7862226351838385762

namespace A271937

/-- `(n+1)*(2*n+1)-∑[∑[and(1, n)]]` -/
def P7862226351838385762.Spec : Prop :=
  ∀ n, P7862226351838385762.a n = A271937 n

end A271937

/-! ## A271937.P3456840546129629918

`lcm(n+1, 2*n+1)-floor(((n+1)/2)²)`
-/

namespace A271937.P3456840546129629918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (2 * n + 1) : ℤ) - ⌊((n + 1 : ℚ) / 2) ^ 2⌋

end

end A271937.P3456840546129629918

namespace A271937

/-- `lcm(n+1, 2*n+1)-floor(((n+1)/2)²)` -/
def P3456840546129629918.Spec : Prop :=
  ∀ n, P3456840546129629918.a n = A271937 n

end A271937

/-! ## A271937.P1680834036682325250

`∑[A047346(n+1)]`
-/

namespace A271937.P1680834036682325250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047346 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271937.P1680834036682325250

namespace A271937

/-- `∑[A047346(n+1)]` -/
def P1680834036682325250.Spec : Prop :=
  ∀ n, P1680834036682325250.a n = A271937 n

end A271937

/-! ## A271937.P13296786286190384721

`∑[A047355(n+1)+1]`
-/

namespace A271937.P13296786286190384721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047355 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271937.P13296786286190384721

namespace A271937

/-- `∑[A047355(n+1)+1]` -/
def P13296786286190384721.Spec : Prop :=
  ∀ n, P13296786286190384721.a n = A271937 n

end A271937

/-! ## A271937.P12341882195710405763

`∑[A047385(n+1)-1]`
-/

namespace A271937.P12341882195710405763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047385 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271937.P12341882195710405763

namespace A271937

/-- `∑[A047385(n+1)-1]` -/
def P12341882195710405763.Spec : Prop :=
  ∀ n, P12341882195710405763.a n = A271937 n

end A271937

/-! ## A271937.P7339988963281738389

`∑[A047280(n+1)-2]`
-/

namespace A271937.P7339988963281738389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047280 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271937.P7339988963281738389

namespace A271937

/-- `∑[A047280(n+1)-2]` -/
def P7339988963281738389.Spec : Prop :=
  ∀ n, P7339988963281738389.a n = A271937 n

end A271937

/-! ## A271937.P4934927058418027736

`∑[A047294(2*n+1)]`
-/

namespace A271937.P4934927058418027736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047294 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271937.P4934927058418027736

namespace A271937

/-- `∑[A047294(2*n+1)]` -/
def P4934927058418027736.Spec : Prop :=
  ∀ n, P4934927058418027736.a n = A271937 n

end A271937

/-! ## A271937.P10958368967546297378

`∑[A047298(2*n+1)]`
-/

namespace A271937.P10958368967546297378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047298 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271937.P10958368967546297378

namespace A271937

/-- `∑[A047298(2*n+1)]` -/
def P10958368967546297378.Spec : Prop :=
  ∀ n, P10958368967546297378.a n = A271937 n

end A271937

/-! ## A271937.P12905206129036654541

`∑[A047344(2*(n+1))]`
-/

namespace A271937.P12905206129036654541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047344 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271937.P12905206129036654541

namespace A271937

/-- `∑[A047344(2*(n+1))]` -/
def P12905206129036654541.Spec : Prop :=
  ∀ n, P12905206129036654541.a n = A271937 n

end A271937

/-! ## A271937.P9992631256498288098

`∑[A047351(2*(n+1))]`
-/

namespace A271937.P9992631256498288098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047351 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271937.P9992631256498288098

namespace A271937

/-- `∑[A047351(2*(n+1))]` -/
def P9992631256498288098.Spec : Prop :=
  ∀ n, P9992631256498288098.a n = A271937 n

end A271937

/-! ## A271937.P8898119825706448954

`∑[A047366(2*n+1)]`
-/

namespace A271937.P8898119825706448954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047366 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271937.P8898119825706448954

namespace A271937

/-- `∑[A047366(2*n+1)]` -/
def P8898119825706448954.Spec : Prop :=
  ∀ n, P8898119825706448954.a n = A271937 n

end A271937

/-! ## A271937.P3064244846146043019

`∑[A047380(2*n+1)]`
-/

namespace A271937.P3064244846146043019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047380 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271937.P3064244846146043019

namespace A271937

/-- `∑[A047380(2*n+1)]` -/
def P3064244846146043019.Spec : Prop :=
  ∀ n, P3064244846146043019.a n = A271937 n

end A271937

/-!
# A271938: a(1) = 1, a(2) = 3, a(n) = a(n-1)^a(n-2).

The programs for A271938, there is no canonical definition to state claims against.
-/

/-! ## A271938.P16919903588794584782

`3^round(cosh(n)/3)`
-/

namespace A271938.P16919903588794584782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (SequenceMachineLib.roundAway (Real.cosh (n : ℝ) / 3) : ℤ)

end

end A271938.P16919903588794584782

/-!
# A271939: Number of edges in the n-th order Sierpinski carpet graph.

The programs for A271939, the canonical program `A271939.P13032797244633498826` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271939 has offset 1).

The definition of A271939 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271939.P547141257177960525

`ogf(8/(1-11x+24x^2))`
-/

namespace A271939.P547141257177960525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8] [1, -11, 24] n

end

end A271939.P547141257177960525

namespace A271939

/-- `ogf(8/(1-11x+24x^2))` -/
def P547141257177960525.Spec : Prop :=
  ∀ n, P547141257177960525.a n = A271939 (n + 1)

end A271939

/-! ## A271939.P13032797244633498826

`8*a(n-1)+8*3^n` with `a(0)=8`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271939

/-- `8*a(n-1)+8*3^n` -/
def P13032797244633498826.Spec : Prop :=
  ∀ n, (P13032797244633498826.a n : ℤ) = A271939 (n + 1)

theorem P13032797244633498826.correct : P13032797244633498826.Spec := by
  intro n
  simp only [A271939, Nat.add_sub_cancel]

end A271939

/-! ## A271939.P5340244026532410169

`8*A016140(n)`
-/

namespace A271939.P5340244026532410169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A016140 n

end

end A271939.P5340244026532410169

namespace A271939

/-- `8*A016140(n)` -/
def P5340244026532410169.Spec : Prop :=
  ∀ n, P5340244026532410169.a n = A271939 (n + 1)

end A271939

/-! ## A271939.P11393587089239028051

`8*(8^(n+1)-3^(n+1))/5`
-/

namespace A271939.P11393587089239028051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * ((8 ^ (n + 1) : ℤ) - (3 ^ (n + 1) : ℤ)) : ℚ) / 5

end

end A271939.P11393587089239028051

namespace A271939

/-- `8*(8^(n+1)-3^(n+1))/5` -/
def P11393587089239028051.Spec : Prop :=
  ∀ n, P11393587089239028051.a n = (A271939 (n + 1) : ℚ)

theorem P11393587089239028051.correct : P11393587089239028051.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A271939, Nat.add_sub_cancel, A271939.P11393587089239028051.a, A271939.P13032797244633498826.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A271939, Nat.add_sub_cancel, A271939.P11393587089239028051.a, A271939.P13032797244633498826.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A271939

/-! ## A271939.P7468479231467978604

`8*(a(n-1)+3^n)` with `a(0)=8`
-/

namespace A271939.P7468479231467978604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  8 * (a (n - 1) + 3 ^ n)

end

end A271939.P7468479231467978604

namespace A271939

/-- `8*(a(n-1)+3^n)` -/
def P7468479231467978604.Spec : Prop :=
  ∀ n, (P7468479231467978604.a n : ℤ) = A271939 (n + 1)

theorem P7468479231467978604.correct : P7468479231467978604.Spec := by
  intro n
  simp only [A271939, Nat.add_sub_cancel, A271939.P7468479231467978604.a, A271939.P13032797244633498826.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A271939

/-! ## A271939.P17129492193525891122

`lcm(8, a(n-1)+3^n)` with `a(0)=8`
-/

namespace A271939.P17129492193525891122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  Nat.lcm 8 (a (n - 1) + 3 ^ n)

end

end A271939.P17129492193525891122

namespace A271939

/-- `lcm(8, a(n-1)+3^n)` -/
def P17129492193525891122.Spec : Prop :=
  ∀ n, (P17129492193525891122.a n : ℤ) = A271939 (n + 1)

end A271939

/-! ## A271939.P2262460054828495735

`abs(∏[-a(n-1)])+3*a(n-1)` with `a(0)=8`
-/

namespace A271939.P2262460054828495735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  |∏ j ∈ Finset.range (n + 1), f1 j| + 3 * a (n - 1)

end

end A271939.P2262460054828495735

namespace A271939

/-- `abs(∏[-a(n-1)])+3*a(n-1)` -/
def P2262460054828495735.Spec : Prop :=
  ∀ n, P2262460054828495735.a n = A271939 (n + 1)

end A271939

/-! ## A271939.P15929488107033816541

`A005051(n)+8*a(n-1)` with `a(0)=8`
-/

namespace A271939.P15929488107033816541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A005051 n + 8 * a (n - 1)

end

end A271939.P15929488107033816541

namespace A271939

/-- `A005051(n)+8*a(n-1)` -/
def P15929488107033816541.Spec : Prop :=
  ∀ n, P15929488107033816541.a n = A271939 (n + 1)

end A271939

/-! ## A271939.P7658365023104257878

`or(lcm(3, a(n-1)), A000079(3*(n+1)))` with `a(0)=8`
-/

namespace A271939.P7658365023104257878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  Int.lor (Int.lcm 3 (a (n - 1)) : ℤ) (A000079 (3 * (n + 1)))

end

end A271939.P7658365023104257878

namespace A271939

/-- `or(lcm(3, a(n-1)), A000079(3*(n+1)))` -/
def P7658365023104257878.Spec : Prop :=
  ∀ n, P7658365023104257878.a n = A271939 (n + 1)

end A271939

/-! ## A271939.P13793572373295283774

`lcm(8, A016140(A118759(n)))`
-/

namespace A271939.P13793572373295283774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 (A016140 (A118759 n).toNat)

end

end A271939.P13793572373295283774

namespace A271939

/-- `lcm(8, A016140(A118759(n)))` -/
def P13793572373295283774.Spec : Prop :=
  ∀ n, (P13793572373295283774.a n : ℤ) = A271939 (n + 1)

end A271939

/-!
# A271941: Number of peaks in all bargraphs having semiperimeter n (n>=2).

The programs for A271941, there is no canonical definition to state claims against.
-/

/-! ## A271941.P5311572636854823989

`∑[A273716(n+2)]`
-/

namespace A271941.P5311572636854823989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273716 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271941.P5311572636854823989

/-! ## A271941.P12864149440933510939

`∑[A098978(∑[n+1-a(n-1)])]` with `a(0)=2, a(1)=1`
-/

namespace A271941.P12864149440933510939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  (n + 1 : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271941.P12864149440933510939

/-! ## A271941.P7707208639913091391

`∑[A098978(∑[A008619(n)]+1)]`
-/

namespace A271941.P7707208639913091391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271941.P7707208639913091391

/-! ## A271941.P11720865147119798534

`∑[A098978(Δ[A266464(n+1)])]`
-/

namespace A271941.P11720865147119798534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266464 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271941.P11720865147119798534

/-! ## A271941.P17333315005175839120

`∑[A098978(A087811(n+1)+1)]`
-/

namespace A271941.P17333315005175839120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (A087811 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271941.P17333315005175839120

/-! ## A271941.P10016048861898674766

`∑[A098978(A002620(n+2)+1)]`
-/

namespace A271941.P10016048861898674766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (A002620 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271941.P10016048861898674766

/-! ## A271941.P18265743459937963186

`∑[A098978(A076921(n+2)+1)]`
-/

namespace A271941.P18265743459937963186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (A076921 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271941.P18265743459937963186

/-!
# A271942: Triangle read by rows: T(n,k) is the number of bargraphs of semiperimeter n having width k (n>=2, k>=1).

The programs for A271942, there is no canonical definition to state claims against.
-/

/-! ## A271942.P4497247623603350038

`A273350(A038722(round(acot(n)+n)))`
-/

namespace A271942.P4497247623603350038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273350 (A038722 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat).toNat

end

end A271942.P4497247623603350038

/-! ## A271942.P5564178815785454977

`A273350(∑[char[∑[n]]]²-n+1)`
-/

namespace A271942.P5564178815785454977
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273350 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) + 1).toNat

end

end A271942.P5564178815785454977

/-! ## A271942.P17933552607262713387

`A145904(∑[2*n]%(comp[∑[n+1]]+1))`
-/

namespace A271942.P17933552607262713387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145904 ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1))

end

end A271942.P17933552607262713387

/-! ## A271942.P10798450389602886763

`A145904(gcd(A010816(n), A061579(n)))`
-/

namespace A271942.P10798450389602886763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145904 (Int.gcd (A010816 n) (A061579 n))

end

end A271942.P10798450389602886763

/-! ## A271942.P3022884464313932021

`A145904(∑[char[∑[n]]]²-n-1)`
-/

namespace A271942.P3022884464313932021
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145904 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A271942.P3022884464313932021

/-! ## A271942.P9414004057443103579

`A145904(A061579(n))*A262681(n)`
-/

namespace A271942.P9414004057443103579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145904 (A061579 n).toNat * A262681 n

end

end A271942.P9414004057443103579

/-! ## A271942.P16214187972107625688

`A145904(A061579(n))^A178334(n)`
-/

namespace A271942.P16214187972107625688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145904 (A061579 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A271942.P16214187972107625688

/-! ## A271942.P53230573153973575

`A145904(A061579(n))%A022126(n)`
-/

namespace A271942.P53230573153973575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145904 (A061579 n).toNat) (A022126 n)

end

end A271942.P53230573153973575

/-! ## A271942.P9232329613226612182

`lcm(A057077(n), A145904(A061579(n)))`
-/

namespace A271942.P9232329613226612182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A145904 (A061579 n).toNat)

end

end A271942.P9232329613226612182

/-! ## A271942.P3522514231638085564

`or(A000007(n), A145904(A061579(n)))`
-/

namespace A271942.P3522514231638085564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A145904 (A061579 n).toNat)

end

end A271942.P3522514231638085564

/-!
# A271943: The sum of the widths of all bargraphs of semiperimeter n (n>=2).

The programs for A271943, there is no canonical definition to state claims against.
-/

/-! ## A271943.P11351344688265160879

`∑[A273345(n+3)]`
-/

namespace A271943.P11351344688265160879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273345 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271943.P11351344688265160879

/-! ## A271943.P10227462488314358391

`∑[∑[A274492(n+2)]]`
-/

namespace A271943.P10227462488314358391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274492 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271943.P10227462488314358391

/-! ## A271943.P15454247038838064145

`A047086(n+1)-A086581(n+1)`
-/

namespace A271943.P15454247038838064145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047086 (n + 1) - A086581 (n + 1)

end

end A271943.P15454247038838064145

/-! ## A271943.P5747479885774471989

`A273904(n+2)+A273902(n+2)`
-/

namespace A271943.P5747479885774471989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273904 (n + 2) + A273902 (n + 2)

end

end A271943.P5747479885774471989

/-! ## A271943.P14378538265062265341

`∑[A294159(n+1)+A273718(n+2)]`
-/

namespace A271943.P14378538265062265341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294159 (n + 1) + A273718 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271943.P14378538265062265341

/-! ## A271943.P4088091732166612229

`A273905(A004273(n+2))-A025242(n+3)`
-/

namespace A271943.P4088091732166612229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273905 (A004273 (n + 2)).toNat - A025242 (n + 3)

end

end A271943.P4088091732166612229

/-! ## A271943.P13209086212354079564

`A108626(n+1)+A108626(n)-A105633(n+1)`
-/

namespace A271943.P13209086212354079564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108626 (n + 1) + (A108626 n - A105633 (n + 1))

end

end A271943.P13209086212354079564

/-! ## A271943.P13445153968169036776

`Δ[A273714(n+2)]`
-/

namespace A271943.P13445153968169036776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273714 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271943.P13445153968169036776

/-! ## A271943.P9572557987233195849

`A273714(n+3)-A273714(n+2)`
-/

namespace A271943.P9572557987233195849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273714 (n + 3) - A273714 (n + 2)

end

end A271943.P9572557987233195849

/-! ## A271943.P1684592994391528350

`Δ[Δ[A271941(n+2)]-A105633(n)]`
-/

namespace A271943.P1684592994391528350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271941 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A105633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271943.P1684592994391528350

/-! ## A271943.P6787666459804980306

`Δ[Δ[A294159(n+1)]]-A047086(n+1)`
-/

namespace A271943.P6787666459804980306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294159 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A047086 (n + 1)

end

end A271943.P6787666459804980306

/-! ## A271943.P14963350038081458400

`Δ[A191794(2*n+1)]-A086581(n+1)`
-/

namespace A271943.P14963350038081458400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191794 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A086581 (n + 1)

end

end A271943.P14963350038081458400

/-! ## A271943.P15040023716625072375

`A047087(n+2)-(A047086(n)+A047085(n+1))`
-/

namespace A271943.P15040023716625072375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047087 (n + 2) - (A047086 n + A047085 (n + 1))

end

end A271943.P15040023716625072375

/-!
# A271944: Expansion of 2*x*(1 + x)/(1 - x - 9*x^2 + x^3).

The programs for A271944, the canonical program `A271944.P3333331185040182214` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271944 has offset 0).

The definition of A271944 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2x+2x^2)/(1-x-9x^2+x^3))` (program `A271944.P3333331185040182214`, by `A271944.P3333331185040182214.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271944.P3333331185040182214

`ogf((2x+2x^2)/(1-x-9x^2+x^3))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271944

/-- `ogf((2x+2x^2)/(1-x-9x^2+x^3))` -/
def P3333331185040182214.Spec : Prop :=
  ∀ n, P3333331185040182214.a n = A271944 n

theorem P3333331185040182214.correct : P3333331185040182214.Spec := by
  intro n
  simp only [A271944]

end A271944

/-! ## A271944.P9328277231382328546

`a(n-1)+9*a(n-2)-a(n-3)` with `a(0)=0, a(1)=2, a(2)=4`
-/

namespace A271944.P9328277231382328546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 4] fun n a =>
  a (n - 1) + 9 * a (n - 2) - a (n - 3)

end

end A271944.P9328277231382328546

namespace A271944

/-- `a(n-1)+9*a(n-2)-a(n-3)` -/
def P9328277231382328546.Spec : Prop :=
  ∀ n, P9328277231382328546.a n = A271944 n

end A271944

/-! ## A271944.P11930556972187811459

`A271945(n)+Δ[A271945(n)/2]`
-/

namespace A271944.P11930556972187811459
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271945 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271945 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A271944.P11930556972187811459

namespace A271944

/-- `A271945(n)+Δ[A271945(n)/2]` -/
def P11930556972187811459.Spec : Prop :=
  ∀ n, P11930556972187811459.a n = (A271944 n : ℚ)

end A271944

/-! ## A271944.P3864195255974808765

`(A271945(n+1)+A271945(n))/2`
-/

namespace A271944.P3864195255974808765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271945 (n + 1) + A271945 n : ℚ) / 2

end

end A271944.P3864195255974808765

namespace A271944

/-- `(A271945(n+1)+A271945(n))/2` -/
def P3864195255974808765.Spec : Prop :=
  ∀ n, P3864195255974808765.a n = (A271944 n : ℚ)

end A271944

/-!
# A271945: Expansion of 4*x^2/(1 - x - 9*x^2 + x^3).

The programs for A271945, the canonical program `A271945.P14586324933283700303` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271945 has offset 0).

The definition of A271945 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(4x^2/(1-x-9x^2+x^3))` (program `A271945.P14586324933283700303`, by `A271945.P14586324933283700303.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271945.P14586324933283700303

`ogf(4x^2/(1-x-9x^2+x^3))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271945

/-- `ogf(4x^2/(1-x-9x^2+x^3))` -/
def P14586324933283700303.Spec : Prop :=
  ∀ n, P14586324933283700303.a n = A271945 n

theorem P14586324933283700303.correct : P14586324933283700303.Spec := by
  intro n
  simp only [A271945]

end A271945

/-! ## A271945.P11448997216527195849

`a(n-1)+9*a(n-2)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=4`
-/

namespace A271945.P11448997216527195849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 4] fun n a =>
  a (n - 1) + 9 * a (n - 2) - a (n - 3)

end

end A271945.P11448997216527195849

namespace A271945

/-- `a(n-1)+9*a(n-2)-a(n-3)` -/
def P11448997216527195849.Spec : Prop :=
  ∀ n, P11448997216527195849.a n = A271945 n

end A271945

/-! ## A271945.P7123060947033792507

`4*A061358(A229042(n+1))`
-/

namespace A271945.P7123060947033792507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A061358 (A229042 (n + 1)).toNat

end

end A271945.P7123060947033792507

namespace A271945

/-- `4*A061358(A229042(n+1))` -/
def P7123060947033792507.Spec : Prop :=
  ∀ n, P7123060947033792507.a n = A271945 n

end A271945

/-!
# A271946: 

The programs for A271946, there is no canonical definition to state claims against.
-/

/-! ## A271946.P3117898267790300913

`∏[(6*n)!]`
-/

namespace A271946.P3117898267790300913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (6 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A271946.P3117898267790300913

/-!
# A271947: 

The programs for A271947, there is no canonical definition to state claims against.
-/

/-! ## A271947.P5295573937753150215

`∏[(7*n)!]`
-/

namespace A271947.P5295573937753150215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (7 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A271947.P5295573937753150215

/-!
# A271949: Somos's sequence {b(4,n)} defined in comment in A078495: a(0)=a(1)=...=a(10)=1; for n>=11, a(n)=(a(n-1)*a(n-10)+a(n-5)*a(n-6))/a(n-11).

The programs for A271949, the canonical program `A271949.P4552367550808230244` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271949 has offset 0).

The definition of A271949 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271949.P4552367550808230244

`(a(n-1)*a(n-10)+a(n-5)*a(n-6))/a(n-11)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=1, a(8)=1, a(9)=1, a(10)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271949

/-- `(a(n-1)*a(n-10)+a(n-5)*a(n-6))/a(n-11)` -/
def P4552367550808230244.Spec : Prop :=
  ∀ n, P4552367550808230244.a n = (A271949 n : ℚ)

end A271949

/-!
# A271955: Somos's sequence {b(8,n)} defined in comment in A078495: a(0)=a(1)=...=a(18)=1; for n>=19, a(n)=(a(n-1)*a(n-18)+a(n-9)*a(n-10))/a(n-19).

The programs for A271955, there is no canonical definition to state claims against.
-/

/-! ## A271955.P7178792691880060596

`∏{e}[A011782(A272038(n+3)), #]`
-/

namespace A271955.P7178792691880060596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A272038 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A271955.P7178792691880060596

/-!
# A271956: Numbers k such that 2*k*3^k - 1 is prime.

The programs for A271956, there is no canonical definition to state claims against.
-/

/-! ## A271956.P9234876141766536607

`A217015(floor((9/4)^n))-n`
-/

namespace A271956.P9234876141766536607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217015 ⌊((9 : ℚ) / 4) ^ n⌋.toNat - (n : ℤ)

end

end A271956.P9234876141766536607

/-! ## A271956.P5749721275457324567

`A244982(A138857(2*n+1))`
-/

namespace A271956.P5749721275457324567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244982 (A138857 (2 * n + 1)).toNat

end

end A271956.P5749721275457324567

/-!
# A271957: G.f. A(x) satisfies: A(x) = A( x^2 + 10*x*A(x)^2 )^(1/2), with A(0)=0, A'(0)=1.

The programs for A271957, there is no canonical definition to state claims against.
-/

/-! ## A271957.P4803970317859221134

`A001651(A215541(n))-A114106(n)`
-/

namespace A271957.P4803970317859221134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A215541 n).toNat - A114106 n

end

end A271957.P4803970317859221134

/-!
# A271958: G.f. A(x) satisfies: A( x*A(x) - 2*x*A(x)^2 ) = x^2.

The programs for A271958, there is no canonical definition to state claims against.
-/

/-! ## A271958.P16998337553556004398

`A054898(A054890(n+1)+16)`
-/

namespace A271958.P16998337553556004398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054898 (A054890 (n + 1) + 16).toNat

end

end A271958.P16998337553556004398

/-! ## A271958.P77667303642862642

`A007614(Δ[Δ[A030266(n+1)]])`
-/

namespace A271958.P77667303642862642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030266 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007614 (f1 (n + 1) - f1 n).toNat

end

end A271958.P77667303642862642

/-!
# A271959: G.f. A(x) satisfies: A(x)^2 = A( x^2 + 2*A(x)^3 ), with A(0)=0, A'(0)=1.

The programs for A271959, there is no canonical definition to state claims against.
-/

/-! ## A271959.P1788238973528649948

`A008621((n+1)*A149041(n))`
-/

namespace A271959.P1788238973528649948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 ((n + 1 : ℤ) * A149041 n).toNat

end

end A271959.P1788238973528649948

/-! ## A271959.P17750474201078566714

`A289207(n)+A034887(A084137(n))`
-/

namespace A271959.P17750474201078566714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n + A034887 (A084137 n).toNat

end

end A271959.P17750474201078566714

/-! ## A271959.P11259132351234955897

`xor(A008621(A151002(n)), A183140(n))`
-/

namespace A271959.P11259132351234955897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008621 (A151002 n).toNat) (A183140 n)

end

end A271959.P11259132351234955897

/-!
# A271960: G.f. A(x) satisfies: A(x)^2 = A( (x + 2*A(x)^2)^2 ).

The programs for A271960, there is no canonical definition to state claims against.
-/

/-! ## A271960.P14326644509826828241

`A228086(A276431((n+1)²)+1)`
-/

namespace A271960.P14326644509826828241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228086 (A276431 ((n + 1) ^ 2) + 1).toNat

end

end A271960.P14326644509826828241

/-!
# A271961: G.f. A(x) satisfies: A( 4*A(x)^2 - 16*A(x)^3 ) = 4*x^2.

The programs for A271961, there is no canonical definition to state claims against.
-/

/-! ## A271961.P15359237503230334417

`∏{p}[A013100(n), dr(#)]`
-/

namespace A271961.P15359237503230334417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013100 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, SequenceMachineLib.digitalRoot (p : ℤ)

end

end A271961.P15359237503230334417

/-!
# A271962: Number of ways to move elements of an nXnXn triangular array to themselves or a neighbor, with no more than 1-1 2-cycles.

The programs for A271962, there is no canonical definition to state claims against.
-/

/-! ## A271962.P866202195894485822

`A271969(∑[n+1])`
-/

namespace A271962.P866202195894485822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271969 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271962.P866202195894485822

/-! ## A271962.P7603984098188700368

`record[A271969(∑[A057979(n)])]`
-/

namespace A271962.P7603984098188700368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271969 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271962.P7603984098188700368

/-! ## A271962.P14318694546983098681

`record[A271969(A038722(n+1))]`
-/

namespace A271962.P14318694546983098681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271969 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271962.P14318694546983098681

/-! ## A271962.P4206982059111329664

`record[A271969(n+1)/A128227(n)]`
-/

namespace A271962.P4206982059111329664
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271969 (n + 1) : ℚ) / (A128227 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271962.P4206982059111329664

/-! ## A271962.P68820737469246488

`record[A271969(n+1)/A174451(n)]`
-/

namespace A271962.P68820737469246488
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271969 (n + 1) : ℚ) / (A174451 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271962.P68820737469246488

/-!
# A271963: Number of ways to move elements of an nXnXn triangular array to themselves or a neighbor, with no more than 2-1 2-cycles.

The programs for A271963, there is no canonical definition to state claims against.
-/

/-! ## A271963.P7198689133728983803

`A271969(∑[n+2])`
-/

namespace A271963.P7198689133728983803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271969 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271963.P7198689133728983803

/-! ## A271963.P12545119836307440403

`record[A271969(A193974(n))]`
-/

namespace A271963.P12545119836307440403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271969 (A193974 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271963.P12545119836307440403

/-! ## A271963.P12024211822520536626

`record[A271969(gcd(n, A340986(n)))]`
-/

namespace A271963.P12024211822520536626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271969 (Int.gcd (n : ℤ) (A340986 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271963.P12024211822520536626

/-! ## A271963.P9999125192836182253

`record[gcd(A124304(n), A271969(n+1))]`
-/

namespace A271963.P9999125192836182253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124304 n) (A271969 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271963.P9999125192836182253

/-! ## A271963.P4699776878272085925

`record[record[A271969(n+1)]*A033999(n)]`
-/

namespace A271963.P4699776878272085925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271969 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271963.P4699776878272085925

/-!
# A271964: Number of ways to move elements of an nXnXn triangular array to themselves or a neighbor, with no more than 3-1 2-cycles.

The programs for A271964, there is no canonical definition to state claims against.
-/

/-! ## A271964.P9387185358563711235

`A271969(∑[n+3]+1)`
-/

namespace A271964.P9387185358563711235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271969 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A271964.P9387185358563711235

/-! ## A271964.P17329242310925101093

`record[A271969(A237519(n+1))]`
-/

namespace A271964.P17329242310925101093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271969 (A237519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271964.P17329242310925101093

/-! ## A271964.P13232369869748072343

`record[gcd(A271969(n+1), A300184(n))]`
-/

namespace A271964.P13232369869748072343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A271969 (n + 1)) (A300184 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271964.P13232369869748072343

/-! ## A271964.P14504299712539709362

`record[A271969(gcd(n, A340986(n+1)))]`
-/

namespace A271964.P14504299712539709362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271969 (Int.gcd (n : ℤ) (A340986 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271964.P14504299712539709362

/-! ## A271964.P1514083713703435401

`record[char[A055998(n)]*A271969(n+1)]`
-/

namespace A271964.P1514083713703435401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A271969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271964.P1514083713703435401

/-!
# A271965: Number of ways to move elements of an nXnXn triangular array to themselves or a neighbor, with no more than 4-1 2-cycles.

The programs for A271965, there is no canonical definition to state claims against.
-/

/-! ## A271965.P4006774995164918321

`A271969(A141214(n+1))`
-/

namespace A271965.P4006774995164918321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271969 (A141214 (n + 1)).toNat

end

end A271965.P4006774995164918321

/-! ## A271965.P9344400122852725849

`A271969(A055998(n+2))`
-/

namespace A271965.P9344400122852725849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271969 (A055998 (n + 2)).toNat

end

end A271965.P9344400122852725849

/-! ## A271965.P17497595786524785310

`A271969(A155212(n)+5)`
-/

namespace A271965.P17497595786524785310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271969 (A155212 n + 5).toNat

end

end A271965.P17497595786524785310

/-! ## A271965.P16916389976275033304

`A271969(A056000(n)+7)`
-/

namespace A271965.P16916389976275033304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271969 (A056000 n + 7).toNat

end

end A271965.P16916389976275033304

/-! ## A271965.P5737193293939551885

`A271969(eq[2, A152157(n)])`
-/

namespace A271965.P5737193293939551885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271965.P5737193293939551885

/-!
# A271966: Number of ways to move elements of an nXnXn triangular array to themselves or a neighbor, with no more than 5-1 2-cycles.

The programs for A271966, there is no canonical definition to state claims against.
-/

/-! ## A271966.P6757868597925805803

`A271969(Δ[A264443(n)])`
-/

namespace A271966.P6757868597925805803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271969 (f1 (n + 1) - f1 n).toNat

end

end A271966.P6757868597925805803

/-! ## A271966.P11694949899590394634

`A271969(A046691(n+3))`
-/

namespace A271966.P11694949899590394634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271969 (A046691 (n + 3)).toNat

end

end A271966.P11694949899590394634

/-! ## A271966.P6277266168511227970

`A271969(A056115(n)+11)`
-/

namespace A271966.P6277266168511227970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271969 (A056115 n + 11).toNat

end

end A271966.P6277266168511227970

/-! ## A271966.P4787973768668459912

`A271969(eq[2, A092921(n)])`
-/

namespace A271966.P4787973768668459912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271966.P4787973768668459912

/-!
# A271967: Number of ways to move elements of an n X n X n triangular array to themselves or a neighbor, with no more than 6-1 2-cycles.

The programs for A271967, there is no canonical definition to state claims against.
-/

/-! ## A271967.P1207100260722551796

`A271969(A052905(n+3))`
-/

namespace A271967.P1207100260722551796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271969 (A052905 (n + 3)).toNat

end

end A271967.P1207100260722551796

/-! ## A271967.P9273004708829421096

`A271969(A302537(n)+15)`
-/

namespace A271967.P9273004708829421096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271969 (A302537 n + 15).toNat

end

end A271967.P9273004708829421096

/-! ## A271967.P11347955796894051076

`A271969(eq[3, A219347(n)])`
-/

namespace A271967.P11347955796894051076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271967.P11347955796894051076

/-!
# A271968: Number of ways to move elements of an nXnXn triangular array to themselves or a neighbor, with no more than 7-1 2-cycles.

The programs for A271968, there is no canonical definition to state claims against.
-/

/-! ## A271968.P18200594210459862860

`A271969(Δ[A026054(n+4)])`
-/

namespace A271968.P18200594210459862860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271969 (f1 (n + 1) - f1 n).toNat

end

end A271968.P18200594210459862860

/-!
# A271969: T(n,k)=Number of ways to move elements of an nXnXn triangular array to themselves or a neighbor, with no more than k-1 2-cycles.

The programs for A271969, there is no canonical definition to state claims against.
-/

/-! ## A271969.P1076695166888885855

`A106790(A018587(n+1)-A030101(n))`
-/

namespace A271969.P1076695166888885855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106790 (A018587 (n + 1) - A030101 n).toNat

end

end A271969.P1076695166888885855

/-! ## A271969.P15111278621381904990

`A002260(C(A079206(n+1), A002262(n)))`
-/

namespace A271969.P15111278621381904990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (Nat.choose (A079206 (n + 1)).toNat (A002262 n).toNat)

end

end A271969.P15111278621381904990

/-! ## A271969.P7642593500858399914

`A087061(C(A079206(n+1), A002262(n)))`
-/

namespace A271969.P7642593500858399914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087061 (Nat.choose (A079206 (n + 1)).toNat (A002262 n).toNat)

end

end A271969.P7642593500858399914

/-! ## A271969.P14358997322359137676

`A195185(A324866(n+1)^A002262(n)+1)-1`
-/

namespace A271969.P14358997322359137676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195185 (SequenceMachineLib.roundAway ((A324866 (n + 1) : ℚ) ^ (A002262 n : ℤ) + 1)).toNat - 1

end

end A271969.P14358997322359137676

/-! ## A271969.P11355078979983803144

`A002260(C(A079206(n+1), A002260(n+1)-1))`
-/

namespace A271969.P11355078979983803144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (Nat.choose (A079206 (n + 1)).toNat (A002260 (n + 1) - 1).toNat)

end

end A271969.P11355078979983803144

/-!
# A271970: Linear recurrence, with both signature and original terms = 1,0,1,0,1.

The programs for A271970, the canonical program `A271970.P11982279443004611041` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271970 has offset 1).

The definition of A271970 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271970.P10122161711495673749

`ogf((1-x+x^2-2x^3+x^4)/(1-x-x^3-x^5))`
-/

namespace A271970.P10122161711495673749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1, -2, 1] [1, -1, 0, -1, 0, -1] n

end

end A271970.P10122161711495673749

namespace A271970

/-- `ogf((1-x+x^2-2x^3+x^4)/(1-x-x^3-x^5))` -/
def P10122161711495673749.Spec : Prop :=
  ∀ n, P10122161711495673749.a n = A271970 (n + 1)

end A271970

/-! ## A271970.P11982279443004611041

`a(n-1)+a(n-3)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271970

/-- `a(n-1)+a(n-3)+a(n-5)` -/
def P11982279443004611041.Spec : Prop :=
  ∀ n, (P11982279443004611041.a n : ℤ) = A271970 (n + 1)

theorem P11982279443004611041.correct : P11982279443004611041.Spec := by
  intro n
  simp only [A271970, Nat.add_sub_cancel]

end A271970

/-! ## A271970.P14268819312319174350

`(A060961(n+12)-A060961(n+2))%A060961(n+8)`
-/

namespace A271970.P14268819312319174350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060961 (n + 12) - A060961 (n + 2)) (A060961 (n + 8))

end

end A271970.P14268819312319174350

namespace A271970

/-- `(A060961(n+12)-A060961(n+2))%A060961(n+8)` -/
def P14268819312319174350.Spec : Prop :=
  ∀ n, P14268819312319174350.a n = A271970 (n + 1)

end A271970

/-!
# A271972: Expansion of (1 + 3*x)/(1 - 4*x + 7*x^2).

The programs for A271972, the canonical program `A271972.P2112508362316259750` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271972 has offset 0).

The definition of A271972 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x)/(1-4x+7x^2))` (program `A271972.P2112508362316259750`, by `A271972.P2112508362316259750.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271972.P2112508362316259750

`ogf((1+3x)/(1-4x+7x^2))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271972

/-- `ogf((1+3x)/(1-4x+7x^2))` -/
def P2112508362316259750.Spec : Prop :=
  ∀ n, P2112508362316259750.a n = A271972 n

theorem P2112508362316259750.correct : P2112508362316259750.Spec := by
  intro n
  simp only [A271972]

end A271972

/-! ## A271972.P12849359449599890731

`4*a(n-1)-7*a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A271972.P12849359449599890731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  4 * a (n - 1) - 7 * a (n - 2)

end

end A271972.P12849359449599890731

namespace A271972

/-- `4*a(n-1)-7*a(n-2)` -/
def P12849359449599890731.Spec : Prop :=
  ∀ n, P12849359449599890731.a n = A271972 n

end A271972

/-!
# A271974: Let p = prime(n): if p mod 4 == 1 then a(n) = (1+p)/2 otherwise if p mod 4 == 3 then a(n) = (1-p)/2.

The programs for A271974, the canonical program `A271974.P704651561551889404` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271974 has offset 2).

The definition of A271974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271974.P704651561551889404

`ceil(A073579(n+2)/2)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A271974

/-- `ceil(A073579(n+2)/2)` -/
def P704651561551889404.Spec : Prop :=
  ∀ n, P704651561551889404.a n = A271974 (n + 2)

theorem P704651561551889404.correct : P704651561551889404.Spec := by
  intro n
  simp only [A271974, Nat.add_sub_cancel]

end A271974

/-! ## A271974.P6373486728918436615

`ceil(Δ[A077039(n+1)/2])`
-/

namespace A271974.P6373486728918436615
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077039 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A271974.P6373486728918436615

namespace A271974

/-- `ceil(Δ[A077039(n+1)/2])` -/
def P6373486728918436615.Spec : Prop :=
  ∀ n, P6373486728918436615.a n = A271974 (n + 2)

end A271974

/-! ## A271974.P9462276725160102831

`A082542(n+2)/(A070750(n+2)+A070750(n+2))`
-/

namespace A271974.P9462276725160102831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082542 (n + 2) : ℚ) / (A070750 (n + 2) + A070750 (n + 2) : ℚ)

end

end A271974.P9462276725160102831

namespace A271974

/-- `A082542(n+2)/(A070750(n+2)+A070750(n+2))` -/
def P9462276725160102831.Spec : Prop :=
  ∀ n, P9462276725160102831.a n = (A271974 (n + 2) : ℚ)

end A271974

/-! ## A271974.P12781711690016096285

`A082542(n+2)/(A077008(n+2)+A077008(n+2))`
-/

namespace A271974.P12781711690016096285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082542 (n + 2) : ℚ) / (A077008 (n + 2) + A077008 (n + 2) : ℚ)

end

end A271974.P12781711690016096285

namespace A271974

/-- `A082542(n+2)/(A077008(n+2)+A077008(n+2))` -/
def P12781711690016096285.Spec : Prop :=
  ∀ n, P12781711690016096285.a n = (A271974 (n + 2) : ℚ)

end A271974

/-! ## A271974.P13858159959913329825

`A082542(n+2)/(A082542(n+2)-A076342(n+2))`
-/

namespace A271974.P13858159959913329825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082542 (n + 2) : ℚ) / (A082542 (n + 2) - A076342 (n + 2) : ℚ)

end

end A271974.P13858159959913329825

namespace A271974

/-- `A082542(n+2)/(A082542(n+2)-A076342(n+2))` -/
def P13858159959913329825.Spec : Prop :=
  ∀ n, P13858159959913329825.a n = (A271974 (n + 2) : ℚ)

end A271974

/-! ## A271974.P18419265521572131784

`A272295(A005097(n+1))`
-/

namespace A271974.P18419265521572131784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272295 (A005097 (n + 1)).toNat

end

end A271974.P18419265521572131784

namespace A271974

/-- `A272295(A005097(n+1))` -/
def P18419265521572131784.Spec : Prop :=
  ∀ n, P18419265521572131784.a n = A271974 (n + 2)

end A271974

/-! ## A271974.P15450138814467560404

`A296063(A006254(n+1))`
-/

namespace A271974.P15450138814467560404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296063 (A006254 (n + 1)).toNat

end

end A271974.P15450138814467560404

namespace A271974

/-- `A296063(A006254(n+1))` -/
def P15450138814467560404.Spec : Prop :=
  ∀ n, P15450138814467560404.a n = A271974 (n + 2)

end A271974

/-! ## A271974.P11029425242167095150

`A272295(A102781(n+2))`
-/

namespace A271974.P11029425242167095150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272295 (A102781 (n + 2)).toNat

end

end A271974.P11029425242167095150

namespace A271974

/-- `A272295(A102781(n+2))` -/
def P11029425242167095150.Spec : Prop :=
  ∀ n, P11029425242167095150.a n = A271974 (n + 2)

end A271974

/-! ## A271974.P11227633594888421063

`A272295(A130290(n+2))`
-/

namespace A271974.P11227633594888421063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272295 (A130290 (n + 2)).toNat

end

end A271974.P11227633594888421063

namespace A271974

/-- `A272295(A130290(n+2))` -/
def P11227633594888421063.Spec : Prop :=
  ∀ n, P11227633594888421063.a n = A271974 (n + 2)

end A271974

/-! ## A271974.P6315442441700603262

`A296063(A111333(n+2))`
-/

namespace A271974.P6315442441700603262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296063 (A111333 (n + 2)).toNat

end

end A271974.P6315442441700603262

namespace A271974

/-- `A296063(A111333(n+2))` -/
def P6315442441700603262.Spec : Prop :=
  ∀ n, P6315442441700603262.a n = A271974 (n + 2)

end A271974

/-! ## A271974.P5843712907898570045

`A296063(A130291(n+2))`
-/

namespace A271974.P5843712907898570045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296063 (A130291 (n + 2)).toNat

end

end A271974.P5843712907898570045

namespace A271974

/-- `A296063(A130291(n+2))` -/
def P5843712907898570045.Spec : Prop :=
  ∀ n, P5843712907898570045.a n = A271974 (n + 2)

end A271974

/-! ## A271974.P7890944004105455203

`A374139(p?[2*n+1])`
-/

namespace A271974.P7890944004105455203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374139 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A271974.P7890944004105455203

namespace A271974

/-- `A374139(p?[2*n+1])` -/
def P7890944004105455203.Spec : Prop :=
  ∀ n, P7890944004105455203.a n = A271974 (n + 2)

end A271974

/-! ## A271974.P151880382510049616

`A050457(p?[2*n+1])/2`
-/

namespace A271974.P151880382510049616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050457 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2

end

end A271974.P151880382510049616

namespace A271974

/-- `A050457(p?[2*n+1])/2` -/
def P151880382510049616.Spec : Prop :=
  ∀ n, P151880382510049616.a n = (A271974 (n + 2) : ℚ)

end A271974

/-! ## A271974.P12814701882355486634

`or(1, A127365(p?[2*n+1]))`
-/

namespace A271974.P12814701882355486634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A127365 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A271974.P12814701882355486634

namespace A271974

/-- `or(1, A127365(p?[2*n+1]))` -/
def P12814701882355486634.Spec : Prop :=
  ∀ n, P12814701882355486634.a n = A271974 (n + 2)

end A271974

/-! ## A271974.P17690090154207667090

`A050449(p?[2*n+1])-ceil(p?[2*n+1]/2)`
-/

namespace A271974.P17690090154207667090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050449 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) - ⌈(f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℚ) / 2⌉

end

end A271974.P17690090154207667090

namespace A271974

/-- `A050449(p?[2*n+1])-ceil(p?[2*n+1]/2)` -/
def P17690090154207667090.Spec : Prop :=
  ∀ n, P17690090154207667090.a n = A271974 (n + 2)

end A271974

/-! ## A271974.P14455747521629698988

`A374139(A065091(n+1))`
-/

namespace A271974.P14455747521629698988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374139 (A065091 (n + 1)).toNat

end

end A271974.P14455747521629698988

namespace A271974

/-- `A374139(A065091(n+1))` -/
def P14455747521629698988.Spec : Prop :=
  ∀ n, P14455747521629698988.a n = A271974 (n + 2)

end A271974

/-! ## A271974.P17621416521721529189

`A166445(A006093(n+2))`
-/

namespace A271974.P17621416521721529189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166445 (A006093 (n + 2)).toNat

end

end A271974.P17621416521721529189

namespace A271974

/-- `A166445(A006093(n+2))` -/
def P17621416521721529189.Spec : Prop :=
  ∀ n, P17621416521721529189.a n = A271974 (n + 2)

end A271974

/-! ## A271974.P8534432128648319785

`A166445(A039915(n+2))`
-/

namespace A271974.P8534432128648319785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166445 (A039915 (n + 2)).toNat

end

end A271974.P8534432128648319785

namespace A271974

/-- `A166445(A039915(n+2))` -/
def P8534432128648319785.Spec : Prop :=
  ∀ n, P8534432128648319785.a n = A271974 (n + 2)

end A271974

/-! ## A271974.P8346057913862651667

`A374139(A000040(n+2))`
-/

namespace A271974.P8346057913862651667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374139 (A000040 (n + 2)).toNat

end

end A271974.P8346057913862651667

namespace A271974

/-- `A374139(A000040(n+2))` -/
def P8346057913862651667.Spec : Prop :=
  ∀ n, P8346057913862651667.a n = A271974 (n + 2)

end A271974

/-! ## A271974.P6872191120086430192

`A374139(A006005(n+2))`
-/

namespace A271974.P6872191120086430192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374139 (A006005 (n + 2)).toNat

end

end A271974.P6872191120086430192

namespace A271974

/-- `A374139(A006005(n+2))` -/
def P6872191120086430192.Spec : Prop :=
  ∀ n, P6872191120086430192.a n = A271974 (n + 2)

end A271974

/-!
# A271977: G_6(n), where G is the Goodstein function defined in A266201.

The programs for A271977, there is no canonical definition to state claims against.
-/

/-! ## A271977.P5820277438064186496

`A296441(eq[11, A152157(n)])`
-/

namespace A271977.P5820277438064186496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271977.P5820277438064186496

/-! ## A271977.P4109381125686015866

`record[A296441(∑[A029916(n)+1])]`
-/

namespace A271977.P4109381125686015866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029916 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271977.P4109381125686015866

/-! ## A271977.P7481631682926073255

`record[A296441(∑[A052414(n+1)+1])]`
-/

namespace A271977.P7481631682926073255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052414 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271977.P7481631682926073255

/-!
# A271978: G_7(n), where G is the Goodstein function defined in A266201.

The programs for A271978, there is no canonical definition to state claims against.
-/

/-! ## A271978.P7332127545684103234

`A296441(eq[15, A152157(n)])`
-/

namespace A271978.P7332127545684103234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271978.P7332127545684103234

/-! ## A271978.P12456969034019233094

`A296441(A000124(n+11)-9)`
-/

namespace A271978.P12456969034019233094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (A000124 (n + 11) - 9).toNat

end

end A271978.P12456969034019233094

/-! ## A271978.P125464012158957387

`A296441(eq[5, A316074(n+1)])`
-/

namespace A271978.P125464012158957387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271978.P125464012158957387

/-!
# A271979: G_8(n), where G is the Goodstein function defined in A266201.

The programs for A271979, there is no canonical definition to state claims against.
-/

/-! ## A271979.P1836945772450344245

`record[A296441(∑[(n+1)/10^val(n+1, 10)])]`
-/

namespace A271979.P1836945772450344245
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271979.P1836945772450344245

/-! ## A271979.P9344090452979532814

`record[A296441(∑[A004185(n)])]`
-/

namespace A271979.P9344090452979532814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271979.P9344090452979532814

/-! ## A271979.P16727464541997240291

`record[A296441(∑[A004151(n+1)])]`
-/

namespace A271979.P16727464541997240291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271979.P16727464541997240291

/-! ## A271979.P12144401609729482555

`record[A296441(∑[A004719(n+1)])]`
-/

namespace A271979.P12144401609729482555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271979.P12144401609729482555

/-!
# A271980: Numbers k such that 3*k^2 + 39*k + 37 is prime.

The programs for A271980, there is no canonical definition to state claims against.
-/

/-! ## A271980.P3171351507860547249

`lt[A070635(n+1), A139369(A378037(2*n+1))]`
-/

namespace A271980.P3171351507860547249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139369 (A378037 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A271980.P3171351507860547249

/-! ## A271980.P5023849167191691616

`lt[A062504(A007359(n)), A103606(n+1)]`
-/

namespace A271980.P5023849167191691616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062504 (A007359 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103606 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A271980.P5023849167191691616

/-! ## A271980.P5491476448395753043

`lt[A242434(n+2), A256113(A293186(2*n+1))]`
-/

namespace A271980.P5491476448395753043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242434 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256113 (A293186 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A271980.P5491476448395753043

/-! ## A271980.P18395687465662549336

`lt[A046810(A029747(n+1)), 2]`
-/

namespace A271980.P18395687465662549336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046810 (A029747 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A271980.P18395687465662549336

/-!
# A271981: Primes p such that p + 40 is also prime.

The programs for A271981, the canonical program `A271981.P11426674894194406647` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271981 has offset 1).

The definition of A271981 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1695 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271981.P11426674894194406647

`p?[p?[2*n+1]-40]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271981

/-- `p?[p?[2*n+1]-40]` -/
def P11426674894194406647.Spec : Prop :=
  ∀ n, P11426674894194406647.a n = A271981 (n + 1)

theorem P11426674894194406647.correct : P11426674894194406647.Spec := by
  intro n
  simp only [A271981, Nat.add_sub_cancel]

end A271981

/-! ## A271981.P3554000097236498769

`p?[A000040(n+1)-40]`
-/

namespace A271981.P3554000097236498769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 40

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271981.P3554000097236498769

namespace A271981

/-- `p?[A000040(n+1)-40]` -/
def P3554000097236498769.Spec : Prop :=
  ∀ n, P3554000097236498769.a n = A271981 (n + 1)

end A271981

/-! ## A271981.P1607595000344315333

`or(1, p?[A008578(n+1)-40])`
-/

namespace A271981.P1607595000344315333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - 40

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A271981.P1607595000344315333

namespace A271981

/-- `or(1, p?[A008578(n+1)-40])` -/
def P1607595000344315333.Spec : Prop :=
  ∀ n, P1607595000344315333.a n = A271981 (n + 1)

end A271981

/-! ## A271981.P2449552812176672673

`A000027(p?[A008578(n+1)-40])`
-/

namespace A271981.P2449552812176672673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - 40

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A271981.P2449552812176672673

namespace A271981

/-- `A000027(p?[A008578(n+1)-40])` -/
def P2449552812176672673.Spec : Prop :=
  ∀ n, P2449552812176672673.a n = A271981 (n + 1)

end A271981

/-! ## A271981.P13528988177654660157

`p?[A008578(n+1)-40]%A024974(n+1)`
-/

namespace A271981.P13528988177654660157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - 40

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A024974 (n + 1))

end

end A271981.P13528988177654660157

namespace A271981

/-- `p?[A008578(n+1)-40]%A024974(n+1)` -/
def P13528988177654660157.Spec : Prop :=
  ∀ n, P13528988177654660157.a n = A271981 (n + 1)

end A271981

/-! ## A271981.P5120497741315347086

`char[A272770(n+1)]+p?[A008578(n+1)-40]`
-/

namespace A271981.P5120497741315347086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - 40

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A271981.P5120497741315347086

namespace A271981

/-- `char[A272770(n+1)]+p?[A008578(n+1)-40]` -/
def P5120497741315347086.Spec : Prop :=
  ∀ n, P5120497741315347086.a n = A271981 (n + 1)

end A271981

/-! ## A271981.P10911033112200385640

`p?[A000430(n+1)-40]`
-/

namespace A271981.P10911033112200385640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1) - 40

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271981.P10911033112200385640

namespace A271981

/-- `p?[A000430(n+1)-40]` -/
def P10911033112200385640.Spec : Prop :=
  ∀ n, P10911033112200385640.a n = A271981 (n + 1)

end A271981

/-! ## A271981.P12510066259338952885

`p?[record[A006530(n+2)]-40]`
-/

namespace A271981.P12510066259338952885
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 40

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271981.P12510066259338952885

namespace A271981

/-- `p?[record[A006530(n+2)]-40]` -/
def P12510066259338952885.Spec : Prop :=
  ∀ n, P12510066259338952885.a n = A271981 (n + 1)

end A271981

/-! ## A271981.P15613800671240160106

`p?[record[A020639(n+2)]-40]`
-/

namespace A271981.P15613800671240160106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 40

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271981.P15613800671240160106

namespace A271981

/-- `p?[record[A020639(n+2)]-40]` -/
def P15613800671240160106.Spec : Prop :=
  ∀ n, P15613800671240160106.a n = A271981 (n + 1)

end A271981

/-! ## A271981.P4333835855889744900

`A005843(p?[A008578(n+1)-40])/2`
-/

namespace A271981.P4333835855889744900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) - 40

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 2

end

end A271981.P4333835855889744900

namespace A271981

/-- `A005843(p?[A008578(n+1)-40])/2` -/
def P4333835855889744900.Spec : Prop :=
  ∀ n, P4333835855889744900.a n = (A271981 (n + 1) : ℚ)

end A271981

/-! ## A271981.P3752506766294397320

`p?[A023482(p?[2*n+1])]`
-/

namespace A271981.P3752506766294397320
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023482 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271981.P3752506766294397320

namespace A271981

/-- `p?[A023482(p?[2*n+1])]` -/
def P3752506766294397320.Spec : Prop :=
  ∀ n, P3752506766294397320.a n = A271981 (n + 1)

theorem P3752506766294397320.correct : P3752506766294397320.Spec := by
  intro n
  simp only [A271981, Nat.add_sub_cancel, A271981.P3752506766294397320.f2, A271981.P3752506766294397320.f1, A271981.P3752506766294397320.a, A271981.P11426674894194406647.f2, A271981.P11426674894194406647.f1, A271981.P11426674894194406647.a, A023482, A023482.P907986368205919176.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A271981

/-! ## A271981.P1538068198153591283

`p?[record[A014963(n+2)]-40]`
-/

namespace A271981.P1538068198153591283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 40

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271981.P1538068198153591283

namespace A271981

/-- `p?[record[A014963(n+2)]-40]` -/
def P1538068198153591283.Spec : Prop :=
  ∀ n, P1538068198153591283.a n = A271981 (n + 1)

end A271981

/-! ## A271981.P363522755132350242

`p?[A023482(A000040(n+1))]`
-/

namespace A271981.P363522755132350242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023482 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271981.P363522755132350242

namespace A271981

/-- `p?[A023482(A000040(n+1))]` -/
def P363522755132350242.Spec : Prop :=
  ∀ n, P363522755132350242.a n = A271981 (n + 1)

end A271981

/-!
# A271982: Primes p such that p + 42 is also prime.

The programs for A271982, the canonical program `A271982.P6221938899778499713` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271982 has offset 1).

The definition of A271982 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3155 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271982.P107768621466418437

`p?[A055670(n+1)-43]`
-/

namespace A271982.P107768621466418437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 1) - 43

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271982.P107768621466418437

namespace A271982

/-- `p?[A055670(n+1)-43]` -/
def P107768621466418437.Spec : Prop :=
  ∀ n, P107768621466418437.a n = A271982 (n + 1)

end A271982

/-! ## A271982.P6221938899778499713

`p?[A156037(n+1)-41]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A271982

/-- `p?[A156037(n+1)-41]` -/
def P6221938899778499713.Spec : Prop :=
  ∀ n, P6221938899778499713.a n = A271982 (n + 1)

theorem P6221938899778499713.correct : P6221938899778499713.Spec := by
  intro n
  simp only [A271982, Nat.add_sub_cancel]

end A271982

/-! ## A271982.P17762036376037540660

`p?[A004139(n+1)-42]`
-/

namespace A271982.P17762036376037540660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1) - 42

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271982.P17762036376037540660

namespace A271982

/-- `p?[A004139(n+1)-42]` -/
def P17762036376037540660.Spec : Prop :=
  ∀ n, P17762036376037540660.a n = A271982 (n + 1)

end A271982

/-! ## A271982.P9281771144752109826

`p?[∑[A001223(n+2)]-39]`
-/

namespace A271982.P9281771144752109826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 39

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271982.P9281771144752109826

namespace A271982

/-- `p?[∑[A001223(n+2)]-39]` -/
def P9281771144752109826.Spec : Prop :=
  ∀ n, P9281771144752109826.a n = A271982 (n + 1)

end A271982

/-! ## A271982.P2302072759947135554

`p?[p?[2*n+1]-42]`
-/

namespace A271982.P2302072759947135554
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 42

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271982.P2302072759947135554

namespace A271982

/-- `p?[p?[2*n+1]-42]` -/
def P2302072759947135554.Spec : Prop :=
  ∀ n, P2302072759947135554.a n = A271982 (n + 1)

end A271982

/-! ## A271982.P12411479291611429108

`p?[A040976(n+1)-40]`
-/

namespace A271982.P12411479291611429108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - 40

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271982.P12411479291611429108

namespace A271982

/-- `p?[A040976(n+1)-40]` -/
def P12411479291611429108.Spec : Prop :=
  ∀ n, P12411479291611429108.a n = A271982 (n + 1)

end A271982

/-! ## A271982.P1878055647179332212

`p?[A000040(n+1)-42]`
-/

namespace A271982.P1878055647179332212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 42

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271982.P1878055647179332212

namespace A271982

/-- `p?[A000040(n+1)-42]` -/
def P1878055647179332212.Spec : Prop :=
  ∀ n, P1878055647179332212.a n = A271982 (n + 1)

end A271982

/-! ## A271982.P7147912093257945131

`p?[record[A006530(n+2)]-42]`
-/

namespace A271982.P7147912093257945131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 42

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271982.P7147912093257945131

namespace A271982

/-- `p?[record[A006530(n+2)]-42]` -/
def P7147912093257945131.Spec : Prop :=
  ∀ n, P7147912093257945131.a n = A271982 (n + 1)

end A271982

/-! ## A271982.P3912726602918518171

`p?[record[A014963(n+2)]-42]`
-/

namespace A271982.P3912726602918518171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 42

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271982.P3912726602918518171

namespace A271982

/-- `p?[record[A014963(n+2)]-42]` -/
def P3912726602918518171.Spec : Prop :=
  ∀ n, P3912726602918518171.a n = A271982 (n + 1)

end A271982

/-! ## A271982.P4922306422114503776

`record[p?[(n+1)%A014963(n+43)]]`
-/

namespace A271982.P4922306422114503776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A014963 (n + 43))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271982.P4922306422114503776

namespace A271982

/-- `record[p?[(n+1)%A014963(n+43)]]` -/
def P4922306422114503776.Spec : Prop :=
  ∀ n, P4922306422114503776.a n = A271982 (n + 1)

end A271982

/-!
# A271983: The smaller of a pair n, m such that phi(n) = phi(m) and there is no other k such that phi(n) = phi(k).

The programs for A271983, there is no canonical definition to state claims against.
-/

/-! ## A271983.P890438801660555863

`A049283(A007366(n+1))`
-/

namespace A271983.P890438801660555863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (A007366 (n + 1)).toNat

end

end A271983.P890438801660555863

/-! ## A271983.P13482193976664466253

`A323169(lcm(2, A007366(n+1)))`
-/

namespace A271983.P13482193976664466253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (Int.lcm 2 (A007366 (n + 1)))

end

end A271983.P13482193976664466253

/-! ## A271983.P967572527478864440

`A061026(ceil(A007366(n+1)/2))`
-/

namespace A271983.P967572527478864440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 ⌈(A007366 (n + 1) : ℚ) / 2⌉.toNat

end

end A271983.P967572527478864440

/-! ## A271983.P13000208051037540064

`A002181(eq[1, A143422(n+1)]+1)`
-/

namespace A271983.P13000208051037540064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002181 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A271983.P13000208051037540064

/-! ## A271983.P14977874101786624225

`A002181(eq[2, A058277(n+1)]+1)`
-/

namespace A271983.P14977874101786624225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002181 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A271983.P14977874101786624225

/-! ## A271983.P12061420990078021489

`A061026(eq[2, A014197(n+1)]+1)`
-/

namespace A271983.P12061420990078021489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A271983.P12061420990078021489

/-! ## A271983.P14707759156817250978

`A323169(lt[n, A323169(n+1)]+1)`
-/

namespace A271983.P14707759156817250978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A271983.P14707759156817250978

/-! ## A271983.P13540992689059789577

`A061026(A007366(n+1)/A000034(n))`
-/

namespace A271983.P13540992689059789577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061026 (SequenceMachineLib.roundAway ((A007366 (n + 1) : ℚ) / (A000034 n : ℚ))).toNat

end

end A271983.P13540992689059789577

/-!
# A271984: Numbers n such that the denominator of the sum of the reciprocals of the exponents in the binary expansion of 2n is not equal to their LCM. That is, A271410(n) != A116417(n).

The programs for A271984, there is no canonical definition to state claims against.
-/

/-! ## A271984.P6602755271263315229

`lt[A116417(n), A271410(n)]`
-/

namespace A271984.P6602755271263315229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116417 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A271984.P6602755271263315229

/-! ## A271984.P4882069456177026225

`lt[abs(A116416(A004442(n))-A116416(n)), A271410(n)]`
-/

namespace A271984.P4882069456177026225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A116416 (A004442 n).toNat - A116416 n|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A271984.P4882069456177026225

/-! ## A271984.P17113351492404077254

`lt[(A116416(A004442(n))-A116416(n))*A033999(n), A271410(n)]`
-/

namespace A271984.P17113351492404077254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A116416 (A004442 n).toNat - A116416 n) * A033999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A271984.P17113351492404077254

/-! ## A271984.P9686521803749077915

`lt[(A116416(A004442(n))-A116416(n))*A062157(n+1), A271410(n)]`
-/

namespace A271984.P9686521803749077915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A116416 (A004442 n).toNat - A116416 n) * A062157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A271984.P9686521803749077915

/-! ## A271984.P17644027111243478103

`lt[(A116416(A004442(n))-A116416(n))*A057077(2*n), A271410(n)]`
-/

namespace A271984.P17644027111243478103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A116416 (A004442 n).toNat - A116416 n) * A057077 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A271984.P17644027111243478103

/-!
# A271985: G_9(n), where G is the Goodstein function defined in A266201.

The programs for A271985, there is no canonical definition to state claims against.
-/

/-! ## A271985.P2672750057883144794

`A296441(eq[15, A332954(n+1)])`
-/

namespace A271985.P2672750057883144794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271985.P2672750057883144794

/-! ## A271985.P7888857713123679660

`record[A296441(∑[A020664(n+1)])]`
-/

namespace A271985.P7888857713123679660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020664 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296441 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271985.P7888857713123679660

/-!
# A271988: g_n(7) where g is the weak Goodstein function defined in A266202.

The programs for A271988, there is no canonical definition to state claims against.
-/

/-! ## A271988.P5655374242238683544

`A000959(2*n+3)-A290174(A000376(2*n+3))`
-/

namespace A271988.P5655374242238683544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (2 * n + 3) - A290174 (A000376 (2 * n + 3)).toNat

end

end A271988.P5655374242238683544

/-!
# A271989: g_n(8) where g is the weak Goodstein function defined in A266202.

The programs for A271989, there is no canonical definition to state claims against.
-/

/-! ## A271989.P10839845869593037804

`ceil(acot(n))*A056193(n)`
-/

namespace A271989.P10839845869593037804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A056193 n

end

end A271989.P10839845869593037804

/-! ## A271989.P10638223142471005828

`A054977(n)*A056193(n)`
-/

namespace A271989.P10638223142471005828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A056193 n

end

end A271989.P10638223142471005828

/-! ## A271989.P8048142852946453220

`A056193(n)+A000038(n)²`
-/

namespace A271989.P8048142852946453220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056193 n + A000038 n ^ 2

end

end A271989.P8048142852946453220

/-! ## A271989.P9072050179640238719

`(A000007(n)+1)*A056193(n)`
-/

namespace A271989.P9072050179640238719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + 1) * A056193 n

end

end A271989.P9072050179640238719

/-! ## A271989.P9790024417386549786

`A056193(n)+C(2, A000203(n+1))²`
-/

namespace A271989.P9790024417386549786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056193 n + (Nat.choose 2 (A000203 (n + 1)).toNat ^ 2 : ℤ)

end

end A271989.P9790024417386549786

/-! ## A271989.P16548863413306469795

`C(2, A000005(n+1))!*A056193(n)`
-/

namespace A271989.P16548863413306469795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.choose 2 (A000005 (n + 1)).toNat) : ℤ) * A056193 n

end

end A271989.P16548863413306469795

/-! ## A271989.P13912815549499027624

`A000010(C(2, n+1)+1)*A056193(n)`
-/

namespace A271989.P13912815549499027624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.choose 2 (n + 1) + 1) * A056193 n

end

end A271989.P13912815549499027624

/-! ## A271989.P8107274437757433359

`A000045(C(2, n+1)+1)*A056193(n)`
-/

namespace A271989.P8107274437757433359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (n + 1) + 1) * A056193 n

end

end A271989.P8107274437757433359

/-! ## A271989.P10241649310360078403

`A000045(C(4, n+3)+1)+A056193(n)-1`
-/

namespace A271989.P10241649310360078403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 4 (n + 3) + 1) + (A056193 n - 1)

end

end A271989.P10241649310360078403

/-! ## A271989.P240768230810275750

`A099135(A056193(n))`
-/

namespace A271989.P240768230810275750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099135 (A056193 n).toNat

end

end A271989.P240768230810275750

/-!
# A271990: g_n(9) where g is the weak Goodstein function defined in A266202.

The programs for A271990, there is no canonical definition to state claims against.
-/

/-! ## A271990.P2027736531078702239

`A342838(A312207(n))-12`
-/

namespace A271990.P2027736531078702239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342838 (A312207 n).toNat - 12

end

end A271990.P2027736531078702239

/-!
# A271991: g_n(10) where g is the weak Goodstein function defined in A266202.

The programs for A271991, there is no canonical definition to state claims against.
-/

/-! ## A271991.P6242206821041850312

`A265034(n)%floor(sqrt(A265034(n)))`
-/

namespace A271991.P6242206821041850312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265034 n) (Int.sqrt (A265034 n))

end

end A271991.P6242206821041850312

/-!
# A271993: Main diagonal of the p-block in the periodic table of elements.

The programs for A271993, there is no canonical definition to state claims against.
-/

/-! ## A271993.P13719844455053223771

`∑[2*(floor(n/2)+2)²]-3+n`
-/

namespace A271993.P13719844455053223771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (⌊(n : ℚ) / 2⌋ + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3 + (n : ℤ)

end

end A271993.P13719844455053223771

/-!
# A271994: The chalcogen sequence (a(n) = A018227(n)-2).

The programs for A271994, the canonical program `A271994.P3232194357757952267` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271994 has offset 2).

The definition of A271994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271994.P15287629087170681468

`ogf((8-6x^2+2x^4)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))`
-/

namespace A271994.P15287629087170681468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 0, -6, 0, 2] [1, -2, -1, 4, -1, -2, 1] n

end

end A271994.P15287629087170681468

namespace A271994

/-- `ogf((8-6x^2+2x^4)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))` -/
def P15287629087170681468.Spec : Prop :=
  ∀ n, P15287629087170681468.a n = A271994 (n + 2)

end A271994

/-! ## A271994.P8172123894179010841

`(2*(n+2)^3+12*(n+2)²+25*(n+2)+(-1)^(n+2)*3*(n+4)-30)/12`
-/

namespace A271994.P8172123894179010841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 2) ^ 3 + 12 * (n + 2) ^ 2 + 25 * (n + 2) : ℤ) + (-1) ^ (n + 2) * 3 * (n + 4 : ℤ) - 30 : ℚ) / 12

end

end A271994.P8172123894179010841

namespace A271994

/-- `(2*(n+2)^3+12*(n+2)²+25*(n+2)+(-1)^(n+2)*3*(n+4)-30)/12` -/
def P8172123894179010841.Spec : Prop :=
  ∀ n, P8172123894179010841.a n = (A271994 (n + 2) : ℚ)

end A271994

/-! ## A271994.P3232194357757952267

`A018227(n+2)-2`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A271994

/-- `A018227(n+2)-2` -/
def P3232194357757952267.Spec : Prop :=
  ∀ n, P3232194357757952267.a n = A271994 (n + 2)

theorem P3232194357757952267.correct : P3232194357757952267.Spec := by
  intro n
  simp only [A271994, Nat.add_sub_cancel]

end A271994

/-! ## A271994.P14459257223926684368

`∑[(gcd(2, n)+n+2)²]/2`
-/

namespace A271994.P14459257223926684368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n + (n + 2)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A271994.P14459257223926684368

namespace A271994

/-- `∑[(gcd(2, n)+n+2)²]/2` -/
def P14459257223926684368.Spec : Prop :=
  ∀ n, P14459257223926684368.a n = (A271994 (n + 2) : ℚ)

end A271994

/-! ## A271994.P2429179531169565752

`∑[∑[2-a(n-1)]²]/2` with `a(0)=4, a(1)=0`
-/

namespace A271994.P2429179531169565752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 0] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A271994.P2429179531169565752

namespace A271994

/-- `∑[∑[2-a(n-1)]²]/2` -/
def P2429179531169565752.Spec : Prop :=
  ∀ n, P2429179531169565752.a n = (A271994 (n + 2) : ℚ)

end A271994

/-! ## A271994.P1658815283040269134

`2*∑[∑[a(n-2)²]²]` with `a(0)=2, a(1)=0, a(2)=1`
-/

namespace A271994.P1658815283040269134
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 1] fun n f2 =>
  f2 (n - 2) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271994.P1658815283040269134

namespace A271994

/-- `2*∑[∑[a(n-2)²]²]` -/
def P1658815283040269134.Spec : Prop :=
  ∀ n, (P1658815283040269134.a n : ℤ) = A271994 (n + 2)

end A271994

/-! ## A271994.P17940670690070355689

`∑[(and(1, n+1)+n+3)²]/2`
-/

namespace A271994.P17940670690070355689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (n + 1) + (n + 3)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A271994.P17940670690070355689

namespace A271994

/-- `∑[(and(1, n+1)+n+3)²]/2` -/
def P17940670690070355689.Spec : Prop :=
  ∀ n, P17940670690070355689.a n = (A271994 (n + 2) : ℚ)

end A271994

/-! ## A271994.P14005515328485499552

`∑[A093907(n+2)]`
-/

namespace A271994.P14005515328485499552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093907 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271994.P14005515328485499552

namespace A271994

/-- `∑[A093907(n+2)]` -/
def P14005515328485499552.Spec : Prop :=
  ∀ n, P14005515328485499552.a n = A271994 (n + 2)

end A271994

/-! ## A271994.P5497988054164219662

`A271995(n+2)+1`
-/

namespace A271994.P5497988054164219662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271995 (n + 2) + 1

end

end A271994.P5497988054164219662

namespace A271994

/-- `A271995(n+2)+1` -/
def P5497988054164219662.Spec : Prop :=
  ∀ n, P5497988054164219662.a n = A271994 (n + 2)

theorem P5497988054164219662.correct : P5497988054164219662.Spec := by
  intro n
  simp only [A271994, Nat.add_sub_cancel, A271994.P5497988054164219662.a, A271994.P3232194357757952267.a, A018227, A018227.P18393074303411481755.a, A271995, A271995.P7678876369597040305.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A271994

/-! ## A271994.P735240423171562548

`A271996(n+2)+2`
-/

namespace A271994.P735240423171562548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271996 (n + 2) + 2

end

end A271994.P735240423171562548

namespace A271994

/-- `A271996(n+2)+2` -/
def P735240423171562548.Spec : Prop :=
  ∀ n, P735240423171562548.a n = A271994 (n + 2)

theorem P735240423171562548.correct : P735240423171562548.Spec := by
  intro n
  simp only [A271994, Nat.add_sub_cancel, A271994.P735240423171562548.a, A271994.P3232194357757952267.a, A018227, A018227.P18393074303411481755.a, A271996, A271996.P11609739420559161612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A271994

/-! ## A271994.P6586183314416672782

`A271997(n+2)+3`
-/

namespace A271994.P6586183314416672782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271997 (n + 2) + 3

end

end A271994.P6586183314416672782

namespace A271994

/-- `A271997(n+2)+3` -/
def P6586183314416672782.Spec : Prop :=
  ∀ n, P6586183314416672782.a n = A271994 (n + 2)

theorem P6586183314416672782.correct : P6586183314416672782.Spec := by
  intro n
  simp only [A271994, Nat.add_sub_cancel, A271994.P6586183314416672782.a, A271994.P3232194357757952267.a, A018227, A018227.P18393074303411481755.a, A271997, A271997.P120219686765223320.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A271994

/-! ## A271994.P9518659661181428125

`A272000(n+1)+5`
-/

namespace A271994.P9518659661181428125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272000 (n + 1) + 5

end

end A271994.P9518659661181428125

namespace A271994

/-- `A272000(n+1)+5` -/
def P9518659661181428125.Spec : Prop :=
  ∀ n, P9518659661181428125.a n = A271994 (n + 2)

end A271994

/-! ## A271994.P1374935808891450005

`∑[2*A080513(n+1)²]`
-/

namespace A271994.P1374935808891450005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080513 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271994.P1374935808891450005

namespace A271994

/-- `∑[2*A080513(n+1)²]` -/
def P1374935808891450005.Spec : Prop :=
  ∀ n, P1374935808891450005.a n = A271994 (n + 2)

end A271994

/-! ## A271994.P6765538138874469878

`A168388(n+2)+A227786(n+2)-2`
-/

namespace A271994.P6765538138874469878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168388 (n + 2) + (A227786 (n + 2) - 2)

end

end A271994.P6765538138874469878

namespace A271994

/-- `A168388(n+2)+A227786(n+2)-2` -/
def P6765538138874469878.Spec : Prop :=
  ∀ n, P6765538138874469878.a n = A271994 (n + 2)

end A271994

/-! ## A271994.P15864189241997782168

`∑[A116471(n+3)]`
-/

namespace A271994.P15864189241997782168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116471 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271994.P15864189241997782168

namespace A271994

/-- `∑[A116471(n+3)]` -/
def P15864189241997782168.Spec : Prop :=
  ∀ n, P15864189241997782168.a n = A271994 (n + 2)

end A271994

/-! ## A271994.P8568607545449457697

`A219527(n+3)-3`
-/

namespace A271994.P8568607545449457697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219527 (n + 3) - 3

end

end A271994.P8568607545449457697

namespace A271994

/-- `A219527(n+3)-3` -/
def P8568607545449457697.Spec : Prop :=
  ∀ n, P8568607545449457697.a n = A271994 (n + 2)

end A271994

/-! ## A271994.P16990517438649745106

`A168380(n+3)-4`
-/

namespace A271994.P16990517438649745106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168380 (n + 3) - 4

end

end A271994.P16990517438649745106

namespace A271994

/-- `A168380(n+3)-4` -/
def P16990517438649745106.Spec : Prop :=
  ∀ n, P16990517438649745106.a n = A271994 (n + 2)

end A271994

/-! ## A271994.P9538117695142135263

`2*(A005993(n+2)-2)`
-/

namespace A271994.P9538117695142135263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005993 (n + 2) - 2)

end

end A271994.P9538117695142135263

namespace A271994

/-- `2*(A005993(n+2)-2)` -/
def P9538117695142135263.Spec : Prop :=
  ∀ n, P9538117695142135263.a n = A271994 (n + 2)

end A271994

/-! ## A271994.P15870926933977362566

`2*(A109622(n+2)+n)`
-/

namespace A271994.P15870926933977362566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A109622 (n + 2) + (n : ℤ))

end

end A271994.P15870926933977362566

namespace A271994

/-- `2*(A109622(n+2)+n)` -/
def P15870926933977362566.Spec : Prop :=
  ∀ n, P15870926933977362566.a n = A271994 (n + 2)

end A271994

/-! ## A271994.P11587493327573632916

`2*∑[(A002265(A005408(n))+2)²]`
-/

namespace A271994.P11587493327573632916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002265 (A005408 n).toNat + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271994.P11587493327573632916

namespace A271994

/-- `2*∑[(A002265(A005408(n))+2)²]` -/
def P11587493327573632916.Spec : Prop :=
  ∀ n, P11587493327573632916.a n = A271994 (n + 2)

end A271994

/-!
# A271995: The Pnictogen sequence: a(n) = A018227(n)-3.

The programs for A271995, the canonical program `A271995.P7678876369597040305` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271995 has offset 2).

The definition of A271995 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271995.P9645138523073130512

`ogf((7+x-4x^2-2x^3+x^4+x^5)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))`
-/

namespace A271995.P9645138523073130512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 1, -4, -2, 1, 1] [1, -2, -1, 4, -1, -2, 1] n

end

end A271995.P9645138523073130512

namespace A271995

/-- `ogf((7+x-4x^2-2x^3+x^4+x^5)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))` -/
def P9645138523073130512.Spec : Prop :=
  ∀ n, P9645138523073130512.a n = A271995 (n + 2)

end A271995

/-! ## A271995.P7678876369597040305

`A018227(n+2)-3`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A271995

/-- `A018227(n+2)-3` -/
def P7678876369597040305.Spec : Prop :=
  ∀ n, P7678876369597040305.a n = A271995 (n + 2)

theorem P7678876369597040305.correct : P7678876369597040305.Spec := by
  intro n
  simp only [A271995, Nat.add_sub_cancel]

end A271995

/-! ## A271995.P2179621099004284024

`∑[2*(floor(n/2)+2)²]-1`
-/

namespace A271995.P2179621099004284024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (⌊(n : ℚ) / 2⌋ + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A271995.P2179621099004284024

namespace A271995

/-- `∑[2*(floor(n/2)+2)²]-1` -/
def P2179621099004284024.Spec : Prop :=
  ∀ n, P2179621099004284024.a n = A271995 (n + 2)

end A271995

/-! ## A271995.P9552620298672035465

`or(1, A271996(n+2))`
-/

namespace A271995.P9552620298672035465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A271996 (n + 2))

end

end A271995.P9552620298672035465

namespace A271995

/-- `or(1, A271996(n+2))` -/
def P9552620298672035465.Spec : Prop :=
  ∀ n, P9552620298672035465.a n = A271995 (n + 2)

end A271995

/-! ## A271995.P12831243033652650854

`abs(1-A271994(n+2))`
-/

namespace A271995.P12831243033652650854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A271994 (n + 2)|

end

end A271995.P12831243033652650854

namespace A271995

/-- `abs(1-A271994(n+2))` -/
def P12831243033652650854.Spec : Prop :=
  ∀ n, P12831243033652650854.a n = A271995 (n + 2)

end A271995

/-! ## A271995.P8409901502957680730

`or(1, A271997(n+2)+1)`
-/

namespace A271995.P8409901502957680730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A271997 (n + 2) + 1)

end

end A271995.P8409901502957680730

namespace A271995

/-- `or(1, A271997(n+2)+1)` -/
def P8409901502957680730.Spec : Prop :=
  ∀ n, P8409901502957680730.a n = A271995 (n + 2)

end A271995

/-! ## A271995.P8692437454445023855

`(A271996(n+2)+1)*A010051(A006093(n+1)+1)`
-/

namespace A271995.P8692437454445023855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A271996 (n + 2) + 1) * A010051 (A006093 (n + 1) + 1).toNat

end

end A271995.P8692437454445023855

namespace A271995

/-- `(A271996(n+2)+1)*A010051(A006093(n+1)+1)` -/
def P8692437454445023855.Spec : Prop :=
  ∀ n, P8692437454445023855.a n = A271995 (n + 2)

end A271995

/-! ## A271995.P3807257641082758294

`xor(A063919(A000040(n+1)), A271996(n+2))`
-/

namespace A271995.P3807257641082758294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063919 (A000040 (n + 1)).toNat) (A271996 (n + 2))

end

end A271995.P3807257641082758294

namespace A271995

/-- `xor(A063919(A000040(n+1)), A271996(n+2))` -/
def P3807257641082758294.Spec : Prop :=
  ∀ n, P3807257641082758294.a n = A271995 (n + 2)

end A271995

/-! ## A271995.P6285390457356376988

`A000027(A271994(n+2)-1)`
-/

namespace A271995.P6285390457356376988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A271994 (n + 2) - 1).toNat

end

end A271995.P6285390457356376988

namespace A271995

/-- `A000027(A271994(n+2)-1)` -/
def P6285390457356376988.Spec : Prop :=
  ∀ n, P6285390457356376988.a n = A271995 (n + 2)

end A271995

/-!
# A271996: The crystallogen sequence (a(n) = A018227(n)-4).

The programs for A271996, the canonical program `A271996.P11609739420559161612` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271996 has offset 2).

The definition of A271996 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271996.P8469972355949748476

`ogf((6+2x-2x^2-4x^3+2x^5)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))`
-/

namespace A271996.P8469972355949748476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 2, -2, -4, 0, 2] [1, -2, -1, 4, -1, -2, 1] n

end

end A271996.P8469972355949748476

namespace A271996

/-- `ogf((6+2x-2x^2-4x^3+2x^5)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))` -/
def P8469972355949748476.Spec : Prop :=
  ∀ n, P8469972355949748476.a n = A271996 (n + 2)

end A271996

/-! ## A271996.P11609739420559161612

`A018227(n+2)-4`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A271996

/-- `A018227(n+2)-4` -/
def P11609739420559161612.Spec : Prop :=
  ∀ n, P11609739420559161612.a n = A271996 (n + 2)

theorem P11609739420559161612.correct : P11609739420559161612.Spec := by
  intro n
  simp only [A271996, Nat.add_sub_cancel]

end A271996

/-! ## A271996.P18417935350800114961

`∑[2*(floor(n/2)+2)²]-2`
-/

namespace A271996.P18417935350800114961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (⌊(n : ℚ) / 2⌋ + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A271996.P18417935350800114961

namespace A271996

/-- `∑[2*(floor(n/2)+2)²]-2` -/
def P18417935350800114961.Spec : Prop :=
  ∀ n, P18417935350800114961.a n = A271996 (n + 2)

end A271996

/-! ## A271996.P9750557235103509923

`xor(1, A271995(n+2))`
-/

namespace A271996.P9750557235103509923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A271995 (n + 2))

end

end A271996.P9750557235103509923

namespace A271996

/-- `xor(1, A271995(n+2))` -/
def P9750557235103509923.Spec : Prop :=
  ∀ n, P9750557235103509923.a n = A271996 (n + 2)

end A271996

/-! ## A271996.P9976974589181470145

`abs(2-A271994(n+2))`
-/

namespace A271996.P9976974589181470145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A271994 (n + 2)|

end

end A271996.P9976974589181470145

namespace A271996

/-- `abs(2-A271994(n+2))` -/
def P9976974589181470145.Spec : Prop :=
  ∀ n, P9976974589181470145.a n = A271996 (n + 2)

end A271996

/-! ## A271996.P358213826547440393

`2*(A005993(n+2)-3)`
-/

namespace A271996.P358213826547440393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005993 (n + 2) - 3)

end

end A271996.P358213826547440393

namespace A271996

/-- `2*(A005993(n+2)-3)` -/
def P358213826547440393.Spec : Prop :=
  ∀ n, P358213826547440393.a n = A271996 (n + 2)

end A271996

/-! ## A271996.P6191719788014791091

`-xor(1, 7-A168380(n+3))`
-/

namespace A271996.P6191719788014791091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (7 - A168380 (n + 3))

end

end A271996.P6191719788014791091

namespace A271996

/-- `-xor(1, 7-A168380(n+3))` -/
def P6191719788014791091.Spec : Prop :=
  ∀ n, P6191719788014791091.a n = A271996 (n + 2)

end A271996

/-! ## A271996.P6806691797656987139

`2*(A109622(n+2)+n-1)`
-/

namespace A271996.P6806691797656987139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A109622 (n + 2) + ((n : ℤ) - 1))

end

end A271996.P6806691797656987139

namespace A271996

/-- `2*(A109622(n+2)+n-1)` -/
def P6806691797656987139.Spec : Prop :=
  ∀ n, P6806691797656987139.a n = A271996 (n + 2)

end A271996

/-!
# A271997: The icosagen sequence : a(n) = A018227(n)-5, for n >= 2.

The programs for A271997, the canonical program `A271997.P120219686765223320` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271997 has offset 2).

The definition of A271997 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271997.P7598675093041209179

`ogf((5+3x-6x^3-x^4+3x^5)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))`
-/

namespace A271997.P7598675093041209179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 3, 0, -6, -1, 3] [1, -2, -1, 4, -1, -2, 1] n

end

end A271997.P7598675093041209179

namespace A271997

/-- `ogf((5+3x-6x^3-x^4+3x^5)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))` -/
def P7598675093041209179.Spec : Prop :=
  ∀ n, P7598675093041209179.a n = A271997 (n + 2)

end A271997

/-! ## A271997.P4237280381040748167

`(n+2)*((n+5)²+2)/6+(n+4)*(1+(-1)^(n+2))/4-6`
-/

namespace A271997.P4237280381040748167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) * ((n + 5) ^ 2 + 2) : ℚ) / 6 + ((n + 4 : ℤ) * (1 + (-1) ^ (n + 2)) : ℚ) / 4 - 6

end

end A271997.P4237280381040748167

namespace A271997

/-- `(n+2)*((n+5)²+2)/6+(n+4)*(1+(-1)^(n+2))/4-6` -/
def P4237280381040748167.Spec : Prop :=
  ∀ n, P4237280381040748167.a n = (A271997 (n + 2) : ℚ)

end A271997

/-! ## A271997.P120219686765223320

`A018227(n+2)-5`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A271997

/-- `A018227(n+2)-5` -/
def P120219686765223320.Spec : Prop :=
  ∀ n, P120219686765223320.a n = A271997 (n + 2)

theorem P120219686765223320.correct : P120219686765223320.Spec := by
  intro n
  simp only [A271997, Nat.add_sub_cancel]

end A271997

/-! ## A271997.P12540725959657521474

`abs(1-A271996(n+2))`
-/

namespace A271997.P12540725959657521474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A271996 (n + 2)|

end

end A271997.P12540725959657521474

namespace A271997

/-- `abs(1-A271996(n+2))` -/
def P12540725959657521474.Spec : Prop :=
  ∀ n, P12540725959657521474.a n = A271997 (n + 2)

end A271997

/-! ## A271997.P4878432077642993082

`abs(2-A271995(n+2))`
-/

namespace A271997.P4878432077642993082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A271995 (n + 2)|

end

end A271997.P4878432077642993082

namespace A271997

/-- `abs(2-A271995(n+2))` -/
def P4878432077642993082.Spec : Prop :=
  ∀ n, P4878432077642993082.a n = A271997 (n + 2)

end A271997

/-! ## A271997.P16831100096140543072

`abs(3-A271994(n+2))`
-/

namespace A271997.P16831100096140543072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A271994 (n + 2)|

end

end A271997.P16831100096140543072

namespace A271997

/-- `abs(3-A271994(n+2))` -/
def P16831100096140543072.Spec : Prop :=
  ∀ n, P16831100096140543072.a n = A271997 (n + 2)

end A271997

/-! ## A271997.P15224327902099289571

`or(1, A272000(n+1)+2)`
-/

namespace A271997.P15224327902099289571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A272000 (n + 1) + 2)

end

end A271997.P15224327902099289571

namespace A271997

/-- `or(1, A272000(n+1)+2)` -/
def P15224327902099289571.Spec : Prop :=
  ∀ n, P15224327902099289571.a n = A271997 (n + 2)

end A271997

/-! ## A271997.P16037613850139475016

`(A271996(n+2)+A271996(n+2))%A271995(n+2)`
-/

namespace A271997.P16037613850139475016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271996 (n + 2) + A271996 (n + 2)) (A271995 (n + 2))

end

end A271997.P16037613850139475016

namespace A271997

/-- `(A271996(n+2)+A271996(n+2))%A271995(n+2)` -/
def P16037613850139475016.Spec : Prop :=
  ∀ n, P16037613850139475016.a n = A271997 (n + 2)

end A271997

/-! ## A271997.P4217362700911276078

`abs(7-A168380(n+3))`
-/

namespace A271997.P4217362700911276078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |7 - A168380 (n + 3)|

end

end A271997.P4217362700911276078

namespace A271997

/-- `abs(7-A168380(n+3))` -/
def P4217362700911276078.Spec : Prop :=
  ∀ n, P4217362700911276078.a n = A271997 (n + 2)

end A271997

/-! ## A271997.P3687970387820041686

`∑[A000982(A040001(n)+2+n)]`
-/

namespace A271997.P3687970387820041686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A040001 n + 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271997.P3687970387820041686

namespace A271997

/-- `∑[A000982(A040001(n)+2+n)]` -/
def P3687970387820041686.Spec : Prop :=
  ∀ n, P3687970387820041686.a n = A271997 (n + 2)

end A271997

/-!
# A271998: Volatile sequence: a(n) = A018227(n)-6.

The programs for A271998, the canonical program `A271998.P6760570056631155718` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271998 has offset 3).

The definition of A271998 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271998.P6760570056631155718

`ogf((30-12x-46x^2+24x^3+20x^4-12x^5)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271998

/-- `ogf((30-12x-46x^2+24x^3+20x^4-12x^5)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))` -/
def P6760570056631155718.Spec : Prop :=
  ∀ n, P6760570056631155718.a n = A271998 (n + 3)

theorem P6760570056631155718.correct : P6760570056631155718.Spec := by
  intro n
  simp only [A271998, Nat.add_sub_cancel]

end A271998

/-! ## A271998.P15304253792710955511

`A272000(n+3)+1`
-/

namespace A271998.P15304253792710955511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272000 (n + 3) + 1

end

end A271998.P15304253792710955511

namespace A271998

/-- `A272000(n+3)+1` -/
def P15304253792710955511.Spec : Prop :=
  ∀ n, P15304253792710955511.a n = A271998 (n + 3)

end A271998

/-! ## A271998.P5278477966171253614

`A271997(n+4)-1`
-/

namespace A271998.P5278477966171253614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271997 (n + 4) - 1

end

end A271998.P5278477966171253614

namespace A271998

/-- `A271997(n+4)-1` -/
def P5278477966171253614.Spec : Prop :=
  ∀ n, P5278477966171253614.a n = A271998 (n + 3)

end A271998

/-! ## A271998.P7128786359528933204

`A271996(n+4)-2`
-/

namespace A271998.P7128786359528933204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271996 (n + 4) - 2

end

end A271998.P7128786359528933204

namespace A271998

/-- `A271996(n+4)-2` -/
def P7128786359528933204.Spec : Prop :=
  ∀ n, P7128786359528933204.a n = A271998 (n + 3)

end A271998

/-! ## A271998.P10698444017747412932

`A271995(n+4)-3`
-/

namespace A271998.P10698444017747412932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271995 (n + 4) - 3

end

end A271998.P10698444017747412932

namespace A271998

/-- `A271995(n+4)-3` -/
def P10698444017747412932.Spec : Prop :=
  ∀ n, P10698444017747412932.a n = A271998 (n + 3)

end A271998

/-! ## A271998.P691009533783795389

`A271994(n+4)-4`
-/

namespace A271998.P691009533783795389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271994 (n + 4) - 4

end

end A271998.P691009533783795389

namespace A271998

/-- `A271994(n+4)-4` -/
def P691009533783795389.Spec : Prop :=
  ∀ n, P691009533783795389.a n = A271998 (n + 3)

end A271998

/-! ## A271998.P5184902890265833683

`2*(A109622(n+4)+n)`
-/

namespace A271998.P5184902890265833683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A109622 (n + 4) + (n : ℤ))

end

end A271998.P5184902890265833683

namespace A271998

/-- `2*(A109622(n+4)+n)` -/
def P5184902890265833683.Spec : Prop :=
  ∀ n, P5184902890265833683.a n = A271998 (n + 3)

end A271998

/-!
# A271999: Halogen sequence: a(n) = A018227(n)-1.

The programs for A271999, the canonical program `A271999.P7918698607058337976` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271999 has offset 1).

The definition of A271999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271999.P7918698607058337976

`ogf((1+9x-6x^2-6x^3+9x^4-x^5-4x^6+2x^7)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271999

/-- `ogf((1+9x-6x^2-6x^3+9x^4-x^5-4x^6+2x^7)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))` -/
def P7918698607058337976.Spec : Prop :=
  ∀ n, P7918698607058337976.a n = A271999 (n + 1)

theorem P7918698607058337976.correct : P7918698607058337976.Spec := by
  intro n
  simp only [A271999, Nat.add_sub_cancel]

end A271999

/-! ## A271999.P8734676929498510424

`A018227(n+1)-A158388(A008611(n))`
-/

namespace A271999.P8734676929498510424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018227 (n + 1) - A158388 (A008611 n).toNat

end

end A271999.P8734676929498510424

namespace A271999

/-- `A018227(n+1)-A158388(A008611(n))` -/
def P8734676929498510424.Spec : Prop :=
  ∀ n, P8734676929498510424.a n = A271999 (n + 1)

end A271999

/-! ## A271999.P1790025637954558456

`A018227(n+1)-A158388(A028242(n))`
-/

namespace A271999.P1790025637954558456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018227 (n + 1) - A158388 (A028242 n).toNat

end

end A271999.P1790025637954558456

namespace A271999

/-- `A018227(n+1)-A158388(A028242(n))` -/
def P1790025637954558456.Spec : Prop :=
  ∀ n, P1790025637954558456.a n = A271999 (n + 1)

end A271999

/-! ## A271999.P14739383500978267392

`A018227(n+1)-A158388(A103221(n))`
-/

namespace A271999.P14739383500978267392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018227 (n + 1) - A158388 (A103221 n).toNat

end

end A271999.P14739383500978267392

namespace A271999

/-- `A018227(n+1)-A158388(A103221(n))` -/
def P14739383500978267392.Spec : Prop :=
  ∀ n, P14739383500978267392.a n = A271999 (n + 1)

end A271999

/-! ## A271999.P2726169542686280354

`∑[A093907(n+1)]-A158388(A008611(n))`
-/

namespace A271999.P2726169542686280354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A158388 (A008611 n).toNat

end

end A271999.P2726169542686280354

namespace A271999

/-- `∑[A093907(n+1)]-A158388(A008611(n))` -/
def P2726169542686280354.Spec : Prop :=
  ∀ n, P2726169542686280354.a n = A271999 (n + 1)

end A271999

/-! ## A271999.P7167033125042987843

`A018227(n+1)-A033999(A159461(n+1))`
-/

namespace A271999.P7167033125042987843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018227 (n + 1) - A033999 (A159461 (n + 1)).toNat

end

end A271999.P7167033125042987843

namespace A271999

/-- `A018227(n+1)-A033999(A159461(n+1))` -/
def P7167033125042987843.Spec : Prop :=
  ∀ n, P7167033125042987843.a n = A271999 (n + 1)

end A271999

/-! ## A271999.P344579976402935041

`A018227(n+1)-A158388(n-A158388(n))`
-/

namespace A271999.P344579976402935041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018227 (n + 1) - A158388 ((n : ℤ) - A158388 n).toNat

end

end A271999.P344579976402935041

namespace A271999

/-- `A018227(n+1)-A158388(n-A158388(n))` -/
def P344579976402935041.Spec : Prop :=
  ∀ n, P344579976402935041.a n = A271999 (n + 1)

end A271999

/-! ## A271999.P8643712343661301496

`A033999(A159461(n+1)+1)+A018227(n+1)`
-/

namespace A271999.P8643712343661301496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A159461 (n + 1) + 1).toNat + A018227 (n + 1)

end

end A271999.P8643712343661301496

namespace A271999

/-- `A033999(A159461(n+1)+1)+A018227(n+1)` -/
def P8643712343661301496.Spec : Prop :=
  ∀ n, P8643712343661301496.a n = A271999 (n + 1)

end A271999

/-! ## A271999.P16194944257567829240

`A018227(n+1)-A321632(A172305(n))`
-/

namespace A271999.P16194944257567829240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018227 (n + 1) - A321632 (A172305 n).toNat

end

end A271999.P16194944257567829240

namespace A271999

/-- `A018227(n+1)-A321632(A172305(n))` -/
def P16194944257567829240.Spec : Prop :=
  ∀ n, P16194944257567829240.a n = A271999 (n + 1)

end A271999

/-! ## A271999.P2857981365313720154

`A018227(n+1)-A158388((n-1)²)`
-/

namespace A271999.P2857981365313720154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018227 (n + 1) - A158388 (((n : ℤ) - 1) ^ 2).toNat

end

end A271999.P2857981365313720154

namespace A271999

/-- `A018227(n+1)-A158388((n-1)²)` -/
def P2857981365313720154.Spec : Prop :=
  ∀ n, P2857981365313720154.a n = A271999 (n + 1)

end A271999

