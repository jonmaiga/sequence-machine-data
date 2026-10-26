import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B001.C011
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

/-!
# A221000: Number of nX5 arrays of occupancy after each element stays put or moves to some horizontal or vertical neighbor.

The programs for A221000, there is no canonical definition to state claims against.
-/

/-! ## A221000.P15381281143322594738

`A221001(A374005(n+1))`
-/

namespace A221000.P15381281143322594738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221001 (A374005 (n + 1)).toNat

end

end A221000.P15381281143322594738

/-! ## A221000.P3530887101685667902

`A221001(eq[6, A131818(n+1)])`
-/

namespace A221000.P3530887101685667902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221001 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221000.P3530887101685667902

/-!
# A221001: T(n,k)=Number of nXk arrays of occupancy after each element stays put or moves to some horizontal or vertical neighbor.

The programs for A221001, there is no canonical definition to state claims against.
-/

/-! ## A221001.P16497396882888042121

`A222093(n+1)-A000122(A175041(n+3))`
-/

namespace A221001.P16497396882888042121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222093 (n + 1) - A000122 (A175041 (n + 3)).toNat

end

end A221001.P16497396882888042121

/-! ## A221001.P8712363571738869466

`A222093(n+1)-A025466(n*A222093(n+1))`
-/

namespace A221001.P8712363571738869466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222093 (n + 1) - A025466 ((n : ℤ) * A222093 (n + 1)).toNat

end

end A221001.P8712363571738869466

/-! ## A221001.P16456116410556133890

`A222093(n+1)-A037912(A084507(n))`
-/

namespace A221001.P16456116410556133890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222093 (n + 1) - A037912 (A084507 n).toNat

end

end A221001.P16456116410556133890

/-! ## A221001.P11241340867384300675

`A222093(n+1)-A037912(A181442(n))`
-/

namespace A221001.P11241340867384300675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222093 (n + 1) - A037912 (A181442 n).toNat

end

end A221001.P11241340867384300675

/-! ## A221001.P15631873086982686213

`A222093(n+1)-A010894(A315335(n))`
-/

namespace A221001.P15631873086982686213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222093 (n + 1) - A010894 ((A315335 n).toNat + 21)

end

end A221001.P15631873086982686213

/-!
# A221002: The Wiener index of the nanostar dendrimer G[n], defined pictorially in the Karbasioun-Ashrafi reference.

The programs for A221002, the canonical program `A221002.P15314642728128142541` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221002 has offset 0).

The definition of A221002 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A221002.P15314642728128142541

