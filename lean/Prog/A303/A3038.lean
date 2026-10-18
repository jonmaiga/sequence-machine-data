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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A303800: T(n,k) = Number of n X k 0..1 arrays with every element unequal to 0, 1, 2 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303800, there is no canonical definition to state claims against.
-/

/-! ## A303800.P14420835801058000

`A305245(n+1)-A186034(A022167(n))`
-/

namespace A303800.P14420835801058000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305245 (n + 1) - A186034 (A022167 n).toNat

end

end A303800.P14420835801058000

/-! ## A303800.P8870760438899112164

`A305245(n+1)-A173920(A173917(n))`
-/

namespace A303800.P8870760438899112164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305245 (n + 1) - A173920 (A173917 n).toNat

end

end A303800.P8870760438899112164

/-! ## A303800.P1366890683511887500

`A305245(n+1)-A353495(A156303(n))`
-/

namespace A303800.P1366890683511887500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305245 (n + 1) - A353495 (A156303 n).toNat

end

end A303800.P1366890683511887500

/-! ## A303800.P16308071894684345539

`A305245(n+1)-A058716(A001263(n+1))`
-/

namespace A303800.P16308071894684345539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305245 (n + 1) - A058716 (A001263 (n + 1)).toNat

end

end A303800.P16308071894684345539

/-! ## A303800.P9727345925030756246

`A244361(A304848(n+1))`
-/

namespace A303800.P9727345925030756246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244361 (A304848 (n + 1)).toNat

end

end A303800.P9727345925030756246

/-!
# A303801: Number of n X n 0..1 arrays with every element unequal to 0, 1, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303801, there is no canonical definition to state claims against.
-/

/-! ## A303801.P12253731819052177900

`A303808(∑[4*n]+1)`
-/

namespace A303801.P12253731819052177900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303808 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303801.P12253731819052177900

/-! ## A303801.P14436996022759919912

`record[A303808(Δ[A235355(n)])]`
-/

namespace A303801.P14436996022759919912
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303808 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303801.P14436996022759919912

/-! ## A303801.P5528979841504883014

`record[A303808(A330613(n+1))]`
-/

namespace A303801.P5528979841504883014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303808 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303801.P5528979841504883014

/-! ## A303801.P10818620629544973518

`A303808(A001844(n))+char[16]`
-/

namespace A303801.P10818620629544973518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303808 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303801.P10818620629544973518

/-! ## A303801.P2216323139877282817

`record[A003982(n)*A303808(n+1)]`
-/

namespace A303801.P2216323139877282817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A303808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303801.P2216323139877282817

/-!
# A303802: Number of n X 2 0..1 arrays with every element unequal to 0, 1, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303802, the canonical program `A303802.P16876908417009660578` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303802 has offset 1).

The definition of A303802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303802.P16876908417009660578

`a(n-1)+4*a(n-3)-2` with `a(0)=2, a(1)=5, a(2)=7, a(3)=17`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A303802

/-- `a(n-1)+4*a(n-3)-2` -/
def P16876908417009660578.Spec : Prop :=
  ∀ n, P16876908417009660578.a n = A303802 (n + 1)

theorem P16876908417009660578.correct : P16876908417009660578.Spec := by
  intro n
  simp only [A303802, Nat.add_sub_cancel]

end A303802

/-! ## A303802.P13621831408631968104

`∑[char[1]+2*A089977(n)]`
-/

namespace A303802.P13621831408631968104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + 2 * A089977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303802.P13621831408631968104

namespace A303802

/-- `∑[char[1]+2*A089977(n)]` -/
def P13621831408631968104.Spec : Prop :=
  ∀ n, P13621831408631968104.a n = A303802 (n + 1)

end A303802

/-! ## A303802.P1323616076067633731

`A151821(n+1)+∑[A110512(n)]`
-/

namespace A303802.P1323616076067633731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110512 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303802.P1323616076067633731

namespace A303802

/-- `A151821(n+1)+∑[A110512(n)]` -/
def P1323616076067633731.Spec : Prop :=
  ∀ n, P1323616076067633731.a n = A303802 (n + 1)

end A303802

/-! ## A303802.P12239752062167118740

`A057427(n)+∑[2*A089977(n)]`
-/

namespace A303802.P12239752062167118740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303802.P12239752062167118740

namespace A303802

/-- `A057427(n)+∑[2*A089977(n)]` -/
def P12239752062167118740.Spec : Prop :=
  ∀ n, P12239752062167118740.a n = A303802 (n + 1)

end A303802

/-! ## A303802.P5302647395315854135

`∑[2*A089977(n)]-A057428(n)`
-/

namespace A303802.P5302647395315854135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057428 n

end

end A303802.P5302647395315854135

namespace A303802

/-- `∑[2*A089977(n)]-A057428(n)` -/
def P5302647395315854135.Spec : Prop :=
  ∀ n, P5302647395315854135.a n = A303802 (n + 1)

end A303802

/-! ## A303802.P231175252209823778

`∑[char[1]+A110512(n)+A000079(n)]`
-/

namespace A303802.P231175252209823778
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (A110512 n + A000079 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303802.P231175252209823778

namespace A303802

/-- `∑[char[1]+A110512(n)+A000079(n)]` -/
def P231175252209823778.Spec : Prop :=
  ∀ n, P231175252209823778.a n = A303802 (n + 1)

end A303802

/-! ## A303802.P14781674495187824736

`∑[A089977(n)*A141310(A234851(n+1))]`
-/

namespace A303802.P14781674495187824736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089977 n * A141310 (A234851 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303802.P14781674495187824736

namespace A303802

/-- `∑[A089977(n)*A141310(A234851(n+1))]` -/
def P14781674495187824736.Spec : Prop :=
  ∀ n, P14781674495187824736.a n = A303802 (n + 1)

end A303802

/-! ## A303802.P17780102590297036105

`A057427(n)+∑[A110512(n)+A000079(n)]`
-/

namespace A303802.P17780102590297036105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110512 n + A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303802.P17780102590297036105

namespace A303802

/-- `A057427(n)+∑[A110512(n)+A000079(n)]` -/
def P17780102590297036105.Spec : Prop :=
  ∀ n, P17780102590297036105.a n = A303802 (n + 1)

end A303802

/-! ## A303802.P17829256917151224695

`∑[A110512(n)+A000079(n)]+1-A000007(n)`
-/

namespace A303802.P17829256917151224695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110512 n + A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A000007 n)

end

end A303802.P17829256917151224695

namespace A303802

/-- `∑[A110512(n)+A000079(n)]+1-A000007(n)` -/
def P17829256917151224695.Spec : Prop :=
  ∀ n, P17829256917151224695.a n = A303802 (n + 1)

end A303802

/-! ## A303802.P11457882449851298572

`∑[A110512(n)+A000079(n)]-A089263(2*n+1)`
-/

namespace A303802.P11457882449851298572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110512 n + A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A089263 (2 * n + 1)

end

end A303802.P11457882449851298572

namespace A303802

/-- `∑[A110512(n)+A000079(n)]-A089263(2*n+1)` -/
def P11457882449851298572.Spec : Prop :=
  ∀ n, P11457882449851298572.a n = A303802 (n + 1)

end A303802

/-!
# A303803: Number of nX3 0..1 arrays with every element unequal to 0, 1, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303803, there is no canonical definition to state claims against.
-/

/-! ## A303803.P4360685627968305865

`A303808(∑[n+2]+4)`
-/

namespace A303803.P4360685627968305865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303808 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A303803.P4360685627968305865

/-! ## A303803.P90023034197596956

`or(1, A303808(A167614(n+1)))`
-/

namespace A303803.P90023034197596956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A303808 (A167614 (n + 1)).toNat)

end

end A303803.P90023034197596956

/-! ## A303803.P10714137937355103080

`or(1, A303808(A046691(n)+7))`
-/

namespace A303803.P10714137937355103080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A303808 (A046691 n + 7).toNat)

end

end A303803.P10714137937355103080

/-! ## A303803.P8561835059070357253

`A303808(A167614(n+1))+A025438(n)`
-/

namespace A303803.P8561835059070357253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303808 (A167614 (n + 1)).toNat + A025438 n

end

end A303803.P8561835059070357253

/-! ## A303803.P4041420062659509179

`A303808(A167614(n+1))+A025439(n)`
-/

namespace A303803.P4041420062659509179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303808 (A167614 (n + 1)).toNat + A025439 n

end

end A303803.P4041420062659509179

/-!
# A303804: Number of nX4 0..1 arrays with every element unequal to 0, 1, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303804, there is no canonical definition to state claims against.
-/

/-! ## A303804.P17703311567866752202

`A303808(A141214(n)+7)`
-/

namespace A303804.P17703311567866752202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303808 (A141214 n + 7).toNat

end

end A303804.P17703311567866752202

/-! ## A303804.P12321816153575073218

`A303808(A052905(n)+9)`
-/

namespace A303804.P12321816153575073218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303808 (A052905 n + 9).toNat

end

end A303804.P12321816153575073218

/-! ## A303804.P2084267353042702152

`A303808(A055999(n)+10)`
-/

namespace A303804.P2084267353042702152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303808 (A055999 n + 10).toNat

end

end A303804.P2084267353042702152

/-! ## A303804.P11617257558223421193

`A303808(Δ[A005286(n)]+5)`
-/

namespace A303804.P11617257558223421193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303808 (f1 (n + 1) - f1 n + 5).toNat

end

end A303804.P11617257558223421193

/-! ## A303804.P12408005232656777598

`A303808(Δ[A008778(n)]+6)`
-/

namespace A303804.P12408005232656777598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303808 (f1 (n + 1) - f1 n + 6).toNat

end

end A303804.P12408005232656777598

/-!
# A303805: Number of nX5 0..1 arrays with every element unequal to 0, 1, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303805, there is no canonical definition to state claims against.
-/

/-! ## A303805.P1508768039293241818

`A303808(∑[n+4]+11)`
-/

namespace A303805.P1508768039293241818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303808 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A303805.P1508768039293241818

/-! ## A303805.P1162402651159912959

`A303808(eq[4, A193592(n)])%A250233(n+1)`
-/

namespace A303805.P1162402651159912959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303808 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A250233 (n + 1))

end

end A303805.P1162402651159912959

/-!
# A303806: Number of nX6 0..1 arrays with every element unequal to 0, 1, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303806, there is no canonical definition to state claims against.
-/

/-! ## A303806.P13960027066842272236

`A303808(A056115(n)+21)`
-/

namespace A303806.P13960027066842272236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303808 (A056115 n + 21).toNat

end

end A303806.P13960027066842272236

/-! ## A303806.P10624104100950807153

`A303808(A167499(n+4)+1)`
-/

namespace A303806.P10624104100950807153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303808 (A167499 (n + 4) + 1).toNat

end

end A303806.P10624104100950807153

/-! ## A303806.P15987890063926523689

`A303808(A133263(n+5)+4)`
-/

namespace A303806.P15987890063926523689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303808 (A133263 (n + 5) + 4).toNat

end

end A303806.P15987890063926523689

/-! ## A303806.P14551440411067230458

`A303808(A000124(n+5)+5)`
-/

namespace A303806.P14551440411067230458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303808 (A000124 (n + 5) + 5).toNat

end

end A303806.P14551440411067230458

/-! ## A303806.P2321468693678228255

`A303808(A000096(n+4)+7)`
-/

namespace A303806.P2321468693678228255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303808 (A000096 (n + 4) + 7).toNat

end

end A303806.P2321468693678228255

/-!
# A303807: Number of nX7 0..1 arrays with every element unequal to 0, 1, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303807, there is no canonical definition to state claims against.
-/

/-! ## A303807.P3633825365249725673

`A303808(A056119(n)+28)`
-/

namespace A303807.P3633825365249725673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303808 (A056119 n + 28).toNat

end

end A303807.P3633825365249725673

/-! ## A303807.P11934818479457148005

`A303808(A166136(n+5)+1)`
-/

namespace A303807.P11934818479457148005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303808 (A166136 (n + 5) + 1).toNat

end

end A303807.P11934818479457148005

/-! ## A303807.P10141344939534605907

`A303808(A167499(n+5)+2)`
-/

namespace A303807.P10141344939534605907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303808 (A167499 (n + 5) + 2).toNat

end

end A303807.P10141344939534605907

/-! ## A303807.P4041657340939779401

`A303808(A167614(n+5)+4)`
-/

namespace A303807.P4041657340939779401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303808 (A167614 (n + 5) + 4).toNat

end

end A303807.P4041657340939779401

/-! ## A303807.P16147748269754328162

`A303808(A000124(n+6)+6)`
-/

namespace A303807.P16147748269754328162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303808 (A000124 (n + 6) + 6).toNat

end

end A303807.P16147748269754328162

/-!
# A303808: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303808, there is no canonical definition to state claims against.
-/

/-! ## A303808.P11086351440592964102

`A304855(n+1)-A309785(A299321(n+1))`
-/

namespace A303808.P11086351440592964102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304855 (n + 1) - A309785 (A299321 (n + 1)).toNat

end

end A303808.P11086351440592964102

/-! ## A303808.P15287664516068332439

`xor(A200214(A197561(n+1)), A304855(n+1))`
-/

namespace A303808.P15287664516068332439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A200214 (A197561 (n + 1)).toNat) (A304855 (n + 1))

end

end A303808.P15287664516068332439

/-! ## A303808.P12679620113245364066

`A304855(n+1)-A025466(A270890(n+1))`
-/

namespace A303808.P12679620113245364066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304855 (n + 1) - A025466 (A270890 (n + 1)).toNat

end

end A303808.P12679620113245364066

/-! ## A303808.P11877709810008097230

`A304855(n+1)-A285007(A035607(n))`
-/

namespace A303808.P11877709810008097230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304855 (n + 1) - A285007 (A035607 n).toNat

end

end A303808.P11877709810008097230

/-! ## A303808.P11917511478482291292

`A304855(n+1)-A285007(A270061(n))`
-/

namespace A303808.P11917511478482291292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304855 (n + 1) - A285007 (A270061 n).toNat

end

end A303808.P11917511478482291292

/-!
# A303809: Multiplicative with a(p^k) = 2^a(k).

The programs for A303809, the canonical program `A303809.P15019410293216701756` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303809 has offset 1).

The definition of A303809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303809.P15019410293216701756

`∏{e}[n+1, 2^2^A238949(#)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A303809

/-- `∏{e}[n+1, 2^2^A238949(#)]` -/
def P15019410293216701756.Spec : Prop :=
  ∀ n, P15019410293216701756.a n = (A303809 (n + 1) : ℝ)

end A303809

/-! ## A303809.P1339541806465403700

`∏{e}[n+1, 2*A224516(A130279(#))]`
-/

namespace A303809.P1339541806465403700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 2 * A224516 (A130279 (Nat.factorization (f1 n) p)).toNat

end

end A303809.P1339541806465403700

namespace A303809

/-- `∏{e}[n+1, 2*A224516(A130279(#))]` -/
def P1339541806465403700.Spec : Prop :=
  ∀ n, P1339541806465403700.a n = A303809 (n + 1)

end A303809

/-! ## A303809.P11542151909892649736

`∏{e}[A085079(n+1), A218075(#)]`
-/

namespace A303809.P11542151909892649736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A218075 (Nat.factorization (f1 n).natAbs p)

end

end A303809.P11542151909892649736

namespace A303809

/-- `∏{e}[A085079(n+1), A218075(#)]` -/
def P11542151909892649736.Spec : Prop :=
  ∀ n, P11542151909892649736.a n = A303809 (n + 1)

end A303809

/-! ## A303809.P12779550118263880323

`∏{e}[A225891(n+1), A218075(#)]`
-/

namespace A303809.P12779550118263880323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A218075 (Nat.factorization (f1 n).natAbs p)

end

end A303809.P12779550118263880323

namespace A303809

/-- `∏{e}[A225891(n+1), A218075(#)]` -/
def P12779550118263880323.Spec : Prop :=
  ∀ n, P12779550118263880323.a n = A303809 (n + 1)

end A303809

/-! ## A303809.P13545632406837557724

`A011782(∑{e}[A033286(n+1), A075526(#)])`
-/

namespace A303809.P13545632406837557724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A075526 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A303809.P13545632406837557724

namespace A303809

/-- `A011782(∑{e}[A033286(n+1), A075526(#)])` -/
def P13545632406837557724.Spec : Prop :=
  ∀ n, P13545632406837557724.a n = A303809 (n + 1)

end A303809

/-! ## A303809.P13949542857022698368

`∏{e}[A331580(n+1), A218075(#)]`
-/

namespace A303809.P13949542857022698368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A218075 (Nat.factorization (f1 n).natAbs p)

end

end A303809.P13949542857022698368

namespace A303809

/-- `∏{e}[A331580(n+1), A218075(#)]` -/
def P13949542857022698368.Spec : Prop :=
  ∀ n, P13949542857022698368.a n = A303809 (n + 1)

end A303809

/-! ## A303809.P1742152349396621738

`2^∑{e}[n+1, A060438(2^#+1)]`
-/

namespace A303809.P1742152349396621738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), A060438 (2 ^ Nat.factorization (f1 n) p + 1) : ℤ)

end

end A303809.P1742152349396621738

namespace A303809

/-- `2^∑{e}[n+1, A060438(2^#+1)]` -/
def P1742152349396621738.Spec : Prop :=
  ∀ n, P1742152349396621738.a n = (A303809 (n + 1) : ℚ)

end A303809

/-! ## A303809.P5496020060188962103

`∏{e}[A284476(n+1), A090106(A000079(#))]`
-/

namespace A303809.P5496020060188962103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A090106 (A000079 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A303809.P5496020060188962103

namespace A303809

/-- `∏{e}[A284476(n+1), A090106(A000079(#))]` -/
def P5496020060188962103.Spec : Prop :=
  ∀ n, P5496020060188962103.a n = A303809 (n + 1)

end A303809

/-! ## A303809.P662004206268413858

`∏{e}[n+1, A000005(A125996(A000203(#)²)-1)]`
-/

namespace A303809.P662004206268413858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000005 (A125996 (A000203 (Nat.factorization (f1 n) p) ^ 2).toNat - 1).toNat

end

end A303809.P662004206268413858

namespace A303809

/-- `∏{e}[n+1, A000005(A125996(A000203(#)²)-1)]` -/
def P662004206268413858.Spec : Prop :=
  ∀ n, P662004206268413858.a n = A303809 (n + 1)

end A303809

/-!
# A303810: Mirror image of the triangle A026794.

The programs for A303810, there is no canonical definition to state claims against.
-/

/-! ## A303810.P10332587013119277222

`A026794(∑[char[∑[n]]]²-n)`
-/

namespace A303810.P10332587013119277222
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A303810.P10332587013119277222

/-! ## A303810.P1401068450074143418

`A278105(n+4)+A026794(A038722(n+1))`
-/

namespace A303810.P1401068450074143418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278105 (n + 4) + A026794 (A038722 (n + 1)).toNat

end

end A303810.P1401068450074143418

/-! ## A303810.P1405339755957786430

`A026794(A038722(n+1))*A054977(n+4)`
-/

namespace A303810.P1405339755957786430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A038722 (n + 1)).toNat * A054977 (n + 4)

end

end A303810.P1405339755957786430

/-! ## A303810.P3082071071964237293

`A245552(2*(n+2))+A026794(A038722(n+1))`
-/

namespace A303810.P3082071071964237293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245552 (2 * (n + 2)) + A026794 (A038722 (n + 1)).toNat

end

end A303810.P3082071071964237293

/-! ## A303810.P14133758515659200274

