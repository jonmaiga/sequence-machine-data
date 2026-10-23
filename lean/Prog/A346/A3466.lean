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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A346600: Indices of records in A346599.

The programs for A346600, there is no canonical definition to state claims against.
-/

/-! ## A346600.P6855334448938203106

`A344005(A346601(n+1))`
-/

namespace A346600.P6855334448938203106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (A346601 (n + 1)).toNat

end

end A346600.P6855334448938203106

/-! ## A346600.P13983184758119365771

`A344005(record[A346599(n+1)])`
-/

namespace A346600.P13983184758119365771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A346600.P13983184758119365771

/-! ## A346600.P3014636174884991231

`record[A346599(n+1)]-A182665(A346601(n+1))`
-/

namespace A346600.P3014636174884991231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A182665 (A346601 (n + 1)).toNat

end

end A346600.P3014636174884991231

/-! ## A346600.P2984626816241544623

`A115871(∑[A160608(n)])`
-/

namespace A346600.P2984626816241544623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115871 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A346600.P2984626816241544623

/-! ## A346600.P15233881227371702124

`A346132(A337647(n+1))`
-/

namespace A346600.P15233881227371702124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346132 (A337647 (n + 1)).toNat

end

end A346600.P15233881227371702124

/-!
# A346601: Record values in A346599.

The programs for A346601, there is no canonical definition to state claims against.
-/

/-! ## A346601.P13244082860273374347

`record[A346599(n+1)]`
-/

namespace A346601.P13244082860273374347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346601.P13244082860273374347

/-! ## A346601.P340522590833301866

`A346599(A346600(n+1))`
-/

namespace A346601.P340522590833301866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346599 (A346600 (n + 1)).toNat

end

end A346601.P340522590833301866

/-! ## A346601.P10652962119671299957

`record[A346599(A028310(n))%A017308(n)]`
-/

namespace A346601.P10652962119671299957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346599 (A028310 n).toNat) (A017308 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346601.P10652962119671299957

/-! ## A346601.P9397381214218189609

`record[A346599(A028310(n))]%(2*A033484(n)²)`
-/

namespace A346601.P9397381214218189609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346599 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (2 * A033484 n ^ 2)

end

end A346601.P9397381214218189609

/-! ## A346601.P13704262311254893072

`record[A346599(A065033(n))/A019303(n)]`
-/

namespace A346601.P13704262311254893072
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346599 (A065033 n).toNat : ℚ) / (A019303 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346601.P13704262311254893072

/-!
# A346605: The third of four solutions to a Monthly problem asking if there exist finite sequences 1 < a(1) < a(2) < ... < a(n) such that Sum_i 1/a(i) = 1 and gcd(a(i), a(i+1)) = 1 for 1 <= i < n.

The programs for A346605, there is no canonical definition to state claims against.
-/

/-! ## A346605.P15329631308722287258

`record[or(2, p?[A299772(n+1)])]`
-/

namespace A346605.P15329631308722287258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299772 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346605.P15329631308722287258

/-! ## A346605.P13462354887726527187

`A110493(A322186(n+1))`
-/

namespace A346605.P13462354887726527187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110493 (A322186 (n + 1)).toNat

end

end A346605.P13462354887726527187

/-!
# A346607: a(n) = A047994(n) - A344005(n).

The programs for A346607, there is no canonical definition to state claims against.
-/

/-! ## A346607.P3768667747375553810

`A047994(n+1)-A344005(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346607.P3768667747375553810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1) - A344005 (n + 1)

end

end A346607.P3768667747375553810

/-! ## A346607.P5147735725876693955

`A344876(gcd(n+1, n*∑[n]))`
-/

namespace A346607.P5147735725876693955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344876 (Nat.gcd (n + 1) (n * (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A346607.P5147735725876693955

/-! ## A346607.P14043726174746445825

`A344876((∑[n]-1)%(n+1)+1)`
-/

namespace A346607.P14043726174746445825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344876 (Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (n + 1 : ℤ) + 1).toNat

end

end A346607.P14043726174746445825

/-! ## A346607.P18438305498804081078

`A344876(A026741(n+1))`
-/

namespace A346607.P18438305498804081078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344876 (A026741 (n + 1)).toNat

end

end A346607.P18438305498804081078

/-! ## A346607.P14619981565444253674

`A344876((n+1)/A000034(n))`
-/

namespace A346607.P14619981565444253674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344876 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000034 n : ℚ))).toNat

end

end A346607.P14619981565444253674

/-! ## A346607.P16079674982712777078

`A182665(n+1)-A323410(n+1)`
-/

namespace A346607.P16079674982712777078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182665 (n + 1) - A323410 (n + 1)

end

end A346607.P16079674982712777078

/-! ## A346607.P16514283962384554962

`A344876(A000027(n+1)/gcd(2, A000027(n+1)))`
-/

namespace A346607.P16514283962384554962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344876 (SequenceMachineLib.roundAway ((A000027 (n + 1) : ℚ) / (Int.gcd 2 (A000027 (n + 1)) : ℚ))).toNat

end

end A346607.P16514283962384554962

/-! ## A346607.P9358470021096573994

`A047994(n+1)-A354985(n+1)*A354987(n+1)`
-/

namespace A346607.P9358470021096573994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1) - A354985 (n + 1) * A354987 (n + 1)

end

end A346607.P9358470021096573994

/-! ## A346607.P8622407665587288394

`A354985(n+1)*A354986(n+1)-A344005(n+1)`
-/

namespace A346607.P8622407665587288394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354985 (n + 1) * A354986 (n + 1) - A344005 (n + 1)

end

end A346607.P8622407665587288394

/-! ## A346607.P5647612898487609591

`(A354986(n+1)-A354987(n+1))*A354985(n+1)`
-/

namespace A346607.P5647612898487609591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A354986 (n + 1) - A354987 (n + 1)) * A354985 (n + 1)

end

end A346607.P5647612898487609591

/-! ## A346607.P12613852615001731470

`A344876(A344764(∑[n+1]))`
-/

namespace A346607.P12613852615001731470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344876 (A344764 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A346607.P12613852615001731470

/-!
# A346608: Indices k such that A047994(k) != A344005(k).

The programs for A346608, the canonical program `A346608.P239523181387048833` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346608 has offset 1).

The definition of A346608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346608.P2614477517570257435

`lt[1, A322989(n+1)]+1`
-/

namespace A346608.P2614477517570257435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322989 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A346608.P2614477517570257435

namespace A346608

/-- `lt[1, A322989(n+1)]+1` -/
def P2614477517570257435.Spec : Prop :=
  ∀ n, (P2614477517570257435.a n : ℤ) = A346608 (n + 1)

end A346608

/-! ## A346608.P239523181387048833

`lt[A354924(n+1), 1]+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A346608

/-- `lt[A354924(n+1), 1]+1` -/
def P239523181387048833.Spec : Prop :=
  ∀ n, (P239523181387048833.a n : ℤ) = A346608 (n + 1)

theorem P239523181387048833.correct : P239523181387048833.Spec := by
  intro n
  simp only [A346608, Nat.add_sub_cancel]

end A346608

/-! ## A346608.P5893294176263285661

`∪[A238367(n+1), A156683(n+1)]`
-/

namespace A346608.P5893294176263285661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A346608.P5893294176263285661

namespace A346608

/-- `∪[A238367(n+1), A156683(n+1)]` -/
def P5893294176263285661.Spec : Prop :=
  ∀ n, (P5893294176263285661.a n : ℤ) = A346608 (n + 1)

end A346608

/-! ## A346608.P3973807168262401399

`filter[A033949(n+1), A202238(#)]`
-/

namespace A346608.P3973807168262401399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A346608.P3973807168262401399

namespace A346608

/-- `filter[A033949(n+1), A202238(#)]` -/
def P3973807168262401399.Spec : Prop :=
  ∀ n, P3973807168262401399.a n = A346608 (n + 1)

end A346608

/-! ## A346608.P10783464543275308562

`filter[A033949(n+1), A347523(#)]`
-/

namespace A346608.P10783464543275308562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A346608.P10783464543275308562

namespace A346608

/-- `filter[A033949(n+1), A347523(#)]` -/
def P10783464543275308562.Spec : Prop :=
  ∀ n, P10783464543275308562.a n = A346608 (n + 1)

end A346608

/-! ## A346608.P11463133187133966977

`filter[A175594(n+2), A202238(#)]`
-/

namespace A346608.P11463133187133966977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175594 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A346608.P11463133187133966977

namespace A346608

/-- `filter[A175594(n+2), A202238(#)]` -/
def P11463133187133966977.Spec : Prop :=
  ∀ n, P11463133187133966977.a n = A346608 (n + 1)

end A346608

/-! ## A346608.P11410307309030425916

`filter[A175594(n+2), A347523(#)]`
-/

namespace A346608.P11410307309030425916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175594 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A346608.P11410307309030425916

namespace A346608

/-- `filter[A175594(n+2), A347523(#)]` -/
def P11410307309030425916.Spec : Prop :=
  ∀ n, P11410307309030425916.a n = A346608 (n + 1)

end A346608

/-! ## A346608.P7739103911422789758

`filter[A180634(n+1), A202238(#)]`
-/

namespace A346608.P7739103911422789758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A346608.P7739103911422789758

namespace A346608

/-- `filter[A180634(n+1), A202238(#)]` -/
def P7739103911422789758.Spec : Prop :=
  ∀ n, P7739103911422789758.a n = A346608 (n + 1)

end A346608

/-! ## A346608.P6114185360652172764

`filter[A180634(n+1), A347523(#)]`
-/

namespace A346608.P6114185360652172764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A346608.P6114185360652172764

namespace A346608

/-- `filter[A180634(n+1), A347523(#)]` -/
def P6114185360652172764.Spec : Prop :=
  ∀ n, P6114185360652172764.a n = A346608 (n + 1)

end A346608

/-! ## A346608.P13512163856606165546

`filter[A024619(n+1), A354108(#)]`
-/

namespace A346608.P13512163856606165546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A346608.P13512163856606165546

namespace A346608

/-- `filter[A024619(n+1), A354108(#)]` -/
def P13512163856606165546.Spec : Prop :=
  ∀ n, P13512163856606165546.a n = A346608 (n + 1)

end A346608

/-! ## A346608.P12078162620130841584

`∩[A024619(n+1), A033949(n+1)]`
-/

namespace A346608.P12078162620130841584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346608.P12078162620130841584

namespace A346608

/-- `∩[A024619(n+1), A033949(n+1)]` -/
def P12078162620130841584.Spec : Prop :=
  ∀ n, (P12078162620130841584.a n : ℤ) = A346608 (n + 1)

end A346608

/-! ## A346608.P12947101404507747763

`∩[A024619(n+1), A175594(n+1)]`
-/

namespace A346608.P12947101404507747763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346608.P12947101404507747763

namespace A346608

/-- `∩[A024619(n+1), A175594(n+1)]` -/
def P12947101404507747763.Spec : Prop :=
  ∀ n, (P12947101404507747763.a n : ℤ) = A346608 (n + 1)

end A346608

/-! ## A346608.P4458713169537570134

`∩[A024619(n+1), A180634(n+1)]`
-/

namespace A346608.P4458713169537570134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346608.P4458713169537570134

namespace A346608

/-- `∩[A024619(n+1), A180634(n+1)]` -/
def P4458713169537570134.Spec : Prop :=
  ∀ n, (P4458713169537570134.a n : ℤ) = A346608 (n + 1)

end A346608

/-! ## A346608.P14316783836503121364

`filter[A361102(n+2), A354108(#)]`
-/

namespace A346608.P14316783836503121364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A346608.P14316783836503121364

namespace A346608

/-- `filter[A361102(n+2), A354108(#)]` -/
def P14316783836503121364.Spec : Prop :=
  ∀ n, P14316783836503121364.a n = A346608 (n + 1)

end A346608

/-! ## A346608.P6589137094908135037

`filter[A230078(n+2), A354108(#)]`
-/

namespace A346608.P6589137094908135037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230078 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A346608.P6589137094908135037

namespace A346608

/-- `filter[A230078(n+2), A354108(#)]` -/
def P6589137094908135037.Spec : Prop :=
  ∀ n, P6589137094908135037.a n = A346608 (n + 1)

end A346608

/-! ## A346608.P465579061901560244

`∩[A024619(n+1), A230078(n+1)]`
-/

namespace A346608.P465579061901560244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346608.P465579061901560244

namespace A346608

/-- `∩[A024619(n+1), A230078(n+1)]` -/
def P465579061901560244.Spec : Prop :=
  ∀ n, (P465579061901560244.a n : ℤ) = A346608 (n + 1)

end A346608

/-! ## A346608.P18346358205498293877

`∩[A033949(n+1), A230078(n+1)]`
-/

namespace A346608.P18346358205498293877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346608.P18346358205498293877

namespace A346608

/-- `∩[A033949(n+1), A230078(n+1)]` -/
def P18346358205498293877.Spec : Prop :=
  ∀ n, (P18346358205498293877.a n : ℤ) = A346608 (n + 1)

end A346608

/-! ## A346608.P9590580377338735182

`filter[A085971(n+2), A354108(#)]`
-/

namespace A346608.P9590580377338735182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085971 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A346608.P9590580377338735182

namespace A346608

/-- `filter[A085971(n+2), A354108(#)]` -/
def P9590580377338735182.Spec : Prop :=
  ∀ n, P9590580377338735182.a n = A346608 (n + 1)

end A346608

/-! ## A346608.P3768791045092566098

`∩[A033949(n+1), A085971(n+1)]`
-/

namespace A346608.P3768791045092566098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346608.P3768791045092566098

namespace A346608

/-- `∩[A033949(n+1), A085971(n+1)]` -/
def P3768791045092566098.Spec : Prop :=
  ∀ n, (P3768791045092566098.a n : ℤ) = A346608 (n + 1)

end A346608

/-! ## A346608.P9740142313220475458

`∩[A085971(n+1), A175594(n+1)]`
-/

namespace A346608.P9740142313220475458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346608.P9740142313220475458

namespace A346608

/-- `∩[A085971(n+1), A175594(n+1)]` -/
def P9740142313220475458.Spec : Prop :=
  ∀ n, (P9740142313220475458.a n : ℤ) = A346608 (n + 1)

end A346608

/-!
# A346609: The successive odd nonprimes produced during the construction of A203069.

The programs for A346609, there is no canonical definition to state claims against.
-/

/-! ## A346609.P14933721963712808209

`A000265(A203069(n+1)+A203069(A028310(n)))`
-/

namespace A346609.P14933721963712808209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A203069 (n + 1) + A203069 (A028310 n).toNat).toNat

end

end A346609.P14933721963712808209

/-! ## A346609.P1444531477874475998

`A203069(n+1)+A057427(n)*A203069(A028310(n))`
-/

namespace A346609.P1444531477874475998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203069 (n + 1) + A057427 n * A203069 (A028310 n).toNat

end

end A346609.P1444531477874475998

/-!
# A346610: First differences of A203069.

The programs for A346610, there is no canonical definition to state claims against.
-/

/-! ## A346610.P8485205971733524600

`Δ[A203069(n+1)]`
-/

namespace A346610.P8485205971733524600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A346610.P8485205971733524600

/-! ## A346610.P14454811583152544083

`Δ[2*A346611(n+1)]+1`
-/

namespace A346610.P14454811583152544083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A346611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A346610.P14454811583152544083

/-! ## A346610.P15841804440787473631

`Δ[A346609(n+1)-a(n-1)]` with `a(0)=1`
-/

namespace A346610.P15841804440787473631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A346609 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A346610.P15841804440787473631

/-! ## A346610.P9508784337003037670

`A203069(n+2)-A203069(n+1)`
-/

namespace A346610.P9508784337003037670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203069 (n + 2) - A203069 (n + 1)

end

end A346610.P9508784337003037670

/-!
# A346611: a(n) = (A203069(n)-n)/2.

The programs for A346611, there is no canonical definition to state claims against.
-/

/-! ## A346611.P5860200019989649342

`(A203069(n+1)-(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346611.P5860200019989649342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A203069 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A346611.P5860200019989649342

/-! ## A346611.P16641336672493492080

`A110654(A203069(n+1))-A110654(n+1)`
-/

namespace A346611.P16641336672493492080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A203069 (n + 1)).toNat - A110654 (n + 1)

end

end A346611.P16641336672493492080

/-! ## A346611.P15453454392028127459

`A065033(A203069(n+1)-1)-A065033(n)`
-/

namespace A346611.P15453454392028127459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A203069 (n + 1) - 1).toNat - A065033 n

end

end A346611.P15453454392028127459

/-! ## A346611.P6991779410212667470

`A123108(A203069(n+1)-1)-A123108(n)`
-/

namespace A346611.P6991779410212667470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A203069 (n + 1) - 1).toNat - A123108 n

end

end A346611.P6991779410212667470

/-! ## A346611.P13905569471453887705

`A123108(A203069(n+1)+n)-n`
-/

namespace A346611.P13905569471453887705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A203069 (n + 1) + (n : ℤ)).toNat - (n : ℤ)

end

end A346611.P13905569471453887705

/-! ## A346611.P4724896451200222898

`A203069(n+1)-A026741(A203069(n+1)+n+1)`
-/

namespace A346611.P4724896451200222898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203069 (n + 1) - A026741 (A203069 (n + 1) + (n + 1 : ℤ)).toNat

end

end A346611.P4724896451200222898

/-!
# A346612: Moebius transform of A019554.

The programs for A346612, the canonical program `A346612.P17658702918821457984` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346612 has offset 1).

The definition of A346612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346612.P1466671646986674598

`A295316(n+1)*A390752(n+1)`
-/

namespace A346612.P1466671646986674598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295316 (n + 1) * A390752 (n + 1)

end

end A346612.P1466671646986674598

namespace A346612

/-- `A295316(n+1)*A390752(n+1)` -/
def P1466671646986674598.Spec : Prop :=
  ∀ n, P1466671646986674598.a n = A346612 (n + 1)

end A346612

/-! ## A346612.P5279393013536895684

`∑{d}[n+1, A008683(#)*A019554((n+1)/#)]`
-/

namespace A346612.P5279393013536895684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A019554 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346612.P5279393013536895684

namespace A346612

/-- `∑{d}[n+1, A008683(#)*A019554((n+1)/#)]` -/
def P5279393013536895684.Spec : Prop :=
  ∀ n, P5279393013536895684.a n = A346612 (n + 1)

end A346612

/-! ## A346612.P17658702918821457984

`∑{d}[n+1, A046692(#)*A057670((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A346612

/-- `∑{d}[n+1, A046692(#)*A057670((n+1)/#)]` -/
def P17658702918821457984.Spec : Prop :=
  ∀ n, P17658702918821457984.a n = A346612 (n + 1)

theorem P17658702918821457984.correct : P17658702918821457984.Spec := by
  intro n
  simp only [A346612, Nat.add_sub_cancel]

end A346612

/-! ## A346612.P14787764758262117655

`∑{d}[n+1, A007427(#)*A346613((n+1)/#)]`
-/

namespace A346612.P14787764758262117655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A346613 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346612.P14787764758262117655

namespace A346612

/-- `∑{d}[n+1, A007427(#)*A346613((n+1)/#)]` -/
def P14787764758262117655.Spec : Prop :=
  ∀ n, P14787764758262117655.a n = A346612 (n + 1)

end A346612

/-! ## A346612.P7082974010681301067

`A037213(A003557(n+1))*A173557(n+1)`
-/

namespace A346612.P7082974010681301067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A003557 (n + 1)).toNat * A173557 (n + 1)

end

end A346612.P7082974010681301067

namespace A346612

/-- `A037213(A003557(n+1))*A173557(n+1)` -/
def P7082974010681301067.Spec : Prop :=
  ∀ n, P7082974010681301067.a n = A346612 (n + 1)

end A346612

/-! ## A346612.P11479739422397933154

`A000010(A019554(n+1))*A295316(n+1)`
-/

namespace A346612.P11479739422397933154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A019554 (n + 1)).toNat * A295316 (n + 1)

end

end A346612.P11479739422397933154

namespace A346612

/-- `A000010(A019554(n+1))*A295316(n+1)` -/
def P11479739422397933154.Spec : Prop :=
  ∀ n, P11479739422397933154.a n = A346612 (n + 1)

end A346612

/-! ## A346612.P3426149595129200516

`A037213(A000010(n+1)/A173557(n+1))*A173557(n+1)`
-/

namespace A346612.P3426149595129200516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (SequenceMachineLib.roundAway ((A000010 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ))).toNat * A173557 (n + 1)

end

end A346612.P3426149595129200516

namespace A346612

/-- `A037213(A000010(n+1)/A173557(n+1))*A173557(n+1)` -/
def P3426149595129200516.Spec : Prop :=
  ∀ n, P3426149595129200516.a n = A346612 (n + 1)

end A346612

/-! ## A346612.P18336219711890768629

`A037213(A000010(n+1)*A173557(n+1))`
-/

namespace A346612.P18336219711890768629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A000010 (n + 1) * A173557 (n + 1)).toNat

end

end A346612.P18336219711890768629

namespace A346612

/-- `A037213(A000010(n+1)*A173557(n+1))` -/
def P18336219711890768629.Spec : Prop :=
  ∀ n, P18336219711890768629.a n = A346612 (n + 1)

end A346612

/-!
# A346613: Inverse Moebius transform of A019554.

The programs for A346613, the canonical program `A346613.P3183661306633961935` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346613 has offset 1).

The definition of A346613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346613.P3183661306633961935

`∑{d}[n+1, A019554(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A346613

/-- `∑{d}[n+1, A019554(#)]` -/
def P3183661306633961935.Spec : Prop :=
  ∀ n, P3183661306633961935.a n = A346613 (n + 1)

theorem P3183661306633961935.correct : P3183661306633961935.Spec := by
  intro n
  simp only [A346613, Nat.add_sub_cancel]

end A346613

/-! ## A346613.P13629136954312921809

`∑{d}[n+1, sqrt(A053143(#))]`
-/

namespace A346613.P13629136954312921809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A053143 d : ℝ)

end

end A346613.P13629136954312921809

namespace A346613

/-- `∑{d}[n+1, sqrt(A053143(#))]` -/
def P13629136954312921809.Spec : Prop :=
  ∀ n, P13629136954312921809.a n = (A346613 (n + 1) : ℝ)

end A346613

/-! ## A346613.P12211339395311568464

`∑{d}[n+1, #/A000188(#)]`
-/

namespace A346613.P12211339395311568464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / (A000188 d : ℚ)

end

end A346613.P12211339395311568464

namespace A346613

/-- `∑{d}[n+1, #/A000188(#)]` -/
def P12211339395311568464.Spec : Prop :=
  ∀ n, P12211339395311568464.a n = (A346613 (n + 1) : ℚ)

end A346613

/-! ## A346613.P7160310820045894472

`∑{d}[n+1, A023900(#)*A057670((n+1)/#)]`
-/

namespace A346613.P7160310820045894472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A057670 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346613.P7160310820045894472

namespace A346613

/-- `∑{d}[n+1, A023900(#)*A057670((n+1)/#)]` -/
def P7160310820045894472.Spec : Prop :=
  ∀ n, P7160310820045894472.a n = A346613 (n + 1)

end A346613

/-! ## A346613.P2069146014969979066

`∑{d}[n+1, A000005(#)*A346612((n+1)/#)]`
-/

namespace A346613.P2069146014969979066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A346612 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346613.P2069146014969979066

namespace A346613

/-- `∑{d}[n+1, A000005(#)*A346612((n+1)/#)]` -/
def P2069146014969979066.Spec : Prop :=
  ∀ n, P2069146014969979066.a n = A346613 (n + 1)

end A346613

/-! ## A346613.P16053796695423585940

`∑{d}[n+1, A053166(#²)]`
-/

namespace A346613.P16053796695423585940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053166 (d ^ 2)

end

end A346613.P16053796695423585940

namespace A346613

/-- `∑{d}[n+1, A053166(#²)]` -/
def P16053796695423585940.Spec : Prop :=
  ∀ n, P16053796695423585940.a n = A346613 (n + 1)

end A346613

/-!
# A346614: Inverse Moebius transform of A011772.

The programs for A346614, there is no canonical definition to state claims against.
-/

/-! ## A346614.P6121733557427840728

`∑{d}[n+1, A011772(#)]`
-/

namespace A346614.P6121733557427840728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011772 d

end

end A346614.P6121733557427840728

/-! ## A346614.P18100020995960692053

`∑{d}[n+1, A321366(#)-1]`
-/

namespace A346614.P18100020995960692053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A321366 d - 1)

end

end A346614.P18100020995960692053

/-! ## A346614.P7077259863473557218

`∑{d}[n+1, A000005(#)*A344767((n+1)/#)]`
-/

namespace A346614.P7077259863473557218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A344767 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346614.P7077259863473557218

/-! ## A346614.P13783613990562162013

`∑{d}[n+1, A023443(A321366(#))]`
-/

namespace A346614.P13783613990562162013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023443 (A321366 d).toNat

end

end A346614.P13783613990562162013

/-! ## A346614.P59592330110214016

`∑{d}[n+1, A344005(A005843(#))]`
-/

namespace A346614.P59592330110214016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A344005 (A005843 d).toNat

end

end A346614.P59592330110214016

/-!
# A346615: Moebius transform of A344005.

The programs for A346615, there is no canonical definition to state claims against.
-/

/-! ## A346615.P11959832923872284748

`∑{d}[n+1, A008683(#)*A344005((n+1)/#)]`
-/

namespace A346615.P11959832923872284748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A344005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346615.P11959832923872284748

/-! ## A346615.P11524275638797335857

`∑{d}[n+1, A007427(#)*A346616((n+1)/#)]`
-/

namespace A346615.P11524275638797335857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A346616 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346615.P11524275638797335857

/-!
# A346616: Inverse Moebius transform of A344005.

The programs for A346616, there is no canonical definition to state claims against.
-/

/-! ## A346616.P10546702578712163330

`∑{d}[n+1, A344005(#)]`
-/

namespace A346616.P10546702578712163330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A344005 d

end

end A346616.P10546702578712163330

