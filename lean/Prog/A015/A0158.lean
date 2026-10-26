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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C012
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A015802: 

The programs for A015802, there is no canonical definition to state claims against.
-/

/-! ## A015802.P4291250460531782781

`C((n+1)%2, A326594(n))`
-/

namespace A015802.P4291250460531782781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1) % 2) (A326594 n).toNat

end

end A015802.P4291250460531782781

/-! ## A015802.P5187435900603065111

`C(∑[A134667(n)], A326594(n))`
-/

namespace A015802.P5187435900603065111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat (A326594 n).toNat

end

end A015802.P5187435900603065111

/-! ## A015802.P13293660273129542222

`C(A138471(n), ∑[A326594(n)])`
-/

namespace A015802.P13293660273129542222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326594 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A138471 n).toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015802.P13293660273129542222

/-! ## A015802.P11037132584519945420

`C(A214960(2*n), A326594(n))`
-/

namespace A015802.P11037132584519945420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A214960 (2 * n)).toNat (A326594 n).toNat

end

end A015802.P11037132584519945420

/-! ## A015802.P8793319067613337251

`A302052(∑[∑[A001617(n+1)]])`
-/

namespace A015802.P8793319067613337251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302052 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015802.P8793319067613337251

/-! ## A015802.P1112295655440278089

`C(A122855(n+2), A326594(n))²`
-/

namespace A015802.P1112295655440278089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A122855 (n + 2)).toNat (A326594 n).toNat ^ 2

end

end A015802.P1112295655440278089

/-! ## A015802.P9845297060150566300

`C(abs(A333248(3*(n+1))), A326594(n))`
-/

namespace A015802.P9845297060150566300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |A333248 (3 * (n + 1))|.toNat (A326594 n).toNat

end

end A015802.P9845297060150566300

/-! ## A015802.P1273289894104241637

`floor(1/(n+1))^A304527(A210964(n))`
-/

namespace A015802.P1273289894104241637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊1 / (n + 1 : ℚ)⌋ : ℚ) ^ (A304527 (A210964 n).toNat : ℤ)

end

end A015802.P1273289894104241637

/-! ## A015802.P15168021506025935905

`C(A329656(3*(n+1)), Δ[A326473(n)])`
-/

namespace A015802.P15168021506025935905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326473 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A329656 (3 * (n + 1))).toNat (f1 (n + 1) - f1 n).toNat

end

end A015802.P15168021506025935905

/-! ## A015802.P1344180033154646424

`C(A077172(n+5), record[A077172(n+5)])`
-/

namespace A015802.P1344180033154646424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077172 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A077172 (n + 5)).toNat (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A015802.P1344180033154646424

/-! ## A015802.P7792978563750397819

`C(A288108(A066657(n)), A326594(n))`
-/

namespace A015802.P7792978563750397819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A288108 (A066657 n).toNat).toNat (A326594 n).toNat

end

end A015802.P7792978563750397819

/-! ## A015802.P4589412100544440944

`C(A000022(A000003(n+1)), A326594(n))`
-/

namespace A015802.P4589412100544440944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000022 (A000003 (n + 1)).toNat).toNat (A326594 n).toNat

end

end A015802.P4589412100544440944

/-! ## A015802.P1490771213137882509

`C(A288108(A000005(n+1)), A326594(n))`
-/

namespace A015802.P1490771213137882509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A288108 (A000005 (n + 1)).toNat).toNat (A326594 n).toNat

end

end A015802.P1490771213137882509

/-! ## A015802.P5220782739308385759

`C(A001156(n+2), A000961(A001156(n+2)))`
-/

namespace A015802.P5220782739308385759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001156 (n + 2)).toNat (A000961 (A001156 (n + 2)).toNat).toNat

end

end A015802.P5220782739308385759

/-! ## A015802.P64220355444356769

`C(A184303(n+1), A326528(A299957(n)))`
-/

namespace A015802.P64220355444356769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A184303 (n + 1)).toNat (A326528 (A299957 n).toNat).toNat

end

end A015802.P64220355444356769

/-! ## A015802.P9781813139625550241

`C(A180580(A297845(n+1)), A326469(n))`
-/

namespace A015802.P9781813139625550241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A180580 (A297845 (n + 1)).toNat).toNat (A326469 n).toNat

end

end A015802.P9781813139625550241

/-! ## A015802.P17282426850222069245

`A352512(A000122(3*n+4)^A237127(n+1))`
-/

namespace A015802.P17282426850222069245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352512 (SequenceMachineLib.roundAway ((A000122 (3 * n + 4) : ℚ) ^ (A237127 (n + 1) : ℤ))).toNat

end

end A015802.P17282426850222069245

/-! ## A015802.P1905859182275272165

`C(comp[∑[4*n]]%2, A326593(n))`
-/

namespace A015802.P1905859182275272165
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2) (A326593 n).toNat

end

end A015802.P1905859182275272165

/-! ## A015802.P2466794649953909257

`and(1, A358158(A237127(n+1)))`
-/

namespace A015802.P2466794649953909257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A358158 (A237127 (n + 1)).toNat)

end

end A015802.P2466794649953909257

/-!
# A015803: Inverse of 1794th cyclotomic polynomial.

The programs for A015803, there is no canonical definition to state claims against.
-/

/-! ## A015803.P16348934239883194526

`A014906(n)*A033999(n)`
-/

namespace A015803.P16348934239883194526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014906 n * A033999 n

end

end A015803.P16348934239883194526

/-! ## A015803.P8216430016087203687

`A015947(A004906(n+1))`
-/

namespace A015803.P8216430016087203687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015947 (A004906 (n + 1)).toNat

end

end A015803.P8216430016087203687

/-! ## A015803.P4694060232382803073

`A016345(A004851(n+1))`
-/

namespace A015803.P4694060232382803073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016345 (A004851 (n + 1)).toNat

end

end A015803.P4694060232382803073

/-! ## A015803.P12455889782503226904

`A140318(A003389(n+1))`
-/

namespace A015803.P12455889782503226904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140318 (A003389 (n + 1)).toNat

end

end A015803.P12455889782503226904

/-! ## A015803.P16451654346956726907

`A010892(A001105(3*n+4)-A335467(n+2))`
-/

namespace A015803.P16451654346956726907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A001105 (3 * n + 4) - A335467 (n + 2)).toNat

end

end A015803.P16451654346956726907

/-!
# A015804: Numbers k such that phi(k) + 11 | sigma(k).

The programs for A015804, there is no canonical definition to state claims against.
-/

/-! ## A015804.P2669746006178979705

`A193580(n)*A353744(A147562(n+3))`
-/

namespace A015804.P2669746006178979705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193580 n * A353744 (A147562 (n + 3)).toNat

end

end A015804.P2669746006178979705

/-!
# A015807: Inverse of 1798th cyclotomic polynomial.

The programs for A015807, there is no canonical definition to state claims against.
-/

/-! ## A015807.P14839677692701420653

`A014908(n)*A033999(n)`
-/

namespace A015807.P14839677692701420653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014908 n * A033999 n

end

end A015807.P14839677692701420653

/-! ## A015807.P8005989953906256948

`A016155(n)%A322348(n)`
-/

namespace A015807.P8005989953906256948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016155 n) (A322348 n)

end

end A015807.P8005989953906256948

/-! ## A015807.P17947641647244612115

`A016155(n)^A104847(A000326(n+3))`
-/

namespace A015807.P17947641647244612115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016155 n : ℚ) ^ (A104847 (A000326 (n + 3)).toNat : ℤ)

end

end A015807.P17947641647244612115

/-! ## A015807.P9044017704977510957

`Δ[and(1, A070971(n+2))]`
-/

namespace A015807.P9044017704977510957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A070971 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A015807.P9044017704977510957

/-!
# A015809: Odd numbers k such that phi(k) | sigma_3(k).

The programs for A015809, the canonical program `A015809.P1146351289713362011` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015809 has offset 1).

The definition of A015809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2868 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015809.P1146351289713362011

`A015761(eq[1, A015761(n+1)%2]+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A015809

/-- `A015761(eq[1, A015761(n+1)%2]+1)` -/
def P1146351289713362011.Spec : Prop :=
  ∀ n, P1146351289713362011.a n = A015809 (n + 1)

theorem P1146351289713362011.correct : P1146351289713362011.Spec := by
  intro n
  simp only [A015809, Nat.add_sub_cancel]

end A015809

/-! ## A015809.P6274977664789368104

`∩[2*n+1, A015761(n+1)]`
-/

namespace A015809.P6274977664789368104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015809.P6274977664789368104

namespace A015809

/-- `∩[2*n+1, A015761(n+1)]` -/
def P6274977664789368104.Spec : Prop :=
  ∀ n, (P6274977664789368104.a n : ℤ) = A015809 (n + 1)

end A015809

/-! ## A015809.P17026051998249826770

`filter[A015761(n+1), A379952(#)]`
-/

namespace A015809.P17026051998249826770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A015809.P17026051998249826770

namespace A015809

/-- `filter[A015761(n+1), A379952(#)]` -/
def P17026051998249826770.Spec : Prop :=
  ∀ n, P17026051998249826770.a n = A015809 (n + 1)

end A015809

/-! ## A015809.P10906455440709103687

`∩[A015761(n+1), A305635(n+1)]`
-/

namespace A015809.P10906455440709103687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015809.P10906455440709103687

namespace A015809

/-- `∩[A015761(n+1), A305635(n+1)]` -/
def P10906455440709103687.Spec : Prop :=
  ∀ n, (P10906455440709103687.a n : ℤ) = A015809 (n + 1)

end A015809

/-! ## A015809.P2636210144945341978

`record[A093178(A015761(n+1))]`
-/

namespace A015809.P2636210144945341978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A015761 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015809.P2636210144945341978

namespace A015809

/-- `record[A093178(A015761(n+1))]` -/
def P2636210144945341978.Spec : Prop :=
  ∀ n, P2636210144945341978.a n = A015809 (n + 1)

end A015809

/-! ## A015809.P17490679531344446219

`∩[A015761(n+1), A004273(n)]`
-/

namespace A015809.P17490679531344446219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015809.P17490679531344446219

namespace A015809

/-- `∩[A015761(n+1), A004273(n)]` -/
def P17490679531344446219.Spec : Prop :=
  ∀ n, (P17490679531344446219.a n : ℤ) = A015809 (n + 1)

end A015809

/-! ## A015809.P8022275399371854799

`∩[A015761(n+1), A060747(n)]`
-/

namespace A015809.P8022275399371854799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015809.P8022275399371854799

namespace A015809

/-- `∩[A015761(n+1), A060747(n)]` -/
def P8022275399371854799.Spec : Prop :=
  ∀ n, (P8022275399371854799.a n : ℤ) = A015809 (n + 1)

end A015809

/-! ## A015809.P5058950289051264168

`∩[A015761(n+1), A128201(n+1)]`
-/

namespace A015809.P5058950289051264168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015809.P5058950289051264168

namespace A015809

/-- `∩[A015761(n+1), A128201(n+1)]` -/
def P5058950289051264168.Spec : Prop :=
  ∀ n, (P5058950289051264168.a n : ℤ) = A015809 (n + 1)

end A015809

/-! ## A015809.P18404637873735139841

`filter[A015761(n+1), A000035(#)]`
-/

namespace A015809.P18404637873735139841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A015809.P18404637873735139841

namespace A015809

/-- `filter[A015761(n+1), A000035(#)]` -/
def P18404637873735139841.Spec : Prop :=
  ∀ n, P18404637873735139841.a n = A015809 (n + 1)

end A015809

/-!
# A015811: Inverse of 1802nd cyclotomic polynomial.

The programs for A015811, there is no canonical definition to state claims against.
-/

/-! ## A015811.P1033125893991303744

`A016015(lt[A016015(2*n+1), A091840(n+1)])`
-/

namespace A015811.P1033125893991303744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016015 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016015 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015811.P1033125893991303744

/-! ## A015811.P4386665277437459928

`val(A003842(n), A064137(2*n+1))-a(n-1)` with `a(0)=1`
-/

namespace A015811.P4386665277437459928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.valuation (A003842 n).toNat (A064137 (2 * n + 1)).toNat : ℤ) - a (n - 1)

end

end A015811.P4386665277437459928

/-! ## A015811.P15851940070945963444

`A016015(n)+C(n, A335479(n+1))`
-/

namespace A015811.P15851940070945963444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016015 n + (Nat.choose n (A335479 (n + 1)).toNat : ℤ)

end

end A015811.P15851940070945963444

/-! ## A015811.P8367073428929465971

`A010815(A000326(n)%A349495(n+1))`
-/

namespace A015811.P8367073428929465971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (Int.tmod (A000326 n) (A349495 (n + 1))).toNat

end

end A015811.P8367073428929465971

/-! ## A015811.P15619491504722506192

`(∑[char[∑[A158057(n+1)]]]^n-1)^n`
-/

namespace A015811.P15619491504722506192
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ n : ℕ) : ℤ) - 1) ^ n