`A026794(A038722(n+1))+A000038(2*n+3)`
-/

namespace A303810.P14133758515659200274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (A038722 (n + 1)).toNat + A000038 (2 * n + 3)

end

end A303810.P14133758515659200274

/-!
# A303811: Least k such that A006666(k)/A006667(k) = prime(n).

The programs for A303811, there is no canonical definition to state claims against.
-/

/-! ## A303811.P11427499294457854763

`A287798(A008864(n+1))`
-/

namespace A303811.P11427499294457854763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287798 (A008864 (n + 1)).toNat

end

end A303811.P11427499294457854763

/-! ## A303811.P16996357872781218738

`A287798(A028815(n+1))`
-/

namespace A303811.P16996357872781218738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287798 (A028815 (n + 1)).toNat

end

end A303811.P16996357872781218738

/-! ## A303811.P8857672923929945628

`A287798(A299763(n+2))`
-/

namespace A303811.P8857672923929945628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287798 (A299763 (n + 2)).toNat

end

end A303811.P8857672923929945628

/-! ## A303811.P634104385255822890

`A287798(A000040(n+1)+1)`
-/

namespace A303811.P634104385255822890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287798 (A000040 (n + 1) + 1).toNat

end

end A303811.P634104385255822890

/-! ## A303811.P12024852154278109567

`A287798(A040976(n+1)+3)`
-/

namespace A303811.P12024852154278109567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287798 (A040976 (n + 1) + 3).toNat

end

end A303811.P12024852154278109567

/-!
# A303812: Generalized 28-gonal (or icosioctagonal) numbers: m*(13*m - 12) with m = 0, +1, -1, +2, -2, +3, -3, ...

The programs for A303812, the canonical program `A303812.P7826086755628912613` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303812 has offset 0).

The definition of A303812 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A303812.P7826086755628912613

`(26*n*(n+1)+11*(2*n+1)*(-1)^n-11)/8`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A303812

/-- `(26*n*(n+1)+11*(2*n+1)*(-1)^n-11)/8` -/
def P7826086755628912613.Spec : Prop :=
  ∀ n, P7826086755628912613.a n = (A303812 n : ℚ)

end A303812

/-! ## A303812.P16326135977758450142

`∑[n*gcd(12, n%2)]`
-/

namespace A303812.P16326135977758450142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 12 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303812.P16326135977758450142

namespace A303812

/-- `∑[n*gcd(12, n%2)]` -/
def P16326135977758450142.Spec : Prop :=
  ∀ n, (P16326135977758450142.a n : ℤ) = A303812 n

end A303812

/-! ## A303812.P2884089976674592402

`∑[n*12^((n+1)%2)]`
-/

namespace A303812.P2884089976674592402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 12 ^ ((n + 1) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303812.P2884089976674592402

namespace A303812

/-- `∑[n*12^((n+1)%2)]` -/
def P2884089976674592402.Spec : Prop :=
  ∀ n, (P2884089976674592402.a n : ℤ) = A303812 n

end A303812

/-! ## A303812.P3029084519927281946

`∑[n*12^and(1, n+1)]`
-/

namespace A303812.P3029084519927281946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 12 ^ Nat.land 1 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303812.P3029084519927281946

namespace A303812

/-- `∑[n*12^and(1, n+1)]` -/
def P3029084519927281946.Spec : Prop :=
  ∀ n, (P3029084519927281946.a n : ℤ) = A303812 n

end A303812

/-! ## A303812.P3818317196629913139

`∑[n/12^(n-or(1, n))]`
-/

namespace A303812.P3818317196629913139
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (12 : ℚ) ^ ((n : ℤ) - (Nat.lor 1 n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303812.P3818317196629913139

namespace A303812

/-- `∑[n/12^(n-or(1, n))]` -/
def P3818317196629913139.Spec : Prop :=
  ∀ n, P3818317196629913139.a n = (A303812 n : ℚ)

end A303812

/-! ## A303812.P14850545623492942899

`∑[gcd(12*n, n*and(1, n))]`
-/

namespace A303812.P14850545623492942899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (12 * n) (n * Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303812.P14850545623492942899

namespace A303812

/-- `∑[gcd(12*n, n*and(1, n))]` -/
def P14850545623492942899.Spec : Prop :=
  ∀ n, (P14850545623492942899.a n : ℤ) = A303812 n

end A303812

/-! ## A303812.P16611112547511488011

`∑[A317324(n)]`
-/

namespace A303812.P16611112547511488011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317324 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303812.P16611112547511488011

namespace A303812

/-- `∑[A317324(n)]` -/
def P16611112547511488011.Spec : Prop :=
  ∀ n, P16611112547511488011.a n = A303812 n

end A303812

/-! ## A303812.P6996154854105055006

`∑[n*A040041(n)]`
-/

namespace A303812.P6996154854105055006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A040041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303812.P6996154854105055006

namespace A303812

/-- `∑[n*A040041(n)]` -/
def P6996154854105055006.Spec : Prop :=
  ∀ n, P6996154854105055006.a n = A303812 n

end A303812

/-! ## A303812.P16583606009354492304

`A316724(n)+A110660(n)`
-/

namespace A303812.P16583606009354492304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316724 n + A110660 n

end

end A303812.P16583606009354492304

namespace A303812

/-- `A316724(n)+A110660(n)` -/
def P16583606009354492304.Spec : Prop :=
  ∀ n, P16583606009354492304.a n = A303812 n

end A303812

/-! ## A303812.P11374988168798548354

`A316729(n)-A110660(n)`
-/

namespace A303812.P11374988168798548354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316729 n - A110660 n

end

end A303812.P11374988168798548354

namespace A303812

/-- `A316729(n)-A110660(n)` -/
def P11374988168798548354.Spec : Prop :=
  ∀ n, P11374988168798548354.a n = A303812 n

end A303812

/-! ## A303812.P15324591950669283445

`A303814(n)+2*A110660(n)`
-/

namespace A303812.P15324591950669283445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303814 n + 2 * A110660 n

end

end A303812.P15324591950669283445

namespace A303812

/-- `A303814(n)+2*A110660(n)` -/
def P15324591950669283445.Spec : Prop :=
  ∀ n, P15324591950669283445.a n = A303812 n

end A303812

/-! ## A303812.P4281275269464147202

`2*A303305(n)-A000217(n)`
-/

namespace A303812.P4281275269464147202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303305 n - A000217 n

end

end A303812.P4281275269464147202

namespace A303812

/-- `2*A303305(n)-A000217(n)` -/
def P4281275269464147202.Spec : Prop :=
  ∀ n, P4281275269464147202.a n = A303812 n

end A303812

/-! ## A303812.P4850021712786942025

`2*A303813(n)-A074377(n)`
-/

namespace A303812.P4850021712786942025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303813 n - A074377 n

end

end A303812.P4850021712786942025

namespace A303812

/-- `2*A303813(n)-A074377(n)` -/
def P4850021712786942025.Spec : Prop :=
  ∀ n, P4850021712786942025.a n = A303812 n

end A303812

/-! ## A303812.P4774303153519874182

`A316725(n)+A110660(n)/2`
-/

namespace A303812.P4774303153519874182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316725 n : ℚ) + (A110660 n : ℚ) / 2

end

end A303812.P4774303153519874182

namespace A303812

/-- `A316725(n)+A110660(n)/2` -/
def P4774303153519874182.Spec : Prop :=
  ∀ n, P4774303153519874182.a n = (A303812 n : ℚ)

end A303812

/-! ## A303812.P11887282984175766436

`2*A303304(n)-A303299(n)`
-/

namespace A303812.P11887282984175766436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303304 n - A303299 n

end

end A303812.P11887282984175766436

namespace A303812

/-- `2*A303304(n)-A303299(n)` -/
def P11887282984175766436.Spec : Prop :=
  ∀ n, P11887282984175766436.a n = A303812 n

end A303812

/-! ## A303812.P16341997877070005852

`2*A303815(n)-A316729(n)`
-/

namespace A303812.P16341997877070005852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303815 n - A316729 n

end

end A303812.P16341997877070005852

namespace A303812

/-- `2*A303815(n)-A316729(n)` -/
def P16341997877070005852.Spec : Prop :=
  ∀ n, P16341997877070005852.a n = A303812 n

end A303812

/-! ## A303812.P10737315712683858636

`2*A316725(n)-A316724(n)`
-/

namespace A303812.P10737315712683858636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A316725 n - A316724 n

end

end A303812.P10737315712683858636

namespace A303812

/-- `2*A316725(n)-A316724(n)` -/
def P10737315712683858636.Spec : Prop :=
  ∀ n, P10737315712683858636.a n = A303812 n

end A303812

/-! ## A303812.P4770514143786302845

`A303815(n)-A110660(n)/2`
-/

namespace A303812.P4770514143786302845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303815 n : ℚ) - (A110660 n : ℚ) / 2

end

end A303812.P4770514143786302845

namespace A303812

/-- `A303815(n)-A110660(n)/2` -/
def P4770514143786302845.Spec : Prop :=
  ∀ n, P4770514143786302845.a n = (A303812 n : ℚ)

end A303812

/-! ## A303812.P7011680165030777691

`A372718(n+1)-A271723(n+1)`
-/

namespace A303812.P7011680165030777691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372718 (n + 1) - A271723 (n + 1)

end

end A303812.P7011680165030777691

namespace A303812

/-- `A372718(n+1)-A271723(n+1)` -/
def P7011680165030777691.Spec : Prop :=
  ∀ n, P7011680165030777691.a n = A303812 n

end A303812

/-! ## A303812.P13718629667406984008

`A074377(n)+A303303(n)-A001318(n)`
-/

namespace A303812.P13718629667406984008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074377 n + (A303303 n - A001318 n)

end

end A303812.P13718629667406984008

namespace A303812

/-- `A074377(n)+A303303(n)-A001318(n)` -/
def P13718629667406984008.Spec : Prop :=
  ∀ n, P13718629667406984008.a n = A303812 n

end A303812

/-!
# A303813: Generalized 19-gonal (or enneadecagonal) numbers: m*(17*m - 15)/2 with m = 0, +1, -1, +2, -2, +3, -3, ...

The programs for A303813, the canonical program `A303813.P8967288388635013264` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303813 has offset 0).

The definition of A303813 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A303813.P8967288388635013264

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=16, a(3)=19, a(4)=49`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A303813

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P8967288388635013264.Spec : Prop :=
  ∀ n, P8967288388635013264.a n = A303813 n

theorem P8967288388635013264.correct : P8967288388635013264.Spec := by
  intro n
  simp only [A303813]

end A303813

/-! ## A303813.P2913686676962933920

`∑[2*a(n-2)-a(n-4)]` with `a(0)=0, a(1)=1, a(2)=15, a(3)=3`
-/

namespace A303813.P2913686676962933920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 15, 3] fun n f1 =>
  2 * f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303813.P2913686676962933920

namespace A303813

/-- `∑[2*a(n-2)-a(n-4)]` -/
def P2913686676962933920.Spec : Prop :=
  ∀ n, P2913686676962933920.a n = A303813 n

end A303813

/-! ## A303813.P15115214669050697714

`(34*n²+13*(-1)^n-13)/8-a(n-1)` with `a(0)=0`
-/

namespace A303813.P15115214669050697714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  ((34 * n ^ 2 : ℤ) + 13 * (-1) ^ n - 13 : ℚ) / 8 - a (n - 1)

end

end A303813.P15115214669050697714

namespace A303813

/-- `(34*n²+13*(-1)^n-13)/8-a(n-1)` -/
def P15115214669050697714.Spec : Prop :=
  ∀ n, P15115214669050697714.a n = (A303813 n : ℚ)

end A303813

/-! ## A303813.P13237313588117971566

`∑[A317315(n)]`
-/

namespace A303813.P13237313588117971566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303813.P13237313588117971566

namespace A303813

/-- `∑[A317315(n)]` -/
def P13237313588117971566.Spec : Prop :=
  ∀ n, P13237313588117971566.a n = A303813 n

end A303813

/-! ## A303813.P16699894523604992665

`∑[13*(n-A026741(n))+n]`
-/

namespace A303813.P16699894523604992665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * ((n : ℤ) - A026741 n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303813.P16699894523604992665

namespace A303813

/-- `∑[13*(n-A026741(n))+n]` -/
def P16699894523604992665.Spec : Prop :=
  ∀ n, P16699894523604992665.a n = A303813 n

end A303813

/-! ## A303813.P10767371471086446285

`A218864(n+1)-∑[n-gcd(n, ∑[n])]`
-/

namespace A303813.P10767371471086446285
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218864 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303813.P10767371471086446285

namespace A303813

/-- `A218864(n+1)-∑[n-gcd(n, ∑[n])]` -/
def P10767371471086446285.Spec : Prop :=
  ∀ n, P10767371471086446285.a n = A303813 n

end A303813

/-! ## A303813.P6410378374657172180

`A303305(n)+A110660(n)`
-/

namespace A303813.P6410378374657172180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303305 n + A110660 n

end

end A303813.P6410378374657172180

namespace A303813

/-- `A303305(n)+A110660(n)` -/
def P6410378374657172180.Spec : Prop :=
  ∀ n, P6410378374657172180.a n = A303813 n

end A303813

/-! ## A303813.P5049625849374548810

`A303298(n)-A110660(n)`
-/

namespace A303813.P5049625849374548810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303298 n - A110660 n

end

end A303813.P5049625849374548810

namespace A303813

/-- `A303298(n)-A110660(n)` -/
def P5049625849374548810.Spec : Prop :=
  ∀ n, P5049625849374548810.a n = A303813 n

end A303813

/-! ## A303813.P301862918623836089

`A195032(n)-A271478(n)`
-/

namespace A303813.P301862918623836089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195032 n - A271478 n

end

end A303813.P301862918623836089

namespace A303813

/-- `A195032(n)-A271478(n)` -/
def P301862918623836089.Spec : Prop :=
  ∀ n, P301862918623836089.a n = A303813 n

end A303813

/-! ## A303813.P17348126429496323659

`A273367(n)-A319390(n)`
-/

namespace A303813.P17348126429496323659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273367 n - A319390 n

end

end A303813.P17348126429496323659

namespace A303813

/-- `A273367(n)-A319390(n)` -/
def P17348126429496323659.Spec : Prop :=
  ∀ n, P17348126429496323659.a n = A303813 n

end A303813

/-! ## A303813.P14731964417576488521

`∑[A317316(n)-A142150(n)]`
-/

namespace A303813.P14731964417576488521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317316 n - A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303813.P14731964417576488521

namespace A303813

/-- `∑[A317316(n)-A142150(n)]` -/
def P14731964417576488521.Spec : Prop :=
  ∀ n, P14731964417576488521.a n = A303813 n

end A303813

/-! ## A303813.P11579810257618251219

`A277082(n)+2*A110660(n)`
-/

namespace A303813.P11579810257618251219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277082 n + 2 * A110660 n

end

end A303813.P11579810257618251219

namespace A303813

/-- `A277082(n)+2*A110660(n)` -/
def P11579810257618251219.Spec : Prop :=
  ∀ n, P11579810257618251219.a n = A303813 n

end A303813

/-! ## A303813.P6863979063402303581

`2*A195162(n)-A001318(n)`
-/

namespace A303813.P6863979063402303581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195162 n - A001318 n

end

end A303813.P6863979063402303581

namespace A303813

/-- `2*A195162(n)-A001318(n)` -/
def P6863979063402303581.Spec : Prop :=
  ∀ n, P6863979063402303581.a n = A303813 n

end A303813

/-! ## A303813.P6418675950076364589

`2*A195313(n)-A085787(n)`
-/

namespace A303813.P6418675950076364589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195313 n - A085787 n

end

end A303813.P6418675950076364589

namespace A303813

/-- `2*A195313(n)-A085787(n)` -/
def P6418675950076364589.Spec : Prop :=
  ∀ n, P6418675950076364589.a n = A303813 n

end A303813

/-! ## A303813.P7720792088546579085

`2*A195818(n)-A118277(n)`
-/

namespace A303813.P7720792088546579085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195818 n - A118277 n

end

end A303813.P7720792088546579085

namespace A303813

/-- `2*A195818(n)-A118277(n)` -/
def P7720792088546579085.Spec : Prop :=
  ∀ n, P7720792088546579085.a n = A303813 n

end A303813

/-! ## A303813.P2343197567230494643

`(A303812(n)+A074377(n))/2`
-/

namespace A303813.P2343197567230494643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303812 n + A074377 n : ℚ) / 2

end

end A303813.P2343197567230494643

namespace A303813

/-- `(A303812(n)+A074377(n))/2` -/
def P2343197567230494643.Spec : Prop :=
  ∀ n, P2343197567230494643.a n = (A303813 n : ℚ)

end A303813

/-! ## A303813.P16270484827167289711

`2*A074377(n)-A317301(n)`
-/

namespace A303813.P16270484827167289711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074377 n - A317301 n

end

end A303813.P16270484827167289711

namespace A303813

/-- `2*A074377(n)-A317301(n)` -/
def P16270484827167289711.Spec : Prop :=
  ∀ n, P16270484827167289711.a n = A303813 n

end A303813

/-! ## A303813.P829087313761642412

`A303303(n)-2*A110660(n)`
-/

namespace A303813.P829087313761642412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303303 n - 2 * A110660 n

end

end A303813.P829087313761642412

namespace A303813

/-- `A303303(n)-2*A110660(n)` -/
def P829087313761642412.Spec : Prop :=
  ∀ n, P829087313761642412.a n = A303813 n

end A303813

/-! ## A303813.P10160286701865008403

`(A303815(n)+A118277(n))/2`
-/

namespace A303813.P10160286701865008403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303815 n + A118277 n : ℚ) / 2

end

end A303813.P10160286701865008403

namespace A303813

/-- `(A303815(n)+A118277(n))/2` -/
def P10160286701865008403.Spec : Prop :=
  ∀ n, P10160286701865008403.a n = (A303813 n : ℚ)

end A303813

/-! ## A303813.P9215906193911073505

`2*A277082(n)-A195160(n)`
-/

namespace A303813.P9215906193911073505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277082 n - A195160 n

end

end A303813.P9215906193911073505

namespace A303813

/-- `2*A277082(n)-A195160(n)` -/
def P9215906193911073505.Spec : Prop :=
  ∀ n, P9215906193911073505.a n = A303813 n

end A303813

/-!
# A303814: Generalized 24-gonal (or icositetragonal) numbers: m*(11*m - 10) with m = 0, +1, -1, +2, -2, +3, -3, ...

The programs for A303814, the canonical program `A303814.P14670679794856208899` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303814 has offset 0).

The definition of A303814 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A303814.P16017537592136994350

`(22*n*(n+1)+9*(2*n+1)*(-1)^n-9)/8`
-/

namespace A303814.P16017537592136994350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((22 * (n * (n + 1)) : ℤ) + 9 * ((2 * n + 1 : ℤ) * (-1) ^ n) - 9 : ℚ) / 8

end

end A303814.P16017537592136994350

namespace A303814

/-- `(22*n*(n+1)+9*(2*n+1)*(-1)^n-9)/8` -/
def P16017537592136994350.Spec : Prop :=
  ∀ n, P16017537592136994350.a n = (A303814 n : ℚ)

theorem P16017537592136994350.correct : P16017537592136994350.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A303814, Nat.add_sub_cancel, A303814.P16017537592136994350.a, A303814.P14670679794856208899.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A303814, Nat.add_sub_cancel, A303814.P16017537592136994350.a, A303814.P14670679794856208899.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A303814

/-! ## A303814.P14670679794856208899

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=21, a(3)=24, a(4)=64`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A303814

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P14670679794856208899.Spec : Prop :=
  ∀ n, P14670679794856208899.a n = A303814 n

theorem P14670679794856208899.correct : P14670679794856208899.Spec := by
  intro n
  simp only [A303814]

end A303814

/-! ## A303814.P14184811448654291702

`∑[n*gcd(10, n%2)]`
-/

namespace A303814.P14184811448654291702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 10 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303814.P14184811448654291702

namespace A303814

/-- `∑[n*gcd(10, n%2)]` -/
def P14184811448654291702.Spec : Prop :=
  ∀ n, (P14184811448654291702.a n : ℤ) = A303814 n

end A303814

/-! ## A303814.P8261110735617579625

`∑[n*∑[-a(n-1)]]+∑[n]` with `a(0)=9`
-/

namespace A303814.P8261110735617579625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [9] fun n f2 =>
  -f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A303814.P8261110735617579625

namespace A303814

/-- `∑[n*∑[-a(n-1)]]+∑[n]` -/
def P8261110735617579625.Spec : Prop :=
  ∀ n, P8261110735617579625.a n = A303814 n

end A303814

/-! ## A303814.P11065793143042477418

`a(n-1)+n*10^(1/2+1/(2*(-1)^n))` with `a(0)=0`
-/

namespace A303814.P11065793143042477418
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℝ) * (10 : ℝ) ^ ((1 : ℚ) / 2 + 1 / (2 * (-1) ^ n : ℚ) : ℝ)

