import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

/-!
# A355200: Numbers k that can be written as the sum of 3 divisors of k (not necessarily distinct).

The programs for A355200, the canonical program `A355200.P14490617393673779531` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355200 has offset 1).

The definition of A355200 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A355200.P14490617393673779531

`2*(n+1)+(sin(π*(n+1)/3)+sin(2*π*(n+1)/3))/sqrt(3)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A355200

/-- `2*(n+1)+(sin(π*(n+1)/3)+sin(2*π*(n+1)/3))/sqrt(3)` -/
def P14490617393673779531.Spec : Prop :=
  ∀ n, P14490617393673779531.a n = (A355200 (n + 1) : ℝ)

end A355200

/-! ## A355200.P4917356276011407979

`A005843(n+1)+A134667(n+1)`
-/

namespace A355200.P4917356276011407979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + A134667 (n + 1)

end

end A355200.P4917356276011407979

namespace A355200

/-- `A005843(n+1)+A134667(n+1)` -/
def P4917356276011407979.Spec : Prop :=
  ∀ n, P4917356276011407979.a n = A355200 (n + 1)

end A355200

/-! ## A355200.P17648144230961634734

`lt[lcm(12, n), 5*n]`
-/

namespace A355200.P17648144230961634734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 12 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355200.P17648144230961634734

namespace A355200

/-- `lt[lcm(12, n), 5*n]` -/
def P17648144230961634734.Spec : Prop :=
  ∀ n, (P17648144230961634734.a n : ℤ) = A355200 (n + 1)

end A355200

/-! ## A355200.P18364786388324404365

`lt[2, gcd(n, n²%12)]`
-/

namespace A355200.P18364786388324404365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n ^ 2 % 12)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355200.P18364786388324404365

namespace A355200

/-- `lt[2, gcd(n, n²%12)]` -/
def P18364786388324404365.Spec : Prop :=
  ∀ n, (P18364786388324404365.a n : ℤ) = A355200 (n + 1)

end A355200

/-! ## A355200.P2220414499203755794

`∑[lcm(2, n+2)%3+1]`
-/

namespace A355200.P2220414499203755794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n + 2) % 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355200.P2220414499203755794

namespace A355200

/-- `∑[lcm(2, n+2)%3+1]` -/
def P2220414499203755794.Spec : Prop :=
  ∀ n, (P2220414499203755794.a n : ℤ) = A355200 (n + 1)

end A355200

/-! ## A355200.P4018859052965662763

`lt[2*n, gcd(12*n, n²)]`
-/

namespace A355200.P4018859052965662763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (12 * n) (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355200.P4018859052965662763

namespace A355200

/-- `lt[2*n, gcd(12*n, n²)]` -/
def P4018859052965662763.Spec : Prop :=
  ∀ n, (P4018859052965662763.a n : ℤ) = A355200 (n + 1)

end A355200

/-! ## A355200.P17386819824974496465

`∪[3*(n+1), 4*(n+1)]`
-/

namespace A355200.P17386819824974496465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A355200.P17386819824974496465

namespace A355200

/-- `∪[3*(n+1), 4*(n+1)]` -/
def P17386819824974496465.Spec : Prop :=
  ∀ n, (P17386819824974496465.a n : ℤ) = A355200 (n + 1)

end A355200

/-! ## A355200.P5828379768363498238

`∑[∏{p}[1-a(n-3), #]]` with `a(0)=3, a(1)=1, a(2)=-2`
-/

namespace A355200.P5828379768363498238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1, -2] fun n f2 =>
  1 - f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355200.P5828379768363498238

namespace A355200

/-- `∑[∏{p}[1-a(n-3), #]]` -/
def P5828379768363498238.Spec : Prop :=
  ∀ n, (P5828379768363498238.a n : ℤ) = A355200 (n + 1)

end A355200

/-! ## A355200.P11635323488165468112

`∑[4-a(a(n-3)-1)]` with `a(0)=3, a(1)=1, a(2)=2`
-/

namespace A355200.P11635323488165468112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 2] fun n f1 =>
  4 - f1 (f1 (n - 3) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355200.P11635323488165468112

namespace A355200

/-- `∑[4-a(a(n-3)-1)]` -/
def P11635323488165468112.Spec : Prop :=
  ∀ n, P11635323488165468112.a n = A355200 (n + 1)

end A355200

/-! ## A355200.P4715389647902511787

`a(n-1)+(n-a(n-2))%3+3` with `a(0)=3, a(1)=4`
-/

namespace A355200.P4715389647902511787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  a (n - 1) + (Int.tmod ((n : ℤ) - a (n - 2)) 3 + 3)

end

end A355200.P4715389647902511787

namespace A355200

/-- `a(n-1)+(n-a(n-2))%3+3` -/
def P4715389647902511787.Spec : Prop :=
  ∀ n, P4715389647902511787.a n = A355200 (n + 1)

end A355200

/-! ## A355200.P5008748375046963200

`3-((a(n-2)-n)%3-a(n-1))` with `a(0)=3, a(1)=4`
-/

namespace A355200.P5008748375046963200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  3 - (Int.tmod (a (n - 2) - (n : ℤ)) 3 - a (n - 1))

end

end A355200.P5008748375046963200

namespace A355200

/-- `3-((a(n-2)-n)%3-a(n-1))` -/
def P5008748375046963200.Spec : Prop :=
  ∀ n, P5008748375046963200.a n = A355200 (n + 1)

end A355200

/-! ## A355200.P7504163003804990988

`∑[A134668(n)+2]`
-/

namespace A355200.P7504163003804990988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134668 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355200.P7504163003804990988

namespace A355200

/-- `∑[A134668(n)+2]` -/
def P7504163003804990988.Spec : Prop :=
  ∀ n, P7504163003804990988.a n = A355200 (n + 1)

end A355200

/-! ## A355200.P16487032742942661550

`∑[and(3, A269226(n+1))]`
-/

namespace A355200.P16487032742942661550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A269226 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355200.P16487032742942661550

namespace A355200

/-- `∑[and(3, A269226(n+1))]` -/
def P16487032742942661550.Spec : Prop :=
  ∀ n, P16487032742942661550.a n = A355200 (n + 1)

end A355200

/-! ## A355200.P3041802488907626307

`lt[2, A322026(n+1)]+1`
-/

namespace A355200.P3041802488907626307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322026 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A355200.P3041802488907626307

namespace A355200

/-- `lt[2, A322026(n+1)]+1` -/
def P3041802488907626307.Spec : Prop :=
  ∀ n, (P3041802488907626307.a n : ℤ) = A355200 (n + 1)

end A355200

/-! ## A355200.P2290915197616568705

`∑[A038722(a(n-3))]` with `a(0)=3, a(1)=1, a(2)=2`
-/

namespace A355200.P2290915197616568705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 2] fun n f1 =>
  A038722 (f1 (n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355200.P2290915197616568705

namespace A355200

/-- `∑[A038722(a(n-3))]` -/
def P2290915197616568705.Spec : Prop :=
  ∀ n, P2290915197616568705.a n = A355200 (n + 1)

end A355200

/-! ## A355200.P17835262386387704419

`∑[A116941(a(n-3))]` with `a(0)=3, a(1)=1, a(2)=2`
-/

namespace A355200.P17835262386387704419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 2] fun n f1 =>
  A116941 (f1 (n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355200.P17835262386387704419

namespace A355200

/-- `∑[A116941(a(n-3))]` -/
def P17835262386387704419.Spec : Prop :=
  ∀ n, P17835262386387704419.a n = A355200 (n + 1)

end A355200

/-! ## A355200.P7655627894300191209

`∑[A123500(a(n-3))]` with `a(0)=3, a(1)=1, a(2)=2`
-/

namespace A355200.P7655627894300191209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 2] fun n f1 =>
  A123500 (f1 (n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355200.P7655627894300191209

namespace A355200

/-- `∑[A123500(a(n-3))]` -/
def P7655627894300191209.Spec : Prop :=
  ∀ n, P7655627894300191209.a n = A355200 (n + 1)

end A355200

/-! ## A355200.P8917661059238033949

`∑[A200536(a(n-3))]` with `a(0)=3, a(1)=1, a(2)=2`
-/

namespace A355200.P8917661059238033949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 2] fun n f1 =>
  A200536 (f1 (n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355200.P8917661059238033949

namespace A355200

/-- `∑[A200536(a(n-3))]` -/
def P8917661059238033949.Spec : Prop :=
  ∀ n, P8917661059238033949.a n = A355200 (n + 1)

end A355200

/-! ## A355200.P15778272974386849109

`∑[A028242(a(n-3))+1]` with `a(0)=3, a(1)=1, a(2)=2`
-/

namespace A355200.P15778272974386849109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 2] fun n f1 =>
  A028242 (f1 (n - 3)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355200.P15778272974386849109

namespace A355200

/-- `∑[A028242(a(n-3))+1]` -/
def P15778272974386849109.Spec : Prop :=
  ∀ n, P15778272974386849109.a n = A355200 (n + 1)

end A355200

/-!
# A355202: Square array read by upwards antidiagonals: T(n,k) = k-th binary digit after the radix point of 1/n, for n >= 1 and k >= 1.

The programs for A355202, there is no canonical definition to state claims against.
-/

/-! ## A355202.P13085547329775338802

`A342023(A027960(n)+A006156(n))`
-/

namespace A355202.P13085547329775338802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342023 (A027960 n + A006156 n).toNat

end

end A355202.P13085547329775338802

/-! ## A355202.P191313370929726320

`A346618(A368736(n+1)^2)`
-/

namespace A355202.P191313370929726320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346618 (A368736 (n + 1) ^ 2).toNat

end

end A355202.P191313370929726320

/-! ## A355202.P17368955504255437830

`A103589(comp[A023151(2*(n+1))-A003242(2*n+1)])`
-/

namespace A355202.P17368955504255437830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023151 (2 * (n + 1)) - A003242 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103589 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A355202.P17368955504255437830

/-! ## A355202.P2120925970595100419

`A090027(A331160(n))%A124010(n+3)`
-/

namespace A355202.P2120925970595100419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090027 (A331160 n).toNat) (A124010 (n + 3))

end

end A355202.P2120925970595100419

/-! ## A355202.P17527462904247177166

`A000217(3*n+4)%A321091(A326534(2*n+1))`
-/

namespace A355202.P17527462904247177166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (3 * n + 4)) (A321091 (A326534 (2 * n + 1)).toNat)

end

end A355202.P17527462904247177166

/-!
# A355205: E.g.f. A(x) satisfies A'(x) = 1 + 2 * A(-log(1-x)).

The programs for A355205, there is no canonical definition to state claims against.
-/

/-! ## A355205.P4198797724495277835

`A005229(A072597(n)+n)`
-/

namespace A355205.P4198797724495277835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005229 (A072597 n + (n : ℤ)).toNat

end

end A355205.P4198797724495277835

/-! ## A355205.P18079052326005792508

`A276797(∑[A128196(n)+1])`
-/

namespace A355205.P18079052326005792508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128196 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276797 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A355205.P18079052326005792508

/-!
# A355206: E.g.f. A(x) satisfies A'(x) = 1 + 2 * A(exp(x) - 1).

The programs for A355206, there is no canonical definition to state claims against.
-/

/-! ## A355206.P10458715356950878751

`A114611(A000108(n))+A107104(n)`
-/

namespace A355206.P10458715356950878751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114611 (A000108 n).toNat + A107104 n

end

end A355206.P10458715356950878751

/-! ## A355206.P14832569323140043018

`A360994(A061129(n))+A000629(n)`
-/

namespace A355206.P14832569323140043018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360994 (A061129 n).toNat + A000629 n

end

end A355206.P14832569323140043018

/-!
# A355207: E.g.f. A(x) satisfies A'(x) = 1 + 2 * A(1 - exp(-x)).

The programs for A355207, there is no canonical definition to state claims against.
-/

/-! ## A355207.P12190950838293211984

`A048404(n+1)-A119253(A145892(n))`
-/

namespace A355207.P12190950838293211984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048404 (n + 1) - A119253 (A145892 n).toNat

end

end A355207.P12190950838293211984

/-! ## A355207.P9045437158208145537

`A292371(A292426(n+1))-A160406(A160406(n))`
-/

namespace A355207.P9045437158208145537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (A292426 (n + 1)).toNat - A160406 (A160406 n).toNat

end

end A355207.P9045437158208145537

/-!
# A355208: E.g.f. A(x) satisfies A'(x) = 1 + A(2 * log(1+x)).

The programs for A355208, there is no canonical definition to state claims against.
-/

/-! ## A355208.P6474728137321997094

`round(sqrt(A046034(n^(n+1)+1)))`
-/

namespace A355208.P6474728137321997094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A046034 (n ^ (n + 1) + 1) : ℝ))

end

end A355208.P6474728137321997094

/-!
# A355209: E.g.f. A(x) satisfies A'(x) = 1 + A(-2 * log(1-x)).

The programs for A355209, there is no canonical definition to state claims against.
-/

/-! ## A355209.P15101898516473958681

`A172002(∏[∏[∑{e}[n+1, #]+1]])`
-/

namespace A355209.P15101898516473958681
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172002 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A355209.P15101898516473958681

/-!
# A355210: E.g.f. A(x) satisfies A'(x) = 1 + A(2 * (exp(x) - 1)).

The programs for A355210, there is no canonical definition to state claims against.
-/

/-! ## A355210.P10823783151901093677

`∑[A000203(A305124(2^n))]`
-/

namespace A355210.P10823783151901093677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A305124 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355210.P10823783151901093677

/-!
# A355212: A variant of the EKG sequence (A064413) where the least value not yet in the sequence appears as soon as possible.

The programs for A355212, there is no canonical definition to state claims against.
-/

/-! ## A355212.P5760857871829145030

`A064736(n+1)/A340102((n+1)²)`
-/

namespace A355212.P5760857871829145030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064736 (n + 1) : ℚ) / (A340102 ((n + 1) ^ 2) : ℚ)

end

end A355212.P5760857871829145030

/-! ## A355212.P17438608306171018525

`lcm(A000267(n), A175851(A149454(n)))`
-/

namespace A355212.P17438608306171018525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000267 n) (A175851 (A149454 n).toNat)

end

end A355212.P17438608306171018525

/-! ## A355212.P10188565372938978546

`A064736(n+1)/A078880(A042492(n))`
-/

namespace A355212.P10188565372938978546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064736 (n + 1) : ℚ) / (A078880 (A042492 n).toNat : ℚ)

end

end A355212.P10188565372938978546

/-! ## A355212.P2185061128219211567

`A064736(n+1)/A190427(A334250(n))`
-/

namespace A355212.P2185061128219211567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064736 (n + 1) : ℚ) / (A190427 (A334250 n).toNat : ℚ)

end

end A355212.P2185061128219211567

/-! ## A355212.P3862996504578800751

`lcm(A060417(A060456(n)), A060438(n+3))`
-/

namespace A355212.P3862996504578800751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060417 (A060456 n).toNat) (A060438 (n + 3))

end

end A355212.P3862996504578800751

/-!
# A355214: E.g.f. A(x) satisfies A'(x) = 1 + A(2 * log(1+x))/2.

The programs for A355214, there is no canonical definition to state claims against.
-/

/-! ## A355214.P12006295912743829058

`A002905(n)-A076471(A077047(n))`
-/

namespace A355214.P12006295912743829058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002905 n - A076471 (A077047 n).toNat

end

end A355214.P12006295912743829058

/-!
# A355215: E.g.f. A(x) satisfies A'(x) = 1 + A(-2 * log(1-x))/2.

The programs for A355215, there is no canonical definition to state claims against.
-/

/-! ## A355215.P5965202260633974420

`A285703(∏[n!])`
-/

namespace A355215.P5965202260633974420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285703 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A355215.P5965202260633974420

/-!
# A355217: E.g.f. A(x) satisfies A'(x) = 1 + A(2 * (1 - exp(-x)))/2.