end

end A015811.P15619491504722506192

/-! ## A015811.P15496976894655898022

`A010054(A016754(n))-a(n-1)` with `a(0)=1`
-/

namespace A015811.P15496976894655898022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010054 (A016754 n).toNat - a (n - 1)

end

end A015811.P15496976894655898022

/-! ## A015811.P5056093191352795019

`A010054(A000290(2*n+1))-a(n-1)` with `a(0)=1`
-/

namespace A015811.P5056093191352795019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010054 (A000290 (2 * n + 1)).toNat - a (n - 1)

end

end A015811.P5056093191352795019

/-!
# A015812: Composite numbers k such that phi(k) + 2 | sigma(k).

The programs for A015812, there is no canonical definition to state claims against.
-/

/-! ## A015812.P12385136423074528397

`∩[A028757(n+1), A036350(n+1)]`
-/

namespace A015812.P12385136423074528397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015812.P12385136423074528397

/-! ## A015812.P9627970217505732840

`lt[2, A350256(A321648(3*n+4))]`
-/

namespace A015812.P9627970217505732840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350256 (A321648 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A015812.P9627970217505732840

/-! ## A015812.P16717090375251442257

`A036350(lt[A328499(n+1), A137161(n)]+1)`
-/

namespace A015812.P16717090375251442257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036350 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A015812.P16717090375251442257

/-! ## A015812.P16608027174394946326

`lt[A143589(3*n+2), A079901(A321648(3*n+4))]`
-/

namespace A015812.P16608027174394946326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143589 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079901 (A321648 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A015812.P16608027174394946326

/-!
# A015813: Inverse of 1804th cyclotomic polynomial.

The programs for A015813, there is no canonical definition to state claims against.
-/

/-! ## A015813.P6080353139188083605

`A015901(n)%A217518(A015931(3*n+2))`
-/

namespace A015813.P6080353139188083605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015901 n) (A217518 (A015931 (3 * n + 2)).toNat)

end

end A015813.P6080353139188083605

/-! ## A015813.P4423684047419491877

`A016141(n)%A119946(n)`
-/

namespace A015813.P4423684047419491877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016141 n) (A119946 n)

end

end A015813.P4423684047419491877

/-! ## A015813.P14225569241061932740

`A016245(n)%A119946(n)`
-/

namespace A015813.P14225569241061932740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016245 n) (A119946 n)

end

end A015813.P14225569241061932740

/-!
# A015814: Numbers k such that phi(k + 1) divides sigma(k).

The programs for A015814, the canonical program `A015814.P2308272231266712354` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015814 has offset 1).

The definition of A015814 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 311 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015814.P2308272231266712354

`record[gcd(n+1, A000203(n+1)%A000010(n+2))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A015814

/-- `record[gcd(n+1, A000203(n+1)%A000010(n+2))]` -/
def P2308272231266712354.Spec : Prop :=
  ∀ n, (P2308272231266712354.a n : ℤ) = A015814 (n + 1)

theorem P2308272231266712354.correct : P2308272231266712354.Spec := by
  intro n
  simp only [A015814, Nat.add_sub_cancel]

end A015814

/-! ## A015814.P15208548123104935958

`lt[A000203(n+1)%A000010(n+2), 1]+1`
-/

namespace A015814.P15208548123104935958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) (A000010 (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A015814.P15208548123104935958

namespace A015814

/-- `lt[A000203(n+1)%A000010(n+2), 1]+1` -/
def P15208548123104935958.Spec : Prop :=
  ∀ n, (P15208548123104935958.a n : ℤ) = A015814 (n + 1)

end A015814

/-! ## A015814.P10135606781339933644

`lt[∑{d}[n+1, #]%A000010(A000027(n+1)+1), 1]+1`
-/

namespace A015814.P10135606781339933644
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) (A000010 (A000027 (n + 1) + 1).toNat)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A015814.P10135606781339933644

namespace A015814

/-- `lt[∑{d}[n+1, #]%A000010(A000027(n+1)+1), 1]+1` -/
def P10135606781339933644.Spec : Prop :=
  ∀ n, (P10135606781339933644.a n : ℤ) = A015814 (n + 1)

end A015814

/-!
# A015815: Inverse of 1806th cyclotomic polynomial.

The programs for A015815, there is no canonical definition to state claims against.
-/

/-! ## A015815.P17952060001738489552

`A014912(n)*A033999(n)`
-/

namespace A015815.P17952060001738489552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014912 n * A033999 n

end

end A015815.P17952060001738489552

/-! ## A015815.P12744016410088283172

`A015983(A175427(n+1))`
-/

namespace A015815.P12744016410088283172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015983 (A175427 (n + 1)).toNat

end

end A015815.P12744016410088283172

/-! ## A015815.P5333606833250687587

`A015983(n)*A362113(n)`
-/

namespace A015815.P5333606833250687587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015983 n * A362113 n

end

end A015815.P5333606833250687587

/-! ## A015815.P12142051690905930109

`A016235(n)*A362113(n)`
-/

namespace A015815.P12142051690905930109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016235 n * A362113 n

end

end A015815.P12142051690905930109

/-! ## A015815.P4845835416552893980

`A015983(n)%A235923(n+1)`
-/

namespace A015815.P4845835416552893980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015983 n) (A235923 (n + 1))

end

end A015815.P4845835416552893980

/-!
# A015816: Inverse of 1807th cyclotomic polynomial.

The programs for A015816, there is no canonical definition to state claims against.
-/

/-! ## A015816.P11847976598275752198

`C(2, A308975(n+1)²)`
-/

namespace A015816.P11847976598275752198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A308975 (n + 1) ^ 2).toNat

end

end A015816.P11847976598275752198

/-! ## A015816.P17827201440074977051

`C(2, A308978(n+1)²)`
-/

namespace A015816.P17827201440074977051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A308978 (n + 1) ^ 2).toNat

end

end A015816.P17827201440074977051

/-! ## A015816.P7907089722622132831

`floor((n+1)/A232528(n+1))`
-/

namespace A015816.P7907089722622132831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A232528 (n + 1) : ℚ)⌋

end

end A015816.P7907089722622132831

/-! ## A015816.P1335475338900471392

`A127244(∑[comp[A367863(n)]])`
-/

namespace A015816.P1335475338900471392
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367863 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127244 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015816.P1335475338900471392

/-! ## A015816.P14781311728002208050

`A001690(A045709(n+1))%2`
-/

namespace A015816.P14781311728002208050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001690 (A045709 (n + 1)).toNat) 2

end

end A015816.P14781311728002208050

/-! ## A015816.P9831738305966347783

`C(A249093(n+2), A308978(A380817(n+1)))`
-/

namespace A015816.P9831738305966347783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A249093 (n + 2)).toNat (A308978 (A380817 (n + 1)).toNat).toNat

end

end A015816.P9831738305966347783

/-! ## A015816.P3819689746122754510

`C(A340101(A320332(2*(n+1))), A345166(n))`
-/

namespace A015816.P3819689746122754510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A340101 (A320332 (2 * (n + 1))).toNat).toNat (A345166 n).toNat

end

end A015816.P3819689746122754510

/-! ## A015816.P3748737496933642057

`C(A062157(A380817(2*n+5)), A308978(n+1))`
-/

namespace A015816.P3748737496933642057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A062157 (A380817 (2 * n + 5)).toNat).toNat (A308978 (n + 1)).toNat

end

end A015816.P3748737496933642057

/-! ## A015816.P5745367657283682383

`C(n, comp[A366529(2*n+5)])`
-/

namespace A015816.P5745367657283682383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366529 (2 * n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015816.P5745367657283682383

/-! ## A015816.P16504713785083487500

`C(A002262(A000124(n+3)), A224813(n))`
-/

namespace A015816.P16504713785083487500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002262 (A000124 (n + 3)).toNat).toNat (A224813 n).toNat

end

end A015816.P16504713785083487500

/-!
# A015817: Numbers n such that phi(n + 1) | sigma(n) for n congruent to 1 (mod 3).

The programs for A015817, there is no canonical definition to state claims against.
-/

/-! ## A015817.P4959120233509268693

`∩[A015814(n+1), A016777(n)]`
-/

namespace A015817.P4959120233509268693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015817.P4959120233509268693

/-! ## A015817.P9149175722864509829

`∩[A015814(n+1), A033627(n+1)]`
-/

namespace A015817.P9149175722864509829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015817.P9149175722864509829

/-! ## A015817.P5010908889056240459

`∩[A015814(n+1), A055047(n+1)]`
-/

namespace A015817.P5010908889056240459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015817.P5010908889056240459

/-! ## A015817.P16761812267104000436

`∩[A023444(3*n), A015814(n+1)]`
-/

namespace A015817.P16761812267104000436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015817.P16761812267104000436

/-! ## A015817.P5518828965915583947

`∩[A015814(n+1), A008619(A008458(n))]`
-/

namespace A015817.P5518828965915583947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008458 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015817.P5518828965915583947

/-!
# A015819: Numbers k such that phi(k + 3) | sigma(k).

The programs for A015819, there is no canonical definition to state claims against.
-/

/-! ## A015819.P1496082295858325773

`eq[A219204(n), A302771(n)]`
-/

namespace A015819.P1496082295858325773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219204 (n + 129)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302771 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A015819.P1496082295858325773

/-! ## A015819.P14252218268933079103

`eq[atan(A000925(n)), A219204(n)]`
-/

namespace A015819.P14252218268933079103
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A000925 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219204 (n + 129)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A015819.P14252218268933079103

/-! ## A015819.P6863067607332854850

`eq[atan(A004018(n)), A219204(n)]`
-/

namespace A015819.P6863067607332854850
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A004018 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219204 (n + 129)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A015819.P6863067607332854850

/-! ## A015819.P3797197294801418400

`eq[atan(A104794(n)), A219204(n)]`
-/