end

end A303814.P11065793143042477418

namespace A303814

/-- `a(n-1)+n*10^(1/2+1/(2*(-1)^n))` -/
def P11065793143042477418.Spec : Prop :=
  ∀ n, P11065793143042477418.a n = (A303814 n : ℝ)

end A303814

/-! ## A303814.P11748619343092522547

`∑[A317320(n)]`
-/

namespace A303814.P11748619343092522547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303814.P11748619343092522547

namespace A303814

/-- `∑[A317320(n)]` -/
def P11748619343092522547.Spec : Prop :=
  ∀ n, P11748619343092522547.a n = A303814 n

end A303814

/-! ## A303814.P15701083382243793541

`∑[n*A040029(n)]`
-/

namespace A303814.P15701083382243793541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A040029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303814.P15701083382243793541

namespace A303814

/-- `∑[n*A040029(n)]` -/
def P15701083382243793541.Spec : Prop :=
  ∀ n, P15701083382243793541.a n = A303814 n

end A303814

/-! ## A303814.P10572996493582489945

`A195149(n)-a(n-1)` with `a(0)=0`
-/

namespace A303814.P10572996493582489945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A195149 n - a (n - 1)

end

end A303814.P10572996493582489945

namespace A303814

/-- `A195149(n)-a(n-1)` -/
def P10572996493582489945.Spec : Prop :=
  ∀ n, P10572996493582489945.a n = A303814 n

end A303814

/-! ## A303814.P3950648545919136494

`A303299(n)+A110660(n)`
-/

namespace A303814.P3950648545919136494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303299 n + A110660 n

end

end A303814.P3950648545919136494

namespace A303814

/-- `A303299(n)+A110660(n)` -/
def P3950648545919136494.Spec : Prop :=
  ∀ n, P3950648545919136494.a n = A303814 n

end A303814

/-! ## A303814.P14875655718616571827

`A316724(n)-A110660(n)`
-/

namespace A303814.P14875655718616571827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316724 n - A110660 n

end

end A303814.P14875655718616571827

namespace A303814

/-- `A316724(n)-A110660(n)` -/
def P14875655718616571827.Spec : Prop :=
  ∀ n, P14875655718616571827.a n = A303814 n

end A303814

/-! ## A303814.P1065025077348625380

`A049598(n)-A219389(n+1)`
-/

namespace A303814.P1065025077348625380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049598 n - A219389 (n + 1)

end

end A303814.P1065025077348625380

namespace A303814

/-- `A049598(n)-A219389(n+1)` -/
def P1065025077348625380.Spec : Prop :=
  ∀ n, P1065025077348625380.a n = A303814 n

end A303814

/-! ## A303814.P5816399710944642109

`A273367(n)-(A317300(n)+1)`
-/

namespace A303814.P5816399710944642109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273367 n - (A317300 n + 1)

end

end A303814.P5816399710944642109

namespace A303814

/-- `A273367(n)-(A317300(n)+1)` -/
def P5816399710944642109.Spec : Prop :=
  ∀ n, P5816399710944642109.a n = A303814 n

end A303814

/-! ## A303814.P14296924355961073131

`2*A277082(n)-A000217(n)`
-/

namespace A303814.P14296924355961073131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277082 n - A000217 n

end

end A303814.P14296924355961073131

namespace A303814

/-- `2*A277082(n)-A000217(n)` -/
def P14296924355961073131.Spec : Prop :=
  ∀ n, P14296924355961073131.a n = A303814 n

end A303814

/-! ## A303814.P3153911286181899805

`2*A303305(n)-A074377(n)`
-/

namespace A303814.P3153911286181899805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303305 n - A074377 n

end

end A303814.P3153911286181899805

namespace A303814

/-- `2*A303305(n)-A074377(n)` -/
def P3153911286181899805.Spec : Prop :=
  ∀ n, P3153911286181899805.a n = A303814 n

end A303814

/-! ## A303814.P2372746647676240235

`A303303(n)+A110660(n)/2`
-/

namespace A303814.P2372746647676240235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303303 n : ℚ) + (A110660 n : ℚ) / 2

end

end A303814.P2372746647676240235

namespace A303814

/-- `A303303(n)+A110660(n)/2` -/
def P2372746647676240235.Spec : Prop :=
  ∀ n, P2372746647676240235.a n = (A303814 n : ℚ)

end A303814

/-! ## A303814.P2221415236250856302

`A303812(n)-2*A110660(n)`
-/

namespace A303814.P2221415236250856302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303812 n - 2 * A110660 n

end

end A303814.P2221415236250856302

namespace A303814

/-- `A303812(n)-2*A110660(n)` -/
def P2221415236250856302.Spec : Prop :=
  ∀ n, P2221415236250856302.a n = A303814 n

end A303814

/-! ## A303814.P13524518831381584449

`2*A303304(n)-A316724(n)`
-/

namespace A303814.P13524518831381584449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303304 n - A316724 n

end

end A303814.P13524518831381584449

namespace A303814

/-- `2*A303304(n)-A316724(n)` -/
def P13524518831381584449.Spec : Prop :=
  ∀ n, P13524518831381584449.a n = A303814 n

end A303814

/-! ## A303814.P16696465984269133270

`2*A316724(n)-A303812(n)`
-/

namespace A303814.P16696465984269133270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A316724 n - A303812 n

end

end A303814.P16696465984269133270

namespace A303814

/-- `2*A316724(n)-A303812(n)` -/
def P16696465984269133270.Spec : Prop :=
  ∀ n, P16696465984269133270.a n = A303814 n

end A303814

/-! ## A303814.P1395895212016666264

`2*A316725(n)-A316729(n)`
-/

namespace A303814.P1395895212016666264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A316725 n - A316729 n

end

end A303814.P1395895212016666264

namespace A303814

/-- `2*A316725(n)-A316729(n)` -/
def P1395895212016666264.Spec : Prop :=
  ∀ n, P1395895212016666264.a n = A303814 n

end A303814

/-! ## A303814.P1900036131331980936

`A222964(n+1)-A219390(n+1)`
-/

namespace A303814.P1900036131331980936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222964 (n + 1) - A219390 (n + 1)

end

end A303814.P1900036131331980936

namespace A303814

/-- `A222964(n+1)-A219390(n+1)` -/
def P1900036131331980936.Spec : Prop :=
  ∀ n, P1900036131331980936.a n = A303814 n

end A303814

/-!
# A303815: Generalized 29-gonal (or icosienneagonal) numbers: m*(27*m - 25)/2 with m = 0, +1, -1, +2, -2, +3, -3, ...

The programs for A303815, the canonical program `A303815.P6659371118481832804` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303815 has offset 0).

The definition of A303815 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A303815.P4115829209003536093

`(54*n*(n+1)+23*(2*n+1)*(-1)^n-23)/16`
-/

namespace A303815.P4115829209003536093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((54 * (n * (n + 1)) : ℤ) + 23 * ((2 * n + 1 : ℤ) * (-1) ^ n) - 23 : ℚ) / 16

end

end A303815.P4115829209003536093

namespace A303815

/-- `(54*n*(n+1)+23*(2*n+1)*(-1)^n-23)/16` -/
def P4115829209003536093.Spec : Prop :=
  ∀ n, P4115829209003536093.a n = (A303815 n : ℚ)

theorem P4115829209003536093.correct : P4115829209003536093.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A303815, Nat.add_sub_cancel, A303815.P4115829209003536093.a, A303815.P6659371118481832804.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A303815, Nat.add_sub_cancel, A303815.P4115829209003536093.a, A303815.P6659371118481832804.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A303815

/-! ## A303815.P6659371118481832804

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=26, a(3)=29, a(4)=79`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A303815

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P6659371118481832804.Spec : Prop :=
  ∀ n, P6659371118481832804.a n = A303815 n

theorem P6659371118481832804.correct : P6659371118481832804.Spec := by
  intro n
  simp only [A303815]

end A303815

/-! ## A303815.P13168513643858076740

`∑[A317325(n)]`
-/

namespace A303815.P13168513643858076740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A303815.P13168513643858076740

namespace A303815

/-- `∑[A317325(n)]` -/
def P13168513643858076740.Spec : Prop :=
  ∀ n, P13168513643858076740.a n = A303815 n

end A303815

/-! ## A303815.P9353364265241814536

`A316725(n)+A110660(n)`
-/

namespace A303815.P9353364265241814536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316725 n + A110660 n

end

end A303815.P9353364265241814536

namespace A303815

/-- `A316725(n)+A110660(n)` -/
def P9353364265241814536.Spec : Prop :=
  ∀ n, P9353364265241814536.a n = A303815 n

end A303815

/-! ## A303815.P6540986184516217556

`A303304(n)+2*A110660(n)`
-/

namespace A303815.P6540986184516217556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303304 n + 2 * A110660 n

end

end A303815.P6540986184516217556

namespace A303815

/-- `A303304(n)+2*A110660(n)` -/
def P6540986184516217556.Spec : Prop :=
  ∀ n, P6540986184516217556.a n = A303815 n

end A303815

/-! ## A303815.P5673910081109354723

`2*A303305(n)-A001318(n)`
-/

namespace A303815.P5673910081109354723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303305 n - A001318 n

end

end A303815.P5673910081109354723

namespace A303815

/-- `2*A303305(n)-A001318(n)` -/
def P5673910081109354723.Spec : Prop :=
  ∀ n, P5673910081109354723.a n = A303815 n

end A303815

/-! ## A303815.P11873382212756137794

`A303812(n)+A110660(n)/2`
-/

namespace A303815.P11873382212756137794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303812 n : ℚ) + (A110660 n : ℚ) / 2

end

end A303815.P11873382212756137794

namespace A303815

/-- `A303812(n)+A110660(n)/2` -/
def P11873382212756137794.Spec : Prop :=
  ∀ n, P11873382212756137794.a n = (A303815 n : ℚ)

end A303815

/-! ## A303815.P13129370643075547465

`2*A303813(n)-A118277(n)`
-/

namespace A303815.P13129370643075547465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303813 n - A118277 n

end

end A303815.P13129370643075547465

namespace A303815

/-- `2*A303813(n)-A118277(n)` -/
def P13129370643075547465.Spec : Prop :=
  ∀ n, P13129370643075547465.a n = A303815 n

end A303815

/-! ## A303815.P5779526862687453285

`2*A303299(n)-A277082(n)`
-/

namespace A303815.P5779526862687453285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303299 n - A277082 n

end

end A303815.P5779526862687453285

namespace A303815

/-- `2*A303299(n)-A277082(n)` -/
def P5779526862687453285.Spec : Prop :=
  ∀ n, P5779526862687453285.a n = A303815 n

end A303815

/-! ## A303815.P14726054296173301749

`2*A303303(n)-A303305(n)`
-/

namespace A303815.P14726054296173301749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303303 n - A303305 n

end

end A303815.P14726054296173301749

namespace A303815

/-- `2*A303303(n)-A303305(n)` -/
def P14726054296173301749.Spec : Prop :=
  ∀ n, P14726054296173301749.a n = A303815 n

end A303815

/-! ## A303815.P15969413719714636711

`2*A303304(n)-A303298(n)`
-/

namespace A303815.P15969413719714636711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303304 n - A303298 n

end

end A303815.P15969413719714636711

namespace A303815

/-- `2*A303304(n)-A303298(n)` -/
def P15969413719714636711.Spec : Prop :=
  ∀ n, P15969413719714636711.a n = A303815 n

end A303815

/-! ## A303815.P10045087760579867845

`2*A303814(n)-A303813(n)`
-/

namespace A303815.P10045087760579867845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303814 n - A303813 n

end

end A303815.P10045087760579867845

namespace A303815

/-- `2*A303814(n)-A303813(n)` -/
def P10045087760579867845.Spec : Prop :=
  ∀ n, P10045087760579867845.a n = A303815 n

end A303815

/-! ## A303815.P11593675282238865096

`2*A316724(n)-A303303(n)`
-/

namespace A303815.P11593675282238865096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A316724 n - A303303 n

end

end A303815.P11593675282238865096

namespace A303815

/-- `2*A316724(n)-A303303(n)` -/
def P11593675282238865096.Spec : Prop :=
  ∀ n, P11593675282238865096.a n = A303815 n

end A303815

/-! ## A303815.P7219201030306658503

`2*A316725(n)-A303304(n)`
-/

namespace A303815.P7219201030306658503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A316725 n - A303304 n

end

end A303815.P7219201030306658503

namespace A303815

/-- `2*A316725(n)-A303304(n)` -/
def P7219201030306658503.Spec : Prop :=
  ∀ n, P7219201030306658503.a n = A303815 n

end A303815

/-! ## A303815.P18128256115742588961

`2*A303812(n)-A316725(n)`
-/

namespace A303815.P18128256115742588961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A303812 n - A316725 n

end

end A303815.P18128256115742588961

namespace A303815

/-- `2*A303812(n)-A316725(n)` -/
def P18128256115742588961.Spec : Prop :=
  ∀ n, P18128256115742588961.a n = A303815 n

end A303815

/-! ## A303815.P5397185572721861818

`A316729(n)-A110660(n)/2`
-/

namespace A303815.P5397185572721861818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316729 n : ℚ) - (A110660 n : ℚ) / 2

end

end A303815.P5397185572721861818

namespace A303815

/-- `A316729(n)-A110660(n)/2` -/
def P5397185572721861818.Spec : Prop :=
  ∀ n, P5397185572721861818.a n = (A303815 n : ℚ)

end A303815

/-! ## A303815.P450376103729963601

`2*A218864(n+1)-A195160(n)`
-/

namespace A303815.P450376103729963601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A218864 (n + 1) - A195160 n

end

end A303815.P450376103729963601

namespace A303815

/-- `2*A218864(n+1)-A195160(n)` -/
def P450376103729963601.Spec : Prop :=
  ∀ n, P450376103729963601.a n = A303815 n

end A303815

/-! ## A303815.P7059333288270727344

`A000217(n)+A303812(n)-A001318(n)`
-/

namespace A303815.P7059333288270727344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A303812 n - A001318 n)

end

end A303815.P7059333288270727344

namespace A303815

/-- `A000217(n)+A303812(n)-A001318(n)` -/
def P7059333288270727344.Spec : Prop :=
  ∀ n, P7059333288270727344.a n = A303815 n

end A303815

/-! ## A303815.P7162666964496632304

`A001318(n)+A316729(n)-A000217(n)`
-/

namespace A303815.P7162666964496632304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n + (A316729 n - A000217 n)

end

end A303815.P7162666964496632304

namespace A303815

/-- `A001318(n)+A316729(n)-A000217(n)` -/
def P7162666964496632304.Spec : Prop :=
  ∀ n, P7162666964496632304.a n = A303815 n

end A303815

/-! ## A303815.P15812381152812683930

`A085787(n)+A316725(n)-A001318(n)`
-/

namespace A303815.P15812381152812683930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 n + (A316725 n - A001318 n)

end

end A303815.P15812381152812683930

namespace A303815

/-- `A085787(n)+A316725(n)-A001318(n)` -/
def P15812381152812683930.Spec : Prop :=
  ∀ n, P15812381152812683930.a n = A303815 n

end A303815

/-!
# A303816: Decimal expansion of 2700/17.

The programs for A303816, the canonical program `A303816.P7407239826593710486` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303816 has offset 3).

The definition of A303816 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A303816.P7407239826593710486

`a(n-1)-a(n-8)+a(n-9)` with `a(0)=1, a(1)=5, a(2)=8, a(3)=8, a(4)=2, a(5)=3, a(6)=5, a(7)=2, a(8)=9, a(9)=4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A303816

/-- `a(n-1)-a(n-8)+a(n-9)` -/
def P7407239826593710486.Spec : Prop :=
  ∀ n, P7407239826593710486.a n = A303816 (n + 3)

theorem P7407239826593710486.correct : P7407239826593710486.Spec := by
  intro n
  simp only [A303816, Nat.add_sub_cancel]

end A303816

/-!
# A303817: Decimal expansion of 360/17.

The programs for A303817, the canonical program `A303817.P4846556283405865549` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303817 has offset 2).

The definition of A303817 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A303817.P4846556283405865549

`a(n-1)-a(n-8)+a(n-9)` with `a(0)=2, a(1)=1, a(2)=1, a(3)=7, a(4)=6, a(5)=4, a(6)=7, a(7)=0, a(8)=5, a(9)=8`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A303817

/-- `a(n-1)-a(n-8)+a(n-9)` -/
def P4846556283405865549.Spec : Prop :=
  ∀ n, P4846556283405865549.a n = A303817 (n + 2)

theorem P4846556283405865549.correct : P4846556283405865549.Spec := by
  intro n
  simp only [A303817, Nat.add_sub_cancel]

end A303817

/-!
# A303819: a(n) is the least k > 0 such that A303809(k) = 2^n.

The programs for A303819, there is no canonical definition to state claims against.
-/

/-! ## A303819.P12539911942107391046

`record[A328400(A346102(n))]`
-/

namespace A303819.P12539911942107391046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328400 (A346102 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303819.P12539911942107391046

/-! ## A303819.P14923221827579319037

`filter[A362227(n), A323509(#)]`
-/

namespace A303819.P14923221827579319037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323509 (f1 j).toNat = 1) n)

end

end A303819.P14923221827579319037

/-! ## A303819.P6154222248081815853

`filter[A363250(n), A323509(#)]`
-/

namespace A303819.P6154222248081815853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323509 (f1 j).toNat = 1) n)

end

end A303819.P6154222248081815853

/-! ## A303819.P15550952163774036905

`filter[A362227(n), A355823(#)]`
-/

namespace A303819.P15550952163774036905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A303819.P15550952163774036905

/-!
# A303822: Multiplicative with a(p^k) = 3^a(k).

The programs for A303822, there is no canonical definition to state claims against.
-/

/-! ## A303822.P5698913417199450530

`A347044(lcm(9^∑{e}[n+1, #], ∏{e}[n+1, #]))`
-/

namespace A303822.P5698913417199450530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347044 (Nat.lcm (9 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

end

end A303822.P5698913417199450530

/-! ## A303822.P17497431046438337266

`A000265(24^∑{e}[n+1, #]*∏{e}[n+1, #+1])`
-/

namespace A303822.P17497431046438337266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (24 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)))

