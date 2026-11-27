import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
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
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
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
import SequenceMachineLib.Triangle

/-!
# A299000: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299000, there is no canonical definition to state claims against.
-/

/-! ## A299000.P6903772022265567669

`A299001(A374008(n+1))`
-/

namespace A299000.P6903772022265567669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299001 (A374008 (n + 1)).toNat

end

end A299000.P6903772022265567669

/-!
# A299001: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299001, there is no canonical definition to state claims against.
-/

/-! ## A299001.P15265892489305629152

`A299668(A043320(n+1))`
-/

namespace A299001.P15265892489305629152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299668 (A043320 (n + 1)).toNat

end

end A299001.P15265892489305629152

/-! ## A299001.P7556544707968666894

`A299668(A077168(n))`
-/

namespace A299001.P7556544707968666894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299668 (A077168 n).toNat

end

end A299001.P7556544707968666894

/-!
# A299002: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299002, there is no canonical definition to state claims against.
-/

/-! ## A299002.P242352056719779432

`A299008(∑[4*n]+1)`
-/

namespace A299002.P242352056719779432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299002.P242352056719779432

/-! ## A299002.P11058636558244139733

`record[A299008(A272267(n+1))]`
-/

namespace A299002.P11058636558244139733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299002.P11058636558244139733

/-! ## A299002.P10011682081781596221

`record[A299008(A330613(n+1))]`
-/

namespace A299002.P10011682081781596221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299002.P10011682081781596221

/-! ## A299002.P9827801194279314095

`record[A299008(Δ[A079824(n+1)])]`
-/

namespace A299002.P9827801194279314095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299002.P9827801194279314095

/-!
# A299003: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299003, there is no canonical definition to state claims against.
-/

/-! ## A299003.P15663787155872484869

`A299008(∑[n+2]+4)`
-/

namespace A299003.P15663787155872484869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299003.P15663787155872484869

/-!
# A299004: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299004, there is no canonical definition to state claims against.
-/

/-! ## A299004.P16591699930549000460

`A299008(A374004(n+1))`
-/

namespace A299004.P16591699930549000460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (A374004 (n + 1)).toNat

end

end A299004.P16591699930549000460

/-! ## A299004.P16593136986724868526

`A299008(A141214(n+1))`
-/

namespace A299004.P16593136986724868526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (A141214 (n + 1)).toNat

end

end A299004.P16593136986724868526

/-!
# A299005: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299005, there is no canonical definition to state claims against.
-/

/-! ## A299005.P413084167326686753

`A299008(∑[n+4]+11)`
-/

namespace A299005.P413084167326686753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A299005.P413084167326686753

/-!
# A299006: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299006, there is no canonical definition to state claims against.
-/

/-! ## A299006.P1139193802812985748

`A299008(A374007(n+1))`
-/

namespace A299006.P1139193802812985748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (A374007 (n + 1)).toNat

end

end A299006.P1139193802812985748

/-!
# A299007: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299007, there is no canonical definition to state claims against.
-/

/-! ## A299007.P13405966213253166345

`A299008(A374008(n+1))`
-/

namespace A299007.P13405966213253166345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299008 (A374008 (n + 1)).toNat

end

end A299007.P13405966213253166345

/-!
# A299008: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299008, there is no canonical definition to state claims against.
-/

/-! ## A299008.P16676489914474853682

`A299675(n+1)-A285007(A035607(n))`
-/

namespace A299008.P16676489914474853682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299675 (n + 1) - A285007 (A035607 n).toNat

end

end A299008.P16676489914474853682

/-! ## A299008.P6010275576628712557

`A299675(n+1)-A309785(A331562(n))`
-/

namespace A299008.P6010275576628712557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299675 (n + 1) - A309785 (A331562 n).toNat

end

end A299008.P6010275576628712557

/-! ## A299008.P2125399824043841690

`A299675(n+1)-A309785(A347621(n))`
-/

namespace A299008.P2125399824043841690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299675 (n + 1) - A309785 (A347621 n).toNat

end

end A299008.P2125399824043841690

/-! ## A299008.P2159386588050814602

`xor(A185284(A130348(n)), A299675(n+1))`
-/

namespace A299008.P2159386588050814602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A130348 n).toNat) (A299675 (n + 1))

end

end A299008.P2159386588050814602

/-! ## A299008.P12973486598025729300

`xor(A185284(A206225(n+1)), A299675(n+1))`
-/

namespace A299008.P12973486598025729300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A206225 (n + 1)).toNat) (A299675 (n + 1))

end

end A299008.P12973486598025729300

/-!
# A299009: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299009, there is no canonical definition to state claims against.
-/

/-! ## A299009.P9456014957850131881

`A299015(∑[4*n]+1)`
-/

namespace A299009.P9456014957850131881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299015 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299009.P9456014957850131881

/-! ## A299009.P7462695416875241989

`record[A299015(A330613(n+1))]`
-/

namespace A299009.P7462695416875241989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299015 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299009.P7462695416875241989

/-! ## A299009.P2894943056304238052

`record[A003982(n)*A299015(n+1)]`
-/

namespace A299009.P2894943056304238052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299009.P2894943056304238052

/-!
# A299010: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299010, there is no canonical definition to state claims against.
-/

/-! ## A299010.P18099493343259989390

`A299015(∑[n+2]+4)`
-/

namespace A299010.P18099493343259989390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299015 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299010.P18099493343259989390

/-!
# A299011: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299011, there is no canonical definition to state claims against.
-/

/-! ## A299011.P13793287838372997744

`A299015(∑[n+3]+7)`
-/

namespace A299011.P13793287838372997744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299015 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A299011.P13793287838372997744

/-!
# A299012: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299012, there is no canonical definition to state claims against.
-/

/-! ## A299012.P16639833957773239147

`A299015(A374005(n+1))`
-/

namespace A299012.P16639833957773239147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299015 (A374005 (n + 1)).toNat

end

end A299012.P16639833957773239147

/-!
# A299013: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299013, there is no canonical definition to state claims against.
-/

/-! ## A299013.P4454221091046317505

`A299015(A374007(n+1))`
-/

namespace A299013.P4454221091046317505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299015 (A374007 (n + 1)).toNat

end

end A299013.P4454221091046317505

/-!
# A299014: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299014, there is no canonical definition to state claims against.
-/

/-! ## A299014.P7908525211338614206

`A299015(A374008(n+1))`
-/

namespace A299014.P7908525211338614206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299015 (A374008 (n + 1)).toNat

end

end A299014.P7908525211338614206

/-!
# A299017: Intersection of A264041 and A000217.

The programs for A299017, the canonical program `A299017.P13728732516335843163` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299017 has offset 1).

The definition of A299017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A299017.P1344993011630577165

`C(2+comp[2*(n+2)], 2)`
-/

namespace A299017.P1344993011630577165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 + SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) 2

end

end A299017.P1344993011630577165

namespace A299017

/-- `C(2+comp[2*(n+2)], 2)` -/
def P1344993011630577165.Spec : Prop :=
  ∀ n, (P1344993011630577165.a n : ℤ) = A299017 (n + 1)

end A299017

/-! ## A299017.P6760375654941012456

`ogf((1+6x^4-3x^5)/(1-3x+3x^2-x^3))`
-/

namespace A299017.P6760375654941012456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, 0, 6, -3] [1, -3, 3, -1] n

end

end A299017.P6760375654941012456

namespace A299017

/-- `ogf((1+6x^4-3x^5)/(1-3x+3x^2-x^3))` -/
def P6760375654941012456.Spec : Prop :=
  ∀ n, P6760375654941012456.a n = A299017 (n + 1)

end A299017

/-! ## A299017.P15503335809811777401

`record[gcd((3*n)%or(1, n), C(n+2, 2))]`
-/