namespace A015819.P3797197294801418400
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A104794 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219204 (n + 129)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A015819.P3797197294801418400

/-! ## A015819.P10228882950514399554

`eq[A004018(n), A336562(A052552(n))]`
-/

namespace A015819.P10228882950514399554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336562 (A052552 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A015819.P10228882950514399554

/-!
# A015820: Numbers k such that phi(k + 4) | sigma(k).

The programs for A015820, the canonical program `A015820.P11788765630809446508` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015820 has offset 1).

The definition of A015820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 641 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015820.P11788765630809446508

`lt[A000203(n+1)%A000010(n+5), 1]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A015820

/-- `lt[A000203(n+1)%A000010(n+5), 1]+1` -/
def P11788765630809446508.Spec : Prop :=
  ∀ n, (P11788765630809446508.a n : ℤ) = A015820 (n + 1)

theorem P11788765630809446508.correct : P11788765630809446508.Spec := by
  intro n
  simp only [A015820, Nat.add_sub_cancel]

end A015820

/-!
# A015821: Numbers k such that phi(k + 5) | sigma(k).

The programs for A015821, there is no canonical definition to state claims against.
-/

/-! ## A015821.P9050314923269743768

`or(A276867(A058000(n+1)), A276879(n+1))`
-/

namespace A015821.P9050314923269743768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A276867 (A058000 (n + 1)).toNat) (A276879 (n + 1))

end

end A015821.P9050314923269743768

/-!
# A015823: Numbers k such that phi(k + 7) | sigma(k).

The programs for A015823, the canonical program `A015823.P14101664896886442128` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015823 has offset 1).

The definition of A015823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 946 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015823.P14101664896886442128

`lt[A000203(n+1)%A000010(n+8), 1]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A015823

/-- `lt[A000203(n+1)%A000010(n+8), 1]+1` -/
def P14101664896886442128.Spec : Prop :=
  ∀ n, (P14101664896886442128.a n : ℤ) = A015823 (n + 1)

theorem P14101664896886442128.correct : P14101664896886442128.Spec := by
  intro n
  simp only [A015823, Nat.add_sub_cancel]

end A015823

/-!
# A015824: Inverse of 1815th cyclotomic polynomial.

The programs for A015824, there is no canonical definition to state claims against.
-/

/-! ## A015824.P7282972676691453031

`A015494(n-A289122(n))`
-/

namespace A015824.P7282972676691453031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015494 ((n : ℤ) - A289122 n).toNat

end

end A015824.P7282972676691453031

/-! ## A015824.P14920553712951764794

`A011653(n)*A015582(n)`
-/

namespace A015824.P14920553712951764794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011653 n * A015582 n

end

end A015824.P14920553712951764794

/-! ## A015824.P6594854081327393179

`A011653(n)%A109014(n)`
-/

namespace A015824.P6594854081327393179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011653 n) (A109014 n)

end

end A015824.P6594854081327393179

/-! ## A015824.P8613074028706935111

`A015920(A097546(n))`
-/

namespace A015824.P8613074028706935111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015920 (A097546 n).toNat

end

end A015824.P8613074028706935111

/-! ## A015824.P5051368986081708072

`A015194(A027688(n+1))`
-/

namespace A015824.P5051368986081708072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015194 (A027688 (n + 1)).toNat

end

end A015824.P5051368986081708072

/-!
# A015826: Inverse of 1817th cyclotomic polynomial.

The programs for A015826, there is no canonical definition to state claims against.
-/

/-! ## A015826.P3130002590443335325

`A015012(A022838(n+1)-A214701(n+1))`
-/

namespace A015826.P3130002590443335325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015012 (A022838 (n + 1) - A214701 (n + 1)).toNat

end

end A015826.P3130002590443335325

/-!
# A015827: Numbers k such that phi(k + 9) | sigma(k).

The programs for A015827, there is no canonical definition to state claims against.
-/

/-! ## A015827.P9323208772065099686

`∑[A358136(A136682(n+1))]+2`
-/

namespace A015827.P9323208772065099686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358136 (A136682 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A015827.P9323208772065099686

/-! ## A015827.P10667198462607679490

`record[or(A003285(n+1), A198466(n+1))]`
-/

namespace A015827.P10667198462607679490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003285 (n + 1)) (A198466 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015827.P10667198462607679490

/-! ## A015827.P12151199004181522700

`lt[A231931(2*(n+2)), A252867(A358488(n+1))]`
-/

namespace A015827.P12151199004181522700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231931 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252867 (A358488 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A015827.P12151199004181522700

/-! ## A015827.P6350669843744780305

`eq[A010055(A179937(n+1)), A014963(3*n+5)]`
-/

namespace A015827.P6350669843744780305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (A179937 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A015827.P6350669843744780305

/-!
# A015828: Inverse of 1819th cyclotomic polynomial.

The programs for A015828, there is no canonical definition to state claims against.
-/

/-! ## A015828.P13612984835089876199

`A015930(floor(sqrt(A161925(n+1))))`
-/

namespace A015828.P13612984835089876199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015930 (Int.sqrt (A161925 (n + 1))).toNat

end

end A015828.P13612984835089876199

/-! ## A015828.P6193470389882407325

`C(2, A326549(n+2))`
-/

namespace A015828.P6193470389882407325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A326549 (n + 2)).toNat

end

end A015828.P6193470389882407325

/-! ## A015828.P10111176108084073566

`∑{d}[A001045(floor((n+3)/5))+1, #]%2`
-/

namespace A015828.P10111176108084073566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 ⌊(n + 3 : ℚ) / 5⌋.toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n).natAbs, d) % 2

end

end A015828.P10111176108084073566

/-! ## A015828.P1268726509064400062

`A010060(∑[A010054(3*n+4)]!)`
-/

namespace A015828.P1268726509064400062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A015828.P1268726509064400062

/-! ## A015828.P1735880725015612261

`C(A106244(n), A080681(A106244(n)))`
-/

namespace A015828.P1735880725015612261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A106244 n).toNat (A080681 (A106244 n).toNat).toNat

end

end A015828.P1735880725015612261

/-! ## A015828.P1224019632491687481

`C(A327884(A380822(n+1)), A048037(n+1))`
-/

namespace A015828.P1224019632491687481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A327884 (A380822 (n + 1)).toNat).toNat (A048037 (n + 1)).toNat

end

end A015828.P1224019632491687481

/-! ## A015828.P14647986034837175123

`C(A299038(n+2), A326543(A160413(2*(n+2))))`
-/

namespace A015828.P14647986034837175123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A299038 (n + 2)).toNat (A326543 (A160413 (2 * (n + 2))).toNat).toNat

end

end A015828.P14647986034837175123

/-! ## A015828.P12099660952167292489

`A010060(∏[A010054(3*n+4)*A111891(n+1)+1])`
-/

namespace A015828.P12099660952167292489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (3 * n + 4) * A111891 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015828.P12099660952167292489

/-! ## A015828.P4199022520059055183

`C(2, A326545(n+4))`
-/

namespace A015828.P4199022520059055183
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A326545 (n + 4)).toNat

end

end A015828.P4199022520059055183

/-! ## A015828.P2710480524395472305

`A319330(∑[A319330(n+1)])`
-/

namespace A015828.P2710480524395472305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319330 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015828.P2710480524395472305

/-! ## A015828.P13442671605700103848

`C(A178815(n+1), A056453(A004233(3*n+5)))`
-/

namespace A015828.P13442671605700103848
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A178815 (n + 1)).toNat (A056453 (A004233 (3 * n + 5)).toNat).toNat

end

end A015828.P13442671605700103848

/-!
# A015829: Inverse of 1820th cyclotomic polynomial.

The programs for A015829, there is no canonical definition to state claims against.
-/

/-! ## A015829.P14676756854895410452

`A014919(A025480(n))*A059841(n)`
-/

namespace A015829.P14676756854895410452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014919 (A025480 n).toNat * A059841 n

end

end A015829.P14676756854895410452

/-! ## A015829.P13197232242037821909

`A016334(n)%A242465(n)`
-/

namespace A015829.P13197232242037821909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016334 n) (A242465 n)

end

end A015829.P13197232242037821909

/-! ## A015829.P3664109591503664739

`A016334(A059029(n))`
-/

namespace A015829.P3664109591503664739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016334 (A059029 n).toNat

end

end A015829.P3664109591503664739

/-! ## A015829.P3791644444797277386

`A016334(A227906(n))`
-/

namespace A015829.P3791644444797277386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016334 (A227906 n).toNat

end

end A015829.P3791644444797277386

/-! ## A015829.P9361350304542744673

`A016334(A351831(n+1))`
-/

namespace A015829.P9361350304542744673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016334 (A351831 (n + 1)).toNat

end

end A015829.P9361350304542744673

/-!
# A015834: Numbers k such that phi(k) | sigma(k + 1).

The programs for A015834, the canonical program `A015834.P6187228522220576603` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015834 has offset 1).

The definition of A015834 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015834.P6187228522220576603

`record[gcd(n+1, A000203(n+2)%A000010(n+1))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A015834

/-- `record[gcd(n+1, A000203(n+2)%A000010(n+1))]` -/
def P6187228522220576603.Spec : Prop :=
  ∀ n, (P6187228522220576603.a n : ℤ) = A015834 (n + 1)

theorem P6187228522220576603.correct : P6187228522220576603.Spec := by
  intro n
  simp only [A015834, Nat.add_sub_cancel]

end A015834

/-! ## A015834.P6267882013675484057

`lt[A000203(n+2)%A000010(n+1), 1]+1`
-/

namespace A015834.P6267882013675484057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 2)) (A000010 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A015834.P6267882013675484057

namespace A015834

/-- `lt[A000203(n+2)%A000010(n+1), 1]+1` -/
def P6267882013675484057.Spec : Prop :=
  ∀ n, (P6267882013675484057.a n : ℤ) = A015834 (n + 1)

end A015834

/-! ## A015834.P2938362431973224272

`lt[A306458(A179937(n+1)), A092261(n+1)]`
-/

namespace A015834.P2938362431973224272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306458 (A179937 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092261 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A015834.P2938362431973224272

namespace A015834

/-- `lt[A306458(A179937(n+1)), A092261(n+1)]` -/
def P2938362431973224272.Spec : Prop :=
  ∀ n, (P2938362431973224272.a n : ℤ) = A015834 (n + 1)

end A015834

/-! ## A015834.P15645760345746186967

`eq[(n+1)/∏{p}[n+1, #], A323410(A197672(n+1))]`
-/

namespace A015834.P15645760345746186967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323410 (A197672 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f3 j : ℚ)) n

end

end A015834.P15645760345746186967

namespace A015834

/-- `eq[(n+1)/∏{p}[n+1, #], A323410(A197672(n+1))]` -/
def P15645760345746186967.Spec : Prop :=
  ∀ n, (P15645760345746186967.a n : ℤ) = A015834 (n + 1)

end A015834

/-! ## A015834.P4696573403589781847

`lt[A169991(n), A010553(A067410(n+2))]`
-/

namespace A015834.P4696573403589781847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169991 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (A067410 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A015834.P4696573403589781847

namespace A015834

/-- `lt[A169991(n), A010553(A067410(n+2))]` -/
def P4696573403589781847.Spec : Prop :=
  ∀ n, (P4696573403589781847.a n : ℤ) = A015834 (n + 1)

end A015834

/-!
# A015835: Inverse of 1826th cyclotomic polynomial.

The programs for A015835, there is no canonical definition to state claims against.
-/

/-! ## A015835.P16945915201332393443

`A014922(n)*A033999(n)`
-/

namespace A015835.P16945915201332393443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014922 n * A033999 n

end

end A015835.P16945915201332393443

/-! ## A015835.P5041009032858017409

`A010815(A005448(n+1)-A285100(n+1))`
-/

namespace A015835.P5041009032858017409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A005448 (n + 1) - A285100 (n + 1)).toNat

end

end A015835.P5041009032858017409

/-! ## A015835.P11722921832472102344

`(-A015120(n))^A156723(n+1)`
-/

namespace A015835.P11722921832472102344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A015120 n : ℚ) ^ (A156723 (n + 1) : ℤ)