/-! ## A346616.P5961434205794132760

`∑{d}[n+1, floor(sqrt(A345988(#)))]`
-/

namespace A346616.P5961434205794132760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.sqrt (A345988 d)

end

end A346616.P5961434205794132760

/-! ## A346616.P12162282550088383977

`∑{d}[n+1, A011772(A026741(#))]`
-/

namespace A346616.P12162282550088383977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A011772 (A026741 d).toNat

end

end A346616.P12162282550088383977

/-! ## A346616.P6056905896298074939

`∑{d}[n+1, A000005(#)*A346615((n+1)/#-1)]`
-/

namespace A346616.P6056905896298074939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A346615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A346616.P6056905896298074939

/-! ## A346616.P8486731139690775225

`∑{d}[n+1, A000194(A345988(#))]`
-/

namespace A346616.P8486731139690775225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000194 (A345988 d).toNat

end

end A346616.P8486731139690775225

/-!
# A346618: Triangle read by rows: T(n,k) = 1 iff 2 divides binomial(n,k) but 4 does not (0 <= k <= n).

The programs for A346618, the canonical program `A346618.P909238526954114988` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346618 has offset 0).

The definition of A346618 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346618.P9945447681523037246

`char[eq[1, A065040(n)]]`
-/

namespace A346618.P9945447681523037246
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065040 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A346618.P9945447681523037246

namespace A346618

/-- `char[eq[1, A065040(n)]]` -/
def P9945447681523037246.Spec : Prop :=
  ∀ n, (P9945447681523037246.a n : ℤ) = A346618 n

end A346618

/-! ## A346618.P15565805283242222141

`val(A007318(n)²+4, 8)`
-/

namespace A346618.P15565805283242222141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007318 n ^ 2 + 4).toNat 8

end

end A346618.P15565805283242222141

namespace A346618

/-- `val(A007318(n)²+4, 8)` -/
def P15565805283242222141.Spec : Prop :=
  ∀ n, (P15565805283242222141.a n : ℤ) = A346618 n

end A346618

/-! ## A346618.P12512102355015121889

`val(gcd(4, A124928(n))+1, 3)`
-/

namespace A346618.P12512102355015121889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.gcd 4 (A124928 n) + 1) 3

end

end A346618.P12512102355015121889

namespace A346618

/-- `val(gcd(4, A124928(n))+1, 3)` -/
def P12512102355015121889.Spec : Prop :=
  ∀ n, (P12512102355015121889.a n : ℤ) = A346618 n

end A346618

/-! ## A346618.P11024980621988282381

`A005369(A082907(n))`
-/

namespace A346618.P11024980621988282381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (A082907 n).toNat

end

end A346618.P11024980621988282381

namespace A346618

/-- `A005369(A082907(n))` -/
def P11024980621988282381.Spec : Prop :=
  ∀ n, P11024980621988282381.a n = A346618 n

end A346618

/-! ## A346618.P14432971204870024901

`A003982(A082907(n)²)`
-/

namespace A346618.P14432971204870024901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A082907 n ^ 2).toNat

end

end A346618.P14432971204870024901

namespace A346618

/-- `A003982(A082907(n)²)` -/
def P14432971204870024901.Spec : Prop :=
  ∀ n, P14432971204870024901.a n = A346618 n

end A346618

/-! ## A346618.P7145330550732651778

`A080679(A095145(n)²)`
-/

namespace A346618.P7145330550732651778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080679 (A095145 n ^ 2).toNat

end

end A346618.P7145330550732651778

namespace A346618

/-- `A080679(A095145(n)²)` -/
def P7145330550732651778.Spec : Prop :=
  ∀ n, P7145330550732651778.a n = A346618 n

end A346618

/-! ## A346618.P4609403408428291118

`A003982(A082907(n)+2)`
-/

namespace A346618.P4609403408428291118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A082907 n + 2).toNat

end

end A346618.P4609403408428291118

namespace A346618

/-- `A003982(A082907(n)+2)` -/
def P4609403408428291118.Spec : Prop :=
  ∀ n, P4609403408428291118.a n = A346618 n

end A346618

/-! ## A346618.P909238526954114988

`A121262(A034932(n)+2)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A346618

/-- `A121262(A034932(n)+2)` -/
def P909238526954114988.Spec : Prop :=
  ∀ n, P909238526954114988.a n = A346618 n

theorem P909238526954114988.correct : P909238526954114988.Spec := by
  intro n
  simp only [A346618]

end A346618

/-! ## A346618.P1003854741326912651

`A002262(and(3, A130595(n)))`
-/

namespace A346618.P1003854741326912651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (Int.land 3 (A130595 n)).toNat

end

end A346618.P1003854741326912651

namespace A346618

/-- `A002262(and(3, A130595(n)))` -/
def P1003854741326912651.Spec : Prop :=
  ∀ n, P1003854741326912651.a n = A346618 n

end A346618

/-! ## A346618.P10003797634380446217

`and(A193596(n), A219463(n))`
-/

namespace A346618.P10003797634380446217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A193596 n) (A219463 n)

end

end A346618.P10003797634380446217

namespace A346618

/-- `and(A193596(n), A219463(n))` -/
def P10003797634380446217.Spec : Prop :=
  ∀ n, P10003797634380446217.a n = A346618 n

end A346618

/-! ## A346618.P6003460631979589940

`∑{d}[val(A007318(n), 2), A008683(#)]`
-/

namespace A346618.P6003460631979589940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007318 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d

end

end A346618.P6003460631979589940

namespace A346618

/-- `∑{d}[val(A007318(n), 2), A008683(#)]` -/
def P6003460631979589940.Spec : Prop :=
  ∀ n, P6003460631979589940.a n = A346618 n

end A346618

/-! ## A346618.P3475878187639085240

`floor(1/A000032(val(A007318(n), 2)))`
-/

namespace A346618.P3475878187639085240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A000032 (SequenceMachineLib.valuation (A007318 n).toNat 2) : ℚ)⌋

end

end A346618.P3475878187639085240

namespace A346618

/-- `floor(1/A000032(val(A007318(n), 2)))` -/
def P3475878187639085240.Spec : Prop :=
  ∀ n, P3475878187639085240.a n = A346618 n

end A346618

/-! ## A346618.P16301365196748718300

`A002262(and(3, A028276(n)-A028263(n)))`
-/

namespace A346618.P16301365196748718300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (Int.land 3 (A028276 n - A028263 n)).toNat

end

end A346618.P16301365196748718300

namespace A346618

/-- `A002262(and(3, A028276(n)-A028263(n)))` -/
def P16301365196748718300.Spec : Prop :=
  ∀ n, P16301365196748718300.a n = A346618 n

end A346618

/-! ## A346618.P13825838411844981649

`A081603(and(3, A028276(n)-A028263(n)))`
-/

namespace A346618.P13825838411844981649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081603 (Int.land 3 (A028276 n - A028263 n)).toNat

end

end A346618.P13825838411844981649

namespace A346618

/-- `A081603(and(3, A028276(n)-A028263(n)))` -/
def P13825838411844981649.Spec : Prop :=
  ∀ n, P13825838411844981649.a n = A346618 n

end A346618

/-! ## A346618.P9412660255024162316

`char[eq[2, A034931(n)]]`
-/

namespace A346618.P9412660255024162316
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034931 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A346618.P9412660255024162316

namespace A346618

/-- `char[eq[2, A034931(n)]]` -/
def P9412660255024162316.Spec : Prop :=
  ∀ n, (P9412660255024162316.a n : ℤ) = A346618 n

end A346618

/-! ## A346618.P2909541991138618470

`and(A050602(n), A258197(n))`
-/

namespace A346618.P2909541991138618470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050602 n) (A258197 n)

end

end A346618.P2909541991138618470

namespace A346618

/-- `and(A050602(n), A258197(n))` -/
def P2909541991138618470.Spec : Prop :=
  ∀ n, P2909541991138618470.a n = A346618 n

end A346618

/-! ## A346618.P8984744903680906295

`and(A065040(n), A258197(n))`
-/

namespace A346618.P8984744903680906295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065040 n) (A258197 n)

end

end A346618.P8984744903680906295

namespace A346618

/-- `and(A065040(n), A258197(n))` -/
def P8984744903680906295.Spec : Prop :=
  ∀ n, P8984744903680906295.a n = A346618 n

end A346618

/-! ## A346618.P5599886258018028869

`and(A219463(n), A258197(n))`
-/

namespace A346618.P5599886258018028869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A219463 n) (A258197 n)

end

end A346618.P5599886258018028869

namespace A346618

/-- `and(A219463(n), A258197(n))` -/
def P5599886258018028869.Spec : Prop :=
  ∀ n, P5599886258018028869.a n = A346618 n

end A346618

/-! ## A346618.P2461329469076547046

`A010051(gcd(A059268(n)², A157150(n)))`
-/

namespace A346618.P2461329469076547046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (Int.gcd (A059268 n ^ 2) (A157150 n))

end

end A346618.P2461329469076547046

namespace A346618

/-- `A010051(gcd(A059268(n)², A157150(n)))` -/
def P2461329469076547046.Spec : Prop :=
  ∀ n, P2461329469076547046.a n = A346618 n

end A346618

/-! ## A346618.P9355181542879136161

`and(A107105(n), A219463(n))`
-/

namespace A346618.P9355181542879136161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107105 n) (A219463 n)

end

end A346618.P9355181542879136161

namespace A346618

/-- `and(A107105(n), A219463(n))` -/
def P9355181542879136161.Spec : Prop :=
  ∀ n, P9355181542879136161.a n = A346618 n

end A346618

/-!
# A346619: Triangle read by rows: T(n,k) = 1 iff 4 divides binomial(n,k) but 8 does not (0 <= k <= n).

The programs for A346619, the canonical program `A346619.P9922626625092338987` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346619 has offset 0).

The definition of A346619 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346619.P8838473665721488824

`char[eq[2, A065040(n)]]`
-/

namespace A346619.P8838473665721488824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065040 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A346619.P8838473665721488824

namespace A346619

/-- `char[eq[2, A065040(n)]]` -/
def P8838473665721488824.Spec : Prop :=
  ∀ n, (P8838473665721488824.a n : ℤ) = A346619 n

end A346619

/-! ## A346619.P6225480153542004909

`char[eq[4, A034930(n)]]`
-/

namespace A346619.P6225480153542004909
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034930 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A346619.P6225480153542004909

namespace A346619

/-- `char[eq[4, A034930(n)]]` -/
def P6225480153542004909.Spec : Prop :=
  ∀ n, (P6225480153542004909.a n : ℤ) = A346619 n

end A346619

/-! ## A346619.P9922626625092338987

`A003982(A082907(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A346619

/-- `A003982(A082907(n))` -/
def P9922626625092338987.Spec : Prop :=
  ∀ n, P9922626625092338987.a n = A346619 n

theorem P9922626625092338987.correct : P9922626625092338987.Spec := by
  intro n
  simp only [A346619]

end A346619

/-! ## A346619.P17081751508327654586

`A005369(A082907(n)+2)`
-/

namespace A346619.P17081751508327654586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (A082907 n + 2).toNat

end

end A346619.P17081751508327654586

namespace A346619

/-- `A005369(A082907(n)+2)` -/
def P17081751508327654586.Spec : Prop :=
  ∀ n, P17081751508327654586.a n = A346619 n

end A346619

/-! ## A346619.P8904128025525176121

`val(A107505(A034932(n)), 7)`
-/

namespace A346619.P8904128025525176121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A107505 (A034932 n).toNat).toNat 7

end

end A346619.P8904128025525176121

namespace A346619

/-- `val(A107505(A034932(n)), 7)` -/
def P8904128025525176121.Spec : Prop :=
  ∀ n, (P8904128025525176121.a n : ℤ) = A346619 n

end A346619

/-! ## A346619.P8242192749275161884

`A000007(xor(4, A082907(n)))`
-/

namespace A346619.P8242192749275161884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor 4 (A082907 n)).toNat

end

end A346619.P8242192749275161884

namespace A346619

/-- `A000007(xor(4, A082907(n)))` -/
def P8242192749275161884.Spec : Prop :=
  ∀ n, P8242192749275161884.a n = A346619 n

end A346619

/-! ## A346619.P4066052346862781472

`A340758(and(7, A130595(n)))`
-/

namespace A346619.P4066052346862781472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340758 (Int.land 7 (A130595 n)).toNat

end

end A346619.P4066052346862781472

namespace A346619

/-- `A340758(and(7, A130595(n)))` -/
def P4066052346862781472.Spec : Prop :=
  ∀ n, P4066052346862781472.a n = A346619 n

end A346619

/-! ## A346619.P10121184303839284908

`A025456(val(A007318(n), 2)+1)`
-/

namespace A346619.P10121184303839284908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 (SequenceMachineLib.valuation (A007318 n).toNat 2 + 1)

end

end A346619.P10121184303839284908

namespace A346619

/-- `A025456(val(A007318(n), 2)+1)` -/
def P10121184303839284908.Spec : Prop :=
  ∀ n, P10121184303839284908.a n = A346619 n

end A346619

/-! ## A346619.P2170012439381786073

`A025456(val(2*A007318(n), 2))`
-/

namespace A346619.P2170012439381786073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 (SequenceMachineLib.valuation (2 * A007318 n).toNat 2)

end

end A346619.P2170012439381786073

namespace A346619

/-- `A025456(val(2*A007318(n), 2))` -/
def P2170012439381786073.Spec : Prop :=
  ∀ n, P2170012439381786073.a n = A346619 n

end A346619

/-! ## A346619.P17886475819237521961

`val(A000041(val(A007318(n), 2)), 2)`
-/

namespace A346619.P17886475819237521961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000041 (SequenceMachineLib.valuation (A007318 n).toNat 2)).toNat 2

end

end A346619.P17886475819237521961

namespace A346619

/-- `val(A000041(val(A007318(n), 2)), 2)` -/
def P17886475819237521961.Spec : Prop :=
  ∀ n, (P17886475819237521961.a n : ℤ) = A346619 n

end A346619

/-! ## A346619.P8749619596807826959

`A073816(val(val(A124927(n), 2)+1, 2)+1)`
-/

namespace A346619.P8749619596807826959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073816 (SequenceMachineLib.valuation (SequenceMachineLib.valuation (A124927 n).toNat 2 + 1) 2 + 1)

end

end A346619.P8749619596807826959

namespace A346619

/-- `A073816(val(val(A124927(n), 2)+1, 2)+1)` -/
def P8749619596807826959.Spec : Prop :=
  ∀ n, P8749619596807826959.a n = A346619 n

end A346619

/-! ## A346619.P8980333573680650569

`A348648(A007318(A082907(n))²)`
-/

namespace A346619.P8980333573680650569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348648 (A007318 (A082907 n).toNat ^ 2).toNat

end

end A346619.P8980333573680650569

namespace A346619

/-- `A348648(A007318(A082907(n))²)` -/
def P8980333573680650569.Spec : Prop :=
  ∀ n, P8980333573680650569.a n = A346619 n

end A346619

/-! ## A346619.P4002326939271814653

`A289165((2*A082907(n))²)`
-/

namespace A346619.P4002326939271814653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289165 ((2 * A082907 n) ^ 2).toNat

end

end A346619.P4002326939271814653

namespace A346619

/-- `A289165((2*A082907(n))²)` -/
def P4002326939271814653.Spec : Prop :=
  ∀ n, P4002326939271814653.a n = A346619 n

end A346619

/-! ## A346619.P10006532402458798083

`A104488(A173741(n))`
-/

namespace A346619.P10006532402458798083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104488 (A173741 n).toNat

end

end A346619.P10006532402458798083

namespace A346619

/-- `A104488(A173741(n))` -/
def P10006532402458798083.Spec : Prop :=
  ∀ n, P10006532402458798083.a n = A346619 n

end A346619

/-! ## A346619.P15184447214168893206

`A346618(A007814(A007318(n))²)`
-/

namespace A346619.P15184447214168893206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346618 (A007814 (A007318 n).toNat ^ 2).toNat

end

end A346619.P15184447214168893206

namespace A346619

/-- `A346618(A007814(A007318(n))²)` -/
def P15184447214168893206.Spec : Prop :=
  ∀ n, P15184447214168893206.a n = A346619 n

end A346619

/-! ## A346619.P10635381218453510568

`A260446(A166455(n))`
-/

namespace A346619.P10635381218453510568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260446 (A166455 n).toNat

end

end A346619.P10635381218453510568

namespace A346619

/-- `A260446(A166455(n))` -/
def P10635381218453510568.Spec : Prop :=
  ∀ n, P10635381218453510568.a n = A346619 n

end A346619

/-! ## A346619.P10340516259271752061

`A260445(A131112(n))`
-/

namespace A346619.P10340516259271752061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260445 (A131112 n).toNat

end

end A346619.P10340516259271752061

namespace A346619

/-- `A260445(A131112(n))` -/
def P10340516259271752061.Spec : Prop :=
  ∀ n, P10340516259271752061.a n = A346619 n

end A346619

/-! ## A346619.P18080533241897244485

`A260445(A132200(n))`
-/

namespace A346619.P18080533241897244485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260445 (A132200 n).toNat

end

end A346619.P18080533241897244485

namespace A346619

/-- `A260445(A132200(n))` -/
def P18080533241897244485.Spec : Prop :=
  ∀ n, P18080533241897244485.a n = A346619 n

end A346619

/-! ## A346619.P16101972045138025645

`A104488(A131063(n))`
-/

namespace A346619.P16101972045138025645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104488 (A131063 n).toNat

end

end A346619.P16101972045138025645

namespace A346619

/-- `A104488(A131063(n))` -/
def P16101972045138025645.Spec : Prop :=
  ∀ n, P16101972045138025645.a n = A346619 n

end A346619

/-!
# A346620: Partial sums of A007774.

The programs for A346620, the canonical program `A346620.P14772451308299098952` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346620 has offset 1).

The definition of A346620 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346620.P14772451308299098952

`∑[A007774(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A346620

/-- `∑[A007774(n+1)]` -/
def P14772451308299098952.Spec : Prop :=
  ∀ n, P14772451308299098952.a n = A346620 (n + 1)

theorem P14772451308299098952.correct : P14772451308299098952.Spec := by
  intro n
  simp only [A346620, Nat.add_sub_cancel]

end A346620

/-! ## A346620.P9823025725694567072

`∑[eq[2, A001221(n+1)]+1]`
-/

namespace A346620.P9823025725694567072
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346620.P9823025725694567072

namespace A346620

/-- `∑[eq[2, A001221(n+1)]+1]` -/
def P9823025725694567072.Spec : Prop :=
  ∀ n, (P9823025725694567072.a n : ℤ) = A346620 (n + 1)

end A346620

/-! ## A346620.P16444499964940811880

`∑[eq[2, A001222(A007947(n+1))]+1]`
-/

namespace A346620.P16444499964940811880
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346620.P16444499964940811880

namespace A346620

/-- `∑[eq[2, A001222(A007947(n+1))]+1]` -/
def P16444499964940811880.Spec : Prop :=
  ∀ n, (P16444499964940811880.a n : ℤ) = A346620 (n + 1)

end A346620

/-! ## A346620.P12763753082806040062

`A346621(A007774(A072000(A001358(n+1))))`
-/

namespace A346620.P12763753082806040062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346621 (A007774 (A072000 (A001358 (n + 1)).toNat).toNat).toNat

end

end A346620.P12763753082806040062

namespace A346620

/-- `A346621(A007774(A072000(A001358(n+1))))` -/
def P12763753082806040062.Spec : Prop :=
  ∀ n, P12763753082806040062.a n = A346620 (n + 1)

end A346620

/-! ## A346620.P14144435039698579932

`A346621(A007774(A025528(A246655(n+1))))`
-/

namespace A346620.P14144435039698579932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346621 (A007774 (A025528 (A246655 (n + 1)).toNat).toNat).toNat

end

end A346620.P14144435039698579932

namespace A346620

/-- `A346621(A007774(A025528(A246655(n+1))))` -/
def P14144435039698579932.Spec : Prop :=
  ∀ n, P14144435039698579932.a n = A346620 (n + 1)

end A346620

/-! ## A346620.P17636515751008210613

`A346621(A007774(n+2)-1)`
-/

namespace A346620.P17636515751008210613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346621 (A007774 (n + 2) - 1).toNat

end

end A346620.P17636515751008210613

namespace A346620

/-- `A346621(A007774(n+2)-1)` -/
def P17636515751008210613.Spec : Prop :=
  ∀ n, P17636515751008210613.a n = A346620 (n + 1)

end A346620

/-! ## A346620.P11649667648444359535

`∑[A165713(a(n-1))]` with `a(0)=6`
-/

namespace A346620.P11649667648444359535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A165713 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346620.P11649667648444359535

namespace A346620

/-- `∑[A165713(a(n-1))]` -/
def P11649667648444359535.Spec : Prop :=
  ∀ n, P11649667648444359535.a n = A346620 (n + 1)

end A346620

/-! ## A346620.P17590544736288204937

`∑[eq[2, A087624(n+1)]+1]`
-/

namespace A346620.P17590544736288204937
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346620.P17590544736288204937

namespace A346620

/-- `∑[eq[2, A087624(n+1)]+1]` -/
def P17590544736288204937.Spec : Prop :=
  ∀ n, (P17590544736288204937.a n : ℤ) = A346620 (n + 1)

end A346620

/-! ## A346620.P6853533325404297465

`∑[eq[3, A309307(n+1)]+1]`
-/

namespace A346620.P6853533325404297465
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309307 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346620.P6853533325404297465

namespace A346620

/-- `∑[eq[3, A309307(n+1)]+1]` -/
def P6853533325404297465.Spec : Prop :=
  ∀ n, (P6853533325404297465.a n : ℤ) = A346620 (n + 1)

end A346620

/-! ## A346620.P10764419321231998540

`∑[eq[2, ∑{p}[n+1, A001222(#)]]+1]`
-/

namespace A346620.P10764419321231998540
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), A001222 p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346620.P10764419321231998540

namespace A346620

/-- `∑[eq[2, ∑{p}[n+1, A001222(#)]]+1]` -/
def P10764419321231998540.Spec : Prop :=
  ∀ n, (P10764419321231998540.a n : ℤ) = A346620 (n + 1)

end A346620

/-! ## A346620.P8627941689030417601

`∑[eq[2, A001222(∏{p}[n+1, #])]+1]`
-/

namespace A346620.P8627941689030417601
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f4 n), p)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346620.P8627941689030417601

namespace A346620

/-- `∑[eq[2, A001222(∏{p}[n+1, #])]+1]` -/
def P8627941689030417601.Spec : Prop :=
  ∀ n, (P8627941689030417601.a n : ℤ) = A346620 (n + 1)

end A346620

/-! ## A346620.P6734618811615813254

`∑[eq[4, A000005(∏{p}[n+1, #])]]+1+n`
-/

namespace A346620.P6734618811615813254
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f4 n), p)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + n

end

end A346620.P6734618811615813254

namespace A346620

/-- `∑[eq[4, A000005(∏{p}[n+1, #])]]+1+n` -/
def P6734618811615813254.Spec : Prop :=
  ∀ n, (P6734618811615813254.a n : ℤ) = A346620 (n + 1)

end A346620

/-! ## A346620.P8725521135300386636

`∑[eq[2, A001222(∏{p}[n, #])!]]`
-/

namespace A346620.P8725521135300386636
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A001222 (∏ p ∈ Nat.primeFactors (f4 n), p)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346620.P8725521135300386636

namespace A346620

/-- `∑[eq[2, A001222(∏{p}[n, #])!]]` -/
def P8725521135300386636.Spec : Prop :=
  ∀ n, (P8725521135300386636.a n : ℤ) = A346620 (n + 1)

end A346620

/-! ## A346620.P10626050760482775789

`∑[A373350(3*(n+1))]`
-/

namespace A346620.P10626050760482775789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373350 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346620.P10626050760482775789

namespace A346620

/-- `∑[A373350(3*(n+1))]` -/
def P10626050760482775789.Spec : Prop :=
  ∀ n, P10626050760482775789.a n = A346620 (n + 1)

end A346620

/-!
# A346621: a(n) = Sum_{ x <= n : omega(x) = 2 } x.

The programs for A346621, the canonical program `A346621.P15232566686914142935` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346621 has offset 1).

The definition of A346621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346621.P15232566686914142935