`502+2^(n+6)*5*(14*n+53)+4^(n+6)*(5*n+1)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A221002

/-- `502+2^(n+6)*5*(14*n+53)+4^(n+6)*(5*n+1)` -/
def P15314642728128142541.Spec : Prop :=
  ∀ n, (P15314642728128142541.a n : ℤ) = A221002 n

theorem P15314642728128142541.correct : P15314642728128142541.Spec := by
  intro n
  simp only [A221002]

end A221002

/-! ## A221002.P16577226334712664194

`A224452(n+2)`
-/

namespace A221002.P16577226334712664194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224452 (n + 2)

end

end A221002.P16577226334712664194

namespace A221002

/-- `A224452(n+2)` -/
def P16577226334712664194.Spec : Prop :=
  ∀ n, P16577226334712664194.a n = A221002 n

end A221002

/-! ## A221002.P8973770323539503322

`record[A224452(abs(2-n))]`
-/

namespace A221002.P8973770323539503322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224452 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221002.P8973770323539503322

namespace A221002

/-- `record[A224452(abs(2-n))]` -/
def P8973770323539503322.Spec : Prop :=
  ∀ n, P8973770323539503322.a n = A221002 n

end A221002

/-!
# A221003: The hyper-Wiener index of the nanostar dendrimer G[n], defined pictorially in the Karbasioun-Ashrafi reference.

The programs for A221003, there is no canonical definition to state claims against.
-/

/-! ## A221003.P11310675156574218913

`A224453(n+2)`
-/

namespace A221003.P11310675156574218913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224453 (n + 2)

end

end A221003.P11310675156574218913

/-! ## A221003.P14681550247332786448

`record[A224453(abs(2-n))]`
-/

namespace A221003.P14681550247332786448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224453 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221003.P14681550247332786448

/-!
# A221018: Number k such that Fibonacci(k) is divisible by k, k + 1 and k - 1.

The programs for A221018, there is no canonical definition to state claims against.
-/

/-! ## A221018.P5863456921831401466

`∩[A023172(n+1), A225219(n+1)]`
-/

namespace A221018.P5863456921831401466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221018.P5863456921831401466

/-! ## A221018.P15368047491070104265

`∩[A121874(n+1), A225219(n+1)]`
-/

namespace A221018.P15368047491070104265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221018.P15368047491070104265

/-! ## A221018.P16851047544485885973

`∩[A217738(n+1), A225219(n+1)]`
-/

namespace A221018.P16851047544485885973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221018.P16851047544485885973

/-! ## A221018.P16594988593876337787

`∩[A225219(n+1), A270470(n+1)]`
-/

namespace A221018.P16594988593876337787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221018.P16594988593876337787

/-!
# A221019: Reduced numerators of A179420(n)/n!, where e.g.f. A(x) = Sum_{n>=0} A179420(n)/n! satisfies: A(A(x)) = x*A'(x) with A(0)=0, A'(0)=1.

The programs for A221019, there is no canonical definition to state claims against.
-/

/-! ## A221019.P16671927759690493811

`A053645(∑[n]*Δ[abs(1-n)!]+3)`
-/

namespace A221019.P16671927759690493811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) + 3).toNat

end

end A221019.P16671927759690493811

/-!
# A221020: Reduced denominators of A179420(n)/n!, where e.g.f. A(x) = Sum_{n>=0} A179420(n)/n! satisfies: A(A(x)) = x*A'(x) with A(0)=0, A'(0)=1.

The programs for A221020, there is no canonical definition to state claims against.
-/

/-! ## A221020.P9133882050920065973

`A259685(A194106(n+2)+1)`
-/

namespace A221020.P9133882050920065973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259685 (A194106 (n + 2) + 1).toNat

end

end A221020.P9133882050920065973

/-! ## A221020.P13636577518668111174

`A018412(A133385(n))-A055953(n)`
-/

namespace A221020.P13636577518668111174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018412 (A133385 n).toNat - A055953 n

end

end A221020.P13636577518668111174

/-! ## A221020.P8984707771742061451

`A018412(A133385(n))-A165051(n)`
-/

namespace A221020.P8984707771742061451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018412 (A133385 n).toNat - A165051 n

end

end A221020.P8984707771742061451

/-!
# A221021: Equals one maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal, vertical and antidiagonal neighbors in a random 0..3 nX3 array.

The programs for A221021, there is no canonical definition to state claims against.
-/

/-! ## A221021.P4478664900494506382

`A221024(∑[n+2]+4)`
-/

namespace A221021.P4478664900494506382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221024 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221021.P4478664900494506382

/-! ## A221021.P1896698792905579633

`lcm(1-and(2, n), A221024(A167614(n+1)))`
-/

namespace A221021.P1896698792905579633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A221024 (A167614 (n + 1)).toNat)

end

end A221021.P1896698792905579633

/-! ## A221021.P6786603589108195776

`A221024(A167614(n+1))+A025465(n)`
-/

namespace A221021.P6786603589108195776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221024 (A167614 (n + 1)).toNat + A025465 n

end

end A221021.P6786603589108195776

/-! ## A221021.P10204122660345437143

`A221024(A167614(n+1))+A025466(n)`
-/

namespace A221021.P10204122660345437143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221024 (A167614 (n + 1)).toNat + A025466 n

end

end A221021.P10204122660345437143

/-! ## A221021.P6373328851797892753

`A221024(A167614(n+1))+A052036(n)`
-/

namespace A221021.P6373328851797892753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221024 (A167614 (n + 1)).toNat + A052036 n

end

end A221021.P6373328851797892753

/-!
# A221022: Equals one maps: number of n X 4 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal, vertical and antidiagonal neighbors in a random 0..3 n X 4 array.

The programs for A221022, there is no canonical definition to state claims against.
-/

/-! ## A221022.P9785490558565369116

`A221024(A374004(n+1))`
-/

namespace A221022.P9785490558565369116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221024 (A374004 (n + 1)).toNat

end

end A221022.P9785490558565369116

/-! ## A221022.P4934337985739985628

`A221024(A141214(n)+7)`
-/

namespace A221022.P4934337985739985628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221024 (A141214 n + 7).toNat

end

end A221022.P4934337985739985628

/-! ## A221022.P1379149802685138671

`A221024(A052905(n)+9)`
-/

namespace A221022.P1379149802685138671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221024 (A052905 n + 9).toNat

end

end A221022.P1379149802685138671

/-! ## A221022.P3684235173222802364

`A221024(A055999(n)+10)`
-/

namespace A221022.P3684235173222802364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221024 (A055999 n + 10).toNat

end

end A221022.P3684235173222802364

/-!
# A221023: Equals one maps: number of n X 5 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal, vertical and antidiagonal neighbors in a random 0..3 n X 5 array.

The programs for A221023, there is no canonical definition to state claims against.
-/

/-! ## A221023.P10880409865179682851

`A221024(A374005(n+1))`
-/

namespace A221023.P10880409865179682851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221024 (A374005 (n + 1)).toNat

end

end A221023.P10880409865179682851

/-! ## A221023.P5335357431581173676

`A221024(A167499(n+3))`
-/

namespace A221023.P5335357431581173676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221024 (A167499 (n + 3)).toNat

end

end A221023.P5335357431581173676

/-! ## A221023.P9374925561804259490

`A221024(A155212(n)+13)`
-/

namespace A221023.P9374925561804259490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221024 (A155212 n + 13).toNat

end

end A221023.P9374925561804259490

/-!
# A221025: Sum of neighbor maps: log base 2 of the number of n X n binary arrays indicating the locations of corresponding elements equal to the sum mod 2 of their horizontal, vertical and antidiagonal neighbors in a random 0..1 n X n array.

The programs for A221025, there is no canonical definition to state claims against.
-/

/-! ## A221025.P13908423759412970059

`A221028(∑[4*n]+1)`
-/

namespace A221025.P13908423759412970059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221028 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221025.P13908423759412970059

/-! ## A221025.P17077386297836982961

`A221028(A001844(n))%96`
-/

namespace A221025.P17077386297836982961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221028 (A001844 n).toNat) 96

end

end A221025.P17077386297836982961

/-! ## A221025.P15478986162087521886

`record[A221028(A330613(n+1))]`
-/

namespace A221025.P15478986162087521886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221028 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221025.P15478986162087521886

/-! ## A221025.P13702642869451502704

`record[A221028(n+1)-A271710(n)]`
-/

namespace A221025.P13702642869451502704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221028 (n + 1) - A271710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221025.P13702642869451502704

/-! ## A221025.P3028098599177368862

`record[A003982(n)*A221028(n+1)]`
-/

namespace A221025.P3028098599177368862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A221028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221025.P3028098599177368862

/-!
# A221026: Sum of neighbor maps: log base 2 of the number of nX6 binary arrays indicating the locations of corresponding elements equal to the sum mod 2 of their horizontal, vertical and antidiagonal neighbors in a random 0..1 nX6 array.

The programs for A221026, there is no canonical definition to state claims against.
-/

/-! ## A221026.P3353100707272625551

`A221028(eq[7, A131818(n+1)])`
-/

namespace A221026.P3353100707272625551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221028 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221026.P3353100707272625551

/-! ## A221026.P9178646038105795775

`A221028(A374007(n+1))`
-/

namespace A221026.P9178646038105795775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221028 (A374007 (n + 1)).toNat

end

end A221026.P9178646038105795775

/-! ## A221026.P1081599573049466118

`A221028(A052905(n+3))`
-/

namespace A221026.P1081599573049466118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221028 (A052905 (n + 3)).toNat

end

end A221026.P1081599573049466118

/-! ## A221026.P1126280638140900899

`A221028(A056119(n)+16)`
-/

namespace A221026.P1126280638140900899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221028 (A056119 n + 16).toNat

end

end A221026.P1126280638140900899

/-! ## A221026.P11165693041943425622

`A221028(eq[3, A219347(n)])`
-/

namespace A221026.P11165693041943425622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221028 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221026.P11165693041943425622

/-!
# A221027: Sum of neighbor maps: log base 2 of the number of nX7 binary arrays indicating the locations of corresponding elements equal to the sum mod 2 of their horizontal, vertical and antidiagonal neighbors in a random 0..1 nX7 array.

The programs for A221027, there is no canonical definition to state claims against.
-/

/-! ## A221027.P17288894903552709846

`A221028(C(n+8, 2)-n)`
-/

namespace A221027.P17288894903552709846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221028 (Nat.choose (n + 8) 2 - n)

end

end A221027.P17288894903552709846

/-! ## A221027.P6486907763015788593

`A221028(A056119(n)+28)`
-/

namespace A221027.P6486907763015788593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221028 (A056119 n + 28).toNat

end

end A221027.P6486907763015788593

/-! ## A221027.P11040380064626201531

`A221028(eq[11, A066657(n)])`
-/

namespace A221027.P11040380064626201531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221028 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221027.P11040380064626201531

/-! ## A221027.P1062961861549799503

`A221028(A166136(n+5)+1)`
-/

namespace A221027.P1062961861549799503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221028 (A166136 (n + 5) + 1).toNat

end

end A221027.P1062961861549799503

/-! ## A221027.P8016045001430920668

`A221028(eq[8, A131818(n+1)])`
-/

namespace A221027.P8016045001430920668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221028 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221027.P8016045001430920668

/-!
# A221028: T(n,k) = Sum of neighbor maps: log base 2 of the number of n X k binary arrays indicating the locations of corresponding elements equal to the sum mod 2 of their horizontal, vertical and antidiagonal neighbors in a random 0..1 n X k array.

The programs for A221028, there is no canonical definition to state claims against.
-/

/-! ## A221028.P11108447407066545295

`A342241(A000010(A222448(n+1)))`
-/

namespace A221028.P11108447407066545295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342241 (A000010 (A222448 (n + 1)).toNat).toNat

end

end A221028.P11108447407066545295

/-!
# A221029: Majority value maps: number of n X n binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and antidiagonal neighbors in a random 0..2 n X n array.

The programs for A221029, there is no canonical definition to state claims against.
-/

/-! ## A221029.P18134821921039933775

`A221035(∑[4*n]+1)`
-/

namespace A221029.P18134821921039933775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221035 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221029.P18134821921039933775

/-! ## A221029.P16672684762550264436

`record[A221035(∑[A266981(n)])]`
-/

namespace A221029.P16672684762550264436
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221035 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221029.P16672684762550264436

/-!
# A221030: Majority value maps: number of n X 3 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and antidiagonal neighbors in a random 0..2 n X 3 array.

The programs for A221030, there is no canonical definition to state claims against.
-/

/-! ## A221030.P4535910839140397898

`A221035(∑[n+3]+1)`
-/

namespace A221030.P4535910839140397898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221035 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221030.P4535910839140397898

/-! ## A221030.P14880056222669522961

`A221499(∑[n+3]+1)`
-/

namespace A221030.P14880056222669522961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221499 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221030.P14880056222669522961

/-! ## A221030.P3238129184867164657

`record[A221035(A198464(n+1))]`
-/

namespace A221030.P3238129184867164657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221035 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221030.P3238129184867164657

/-! ## A221030.P12097957468456568726

`gcd((2*(n+1))%2, A221035(A034856(n+2)))`
-/

namespace A221030.P12097957468456568726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * (n + 1) % 2 : ℕ) : ℤ) (A221035 (A034856 (n + 2)).toNat)

end

end A221030.P12097957468456568726

/-! ## A221030.P17975797190882403292

`A221499(Δ[A008778(n)])+A070565(n)`
-/

namespace A221030.P17975797190882403292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221499 (f1 (n + 1) - f1 n).toNat + A070565 n

end

end A221030.P17975797190882403292

/-!
# A221031: Majority value maps: number of n X 4 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and antidiagonal neighbors in a random 0..2 n X 4 array.

The programs for A221031, there is no canonical definition to state claims against.
-/

/-! ## A221031.P12824373580468474944

`A221035(∑[n+4]+3)`
-/

namespace A221031.P12824373580468474944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221035 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A221031.P12824373580468474944

/-! ## A221031.P12182643915000936016

`A221499(∑[n+4]+3)`
-/

namespace A221031.P12182643915000936016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221499 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A221031.P12182643915000936016

/-! ## A221031.P8649498636754717989

`A047996(n)*A221035(A027379(n+2))`
-/

namespace A221031.P8649498636754717989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 n * A221035 (A027379 (n + 2)).toNat

end

end A221031.P8649498636754717989

/-!
# A221032: Majority value maps: number of nX5 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and antidiagonal neighbors in a random 0..2 nX5 array.

The programs for A221032, there is no canonical definition to state claims against.
-/

/-! ## A221032.P2836605920420528049

`A221035(Δ[A264443(n)])`
-/

namespace A221032.P2836605920420528049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221035 (f1 (n + 1) - f1 n).toNat

end

end A221032.P2836605920420528049

/-! ## A221032.P6976772177302110719

`A221035(A046691(n+3))`
-/

namespace A221032.P6976772177302110719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221035 (A046691 (n + 3)).toNat

end

end A221032.P6976772177302110719

/-! ## A221032.P13073946056510972614

`A221035(A056115(n)+11)`
-/

namespace A221032.P13073946056510972614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221035 (A056115 n + 11).toNat

end

end A221032.P13073946056510972614

/-! ## A221032.P6499847025793895271

`A221035(eq[2, A092921(n)])`
-/

namespace A221032.P6499847025793895271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221032.P6499847025793895271

/-!
# A221033: Majority value maps: number of nX6 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and antidiagonal neighbors in a random 0..2 nX6 array.

The programs for A221033, there is no canonical definition to state claims against.
-/

/-! ## A221033.P14384020825849325067

`A221035(A052905(n+3))`
-/

namespace A221033.P14384020825849325067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221035 (A052905 (n + 3)).toNat

end

end A221033.P14384020825849325067

/-! ## A221033.P10391711620562543457

`A221035(A056119(n)+16)`
-/

namespace A221033.P10391711620562543457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221035 (A056119 n + 16).toNat

end

end A221033.P10391711620562543457

/-! ## A221033.P4611936772797451917

`A221035(eq[3, A219347(n)])`
-/

namespace A221033.P4611936772797451917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221033.P4611936772797451917

/-!
# A221034: Majority value maps: number of nX7 binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and antidiagonal neighbors in a random 0..2 nX7 array.

The programs for A221034, there is no canonical definition to state claims against.
-/

/-! ## A221034.P7232001007729270733

`A221035(A055999(n+4))`
-/

namespace A221034.P7232001007729270733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221035 (A055999 (n + 4)).toNat

end

end A221034.P7232001007729270733

/-! ## A221034.P7238211964470810101

`A221035(eq[4, A219347(n)])`
-/

namespace A221034.P7238211964470810101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221034.P7238211964470810101

/-!
# A221035: T(n,k)=Majority value maps: number of nXk binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and antidiagonal neighbors in a random 0..2 nXk array.

The programs for A221035, there is no canonical definition to state claims against.
-/

/-! ## A221035.P5242263115746975206

`A028310(A221499(n+1))`
-/

namespace A221035.P5242263115746975206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A221499 (n + 1)).toNat

end

end A221035.P5242263115746975206

/-! ## A221035.P10388664244428808551

`A221499(∑[∑[A111332(n)]])`
-/

namespace A221035.P10388664244428808551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111332 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221499 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A221035.P10388664244428808551

/-! ## A221035.P14681572204315140357

`A023443(A221499(n+1)+1)`
-/

namespace A221035.P14681572204315140357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A221499 (n + 1) + 1).toNat

end

end A221035.P14681572204315140357

/-! ## A221035.P1585797752667016612

`A023444(A221499(n+1)+2)`
-/

namespace A221035.P1585797752667016612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A221499 (n + 1) + 2).toNat

end

end A221035.P1585797752667016612

/-! ## A221035.P4864261358322185375

`A004526(2*A221499(n+1))`
-/

namespace A221035.P4864261358322185375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A221499 (n + 1)).toNat

end

end A221035.P4864261358322185375

/-!
# A221036: Majority value maps: number of 2 X n binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and antidiagonal neighbors in a random 0..2 2 X n array.

The programs for A221036, there is no canonical definition to state claims against.
-/

/-! ## A221036.P13854042710871751016

`A221035(∑[n+1]+2)`
-/

namespace A221036.P13854042710871751016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221035 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221036.P13854042710871751016

/-! ## A221036.P14213886881520576772

`A221499(∑[n+1]+2)`
-/

namespace A221036.P14213886881520576772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221499 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221036.P14213886881520576772

/-! ## A221036.P5099929928992178974

`record[A221035(n+1)/A036073(n)]`
-/

namespace A221036.P5099929928992178974
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221035 (n + 1) : ℚ) / (A036073 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221036.P5099929928992178974

/-! ## A221036.P18178763122672044365

`record[A132014(n)*A221499(n+3)]`
-/

namespace A221036.P18178763122672044365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132014 n * A221499 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221036.P18178763122672044365

/-! ## A221036.P4706351730909609973

`record[root(A221035(n+1), A177767(n))]`
-/

namespace A221036.P4706351730909609973
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A221035 (n + 1) : ℝ) ^ (1 / (A177767 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221036.P4706351730909609973

/-!
# A221037: Majority value maps: number of 3Xn binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and antidiagonal neighbors in a random 0..2 3Xn array.

The programs for A221037, there is no canonical definition to state claims against.
-/

/-! ## A221037.P11423458623003888454

`A221035(∑[n+2]+4)`
-/

namespace A221037.P11423458623003888454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221035 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221037.P11423458623003888454

/-! ## A221037.P3335862551754946892

`A221035(A167614(n+1))+A011731(n)`
-/

namespace A221037.P3335862551754946892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221035 (A167614 (n + 1)).toNat + A011731 n

end

end A221037.P3335862551754946892

/-! ## A221037.P1863436196113106800

`A221035(A167614(n+1))+A025437(n)`
-/

namespace A221037.P1863436196113106800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221035 (A167614 (n + 1)).toNat + A025437 n

end

end A221037.P1863436196113106800

/-! ## A221037.P10514935240775769789

`A221035(A167614(n+1))+A025439(n)`
-/

namespace A221037.P10514935240775769789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221035 (A167614 (n + 1)).toNat + A025439 n

end

end A221037.P10514935240775769789

/-! ## A221037.P16206280074738198612

`A221035(A167614(n+1))+A025442(n)`
-/

namespace A221037.P16206280074738198612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221035 (A167614 (n + 1)).toNat + A025442 n

end

end A221037.P16206280074738198612

/-!
# A221038: Majority value maps: number of 4 X n binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and antidiagonal neighbors in a random 0..2 4 X n array.

The programs for A221038, there is no canonical definition to state claims against.
-/

/-! ## A221038.P8796970124910856377

`A221035(∑[n+3]+7)`
-/

namespace A221038.P8796970124910856377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221035 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A221038.P8796970124910856377

/-! ## A221038.P17884345778525506793

`A221035(A055999(n)+10)+A061853(3*n+1)`
-/

namespace A221038.P17884345778525506793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221035 (A055999 n + 10).toNat + A061853 (3 * n + 1)

end

end A221038.P17884345778525506793

/-! ## A221038.P11674827299940438407

`A221035(A055999(n)+10)%A081655(2*(n+1))`
-/

namespace A221038.P11674827299940438407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221035 (A055999 n + 10).toNat) (A081655 (2 * (n + 1)))

end

end A221038.P11674827299940438407

/-!
# A221039: Majority value maps: number of 5Xn binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and antidiagonal neighbors in a random 0..2 5Xn array.

The programs for A221039, there is no canonical definition to state claims against.
-/

/-! ## A221039.P7142827086927858562

`A221035(A167499(n+3))`
-/

namespace A221039.P7142827086927858562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221035 (A167499 (n + 3)).toNat

end

end A221039.P7142827086927858562

/-! ## A221039.P1341171193444513167

`A221035(A155212(n)+13)`
-/

namespace A221039.P1341171193444513167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221035 (A155212 n + 13).toNat

end

end A221039.P1341171193444513167

/-! ## A221039.P7568693012607544694

`A221035(A056000(n)+15)`
-/

namespace A221039.P7568693012607544694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221035 (A056000 n + 15).toNat

end

end A221039.P7568693012607544694

/-! ## A221039.P4513387697612474974

`A221035(eq[7, A066657(n)])`
-/

namespace A221039.P4513387697612474974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221039.P4513387697612474974

/-!
# A221040: Majority value maps: number of 6Xn binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and antidiagonal neighbors in a random 0..2 6Xn array.

The programs for A221040, there is no canonical definition to state claims against.
-/

/-! ## A221040.P17580103396800395349

`A221035(∑[n+5]+16)`
-/

namespace A221040.P17580103396800395349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221035 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A221040.P17580103396800395349

/-! ## A221040.P2351196333882699446

`A221035(A166136(n+4))+A217751(n+3)`
-/

namespace A221040.P2351196333882699446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221035 (A166136 (n + 4)).toNat + A217751 (n + 3)

end

end A221040.P2351196333882699446

/-!
# A221041: Majority value maps: number of 7Xn binary arrays indicating the locations of corresponding elements equal to at least half of their horizontal and antidiagonal neighbors in a random 0..2 7Xn array.

The programs for A221041, there is no canonical definition to state claims against.
-/

/-! ## A221041.P116100368490359049

`A221035(A056119(n)+28)`
-/

namespace A221041.P116100368490359049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221035 (A056119 n + 28).toNat

end

end A221041.P116100368490359049

/-! ## A221041.P882535387461222609

`A221035(eq[11, A066657(n)])`
-/

namespace A221041.P882535387461222609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221041.P882535387461222609

/-!
# A221042: The Wiener index of the Bethe cactus lattice graph D_n defined pictorially in the Hosoya - Balasubramanian reference.

The programs for A221042, the canonical program `A221042.P17955230848940652088` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221042 has offset 1).

The definition of A221042 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A221042.P17955230848940652088

`1/2+3^(n+1)*(3*(n+1)+4)+3^(2*(n+1))*(3*(n+1)-9/2)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A221042