end

end A015835.P11722921832472102344

/-! ## A015835.P2200263962067145997

`A010815(A391860(n+1)+A000326(n))`
-/

namespace A015835.P2200263962067145997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A391860 (n + 1) + A000326 n).toNat

end

end A015835.P2200263962067145997

/-!
# A015836: Inverse of 1827th cyclotomic polynomial.

The programs for A015836, there is no canonical definition to state claims against.
-/

/-! ## A015836.P7904589977398426134

`A007318(A329315(n+1))*A015962(n)`
-/

namespace A015836.P7904589977398426134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A329315 (n + 1)).toNat * A015962 n

end

end A015836.P7904589977398426134

/-!
# A015837: Numbers k such that phi(k) | sigma(k + 2).

The programs for A015837, the canonical program `A015837.P10061482123831038346` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015837 has offset 1).

The definition of A015837 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 280 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015837.P10061482123831038346

`lt[A000203(n+3)%A000010(n+1), 1]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A015837

/-- `lt[A000203(n+3)%A000010(n+1), 1]+1` -/
def P10061482123831038346.Spec : Prop :=
  ∀ n, (P10061482123831038346.a n : ℤ) = A015837 (n + 1)

theorem P10061482123831038346.correct : P10061482123831038346.Spec := by
  intro n
  simp only [A015837, Nat.add_sub_cancel]

end A015837

/-!
# A015838: Inverse of 1829th cyclotomic polynomial.

The programs for A015838, there is no canonical definition to state claims against.
-/

/-! ## A015838.P7448344960256171654

`A014712(A194640(n)-A178334(n))`
-/

namespace A015838.P7448344960256171654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014712 (A194640 n - A178334 n).toNat

end

end A015838.P7448344960256171654

/-! ## A015838.P14249711501949827750

`round(A332577(n)/A000009(n))`
-/

namespace A015838.P14249711501949827750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A332577 n : ℚ) / (A000009 n : ℚ))

end

end A015838.P14249711501949827750

/-! ## A015838.P2639773862116304753

`3-A055642(A108793(n+1))`
-/

namespace A015838.P2639773862116304753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A055642 (A108793 (n + 1)).toNat

end

end A015838.P2639773862116304753

/-! ## A015838.P7899863451654487978

`6-A111972(A302057(n+4))`
-/

namespace A015838.P7899863451654487978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - A111972 (A302057 (n + 4)).toNat

end

end A015838.P7899863451654487978

/-! ## A015838.P548204679664595701

`A000035(A366847(n+1)+n)`
-/

namespace A015838.P548204679664595701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A366847 (n + 1) + (n : ℤ)).toNat

end

end A015838.P548204679664595701

/-! ## A015838.P5846337866073378745

`C(A006093(n+1), A130446(A006093(n+1)))`
-/

namespace A015838.P5846337866073378745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006093 (n + 1)).toNat (A130446 (A006093 (n + 1)).toNat).toNat

end

end A015838.P5846337866073378745

/-! ## A015838.P17359163019664088027

`A109720(A025521(n+3)*A302291(2*(n+1)))`
-/

namespace A015838.P17359163019664088027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109720 (A025521 (n + 3) * A302291 (2 * (n + 1))).toNat

end

end A015838.P17359163019664088027

/-! ## A015838.P10188601713302764014

`A010052(floor((A210249(n+1)/A271634(n+1))²))`
-/

namespace A015838.P10188601713302764014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 ⌊((A210249 (n + 1) : ℚ) / (A271634 (n + 1) : ℚ)) ^ 2⌋.toNat

end

end A015838.P10188601713302764014

/-! ## A015838.P18371080819488623137

`-A010815(∏[A022303(3*(n+1))])`
-/

namespace A015838.P18371080819488623137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022303 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A010815 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015838.P18371080819488623137

/-!
# A015839: Inverse of 1830th cyclotomic polynomial.

The programs for A015839, there is no canonical definition to state claims against.
-/

/-! ## A015839.P12334145574106404469

`A014562(A000009(n))*A014579(n)`
-/

namespace A015839.P12334145574106404469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014562 (A000009 n).toNat * A014579 n

end

end A015839.P12334145574106404469

/-!
# A015842: Inverse of 1833rd cyclotomic polynomial.

The programs for A015842, there is no canonical definition to state claims against.
-/

/-! ## A015842.P18037920924490708153

`A016076(A175427(n+1))`
-/

namespace A015842.P18037920924490708153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016076 (A175427 (n + 1)).toNat

end

end A015842.P18037920924490708153

/-! ## A015842.P12814910847423742449

`A016076(n)%A138125(n+1)`
-/

namespace A015842.P12814910847423742449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016076 n) (A138125 (n + 1))

end

end A015842.P12814910847423742449

/-! ## A015842.P15108356715128712760

`A016310(n)%A138125(n+1)`
-/

namespace A015842.P15108356715128712760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016310 n) (A138125 (n + 1))

end

end A015842.P15108356715128712760

/-! ## A015842.P15448752946163577326

`A016076(n)%A073261(n)`
-/

namespace A015842.P15448752946163577326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016076 n) (A073261 n)

end

end A015842.P15448752946163577326

/-! ## A015842.P14644917150728311636

`A016310(n)%A073261(n)`
-/

namespace A015842.P14644917150728311636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016310 n) (A073261 n)

end

end A015842.P14644917150728311636

/-!
# A015843: Numbers k such that phi(k) | sigma(k + 5).

The programs for A015843, there is no canonical definition to state claims against.
-/

/-! ## A015843.P16707704591508203776

`lt[A000040(n+1), A163336(A297171(n+1))]`
-/

namespace A015843.P16707704591508203776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 (A297171 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A015843.P16707704591508203776

/-! ## A015843.P4885343619478524363

`lt[A015841(n+1), A163336(A297171(n+1))]`
-/

namespace A015843.P4885343619478524363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 (A297171 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A015843.P4885343619478524363

/-! ## A015843.P5919116492825170394

`lt[A015859(n+1), A163336(A297171(n+1))]`
-/

namespace A015843.P5919116492825170394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 (A297171 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A015843.P5919116492825170394

/-! ## A015843.P8629313501561697591

`lt[A015860(n+1), A163336(A297171(n+1))]`
-/

namespace A015843.P8629313501561697591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 (A297171 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A015843.P8629313501561697591

/-! ## A015843.P13803357116391128077

`lt[A089681(n+1), A163336(A297171(n+1))]`
-/

namespace A015843.P13803357116391128077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 (A297171 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A015843.P13803357116391128077

/-!
# A015846: 

The programs for A015846, there is no canonical definition to state claims against.
-/

/-! ## A015846.P15326687484567730591

`A271592(C(∑[char[6*n+5]], 2)+1)`
-/

namespace A015846.P15326687484567730591
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 5

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271592 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1)

end

end A015846.P15326687484567730591

/-! ## A015846.P9395038728150971540

`C((n-a(floor(n/2)))%2, A326596(n))` with `a(0)=1`
-/

namespace A015846.P9395038728150971540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (Int.tmod ((n : ℤ) - (a ⌊(n : ℚ) / 2⌋.toNat : ℤ)) 2).toNat (A326596 n).toNat

end

end A015846.P9395038728150971540

/-! ## A015846.P18157503455459922587

`C(A326596(n), ∑[A326596(n)])`
-/

namespace A015846.P18157503455459922587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326596 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A326596 n).toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015846.P18157503455459922587

/-! ## A015846.P15717506132403953254

`A000007(n*A131981(n+1))`
-/

namespace A015846.P15717506132403953254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((n : ℤ) * A131981 (n + 1)).toNat

end

end A015846.P15717506132403953254

/-! ## A015846.P12200319259829063966

`A322175(n*A131981(n+1))`
-/

namespace A015846.P12200319259829063966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322175 ((n : ℤ) * A131981 (n + 1)).toNat

end

end A015846.P12200319259829063966

/-! ## A015846.P4710163817271477821

`A000120(C(A033762(n), A326596(n)))`
-/

namespace A015846.P4710163817271477821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.choose (A033762 n).toNat (A326596 n).toNat)

end

end A015846.P4710163817271477821

/-! ## A015846.P4885985766649802581

`A010060(C(A033762(n), A326596(n)))`
-/

namespace A015846.P4885985766649802581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Nat.choose (A033762 n).toNat (A326596 n).toNat)

end

end A015846.P4885985766649802581

/-! ## A015846.P8798369931052362032

`A390648(A297041(n+2)^A001523(n))`
-/

namespace A015846.P8798369931052362032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390648 (SequenceMachineLib.roundAway ((A297041 (n + 2) : ℚ) ^ (A001523 n : ℤ))).toNat

end

end A015846.P8798369931052362032

/-! ## A015846.P4026086942777370064

`C(A030363(A001055(n+1)), A326596(n))`
-/

namespace A015846.P4026086942777370064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A030363 (A001055 (n + 1)).toNat).toNat (A326596 n).toNat

end

end A015846.P4026086942777370064

/-! ## A015846.P9610500171883028954

`C(A264388(A036036(n+1)), A326596(n))`
-/

namespace A015846.P9610500171883028954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A264388 (A036036 (n + 1)).toNat).toNat (A326596 n).toNat

end

end A015846.P9610500171883028954

/-! ## A015846.P14541154784682987090

`C(A001462(n+1), A194410(A001462(n+1)))`
-/

namespace A015846.P14541154784682987090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001462 (n + 1)).toNat (A194410 (A001462 (n + 1)).toNat).toNat

end

end A015846.P14541154784682987090

/-! ## A015846.P16398344980147567012

`C(A059998(A331910(2*n+3)), A326596(n))`
-/

namespace A015846.P16398344980147567012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A059998 (A331910 (2 * n + 3)).toNat).toNat (A326596 n).toNat

end

end A015846.P16398344980147567012

/-! ## A015846.P12156462614888292077

`A355688(2*(n+1))^A013941(A100881(n))`
-/

namespace A015846.P12156462614888292077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355688 (2 * (n + 1)) : ℚ) ^ (A013941 (A100881 n).toNat : ℤ)

end

end A015846.P12156462614888292077

/-! ## A015846.P8134346268516572394

`C(n, comp[A079467(n+4)])`
-/

namespace A015846.P8134346268516572394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079467 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015846.P8134346268516572394

/-!
# A015847: Numbers k such that phi(k + 4) | sigma(k) for k not congruent to 0 (mod 3).

The programs for A015847, the canonical program `A015847.P12490505763805221842` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015847 has offset 1).

The definition of A015847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9627 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015847.P12490505763805221842

`A015820(eq[1, gcd(3, A015820(n+1))]+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A015847

/-- `A015820(eq[1, gcd(3, A015820(n+1))]+1)` -/
def P12490505763805221842.Spec : Prop :=
  ∀ n, P12490505763805221842.a n = A015847 (n + 1)

theorem P12490505763805221842.correct : P12490505763805221842.Spec := by
  intro n
  simp only [A015847, Nat.add_sub_cancel]

end A015847

/-! ## A015847.P7044810422203563652

`record[A106610(A015820(n+1))]`
-/

namespace A015847.P7044810422203563652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A015820 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015847.P7044810422203563652

namespace A015847

/-- `record[A106610(A015820(n+1))]` -/
def P7044810422203563652.Spec : Prop :=
  ∀ n, P7044810422203563652.a n = A015847 (n + 1)

end A015847

/-! ## A015847.P10247647385730893416

`∩[A015820(n+1), A047261(n+1)]`
-/

namespace A015847.P10247647385730893416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015847.P10247647385730893416

namespace A015847

/-- `∩[A015820(n+1), A047261(n+1)]` -/
def P10247647385730893416.Spec : Prop :=
  ∀ n, (P10247647385730893416.a n : ℤ) = A015847 (n + 1)

end A015847

/-! ## A015847.P9729400310992333129

`∩[A015820(n+1), A134191(n+1)]`
-/

namespace A015847.P9729400310992333129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015847.P9729400310992333129

namespace A015847

/-- `∩[A015820(n+1), A134191(n+1)]` -/
def P9729400310992333129.Spec : Prop :=
  ∀ n, (P9729400310992333129.a n : ℤ) = A015847 (n + 1)

end A015847

/-! ## A015847.P11105214660357154981

`∩[A001651(n+1), A015820(n+1)]`
-/

namespace A015847.P11105214660357154981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015820 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015847.P11105214660357154981

namespace A015847

/-- `∩[A001651(n+1), A015820(n+1)]` -/
def P11105214660357154981.Spec : Prop :=
  ∀ n, (P11105214660357154981.a n : ℤ) = A015847 (n + 1)

end A015847

/-! ## A015847.P1324341608595345810

`filter[A015820(n+1), A011655(#)]`
-/

namespace A015847.P1324341608595345810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A015847.P1324341608595345810

namespace A015847

/-- `filter[A015820(n+1), A011655(#)]` -/
def P1324341608595345810.Spec : Prop :=
  ∀ n, P1324341608595345810.a n = A015847 (n + 1)

end A015847

/-! ## A015847.P16772918206176304609

`filter[A015820(n+1), A214090(#)]`
-/

namespace A015847.P16772918206176304609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A214090 (f1 j).toNat = 1) n)