end

end A303822.P17497431046438337266

/-! ## A303822.P8599345040142560331

`A171435(24^∑{e}[n+1, #]*∏{e}[n+1, #+1])`
-/

namespace A303822.P8599345040142560331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (24 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)))

end

end A303822.P8599345040142560331

/-! ## A303822.P14970579644180044850

`A327564(∏{e}[n+1, 3*2^#]+22^∑{e}[n+1, #])`
-/

namespace A303822.P14970579644180044850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327564 (∏ p ∈ Nat.primeFactors (f1 n), 3 * 2 ^ Nat.factorization (f1 n) p + 22 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

end

end A303822.P14970579644180044850

/-! ## A303822.P9879781609630910848

`3^A090329(A038036(n+1))`
-/

namespace A303822.P9879781609630910848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A090329 (A038036 (n + 1)).toNat : ℤ)

end

end A303822.P9879781609630910848

/-!
# A303823: a(n) is the least k > 0 such that A303822(k) = 3^n.

The programs for A303823, there is no canonical definition to state claims against.
-/

/-! ## A303823.P16140948116621717846

`A351500(A248918(n+1))`
-/

namespace A303823.P16140948116621717846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351500 (A248918 (n + 1)).toNat

end

end A303823.P16140948116621717846

/-! ## A303823.P684530953883850205

`A291771(A263334(n+2))`
-/

namespace A303823.P684530953883850205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291771 (A263334 (n + 2)).toNat

end

end A303823.P684530953883850205

/-! ## A303823.P4879384338570449130

`filter[A365902(n+1), A168181(#)]`
-/

namespace A303823.P4879384338570449130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A303823.P4879384338570449130

/-! ## A303823.P8552078059400360117

`filter[A365902(n+1), A212793(#)]`
-/

namespace A303823.P8552078059400360117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A303823.P8552078059400360117

/-! ## A303823.P6778004705936774755

`A291771(Δ[A037528(n+1)]+1)`
-/

namespace A303823.P6778004705936774755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291771 (f1 (n + 1) - f1 n + 1).toNat

end

end A303823.P6778004705936774755

/-!
# A303824: Number of ways of writing n as a sum of powers of 6, each power being used at most six times.

The programs for A303824, there is no canonical definition to state claims against.
-/

/-! ## A303824.P11219587076493571259

`A303825(A020657(n+1))`
-/

namespace A303824.P11219587076493571259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303825 (A020657 (n + 1)).toNat

end

end A303824.P11219587076493571259

/-! ## A303824.P1349389355622709150

`A303825(A020658(n+1)-1)`
-/

namespace A303824.P1349389355622709150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303825 (A020658 (n + 1) - 1).toNat

end

end A303824.P1349389355622709150

/-! ## A303824.P15118814633124995733

`A303825(A057428(n)+A020658(n+1))`
-/

namespace A303824.P15118814633124995733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303825 (A057428 n + A020658 (n + 1)).toNat

end

end A303824.P15118814633124995733

/-! ## A303824.P4658154501551725540

`A303825(A020658(6*n+3))`
-/

namespace A303824.P4658154501551725540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303825 (A020658 (6 * n + 3)).toNat

end

end A303824.P4658154501551725540

/-! ## A303824.P515362959547084169

`gcd(A151878(2*n+1), A303825(A037465(n)))`
-/

namespace A303824.P515362959547084169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151878 (2 * n + 1)) (A303825 (A037465 n).toNat)

end

end A303824.P515362959547084169

/-! ## A303824.P612194947407290127

`A303825(A037465(n))+A000007(A052816(n))`
-/

namespace A303824.P612194947407290127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303825 (A037465 n).toNat + A000007 (A052816 n).toNat

end

end A303824.P612194947407290127

/-! ## A303824.P5696721921500928640

`A303825(A037465(n))+A000007(A270622(n+1))`
-/

namespace A303824.P5696721921500928640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303825 (A037465 n).toNat + A000007 (A270622 (n + 1)).toNat

end

end A303824.P5696721921500928640

/-!
# A303825: Number of ways of writing n as a sum of powers of 7, each power being used at most seven times.

The programs for A303825, there is no canonical definition to state claims against.
-/

/-! ## A303825.P1597858781847780594

`A373217(n^a(n-1))` with `a(0)=1`
-/

namespace A303825.P1597858781847780594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A373217 (SequenceMachineLib.roundAway ((n : ℚ) ^ (a (n - 1) : ℤ))).toNat

end

end A303825.P1597858781847780594

/-!
# A303827: Number of ways of writing n as a sum of powers of 4, each power being used at most 5 times.

The programs for A303827, there is no canonical definition to state claims against.
-/

/-! ## A303827.P6375953297444538042

`A303828(A020654(n+1))`
-/

namespace A303827.P6375953297444538042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303828 (A020654 (n + 1)).toNat

end

end A303827.P6375953297444538042

/-! ## A303827.P9012715815193110315

`A303828(A023733(n+1))`
-/

namespace A303827.P9012715815193110315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303828 (A023733 (n + 1)).toNat

end

end A303827.P9012715815193110315

/-! ## A303827.P6452733794459480468

`A345021(A101624(n))`
-/

namespace A303827.P6452733794459480468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345021 (A101624 n).toNat

end

end A303827.P6452733794459480468

/-!
# A303828: Number of ways of writing n as a sum of powers of 5, each power being used at most 6 times.

The programs for A303828, there is no canonical definition to state claims against.
-/

/-! ## A303828.P7568052281180089686

`gcd(6, A171797(A338743(3*n+2)))`
-/

namespace A303828.P7568052281180089686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A171797 (A338743 (3 * n + 2)).toNat)

end

end A303828.P7568052281180089686

/-! ## A303828.P2403486740437352840

`round(root(A078778(n+1), A125256(n+2)))`
-/

namespace A303828.P2403486740437352840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A078778 (n + 1) : ℝ) ^ (1 / (A125256 (n + 2) : ℝ)))

end

end A303828.P2403486740437352840

/-!
# A303829: Birooted graphs: number of unlabeled graphs with n nodes rooted at 2 indistinguishable roots.

The programs for A303829, there is no canonical definition to state claims against.
-/

/-! ## A303829.P15349302249185838704

`2*A126122(n+1)`
-/

namespace A303829.P15349302249185838704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126122 (n + 1)

end

end A303829.P15349302249185838704

/-! ## A303829.P16916050881097938169

`A126122(A000027(n+1))+A126122(n+1)`
-/

namespace A303829.P16916050881097938169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126122 (A000027 (n + 1)).toNat + A126122 (n + 1)

end

end A303829.P16916050881097938169

/-! ## A303829.P1215001764017929210

`A126122(n+1)+A126122(A250246(n+1))`
-/

namespace A303829.P1215001764017929210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126122 (n + 1) + A126122 (A250246 (n + 1)).toNat

end

end A303829.P1215001764017929210

/-! ## A303829.P9047007582433747778

`A126122(n+1)+A126122(A269396(n+1))`
-/

namespace A303829.P9047007582433747778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126122 (n + 1) + A126122 (A269396 (n + 1)).toNat

end

end A303829.P9047007582433747778

/-! ## A303829.P13410883782472370783

`A126122(n+1)+record[A126122(A319357(n+1))]`
-/

namespace A303829.P13410883782472370783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126122 (A319357 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126122 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303829.P13410883782472370783

/-!
# A303830: The number of edge-rooted unlabeled connected graphs with n nodes.

The programs for A303830, there is no canonical definition to state claims against.
-/

/-! ## A303830.P4401934762028335313

`A303831(n+1)-A304071(n+1)`
-/

namespace A303830.P4401934762028335313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303831 (n + 1) - A304071 (n + 1)

end

end A303830.P4401934762028335313

/-! ## A303830.P15481820624935251841

`A304311(A055998(n))-(A304071(n+1)+A000007(n))`
-/

namespace A303830.P15481820624935251841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304311 (A055998 n).toNat - (A304071 (n + 1) + A000007 n)

end

end A303830.P15481820624935251841

/-! ## A303830.P13444468591659223699

`(A304071(n+1)-A304311(A027379(n)))*A057428(n)`
-/

namespace A303830.P13444468591659223699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A304071 (n + 1) - A304311 (A027379 n).toNat) * A057428 n

end

end A303830.P13444468591659223699

/-! ## A303830.P10683948122183868687

`(A304311(A027379(n))-A304071(n+1))*A057427(n)`
-/

namespace A303830.P10683948122183868687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A304311 (A027379 n).toNat - A304071 (n + 1)) * A057427 n

end

end A303830.P10683948122183868687

/-! ## A303830.P10756542627975620505

`(A304311(A055998(n))-A304071(n+1))*A057427(n)`
-/

namespace A303830.P10756542627975620505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A304311 (A055998 n).toNat - A304071 (n + 1)) * A057427 n

end

end A303830.P10756542627975620505

/-!
# A303831: Birooted graphs: number of unlabeled connected graphs with n nodes rooted at 2 indistinguishable roots.

The programs for A303831, there is no canonical definition to state claims against.
-/

/-! ## A303831.P3760845951201691138

`A303830(n+1)+A304071(n+1)`
-/

namespace A303831.P3760845951201691138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303830 (n + 1) + A304071 (n + 1)

end

end A303831.P3760845951201691138

/-! ## A303831.P14059938089169820144

`A304311(A055998(n))-A000007(n)`
-/

namespace A303831.P14059938089169820144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304311 (A055998 n).toNat - A000007 n

end

end A303831.P14059938089169820144

/-! ## A303831.P3119094492245282259

`A057427(n)*A304311(A027379(n))`
-/

namespace A303831.P3119094492245282259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A304311 (A027379 n).toNat

end

end A303831.P3119094492245282259

/-! ## A303831.P11169872907101250740

`A057427(n)*A304311(A055998(n))`
-/

namespace A303831.P11169872907101250740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A304311 (A055998 n).toNat

end

end A303831.P11169872907101250740

/-! ## A303831.P6073870226299660541

`and(A057428(n), A304311(A027379(n)))`
-/

namespace A303831.P6073870226299660541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A304311 (A027379 n).toNat)

end

end A303831.P6073870226299660541

/-!
# A303832: The number of edge-rooted unlabeled connected graphs with n edges.

The programs for A303832, there is no canonical definition to state claims against.
-/

/-! ## A303832.P17996866852959113373

`A276216(A151462(n))`
-/

namespace A303832.P17996866852959113373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276216 (A151462 n).toNat

end

end A303832.P17996866852959113373

/-! ## A303832.P11698540035513124592

`A071681(A087120(n)+3)`
-/

namespace A303832.P11698540035513124592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071681 (A087120 n + 3).toNat

end

end A303832.P11698540035513124592

/-!
# A303833: Birooted trees: number of unlabeled trees with n nodes rooted at 2 indistinguishable roots.

The programs for A303833, there is no canonical definition to state claims against.
-/

/-! ## A303833.P10721280378126593326

`A303840(n+3)-A000081(n+1)`
-/

namespace A303833.P10721280378126593326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303840 (n + 3) - A000081 (n + 1)

end

end A303833.P10721280378126593326

/-! ## A303833.P14725314445674116448

`A027852(n+1)+A304067(n+1)`
-/

namespace A303833.P14725314445674116448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027852 (n + 1) + A304067 (n + 1)

end

end A303833.P14725314445674116448

/-! ## A303833.P4565546220964852977

`A294783(A027379(n))-A000007(n)`
-/

namespace A303833.P4565546220964852977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294783 (A027379 n).toNat - A000007 n

end

end A303833.P4565546220964852977

/-! ## A303833.P9550122942143450887

`A294783(A055998(n))-A000007(n)`
-/

namespace A303833.P9550122942143450887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294783 (A055998 n).toNat - A000007 n

end

end A303833.P9550122942143450887

/-! ## A303833.P11375187698482047637

`A057427(n)*A294783(A027379(n))`
-/

namespace A303833.P11375187698482047637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A294783 (A027379 n).toNat

end

end A303833.P11375187698482047637

/-!
# A303834: Number of total dominating sets in the n-gear graph.

The programs for A303834, the canonical program `A303834.P13005803101596375340` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303834 has offset 1).

The definition of A303834 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303834.P13005803101596375340