/-- `1/2+3^(n+1)*(3*(n+1)+4)+3^(2*(n+1))*(3*(n+1)-9/2)` -/
def P17955230848940652088.Spec : Prop :=
  ∀ n, P17955230848940652088.a n = (A221042 (n + 1) : ℚ)

end A221042

/-!
# A221048: The odd semiprime numbers (A046315) which are orders of a non-Abelian group.

The programs for A221048, the canonical program `A221048.P1295286946370857410` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221048 has offset 1).

The definition of A221048 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221048.P1132347191277009341

`∩[2*n+1, A064899(n+1)]`
-/

namespace A221048.P1132347191277009341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221048.P1132347191277009341

namespace A221048

/-- `∩[2*n+1, A064899(n+1)]` -/
def P1132347191277009341.Spec : Prop :=
  ∀ n, (P1132347191277009341.a n : ℤ) = A221048 (n + 1)

end A221048

/-! ## A221048.P2207014366675731763

`record[A000265(A064899(n+4))]`
-/

namespace A221048.P2207014366675731763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A064899 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221048.P2207014366675731763

namespace A221048

/-- `record[A000265(A064899(n+4))]` -/
def P2207014366675731763.Spec : Prop :=
  ∀ n, P2207014366675731763.a n = A221048 (n + 1)

end A221048

/-! ## A221048.P3395433270266844048

`filter[A064899(n+1), A035263(#)]`
-/

namespace A221048.P3395433270266844048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A221048.P3395433270266844048

namespace A221048

/-- `filter[A064899(n+1), A035263(#)]` -/
def P3395433270266844048.Spec : Prop :=
  ∀ n, P3395433270266844048.a n = A221048 (n + 1)

end A221048

/-! ## A221048.P6617162971473969001

`filter[A064899(n+1), A105234(#)]`
-/

namespace A221048.P6617162971473969001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A221048.P6617162971473969001

namespace A221048

/-- `filter[A064899(n+1), A105234(#)]` -/
def P6617162971473969001.Spec : Prop :=
  ∀ n, P6617162971473969001.a n = A221048 (n + 1)

end A221048

/-! ## A221048.P5032623947353916953

`filter[A064899(n+1), A152822(#)]`
-/

namespace A221048.P5032623947353916953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A221048.P5032623947353916953

namespace A221048

/-- `filter[A064899(n+1), A152822(#)]` -/
def P5032623947353916953.Spec : Prop :=
  ∀ n, P5032623947353916953.a n = A221048 (n + 1)

end A221048

/-! ## A221048.P9095115430958747364

`filter[A064899(n+1), A322980(#)]`
-/

namespace A221048.P9095115430958747364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A221048.P9095115430958747364

namespace A221048

/-- `filter[A064899(n+1), A322980(#)]` -/
def P9095115430958747364.Spec : Prop :=
  ∀ n, P9095115430958747364.a n = A221048 (n + 1)

end A221048

/-! ## A221048.P6390612621235084371

`filter[A064899(n+1), A323158(#)]`
-/

namespace A221048.P6390612621235084371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A221048.P6390612621235084371

namespace A221048

/-- `filter[A064899(n+1), A323158(#)]` -/
def P6390612621235084371.Spec : Prop :=
  ∀ n, P6390612621235084371.a n = A221048 (n + 1)

end A221048

/-! ## A221048.P9231410481730527788

`filter[A064899(n+1), A323239(#)]`
-/

namespace A221048.P9231410481730527788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A221048.P9231410481730527788

namespace A221048

/-- `filter[A064899(n+1), A323239(#)]` -/
def P9231410481730527788.Spec : Prop :=
  ∀ n, P9231410481730527788.a n = A221048 (n + 1)

end A221048

/-! ## A221048.P17650983913004789396

`filter[A064899(n+1), A324908(#)]`
-/

namespace A221048.P17650983913004789396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A221048.P17650983913004789396

namespace A221048

/-- `filter[A064899(n+1), A324908(#)]` -/
def P17650983913004789396.Spec : Prop :=
  ∀ n, P17650983913004789396.a n = A221048 (n + 1)

end A221048

/-! ## A221048.P12710457894523406981

`filter[A046388(n+1), A344884(#)]`
-/

namespace A221048.P12710457894523406981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A344884 (f1 j).toNat = 1) n)

end

end A221048.P12710457894523406981

namespace A221048

/-- `filter[A046388(n+1), A344884(#)]` -/
def P12710457894523406981.Spec : Prop :=
  ∀ n, P12710457894523406981.a n = A221048 (n + 1)

end A221048

/-! ## A221048.P12300374383128468029

`filter[A054395(n+1), A340370(#)]`
-/

namespace A221048.P12300374383128468029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A221048.P12300374383128468029

namespace A221048

/-- `filter[A054395(n+1), A340370(#)]` -/
def P12300374383128468029.Spec : Prop :=
  ∀ n, P12300374383128468029.a n = A221048 (n + 1)

end A221048

/-! ## A221048.P6600010510593014940

`filter[A054395(n+1), A353481(#)]`
-/

namespace A221048.P6600010510593014940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A221048.P6600010510593014940

namespace A221048

/-- `filter[A054395(n+1), A353481(#)]` -/
def P6600010510593014940.Spec : Prop :=
  ∀ n, P6600010510593014940.a n = A221048 (n + 1)

end A221048

/-! ## A221048.P13626268051538568100

`filter[A068919(n+1), A353480(#)]`
-/

namespace A221048.P13626268051538568100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A221048.P13626268051538568100

namespace A221048

/-- `filter[A068919(n+1), A353480(#)]` -/
def P13626268051538568100.Spec : Prop :=
  ∀ n, P13626268051538568100.a n = A221048 (n + 1)

end A221048

/-! ## A221048.P1619538424976643803

`filter[A068919(n+1), A353481(#)]`
-/

namespace A221048.P1619538424976643803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A221048.P1619538424976643803

namespace A221048

/-- `filter[A068919(n+1), A353481(#)]` -/
def P1619538424976643803.Spec : Prop :=
  ∀ n, P1619538424976643803.a n = A221048 (n + 1)

end A221048

/-! ## A221048.P1295286946370857410

`filter[A068919(n+1), A353676(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A221048

/-- `filter[A068919(n+1), A353676(#)]` -/
def P1295286946370857410.Spec : Prop :=
  ∀ n, P1295286946370857410.a n = A221048 (n + 1)

theorem P1295286946370857410.correct : P1295286946370857410.Spec := by
  intro n
  simp only [A221048, Nat.add_sub_cancel]

end A221048

/-! ## A221048.P12183949728125955011

`filter[A068919(n+1), A359828(#)]`
-/

namespace A221048.P12183949728125955011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A221048.P12183949728125955011

namespace A221048

/-- `filter[A068919(n+1), A359828(#)]` -/
def P12183949728125955011.Spec : Prop :=
  ∀ n, P12183949728125955011.a n = A221048 (n + 1)

end A221048

/-! ## A221048.P2048154766022796535

`filter[A394433(n+1), A353481(#)]`
-/

namespace A221048.P2048154766022796535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A221048.P2048154766022796535

namespace A221048

/-- `filter[A394433(n+1), A353481(#)]` -/
def P2048154766022796535.Spec : Prop :=
  ∀ n, P2048154766022796535.a n = A221048 (n + 1)

end A221048

/-! ## A221048.P982261018156912279

`filter[A064899(n+2), A093719(#)]`
-/

namespace A221048.P982261018156912279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064899 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A221048.P982261018156912279

namespace A221048

/-- `filter[A064899(n+2), A093719(#)]` -/
def P982261018156912279.Spec : Prop :=
  ∀ n, P982261018156912279.a n = A221048 (n + 1)

end A221048

/-! ## A221048.P11776128443889678407

`∩[A046388(n+1), A054395(n+1)]`
-/

namespace A221048.P11776128443889678407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221048.P11776128443889678407

namespace A221048

/-- `∩[A046388(n+1), A054395(n+1)]` -/
def P11776128443889678407.Spec : Prop :=
  ∀ n, (P11776128443889678407.a n : ℤ) = A221048 (n + 1)

end A221048

/-! ## A221048.P8068278341618434486

`∩[A046315(n+1), A068919(n+1)]`
-/

namespace A221048.P8068278341618434486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A221048.P8068278341618434486

namespace A221048

/-- `∩[A046315(n+1), A068919(n+1)]` -/
def P8068278341618434486.Spec : Prop :=
  ∀ n, (P8068278341618434486.a n : ℤ) = A221048 (n + 1)

end A221048

/-!
# A221049: Expansion of (1+2*x+3*x^2-x^3)/((1-x)*(1+x)*(1-2*x)*(1+2*x)).

The programs for A221049, the canonical program `A221049.P10181825358413734047` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221049 has offset 0).

The definition of A221049 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+3x^2-x^3)/(1-5x^2+4x^4))` (program `A221049.P10181825358413734047`, by `A221049.P10181825358413734047.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A221049.P10181825358413734047