end

end A015847.P16772918206176304609

namespace A015847

/-- `filter[A015820(n+1), A214090(#)]` -/
def P16772918206176304609.Spec : Prop :=
  ∀ n, P16772918206176304609.a n = A015847 (n + 1)

end A015847

/-! ## A015847.P10430107325428441264

`filter[A015820(n+1), A267208(#)]`
-/

namespace A015847.P10430107325428441264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A015847.P10430107325428441264

namespace A015847

/-- `filter[A015820(n+1), A267208(#)]` -/
def P10430107325428441264.Spec : Prop :=
  ∀ n, P10430107325428441264.a n = A015847 (n + 1)

end A015847

/-! ## A015847.P9206685340663000264

`record[A145064(A015820(n+1)-2)]`
-/

namespace A015847.P9206685340663000264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145064 (A015820 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015847.P9206685340663000264

namespace A015847

/-- `record[A145064(A015820(n+1)-2)]` -/
def P9206685340663000264.Spec : Prop :=
  ∀ n, P9206685340663000264.a n = A015847 (n + 1)

end A015847

/-! ## A015847.P17066062831798308556

`∩[A015820(n+1), A133223(n+1)]`
-/

namespace A015847.P17066062831798308556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015847.P17066062831798308556

namespace A015847

/-- `∩[A015820(n+1), A133223(n+1)]` -/
def P17066062831798308556.Spec : Prop :=
  ∀ n, (P17066062831798308556.a n : ℤ) = A015847 (n + 1)

end A015847

/-!
# A015848: Numbers k such that phi(k + 7) | sigma(k) for k not congruent to 0 (mod 3).

The programs for A015848, the canonical program `A015848.P1385661765807216180` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015848 has offset 1).

The definition of A015848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015848.P1385661765807216180

`∩[A001651(n+1), A015823(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A015848

/-- `∩[A001651(n+1), A015823(n+1)]` -/
def P1385661765807216180.Spec : Prop :=
  ∀ n, (P1385661765807216180.a n : ℤ) = A015848 (n + 1)

theorem P1385661765807216180.correct : P1385661765807216180.Spec := by
  intro n
  simp only [A015848, Nat.add_sub_cancel]

end A015848

/-! ## A015848.P11115836543204737239

`∩[A015823(n+1), A121816(n+4)]`
-/

namespace A015848.P11115836543204737239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121816 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015848.P11115836543204737239

namespace A015848

/-- `∩[A015823(n+1), A121816(n+4)]` -/
def P11115836543204737239.Spec : Prop :=
  ∀ n, (P11115836543204737239.a n : ℤ) = A015848 (n + 1)

end A015848

/-! ## A015848.P17244195265109235255

`∩[A015823(n+1), A008619(n)+n]`
-/

namespace A015848.P17244195265109235255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015848.P17244195265109235255

namespace A015848

/-- `∩[A015823(n+1), A008619(n)+n]` -/
def P17244195265109235255.Spec : Prop :=
  ∀ n, (P17244195265109235255.a n : ℤ) = A015848 (n + 1)

end A015848

/-! ## A015848.P15285730365938579887

`filter[A015823(n+1), A011655(#)]`
-/

namespace A015848.P15285730365938579887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A015848.P15285730365938579887

namespace A015848

/-- `filter[A015823(n+1), A011655(#)]` -/
def P15285730365938579887.Spec : Prop :=
  ∀ n, P15285730365938579887.a n = A015848 (n + 1)

end A015848

/-! ## A015848.P2994695431797043364

`filter[A015823(n+1), A267208(#)]`
-/

namespace A015848.P2994695431797043364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A015848.P2994695431797043364

namespace A015848

/-- `filter[A015823(n+1), A267208(#)]` -/
def P2994695431797043364.Spec : Prop :=
  ∀ n, P2994695431797043364.a n = A015848 (n + 1)

end A015848

/-!
# A015849: Numbers n such that phi(n + 9) | sigma(n) for n not congruent to 0 (mod 3).

The programs for A015849, there is no canonical definition to state claims against.
-/

/-! ## A015849.P12318172886874268744

`∩[A001651(n+1), A015827(n+1)]`
-/

namespace A015849.P12318172886874268744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015849.P12318172886874268744

/-! ## A015849.P14649017940623175703

`∩[A065033(n+1)+n, A015827(n+2)]`
-/

namespace A015849.P14649017940623175703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015827 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015849.P14649017940623175703

/-! ## A015849.P17721372760528021381

`filter[A015827(n+1), A011655(#)]`
-/

namespace A015849.P17721372760528021381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A015849.P17721372760528021381

/-! ## A015849.P1534346653463013300

`filter[A015827(n+1), A267208(#)]`
-/

namespace A015849.P1534346653463013300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A015849.P1534346653463013300

/-!
# A015850: Numbers k such that phi(k + 12) | sigma(k) for k not congruent to 0 (mod 3).

The programs for A015850, there is no canonical definition to state claims against.
-/

/-! ## A015850.P629562390143496762

`∩[A001651(n+1), A015832(n+1)]`
-/

namespace A015850.P629562390143496762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015850.P629562390143496762

/-! ## A015850.P12347252329914363311

`∩[A015832(n+1), A121816(n+4)]`
-/

namespace A015850.P12347252329914363311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121816 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015850.P12347252329914363311

/-! ## A015850.P1727512776589441634

`filter[A015832(n+1), A011655(#)]`
-/

namespace A015850.P1727512776589441634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A015850.P1727512776589441634

/-! ## A015850.P8111667585107525991

`filter[A015832(n+1), A267208(#)]`
-/

namespace A015850.P8111667585107525991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A015850.P8111667585107525991

/-! ## A015850.P16591060938818379822

`∩[A065033(3*n+4), A015832(n+1)]`
-/

namespace A015850.P16591060938818379822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A015850.P16591060938818379822

/-!
# A015851: Numbers k such that phi(k) | sigma(k + 8).

The programs for A015851, there is no canonical definition to state claims against.
-/

/-! ## A015851.P2055056229123178080

`eq[1, A124182(A300584(n))]`
-/

namespace A015851.P2055056229123178080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124182 (A300584 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015851.P2055056229123178080

/-!
# A015852: Inverse of 1843rd cyclotomic polynomial.

The programs for A015852, there is no canonical definition to state claims against.
-/

/-! ## A015852.P6536308502671673513

`C(2, A326683(n+4))`
-/

namespace A015852.P6536308502671673513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A326683 (n + 4)).toNat

end

end A015852.P6536308502671673513

/-! ## A015852.P16085784629680929670

`C(floor(1/(n+1)), ∑[A137579(n+4)])`
-/

namespace A015852.P16085784629680929670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊1 / (n + 1 : ℚ)⌋.toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015852.P16085784629680929670

/-! ## A015852.P11389989904699311008

`C(2, A074441(A280953(n)))`
-/

namespace A015852.P11389989904699311008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A074441 (A280953 n).toNat).toNat

end

end A015852.P11389989904699311008

/-! ## A015852.P8331267080517882349

`C(2, A326685(A151800(n)))`
-/

namespace A015852.P8331267080517882349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A326685 (A151800 n).toNat).toNat

end

end A015852.P8331267080517882349

/-! ## A015852.P1515168180030873285

`A000007(∑[∑[A105514(n)]])`
-/

namespace A015852.P1515168180030873285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105514 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015852.P1515168180030873285

/-! ## A015852.P3600324044103587815

`A019590(A326680(n+1)+1)`
-/

namespace A015852.P3600324044103587815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A326680 (n + 1) + 1).toNat

end

end A015852.P3600324044103587815

/-! ## A015852.P14949825595966456471

`1-A057427(A326683(n+1))`
-/

namespace A015852.P14949825595966456471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057427 (A326683 (n + 1)).toNat

end

end A015852.P14949825595966456471

/-! ## A015852.P9374916665510441476

`A212793(∏[Δ[A263715(n+1)]])`
-/

namespace A015852.P9374916665510441476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263715 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015852.P9374916665510441476

/-!
# A015853: Numbers k such that phi(k) | sigma(k + 9).

The programs for A015853, the canonical program `A015853.P2283416451843243793` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015853 has offset 1).

The definition of A015853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 269 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015853.P2283416451843243793