namespace A299017.P15503335809811777401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (3 * n % Nat.lor 1 n) (Nat.choose (n + 2) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299017.P15503335809811777401

namespace A299017

/-- `record[gcd((3*n)%or(1, n), C(n+2, 2))]` -/
def P15503335809811777401.Spec : Prop :=
  ∀ n, (P15503335809811777401.a n : ℤ) = A299017 (n + 1)

end A299017

/-! ## A299017.P13728732516335843163

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=10, a(4)=21, a(5)=36`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A299017

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P13728732516335843163.Spec : Prop :=
  ∀ n, P13728732516335843163.a n = A299017 (n + 1)

theorem P13728732516335843163.correct : P13728732516335843163.Spec := by
  intro n
  simp only [A299017, Nat.add_sub_cancel]

end A299017

/-! ## A299017.P14375782175064139420

`A000217(comp[2*(n+2)]+1)`
-/

namespace A299017.P14375782175064139420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A299017.P14375782175064139420

namespace A299017

/-- `A000217(comp[2*(n+2)]+1)` -/
def P14375782175064139420.Spec : Prop :=
  ∀ n, P14375782175064139420.a n = A299017 (n + 1)

end A299017

/-! ## A299017.P9740603492576094608

`record[∑[n+1]/gcd(1-n, n%2)]`
-/

namespace A299017.P9740603492576094608
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / (Int.gcd (1 - (n : ℤ)) ((n % 2 : ℕ) : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299017.P9740603492576094608

namespace A299017

/-- `record[∑[n+1]/gcd(1-n, n%2)]` -/
def P9740603492576094608.Spec : Prop :=
  ∀ n, P9740603492576094608.a n = (A299017 (n + 1) : ℚ)

end A299017

/-! ## A299017.P7049080489604856504

`record[gcd((3*n)%or(1, n), ∑[n+1])]`
-/

namespace A299017.P7049080489604856504
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (3 * n % Nat.lor 1 n) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299017.P7049080489604856504

namespace A299017

/-- `record[gcd((3*n)%or(1, n), ∑[n+1])]` -/
def P7049080489604856504.Spec : Prop :=
  ∀ n, (P7049080489604856504.a n : ℤ) = A299017 (n + 1)

end A299017

/-! ## A299017.P11336366418039185169

`A000096(A004274(n))+1`
-/

namespace A299017.P11336366418039185169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A004274 n).toNat + 1

end

end A299017.P11336366418039185169

namespace A299017

/-- `A000096(A004274(n))+1` -/
def P11336366418039185169.Spec : Prop :=
  ∀ n, P11336366418039185169.a n = A299017 (n + 1)

end A299017

/-! ## A299017.P13483760888929133831

`∩[A264041(n+1), A000217(n)]`
-/

namespace A299017.P13483760888929133831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299017.P13483760888929133831

namespace A299017

/-- `∩[A264041(n+1), A000217(n)]` -/
def P13483760888929133831.Spec : Prop :=
  ∀ n, (P13483760888929133831.a n : ℤ) = A299017 (n + 1)

end A299017

/-! ## A299017.P12933938569581024604

`A034856(A004274(n)+1)-A004274(n)`
-/

namespace A299017.P12933938569581024604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (A004274 n + 1).toNat - A004274 n

end

end A299017.P12933938569581024604

namespace A299017

/-- `A034856(A004274(n)+1)-A004274(n)` -/
def P12933938569581024604.Spec : Prop :=
  ∀ n, P12933938569581024604.a n = A299017 (n + 1)

end A299017

/-! ## A299017.P12034999493191048161

`A161680(A004271(n+1))+A004271(n+1)`
-/

namespace A299017.P12034999493191048161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A004271 (n + 1)).toNat + A004271 (n + 1)

end

end A299017.P12034999493191048161

namespace A299017

/-- `A161680(A004271(n+1))+A004271(n+1)` -/
def P12034999493191048161.Spec : Prop :=
  ∀ n, P12034999493191048161.a n = A299017 (n + 1)

end A299017

/-! ## A299017.P3845690432987982681

`A161680(A004281(n+1))`
-/

namespace A299017.P3845690432987982681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A004281 (n + 1)).toNat

end

end A299017.P3845690432987982681

namespace A299017

/-- `A161680(A004281(n+1))` -/
def P3845690432987982681.Spec : Prop :=
  ∀ n, P3845690432987982681.a n = A299017 (n + 1)

end A299017

/-! ## A299017.P176820938960524376

`A260708(A004278(n+1))`
-/

namespace A299017.P176820938960524376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260708 (A004278 (n + 1)).toNat

end

end A299017.P176820938960524376

namespace A299017

/-- `A260708(A004278(n+1))` -/
def P176820938960524376.Spec : Prop :=
  ∀ n, P176820938960524376.a n = A299017 (n + 1)

end A299017

/-! ## A299017.P17465321196019535984

`∩[A264041(n+1), A122493(n)]`
-/

namespace A299017.P17465321196019535984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122493 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299017.P17465321196019535984

namespace A299017

/-- `∩[A264041(n+1), A122493(n)]` -/
def P17465321196019535984.Spec : Prop :=
  ∀ n, (P17465321196019535984.a n : ℤ) = A299017 (n + 1)

end A299017

/-! ## A299017.P5139918064104954265

`∩[A264041(n+1), A334129(n+1)]`
-/

namespace A299017.P5139918064104954265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299017.P5139918064104954265

namespace A299017

/-- `∩[A264041(n+1), A334129(n+1)]` -/
def P5139918064104954265.Spec : Prop :=
  ∀ n, (P5139918064104954265.a n : ℤ) = A299017 (n + 1)

end A299017

/-! ## A299017.P557867740146601100

`∩[A260708(n), A375999(n+1)]`
-/

namespace A299017.P557867740146601100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260708 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299017.P557867740146601100

namespace A299017

/-- `∩[A260708(n), A375999(n+1)]` -/
def P557867740146601100.Spec : Prop :=
  ∀ n, (P557867740146601100.a n : ℤ) = A299017 (n + 1)

end A299017

/-! ## A299017.P10778007469726576898

`∩[A264041(n+1), A375999(n+1)]`
-/

namespace A299017.P10778007469726576898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299017.P10778007469726576898

namespace A299017

/-- `∩[A264041(n+1), A375999(n+1)]` -/
def P10778007469726576898.Spec : Prop :=
  ∀ n, (P10778007469726576898.a n : ℤ) = A299017 (n + 1)

end A299017

/-! ## A299017.P10668401547108959212

`∩[A024412(n+1), A264041(n+1)]`
-/

namespace A299017.P10668401547108959212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299017.P10668401547108959212

namespace A299017

/-- `∩[A024412(n+1), A264041(n+1)]` -/
def P10668401547108959212.Spec : Prop :=
  ∀ n, (P10668401547108959212.a n : ℤ) = A299017 (n + 1)

end A299017

/-! ## A299017.P3187589850340407487

`∩[A081175(n+1), A260708(n)]`
-/

namespace A299017.P3187589850340407487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260708 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299017.P3187589850340407487

namespace A299017

/-- `∩[A081175(n+1), A260708(n)]` -/
def P3187589850340407487.Spec : Prop :=
  ∀ n, (P3187589850340407487.a n : ℤ) = A299017 (n + 1)

end A299017

/-! ## A299017.P15316551544307574081

`∩[A081175(n+1), A264041(n+1)]`
-/

namespace A299017.P15316551544307574081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299017.P15316551544307574081

namespace A299017

/-- `∩[A081175(n+1), A264041(n+1)]` -/
def P15316551544307574081.Spec : Prop :=
  ∀ n, (P15316551544307574081.a n : ℤ) = A299017 (n + 1)

end A299017

/-!
# A299018: Triangle read by rows: T(n,k) is the coefficient of x^k in the polynomial P(n) = n*(x + 1)*P(n - 1) - (n - 2)^2*x*P(n - 2).

The programs for A299018, there is no canonical definition to state claims against.
-/

/-! ## A299018.P8777116344847217359

`A156992(n+1)-A180047(A269946(n))`
-/

namespace A299018.P8777116344847217359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156992 (n + 1) - A180047 (A269946 n).toNat

end

end A299018.P8777116344847217359

/-! ## A299018.P2220991807993921181

`A337413(A296804(n+1))+A269565(n+1)`
-/

namespace A299018.P2220991807993921181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337413 (A296804 (n + 1)).toNat + A269565 (n + 1)

end

end A299018.P2220991807993921181

/-! ## A299018.P17657260823754531795

`A316511(A014963(n+1))+A221916(A240347(n+1))`
-/

namespace A299018.P17657260823754531795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316511 (A014963 (n + 1)).toNat + A221916 (A240347 (n + 1)).toNat

end

end A299018.P17657260823754531795

/-!
# A299020: a(n) is the maximum digit in the factorial base expansion of 1/n.

The programs for A299020, there is no canonical definition to state claims against.
-/

/-! ## A299020.P10381366294696627360

`A000120(or(A007599(n), A226305(n+1)))`
-/

namespace A299020.P10381366294696627360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lor (A007599 n) (A226305 (n + 1))).toNat

end

end A299020.P10381366294696627360

/-! ## A299020.P16899844488869162372

`A000010(n+1)-A124764(A238620(n+1))`
-/

namespace A299020.P16899844488869162372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A124764 (A238620 (n + 1)).toNat

end

end A299020.P16899844488869162372

/-! ## A299020.P10650542843668896253

`A181935(A055032(n+1)+A000225(n))`
-/

namespace A299020.P10650542843668896253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181935 (A055032 (n + 1) + A000225 n).toNat

end

end A299020.P10650542843668896253

/-! ## A299020.P10217364432580704493

`A173636(A052401(n+1))+A072211(n+1)`
-/

namespace A299020.P10217364432580704493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173636 (A052401 (n + 1)).toNat + A072211 (n + 1)

end

end A299020.P10217364432580704493

/-! ## A299020.P2316104951031390398

`A001222(A000051(n)*A318833(n+1)-1)`
-/

namespace A299020.P2316104951031390398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000051 n * A318833 (n + 1) - 1).toNat

end

end A299020.P2316104951031390398

/-!
# A299021: G.f.: A(x) = Sum_{n>=1} a(n)*x^n = x*Product_{n>=1} (1 + a(n)*x^n)/(1 - a(n)*x^n).

The programs for A299021, there is no canonical definition to state claims against.
-/

/-! ## A299021.P5746096833815465835

`or(A073075(n), A084928(A003262(n+1)))`
-/

namespace A299021.P5746096833815465835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A073075 n) (A084928 (A003262 (n + 1)).toNat)

end

end A299021.P5746096833815465835

/-! ## A299021.P386856390436432783

`or(A001223(A129012(3*n)), A073075(n))`
-/

namespace A299021.P386856390436432783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001223 (A129012 (3 * n)).toNat) (A073075 n)

end

end A299021.P386856390436432783

/-! ## A299021.P8436157042389204782

`A354767(A291653(n)+n)`
-/

namespace A299021.P8436157042389204782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354767 (A291653 n + (n : ℤ)).toNat

end

end A299021.P8436157042389204782

/-!
# A299022: a(n) is the number of primes of the form 2*n - 1 + k!.

The programs for A299022, there is no canonical definition to state claims against.
-/

/-! ## A299022.P1236267283726557940

`A125162(2*n+3)`
-/

namespace A299022.P1236267283726557940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125162 (2 * n + 3)

end

end A299022.P1236267283726557940

/-!
# A299023: Number of compositions of n whose standard factorization into Lyndon words has all strict compositions as factors.

The programs for A299023, there is no canonical definition to state claims against.
-/

/-! ## A299023.P9700425390833328589

`A100617(A121486(n+2))`
-/

namespace A299023.P9700425390833328589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100617 (A121486 (n + 2)).toNat

end

end A299023.P9700425390833328589

/-! ## A299023.P515875667328879971

`A069623(A052541(n)+n)`
-/

namespace A299023.P515875667328879971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (A052541 n + (n : ℤ)).toNat

end

end A299023.P515875667328879971

/-! ## A299023.P14452725776695546216

`A003056(or(n², A095127(n+1)))`
-/

namespace A299023.P14452725776695546216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.lor (n ^ 2 : ℤ) (A095127 (n + 1))).toNat

end

end A299023.P14452725776695546216

/-! ## A299023.P1456393505643735818

`record[A007323(n)-A014378(n+2)]`
-/

namespace A299023.P1456393505643735818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007323 n - A014378 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299023.P1456393505643735818

/-! ## A299023.P11729853628247035842

`row(A318563(n+1)+A055226(n))`
-/

namespace A299023.P11729853628247035842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A318563 (n + 1) + A055226 n).toNat

end

end A299023.P11729853628247035842

/-!
# A299024: Number of compositions of n whose standard factorization into Lyndon words has distinct strict compositions as factors.

The programs for A299024, there is no canonical definition to state claims against.
-/

/-! ## A299024.P15525512378690675169

`A003056(or(A052946(n), A231668(n)))`
-/

namespace A299024.P15525512378690675169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.lor (A052946 n) (A231668 n)).toNat

end

end A299024.P15525512378690675169

/-! ## A299024.P13126386492063763554

`A156246(or(A061265(n+1), A217283(n)))`
-/

namespace A299024.P13126386492063763554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156246 (Int.lor (A061265 (n + 1)) (A217283 n)).toNat

end

end A299024.P13126386492063763554

/-! ## A299024.P15370599081654516523

`A004001(n+1)+A000196(A121532(n+1))`
-/

namespace A299024.P15370599081654516523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (n + 1) + A000196 (A121532 (n + 1)).toNat

end

end A299024.P15370599081654516523

/-! ## A299024.P15198336597516980646

`A351115(A148765(n))`
-/

namespace A299024.P15198336597516980646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351115 (A148765 n).toNat

end

end A299024.P15198336597516980646

/-! ## A299024.P1413813816567754545

`A306202(A396494(n+1))`
-/

namespace A299024.P1413813816567754545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306202 (A396494 (n + 1)).toNat

end

end A299024.P1413813816567754545

/-!
# A299025: a(n) = the fractional part of 1 / A003592(n) read backwards.

The programs for A299025, there is no canonical definition to state claims against.
-/

/-! ## A299025.P11598242788922883330

`A004086(A025625(3*n+2)*A102113(n+1))`
-/

namespace A299025.P11598242788922883330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A025625 (3 * n + 2) * A102113 (n + 1)).toNat

end

end A299025.P11598242788922883330

/-!
# A299026: Number of compositions of n whose standard factorization into Lyndon words has all weakly increasing factors.

The programs for A299026, there is no canonical definition to state claims against.
-/

/-! ## A299026.P2433101472594536606

`ceil(sqrt(A006093(Δ[floor(3^(n-1))])))`
-/

namespace A299026.P2433101472594536606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A006093 (f1 (n + 1) - f1 n).toNat : ℝ)⌉

end

end A299026.P2433101472594536606

/-! ## A299026.P16040993100097993496

`ceil(sqrt(A008578(Δ[floor(3^(n-1))])))`
-/

namespace A299026.P16040993100097993496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A008578 (f1 (n + 1) - f1 n).toNat : ℝ)⌉

end

end A299026.P16040993100097993496

/-! ## A299026.P9821662667787868782

`round(sqrt(A250120(n*ceil(3^n/6))))`
-/

namespace A299026.P9821662667787868782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A250120 ((n : ℤ) * ⌈(3 ^ n : ℚ) / 6⌉).toNat : ℝ))

end

end A299026.P9821662667787868782

/-! ## A299026.P13386133116546393941

`A000006(A367484(n))`
-/

namespace A299026.P13386133116546393941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A367484 n).toNat

end

end A299026.P13386133116546393941

/-! ## A299026.P14421176498903898917

`∑[A003056(A275863(n))]`
-/

namespace A299026.P14421176498903898917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A275863 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299026.P14421176498903898917

/-!
# A299027: Number of compositions of n whose standard factorization into Lyndon words has all distinct weakly increasing factors.

The programs for A299027, there is no canonical definition to state claims against.
-/

/-! ## A299027.P15083713462709145719

`A000006(A099216(n)+A028242(n))`
-/

namespace A299027.P15083713462709145719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A099216 n + A028242 n).toNat

end

end A299027.P15083713462709145719

/-! ## A299027.P18301741630400234252

`A265370(A003018(n+1)+A000045(2*(n+1)))`
-/

namespace A299027.P18301741630400234252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265370 (A003018 (n + 1) + A000045 (2 * (n + 1))).toNat

end

end A299027.P18301741630400234252

/-! ## A299027.P15288610364284814443

`Δ[(n-1)*A156070(∑[n+2]-2)]`
-/

namespace A299027.P15288610364284814443
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A156070 (∑ j ∈ Finset.range (n + 1), f2 j - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A299027.P15288610364284814443

/-! ## A299027.P12092182902399823577

`A141157(C(A094588(n), 2))`
-/

namespace A299027.P12092182902399823577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141157 (Nat.choose (A094588 n).toNat 2)

end

end A299027.P12092182902399823577

/-! ## A299027.P14939801537422472192

`A094588(A151938(n)+n)`
-/

namespace A299027.P14939801537422472192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094588 (A151938 n + (n : ℤ)).toNat

end

end A299027.P14939801537422472192

/-!
# A299028: Number of vertices in the iterated clique graphs of the 1-skeleton of Plato's icosahedron.

The programs for A299028, there is no canonical definition to state claims against.
-/

/-! ## A299028.P13956914032996085061

`or(3, A155432(n+6))+1`
-/

namespace A299028.P13956914032996085061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A155432 (n + 6)) + 1

end

end A299028.P13956914032996085061

/-!
# A299029: Triangle read by rows: Independent domination number for rectangular queens graph Q(n,m), 1 <= n <= m.

The programs for A299029, there is no canonical definition to state claims against.
-/

/-! ## A299029.P11470758898801846038

`A001221(A233862(n+1)-A353449(n+3))`
-/

namespace A299029.P11470758898801846038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A233862 (n + 1) - A353449 (n + 3)).toNat

end

end A299029.P11470758898801846038

/-!
# A299030: Number of vertices in the iterated clique graphs of the 1-skeleton of Plato's octahedron.

The programs for A299030, there is no canonical definition to state claims against.
-/

/-! ## A299030.P17512158958830068997

`sqrt(2)^a(n-1)` with `a(0)=6`
-/

namespace A299030.P17512158958830068997
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [6] fun n a =>
  Real.sqrt (2 : ℝ) ^ (a (n - 1))

end

end A299030.P17512158958830068997

/-!
# A299031: Number of ordered ways of writing n-th triangular number as a sum of n squares of nonnegative integers.

The programs for A299031, there is no canonical definition to state claims against.
-/

/-! ## A299031.P3979119111956071358

`A045847(∑[(∑[n+1]+1)*n])`
-/

namespace A299031.P3979119111956071358
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + 1) * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A299031.P3979119111956071358

/-! ## A299031.P18185314821060176792

`A122203(A035401(n+1))*A273873(n+1)`
-/

namespace A299031.P18185314821060176792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122203 (A035401 (n + 1)).toNat * A273873 (n + 1)

end

end A299031.P18185314821060176792

/-!
# A299032: Number of ordered ways of writing n-th triangular number as a sum of n squares of positive integers.

The programs for A299032, there is no canonical definition to state claims against.
-/

/-! ## A299032.P9797461764985352751

`A337165(A002817(n)+n)`
-/

namespace A299032.P9797461764985352751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A002817 n + (n : ℤ)).toNat

end

end A299032.P9797461764985352751

/-!
# A299033: a(n) = n! * [x^n] Product_{k>=1} (1 - x^k)^(n/k).

The programs for A299033, there is no canonical definition to state claims against.
-/

/-! ## A299033.P2569532921644759312

`A066325(A134486(n)+A108798(n))`
-/

namespace A299033.P2569532921644759312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066325 (A134486 n + A108798 n).toNat

end

end A299033.P2569532921644759312

/-!
# A299034: a(n) = n! * [x^n] Product_{k>=1} 1/(1 - x^k)^(n/k).

The programs for A299034, there is no canonical definition to state claims against.
-/

/-! ## A299034.P2587436353903692257

`A060677(A001674(n))`
-/

namespace A299034.P2587436353903692257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060677 (A001674 n).toNat

end

end A299034.P2587436353903692257

/-!
# A299037: a(n) is the number of rooted binary trees with minimal Sackin index and n leaves.

The programs for A299037, there is no canonical definition to state claims against.
-/

/-! ## A299037.P10839784837823537801

`abs(Δ[A299767(abs(1-n)+1)])`
-/

namespace A299037.P10839784837823537801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299767 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A299037.P10839784837823537801

/-! ## A299037.P17304099790257572170

`Δ[A299767(A028310(n))]+C(2, n+2)`
-/

namespace A299037.P17304099790257572170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299767 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.choose 2 (n + 2) : ℤ)

end

end A299037.P17304099790257572170

/-! ## A299037.P8120399091828060684

`A000007(n)+Δ[A299767(A028310(n))]`
-/

namespace A299037.P8120399091828060684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299767 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A299037.P8120399091828060684

/-! ## A299037.P3684397431265941058

`Δ[A299767(A028310(n))+A040000(n)]`
-/

namespace A299037.P3684397431265941058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299767 (A028310 n).toNat + A040000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A299037.P3684397431265941058

/-! ## A299037.P5795789954887052749

`Δ[A299767(A028310(n))+A057427(n)]`
-/

namespace A299037.P5795789954887052749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299767 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A299037.P5795789954887052749

/-! ## A299037.P10044508538318157119

`Δ[A299767(A028310(n))-A054977(n)]`
-/

namespace A299037.P10044508538318157119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299767 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A299037.P10044508538318157119

/-! ## A299037.P4665990491170767972

`Δ[A299767(A028310(n))-A057428(n)]`
-/

namespace A299037.P4665990491170767972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299767 (A028310 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A299037.P4665990491170767972

/-! ## A299037.P6692416691560706268

`Δ[A299767(A028310(n))+A019427(2*n)]`
-/

namespace A299037.P6692416691560706268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299767 (A028310 n).toNat + A019427 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A299037.P6692416691560706268

/-! ## A299037.P15495476347252792283

`Δ[A299767(A028310(n))]^(1-A023533(n²))`
-/

namespace A299037.P15495476347252792283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299767 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (1 - A023533 (n ^ 2) : ℤ)

end

end A299037.P15495476347252792283

/-! ## A299037.P14233206965170753830

`Δ[A299767(A028310(n))]-A000040(2*n+1)%2+1`
-/

namespace A299037.P14233206965170753830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299767 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - Int.tmod (A000040 (2 * n + 1)) 2 + 1

end

end A299037.P14233206965170753830

/-!
# A299038: Number A(n,k) of rooted trees with n nodes where each node has at most k children; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A299038, there is no canonical definition to state claims against.
-/

/-! ## A299038.P12564663115709449250

`A007895(A273693(n)^4)`
-/

namespace A299038.P12564663115709449250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A273693 n ^ 4).toNat

end

end A299038.P12564663115709449250

/-! ## A299038.P5327018340364550281

`and(A111068(A000041(n)), A273693(n))`
-/

namespace A299038.P5327018340364550281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A111068 (A000041 n).toNat) (A273693 n)

end

end A299038.P5327018340364550281

/-!
# A299039: Number of rooted trees with 2n nodes where each node has at most n children.

The programs for A299039, there is no canonical definition to state claims against.
-/

/-! ## A299039.P5173819519738703460

`A299038(C(2*n+n+1, 2)+2*n)`
-/

namespace A299039.P5173819519738703460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (Nat.choose (2 * n + n + 1) 2 + 2 * n)

end

end A299039.P5173819519738703460

/-! ## A299039.P1313518986472827718

`A399240(4*∑[n])`
-/

namespace A299039.P1313518986472827718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399240 (4 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A299039.P1313518986472827718

/-!
# A299042: G.f.: Sum_{n>=0} x^(n^2) * C(x^n)^n, where C(x) = 1 + x*C(x)^2 is the g.f. of the Catalan numbers (A000108).

The programs for A299042, there is no canonical definition to state claims against.
-/

/-! ## A299042.P18434605005305736956

`A256502(A007123(n+1)-A007122(n+1))`
-/

namespace A299042.P18434605005305736956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A007123 (n + 1) - A007122 (n + 1)).toNat

end

end A299042.P18434605005305736956

/-! ## A299042.P8284719844968351344

`A120588(A004881(n+1))+A000719(A025480(n))`
-/

namespace A299042.P8284719844968351344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (A004881 (n + 1)).toNat + A000719 (A025480 n).toNat

end

end A299042.P8284719844968351344

/-! ## A299042.P10106511987912593774

`A120588(A029965(n+1))+A000719(A025480(n))`
-/

namespace A299042.P10106511987912593774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (A029965 (n + 1)).toNat + A000719 (A025480 n).toNat

end

end A299042.P10106511987912593774

/-! ## A299042.P10554584298364866467

`A239621(abs(1-n)!*floor(n/2)+1)`
-/

namespace A299042.P10554584298364866467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239621 ((Nat.factorial |1 - (n : ℤ)|.toNat : ℤ) * ⌊(n : ℚ) / 2⌋ + 1).toNat

end

end A299042.P10554584298364866467

/-!
# A299044: G.f. Sum_{n>=0} Series_Reversion( x/(1+x)^n )^n.

The programs for A299044, there is no canonical definition to state claims against.
-/

/-! ## A299044.P9293595195212379895

`A289122(xor(6, A173316(n)))`
-/

namespace A299044.P9293595195212379895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289122 (Int.xor 6 (A173316 n)).toNat

end

end A299044.P9293595195212379895

/-! ## A299044.P16007530155377064916

`A374249(A317111(n))+A000142(n)`
-/

namespace A299044.P16007530155377064916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374249 (A317111 n).toNat + A000142 n

end

end A299044.P16007530155377064916

/-! ## A299044.P17638026313900530319

`A392987(xor(A088716(n), A326525(3*n)))`
-/

namespace A299044.P17638026313900530319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392987 (Int.xor (A088716 n) (A326525 (3 * n))).toNat

end

end A299044.P17638026313900530319

/-!
# A299046: Number of n X n 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299046, there is no canonical definition to state claims against.
-/

/-! ## A299046.P5657464696970453205

`A299052(∑[4*n]+1)`
-/

namespace A299046.P5657464696970453205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299046.P5657464696970453205

/-! ## A299046.P4724704077726911840

`record[A299052(Δ[A235355(n)])]`
-/

namespace A299046.P4724704077726911840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299046.P4724704077726911840

/-! ## A299046.P18431912599911115308

`record[A299052(A330613(n+1))]`
-/

namespace A299046.P18431912599911115308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299046.P18431912599911115308

/-! ## A299046.P14432227925274330674

`record[A003982(n)*A299052(n+1)]`
-/

namespace A299046.P14432227925274330674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299046.P14432227925274330674

/-!
# A299047: Number of n X 3 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299047, there is no canonical definition to state claims against.
-/

/-! ## A299047.P5134088052019435939

`A299052(∑[n+2]+4)`
-/

namespace A299047.P5134088052019435939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299047.P5134088052019435939

/-!
# A299048: Number of nX4 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299048, there is no canonical definition to state claims against.
-/

/-! ## A299048.P1105068762392353250

`A299052(A374004(n+1))`
-/

namespace A299048.P1105068762392353250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (A374004 (n + 1)).toNat

end

end A299048.P1105068762392353250

/-! ## A299048.P463564255336581968

`A299052(A141214(n+1))`
-/

namespace A299048.P463564255336581968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (A141214 (n + 1)).toNat

end

end A299048.P463564255336581968

/-!
# A299049: Number of nX5 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299049, there is no canonical definition to state claims against.
-/

/-! ## A299049.P806073117336425397

`A299052(A374005(n+1))`
-/

namespace A299049.P806073117336425397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (A374005 (n + 1)).toNat

end

end A299049.P806073117336425397

/-!
# A299050: Number of nX6 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299050, there is no canonical definition to state claims against.
-/

/-! ## A299050.P2920596634005728116

`A299052(A374007(n+1))`
-/

namespace A299050.P2920596634005728116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (A374007 (n + 1)).toNat

end

end A299050.P2920596634005728116

/-!
# A299051: Number of nX7 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299051, there is no canonical definition to state claims against.
-/

/-! ## A299051.P9007819883942258388

`A299052(A374008(n+1))`
-/

namespace A299051.P9007819883942258388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299052 (A374008 (n + 1)).toNat

end

end A299051.P9007819883942258388

/-!
# A299052: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299052, there is no canonical definition to state claims against.
-/

/-! ## A299052.P10113886152543840674

`A299814(n+1)-A081603(A022167(n))`
-/

namespace A299052.P10113886152543840674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299814 (n + 1) - A081603 (A022167 n).toNat

end

end A299052.P10113886152543840674

/-! ## A299052.P13142130089855916991

`A299814(n+1)-A054911(A299905(n))`
-/

namespace A299052.P13142130089855916991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299814 (n + 1) - A054911 (A299905 n).toNat

end

end A299052.P13142130089855916991

/-! ## A299052.P12190290855475625182

`A299814(n+1)-A069283(A301443(n+1))`
-/

namespace A299052.P12190290855475625182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299814 (n + 1) - A069283 (A301443 (n + 1)).toNat

end

end A299052.P12190290855475625182

/-! ## A299052.P17413374603740102810

`A299814(n+1)-A082858(A334709(n+1))`
-/

namespace A299052.P17413374603740102810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299814 (n + 1) - A082858 (A334709 (n + 1)).toNat

end

end A299052.P17413374603740102810

/-! ## A299052.P16079165181680988531

`A299814(n+1)-A001221(A273712(n)!)`
-/

namespace A299052.P16079165181680988531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299814 (n + 1) - A001221 (Nat.factorial (A273712 n).toNat)

end

end A299052.P16079165181680988531

/-!
# A299053: Minimum value of the cyclic autocorrelation of first n primes.

The programs for A299053, there is no canonical definition to state claims against.
-/

/-! ## A299053.P1397880828223849534

`A210528(2*A057222(n+2))`
-/

namespace A299053.P1397880828223849534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210528 (2 * A057222 (n + 2)).toNat

end

end A299053.P1397880828223849534

/-!
# A299054: Number of n X n 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299054, there is no canonical definition to state claims against.
-/

/-! ## A299054.P13401524932237073218

`A299060(∑[4*n]+1)`
-/

namespace A299054.P13401524932237073218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299054.P13401524932237073218

/-! ## A299054.P8116258507653502506

`record[gcd(A166040(n), A299060(n+1))]`
-/

namespace A299054.P8116258507653502506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166040 n) (A299060 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299054.P8116258507653502506

/-! ## A299054.P8507276210431271699

`record[A203994(n+1)*A299060(n+1)]`
-/

namespace A299054.P8507276210431271699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A299060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299054.P8507276210431271699

/-! ## A299054.P1681964005027551062

`record[lcm(A185917(n+1), A299060(n+1))]`
-/

namespace A299054.P1681964005027551062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A185917 (n + 1)) (A299060 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299054.P1681964005027551062

/-!
# A299055: Number of nX3 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299055, there is no canonical definition to state claims against.
-/

/-! ## A299055.P17022057372765553175

`A299060(∑[n+2]+4)`
-/

namespace A299055.P17022057372765553175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299055.P17022057372765553175

/-!
# A299056: Number of nX4 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299056, there is no canonical definition to state claims against.
-/

/-! ## A299056.P15604237443623943027

`A299060(A374004(n+1))`
-/

namespace A299056.P15604237443623943027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (A374004 (n + 1)).toNat

end

end A299056.P15604237443623943027

/-! ## A299056.P8098087756297168050

`A299060(A141214(n+1))`
-/

namespace A299056.P8098087756297168050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (A141214 (n + 1)).toNat

end

end A299056.P8098087756297168050

/-!
# A299057: Number of nX5 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299057, there is no canonical definition to state claims against.
-/

/-! ## A299057.P10745117610079272535

`A299060(A374005(n+1))`
-/

namespace A299057.P10745117610079272535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (A374005 (n + 1)).toNat

end

end A299057.P10745117610079272535

/-!
# A299058: Number of nX6 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299058, there is no canonical definition to state claims against.
-/

/-! ## A299058.P12289805959922389592

`A299060(A374007(n+1))`
-/

namespace A299058.P12289805959922389592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (A374007 (n + 1)).toNat

end

end A299058.P12289805959922389592

/-!
# A299059: Number of n X 7 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299059, there is no canonical definition to state claims against.
-/

/-! ## A299059.P17027438755164503939

`A299060(A374008(n+1))`
-/

namespace A299059.P17027438755164503939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299060 (A374008 (n + 1)).toNat

end

end A299059.P17027438755164503939

/-!
# A299060: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299060, there is no canonical definition to state claims against.
-/

/-! ## A299060.P15009112651905794282

`A299821(n+1)-A081603(A022167(n))`
-/

namespace A299060.P15009112651905794282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299821 (n + 1) - A081603 (A022167 n).toNat

end

end A299060.P15009112651905794282

/-! ## A299060.P18033753208162317755

`A299821(n+1)-A054911(A299905(n))`
-/

namespace A299060.P18033753208162317755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299821 (n + 1) - A054911 (A299905 n).toNat

end

end A299060.P18033753208162317755

/-! ## A299060.P17375953873233654865

`A299821(n+1)-A082858(A334709(n+1))`
-/

namespace A299060.P17375953873233654865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299821 (n + 1) - A082858 (A334709 (n + 1)).toNat

end

end A299060.P17375953873233654865

/-! ## A299060.P13413470465025746111

`A299821(n+1)+A016389(A022166(n))`
-/

namespace A299060.P13413470465025746111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299821 (n + 1) + A016389 (A022166 n).toNat

end

end A299060.P13413470465025746111

/-! ## A299060.P8319598231422565494

`A299821(n+1)+A016389(A176561(n))`
-/

namespace A299060.P8319598231422565494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299821 (n + 1) + A016389 (A176561 n).toNat

end

end A299060.P8319598231422565494

/-!
# A299061: Number of n X n 0..1 arrays with every element equal to 1, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299061, there is no canonical definition to state claims against.
-/

/-! ## A299061.P8176388544789585950

`A299067(∑[4*n]+1)`
-/

namespace A299061.P8176388544789585950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299067 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299061.P8176388544789585950

/-!
# A299062: Number of nX3 0..1 arrays with every element equal to 1, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299062, there is no canonical definition to state claims against.
-/

/-! ## A299062.P4650975161767453044

`A299067(∑[n+2]+4)`
-/

namespace A299062.P4650975161767453044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299067 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299062.P4650975161767453044

/-!
# A299063: Number of nX4 0..1 arrays with every element equal to 1, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299063, there is no canonical definition to state claims against.
-/

/-! ## A299063.P5793294142151435265

`A299067(A052905(n)+9)`
-/

namespace A299063.P5793294142151435265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299067 (A052905 n + 9).toNat

end

end A299063.P5793294142151435265

/-! ## A299063.P2154261701776590399

`A299067(A141214(n+1))`
-/

namespace A299063.P2154261701776590399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299067 (A141214 (n + 1)).toNat

end

end A299063.P2154261701776590399

/-!
# A299064: Number of nX5 0..1 arrays with every element equal to 1, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299064, there is no canonical definition to state claims against.
-/

/-! ## A299064.P8657649049523404397

`A299067(A167499(n+3))`
-/

namespace A299064.P8657649049523404397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299067 (A167499 (n + 3)).toNat

end

end A299064.P8657649049523404397

/-! ## A299064.P2070253162539761456

`A299067(∑[n+5]+6)`
-/

namespace A299064.P2070253162539761456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299067 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A299064.P2070253162539761456

/-!
# A299065: Number of nX6 0..1 arrays with every element equal to 1, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299065, there is no canonical definition to state claims against.
-/

/-! ## A299065.P17316723398809903574

`A299067(A056115(n)+21)`
-/

namespace A299065.P17316723398809903574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299067 (A056115 n + 21).toNat

end

end A299065.P17316723398809903574

/-! ## A299065.P13484684576243504602

`A299067(A374007(n+1))`
-/

namespace A299065.P13484684576243504602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299067 (A374007 (n + 1)).toNat

end

end A299065.P13484684576243504602

/-!
# A299066: Number of nX7 0..1 arrays with every element equal to 1, 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A299066, there is no canonical definition to state claims against.
-/

/-! ## A299066.P13629205817369174597

`A299067(A167614(n+5)+4)`
-/

namespace A299066.P13629205817369174597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299067 (A167614 (n + 5) + 4).toNat

end

end A299066.P13629205817369174597

/-! ## A299066.P7251901802268135813

`A299067(A374008(n+1))`
-/

namespace A299066.P7251901802268135813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299067 (A374008 (n + 1)).toNat

end

end A299066.P7251901802268135813

/-!
# A299069: Expansion of Product_{k>=1} (1 + x^k)^phi(k), where phi() is the Euler totient function (A000010).

The programs for A299069, there is no canonical definition to state claims against.
-/

/-! ## A299069.P2942051050117715917

`A081386(∏{e}[A136591(n+1), #+1])`
-/

namespace A299069.P2942051050117715917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081386 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A299069.P2942051050117715917

/-! ## A299069.P4378190801278956513

`xor(A024786(n+1), A343380(A305082(n)))`
-/

namespace A299069.P4378190801278956513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A024786 (n + 1)) (A343380 (A305082 n).toNat)

end

end A299069.P4378190801278956513

/-!
# A299070: Regular triangle T(n,k) is the number of compositions of n whose standard factorization into Lyndon words has k distinct factors.

The programs for A299070, there is no canonical definition to state claims against.
-/

/-! ## A299070.P3627676887259213832

`A071673(C(A188448(n+1), A120562(n)))`
-/

namespace A299070.P3627676887259213832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071673 (Nat.choose (A188448 (n + 1)).toNat (A120562 n).toNat)

end

end A299070.P3627676887259213832

/-!
# A299071: Union_{odd primes p, n >= 3} {T_p(n)}, where T_m(x) = x*T_{m-1}(x) - T_{m-2}(x), m >= 2, T_0(x) = 2, T_1(x) = x (dilated Chebyshev polynomials of the first kind).

The programs for A299071, there is no canonical definition to state claims against.
-/

/-! ## A299071.P15601448077368186680

`∩[A025020(n+1), A298878(n+1)]`
-/

namespace A299071.P15601448077368186680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299071.P15601448077368186680

/-!
# A299072: Sequence is an irregular triangle read by rows with zeros removed where T(n,k) is the number of compositions of n whose standard factorization into Lyndon words has k distinct factors.

The programs for A299072, there is no canonical definition to state claims against.
-/

/-! ## A299072.P16945446976320939175

`A299070(record[n%(A299070(n+1)+n)]+1)`
-/

namespace A299072.P16945446976320939175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A299070 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299070 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A299072.P16945446976320939175

/-!
# A299074: Expansion of 1/((1-x)*(1-2*x)*(1-6*x)*(1-24*x)).

The programs for A299074, the canonical program `A299074.P410206991779140690` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299074 has offset 0).

The definition of A299074 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-33x+236x^2-492x^3+288x^4))` (program `A299074.P410206991779140690`, by `A299074.P410206991779140690.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A299074.P410206991779140690