The programs for A355217, there is no canonical definition to state claims against.
-/

/-! ## A355217.P664961437148324558

`1-A277275(A277266(n))`
-/

namespace A355217.P664961437148324558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A277275 (A277266 n).toNat

end

end A355217.P664961437148324558

/-! ## A355217.P9067076733142014624

`1-A277275(A000069(n+1))`
-/

namespace A355217.P9067076733142014624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A277275 (A000069 (n + 1)).toNat

end

end A355217.P9067076733142014624

/-!
# A355219: a(n) = Sum_{k>=1} (4*k - 2)^n / 2^k.

The programs for A355219, there is no canonical definition to state claims against.
-/

/-! ## A355219.P10623538523481163875

`2^n*A080253(n)`
-/

namespace A355219.P10623538523481163875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A080253 n

end

end A355219.P10623538523481163875

/-! ## A355219.P17805282770281539337

`lcm(A000079(n), A080253(n))`
-/

namespace A355219.P17805282770281539337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A080253 n)

end

end A355219.P17805282770281539337

/-! ## A355219.P10683687128760218946

`A080253(n)*A164073(2*n+1)`
-/

namespace A355219.P10683687128760218946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080253 n * A164073 (2 * n + 1)

end

end A355219.P10683687128760218946

/-! ## A355219.P3607178291848593400

`A080253(n)*A154537(A000096(n))`
-/

namespace A355219.P3607178291848593400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080253 n * A154537 (A000096 n).toNat

end

end A355219.P3607178291848593400

/-! ## A355219.P3197754335354537446

`A080253(n)*A225117(A000217(n))`
-/

namespace A355219.P3197754335354537446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080253 n * A225117 (A000217 n).toNat

end

end A355219.P3197754335354537446

/-!
# A355220: a(n) = Sum_{k>=1} (4*k - 1)^n / 2^k.

The programs for A355220, there is no canonical definition to state claims against.
-/

/-! ## A355220.P14096189409985466301

`2*A367981(n)-(-1)^n`
-/

namespace A355220.P14096189409985466301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A367981 n - (-1) ^ n

end

end A355220.P14096189409985466301

/-!
# A355221: The k-th leftmost digit of a(n) is the least of the k leftmost digits of n.

The programs for A355221, the canonical program `A355221.P9010830034756802224` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355221 has offset 0).

The definition of A355221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355221.P14381981751246073872

`A000196(n²)-A283001(n)`
-/

namespace A355221.P14381981751246073872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n ^ 2) - A283001 n

end

end A355221.P14381981751246073872

namespace A355221

/-- `A000196(n²)-A283001(n)` -/
def P14381981751246073872.Spec : Prop :=
  ∀ n, P14381981751246073872.a n = A355221 n

end A355221

/-! ## A355221.P8751776961773951007

`n-(A004185(n)%10-A000030(A051022(n)))`
-/

namespace A355221.P8751776961773951007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Int.tmod (A004185 n) 10 - A000030 (A051022 n).toNat)

end

end A355221.P8751776961773951007

namespace A355221

/-- `n-(A004185(n)%10-A000030(A051022(n)))` -/
def P8751776961773951007.Spec : Prop :=
  ∀ n, P8751776961773951007.a n = A355221 n

end A355221

/-! ## A355221.P10672885269417350714

`n-(A010879(A355222(n))-A000030(A051022(n)))`
-/

namespace A355221.P10672885269417350714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A010879 (A355222 n).toNat - A000030 (A051022 n).toNat)

end

end A355221.P10672885269417350714

namespace A355221

/-- `n-(A010879(A355222(n))-A000030(A051022(n)))` -/
def P10672885269417350714.Spec : Prop :=
  ∀ n, P10672885269417350714.a n = A355221 n

end A355221

/-! ## A355221.P9010830034756802224

`comp[98-11*n]-dr(val(∑{digits}[n, 5^#], 5)-n)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A355221

/-- `comp[98-11*n]-dr(val(∑{digits}[n, 5^#], 5)-n)` -/
def P9010830034756802224.Spec : Prop :=
  ∀ n, P9010830034756802224.a n = A355221 n

theorem P9010830034756802224.correct : P9010830034756802224.Spec := by
  intro n
  simp only [A355221]

end A355221

/-! ## A355221.P14056946331285446609

`A000194((n-A283001(n))²)`
-/

namespace A355221.P14056946331285446609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (((n : ℤ) - A283001 n) ^ 2).toNat

end

end A355221.P14056946331285446609

namespace A355221

/-- `A000194((n-A283001(n))²)` -/
def P14056946331285446609.Spec : Prop :=
  ∀ n, P14056946331285446609.a n = A355221 n

end A355221

/-! ## A355221.P8815333396721910203

`A000194(lcm(n, n+1))-A283001(n)`
-/

namespace A355221.P8815333396721910203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Nat.lcm n (n + 1)) - A283001 n

end

end A355221.P8815333396721910203

namespace A355221

/-- `A000194(lcm(n, n+1))-A283001(n)` -/
def P8815333396721910203.Spec : Prop :=
  ∀ n, P8815333396721910203.a n = A355221 n

end A355221

/-! ## A355221.P7642335210680277272

`A118759(A118759(n)-A283001(n))`
-/

namespace A355221.P7642335210680277272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A118759 n - A283001 n).toNat

end

end A355221.P7642335210680277272

namespace A355221

/-- `A118759(A118759(n)-A283001(n))` -/
def P7642335210680277272.Spec : Prop :=
  ∀ n, P7642335210680277272.a n = A355221 n

end A355221

/-! ## A355221.P6880224830949589174

`A009996(A357030(n))`
-/

namespace A355221.P6880224830949589174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (A357030 n).toNat

end

end A355221.P6880224830949589174

namespace A355221

/-- `A009996(A357030(n))` -/
def P6880224830949589174.Spec : Prop :=
  ∀ n, P6880224830949589174.a n = A355221 n

end A355221

/-!
# A355222: The k-th leftmost digit of a(n) is the greatest of the k leftmost digits of n.

The programs for A355222, the canonical program `A355222.P17906569904308679321` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355222 has offset 0).

The definition of A355222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355222.P17906569904308679321

`A182324(n)-A054054(A056142(n))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A355222

/-- `A182324(n)-A054054(A056142(n))` -/
def P17906569904308679321.Spec : Prop :=
  ∀ n, P17906569904308679321.a n = A355222 n

theorem P17906569904308679321.correct : P17906569904308679321.Spec := by
  intro n
  simp only [A355222]

end A355222

/-! ## A355222.P9531479799991437549

`A182324(n)-A054054(A056143(n))`
-/

namespace A355222.P9531479799991437549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182324 n - A054054 (A056143 n).toNat

end

end A355222.P9531479799991437549

namespace A355222

/-- `A182324(n)-A054054(A056143(n))` -/
def P9531479799991437549.Spec : Prop :=
  ∀ n, P9531479799991437549.a n = A355222 n

end A355222

/-! ## A355222.P7417311428462714354

`A328447(A052008(n)-A087036(n)%A040600(n))`
-/

namespace A355222.P7417311428462714354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 (A052008 n - Int.tmod (A087036 n) (A040600 n)).toNat

end

end A355222.P7417311428462714354

namespace A355222

/-- `A328447(A052008(n)-A087036(n)%A040600(n))` -/
def P7417311428462714354.Spec : Prop :=
  ∀ n, P7417311428462714354.a n = A355222 n

end A355222

/-! ## A355222.P3214978635120368307

`A328447(A052008(n)-A087051(n)%A040600(n))`
-/

namespace A355222.P3214978635120368307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 (A052008 n - Int.tmod (A087051 n) (A040600 n)).toNat

end

end A355222.P3214978635120368307

namespace A355222

/-- `A328447(A052008(n)-A087051(n)%A040600(n))` -/
def P3214978635120368307.Spec : Prop :=
  ∀ n, P3214978635120368307.a n = A355222 n

end A355222

/-!
# A355223: The k-th rightmost digit of a(n) is the least of the k rightmost digits of n.

The programs for A355223, there is no canonical definition to state claims against.
-/

/-! ## A355223.P1286366156116158090

`A118759(A283001(n)+A265525(n))`
-/

namespace A355223.P1286366156116158090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A283001 n + A265525 n).toNat

end

end A355223.P1286366156116158090

/-! ## A355223.P7922550540310724507

`A118759(A265525(n)+A108782(n)/9)`
-/

namespace A355223.P7922550540310724507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (SequenceMachineLib.roundAway ((A265525 n : ℚ) + (A108782 n : ℚ) / 9)).toNat

end

end A355223.P7922550540310724507

/-! ## A355223.P11457676870919426172

`A118759(A265525(n)+(A004186(n)-n)/9)`
-/

namespace A355223.P11457676870919426172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (SequenceMachineLib.roundAway ((A265525 n : ℚ) + (A004186 n - (n : ℤ) : ℚ) / 9)).toNat

end

end A355223.P11457676870919426172

/-! ## A355223.P6907966947366240264

`A286326(16*A108782(n))+A118759(A265525(n))`
-/

namespace A355223.P6907966947366240264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286326 (16 * A108782 n).toNat + A118759 (A265525 n).toNat

end

end A355223.P6907966947366240264

/-! ## A355223.P363115135058120289

`A118759(A265525(n))+A106610(A004186(n)-n)`
-/

namespace A355223.P363115135058120289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A265525 n).toNat + A106610 (A004186 n - (n : ℤ)).toNat

end

end A355223.P363115135058120289

/-! ## A355223.P17168703451803565663

`A265525(n)+n-A009996(A357030(n))`
-/

namespace A355223.P17168703451803565663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 n + ((n : ℤ) - A009996 (A357030 n).toNat)

end

end A355223.P17168703451803565663

/-!
# A355224: The k-th rightmost digit of a(n) is the greatest of the k rightmost digits of n.

The programs for A355224, the canonical program `A355224.P10807161521225404146` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355224 has offset 0).

The definition of A355224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355224.P2010262598725371705

`A056967(A283001(n)+A244112(n))`
-/

namespace A355224.P2010262598725371705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056967 (A283001 n + A244112 n).toNat

end

end A355224.P2010262598725371705

namespace A355224

/-- `A056967(A283001(n)+A244112(n))` -/
def P2010262598725371705.Spec : Prop :=
  ∀ n, P2010262598725371705.a n = A355224 n

end A355224

/-! ## A355224.P10807161521225404146

`10*(n-(comp[98-11*n]-dr(val(∑{digits}[n, 5^#], 5)-n)))+n`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A355224

/-- `10*(n-(comp[98-11*n]-dr(val(∑{digits}[n, 5^#], 5)-n)))+n` -/
def P10807161521225404146.Spec : Prop :=
  ∀ n, P10807161521225404146.a n = A355224 n

theorem P10807161521225404146.correct : P10807161521225404146.Spec := by
  intro n
  simp only [A355224]

end A355224

/-! ## A355224.P466178696235716153

`A355221(n)+A283001(A056143(n))`
-/

namespace A355224.P466178696235716153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355221 n + A283001 (A056143 n).toNat

end

end A355224.P466178696235716153

namespace A355224

/-- `A355221(n)+A283001(A056143(n))` -/
def P466178696235716153.Spec : Prop :=
  ∀ n, P466178696235716153.a n = A355224 n

end A355224

/-! ## A355224.P16811662556532220969

`A283001(n)+A109014(n²)*A227362(n)`
-/

namespace A355224.P16811662556532220969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283001 n + A109014 (n ^ 2) * A227362 n

end

end A355224.P16811662556532220969

namespace A355224

/-- `A283001(n)+A109014(n²)*A227362(n)` -/
def P16811662556532220969.Spec : Prop :=
  ∀ n, P16811662556532220969.a n = A355224 n

end A355224

/-! ## A355224.P13233118355840746874

`eq[0, A331162(n%11*floor(n/11))]`
-/

namespace A355224.P13233118355840746874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331162 (((n % 11 : ℕ) : ℤ) * ⌊(n : ℚ) / 11⌋).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A355224.P13233118355840746874

namespace A355224

/-- `eq[0, A331162(n%11*floor(n/11))]` -/
def P13233118355840746874.Spec : Prop :=
  ∀ n, (P13233118355840746874.a n : ℤ) = A355224 n

end A355224

/-!
# A355225: Number of partitions of n that contain more prime parts than nonprime parts.

The programs for A355225, there is no canonical definition to state claims against.
-/

/-! ## A355225.P10654629184806724563

`A355306(n)-A355158(n)`
-/

namespace A355225.P10654629184806724563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355306 n - A355158 n

end

end A355225.P10654629184806724563

/-! ## A355225.P3260512254769708196

`A000041(n)-A155515(n)-A355158(n)`
-/

namespace A355225.P3260512254769708196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A155515 n - A355158 n

end

end A355225.P3260512254769708196

/-! ## A355225.P2409622544324502268

`A139582(n)/2-A155515(n)-A355158(n)`
-/

namespace A355225.P2409622544324502268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A155515 n : ℚ) - (A355158 n : ℚ)

end

end A355225.P2409622544324502268

/-! ## A355225.P716658627096367619

`A133041(n)-(A155515(n)+n)-A355158(n)`
-/

namespace A355225.P716658627096367619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (A155515 n + (n : ℤ)) - A355158 n

end

end A355225.P716658627096367619

/-!
# A355230: E.g.f. A(x) satisfies A'(x) = 1 - log(1-x) * A(2*x).

The programs for A355230, there is no canonical definition to state claims against.
-/

/-! ## A355230.P1461074654868180132

`a(n-1)!/n` with `a(0)=0, a(1)=1, a(2)=0, a(3)=4`
-/

namespace A355230.P1461074654868180132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 0, 4] fun n a =>
  (Nat.factorial (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) / (n : ℚ)

end

end A355230.P1461074654868180132

/-! ## A355230.P15537781155093172500

`A025494(a(n-1))` with `a(0)=0, a(1)=1, a(2)=0, a(3)=4, a(4)=6`
-/

namespace A355230.P15537781155093172500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 4, 6] fun n a =>
  A025494 (a (n - 1)).toNat

end

end A355230.P15537781155093172500

/-!
# A355231: E.g.f. A(x) satisfies A'(x) = 1 - 2 * log(1-x) * A(x).

The programs for A355231, there is no canonical definition to state claims against.
-/

/-! ## A355231.P1320580598624569569

`A103151(A249078(n))-A167407(n)`
-/

namespace A355231.P1320580598624569569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103151 (A249078 n).toNat - A167407 n

end

end A355231.P1320580598624569569

/-! ## A355231.P4057566345875328730

`A123050(A126319(n))*A131829(n)`
-/

namespace A355231.P4057566345875328730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123050 (A126319 n).toNat * A131829 n

end

end A355231.P4057566345875328730

/-! ## A355231.P7043543016946729694

`and(A024305(A017946(n)), A056273(n))`
-/

namespace A355231.P7043543016946729694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A024305 (A017946 n).toNat) (A056273 n)

end

end A355231.P7043543016946729694

/-!
# A355232: E.g.f. A(x) satisfies A'(x) = 1 + (exp(x) - 1) * A(2*x).

The programs for A355232, there is no canonical definition to state claims against.
-/

/-! ## A355232.P15231653635770490957

`A355230(n)-A105517(A355230(n))`
-/

namespace A355232.P15231653635770490957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355230 n - A105517 (A355230 n).toNat

end

end A355232.P15231653635770490957

/-! ## A355232.P16551774368044602625

`A208571(A301462(n))`
-/

namespace A355232.P16551774368044602625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208571 (A301462 n).toNat

end

end A355232.P16551774368044602625

/-!
# A355233: E.g.f. A(x) satisfies A'(x) = 1 + 2 * (exp(x) - 1) * A(x).

The programs for A355233, there is no canonical definition to state claims against.
-/

/-! ## A355233.P11817516313579098515

`A157279(A143892(n))*A225558(n)`
-/

namespace A355233.P11817516313579098515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157279 (A143892 n).toNat * A225558 n

end

end A355233.P11817516313579098515

/-! ## A355233.P3458976723414392640

`A153671(A153699(n+1))*A247354(n)`
-/

namespace A355233.P3458976723414392640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153671 (A153699 (n + 1)).toNat * A247354 n

end

end A355233.P3458976723414392640

/-!
# A355235: E.g.f. A(x) satisfies A'(x) = 1 - log(1-x) * A(2*x)/2.

The programs for A355235, there is no canonical definition to state claims against.
-/

/-! ## A355235.P11223631162837998533

`A253558(A041563(n)+ceil(abs((1-n)/2)))-1`
-/

namespace A355235.P11223631162837998533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253558 (A041563 n + ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉).toNat - 1

end

end A355235.P11223631162837998533

/-! ## A355235.P9847830730401110060

`A318753(A383708(3*n))*A383708(n)`
-/

namespace A355235.P9847830730401110060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A383708 (3 * n)).toNat * A383708 n

end

end A355235.P9847830730401110060

/-!
# A355236: E.g.f. A(x) satisfies A'(x) = 1 + (exp(x) - 1) * A(2*x)/2.

The programs for A355236, there is no canonical definition to state claims against.
-/

/-! ## A355236.P14678454707169986876

`A182893(A000079(n)-A274010(n))`
-/

namespace A355236.P14678454707169986876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182893 (A000079 n - A274010 n).toNat

end

end A355236.P14678454707169986876

/-! ## A355236.P4001002659410721065

`A060644(A060640(2*(n+1)))%A060631(n)`
-/

namespace A355236.P4001002659410721065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060644 (A060640 (2 * (n + 1))).toNat) (A060631 n)