`lt[A000203(n+10)%A000010(n+1), 1]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A015853

/-- `lt[A000203(n+10)%A000010(n+1), 1]+1` -/
def P2283416451843243793.Spec : Prop :=
  ∀ n, (P2283416451843243793.a n : ℤ) = A015853 (n + 1)

theorem P2283416451843243793.correct : P2283416451843243793.Spec := by
  intro n
  simp only [A015853, Nat.add_sub_cancel]

end A015853

/-!
# A015854: Inverse of 1845th cyclotomic polynomial.

The programs for A015854, there is no canonical definition to state claims against.
-/

/-! ## A015854.P12241918065164280193

`A016124(n)*A381031(A296911(n))`
-/

namespace A015854.P12241918065164280193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016124 n * A381031 (A296911 n).toNat

end

end A015854.P12241918065164280193

/-! ## A015854.P740155924542986502

`A010059(A320742(n+1))*A016124(n)`
-/

namespace A015854.P740155924542986502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A320742 (n + 1)).toNat * A016124 n

end

end A015854.P740155924542986502

/-! ## A015854.P5164584870574865686

`A016124(n)*A078379(A129319(n+4))`
-/

namespace A015854.P5164584870574865686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016124 n * A078379 (A129319 (n + 4)).toNat

end

end A015854.P5164584870574865686

/-! ## A015854.P3886306285651292944

`A016124(n)^A194746(A129319(n+4)+1)`
-/

namespace A015854.P3886306285651292944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016124 n : ℚ) ^ (A194746 (A129319 (n + 4) + 1).toNat : ℤ)

end

end A015854.P3886306285651292944

/-!
# A015855: Inverse of 1846th cyclotomic polynomial.

The programs for A015855, there is no canonical definition to state claims against.
-/

/-! ## A015855.P4854821603366968098

`A014932(n)*A033999(n)`
-/

namespace A015855.P4854821603366968098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014932 n * A033999 n

end

end A015855.P4854821603366968098

/-! ## A015855.P9687335388032332534

`A010815(A351290(n+1)+A000326(n))`
-/

namespace A015855.P9687335388032332534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A351290 (n + 1) + A000326 n).toNat

end

end A015855.P9687335388032332534

/-! ## A015855.P17008851168260944295

`A010815(A374249(n+1)+A000326(n))`
-/

namespace A015855.P17008851168260944295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A374249 (n + 1) + A000326 n).toNat

end

end A015855.P17008851168260944295

/-! ## A015855.P8839906281350060031

`A010815(A127321(n+2))^A374249(n+1)`
-/

namespace A015855.P8839906281350060031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010815 (A127321 (n + 2)).toNat : ℚ) ^ (A374249 (n + 1) : ℤ)

end

end A015855.P8839906281350060031

/-!
# A015857: Inverse of 1848th cyclotomic polynomial.

The programs for A015857, there is no canonical definition to state claims against.
-/

/-! ## A015857.P10988540781295348322

`A014933(lcm(2, n)/2)`
-/

namespace A015857.P10988540781295348322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014933 (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2)).toNat

end

end A015857.P10988540781295348322

/-! ## A015857.P14257817298425301282

`A014933(A004525(n))`
-/

namespace A015857.P14257817298425301282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014933 (A004525 n).toNat

end

end A015857.P14257817298425301282

/-! ## A015857.P8825811867071768374

`A014933(A026741(n))`
-/

namespace A015857.P8825811867071768374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014933 (A026741 n).toNat

end

end A015857.P8825811867071768374

/-! ## A015857.P7396462941780735554

`A014933(A186813(n))`
-/

namespace A015857.P7396462941780735554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014933 (A186813 n).toNat

end

end A015857.P7396462941780735554

/-! ## A015857.P16345550578526044047

`A014933(A057979(n+1))`
-/

namespace A015857.P16345550578526044047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014933 (A057979 (n + 1)).toNat

end

end A015857.P16345550578526044047

/-! ## A015857.P1762878145316682758

`A014933(A116921(n+1))`
-/

namespace A015857.P1762878145316682758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014933 (A116921 (n + 1)).toNat

end

end A015857.P1762878145316682758

/-! ## A015857.P17885588917676785402

`A014933(A174239(n+1))`
-/

namespace A015857.P17885588917676785402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014933 (A174239 (n + 1)).toNat

end

end A015857.P17885588917676785402

/-! ## A015857.P7134571003007055544

`A015395(A160079(n))`
-/

namespace A015857.P7134571003007055544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015395 (A160079 n).toNat

end

end A015857.P7134571003007055544

/-! ## A015857.P5837969693832299938

`A015395(A342131(n))`
-/

namespace A015857.P5837969693832299938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015395 (A342131 n).toNat

end

end A015857.P5837969693832299938

/-!
# A015862: Inverse of 1853rd cyclotomic polynomial.

The programs for A015862, there is no canonical definition to state claims against.
-/

/-! ## A015862.P6132352822569398152

`A015930(record[A008612(A249571(n+1))])`
-/

namespace A015862.P6132352822569398152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A249571 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015930 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A015862.P6132352822569398152

/-! ## A015862.P11667107918284956216

`floor(3/(A326545(n+1)+sqrt(8)))`
-/

namespace A015862.P11667107918284956216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / ((A326545 (n + 1) : ℝ) + Real.sqrt (8 : ℝ))⌋

end

end A015862.P11667107918284956216

/-! ## A015862.P9325979182032214783

`A023916(A065685(n+1)^10)`
-/

namespace A015862.P9325979182032214783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023916 (A065685 (n + 1) ^ 10).toNat

end

end A015862.P9325979182032214783

/-! ## A015862.P8179390797762648465

`A030315(A065685(n+1)^10)`
-/

namespace A015862.P8179390797762648465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030315 (A065685 (n + 1) ^ 10).toNat

end

end A015862.P8179390797762648465

/-! ## A015862.P7284379507979862128

`A000007(∑[∑[A185715(n+2)]])`
-/

namespace A015862.P7284379507979862128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185715 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015862.P7284379507979862128

/-! ## A015862.P15850668067057959288

`A353682(3^A236241(n+3)+2)`
-/

namespace A015862.P15850668067057959288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353682 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A236241 (n + 3) : ℤ) + 2)).toNat

end

end A015862.P15850668067057959288

/-! ## A015862.P11531622104295930128

`C(A014082(n), A326544(n+1))`
-/

namespace A015862.P11531622104295930128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014082 n).toNat (A326544 (n + 1)).toNat

end

end A015862.P11531622104295930128

/-! ## A015862.P16143512126857786365

`C(A059895(n+2), A326544(n+1))`
-/

namespace A015862.P16143512126857786365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A059895 (n + 2)).toNat (A326544 (n + 1)).toNat

end

end A015862.P16143512126857786365

/-! ## A015862.P9085744898028689377

`C(A025428(n+4), A326544(n+1))`
-/

namespace A015862.P9085744898028689377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025428 (n + 4)).toNat (A326544 (n + 1)).toNat

end

end A015862.P9085744898028689377

/-! ## A015862.P8061747089917279366

`A010060(ceil(root(A029900(2*(n+2)), 6)))`
-/

namespace A015862.P8061747089917279366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 ⌈(A029900 (2 * (n + 2)) : ℝ) ^ (1 / (6 : ℝ))⌉.toNat

end

end A015862.P8061747089917279366

/-! ## A015862.P9292012011498758472

`C(A000122(A279429(2*n+1)), A048037(n+1))`
-/

namespace A015862.P9292012011498758472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000122 (A279429 (2 * n + 1)).toNat).toNat (A048037 (n + 1)).toNat

end

end A015862.P9292012011498758472

/-!
# A015863: Numbers k such that sigma(k) = sigma(k+4).

The programs for A015863, there is no canonical definition to state claims against.
-/

/-! ## A015863.P9622704728813346601

`A223091(n+1)-2`
-/

namespace A015863.P9622704728813346601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223091 (n + 1) - 2

end

end A015863.P9622704728813346601

/-! ## A015863.P41690285510672776

`record[A223091(A065648(n))-2]`
-/

namespace A015863.P41690285510672776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223091 (A065648 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015863.P41690285510672776

/-! ## A015863.P18058852171502054242

`A329484(A065091(n+1))+A223091(n+1)`
-/

namespace A015863.P18058852171502054242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329484 (A065091 (n + 1)).toNat + A223091 (n + 1)

end

end A015863.P18058852171502054242

/-! ## A015863.P11523557761934750287

`A329484(p?[A346392(n+1)])+A223091(n+1)`
-/

namespace A015863.P11523557761934750287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329484 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A223091 (n + 1)

end

end A015863.P11523557761934750287

/-! ## A015863.P1099750897975089745

`A329484(A002144(n+1))+A223091(n+1)`
-/

namespace A015863.P1099750897975089745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329484 (A002144 (n + 1)).toNat + A223091 (n + 1)

end

end A015863.P1099750897975089745

/-! ## A015863.P7398916843830267041

`A329484(A106950(n+1))+A223091(n+1)`
-/

namespace A015863.P7398916843830267041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329484 (A106950 (n + 1)).toNat + A223091 (n + 1)

end

end A015863.P7398916843830267041

/-! ## A015863.P5498750857062886408

`record[A223091(A028920(n))-2]`
-/

namespace A015863.P5498750857062886408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223091 (A028920 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015863.P5498750857062886408

/-! ## A015863.P11909964662362312208

`A329484(A271799(n+1))+A223091(n+1)`
-/

namespace A015863.P11909964662362312208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329484 (A271799 (n + 1)).toNat + A223091 (n + 1)

end

end A015863.P11909964662362312208

/-! ## A015863.P17349867021525589877

`A329484(A090471(n+1))+A223091(n+1)`
-/

namespace A015863.P17349867021525589877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329484 (A090471 (n + 1)).toNat + A223091 (n + 1)

end

end A015863.P17349867021525589877

/-!
# A015864: Inverse of 1855th cyclotomic polynomial.

The programs for A015864, there is no canonical definition to state claims against.
-/

/-! ## A015864.P5743306934127526513

`A016144(n)^A000027(A005902(n))`
-/

namespace A015864.P5743306934127526513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016144 n : ℚ) ^ (A000027 (A005902 n).toNat : ℤ)

end

end A015864.P5743306934127526513

/-! ## A015864.P17559113726354076093

`A016144(n)^A383484(A121153(n+1))`
-/

namespace A015864.P17559113726354076093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016144 n : ℚ) ^ (A383484 (A121153 (n + 1)).toNat : ℤ)

end

end A015864.P17559113726354076093

/-! ## A015864.P12700300642682538708

`A016144(n)^A383484(A003238(n+1))`
-/

namespace A015864.P12700300642682538708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016144 n : ℚ) ^ (A383484 (A003238 (n + 1)).toNat : ℤ)

end

end A015864.P12700300642682538708

/-! ## A015864.P5502033422754132622

`A016074(n)%A157439(n)`
-/

namespace A015864.P5502033422754132622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016074 n) (A157439 n)

end

end A015864.P5502033422754132622

/-! ## A015864.P5354371160486892473

`A016144(n)%A157439(n)`
-/

namespace A015864.P5354371160486892473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016144 n) (A157439 n)

end

end A015864.P5354371160486892473

/-!
# A015866: Numbers k such that sigma(k) = sigma(k+6).

The programs for A015866, there is no canonical definition to state claims against.
-/

/-! ## A015866.P12540940272692985632

`eq[A039653(n+6), A039653(n)]`
-/

namespace A015866.P12540940272692985632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A015866.P12540940272692985632

/-! ## A015866.P17361745283560063178

`eq[6, A282255(A233583(n+1))]`
-/

namespace A015866.P17361745283560063178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282255 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015866.P17361745283560063178

/-! ## A015866.P7008290744782636482

`eq[A000203(A233583(n+1)), A000203(n+6)]`
-/

namespace A015866.P7008290744782636482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 6)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A015866.P7008290744782636482

/-!
# A015867: Numbers k such that sigma(k) = sigma(k+7).

The programs for A015867, there is no canonical definition to state claims against.
-/

/-! ## A015867.P7583611151723711521

`eq[7, A333947(A028310(n))]`
-/

namespace A015867.P7583611151723711521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333947 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015867.P7583611151723711521

/-! ## A015867.P12427438098321341046

`A065475(eq[7, A333947(n+1)])`
-/

namespace A015867.P12427438098321341046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015867.P12427438098321341046

/-! ## A015867.P14697294527998497321

`eq[A039653(A020719(n)), A039653(n)]`
-/

namespace A015867.P14697294527998497321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A020719 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A015867.P14697294527998497321

/-!
# A015868: Inverse of 1859th cyclotomic polynomial.

The programs for A015868, the canonical program `A015868.P8293297095464121199` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015868 has offset 0).

The definition of A015868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015868.P16185624045259902764

`A014790(10*(6*n+1))`
-/

namespace A015868.P16185624045259902764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014790 (10 * (6 * n + 1))

end

end A015868.P16185624045259902764

namespace A015868

/-- `A014790(10*(6*n+1))` -/
def P16185624045259902764.Spec : Prop :=
  ∀ n, P16185624045259902764.a n = A015868 n

end A015868

/-! ## A015868.P13234602547817085481

`A057427(A107502(n²))`
-/

namespace A015868.P13234602547817085481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A107502 (n ^ 2)).toNat

end

end A015868.P13234602547817085481

namespace A015868

/-- `A057427(A107502(n²))` -/
def P13234602547817085481.Spec : Prop :=
  ∀ n, P13234602547817085481.a n = A015868 n

end A015868

/-! ## A015868.P10160647419004003696

`A374092(gcd(A016921(n+2), A195025(2*n)))`
-/

namespace A015868.P10160647419004003696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374092 (Int.gcd (A016921 (n + 2)) (A195025 (2 * n)))

end

end A015868.P10160647419004003696

namespace A015868

/-- `A374092(gcd(A016921(n+2), A195025(2*n)))` -/
def P10160647419004003696.Spec : Prop :=
  ∀ n, P10160647419004003696.a n = A015868 n

end A015868

/-! ## A015868.P8293297095464121199

`A010054(A011583(n)+A000217(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A015868

/-- `A010054(A011583(n)+A000217(n))` -/
def P8293297095464121199.Spec : Prop :=
  ∀ n, P8293297095464121199.a n = A015868 n

theorem P8293297095464121199.correct : P8293297095464121199.Spec := by
  intro n
  simp only [A015868]

end A015868

/-! ## A015868.P14003966662269813150

`A014022(A056119(n))`
-/

namespace A015868.P14003966662269813150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014022 (A056119 n).toNat

end

end A015868.P14003966662269813150

namespace A015868

/-- `A014022(A056119(n))` -/
def P14003966662269813150.Spec : Prop :=
  ∀ n, P14003966662269813150.a n = A015868 n

end A015868

/-! ## A015868.P17671132472773281695

`A011583(A167499(n+5))+1`
-/

namespace A015868.P17671132472773281695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011583 (A167499 (n + 5)).toNat + 1

end

end A015868.P17671132472773281695

namespace A015868

/-- `A011583(A167499(n+5))+1` -/
def P17671132472773281695.Spec : Prop :=
  ∀ n, P17671132472773281695.a n = A015868 n

end A015868

/-! ## A015868.P10336962163731731794

`A000035(A145472(n+1)+A011583(n))`
-/

namespace A015868.P10336962163731731794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A145472 (n + 1) + A011583 n).toNat

end

end A015868.P10336962163731731794

namespace A015868

/-- `A000035(A145472(n+1)+A011583(n))` -/
def P10336962163731731794.Spec : Prop :=
  ∀ n, P10336962163731731794.a n = A015868 n

end A015868

/-! ## A015868.P5849046499771688866

`A000007(A070436(n)*A118848(n+1))`
-/

namespace A015868.P5849046499771688866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A070436 n * A118848 (n + 1)).toNat