`ogf(1/(1-33x+236x^2-492x^3+288x^4))`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A299074

/-- `ogf(1/(1-33x+236x^2-492x^3+288x^4))` -/
def P410206991779140690.Spec : Prop :=
  ∀ n, P410206991779140690.a n = A299074 n

theorem P410206991779140690.correct : P410206991779140690.Spec := by
  intro n
  simp only [A299074]

end A299074

/-! ## A299074.P17773675442412718626

`∑[2^n*A016217(n)]`
-/

namespace A299074.P17773675442412718626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A016217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299074.P17773675442412718626

namespace A299074

/-- `∑[2^n*A016217(n)]` -/
def P17773675442412718626.Spec : Prop :=
  ∀ n, P17773675442412718626.a n = A299074 n

end A299074

/-! ## A299074.P16569679986050094606

`∑[2^n*∑[A016147(n)]]`
-/

namespace A299074.P16569679986050094606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016147 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299074.P16569679986050094606

namespace A299074

/-- `∑[2^n*∑[A016147(n)]]` -/
def P16569679986050094606.Spec : Prop :=
  ∀ n, P16569679986050094606.a n = A299074 n

end A299074

/-! ## A299074.P1841831539003036719

`∑[∑[A016147(n)]*A000079(n)]`
-/

namespace A299074.P1841831539003036719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016147 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299074.P1841831539003036719