`ogf((1+2x+3x^2-x^3)/(1-5x^2+4x^4))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A221049

/-- `ogf((1+2x+3x^2-x^3)/(1-5x^2+4x^4))` -/
def P10181825358413734047.Spec : Prop :=
  ∀ n, P10181825358413734047.a n = A221049 n

theorem P10181825358413734047.correct : P10181825358413734047.Spec := by
  intro n
  simp only [A221049]

end A221049

/-! ## A221049.P5415880099488371419

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=8, a(3)=9`
-/

namespace A221049.P5415880099488371419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 8, 9] fun n a =>
  5 * a (n - 2) - 4 * a (n - 4)

end

end A221049.P5415880099488371419

namespace A221049

/-- `5*a(n-2)-4*a(n-4)` -/
def P5415880099488371419.Spec : Prop :=
  ∀ n, P5415880099488371419.a n = A221049 n

end A221049

/-! ## A221049.P15716537023578709717

`gcd(2, n)²+4*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A221049.P15716537023578709717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.gcd 2 n ^ 2 + 4 * a (n - 2)

end

end A221049.P15716537023578709717

namespace A221049

/-- `gcd(2, n)²+4*a(n-2)` -/
def P15716537023578709717.Spec : Prop :=
  ∀ n, (P15716537023578709717.a n : ℤ) = A221049 n

end A221049

/-! ## A221049.P15588695560106744040

`gcd(4, n%2)+4*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A221049.P15588695560106744040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.gcd 4 (n % 2) + 4 * a (n - 2)

end

end A221049.P15588695560106744040

namespace A221049

/-- `gcd(4, n%2)+4*a(n-2)` -/
def P15588695560106744040.Spec : Prop :=
  ∀ n, (P15588695560106744040.a n : ℤ) = A221049 n

end A221049

/-! ## A221049.P10948097445044676515

`∑[gcd(n%2, A267604(n))]`
-/

namespace A221049.P10948097445044676515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n % 2 : ℕ) : ℤ) (A267604 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221049.P10948097445044676515

namespace A221049

/-- `∑[gcd(n%2, A267604(n))]` -/
def P10948097445044676515.Spec : Prop :=
  ∀ n, (P10948097445044676515.a n : ℤ) = A221049 n

end A221049

/-! ## A221049.P10270707490087393233

`A213173(n)+A080610(n)`
-/

namespace A221049.P10270707490087393233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213173 n + A080610 n

end

end A221049.P10270707490087393233

namespace A221049

/-- `A213173(n)+A080610(n)` -/
def P10270707490087393233.Spec : Prop :=
  ∀ n, P10270707490087393233.a n = A221049 n

end A221049

/-! ## A221049.P857966342028200574

`A080610(n)+A016116(n)²`
-/

namespace A221049.P857966342028200574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080610 n + A016116 n ^ 2

end

end A221049.P857966342028200574

namespace A221049

/-- `A080610(n)+A016116(n)²` -/
def P857966342028200574.Spec : Prop :=
  ∀ n, P857966342028200574.a n = A221049 n

end A221049

/-! ## A221049.P6820650075919148964

`A080610(n)+Δ[A061547(n+1)]`
-/

namespace A221049.P6820650075919148964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080610 n + (f1 (n + 1) - f1 n)

end

end A221049.P6820650075919148964

namespace A221049

/-- `A080610(n)+Δ[A061547(n+1)]` -/
def P6820650075919148964.Spec : Prop :=
  ∀ n, P6820650075919148964.a n = A221049 n

end A221049

/-! ## A221049.P863540469985628911

`A000302(floor(n/2))+∑[A080924(n)]`
-/

namespace A221049.P863540469985628911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 ⌊(n : ℚ) / 2⌋.toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A221049.P863540469985628911

namespace A221049

/-- `A000302(floor(n/2))+∑[A080924(n)]` -/
def P863540469985628911.Spec : Prop :=
  ∀ n, P863540469985628911.a n = A221049 n

end A221049

/-! ## A221049.P10035237182846225408

`A084184(n)+A094360(n)-A001045(n)`
-/

namespace A221049.P10035237182846225408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084184 n + (A094360 n - A001045 n)

end

end A221049.P10035237182846225408

namespace A221049

/-- `A084184(n)+A094360(n)-A001045(n)` -/
def P10035237182846225408.Spec : Prop :=
  ∀ n, P10035237182846225408.a n = A221049 n

end A221049

/-! ## A221049.P6513505268053460914

`A084184(n+1)+A094359(n)-A001045(n)`
-/

namespace A221049.P6513505268053460914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084184 (n + 1) + (A094359 n - A001045 n)

end

end A221049.P6513505268053460914

namespace A221049

/-- `A084184(n+1)+A094359(n)-A001045(n)` -/
def P6513505268053460914.Spec : Prop :=
  ∀ n, P6513505268053460914.a n = A221049 n

end A221049

/-! ## A221049.P3158342906497970862

`∪[A083597(n), A206374(n)]`
-/

namespace A221049.P3158342906497970862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083597 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206374 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A221049.P3158342906497970862

namespace A221049

/-- `∪[A083597(n), A206374(n)]` -/
def P3158342906497970862.Spec : Prop :=
  ∀ n, (P3158342906497970862.a n : ℤ) = A221049 n

end A221049

/-! ## A221049.P1751599976239141711

`∪[A083595(2*n)+1, A083595(2*n)]`
-/

namespace A221049.P1751599976239141711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083595 (2 * n) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083595 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A221049.P1751599976239141711

namespace A221049

/-- `∪[A083595(2*n)+1, A083595(2*n)]` -/
def P1751599976239141711.Spec : Prop :=
  ∀ n, (P1751599976239141711.a n : ℤ) = A221049 n

end A221049

/-! ## A221049.P661330091176603802

`∪[A062092(2*n)-1, A062092(2*n)]`
-/

namespace A221049.P661330091176603802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062092 (2 * n) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062092 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A221049.P661330091176603802

namespace A221049

/-- `∪[A062092(2*n)-1, A062092(2*n)]` -/
def P661330091176603802.Spec : Prop :=
  ∀ n, (P661330091176603802.a n : ℤ) = A221049 n

end A221049

/-! ## A221049.P7700591128373567801

`∪[A097163(2*n+1)-1, A097163(2*n+1)]`
-/

namespace A221049.P7700591128373567801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097163 (2 * n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097163 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A221049.P7700591128373567801

namespace A221049

/-- `∪[A097163(2*n+1)-1, A097163(2*n+1)]` -/
def P7700591128373567801.Spec : Prop :=
  ∀ n, (P7700591128373567801.a n : ℤ) = A221049 n

end A221049

/-! ## A221049.P803624272602267475

`∪[A136326(2*n+1)-1, A136326(2*n+1)]`
-/

namespace A221049.P803624272602267475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136326 (2 * n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136326 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A221049.P803624272602267475

namespace A221049

/-- `∪[A136326(2*n+1)-1, A136326(2*n+1)]` -/
def P803624272602267475.Spec : Prop :=
  ∀ n, (P803624272602267475.a n : ℤ) = A221049 n

end A221049

/-! ## A221049.P14800318088689528116

`(A001045(n)+A000225(n+1))/A000034(n)`
-/

namespace A221049.P14800318088689528116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001045 n + A000225 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A221049.P14800318088689528116

namespace A221049

/-- `(A001045(n)+A000225(n+1))/A000034(n)` -/
def P14800318088689528116.Spec : Prop :=
  ∀ n, P14800318088689528116.a n = (A221049 n : ℚ)

end A221049

/-! ## A221049.P11813385111269807958

`(A084640(n+1)-A000225(n))/A000034(n)`
-/

namespace A221049.P11813385111269807958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084640 (n + 1) - A000225 n : ℚ) / (A000034 n : ℚ)

end

end A221049.P11813385111269807958

namespace A221049

/-- `(A084640(n+1)-A000225(n))/A000034(n)` -/
def P11813385111269807958.Spec : Prop :=
  ∀ n, P11813385111269807958.a n = (A221049 n : ℚ)

end A221049

/-!
# A221054: Numbers whose distinct prime factors can be partitioned into two equal sums.

The programs for A221054, there is no canonical definition to state claims against.
-/

/-! ## A221054.P13694916760931342955

`∏{e}[A000079(n), A071140(#)]`
-/

namespace A221054.P13694916760931342955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A071140 (Nat.factorization (f1 n).natAbs p)

end

end A221054.P13694916760931342955

/-! ## A221054.P1917934078463256284

`∏{e}[A000244(n), A071140(#)]`
-/

namespace A221054.P1917934078463256284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A071140 (Nat.factorization (f1 n).natAbs p)

end

end A221054.P1917934078463256284

/-! ## A221054.P12043222169763154736

`∏{e}[A017995(3*n), A365795(#)]`
-/

namespace A221054.P12043222169763154736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017995 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A365795 (Nat.factorization (f1 n).natAbs p)

end

end A221054.P12043222169763154736

/-!
# A221055: Primes of the form k*(k+1)*(k+2)/6+2 (i.e., two more than a tetrahedral number).

The programs for A221055, there is no canonical definition to state claims against.
-/

/-! ## A221055.P13915535185929165189

`p?[∑[∑[n]]+2]`
-/

namespace A221055.P13915535185929165189
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A221055.P13915535185929165189

/-! ## A221055.P674430793653995667

`record[p?[C(xor(1, n), 3)+2]]`
-/

namespace A221055.P674430793653995667
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 1 n) 3 + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221055.P674430793653995667

/-!
# A221056: Numbers k such that there is no square between prime(k) and prime(k+1).

The programs for A221056, the canonical program `A221056.P8997916471508641174` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221056 has offset 1).

The definition of A221056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9678 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221056.P1128831155945613173

`comp[A038107(n)]`
-/

namespace A221056.P1128831155945613173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A221056.P1128831155945613173

namespace A221056

/-- `comp[A038107(n)]` -/
def P1128831155945613173.Spec : Prop :=
  ∀ n, (P1128831155945613173.a n : ℤ) = A221056 (n + 1)

end A221056

/-! ## A221056.P7275398609092055444

`comp[∑[A014085(n)]]`
-/

namespace A221056.P7275398609092055444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A221056.P7275398609092055444

namespace A221056