end

end A355236.P4001002659410721065

/-! ## A355236.P12329217679848607987

`A004767(A000073(2*(n+2)))%A001008(n+1)`
-/

namespace A355236.P12329217679848607987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004767 (A000073 (2 * (n + 2))).toNat) (A001008 (n + 1))

end

end A355236.P12329217679848607987

/-!
# A355237: First occurrence of difference n between two consecutive terms of A000404. a(n) gives the lower term. The upper term is A355238.

The programs for A355237, there is no canonical definition to state claims against.
-/

/-! ## A355237.P11655925328545624210

`A355238(n+1)-(n+1)`
-/

namespace A355237.P11655925328545624210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355238 (n + 1) - (n + 1 : ℤ)

end

end A355237.P11655925328545624210

/-! ## A355237.P213729081572244254

`A355238(n+1)+A022958(2*n+3)+n`
-/

namespace A355237.P213729081572244254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355238 (n + 1) + A022958 (2 * n + 3) + (n : ℤ)

end

end A355237.P213729081572244254

/-! ## A355237.P10964351453630011521

`A263313(A355238(n+1)-n)`
-/

namespace A355237.P10964351453630011521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263313 (A355238 (n + 1) - (n : ℤ)).toNat

end

end A355237.P10964351453630011521

/-! ## A355237.P2164429939943178810

`A233583(A355238(n+1)-n)`
-/

namespace A355237.P2164429939943178810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A355238 (n + 1) - (n : ℤ)).toNat

end

end A355237.P2164429939943178810

/-!
# A355238: First occurrence of difference n between two consecutive terms of A000404. a(n) gives the upper term. The lower term is A355237.

The programs for A355238, there is no canonical definition to state claims against.
-/

/-! ## A355238.P12644367620193572797

`A355237(n+1)+n+1`
-/

namespace A355238.P12644367620193572797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355237 (n + 1) + (n + 1 : ℤ)

end

end A355238.P12644367620193572797

/-! ## A355238.P341668242012727368

`A020725(A355237(n+1)+n)`
-/

namespace A355238.P341668242012727368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A355237 (n + 1) + (n : ℤ)).toNat

end

end A355238.P341668242012727368

/-! ## A355238.P1505017379402000870

`A153152(A355237(n+1)+n)`
-/

namespace A355238.P1505017379402000870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A355237 (n + 1) + (n : ℤ)).toNat

end

end A355238.P1505017379402000870

/-!
# A355240: Numbers of steps until the Collatz iteration started at k > 4 returns to either k-1 or k+1.

The programs for A355240, there is no canonical definition to state claims against.
-/

/-! ## A355240.P15786977212985472162

`∑[p?[A056239(A119307(n))]]`
-/

namespace A355240.P15786977212985472162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A119307 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355240.P15786977212985472162

/-! ## A355240.P11854483337656117546

`∑[A228328(p?[A228275(2*n+1)])]`
-/

namespace A355240.P11854483337656117546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228275 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228328 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355240.P11854483337656117546

/-!
# A355241: T(w,h)/2 is the minimum slope >= 1/2 that can be chosen as orientation of a w X h rectangle such that the upper bound for the minimum number of covered grid points A354702(w,d) can be achieved by a suitable translation of the rectangle, where T(w,h) and A354702 are triangles read by rows. T(w,h) = -1 if no slope satisfying this condition exists.

The programs for A355241, there is no canonical definition to state claims against.
-/

/-! ## A355241.P5283655792094276738

`A046951(A147013(n+1)+1+n)`
-/

namespace A355241.P5283655792094276738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A147013 (n + 1) + 1 + (n : ℤ)).toNat

end

end A355241.P5283655792094276738

/-! ## A355241.P14635939221866660172

`A046951(n+2)*A325989(A304236(n))`
-/

namespace A355241.P14635939221866660172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 2) * A325989 (A304236 n).toNat

end

end A355241.P14635939221866660172

/-! ## A355241.P7463005633257648459

`A002110(A078134(n+2)^A007318(n))`
-/

namespace A355241.P7463005633257648459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (SequenceMachineLib.roundAway ((A078134 (n + 2) : ℚ) ^ (A007318 n : ℤ))).toNat

end

end A355241.P7463005633257648459

/-! ## A355241.P9648542768997593638

`A002110(A078134(n+2)^A008459(n))`
-/

namespace A355241.P9648542768997593638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (SequenceMachineLib.roundAway ((A078134 (n + 2) : ℚ) ^ (A008459 n : ℤ))).toNat

end

end A355241.P9648542768997593638

/-! ## A355241.P1791562032031528929

`A086360(A078134(n+2)^A008288(n))`
-/

namespace A355241.P1791562032031528929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086360 (SequenceMachineLib.roundAway ((A078134 (n + 2) : ℚ) ^ (A008288 n : ℤ))).toNat

end

end A355241.P1791562032031528929

/-!
# A355242: T(w,h) is the minimum integer slope >= 1 that can be chosen as orientation of a w X h rectangle such that the upper bound for the minimum number of covered grid points A354702(w,d) can be achieved by a suitable translation of the rectangle, where T(w,h) and A354702 are triangles read by rows. T(w,h) = -1 if no integer slope satisfying this condition exists.

The programs for A355242, there is no canonical definition to state claims against.
-/

/-! ## A355242.P9862181044124905705

`A328457(A070175(2*n+3)+A034444(n+1))`
-/

namespace A355242.P9862181044124905705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328457 (A070175 (2 * n + 3) + A034444 (n + 1)).toNat

end

end A355242.P9862181044124905705

/-! ## A355242.P7069071195313359723

`gcd(A228897(2*(n+2)), A336812(A002260(n+1)))`
-/

namespace A355242.P7069071195313359723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A228897 (2 * (n + 2))) (A336812 (A002260 (n + 1)).toNat)

end

end A355242.P7069071195313359723

/-! ## A355242.P5522366076476023434

`gcd(A002513(n), A127568(n))`
-/

namespace A355242.P5522366076476023434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002513 n) (A127568 n)

end

end A355242.P5522366076476023434

/-! ## A355242.P13194732561154846626

`gcd(A028364(A002262(n)), A096305(n+3))`
-/

namespace A355242.P13194732561154846626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028364 (A002262 n).toNat) (A096305 (n + 3))

end

end A355242.P13194732561154846626

/-! ## A355242.P17877556054164449236

`gcd(A282458(n+1), A366113(n+1))`
-/

namespace A355242.P17877556054164449236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A282458 (n + 1)) (A366113 (n + 1))

end

end A355242.P17877556054164449236

/-!
# A355243: a(n) is the largest integer value of Product_{k=1..n} (2 + 1/t_k) with integers t_k > 1.

The programs for A355243, there is no canonical definition to state claims against.
-/

/-! ## A355243.P5754527712376119914

`A176554(A279785(2*n+3))+A064989(n+1)`
-/

namespace A355243.P5754527712376119914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176554 (A279785 (2 * n + 3)).toNat + A064989 (n + 1)

end

end A355243.P5754527712376119914

/-! ## A355243.P14904882727990306586

`A341449(A240513(n+1))`
-/

namespace A355243.P14904882727990306586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341449 (A240513 (n + 1)).toNat

end

end A355243.P14904882727990306586

/-!
# A355244: T(w,h)/2 is the minimum slope >= 1/2 that can be chosen as orientation of a w X h rectangle such that the lower bound for the maximum number of covered grid points A354704(w,d) can be achieved by a suitable translation of the rectangle, where T(w,h) and A354704 are triangles read by rows. T(w,h) = -1 if no slope satisfying this condition exists.

The programs for A355244, there is no canonical definition to state claims against.
-/

/-! ## A355244.P7830285113828799500

`A285202(A157391(n+1)+7)`
-/

namespace A355244.P7830285113828799500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285202 (A157391 (n + 1) + 7).toNat

end

end A355244.P7830285113828799500

/-! ## A355244.P5817068436721295365

`gcd(A265584(3*n+2)-2, A082037(n))`
-/

namespace A355244.P5817068436721295365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A265584 (3 * n + 2) - 2) (A082037 n)

end

end A355244.P5817068436721295365

/-!
# A355245: Square array A(n, k), n, k >= 0, read by antidiagonals; for any m > 0, the position of the m-th rightmost 0 in the binary expansion of A(n, k) is the least of the positions of the m-th rightmost 0 in the binary expansions of n and k (the least significant bit having position 0).

The programs for A355245, there is no canonical definition to state claims against.
-/

/-! ## A355245.P1903198842092723299

`comp[∑[n]]%(n+2)-A355246(n)`
-/

namespace A355245.P1903198842092723299
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (n + 2) : ℕ) : ℤ) - A355246 n

end

end A355245.P1903198842092723299

/-! ## A355245.P6937711587574385901

`A003056(n)-A355246(n)`
-/

namespace A355245.P6937711587574385901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n - A355246 n

end

end A355245.P6937711587574385901

/-! ## A355245.P15829907884024598210

`xor(A003987(n), A355246(n))`
-/

namespace A355245.P15829907884024598210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003987 n) (A355246 n)

end

end A355245.P15829907884024598210

/-! ## A355245.P12936171376329129208

`log2(A137688(n))-A355246(n)`
-/

namespace A355245.P12936171376329129208
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A137688 n : ℝ) - (A355246 n : ℝ)

end

end A355245.P12936171376329129208

/-! ## A355245.P7677427958108002218

`n-(A355246(n)+A083920(n))`
-/

namespace A355245.P7677427958108002218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A355246 n + A083920 n)

end

end A355245.P7677427958108002218

/-! ## A355245.P10103395380066662433

`A003984(A057944(n))-A355246(n)`
-/

namespace A355245.P10103395380066662433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 (A057944 n).toNat - A355246 n

end

end A355245.P10103395380066662433

/-!
# A355246: Square array A(n, k), n, k >= 0, read by antidiagonals; for any m > 0, the position of the m-th rightmost 0 in the binary expansion of A(n, k) is the greatest of the positions of the m-th rightmost 0 in the binary expansions of n and k (the least significant bit having position 0).

The programs for A355246, there is no canonical definition to state claims against.
-/

/-! ## A355246.P61738527193280889

`∑[char[∑[n+1]]]-A355245(n)`
-/

namespace A355246.P61738527193280889
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A355245 n

end

end A355246.P61738527193280889

/-! ## A355246.P15614478055986681196

`xor(A003987(n), A355245(n))`
-/

namespace A355246.P15614478055986681196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003987 n) (A355245 n)

end

end A355246.P15614478055986681196

/-! ## A355246.P9940201599622302642

`abs(A003056(n)-A355245(n))`
-/

namespace A355246.P9940201599622302642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003056 n - A355245 n|

end

end A355246.P9940201599622302642

/-! ## A355246.P14325598236792963036

`∑[A010054(n)]-(A355245(n)+1)`
-/

namespace A355246.P14325598236792963036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A355245 n + 1)

end

end A355246.P14325598236792963036

/-! ## A355246.P14436619507358956041

`A014132(n+1)-n-A355245(n)-2`
-/

namespace A355246.P14436619507358956041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1) - (n : ℤ) - A355245 n - 2

end

end A355246.P14436619507358956041

/-! ## A355246.P13936583466670807603

`A037213((A003056(n)-A355245(n))²)`
-/

namespace A355246.P13936583466670807603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 ((A003056 n - A355245 n) ^ 2).toNat

end

end A355246.P13936583466670807603

/-! ## A355246.P7527352817074475501

`A003313(2^(A003056(n)-A355245(n)))`
-/

namespace A355246.P7527352817074475501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A003056 n - A355245 n : ℤ))).toNat

end

end A355246.P7527352817074475501

/-! ## A355246.P16181306872197566424

`A003056(n)-A355245(n)%A314130(n)`
-/

namespace A355246.P16181306872197566424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n - Int.tmod (A355245 n) (A314130 n)

end

end A355246.P16181306872197566424

/-! ## A355246.P17830092531476432777

`(A003056(n)-A355245(n))^A307609(n²+5)`
-/

namespace A355246.P17830092531476432777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 n - A355245 n : ℚ) ^ (A307609 (n ^ 2 + 5) : ℤ)

end

end A355246.P17830092531476432777

/-! ## A355246.P6969004958624868454

`A115790(A062378(n+1))+A003056(n)-A355245(n)`
-/

namespace A355246.P6969004958624868454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115790 (A062378 (n + 1)).toNat + (A003056 n - A355245 n)

end

end A355246.P6969004958624868454

/-!
# A355247: Expansion of e.g.f. exp(2*(exp(x) - 1 + x)).

The programs for A355247, there is no canonical definition to state claims against.
-/

/-! ## A355247.P18213531244620369461

`Δ[A324133(n+1)]`
-/

namespace A355247.P18213531244620369461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A355247.P18213531244620369461

/-! ## A355247.P761547716569841035

`Δ[A035009(n+1)/2]`
-/

namespace A355247.P761547716569841035
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035009 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A355247.P761547716569841035

/-! ## A355247.P2721081711499741781

`Δ[A001861(n+1)/4]`
-/

namespace A355247.P2721081711499741781
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001861 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A355247.P2721081711499741781

/-! ## A355247.P16606200132048478927

`Δ[record[A324133(A106466(n))]]`
-/

namespace A355247.P16606200132048478927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324133 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A355247.P16606200132048478927

/-! ## A355247.P3492179673850967955

`Δ[record[A324133(A334576(n))]]`
-/