namespace A299074

/-- `∑[∑[A016147(n)]*A000079(n)]` -/
def P1841831539003036719.Spec : Prop :=
  ∀ n, P1841831539003036719.a n = A299074 n

end A299074

/-! ## A299074.P13607402245605801329

`∑[∑[A016147(n)]*A131577(n+1)]`
-/

namespace A299074.P13607402245605801329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016147 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A131577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299074.P13607402245605801329

namespace A299074

/-- `∑[∑[A016147(n)]*A131577(n+1)]` -/
def P13607402245605801329.Spec : Prop :=
  ∀ n, P13607402245605801329.a n = A299074 n

end A299074

/-! ## A299074.P12737902067931440587

`A000079(n)*A016217(n)+a(n-1)` with `a(0)=1`
-/

namespace A299074.P12737902067931440587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000079 n * A016217 n + a (n - 1)

end

end A299074.P12737902067931440587

namespace A299074

/-- `A000079(n)*A016217(n)+a(n-1)` -/
def P12737902067931440587.Spec : Prop :=
  ∀ n, P12737902067931440587.a n = A299074 n

end A299074

/-!
# A299075: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299075, there is no canonical definition to state claims against.
-/

/-! ## A299075.P12309178339614253758

`A299081(∑[4*n]+1)`
-/