`A000032(n+1)*A088859(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A303834

/-- `A000032(n+1)*A088859(n+1)` -/
def P13005803101596375340.Spec : Prop :=
  ∀ n, P13005803101596375340.a n = A303834 (n + 1)

theorem P13005803101596375340.correct : P13005803101596375340.Spec := by
  intro n
  simp only [A303834, Nat.add_sub_cancel]

end A303834

/-! ## A303834.P3548218285912228787

`A000204(n+1)*A088859(n+1)`
-/

namespace A303834.P3548218285912228787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1) * A088859 (n + 1)

end

end A303834.P3548218285912228787

namespace A303834

/-- `A000204(n+1)*A088859(n+1)` -/
def P3548218285912228787.Spec : Prop :=
  ∀ n, P3548218285912228787.a n = A303834 (n + 1)

end A303834

/-! ## A303834.P5110419198753132174

`(A001610(n)+A000051(n+1))*A000032(n+1)`
-/

namespace A303834.P5110419198753132174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001610 n + A000051 (n + 1)) * A000032 (n + 1)

end

end A303834.P5110419198753132174

namespace A303834

/-- `(A001610(n)+A000051(n+1))*A000032(n+1)` -/
def P5110419198753132174.Spec : Prop :=
  ∀ n, P5110419198753132174.a n = A303834 (n + 1)

end A303834

/-! ## A303834.P18329031753209566681

`(A001610(n)+A000051(n+1))*A000204(n+1)`
-/

namespace A303834.P18329031753209566681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001610 n + A000051 (n + 1)) * A000204 (n + 1)

end

end A303834.P18329031753209566681

namespace A303834

/-- `(A001610(n)+A000051(n+1))*A000204(n+1)` -/
def P18329031753209566681.Spec : Prop :=
  ∀ n, P18329031753209566681.a n = A303834 (n + 1)

end A303834

/-! ## A303834.P1521011703573297008

`(A023484(n)-A001690(n+1))*A088859(n+1)`
-/

namespace A303834.P1521011703573297008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023484 n - A001690 (n + 1)) * A088859 (n + 1)

end

end A303834.P1521011703573297008

namespace A303834

/-- `(A023484(n)-A001690(n+1))*A088859(n+1)` -/
def P1521011703573297008.Spec : Prop :=
  ∀ n, P1521011703573297008.a n = A303834 (n + 1)

end A303834

/-! ## A303834.P4563847944239297712

`(A000079(n+1)+A000032(n+1))*A000032(n+1)`
-/

namespace A303834.P4563847944239297712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) + A000032 (n + 1)) * A000032 (n + 1)

end

end A303834.P4563847944239297712

namespace A303834

/-- `(A000079(n+1)+A000032(n+1))*A000032(n+1)` -/
def P4563847944239297712.Spec : Prop :=
  ∀ n, P4563847944239297712.a n = A303834 (n + 1)

end A303834

/-! ## A303834.P17185371029171375945

`(A000204(n+1)+A000079(n+1))*A000204(n+1)`
-/

namespace A303834.P17185371029171375945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000204 (n + 1) + A000079 (n + 1)) * A000204 (n + 1)

end

end A303834.P17185371029171375945

namespace A303834

/-- `(A000204(n+1)+A000079(n+1))*A000204(n+1)` -/
def P17185371029171375945.Spec : Prop :=
  ∀ n, P17185371029171375945.a n = A303834 (n + 1)

end A303834

/-! ## A303834.P8320165081112515653

`A087131(n+1)+A000204(n+1)*A000204(n+1)`
-/

namespace A303834.P8320165081112515653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087131 (n + 1) + A000204 (n + 1) * A000204 (n + 1)

end

end A303834.P8320165081112515653

namespace A303834

/-- `A087131(n+1)+A000204(n+1)*A000204(n+1)` -/
def P8320165081112515653.Spec : Prop :=
  ∀ n, P8320165081112515653.a n = A303834 (n + 1)

end A303834

/-! ## A303834.P12614808374195207507

`(A155559(n+1)+A000032(n+1))*A000032(n+1)`
-/

namespace A303834.P12614808374195207507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A155559 (n + 1) + A000032 (n + 1)) * A000032 (n + 1)

end

end A303834.P12614808374195207507

namespace A303834

/-- `(A155559(n+1)+A000032(n+1))*A000032(n+1)` -/
def P12614808374195207507.Spec : Prop :=
  ∀ n, P12614808374195207507.a n = A303834 (n + 1)

end A303834

/-! ## A303834.P7851564630217950403

`(A135530(2*n)+A000032(n+1))*A000032(n+1)`
-/

namespace A303834.P7851564630217950403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A135530 (2 * n) + A000032 (n + 1)) * A000032 (n + 1)

end

end A303834.P7851564630217950403

namespace A303834

/-- `(A135530(2*n)+A000032(n+1))*A000032(n+1)` -/
def P7851564630217950403.Spec : Prop :=
  ∀ n, P7851564630217950403.a n = A303834 (n + 1)

end A303834

/-! ## A303834.P2859026723172261637

`(A090244(2*n)+A000079(n+1))*A090244(2*n)`
-/

namespace A303834.P2859026723172261637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090244 (2 * n) + A000079 (n + 1)) * A090244 (2 * n)

end

end A303834.P2859026723172261637

namespace A303834

/-- `(A090244(2*n)+A000079(n+1))*A090244(2*n)` -/
def P2859026723172261637.Spec : Prop :=
  ∀ n, P2859026723172261637.a n = A303834 (n + 1)

end A303834

/-! ## A303834.P17430615058852141930

`and(A086224(n+1), A088859(n+1))*A088859(n+1)`
-/

namespace A303834.P17430615058852141930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086224 (n + 1)) (A088859 (n + 1)) * A088859 (n + 1)

end

end A303834.P17430615058852141930

namespace A303834

/-- `and(A086224(n+1), A088859(n+1))*A088859(n+1)` -/
def P17430615058852141930.Spec : Prop :=
  ∀ n, P17430615058852141930.a n = A303834 (n + 1)

end A303834

/-! ## A303834.P16861970203407202742

`(A029744(2*(n+1))+A000032(n+1))*A000032(n+1)`
-/

namespace A303834.P16861970203407202742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A029744 (2 * (n + 1)) + A000032 (n + 1)) * A000032 (n + 1)

end

end A303834.P16861970203407202742

namespace A303834

/-- `(A029744(2*(n+1))+A000032(n+1))*A000032(n+1)` -/
def P16861970203407202742.Spec : Prop :=
  ∀ n, P16861970203407202742.a n = A303834 (n + 1)

end A303834

/-! ## A303834.P5777532220390620327

`(A072946(2*n+1)+A000032(n+1))*A000032(n+1)`
-/

namespace A303834.P5777532220390620327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A072946 (2 * n + 1) + A000032 (n + 1)) * A000032 (n + 1)

end

end A303834.P5777532220390620327

namespace A303834

/-- `(A072946(2*n+1)+A000032(n+1))*A000032(n+1)` -/
def P5777532220390620327.Spec : Prop :=
  ∀ n, P5777532220390620327.a n = A303834 (n + 1)

end A303834

/-! ## A303834.P4535003725728213472

`(A082587(2*n+1)+A000079(n+1))*A082587(2*n+1)`
-/

namespace A303834.P4535003725728213472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A082587 (2 * n + 1) + A000079 (n + 1)) * A082587 (2 * n + 1)

end

end A303834.P4535003725728213472

namespace A303834

/-- `(A082587(2*n+1)+A000079(n+1))*A082587(2*n+1)` -/
def P4535003725728213472.Spec : Prop :=
  ∀ n, P4535003725728213472.a n = A303834 (n + 1)

end A303834

/-! ## A303834.P2955659658485358559

`(A115339(2*(n+1))+A000079(n+1))*A115339(2*(n+1))`
-/

namespace A303834.P2955659658485358559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A115339 (2 * (n + 1)) + A000079 (n + 1)) * A115339 (2 * (n + 1))

end

end A303834.P2955659658485358559

namespace A303834

/-- `(A115339(2*(n+1))+A000079(n+1))*A115339(2*(n+1))` -/
def P2955659658485358559.Spec : Prop :=
  ∀ n, P2955659658485358559.a n = A303834 (n + 1)

end A303834

/-! ## A303834.P6698713478453054503

`(A280699(2*(n+1))+A000079(n+1))*A280699(2*(n+1))`
-/

namespace A303834.P6698713478453054503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A280699 (2 * (n + 1)) + A000079 (n + 1)) * A280699 (2 * (n + 1))

end

end A303834.P6698713478453054503

namespace A303834

/-- `(A280699(2*(n+1))+A000079(n+1))*A280699(2*(n+1))` -/
def P6698713478453054503.Spec : Prop :=
  ∀ n, P6698713478453054503.a n = A303834 (n + 1)

end A303834

/-!
# A303835: Number of noncrossing path sets on n nodes up to rotation and reflection with isolated vertices allowed.

The programs for A303835, there is no canonical definition to state claims against.
-/

/-! ## A303835.P14472225044366585249

`A157271(or(A043310(n+1), A246604(n)))`
-/

namespace A303835.P14472225044366585249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (Int.lor (A043310 (n + 1)) (A246604 n)).toNat

end

end A303835.P14472225044366585249

/-! ## A303835.P10535238311020752857

`A157271(or(A065515(n+1), A246604(n)))`
-/

namespace A303835.P10535238311020752857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (Int.lor (A065515 (n + 1)) (A246604 n)).toNat

end

end A303835.P10535238311020752857

/-! ## A303835.P4606254672947404644

`A007999(n+2)-A185284(A098594(n+1))`
-/

namespace A303835.P4606254672947404644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007999 (n + 2) - A185284 (A098594 (n + 1)).toNat

end

end A303835.P4606254672947404644

/-! ## A303835.P15629212462947070299

`A157271(or(A246604(n), A286716(3*n+4)))`
-/

namespace A303835.P15629212462947070299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (Int.lor (A246604 n) (A286716 (3 * n + 4))).toNat

end

end A303835.P15629212462947070299

/-!
# A303836: Number of noncrossing path sets on n nodes up to rotation with isolated vertices allowed.

The programs for A303836, there is no canonical definition to state claims against.
-/

/-! ## A303836.P16254649918672056423

`A089190(A045629(n))`
-/

namespace A303836.P16254649918672056423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089190 (A045629 n).toNat

end

end A303836.P16254649918672056423

/-! ## A303836.P11675691458324214649

`A137313(A056355(n))`
-/

namespace A303836.P11675691458324214649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137313 (A056355 n).toNat

end

end A303836.P11675691458324214649

/-! ## A303836.P11012202651096823792

`A102830(A096610(n))`
-/

namespace A303836.P11012202651096823792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102830 (A096610 n).toNat

end

end A303836.P11012202651096823792

/-!
# A303837: Number of z-trees with least common multiple n > 1.

The programs for A303837, there is no canonical definition to state claims against.
-/

/-! ## A303837.P17520165805485960898

`A302778(A286520(n+2)+A057427(n))`
-/

namespace A303837.P17520165805485960898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302778 (A286520 (n + 2) + A057427 n).toNat

end

end A303837.P17520165805485960898

/-! ## A303837.P6394528028809341620

`A302778(A286520(n+2)+A178334(n))`
-/

namespace A303837.P6394528028809341620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302778 (A286520 (n + 2) + A178334 n).toNat

end

end A303837.P6394528028809341620

/-! ## A303837.P11759245267987048734

`A003962(A286520(n+2))%A169787(n+1)`
-/

namespace A303837.P11759245267987048734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003962 (A286520 (n + 2)).toNat) (A169787 (n + 1))

end

end A303837.P11759245267987048734

/-! ## A303837.P14444265402457255924

`A079247(A286520(n+2))%A204330(n+1)`
-/

namespace A303837.P14444265402457255924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079247 (A286520 (n + 2)).toNat) (A204330 (n + 1))

end

end A303837.P14444265402457255924

/-! ## A303837.P12896871619183590992

`A003962(A286520(n+2))-A000007(A120126(n))`
-/

namespace A303837.P12896871619183590992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003962 (A286520 (n + 2)).toNat - A000007 (A120126 n).toNat

end

end A303837.P12896871619183590992

/-! ## A303837.P10550124883906477125

`A003962(A286520(n+2))%A004525(A000132(n))`
-/

namespace A303837.P10550124883906477125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003962 (A286520 (n + 2)).toNat) (A004525 (A000132 n).toNat)

end

end A303837.P10550124883906477125

/-! ## A303837.P1420637743421876627

`A079247(A286520(n+2))%A054861(A213443(n))`
-/

namespace A303837.P1420637743421876627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079247 (A286520 (n + 2)).toNat) (A054861 (A213443 n).toNat)

end

end A303837.P1420637743421876627

/-! ## A303837.P17709539077239580947

`A003962(A286520(n+2))-A000007(A231931(n))`
-/

namespace A303837.P17709539077239580947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003962 (A286520 (n + 2)).toNat - A000007 (A231931 n).toNat

end

end A303837.P17709539077239580947

/-!
# A303838: Number of z-forests with least common multiple n > 1.

The programs for A303838, there is no canonical definition to state claims against.
-/

/-! ## A303838.P2813445489463118836

`A324837(n+1)%A267667(n+1)`
-/

namespace A303838.P2813445489463118836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324837 (n + 1)) (A267667 (n + 1))

end

end A303838.P2813445489463118836

/-! ## A303838.P2048687134804687095

`(A189315(n)+1)%2*A324837(n+1)`
-/

namespace A303838.P2048687134804687095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189315 n + 1) 2 * A324837 (n + 1)

end

end A303838.P2048687134804687095

/-! ## A303838.P16273310756653377234

`A281873(A324837(n+2-a(2%n)))` with `a(0)=0`
-/

namespace A303838.P16273310756653377234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A281873 (A324837 ((n + 2 : ℤ) - a (2 % n)).toNat).toNat

end

end A303838.P16273310756653377234

/-! ## A303838.P3377158591814585617

`A324837(n+1)-A000007(A230101(n))`
-/

namespace A303838.P3377158591814585617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324837 (n + 1) - A000007 (A230101 n).toNat

end

end A303838.P3377158591814585617

/-! ## A303838.P1298384388272419960

`A281873(A324837(n+1))-A000007(n)`
-/

namespace A303838.P1298384388272419960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281873 (A324837 (n + 1)).toNat - A000007 n

end

end A303838.P1298384388272419960

/-! ## A303838.P5319095469176551182

`A057427(n)*A281873(A324837(n+1))`
-/

namespace A303838.P5319095469176551182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A281873 (A324837 (n + 1)).toNat

end

end A303838.P5319095469176551182

/-! ## A303838.P13105171418785608976

`A281873(A324837(n+1))%A000118(n)`
-/

namespace A303838.P13105171418785608976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281873 (A324837 (n + 1)).toNat) (A000118 n)

end

end A303838.P13105171418785608976

/-! ## A303838.P11351254500012060120

`A050724(A066620(n+1)+A036453(n+1))`
-/

namespace A303838.P11351254500012060120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050724 (A066620 (n + 1) + A036453 (n + 1)).toNat

end

end A303838.P11351254500012060120

/-! ## A303838.P16142349253169736509

`A281873(A324837(n+1)+A057427(n))-1`
-/

namespace A303838.P16142349253169736509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281873 (A324837 (n + 1) + A057427 n).toNat - 1

end

end A303838.P16142349253169736509

/-! ## A303838.P3065008113081900316

`and(1, A000040(n+1))*A281873(A324837(n+1))`
-/

namespace A303838.P3065008113081900316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A281873 (A324837 (n + 1)).toNat

end

end A303838.P3065008113081900316

/-! ## A303838.P17089876652480184211

`A281873(A324837(n+1))-A001222(ceil(2/(n+1)))`
-/

namespace A303838.P17089876652480184211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281873 (A324837 (n + 1)).toNat - A001222 ⌈2 / (n + 1 : ℚ)⌉.toNat

end

end A303838.P17089876652480184211

/-! ## A303838.P13327116160549373648

`A000045(n²%(n+1))*A281873(A324837(n+1))`
-/

namespace A303838.P13327116160549373648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n ^ 2 % (n + 1)) * A281873 (A324837 (n + 1)).toNat

end

end A303838.P13327116160549373648

/-! ## A303838.P6647736125457277259

`A324837(n+1)+A008683(A084422(A100565(n+1)))`
-/

namespace A303838.P6647736125457277259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324837 (n + 1) + A008683 (A084422 (A100565 (n + 1)).toNat).toNat

end

end A303838.P6647736125457277259

/-! ## A303838.P11183288341549941249

`A008683(2*A000040(n+1))*A281873(A324837(n+1))`
-/

namespace A303838.P11183288341549941249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * A000040 (n + 1)).toNat * A281873 (A324837 (n + 1)).toNat

end

end A303838.P11183288341549941249

/-! ## A303838.P4279672986154896177

`A324837(n+1)-A097331(2*n)`
-/

namespace A303838.P4279672986154896177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324837 (n + 1) - A097331 (2 * n)

end

end A303838.P4279672986154896177

/-! ## A303838.P12886229096461403204

`A324837(n+1)%A000117(n)`
-/

namespace A303838.P12886229096461403204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324837 (n + 1)) (A000117 n)

end

end A303838.P12886229096461403204

/-! ## A303838.P14207633358667434276

`and(1, A078485(n)²)*A324837(n+1)`
-/

namespace A303838.P14207633358667434276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A078485 n ^ 2) * A324837 (n + 1)

end

end A303838.P14207633358667434276

/-! ## A303838.P13896486827440950422

`and(1, A116362(n)²)*A324837(n+1)`
-/

namespace A303838.P13896486827440950422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A116362 n ^ 2) * A324837 (n + 1)

end

end A303838.P13896486827440950422

/-! ## A303838.P1237346745281573387

`and(1, A088041(n+1)²)*A324837(n+1)`
-/

namespace A303838.P1237346745281573387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A088041 (n + 1) ^ 2) * A324837 (n + 1)

end

end A303838.P1237346745281573387

/-! ## A303838.P8820780708674388370

`and(A024036(n), A324837(n+1))`
-/

namespace A303838.P8820780708674388370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A024036 n) (A324837 (n + 1))

end

end A303838.P8820780708674388370

/-!
# A303840: Unlabeled trees with n nodes rooted at 2 indistinguishable roots that are leaves.

The programs for A303840, there is no canonical definition to state claims against.
-/

/-! ## A303840.P17298616420412408373

`round(A109681(3^n-1)/round(1/acot(5*n)))`
-/

namespace A303840.P17298616420412408373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A109681 (3 ^ n - 1) : ℚ) / (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (5 * n : ℝ)) : ℚ))

end

end A303840.P17298616420412408373

/-! ## A303840.P3901090869500996624

`A008651(A080143(n)+13)`
-/

namespace A303840.P3901090869500996624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A080143 n + 13).toNat

end

end A303840.P3901090869500996624

/-! ## A303840.P6991995979315600694

`A054404(A070939(n)+round(ϕ^n/sqrt(5))²)`
-/

namespace A303840.P6991995979315600694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A070939 n + SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) ^ 2).toNat

end

end A303840.P6991995979315600694

/-! ## A303840.P12056110909468463989

`A054404(A054404(n+3)+round(ϕ^n/sqrt(5))²)`
-/

namespace A303840.P12056110909468463989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A054404 (n + 3) + SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) ^ 2).toNat

end

end A303840.P12056110909468463989

/-! ## A303840.P15135159670306500766

`A054404(A018048(n)+A007598(n))`
-/

namespace A303840.P15135159670306500766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A018048 n + A007598 n).toNat

end

end A303840.P15135159670306500766

/-!
# A303841: Triangle read by rows: T(s,n) (s>=1 and 1<=n<=s) = number of weighted trees with n nodes and positive integer node labels with label sum s.

The programs for A303841, there is no canonical definition to state claims against.
-/

/-! ## A303841.P7536305125592574287

`A048266(A390932(n+1))`
-/

namespace A303841.P7536305125592574287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (A390932 (n + 1)).toNat

end

end A303841.P7536305125592574287

/-! ## A303841.P16674473998223585441

`gcd(A362989(n), A390932(n+1))`
-/

namespace A303841.P16674473998223585441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A362989 n) (A390932 (n + 1))

end

end A303841.P16674473998223585441

/-! ## A303841.P6733457072427598636

`filter[A390932(n+1), A242718(#)]`
-/

namespace A303841.P6733457072427598636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A242718 (f1 j).toNat = 1) n)

end

end A303841.P6733457072427598636

/-! ## A303841.P2803672195227507372

`and(A179612(n+1), A390932(n+1))`
-/

namespace A303841.P2803672195227507372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A179612 (n + 1)) (A390932 (n + 1))

end

end A303841.P2803672195227507372

/-! ## A303841.P13244286631792695469

`A390932(n+1)%A002907(n)`
-/

namespace A303841.P13244286631792695469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A390932 (n + 1)) (A002907 n)

end

end A303841.P13244286631792695469

/-!
# A303842: Triangle read by rows: T(s,n) (s>=1 and 2<=n<=s+1) = number of trees with n nodes and positive integer edge labels with label sum s.

The programs for A303842, there is no canonical definition to state claims against.
-/

/-! ## A303842.P5345225898248781960

`A385418(A058843(n+1))`
-/

namespace A303842.P5345225898248781960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385418 (A058843 (n + 1)).toNat

end

end A303842.P5345225898248781960

/-! ## A303842.P12154402063222321949

`A053737(A210805(n+1)!)`
-/

namespace A303842.P12154402063222321949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (Nat.factorial (A210805 (n + 1)).toNat)

end

end A303842.P12154402063222321949

/-! ## A303842.P7710933320072870120

`A055874(A210805(n+1)!)`
-/

namespace A303842.P7710933320072870120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (Nat.factorial (A210805 (n + 1)).toNat)

end

end A303842.P7710933320072870120

/-! ## A303842.P12397522511630718538

`A210805(n+1)+A025447(A089782(n+1))`
-/

namespace A303842.P12397522511630718538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210805 (n + 1) + A025447 (A089782 (n + 1)).toNat

end

end A303842.P12397522511630718538

/-!
# A303843: The number of unlabeled trees with n nodes rooted at 3 indistinguishable roots.

The programs for A303843, there is no canonical definition to state claims against.
-/

/-! ## A303843.P808040459399285648

`A049139(n+1)-A157271(A107594(n))`
-/

namespace A303843.P808040459399285648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049139 (n + 1) - A157271 (A107594 n).toNat

end

end A303843.P808040459399285648

/-! ## A303843.P11833899006990371719

`floor(A332872(n+3)/90)`
-/

namespace A303843.P11833899006990371719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332872 (n + 3) : ℚ) / 90⌋

end

end A303843.P11833899006990371719

/-! ## A303843.P15353645881506091009

`A331904(A116781(n+1))`
-/

namespace A303843.P15353645881506091009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331904 (A116781 (n + 1)).toNat

end

end A303843.P15353645881506091009

/-!
# A303847: Lexicographically earliest sequence of distinct terms such that what emerges from the mask (right-aligned) is prime (see the Comments section for the mask explanation).

The programs for A303847, there is no canonical definition to state claims against.
-/

/-! ## A303847.P18430955480678771708

`A111706(A303848(n+1))`
-/

namespace A303847.P18430955480678771708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111706 (A303848 (n + 1)).toNat

end

end A303847.P18430955480678771708

/-! ## A303847.P2842629053694383166

`A111706(A318486(n+1))`
-/

namespace A303847.P2842629053694383166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111706 (A318486 (n + 1)).toNat

end

end A303847.P2842629053694383166

/-! ## A303847.P7440475499337118522

`a(A346234(A272871(n)))+a(n-2)` with `a(0)=1, a(1)=20`
-/

namespace A303847.P7440475499337118522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 20] fun n a =>
  a (A346234 (A272871 n).toNat).toNat + a (n - 2)

end

end A303847.P7440475499337118522

/-! ## A303847.P7525973150854494634

`a(A346234(A108201(n+1)))+a(n-2)` with `a(0)=1, a(1)=20`
-/

namespace A303847.P7525973150854494634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 20] fun n a =>
  a (A346234 (A108201 (n + 1)).toNat).toNat + a (n - 2)

end

end A303847.P7525973150854494634

/-! ## A303847.P18170134050752719310

`a(n-2)+2-A001221(A000079(n))` with `a(0)=1, a(1)=20`
-/

namespace A303847.P18170134050752719310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 20] fun n a =>
  a (n - 2) + 2 - A001221 (A000079 n).toNat

end

end A303847.P18170134050752719310

/-!
# A303848: Lexicographically earliest sequence of distinct terms such that what emerges from the mask (right-aligned) is a square (see the Comments section for the mask explanation).

The programs for A303848, there is no canonical definition to state claims against.
-/

/-! ## A303848.P14264767542891825470

`A098760(xor(1, n)+1)`
-/

namespace A303848.P14264767542891825470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098760 (Nat.xor 1 n + 1)

end

end A303848.P14264767542891825470

/-! ## A303848.P16898304779504869558

`A098760(n+2)-n%2`
-/

namespace A303848.P16898304779504869558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098760 (n + 2) - ((n % 2 : ℕ) : ℤ)

end

end A303848.P16898304779504869558

/-! ## A303848.P4040221436804410573

`A098760(and(2, gcd(2, n))+n)`
-/

namespace A303848.P4040221436804410573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098760 (Nat.land 2 (Nat.gcd 2 n) + n)

end

end A303848.P4040221436804410573

/-! ## A303848.P4245723867428505877

`A098760((-1)^n+1+n)`
-/

namespace A303848.P4245723867428505877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098760 ((-1) ^ n + 1 + (n : ℤ)).toNat

end

end A303848.P4245723867428505877

/-! ## A303848.P8136816123939651940

`A098760(n+2)-A000035(n)`
-/

namespace A303848.P8136816123939651940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098760 (n + 2) - A000035 n

end

end A303848.P8136816123939651940

/-! ## A303848.P16436038186360390688

`A098760(n+2)-Δ[A004526(n)]`
-/

namespace A303848.P16436038186360390688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098760 (n + 2) - (f1 (n + 1) - f1 n)

end

end A303848.P16436038186360390688

/-! ## A303848.P10925671306510372295

`A098760(n+2)-A059841(n+1)`
-/

namespace A303848.P10925671306510372295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098760 (n + 2) - A059841 (n + 1)

end

end A303848.P10925671306510372295

/-! ## A303848.P15553779583763312704

`A098760(A103889(n+1))%(n+4)²`
-/

namespace A303848.P15553779583763312704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098760 (A103889 (n + 1)).toNat) ((n + 4) ^ 2 : ℤ)

end

end A303848.P15553779583763312704

/-! ## A303848.P2578720897754817302

`A098760(n+2)-char[A000265(n+1)]`
-/

namespace A303848.P2578720897754817302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098760 (n + 2) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A303848.P2578720897754817302