/-- `comp[∑[A014085(n)]]` -/
def P7275398609092055444.Spec : Prop :=
  ∀ n, (P7275398609092055444.a n : ℤ) = A221056 (n + 1)

end A221056

/-! ## A221056.P7802808126405428066

`comp[A220506(2*(n+1))]`
-/

namespace A221056.P7802808126405428066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220506 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A221056.P7802808126405428066

namespace A221056

/-- `comp[A220506(2*(n+1))]` -/
def P7802808126405428066.Spec : Prop :=
  ∀ n, (P7802808126405428066.a n : ℤ) = A221056 (n + 1)

end A221056

/-! ## A221056.P4289942100021995257

`∑[char[A038107(n+1)-n]]+n`
-/

namespace A221056.P4289942100021995257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (n + 1) - (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A221056.P4289942100021995257

namespace A221056

/-- `∑[char[A038107(n+1)-n]]+n` -/
def P4289942100021995257.Spec : Prop :=
  ∀ n, (P4289942100021995257.a n : ℤ) = A221056 (n + 1)

end A221056

/-! ## A221056.P1151804671675952512

`comp[A117490(n+1)+A000720(n+1)]`
-/

namespace A221056.P1151804671675952512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117490 (n + 1) + A000720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A221056.P1151804671675952512

namespace A221056

/-- `comp[A117490(n+1)+A000720(n+1)]` -/
def P1151804671675952512.Spec : Prop :=
  ∀ n, (P1151804671675952512.a n : ℤ) = A221056 (n + 1)

end A221056

/-! ## A221056.P8997916471508641174

`eq[1, A061265(n+1)+1]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A221056

/-- `eq[1, A061265(n+1)+1]+1` -/
def P8997916471508641174.Spec : Prop :=
  ∀ n, (P8997916471508641174.a n : ℤ) = A221056 (n + 1)

theorem P8997916471508641174.correct : P8997916471508641174.Spec := by
  intro n
  simp only [A221056, Nat.add_sub_cancel]

end A221056

/-! ## A221056.P7117816240975837826

`lt[0, A139135(A139140(n))]`
-/

namespace A221056.P7117816240975837826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139135 (A139140 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A221056.P7117816240975837826

namespace A221056

/-- `lt[0, A139135(A139140(n))]` -/
def P7117816240975837826.Spec : Prop :=
  ∀ n, (P7117816240975837826.a n : ℤ) = A221056 (n + 1)

end A221056

/-! ## A221056.P13325133928043859242

`lt[Δ[A000006(n+1)], 1]+1`
-/

namespace A221056.P13325133928043859242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A221056.P13325133928043859242

namespace A221056

/-- `lt[Δ[A000006(n+1)], 1]+1` -/
def P13325133928043859242.Spec : Prop :=
  ∀ n, (P13325133928043859242.a n : ℤ) = A221056 (n + 1)

end A221056

/-! ## A221056.P17513510045654285898

`A000006(a(n-1)+2)+n` with `a(0)=1`
-/

namespace A221056.P17513510045654285898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000006 (a (n - 1) + 2).toNat + (n : ℤ)

end

end A221056.P17513510045654285898

namespace A221056

/-- `A000006(a(n-1)+2)+n` -/
def P17513510045654285898.Spec : Prop :=
  ∀ n, P17513510045654285898.a n = A221056 (n + 1)

end A221056

/-! ## A221056.P2368190113742262654

`lt[char[A038107(n)], A057427(n)]`
-/

namespace A221056.P2368190113742262654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A221056.P2368190113742262654

namespace A221056

/-- `lt[char[A038107(n)], A057427(n)]` -/
def P2368190113742262654.Spec : Prop :=
  ∀ n, (P2368190113742262654.a n : ℤ) = A221056 (n + 1)

end A221056

/-! ## A221056.P920034846687447532

`record[n+1-Δ[A004861(A104103(n+1)+1)]]`
-/

namespace A221056.P920034846687447532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004861 (A104103 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221056.P920034846687447532

namespace A221056

/-- `record[n+1-Δ[A004861(A104103(n+1)+1)]]` -/
def P920034846687447532.Spec : Prop :=
  ∀ n, P920034846687447532.a n = A221056 (n + 1)

end A221056

/-! ## A221056.P9931419372794599646

`A000720(A224363(n+1))`
-/

namespace A221056.P9931419372794599646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A224363 (n + 1)).toNat

end

end A221056.P9931419372794599646

namespace A221056

/-- `A000720(A224363(n+1))` -/
def P9931419372794599646.Spec : Prop :=
  ∀ n, P9931419372794599646.a n = A221056 (n + 1)

end A221056

/-! ## A221056.P11804434666268868129

`lt[1, A213649(n+1)]+1`
-/

namespace A221056.P11804434666268868129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A221056.P11804434666268868129

namespace A221056

/-- `lt[1, A213649(n+1)]+1` -/
def P11804434666268868129.Spec : Prop :=
  ∀ n, (P11804434666268868129.a n : ℤ) = A221056 (n + 1)

end A221056

/-! ## A221056.P14360114686363516499

`A049084(A224363(2*n+1-n))`
-/

namespace A221056.P14360114686363516499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A224363 (2 * n + 1 - n)).toNat

end

end A221056.P14360114686363516499

namespace A221056

/-- `A049084(A224363(2*n+1-n))` -/
def P14360114686363516499.Spec : Prop :=
  ∀ n, P14360114686363516499.a n = A221056 (n + 1)

end A221056

/-!
# A221057: Irregular triangle read by rows: T(n,k) is the number of Dyck prefixes of length n having k inversions (n >= 0, k >= 0).

The programs for A221057, there is no canonical definition to state claims against.
-/

/-! ## A221057.P10531545947479699663

`A182595(A088769(n+1)*A338484(n+1))`
-/

namespace A221057.P10531545947479699663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182595 (A088769 (n + 1) * A338484 (n + 1)).toNat

end

end A221057.P10531545947479699663

/-! ## A221057.P634429514160983032

`A358553(ceil(sqrt(A005578(n)))+1)`
-/

namespace A221057.P634429514160983032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358553 (⌈Real.sqrt (A005578 n : ℝ)⌉ + 1).toNat

end

end A221057.P634429514160983032

/-! ## A221057.P6285107995264159964

`A193330(A193929(2*n)+ceil(2^(n-1)))`
-/

namespace A221057.P6285107995264159964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (A193929 (2 * n) + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉).toNat

end

end A221057.P6285107995264159964

/-! ## A221057.P7256753953394778636

`∑{e}[A208945(n+1)+A000108(n), #]`
-/

namespace A221057.P7256753953394778636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208945 (n + 1) + A000108 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A221057.P7256753953394778636

/-! ## A221057.P1861165541798043983

`A062756(A322206(n)%A018847(n+1))`
-/

namespace A221057.P1861165541798043983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (Int.tmod (A322206 n) (A018847 (n + 1))).toNat

end

end A221057.P1861165541798043983

/-!
# A221058: Number of inversions in all Dyck prefixes of length n.

The programs for A221058, the canonical program `A221058.P9952034035264355000` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221058 has offset 0).

The definition of A221058 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221058.P9952034035264355000

`A004526(n)*A107373(A028310(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A221058

/-- `A004526(n)*A107373(A028310(n))` -/
def P9952034035264355000.Spec : Prop :=
  ∀ n, P9952034035264355000.a n = A221058 n

theorem P9952034035264355000.correct : P9952034035264355000.Spec := by
  intro n
  simp only [A221058]

end A221058

/-! ## A221058.P5477736028891437053

`A107373(A028310(n))*A123108(n)`
-/

namespace A221058.P5477736028891437053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (A028310 n).toNat * A123108 n

end

end A221058.P5477736028891437053

namespace A221058

/-- `A107373(A028310(n))*A123108(n)` -/
def P5477736028891437053.Spec : Prop :=
  ∀ n, P5477736028891437053.a n = A221058 n

end A221058

/-! ## A221058.P4347494692347498189

`A004526(n)*A107373(A233583(n+1))`
-/

namespace A221058.P4347494692347498189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n * A107373 (A233583 (n + 1)).toNat

end

end A221058.P4347494692347498189

namespace A221058

/-- `A004526(n)*A107373(A233583(n+1))` -/
def P4347494692347498189.Spec : Prop :=
  ∀ n, P4347494692347498189.a n = A221058 n

end A221058

/-! ## A221058.P12981788121707951017

`A107373(A123108(2*n))*A123108(n)`
-/

namespace A221058.P12981788121707951017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (A123108 (2 * n)).toNat * A123108 n

end

end A221058.P12981788121707951017

namespace A221058

/-- `A107373(A123108(2*n))*A123108(n)` -/
def P12981788121707951017.Spec : Prop :=
  ∀ n, P12981788121707951017.a n = A221058 n

end A221058

/-! ## A221058.P2090614934279996734

`A008612(3*n+2)*A107373(A028310(n))`
-/

namespace A221058.P2090614934279996734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (3 * n + 2) * A107373 (A028310 n).toNat

end

end A221058.P2090614934279996734

namespace A221058

/-- `A008612(3*n+2)*A107373(A028310(n))` -/
def P2090614934279996734.Spec : Prop :=
  ∀ n, P2090614934279996734.a n = A221058 n

end A221058

/-!
# A221059: Equals one maps: number of n X 3 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal and antidiagonal neighbors in a random 0..3 n X 3 array.

The programs for A221059, there is no canonical definition to state claims against.
-/

/-! ## A221059.P5412548412298082947

`A221660(∑[n+3]+1)`
-/

namespace A221059.P5412548412298082947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221660 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221059.P5412548412298082947

/-! ## A221059.P1563412490220803364

`A221062(∑[n+3]+1)`
-/

namespace A221059.P1563412490220803364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221062 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221059.P1563412490220803364

/-!
# A221060: Equals one maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal and antidiagonal neighbors in a random 0..3 nX4 array.

The programs for A221060, there is no canonical definition to state claims against.
-/

/-! ## A221060.P8015950957480928402

`A221660(∑[n+4]+3)`
-/

namespace A221060.P8015950957480928402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221660 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A221060.P8015950957480928402

/-! ## A221060.P9699394251840569555

`A221062(A141214(n+1))`
-/

namespace A221060.P9699394251840569555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221062 (A141214 (n + 1)).toNat

end

end A221060.P9699394251840569555

/-!
# A221061: Equals one maps: number of nX5 binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal and antidiagonal neighbors in a random 0..3 nX5 array.

The programs for A221061, there is no canonical definition to state claims against.
-/

/-! ## A221061.P15028562900221372927

`A221660(∑[n+5]+6)`
-/

namespace A221061.P15028562900221372927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221660 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A221061.P15028562900221372927

/-!
# A221062: T(n,k)=Equals one maps: number of nXk binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal and antidiagonal neighbors in a random 0..3 nXk array.

The programs for A221062, there is no canonical definition to state claims against.
-/

/-! ## A221062.P12471122826763123364

`A221660(A281873(n+1))`
-/

namespace A221062.P12471122826763123364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221660 (A281873 (n + 1)).toNat

end

end A221062.P12471122826763123364

/-! ## A221062.P4077670771674819856

`A221660(A185255(n)!+n)`
-/

namespace A221062.P4077670771674819856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221660 (Nat.factorial (A185255 n).toNat + n)

end

end A221062.P4077670771674819856

/-! ## A221062.P13748682846406867956

`A221660(∑[A058348(n)²!])`
-/

namespace A221062.P13748682846406867956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A058348 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221660 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A221062.P13748682846406867956

/-! ## A221062.P4560290542289776696

`A221660(n+1)%A221706(n)`
-/

namespace A221062.P4560290542289776696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221660 (n + 1)) (A221706 n)

end

end A221062.P4560290542289776696

/-! ## A221062.P13285233788634436240

`A221660(C(A247064(n+1), n))`
-/

namespace A221062.P13285233788634436240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221660 (Nat.choose (A247064 (n + 1)).toNat n)

end

end A221062.P13285233788634436240

/-!
# A221063: Equals one maps: number of 2Xn binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal and antidiagonal neighbors in a random 0..3 2Xn array.

The programs for A221063, there is no canonical definition to state claims against.
-/

/-! ## A221063.P16229701956729149814

`A221660(∑[n+1]+2)`
-/

namespace A221063.P16229701956729149814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221660 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221063.P16229701956729149814

/-! ## A221063.P2502005623549158659

`record[ratio[A221660(A080036(n))]]`
-/

namespace A221063.P2502005623549158659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221660 (A080036 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221063.P2502005623549158659

/-! ## A221063.P9303861423140535986

`record[gcd(A098825(n), A221660(n+1))]`
-/

namespace A221063.P9303861423140535986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098825 n) (A221660 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221063.P9303861423140535986

/-! ## A221063.P11308613452530932149

`record[gcd(A221660(n+2), A241981(n))]`
-/

namespace A221063.P11308613452530932149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221660 (n + 2)) (A241981 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221063.P11308613452530932149

/-! ## A221063.P2009430833958167525

`A221062(∑[n+1]+2)`
-/

namespace A221063.P2009430833958167525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221062 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221063.P2009430833958167525

/-!
# A221064: Equals one maps: number of 3Xn binary arrays indicating the locations of corresponding elements equal to exactly one of their horizontal and antidiagonal neighbors in a random 0..3 3Xn array.

The programs for A221064, there is no canonical definition to state claims against.
-/

/-! ## A221064.P6619509815414765550

`A221062(∑[n+2]+4)`
-/

namespace A221064.P6619509815414765550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221062 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221064.P6619509815414765550

/-! ## A221064.P9590282614810133330

`record[gcd(A098825(n+3), A221062(n+5))]`
-/

namespace A221064.P9590282614810133330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098825 (n + 3)) (A221062 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221064.P9590282614810133330

/-! ## A221064.P5720089077759359250

`A221062(A167614(n+1))+A025443(n)`
-/

namespace A221064.P5720089077759359250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221062 (A167614 (n + 1)).toNat + A025443 n

end

end A221064.P5720089077759359250

/-! ## A221064.P11950726932600718741

`A221062(A167614(n+1))+A090620(n)`
-/

namespace A221064.P11950726932600718741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221062 (A167614 (n + 1)).toNat + A090620 n

end

end A221064.P11950726932600718741

/-!
# A221065: Sum of neighbor maps: number of n X n binary arrays indicating the locations of corresponding elements equal to the sum mod 4 of their king-move neighbors in a random 0..3 n X n array.

The programs for A221065, there is no canonical definition to state claims against.
-/

/-! ## A221065.P12470965186705787939

`A221072(∑[4*n]+1)`
-/

namespace A221065.P12470965186705787939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221072 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A221065.P12470965186705787939

/-! ## A221065.P12820301658106624250

`lcm(2, A221072(A001844(n)))`
-/

namespace A221065.P12820301658106624250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A221072 (A001844 n).toNat)

end

end A221065.P12820301658106624250

/-!
# A221066: Sum of neighbor maps: number of n X 2 binary arrays indicating the locations of corresponding elements equal to the sum mod 4 of their king-move neighbors in a random 0..3 n X 2 array.

The programs for A221066, there is no canonical definition to state claims against.
-/

/-! ## A221066.P14081562768746251281

`A221072(∑[dr(n)+2])`
-/

namespace A221066.P14081562768746251281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221072 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A221066.P14081562768746251281

/-! ## A221066.P341057059085074079

`A221072(∑[n+1]+2)`
-/

namespace A221066.P341057059085074079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221072 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A221066.P341057059085074079

/-! ## A221066.P7552674218795149098

`record[A221072(A133263(val(n+1, 2)))]`
-/

namespace A221066.P7552674218795149098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221072 (A133263 (SequenceMachineLib.valuation (n + 1) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221066.P7552674218795149098

/-! ## A221066.P4909898450321069381

`record[A010054(n)*A221072(n+2)]`
-/

namespace A221066.P4909898450321069381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A221072 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221066.P4909898450321069381

/-! ## A221066.P14594601765765999292

`record[root(A221072(n+1), A036073(n))]`
-/

namespace A221066.P14594601765765999292
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A221072 (n + 1) : ℝ) ^ (1 / (A036073 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221066.P14594601765765999292

/-!
# A221067: Sum of neighbor maps: number of nX3 binary arrays indicating the locations of corresponding elements equal to the sum mod 4 of their king-move neighbors in a random 0..3 nX3 array.

The programs for A221067, there is no canonical definition to state claims against.
-/

/-! ## A221067.P14034237377221884921

`A221072(∑[n+2]+4)`
-/

namespace A221067.P14034237377221884921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221072 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221067.P14034237377221884921

/-! ## A221067.P13675010113428184705

`lcm(2, A221072(A167614(n+1)))`
-/

namespace A221067.P13675010113428184705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A221072 (A167614 (n + 1)).toNat)

end

end A221067.P13675010113428184705

/-! ## A221067.P10868833007404942813

`record[A221072(n+4)/A140303(n)]`
-/

namespace A221067.P10868833007404942813
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221072 (n + 4) : ℚ) / (A140303 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221067.P10868833007404942813

/-! ## A221067.P15686512127187371415

`record[A221072(n+4)/A286781(n)]`
-/

namespace A221067.P15686512127187371415
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221072 (n + 4) : ℚ) / (A286781 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221067.P15686512127187371415

/-! ## A221067.P11856577786428859975

`record[A221072(n+4)/A221035(n+1)]`
-/

namespace A221067.P11856577786428859975
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221072 (n + 4) : ℚ) / (A221035 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A221067.P11856577786428859975

/-!
# A221068: Sum of neighbor maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to the sum mod 4 of their king-move neighbors in a random 0..3 nX4 array.

The programs for A221068, there is no canonical definition to state claims against.
-/

/-! ## A221068.P17494281780178569144

`A221072(A145018(n+4))`
-/

namespace A221068.P17494281780178569144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221072 (A145018 (n + 4)).toNat

end

end A221068.P17494281780178569144

/-! ## A221068.P8319667048615051891

`A221072(A141214(n)+7)`
-/

namespace A221068.P8319667048615051891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221072 (A141214 n + 7).toNat

end

end A221068.P8319667048615051891

/-! ## A221068.P16543469850746094219

`A221072(A052905(n)+9)`
-/

namespace A221068.P16543469850746094219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221072 (A052905 n + 9).toNat

end

end A221068.P16543469850746094219

/-! ## A221068.P2933907228894563625

`A221072(A055999(n)+10)`
-/

namespace A221068.P2933907228894563625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221072 (A055999 n + 10).toNat

end

end A221068.P2933907228894563625

/-! ## A221068.P17402265191941990242

`A221072(eq[5, A066657(n)])`
-/

namespace A221068.P17402265191941990242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221068.P17402265191941990242

/-!
# A221069: Sum of neighbor maps: number of nX5 binary arrays indicating the locations of corresponding elements equal to the sum mod 4 of their king-move neighbors in a random 0..3 nX5 array.

The programs for A221069, there is no canonical definition to state claims against.
-/

/-! ## A221069.P14373566541103589626

`A221072(∑[n+5]+6)`
-/

namespace A221069.P14373566541103589626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221072 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A221069.P14373566541103589626

/-!
# A221070: Sum of neighbor maps: number of n X 6 binary arrays indicating the locations of corresponding elements equal to the sum mod 4 of their king-move neighbors in a random 0..3 n X 6 array.

The programs for A221070, there is no canonical definition to state claims against.
-/

/-! ## A221070.P11525912179475545780

`A221072(A374007(n+1))`
-/

namespace A221070.P11525912179475545780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221072 (A374007 (n + 1)).toNat

end

end A221070.P11525912179475545780

/-! ## A221070.P13874953870827350776

`A221072(A052905(n+3))`
-/

namespace A221070.P13874953870827350776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221072 (A052905 (n + 3)).toNat

end

end A221070.P13874953870827350776

/-!
# A221071: Sum of neighbor maps: number of nX7 binary arrays indicating the locations of corresponding elements equal to the sum mod 4 of their king-move neighbors in a random 0..3 nX7 array.

The programs for A221071, there is no canonical definition to state claims against.
-/

/-! ## A221071.P12631501191712874991

`A221072(A374008(n+1))`
-/

namespace A221071.P12631501191712874991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221072 (A374008 (n + 1)).toNat

end

end A221071.P12631501191712874991

/-!
# A221074: Simple continued fraction expansion of product {n >= 0} {1 - sqrt(m)*[sqrt(m) - sqrt(m-1)]^(4*n+3)}/{1 - sqrt(m)*[sqrt(m) - sqrt(m-1)]^(4*n+1)} at m = 3.

The programs for A221074, there is no canonical definition to state claims against.
-/

/-! ## A221074.P18364731232991183956

`and(A030430(A000825(n)), A075180(n))`
-/

namespace A221074.P18364731232991183956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A030430 (A000825 n).toNat) (A075180 n)

end

end A221074.P18364731232991183956

/-!
# A221075: Simple continued fraction expansion of an infinite product.

The programs for A221075, there is no canonical definition to state claims against.
-/

/-! ## A221075.P12321603933216626429

`A336173(A052937(n)+2)`
-/

namespace A221075.P12321603933216626429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336173 (A052937 n + 2).toNat

end

end A221075.P12321603933216626429

/-! ## A221075.P14099416811811456622

`A336173(∑[A241683(n)+1]+3)`
-/

namespace A221075.P14099416811811456622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241683 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336173 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A221075.P14099416811811456622

/-!
# A221076: Continued fraction expansion of product_{n>=0} (1-sqrt(5)*[sqrt(5)-2]^{4n+3})/(1-sqrt(5)*[sqrt(5)-2]^{4n+1}).

The programs for A221076, there is no canonical definition to state claims against.
-/

/-! ## A221076.P7633137482468027151

`gcd(A131999(A082140(n)), A351190(n+1))`
-/

namespace A221076.P7633137482468027151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131999 (A082140 n).toNat) (A351190 (n + 1))

end

end A221076.P7633137482468027151

/-! ## A221076.P4106638509018222283

`A323761(A001700(n+2))%A018249(n+2)`
-/

namespace A221076.P4106638509018222283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323761 (A001700 (n + 2)).toNat) (A018249 (n + 2))

end

end A221076.P4106638509018222283

/-!
# A221077: E.g.f.: Sum_{n>=0} tanh(n*x)^n.

The programs for A221077, there is no canonical definition to state claims against.
-/

/-! ## A221077.P6804086578529821058

`A047836(3*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A221077.P6804086578529821058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A047836 (3 * a (n - 1)).toNat

end

end A221077.P6804086578529821058

/-!
# A221078: E.g.f.: Sum_{n>=0} tan(n*x)^n.

The programs for A221078, there is no canonical definition to state claims against.
-/

/-! ## A221078.P15280070695823403566

`∑{d}[A130003(A004655(n)), #]`
-/

namespace A221078.P15280070695823403566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130003 (A004655 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A221078.P15280070695823403566

/-!
# A221079: E.g.f.: Sum_{n>=0} arctanh(n*x)^n/n!.

The programs for A221079, there is no canonical definition to state claims against.
-/

/-! ## A221079.P10621981127331613933

`A210526(n)+A036860(A020112(n))`
-/

namespace A221079.P10621981127331613933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210526 n + A036860 (A020112 n).toNat

end

end A221079.P10621981127331613933

/-!
# A221080: E.g.f.: Sum_{n>=0} Product_{k=1..n} tan((2*k-1)*x).

The programs for A221080, there is no canonical definition to state claims against.
-/

/-! ## A221080.P12314806280122228731

`A066602(A061711(n)+2)`
-/

namespace A221080.P12314806280122228731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066602 (A061711 n + 2).toNat

end

end A221080.P12314806280122228731

/-!
# A221081: Number of n X n arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor.

The programs for A221081, there is no canonical definition to state claims against.
-/

/-! ## A221081.P967575236438659791

`A221087((n+1)²+n²)`
-/

namespace A221081.P967575236438659791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221087 ((n + 1) ^ 2 + n ^ 2)

end

end A221081.P967575236438659791

/-!
# A221082: Number of n X 3 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor.

The programs for A221082, there is no canonical definition to state claims against.
-/

/-! ## A221082.P14802014428633732915

`ogf(2/(1-12x+9x^2))`
-/

namespace A221082.P14802014428633732915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2] [1, -12, 9] n

end

end A221082.P14802014428633732915

/-! ## A221082.P4052347187483820200

`3*ceil((sqrt(3)+2)*a(n-1))` with `a(0)=2`
-/

namespace A221082.P4052347187483820200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  3 * ⌈(Real.sqrt (3 : ℝ) + 2) * (a (n - 1) : ℝ)⌉

end

end A221082.P4052347187483820200

/-! ## A221082.P14146020290167785619

`3^n*A052530(n+1)`
-/

namespace A221082.P14146020290167785619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A052530 (n + 1)

end

end A221082.P14146020290167785619

/-! ## A221082.P2319425670021049667

`Δ[3^n]*A001353(n+1)`
-/

namespace A221082.P2319425670021049667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A001353 (n + 1)

end

end A221082.P2319425670021049667

/-! ## A221082.P7575012726012315665

`3^(n-1)*A001352(n+1)`
-/

namespace A221082.P7575012726012315665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A001352 (n + 1) : ℚ)

end

end A221082.P7575012726012315665

/-! ## A221082.P2825154643238061350

`A001353(n+1)*A008776(n)`
-/

namespace A221082.P2825154643238061350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (n + 1) * A008776 n

end

end A221082.P2825154643238061350

/-! ## A221082.P15257989999346324839

`∑[A079935(n+1)]*Δ[A024023(n)]`
-/

namespace A221082.P15257989999346324839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A221082.P15257989999346324839

/-! ## A221082.P6835220694226919464

`Δ[A003462(n)]*A162959(2*(n+1))`
-/

namespace A221082.P6835220694226919464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A162959 (2 * (n + 1))

end

end A221082.P6835220694226919464

/-! ## A221082.P16186230973978533791

`A001353(n+1)*A038754(2*n+1)`
-/

namespace A221082.P16186230973978533791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 (n + 1) * A038754 (2 * n + 1)

end

end A221082.P16186230973978533791

/-!
# A221083: Number of n X 4 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor.

The programs for A221083, there is no canonical definition to state claims against.
-/

/-! ## A221083.P8948449413990890620

`Δ[A190973(n)+∑[A190973(n)]]²`
-/

namespace A221083.P8948449413990890620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190973 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190973 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A221083.P8948449413990890620

/-! ## A221083.P5019590230205742849

`A221087(A141214(n+1))`
-/

namespace A221083.P5019590230205742849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221087 (A141214 (n + 1)).toNat

end

end A221083.P5019590230205742849

/-! ## A221083.P15134578266342562573

`A221087(A155212(n)+5)`
-/

namespace A221083.P15134578266342562573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221087 (A155212 n + 5).toNat

end

end A221083.P15134578266342562573

/-! ## A221083.P112690286077195989

`A221087(eq[2, A225094(n)])`
-/

namespace A221083.P112690286077195989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221083.P112690286077195989

/-! ## A221083.P17388161798980533317

`A221087(Δ[A034857(n+1)])`
-/

namespace A221083.P17388161798980533317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221087 (f1 (n + 1) - f1 n).toNat

end

end A221083.P17388161798980533317

/-!
# A221084: Number of nX5 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor.

The programs for A221084, there is no canonical definition to state claims against.
-/

/-! ## A221084.P1052213592872783903

`A221087(Δ[A264443(n)])`
-/

namespace A221084.P1052213592872783903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221087 (f1 (n + 1) - f1 n).toNat

end

end A221084.P1052213592872783903

/-! ## A221084.P4585665919693985515

`A221087(A056115(n)+11)`
-/

namespace A221084.P4585665919693985515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221087 (A056115 n + 11).toNat

end

end A221084.P4585665919693985515

/-! ## A221084.P6639907127077497422

`A221087(eq[4, A193592(n)])`
-/

namespace A221084.P6639907127077497422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221084.P6639907127077497422

/-! ## A221084.P12734344443755138475

`A221087(Δ[A023545(n+1)])`
-/

namespace A221084.P12734344443755138475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221087 (f1 (n + 1) - f1 n).toNat

end

end A221084.P12734344443755138475

/-! ## A221084.P16806625993715171600

`A221087(eq[6, A185782(n+1)])`
-/

namespace A221084.P16806625993715171600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221084.P16806625993715171600

/-!
# A221085: Number of n X 6 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor.

The programs for A221085, there is no canonical definition to state claims against.
-/

/-! ## A221085.P1281519405963288182

`A221087(eq[8, A185782(n+1)])`
-/

namespace A221085.P1281519405963288182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221085.P1281519405963288182

/-! ## A221085.P13355051850349769498

`A221087(Δ[A264443(n+1)]-1)`
-/

namespace A221085.P13355051850349769498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221087 (f1 (n + 1) - f1 n - 1).toNat

end

end A221085.P13355051850349769498

/-!
# A221086: Number of nX7 arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor.

The programs for A221086, there is no canonical definition to state claims against.
-/

/-! ## A221086.P13960153671045534991

`A221087(eq[10, A185782(n+1)])`
-/

namespace A221086.P13960153671045534991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221086.P13960153671045534991

/-!
# A221088: Number of 2 X n arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor.

The programs for A221088, the canonical program `A221088.P14214089262791962939` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A221088 has offset 1).