namespace A299075.P12309178339614253758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299075.P12309178339614253758

/-! ## A299075.P13428350354294644371

`record[A003982(n)*A299081(n+1)]`
-/

namespace A299075.P13428350354294644371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299075.P13428350354294644371

/-!
# A299076: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299076, there is no canonical definition to state claims against.
-/

/-! ## A299076.P9629341335337844781

`A299081(∑[n+2]+4)`
-/

namespace A299076.P9629341335337844781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299076.P9629341335337844781

/-! ## A299076.P7007271662112178951

`A299844(∑[n+2]+4)`
-/

namespace A299076.P7007271662112178951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299844 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299076.P7007271662112178951

/-!
# A299077: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299077, there is no canonical definition to state claims against.
-/

/-! ## A299077.P14151689785759925462

`A299081(A374004(n+1))`
-/

namespace A299077.P14151689785759925462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (A374004 (n + 1)).toNat

end

end A299077.P14151689785759925462

/-! ## A299077.P3482837881903058796

`A299844(A167614(n+2)+1)`
-/

namespace A299077.P3482837881903058796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299844 (A167614 (n + 2) + 1).toNat

end

end A299077.P3482837881903058796

/-! ## A299077.P12555917719492932655

`A299081(A141214(n+1))`
-/

namespace A299077.P12555917719492932655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (A141214 (n + 1)).toNat