/-! ## A303848.P6492822728757253662

`A098760(n+2)-A014577(2*(n+1))`
-/

namespace A303848.P6492822728757253662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098760 (n + 2) - A014577 (2 * (n + 1))

end

end A303848.P6492822728757253662

/-!
# A303851: Number of pairs (lambda,mu) of partitions lambda of n and mu of floor(n/2) with mu <= lambda (by diagram containment).

The programs for A303851, there is no canonical definition to state claims against.
-/

/-! ## A303851.P244735752090625972

`A259478(char[n^14]+∑[and(n, -2)])`
-/

namespace A303851.P244735752090625972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j).toNat

end

end A303851.P244735752090625972

/-! ## A303851.P9376963507170383052

`A259478(A004277(floor((n/2)²)))`
-/

namespace A303851.P9376963507170383052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A004277 ⌊((n : ℚ) / 2) ^ 2⌋.toNat).toNat

end

end A303851.P9376963507170383052

/-! ## A303851.P4456343210302600709

`A259478(A004273(A002620(n))+1)`
-/

namespace A303851.P4456343210302600709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A004273 (A002620 n).toNat + 1).toNat

end

end A303851.P4456343210302600709

/-! ## A303851.P8014345927792336786

`A259478(A092533(n²))`
-/

namespace A303851.P8014345927792336786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A092533 (n ^ 2)).toNat

end

end A303851.P8014345927792336786

/-! ## A303851.P15947932078794642283

`A259478(A000267(A002620(n)²))`
-/

namespace A303851.P15947932078794642283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A000267 (A002620 n ^ 2).toNat).toNat

end

end A303851.P15947932078794642283

/-!
# A303852: Number of pairs (lambda,mu) of partitions lambda of n and mu of ceiling(n/2) with mu <= lambda (by diagram containment).

The programs for A303852, there is no canonical definition to state claims against.
-/

/-! ## A303852.P5587954978723942824

`A259478(A080476(n+1)-n)`
-/

namespace A303852.P5587954978723942824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A080476 (n + 1) - (n : ℤ)).toNat

end

end A303852.P5587954978723942824

/-! ## A303852.P10233565597450924557

`A259478(A028310(A000982(n)))`
-/

namespace A303852.P10233565597450924557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A028310 (A000982 n).toNat).toNat

end

end A303852.P10233565597450924557

/-! ## A303852.P2336677008266376783

`A259478(A000982(A000007(n)+n))`
-/

namespace A303852.P2336677008266376783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A000982 (A000007 n + (n : ℤ)).toNat).toNat

end

end A303852.P2336677008266376783

/-! ## A303852.P15915176452969627109

`A259478(or(A000007(n), A000982(n)))`
-/

namespace A303852.P15915176452969627109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (Int.lor (A000007 n) (A000982 n)).toNat

end

end A303852.P15915176452969627109

/-! ## A303852.P7071037454796043672

`A259478(xor(A000007(n), A000982(n)))`
-/

namespace A303852.P7071037454796043672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (Int.xor (A000007 n) (A000982 n)).toNat

end

end A303852.P7071037454796043672

/-! ## A303852.P14431636860590919758

`A259478(A179865(n+1)-A004526(n))`
-/

namespace A303852.P14431636860590919758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A179865 (n + 1) - A004526 n).toNat

end

end A303852.P14431636860590919758

/-! ## A303852.P3076988624796897405

`A259478(A000982(n^A178334(n)))`
-/

namespace A303852.P3076988624796897405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A000982 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat).toNat

end

end A303852.P3076988624796897405

/-! ## A303852.P6238292045136474366

`A259478(A028310(A004525(n²)))`
-/

namespace A303852.P6238292045136474366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A028310 (A004525 (n ^ 2)).toNat).toNat

end

end A303852.P6238292045136474366

/-! ## A303852.P709569417085501774

`A259478(A110654(A028310(n²)))`
-/

namespace A303852.P709569417085501774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A110654 (A028310 (n ^ 2)).toNat).toNat

end

end A303852.P709569417085501774

/-!
# A303853: Number of pairs (lambda,mu) of partitions lambda of n and mu of three with mu <= lambda (by diagram containment).

The programs for A303853, there is no canonical definition to state claims against.
-/

/-! ## A303853.P3492184056142885213

`A299473(n+3)-Δ[A007590(n+6)]`
-/

namespace A303853.P3492184056142885213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299473 (n + 3) - (f1 (n + 1) - f1 n)

end

end A303853.P3492184056142885213

/-! ## A303853.P15047796955347427133

`A299473(n+3)-A005843(A008619(n+5))`
-/

namespace A303853.P15047796955347427133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299473 (n + 3) - A005843 (A008619 (n + 5)).toNat

end

end A303853.P15047796955347427133

/-! ## A303853.P8543770399154517974

`A299473(n+3)-A005843(A004526(n+7))`
-/

namespace A303853.P8543770399154517974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299473 (n + 3) - A005843 (A004526 (n + 7)).toNat

end

end A303853.P8543770399154517974

/-! ## A303853.P17026173288344367735

`A299473(n+3)-A004524(A005843(n+7))`
-/

namespace A303853.P17026173288344367735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299473 (n + 3) - A004524 (A005843 (n + 7)).toNat

end

end A303853.P17026173288344367735

/-! ## A303853.P15331797961547353420

`A299473(n+3)-A008619(n+3)-A008619(n+7)`
-/

namespace A303853.P15331797961547353420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299473 (n + 3) - A008619 (n + 3) - A008619 (n + 7)

end

end A303853.P15331797961547353420

/-! ## A303853.P6481114948423695145

`A259478(∑[n+2]+4)`
-/

namespace A303853.P6481114948423695145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A303853.P6481114948423695145

/-!
# A303854: Number of pairs (lambda,mu) of partitions lambda of n and mu of four with mu <= lambda (by diagram containment).

The programs for A303854, there is no canonical definition to state claims against.
-/

/-! ## A303854.P3463188541402977073

`A259478(A145018(n+4))`
-/

namespace A303854.P3463188541402977073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A145018 (n + 4)).toNat

end

end A303854.P3463188541402977073

/-! ## A303854.P14028549262887811916

`A259478(A052905(n)+9)`
-/

namespace A303854.P14028549262887811916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A052905 n + 9).toNat

end

end A303854.P14028549262887811916

/-! ## A303854.P5810144176572857310

`A259478(A055999(n)+10)`
-/

namespace A303854.P5810144176572857310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A055999 n + 10).toNat

end

end A303854.P5810144176572857310

/-! ## A303854.P7952623353968960242

`A259478(A167614(n+2)+1)`
-/

namespace A303854.P7952623353968960242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A167614 (n + 2) + 1).toNat

end

end A303854.P7952623353968960242

/-! ## A303854.P14478262801740482942

`A259478(A166136(n+2)-2)`
-/

namespace A303854.P14478262801740482942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A166136 (n + 2) - 2).toNat

end

end A303854.P14478262801740482942

/-! ## A303854.P16521861991393805153

`A259478(A167487(n+2)-3)`
-/

namespace A303854.P16521861991393805153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A167487 (n + 2) - 3).toNat

end

end A303854.P16521861991393805153

/-! ## A303854.P10243115497448291388

`A259478(A166136(n+1)+1+n)`
-/

namespace A303854.P10243115497448291388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A303854.P10243115497448291388

/-! ## A303854.P589757606867377186

`A259478(A000217(n+5)-5-2*n)`
-/

namespace A303854.P589757606867377186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A000217 (n + 5) - 5 - (2 * n : ℤ)).toNat

end

end A303854.P589757606867377186

/-!
# A303855: Number of pairs (lambda,mu) of partitions lambda of n and mu of five with mu <= lambda (by diagram containment).

The programs for A303855, there is no canonical definition to state claims against.
-/

/-! ## A303855.P17980603038992434484

`A259478(A167499(n+3))`
-/

namespace A303855.P17980603038992434484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A167499 (n + 3)).toNat

end

end A303855.P17980603038992434484

/-! ## A303855.P16057387779555781599

`A259478(A000217(n+4)+5)`
-/

namespace A303855.P16057387779555781599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A000217 (n + 4) + 5).toNat

end

end A303855.P16057387779555781599

/-! ## A303855.P5236533370790823232

`A259478(A046691(n+2)+9)`
-/

namespace A303855.P5236533370790823232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A046691 (n + 2) + 9).toNat

end

end A303855.P5236533370790823232

/-! ## A303855.P11105847884294541688

`A259478(A055999(n+1)+11)`
-/

namespace A303855.P11105847884294541688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A055999 (n + 1) + 11).toNat

end

end A303855.P11105847884294541688

/-! ## A303855.P4258045623280609455

`A259478(A000096(n+4)-(n-1))`
-/

namespace A303855.P4258045623280609455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A000096 (n + 4) - ((n : ℤ) - 1)).toNat

end

end A303855.P4258045623280609455

/-! ## A303855.P4178232404898265697

`A259478(A173036(n)+A016825(n))`
-/

namespace A303855.P4178232404898265697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A173036 n + A016825 n).toNat

end

end A303855.P4178232404898265697

/-!
# A303856: Number of pairs (lambda,mu) of partitions lambda of n and mu of six with mu <= lambda (by diagram containment).

The programs for A303856, there is no canonical definition to state claims against.
-/

/-! ## A303856.P3845732796233096499

`A259478(∑[n+5]+16)`
-/

namespace A303856.P3845732796233096499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A303856.P3845732796233096499

/-! ## A303856.P10151930865102348991

`or(char[3], A259478(A016028(n+8)+3))`
-/

namespace A303856.P10151930865102348991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A259478 (A016028 (n + 8) + 3).toNat)

end

end A303856.P10151930865102348991

/-! ## A303856.P8738340619980101577

`lcm((-1)^n, A259478(A166136(n+4)))`
-/

namespace A303856.P8738340619980101577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A259478 (A166136 (n + 4)).toNat)

end

end A303856.P8738340619980101577

/-! ## A303856.P5517202872187342593

`lcm(A020985(n), A259478(A000217(n+5)+6))`
-/

namespace A303856.P5517202872187342593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A259478 (A000217 (n + 5) + 6).toNat)

end

end A303856.P5517202872187342593

/-! ## A303856.P136748890349276683

`or(A000007(n), A259478(A000217(n+5)+6))`
-/

namespace A303856.P136748890349276683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A259478 (A000217 (n + 5) + 6).toNat)

end

end A303856.P136748890349276683

/-! ## A303856.P11206741564889844085

`abs(A008836(n+1)*A259478(A166136(n+4)))`
-/

namespace A303856.P11206741564889844085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008836 (n + 1) * A259478 (A166136 (n + 4)).toNat|

end

end A303856.P11206741564889844085

/-! ## A303856.P13140690945335900320

`A259478(A000217(n+5)+6)+A000007(n+1)`
-/

namespace A303856.P13140690945335900320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A000217 (n + 5) + 6).toNat + A000007 (n + 1)

end

end A303856.P13140690945335900320

/-! ## A303856.P1333555718970524274

`A259478(A000217(n+5)+6)%A023551(n+1)²`
-/

namespace A303856.P1333555718970524274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259478 (A000217 (n + 5) + 6).toNat) (A023551 (n + 1) ^ 2)

end

end A303856.P1333555718970524274

/-! ## A303856.P8800852340271414290

`char[A163575(n+1)]*A259478(A016028(n+8)+3)`
-/

namespace A303856.P8800852340271414290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163575 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A259478 (A016028 (n + 8) + 3).toNat

end

end A303856.P8800852340271414290

/-! ## A303856.P14621684926359994006

`A000035(2*n+1)*A259478(A016028(n+8)+3)`
-/

namespace A303856.P14621684926359994006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) * A259478 (A016028 (n + 8) + 3).toNat

end

end A303856.P14621684926359994006

/-! ## A303856.P9224605696208281088

`A001221(A007918(n))*A259478(A166136(n+4))`
-/

namespace A303856.P9224605696208281088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A007918 n).toNat * A259478 (A166136 (n + 4)).toNat

end

end A303856.P9224605696208281088

/-! ## A303856.P14927797017499253432

`A070887(A000124(n))*A259478(A166136(n+4))`
-/

namespace A303856.P14927797017499253432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070887 (A000124 n).toNat * A259478 (A166136 (n + 4)).toNat

end

end A303856.P14927797017499253432

/-! ## A303856.P1298531102941810381

`A293513(A136548(n+1))+A259478(A166136(n+4))`
-/

namespace A303856.P1298531102941810381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293513 (A136548 (n + 1)).toNat + A259478 (A166136 (n + 4)).toNat

end

end A303856.P1298531102941810381

/-! ## A303856.P10690863936130764026

`A001221(A230775(n+1))*A259478(A166136(n+4))`
-/

namespace A303856.P10690863936130764026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A230775 (n + 1)).toNat * A259478 (A166136 (n + 4)).toNat

end

end A303856.P10690863936130764026

/-! ## A303856.P15995277219776611772

`A014963(A044266(n+1))*A259478(A016028(n+8)+3)`
-/

namespace A303856.P15995277219776611772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A044266 (n + 1)).toNat * A259478 (A016028 (n + 8) + 3).toNat

end

end A303856.P15995277219776611772

/-! ## A303856.P17292960590270818221

`A078898(A172480(n+1))*A259478(A016028(n+8)+3)`
-/

namespace A303856.P17292960590270818221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A172480 (n + 1)).toNat * A259478 (A016028 (n + 8) + 3).toNat

end

end A303856.P17292960590270818221

/-! ## A303856.P15761294654908796313

`A078898(A342705(n+1))*A259478(A016028(n+8)+3)`
-/

namespace A303856.P15761294654908796313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A342705 (n + 1)).toNat * A259478 (A016028 (n + 8) + 3).toNat

end

end A303856.P15761294654908796313

/-!
# A303857: Number of pairs (lambda,mu) of partitions lambda of n and mu of seven with mu <= lambda (by diagram containment).

The programs for A303857, there is no canonical definition to state claims against.
-/

/-! ## A303857.P16970141171281470645

`A259478(A167487(n+5))`
-/

namespace A303857.P16970141171281470645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A167487 (n + 5)).toNat

end

end A303857.P16970141171281470645

/-! ## A303857.P3055597025271856142

`A259478(A167614(n+5)+4)`
-/

namespace A303857.P3055597025271856142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A167614 (n + 5) + 4).toNat

end

end A303857.P3055597025271856142

/-! ## A303857.P6859811391813474667

`A259478(A000096(n+5)+8)`
-/

namespace A303857.P6859811391813474667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A000096 (n + 5) + 8).toNat

end

end A303857.P6859811391813474667

/-! ## A303857.P7487049061505396662

`A259478(A000217(n+6)+7)`
-/

namespace A303857.P7487049061505396662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A000217 (n + 6) + 7).toNat

end

end A303857.P7487049061505396662

/-! ## A303857.P10776421192519446403

`A259478(A052905(n+3)+12)`
-/

namespace A303857.P10776421192519446403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A052905 (n + 3) + 12).toNat

end

end A303857.P10776421192519446403

/-!
# A303858: Number of pairs (lambda,mu) of partitions lambda of n and mu of eight with mu <= lambda (by diagram containment).

The programs for A303858, there is no canonical definition to state claims against.
-/

/-! ## A303858.P1187749084181079735

`A259478(A167614(n+6)+5)`
-/

namespace A303858.P1187749084181079735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A167614 (n + 6) + 5).toNat

end

end A303858.P1187749084181079735

/-! ## A303858.P711093944959670710

`A259478(A000217(n+7)+8)`
-/

namespace A303858.P711093944959670710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A000217 (n + 7) + 8).toNat

end

end A303858.P711093944959670710

/-! ## A303858.P15110093003538463674

`A259478(eq[9, A131818(n+1)])`
-/

namespace A303858.P15110093003538463674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303858.P15110093003538463674

/-! ## A303858.P3340759836266628837

`A259478(A000124(n+8)-(n+1))`
-/

namespace A303858.P3340759836266628837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A000124 (n + 8) - (n + 1 : ℤ)).toNat

end

end A303858.P3340759836266628837

/-! ## A303858.P8959483020556438370

`A259478(A167487(n+5)+A020722(n))`
-/

namespace A303858.P8959483020556438370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A167487 (n + 5) + A020722 n).toNat

end

end A303858.P8959483020556438370

/-!
# A303859: Number of pairs (lambda,mu) of partitions lambda of n and mu of nine with mu <= lambda (by diagram containment).

The programs for A303859, there is no canonical definition to state claims against.
-/

/-! ## A303859.P7604926618481776285

`A259478(A000217(n+8)+9)`
-/

namespace A303859.P7604926618481776285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A000217 (n + 8) + 9).toNat

end

end A303859.P7604926618481776285

/-! ## A303859.P10434915620151106106

`A259478(eq[10, A131818(n+1)])`
-/

namespace A303859.P10434915620151106106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303859.P10434915620151106106

/-! ## A303859.P1041586047510597894

`A259478(Δ[A026060(n+5)]+10-2*n)`
-/

namespace A303859.P1041586047510597894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026060 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (f1 (n + 1) - f1 n + 10 - (2 * n : ℤ)).toNat

end

end A303859.P1041586047510597894

/-!
# A303860: Number of pairs (lambda,mu) of partitions lambda of n and mu of 10 with mu <= lambda (by diagram containment).

The programs for A303860, there is no canonical definition to state claims against.
-/

/-! ## A303860.P15509408328117961878

`A259478(A167499(n+8)+5)`
-/

namespace A303860.P15509408328117961878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A167499 (n + 8) + 5).toNat

end

end A303860.P15509408328117961878

/-! ## A303860.P68803144171335739

`A259478(eq[11, A131818(n+1)])`
-/

namespace A303860.P68803144171335739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303860.P68803144171335739

/-! ## A303860.P10241067916965951824

`A259478(eq[9, A144328(n+1)]+1)`
-/

namespace A303860.P10241067916965951824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A303860.P10241067916965951824

/-! ## A303860.P15306590123429686269

`A259478(eq[10, A002260(n+1)]+1)`
-/

namespace A303860.P15306590123429686269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A303860.P15306590123429686269

/-! ## A303860.P1996921804325954104

`A259478(A000124(n+10)-(n+1))`
-/

namespace A303860.P1996921804325954104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A000124 (n + 10) - (n + 1 : ℤ)).toNat

end

end A303860.P1996921804325954104

/-!
# A303861: Number of pairs (lambda,mu) of partitions lambda of 2n and mu of n with mu <= lambda (by diagram containment).

The programs for A303861, there is no canonical definition to state claims against.
-/

/-! ## A303861.P3650025359966310478

`A303851(2*n)`
-/

namespace A303861.P3650025359966310478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303851 (2 * n)

end

end A303861.P3650025359966310478

/-! ## A303861.P16004170003337650305

`A303852(2*n)`
-/

namespace A303861.P16004170003337650305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303852 (2 * n)

end

end A303861.P16004170003337650305

/-! ## A303861.P9281696271374589875

`record[A303852(n%12+n)]`
-/

namespace A303861.P9281696271374589875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303852 (n % 12 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303861.P9281696271374589875

/-! ## A303861.P4661168353182104698

`xor(1, xor(1, A303851(n+n)))`
-/

namespace A303861.P4661168353182104698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A303851 (n + n)))

end

end A303861.P4661168353182104698

/-! ## A303861.P11937549575254211151

`record[A303851(A275365(n))]`
-/