namespace A355247.P3492179673850967955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324133 (A334576 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A355247.P3492179673850967955

/-! ## A355247.P9711739723829164454

`A324133(n+2)-A324133(n+1)`
-/

namespace A355247.P9711739723829164454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324133 (n + 2) - A324133 (n + 1)

end

end A355247.P9711739723829164454

/-! ## A355247.P17965533690003727805

`Δ[record[A324133(A334577(n))]]`
-/

namespace A355247.P17965533690003727805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324133 (A334577 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A355247.P17965533690003727805

/-!
# A355248: Number of ways to write n as the sum of (exactly) 3 positive integers with the same number of divisors.

The programs for A355248, there is no canonical definition to state claims against.
-/

/-! ## A355248.P7860549313505823441

`A064692(A294430(n)+A258206(n+1))`
-/

namespace A355248.P7860549313505823441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A294430 n + A258206 (n + 1)).toNat

end

end A355248.P7860549313505823441

/-! ## A355248.P12727511735384160393

`A102669(A089031(3*n+5)%A303259(n))`
-/

namespace A355248.P12727511735384160393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (Int.tmod (A089031 (3 * n + 5)) (A303259 n)).toNat

end

end A355248.P12727511735384160393

/-! ## A355248.P12121504863442830410

`A360115(A000081(n)+4)`
-/

namespace A355248.P12121504863442830410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360115 (A000081 n + 4).toNat

end

end A355248.P12121504863442830410

/-! ## A355248.P2285311769751335331

`A001221(A000081(n)+4)-1`
-/

namespace A355248.P2285311769751335331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000081 n + 4).toNat - 1

end

end A355248.P2285311769751335331

/-! ## A355248.P8037755741284146278

`A087436(A008619(n)+A000996(n))`
-/

namespace A355248.P8037755741284146278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A008619 n + A000996 n).toNat

end

end A355248.P8037755741284146278

/-!
# A355249: Maximal GCD of three positive integers with sum n.

The programs for A355249, there is no canonical definition to state claims against.
-/

/-! ## A355249.P17726817179608361905

`(n+3)/(A090370(n+4)-1)`
-/

namespace A355249.P17726817179608361905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (A090370 (n + 4) - 1 : ℚ)

end

end A355249.P17726817179608361905

/-! ## A355249.P4166670982404001620

`(n+3)/A292269((n+3)*gcd(2, n))`
-/

namespace A355249.P4166670982404001620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (A292269 ((n + 3) * Nat.gcd 2 n) : ℚ)

end

end A355249.P4166670982404001620

/-! ## A355249.P18066392156592801875

`A244051(A024916(n+2)+4)`
-/

namespace A355249.P18066392156592801875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244051 (A024916 (n + 2) + 4).toNat

end

end A355249.P18066392156592801875

/-! ## A355249.P12155190186189034679

`(n+3)/A090369(A026741(n+3))`
-/

namespace A355249.P12155190186189034679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (A090369 (A026741 (n + 3)).toNat : ℚ)

end

end A355249.P12155190186189034679

/-! ## A355249.P18344957694524483601

`floor(n/A090369(A145051(n+2)))+1`
-/

namespace A355249.P18344957694524483601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A090369 (A145051 (n + 2)).toNat : ℚ)⌋ + 1

end

end A355249.P18344957694524483601

/-! ## A355249.P10772346600132025849

`A027750(A006218(n+3)-A000034(n))`
-/

namespace A355249.P10772346600132025849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (A006218 (n + 3) - A000034 n).toNat

end

end A355249.P10772346600132025849

/-! ## A355249.P5198175677691140883

`A056538(A006590(n+3)-A109613(n))`
-/

namespace A355249.P5198175677691140883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056538 (A006590 (n + 3) - A109613 n).toNat

end

end A355249.P5198175677691140883

/-!
# A355252: Expansion of e.g.f. exp(2*(exp(x) - 1) + 3*x).

The programs for A355252, there is no canonical definition to state claims against.
-/

/-! ## A355252.P5508220709193816357

`or(1, A127757(A077246(n)))`
-/

namespace A355252.P5508220709193816357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A127757 (A077246 n).toNat)

end

end A355252.P5508220709193816357

/-!
# A355254: Expansion of e.g.f. exp(3*(exp(x) - 1) - x).

The programs for A355254, there is no canonical definition to state claims against.
-/

/-! ## A355254.P13338210924181258720

`3*A292860(A046691(n+1))-a(n-1)` with `a(0)=1`
-/

namespace A355254.P13338210924181258720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A292860 (A046691 (n + 1)).toNat - a (n - 1)

end

end A355254.P13338210924181258720

/-!
# A355255: Irregular table read by rows: a(n,k) gives the number of distinct necklaces that appear in the following procedure: starting with the n-bead, (0,1)-necklace given by k written in binary, repeatedly take the first differences (mod 2) of the beads. 0 <= k < 2^n.

The programs for A355255, there is no canonical definition to state claims against.
-/

/-! ## A355255.P11666945949716412841

`A238762(A162997(n))+A097026(n+1)`
-/

namespace A355255.P11666945949716412841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238762 (A162997 n).toNat + A097026 (n + 1)

end

end A355255.P11666945949716412841

/-! ## A355255.P4864594791371856028

`A066099(lcm(A003242(n+1), A238279(n)))`
-/

namespace A355255.P4864594791371856028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (Int.lcm (A003242 (n + 1)) (A238279 n))

end

end A355255.P4864594791371856028

/-! ## A355255.P7723790965215298820

`A103684(A252755(n)*A300089(3*n+4))`
-/

namespace A355255.P7723790965215298820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103684 (A252755 n * A300089 (3 * n + 4)).toNat

end

end A355255.P7723790965215298820

/-! ## A355255.P8025312447558697748

`A090822(A353834(3*n+5)-A264985(n+1))`
-/

namespace A355255.P8025312447558697748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A353834 (3 * n + 5) - A264985 (n + 1)).toNat

end

end A355255.P8025312447558697748

/-! ## A355255.P9294181330166810549

`A190431(A062907(2*(n+1))-A062888(n+1))`
-/

namespace A355255.P9294181330166810549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190431 (A062907 (2 * (n + 1)) - A062888 (n + 1)).toNat

end

end A355255.P9294181330166810549

/-!
# A355257: Array read by ascending antidiagonals. A(n, k) = k! * [x^k] log((1 - x) / (1 - 2*x)) / (1 - x)^n, for 0 <= k <= n.

The programs for A355257, there is no canonical definition to state claims against.
-/

/-! ## A355257.P14392981923054322973

`A163352(A124761(n)+A101031(n))`
-/

namespace A355257.P14392981923054322973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A124761 n + A101031 n).toNat

end

end A355257.P14392981923054322973

/-! ## A355257.P16167851917700564204

`A215406(C(A072766(n), A002262(n)))`
-/

namespace A355257.P16167851917700564204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215406 (Nat.choose (A072766 n).toNat (A002262 n).toNat)

end

end A355257.P16167851917700564204

/-! ## A355257.P7456775643005644586

`A051125(A108767(n+1)^A204999(n+1))-A308813(n+1)`
-/

namespace A355257.P7456775643005644586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (SequenceMachineLib.roundAway ((A108767 (n + 1) : ℚ) ^ (A204999 (n + 1) : ℤ))).toNat - A308813 (n + 1)

end

end A355257.P7456775643005644586

/-! ## A355257.P10180090197143948814

`A163357(A139600(n)^A060637(n))`
-/

namespace A355257.P10180090197143948814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163357 (SequenceMachineLib.roundAway ((A139600 n : ℚ) ^ (A060637 n : ℤ))).toNat

end

end A355257.P10180090197143948814

/-! ## A355257.P4067781430868505973

`or(A106683(n+1), A278986(A307738(n)))`
-/

namespace A355257.P4067781430868505973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A106683 (n + 1)) (A278986 (A307738 n).toNat)

end

end A355257.P4067781430868505973

/-!
# A355258: a(n) = n! * [x^n] (1 - x)*log((1 - x)/(1 - 2*x)).

The programs for A355258, there is no canonical definition to state claims against.
-/

/-! ## A355258.P14339224368246314936

`(2^n-1)*abs(1-n)!-A052840(n)`
-/

namespace A355258.P14339224368246314936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - 1) * (Nat.factorial |1 - (n : ℤ)|.toNat : ℤ) - A052840 n

end

end A355258.P14339224368246314936

/-! ## A355258.P18225558002760796702

`A029767(n)-A052840(n)`
-/

namespace A355258.P18225558002760796702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029767 n - A052840 n

end

end A355258.P18225558002760796702

/-! ## A355258.P18006969856224851506

`A131222(∑[n]+1)-A052840(n)`
-/

namespace A355258.P18006969856224851506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131222 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - A052840 n

end

end A355258.P18006969856224851506

/-! ## A355258.P2776311341326123719

`A052840(n+1)/(n+1)-A052840(n)`
-/

namespace A355258.P2776311341326123719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052840 (n + 1) : ℚ) / (n + 1 : ℚ) - (A052840 n : ℚ)

end

end A355258.P2776311341326123719

/-! ## A355258.P6244414478665524389

`(2^n-1)*A104150(n)-A052840(n)`
-/

namespace A355258.P6244414478665524389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - 1) * A104150 n - A052840 n

end

end A355258.P6244414478665524389

/-!
# A355260: Triangle read by rows, T(n, k) = Bell(k) * |Stirling1(n, k)|.

The programs for A355260, there is no canonical definition to state claims against.
-/

/-! ## A355260.P5769556906411996561

`A000110(A002262(n))*A132393(n)`
-/

namespace A355260.P5769556906411996561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A002262 n).toNat * A132393 n

end

end A355260.P5769556906411996561

/-! ## A355260.P712137458395043097

`A000110(A163351(n))*A132393(n)`
-/

namespace A355260.P712137458395043097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A163351 n).toNat * A132393 n

end

end A355260.P712137458395043097

/-! ## A355260.P6390326101643017819

`A095149(A112367(n))*A132393(n)`
-/

namespace A355260.P6390326101643017819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (A112367 n).toNat * A132393 n

end

end A355260.P6390326101643017819

/-! ## A355260.P6491871326099632769

`A132393(n)*A318284(A059268(n))`
-/

namespace A355260.P6491871326099632769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 n * A318284 (A059268 n).toNat

end

end A355260.P6491871326099632769

/-! ## A355260.P7289895887802734609

`A000110(log2(A059268(n)))*A132393(n)`
-/

namespace A355260.P7289895887802734609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat * A132393 n

end

end A355260.P7289895887802734609

/-! ## A355260.P14329531472964312418

`A000110(A025675(n+1))*A132393(n)`
-/

namespace A355260.P14329531472964312418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A025675 (n + 1)).toNat * A132393 n

end

end A355260.P14329531472964312418

/-! ## A355260.P8233187416696610188

`A000110(A144328(n+1))*A132393(n)`
-/

namespace A355260.P8233187416696610188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A144328 (n + 1)).toNat * A132393 n

end

end A355260.P8233187416696610188

/-!
# A355261: a(n) = largest-nth-power(n, 2) * radical(n) = A000188(n) * A007947(n), where largest-nth-power(n, e) is the largest positive integer b such that b^e divides n.

The programs for A355261, the canonical program `A355261.P9102816155030024956` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355261 has offset 1).

The definition of A355261 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, A007947, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A355261.P9102816155030024956

`A000188(n+1)*A007947(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A355261

/-- `A000188(n+1)*A007947(n+1)` -/
def P9102816155030024956.Spec : Prop :=
  ∀ n, P9102816155030024956.a n = A355261 (n + 1)

theorem P9102816155030024956.correct : P9102816155030024956.Spec := by
  intro n
  simp only [A355261, Nat.add_sub_cancel]

end A355261

/-! ## A355261.P2571178158089970901

`∏{p}[n+1, #^val(n+1, #²)]*∏{p}[n+1, #]`
-/

namespace A355261.P2571178158089970901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) * (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A355261.P2571178158089970901

namespace A355261

/-- `∏{p}[n+1, #^val(n+1, #²)]*∏{p}[n+1, #]` -/
def P2571178158089970901.Spec : Prop :=
  ∀ n, (P2571178158089970901.a n : ℤ) = A355261 (n + 1)

end A355261

/-! ## A355261.P15648730696240920219

`(n+1)/A295657(n+1)`
-/

namespace A355261.P15648730696240920219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A295657 (n + 1) : ℚ)

end

end A355261.P15648730696240920219

namespace A355261

/-- `(n+1)/A295657(n+1)` -/
def P15648730696240920219.Spec : Prop :=
  ∀ n, P15648730696240920219.a n = (A355261 (n + 1) : ℚ)

end A355261

/-! ## A355261.P8478908383913376674

`sqrt((n+1)*A066990(n+1))`
-/

namespace A355261.P8478908383913376674
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n + 1 : ℤ) * A066990 (n + 1) : ℝ)

end

end A355261.P8478908383913376674

namespace A355261

/-- `sqrt((n+1)*A066990(n+1))` -/
def P8478908383913376674.Spec : Prop :=
  ∀ n, P8478908383913376674.a n = (A355261 (n + 1) : ℝ)

end A355261

/-! ## A355261.P1993208484741990606

`Δ[A211422(n)/8]*∏{p}[n+1, #]`
-/

namespace A355261.P1993208484741990606
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211422 n : ℚ) / 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

end

end A355261.P1993208484741990606

namespace A355261

/-- `Δ[A211422(n)/8]*∏{p}[n+1, #]` -/
def P1993208484741990606.Spec : Prop :=
  ∀ n, P1993208484741990606.a n = (A355261 (n + 1) : ℚ)

end A355261

/-! ## A355261.P7509613144692968810

`sqrt(A336642(n+1)+1)*∏{p}[n+1, #]`
-/

namespace A355261.P7509613144692968810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A336642 (n + 1) + 1 : ℝ) * ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℝ)

end

end A355261.P7509613144692968810

namespace A355261

/-- `sqrt(A336642(n+1)+1)*∏{p}[n+1, #]` -/
def P7509613144692968810.Spec : Prop :=
  ∀ n, P7509613144692968810.a n = (A355261 (n + 1) : ℝ)

end A355261

/-! ## A355261.P10918844046645484851

`2^∑{p}[n+1, log2(#)]*A337101(2*(n+1))`
-/

namespace A355261.P10918844046645484851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (p : ℝ)) * (A337101 (2 * (n + 1)) : ℝ)

end

end A355261.P10918844046645484851

namespace A355261

/-- `2^∑{p}[n+1, log2(#)]*A337101(2*(n+1))` -/
def P10918844046645484851.Spec : Prop :=
  ∀ n, P10918844046645484851.a n = (A355261 (n + 1) : ℝ)

end A355261

/-! ## A355261.P15575065144999791126

`A007948(n+1)*A295658(n+1)`
-/

namespace A355261.P15575065144999791126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1) * A295658 (n + 1)

end

end A355261.P15575065144999791126

namespace A355261

/-- `A007948(n+1)*A295658(n+1)` -/
def P15575065144999791126.Spec : Prop :=
  ∀ n, P15575065144999791126.a n = A355261 (n + 1)

end A355261

/-! ## A355261.P3844173645530544411

`A019554(n+1)*A336643(n+1)`
-/

namespace A355261.P3844173645530544411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1) * A336643 (n + 1)

end

end A355261.P3844173645530544411

namespace A355261

/-- `A019554(n+1)*A336643(n+1)` -/
def P3844173645530544411.Spec : Prop :=
  ∀ n, P3844173645530544411.a n = A355261 (n + 1)

end A355261

/-! ## A355261.P4674958817894759104

`A066990(n+1)*A295657(n+1)`
-/

namespace A355261.P4674958817894759104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (n + 1) * A295657 (n + 1)

end

end A355261.P4674958817894759104

namespace A355261

/-- `A066990(n+1)*A295657(n+1)` -/
def P4674958817894759104.Spec : Prop :=
  ∀ n, P4674958817894759104.a n = A355261 (n + 1)

end A355261

/-! ## A355261.P14730076995384040572

`(n+1)/A000188(A003557(n+1))`
-/

namespace A355261.P14730076995384040572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000188 (A003557 (n + 1)).toNat : ℚ)

end

end A355261.P14730076995384040572

namespace A355261

/-- `(n+1)/A000188(A003557(n+1))` -/
def P14730076995384040572.Spec : Prop :=
  ∀ n, P14730076995384040572.a n = (A355261 (n + 1) : ℚ)

end A355261

/-! ## A355261.P15660359958169030896

`(n+1)/A019554(A062378(n+1))`
-/