`∑[(n+1)*A215480(n+1)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A346621

/-- `∑[(n+1)*A215480(n+1)]` -/
def P15232566686914142935.Spec : Prop :=
  ∀ n, P15232566686914142935.a n = A346621 (n + 1)

theorem P15232566686914142935.correct : P15232566686914142935.Spec := by
  intro n
  simp only [A346621, Nat.add_sub_cancel]

end A346621

/-! ## A346621.P179592906657098038

`∑[(n+1)*char[eq[2, A001221(n+1)]]]`
-/

namespace A346621.P179592906657098038
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346621.P179592906657098038

namespace A346621

/-- `∑[(n+1)*char[eq[2, A001221(n+1)]]]` -/
def P179592906657098038.Spec : Prop :=
  ∀ n, (P179592906657098038.a n : ℤ) = A346621 (n + 1)

end A346621

/-! ## A346621.P7349120300822063522

`∑[(n+1)*char[eq[2, A087624(n+1)]]]`
-/

namespace A346621.P7349120300822063522
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346621.P7349120300822063522

namespace A346621

/-- `∑[(n+1)*char[eq[2, A087624(n+1)]]]` -/
def P7349120300822063522.Spec : Prop :=
  ∀ n, (P7349120300822063522.a n : ℤ) = A346621 (n + 1)

end A346621

/-! ## A346621.P11142040649546226466

`∑[(n+1)*A024360(A034444(n+1))]`
-/

namespace A346621.P11142040649546226466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A024360 (A034444 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346621.P11142040649546226466

namespace A346621

/-- `∑[(n+1)*A024360(A034444(n+1))]` -/
def P11142040649546226466.Spec : Prop :=
  ∀ n, P11142040649546226466.a n = A346621 (n + 1)

end A346621

/-! ## A346621.P14703977740075482776

`∑[(n+1)*A003849(A000005(∏{p}[n+1, #]))]-1`
-/

namespace A346621.P14703977740075482776
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003849 (A000005 (∏ p ∈ Nat.primeFactors (f2 n), p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A346621.P14703977740075482776

namespace A346621

/-- `∑[(n+1)*A003849(A000005(∏{p}[n+1, #]))]-1` -/
def P14703977740075482776.Spec : Prop :=
  ∀ n, P14703977740075482776.a n = A346621 (n + 1)

end A346621

/-! ## A346621.P1410268604574493566

`∑[A131209(n*A215480(n+1))]`
-/

namespace A346621.P1410268604574493566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131209 ((n : ℤ) * A215480 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346621.P1410268604574493566

namespace A346621

/-- `∑[A131209(n*A215480(n+1))]` -/
def P1410268604574493566.Spec : Prop :=
  ∀ n, P1410268604574493566.a n = A346621 (n + 1)

end A346621

/-!
# A346622: a(n) = card{ x <= n : x odd and omega(x) = 2 }.

The programs for A346622, the canonical program `A346622.P12109416863354417006` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346622 has offset 1).

The definition of A346622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346622.P9409065296453439253

`∑[A353676(n+1)]`
-/

namespace A346622.P9409065296453439253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346622.P9409065296453439253

namespace A346622

/-- `∑[A353676(n+1)]` -/
def P9409065296453439253.Spec : Prop :=
  ∀ n, P9409065296453439253.a n = A346622 (n + 1)

end A346622

/-! ## A346622.P685008376765649285

`∑[char[eq[2, A132468(n+1)]]]`
-/

namespace A346622.P685008376765649285
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132468 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346622.P685008376765649285

namespace A346622

/-- `∑[char[eq[2, A132468(n+1)]]]` -/
def P685008376765649285.Spec : Prop :=
  ∀ n, (P685008376765649285.a n : ℤ) = A346622 (n + 1)

end A346622

/-! ## A346622.P12109416863354417006

`∑[and(n+1, A215480(n+1))]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A346622

/-- `∑[and(n+1, A215480(n+1))]` -/
def P12109416863354417006.Spec : Prop :=
  ∀ n, P12109416863354417006.a n = A346622 (n + 1)

theorem P12109416863354417006.correct : P12109416863354417006.Spec := by
  intro n
  simp only [A346622, Nat.add_sub_cancel]

end A346622

/-! ## A346622.P1263489518723480677

`∑[(n+1)%(A001221(n+1)%3)!]`
-/

namespace A346622.P1263489518723480677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % Nat.factorial (Int.tmod (A001221 (n + 1)) 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346622.P1263489518723480677

namespace A346622

/-- `∑[(n+1)%(A001221(n+1)%3)!]` -/
def P1263489518723480677.Spec : Prop :=
  ∀ n, (P1263489518723480677.a n : ℤ) = A346622 (n + 1)

end A346622

/-! ## A346622.P12599464960780062479

`∑[A215480(A141310(n))]`
-/

namespace A346622.P12599464960780062479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215480 (A141310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346622.P12599464960780062479

namespace A346622

/-- `∑[A215480(A141310(n))]` -/
def P12599464960780062479.Spec : Prop :=
  ∀ n, P12599464960780062479.a n = A346622 (n + 1)

end A346622

/-! ## A346622.P4033152935184007566

`∑[A353481(A007947(n+1))]`
-/

namespace A346622.P4033152935184007566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353481 (A007947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346622.P4033152935184007566

namespace A346622

/-- `∑[A353481(A007947(n+1))]` -/
def P4033152935184007566.Spec : Prop :=
  ∀ n, P4033152935184007566.a n = A346622 (n + 1)

end A346622

/-! ## A346622.P2812885459283384546

`∑[(1-A000035(n))*A215480(n+1)]`
-/

namespace A346622.P2812885459283384546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000035 n) * A215480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346622.P2812885459283384546

namespace A346622

/-- `∑[(1-A000035(n))*A215480(n+1)]` -/
def P2812885459283384546.Spec : Prop :=
  ∀ n, P2812885459283384546.a n = A346622 (n + 1)

end A346622

/-! ## A346622.P8376483880959812756

`∑[((n+1)*A093013(A105561(n+1)+1))%2]`
-/

namespace A346622.P8376483880959812756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A093013 (A105561 (n + 1) + 1).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346622.P8376483880959812756

namespace A346622

/-- `∑[((n+1)*A093013(A105561(n+1)+1))%2]` -/
def P8376483880959812756.Spec : Prop :=
  ∀ n, P8376483880959812756.a n = A346622 (n + 1)

end A346622

/-! ## A346622.P902529680464254752

`∑[and(1, (n+1)*A024543(A034444(n+1)+1))]`
-/

namespace A346622.P902529680464254752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n + 1 : ℤ) * A024543 (A034444 (n + 1) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346622.P902529680464254752

namespace A346622

/-- `∑[and(1, (n+1)*A024543(A034444(n+1)+1))]` -/
def P902529680464254752.Spec : Prop :=
  ∀ n, P902529680464254752.a n = A346622 (n + 1)

end A346622

/-! ## A346622.P10309727813173184879

`∑[A000035(n+1)*A215480(n+1)]`
-/

namespace A346622.P10309727813173184879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A215480 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346622.P10309727813173184879

namespace A346622

/-- `∑[A000035(n+1)*A215480(n+1)]` -/
def P10309727813173184879.Spec : Prop :=
  ∀ n, P10309727813173184879.a n = A346622 (n + 1)

end A346622

/-! ## A346622.P13485096853310091937

`∑[char[eq[2, A305614(n+1)]]]`
-/

namespace A346622.P13485096853310091937
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305614 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346622.P13485096853310091937

namespace A346622

/-- `∑[char[eq[2, A305614(n+1)]]]` -/
def P13485096853310091937.Spec : Prop :=
  ∀ n, (P13485096853310091937.a n : ℤ) = A346622 (n + 1)

end A346622

/-!
# A346623: a(n) = Sum_{ x <= n : x odd and omega(x) = 2 } x.

The programs for A346623, the canonical program `A346623.P1530388966468851521` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346623 has offset 1).

The definition of A346623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346623.P14459547024800556907

`∑[(n+1)*A353676(n+1)]`
-/

namespace A346623.P14459547024800556907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A353676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346623.P14459547024800556907

namespace A346623

/-- `∑[(n+1)*A353676(n+1)]` -/
def P14459547024800556907.Spec : Prop :=
  ∀ n, P14459547024800556907.a n = A346623 (n + 1)

end A346623

/-! ## A346623.P1530388966468851521

`∑[(n+1)*A215480(A141310(n))]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A346623

/-- `∑[(n+1)*A215480(A141310(n))]` -/
def P1530388966468851521.Spec : Prop :=
  ∀ n, P1530388966468851521.a n = A346623 (n + 1)

theorem P1530388966468851521.correct : P1530388966468851521.Spec := by
  intro n
  simp only [A346623, Nat.add_sub_cancel]

end A346623

/-! ## A346623.P13352233205872072930

`∑[(n+1)*A353481(A007947(n+1))]`
-/

namespace A346623.P13352233205872072930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A353481 (A007947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346623.P13352233205872072930

namespace A346623

/-- `∑[(n+1)*A353481(A007947(n+1))]` -/
def P13352233205872072930.Spec : Prop :=
  ∀ n, P13352233205872072930.a n = A346623 (n + 1)

end A346623

/-! ## A346623.P4388761496153365965

`∑[(n+1)*A000035((n+1)*A215480(n+1))]`
-/

namespace A346623.P4388761496153365965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000035 ((n + 1 : ℤ) * A215480 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346623.P4388761496153365965

namespace A346623

/-- `∑[(n+1)*A000035((n+1)*A215480(n+1))]` -/
def P4388761496153365965.Spec : Prop :=
  ∀ n, P4388761496153365965.a n = A346623 (n + 1)

end A346623

/-! ## A346623.P9825603390216214979

`∑[(n+1)*char[eq[2, A305614(n+1)]]]`
-/

namespace A346623.P9825603390216214979
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305614 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346623.P9825603390216214979

namespace A346623

/-- `∑[(n+1)*char[eq[2, A305614(n+1)]]]` -/
def P9825603390216214979.Spec : Prop :=
  ∀ n, (P9825603390216214979.a n : ℤ) = A346623 (n + 1)

end A346623

/-! ## A346623.P6847576526024107943

`∑[A131209(n)*A215480(n+1)*and(1, n+1)]`
-/

namespace A346623.P6847576526024107943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131209 n * A215480 (n + 1) * (Nat.land 1 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346623.P6847576526024107943

namespace A346623

/-- `∑[A131209(n)*A215480(n+1)*and(1, n+1)]` -/
def P6847576526024107943.Spec : Prop :=
  ∀ n, P6847576526024107943.a n = A346623 (n + 1)

end A346623

/-! ## A346623.P3399640809060036918

`∑[A131209(n)*A215480(n+1)*A000035(n+1)]`
-/

namespace A346623.P3399640809060036918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131209 n * A215480 (n + 1) * A000035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346623.P3399640809060036918

namespace A346623

/-- `∑[A131209(n)*A215480(n+1)*A000035(n+1)]` -/
def P3399640809060036918.Spec : Prop :=
  ∀ n, P3399640809060036918.a n = A346623 (n + 1)

end A346623

/-!
# A346625: a(0) = 8; for n > 0, a(n) = a(n-1)^2 - 2.

The programs for A346625, the canonical program `A346625.P9145326404702008262` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346625 has offset 0).

The definition of A346625 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-2` (program `A346625.P9145326404702008262`, by `A346625.P9145326404702008262.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A346625.P9145326404702008262

`a(n-1)²-2` with `a(0)=8`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A346625

/-- `a(n-1)²-2` -/
def P9145326404702008262.Spec : Prop :=
  ∀ n, P9145326404702008262.a n = A346625 n

theorem P9145326404702008262.correct : P9145326404702008262.Spec := by
  intro n
  simp only [A346625]

end A346625

/-! ## A346625.P16083987240876524358

`(4+sqrt(15))^2^n+(4-sqrt(15))^2^n`
-/

namespace A346625.P16083987240876524358
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 + Real.sqrt (15 : ℝ)) ^ 2 ^ n + (4 - Real.sqrt (15 : ℝ)) ^ 2 ^ n

end

end A346625.P16083987240876524358

namespace A346625

/-- `(4+sqrt(15))^2^n+(4-sqrt(15))^2^n` -/
def P16083987240876524358.Spec : Prop :=
  ∀ n, P16083987240876524358.a n = (A346625 n : ℝ)

end A346625

/-! ## A346625.P12032649629860196305

`2*A005828(n)`
-/

namespace A346625.P12032649629860196305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005828 n

end

end A346625.P12032649629860196305

namespace A346625

/-- `2*A005828(n)` -/
def P12032649629860196305.Spec : Prop :=
  ∀ n, P12032649629860196305.a n = A346625 n

end A346625

/-!
# A346626: G.f. A(x) satisfies: A(x) = (1 + x * A(x)^3) / (1 - x).

The programs for A346626, there is no canonical definition to state claims against.
-/

/-! ## A346626.P6974418437127046971

`∑[A213282(n)]`
-/

namespace A346626.P6974418437127046971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346626.P6974418437127046971

/-! ## A346626.P4820171709611021093

`A378236(∑[n+1]+n)`
-/

namespace A346626.P4820171709611021093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378236 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A346626.P4820171709611021093

/-! ## A346626.P16334106443831471136

`record[A378236(A038722(n+1))]`
-/

namespace A346626.P16334106443831471136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378236 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346626.P16334106443831471136

/-! ## A346626.P804280657583235053

`A213282(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A346626.P804280657583235053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A213282 n + a (A023443 n).toNat

end

end A346626.P804280657583235053

/-! ## A346626.P3274030761880275045

`record[gcd(A378236(n), A378238(n+1))]`
-/

namespace A346626.P3274030761880275045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A378236 n) (A378238 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346626.P3274030761880275045

/-!
# A346627: G.f. A(x) satisfies: A(x) = 1 / (1 + x) + x * A(x)^3.

The programs for A346627, there is no canonical definition to state claims against.
-/

/-! ## A346627.P17458595992073169992

`A316371(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A346627.P17458595992073169992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A316371 (n - 1) - a (n - 1)

end

end A346627.P17458595992073169992

/-! ## A346627.P6915401013420402459

`A126206(A175005(n+1))`
-/

namespace A346627.P6915401013420402459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126206 (A175005 (n + 1)).toNat

end

end A346627.P6915401013420402459

/-! ## A346627.P17329347531429766675

`A008676(xor(1, A001893(n+3)))`
-/

namespace A346627.P17329347531429766675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (Int.xor 1 (A001893 (n + 3))).toNat

end

end A346627.P17329347531429766675

/-! ## A346627.P6533581077533472947

`A008676(or(5, A001893(n+3)))`
-/

namespace A346627.P6533581077533472947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (Int.lor 5 (A001893 (n + 3))).toNat

end

end A346627.P6533581077533472947

/-!
# A346628: G.f. A(x) satisfies: A(x) = 1 / (1 + x) + x * (1 + x) * A(x)^3.

The programs for A346628, there is no canonical definition to state claims against.
-/

/-! ## A346628.P15037475096467414660

`A127897(n)-a(n-1)` with `a(0)=1`
-/

namespace A346628.P15037475096467414660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A127897 n - a (n - 1)

end

end A346628.P15037475096467414660

/-!
# A346629: Number of n-digit positive integers that are the product of two integers ending with 2.

The programs for A346629, the canonical program `A346629.P17523255366090701497` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346629 has offset 1).

The definition of A346629 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346629.P17523255366090701497

`10*a(n-1)` with `a(0)=1, a(1)=4, a(2)=45`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A346629

/-- `10*a(n-1)` -/
def P17523255366090701497.Spec : Prop :=
  ∀ n, (P17523255366090701497.a n : ℤ) = A346629 (n + 1)

theorem P17523255366090701497.correct : P17523255366090701497.Spec := by
  intro n
  simp only [A346629, Nat.add_sub_cancel]

end A346629

/-! ## A346629.P3495091799492458354

`ogf((1-6x+5x^2)/(1-10x))`
-/

namespace A346629.P3495091799492458354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6, 5] [1, -10] n

end

end A346629.P3495091799492458354

namespace A346629

/-- `ogf((1-6x+5x^2)/(1-10x))` -/
def P3495091799492458354.Spec : Prop :=
  ∀ n, P3495091799492458354.a n = A346629 (n + 1)

end A346629

/-! ## A346629.P8489071302011040013

`Δ[round(10^(n-1)/2)]`
-/

namespace A346629.P8489071302011040013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((10 : ℚ) ^ ((n : ℤ) - 1 : ℤ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A346629.P8489071302011040013

namespace A346629

/-- `Δ[round(10^(n-1)/2)]` -/
def P8489071302011040013.Spec : Prop :=
  ∀ n, P8489071302011040013.a n = A346629 (n + 1)

end A346629

/-! ## A346629.P12751913906532104497

`floor(A093138(n)+A093138(n)/2)`
-/

namespace A346629.P12751913906532104497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A093138 n : ℚ) + (A093138 n : ℚ) / 2⌋

end

end A346629.P12751913906532104497

namespace A346629

/-- `floor(A093138(n)+A093138(n)/2)` -/
def P12751913906532104497.Spec : Prop :=
  ∀ n, P12751913906532104497.a n = A346629 (n + 1)

end A346629

/-! ## A346629.P3000780840301761346

`A055996(n)-2*A337855(n+1)`
-/

namespace A346629.P3000780840301761346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055996 n - 2 * A337855 (n + 1)

end

end A346629.P3000780840301761346

namespace A346629

/-- `A055996(n)-2*A337855(n+1)` -/
def P3000780840301761346.Spec : Prop :=
  ∀ n, P3000780840301761346.a n = A346629 (n + 1)

end A346629

/-! ## A346629.P621661236621647551

`ceil((sqrt(ϕ)+3*A090019(n))/4)-1`
-/

namespace A346629.P621661236621647551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt Real.goldenRatio + (3 * A090019 n : ℝ)) / 4⌉ - 1

end

end A346629.P621661236621647551

namespace A346629

/-- `ceil((sqrt(ϕ)+3*A090019(n))/4)-1` -/
def P621661236621647551.Spec : Prop :=
  ∀ n, P621661236621647551.a n = A346629 (n + 1)

end A346629

/-! ## A346629.P11052851263583642938

`floor((A228085(n)+3*A090019(n))/4)`
-/

namespace A346629.P11052851263583642938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A228085 n + 3 * A090019 n : ℚ) / 4⌋

end

end A346629.P11052851263583642938

namespace A346629

/-- `floor((A228085(n)+3*A090019(n))/4)` -/
def P11052851263583642938.Spec : Prop :=
  ∀ n, P11052851263583642938.a n = A346629 (n + 1)

end A346629

/-! ## A346629.P14530058636391426261

`floor(A196662(2*n)/A099915(n))`
-/

namespace A346629.P14530058636391426261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A196662 (2 * n) : ℚ) / (A099915 n : ℚ)⌋

end

end A346629.P14530058636391426261

namespace A346629

/-- `floor(A196662(2*n)/A099915(n))` -/
def P14530058636391426261.Spec : Prop :=
  ∀ n, P14530058636391426261.a n = A346629 (n + 1)

end A346629

/-!
# A346630: Smallest number which reaches the narcissistic number 153 after n steps when repeatedly summing the cubes of its digits.

The programs for A346630, there is no canonical definition to state claims against.
-/

/-! ## A346630.P9503451911435746943

`A165340(∑[n])`
-/

namespace A346630.P9503451911435746943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165340 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346630.P9503451911435746943

/-! ## A346630.P14905551740371436659

`lcm(3, A165340((n²+n)/2))`
-/

namespace A346630.P14905551740371436659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A165340 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat)

end

end A346630.P14905551740371436659

/-! ## A346630.P12148978211330958179

`and(-1, A165340(A000217(n)))`
-/

namespace A346630.P12148978211330958179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A165340 (A000217 n).toNat)

end

end A346630.P12148978211330958179

/-! ## A346630.P11686893023779818048

`∑{d}[A165340((n²+n)/2), A000010(#)]`
-/

namespace A346630.P11686893023779818048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165340 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A346630.P11686893023779818048

/-! ## A346630.P16630392882912870633

`A165340(C(n+1, 2))%A228377(n+1)`
-/

namespace A346630.P16630392882912870633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165340 (Nat.choose (n + 1) 2)) (A228377 (n + 1))

end

end A346630.P16630392882912870633

/-!
# A346631: Number of strongly asymmetric Boolean nested canalizing functions with n variables.

The programs for A346631, there is no canonical definition to state claims against.
-/

/-! ## A346631.P11344383193904104511

`2*A052580(n+2)`
-/

namespace A346631.P11344383193904104511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052580 (n + 2)

end

end A346631.P11344383193904104511

/-!
# A346632: Triangle read by rows giving the main diagonals of the matrices counting integer compositions by length and alternating sum (A345197).

The programs for A346632, there is no canonical definition to state claims against.
-/

/-! ## A346632.P12561473694485367314

`(a(n-1)+1)%A000120(A155495(n))` with `a(0)=1`
-/

namespace A346632.P12561473694485367314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) + 1) (A000120 (A155495 n).toNat)

end

end A346632.P12561473694485367314

/-! ## A346632.P18219119182334689559

`A000031(a(n-1))%A201052(A139622(n+1))` with `a(0)=1`
-/

namespace A346632.P18219119182334689559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A000031 (a (n - 1)).toNat) (A201052 (A139622 (n + 1)).toNat)

end

end A346632.P18219119182334689559

/-! ## A346632.P3170076738773567621

`(a(n-1)+13)%A048687(A110291(n)%A075935(n))` with `a(0)=1`
-/

namespace A346632.P3170076738773567621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) + 13) (A048687 (Int.tmod (A110291 n) (A075935 n)).toNat)

end

end A346632.P3170076738773567621

/-! ## A346632.P12833690254077102905

`A085895(A269129(n))%A055652(n)`
-/

namespace A346632.P12833690254077102905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085895 (A269129 n).toNat) (A055652 n)

end

end A346632.P12833690254077102905

/-! ## A346632.P12313045755509016929

`A062756(lcm(A270882(n), A276719(n)))`
-/

namespace A346632.P12313045755509016929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (Int.lcm (A270882 n) (A276719 n))

end

end A346632.P12313045755509016929

/-!
# A346633: Sum of even-indexed parts (even bisection) of the n-th composition in standard order.

The programs for A346633, the canonical program `A346633.P1782636682428832130` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346633 has offset 0).

The definition of A346633 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346633.P1782636682428832130