The definition of A221088 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A221088.P15488238513538094891

`floor(∑[(-ϕ²)^n])²-log2(gcd(2, n))`
-/

namespace A221088.P15488238513538094891
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-(Real.goldenRatio ^ 2)) ^ n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ ^ 2 : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A221088.P15488238513538094891

namespace A221088

/-- `floor(∑[(-ϕ²)^n])²-log2(gcd(2, n))` -/
def P15488238513538094891.Spec : Prop :=
  ∀ n, P15488238513538094891.a n = (A221088 (n + 1) : ℝ)

end A221088

/-! ## A221088.P14214089262791962939

`7*a(n-1)-7*a(n-3)+a(n-4)` with `a(0)=0, a(1)=4, a(2)=24, a(3)=169`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A221088

/-- `7*a(n-1)-7*a(n-3)+a(n-4)` -/
def P14214089262791962939.Spec : Prop :=
  ∀ n, P14214089262791962939.a n = A221088 (n + 1)

theorem P14214089262791962939.correct : P14214089262791962939.Spec := by
  intro n
  simp only [A221088, Nat.add_sub_cancel]

end A221088

/-! ## A221088.P4785126551973094616

`A058038(n)+n%2`
-/

namespace A221088.P4785126551973094616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058038 n + ((n % 2 : ℕ) : ℤ)