namespace A355261.P15660359958169030896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A019554 (A062378 (n + 1)).toNat : ℚ)

end

end A355261.P15660359958169030896

namespace A355261

/-- `(n+1)/A019554(A062378(n+1))` -/
def P15660359958169030896.Spec : Prop :=
  ∀ n, P15660359958169030896.a n = (A355261 (n + 1) : ℚ)

end A355261

/-! ## A355261.P13313007799151024371

`A064549(n+1)/A019554(n+1)`
-/

namespace A355261.P13313007799151024371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) : ℚ) / (A019554 (n + 1) : ℚ)

end

end A355261.P13313007799151024371

namespace A355261

/-- `A064549(n+1)/A019554(n+1)` -/
def P13313007799151024371.Spec : Prop :=
  ∀ n, P13313007799151024371.a n = (A355261 (n + 1) : ℚ)

end A355261

/-! ## A355261.P13600470939158436245

`A356191(n+1)/A000188(n+1)`
-/

namespace A355261.P13600470939158436245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356191 (n + 1) : ℚ) / (A000188 (n + 1) : ℚ)

end

end A355261.P13600470939158436245

namespace A355261

/-- `A356191(n+1)/A000188(n+1)` -/
def P13600470939158436245.Spec : Prop :=
  ∀ n, P13600470939158436245.a n = (A355261 (n + 1) : ℚ)

end A355261

/-! ## A355261.P16380243757718543757

`A355264(n+1)/A003557(n+1)`
-/

namespace A355261.P16380243757718543757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355264 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A355261.P16380243757718543757

namespace A355261

/-- `A355264(n+1)/A003557(n+1)` -/
def P16380243757718543757.Spec : Prop :=
  ∀ n, P16380243757718543757.a n = (A355261 (n + 1) : ℚ)

end A355261

/-! ## A355261.P10058377091830255515

`A007913(A003557(n+1))*A019554(n+1)`
-/

namespace A355261.P10058377091830255515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A003557 (n + 1)).toNat * A019554 (n + 1)

end

end A355261.P10058377091830255515

namespace A355261

/-- `A007913(A003557(n+1))*A019554(n+1)` -/
def P10058377091830255515.Spec : Prop :=
  ∀ n, P10058377091830255515.a n = A355261 (n + 1)

end A355261

/-! ## A355261.P16036955507365252049

`A369430(A348018(n+1))`
-/

namespace A355261.P16036955507365252049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369430 (A348018 (n + 1)).toNat

end

end A355261.P16036955507365252049

namespace A355261

/-- `A369430(A348018(n+1))` -/
def P16036955507365252049.Spec : Prop :=
  ∀ n, P16036955507365252049.a n = A355261 (n + 1)

end A355261

/-! ## A355261.P7475905311317441890

`A019554(A356191(n+1))`
-/

namespace A355261.P7475905311317441890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A356191 (n + 1)).toNat

end

end A355261.P7475905311317441890

namespace A355261

/-- `A019554(A356191(n+1))` -/
def P7475905311317441890.Spec : Prop :=
  ∀ n, P7475905311317441890.a n = A355261 (n + 1)

end A355261

/-! ## A355261.P1938400437279330851

`A355263(A355264(n+1))`
-/

namespace A355261.P1938400437279330851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355263 (A355264 (n + 1)).toNat

end

end A355261.P1938400437279330851

namespace A355261

/-- `A355263(A355264(n+1))` -/
def P1938400437279330851.Spec : Prop :=
  ∀ n, P1938400437279330851.a n = A355261 (n + 1)

end A355261

/-! ## A355261.P17407984492406628974

`A355263((n+1)*A000188(n+1))`
-/

namespace A355261.P17407984492406628974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355263 ((n + 1 : ℤ) * A000188 (n + 1)).toNat

end

end A355261.P17407984492406628974

namespace A355261

/-- `A355263((n+1)*A000188(n+1))` -/
def P17407984492406628974.Spec : Prop :=
  ∀ n, P17407984492406628974.a n = A355261 (n + 1)

end A355261

/-!
# A355262: Array of Fuss-Catalan numbers read by ascending antidiagonals, A(n, k) = binomial(k*n + 1, k)/(k*n + 1).

The programs for A355262, there is no canonical definition to state claims against.
-/

/-! ## A355262.P7275955347432028487

`A050493(A273712(n))`
-/

namespace A355262.P7275955347432028487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050493 (A273712 n).toNat

end

end A355262.P7275955347432028487

/-! ## A355262.P2861945273309199212

`A345379(A273712(n)+1)`
-/

namespace A355262.P2861945273309199212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345379 (A273712 n + 1).toNat

end

end A355262.P2861945273309199212

/-! ## A355262.P2037769778053642172

`A260804(10*A347618(n))`
-/

namespace A355262.P2037769778053642172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260804 (10 * A347618 n).toNat

end

end A355262.P2037769778053642172

/-! ## A355262.P1622690494851693025

`A084558(∑{d}[A273712(n), #])`
-/

namespace A355262.P1622690494851693025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A355262.P1622690494851693025

/-! ## A355262.P14074697636164064679

`and(A136019(A207619(3*(n+1))), A355576(n))`
-/

namespace A355262.P14074697636164064679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A136019 (A207619 (3 * (n + 1))).toNat) (A355576 n)

end

end A355262.P14074697636164064679

/-!
# A355263: a(n) = largest-nth-power(n, 3) * radical(n) = A053150(n) * A007947(n), where the largest-nth-power(n, e) is the largest positive integer b such that b^e divides n.

The programs for A355263, the canonical program `A355263.P11720169353840914261` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355263 has offset 1).

The definition of A355263 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, A053150, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A355263.P11720169353840914261

`A053150(n+1)*A007947(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A355263

/-- `A053150(n+1)*A007947(n+1)` -/
def P11720169353840914261.Spec : Prop :=
  ∀ n, P11720169353840914261.a n = A355263 (n + 1)

theorem P11720169353840914261.correct : P11720169353840914261.Spec := by
  intro n
  simp only [A355263, Nat.add_sub_cancel]

end A355263

/-! ## A355263.P6722820528046882253

`floor(root(A113061(n+1), 3))*∏{p}[n+1, #]`
-/

namespace A355263.P6722820528046882253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A113061 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋ * ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ)

end

end A355263.P6722820528046882253

namespace A355263

/-- `floor(root(A113061(n+1), 3))*∏{p}[n+1, #]` -/
def P6722820528046882253.Spec : Prop :=
  ∀ n, P6722820528046882253.a n = A355263 (n + 1)

end A355263

/-! ## A355263.P17533841608264907366

`∏{p}[n+1, #]*A000188(A000189(n+1))`
-/

namespace A355263.P17533841608264907366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A000188 (A000189 (n + 1)).toNat

end

end A355263.P17533841608264907366

namespace A355263

/-- `∏{p}[n+1, #]*A000188(A000189(n+1))` -/
def P17533841608264907366.Spec : Prop :=
  ∀ n, P17533841608264907366.a n = A355263 (n + 1)

end A355263

/-! ## A355263.P2301552900369625156

`∏{p}[n+1, #]*A019555(A062378(n+1))`
-/

namespace A355263.P2301552900369625156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A019555 (A062378 (n + 1)).toNat

end

end A355263.P2301552900369625156

namespace A355263

/-- `∏{p}[n+1, #]*A019555(A062378(n+1))` -/
def P2301552900369625156.Spec : Prop :=
  ∀ n, P2301552900369625156.a n = A355263 (n + 1)

end A355263

/-! ## A355263.P13577364103266270424

`∏{p}[n+1, #]*A048766(A113061(n+1))`
-/

namespace A355263.P13577364103266270424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A048766 (A113061 (n + 1)).toNat

end

end A355263.P13577364103266270424

namespace A355263

/-- `∏{p}[n+1, #]*A048766(A113061(n+1))` -/
def P13577364103266270424.Spec : Prop :=
  ∀ n, P13577364103266270424.a n = A355263 (n + 1)

end A355263

/-! ## A355263.P13406588139918754451

`∏{p}[n+1, #]*A000027(root(A008834(n+1), 3))`
-/

namespace A355263.P13406588139918754451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A000027 (SequenceMachineLib.roundAway ((A008834 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A355263.P13406588139918754451

namespace A355263

/-- `∏{p}[n+1, #]*A000027(root(A008834(n+1), 3))` -/
def P13406588139918754451.Spec : Prop :=
  ∀ n, P13406588139918754451.a n = A355263 (n + 1)

end A355263

/-! ## A355263.P10785522394770538861

`(A076618(n+1)-1)*floor(root(A113061(n+1), 3))`
-/

namespace A355263.P10785522394770538861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076618 (n + 1) - 1) * ⌊(A113061 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A355263.P10785522394770538861

namespace A355263

/-- `(A076618(n+1)-1)*floor(root(A113061(n+1), 3))` -/
def P10785522394770538861.Spec : Prop :=
  ∀ n, P10785522394770538861.a n = A355263 (n + 1)

end A355263

/-! ## A355263.P16561451065714272419

`2^∑{p}[n+1, log2(#)]*A019555((n+1)/A007948(n+1))`
-/

namespace A355263.P16561451065714272419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (p : ℝ)) * (A019555 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007948 (n + 1) : ℚ))).toNat : ℝ)

end

end A355263.P16561451065714272419

namespace A355263

/-- `2^∑{p}[n+1, log2(#)]*A019555((n+1)/A007948(n+1))` -/
def P16561451065714272419.Spec : Prop :=
  ∀ n, P16561451065714272419.a n = (A355263 (n + 1) : ℝ)

end A355263

/-! ## A355263.P5517700102001044

`2^∑{p}[n+1, log2(#)]*A048766((n+1)/A050985(n+1))`
-/

namespace A355263.P5517700102001044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (p : ℝ)) * (A048766 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A050985 (n + 1) : ℚ))).toNat : ℝ)

end

end A355263.P5517700102001044

namespace A355263

/-- `2^∑{p}[n+1, log2(#)]*A048766((n+1)/A050985(n+1))` -/
def P5517700102001044.Spec : Prop :=
  ∀ n, P5517700102001044.a n = (A355263 (n + 1) : ℝ)

end A355263

/-! ## A355263.P10894606360187055124

`A000188(A000189(n+1))*A007947(n+1)`
-/

namespace A355263.P10894606360187055124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A000189 (n + 1)).toNat * A007947 (n + 1)

end

end A355263.P10894606360187055124

namespace A355263

/-- `A000188(A000189(n+1))*A007947(n+1)` -/
def P10894606360187055124.Spec : Prop :=
  ∀ n, P10894606360187055124.a n = A355263 (n + 1)

end A355263

/-! ## A355263.P11093549629306011940

`A019555((n+1)*A071773(n+1))`
-/

namespace A355263.P11093549629306011940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 ((n + 1 : ℤ) * A071773 (n + 1)).toNat

end

end A355263.P11093549629306011940

namespace A355263

/-- `A019555((n+1)*A071773(n+1))` -/
def P11093549629306011940.Spec : Prop :=
  ∀ n, P11093549629306011940.a n = A355263 (n + 1)

end A355263

/-! ## A355263.P2262500659955311666

`A019555(A003557(n+1)*A007948(n+1))`
-/

namespace A355263.P2262500659955311666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A003557 (n + 1) * A007948 (n + 1)).toNat

end

end A355263.P2262500659955311666

namespace A355263

/-- `A019555(A003557(n+1)*A007948(n+1))` -/
def P2262500659955311666.Spec : Prop :=
  ∀ n, P2262500659955311666.a n = A355263 (n + 1)

end A355263

/-! ## A355263.P15781241738797926187

`A053166((n+1)*A000190(n+1))`
-/

namespace A355263.P15781241738797926187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 ((n + 1 : ℤ) * A000190 (n + 1)).toNat

end

end A355263.P15781241738797926187

namespace A355263

/-- `A053166((n+1)*A000190(n+1))` -/
def P15781241738797926187.Spec : Prop :=
  ∀ n, P15781241738797926187.a n = A355263 (n + 1)

end A355263

/-! ## A355263.P7913374769116104097

`A053166((n+1)²/A053166(n+1))`
-/

namespace A355263.P7913374769116104097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A053166 (n + 1) : ℚ))).toNat

end

end A355263.P7913374769116104097

namespace A355263

/-- `A053166((n+1)²/A053166(n+1))` -/
def P7913374769116104097.Spec : Prop :=
  ∀ n, P7913374769116104097.a n = A355263 (n + 1)

end A355263

/-! ## A355263.P11201557093728091005

`A015052((n+1)*A008834(n+1))`
-/

namespace A355263.P11201557093728091005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 ((n + 1 : ℤ) * A008834 (n + 1)).toNat

end

end A355263.P11201557093728091005

namespace A355263

/-- `A015052((n+1)*A008834(n+1))` -/
def P11201557093728091005.Spec : Prop :=
  ∀ n, P11201557093728091005.a n = A355263 (n + 1)

end A355263

/-! ## A355263.P15000179970190941950

`A015052((n+1)*A057521(n+1))`
-/

namespace A355263.P15000179970190941950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 ((n + 1 : ℤ) * A057521 (n + 1)).toNat

end

end A355263.P15000179970190941950

namespace A355263

/-- `A015052((n+1)*A057521(n+1))` -/
def P15000179970190941950.Spec : Prop :=
  ∀ n, P15000179970190941950.a n = A355263 (n + 1)

end A355263

/-! ## A355263.P2807864459409812177

`A015052(A170826(n+1))`
-/

namespace A355263.P2807864459409812177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A170826 (n + 1)).toNat

end

end A355263.P2807864459409812177

namespace A355263

/-- `A015052(A170826(n+1))` -/
def P2807864459409812177.Spec : Prop :=
  ∀ n, P2807864459409812177.a n = A355263 (n + 1)

end A355263

/-! ## A355263.P15045080304512647601

`A015052(A103390(n+2))`
-/

namespace A355263.P15045080304512647601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A103390 (n + 2)).toNat

end

end A355263.P15045080304512647601

namespace A355263

/-- `A015052(A103390(n+2))` -/
def P15045080304512647601.Spec : Prop :=
  ∀ n, P15045080304512647601.a n = A355263 (n + 1)

end A355263

/-! ## A355263.P3318944613803809936

`A015052((n+1)²)`
-/

namespace A355263.P3318944613803809936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 ((n + 1) ^ 2)

end

end A355263.P3318944613803809936

namespace A355263

/-- `A015052((n+1)²)` -/
def P3318944613803809936.Spec : Prop :=
  ∀ n, P3318944613803809936.a n = A355263 (n + 1)

end A355263

/-! ## A355263.P5740015589093657869

`A019555(A064549(n+1))`
-/

namespace A355263.P5740015589093657869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A064549 (n + 1)).toNat

end

end A355263.P5740015589093657869

namespace A355263

/-- `A019555(A064549(n+1))` -/
def P5740015589093657869.Spec : Prop :=
  ∀ n, P5740015589093657869.a n = A355263 (n + 1)

end A355263

/-!
# A355264: a(n) = n * largest-nth-power(n, 2) = n * A000188(n), where largest-nth-power(n, e) is the largest positive integer b such that b^e divides n.

The programs for A355264, the canonical program `A355264.P1842573885147649764` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355264 has offset 1).

The definition of A355264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355264.P11732837253981206670