end

end A015868.P5849046499771688866

namespace A015868

/-- `A000007(A070436(n)*A118848(n+1))` -/
def P5849046499771688866.Spec : Prop :=
  ∀ n, P5849046499771688866.a n = A015868 n

end A015868

/-! ## A015868.P4345895227557435597

`A366593(A011583(n)^A185798(2*n+3))`
-/

namespace A015868.P4345895227557435597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366593 (SequenceMachineLib.roundAway ((A011583 n : ℚ) ^ (A185798 (2 * n + 3) : ℤ))).toNat

end

end A015868.P4345895227557435597

namespace A015868

/-- `A366593(A011583(n)^A185798(2*n+3))` -/
def P4345895227557435597.Spec : Prop :=
  ∀ n, P4345895227557435597.a n = A015868 n

end A015868

/-! ## A015868.P8734789779911505003

`A174617(gcd(n², A016777(3*n+4)))`
-/

namespace A015868.P8734789779911505003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174617 (Int.gcd (n ^ 2 : ℤ) (A016777 (3 * n + 4)))

end

end A015868.P8734789779911505003

namespace A015868

/-- `A174617(gcd(n², A016777(3*n+4)))` -/
def P8734789779911505003.Spec : Prop :=
  ∀ n, P8734789779911505003.a n = A015868 n

end A015868

/-! ## A015868.P10630974552171334838

`A059841(A151920(2*n+1)+A011583(n))`
-/

namespace A015868.P10630974552171334838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A151920 (2 * n + 1) + A011583 n).toNat

end

end A015868.P10630974552171334838

namespace A015868

/-- `A059841(A151920(2*n+1)+A011583(n))` -/
def P10630974552171334838.Spec : Prop :=
  ∀ n, P10630974552171334838.a n = A015868 n

end A015868

/-! ## A015868.P11994879623322975873

`1-A011583(n²)`
-/

namespace A015868.P11994879623322975873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A011583 (n ^ 2)

end

end A015868.P11994879623322975873

namespace A015868

/-- `1-A011583(n²)` -/
def P11994879623322975873.Spec : Prop :=
  ∀ n, P11994879623322975873.a n = A015868 n

end A015868

/-! ## A015868.P2049760782014173359

`A326028(gcd(A016777(2*n+4), A118759(n)))`
-/

namespace A015868.P2049760782014173359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326028 (Int.gcd (A016777 (2 * n + 4)) (A118759 n))

end

end A015868.P2049760782014173359

namespace A015868

/-- `A326028(gcd(A016777(2*n+4), A118759(n)))` -/
def P2049760782014173359.Spec : Prop :=
  ∀ n, P2049760782014173359.a n = A015868 n

end A015868

/-! ## A015868.P15422783976192491905

`1-A070636(n²)`
-/

namespace A015868.P15422783976192491905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A070636 (n ^ 2)

end

end A015868.P15422783976192491905

namespace A015868

/-- `1-A070636(n²)` -/
def P15422783976192491905.Spec : Prop :=
  ∀ n, P15422783976192491905.a n = A015868 n

end A015868

/-!
# A015869: Inverse of 1860th cyclotomic polynomial.

The programs for A015869, there is no canonical definition to state claims against.
-/

/-! ## A015869.P12430030958107551994

`Δ[A325389(n+5)]*A016229(n)`
-/

namespace A015869.P12430030958107551994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325389 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A016229 n

end

end A015869.P12430030958107551994

/-!
# A015872: Numbers k such that phi(k + 6) | sigma(k) + 6.

The programs for A015872, there is no canonical definition to state claims against.
-/

/-! ## A015872.P16561225961398945747

`eq[4, n²%floor((floor(n/2)/2+1)²)]`
-/

namespace A015872.P16561225961398945747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) ⌊((⌊(n : ℚ) / 2⌋ : ℚ) / 2 + 1) ^ 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015872.P16561225961398945747

/-!
# A015873: Numbers k such that phi(k + 8) | sigma(k) + 8.

The programs for A015873, there is no canonical definition to state claims against.
-/

/-! ## A015873.P16505617482416879243

`A102826(A124315(n+1)+A017221(n))`
-/

namespace A015873.P16505617482416879243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102826 (A124315 (n + 1) + A017221 n).toNat

end

end A015873.P16505617482416879243

/-!
# A015876: Numbers k such that sigma(k) = sigma(k+8).

The programs for A015876, there is no canonical definition to state claims against.
-/

/-! ## A015876.P2371115860541198106

`eq[8, A333947(n+1)]+1`
-/

namespace A015876.P2371115860541198106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333947 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A015876.P2371115860541198106

/-! ## A015876.P10782669229586798212

`eq[8, A333947(A028310(n))]`
-/

namespace A015876.P10782669229586798212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333947 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015876.P10782669229586798212

/-! ## A015876.P9211325030606460290

`A011760(eq[8, A333947(n+1)])`
-/

namespace A015876.P9211325030606460290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015876.P9211325030606460290

/-! ## A015876.P1433616658274396395

`A020725(eq[8, A333947(n+1)])`
-/

namespace A015876.P1433616658274396395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015876.P1433616658274396395

/-! ## A015876.P16931942675230892931

`A114637(eq[8, A333947(n+1)])`
-/

namespace A015876.P16931942675230892931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015876.P16931942675230892931

/-!
# A015877: Numbers k such that sigma(k) = sigma(k+9).

The programs for A015877, there is no canonical definition to state claims against.
-/

/-! ## A015877.P15208915281009151456

`eq[A039653(A020723(n)), A039653(n)]`
-/

namespace A015877.P15208915281009151456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A020723 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A015877.P15208915281009151456

/-!
# A015879: Inverse of 1870th cyclotomic polynomial.

The programs for A015879, there is no canonical definition to state claims against.
-/

/-! ## A015879.P10860533762521687129

`A014944(n)*A033999(n)`
-/

namespace A015879.P10860533762521687129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014944 n * A033999 n

end

end A015879.P10860533762521687129

/-!
# A015880: Numbers k such that sigma(k) = sigma(k+10).

The programs for A015880, there is no canonical definition to state claims against.
-/

/-! ## A015880.P16355437784546596108

`eq[10, A333947(A028310(n))]`
-/

namespace A015880.P16355437784546596108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333947 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015880.P16355437784546596108

/-! ## A015880.P17659493497175012114

`A065475(eq[10, A333947(n+1)])`
-/

namespace A015880.P17659493497175012114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015880.P17659493497175012114

/-!
# A015881: Numbers k such that sigma(k) = sigma(k+11).

The programs for A015881, there is no canonical definition to state claims against.
-/

/-! ## A015881.P18412925323193164792

`eq[11, A333947(A028310(n))]`
-/

namespace A015881.P18412925323193164792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333947 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015881.P18412925323193164792

/-! ## A015881.P10832903816230167012

`A065475(eq[11, A333947(n+1)])`
-/

namespace A015881.P10832903816230167012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015881.P10832903816230167012

/-!
# A015885: Inverse of 1876th cyclotomic polynomial.

The programs for A015885, there is no canonical definition to state claims against.
-/

/-! ## A015885.P3261634161822546788

`A015997(n)*A034968(A245851(n+1))`
-/

namespace A015885.P3261634161822546788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015997 n * A034968 (A245851 (n + 1)).toNat

end

end A015885.P3261634161822546788

/-! ## A015885.P14450184091216065129

`A015997(n)^A003340(A245851(n+1)+1)`
-/

namespace A015885.P14450184091216065129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015997 n : ℚ) ^ (A003340 (A245851 (n + 1) + 1).toNat : ℤ)

end

end A015885.P14450184091216065129

/-! ## A015885.P17157426539719245392