namespace A303861.P11937549575254211151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303851 (A275365 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303861.P11937549575254211151

/-! ## A303861.P1183224299179740771

`record[A303851(A026741(n)+1)]`
-/

namespace A303861.P1183224299179740771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303851 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303861.P1183224299179740771

/-! ## A303861.P14655365481424218490

`record[A303851(A022998(n)-n)]`
-/

namespace A303861.P14655365481424218490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303851 (A022998 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303861.P14655365481424218490

/-! ## A303861.P1886150573842856143

`record[A303852(n)/A000034(n)]`
-/

namespace A303861.P1886150573842856143
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303852 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303861.P1886150573842856143

/-! ## A303861.P10218556419137529560

`record[gcd(A079977(n+1), A303852(n))]`
-/

namespace A303861.P10218556419137529560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079977 (n + 1)) (A303852 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303861.P10218556419137529560

/-! ## A303861.P11280842209195223498

`record[A303851(A003963(A008486(n)))]`
-/

namespace A303861.P11280842209195223498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303851 (A003963 (A008486 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303861.P11280842209195223498

/-! ## A303861.P2130219052821418697

`record[A303851(A004526(A022998(n)))]`
-/

namespace A303861.P2130219052821418697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303851 (A004526 (A022998 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303861.P2130219052821418697

/-! ## A303861.P5767730446353377215

`record[A303852(A036044(A036044(n)))]`
-/

namespace A303861.P5767730446353377215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303852 (A036044 (A036044 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303861.P5767730446353377215

/-! ## A303861.P6522520388060002555

`record[A303852(A117910(A103517(n)))]`
-/

namespace A303861.P6522520388060002555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303852 (A117910 (A103517 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303861.P6522520388060002555

/-!
# A303862: Number of pairs (lambda,mu) of partitions lambda of 2n+1 and mu of n with mu <= lambda (by diagram containment).

The programs for A303862, there is no canonical definition to state claims against.
-/

/-! ## A303862.P2069388583938970166

`A303851(2*n+1)`
-/

namespace A303862.P2069388583938970166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303851 (2 * n + 1)

end

end A303862.P2069388583938970166

/-! ## A303862.P8842229202447614944

`record[A303851((-1)^n+n)]`
-/

namespace A303862.P8842229202447614944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303851 ((-1) ^ n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303862.P8842229202447614944

/-! ## A303862.P205068022365748283

`record[A303851(A026741(n))²/A303851(n)]`
-/

namespace A303862.P205068022365748283
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303851 (A026741 n).toNat ^ 2 : ℚ) / (A303851 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303862.P205068022365748283

/-! ## A303862.P17565449070367066617

`A259478(A004277(n²+n))`
-/

namespace A303862.P17565449070367066617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A004277 (n ^ 2 + n)).toNat

end

end A303862.P17565449070367066617

/-! ## A303862.P6193625948031466526

`A259478(A080476(2*n+1))`
-/

namespace A303862.P6193625948031466526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 (A080476 (2 * n + 1)).toNat

end

end A303862.P6193625948031466526

/-! ## A303862.P17025638368214096292

`A259478((n+1)*A004277(n))`
-/

namespace A303862.P17025638368214096292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 ((n + 1 : ℤ) * A004277 n).toNat

end

end A303862.P17025638368214096292

/-!
# A303863: Number of pairs (lambda,mu) of partitions lambda of 2n+1 and mu of n+1 with mu <= lambda (by diagram containment).

The programs for A303863, there is no canonical definition to state claims against.
-/

/-! ## A303863.P12272514252135157188

`A303852(2*n+1)`
-/

namespace A303863.P12272514252135157188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303852 (2 * n + 1)

end

end A303863.P12272514252135157188

/-! ## A303863.P3956737812857748091

`record[A303852((-1)^n+n)]`
-/

namespace A303863.P3956737812857748091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303852 ((-1) ^ n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303863.P3956737812857748091

/-! ## A303863.P9219162877783736316

`record[gcd(A079977(n), A303852(n))]`
-/

namespace A303863.P9219162877783736316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079977 n) (A303852 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303863.P9219162877783736316

/-! ## A303863.P6636446503585033188

`record[A303852(n+1)/A000034(n)]`
-/

namespace A303863.P6636446503585033188
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303852 (n + 1) : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303863.P6636446503585033188

/-! ## A303863.P2910316077142845515

`A259478((n+1)²+n²)`
-/

namespace A303863.P2910316077142845515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259478 ((n + 1) ^ 2 + n ^ 2)

end

end A303863.P2910316077142845515

/-!
# A303865: Number of noncrossing path sets on 3*n nodes up to rotation with each path having exactly 3 nodes.

The programs for A303865, there is no canonical definition to state claims against.
-/

/-! ## A303865.P5097892350921240356

`A303864(∑[n+3])`
-/

namespace A303865.P5097892350921240356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303864 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303865.P5097892350921240356

/-! ## A303865.P14604331334803403955

`or(A000007(n), A303864(A141214(n)))`
-/

namespace A303865.P14604331334803403955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A303864 (A141214 n).toNat)

end

end A303865.P14604331334803403955

/-! ## A303865.P8540450905354842602

`A303864(A141214(n))+A000007(A000124(n))`
-/

namespace A303865.P8540450905354842602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303864 (A141214 n).toNat + A000007 (A000124 n).toNat

end

end A303865.P8540450905354842602

/-! ## A303865.P5138233366650785356

`A303864(A141214(n))+A000007(A001844(n))`
-/

namespace A303865.P5138233366650785356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303864 (A141214 n).toNat + A000007 (A001844 n).toNat

end

end A303865.P5138233366650785356

/-! ## A303865.P6016232352952290977

`A303864(A141214(n))+A000007(A208341(n))`
-/

namespace A303865.P6016232352952290977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303864 (A141214 n).toNat + A000007 (A208341 n).toNat

end

end A303865.P6016232352952290977

/-!
# A303866: Number of noncrossing path sets on 4*n nodes up to rotation with each path having exactly 4 nodes.

The programs for A303866, there is no canonical definition to state claims against.
-/

/-! ## A303866.P1532135518879501910

`A303864(∑[n+3]+n+3)`
-/

namespace A303866.P1532135518879501910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303864 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A303866.P1532135518879501910

/-! ## A303866.P13030673012653970821

`record[root(A303864(n), A303869(n+4))]`
-/

namespace A303866.P13030673012653970821
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A303864 n : ℝ) ^ (1 / (A303869 (n + 4) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303866.P13030673012653970821

/-! ## A303866.P1970439739127034471

`record[gcd(A303864(n+1), A303913(n+4))]`
-/

namespace A303866.P1970439739127034471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303864 (n + 1)) (A303913 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303866.P1970439739127034471

/-! ## A303866.P10863547510740587647

`record[A303864(A167614(n+1)%A114091(n+1))]`
-/

namespace A303866.P10863547510740587647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303864 (Int.tmod (A167614 (n + 1)) (A114091 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303866.P10863547510740587647

/-!
# A303867: Number of noncrossing path sets on 4*n nodes up to rotation and reflection with each path having exactly 4 nodes.

The programs for A303867, there is no canonical definition to state claims against.
-/

/-! ## A303867.P14804303270813651806

`A302828(∑[abs(1-n)+5])`
-/

namespace A303867.P14804303270813651806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302828 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A303867.P14804303270813651806

/-! ## A303867.P2231746454172525731

`record[gcd(A211357(n+2), A302828(n))]`
-/

namespace A303867.P2231746454172525731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A211357 (n + 2)) (A302828 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303867.P2231746454172525731

/-! ## A303867.P4206893138763036072

`record[A302828(A167614(n+1)%A114091(n+1))]`
-/

namespace A303867.P4206893138763036072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302828 (Int.tmod (A167614 (n + 1)) (A114091 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303867.P4206893138763036072

/-!
# A303870: Number of noncrossing partitions up to rotation and reflection composed of n blocks of size 4.

The programs for A303870, there is no canonical definition to state claims against.
-/

/-! ## A303870.P3511018215618591537

`A303929(C(n+5, 2)-4)`
-/

namespace A303870.P3511018215618591537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303929 (Nat.choose (n + 5) 2 - 4)

end

end A303870.P3511018215618591537

/-! ## A303870.P17258997375498420404

`A303929(∑[n+3]+n+3)`
-/

namespace A303870.P17258997375498420404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303929 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A303870.P17258997375498420404

/-! ## A303870.P13063196600730336674

`A008679(∑[2^n+(n-1)*a(n-1)])` with `a(0)=3, a(1)=1`
-/

namespace A303870.P13063196600730336674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  (2 ^ n : ℤ) + ((n : ℤ) - 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A303870.P13063196600730336674

/-!
# A303871: Number of noncrossing partitions up to rotation and reflection composed of n blocks of size 5.

The programs for A303871, there is no canonical definition to state claims against.
-/

/-! ## A303871.P15771464080969760340

`A303929(A052905(n+2))`
-/

namespace A303871.P15771464080969760340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303929 (A052905 (n + 2)).toNat

end

end A303871.P15771464080969760340

/-! ## A303871.P13949868767880064467

`A303929(eq[4, A025581(n)])`
-/

namespace A303871.P13949868767880064467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303929 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303871.P13949868767880064467

/-! ## A303871.P15815540234047119345

`A303929(A000096(n+4)-4)`
-/

namespace A303871.P15815540234047119345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303929 (A000096 (n + 4) - 4).toNat

end

end A303871.P15815540234047119345

/-! ## A303871.P2211914505656441244

`A303929(A000217(n+5)-5)`
-/

namespace A303871.P2211914505656441244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303929 (A000217 (n + 5) - 5).toNat

end

end A303871.P2211914505656441244

/-! ## A303871.P5372997651526260649

`A303929(eq[5, A004736(n+1)])`
-/

namespace A303871.P5372997651526260649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303929 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303871.P5372997651526260649

/-!
# A303872: Triangle read by rows: T(0,0) = 1; T(n,k) = -T(n-1,k) + 2 T(n-1,k-1) for k = 0,1,...,n; T(n,k)=0 for n or k < 0.

The programs for A303872, the canonical program `A303872.P15192294474027379389` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303872 has offset 0).

The definition of A303872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303872.P15192294474027379389

`A013609(n)*A097807(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A303872

/-- `A013609(n)*A097807(n)` -/
def P15192294474027379389.Spec : Prop :=
  ∀ n, P15192294474027379389.a n = A303872 n

theorem P15192294474027379389.correct : P15192294474027379389.Spec := by
  intro n
  simp only [A303872]

end A303872

/-! ## A303872.P9205930166245524755

`A059268(n)*A130595(n)`
-/

namespace A303872.P9205930166245524755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A130595 n

end

end A303872.P9205930166245524755

namespace A303872

/-- `A059268(n)*A130595(n)` -/
def P9205930166245524755.Spec : Prop :=
  ∀ n, P9205930166245524755.a n = A303872 n

end A303872

/-! ## A303872.P13851462374552162512

`2^A002262(n)*A130595(n)`
-/

namespace A303872.P13851462374552162512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A130595 n : ℚ)

end

end A303872.P13851462374552162512

namespace A303872

/-- `2^A002262(n)*A130595(n)` -/
def P13851462374552162512.Spec : Prop :=
  ∀ n, P13851462374552162512.a n = (A303872 n : ℚ)

end A303872

/-! ## A303872.P6931612371697815022

`A000079(A002262(n))*A130595(n)`
-/

namespace A303872.P6931612371697815022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A130595 n

end

end A303872.P6931612371697815022

namespace A303872

/-- `A000079(A002262(n))*A130595(n)` -/
def P6931612371697815022.Spec : Prop :=
  ∀ n, P6931612371697815022.a n = A303872 n

end A303872

/-! ## A303872.P16144663443484778645

`A065109(∑[char[∑[n]]]²-(n+1))`
-/

namespace A303872.P16144663443484778645
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065109 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A303872.P16144663443484778645

namespace A303872

/-- `A065109(∑[char[∑[n]]]²-(n+1))` -/
def P16144663443484778645.Spec : Prop :=
  ∀ n, P16144663443484778645.a n = A303872 n

end A303872

/-! ## A303872.P16077990901452097171

`or(char[1], A065109(A061579(n)))`
-/

namespace A303872.P16077990901452097171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A065109 (A061579 n).toNat)

end

end A303872.P16077990901452097171

namespace A303872

/-- `or(char[1], A065109(A061579(n)))` -/
def P16077990901452097171.Spec : Prop :=
  ∀ n, P16077990901452097171.a n = A303872 n

end A303872

/-! ## A303872.P16294828215216648593

`A133214(n)/A130595(n)`
-/

namespace A303872.P16294828215216648593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133214 n : ℚ) / (A130595 n : ℚ)

end

end A303872.P16294828215216648593

namespace A303872

/-- `A133214(n)/A130595(n)` -/
def P16294828215216648593.Spec : Prop :=
  ∀ n, P16294828215216648593.a n = (A303872 n : ℚ)

end A303872

/-! ## A303872.P3205316081224949644

`A000010(2^A002260(n+1))*A130595(n)`
-/

namespace A303872.P3205316081224949644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A002260 (n + 1) : ℤ))).toNat * A130595 n

end

end A303872.P3205316081224949644

namespace A303872

/-- `A000010(2^A002260(n+1))*A130595(n)` -/
def P3205316081224949644.Spec : Prop :=
  ∀ n, P3205316081224949644.a n = A303872 n

end A303872

/-! ## A303872.P7202835792253984485

`A007318(n)*A055975(A135764(n+1))`
-/

namespace A303872.P7202835792253984485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A055975 (A135764 (n + 1)).toNat

end

end A303872.P7202835792253984485

namespace A303872

/-- `A007318(n)*A055975(A135764(n+1))` -/
def P7202835792253984485.Spec : Prop :=
  ∀ n, P7202835792253984485.a n = A303872 n

end A303872

/-!
# A303873: Total area of the family of squares with side length n such that n = p + q, p divides q and p < q.

The programs for A303873, the canonical program `A303873.P11708283508415631705` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303873 has offset 1).

The definition of A303873 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303873.P6913237496814583012

`(n+1)²*∑{d}[n+1, 2%#/2]`
-/

namespace A303873.P6913237496814583012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) * (∑ d ∈ Nat.divisors (f1 n), ((2 % d : ℕ) : ℚ) / 2)

end

end A303873.P6913237496814583012

namespace A303873

/-- `(n+1)²*∑{d}[n+1, 2%#/2]` -/
def P6913237496814583012.Spec : Prop :=
  ∀ n, P6913237496814583012.a n = (A303873 (n + 1) : ℚ)

end A303873

/-! ## A303873.P11708283508415631705

`(n+1)²*∑{d}[n+1, 1-round(1/#)]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A303873

/-- `(n+1)²*∑{d}[n+1, 1-round(1/#)]` -/
def P11708283508415631705.Spec : Prop :=
  ∀ n, P11708283508415631705.a n = A303873 (n + 1)

theorem P11708283508415631705.correct : P11708283508415631705.Spec := by
  intro n
  simp only [A303873, Nat.add_sub_cancel]

end A303873

/-! ## A303873.P6402417870925463815

`(n+1)*A296966(n+1)`
-/

namespace A303873.P6402417870925463815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A296966 (n + 1)

end

end A303873.P6402417870925463815

namespace A303873

/-- `(n+1)*A296966(n+1)` -/
def P6402417870925463815.Spec : Prop :=
  ∀ n, P6402417870925463815.a n = A303873 (n + 1)

end A303873

/-! ## A303873.P3070107216513506057

`A303972(n+1)/(n+1)`
-/

namespace A303873.P3070107216513506057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303972 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A303873.P3070107216513506057

namespace A303873

/-- `A303972(n+1)/(n+1)` -/
def P3070107216513506057.Spec : Prop :=
  ∀ n, P3070107216513506057.a n = (A303873 (n + 1) : ℚ)

end A303873

/-! ## A303873.P18320592430121147193

`(n+1)²*A023645(n+1)`
-/

namespace A303873.P18320592430121147193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A023645 (n + 1)

end

end A303873.P18320592430121147193

namespace A303873

/-- `(n+1)²*A023645(n+1)` -/
def P18320592430121147193.Spec : Prop :=
  ∀ n, P18320592430121147193.a n = A303873 (n + 1)

end A303873

/-! ## A303873.P13333647674634649453

`A023645(n+1)*A347535(n+1)`
-/

namespace A303873.P13333647674634649453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 1) * A347535 (n + 1)

end

end A303873.P13333647674634649453

namespace A303873

/-- `A023645(n+1)*A347535(n+1)` -/
def P13333647674634649453.Spec : Prop :=
  ∀ n, P13333647674634649453.a n = A303873 (n + 1)

end A303873

/-! ## A303873.P9106417022046290368

`∑{d}[n+1, (n+1)²%((n+1)^#)]`
-/

namespace A303873.P9106417022046290368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1) ^ 2 % (n + 1) ^ d

end

end A303873.P9106417022046290368

namespace A303873

/-- `∑{d}[n+1, (n+1)²%((n+1)^#)]` -/
def P9106417022046290368.Spec : Prop :=
  ∀ n, (P9106417022046290368.a n : ℤ) = A303873 (n + 1)

end A303873

/-!
# A303874: Number of noncrossing partitions of an n-set up to rotation with all blocks having a prime number of elements.

The programs for A303874, there is no canonical definition to state claims against.
-/

/-! ## A303874.P5071334866972118262

`A273190(∑[∑[A262322(n)]])`
-/

namespace A303874.P5071334866972118262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262322 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A303874.P5071334866972118262

/-! ## A303874.P10688342807222616456

`A000700(xor(A001935(n+1), A151841(n)))`
-/

namespace A303874.P10688342807222616456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (Int.xor (A001935 (n + 1)) (A151841 n)).toNat

end

end A303874.P10688342807222616456

/-! ## A303874.P16003995429070439848

`A000700(A151840(n+2)+A001935(n+1))`
-/

namespace A303874.P16003995429070439848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A151840 (n + 2) + A001935 (n + 1)).toNat

end

end A303874.P16003995429070439848

/-! ## A303874.P7476366760077793351

`A000700(A001935(n+1)%A228417(n+2))`
-/

namespace A303874.P7476366760077793351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (Int.tmod (A001935 (n + 1)) (A228417 (n + 2))).toNat

end

end A303874.P7476366760077793351

/-! ## A303874.P8317471055698072186

`A000700(A001935(A198194(A000009(2*n+1))))`
-/

namespace A303874.P8317471055698072186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A001935 (A198194 (A000009 (2 * n + 1)).toNat).toNat).toNat

end

end A303874.P8317471055698072186

/-!
# A303877: Expansion of 1 in base Pi, 1 = Sum_{n>=0} a(n)/Pi^(n+1).

The programs for A303877, there is no canonical definition to state claims against.
-/

/-! ## A303877.P17610935312151368016

`A221166(A065609(n+1)+A022796(n+5))`
-/

namespace A303877.P17610935312151368016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221166 (A065609 (n + 1) + A022796 (n + 5)).toNat

end

end A303877.P17610935312151368016

/-!
# A303879: Lexicographically earliest sequence of distinct terms such that a(n) shares at least one odd digit with a(n+1).

The programs for A303879, there is no canonical definition to state claims against.
-/

/-! ## A303879.P15402518982030910336

`A342367(A239664(A030287(A030287(n+1))))`
-/

namespace A303879.P15402518982030910336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342367 (A239664 (A030287 (A030287 (n + 1)).toNat).toNat).toNat

end

end A303879.P15402518982030910336

/-!
# A303881: Number of n X n 0..1 arrays with every element unequal to 0, 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303881, there is no canonical definition to state claims against.
-/

/-! ## A303881.P649083701279160115

`A303888(∑[4*n]+1)`
-/

namespace A303881.P649083701279160115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303888 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303881.P649083701279160115

/-! ## A303881.P16719191577695590944

`record[A303888(∑[A266981(n)])]`
-/

namespace A303881.P16719191577695590944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303888 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303881.P16719191577695590944

/-! ## A303881.P18398678842065578916

`record[A303888(A272267(n+1))]`
-/

namespace A303881.P18398678842065578916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303888 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303881.P18398678842065578916

/-! ## A303881.P14088808673055623541

`record[A303888(A330613(n+1))]`
-/

namespace A303881.P14088808673055623541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303888 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303881.P14088808673055623541

/-! ## A303881.P6525257522945787211

`A303888(A001844(n))+char[23]`
-/

namespace A303881.P6525257522945787211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303888 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303881.P6525257522945787211

/-!
# A303882: Number of n X 2 0..1 arrays with every element unequal to 0, 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303882, there is no canonical definition to state claims against.
-/

/-! ## A303882.P3012796704437107099

`record[ratio[A303888(n+1)]]`
-/

namespace A303882.P3012796704437107099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303888 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303882.P3012796704437107099

/-! ## A303882.P5631699617364351839

`A303888(∑[n+1]+2)`
-/

namespace A303882.P5631699617364351839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303888 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A303882.P5631699617364351839

/-! ## A303882.P4732131572924080497

`record[A303888(A091995(n+1))]`
-/

namespace A303882.P4732131572924080497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303888 (A091995 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303882.P4732131572924080497

/-! ## A303882.P5172308209765387905

`record[A303888(A256998(n+1))]`
-/

namespace A303882.P5172308209765387905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303888 (A256998 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303882.P5172308209765387905

/-! ## A303882.P1084759177431532545

`record[A303888(A278512(n+1))]`
-/

namespace A303882.P1084759177431532545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303888 (A278512 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303882.P1084759177431532545

/-!
# A303883: Number of nX3 0..1 arrays with every element unequal to 0, 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303883, there is no canonical definition to state claims against.
-/

/-! ## A303883.P17701014196785506074

`A303888(∑[n+2]+4)`
-/

namespace A303883.P17701014196785506074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303888 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A303883.P17701014196785506074

/-! ## A303883.P10351460252547955299

`and(-1, A303888(A167614(n+1)))`
-/

namespace A303883.P10351460252547955299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A303888 (A167614 (n + 1)).toNat)

end

end A303883.P10351460252547955299

/-! ## A303883.P16113153177178813130

`or(char[2], A303888(A046691(n)+7))`
-/

namespace A303883.P16113153177178813130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A303888 (A046691 n + 7).toNat)

end

end A303883.P16113153177178813130

/-! ## A303883.P146576569963780498

`record[gcd(A303888(n+1), A303913(n))]`
-/

namespace A303883.P146576569963780498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303888 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303883.P146576569963780498

/-! ## A303883.P17988830837651255848

`record[gcd(A287822(n), A303888(n+3))]`
-/

namespace A303883.P17988830837651255848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A287822 n) (A303888 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303883.P17988830837651255848

/-!
# A303884: Number of nX4 0..1 arrays with every element unequal to 0, 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303884, there is no canonical definition to state claims against.
-/

/-! ## A303884.P13623444563032238819

`A303888(∑[n+3]+7)`
-/

namespace A303884.P13623444563032238819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303888 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A303884.P13623444563032238819

/-! ## A303884.P3272299338418750706

`A303888(A141214(n)+7)+char[28]`
-/

namespace A303884.P3272299338418750706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303888 (A141214 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303884.P3272299338418750706

/-! ## A303884.P5111248500351377262

`record[gcd(A303888(n+2), A303913(n))]`
-/

namespace A303884.P5111248500351377262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303888 (n + 2)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303884.P5111248500351377262

/-! ## A303884.P17878499044476274452

`gcd(A000038(n), A303888(A055999(n)+10))`
-/

namespace A303884.P17878499044476274452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A303888 (A055999 n + 10).toNat)

end

end A303884.P17878499044476274452

/-! ## A303884.P11621375208836800355

`A303888(A141214(n)+7)%A000108(n+4)`
-/

namespace A303884.P11621375208836800355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303888 (A141214 n + 7).toNat) (A000108 (n + 4))

end

end A303884.P11621375208836800355

/-!
# A303885: Number of nX5 0..1 arrays with every element unequal to 0, 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303885, there is no canonical definition to state claims against.
-/

/-! ## A303885.P12073822852980263620

`A303888(∑[n+4]+11)`
-/

namespace A303885.P12073822852980263620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303888 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A303885.P12073822852980263620

/-! ## A303885.P6991543067414018132

`A303888(A167499(n+3))+char[19]`
-/

namespace A303885.P6991543067414018132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303888 (A167499 (n + 3)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303885.P6991543067414018132

/-! ## A303885.P2652821498848093647

`A303888(A155212(n)+13)+char[23]`
-/

namespace A303885.P2652821498848093647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303888 (A155212 n + 13).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303885.P2652821498848093647

/-! ## A303885.P6346414512220481075

`A000034(2*n)*A303888(A167499(n+3))`
-/

namespace A303885.P6346414512220481075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A303888 (A167499 (n + 3)).toNat

end

end A303885.P6346414512220481075

/-! ## A303885.P16996543975765474340

`A007318(C(2, n))*A303888(A167499(n+3))`
-/

namespace A303885.P16996543975765474340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A303888 (A167499 (n + 3)).toNat

end

end A303885.P16996543975765474340

/-!
# A303886: Number of nX6 0..1 arrays with every element unequal to 0, 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303886, there is no canonical definition to state claims against.
-/

/-! ## A303886.P9490200039610523174

`A303888(∑[n+5]+16)`
-/

namespace A303886.P9490200039610523174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303888 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A303886.P9490200039610523174

/-! ## A303886.P9294988372402415518

`A303888(A000124(n+5)+5)+char[19]`
-/

namespace A303886.P9294988372402415518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303888 (A000124 (n + 5) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303886.P9294988372402415518

/-! ## A303886.P5517141823732509656

`A303888(A000217(n+5)+6)+char[18]`
-/

namespace A303886.P5517141823732509656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303888 (A000217 (n + 5) + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303886.P5517141823732509656

/-! ## A303886.P17137823265906563888

`A303888(A166136(n+4))%A115977(2*(n+1))`
-/

namespace A303886.P17137823265906563888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303888 (A166136 (n + 4)).toNat) (A115977 (2 * (n + 1)))

end

end A303886.P17137823265906563888

/-! ## A303886.P13270490511478561728

`A007318(C(2, n))*A303888(A000217(n+5)+6)`
-/

namespace A303886.P13270490511478561728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A303888 (A000217 (n + 5) + 6).toNat

end

end A303886.P13270490511478561728

/-!
# A303887: Number of nX7 0..1 arrays with every element unequal to 0, 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303887, there is no canonical definition to state claims against.
-/

/-! ## A303887.P8092772673741727282

`A303888(A374008(n+1))`
-/

namespace A303887.P8092772673741727282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303888 (A374008 (n + 1)).toNat

end

end A303887.P8092772673741727282

/-! ## A303887.P928953604894690722

`A303888(A056119(n)+28)`
-/

namespace A303887.P928953604894690722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303888 (A056119 n + 28).toNat

end

end A303887.P928953604894690722

/-! ## A303887.P16106299104142926637

`A303888(eq[11, A066657(n)])`
-/

namespace A303887.P16106299104142926637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303888 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303887.P16106299104142926637

/-! ## A303887.P4240107028716219827

`A303888(A166136(n+5)+1)`
-/

namespace A303887.P4240107028716219827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303888 (A166136 (n + 5) + 1).toNat

end

end A303887.P4240107028716219827

/-! ## A303887.P4110014530648543644

`A303888(A167499(n+5)+2)`
-/

namespace A303887.P4110014530648543644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303888 (A167499 (n + 5) + 2).toNat

end

end A303887.P4110014530648543644

/-!
# A303888: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303888, there is no canonical definition to state claims against.
-/

/-! ## A303888.P6902162457588639836

`A305281(∑[A010894(n)!])`
-/

namespace A303888.P6902162457588639836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010894 (n + 21)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305281 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A303888.P6902162457588639836

/-! ## A303888.P2889223476783487447

`A305281(A010894(n)!+n)`
-/

namespace A303888.P2889223476783487447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305281 (Nat.factorial (A010894 (n + 21)).toNat + n)

end

end A303888.P2889223476783487447

/-! ## A303888.P11435221623332779891

`A305281(A023933(n)+1+n)`
-/

namespace A303888.P11435221623332779891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305281 (A023933 n + 1 + (n : ℤ)).toNat

end

end A303888.P11435221623332779891

/-! ## A303888.P4076720800501758566

`A305281(n+1)%A305312(n+1)`
-/

namespace A303888.P4076720800501758566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305281 (n + 1)) (A305312 (n + 1))

end

end A303888.P4076720800501758566

/-!
# A303889: Number of n X n 0..1 arrays with every element unequal to 1, 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303889, there is no canonical definition to state claims against.
-/

/-! ## A303889.P4997787377310595776

`A303896(∑[4*n]+1)`
-/

namespace A303889.P4997787377310595776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303896 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A303889.P4997787377310595776

/-! ## A303889.P2847717465478927562

`record[A303896(Δ[A235355(n)])]`
-/

namespace A303889.P2847717465478927562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303896 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303889.P2847717465478927562

/-! ## A303889.P3040420702470813086

`and(-1, A303896(A001844(n)))`
-/

namespace A303889.P3040420702470813086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A303896 (A001844 n).toNat)

end

end A303889.P3040420702470813086

/-! ## A303889.P13894898859319618417

`record[A303896(A330613(n+1))]`
-/

namespace A303889.P13894898859319618417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303896 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303889.P13894898859319618417

/-! ## A303889.P17205780719182049129

`record[A003982(n)*A303896(n+1)]`
-/

namespace A303889.P17205780719182049129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A303896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303889.P17205780719182049129

/-!
# A303890: Number of nX2 0..1 arrays with every element unequal to 1, 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303890, the canonical program `A303890.P1395429127591676970` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A303890 has offset 1).

The definition of A303890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 178 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A303890.P1395429127591676970

`3*a(n-1)+a(n-2)+4*a(n-3)+4*a(n-4)` with `a(0)=1, a(1)=7, a(2)=23, a(3)=86`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A303890

/-- `3*a(n-1)+a(n-2)+4*a(n-3)+4*a(n-4)` -/
def P1395429127591676970.Spec : Prop :=
  ∀ n, (P1395429127591676970.a n : ℤ) = A303890 (n + 1)

theorem P1395429127591676970.correct : P1395429127591676970.Spec := by
  intro n
  simp only [A303890, Nat.add_sub_cancel]

end A303890

/-! ## A303890.P16580282287980537062

`A303896(∑[n+1]+2)`
-/

namespace A303890.P16580282287980537062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303896 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A303890.P16580282287980537062

namespace A303890

/-- `A303896(∑[n+1]+2)` -/
def P16580282287980537062.Spec : Prop :=
  ∀ n, P16580282287980537062.a n = A303890 (n + 1)

end A303890

/-! ## A303890.P17965407277622939373

`A305288(∑[n+1]+2)`
-/

namespace A303890.P17965407277622939373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305288 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A303890.P17965407277622939373

namespace A303890

/-- `A305288(∑[n+1]+2)` -/
def P17965407277622939373.Spec : Prop :=
  ∀ n, P17965407277622939373.a n = A303890 (n + 1)

end A303890

/-! ## A303890.P13799602024541604246

`record[A303896(A278512(n+2))]`
-/

namespace A303890.P13799602024541604246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303896 (A278512 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303890.P13799602024541604246

namespace A303890

/-- `record[A303896(A278512(n+2))]` -/
def P13799602024541604246.Spec : Prop :=
  ∀ n, P13799602024541604246.a n = A303890 (n + 1)

end A303890

/-! ## A303890.P12390160801250464168

`record[A010054(n)*A303896(n+2)]`
-/

namespace A303890.P12390160801250464168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A303896 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303890.P12390160801250464168

namespace A303890

/-- `record[A010054(n)*A303896(n+2)]` -/
def P12390160801250464168.Spec : Prop :=
  ∀ n, P12390160801250464168.a n = A303890 (n + 1)

end A303890

/-!
# A303891: Number of nX3 0..1 arrays with every element unequal to 1, 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303891, there is no canonical definition to state claims against.
-/

/-! ## A303891.P18370330990964895731

`A303896(∑[n+2]+4)`
-/

namespace A303891.P18370330990964895731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303896 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A303891.P18370330990964895731

/-! ## A303891.P16659239946273842516

`A303896(A167614(n+1))+char[19]`
-/

namespace A303891.P16659239946273842516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303896 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303891.P16659239946273842516

/-! ## A303891.P11828282304824362855

`A303896(A055998(n)+6)+char[22]`
-/

namespace A303891.P11828282304824362855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303896 (A055998 n + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303891.P11828282304824362855

/-! ## A303891.P6679837023409901206

`record[gcd(A303896(n+1), A303913(n))]`
-/

namespace A303891.P6679837023409901206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303896 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303891.P6679837023409901206

/-! ## A303891.P4503412209566750657

`record[A010054(n+1)*A303896(n+4)]`
-/

namespace A303891.P4503412209566750657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A303896 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A303891.P4503412209566750657

/-!
# A303892: Number of nX4 0..1 arrays with every element unequal to 1, 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303892, there is no canonical definition to state claims against.
-/

/-! ## A303892.P18227015358306705191

`A303896(∑[n+3]+7)`
-/

namespace A303892.P18227015358306705191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303896 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A303892.P18227015358306705191

/-! ## A303892.P15564032500240017694

`A303896(A167614(n+2)+1)+char[21]`
-/

namespace A303892.P15564032500240017694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303896 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303892.P15564032500240017694

/-! ## A303892.P1055242447053087660

`A303896(A000217(n+3)+4)+char[27]`
-/

namespace A303892.P1055242447053087660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303896 (A000217 (n + 3) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A303892.P1055242447053087660

/-! ## A303892.P7088157799812011601

`lcm(A087960(n), A303896(A167614(n+2)+1))`
-/

namespace A303892.P7088157799812011601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A303896 (A167614 (n + 2) + 1).toNat)

end

end A303892.P7088157799812011601

/-! ## A303892.P7725635051962588503

`A007318(C(2, n))*A303896(A000217(n+3)+4)`
-/

namespace A303892.P7725635051962588503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A303896 (A000217 (n + 3) + 4).toNat

end

end A303892.P7725635051962588503

/-!
# A303893: Number of nX5 0..1 arrays with every element unequal to 1, 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303893, there is no canonical definition to state claims against.
-/

/-! ## A303893.P11532202644729649118

`A303896(A374005(n+1))`
-/

namespace A303893.P11532202644729649118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303896 (A374005 (n + 1)).toNat

end

end A303893.P11532202644729649118

/-! ## A303893.P16721638719491039614

`A303896(A167499(n+3))`
-/

namespace A303893.P16721638719491039614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303896 (A167499 (n + 3)).toNat

end

end A303893.P16721638719491039614

/-! ## A303893.P14295485643570917209

`A303896(A155212(n)+13)`
-/

namespace A303893.P14295485643570917209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303896 (A155212 n + 13).toNat

end

end A303893.P14295485643570917209

/-! ## A303893.P11100063345625872109

`A303896(A056000(n)+15)`
-/

namespace A303893.P11100063345625872109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303896 (A056000 n + 15).toNat

end

end A303893.P11100063345625872109

/-! ## A303893.P12645937677883725413

`A303896(eq[7, A066657(n)])`
-/

namespace A303893.P12645937677883725413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303896 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303893.P12645937677883725413

/-!
# A303894: Number of n X 6 0..1 arrays with every element unequal to 1, 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303894, there is no canonical definition to state claims against.
-/

/-! ## A303894.P9896316328659654821

`A303896(A374007(n+1))`
-/

namespace A303894.P9896316328659654821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303896 (A374007 (n + 1)).toNat

end

end A303894.P9896316328659654821

/-! ## A303894.P12424343855039208560

`A303896(A166136(n+4))`
-/

namespace A303894.P12424343855039208560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303896 (A166136 (n + 4)).toNat

end

end A303894.P12424343855039208560

/-! ## A303894.P15708281894661943776

`A303896(Δ[A264443(n)]+10)`
-/

namespace A303894.P15708281894661943776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303896 (f1 (n + 1) - f1 n + 10).toNat

end

end A303894.P15708281894661943776

/-! ## A303894.P17192408698594847810

`A303896(A167499(n+4)+1)`
-/

namespace A303894.P17192408698594847810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303896 (A167499 (n + 4) + 1).toNat

end

end A303894.P17192408698594847810

/-! ## A303894.P15747237355424215208

`A303896(A112355(n+3)+6)`
-/

namespace A303894.P15747237355424215208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303896 (A112355 (n + 3) + 6).toNat

end

end A303894.P15747237355424215208

/-!
# A303895: Number of nX7 0..1 arrays with every element unequal to 1, 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303895, there is no canonical definition to state claims against.
-/

/-! ## A303895.P2402146316032594554

`A303896(A374008(n+1))`
-/

namespace A303895.P2402146316032594554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303896 (A374008 (n + 1)).toNat

end

end A303895.P2402146316032594554

/-! ## A303895.P12511506250196455829

`A303896(A056119(n)+28)`
-/

namespace A303895.P12511506250196455829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303896 (A056119 n + 28).toNat

end

end A303895.P12511506250196455829

/-! ## A303895.P14090671059208646156

`A303896(eq[11, A066657(n)])`
-/

namespace A303895.P14090671059208646156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303896 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A303895.P14090671059208646156

/-! ## A303895.P7170859730901265887

`A303896(A167614(n+5)+4)`
-/

namespace A303895.P7170859730901265887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303896 (A167614 (n + 5) + 4).toNat

end

end A303895.P7170859730901265887

/-! ## A303895.P6069635588123750604

`A303896(A112355(n+4)+7)`
-/

namespace A303895.P6069635588123750604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303896 (A112355 (n + 4) + 7).toNat

end

end A303895.P6069635588123750604

/-!
# A303896: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 3 or 4 king-move adjacent elements, with upper left element zero.

The programs for A303896, there is no canonical definition to state claims against.
-/

/-! ## A303896.P11226153572925065032

`A305288(n+1)+A016389(A022166(n))`
-/

namespace A303896.P11226153572925065032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305288 (n + 1) + A016389 (A022166 n).toNat

end

end A303896.P11226153572925065032

/-! ## A303896.P16062896373741808826

`A305288(n+1)+A016389(A027336(n))`
-/

namespace A303896.P16062896373741808826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305288 (n + 1) + A016389 (A027336 n).toNat

end

end A303896.P16062896373741808826

/-! ## A303896.P5108551510288566413

`A305288(n+1)-A014707(A022171(n))`
-/

namespace A303896.P5108551510288566413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305288 (n + 1) - A014707 (A022171 n).toNat

end

end A303896.P5108551510288566413

/-! ## A303896.P16806703355916985402

`A305288(n+1)-A037824(A022173(n))`
-/

namespace A303896.P16806703355916985402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305288 (n + 1) - A037824 (A022173 n).toNat

end

end A303896.P16806703355916985402

/-! ## A303896.P4114619441907237437

`A305288(n+1)-A038144(A303864(n))`
-/

namespace A303896.P4114619441907237437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305288 (n + 1) - A038144 (A303864 n).toNat

end

end A303896.P4114619441907237437