`(n+1)*A000188(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A355264.P11732837253981206670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000188 (n + 1)

end

end A355264.P11732837253981206670

namespace A355264

/-- `(n+1)*A000188(n+1)` -/
def P11732837253981206670.Spec : Prop :=
  ∀ n, P11732837253981206670.a n = A355264 (n + 1)

end A355264

/-! ## A355264.P1842573885147649764

`(n+1)*∏{p}[n+1, #^val(n+1, #²)]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A355264

/-- `(n+1)*∏{p}[n+1, #^val(n+1, #²)]` -/
def P1842573885147649764.Spec : Prop :=
  ∀ n, (P1842573885147649764.a n : ℤ) = A355264 (n + 1)

theorem P1842573885147649764.correct : P1842573885147649764.Spec := by
  intro n
  simp only [A355264, Nat.add_sub_cancel]

end A355264

/-! ## A355264.P13465667520951937237

`(n+1)²/floor((n+1)/∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A355264.P13465667520951937237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (⌊(n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ)⌋ : ℚ)

end

end A355264.P13465667520951937237

namespace A355264

/-- `(n+1)²/floor((n+1)/∏{p}[n+1, #^val(n+1, #²)])` -/
def P13465667520951937237.Spec : Prop :=
  ∀ n, P13465667520951937237.a n = (A355264 (n + 1) : ℚ)

end A355264

/-! ## A355264.P10422924756158236058

`sqrt(A059479(n+1))`
-/

namespace A355264.P10422924756158236058
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A059479 (n + 1) : ℝ)

end

end A355264.P10422924756158236058

namespace A355264

/-- `sqrt(A059479(n+1))` -/
def P10422924756158236058.Spec : Prop :=
  ∀ n, P10422924756158236058.a n = (A355264 (n + 1) : ℝ)

end A355264

/-! ## A355264.P14607658768122431775

`(n+1)*sqrt(A008833(n+1))`
-/

namespace A355264.P14607658768122431775
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A008833 (n + 1) : ℝ)

end

end A355264.P14607658768122431775

namespace A355264

/-- `(n+1)*sqrt(A008833(n+1))` -/
def P14607658768122431775.Spec : Prop :=
  ∀ n, P14607658768122431775.a n = (A355264 (n + 1) : ℝ)

end A355264

/-! ## A355264.P3452986218619321966

`(n+1)²/A019554(n+1)`
-/

namespace A355264.P3452986218619321966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A019554 (n + 1) : ℚ)

end

end A355264.P3452986218619321966

namespace A355264

/-- `(n+1)²/A019554(n+1)` -/
def P3452986218619321966.Spec : Prop :=
  ∀ n, P3452986218619321966.a n = (A355264 (n + 1) : ℚ)

end A355264

/-! ## A355264.P9542720457420396748

`(n+1)*(A057918(n+1)+1)`
-/

namespace A355264.P9542720457420396748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A057918 (n + 1) + 1)

end

end A355264.P9542720457420396748

namespace A355264

/-- `(n+1)*(A057918(n+1)+1)` -/
def P9542720457420396748.Spec : Prop :=
  ∀ n, P9542720457420396748.a n = A355264 (n + 1)

end A355264

/-! ## A355264.P12481226638724765690

`(n+1)*A337101(2*(n+1))`
-/

namespace A355264.P12481226638724765690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A337101 (2 * (n + 1))

end

end A355264.P12481226638724765690

namespace A355264

/-- `(n+1)*A337101(2*(n+1))` -/
def P12481226638724765690.Spec : Prop :=
  ∀ n, P12481226638724765690.a n = A355264 (n + 1)

end A355264

/-! ## A355264.P16773464131767086294

`(n+1)*ceil(sqrt((n+1)/A007913(n+1)))`
-/

namespace A355264.P16773464131767086294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈Real.sqrt ((n + 1 : ℚ) / (A007913 (n + 1) : ℚ) : ℝ)⌉

end

end A355264.P16773464131767086294

namespace A355264

/-- `(n+1)*ceil(sqrt((n+1)/A007913(n+1)))` -/
def P16773464131767086294.Spec : Prop :=
  ∀ n, P16773464131767086294.a n = A355264 (n + 1)

end A355264

/-! ## A355264.P5803397821604333548

`(n+1)*A019554(A003557(n+1))`
-/

namespace A355264.P5803397821604333548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A019554 (A003557 (n + 1)).toNat

end

end A355264.P5803397821604333548

namespace A355264

/-- `(n+1)*A019554(A003557(n+1))` -/
def P5803397821604333548.Spec : Prop :=
  ∀ n, P5803397821604333548.a n = A355264 (n + 1)

end A355264

/-! ## A355264.P12348271806947864891

`A008833(n+1)*A019554(n+1)`
-/

namespace A355264.P12348271806947864891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (n + 1) * A019554 (n + 1)

end

end A355264.P12348271806947864891

namespace A355264

/-- `A008833(n+1)*A019554(n+1)` -/
def P12348271806947864891.Spec : Prop :=
  ∀ n, P12348271806947864891.a n = A355264 (n + 1)

end A355264

/-! ## A355264.P6430262671877832354

`A003557(n+1)*A355261(n+1)`
-/

namespace A355264.P6430262671877832354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A355261 (n + 1)

end

end A355264.P6430262671877832354

namespace A355264

/-- `A003557(n+1)*A355261(n+1)` -/
def P6430262671877832354.Spec : Prop :=
  ∀ n, P6430262671877832354.a n = A355264 (n + 1)

end A355264

/-! ## A355264.P10093919844497615420

`A000082(n+1)/A392166(n+1)`
-/

namespace A355264.P10093919844497615420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000082 (n + 1) : ℚ) / (A392166 (n + 1) : ℚ)

end

end A355264.P10093919844497615420

namespace A355264

/-- `A000082(n+1)/A392166(n+1)` -/
def P10093919844497615420.Spec : Prop :=
  ∀ n, P10093919844497615420.a n = (A355264 (n + 1) : ℚ)

end A355264

/-! ## A355264.P15679867245921335750

`A002618(n+1)/A390752(n+1)`
-/

namespace A355264.P15679867245921335750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (A390752 (n + 1) : ℚ)

end

end A355264.P15679867245921335750

namespace A355264

/-- `A002618(n+1)/A390752(n+1)` -/
def P15679867245921335750.Spec : Prop :=
  ∀ n, P15679867245921335750.a n = (A355264 (n + 1) : ℚ)

end A355264

/-! ## A355264.P13751542464278788327

`(A336642(n+1)+1)*A019554(n+1)`
-/

namespace A355264.P13751542464278788327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A336642 (n + 1) + 1) * A019554 (n + 1)

end

end A355264.P13751542464278788327

namespace A355264

/-- `(A336642(n+1)+1)*A019554(n+1)` -/
def P13751542464278788327.Spec : Prop :=
  ∀ n, P13751542464278788327.a n = A355264 (n + 1)

end A355264

/-! ## A355264.P11555118715125708114

`A102631(n+1)/A003557(A019554(n+1))`
-/

namespace A355264.P11555118715125708114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102631 (n + 1) : ℚ) / (A003557 (A019554 (n + 1)).toNat : ℚ)

end

end A355264.P11555118715125708114

namespace A355264

/-- `A102631(n+1)/A003557(A019554(n+1))` -/
def P11555118715125708114.Spec : Prop :=
  ∀ n, P11555118715125708114.a n = (A355264 (n + 1) : ℚ)

end A355264

/-! ## A355264.P14893416857198907052

`(n+1)*A117811(2*(n+1))`
-/

namespace A355264.P14893416857198907052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A117811 (2 * (n + 1))

end

end A355264.P14893416857198907052

namespace A355264

/-- `(n+1)*A117811(2*(n+1))` -/
def P14893416857198907052.Spec : Prop :=
  ∀ n, P14893416857198907052.a n = A355264 (n + 1)

end A355264

/-! ## A355264.P3286653961813792751

`(n+1)*A057918(A072905(n+1))`
-/

namespace A355264.P3286653961813792751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A057918 (A072905 (n + 1)).toNat

end

end A355264.P3286653961813792751

namespace A355264

/-- `(n+1)*A057918(A072905(n+1))` -/
def P3286653961813792751.Spec : Prop :=
  ∀ n, P3286653961813792751.a n = A355264 (n + 1)

end A355264

/-! ## A355264.P2875757897793067862

`(A309395(2*(n+1))+1)*(n+1)`
-/

namespace A355264.P2875757897793067862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A309395 (2 * (n + 1)) + 1) * (n + 1 : ℤ)

end

end A355264.P2875757897793067862

namespace A355264

/-- `(A309395(2*(n+1))+1)*(n+1)` -/
def P2875757897793067862.Spec : Prop :=
  ∀ n, P2875757897793067862.a n = A355264 (n + 1)

end A355264

/-! ## A355264.P1680798102327954625

`(n+1)*A000190(A000190(A356191(n+1)))`
-/

namespace A355264.P1680798102327954625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000190 (A000190 (A356191 (n + 1)).toNat).toNat

end

end A355264.P1680798102327954625

namespace A355264

/-- `(n+1)*A000190(A000190(A356191(n+1)))` -/
def P1680798102327954625.Spec : Prop :=
  ∀ n, P1680798102327954625.a n = A355264 (n + 1)

end A355264

/-!
# A355266: Triangle read by rows, T(n, k) = (-1)^(n-k)*Bell(k)*Stirling1(n+1, k+1), for 0 <= k <= n.

The programs for A355266, there is no canonical definition to state claims against.
-/

/-! ## A355266.P6279686038526569294

`A000110(A002262(n))*A130534(n)`
-/

namespace A355266.P6279686038526569294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A002262 n).toNat * A130534 n

end

end A355266.P6279686038526569294

/-! ## A355266.P6108658750230806548

`A000110(log2(A059268(n)))*A130534(n)`
-/

namespace A355266.P6108658750230806548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat * A130534 n

end

end A355266.P6108658750230806548

/-! ## A355266.P7782657570938092792

`A000110(A144328(n+1))*A130534(n)`
-/

namespace A355266.P7782657570938092792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A144328 (n + 1)).toNat * A130534 n

end

end A355266.P7782657570938092792

/-! ## A355266.P11186769507452055103

`A130534(n)*A321738(A059268(n))`
-/

namespace A355266.P11186769507452055103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 n * A321738 (A059268 n).toNat

end

end A355266.P11186769507452055103

/-! ## A355266.P8827935679237935285

`A127568(n)*A130534(n)`
-/

namespace A355266.P8827935679237935285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127568 n * A130534 n

end

end A355266.P8827935679237935285

/-!
# A355268: a(n) = n! * [x^n] -exp(x^2)/(x - 1).

The programs for A355268, there is no canonical definition to state claims against.
-/

/-! ## A355268.P6948151197740688624

`A122670(2*n)+n*a(n-1)` with `a(0)=1`
-/

namespace A355268.P6948151197740688624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122670 (2 * n) + (n : ℤ) * a (n - 1)

end

end A355268.P6948151197740688624

/-! ## A355268.P14919782933240882805

`A334156(∑[or(1, n)]-n)`
-/

namespace A355268.P14919782933240882805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334156 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A355268.P14919782933240882805

/-! ## A355268.P1540439050536573554

`A334156(A008619(n²))`
-/

namespace A355268.P1540439050536573554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334156 (A008619 (n ^ 2)).toNat

end

end A355268.P1540439050536573554

/-! ## A355268.P13595546543498977878

`A334156(A007590(n)+1)`
-/

namespace A355268.P13595546543498977878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334156 (A007590 n + 1).toNat

end

end A355268.P13595546543498977878

/-! ## A355268.P1215947111933074906

`A334156(A099392(n+1))`
-/

namespace A355268.P1215947111933074906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334156 (A099392 (n + 1)).toNat

end

end A355268.P1215947111933074906

/-!
# A355270: Lexicographically earliest sequence of positive integers on a square spiral such that the sum of adjacent pairs of numbers within each row, column and diagonal is distinct in that row, column and diagonal.

The programs for A355270, there is no canonical definition to state claims against.
-/

/-! ## A355270.P14256677518348532793

`A050252(A370584(n)+A134761(n))`
-/

namespace A355270.P14256677518348532793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050252 (A370584 n + A134761 n).toNat

end

end A355270.P14256677518348532793

/-! ## A355270.P4537628010326448742

`A007895(A130911(n+1)+A060818(n))`
-/

namespace A355270.P4537628010326448742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A130911 (n + 1) + A060818 n).toNat

end

end A355270.P4537628010326448742

/-! ## A355270.P15644394519660399202

`A297772(A121649(n+1)+A121649(n))`
-/

namespace A355270.P15644394519660399202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297772 (A121649 (n + 1) + A121649 n).toNat

end

end A355270.P15644394519660399202

/-! ## A355270.P17107768629444517608

`gcd(A001221(A297618(n+1)), A215588(n))`
-/

namespace A355270.P17107768629444517608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A297618 (n + 1)).toNat) (A215588 n)

end

end A355270.P17107768629444517608

/-! ## A355270.P12068472288677706977

`A328929(A000040(n+1)*A378401(3*n+5))`
-/

namespace A355270.P12068472288677706977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328929 (A000040 (n + 1) * A378401 (3 * n + 5)).toNat

end

end A355270.P12068472288677706977

/-!
# A355271: Lexicographically earliest sequence of positive integers on a square spiral such that the product of adjacent pairs of numbers within each row, column and diagonal is distinct in that row, column and diagonal.

The programs for A355271, there is no canonical definition to state claims against.
-/

/-! ## A355271.P11876191989297814558

`A366311(A000005(2^(n+1))-1)`
-/

namespace A355271.P11876191989297814558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366311 (A000005 (2 ^ (n + 1)) - 1).toNat

end

end A355271.P11876191989297814558

/-! ## A355271.P13587363008345678931

`A366311(n+1)+A000007(A014160(n))`
-/

namespace A355271.P13587363008345678931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366311 (n + 1) + A000007 (A014160 n).toNat

end

end A355271.P13587363008345678931

/-! ## A355271.P1743436833498824774

`A010051(A066195(n))*A366311(n+1)`
-/

namespace A355271.P1743436833498824774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A066195 n).toNat * A366311 (n + 1)

end

end A355271.P1743436833498824774

/-! ## A355271.P7461205592067337826

`gcd(A010815(A173723(n)), A366311(n+1))`
-/

namespace A355271.P7461205592067337826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010815 (A173723 (n + 10)).toNat) (A366311 (n + 1))

end

end A355271.P7461205592067337826

/-! ## A355271.P1984183608687022310

`A366311(n+1)+A010054(A256810(n+1))`
-/

namespace A355271.P1984183608687022310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366311 (n + 1) + A010054 (A256810 (n + 1)).toNat

end

end A355271.P1984183608687022310

/-!
# A355272: Primes p for which p + q is not a multiple of 4, where q is the previous prime if p == 1 (mod 3) or else the next prime.

The programs for A355272, there is no canonical definition to state claims against.
-/

/-! ## A355272.P3074642141104587940

`A354726(A276089(n+1))`
-/

namespace A355272.P3074642141104587940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354726 (A276089 (n + 1)).toNat

end

end A355272.P3074642141104587940

/-!
# A355273: Primes p for which p + q is a multiple of 4, where q is the previous prime if p == 2 (mod 3) or the next prime otherwise.

The programs for A355273, there is no canonical definition to state claims against.
-/

/-! ## A355273.P9008600842631763009

`A242992(∪[A243012(n+1)+1, Δ[6^n]])`
-/

namespace A355273.P9008600842631763009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243012 (n + 1) + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242992 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A355273.P9008600842631763009

/-!
# A355274: Numbers having more even than odd digits when written in base 3.

The programs for A355274, there is no canonical definition to state claims against.
-/

/-! ## A355274.P1248414034493578122

`lt[A352779(A120880(n)), n+1]`
-/