`A029837(n+1)-A209281(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A346633

/-- `A029837(n+1)-A209281(n+1)` -/
def P1782636682428832130.Spec : Prop :=
  ∀ n, P1782636682428832130.a n = A346633 n

theorem P1782636682428832130.correct : P1782636682428832130.Spec := by
  intro n
  simp only [A346633]

end A346633

/-! ## A346633.P4413553687222726041

`(A029837(n+1)-A124754(n))/2`
-/

namespace A346633.P4413553687222726041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029837 (n + 1) - A124754 n : ℚ) / 2

end

end A346633.P4413553687222726041

namespace A346633

/-- `(A029837(n+1)-A124754(n))/2` -/
def P4413553687222726041.Spec : Prop :=
  ∀ n, P4413553687222726041.a n = (A346633 n : ℚ)

end A346633

/-! ## A346633.P12541389976393799836

`char[xor(n, 2*n)]+a(floor(n/2))` with `a(0)=0`
-/

namespace A346633.P12541389976393799836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a ⌊(n : ℚ) / 2⌋.toNat

end

end A346633.P12541389976393799836

namespace A346633

/-- `char[xor(n, 2*n)]+a(floor(n/2))` -/
def P12541389976393799836.Spec : Prop :=
  ∀ n, (P12541389976393799836.a n : ℤ) = A346633 n

end A346633

/-! ## A346633.P18420210610407870867

`a(floor(n/2))+comp[xor(n, 2*n)]%2` with `a(0)=0`
-/

namespace A346633.P18420210610407870867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2

end

end A346633.P18420210610407870867

namespace A346633

/-- `a(floor(n/2))+comp[xor(n, 2*n)]%2` -/
def P18420210610407870867.Spec : Prop :=
  ∀ n, (P18420210610407870867.a n : ℤ) = A346633 n

end A346633

/-! ## A346633.P1699514754111742972

`A010059(n)+a(floor(n/2))` with `a(0)=0`
-/

namespace A346633.P1699514754111742972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A010059 n + a ⌊(n : ℚ) / 2⌋.toNat

end

end A346633.P1699514754111742972

namespace A346633

/-- `A010059(n)+a(floor(n/2))` -/
def P1699514754111742972.Spec : Prop :=
  ∀ n, P1699514754111742972.a n = A346633 n

end A346633

/-! ## A346633.P7610191478396504262

`a(floor(n/2))+1-A010060(n)` with `a(0)=0`
-/

namespace A346633.P7610191478396504262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + (1 - A010060 n)

end

end A346633.P7610191478396504262

namespace A346633

/-- `a(floor(n/2))+1-A010060(n)` -/
def P7610191478396504262.Spec : Prop :=
  ∀ n, P7610191478396504262.a n = A346633 n

end A346633

/-! ## A346633.P5619913789017516138

`A070941(n)-A089215(n+1)`
-/

namespace A346633.P5619913789017516138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 n - A089215 (n + 1)

end

end A346633.P5619913789017516138

namespace A346633

/-- `A070941(n)-A089215(n+1)` -/
def P5619913789017516138.Spec : Prop :=
  ∀ n, P5619913789017516138.a n = A346633 n

end A346633

/-! ## A346633.P10381624371625331832

`A209281(1-A053644(n)+n)`
-/

namespace A346633.P10381624371625331832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209281 (1 - A053644 n + (n : ℤ)).toNat

end

end A346633.P10381624371625331832

namespace A346633

/-- `A209281(1-A053644(n)+n)` -/
def P10381624371625331832.Spec : Prop :=
  ∀ n, P10381624371625331832.a n = A346633 n

end A346633

/-! ## A346633.P11716758136690185271

`A209281(n+1)-A124754(n)`
-/

namespace A346633.P11716758136690185271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209281 (n + 1) - A124754 n

end

end A346633.P11716758136690185271

namespace A346633

/-- `A209281(n+1)-A124754(n)` -/
def P11716758136690185271.Spec : Prop :=
  ∀ n, P11716758136690185271.a n = A346633 n

end A346633

/-! ## A346633.P4632451980245341236

`A142150(A070939(n)-A124754(n))`
-/

namespace A346633.P4632451980245341236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A070939 n - A124754 n).toNat

end

end A346633.P4632451980245341236

namespace A346633

/-- `A142150(A070939(n)-A124754(n))` -/
def P4632451980245341236.Spec : Prop :=
  ∀ n, P4632451980245341236.a n = A346633 n

end A346633

/-! ## A346633.P15254308463362005937

`A001281(A029837(n+1)-A124754(n))`
-/

namespace A346633.P15254308463362005937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A029837 (n + 1) - A124754 n).toNat

end

end A346633.P15254308463362005937

namespace A346633

/-- `A001281(A029837(n+1)-A124754(n))` -/
def P15254308463362005937.Spec : Prop :=
  ∀ n, P15254308463362005937.a n = A346633 n

end A346633

/-! ## A346633.P11433227610573684901

`A080791(A006068(n))`
-/

namespace A346633.P11433227610573684901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A006068 n).toNat

end

end A346633.P11433227610573684901

namespace A346633

/-- `A080791(A006068(n))` -/
def P11433227610573684901.Spec : Prop :=
  ∀ n, P11433227610573684901.a n = A346633 n

end A346633

/-! ## A346633.P14369856667718314173

`A092339(A064707(n))`
-/

namespace A346633.P14369856667718314173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 (A064707 n).toNat

end

end A346633.P14369856667718314173

namespace A346633

/-- `A092339(A064707(n))` -/
def P14369856667718314173.Spec : Prop :=
  ∀ n, P14369856667718314173.a n = A346633 n

end A346633

/-! ## A346633.P14185003891807843100

`A023416(A268716(n)+1)`
-/

namespace A346633.P14185003891807843100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A268716 n + 1).toNat

end

end A346633.P14185003891807843100

namespace A346633

/-- `A023416(A268716(n)+1)` -/
def P14185003891807843100.Spec : Prop :=
  ∀ n, P14185003891807843100.a n = A346633 n

end A346633

/-! ## A346633.P4974489443076028158

`A253559(A269855(n))`
-/

namespace A346633.P4974489443076028158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253559 (A269855 n).toNat

end

end A346633.P4974489443076028158

namespace A346633

/-- `A253559(A269855(n))` -/
def P4974489443076028158.Spec : Prop :=
  ∀ n, P4974489443076028158.a n = A346633 n

end A346633

/-!
# A346634: Number of strict odd-length integer partitions of 2n + 1.

The programs for A346634, there is no canonical definition to state claims against.
-/

/-! ## A346634.P11558718328050475218

`A078408(n)-A067661(2*n+1)`
-/

namespace A346634.P11558718328050475218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078408 n - A067661 (2 * n + 1)

end

end A346634.P11558718328050475218

/-! ## A346634.P12352930087810752579

`A067661(2*n)+Δ[A238215(2*n)]`
-/

namespace A346634.P12352930087810752579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238215 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 (2 * n) + (f1 (n + 1) - f1 n)

end

end A346634.P12352930087810752579

/-! ## A346634.P14229484157847328540

`A121373(2*n+1)+A067661(2*n+1)`
-/

namespace A346634.P14229484157847328540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (2 * n + 1) + A067661 (2 * n + 1)

end

end A346634.P14229484157847328540

/-! ## A346634.P4895210217992963048

`A257628(2*n+1)+A067661(2*n+1)`
-/

namespace A346634.P4895210217992963048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257628 (2 * n + 1) + A067661 (2 * n + 1)

end

end A346634.P4895210217992963048

/-! ## A346634.P15537016586022889464

`A000009(2*n+1)-A067661(2*n+1)`
-/

namespace A346634.P15537016586022889464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (2 * n + 1) - A067661 (2 * n + 1)

end

end A346634.P15537016586022889464

/-! ## A346634.P17941024675474529548

`A067661(2*n+1)-A010815(2*n+1)`
-/

namespace A346634.P17941024675474529548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 (2 * n + 1) - A010815 (2 * n + 1)

end

end A346634.P17941024675474529548

/-! ## A346634.P3677122902184873602

`A096441(2*n+1)-A067661(2*n+1)`
-/

namespace A346634.P3677122902184873602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096441 (2 * n + 1) - A067661 (2 * n + 1)

end

end A346634.P3677122902184873602

/-! ## A346634.P11148806061698081315

`A335746(2*n+1)-A186741(2*n+1)`
-/

namespace A346634.P11148806061698081315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335746 (2 * n + 1) - A186741 (2 * n + 1)

end

end A346634.P11148806061698081315

/-! ## A346634.P6717628978322809679

`A067661(2*n+1)-A274719(4*n+2)`
-/

namespace A346634.P6717628978322809679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067661 (2 * n + 1) - A274719 (4 * n + 2)

end

end A346634.P6717628978322809679

/-! ## A346634.P5368737248704345289

`abs(A081360(2*n+1)+A067661(2*n+1))`
-/

namespace A346634.P5368737248704345289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 (2 * n + 1) + A067661 (2 * n + 1)|

end

end A346634.P5368737248704345289

/-! ## A346634.P16935008961728091386

`A111133(2*n+1)+1-A067661(2*n+1)`
-/

namespace A346634.P16935008961728091386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 (2 * n + 1) + (1 - A067661 (2 * n + 1))

end

end A346634.P16935008961728091386

/-! ## A346634.P11388833949758240205

`(A121373(2*n+1)+A000009(2*n+1))/2`
-/

namespace A346634.P11388833949758240205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121373 (2 * n + 1) + A000009 (2 * n + 1) : ℚ) / 2

end

end A346634.P11388833949758240205

/-! ## A346634.P12580955799048543590

`(A000009(2*n+1)-A010815(2*n+1))/2`
-/

namespace A346634.P12580955799048543590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000009 (2 * n + 1) - A010815 (2 * n + 1) : ℚ) / 2

end

end A346634.P12580955799048543590

/-! ## A346634.P14170243026404679578

`(A121373(2*n+1)-A081360(2*n+1))/2`
-/

namespace A346634.P14170243026404679578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121373 (2 * n + 1) - A081360 (2 * n + 1) : ℚ) / 2

end

end A346634.P14170243026404679578

/-! ## A346634.P12753407469090315912

`A067659(Δ[n²])`
-/

namespace A346634.P12753407469090315912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A346634.P12753407469090315912

/-! ## A346634.P4182138759858676997

`A096791(Δ[n²])`
-/

namespace A346634.P4182138759858676997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096791 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A346634.P4182138759858676997

/-! ## A346634.P10592524166285286945

`xor(1, xor(1, A067659(2*n+1)))`
-/

namespace A346634.P10592524166285286945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A067659 (2 * n + 1)))

end

end A346634.P10592524166285286945

/-! ## A346634.P15558903077007397222

`A343942(n)+A218173(n)`
-/

namespace A346634.P15558903077007397222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343942 n + A218173 n

end

end A346634.P15558903077007397222

/-! ## A346634.P14186524300661564172

`A078408(n)-A343942(n)`
-/

namespace A346634.P14186524300661564172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078408 n - A343942 n

end

end A346634.P14186524300661564172

/-! ## A346634.P10969353003327972694

`A000009(2*n+1)-A343942(n)`
-/

namespace A346634.P10969353003327972694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (2 * n + 1) - A343942 n

end

end A346634.P10969353003327972694

/-!
# A346635: Numbers whose division (or multiplication) by their greatest prime factor yields a perfect square. Numbers k such that k*A006530(k) is a perfect square.

The programs for A346635, there is no canonical definition to state claims against.
-/

/-! ## A346635.P4452655623163334794

`lt[0, char[A342768(n+1)]]`
-/

namespace A346635.P4452655623163334794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342768 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A346635.P4452655623163334794

/-! ## A346635.P17505172198060872035

`eq[1, A329378(n+1)%2]+1`
-/

namespace A346635.P17505172198060872035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329378 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A346635.P17505172198060872035

/-! ## A346635.P13876114756687693531

`eq[1, A329382(n+1)%2]+1`
-/

namespace A346635.P13876114756687693531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329382 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A346635.P13876114756687693531

/-! ## A346635.P3523229530508438297

`eq[1, A329617(n+1)%2]+1`
-/

namespace A346635.P3523229530508438297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329617 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A346635.P3523229530508438297

/-! ## A346635.P3983998832388256417

`eq[0, A064875(A052126(n+1))]+1`
-/

namespace A346635.P3983998832388256417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064875 (A052126 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A346635.P3983998832388256417

/-! ## A346635.P5720746479324754616

`eq[A006530(n+1), A007913(n+1)]+1`
-/

namespace A346635.P5720746479324754616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A346635.P5720746479324754616

/-! ## A346635.P18245600479804238247

`eq[A006530(n+1)², A055491(n+1)]+1`
-/

namespace A346635.P18245600479804238247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055491 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A346635.P18245600479804238247

/-! ## A346635.P17866322766570979033

`record[(n+1)/A002828((n+1)/A006530(n+1))]`
-/

namespace A346635.P17866322766570979033
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A002828 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346635.P17866322766570979033

/-! ## A346635.P15372896982763878702

`eq[1, A000005((n+1)*A006530(n+1))%2]+1`
-/

namespace A346635.P15372896982763878702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 ((n + 1 : ℤ) * A006530 (n + 1)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A346635.P15372896982763878702

/-! ## A346635.P10579395824804064281

`eq[1, A000005((n+1)/A006530(n+1))%2]+1`
-/

namespace A346635.P10579395824804064281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A346635.P10579395824804064281

/-!
# A346636: a(n) is the number of quadruples (a_1, a_2, a_3, a_4) having all terms in {1,...,n} such that there exists a quadrilateral with these side lengths.

The programs for A346636, the canonical program `A346636.P17085452424129470883` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346636 has offset 0).

The definition of A346636 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346636.P17085452424129470883

`n^4-4*C(n+1, 4)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A346636

/-- `n^4-4*C(n+1, 4)` -/
def P17085452424129470883.Spec : Prop :=
  ∀ n, P17085452424129470883.a n = A346636 n

theorem P17085452424129470883.correct : P17085452424129470883.Spec := by
  intro n
  simp only [A346636]

end A346636

/-! ## A346636.P12313690696337733776

`n^4-∑[4*C(n, 3)]`
-/

namespace A346636.P12313690696337733776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose n 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A346636.P12313690696337733776

namespace A346636

/-- `n^4-∑[4*C(n, 3)]` -/
def P12313690696337733776.Spec : Prop :=
  ∀ n, P12313690696337733776.a n = A346636 n

end A346636

/-! ## A346636.P9072719783651934714

`n^4-∑[C(n, 3)]-C(C(n, 2), 2)`
-/

namespace A346636.P9072719783651934714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose (Nat.choose n 2) 2 : ℤ)

end

end A346636.P9072719783651934714

namespace A346636

/-- `n^4-∑[C(n, 3)]-C(C(n, 2), 2)` -/
def P9072719783651934714.Spec : Prop :=
  ∀ n, P9072719783651934714.a n = A346636 n

end A346636

/-! ## A346636.P5873424956980336333

`n²+(n+1)*(n^3-∑[∑[n]])`
-/

namespace A346636.P5873424956980336333
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (n + 1 : ℤ) * ((n ^ 3 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A346636.P5873424956980336333

namespace A346636

/-- `n²+(n+1)*(n^3-∑[∑[n]])` -/
def P5873424956980336333.Spec : Prop :=
  ∀ n, P5873424956980336333.a n = A346636 n

end A346636

/-! ## A346636.P3440482541183889633

`abs(∑[4*C(n, 3)]-A000583(n))`
-/

namespace A346636.P3440482541183889633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose n 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000583 n|

end

end A346636.P3440482541183889633

namespace A346636

/-- `abs(∑[4*C(n, 3)]-A000583(n))` -/
def P3440482541183889633.Spec : Prop :=
  ∀ n, P3440482541183889633.a n = A346636 n

end A346636

/-!
# A346637: a(n) is the number of quintuples (a_1,a_2,a_3,a_4,a_5) having all terms in {1,...,n} such that there exists a pentagon with these side-lengths.

The programs for A346637, the canonical program `A346637.P14299725557382000887` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346637 has offset 0).

The definition of A346637 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346637.P14299725557382000887

`n^5-5*C(n+1, 5)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A346637

/-- `n^5-5*C(n+1, 5)` -/
def P14299725557382000887.Spec : Prop :=
  ∀ n, P14299725557382000887.a n = A346637 n

theorem P14299725557382000887.correct : P14299725557382000887.Spec := by
  intro n
  simp only [A346637]

end A346637

/-! ## A346637.P5498370468724619103

`n*n²²-(n+1)*A000332(n)`
-/

namespace A346637.P5498370468724619103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * (n ^ 2) ^ 2 : ℤ) - (n + 1 : ℤ) * A000332 n

end

end A346637.P5498370468724619103

namespace A346637

/-- `n*n²²-(n+1)*A000332(n)` -/
def P5498370468724619103.Spec : Prop :=
  ∀ n, P5498370468724619103.a n = A346637 n

end A346637

/-! ## A346637.P13405244558941883810

`A050534(n)+n*A212090(n)`
-/

namespace A346637.P13405244558941883810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050534 n + (n : ℤ) * A212090 n

end

end A346637.P13405244558941883810

namespace A346637

/-- `A050534(n)+n*A212090(n)` -/
def P13405244558941883810.Spec : Prop :=
  ∀ n, P13405244558941883810.a n = A346637 n

end A346637

/-! ## A346637.P13115149120245887208

`n^5-Δ[A000910(n+1)]`
-/

namespace A346637.P13115149120245887208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 5 : ℤ) - (f1 (n + 1) - f1 n)

end

end A346637.P13115149120245887208

namespace A346637

/-- `n^5-Δ[A000910(n+1)]` -/
def P13115149120245887208.Spec : Prop :=
  ∀ n, P13115149120245887208.a n = A346637 n

end A346637

/-! ## A346637.P10023770181785748288

`n^5-A333321(2*n+1)`
-/

namespace A346637.P10023770181785748288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 5 : ℤ) - A333321 (2 * n + 1)

end

end A346637.P10023770181785748288

namespace A346637

/-- `n^5-A333321(2*n+1)` -/
def P10023770181785748288.Spec : Prop :=
  ∀ n, P10023770181785748288.a n = A346637 n

end A346637

/-! ## A346637.P11548045231494577351

`A161680(A161680(n))+n*A212090(n)`
-/

namespace A346637.P11548045231494577351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A161680 n).toNat + (n : ℤ) * A212090 n

end

end A346637.P11548045231494577351

namespace A346637

/-- `A161680(A161680(n))+n*A212090(n)` -/
def P11548045231494577351.Spec : Prop :=
  ∀ n, P11548045231494577351.a n = A346637 n

end A346637

/-!
# A346638: a(n) is the number of 6-tuples (a_1,a_2,a_3,a_4,a_5,a_6) having all terms in {1,...,n} such that there exists a hexagon with these side-lengths.

The programs for A346638, the canonical program `A346638.P3700208718977963098` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346638 has offset 0).

The definition of A346638 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346638.P3700208718977963098

`n^6-6*C(n+1, 6)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A346638

/-- `n^6-6*C(n+1, 6)` -/
def P3700208718977963098.Spec : Prop :=
  ∀ n, P3700208718977963098.a n = A346638 n

theorem P3700208718977963098.correct : P3700208718977963098.Spec := by
  intro n
  simp only [A346638]

end A346638

/-! ## A346638.P4833309337839999305

`A001014(n)-(n+1)*A000389(n)`
-/

namespace A346638.P4833309337839999305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n - (n + 1 : ℤ) * A000389 n

end

end A346638.P4833309337839999305

namespace A346638

/-- `A001014(n)-(n+1)*A000389(n)` -/
def P4833309337839999305.Spec : Prop :=
  ∀ n, P4833309337839999305.a n = A346638 n

end A346638

/-! ## A346638.P5106077241041474608

`A000578(n)²-(n+1)*A000389(n)`
-/

namespace A346638.P5106077241041474608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n ^ 2 - (n + 1 : ℤ) * A000389 n

end

end A346638.P5106077241041474608

namespace A346638

/-- `A000578(n)²-(n+1)*A000389(n)` -/
def P5106077241041474608.Spec : Prop :=
  ∀ n, P5106077241041474608.a n = A346638 n

end A346638

/-!
# A346641: Numbers k with at least one partition into two parts (s,t), s<=t such that t | s*k but no proper divisor of k has this property.

The programs for A346641, there is no canonical definition to state claims against.
-/

/-! ## A346641.P8750642795655221562

`eq[1, A243982(n+1)]+1`
-/

namespace A346641.P8750642795655221562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243982 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A346641.P8750642795655221562

/-! ## A346641.P8974876979906759584

`eq[1, A243982(A028310(n))]`
-/

namespace A346641.P8974876979906759584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243982 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A346641.P8974876979906759584

/-! ## A346641.P15704174170008914855

`A020725(eq[1, A243982(n+1)])`
-/

namespace A346641.P15704174170008914855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346641.P15704174170008914855

/-! ## A346641.P14502717933717284320

`A141310(eq[1, A243982(n+1)])`
-/

namespace A346641.P14502717933717284320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346641.P14502717933717284320

/-! ## A346641.P7460033685876901702

`eq[A032741(n), A237271(A028310(n))]`
-/

namespace A346641.P7460033685876901702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346641.P7460033685876901702

/-!
# A346642: a(n) = Sum_{j=1..n} Sum_{i=1..j} j^3*i^3.

The programs for A346642, the canonical program `A346642.P16342547376837401772` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346642 has offset 0).

The definition of A346642 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346642.P16342547376837401772

`∑[∑[n]²*n^3]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A346642

/-- `∑[∑[n]²*n^3]` -/
def P16342547376837401772.Spec : Prop :=
  ∀ n, (P16342547376837401772.a n : ℤ) = A346642 n

theorem P16342547376837401772.correct : P16342547376837401772.Spec := by
  intro n
  simp only [A346642]

end A346642

/-! ## A346642.P6102609328848860684

`∑[lcm((n+1)², n^5)]/4`
-/

namespace A346642.P6102609328848860684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((n + 1) ^ 2) (n ^ 5)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4

end

end A346642.P6102609328848860684

namespace A346642

/-- `∑[lcm((n+1)², n^5)]/4` -/
def P6102609328848860684.Spec : Prop :=
  ∀ n, P6102609328848860684.a n = (A346642 n : ℚ)

end A346642

/-! ## A346642.P12554060270792334365

`∑[Δ[C(n, 2)^4]+n^6]/2`
-/

namespace A346642.P12554060270792334365
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + (n ^ 6 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A346642.P12554060270792334365

namespace A346642

/-- `∑[Δ[C(n, 2)^4]+n^6]/2` -/
def P12554060270792334365.Spec : Prop :=
  ∀ n, P12554060270792334365.a n = (A346642 n : ℚ)

end A346642

/-! ## A346642.P9696652639247286767

`a(n-1)+n*(n*∑[n])²` with `a(0)=0`
-/

namespace A346642.P9696652639247286767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n * (n * (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A346642.P9696652639247286767

namespace A346642

/-- `a(n-1)+n*(n*∑[n])²` -/
def P9696652639247286767.Spec : Prop :=
  ∀ n, (P9696652639247286767.a n : ℤ) = A346642 n

end A346642

/-! ## A346642.P16752724860625585733

`∑[n*lcm(n+1, n²)²/2]/2`
-/

namespace A346642.P16752724860625585733
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * Nat.lcm (n + 1) (n ^ 2) ^ 2 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) / 2

end

end A346642.P16752724860625585733

namespace A346642

/-- `∑[n*lcm(n+1, n²)²/2]/2` -/
def P16752724860625585733.Spec : Prop :=
  ∀ n, P16752724860625585733.a n = (A346642 n : ℚ)

end A346642

/-! ## A346642.P7592423382602614901

`∑[A163275(n)]/2`
-/

namespace A346642.P7592423382602614901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163275 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A346642.P7592423382602614901

namespace A346642

/-- `∑[A163275(n)]/2` -/
def P7592423382602614901.Spec : Prop :=
  ∀ n, P7592423382602614901.a n = (A346642 n : ℚ)

end A346642

/-! ## A346642.P340605236694512778

`A347107(n)+A000540(n)`
-/

namespace A346642.P340605236694512778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347107 n + A000540 n

end

end A346642.P340605236694512778

namespace A346642

/-- `A347107(n)+A000540(n)` -/
def P340605236694512778.Spec : Prop :=
  ∀ n, P340605236694512778.a n = A346642 n

end A346642

/-! ## A346642.P5563646616444838093

`A000537(n)²-A347107(n)`
-/

namespace A346642.P5563646616444838093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n ^ 2 - A347107 n

end

end A346642.P5563646616444838093

namespace A346642

/-- `A000537(n)²-A347107(n)` -/
def P5563646616444838093.Spec : Prop :=
  ∀ n, P5563646616444838093.a n = A346642 n

end A346642

/-! ## A346642.P7665010639371849665

`A000217(n)²²-A347107(n)`
-/

namespace A346642.P7665010639371849665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 n ^ 2) ^ 2 - A347107 n

end

end A346642.P7665010639371849665

namespace A346642

/-- `A000217(n)²²-A347107(n)` -/
def P7665010639371849665.Spec : Prop :=
  ∀ n, P7665010639371849665.a n = A346642 n

end A346642

/-! ## A346642.P4469317134383142726

`A000583(A000217(n))-A347107(n)`
-/

namespace A346642.P4469317134383142726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A000217 n).toNat - A347107 n

end

end A346642.P4469317134383142726

namespace A346642

/-- `A000583(A000217(n))-A347107(n)` -/
def P4469317134383142726.Spec : Prop :=
  ∀ n, P4469317134383142726.a n = A346642 n

end A346642

/-!
# A346643: Number of ways to write n as w^2 + 2*x^2 + 3*y^4 + 4*z^4, where w,x,y,z are nonnegative integers.

The programs for A346643, there is no canonical definition to state claims against.
-/

/-! ## A346643.P17085318221503168228

`A272979(n-A031346(A136625(n)))`
-/

namespace A346643.P17085318221503168228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272979 ((n : ℤ) - A031346 (A136625 n).toNat).toNat

end

end A346643.P17085318221503168228

/-! ## A346643.P5913548184579023892

`A272979(n-A173667(A136625(n)))`
-/

namespace A346643.P5913548184579023892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272979 ((n : ℤ) - A173667 (A136625 n).toNat).toNat

end

end A346643.P5913548184579023892

/-! ## A346643.P14248784620033852445

`gcd(A045946(C(n, 4)), A272979(n))`
-/

namespace A346643.P14248784620033852445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A045946 (Nat.choose n 4)) (A272979 n)

end

end A346643.P14248784620033852445

/-! ## A346643.P8244589920887245168

`A272979(n)%A350949(2*(n+2))`
-/

namespace A346643.P8244589920887245168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272979 n) (A350949 (2 * (n + 2)))

end

end A346643.P8244589920887245168

/-! ## A346643.P10950946055601439805

`A057427(A098504(n))*A272979(n)`
-/

namespace A346643.P10950946055601439805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A098504 n).toNat * A272979 n

end

end A346643.P10950946055601439805

/-!
# A346644: Least k >= 1 such that sigma(k)/tau(k) has denominator n or zero if no k exists.

The programs for A346644, there is no canonical definition to state claims against.
-/

/-! ## A346644.P9224354169701180170

`xor(A000079(n), A120040(A008433(n)))`
-/

namespace A346644.P9224354169701180170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000079 n) (A120040 (A008433 n).toNat)

end

end A346644.P9224354169701180170

/-! ## A346644.P2520597017461638438

`A266531(A000124(n)*A056057(n+1))`
-/

namespace A346644.P2520597017461638438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266531 (A000124 n * A056057 (n + 1)).toNat

end

end A346644.P2520597017461638438

/-! ## A346644.P6765153550112532098

`A332291(A005117(n+1)*A273134(2*(n+1)))`
-/

namespace A346644.P6765153550112532098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332291 (A005117 (n + 1) * A273134 (2 * (n + 1))).toNat

end

end A346644.P6765153550112532098

/-!
# A346645: Mersenne prime exponents p which are twin primes, so p-2 and/or p+2 is prime.

The programs for A346645, there is no canonical definition to state claims against.
-/

/-! ## A346645.P4290523130026738797

`∩[A000043(n+1), A001097(n+1)]`
-/

namespace A346645.P4290523130026738797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346645.P4290523130026738797

/-! ## A346645.P3714457123943648387

`∩[A001097(n+1), A048737(n+1)]`
-/

namespace A346645.P3714457123943648387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346645.P3714457123943648387

/-! ## A346645.P12898508870624394259

`∩[A001097(n+1), A174265(n+1)]`
-/

namespace A346645.P12898508870624394259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346645.P12898508870624394259

/-! ## A346645.P3640428039815028917

`∩[A001097(n+1), A174269(n+1)]`
-/

namespace A346645.P3640428039815028917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346645.P3640428039815028917

/-! ## A346645.P13546477886218440704

`∩[A001097(n+1), A190213(n+1)]`
-/

namespace A346645.P13546477886218440704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346645.P13546477886218440704

/-!
# A346646: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(4*k,k) / (3*k + 1).

The programs for A346646, there is no canonical definition to state claims against.
-/

/-! ## A346646.P15482537500499868130

`∑[A349331(n)]`
-/

namespace A346646.P15482537500499868130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346646.P15482537500499868130

/-! ## A346646.P6798757699322395569

`A349331(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A346646.P6798757699322395569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A349331 n + a (A023443 n).toNat

end

end A346646.P6798757699322395569

/-! ## A346646.P12820942437420296544

`a(n-1)+A349331(n)+A000007(n)` with `a(0)=1`
-/

namespace A346646.P12820942437420296544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A349331 n + A000007 n)

end

end A346646.P12820942437420296544

/-! ## A346646.P9600236127940681883

`a(n-1)+A033999(2*n)*A349331(n)` with `a(0)=1`
-/

namespace A346646.P9600236127940681883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A033999 (2 * n) * A349331 n

end

end A346646.P9600236127940681883

/-! ## A346646.P1835596802494658407

`a(n-1)+A349331(n)%A349333(n)` with `a(0)=1, a(1)=2, a(2)=7`
-/

namespace A346646.P1835596802494658407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7] fun n a =>
  a (n - 1) + Int.tmod (A349331 n) (A349333 n)

end

end A346646.P1835596802494658407

/-!
# A346647: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(5*k,k) / (4*k + 1).

The programs for A346647, there is no canonical definition to state claims against.
-/

/-! ## A346647.P5329730699270392951

`∑[A349332(n)]`
-/

namespace A346647.P5329730699270392951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346647.P5329730699270392951

/-! ## A346647.P16103724079768598576

`A349332(n%(n+3))+a(n-1)` with `a(0)=1`
-/

namespace A346647.P16103724079768598576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A349332 (n % (n + 3)) + a (n - 1)

end

end A346647.P16103724079768598576

/-! ## A346647.P15781528299255454930

`A349332(C(2, n²)+n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A346647.P15781528299255454930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A349332 (Nat.choose 2 (n ^ 2) + n) + a (n - 1)

end

end A346647.P15781528299255454930

/-! ## A346647.P17294911640164569155

`A349332(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A346647.P17294911640164569155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A349332 (A028310 n).toNat + a (n - 1)

end

end A346647.P17294911640164569155

/-! ## A346647.P193404773101141114

`A349332(A000038(n)+n)+a(n-1)` with `a(0)=1`
-/

namespace A346647.P193404773101141114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A349332 (A000038 n + (n : ℤ)).toNat + a (n - 1)

end

end A346647.P193404773101141114

/-! ## A346647.P4137120317830335373

`(A349332(n)+a(n-1))*A057427(n)` with `a(0)=1`
-/

namespace A346647.P4137120317830335373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A349332 n + a (n - 1)) * A057427 n