end

end A221088.P4785126551973094616

namespace A221088

/-- `A058038(n)+n%2` -/
def P4785126551973094616.Spec : Prop :=
  ∀ n, P4785126551973094616.a n = A221088 (n + 1)

end A221088

/-! ## A221088.P14429001001235729098

`A081068(n)-char[2*n]`
-/

namespace A221088.P14429001001235729098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081068 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A221088.P14429001001235729098

namespace A221088

/-- `A081068(n)-char[2*n]` -/
def P14429001001235729098.Spec : Prop :=
  ∀ n, P14429001001235729098.a n = A221088 (n + 1)

end A221088

/-! ## A221088.P5228772718695936160

`∑[A000045(4*n)]+and(1, n)`
-/

namespace A221088.P5228772718695936160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.land 1 n : ℤ)

end

end A221088.P5228772718695936160

namespace A221088

/-- `∑[A000045(4*n)]+and(1, n)` -/
def P5228772718695936160.Spec : Prop :=
  ∀ n, P5228772718695936160.a n = A221088 (n + 1)

end A221088

/-! ## A221088.P9569136865291828851

`A245306(2*n+1)-gcd(2, n)`
-/

namespace A221088.P9569136865291828851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245306 (2 * n + 1) - (Nat.gcd 2 n : ℤ)

end

end A221088.P9569136865291828851

namespace A221088

/-- `A245306(2*n+1)-gcd(2, n)` -/
def P9569136865291828851.Spec : Prop :=
  ∀ n, P9569136865291828851.a n = A221088 (n + 1)

end A221088

/-! ## A221088.P15283203115060061537

`Δ[A001906(n)]²-and(1, n+1)`
-/

namespace A221088.P15283203115060061537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - (Nat.land 1 (n + 1) : ℤ)

end

end A221088.P15283203115060061537

namespace A221088

/-- `Δ[A001906(n)]²-and(1, n+1)` -/
def P15283203115060061537.Spec : Prop :=
  ∀ n, P15283203115060061537.a n = A221088 (n + 1)

end A221088

/-! ## A221088.P12586424604788874025

`A000045(Δ[n²])²-char[2*n]`
-/

namespace A221088.P12586424604788874025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A221088.P12586424604788874025

namespace A221088

/-- `A000045(Δ[n²])²-char[2*n]` -/
def P12586424604788874025.Spec : Prop :=
  ∀ n, P12586424604788874025.a n = A221088 (n + 1)

end A221088

/-! ## A221088.P5363756367466756991

`Δ[A000045(2*n)]²-and(1, n-1)`
-/

namespace A221088.P5363756367466756991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - Int.land 1 ((n : ℤ) - 1)

end

end A221088.P5363756367466756991

namespace A221088

/-- `Δ[A000045(2*n)]²-and(1, n-1)` -/
def P5363756367466756991.Spec : Prop :=
  ∀ n, P5363756367466756991.a n = A221088 (n + 1)

end A221088

/-! ## A221088.P17216325620066982219

`abs(A000045(2*n+1)²-∑[(-1)^n])`
-/

namespace A221088.P17216325620066982219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000045 (2 * n + 1) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A221088.P17216325620066982219

namespace A221088

/-- `abs(A000045(2*n+1)²-∑[(-1)^n])` -/
def P17216325620066982219.Spec : Prop :=
  ∀ n, P17216325620066982219.a n = A221088 (n + 1)

end A221088

/-! ## A221088.P15681278048091580048

`floor(A000032(2*(2*n+1))/5)+(n+2)%2`
-/