namespace A355274.P1248414034493578122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352779 (A120880 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A355274.P1248414034493578122

/-! ## A355274.P1813400442929671094

`lt[A120880(n)², A081611(n+1)]`
-/

namespace A355274.P1813400442929671094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081611 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355274.P1813400442929671094

/-! ## A355274.P4402661039403681774

`lt[C(28, A062756(n)), A039000(n+1)]`
-/

namespace A355274.P4402661039403681774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 28 (A062756 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039000 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A355274.P4402661039403681774

/-! ## A355274.P1548105437441881348

`lt[A120880(n)², 2*A131996(n+1)]`
-/

namespace A355274.P1548105437441881348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131996 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355274.P1548105437441881348

/-! ## A355274.P17196116265890537469

`lt[A062756(n), A055642(A004488(n))]`
-/

namespace A355274.P17196116265890537469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A004488 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355274.P17196116265890537469

/-! ## A355274.P6506433157491822188

`lt[A062756(n), A055642(A007095(n))]`
-/

namespace A355274.P6506433157491822188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355274.P6506433157491822188

/-! ## A355274.P7085879195599877945

`lt[A062756(n), A262438(A134025(n))]`
-/

namespace A355274.P7085879195599877945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262438 (A134025 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355274.P7085879195599877945

/-! ## A355274.P8787187625789056254

`lt[A120880(n), A081611(A131996(n+1))]`
-/

namespace A355274.P8787187625789056254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081611 (A131996 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355274.P8787187625789056254

/-! ## A355274.P9062721256598612027

`lt[A272871(A120880(n)), A001358(n+1)]`
-/

namespace A355274.P9062721256598612027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272871 (A120880 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355274.P9062721256598612027

/-! ## A355274.P2307970255488959895

`lt[A272871(A120880(n)), A190767(n+1)]`
-/

namespace A355274.P2307970255488959895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272871 (A120880 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190767 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355274.P2307970255488959895

/-!
# A355275: Numbers having more odd than even digits when written in base 3.

The programs for A355275, the canonical program `A355275.P3750325120269682961` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355275 has offset 1).

The definition of A355275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1872 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A355275.P3750325120269682961

`lt[3/acot(n), 9^A062756(n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A355275

/-- `lt[3/acot(n), 9^A062756(n)]` -/
def P3750325120269682961.Spec : Prop :=
  ∀ n, (P3750325120269682961.a n : ℤ) = A355275 (n + 1)

theorem P3750325120269682961.correct : P3750325120269682961.Spec := by
  intro n
  simp only [A355275, Nat.add_sub_cancel]

end A355275

/-! ## A355275.P2168978485160286485

`lt[2*A061392(n+1), A120880(n)²]`
-/

namespace A355275.P2168978485160286485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355275.P2168978485160286485

namespace A355275

/-- `lt[2*A061392(n+1), A120880(n)²]` -/
def P2168978485160286485.Spec : Prop :=
  ∀ n, (P2168978485160286485.a n : ℤ) = A355275 (n + 1)

end A355275

/-! ## A355275.P14819455101616431170

`lt[A061392(n), A007590(A120880(n))]`
-/

namespace A355275.P14819455101616431170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (A120880 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355275.P14819455101616431170

namespace A355275

/-- `lt[A061392(n), A007590(A120880(n))]` -/
def P14819455101616431170.Spec : Prop :=
  ∀ n, (P14819455101616431170.a n : ℤ) = A355275 (n + 1)

end A355275

/-! ## A355275.P8591525181149362551

`lt[A137305(3*n+2), A001019(n-2*A189641(n+1))]`
-/

namespace A355275.P8591525181149362551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137305 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 ((n : ℤ) - 2 * A189641 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355275.P8591525181149362551

namespace A355275

/-- `lt[A137305(3*n+2), A001019(n-2*A189641(n+1))]` -/
def P8591525181149362551.Spec : Prop :=
  ∀ n, (P8591525181149362551.a n : ℤ) = A355275 (n + 1)

end A355275

/-! ## A355275.P17513566231385432653

`lt[A137305(3*n+2), A001019(2*A189674(n+1)-n)]`
-/

namespace A355275.P17513566231385432653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137305 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 (2 * A189674 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355275.P17513566231385432653

namespace A355275

/-- `lt[A137305(3*n+2), A001019(2*A189674(n+1)-n)]` -/
def P17513566231385432653.Spec : Prop :=
  ∀ n, (P17513566231385432653.a n : ℤ) = A355275 (n + 1)

end A355275

/-! ## A355275.P1013613130971101290

`lt[A131996(n+1), A033638(A120880(n))]`
-/

namespace A355275.P1013613130971101290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A120880 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355275.P1013613130971101290

namespace A355275

/-- `lt[A131996(n+1), A033638(A120880(n))]` -/
def P1013613130971101290.Spec : Prop :=
  ∀ n, (P1013613130971101290.a n : ℤ) = A355275 (n + 1)

end A355275

/-! ## A355275.P13631263807641477024

`lt[A284797(3*(n+1)), A007088(A120880(n))]`
-/

namespace A355275.P13631263807641477024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284797 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A120880 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A355275.P13631263807641477024

namespace A355275

/-- `lt[A284797(3*(n+1)), A007088(A120880(n))]` -/
def P13631263807641477024.Spec : Prop :=
  ∀ n, (P13631263807641477024.a n : ℤ) = A355275 (n + 1)

end A355275

/-!
# A355277: Largest n-digit number k with only odd digits such that the k-th triangular number also has only odd digits.

The programs for A355277, there is no canonical definition to state claims against.
-/

/-! ## A355277.P11792334201942350592

`A347475(∑[A355276(n+1)])`
-/

namespace A355277.P11792334201942350592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347475 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A355277.P11792334201942350592

/-!
# A355280: Binary numbers (digits in {0, 1}) with no run of digits with length < 2.

The programs for A355280, the canonical program `A355280.P12882028884349807086` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355280 has offset 1).

The definition of A355280 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, A033015, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A355280.P12882028884349807086

`A007088(A033015(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A355280

/-- `A007088(A033015(n+1))` -/
def P12882028884349807086.Spec : Prop :=
  ∀ n, P12882028884349807086.a n = A355280 (n + 1)

theorem P12882028884349807086.correct : P12882028884349807086.Spec := by
  intro n
  simp only [A355280, Nat.add_sub_cancel]

end A355280

/-! ## A355280.P6554712324592406635

`A007088(∩[A144795(n+1), A342699(n+1)])`
-/

namespace A355280.P6554712324592406635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342699 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A355280.P6554712324592406635

namespace A355280

/-- `A007088(∩[A144795(n+1), A342699(n+1)])` -/
def P6554712324592406635.Spec : Prop :=
  ∀ n, P6554712324592406635.a n = A355280 (n + 1)

end A355280

/-! ## A355280.P8605915513773186976

`A007088(∩[A154708(n+1), A048717(n)])`
-/

namespace A355280.P8605915513773186976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048717 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A355280.P8605915513773186976

namespace A355280

/-- `A007088(∩[A154708(n+1), A048717(n)])` -/
def P8605915513773186976.Spec : Prop :=
  ∀ n, P8605915513773186976.a n = A355280 (n + 1)

end A355280

/-! ## A355280.P5622736875443944227

`A007088(∩[A263737(n+1), A048717(n)])`
-/

namespace A355280.P5622736875443944227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048717 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A355280.P5622736875443944227

namespace A355280

/-- `A007088(∩[A263737(n+1), A048717(n)])` -/
def P5622736875443944227.Spec : Prop :=
  ∀ n, P5622736875443944227.a n = A355280 (n + 1)

end A355280

/-! ## A355280.P1063418372796434151

`A097256(∩[A263737(n+1), A048717(n)])/9`
-/

namespace A355280.P1063418372796434151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048717 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097256 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) : ℚ) / 9

end

end A355280.P1063418372796434151

namespace A355280

/-- `A097256(∩[A263737(n+1), A048717(n)])/9` -/
def P1063418372796434151.Spec : Prop :=
  ∀ n, P1063418372796434151.a n = (A355280 (n + 1) : ℚ)

end A355280

/-! ## A355280.P2667822074350488974

`A185544(2*A033015(n+1))`
-/

namespace A355280.P2667822074350488974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A033015 (n + 1)).toNat

end

end A355280.P2667822074350488974

namespace A355280

/-- `A185544(2*A033015(n+1))` -/
def P2667822074350488974.Spec : Prop :=
  ∀ n, P2667822074350488974.a n = A355280 (n + 1)

end A355280

/-! ## A355280.P5576478182023995414

`A007088(∩[A279064(n+1), A048717(n)])`
-/

namespace A355280.P5576478182023995414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048717 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A355280.P5576478182023995414

namespace A355280

/-- `A007088(∩[A279064(n+1), A048717(n)])` -/
def P5576478182023995414.Spec : Prop :=
  ∀ n, P5576478182023995414.a n = A355280 (n + 1)

end A355280

/-! ## A355280.P16575791971462733941

`A097256(∩[A279064(n+1), A048717(n)])/9`
-/

namespace A355280.P16575791971462733941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048717 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097256 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) : ℚ) / 9

end

end A355280.P16575791971462733941

namespace A355280

/-- `A097256(∩[A279064(n+1), A048717(n)])/9` -/
def P16575791971462733941.Spec : Prop :=
  ∀ n, P16575791971462733941.a n = (A355280 (n + 1) : ℚ)

end A355280

/-! ## A355280.P7280353654506763113

`A099820(∩[A279064(n+1), A048717(n)])/10`
-/

namespace A355280.P7280353654506763113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048717 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099820 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) : ℚ) / 10

end

end A355280.P7280353654506763113

namespace A355280

/-- `A099820(∩[A279064(n+1), A048717(n)])/10` -/
def P7280353654506763113.Spec : Prop :=
  ∀ n, P7280353654506763113.a n = (A355280 (n + 1) : ℚ)

end A355280

/-!
# A355281: Number of pairs of nested Dyck paths from (0,0) to (n,n) such that the upper path only touches the diagonal at its endpoints.

The programs for A355281, there is no canonical definition to state claims against.
-/

/-! ## A355281.P18027376686360607579

`A378112(∑[n+3])`
-/

namespace A355281.P18027376686360607579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378112 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A355281.P18027376686360607579

/-! ## A355281.P5278042752313378384

`A253138((n+1)!)+1`
-/

namespace A355281.P5278042752313378384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253138 (Nat.factorial (n + 1)) + 1

end

end A355281.P5278042752313378384

/-!
# A355284: Expansion of e.g.f. 1 / (1 + x + x^2/2 + log(1 - x)).

The programs for A355284, there is no canonical definition to state claims against.
-/

/-! ## A355284.P13836131162687297563

`A257687(A038205(n))+A038205(n)`
-/

namespace A355284.P13836131162687297563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257687 (A038205 n).toNat + A038205 n

end

end A355284.P13836131162687297563

/-! ## A355284.P7155270445474603268

`A335595(n)/A006530(A000302(n))`
-/

namespace A355284.P7155270445474603268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335595 n : ℚ) / (A006530 (A000302 n).toNat : ℚ)

end

end A355284.P7155270445474603268

/-! ## A355284.P16607507898178513211

`A335595(n)/A020639(A000142(n))`
-/

namespace A355284.P16607507898178513211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335595 n : ℚ) / (A020639 (A000142 n).toNat : ℚ)

end

end A355284.P16607507898178513211

/-! ## A355284.P17267290532257827022

`A335595(n)/A020639(A189282(n))`
-/

namespace A355284.P17267290532257827022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335595 n : ℚ) / (A020639 (A189282 n).toNat : ℚ)

end

end A355284.P17267290532257827022

/-! ## A355284.P12359188791272236287

`A335595(n)/A020639(A189283(n))`
-/

namespace A355284.P12359188791272236287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335595 n : ℚ) / (A020639 (A189283 n).toNat : ℚ)

end

end A355284.P12359188791272236287

/-!
# A355285: Expansion of e.g.f. 1 / (1 + x + x^2/2 + x^3/3 + log(1 - x)).

The programs for A355285, there is no canonical definition to state claims against.
-/

/-! ## A355285.P8777853352922890246

`A257687(A047865(n))+A047865(n)`
-/

namespace A355285.P8777853352922890246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257687 (A047865 n).toNat + A047865 n

end

end A355285.P8777853352922890246

/-! ## A355285.P16045424265982245011

`A293050(n)/A081604(A029856(n+1))`
-/

namespace A355285.P16045424265982245011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293050 n : ℚ) / (A081604 (A029856 (n + 1)).toNat : ℚ)

end

end A355285.P16045424265982245011

/-! ## A355285.P18140694716070735617

`A293050(n)/A081604(A029868(n+5))`
-/

namespace A355285.P18140694716070735617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293050 n : ℚ) / (A081604 (A029868 (n + 5)).toNat : ℚ)

end

end A355285.P18140694716070735617

/-! ## A355285.P491646226380019689

`A293050(n)/A081604(A029869(n+6))`
-/

namespace A355285.P491646226380019689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293050 n : ℚ) / (A081604 (A029869 (n + 6)).toNat : ℚ)

end

end A355285.P491646226380019689

/-! ## A355285.P18409072738924011994

`A339628(∑[A000040(n+1)^(A072670(n)%2)])`
-/

namespace A355285.P18409072738924011994
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (Int.tmod (A072670 n) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339628 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A355285.P18409072738924011994

/-!
# A355286: Highly composite numbers that are not a product of two highly composite numbers greater than 1.

The programs for A355286, there is no canonical definition to state claims against.
-/

/-! ## A355286.P8025469690093222295

`A287142(A166087(n))`
-/

namespace A355286.P8025469690093222295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287142 (A166087 n).toNat

end

end A355286.P8025469690093222295

/-! ## A355286.P14820160659582849702

`record[A225641(3*n)*A322305(n)]`
-/

namespace A355286.P14820160659582849702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225641 (3 * n) * A322305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355286.P14820160659582849702

/-! ## A355286.P8810328367321980702

`record[gcd(A319191(3*n+2), A325767(n+1))]`
-/

namespace A355286.P8810328367321980702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A319191 (3 * n + 2)) (A325767 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355286.P8810328367321980702

/-!
# A355287: E.g.f. satisfies A(x) = 1/(1 - x)^(x^2 * A(x)).

The programs for A355287, there is no canonical definition to state claims against.
-/

/-! ## A355287.P4148925112726463576

`A375639(n)/A000005(A075022(n+1))`
-/

namespace A355287.P4148925112726463576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375639 n : ℚ) / (A000005 (A075022 (n + 1)).toNat : ℚ)

end

end A355287.P4148925112726463576

/-! ## A355287.P13905102523135805735

`A014682(A375639(n)+A000007(n))`
-/

namespace A355287.P13905102523135805735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A375639 n + A000007 n).toNat

end

end A355287.P13905102523135805735

/-! ## A355287.P1990891937282424071

`gcd(A014682(A375639(n)), A186683(3*n+4))`
-/

namespace A355287.P1990891937282424071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014682 (A375639 n).toNat) (A186683 (3 * n + 4))

end

end A355287.P1990891937282424071

/-!
# A355288: a(0)=1, a(1)=3, a(2)=7; thereafter a(n) = a(n-1) + a(n-2) + 1.

The programs for A355288, the canonical program `A355288.P3029370886923641980` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355288 has offset 0).

The definition of A355288 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A355288.P3029370886923641980`, by `A355288.P3029370886923641980.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A355288.P3029370886923641980

`a(n-1)+a(n-2)+1` with `a(0)=1, a(1)=3, a(2)=7`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A355288

/-- `a(n-1)+a(n-2)+1` -/
def P3029370886923641980.Spec : Prop :=
  ∀ n, (P3029370886923641980.a n : ℤ) = A355288 n

theorem P3029370886923641980.correct : P3029370886923641980.Spec := by
  intro n
  simp only [A355288]

end A355288