end

end A346647.P4137120317830335373

/-! ## A346647.P10308609429363546974

`A349332(xor(n, A151878(n)))+a(n-1)` with `a(0)=1`
-/

namespace A346647.P10308609429363546974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A349332 (Int.xor (n : ℤ) (A151878 n)).toNat + a (n - 1)

end

end A346647.P10308609429363546974

/-!
# A346648: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(6*k,k) / (5*k + 1).

The programs for A346648, there is no canonical definition to state claims against.
-/

/-! ## A346648.P18380715870665833055

`∑[A349333(n)]`
-/

namespace A346648.P18380715870665833055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346648.P18380715870665833055

/-!
# A346649: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(7*k,k) / (6*k + 1).

The programs for A346649, there is no canonical definition to state claims against.
-/

/-! ## A346649.P4078817119865165675

`∑[A349334(n)]`
-/

namespace A346649.P4078817119865165675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346649.P4078817119865165675

/-! ## A346649.P3492295613490998027

`A349334(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A346649.P3492295613490998027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A349334 n + a (A023443 n).toNat

end

end A346649.P3492295613490998027

/-! ## A346649.P1341374988124154831

`A349334(A000027(n))+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A346649.P1341374988124154831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A349334 (A000027 n).toNat + a (n - 1)

end

end A346649.P1341374988124154831

/-!
# A346650: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(8*k,k) / (7*k + 1).

The programs for A346650, there is no canonical definition to state claims against.
-/

/-! ## A346650.P7098564709609092389

`∑[A349335(n)]`
-/

namespace A346650.P7098564709609092389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346650.P7098564709609092389

/-! ## A346650.P9576824757488561535

`A349335(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A346650.P9576824757488561535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A349335 n + a (A023443 n).toNat

end

end A346650.P9576824757488561535

/-! ## A346650.P9175930362456519347

`A000027(A349335(n)+a(n-1))` with `a(0)=1`
-/

namespace A346650.P9175930362456519347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (A349335 n + a (n - 1)).toNat

end

end A346650.P9175930362456519347

/-!
# A346651: a(n) is the number of divisors of A139245(n) ending with 2.

The programs for A346651, there is no canonical definition to state claims against.
-/

/-! ## A346651.P657689324547562866

`A359237(Δ[n²])`
-/

namespace A346651.P657689324547562866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359237 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A346651.P657689324547562866

/-! ## A346651.P17952120629494272597

`A001876(10*n+2)`
-/

namespace A346651.P17952120629494272597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (10 * n + 2)

end

end A346651.P17952120629494272597

/-! ## A346651.P726797079481952956

`A001877(10*n+2)`
-/

namespace A346651.P726797079481952956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001877 (10 * n + 2)

end

end A346651.P726797079481952956

/-! ## A346651.P1510600926223608984

`A330348(20*n+4)`
-/

namespace A346651.P1510600926223608984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330348 (20 * n + 4)

end

end A346651.P1510600926223608984

/-! ## A346651.P721866029273654901

`dr(A359237(comp[2*n]))`
-/

namespace A346651.P721866029273654901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A359237 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A346651.P721866029273654901

/-! ## A346651.P16446327381442913137

`A083912(4*(5*n+1))`
-/

namespace A346651.P16446327381442913137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083912 (4 * (5 * n + 1))

end

end A346651.P16446327381442913137

/-! ## A346651.P13046311119791982520

`A083914(4*(5*n+1))`
-/

namespace A346651.P13046311119791982520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (4 * (5 * n + 1))

end

end A346651.P13046311119791982520

/-! ## A346651.P11695838884812693855

`dr(A001876(A017293(n)))`
-/

namespace A346651.P11695838884812693855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001876 (A017293 n).toNat)

end

end A346651.P11695838884812693855

/-! ## A346651.P12607721047155544657

`dr(A001876(A016873(2*n)))`
-/

namespace A346651.P12607721047155544657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001876 (A016873 (2 * n)).toNat)

end

end A346651.P12607721047155544657

/-! ## A346651.P13138241324328001554

`∑{d}[A017293(n), A079998(#-1)]`
-/

namespace A346651.P13138241324328001554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A079998 (d - 1)

end

end A346651.P13138241324328001554

/-!
# A346654: a(n) = Bell(2*n,n).

The programs for A346654, there is no canonical definition to state claims against.
-/

/-! ## A346654.P1411584485767227537

`A189233(A062725(n))`
-/

namespace A346654.P1411584485767227537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (A062725 n).toNat

end

end A346654.P1411584485767227537

/-! ## A346654.P10869715902584153418

`A292860(A062728(n))`
-/

namespace A346654.P10869715902584153418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (A062728 n).toNat

end

end A346654.P10869715902584153418

/-! ## A346654.P2423156979957774023

`A189233(A210981(2*n))`
-/

namespace A346654.P2423156979957774023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (A210981 (2 * n)).toNat

end

end A346654.P2423156979957774023

/-! ## A346654.P4256536690724895716

`A189233(A164013(n)-(2*n+3))`
-/

namespace A346654.P4256536690724895716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (A164013 n - (2 * n + 3 : ℤ)).toNat

end

end A346654.P4256536690724895716

/-! ## A346654.P3846359553743649440

`A292860(A027379(3*n)-A008574(n))`
-/

namespace A346654.P3846359553743649440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (A027379 (3 * n) - A008574 n).toNat

end

end A346654.P3846359553743649440

/-!
# A346655: a(n) = Bell(3*n,n).

The programs for A346655, there is no canonical definition to state claims against.
-/

/-! ## A346655.P9776080249835858525

`A292860(A132209(2*n)+n+1)`
-/

namespace A346655.P9776080249835858525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (A132209 (2 * n) + (n + 1 : ℤ)).toNat

end

end A346655.P9776080249835858525

/-! ## A346655.P4952062594871086422

`A189233(A139276(n))`
-/

namespace A346655.P4952062594871086422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (A139276 n).toNat

end

end A346655.P4952062594871086422

/-!
# A346656: Primes p for which the elliptic curve y^2 = x^3 + 2*p*x has positive rank.

The programs for A346656, there is no canonical definition to state claims against.
-/

/-! ## A346656.P1143789646538851077

`p?[eq[2, A060953(A004277(n))]]`
-/

namespace A346656.P1143789646538851077
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (A004277 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A346656.P1143789646538851077

/-! ## A346656.P11815482316548285760

`eq[A060953(2*(n+1)), A092976(n+1)]+1`
-/

namespace A346656.P11815482316548285760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A346656.P11815482316548285760

/-! ## A346656.P3424534363010549789

`eq[A060953(A004277(n)), A092976(n)]`
-/

namespace A346656.P3424534363010549789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346656.P3424534363010549789

/-! ## A346656.P10890373200162924367

`A000040(eq[2, A060953(A001747(n+1))])`
-/

namespace A346656.P10890373200162924367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (A001747 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346656.P10890373200162924367

/-! ## A346656.P2406290735430876049

`eq[A060953(A316571(n+1)), A092976(n)]`
-/

namespace A346656.P2406290735430876049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (A316571 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346656.P2406290735430876049

/-!
# A346657: Numbers that are not divisible by the product of their nonzero digits.

The programs for A346657, the canonical program `A346657.P14082968289212320522` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346657 has offset 1).

The definition of A346657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346657.P14082968289212320522

`comp[A055471(n+1)-1]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A346657

/-- `comp[A055471(n+1)-1]+1` -/
def P14082968289212320522.Spec : Prop :=
  ∀ n, (P14082968289212320522.a n : ℤ) = A346657 (n + 1)

theorem P14082968289212320522.correct : P14082968289212320522.Spec := by
  intro n
  simp only [A346657, Nat.add_sub_cancel]

end A346657

/-! ## A346657.P7712745138996569018

`∪[A171492(n+1), A342445(n+1)]`
-/

namespace A346657.P7712745138996569018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342445 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A346657.P7712745138996569018

namespace A346657

/-- `∪[A171492(n+1), A342445(n+1)]` -/
def P7712745138996569018.Spec : Prop :=
  ∀ n, (P7712745138996569018.a n : ℤ) = A346657 (n + 1)

end A346657

/-! ## A346657.P5627897527015668687

`comp[∪[A179059(3*n+2), A055471(n+1)]]`
-/

namespace A346657.P5627897527015668687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179059 (3 * n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A346657.P5627897527015668687

namespace A346657

/-- `comp[∪[A179059(3*n+2), A055471(n+1)]]` -/
def P5627897527015668687.Spec : Prop :=
  ∀ n, (P5627897527015668687.a n : ℤ) = A346657 (n + 1)

end A346657

/-! ## A346657.P10044714034851962402

`∩[comp[A055471(n+1)], A188643(n+1)]`
-/

namespace A346657.P10044714034851962402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A346657.P10044714034851962402

namespace A346657

/-- `∩[comp[A055471(n+1)], A188643(n+1)]` -/
def P10044714034851962402.Spec : Prop :=
  ∀ n, (P10044714034851962402.a n : ℤ) = A346657 (n + 1)

end A346657

/-! ## A346657.P455259395331030196

`lt[0, n%A051801(n)]`
-/

namespace A346657.P455259395331030196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A051801 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A346657.P455259395331030196

namespace A346657

/-- `lt[0, n%A051801(n)]` -/
def P455259395331030196.Spec : Prop :=
  ∀ n, (P455259395331030196.a n : ℤ) = A346657 (n + 1)

end A346657

/-!
# A346658: Number of permutations of {0, 1, ..., n} that start with 0 and have pairwise distinct differences between adjacent terms.

The programs for A346658, there is no canonical definition to state claims against.
-/

/-! ## A346658.P8933789983559374597

`or(A038169(n+1), A038193(A038196(n)))`
-/

namespace A346658.P8933789983559374597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038169 (n + 1)) (A038193 (A038196 n).toNat)

end

end A346658.P8933789983559374597

/-! ## A346658.P16207601553654022045

`or(A045778(A057730(n+2)), A057730(n+1))`
-/

namespace A346658.P16207601553654022045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A045778 (A057730 (n + 2)).toNat) (A057730 (n + 1))

end

end A346658.P16207601553654022045

/-!
# A346659: Primes that are not of the form p*q +- 2 where p and q are primes (not necessarily distinct).

The programs for A346659, there is no canonical definition to state claims against.
-/

/-! ## A346659.P4629985735806352539

`A001097(lt[A360594(3*n+4), A003188(n+3)])`
-/

namespace A346659.P4629985735806352539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360594 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A346659.P4629985735806352539

/-!
# A346660: Number of cyclic patterns of length n that avoid the vincular pattern 23-1-4.

The programs for A346660, there is no canonical definition to state claims against.
-/

/-! ## A346660.P626433528156874731

`A027923(A005034(n))`
-/

namespace A346660.P626433528156874731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027923 (A005034 n).toNat

end

end A346660.P626433528156874731

/-! ## A346660.P6167304241647491777

`A316474(2*A114799(n))`
-/

namespace A346660.P6167304241647491777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316474 (2 * A114799 n).toNat

end

end A346660.P6167304241647491777

/-! ## A346660.P5540840461641474764

`A316474(A114799(n)+n)`
-/

namespace A346660.P5540840461641474764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316474 (A114799 n + (n : ℤ)).toNat

end

end A346660.P5540840461641474764

/-! ## A346660.P11828149824763681350

`A127757(∑[A228769(abs(1-n)+1)])`
-/

namespace A346660.P11828149824763681350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228769 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A346660.P11828149824763681350

/-! ## A346660.P5981950193036274806

`A098841(2*n+1)+A000108(abs(1-n))`
-/

namespace A346660.P5981950193036274806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098841 (2 * n + 1) + A000108 |1 - (n : ℤ)|.toNat

end

end A346660.P5981950193036274806

/-!
# A346661: Number of cyclic patterns of length n that avoid the vincular pattern 23-4-1.

The programs for A346661, there is no canonical definition to state claims against.
-/

/-! ## A346661.P10067166787467091224

`A008621(A148421(n+1))`
-/

namespace A346661.P10067166787467091224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A148421 (n + 1)).toNat

end

end A346661.P10067166787467091224

/-! ## A346661.P14807994798671921539

`A110655(A202856(n)+A058495(n))`
-/

namespace A346661.P14807994798671921539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A202856 n + A058495 n).toNat

end

end A346661.P14807994798671921539

/-! ## A346661.P870150233209620261

`A248231(or(A192540(n+1), A283960(n+1)))`
-/

namespace A346661.P870150233209620261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (Int.lor (A192540 (n + 1)) (A283960 (n + 1))).toNat

end

end A346661.P870150233209620261

/-!
# A346663: The number of nonreal roots of Sum_{k=0..n} prime(k+1)*x^k.

The programs for A346663, there is no canonical definition to state claims against.
-/

/-! ## A346663.P5077003503374210597

`and(n, 126)`
-/

namespace A346663.P5077003503374210597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n 126

end

end A346663.P5077003503374210597

/-! ## A346663.P1442344260109886102

`or(n, 129)-129`
-/

namespace A346663.P1442344260109886102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n 129 : ℤ) - 129

end

end A346663.P1442344260109886102

/-! ## A346663.P12480934045140819027

`xor(1, or(1, n))%73`
-/

namespace A346663.P12480934045140819027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.lor 1 n) % 73

end

end A346663.P12480934045140819027

/-! ## A346663.P4513982153388988741

`(n-74)%2+n`
-/

namespace A346663.P4513982153388988741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 74) 2 + (n : ℤ)

end

end A346663.P4513982153388988741

/-! ## A346663.P12364016053911086278

`n-(74-n)%2`
-/

namespace A346663.P12364016053911086278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.tmod (74 - (n : ℤ)) 2

end

end A346663.P12364016053911086278

/-! ## A346663.P8187104297759584822

`2*floor(n/2)%37`
-/

namespace A346663.P8187104297759584822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod ⌊(n : ℚ) / 2⌋ 37

end

end A346663.P8187104297759584822

/-! ## A346663.P6491560968593878128

`floor(((n²+7*n+373)/864+(n+12)*(-1)^n)/96+n)`
-/

namespace A346663.P6491560968593878128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 + 7 * n + 373 : ℚ) / 864 + ((n + 12 : ℤ) * (-1) ^ n : ℚ)) / 96 + (n : ℚ)⌋

end

end A346663.P6491560968593878128

/-! ## A346663.P8615644207739019040

`A033619(or(1, n))`
-/

namespace A346663.P8615644207739019040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (Nat.lor 1 n)

end

end A346663.P8615644207739019040

/-! ## A346663.P9998265229893736379

`A130734(or(1, n))`
-/

namespace A346663.P9998265229893736379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (Nat.lor 1 n)

end

end A346663.P9998265229893736379

/-!
# A346664: a(n) = Sum_{k=0..n} (-1)^(n-k) * binomial(n,k) * binomial(4*k,k) / (3*k + 1).

The programs for A346664, there is no canonical definition to state claims against.
-/

/-! ## A346664.P1387662092415981212

`A317133(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A346664.P1387662092415981212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A317133 (n - 1) - a (n - 1)

end

end A346664.P1387662092415981212

/-! ## A346664.P2808131922475927211

`A014856(n)+A008615(A246455(n))`
-/

namespace A346664.P2808131922475927211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014856 n + A008615 (A246455 n).toNat

end

end A346664.P2808131922475927211

/-!
# A346665: a(n) = Sum_{k=0..n} (-1)^(n-k) * binomial(n,k) * binomial(5*k,k) / (4*k + 1).

The programs for A346665, there is no canonical definition to state claims against.
-/

/-! ## A346665.P10125355220393876688

`A349361(n)-a(n-1)` with `a(0)=1`
-/

namespace A346665.P10125355220393876688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A349361 n - a (n - 1)

end

end A346665.P10125355220393876688

/-!
# A346666: a(n) = Sum_{k=0..n} (-1)^(n-k) * binomial(n,k) * binomial(6*k,k) / (5*k + 1).

The programs for A346666, there is no canonical definition to state claims against.
-/

/-! ## A346666.P4077175719009673223

`A349362(n)-a(n-1)` with `a(0)=1`
-/

namespace A346666.P4077175719009673223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A349362 n - a (n - 1)

end

end A346666.P4077175719009673223

/-!
# A346667: a(n) = Sum_{k=0..n} (-1)^(n-k) * binomial(n,k) * binomial(7*k,k) / (6*k + 1).

The programs for A346667, there is no canonical definition to state claims against.
-/

/-! ## A346667.P16532558450705847329

`A349363(n)-a(n-1)` with `a(0)=1`
-/

namespace A346667.P16532558450705847329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A349363 n - a (n - 1)

end

end A346667.P16532558450705847329

/-!
# A346668: a(n) = Sum_{k=0..n} (-1)^(n-k) * binomial(n,k) * binomial(8*k,k) / (7*k + 1).

The programs for A346668, there is no canonical definition to state claims against.
-/

/-! ## A346668.P7122630794719266984

`A349364(n)-a(n-1)` with `a(0)=1`
-/

namespace A346668.P7122630794719266984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A349364 n - a (n - 1)

end

end A346668.P7122630794719266984

/-!
# A346669: Numbers r such that the number of nonnegative m < r such that m^k == m (mod r) is equal to k*(the number of nonnegative m < r such that -m^k == m (mod r)), where k = 2^A007814(r-1) + 1.

The programs for A346669, there is no canonical definition to state claims against.
-/

/-! ## A346669.P16892918843961379730

`∪[or(1, A028776(3*n+1)), A215848(n+1)]`
-/

namespace A346669.P16892918843961379730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A028776 (3 * n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A346669.P16892918843961379730

/-! ## A346669.P7347613667615797612

`lt[A001222(A067538(n+1)), A126241(n+1)]+1`
-/

namespace A346669.P7347613667615797612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A067538 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126241 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A346669.P7347613667615797612

/-! ## A346669.P5813675638582846275

`eq[A158100(n), A341994(n)]`
-/

namespace A346669.P5813675638582846275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158100 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346669.P5813675638582846275

/-! ## A346669.P5533956142183827487

`A272872(A360678(p?[Δ[n²]]))`
-/

namespace A346669.P5533956142183827487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272872 (A360678 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A346669.P5533956142183827487

/-! ## A346669.P18068513510272499582

`lt[A331140(n+1), A331102(n)²]`
-/

namespace A346669.P18068513510272499582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331102 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A346669.P18068513510272499582

/-!
# A346671: a(n) = Sum_{k=0..n} binomial(7*k,k) / (6*k + 1).

The programs for A346671, there is no canonical definition to state claims against.
-/

/-! ## A346671.P10524774034431572541

`∑[A002296(n)]`
-/

namespace A346671.P10524774034431572541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002296 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346671.P10524774034431572541

/-! ## A346671.P9025051237448395361

`∑[A143547(2*n)]`
-/

namespace A346671.P9025051237448395361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143547 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346671.P9025051237448395361

/-! ## A346671.P151400882372607748

`∑[A004368(n)/A016921(n)]`
-/

namespace A346671.P151400882372607748
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004368 n : ℚ) / (A016921 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346671.P151400882372607748

/-! ## A346671.P15926437233476389437

`∑[A004368(n)/(A008588(n)+1)]`
-/

namespace A346671.P15926437233476389437
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004368 n : ℚ) / (A008588 n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346671.P15926437233476389437

/-! ## A346671.P15031132683955685723

`∑[A004368(n)/A004442(A008588(n))]`
-/

namespace A346671.P15031132683955685723
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004368 n : ℚ) / (A004442 (A008588 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346671.P15031132683955685723

/-! ## A346671.P10582045697819096349

`∑[A004368(n)/A005408(A008585(n))]`
-/

namespace A346671.P10582045697819096349
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004368 n : ℚ) / (A005408 (A008585 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346671.P10582045697819096349

/-! ## A346671.P6972734327822501892

`∑[C(7*n+1, n)/(7*n+1)]`
-/

namespace A346671.P6972734327822501892
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (7 * n + 1) n : ℚ) / (7 * n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346671.P6972734327822501892

/-! ## A346671.P14400520400643719295

`∑[A070914(eq[13, A099375(n)])]`
-/

namespace A346671.P14400520400643719295
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346671.P14400520400643719295

/-! ## A346671.P16886104696302515657

`∑[A070914(eq[64, A130321(n)])]`
-/

namespace A346671.P16886104696302515657
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346671.P16886104696302515657

/-! ## A346671.P16499860725162754784

`∑[A070914(eq[7, A004736(n+1)])]`
-/

namespace A346671.P16499860725162754784
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346671.P16499860725162754784

/-!
# A346672: a(n) = Sum_{k=0..n} binomial(8*k,k) / (7*k + 1).

The programs for A346672, there is no canonical definition to state claims against.
-/

/-! ## A346672.P4715105902250890148

`∑[A007556(n)]`
-/

namespace A346672.P4715105902250890148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007556 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346672.P4715105902250890148

/-! ## A346672.P9585531089066170198

`A007556(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A346672.P9585531089066170198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007556 n + a (A023443 n).toNat

end

end A346672.P9585531089066170198

/-! ## A346672.P11267345395680404071

`A007556(n)+a(n-A057427(n))` with `a(0)=1`
-/

namespace A346672.P11267345395680404071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007556 n + a ((n : ℤ) - A057427 n).toNat

end

end A346672.P11267345395680404071

/-! ## A346672.P17966432014143688627

`a(n-1)+A004382(n)/n` with `a(0)=1, a(1)=2`
-/

namespace A346672.P17966432014143688627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (A004382 n : ℚ) / (n : ℚ)

end

end A346672.P17966432014143688627

/-! ## A346672.P10916888818826667588

`∑[A004382(n)/n*a(A000038(n))]` with `a(0)=1`
-/

namespace A346672.P10916888818826667588
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A004382 n : ℚ) / (n : ℚ) * f1 (A000038 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346672.P10916888818826667588

/-! ## A346672.P2502956648430009682

`∑[A004382(n)/n*a(A244174(n)%2-1)]` with `a(0)=1`
-/

namespace A346672.P2502956648430009682
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A004382 n : ℚ) / (n : ℚ) * f1 (Int.tmod (A244174 n) 2 - 1).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346672.P2502956648430009682

/-! ## A346672.P16950097369095712447

`∑[A004382(A028310(n))/A028310(n)]`
-/

namespace A346672.P16950097369095712447
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004382 (A028310 n).toNat : ℚ) / (A028310 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346672.P16950097369095712447

/-! ## A346672.P1805581193270491803

`∑[C(A017077(n), n)/A017077(n)]`
-/

namespace A346672.P1805581193270491803
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A017077 n).toNat n : ℚ) / (A017077 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346672.P1805581193270491803

/-! ## A346672.P13719154592904406249

`∑[A070914(A155212(n+4))]`
-/

namespace A346672.P13719154592904406249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 (A155212 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346672.P13719154592904406249

/-! ## A346672.P4878389107947009099

`∑[A070914(A055999(n+5)-2)]`
-/

namespace A346672.P4878389107947009099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 (A055999 (n + 5) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346672.P4878389107947009099

/-!
# A346675: First differences of A088176.

The programs for A346675, the canonical program `A346675.P3077414491905950270` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346675 has offset 1).

The definition of A346675 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088176, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A346675.P3077414491905950270

`A088176(n+2)-A088176(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A346675

/-- `A088176(n+2)-A088176(n+1)` -/
def P3077414491905950270.Spec : Prop :=
  ∀ n, P3077414491905950270.a n = A346675 (n + 1)

theorem P3077414491905950270.correct : P3077414491905950270.Spec := by
  intro n
  simp only [A346675, Nat.add_sub_cancel]

end A346675

/-! ## A346675.P3473215652462190470

`Δ[A088176(n+1)]`
-/

namespace A346675.P3473215652462190470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A346675.P3473215652462190470

namespace A346675

/-- `Δ[A088176(n+1)]` -/
def P3473215652462190470.Spec : Prop :=
  ∀ n, P3473215652462190470.a n = A346675 (n + 1)

theorem P3473215652462190470.correct : P3473215652462190470.Spec := by
  intro n
  simp only [A346675, Nat.add_sub_cancel, A346675.P3473215652462190470.f1, A346675.P3473215652462190470.a, A346675.P3077414491905950270.a, SequenceMachineLib.memo_apply]

end A346675

/-! ## A346675.P4995888316477575030

`Δ[A003961(A006512(n+1))]`
-/

namespace A346675.P4995888316477575030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A006512 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A346675.P4995888316477575030

namespace A346675

/-- `Δ[A003961(A006512(n+1))]` -/
def P4995888316477575030.Spec : Prop :=
  ∀ n, P4995888316477575030.a n = A346675 (n + 1)

end A346675

/-! ## A346675.P7050467703453587246

`Δ[A004139(A029707(n+1))]`
-/

namespace A346675.P7050467703453587246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A029707 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A346675.P7050467703453587246

namespace A346675

/-- `Δ[A004139(A029707(n+1))]` -/
def P7050467703453587246.Spec : Prop :=
  ∀ n, P7050467703453587246.a n = A346675 (n + 1)

end A346675

/-! ## A346675.P16871911615954426283

`Δ[A045966(A001359(n+1))]`
-/

namespace A346675.P16871911615954426283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (A001359 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A346675.P16871911615954426283

namespace A346675

/-- `Δ[A045966(A001359(n+1))]` -/
def P16871911615954426283.Spec : Prop :=
  ∀ n, P16871911615954426283.a n = A346675 (n + 1)

end A346675

/-! ## A346675.P1800042071078019180

`Δ[A101300(A014574(n+1))]`
-/

namespace A346675.P1800042071078019180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101300 (A014574 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A346675.P1800042071078019180

namespace A346675

/-- `Δ[A101300(A014574(n+1))]` -/
def P1800042071078019180.Spec : Prop :=
  ∀ n, P1800042071078019180.a n = A346675 (n + 1)

end A346675

/-! ## A346675.P15584566436814652522

`Δ[A045319(A107770(n+1))]`
-/

namespace A346675.P15584566436814652522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A107770 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A346675.P15584566436814652522

namespace A346675

/-- `Δ[A045319(A107770(n+1))]` -/
def P15584566436814652522.Spec : Prop :=
  ∀ n, P15584566436814652522.a n = A346675 (n + 1)

end A346675

/-! ## A346675.P14783392353245349373

`Δ[A349385(A176810(n+1))]`
-/

namespace A346675.P14783392353245349373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349385 (A176810 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A346675.P14783392353245349373

namespace A346675

/-- `Δ[A349385(A176810(n+1))]` -/
def P14783392353245349373.Spec : Prop :=
  ∀ n, P14783392353245349373.a n = A346675 (n + 1)

end A346675

/-! ## A346675.P14835059292457108878

`Δ[A079427(p?[A079445(n+1)])]`
-/

namespace A346675.P14835059292457108878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079445 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079427 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A346675.P14835059292457108878

namespace A346675

/-- `Δ[A079427(p?[A079445(n+1)])]` -/
def P14835059292457108878.Spec : Prop :=
  ∀ n, P14835059292457108878.a n = A346675 (n + 1)

end A346675

/-! ## A346675.P1913400293226610753

`Δ[A000040(A107770(n+1)+1)]`
-/

namespace A346675.P1913400293226610753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A107770 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A346675.P1913400293226610753

namespace A346675

/-- `Δ[A000040(A107770(n+1)+1)]` -/
def P1913400293226610753.Spec : Prop :=
  ∀ n, P1913400293226610753.a n = A346675 (n + 1)

end A346675

/-!
# A346676: Numbers expressible as 2^x + 3^y where both x and y are positive integers.

The programs for A346676, there is no canonical definition to state claims against.
-/

/-! ## A346676.P13197090209616760117

`A097367(A191763(n+2))`
-/

namespace A346676.P13197090209616760117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097367 (A191763 (n + 2)).toNat

end

end A346676.P13197090209616760117

/-! ## A346676.P12047134305292006909

`A047270(record[A347627(n)])+2`
-/

namespace A346676.P12047134305292006909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047270 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 2

end

end A346676.P12047134305292006909

/-! ## A346676.P10350223321857648722

`A294370(A110872(n+2))`
-/

namespace A346676.P10350223321857648722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294370 (A110872 (n + 2)).toNat

end

end A346676.P10350223321857648722

/-! ## A346676.P12350055643204684723

`A173630(A383297(n+1))`
-/

namespace A346676.P12350055643204684723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173630 (A383297 (n + 1)).toNat

end

end A346676.P12350055643204684723

/-!
# A346677: Triangular array read by rows. T(n,k) is the number of n X n matrices over GF(2) that can be decomposed as the direct sum of k cyclic matrices, 0<=k<=n, n>=0.

The programs for A346677, there is no canonical definition to state claims against.
-/

/-! ## A346677.P7933723958237689844

`and(A036234(n!), A131951(n))`
-/

namespace A346677.P7933723958237689844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A036234 (Nat.factorial n)) (A131951 n)

end

end A346677.P7933723958237689844

/-! ## A346677.P7900055677923648153

`A132393(n)*A179309(A060818(n))`
-/

namespace A346677.P7900055677923648153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 n * A179309 (A060818 n).toNat

end

end A346677.P7900055677923648153

/-! ## A346677.P2870609036987838456

`A147706(A108411(n))*A191646(n)`
-/

namespace A346677.P2870609036987838456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147706 (A108411 n).toNat * A191646 n

end

end A346677.P2870609036987838456

/-! ## A346677.P5798628852966932906

`A214753(n)*A334030(A078008(n))`
-/

namespace A346677.P5798628852966932906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214753 n * A334030 (A078008 n).toNat

end

end A346677.P5798628852966932906

/-!
# A346678: Positive numbers whose squares end in exactly two identical digits.

The programs for A346678, there is no canonical definition to state claims against.
-/

/-! ## A346678.P4770798885324509695

`∩[A186438(n+1), A295020(n+1)]`
-/

namespace A346678.P4770798885324509695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346678.P4770798885324509695

/-! ## A346678.P15404184589260878994

`∩[A098395(n+1), A186438(n+1)]`
-/

namespace A346678.P15404184589260878994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098395 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346678.P15404184589260878994

/-! ## A346678.P14588820987700973128

`∩[A186438(n+1), A298303(n+1)]`
-/

namespace A346678.P14588820987700973128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346678.P14588820987700973128

/-! ## A346678.P17414957811179767310

`eq[A250205(n+1), A375548(n)]`
-/

namespace A346678.P17414957811179767310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375548 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346678.P17414957811179767310

/-! ## A346678.P2545822757324849830

`∩[A160044(n+1), A186438(n+1)]`
-/

namespace A346678.P2545822757324849830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186438 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346678.P2545822757324849830

/-!
# A346679: Expansion of Product_{k>=1} (1 + x^k*(1+x)) / (1 - x^k*(1+x)).

The programs for A346679, there is no canonical definition to state claims against.
-/

/-! ## A346679.P18405095904776834842

`∑[A073188(A120893(n))]`
-/

namespace A346679.P18405095904776834842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A120893 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346679.P18405095904776834842

/-! ## A346679.P3160883295736990217

`∑[A359267(A010049(n+1))]`
-/

namespace A346679.P3160883295736990217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359267 (A010049 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346679.P3160883295736990217

/-! ## A346679.P712068095978334223

`2*A102352(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A346679.P712068095978334223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * A102352 (a (n - 1)).toNat

end

end A346679.P712068095978334223

/-!
# A346680: a(n) = Sum_{k=0..n} (-1)^(n-k) * binomial(4*k,k) / (3*k + 1).

The programs for A346680, the canonical program `A346680.P11721256151507285597` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346680 has offset 0).

The definition of A346680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346680.P204007059899349946

`abs(∑[A109962(∑[n])])`
-/

namespace A346680.P204007059899349946
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109962 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A346680.P204007059899349946

namespace A346680

/-- `abs(∑[A109962(∑[n])])` -/
def P204007059899349946.Spec : Prop :=
  ∀ n, P204007059899349946.a n = A346680 n

end A346680

/-! ## A346680.P11721256151507285597

`A002293(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A346680

/-- `A002293(n)-a(n-1)` -/
def P11721256151507285597.Spec : Prop :=
  ∀ n, P11721256151507285597.a n = A346680 n

theorem P11721256151507285597.correct : P11721256151507285597.Spec := by
  intro n
  simp only [A346680]

end A346680

/-! ## A346680.P532249651057609710

`A069270(∑[n]+n)-a(n-1)` with `a(0)=1`
-/

namespace A346680.P532249651057609710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A069270 (∑ j ∈ Finset.range (n + 1), f1 j + n) - a (n - 1)

end

end A346680.P532249651057609710

namespace A346680

/-- `A069270(∑[n]+n)-a(n-1)` -/
def P532249651057609710.Spec : Prop :=
  ∀ n, P532249651057609710.a n = A346680 n

end A346680

/-! ## A346680.P3530881454002895846

`abs(∑[A002293(n)*A033999(n)])`
-/

namespace A346680.P3530881454002895846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A346680.P3530881454002895846

namespace A346680

/-- `abs(∑[A002293(n)*A033999(n)])` -/
def P3530881454002895846.Spec : Prop :=
  ∀ n, P3530881454002895846.a n = A346680 n

end A346680

/-! ## A346680.P10916666155185248372

`∑[A002293(n)*A033999(n)]*A057077(2*n)`
-/

namespace A346680.P10916666155185248372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057077 (2 * n)

end

end A346680.P10916666155185248372

namespace A346680

/-- `∑[A002293(n)*A033999(n)]*A057077(2*n)` -/
def P10916666155185248372.Spec : Prop :=
  ∀ n, P10916666155185248372.a n = A346680 n

end A346680

/-! ## A346680.P12666871551181312907

`∑[A334682(n)]+1-A334682(n)-a(n-1)` with `a(0)=1`
-/

namespace A346680.P12666871551181312907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334682 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - A334682 n - a (n - 1)

end

end A346680.P12666871551181312907

namespace A346680

/-- `∑[A334682(n)]+1-A334682(n)-a(n-1)` -/
def P12666871551181312907.Spec : Prop :=
  ∀ n, P12666871551181312907.a n = A346680 n

end A346680

/-! ## A346680.P14460841287433329642

`A126596(n)/(2*n+1)-a(n-1)` with `a(0)=1`
-/

namespace A346680.P14460841287433329642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A126596 n : ℚ) / (2 * n + 1 : ℚ) - a (n - 1)

end

end A346680.P14460841287433329642

namespace A346680

/-- `A126596(n)/(2*n+1)-a(n-1)` -/
def P14460841287433329642.Spec : Prop :=
  ∀ n, P14460841287433329642.a n = (A346680 n : ℚ)

end A346680

/-! ## A346680.P11609619808994806592

`A052203(n)/A016813(n)-a(n-1)` with `a(0)=1`
-/

namespace A346680.P11609619808994806592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A052203 n : ℚ) / (A016813 n : ℚ) - a (n - 1)

end

end A346680.P11609619808994806592

namespace A346680

/-- `A052203(n)/A016813(n)-a(n-1)` -/
def P11609619808994806592.Spec : Prop :=
  ∀ n, P11609619808994806592.a n = (A346680 n : ℚ)

end A346680

/-! ## A346680.P16032266962716308572

`gcd(A052203(n), A052204(n))-a(n-1)` with `a(0)=1`
-/

namespace A346680.P16032266962716308572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.gcd (A052203 n) (A052204 n) : ℤ) - a (n - 1)

end

end A346680.P16032266962716308572

namespace A346680

/-- `gcd(A052203(n), A052204(n))-a(n-1)` -/
def P16032266962716308572.Spec : Prop :=
  ∀ n, P16032266962716308572.a n = A346680 n

end A346680

/-! ## A346680.P1804055519872645093

`abs(a(n-1)-A005810(n)/A016777(n))` with `a(0)=1`
-/

namespace A346680.P1804055519872645093
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) - (A005810 n : ℚ) / (A016777 n : ℚ)|

end

end A346680.P1804055519872645093

namespace A346680

/-- `abs(a(n-1)-A005810(n)/A016777(n))` -/
def P1804055519872645093.Spec : Prop :=
  ∀ n, P1804055519872645093.a n = (A346680 n : ℚ)

end A346680

/-! ## A346680.P3506727231525304334

`A005810(n)/A001651(A005408(n))-a(n-1)` with `a(0)=1`
-/

namespace A346680.P3506727231525304334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A005810 n : ℚ) / (A001651 (A005408 n).toNat : ℚ) - a (n - 1)

end

end A346680.P3506727231525304334

namespace A346680

/-- `A005810(n)/A001651(A005408(n))-a(n-1)` -/
def P3506727231525304334.Spec : Prop :=
  ∀ n, P3506727231525304334.a n = (A346680 n : ℚ)

end A346680

/-! ## A346680.P11803839806861353312

`A005810(n)/A008619(A008458(n))-a(n-1)` with `a(0)=1`
-/

namespace A346680.P11803839806861353312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A005810 n : ℚ) / (A008619 (A008458 n).toNat : ℚ) - a (n - 1)

end

end A346680.P11803839806861353312

namespace A346680

/-- `A005810(n)/A008619(A008458(n))-a(n-1)` -/
def P11803839806861353312.Spec : Prop :=
  ∀ n, P11803839806861353312.a n = (A346680 n : ℚ)

end A346680

/-! ## A346680.P9986104164425152791

`A243663(∑[abs(1-n)])-a(n-1)` with `a(0)=1`
-/

namespace A346680.P9986104164425152791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A243663 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - a (n - 1)

end

end A346680.P9986104164425152791

namespace A346680

/-- `A243663(∑[abs(1-n)])-a(n-1)` -/
def P9986104164425152791.Spec : Prop :=
  ∀ n, P9986104164425152791.a n = A346680 n

end A346680

/-!
# A346681: a(n) = Sum_{k=0..n} (-1)^(n-k) * binomial(5*k,k) / (4*k + 1).

The programs for A346681, there is no canonical definition to state claims against.
-/

/-! ## A346681.P243087279385170577

`A002294(n)-a(n-1)` with `a(0)=1`
-/

namespace A346681.P243087279385170577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002294 n - a (n - 1)

end

end A346681.P243087279385170577

/-! ## A346681.P6697943938772929008

`abs(∑[A002294(n)*A033999(n)])`
-/

namespace A346681.P6697943938772929008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002294 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A346681.P6697943938772929008

/-! ## A346681.P13688726896823199672

`A005408(n)/A016861(n)*A118969(n)-a(n-1)` with `a(0)=1`
-/

namespace A346681.P13688726896823199672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A005408 n : ℚ) / (A016861 n : ℚ) * (A118969 n : ℚ) - a (n - 1)

end

end A346681.P13688726896823199672

/-! ## A346681.P1567218831434132521

`∑[A002294(n)*A033999(n)]/((-1)^n)^A054490(n)`
-/

namespace A346681.P1567218831434132521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002294 n * A033999 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((-1) ^ n : ℚ) ^ (A054490 n : ℤ)

end

end A346681.P1567218831434132521

/-! ## A346681.P14550673473577223913

`∑[A002294(n)*A033999(n)]/((-1)^n)^A047323(n+1)`
-/

namespace A346681.P14550673473577223913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002294 n * A033999 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((-1) ^ n : ℚ) ^ (A047323 (n + 1) : ℤ)

end

end A346681.P14550673473577223913

/-! ## A346681.P14218006352013885287

`A001449(n)/A016813(n)-a(n-1)` with `a(0)=1`
-/

namespace A346681.P14218006352013885287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A001449 n : ℚ) / (A016813 n : ℚ) - a (n - 1)

end

end A346681.P14218006352013885287

/-! ## A346681.P6735929025855939950

`abs(a(n-1)-A070914(A052905(n+2)))` with `a(0)=1`
-/

namespace A346681.P6735929025855939950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) - A070914 (A052905 (n + 2)).toNat|

end

end A346681.P6735929025855939950

/-! ## A346681.P11799193077612953961

`∑[A002294(n)*A033999(n)]/((-1)^n)^A119570(n+1)`
-/

namespace A346681.P11799193077612953961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002294 n * A033999 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((-1) ^ n : ℚ) ^ (A119570 (n + 1) : ℤ)

end

end A346681.P11799193077612953961

/-!
# A346682: a(n) = Sum_{k=0..n} (-1)^(n-k) * binomial(6*k,k) / (5*k + 1).

The programs for A346682, there is no canonical definition to state claims against.
-/

/-! ## A346682.P16823395730282102698

`A002295(n)-a(n-1)` with `a(0)=1`
-/

namespace A346682.P16823395730282102698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002295 n - a (n - 1)

end

end A346682.P16823395730282102698

/-! ## A346682.P107338352143875736

`A004355(n)/A016861(n)-a(n-1)` with `a(0)=1`
-/

namespace A346682.P107338352143875736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A004355 n : ℚ) / (A016861 n : ℚ) - a (n - 1)

end

end A346682.P107338352143875736

/-! ## A346682.P14582675399622691884

`A079590(n)/A004273(A016777(n))-a(n-1)` with `a(0)=1`
-/

namespace A346682.P14582675399622691884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A079590 n : ℚ) / (A004273 (A016777 n).toNat : ℚ) - a (n - 1)

end

end A346682.P14582675399622691884

/-! ## A346682.P3926122132726164040

`A070914(A134227(n+4))-a(n-1)` with `a(0)=1`
-/

namespace A346682.P3926122132726164040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A070914 (A134227 (n + 4)).toNat - a (n - 1)

end

end A346682.P3926122132726164040

/-! ## A346682.P3175903160329444096

`A070914(Δ[A023551(n+1)])-a(n-1)` with `a(0)=1`
-/

namespace A346682.P3175903160329444096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A070914 (f1 (n + 1) - f1 n).toNat - a (n - 1)

end

end A346682.P3175903160329444096

/-!
# A346683: a(n) = Sum_{k=0..n} (-1)^(n-k) * binomial(7*k,k) / (6*k + 1).

The programs for A346683, there is no canonical definition to state claims against.
-/

/-! ## A346683.P256607510617755694

`A002296(n)-a(n-1)` with `a(0)=1`
-/

namespace A346683.P256607510617755694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002296 n - a (n - 1)

end

end A346683.P256607510617755694

/-! ## A346683.P2612854215881189571

`A004368(n)/A016921(n)-a(n-1)` with `a(0)=1`
-/

namespace A346683.P2612854215881189571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A004368 n : ℚ) / (A016921 n : ℚ) - a (n - 1)

end

end A346683.P2612854215881189571

/-! ## A346683.P17233203393890242430

`A070914(eq[6, A025581(n)])-a(n-1)` with `a(0)=1`
-/

namespace A346683.P17233203393890242430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A070914 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - a (n - 1)

end

end A346683.P17233203393890242430

/-! ## A346683.P11152519032578101940

`A070914(eq[64, A130321(n)])-a(n-1)` with `a(0)=1`
-/

namespace A346683.P11152519032578101940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A070914 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - a (n - 1)

end

end A346683.P11152519032578101940

/-! ## A346683.P17663109240108020968

`A070914(A055999(n+4)-1)-a(n-1)` with `a(0)=1`
-/

namespace A346683.P17663109240108020968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A070914 (A055999 (n + 4) - 1).toNat - a (n - 1)

end

end A346683.P17663109240108020968

/-! ## A346683.P17703669663111059987

`A070914(A000217(n+7)-7)-a(n-1)` with `a(0)=1`
-/

namespace A346683.P17703669663111059987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A070914 (A000217 (n + 7) - 7).toNat - a (n - 1)

end

end A346683.P17703669663111059987

/-!
# A346684: a(n) = Sum_{k=0..n} (-1)^(n-k) * binomial(8*k,k) / (7*k + 1).

The programs for A346684, there is no canonical definition to state claims against.
-/

/-! ## A346684.P18020725737432863788

`A007556(n)-a(n-1)` with `a(0)=1`
-/

namespace A346684.P18020725737432863788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007556 n - a (n - 1)

end

end A346684.P18020725737432863788

/-! ## A346684.P4801677160672687707

`A004382(n)/n-a(n-1)` with `a(0)=1`
-/

namespace A346684.P4801677160672687707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A004382 n : ℚ) / (n : ℚ) - a (n - 1)

end

end A346684.P4801677160672687707

/-! ## A346684.P4579081871953078530

`C(A017077(n), n)/A017077(n)-a(n-1)` with `a(0)=1`
-/

namespace A346684.P4579081871953078530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (A017077 n).toNat n : ℚ) / (A017077 n : ℚ) - a (n - 1)