end

end A299077.P12555917719492932655

/-!
# A299078: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299078, there is no canonical definition to state claims against.
-/

/-! ## A299078.P11979388334773083189

`A299081(A374005(n+1))`
-/

namespace A299078.P11979388334773083189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (A374005 (n + 1)).toNat

end

end A299078.P11979388334773083189

/-! ## A299078.P6505457718637359928

`A299081(∑[n+5]+6)`
-/

namespace A299078.P6505457718637359928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A299078.P6505457718637359928

/-!
# A299079: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299079, there is no canonical definition to state claims against.
-/

/-! ## A299079.P989258366911148952

`A299081(A374007(n+1))`
-/

namespace A299079.P989258366911148952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (A374007 (n + 1)).toNat

end

end A299079.P989258366911148952

/-!
# A299080: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299080, there is no canonical definition to state claims against.
-/

/-! ## A299080.P5059097547344510414

`A299081(A374008(n+1))`
-/

namespace A299080.P5059097547344510414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299081 (A374008 (n + 1)).toNat

end

end A299080.P5059097547344510414

/-!
# A299081: T(n,k) = Number of n X k 0..1 arrays with every element equal to 0, 1, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299081, there is no canonical definition to state claims against.
-/

/-! ## A299081.P516500501315840020

`A299844(n+1)-A046660(A119307(n))`
-/

namespace A299081.P516500501315840020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299844 (n + 1) - A046660 (A119307 n).toNat

end

end A299081.P516500501315840020

/-! ## A299081.P811101892225938605

`A299844(n+1)-A002265(A010894(n))`
-/

namespace A299081.P811101892225938605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299844 (n + 1) - A002265 (A010894 (n + 21)).toNat

end

end A299081.P811101892225938605

/-! ## A299081.P16962329253364116042

`A299844(n+1)-A086134(A186748(n))`
-/

namespace A299081.P16962329253364116042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299844 (n + 1) - A086134 (A186748 n).toNat

end

end A299081.P16962329253364116042

/-!
# A299083: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299083, there is no canonical definition to state claims against.
-/

/-! ## A299083.P702531032334613109

`A299089(∑[4*n]+1)`
-/

namespace A299083.P702531032334613109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299089 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299083.P702531032334613109

/-! ## A299083.P9015456780207203631

`record[A299089(A272267(n+1))]`
-/

namespace A299083.P9015456780207203631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299089 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299083.P9015456780207203631

/-! ## A299083.P10796737902518656346

`record[A299089(A330613(n+1))]`
-/

namespace A299083.P10796737902518656346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299089 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299083.P10796737902518656346

/-! ## A299083.P12327615660914213258

`record[A299089(Δ[A079824(n+1)])]`
-/

namespace A299083.P12327615660914213258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299089 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299083.P12327615660914213258

/-!
# A299084: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299084, there is no canonical definition to state claims against.
-/

/-! ## A299084.P7300631619782609776

`A299089(∑[n+2]+4)`
-/

namespace A299084.P7300631619782609776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299089 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299084.P7300631619782609776

/-!
# A299085: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299085, there is no canonical definition to state claims against.
-/

/-! ## A299085.P7692961658826055067

`A299089(∑[n+3]+7)`
-/

namespace A299085.P7692961658826055067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299089 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A299085.P7692961658826055067

/-!
# A299086: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299086, there is no canonical definition to state claims against.
-/

/-! ## A299086.P10066323189211370039

`A299089(A374005(n+1))`
-/

namespace A299086.P10066323189211370039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299089 (A374005 (n + 1)).toNat

end

end A299086.P10066323189211370039

/-!
# A299087: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299087, there is no canonical definition to state claims against.
-/

/-! ## A299087.P2119209676914441305

`A299089(∑[n+5]+16)`
-/

namespace A299087.P2119209676914441305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299089 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A299087.P2119209676914441305

/-!
# A299088: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299088, there is no canonical definition to state claims against.
-/

/-! ## A299088.P16979248012519284640

`A299089(A374008(n+1))`
-/

namespace A299088.P16979248012519284640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299089 (A374008 (n + 1)).toNat

end

end A299088.P16979248012519284640

/-!
# A299089: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 3, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299089, there is no canonical definition to state claims against.
-/

/-! ## A299089.P12202439954302320273