namespace A221088.P15681278048091580048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000032 (2 * (2 * n + 1)) : ℚ) / 5⌋ + (((n + 2) % 2 : ℕ) : ℤ)

end

end A221088.P15681278048091580048

namespace A221088

/-- `floor(A000032(2*(2*n+1))/5)+(n+2)%2` -/
def P15681278048091580048.Spec : Prop :=
  ∀ n, P15681278048091580048.a n = A221088 (n + 1)

end A221088

/-! ## A221088.P630151155112621385

`A059929(2*n)+A000035(n)`
-/

namespace A221088.P630151155112621385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059929 (2 * n) + A000035 n

end

end A221088.P630151155112621385

namespace A221088

/-- `A059929(2*n)+A000035(n)` -/
def P630151155112621385.Spec : Prop :=
  ∀ n, P630151155112621385.a n = A221088 (n + 1)

end A221088

/-! ## A221088.P14791746613414369244

`A064831(2*n)+A000035(n)`
-/

namespace A221088.P14791746613414369244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064831 (2 * n) + A000035 n

end

end A221088.P14791746613414369244

namespace A221088

/-- `A064831(2*n)+A000035(n)` -/
def P14791746613414369244.Spec : Prop :=
  ∀ n, P14791746613414369244.a n = A221088 (n + 1)

end A221088

/-! ## A221088.P9737106150959083909

`A122367(n)²-A056594(n)²`
-/

namespace A221088.P9737106150959083909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n ^ 2 - A056594 n ^ 2

end

end A221088.P9737106150959083909

namespace A221088

/-- `A122367(n)²-A056594(n)²` -/
def P9737106150959083909.Spec : Prop :=
  ∀ n, P9737106150959083909.a n = A221088 (n + 1)

end A221088

/-! ## A221088.P42190513041667419

`A001519(n+1)²-A059841(n)`
-/

namespace A221088.P42190513041667419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) ^ 2 - A059841 n

end

end A221088.P42190513041667419

namespace A221088

/-- `A001519(n+1)²-A059841(n)` -/
def P42190513041667419.Spec : Prop :=
  ∀ n, P42190513041667419.a n = A221088 (n + 1)

end A221088

/-! ## A221088.P3916804430588166178

`A000035(n)+A099496(n)²-1`
-/

namespace A221088.P3916804430588166178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (A099496 n ^ 2 - 1)

end

end A221088.P3916804430588166178

namespace A221088

/-- `A000035(n)+A099496(n)²-1` -/
def P3916804430588166178.Spec : Prop :=
  ∀ n, P3916804430588166178.a n = A221088 (n + 1)

end A221088

/-! ## A221088.P12931238220515360359

`A000035(n)+A122367(n)²-1`
-/

namespace A221088.P12931238220515360359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (A122367 n ^ 2 - 1)

end

end A221088.P12931238220515360359

namespace A221088

/-- `A000035(n)+A122367(n)²-1` -/
def P12931238220515360359.Spec : Prop :=
  ∀ n, P12931238220515360359.a n = A221088 (n + 1)

end A221088

/-! ## A221088.P14209195819398967178

`∑[A033888(n)-A033999(n)]+1`
-/

namespace A221088.P14209195819398967178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033888 n - A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A221088.P14209195819398967178

namespace A221088

/-- `∑[A033888(n)-A033999(n)]+1` -/
def P14209195819398967178.Spec : Prop :=
  ∀ n, P14209195819398967178.a n = A221088 (n + 1)

end A221088

/-! ## A221088.P13238744025057708766

`A007598(2*n+1)-A059841(n)`
-/

namespace A221088.P13238744025057708766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 (2 * n + 1) - A059841 n

end

end A221088.P13238744025057708766

namespace A221088

/-- `A007598(2*n+1)-A059841(n)` -/
def P13238744025057708766.Spec : Prop :=
  ∀ n, P13238744025057708766.a n = A221088 (n + 1)

end A221088

/-! ## A221088.P11304687008157082034

`A166516(2*n+1)-A059841(n)`
-/

namespace A221088.P11304687008157082034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166516 (2 * n + 1) - A059841 n

end

end A221088.P11304687008157082034

namespace A221088

/-- `A166516(2*n+1)-A059841(n)` -/
def P11304687008157082034.Spec : Prop :=
  ∀ n, P11304687008157082034.a n = A221088 (n + 1)

end A221088

/-!
# A221089: Number of 3 X n arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor.

The programs for A221089, there is no canonical definition to state claims against.
-/

/-! ## A221089.P15470463081256173606

`A221087(∑[n+2]+4)`
-/

namespace A221089.P15470463081256173606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221087 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A221089.P15470463081256173606

/-! ## A221089.P4314327339294452693

`lcm((-1)^n, A221087(A167614(n+1)))`
-/

namespace A221089.P4314327339294452693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A221087 (A167614 (n + 1)).toNat)

end

end A221089.P4314327339294452693

/-! ## A221089.P16910271274935629507

`A221087(A167614(n+1))+A185236(n)`
-/

namespace A221089.P16910271274935629507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221087 (A167614 (n + 1)).toNat + A185236 n

end

end A221089.P16910271274935629507

/-! ## A221089.P10201411969646544907

`A054977(n)*A221087(A167614(n+1))`
-/

namespace A221089.P10201411969646544907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A221087 (A167614 (n + 1)).toNat

end

end A221089.P10201411969646544907

/-! ## A221089.P4937165348526006402

`A057427(n)*A221087(A167614(n+1))`
-/

namespace A221089.P4937165348526006402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A221087 (A167614 (n + 1)).toNat

end

end A221089.P4937165348526006402

/-!
# A221090: Number of 4Xn arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor.

The programs for A221090, there is no canonical definition to state claims against.
-/

/-! ## A221090.P12246358167979377114

`A221087(A141214(n)+7)`
-/

namespace A221090.P12246358167979377114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221087 (A141214 n + 7).toNat

end

end A221090.P12246358167979377114

/-! ## A221090.P3230914462560148426

`A221087(A052905(n)+9)`
-/

namespace A221090.P3230914462560148426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221087 (A052905 n + 9).toNat

end

end A221090.P3230914462560148426

/-! ## A221090.P1306042111234196774

`A221087(A055999(n)+10)`
-/

namespace A221090.P1306042111234196774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221087 (A055999 n + 10).toNat

end

end A221090.P1306042111234196774

/-! ## A221090.P9678763867788097723

`A221087(A167614(n+2)+1)`
-/

namespace A221090.P9678763867788097723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221087 (A167614 (n + 2) + 1).toNat

end

end A221090.P9678763867788097723

/-! ## A221090.P8666500381150951337

`A221087(eq[3, A002262(n)]+1)`
-/

namespace A221090.P8666500381150951337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A221090.P8666500381150951337

/-!
# A221091: Number of 5Xn arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor.

The programs for A221091, there is no canonical definition to state claims against.
-/

/-! ## A221091.P11871080146384888506

`A221087(A077169(n+5))`
-/

namespace A221091.P11871080146384888506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221087 (A077169 (n + 5)).toNat

end

end A221091.P11871080146384888506

/-! ## A221091.P3570185109030305876

`A221087(A155212(n)+13)`
-/

namespace A221091.P3570185109030305876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221087 (A155212 n + 13).toNat

end

end A221091.P3570185109030305876

/-! ## A221091.P3207918994254040196

`A221087(A056000(n)+15)`
-/

namespace A221091.P3207918994254040196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221087 (A056000 n + 15).toNat

end

end A221091.P3207918994254040196

/-! ## A221091.P3967175410677100718

`A221087(A167614(n+3)+2)`
-/

namespace A221091.P3967175410677100718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221087 (A167614 (n + 3) + 2).toNat

end

end A221091.P3967175410677100718

/-! ## A221091.P6358762230684150734

`A221087(eq[4, A002262(n)]+1)`
-/

namespace A221091.P6358762230684150734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A221091.P6358762230684150734

/-!
# A221092: Number of 6Xn arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor.

The programs for A221092, there is no canonical definition to state claims against.
-/

/-! ## A221092.P10644319144901657645

`A221087(eq[5, A002262(n)]+1)`
-/

namespace A221092.P10644319144901657645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A221092.P10644319144901657645

/-! ## A221092.P3904995965841443999

`A221087(eq[7, A131818(n+1)])`
-/

namespace A221092.P3904995965841443999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221092.P3904995965841443999

/-!
# A221093: Number of 7 X n arrays of occupancy after each element moves to some horizontal or antidiagonal neighbor.

The programs for A221093, there is no canonical definition to state claims against.
-/

/-! ## A221093.P11198614983717445850

`A221087(A133263(n+6)+5)`
-/

namespace A221093.P11198614983717445850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221087 (A133263 (n + 6) + 5).toNat

end

end A221093.P11198614983717445850

/-! ## A221093.P11551977076535632387

`A221087(eq[6, A002262(n)]+1)`
-/

namespace A221093.P11551977076535632387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A221093.P11551977076535632387

/-! ## A221093.P1532906760272185409

`A221087(eq[8, A131818(n+1)])`
-/

namespace A221093.P1532906760272185409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A221093.P1532906760272185409

/-!
# A221095: E.g.f.: exp( Sum_{n>=1} q_binomial(2*n,n,x) * x^n/n ), where q_binomial(n,k,q) = Product_{j=1..n-k} (1-q^(j+k))/(1-q^j).

The programs for A221095, there is no canonical definition to state claims against.
-/

/-! ## A221095.P18280270268281638521

`A243847(A185323(n))+A185323(n)`
-/

namespace A221095.P18280270268281638521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243847 (A185323 n).toNat + A185323 n

end

end A221095.P18280270268281638521

/-! ## A221095.P5979910774390545750

`A357636(A001250(n))+A328509(n)`
-/

namespace A221095.P5979910774390545750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357636 (A001250 n).toNat + A328509 n

end

end A221095.P5979910774390545750

/-!
# A221096: E.g.f. satisfies: A(x) = Sum_{n>=0} log(1 + x*A(x)^(2*n))^n/n!.

The programs for A221096, there is no canonical definition to state claims against.
-/

/-! ## A221096.P16111088273528951902

`n!*A116358(n!)`
-/

namespace A221096.P16111088273528951902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A116358 (Nat.factorial n)

end

end A221096.P16111088273528951902

/-!
# A221097: E.g.f. satisfies: A(x) = Sum_{n>=0} log(1 + x*A(x)^(3*n))^n/n!.

The programs for A221097, there is no canonical definition to state claims against.
-/

/-! ## A221097.P16583239759750727857

`n!*A290426(n!)`
-/

namespace A221097.P16583239759750727857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A290426 (Nat.factorial n)

end

end A221097.P16583239759750727857

/-!
# A221098: E.g.f. satisfies: A(x) = Sum_{n>=0} log(1 + x*A(x)^(4*n))^n/n!.

The programs for A221098, there is no canonical definition to state claims against.
-/

/-! ## A221098.P266179688228231603

`A000010(A384634(∑[n]))`
-/

namespace A221098.P266179688228231603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A384634 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A221098.P266179688228231603

/-!
# A221099: E.g.f. satisfies: A(x) = Sum_{n>=0} log(1 + x*A(x)^(5*n))^n/n!.

The programs for A221099, there is no canonical definition to state claims against.
-/

/-! ## A221099.P16546494629385498370

`A008330(A392208(n+1)+1)`
-/

namespace A221099.P16546494629385498370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008330 (A392208 (n + 1) + 1).toNat

end

end A221099.P16546494629385498370