`A015997(n)^A003625(A245851(n+1)+1)`
-/

namespace A015885.P17157426539719245392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015997 n : ℚ) ^ (A003625 (A245851 (n + 1) + 1).toNat : ℤ)

end

end A015885.P17157426539719245392

/-! ## A015885.P15844687232127965098

`A015997(n)^A006567(A245851(n+1)+1)`
-/

namespace A015885.P15844687232127965098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015997 n : ℚ) ^ (A006567 (A245851 (n + 1) + 1).toNat : ℤ)

end

end A015885.P15844687232127965098

/-! ## A015885.P11757944165301622646

`A015997(n)^A034968(A245851(n+1)+1)`
-/

namespace A015885.P11757944165301622646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015997 n : ℚ) ^ (A034968 (A245851 (n + 1) + 1).toNat : ℤ)

end

end A015885.P11757944165301622646

/-! ## A015885.P2680429312303694282

`A015997(n)^A036043(A245851(n+1)+1)`
-/

namespace A015885.P2680429312303694282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015997 n : ℚ) ^ (A036043 (A245851 (n + 1) + 1).toNat : ℤ)

end

end A015885.P2680429312303694282

/-! ## A015885.P9377806402340539477

`A015997(n)^A062383(A245851(n+1)-1)`
-/

namespace A015885.P9377806402340539477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015997 n : ℚ) ^ (A062383 (A245851 (n + 1) - 1).toNat : ℤ)

end

end A015885.P9377806402340539477

/-! ## A015885.P4705700885433800762

`A015997(n)^(A141294(A245851(n+1)+1)+1)`
-/

namespace A015885.P4705700885433800762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015997 n : ℚ) ^ (A141294 (A245851 (n + 1) + 1).toNat + 1 : ℤ)

end

end A015885.P4705700885433800762

/-! ## A015885.P8903761284555702267

`A015997(n)^(A017221(A245851(n+1)+n)-1)`
-/

namespace A015885.P8903761284555702267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015997 n : ℚ) ^ (A017221 (A245851 (n + 1) + (n : ℤ)).toNat - 1 : ℤ)

end

end A015885.P8903761284555702267

/-! ## A015885.P3430980877000718773

`A014541(n)*A014562(A046816(3*n+1))`
-/

namespace A015885.P3430980877000718773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014541 n * A014562 (A046816 (3 * n + 1)).toNat

end

end A015885.P3430980877000718773

/-!
# A015889: Numbers k that divide 4^k + 4.

The programs for A015889, there is no canonical definition to state claims against.
-/

/-! ## A015889.P6122628706156061273

`record[gcd(4^(n+1)+4, n+1)]`
-/

namespace A015889.P6122628706156061273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (4 ^ (n + 1) + 4) (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015889.P6122628706156061273

/-! ## A015889.P14413805896537757923

`A018360(∑[round(sqrt(n))!])`
-/

namespace A015889.P14413805896537757923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018360 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015889.P14413805896537757923

/-! ## A015889.P12775539991510827568

`A018360(record[abs(xor(1, n-2))])`
-/

namespace A015889.P12775539991510827568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 ((n : ℤ) - 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018360 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A015889.P12775539991510827568

/-!
# A015890: Inverse of 1881st cyclotomic polynomial.

The programs for A015890, there is no canonical definition to state claims against.
-/

/-! ## A015890.P6102015988498533983

`A016286(n)*A016288(A271315(n))`
-/

namespace A015890.P6102015988498533983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016286 n * A016288 (A271315 n).toNat

end

end A015890.P6102015988498533983

/-!
# A015893: Numbers k such that k | 7^k + 7.

The programs for A015893, there is no canonical definition to state claims against.
-/

/-! ## A015893.P11570435906788438204

`record[gcd(A005496(n), A045850(n))]`
-/

namespace A015893.P11570435906788438204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005496 n) (A045850 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015893.P11570435906788438204

/-! ## A015893.P16253775665741569827

`record[gcd(n, A257948(A124095(n)))]`
-/

namespace A015893.P16253775665741569827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A257948 (A124095 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015893.P16253775665741569827

/-! ## A015893.P10949369065179817332

`record[gcd(A026730(n), A257948(n+1))]`
-/

namespace A015893.P10949369065179817332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026730 n) (A257948 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015893.P10949369065179817332

/-! ## A015893.P7688891341265788412

`record[gcd(A155212(n), A222417(n+1))]`
-/

namespace A015893.P7688891341265788412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A155212 n) (A222417 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015893.P7688891341265788412

/-!
# A015895: Inverse of 1886th cyclotomic polynomial.

The programs for A015895, there is no canonical definition to state claims against.
-/

/-! ## A015895.P4600727189036507252

`(xor(1, n)-n)*A014952(n)`
-/

namespace A015895.P4600727189036507252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 1 n : ℤ) - (n : ℤ)) * A014952 n

end

end A015895.P4600727189036507252

/-! ## A015895.P15556558549264108418

`A014952(n)*A033999(n)`
-/

namespace A015895.P15556558549264108418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014952 n * A033999 n

end

end A015895.P15556558549264108418

/-! ## A015895.P13434202371539505145

`A015987(n)%A282535(n+4)`
-/

namespace A015895.P13434202371539505145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015987 n) (A282535 (n + 4))

end

end A015895.P13434202371539505145

/-! ## A015895.P6102801230315186796

`A016171(n)%A282535(n+4)`
-/

namespace A015895.P6102801230315186796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016171 n) (A282535 (n + 4))

end

end A015895.P6102801230315186796

/-!
# A015896: Inverse of 1887th cyclotomic polynomial.

The programs for A015896, there is no canonical definition to state claims against.
-/

/-! ## A015896.P236172813130263779

`A016100(n)%A182744(n+1)`
-/

namespace A015896.P236172813130263779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016100 n) (A182744 (n + 1))

end

end A015896.P236172813130263779

/-! ## A015896.P14461316189942904757

`A016202(n)%A182744(n+1)`
-/

namespace A015896.P14461316189942904757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016202 n) (A182744 (n + 1))

end

end A015896.P14461316189942904757

/-! ## A015896.P12908266928758921084

`A336118(A016116(n))+A016100(n)`
-/

namespace A015896.P12908266928758921084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336118 (A016116 n).toNat + A016100 n

end

end A015896.P12908266928758921084

/-! ## A015896.P14777915334048240637

`A011649(n)*A033999(n)`
-/

namespace A015896.P14777915334048240637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011649 n * A033999 n

end

end A015896.P14777915334048240637

/-! ## A015896.P2224554646221417901

`A016100(n)%A037300(n)`
-/

namespace A015896.P2224554646221417901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016100 n) (A037300 n)

end

end A015896.P2224554646221417901

/-!
# A015897: Numbers k such that k | 8^k + 8.

The programs for A015897, there is no canonical definition to state claims against.
-/

/-! ## A015897.P12870677009184447892

`A266648(n)+A022307(A270613(2*(n+1)))`
-/

namespace A015897.P12870677009184447892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266648 n + A022307 (A270613 (2 * (n + 1))).toNat

end

end A015897.P12870677009184447892

/-! ## A015897.P14758982630518532111

`record[A085735(A227153(n))]`
-/

namespace A015897.P14758982630518532111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085735 (A227153 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015897.P14758982630518532111

/-! ## A015897.P15979628189506124239

`eq[A126012(n), A140254(n+1)]`
-/

namespace A015897.P15979628189506124239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140254 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A015897.P15979628189506124239

/-! ## A015897.P7622629032302869296

`eq[A126012(n), A346612(n+1)]`
-/

namespace A015897.P7622629032302869296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346612 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A015897.P7622629032302869296

/-! ## A015897.P14244708151216905048

`A330813(A381225(n))`
-/

namespace A015897.P14244708151216905048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330813 (A381225 n).toNat

end

end A015897.P14244708151216905048

/-!
# A015898: Numbers k such that k | 9^k + 9.

The programs for A015898, there is no canonical definition to state claims against.
-/

/-! ## A015898.P328198069561422388

`eq[gcd(90, n), A263273(n)]`
-/

namespace A015898.P328198069561422388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 90 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263273 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A015898.P328198069561422388

/-! ## A015898.P10296371420721836007

`eq[gcd(2, n+1), A054710(n+1)]+1`
-/

namespace A015898.P10296371420721836007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054710 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A015898.P10296371420721836007

/-! ## A015898.P17127722796303483635

`eq[lcm(9, n)/9, A002211(lcm(9, n)/9)]`
-/

namespace A015898.P17127722796303483635
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 9 n : ℚ) / 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002211 (SequenceMachineLib.roundAway ((Nat.lcm 9 n : ℚ) / 9)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A015898.P17127722796303483635

/-! ## A015898.P17765483973611981470

`A018278(round(sqrt(n²+1))+ceil(n/ϕ²))`
-/

namespace A015898.P17765483973611981470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018278 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + ⌈(n : ℝ) / Real.goldenRatio ^ 2⌉).toNat

end

end A015898.P17765483973611981470

/-! ## A015898.P17798479602595131065

`record[A276086(Δ[A342517(n)])]`
-/

namespace A015898.P17798479602595131065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342517 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015898.P17798479602595131065

/-!
# A015899: Inverse of 1890th cyclotomic polynomial.

The programs for A015899, there is no canonical definition to state claims against.
-/

/-! ## A015899.P4247455272457132200

`A015269(round(2*n/3))`
-/

namespace A015899.P4247455272457132200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015269 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat

end

end A015899.P4247455272457132200

/-! ## A015899.P7650143692717365167

`A014639(A051176(n))`
-/

namespace A015899.P7650143692717365167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014639 (A051176 n).toNat

end

end A015899.P7650143692717365167

/-! ## A015899.P16658781198018986821

`A014849(A074307(n))`
-/

namespace A015899.P16658781198018986821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014849 (A074307 n).toNat

end

end A015899.P16658781198018986821

/-! ## A015899.P6072516429139606670

`A014849(A168222(n))`
-/

namespace A015899.P6072516429139606670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014849 (A168222 n).toNat

end

end A015899.P6072516429139606670

/-! ## A015899.P8074835339536759107

`A010892(n)*A014954(n)`
-/

namespace A015899.P8074835339536759107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A014954 n

end

end A015899.P8074835339536759107

/-! ## A015899.P11788492274500982926

`A014027(n)*A014954(n)`
-/

namespace A015899.P11788492274500982926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014027 n * A014954 n

end

end A015899.P11788492274500982926

/-! ## A015899.P2062498531500929946

`A014954(n)*A033999(n)`
-/

namespace A015899.P2062498531500929946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014954 n * A033999 n

end

end A015899.P2062498531500929946

/-! ## A015899.P3911681942832883971

`A014954(n)*A057079(n)`
-/

namespace A015899.P3911681942832883971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014954 n * A057079 n

end

end A015899.P3911681942832883971

/-! ## A015899.P12564929378553174003

`A014954(n)*A081729(n)`
-/

namespace A015899.P12564929378553174003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014954 n * A081729 n

end

end A015899.P12564929378553174003

/-! ## A015899.P10477327619789337517

`A014954(n)*A099916(n)`
-/

namespace A015899.P10477327619789337517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014954 n * A099916 n

end

end A015899.P10477327619789337517

/-! ## A015899.P9443946582999417910

`A014954(n)*A101676(n)`
-/

namespace A015899.P9443946582999417910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014954 n * A101676 n

end

end A015899.P9443946582999417910