end

end A346684.P4579081871953078530

/-! ## A346684.P12065870930161759693

`C(A016813(2*n), n)/A016813(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A346684.P12065870930161759693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (A016813 (2 * n)).toNat n : ℚ) / (A016813 (2 * n) : ℚ) - a (n - 1)

end

end A346684.P12065870930161759693

/-! ## A346684.P15112022764561620383

`A070914(A055999(n+5)-2)-a(n-1)` with `a(0)=1`
-/

namespace A346684.P15112022764561620383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A070914 (A055999 (n + 5) - 2).toNat - a (n - 1)

end

end A346684.P15112022764561620383

/-! ## A346684.P4001619606076588581

`A070914(A000217(n+8)-8)-a(n-1)` with `a(0)=1`
-/

namespace A346684.P4001619606076588581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A070914 (A000217 (n + 8) - 8).toNat - a (n - 1)

end

end A346684.P4001619606076588581

/-!
# A346687: Minimal number of generators of the monoid of n X n reflexive Boolean matrices.

The programs for A346687, there is no canonical definition to state claims against.
-/

/-! ## A346687.P18369246149573155589

`A211860(a(n-1)+n+3)` with `a(0)=1, a(1)=2`
-/

namespace A346687.P18369246149573155589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A211860 (a (n - 1) + (n + 3 : ℤ)).toNat

end

end A346687.P18369246149573155589

/-!
# A346688: Replace 4^k with (-1)^k in base-4 expansion of n.

The programs for A346688, the canonical program `A346688.P10591290519975696756` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346688 has offset 0).

The definition of A346688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346688.P10591290519975696756

`n%4-a(floor(n/4))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A346688

/-- `n%4-a(floor(n/4))` -/
def P10591290519975696756.Spec : Prop :=
  ∀ n, P10591290519975696756.a n = A346688 n

theorem P10591290519975696756.correct : P10591290519975696756.Spec := by
  intro n
  simp only [A346688]

end A346688

/-! ## A346688.P13592680639673738698

`and(3, n)-a(floor(n/4))` with `a(0)=0`
-/

namespace A346688.P13592680639673738698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.land 3 n : ℤ) - a ⌊(n : ℚ) / 4⌋.toNat

end

end A346688.P13592680639673738698

namespace A346688

/-- `and(3, n)-a(floor(n/4))` -/
def P13592680639673738698.Spec : Prop :=
  ∀ n, P13592680639673738698.a n = A346688 n

end A346688

/-! ## A346688.P12053570065040113814

`3-(or(3, n)-n)-a(A002265(n))` with `a(0)=0`
-/

namespace A346688.P12053570065040113814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 - ((Nat.lor 3 n : ℤ) - (n : ℤ)) - a (A002265 n).toNat

end

end A346688.P12053570065040113814

namespace A346688

/-- `3-(or(3, n)-n)-a(A002265(n))` -/
def P12053570065040113814.Spec : Prop :=
  ∀ n, P12053570065040113814.a n = A346688 n

end A346688

/-! ## A346688.P4438390384474772249

`A131851(n)+2*A131852(n)`
-/

namespace A346688.P4438390384474772249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 n + 2 * A131852 n

end

end A346688.P4438390384474772249

namespace A346688

/-- `A131851(n)+2*A131852(n)` -/
def P4438390384474772249.Spec : Prop :=
  ∀ n, P4438390384474772249.a n = A346688 n

end A346688

/-! ## A346688.P16104780443217274790

`A010873(n)-a(A002265(n))` with `a(0)=0`
-/

namespace A346688.P16104780443217274790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A010873 n - a (A002265 n).toNat

end

end A346688.P16104780443217274790

namespace A346688

/-- `A010873(n)-a(A002265(n))` -/
def P16104780443217274790.Spec : Prop :=
  ∀ n, P16104780443217274790.a n = A346688 n

end A346688

/-! ## A346688.P13889252721092479592

`n-∑[A000330(and(2, A088705(n)))]`
-/

namespace A346688.P13889252721092479592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (Int.land 2 (A088705 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346688.P13889252721092479592

namespace A346688

/-- `n-∑[A000330(and(2, A088705(n)))]` -/
def P13889252721092479592.Spec : Prop :=
  ∀ n, P13889252721092479592.a n = A346688 n

end A346688

/-! ## A346688.P1807229775123304359

`A131851(n)+2*A131851(A004526(n))`
-/

namespace A346688.P1807229775123304359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 n + 2 * A131851 (A004526 n).toNat

end

end A346688.P1807229775123304359

namespace A346688

/-- `A131851(n)+2*A131851(A004526(n))` -/
def P1807229775123304359.Spec : Prop :=
  ∀ n, P1807229775123304359.a n = A346688 n

end A346688

/-! ## A346688.P14175194578726598451

`A131852(A004514(n))+2*A131852(n)`
-/

namespace A346688.P14175194578726598451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (A004514 n).toNat + 2 * A131852 n

end

end A346688.P14175194578726598451

namespace A346688

/-- `A131852(A004514(n))+2*A131852(n)` -/
def P14175194578726598451.Spec : Prop :=
  ∀ n, P14175194578726598451.a n = A346688 n

end A346688

/-! ## A346688.P3770011098492970376

`A131852(2*n)-2*A131851(2*n)`
-/

namespace A346688.P3770011098492970376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (2 * n) - 2 * A131851 (2 * n)

end

end A346688.P3770011098492970376

namespace A346688

/-- `A131852(2*n)-2*A131851(2*n)` -/
def P3770011098492970376.Spec : Prop :=
  ∀ n, P3770011098492970376.a n = A346688 n

end A346688

/-! ## A346688.P4113671525924703359

`A131852(A004468(n))+2*A131852(n)`
-/

namespace A346688.P4113671525924703359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131852 (A004468 n).toNat + 2 * A131852 n

end

end A346688.P4113671525924703359

namespace A346688

/-- `A131852(A004468(n))+2*A131852(n)` -/
def P4113671525924703359.Spec : Prop :=
  ∀ n, P4113671525924703359.a n = A346688 n

end A346688

/-! ## A346688.P7365643776049397591

`A346689(A020654(n+1))`
-/

namespace A346688.P7365643776049397591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346689 (A020654 (n + 1)).toNat

end

end A346688.P7365643776049397591

namespace A346688

/-- `A346689(A020654(n+1))` -/
def P7365643776049397591.Spec : Prop :=
  ∀ n, P7365643776049397591.a n = A346688 n

end A346688

/-! ## A346688.P4612847539040746503

`A346690(A037460(n))`
-/

namespace A346688.P4612847539040746503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346690 (A037460 n).toNat

end

end A346688.P4612847539040746503

namespace A346688

/-- `A346690(A037460(n))` -/
def P4612847539040746503.Spec : Prop :=
  ∀ n, P4612847539040746503.a n = A346688 n

end A346688

/-! ## A346688.P8243471763799729836

`A346690(lt[A190595(n), 4])`
-/

namespace A346688.P8243471763799729836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190595 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346690 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A346688.P8243471763799729836

namespace A346688

/-- `A346690(lt[A190595(n), 4])` -/
def P8243471763799729836.Spec : Prop :=
  ∀ n, P8243471763799729836.a n = A346688 n

end A346688

/-! ## A346688.P9237181037507433102

`A346731(A037462(n))`
-/

namespace A346688.P9237181037507433102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346731 (A037462 n).toNat

end

end A346688.P9237181037507433102

namespace A346688

/-- `A346731(A037462(n))` -/
def P9237181037507433102.Spec : Prop :=
  ∀ n, P9237181037507433102.a n = A346688 n

end A346688

/-! ## A346688.P16934957579987760650

`A346732(A037463(n))`
-/

namespace A346688.P16934957579987760650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346732 (A037463 n).toNat

end

end A346688.P16934957579987760650

namespace A346688

/-- `A346732(A037463(n))` -/
def P16934957579987760650.Spec : Prop :=
  ∀ n, P16934957579987760650.a n = A346688 n

end A346688

/-! ## A346688.P1520145551148646489

`A055017(A007090(n))`
-/

namespace A346688.P1520145551148646489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A007090 n).toNat

end

end A346688.P1520145551148646489

namespace A346688

/-- `A055017(A007090(n))` -/
def P1520145551148646489.Spec : Prop :=
  ∀ n, P1520145551148646489.a n = A346688 n

end A346688

/-! ## A346688.P17947627655768638752

`A055017(lt[A054055(n), 4])`
-/

namespace A346688.P17947627655768638752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A346688.P17947627655768638752

namespace A346688

/-- `A055017(lt[A054055(n), 4])` -/
def P17947627655768638752.Spec : Prop :=
  ∀ n, P17947627655768638752.a n = A346688 n

end A346688

/-! ## A346688.P156559989698115264

`A055017(eq[0, n*A102673(n)])`
-/

namespace A346688.P156559989698115264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A102673 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346688.P156559989698115264

namespace A346688

/-- `A055017(eq[0, n*A102673(n)])` -/
def P156559989698115264.Spec : Prop :=
  ∀ n, P156559989698115264.a n = A346688 n

end A346688

/-! ## A346688.P5871214662876763991

`A055017(eq[n, A102673(n)+n])`
-/

namespace A346688.P5871214662876763991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346688.P5871214662876763991

namespace A346688

/-- `A055017(eq[n, A102673(n)+n])` -/
def P5871214662876763991.Spec : Prop :=
  ∀ n, P5871214662876763991.a n = A346688 n

end A346688

/-! ## A346688.P16760209204287571998

`A055017(record[A064770(n)])`
-/

namespace A346688.P16760209204287571998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A346688.P16760209204287571998

namespace A346688

/-- `A055017(record[A064770(n)])` -/
def P16760209204287571998.Spec : Prop :=
  ∀ n, P16760209204287571998.a n = A346688 n

end A346688

/-!
# A346689: Replace 5^k with (-1)^k in base-5 expansion of n.

The programs for A346689, the canonical program `A346689.P1981943191091416316` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346689 has offset 0).