`A298195(n+1)+A285007(A035607(n))`
-/

namespace A299089.P12202439954302320273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298195 (n + 1) + A285007 (A035607 n).toNat

end

end A299089.P12202439954302320273

/-! ## A299089.P16176904187998396610

`A309785(A331562(n))+A298195(n+1)`
-/

namespace A299089.P16176904187998396610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A331562 n).toNat + A298195 (n + 1)

end

end A299089.P16176904187998396610

/-! ## A299089.P10307300185064647128

`A309785(A347621(n))+A298195(n+1)`
-/

namespace A299089.P10307300185064647128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A347621 n).toNat + A298195 (n + 1)

end

end A299089.P10307300185064647128

/-!
# A299090: Number of "digits" in the binary representation of the multiset of prime factors of n.

The programs for A299090, the canonical program `A299090.P6964279361835886871` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299090 has offset 1).

The definition of A299090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A299090.P9904234674522987698

`a(∏{p}[n+1, #^val(n+1, #²)]-1)+1` with `a(0)=0`
-/

namespace A299090.P9904234674522987698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) - 1) + 1

end

end A299090.P9904234674522987698

namespace A299090

/-- `a(∏{p}[n+1, #^val(n+1, #²)]-1)+1` -/
def P9904234674522987698.Spec : Prop :=
  ∀ n, (P9904234674522987698.a n : ℤ) = A299090 (n + 1)

end A299090

/-! ## A299090.P9401145696243103784

`ceil(sqrt(A392278(1+n)))`
-/

namespace A299090.P9401145696243103784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A392278 (1 + n) : ℝ)⌉

end

end A299090.P9401145696243103784

namespace A299090

/-- `ceil(sqrt(A392278(1+n)))` -/
def P9401145696243103784.Spec : Prop :=
  ∀ n, P9401145696243103784.a n = A299090 (n + 1)

end A299090

/-! ## A299090.P14444972095940725833

`ceil(log2(A067132(1+n)))`
-/

namespace A299090.P14444972095940725833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A067132 (1 + n) : ℝ)⌉

end

end A299090.P14444972095940725833

namespace A299090

/-- `ceil(log2(A067132(1+n)))` -/
def P14444972095940725833.Spec : Prop :=
  ∀ n, P14444972095940725833.a n = A299090 (n + 1)

end A299090

/-! ## A299090.P10223337669083520681

`1+a(A057918(1+n))` with `a(0)=0`
-/

namespace A299090.P10223337669083520681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A057918 (1 + n)).toNat

end

end A299090.P10223337669083520681

namespace A299090

/-- `1+a(A057918(1+n))` -/
def P10223337669083520681.Spec : Prop :=
  ∀ n, (P10223337669083520681.a n : ℤ) = A299090 (n + 1)

end A299090

/-! ## A299090.P26272087026464981

`round(sqrt(2*A368781(n+1)))`
-/

namespace A299090.P26272087026464981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A368781 (n + 1) : ℝ))

end

end A299090.P26272087026464981

namespace A299090

/-- `round(sqrt(2*A368781(n+1)))` -/
def P26272087026464981.Spec : Prop :=
  ∀ n, P26272087026464981.a n = A299090 (n + 1)

end A299090

/-! ## A299090.P10261459134554469240

`ceil(log2(A051903(n+1)+1))`
-/

namespace A299090.P10261459134554469240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A051903 (n + 1) + 1 : ℝ)⌉

end

end A299090.P10261459134554469240

namespace A299090

/-- `ceil(log2(A051903(n+1)+1))` -/
def P10261459134554469240.Spec : Prop :=
  ∀ n, P10261459134554469240.a n = A299090 (n + 1)

end A299090

/-! ## A299090.P15386089012544959951

`ceil(log2(A267116(n+1)+1))`
-/

namespace A299090.P15386089012544959951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A267116 (n + 1) + 1 : ℝ)⌉

end

end A299090.P15386089012544959951

namespace A299090

/-- `ceil(log2(A267116(n+1)+1))` -/
def P15386089012544959951.Spec : Prop :=
  ∀ n, P15386089012544959951.a n = A299090 (n + 1)

end A299090

/-! ## A299090.P4255790678265870725

`a(A000188(n+1)-1)+1` with `a(0)=0`
-/

namespace A299090.P4255790678265870725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A000188 (n + 1) - 1).toNat + 1

end

end A299090.P4255790678265870725

namespace A299090

/-- `a(A000188(n+1)-1)+1` -/
def P4255790678265870725.Spec : Prop :=
  ∀ n, (P4255790678265870725.a n : ℤ) = A299090 (n + 1)

end A299090

/-! ## A299090.P12365572971582853455

`ceil(log2(val(A046523(n+1), 2)+1))`
-/

namespace A299090.P12365572971582853455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (SequenceMachineLib.valuation (A046523 (n + 1)).toNat 2 + 1 : ℝ)⌉

end

end A299090.P12365572971582853455

namespace A299090

/-- `ceil(log2(val(A046523(n+1), 2)+1))` -/
def P12365572971582853455.Spec : Prop :=
  ∀ n, P12365572971582853455.a n = A299090 (n + 1)

end A299090

/-! ## A299090.P17869501897639471246

`A061395(A293442(n+1))`
-/

namespace A299090.P17869501897639471246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A293442 (n + 1)).toNat

end

end A299090.P17869501897639471246

namespace A299090

/-- `A061395(A293442(n+1))` -/
def P17869501897639471246.Spec : Prop :=
  ∀ n, P17869501897639471246.a n = A299090 (n + 1)

end A299090

/-! ## A299090.P6964279361835886871