/-! ## A355288.P18104131142109742332

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=11`
-/

namespace A355288.P18104131142109742332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7, 11] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A355288.P18104131142109742332

namespace A355288

/-- `2*a(n-1)-a(n-3)` -/
def P18104131142109742332.Spec : Prop :=
  ∀ n, P18104131142109742332.a n = A355288 n

end A355288

/-! ## A355288.P9066302601666585999

`or(3, round(ϕ*a(n-1)))` with `a(0)=1`
-/

namespace A355288.P9066302601666585999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 3 (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ)))

end

end A355288.P9066302601666585999

namespace A355288

/-- `or(3, round(ϕ*a(n-1)))` -/
def P9066302601666585999.Spec : Prop :=
  ∀ n, P9066302601666585999.a n = A355288 n

end A355288

/-! ## A355288.P14725872909490551003

`ogf((1+x+x^2-2x^3)/(1-2x+x^3))`
-/

namespace A355288.P14725872909490551003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, -2] [1, -2, 0, 1] n

end

end A355288.P14725872909490551003

namespace A355288

/-- `ogf((1+x+x^2-2x^3)/(1-2x+x^3))` -/
def P14725872909490551003.Spec : Prop :=
  ∀ n, P14725872909490551003.a n = A355288 n

end A355288

/-! ## A355288.P1850096616921478290

`or(3, a(n-1)+a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A355288.P1850096616921478290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.lor 3 (a (n - 1) + a (n - 2))

end

end A355288.P1850096616921478290

namespace A355288

/-- `or(3, a(n-1)+a(n-2))` -/
def P1850096616921478290.Spec : Prop :=
  ∀ n, (P1850096616921478290.a n : ℤ) = A355288 n

end A355288

/-! ## A355288.P15288297232517095609

`3-(2%n-a(n-1)-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A355288.P15288297232517095609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 - (((2 % n : ℕ) : ℤ) - a (n - 1) - a (n - 2))

end

end A355288.P15288297232517095609

namespace A355288

/-- `3-(2%n-a(n-1)-a(n-2))` -/
def P15288297232517095609.Spec : Prop :=
  ∀ n, P15288297232517095609.a n = A355288 n

end A355288

/-! ## A355288.P12125571698209835466

`record[2*A006355(n)-1]`
-/

namespace A355288.P12125571698209835466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006355 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355288.P12125571698209835466

namespace A355288

/-- `record[2*A006355(n)-1]` -/
def P12125571698209835466.Spec : Prop :=
  ∀ n, P12125571698209835466.a n = A355288 n

end A355288

/-! ## A355288.P8116407445864881541

`2*A128588(n+1)-1`
-/

namespace A355288.P8116407445864881541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128588 (n + 1) - 1

end

end A355288.P8116407445864881541

namespace A355288

/-- `2*A128588(n+1)-1` -/
def P8116407445864881541.Spec : Prop :=
  ∀ n, P8116407445864881541.a n = A355288 n

end A355288

/-! ## A355288.P13351736330066256598

`or(1, A179999(2*n+1))`
-/

namespace A355288.P13351736330066256598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A179999 (2 * n + 1))

end

end A355288.P13351736330066256598

namespace A355288

/-- `or(1, A179999(2*n+1))` -/
def P13351736330066256598.Spec : Prop :=
  ∀ n, P13351736330066256598.a n = A355288 n

end A355288

/-! ## A355288.P6513169165947143206

`a(n-1)+4*A000045(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A355288.P6513169165947143206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + 4 * A000045 (n - 1)

end

end A355288.P6513169165947143206

namespace A355288

/-- `a(n-1)+4*A000045(n-1)` -/
def P6513169165947143206.Spec : Prop :=
  ∀ n, P6513169165947143206.a n = A355288 n

end A355288

/-! ## A355288.P5493714149905874937

`A022403(n)-A000038(n)`
-/

namespace A355288.P5493714149905874937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022403 n - A000038 n

end

end A355288.P5493714149905874937

namespace A355288

/-- `A022403(n)-A000038(n)` -/
def P5493714149905874937.Spec : Prop :=
  ∀ n, P5493714149905874937.a n = A355288 n

end A355288

/-! ## A355288.P7411812288280947768

`and(A022403(n), A153881(n+1))`
-/

namespace A355288.P7411812288280947768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A022403 n) (A153881 (n + 1))

end

end A355288.P7411812288280947768

namespace A355288

/-- `and(A022403(n), A153881(n+1))` -/
def P7411812288280947768.Spec : Prop :=
  ∀ n, P7411812288280947768.a n = A355288 n

end A355288

/-! ## A355288.P9644058991443318548

`A094707(2*n)+∑[A329723(n)]`
-/

namespace A355288.P9644058991443318548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094707 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A355288.P9644058991443318548

namespace A355288

/-- `A094707(2*n)+∑[A329723(n)]` -/
def P9644058991443318548.Spec : Prop :=
  ∀ n, P9644058991443318548.a n = A355288 n

end A355288

/-! ## A355288.P5402841872770140994

`A000045(n+1)*A040002(n)-1`
-/

namespace A355288.P5402841872770140994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A040002 n - 1

end

end A355288.P5402841872770140994

namespace A355288

/-- `A000045(n+1)*A040002(n)-1` -/
def P5402841872770140994.Spec : Prop :=
  ∀ n, P5402841872770140994.a n = A355288 n

end A355288

/-! ## A355288.P13730288407593987768

`A022403(n)%A111414(n)`
-/

namespace A355288.P13730288407593987768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022403 n) (A111414 n)

end

end A355288.P13730288407593987768

namespace A355288

/-- `A022403(n)%A111414(n)` -/
def P13730288407593987768.Spec : Prop :=
  ∀ n, P13730288407593987768.a n = A355288 n

end A355288

/-! ## A355288.P12303939826289982915

`and(A022403(n), A126646(n))`
-/

namespace A355288.P12303939826289982915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A022403 n) (A126646 n)

end

end A355288.P12303939826289982915

namespace A355288

/-- `and(A022403(n), A126646(n))` -/
def P12303939826289982915.Spec : Prop :=
  ∀ n, P12303939826289982915.a n = A355288 n

end A355288

/-! ## A355288.P4172595361826087492

`and(A003261(n+1), A022403(n))`
-/

namespace A355288.P4172595361826087492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003261 (n + 1)) (A022403 n)

end

end A355288.P4172595361826087492

namespace A355288

/-- `and(A003261(n+1), A022403(n))` -/
def P4172595361826087492.Spec : Prop :=
  ∀ n, P4172595361826087492.a n = A355288 n

end A355288

/-! ## A355288.P10226338840014297439

`and(A022403(n), A055580(n))`
-/

namespace A355288.P10226338840014297439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A022403 n) (A055580 n)

end

end A355288.P10226338840014297439

namespace A355288

/-- `and(A022403(n), A055580(n))` -/
def P10226338840014297439.Spec : Prop :=
  ∀ n, P10226338840014297439.a n = A355288 n

end A355288

/-! ## A355288.P1989809130582096623

`and(A022403(n), A211386(n))`
-/

namespace A355288.P1989809130582096623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A022403 n) (A211386 n)

end

end A355288.P1989809130582096623

namespace A355288

/-- `and(A022403(n), A211386(n))` -/
def P1989809130582096623.Spec : Prop :=
  ∀ n, P1989809130582096623.a n = A355288 n

end A355288

/-!
# A355291: Expansion of e.g.f. exp(exp(x)*(exp(x) + 1) - 2).

The programs for A355291, there is no canonical definition to state claims against.
-/

/-! ## A355291.P17663073125726615645

`A355423(∑[n+3])`
-/

namespace A355291.P17663073125726615645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355423 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A355291.P17663073125726615645

/-! ## A355291.P6242119388062876277

`record[A355423(A165157(n))]`
-/

namespace A355291.P6242119388062876277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355423 (A165157 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355291.P6242119388062876277

/-! ## A355291.P13173495150444102814

`record[A355423(∑[A262672(n)])]`
-/

namespace A355291.P13173495150444102814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262672 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355423 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355291.P13173495150444102814

/-! ## A355291.P5377193224195992808

`record[gcd(A055138(n), A355423(n))]`
-/

namespace A355291.P5377193224195992808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055138 n) (A355423 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A355291.P5377193224195992808

/-!
# A355292: a(n) = Sum_{k=1..n} |Stirling1(n,k)| * Catalan(k-1).

The programs for A355292, there is no canonical definition to state claims against.
-/

/-! ## A355292.P16433748397637979899

`A086662(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A355292.P16433748397637979899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A086662 n + (n : ℤ) * a (n - 1)

end

end A355292.P16433748397637979899

/-! ## A355292.P5666984598906402935

`A194986(A001564(n)+n)`
-/

namespace A355292.P5666984598906402935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194986 (A001564 n + (n : ℤ)).toNat

end

end A355292.P5666984598906402935

/-!
# A355293: Expansion of e.g.f. 1 / (1 - x - x^2/2 - x^3/3).

The programs for A355293, there is no canonical definition to state claims against.
-/

/-! ## A355293.P2834929557938032324

`A350680(n)+C(n, 2)`
-/

namespace A355293.P2834929557938032324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350680 n + (Nat.choose n 2 : ℤ)

end

end A355293.P2834929557938032324

/-! ## A355293.P1278468304994638168

`A350680(n)+A001465(n)`
-/

namespace A355293.P1278468304994638168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350680 n + A001465 n

end

end A355293.P1278468304994638168

/-!
# A355294: Expansion of e.g.f. 1 / (1 - x - x^2/2 - x^3/3 - x^4/4).

The programs for A355294, there is no canonical definition to state claims against.
-/

/-! ## A355294.P16103010697672214096

`A130350(A020497(n!))`
-/

namespace A355294.P16103010697672214096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130350 (A020497 (Nat.factorial n)).toNat

end

end A355294.P16103010697672214096

/-! ## A355294.P16900714175288956130

`A267110(A182969(n))+1`
-/

namespace A355294.P16900714175288956130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267110 (A182969 n).toNat + 1

end

end A355294.P16900714175288956130

/-!
# A355295: Number of distinct board states reachable in n jumps in European Peg Solitaire.

The programs for A355295, there is no canonical definition to state claims against.
-/

/-! ## A355295.P17362668397334730426

`xor(n, A219652(A057080(n)))`
-/

namespace A355295.P17362668397334730426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A219652 (A057080 n).toNat)

end

end A355295.P17362668397334730426

/-!
# A355297: a(n) = A007088(n) mod n.

The programs for A355297, the canonical program `A355297.P1889997349875966840` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A355297 has offset 1).

The definition of A355297 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A355297.P1889997349875966840

`A007088(n+1)-(n+1)*floor(A007088(n+1)/(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A355297

/-- `A007088(n+1)-(n+1)*floor(A007088(n+1)/(n+1))` -/
def P1889997349875966840.Spec : Prop :=
  ∀ n, P1889997349875966840.a n = A355297 (n + 1)

theorem P1889997349875966840.correct : P1889997349875966840.Spec := by
  intro n
  simp only [A355297, Nat.add_sub_cancel]

end A355297

/-! ## A355297.P15393121531957987038

`A007088(n+1)%(n+1)`
-/

namespace A355297.P15393121531957987038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007088 (n + 1)) (n + 1 : ℤ)

end

end A355297.P15393121531957987038

namespace A355297

/-- `A007088(n+1)%(n+1)` -/
def P15393121531957987038.Spec : Prop :=
  ∀ n, P15393121531957987038.a n = A355297 (n + 1)

end A355297

/-! ## A355297.P14781599143219204401

`A228071(n+1)%(n+1)`
-/

namespace A355297.P14781599143219204401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228071 (n + 1)) (n + 1 : ℤ)

end

end A355297.P14781599143219204401

namespace A355297

/-- `A228071(n+1)%(n+1)` -/
def P14781599143219204401.Spec : Prop :=
  ∀ n, P14781599143219204401.a n = A355297 (n + 1)

end A355297

/-! ## A355297.P6306720137203212768

`∑[A138342(n+1)]%(n+1)`
-/

namespace A355297.P6306720137203212768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A355297.P6306720137203212768

namespace A355297

/-- `∑[A138342(n+1)]%(n+1)` -/
def P6306720137203212768.Spec : Prop :=
  ∀ n, P6306720137203212768.a n = A355297 (n + 1)

end A355297

/-! ## A355297.P1226525745044968898

`Δ[A067894(n)]%(n+1)`
-/

namespace A355297.P1226525745044968898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A355297.P1226525745044968898

namespace A355297

/-- `Δ[A067894(n)]%(n+1)` -/
def P1226525745044968898.Spec : Prop :=
  ∀ n, P1226525745044968898.a n = A355297 (n + 1)

end A355297

/-! ## A355297.P6569125835104307660

`A269130(n+1)%(n+1)`
-/

namespace A355297.P6569125835104307660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269130 (n + 1)) (n + 1 : ℤ)

end

end A355297.P6569125835104307660

namespace A355297

/-- `A269130(n+1)%(n+1)` -/
def P6569125835104307660.Spec : Prop :=
  ∀ n, P6569125835104307660.a n = A355297 (n + 1)

end A355297

/-! ## A355297.P7272278515707873676

`sqrt(A063009(n+1))%(n+1)`
-/

namespace A355297.P7272278515707873676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A063009 (n + 1) : ℝ))) (n + 1 : ℤ)

end

end A355297.P7272278515707873676

namespace A355297

/-- `sqrt(A063009(n+1))%(n+1)` -/
def P7272278515707873676.Spec : Prop :=
  ∀ n, P7272278515707873676.a n = A355297 (n + 1)

end A355297

/-! ## A355297.P4557382214069682479

`(A099820(n+1)/10)%(n+1)`
-/

namespace A355297.P4557382214069682479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A099820 (n + 1) : ℚ) / 10)) (n + 1 : ℤ)

end

end A355297.P4557382214069682479

namespace A355297

/-- `(A099820(n+1)/10)%(n+1)` -/
def P4557382214069682479.Spec : Prop :=
  ∀ n, P4557382214069682479.a n = A355297 (n + 1)

end A355297

/-! ## A355297.P12364365382691422435

`A185544(2*(n+1))%(n+1)`
-/

namespace A355297.P12364365382691422435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185544 (2 * (n + 1))) (n + 1 : ℤ)

end

end A355297.P12364365382691422435

namespace A355297

/-- `A185544(2*(n+1))%(n+1)` -/
def P12364365382691422435.Spec : Prop :=
  ∀ n, P12364365382691422435.a n = A355297 (n + 1)

end A355297

/-! ## A355297.P17031232927915293353

`A352575(A113233(n+1))%(n+1)`
-/

namespace A355297.P17031232927915293353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352575 (A113233 (n + 1)).toNat) (n + 1 : ℤ)

end

end A355297.P17031232927915293353

namespace A355297

/-- `A352575(A113233(n+1))%(n+1)` -/
def P17031232927915293353.Spec : Prop :=
  ∀ n, P17031232927915293353.a n = A355297 (n + 1)

end A355297

/-! ## A355297.P6592806283577002386

`record[A182620(n+1)]%(n+1)`
-/

namespace A355297.P6592806283577002386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n + 1 : ℤ)

end

end A355297.P6592806283577002386

namespace A355297

/-- `record[A182620(n+1)]%(n+1)` -/
def P6592806283577002386.Spec : Prop :=
  ∀ n, P6592806283577002386.a n = A355297 (n + 1)

end A355297

/-! ## A355297.P16549621217518720580

`A007089(A005836(n+2))%(n+1)`
-/

namespace A355297.P16549621217518720580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007089 (A005836 (n + 2)).toNat) (n + 1 : ℤ)

end

end A355297.P16549621217518720580

namespace A355297

/-- `A007089(A005836(n+2))%(n+1)` -/
def P16549621217518720580.Spec : Prop :=
  ∀ n, P16549621217518720580.a n = A355297 (n + 1)

end A355297

/-!
# A355299: Largest prime factor of n-th term in Look and Say sequence A005150, with a(1)=1.

The programs for A355299, there is no canonical definition to state claims against.
-/

/-! ## A355299.P5589927699152017144

`A007090(A098097(n+1))/A125220(A363126(n))`
-/

namespace A355299.P5589927699152017144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007090 (A098097 (n + 1)).toNat : ℚ) / (A125220 (A363126 n).toNat : ℚ)

end

end A355299.P5589927699152017144