The definition of A346689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346689.P1981943191091416316

`n%5-a(floor(n/5))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A346689

/-- `n%5-a(floor(n/5))` -/
def P1981943191091416316.Spec : Prop :=
  ∀ n, P1981943191091416316.a n = A346689 n

theorem P1981943191091416316.correct : P1981943191091416316.Spec := by
  intro n
  simp only [A346689]

end A346689

/-! ## A346689.P12293801281728234554

`A010874(n)-a(A002266(n))` with `a(0)=0`
-/

namespace A346689.P12293801281728234554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A010874 n - a (A002266 n).toNat

end

end A346689.P12293801281728234554

namespace A346689

/-- `A010874(n)-a(A002266(n))` -/
def P12293801281728234554.Spec : Prop :=
  ∀ n, P12293801281728234554.a n = A346689 n

end A346689

/-! ## A346689.P12607730724835894013

`A346690(A037465(n))`
-/

namespace A346689.P12607730724835894013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346690 (A037465 n).toNat

end

end A346689.P12607730724835894013

namespace A346689

/-- `A346690(A037465(n))` -/
def P12607730724835894013.Spec : Prop :=
  ∀ n, P12607730724835894013.a n = A346689 n

end A346689

/-! ## A346689.P8928121880601064266

`A346691(A037466(n))`
-/

namespace A346689.P8928121880601064266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346691 (A037466 n).toNat

end

end A346689.P8928121880601064266

namespace A346689

/-- `A346691(A037466(n))` -/
def P8928121880601064266.Spec : Prop :=
  ∀ n, P8928121880601064266.a n = A346689 n

end A346689

/-! ## A346689.P8333316355242039753

`A346731(A037467(n))`
-/

namespace A346689.P8333316355242039753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346731 (A037467 n).toNat

end

end A346689.P8333316355242039753

namespace A346689

/-- `A346731(A037467(n))` -/
def P8333316355242039753.Spec : Prop :=
  ∀ n, P8333316355242039753.a n = A346689 n

end A346689

/-! ## A346689.P9466466489778600495

`A346732(A037468(n))`
-/

namespace A346689.P9466466489778600495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346732 (A037468 n).toNat

end

end A346689.P9466466489778600495

namespace A346689

/-- `A346732(A037468(n))` -/
def P9466466489778600495.Spec : Prop :=
  ∀ n, P9466466489778600495.a n = A346689 n

end A346689

/-! ## A346689.P14908385906666659440

`A055017(A007091(n))`
-/

namespace A346689.P14908385906666659440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A007091 n).toNat

end

end A346689.P14908385906666659440

namespace A346689

/-- `A055017(A007091(n))` -/
def P14908385906666659440.Spec : Prop :=
  ∀ n, P14908385906666659440.a n = A346689 n

end A346689

/-! ## A346689.P4564096088274018911

`A055017(eq[0, A102675(n)])`
-/

namespace A346689.P4564096088274018911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346689.P4564096088274018911

namespace A346689

/-- `A055017(eq[0, A102675(n)])` -/
def P4564096088274018911.Spec : Prop :=
  ∀ n, P4564096088274018911.a n = A346689 n

end A346689

/-! ## A346689.P11739815875021328581

`A055017(lt[A054055(n), 5])`
-/

namespace A346689.P11739815875021328581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A346689.P11739815875021328581

namespace A346689

/-- `A055017(lt[A054055(n), 5])` -/
def P11739815875021328581.Spec : Prop :=
  ∀ n, P11739815875021328581.a n = A346689 n

end A346689

/-! ## A346689.P6339916046622994975

`A055017(A014263(n+1)/2)`
-/

namespace A346689.P6339916046622994975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (SequenceMachineLib.roundAway ((A014263 (n + 1) : ℚ) / 2)).toNat

end

end A346689.P6339916046622994975

namespace A346689

/-- `A055017(A014263(n+1)/2)` -/
def P6339916046622994975.Spec : Prop :=
  ∀ n, P6339916046622994975.a n = A346689 n

end A346689

/-! ## A346689.P3432865007588329733

`A055017(record[A106747(n)])`
-/

namespace A346689.P3432865007588329733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A346689.P3432865007588329733

namespace A346689

/-- `A055017(record[A106747(n)])` -/
def P3432865007588329733.Spec : Prop :=
  ∀ n, P3432865007588329733.a n = A346689 n

end A346689

/-! ## A346689.P8536894752952906467

`A055017(eq[n, A167831(n)])`
-/

namespace A346689.P8536894752952906467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346689.P8536894752952906467

namespace A346689

/-- `A055017(eq[n, A167831(n)])` -/
def P8536894752952906467.Spec : Prop :=
  ∀ n, P8536894752952906467.a n = A346689 n

end A346689

/-! ## A346689.P15638685512977905603

`A055017(record[A001613(n)/2])`
-/

namespace A346689.P15638685512977905603
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001613 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A346689.P15638685512977905603

namespace A346689

/-- `A055017(record[A001613(n)/2])` -/
def P15638685512977905603.Spec : Prop :=
  ∀ n, P15638685512977905603.a n = A346689 n

end A346689

/-! ## A346689.P12367817937321435476

`A055017(record[n-A107128(n)])`
-/

namespace A346689.P12367817937321435476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A107128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A346689.P12367817937321435476

namespace A346689

/-- `A055017(record[n-A107128(n)])` -/
def P12367817937321435476.Spec : Prop :=
  ∀ n, P12367817937321435476.a n = A346689 n

end A346689

/-! ## A346689.P220161336738739286

`A055017(eq[n, A167832(n)-n])`
-/

namespace A346689.P220161336738739286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167832 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346689.P220161336738739286

namespace A346689

/-- `A055017(eq[n, A167832(n)-n])` -/
def P220161336738739286.Spec : Prop :=
  ∀ n, P220161336738739286.a n = A346689 n

end A346689

/-! ## A346689.P2131051739938034465

`A055017(record[A001613(2*n)-n])`
-/

namespace A346689.P2131051739938034465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (2 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A346689.P2131051739938034465

namespace A346689

/-- `A055017(record[A001613(2*n)-n])` -/
def P2131051739938034465.Spec : Prop :=
  ∀ n, P2131051739938034465.a n = A346689 n

end A346689

/-! ## A346689.P9223304787529645758

`A055017(eq[A167832(n), A322131(n)])`
-/

namespace A346689.P9223304787529645758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167832 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A346689.P9223304787529645758

namespace A346689

/-- `A055017(eq[A167832(n), A322131(n)])` -/
def P9223304787529645758.Spec : Prop :=
  ∀ n, P9223304787529645758.a n = A346689 n

end A346689

/-! ## A346689.P14737237181429584735

`A055017(eq[A007953(n), A092196(n)])`
-/

namespace A346689.P14737237181429584735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A346689.P14737237181429584735

namespace A346689

/-- `A055017(eq[A007953(n), A092196(n)])` -/
def P14737237181429584735.Spec : Prop :=
  ∀ n, P14737237181429584735.a n = A346689 n

end A346689

/-!
# A346690: Replace 6^k with (-1)^k in base-6 expansion of n.

The programs for A346690, the canonical program `A346690.P7399439134465086339` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346690 has offset 0).

The definition of A346690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346690.P7399439134465086339

`n%6-a(floor(n/6))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A346690

/-- `n%6-a(floor(n/6))` -/
def P7399439134465086339.Spec : Prop :=
  ∀ n, P7399439134465086339.a n = A346690 n

theorem P7399439134465086339.correct : P7399439134465086339.Spec := by
  intro n
  simp only [A346690]

end A346690

/-! ## A346690.P14475210285062583390

`A346691(A020657(n+1))`
-/

namespace A346690.P14475210285062583390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346691 (A020657 (n + 1)).toNat

end

end A346690.P14475210285062583390

namespace A346690

/-- `A346691(A020657(n+1))` -/
def P14475210285062583390.Spec : Prop :=
  ∀ n, P14475210285062583390.a n = A346690 n

end A346690

/-! ## A346690.P17138284919868997528

`A346731(A037471(n))`
-/

namespace A346690.P17138284919868997528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346731 (A037471 n).toNat

end

end A346690.P17138284919868997528

namespace A346690

/-- `A346731(A037471(n))` -/
def P17138284919868997528.Spec : Prop :=
  ∀ n, P17138284919868997528.a n = A346690 n

end A346690

/-! ## A346690.P7289879006336100639

`A346732(A037472(n))`
-/

namespace A346690.P7289879006336100639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346732 (A037472 n).toNat

end

end A346690.P7289879006336100639

namespace A346690

/-- `A346732(A037472(n))` -/
def P7289879006336100639.Spec : Prop :=
  ∀ n, P7289879006336100639.a n = A346690 n

end A346690

/-! ## A346690.P8470571617425457363

`A055017(A007092(n))`
-/

namespace A346690.P8470571617425457363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A007092 n).toNat

end

end A346690.P8470571617425457363

namespace A346690

/-- `A055017(A007092(n))` -/
def P8470571617425457363.Spec : Prop :=
  ∀ n, P8470571617425457363.a n = A346690 n

end A346690

/-! ## A346690.P11497496266539209952

`A055017(lt[A054055(n), 6])`
-/

namespace A346690.P11497496266539209952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A346690.P11497496266539209952

namespace A346690

/-- `A055017(lt[A054055(n), 6])` -/
def P11497496266539209952.Spec : Prop :=
  ∀ n, P11497496266539209952.a n = A346690 n

end A346690

/-! ## A346690.P611945788666581424

`A055017(record[n-A106747(n)])`
-/

namespace A346690.P611945788666581424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A106747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A346690.P611945788666581424

namespace A346690

/-- `A055017(record[n-A106747(n)])` -/
def P611945788666581424.Spec : Prop :=
  ∀ n, P611945788666581424.a n = A346690 n

end A346690

/-! ## A346690.P12481603416816937220

`A055017(eq[A007953(n), A280913(n)])`
-/

namespace A346690.P12481603416816937220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A346690.P12481603416816937220

namespace A346690

/-- `A055017(eq[A007953(n), A280913(n)])` -/
def P12481603416816937220.Spec : Prop :=
  ∀ n, P12481603416816937220.a n = A346690 n

end A346690

/-! ## A346690.P9793628904266840019

`A055017(eq[n, A222254(A222249(n))])`
-/

namespace A346690.P9793628904266840019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222249 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346690.P9793628904266840019

namespace A346690

/-- `A055017(eq[n, A222254(A222249(n))])` -/
def P9793628904266840019.Spec : Prop :=
  ∀ n, P9793628904266840019.a n = A346690 n

end A346690

/-! ## A346690.P8925788852909851450

`A055017(eq[n, A222252(A222251(n))])`
-/

namespace A346690.P8925788852909851450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A222251 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346690.P8925788852909851450

namespace A346690

/-- `A055017(eq[n, A222252(A222251(n))])` -/
def P8925788852909851450.Spec : Prop :=
  ∀ n, P8925788852909851450.a n = A346690 n

end A346690

/-!
# A346691: Replace 7^k with (-1)^k in base-7 expansion of n.

The programs for A346691, the canonical program `A346691.P11319816521141516613` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346691 has offset 0).

The definition of A346691 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346691.P11319816521141516613

`n%7-a(floor(n/7))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A346691

/-- `n%7-a(floor(n/7))` -/
def P11319816521141516613.Spec : Prop :=
  ∀ n, P11319816521141516613.a n = A346691 n

theorem P11319816521141516613.correct : P11319816521141516613.Spec := by
  intro n
  simp only [A346691]

end A346691

/-! ## A346691.P17381170454699047802

`A346731(A037474(n))`
-/

namespace A346691.P17381170454699047802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346731 (A037474 n).toNat

end

end A346691.P17381170454699047802

namespace A346691

/-- `A346731(A037474(n))` -/
def P17381170454699047802.Spec : Prop :=
  ∀ n, P17381170454699047802.a n = A346691 n

end A346691

/-! ## A346691.P12786202913807996455

`A346732(A037475(n))`
-/

namespace A346691.P12786202913807996455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346732 (A037475 n).toNat

end

end A346691.P12786202913807996455

namespace A346691

/-- `A346732(A037475(n))` -/
def P12786202913807996455.Spec : Prop :=
  ∀ n, P12786202913807996455.a n = A346691 n

end A346691

/-! ## A346691.P346230823054972663

`A055017(A007093(n))`
-/

namespace A346691.P346230823054972663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A007093 n).toNat

end

end A346691.P346230823054972663

namespace A346691

/-- `A055017(A007093(n))` -/
def P346230823054972663.Spec : Prop :=
  ∀ n, P346230823054972663.a n = A346691 n

end A346691

/-! ## A346691.P14470841719106561222

`A055017(lt[A054055(n), 7])`
-/

namespace A346691.P14470841719106561222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A346691.P14470841719106561222

namespace A346691

/-- `A055017(lt[A054055(n), 7])` -/
def P14470841719106561222.Spec : Prop :=
  ∀ n, P14470841719106561222.a n = A346691 n

end A346691

/-! ## A346691.P2089665243870017508

`A055017(lt[val(A069877(n), 2), 7])`
-/

namespace A346691.P2089665243870017508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A069877 n).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A346691.P2089665243870017508

namespace A346691

/-- `A055017(lt[val(A069877(n), 2), 7])` -/
def P2089665243870017508.Spec : Prop :=
  ∀ n, P2089665243870017508.a n = A346691 n

end A346691

/-! ## A346691.P6644989132947401238

`A055017(lt[A047842(n)%10, 7])`
-/

namespace A346691.P6644989132947401238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047842 n) 10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A346691.P6644989132947401238

namespace A346691

/-- `A055017(lt[A047842(n)%10, 7])` -/
def P6644989132947401238.Spec : Prop :=
  ∀ n, P6644989132947401238.a n = A346691 n

end A346691

/-! ## A346691.P12187261226936225223

`A055017(eq[0, n*A102679(n)])`
-/

namespace A346691.P12187261226936225223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A102679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346691.P12187261226936225223

namespace A346691

/-- `A055017(eq[0, n*A102679(n)])` -/
def P12187261226936225223.Spec : Prop :=
  ∀ n, P12187261226936225223.a n = A346691 n

end A346691

/-! ## A346691.P11795313561808752703

`A055017(eq[n, A102679(n)+n])`
-/

namespace A346691.P11795313561808752703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346691.P11795313561808752703

namespace A346691

/-- `A055017(eq[n, A102679(n)+n])` -/
def P11795313561808752703.Spec : Prop :=
  ∀ n, P11795313561808752703.a n = A346691 n

end A346691

/-! ## A346691.P2625018039229693694

`A055017(record[n-A064770(n)])`
-/

namespace A346691.P2625018039229693694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A064770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A346691.P2625018039229693694

namespace A346691

/-- `A055017(record[n-A064770(n)])` -/
def P2625018039229693694.Spec : Prop :=
  ∀ n, P2625018039229693694.a n = A346691 n

end A346691

/-! ## A346691.P10652989137514142089

`A055017(eq[n, A222253(A004183(n))])`
-/

namespace A346691.P10652989137514142089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A004183 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346691.P10652989137514142089

namespace A346691

/-- `A055017(eq[n, A222253(A004183(n))])` -/
def P10652989137514142089.Spec : Prop :=
  ∀ n, P10652989137514142089.a n = A346691 n

end A346691

/-! ## A346691.P5026630432812578113

`A055017(eq[n, A222252(A004184(n))])`
-/

namespace A346691.P5026630432812578113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A004184 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346691.P5026630432812578113

namespace A346691

/-- `A055017(eq[n, A222252(A004184(n))])` -/
def P5026630432812578113.Spec : Prop :=
  ∀ n, P5026630432812578113.a n = A346691 n

end A346691

/-! ## A346691.P6602196089754547316

`A055017(eq[n, A222253(A222252(n))])`
-/

namespace A346691.P6602196089754547316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A222252 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346691.P6602196089754547316

namespace A346691

/-- `A055017(eq[n, A222253(A222252(n))])` -/
def P6602196089754547316.Spec : Prop :=
  ∀ n, P6602196089754547316.a n = A346691 n

end A346691

/-! ## A346691.P9192636125524207379

`A055017(eq[n, A222254(A222252(n))])`
-/

namespace A346691.P9192636125524207379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222252 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346691.P9192636125524207379

namespace A346691

/-- `A055017(eq[n, A222254(A222252(n))])` -/
def P9192636125524207379.Spec : Prop :=
  ∀ n, P9192636125524207379.a n = A346691 n

end A346691

/-!
# A346692: a(n) = phi(n) - phi(n-phi(n)), a(1) = 1.

The programs for A346692, the canonical program `A346692.P12280756729807432709` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346692 has offset 1).

The definition of A346692 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A054571, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A346692.P12280756729807432709

`A000010(n+1)-A054571(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A346692

/-- `A000010(n+1)-A054571(n+1)` -/
def P12280756729807432709.Spec : Prop :=
  ∀ n, P12280756729807432709.a n = A346692 (n + 1)

theorem P12280756729807432709.correct : P12280756729807432709.Spec := by
  intro n
  simp only [A346692, Nat.add_sub_cancel]

end A346692

/-! ## A346692.P1071365403645954898

`A065152(n+1)+∑[A111409(n)]`
-/

namespace A346692.P1071365403645954898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065152 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346692.P1071365403645954898

namespace A346692

/-- `A065152(n+1)+∑[A111409(n)]` -/
def P1071365403645954898.Spec : Prop :=
  ∀ n, P1071365403645954898.a n = A346692 (n + 1)

end A346692

/-! ## A346692.P4623674333600082513

`Δ[A002088(n)]-A054571(n+1)`
-/

namespace A346692.P4623674333600082513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A054571 (n + 1)

end

end A346692.P4623674333600082513

namespace A346692

/-- `Δ[A002088(n)]-A054571(n+1)` -/
def P4623674333600082513.Spec : Prop :=
  ∀ n, P4623674333600082513.a n = A346692 (n + 1)

end A346692

/-! ## A346692.P11658637750316987915

`Δ[A005728(n)]-A054571(n+1)`
-/

namespace A346692.P11658637750316987915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A054571 (n + 1)

end

end A346692.P11658637750316987915

namespace A346692

/-- `Δ[A005728(n)]-A054571(n+1)` -/
def P11658637750316987915.Spec : Prop :=
  ∀ n, P11658637750316987915.a n = A346692 (n + 1)

end A346692

/-! ## A346692.P14361795028887400199

`A065152(n+1)+A010554(n+1)`
-/

namespace A346692.P14361795028887400199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065152 (n + 1) + A010554 (n + 1)

end

end A346692.P14361795028887400199

namespace A346692

/-- `A065152(n+1)+A010554(n+1)` -/
def P14361795028887400199.Spec : Prop :=
  ∀ n, P14361795028887400199.a n = A346692 (n + 1)

end A346692

/-! ## A346692.P1122245612089814274

`A083254(n+1)+A053470(n+1)`
-/

namespace A346692.P1122245612089814274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (n + 1) + A053470 (n + 1)

end

end A346692.P1122245612089814274

namespace A346692

/-- `A083254(n+1)+A053470(n+1)` -/
def P1122245612089814274.Spec : Prop :=
  ∀ n, P1122245612089814274.a n = A346692 (n + 1)

end A346692

/-! ## A346692.P8419371685323350404

`A343912(n+1)-A051953(n+1)`
-/

namespace A346692.P8419371685323350404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343912 (n + 1) - A051953 (n + 1)

end

end A346692.P8419371685323350404

namespace A346692

/-- `A343912(n+1)-A051953(n+1)` -/
def P8419371685323350404.Spec : Prop :=
  ∀ n, P8419371685323350404.a n = A346692 (n + 1)

end A346692

/-! ## A346692.P9208757828899144883

`A039649(n+1)-(A054571(n+1)+1)`
-/

namespace A346692.P9208757828899144883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (A054571 (n + 1) + 1)

end

end A346692.P9208757828899144883

namespace A346692

/-- `A039649(n+1)-(A054571(n+1)+1)` -/
def P9208757828899144883.Spec : Prop :=
  ∀ n, P9208757828899144883.a n = A346692 (n + 1)

end A346692

/-! ## A346692.P10599094985591468793

`A109606(n+1)+1-A054571(n+1)`
-/

namespace A346692.P10599094985591468793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + (1 - A054571 (n + 1))

end

end A346692.P10599094985591468793

namespace A346692

/-- `A109606(n+1)+1-A054571(n+1)` -/
def P10599094985591468793.Spec : Prop :=
  ∀ n, P10599094985591468793.a n = A346692 (n + 1)

end A346692

/-! ## A346692.P3108693368606470452

`n-(A219428(n+1)+A054571(n+1))`
-/

namespace A346692.P3108693368606470452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A219428 (n + 1) + A054571 (n + 1))

end

end A346692.P3108693368606470452

namespace A346692

/-- `n-(A219428(n+1)+A054571(n+1))` -/
def P3108693368606470452.Spec : Prop :=
  ∀ n, P3108693368606470452.a n = A346692 (n + 1)

end A346692

/-! ## A346692.P1074157141276143894

`∑{d}[n+1, (n+1)/#*A008683(#)]-A054571(n+1)`
-/

namespace A346692.P1074157141276143894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ) - (A054571 (n + 1) : ℚ)

end

end A346692.P1074157141276143894

namespace A346692

/-- `∑{d}[n+1, (n+1)/#*A008683(#)]-A054571(n+1)` -/
def P1074157141276143894.Spec : Prop :=
  ∀ n, P1074157141276143894.a n = (A346692 (n + 1) : ℚ)

end A346692

/-! ## A346692.P15172735173529689693

`A065152(n+1)+A000010(A000010(n+1))`
-/

namespace A346692.P15172735173529689693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065152 (n + 1) + A000010 (A000010 (n + 1)).toNat

end

end A346692.P15172735173529689693

namespace A346692

/-- `A065152(n+1)+A000010(A000010(n+1))` -/
def P15172735173529689693.Spec : Prop :=
  ∀ n, P15172735173529689693.a n = A346692 (n + 1)

end A346692

/-! ## A346692.P2207759101957053982

`A000010(n+1)+A053470(n+1)-A051953(n+1)`
-/

namespace A346692.P2207759101957053982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A053470 (n + 1) - A051953 (n + 1))

end

end A346692.P2207759101957053982

namespace A346692

/-- `A000010(n+1)+A053470(n+1)-A051953(n+1)` -/
def P2207759101957053982.Spec : Prop :=
  ∀ n, P2207759101957053982.a n = A346692 (n + 1)

end A346692

/-! ## A346692.P7151670077913110870

`A053470(n+1)+A079530(n+1)-A079532(n+1)`
-/

namespace A346692.P7151670077913110870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053470 (n + 1) + (A079530 (n + 1) - A079532 (n + 1))

end

end A346692.P7151670077913110870

namespace A346692

/-- `A053470(n+1)+A079530(n+1)-A079532(n+1)` -/
def P7151670077913110870.Spec : Prop :=
  ∀ n, P7151670077913110870.a n = A346692 (n + 1)

end A346692

/-! ## A346692.P7983247790008924508

`∑{d}[n+1, (n+1)/#*A008683(#)]-A000010(n+1-A000010(n+1)%(n+1))%(n+1)`
-/

namespace A346692.P7983247790008924508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ) - (Int.tmod (A000010 ((n + 1 : ℤ) - Int.tmod (A000010 (n + 1)) (n + 1 : ℤ)).toNat) (n + 1 : ℤ) : ℚ)

end

end A346692.P7983247790008924508

namespace A346692