`A029837(A051903(n+1)+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A299090

/-- `A029837(A051903(n+1)+1)` -/
def P6964279361835886871.Spec : Prop :=
  ∀ n, P6964279361835886871.a n = A299090 (n + 1)

theorem P6964279361835886871.correct : P6964279361835886871.Spec := by
  intro n
  simp only [A299090, Nat.add_sub_cancel]

end A299090

/-! ## A299090.P14146729128142009204

`A075172(val(A046523(n+1), 2))`
-/

namespace A299090.P14146729128142009204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075172 (SequenceMachineLib.valuation (A046523 (n + 1)).toNat 2)

end

end A299090.P14146729128142009204

namespace A299090

/-- `A075172(val(A046523(n+1), 2))` -/
def P14146729128142009204.Spec : Prop :=
  ∀ n, P14146729128142009204.a n = A299090 (n + 1)

end A299090

/-! ## A299090.P7438816801335313251

`A000523(2*A051903(n+1)+1)`
-/

namespace A299090.P7438816801335313251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * A051903 (n + 1) + 1).toNat

end

end A299090.P7438816801335313251

namespace A299090

/-- `A000523(2*A051903(n+1)+1)` -/
def P7438816801335313251.Spec : Prop :=
  ∀ n, P7438816801335313251.a n = A299090 (n + 1)

end A299090

/-! ## A299090.P4430427511817559207

`A070939(2*A051903(n+1))-1`
-/

namespace A299090.P4430427511817559207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (2 * A051903 (n + 1)).toNat - 1

end

end A299090.P4430427511817559207

namespace A299090

/-- `A070939(2*A051903(n+1))-1` -/
def P4430427511817559207.Spec : Prop :=
  ∀ n, P4430427511817559207.a n = A299090 (n + 1)

end A299090

/-! ## A299090.P10549749578814839617

`A051903(A062383(A051903(n+1)))`
-/

namespace A299090.P10549749578814839617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A062383 (A051903 (n + 1)).toNat).toNat

end

end A299090.P10549749578814839617

namespace A299090

/-- `A051903(A062383(A051903(n+1)))` -/
def P10549749578814839617.Spec : Prop :=
  ∀ n, P10549749578814839617.a n = A299090 (n + 1)

end A299090

/-! ## A299090.P1095542036910498228

`A334871(A334866(A267116(n+1)))`
-/

namespace A299090.P1095542036910498228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334871 (A334866 (A267116 (n + 1)).toNat).toNat

end

end A299090.P1095542036910498228

namespace A299090

/-- `A334871(A334866(A267116(n+1)))` -/
def P1095542036910498228.Spec : Prop :=
  ∀ n, P1095542036910498228.a n = A299090 (n + 1)

end A299090

/-! ## A299090.P15187157105835977662

`A000523(A051903((n+1)²)+1)`
-/

namespace A299090.P15187157105835977662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A051903 ((n + 1) ^ 2) + 1).toNat

end

end A299090.P15187157105835977662

namespace A299090

/-- `A000523(A051903((n+1)²)+1)` -/
def P15187157105835977662.Spec : Prop :=
  ∀ n, P15187157105835977662.a n = A299090 (n + 1)

end A299090

/-! ## A299090.P4726351257908988251

`A252735(A293442((n+1)²))`
-/

namespace A299090.P4726351257908988251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (A293442 ((n + 1) ^ 2)).toNat

end

end A299090.P4726351257908988251

namespace A299090

/-- `A252735(A293442((n+1)²))` -/
def P4726351257908988251.Spec : Prop :=
  ∀ n, P4726351257908988251.a n = A299090 (n + 1)

end A299090

/-!
# A299091: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299091, there is no canonical definition to state claims against.
-/

/-! ## A299091.P35977472425282596

`A299097(∑[4*n]+1)`
-/

namespace A299091.P35977472425282596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299097 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299091.P35977472425282596

/-! ## A299091.P7790708178510197541

`record[A299097(A330613(n+1))]`
-/

namespace A299091.P7790708178510197541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299097 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299091.P7790708178510197541

/-! ## A299091.P12823863601348989564

`record[A003982(n)*A299097(n+1)]`
-/

namespace A299091.P12823863601348989564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299091.P12823863601348989564

/-! ## A299091.P16832132771552058676

`record[A214505(n)*A299097(n+1)]`
-/

namespace A299091.P16832132771552058676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A299097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299091.P16832132771552058676

/-!
# A299092: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299092, there is no canonical definition to state claims against.
-/

/-! ## A299092.P4924682669015422323

`A299097(∑[n+2]+4)`
-/

namespace A299092.P4924682669015422323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299097 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299092.P4924682669015422323

/-!
# A299093: Number of n X 4 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299093, there is no canonical definition to state claims against.
-/

/-! ## A299093.P7350150544546326927

`A299097(∑[n+3]+7)`
-/

namespace A299093.P7350150544546326927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299097 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A299093.P7350150544546326927

/-! ## A299093.P9657519639723345260

`record[A073423(n)*A299097(n+4)]`
-/

namespace A299093.P9657519639723345260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n * A299097 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299093.P9657519639723345260

/-!
# A299094: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299094, there is no canonical definition to state claims against.
-/

/-! ## A299094.P9967967800970285193

`A299097(∑[n+4]+11)`
-/

namespace A299094.P9967967800970285193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299097 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A299094.P9967967800970285193

/-!
# A299095: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299095, there is no canonical definition to state claims against.
-/

/-! ## A299095.P5927012647288680311

`A299097(A056115(n)+21)`
-/

namespace A299095.P5927012647288680311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299097 (A056115 n + 21).toNat

end

end A299095.P5927012647288680311

/-! ## A299095.P14053433389288379573

`A299097(A374007(n+1))`
-/

namespace A299095.P14053433389288379573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299097 (A374007 (n + 1)).toNat

end

end A299095.P14053433389288379573

/-!
# A299096: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299096, there is no canonical definition to state claims against.
-/

/-! ## A299096.P5163614804787031309

`A299097(A167487(n+5))`
-/

namespace A299096.P5163614804787031309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299097 (A167487 (n + 5)).toNat

end

end A299096.P5163614804787031309

/-! ## A299096.P14295853485017674606

`A299097(A374008(n+1))`
-/

namespace A299096.P14295853485017674606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299097 (A374008 (n + 1)).toNat

end

end A299096.P14295853485017674606

/-!
# A299097: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299097, there is no canonical definition to state claims against.
-/

/-! ## A299097.P8378989016104613557

`A299879(n+1)-A316864(A240321(n+1))`
-/

namespace A299097.P8378989016104613557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299879 (n + 1) - A316864 (A240321 (n + 1)).toNat

end

end A299097.P8378989016104613557

/-! ## A299097.P7484120143990049939

`A299879(n+1)-A292251(A128434(n))`
-/

namespace A299097.P7484120143990049939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299879 (n + 1) - A292251 (A128434 n).toNat

end

end A299097.P7484120143990049939

/-! ## A299097.P12554550824509114524

`A299879(n+1)-A295659(A136170(n))`
-/

namespace A299097.P12554550824509114524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299879 (n + 1) - A295659 (A136170 n).toNat

end

end A299097.P12554550824509114524

/-! ## A299097.P5637979072799173320

`A299879(n+1)-A003982(A256748(n+1))`
-/

namespace A299097.P5637979072799173320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299879 (n + 1) - A003982 (A256748 (n + 1)).toNat

end

end A299097.P5637979072799173320

/-! ## A299097.P16978934834410121248

`A299879(n+1)-A102683(A072345(n))`
-/

namespace A299097.P16978934834410121248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299879 (n + 1) - A102683 (A072345 n).toNat

end

end A299097.P16978934834410121248

/-!
# A299098: Number of rooted identity trees with 2n nodes.

The programs for A299098, there is no canonical definition to state claims against.
-/

/-! ## A299098.P17478327594990125076

`A004111(2*n)`
-/

namespace A299098.P17478327594990125076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (2 * n)

end

end A299098.P17478327594990125076

/-! ## A299098.P1415709236980801351

`record[A004111(and(1+n, n))]`
-/

namespace A299098.P1415709236980801351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (Nat.land (1 + n) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299098.P1415709236980801351

/-! ## A299098.P6876469079560051209

`record[gcd(n%2, A004111(n))]`
-/

namespace A299098.P6876469079560051209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n % 2 : ℕ) : ℤ) (A004111 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299098.P6876469079560051209

/-! ## A299098.P8677463001350834723

`record[A004111(gcd(n+1, ∑[n])-1)]`
-/

namespace A299098.P8677463001350834723
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299098.P8677463001350834723

/-! ## A299098.P12375882444615067375

`record[A004111(n-∑{e}[xor(n, -n), #])]`
-/

namespace A299098.P12375882444615067375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (n - ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299098.P12375882444615067375

/-! ## A299098.P2574055727288600354

`record[A004111(floor(n/2^val(n+1, 2)))]`
-/

namespace A299098.P2574055727288600354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 ⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299098.P2574055727288600354

/-! ## A299098.P6314406371660704488

`record[A004111(A014681(n))]`
-/

namespace A299098.P6314406371660704488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299098.P6314406371660704488

/-! ## A299098.P5046671600999356310

`record[A004111(A065423(n+1))]`
-/

namespace A299098.P5046671600999356310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (A065423 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299098.P5046671600999356310

/-! ## A299098.P17189013198599487459

`record[A004111(A093178(n)-1)]`
-/

namespace A299098.P17189013198599487459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (A093178 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299098.P17189013198599487459

/-! ## A299098.P4383161047214839547

`record[A004111(n/A093178(n))]`
-/

namespace A299098.P4383161047214839547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (SequenceMachineLib.roundAway ((n : ℚ) / (A093178 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299098.P4383161047214839547

/-! ## A299098.P9280946581622542556

`record[A004111(A000265(n+1)-1)]`
-/

namespace A299098.P9280946581622542556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (A000265 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299098.P9280946581622542556

/-! ## A299098.P5233099775614353265

`record[A004111(n-A007814(n+1))]`
-/

namespace A299098.P5233099775614353265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 ((n : ℤ) - A007814 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299098.P5233099775614353265

/-! ## A299098.P12414691278171253624

`record[A004111(n-A055396(n+1))]`
-/

namespace A299098.P12414691278171253624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 ((n : ℤ) - A055396 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299098.P12414691278171253624

/-! ## A299098.P6155684457083837161

`record[A004111(gcd(n, A007814(n+1)))]`
-/

namespace A299098.P6155684457083837161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (Int.gcd (n : ℤ) (A007814 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299098.P6155684457083837161

/-! ## A299098.P8610902546149338799

`record[A004111(A036044(A036044(n)))]`
-/

namespace A299098.P8610902546149338799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (A036044 (A036044 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299098.P8610902546149338799

/-! ## A299098.P5837572941173753801

`record[A004111(A004526(A257088(n)))]`
-/

namespace A299098.P5837572941173753801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (A004526 (A257088 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299098.P5837572941173753801

/-! ## A299098.P6196761080261280676

`record[A004111(A008611(A000265(n+1)))]`
-/

namespace A299098.P6196761080261280676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (A008611 (A000265 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299098.P6196761080261280676

/-! ## A299098.P11932656872848341929

`A318758(A130883(n)+1)`
-/

namespace A299098.P11932656872848341929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A130883 n + 1).toNat

end

end A299098.P11932656872848341929

/-!
# A299099: Number of (n + 1, n + 2)-core partitions with odd parts and corresponding order ideals confined to the two outermost diagonals of P_{n + 1, n + 2}.

The programs for A299099, the canonical program `A299099.P5976621745013159596` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299099 has offset 0).

The definition of A299099 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299099.P5976621745013159596

`ogf((1+x-x^2-x^3+x^4)/(1-x-3x^2+2x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A299099

/-- `ogf((1+x-x^2-x^3+x^4)/(1-x-3x^2+2x^3+x^4-x^5))` -/
def P5976621745013159596.Spec : Prop :=
  ∀ n, P5976621745013159596.a n = A299099 n

theorem P5976621745013159596.correct : P5976621745013159596.Spec := by
  intro n
  simp only [A299099]

end A299099

/-! ## A299099.P15327359745883320863

`A319755(n+2)-A000120(A184535(n+1))`
-/

namespace A299099.P15327359745883320863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319755 (n + 2) - A000120 (A184535 (n + 1)).toNat

end

end A299099.P15327359745883320863

namespace A299099

/-- `A319755(n+2)-A000120(A184535(n+1))` -/
def P15327359745883320863.Spec : Prop :=
  ∀ n, P15327359745883320863.a n = A299099 n

end A299099

/-! ## A299099.P12480285852447767290

`A176075(C(2*n, n))`
-/

namespace A299099.P12480285852447767290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176075 (Nat.choose (2 * n) n)

end

end A299099.P12480285852447767290

namespace A299099

/-- `A176075(C(2*n, n))` -/
def P12480285852447767290.Spec : Prop :=
  ∀ n, P12480285852447767290.a n = A299099 n

end A299099