/-- `∑{d}[n+1, (n+1)/#*A008683(#)]-A000010(n+1-A000010(n+1)%(n+1))%(n+1)` -/
def P7983247790008924508.Spec : Prop :=
  ∀ n, P7983247790008924508.a n = (A346692 (n + 1) : ℚ)

end A346692

/-!
# A346693: Minimum integer length of a segment that touches the interior of n squares on a unit square grid.

The programs for A346693, there is no canonical definition to state claims against.
-/

/-! ## A346693.P4460078639585216709

`floor((n+ϕ)/sqrt(2)-atan(n))`
-/

namespace A346693.P4460078639585216709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℝ) + Real.goldenRatio) / Real.sqrt (2 : ℝ) - Real.arctan (n : ℝ)⌋

end

end A346693.P4460078639585216709

/-! ## A346693.P18202663259765394901

`round(sqrt(n/5+∑[n-2]+4))`
-/

namespace A346693.P18202663259765394901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((n : ℚ) / 5 + ((∑ j ∈ Finset.range (n + 1), f1 j + 4 : ℤ) : ℚ) : ℝ))

end

end A346693.P18202663259765394901

/-! ## A346693.P15957058110754450112

`floor(sqrt(C(n, 2)-round(n/10)+1))`
-/

namespace A346693.P15957058110754450112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((Nat.choose n 2 : ℤ) - SequenceMachineLib.roundAway ((n : ℚ) / 10) + 1)

end

end A346693.P15957058110754450112

/-! ## A346693.P3587230336335495010

`floor(sqrt(∑[a(n-2)+2]))+1` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A346693.P3587230336335495010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1, 1] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A346693.P3587230336335495010

/-! ## A346693.P2932530849580267990

`∑[char[A346232(n+1)]]+1`
-/

namespace A346693.P2932530849580267990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346232 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A346693.P2932530849580267990

/-! ## A346693.P17170895438264784980

`floor(sqrt(A261878(round(acot(n)+n))))`
-/

namespace A346693.P17170895438264784980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A261878 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat)

end

end A346693.P17170895438264784980

/-! ## A346693.P18147709672707451857

`floor(A003056(or(3, A014848(n)))/2)`
-/

namespace A346693.P18147709672707451857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003056 (Int.lor 3 (A014848 n)).toNat : ℚ) / 2⌋

end

end A346693.P18147709672707451857

/-! ## A346693.P3975938867811745139

`A000196(∑[n-1]+4-A131343(n))`
-/

namespace A346693.P3975938867811745139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j + 4 - A131343 n).toNat

end

end A346693.P3975938867811745139

/-! ## A346693.P11566859602011020770

`A004526(A003056(or(3, A014848(n))))`
-/

namespace A346693.P11566859602011020770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A003056 (Int.lor 3 (A014848 n)).toNat).toNat

end

end A346693.P11566859602011020770

/-! ## A346693.P8666096481037848440

`A003056(A025914(n)+A004652(n))`
-/

namespace A346693.P8666096481037848440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A025914 n + A004652 n).toNat

end

end A346693.P8666096481037848440

/-!
# A346694: Primitive terms of A051487.

The programs for A346694, there is no canonical definition to state claims against.
-/

/-! ## A346694.P18311736150355366071

`∩[A051487(n+1), A017593(n)]`
-/

namespace A346694.P18311736150355366071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017593 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346694.P18311736150355366071

/-! ## A346694.P9617150202757703229

`filter[A051487(n+2), A359374(#)]`
-/

namespace A346694.P9617150202757703229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051487 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A346694.P9617150202757703229

/-! ## A346694.P15158644498763746825

`filter[A051487(n+2), A359820(#)]`
-/

namespace A346694.P15158644498763746825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051487 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359820 (f1 j).toNat = 1) n)

end

end A346694.P15158644498763746825

/-! ## A346694.P11838675412174790611

`filter[A051487(n+1), A320106(#)]`
-/

namespace A346694.P11838675412174790611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A346694.P11838675412174790611

/-! ## A346694.P8182880687964124180

`filter[A051487(n+2), A166486(#)]`
-/

namespace A346694.P8182880687964124180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051487 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A346694.P8182880687964124180

/-!
# A346695: Numbers with more divisors than digits in their binary representation.

The programs for A346695, there is no canonical definition to state claims against.
-/

/-! ## A346695.P15671348971178891655

`lt[2*n+1, ∏{d}[n, 2*n/#²]]`
-/

namespace A346695.P15671348971178891655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), (2 * n : ℚ) / (d ^ 2 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A346695.P15671348971178891655

/-! ## A346695.P9458897158419964491

`lt[log2(n+1), A032741(n)]`
-/

namespace A346695.P9458897158419964491
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (n + 1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A346695.P9458897158419964491

/-! ## A346695.P178463721939642975

`lt[log2(n+1), A319410(n)/2]`
-/

namespace A346695.P178463721939642975
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (n + 1 : ℝ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319410 n : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A346695.P178463721939642975

/-! ## A346695.P923387280627636685

`record[(n+6)%A100577(n+6)]`
-/

namespace A346695.P923387280627636685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 6 : ℤ) (A100577 (n + 6))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346695.P923387280627636685

/-! ## A346695.P9723077559908505564

`lt[n+1, A100577(n+1)]+1`
-/

namespace A346695.P9723077559908505564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100577 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A346695.P9723077559908505564

/-! ## A346695.P4287764575113181198

`lt[2*(n+1), A100587(n+1)]+1`
-/

namespace A346695.P4287764575113181198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100587 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A346695.P4287764575113181198

/-! ## A346695.P1202450030208599832

`lt[ceil(log2(n+2)), A000005(n+1)]+1`
-/

namespace A346695.P1202450030208599832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 2 : ℝ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A346695.P1202450030208599832

/-! ## A346695.P6131688129913272851

`lt[log2(n+1), A000005(gcd(n, C(2, n²)))-1]`
-/

namespace A346695.P6131688129913272851
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (n + 1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd n (Nat.choose 2 (n ^ 2))) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A346695.P6131688129913272851

/-! ## A346695.P7517135453292176984

`lt[n, A000225(A032741(n))]`
-/

namespace A346695.P7517135453292176984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A346695.P7517135453292176984

/-! ## A346695.P13204779303559323083

`lt[n+1, A011782(A000005(n+1))]+1`
-/

namespace A346695.P13204779303559323083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A346695.P13204779303559323083

/-!
# A346696: a(n) is the least positive k such that A000041(n) divides A000041(n+k), or 0 if no such k exists.

The programs for A346696, there is no canonical definition to state claims against.
-/

/-! ## A346696.P3107795647520635589

`A079031(n)-n`
-/

namespace A346696.P3107795647520635589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079031 n - (n : ℤ)

end

end A346696.P3107795647520635589

/-! ## A346696.P4263354558537775198

`abs(A079031(n)+A001489(n))`
-/

namespace A346696.P4263354558537775198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A079031 n + A001489 n|

end

end A346696.P4263354558537775198

/-! ## A346696.P10588084757300990160

`abs(A079031(n)+A024000(n+1))`
-/

namespace A346696.P10588084757300990160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A079031 n + A024000 (n + 1)|

end

end A346696.P10588084757300990160

/-! ## A346696.P13887356199717292262

`abs(A079031(n)+A001057(2*n))`
-/

namespace A346696.P13887356199717292262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A079031 n + A001057 (2 * n)|

end

end A346696.P13887356199717292262

/-! ## A346696.P16522512898730257165

`A001478(n+1)+A079031(n)+1`
-/

namespace A346696.P16522512898730257165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A079031 n + 1)

end

end A346696.P16522512898730257165

/-! ## A346696.P18060492103742775346

`(A079031(n)+A001489(n))*A007318(∑[n])`
-/

namespace A346696.P18060492103742775346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A079031 n + A001489 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346696.P18060492103742775346

/-! ## A346696.P701178262273824395

`(A079031(n)+A001489(n))%A000045(n+4)`
-/

namespace A346696.P701178262273824395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079031 n + A001489 n) (A000045 (n + 4))

end

end A346696.P701178262273824395

/-! ## A346696.P8112020751870283773

`(A079031(n)+A001489(n))/A007318(C(2, n))`
-/

namespace A346696.P8112020751870283773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079031 n + A001489 n : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A346696.P8112020751870283773

/-! ## A346696.P12054882787356613785

`(A079031(n)+A001489(n))*A000041(gcd(n, n+1))`
-/

namespace A346696.P12054882787356613785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A079031 n + A001489 n) * A000041 (Nat.gcd n (n + 1))

end

end A346696.P12054882787356613785

/-! ## A346696.P18318200193105224566

`(A079031(n)+A001489(n))^A008683(2*A000040(n+1))`
-/

namespace A346696.P18318200193105224566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079031 n + A001489 n : ℚ) ^ (A008683 (2 * A000040 (n + 1)).toNat : ℤ)

end

end A346696.P18318200193105224566

/-!
# A346697: Sum of the odd-indexed parts (odd bisection) of the multiset of prime indices of n.

The programs for A346697, the canonical program `A346697.P6768469797168310646` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346697 has offset 1).

The definition of A346697 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A316524, A346698, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A346697.P6768469797168310646

`A316524(n+1)+A346698(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A346697

/-- `A316524(n+1)+A346698(n+1)` -/
def P6768469797168310646.Spec : Prop :=
  ∀ n, P6768469797168310646.a n = A346697 (n + 1)

theorem P6768469797168310646.correct : P6768469797168310646.Spec := by
  intro n
  simp only [A346697, Nat.add_sub_cancel]

end A346697

/-! ## A346697.P5305859868666873364

`A056239(n+1)-A346698(n+1)`
-/

namespace A346697.P5305859868666873364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A346698 (n + 1)

end

end A346697.P5305859868666873364

namespace A346697

/-- `A056239(n+1)-A346698(n+1)` -/
def P5305859868666873364.Spec : Prop :=
  ∀ n, P5305859868666873364.a n = A346697 (n + 1)

end A346697

/-! ## A346697.P11373977934327622533

`A346698(2*(n+1))`
-/

namespace A346697.P11373977934327622533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (2 * (n + 1))

end

end A346697.P11373977934327622533

namespace A346697

/-- `A346698(2*(n+1))` -/
def P11373977934327622533.Spec : Prop :=
  ∀ n, P11373977934327622533.a n = A346697 (n + 1)

end A346697

/-! ## A346697.P17097472707180323454

`A346698(n+2+n)%23`
-/

namespace A346697.P17097472707180323454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346698 (n + 2 + n)) 23

end

end A346697.P17097472707180323454

namespace A346697

/-- `A346698(n+2+n)%23` -/
def P17097472707180323454.Spec : Prop :=
  ∀ n, P17097472707180323454.a n = A346697 (n + 1)

end A346697

/-! ## A346697.P5612565232232030784

`and(-1, A346698(record[2-xor(1, -n)]))`
-/

namespace A346697.P5612565232232030784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A346698 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A346697.P5612565232232030784

namespace A346697

/-- `and(-1, A346698(record[2-xor(1, -n)]))` -/
def P5612565232232030784.Spec : Prop :=
  ∀ n, P5612565232232030784.a n = A346697 (n + 1)

end A346697

/-! ## A346697.P6836899766260579741

`A346698(A008590(n+1))-1`
-/

namespace A346697.P6836899766260579741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (A008590 (n + 1)).toNat - 1

end

end A346697.P6836899766260579741

namespace A346697

/-- `A346698(A008590(n+1))-1` -/
def P6836899766260579741.Spec : Prop :=
  ∀ n, P6836899766260579741.a n = A346697 (n + 1)

end A346697

/-! ## A346697.P6467318447663890683

`A056239(A346704(2*(n+1)))`
-/

namespace A346697.P6467318447663890683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A346704 (2 * (n + 1))).toNat

end

end A346697.P6467318447663890683

namespace A346697

/-- `A056239(A346704(2*(n+1)))` -/
def P6467318447663890683.Spec : Prop :=
  ∀ n, P6467318447663890683.a n = A346697 (n + 1)

end A346697

/-! ## A346697.P5262793910131384282

`A346700(A346704(2*(n+1))²)`
-/

namespace A346697.P5262793910131384282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346700 (A346704 (2 * (n + 1)) ^ 2).toNat

end

end A346697.P5262793910131384282

namespace A346697

/-- `A346700(A346704(2*(n+1))²)` -/
def P5262793910131384282.Spec : Prop :=
  ∀ n, P5262793910131384282.a n = A346697 (n + 1)

end A346697

/-! ## A346697.P9438424466505454523

`A056239((n+1)/A346704(n+1))`
-/

namespace A346697.P9438424466505454523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A346704 (n + 1) : ℚ))).toNat

end

end A346697.P9438424466505454523

namespace A346697

/-- `A056239((n+1)/A346704(n+1))` -/
def P9438424466505454523.Spec : Prop :=
  ∀ n, P9438424466505454523.a n = A346697 (n + 1)

end A346697

/-! ## A346697.P4919898785174300930

`∑{d}[A346698(n+2+n), A000010(#)]`
-/

namespace A346697.P4919898785174300930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (n + 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A346697.P4919898785174300930

namespace A346697

/-- `∑{d}[A346698(n+2+n), A000010(#)]` -/
def P4919898785174300930.Spec : Prop :=
  ∀ n, P4919898785174300930.a n = A346697 (n + 1)

end A346697

/-!
# A346698: Sum of the even-indexed parts (even bisection) of the multiset of prime indices of n.

The programs for A346698, the canonical program `A346698.P6991962575422240649` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346698 has offset 1).

The definition of A346698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346698.P11721112450644297868

`A056239(n+1)-A346697(n+1)`
-/

namespace A346698.P11721112450644297868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A346697 (n + 1)

end

end A346698.P11721112450644297868

namespace A346698

/-- `A056239(n+1)-A346697(n+1)` -/
def P11721112450644297868.Spec : Prop :=
  ∀ n, P11721112450644297868.a n = A346698 (n + 1)

end A346698

/-! ## A346698.P12711348494844303674

`A346697(n+1)-A316524(n+1)`
-/

namespace A346698.P12711348494844303674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346697 (n + 1) - A316524 (n + 1)

end

end A346698.P12711348494844303674

namespace A346698

/-- `A346697(n+1)-A316524(n+1)` -/
def P12711348494844303674.Spec : Prop :=
  ∀ n, P12711348494844303674.a n = A346698 (n + 1)

end A346698

/-! ## A346698.P6440624477564205377

`A056239(A346704(n+1))`
-/

namespace A346698.P6440624477564205377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A346704 (n + 1)).toNat

end

end A346698.P6440624477564205377

namespace A346698

/-- `A056239(A346704(n+1))` -/
def P6440624477564205377.Spec : Prop :=
  ∀ n, P6440624477564205377.a n = A346698 (n + 1)

end A346698

/-! ## A346698.P17243408842388439417

`(A056239(n+1)-A316524(n+1))/2`
-/

namespace A346698.P17243408842388439417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056239 (n + 1) - A316524 (n + 1) : ℚ) / 2

end

end A346698.P17243408842388439417

namespace A346698

/-- `(A056239(n+1)-A316524(n+1))/2` -/
def P17243408842388439417.Spec : Prop :=
  ∀ n, P17243408842388439417.a n = (A346698 (n + 1) : ℚ)

end A346698

/-! ## A346698.P9399008097264296295

`A004526(A056239(n+1)-A316524(n+1))`
-/

namespace A346698.P9399008097264296295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A056239 (n + 1) - A316524 (n + 1)).toNat

end

end A346698.P9399008097264296295

namespace A346698

/-- `A004526(A056239(n+1)-A316524(n+1))` -/
def P9399008097264296295.Spec : Prop :=
  ∀ n, P9399008097264296295.a n = A346698 (n + 1)

end A346698

/-! ## A346698.P16194806792499154092

`A006370(A056239(n+1)-A316524(n+1))`
-/

namespace A346698.P16194806792499154092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A056239 (n + 1) - A316524 (n + 1)).toNat

end

end A346698.P16194806792499154092

namespace A346698

/-- `A006370(A056239(n+1)-A316524(n+1))` -/
def P16194806792499154092.Spec : Prop :=
  ∀ n, P16194806792499154092.a n = A346698 (n + 1)

end A346698

/-! ## A346698.P6991962575422240649

`A025480(A056239(n+1)+A008836(n+1)*A344616(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A346698

/-- `A025480(A056239(n+1)+A008836(n+1)*A344616(n+1))` -/
def P6991962575422240649.Spec : Prop :=
  ∀ n, P6991962575422240649.a n = A346698 (n + 1)

theorem P6991962575422240649.correct : P6991962575422240649.Spec := by
  intro n
  simp only [A346698, Nat.add_sub_cancel]

end A346698

/-! ## A346698.P14654187533558949083

`A078898(A056239(n+1)+A008836(n+1)*A344616(n+1))`
-/

namespace A346698.P14654187533558949083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A056239 (n + 1) + A008836 (n + 1) * A344616 (n + 1)).toNat

end

end A346698.P14654187533558949083

namespace A346698

/-- `A078898(A056239(n+1)+A008836(n+1)*A344616(n+1))` -/
def P14654187533558949083.Spec : Prop :=
  ∀ n, P14654187533558949083.a n = A346698 (n + 1)

end A346698

/-! ## A346698.P10531114231148008347

`A025480(A056239(n+1)+A344616(n+1)/A008836(n+1))`
-/

namespace A346698.P10531114231148008347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.roundAway ((A056239 (n + 1) : ℚ) + (A344616 (n + 1) : ℚ) / (A008836 (n + 1) : ℚ))).toNat

end

end A346698.P10531114231148008347

namespace A346698

/-- `A025480(A056239(n+1)+A344616(n+1)/A008836(n+1))` -/
def P10531114231148008347.Spec : Prop :=
  ∀ n, P10531114231148008347.a n = A346698 (n + 1)

end A346698

/-! ## A346698.P11866568914040559257

`A078898(A056239(n+1)+A344616(n+1)/A008836(n+1))`
-/

namespace A346698.P11866568914040559257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (SequenceMachineLib.roundAway ((A056239 (n + 1) : ℚ) + (A344616 (n + 1) : ℚ) / (A008836 (n + 1) : ℚ))).toNat

end

end A346698.P11866568914040559257

namespace A346698

/-- `A078898(A056239(n+1)+A344616(n+1)/A008836(n+1))` -/
def P11866568914040559257.Spec : Prop :=
  ∀ n, P11866568914040559257.a n = A346698 (n + 1)

end A346698

/-! ## A346698.P14086702622462477390

`A346700(A346704(n+1)²)`
-/

namespace A346698.P14086702622462477390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346700 (A346704 (n + 1) ^ 2).toNat

end

end A346698.P14086702622462477390

namespace A346698

/-- `A346700(A346704(n+1)²)` -/
def P14086702622462477390.Spec : Prop :=
  ∀ n, P14086702622462477390.a n = A346698 (n + 1)

end A346698

/-! ## A346698.P17395269332035447287

`A346700(A346704(n+1)*A346704(n+1))`
-/

namespace A346698.P17395269332035447287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346700 (A346704 (n + 1) * A346704 (n + 1)).toNat

end

end A346698.P17395269332035447287

namespace A346698

/-- `A346700(A346704(n+1)*A346704(n+1))` -/
def P17395269332035447287.Spec : Prop :=
  ∀ n, P17395269332035447287.a n = A346698 (n + 1)

end A346698

/-! ## A346698.P18097803906752131270

`A346697(A032742(n+1))`
-/

namespace A346698.P18097803906752131270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346697 (A032742 (n + 1)).toNat

end

end A346698.P18097803906752131270

namespace A346698

/-- `A346697(A032742(n+1))` -/
def P18097803906752131270.Spec : Prop :=
  ∀ n, P18097803906752131270.a n = A346698 (n + 1)

end A346698

/-! ## A346698.P8988793638990221727

`A346697(A054576(2*(n+1)))`
-/

namespace A346698.P8988793638990221727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346697 (A054576 (2 * (n + 1))).toNat

end

end A346698.P8988793638990221727

namespace A346698

/-- `A346697(A054576(2*(n+1)))` -/
def P8988793638990221727.Spec : Prop :=
  ∀ n, P8988793638990221727.a n = A346698 (n + 1)

end A346698

/-! ## A346698.P5025336886136202082

`A346697(gcd(n+1, A322982(n+1)))`
-/

namespace A346698.P5025336886136202082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346697 (Int.gcd (n + 1 : ℤ) (A322982 (n + 1)))

end

end A346698.P5025336886136202082

namespace A346698

/-- `A346697(gcd(n+1, A322982(n+1)))` -/
def P5025336886136202082.Spec : Prop :=
  ∀ n, P5025336886136202082.a n = A346698 (n + 1)

end A346698

/-! ## A346698.P5599043600287039175

`A346700(A346703((n+1)/A020639(n+1))²)`
-/

namespace A346698.P5599043600287039175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346700 (A346703 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat ^ 2).toNat

end

end A346698.P5599043600287039175

namespace A346698

/-- `A346700(A346703((n+1)/A020639(n+1))²)` -/
def P5599043600287039175.Spec : Prop :=
  ∀ n, P5599043600287039175.a n = A346698 (n + 1)

end A346698

/-! ## A346698.P8376140761581913252

`A346700(A346703(xor(n+1, A106409(n+1)))²)`
-/

namespace A346698.P8376140761581913252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346700 (A346703 (Int.xor (n + 1 : ℤ) (A106409 (n + 1))).toNat ^ 2).toNat

end

end A346698.P8376140761581913252

namespace A346698

/-- `A346700(A346703(xor(n+1, A106409(n+1)))²)` -/
def P8376140761581913252.Spec : Prop :=
  ∀ n, P8376140761581913252.a n = A346698 (n + 1)

end A346698

/-!
# A346699: Sum of the odd bisection (odd-indexed parts) of the integer partition with Heinz number n.

The programs for A346699, the canonical program `A346699.P1782263105001668285` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346699 has offset 1).

The definition of A346699 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344616, A346700, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A346699.P1782263105001668285

`A344616(n+1)+A346700(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A346699

/-- `A344616(n+1)+A346700(n+1)` -/
def P1782263105001668285.Spec : Prop :=
  ∀ n, P1782263105001668285.a n = A346699 (n + 1)

theorem P1782263105001668285.correct : P1782263105001668285.Spec := by
  intro n
  simp only [A346699, Nat.add_sub_cancel]

end A346699

/-! ## A346699.P4961097959160515212

`A056239(n+1)-A346700(n+1)`
-/

namespace A346699.P4961097959160515212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A346700 (n + 1)

end

end A346699.P4961097959160515212

namespace A346699

/-- `A056239(n+1)-A346700(n+1)` -/
def P4961097959160515212.Spec : Prop :=
  ∀ n, P4961097959160515212.a n = A346699 (n + 1)

end A346699

/-! ## A346699.P18038575725590608960

`A056239(A346701(n+1))`
-/

namespace A346699.P18038575725590608960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A346701 (n + 1)).toNat

end

end A346699.P18038575725590608960

namespace A346699

/-- `A056239(A346701(n+1))` -/
def P18038575725590608960.Spec : Prop :=
  ∀ n, P18038575725590608960.a n = A346699 (n + 1)

end A346699

/-! ## A346699.P4812880580207523190

`A346700(79*(n+1))`
-/

namespace A346699.P4812880580207523190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346700 (79 * (n + 1))

end

end A346699.P4812880580207523190

namespace A346699

/-- `A346700(79*(n+1))` -/
def P4812880580207523190.Spec : Prop :=
  ∀ n, P4812880580207523190.a n = A346699 (n + 1)

end A346699

/-! ## A346699.P46636310461805382

`A346700(A053024(n+1))%24`
-/

namespace A346699.P46636310461805382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346700 (A053024 (n + 1)).toNat) 24

end

end A346699.P46636310461805382

namespace A346699

/-- `A346700(A053024(n+1))%24` -/
def P46636310461805382.Spec : Prop :=
  ∀ n, P46636310461805382.a n = A346699 (n + 1)

end A346699

/-! ## A346699.P8675734747596845042

`A346700(A253560(n+1))%26`
-/

namespace A346699.P8675734747596845042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346700 (A253560 (n + 1)).toNat) 26

end

end A346699.P8675734747596845042

namespace A346699

/-- `A346700(A253560(n+1))%26` -/
def P8675734747596845042.Spec : Prop :=
  ∀ n, P8675734747596845042.a n = A346699 (n + 1)

end A346699

/-! ## A346699.P6569788557934172780

`A346700(A129598(n+1))%28`
-/

namespace A346699.P6569788557934172780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346700 (A129598 (n + 1)).toNat) 28

end

end A346699.P6569788557934172780

namespace A346699

/-- `A346700(A129598(n+1))%28` -/
def P6569788557934172780.Spec : Prop :=
  ∀ n, P6569788557934172780.a n = A346699 (n + 1)

end A346699

/-! ## A346699.P18073412218422469644

`A346700(A020338(n+1))%32`
-/

namespace A346699.P18073412218422469644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346700 (A020338 (n + 1)).toNat) 32

end

end A346699.P18073412218422469644

namespace A346699

/-- `A346700(A020338(n+1))%32` -/
def P18073412218422469644.Spec : Prop :=
  ∀ n, P18073412218422469644.a n = A346699 (n + 1)

end A346699

/-! ## A346699.P7363538925259287381

`A346700(A256017(n+1))%33`
-/

namespace A346699.P7363538925259287381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346700 (A256017 (n + 1)).toNat) 33

end

end A346699.P7363538925259287381

namespace A346699

/-- `A346700(A256017(n+1))%33` -/
def P7363538925259287381.Spec : Prop :=
  ∀ n, P7363538925259287381.a n = A346699 (n + 1)

end A346699

/-! ## A346699.P12245799875708580628

`A346700(A119416(n+1))%59`
-/

namespace A346699.P12245799875708580628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346700 (A119416 (n + 1)).toNat) 59

end

end A346699.P12245799875708580628

namespace A346699

/-- `A346700(A119416(n+1))%59` -/
def P12245799875708580628.Spec : Prop :=
  ∀ n, P12245799875708580628.a n = A346699 (n + 1)

end A346699

