import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C043
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B009.C000
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A197039: Numbers such that sum of the cube of decimal digits is a perfect square.

The programs for A197039, the canonical program `A197039.P17477955772829590761` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197039 has offset 1).

The definition of A197039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197039.P3676123584282450217

`eq[2, A000122(A055012(n))]`
-/

namespace A197039.P3676123584282450217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A055012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A197039.P3676123584282450217

namespace A197039

/-- `eq[2, A000122(A055012(n))]` -/
def P3676123584282450217.Spec : Prop :=
  ∀ n, (P3676123584282450217.a n : ℤ) = A197039 (n + 1)

end A197039

/-! ## A197039.P17477955772829590761

`eq[1, A053186(A055012(n)+1)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A197039

/-- `eq[1, A053186(A055012(n)+1)]` -/
def P17477955772829590761.Spec : Prop :=
  ∀ n, (P17477955772829590761.a n : ℤ) = A197039 (n + 1)

theorem P17477955772829590761.correct : P17477955772829590761.Spec := by
  intro n
  simp only [A197039, Nat.add_sub_cancel]

end A197039

/-! ## A197039.P11236001510564468855

`eq[1, A262678(A055012(n)+1)]`
-/

namespace A197039.P11236001510564468855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262678 (A055012 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A197039.P11236001510564468855

namespace A197039

/-- `eq[1, A262678(A055012(n)+1)]` -/
def P11236001510564468855.Spec : Prop :=
  ∀ n, (P11236001510564468855.a n : ℤ) = A197039 (n + 1)

end A197039

/-! ## A197039.P10651349062314926486

`eq[A000038(n), A053186(A055012(n))]`
-/

namespace A197039.P10651349062314926486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A055012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A197039.P10651349062314926486

namespace A197039

/-- `eq[A000038(n), A053186(A055012(n))]` -/
def P10651349062314926486.Spec : Prop :=
  ∀ n, (P10651349062314926486.a n : ℤ) = A197039 (n + 1)

end A197039

/-! ## A197039.P3265903469464197356

`eq[A003417(n), A010052(A055012(n))]`
-/

namespace A197039.P3265903469464197356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003417 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A055012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A197039.P3265903469464197356

namespace A197039

/-- `eq[A003417(n), A010052(A055012(n))]` -/
def P3265903469464197356.Spec : Prop :=
  ∀ n, (P3265903469464197356.a n : ℤ) = A197039 (n + 1)

end A197039

/-! ## A197039.P7187952880892416814

`eq[A000007(n), A262678(A055012(n))]`
-/

namespace A197039.P7187952880892416814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262678 (A055012 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A197039.P7187952880892416814

namespace A197039

/-- `eq[A000007(n), A262678(A055012(n))]` -/
def P7187952880892416814.Spec : Prop :=
  ∀ n, (P7187952880892416814.a n : ℤ) = A197039 (n + 1)

end A197039

/-! ## A197039.P12863329631661829701

`eq[A010052(A055012(n)), A206774(2*n+1)]`
-/

namespace A197039.P12863329631661829701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A055012 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206774 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A197039.P12863329631661829701

namespace A197039

/-- `eq[A010052(A055012(n)), A206774(2*n+1)]` -/
def P12863329631661829701.Spec : Prop :=
  ∀ n, (P12863329631661829701.a n : ℤ) = A197039 (n + 1)

end A197039

/-!
# A197041: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,2,0,1,3 for x=0,1,2,3,4.

The programs for A197041, there is no canonical definition to state claims against.
-/

/-! ## A197041.P989367663817113456

`A197047(∑[4*n]+1)`
-/

namespace A197041.P989367663817113456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197041.P989367663817113456

/-! ## A197041.P16591502368204439811

`and(-1, A197047(A001844(n)))`
-/

namespace A197041.P16591502368204439811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A197047 (A001844 n).toNat)

end

end A197041.P16591502368204439811

/-! ## A197041.P9708266083193794003

`record[A197047(A330613(n+1))]`
-/

namespace A197041.P9708266083193794003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197041.P9708266083193794003

/-! ## A197041.P11747360863535472035

`record[A197047(A286457(n+2))]`
-/

namespace A197041.P11747360863535472035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (A286457 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197041.P11747360863535472035

/-!
# A197042: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,0,1,3 for x=0,1,2,3,4.

The programs for A197042, there is no canonical definition to state claims against.
-/

/-! ## A197042.P3944224644070853383

`A197047(∑[n+2]+4)`
-/

namespace A197042.P3944224644070853383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197042.P3944224644070853383

/-! ## A197042.P5295445026766009199

`lcm(2, A197047(A046691(n)+7))`
-/

namespace A197042.P5295445026766009199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A197047 (A046691 n + 7).toNat)

end

end A197042.P5295445026766009199

/-! ## A197042.P15708735809305363403

`record[A197047(A167614(val(n+1, 2)+1))]`
-/

namespace A197042.P15708735809305363403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (A167614 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197042.P15708735809305363403

/-! ## A197042.P16877635070610003218

`record[gcd(A197047(n+4), A244118(n+1))]`
-/

namespace A197042.P16877635070610003218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A197047 (n + 4)) (A244118 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197042.P16877635070610003218

/-! ## A197042.P11653316212910551915

`A197047(A167614(n+1))+A185044(n)`
-/

namespace A197042.P11653316212910551915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (A167614 (n + 1)).toNat + A185044 n

end

end A197042.P11653316212910551915

/-!
# A197043: Number of n X 4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,0,1,3 for x=0,1,2,3,4.

The programs for A197043, there is no canonical definition to state claims against.
-/

/-! ## A197043.P9044735856143618952

`A197047(A374004(n+1))`
-/

namespace A197043.P9044735856143618952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (A374004 (n + 1)).toNat

end

end A197043.P9044735856143618952

/-! ## A197043.P17169182867668884446

`A197047(A052905(n)+9)`
-/

namespace A197043.P17169182867668884446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (A052905 n + 9).toNat

end

end A197043.P17169182867668884446

/-! ## A197043.P8157432305188535966

`A197047(A055999(n)+10)`
-/

namespace A197043.P8157432305188535966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (A055999 n + 10).toNat

end

end A197043.P8157432305188535966

/-! ## A197043.P16719417877307891012

`A197047(A167614(n+2)+1)`
-/

namespace A197043.P16719417877307891012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (A167614 (n + 2) + 1).toNat

end

end A197043.P16719417877307891012

/-! ## A197043.P9746729166748927651

`A197047(A167499(n+2)-1)`
-/

namespace A197043.P9746729166748927651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (A167499 (n + 2) - 1).toNat

end

end A197043.P9746729166748927651

/-!
# A197044: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,0,1,3 for x=0,1,2,3,4.

The programs for A197044, there is no canonical definition to state claims against.
-/

/-! ## A197044.P2673558177108258054

`A197047(A374005(n+1))`
-/

namespace A197044.P2673558177108258054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (A374005 (n + 1)).toNat

end

end A197044.P2673558177108258054

/-! ## A197044.P13620878436141690852

`A197047(A167499(n+3))`
-/

namespace A197044.P13620878436141690852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (A167499 (n + 3)).toNat

end

end A197044.P13620878436141690852

/-! ## A197044.P10204318805217289009

`A197047(Δ[A264443(n)])`
-/

namespace A197044.P10204318805217289009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (f1 (n + 1) - f1 n).toNat

end

end A197044.P10204318805217289009

/-! ## A197044.P14895739911974183403

`A197047(A046691(n+3))`
-/

namespace A197044.P14895739911974183403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (A046691 (n + 3)).toNat

end

end A197044.P14895739911974183403

/-! ## A197044.P15806154450495631904

`A197047(eq[4, A193592(n)])`
-/

namespace A197044.P15806154450495631904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197044.P15806154450495631904

/-!
# A197045: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,0,1,3 for x=0,1,2,3,4.

The programs for A197045, there is no canonical definition to state claims against.
-/

/-! ## A197045.P13507331175980789005

`A197047(A374007(n+1))`
-/

namespace A197045.P13507331175980789005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (A374007 (n + 1)).toNat

end

end A197045.P13507331175980789005

/-! ## A197045.P15039497234012907044

`A197047(eq[7, A131818(n+1)])`
-/

namespace A197045.P15039497234012907044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197045.P15039497234012907044

/-! ## A197045.P18267854814055785414

`A197047(A034111(n+1)-A055999(n))`
-/

namespace A197045.P18267854814055785414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (A034111 (n + 1) - A055999 n).toNat

end

end A197045.P18267854814055785414

/-! ## A197045.P7074252621337227860

`A197047(A056119(n)+16)`
-/

namespace A197045.P7074252621337227860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (A056119 n + 16).toNat

end

end A197045.P7074252621337227860

/-! ## A197045.P14843011536490265926

`A197047(eq[3, A219347(n)])`
-/

namespace A197045.P14843011536490265926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197045.P14843011536490265926

/-!
# A197046: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,2,0,1,3 for x=0,1,2,3,4.

The programs for A197046, there is no canonical definition to state claims against.
-/

/-! ## A197046.P16646351835264131038

`A197047(A374008(n+1))`
-/

namespace A197046.P16646351835264131038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (A374008 (n + 1)).toNat

end

end A197046.P16646351835264131038

/-! ## A197046.P12098161507973413712

`A197047(eq[11, A066657(n)])`
-/

namespace A197046.P12098161507973413712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197046.P12098161507973413712

/-! ## A197046.P329340950709990488

`A197047(eq[8, A131818(n+1)])`
-/

namespace A197046.P329340950709990488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197046.P329340950709990488

/-! ## A197046.P7148592775800903197

`A197047(A055999(n+4))`
-/

namespace A197046.P7148592775800903197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (A055999 (n + 4)).toNat

end

end A197046.P7148592775800903197

/-! ## A197046.P10808536410089387781

`A197047(eq[4, A219347(n)])`
-/

namespace A197046.P10808536410089387781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197046.P10808536410089387781

/-!
# A197047: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,2,0,1,3 for x=0,1,2,3,4.

The programs for A197047, there is no canonical definition to state claims against.
-/

/-! ## A197047.P2076788957424577533

`A235145(A196590(n+1))+A196590(n+1)`
-/

namespace A197047.P2076788957424577533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235145 (A196590 (n + 1)).toNat + A196590 (n + 1)

end

end A197047.P2076788957424577533

/-! ## A197047.P15489028900993434750

`A235145(A196802(n+1))+A196802(n+1)`
-/

namespace A197047.P15489028900993434750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235145 (A196802 (n + 1)).toNat + A196802 (n + 1)

end

end A197047.P15489028900993434750

/-! ## A197047.P14435392398447765215

`A196590(n+1)+A004198(A185044(n))`
-/

namespace A197047.P14435392398447765215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196590 (n + 1) + A004198 (A185044 n).toNat

end

end A197047.P14435392398447765215

/-! ## A197047.P11637190848583603831

`A196802(n+1)+A004198(A185044(n))`
-/

namespace A197047.P11637190848583603831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196802 (n + 1) + A004198 (A185044 n).toNat

end

end A197047.P11637190848583603831

/-! ## A197047.P16167100415176509041

`A309785(A331562(n))+A196590(n+1)`
-/

namespace A197047.P16167100415176509041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A331562 n).toNat + A196590 (n + 1)

end

end A197047.P16167100415176509041

/-!
# A197048: Number of maximal independent vertex sets in the n X n grid graph.

The programs for A197048, there is no canonical definition to state claims against.
-/

/-! ## A197048.P7613537437353753524

`A197054(2*(n+1)²-2*(n+1)+1)`
-/

namespace A197048.P7613537437353753524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197054 ((2 * (n + 1) ^ 2 : ℤ) - (2 * (n + 1) : ℤ) + 1).toNat

end

end A197048.P7613537437353753524

/-! ## A197048.P14741271298178103175

`record[A197054(Δ[A235355(n)])]`
-/

namespace A197048.P14741271298178103175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197054 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197048.P14741271298178103175

/-! ## A197048.P13705173019535258215

`record[A197054(A330613(n+1))]`
-/

namespace A197048.P13705173019535258215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197054 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197048.P13705173019535258215

/-! ## A197048.P3048767338746114065

`record[A003982(n)*A197054(n+1)]`
-/

namespace A197048.P3048767338746114065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A197054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197048.P3048767338746114065

/-! ## A197048.P123396509055417223

`record[gcd(A197054(n+1), A204016(n+1))]`
-/

namespace A197048.P123396509055417223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A197054 (n + 1)) (A204016 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197048.P123396509055417223

/-!
# A197049: Number of n X 3 0..4 arrays with each element equal to the number its horizontal and vertical zero neighbors.

The programs for A197049, the canonical program `A197049.P5087552465773645348` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197049 has offset 0).

The definition of A197049 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A197049.P5087552465773645348

`ogf((1+x+x^2+x^3-x^4+x^5-2x^6)/(1-x-x^2-3x^3+x^4+x^5))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A197049

/-- `ogf((1+x+x^2+x^3-x^4+x^5-2x^6)/(1-x-x^2-3x^3+x^4+x^5))` -/
def P5087552465773645348.Spec : Prop :=
  ∀ n, P5087552465773645348.a n = A197049 n

theorem P5087552465773645348.correct : P5087552465773645348.Spec := by
  intro n
  simp only [A197049]

end A197049

/-! ## A197049.P786983890373212959

`a(n-1)+a(n-2)+3*a(n-3)-a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=10, a(4)=18, a(5)=38, a(6)=78`
-/

namespace A197049.P786983890373212959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 10, 18, 38, 78] fun n a =>
  a (n - 1) + a (n - 2) + 3 * a (n - 3) - a (n - 4) - a (n - 5)

end

end A197049.P786983890373212959

namespace A197049

/-- `a(n-1)+a(n-2)+3*a(n-3)-a(n-4)-a(n-5)` -/
def P786983890373212959.Spec : Prop :=
  ∀ n, P786983890373212959.a n = A197049 n

end A197049

/-! ## A197049.P5999806629386859781

`A197054(∑[n+1]+n)`
-/

namespace A197049.P5999806629386859781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197054 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A197049.P5999806629386859781

namespace A197049

/-- `A197054(∑[n+1]+n)` -/
def P5999806629386859781.Spec : Prop :=
  ∀ n, P5999806629386859781.a n = A197049 n

end A197049

/-! ## A197049.P9091566249074209253

`gcd(A000038(n), A197054(A034856(n+1)))`
-/

namespace A197049.P9091566249074209253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A197054 (A034856 (n + 1)).toNat)

end

end A197049.P9091566249074209253

namespace A197049

/-- `gcd(A000038(n), A197054(A034856(n+1)))` -/
def P9091566249074209253.Spec : Prop :=
  ∀ n, (P9091566249074209253.a n : ℤ) = A197049 n

end A197049

/-! ## A197049.P3759596561801520353

`C(A197054(A034856(n+1)), A057428(n)²)`
-/

namespace A197049.P3759596561801520353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A197054 (A034856 (n + 1)).toNat).toNat (A057428 n ^ 2).toNat

end

end A197049.P3759596561801520353

namespace A197049

/-- `C(A197054(A034856(n+1)), A057428(n)²)` -/
def P3759596561801520353.Spec : Prop :=
  ∀ n, (P3759596561801520353.a n : ℤ) = A197049 n

end A197049

/-!
# A197050: Number of nX4 0..4 arrays with each element equal to the number its horizontal and vertical zero neighbors.

The programs for A197050, the canonical program `A197050.P8303522043283678464` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197050 has offset 1).

The definition of A197050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 247 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197050.P8303522043283678464

`ogf((3+3x+3x^2-3x^3-3x^4-2x^5+x^6)/(1-x-3x^2-3x^3+x^4+2x^5+x^6))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A197050

/-- `ogf((3+3x+3x^2-3x^3-3x^4-2x^5+x^6)/(1-x-3x^2-3x^3+x^4+2x^5+x^6))` -/
def P8303522043283678464.Spec : Prop :=
  ∀ n, P8303522043283678464.a n = A197050 (n + 1)

theorem P8303522043283678464.correct : P8303522043283678464.Spec := by
  intro n
  simp only [A197050, Nat.add_sub_cancel]

end A197050

/-! ## A197050.P10832607980985071522

`A197054(A374004(n+1))`
-/

namespace A197050.P10832607980985071522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197054 (A374004 (n + 1)).toNat

end

end A197050.P10832607980985071522

namespace A197050

/-- `A197054(A374004(n+1))` -/
def P10832607980985071522.Spec : Prop :=
  ∀ n, P10832607980985071522.a n = A197050 (n + 1)

end A197050

/-! ## A197050.P1703056636265368755

`A197054(A052905(n)+9)`
-/

namespace A197050.P1703056636265368755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197054 (A052905 n + 9).toNat

end

end A197050.P1703056636265368755

namespace A197050

/-- `A197054(A052905(n)+9)` -/
def P1703056636265368755.Spec : Prop :=
  ∀ n, P1703056636265368755.a n = A197050 (n + 1)

end A197050

/-! ## A197050.P4866689145840882779

`A197054(A167614(n+2)+1)`
-/

namespace A197050.P4866689145840882779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197054 (A167614 (n + 2) + 1).toNat

end

end A197050.P4866689145840882779

namespace A197050

/-- `A197054(A167614(n+2)+1)` -/
def P4866689145840882779.Spec : Prop :=
  ∀ n, P4866689145840882779.a n = A197050 (n + 1)

end A197050

/-! ## A197050.P14102097080931073876

`A197054(A167499(n+2)-1)`
-/

namespace A197050.P14102097080931073876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197054 (A167499 (n + 2) - 1).toNat

end

end A197050.P14102097080931073876

namespace A197050

/-- `A197054(A167499(n+2)-1)` -/
def P14102097080931073876.Spec : Prop :=
  ∀ n, P14102097080931073876.a n = A197050 (n + 1)

end A197050

/-!
# A197051: Number of nX5 0..4 arrays with each element equal to the number its horizontal and vertical zero neighbors.

The programs for A197051, the canonical program `A197051.P4592590031477242241` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197051 has offset 1).

The definition of A197051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197051.P4592590031477242241

`ogf((4+6x+12x^2-10x^3-18x^4+2x^5-20x^6+20x^7-50x^8+38x^9-18x^10+2x^11+6x^12+2x^13)/(1-x-4x^2-10x^3-4x^4+20x^5-x^6+2x^7-2x^8+16x^9-4x^10-x^13))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A197051

/-- `ogf((4+6x+12x^2-10x^3-18x^4+2x^5-20x^6+20x^7-50x^8+38x^9-18x^10+2x^11+6x^12+2x^13)/(1-x-4x^2-10x^3-4x^4+20x^5-x^6+2x^7-2x^8+16x^9-4x^10-x^13))` -/
def P4592590031477242241.Spec : Prop :=
  ∀ n, P4592590031477242241.a n = A197051 (n + 1)

theorem P4592590031477242241.correct : P4592590031477242241.Spec := by
  intro n
  simp only [A197051, Nat.add_sub_cancel]

end A197051

/-! ## A197051.P5038396458314119059

`A197054(A374005(n+1))`
-/

namespace A197051.P5038396458314119059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197054 (A374005 (n + 1)).toNat

end

end A197051.P5038396458314119059

namespace A197051

/-- `A197054(A374005(n+1))` -/
def P5038396458314119059.Spec : Prop :=
  ∀ n, P5038396458314119059.a n = A197051 (n + 1)

end A197051

/-! ## A197051.P5488092345791483042

`A197054(A027379(n+2)+8)`
-/

namespace A197051.P5488092345791483042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197054 (A027379 (n + 2) + 8).toNat

end

end A197051.P5488092345791483042

namespace A197051

/-- `A197054(A027379(n+2)+8)` -/
def P5488092345791483042.Spec : Prop :=
  ∀ n, P5488092345791483042.a n = A197051 (n + 1)

end A197051

/-! ## A197051.P2745449866029115830

`A197054(A161680(n+5)+5)`
-/

namespace A197051.P2745449866029115830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197054 (A161680 (n + 5) + 5).toNat

end

end A197051.P2745449866029115830

namespace A197051

/-- `A197054(A161680(n+5)+5)` -/
def P2745449866029115830.Spec : Prop :=
  ∀ n, P2745449866029115830.a n = A197051 (n + 1)

end A197051

/-! ## A197051.P12667562989653320922

`A197054(A000096(n+4)-(n-1))`
-/

namespace A197051.P12667562989653320922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197054 (A000096 (n + 4) - ((n : ℤ) - 1)).toNat

end

end A197051.P12667562989653320922

namespace A197051

/-- `A197054(A000096(n+4)-(n-1))` -/
def P12667562989653320922.Spec : Prop :=
  ∀ n, P12667562989653320922.a n = A197051 (n + 1)

end A197051

/-!
# A197052: Number of nX6 0..4 arrays with each element equal to the number its horizontal and vertical zero neighbors.

The programs for A197052, there is no canonical definition to state claims against.
-/

/-! ## A197052.P15208897647612814016

`A197054(A374007(n+1))`
-/

namespace A197052.P15208897647612814016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197054 (A374007 (n + 1)).toNat

end

end A197052.P15208897647612814016

/-! ## A197052.P15261864039445734244

`A197054(A000096(n+4)+7)`
-/

namespace A197052.P15261864039445734244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197054 (A000096 (n + 4) + 7).toNat

end

end A197052.P15261864039445734244

/-! ## A197052.P4535232111701200165

`A197054(A161680(n+6)+6)`
-/

namespace A197052.P4535232111701200165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197054 (A161680 (n + 6) + 6).toNat

end

end A197052.P4535232111701200165

/-! ## A197052.P14299266166654759225

`A197054(A000124(n+7)-8-2*n)`
-/

namespace A197052.P14299266166654759225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197054 (A000124 (n + 7) - 8 - (2 * n : ℤ)).toNat

end

end A197052.P14299266166654759225

/-! ## A197052.P5085994870119298159

`A197054(A316668(Δ[A026054(n+3)]))`
-/

namespace A197052.P5085994870119298159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197054 (A316668 (f1 (n + 1) - f1 n).toNat).toNat

end

end A197052.P5085994870119298159

/-!
# A197053: Number of nX7 0..4 arrays with each element equal to the number its horizontal and vertical zero neighbors.

The programs for A197053, there is no canonical definition to state claims against.
-/

/-! ## A197053.P11285990820553940620

`A197054(A374008(n+1))`
-/

namespace A197053.P11285990820553940620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197054 (A374008 (n + 1)).toNat

end

end A197053.P11285990820553940620

/-! ## A197053.P4376522708586502671

`A197054(A166136(n+5)+1)`
-/

namespace A197053.P4376522708586502671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197054 (A166136 (n + 5) + 1).toNat

end

end A197053.P4376522708586502671

/-! ## A197053.P14471039574750267719

`A197054(A167499(n+5)+2)`
-/

namespace A197053.P14471039574750267719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197054 (A167499 (n + 5) + 2).toNat

end

end A197053.P14471039574750267719

/-! ## A197053.P2678420843970331851

`A197054(A077169(n+7)+2)`
-/

namespace A197053.P2678420843970331851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197054 (A077169 (n + 7) + 2).toNat

end

end A197053.P2678420843970331851

/-! ## A197053.P6659044132015530053

`A197054(A167614(n+5)+4)`
-/

namespace A197053.P6659044132015530053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197054 (A167614 (n + 5) + 4).toNat

end

end A197053.P6659044132015530053

/-!
# A197054: T(n,k) is the number of maximal independent vertex sets in the n X k grid graph, n >= 1, k >= 1, read by antidiagonals.

The programs for A197054, there is no canonical definition to state claims against.
-/

/-! ## A197054.P169431867725070787

`A219502(n+1)-A179184(A331917(3*n+2))`
-/

namespace A197054.P169431867725070787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219502 (n + 1) - A179184 (A331917 (3 * n + 2)).toNat

end

end A197054.P169431867725070787

/-! ## A197054.P13541453006403407331

`A219502(n+1)-A105812(A001045(n))`
-/

namespace A197054.P13541453006403407331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219502 (n + 1) - A105812 (A001045 n).toNat

end

end A197054.P13541453006403407331

/-! ## A197054.P9455421520170501423

`A219502(A187829(n+1))-A179184(n)`
-/

namespace A197054.P9455421520170501423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219502 (A187829 (n + 1)).toNat - A179184 n

end

end A197054.P9455421520170501423

/-! ## A197054.P8695602327763034356

`A000194(A222862(n+1)^A333751(n+1))`
-/

namespace A197054.P8695602327763034356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (SequenceMachineLib.roundAway ((A222862 (n + 1) : ℚ) ^ (A333751 (n + 1) : ℤ))).toNat

end

end A197054.P8695602327763034356

/-!
# A197055: Number of n X n 0..4 arrays with each element equal to the number of its horizontal and vertical neighbors equal to 2.

The programs for A197055, there is no canonical definition to state claims against.
-/

/-! ## A197055.P7430054212525663515

`A197061(∑[4*n]+1)`
-/

namespace A197055.P7430054212525663515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197061 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197055.P7430054212525663515

/-! ## A197055.P291238750213729301

`record[A197061(A330613(n+1))]`
-/

namespace A197055.P291238750213729301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197061 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197055.P291238750213729301

/-! ## A197055.P7385414178994991335

`A197061(A001844(n))+char[19]`
-/

namespace A197055.P7385414178994991335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197061 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A197055.P7385414178994991335

/-! ## A197055.P4852410141016118877

`record[A197061(A001844(∑{digits}[n, #]))]`
-/

namespace A197055.P4852410141016118877
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197061 (A001844 ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197055.P4852410141016118877

/-! ## A197055.P13149780971726688972

`A197061(A001844(n))%A254147(n)`
-/

namespace A197055.P13149780971726688972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197061 (A001844 n).toNat) (A254147 n)

end

end A197055.P13149780971726688972

/-!
# A197056: Number of nX3 0..4 arrays with each element equal to the number its horizontal and vertical neighbors equal to 2.

The programs for A197056, the canonical program `A197056.P7606430672042596512` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197056 has offset 1).

The definition of A197056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197056.P7606430672042596512

`a(n-1)+2*a(n-4)+a(n-5)+a(n-6)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=10, a(4)=14, a(5)=22`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A197056

/-- `a(n-1)+2*a(n-4)+a(n-5)+a(n-6)` -/
def P7606430672042596512.Spec : Prop :=
  ∀ n, (P7606430672042596512.a n : ℤ) = A197056 (n + 1)

theorem P7606430672042596512.correct : P7606430672042596512.Spec := by
  intro n
  simp only [A197056, Nat.add_sub_cancel]

end A197056

/-! ## A197056.P13723994122728582417

`A197061(∑[n+2]+4)`
-/

namespace A197056.P13723994122728582417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197061 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197056.P13723994122728582417

namespace A197056

/-- `A197061(∑[n+2]+4)` -/
def P13723994122728582417.Spec : Prop :=
  ∀ n, P13723994122728582417.a n = A197056 (n + 1)

end A197056

/-! ## A197056.P10577641283620305244

`or(char[1], A197061(A167614(n+1)))`
-/

namespace A197056.P10577641283620305244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A197061 (A167614 (n + 1)).toNat)

end

end A197056.P10577641283620305244

namespace A197056

/-- `or(char[1], A197061(A167614(n+1)))` -/
def P10577641283620305244.Spec : Prop :=
  ∀ n, P10577641283620305244.a n = A197056 (n + 1)

end A197056

/-! ## A197056.P3434174502308968404

`or(char[1], A197061(A055998(n)+6))`
-/

namespace A197056.P3434174502308968404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A197061 (A055998 n + 6).toNat)

end

end A197056.P3434174502308968404

namespace A197056

/-- `or(char[1], A197061(A055998(n)+6))` -/
def P3434174502308968404.Spec : Prop :=
  ∀ n, P3434174502308968404.a n = A197056 (n + 1)

end A197056

/-! ## A197056.P13488823408438663817

`or(char[1], A197061(A046691(n)+7))`
-/

namespace A197056.P13488823408438663817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A197061 (A046691 n + 7).toNat)

end

end A197056.P13488823408438663817

namespace A197056

/-- `or(char[1], A197061(A046691(n)+7))` -/
def P13488823408438663817.Spec : Prop :=
  ∀ n, P13488823408438663817.a n = A197056 (n + 1)

end A197056

/-!
# A197057: Number of n X 4 0..4 arrays with each element equal to the number its horizontal and vertical neighbors equal to 2.

The programs for A197057, the canonical program `A197057.P15403370465844039455` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197057 has offset 1).

The definition of A197057 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 369 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197057.P15403370465844039455

`ogf((1+3x+6x^2+7x^3+4x^4-2x^5-6x^6-5x^7-2x^8)/(1-x-x^3-2x^4-3x^5-2x^6+x^7+3x^8+2x^9))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A197057

/-- `ogf((1+3x+6x^2+7x^3+4x^4-2x^5-6x^6-5x^7-2x^8)/(1-x-x^3-2x^4-3x^5-2x^6+x^7+3x^8+2x^9))` -/
def P15403370465844039455.Spec : Prop :=
  ∀ n, P15403370465844039455.a n = A197057 (n + 1)

theorem P15403370465844039455.correct : P15403370465844039455.Spec := by
  intro n
  simp only [A197057, Nat.add_sub_cancel]

end A197057

/-! ## A197057.P2940736085728773466

`A197061(∑[n+3]+7)`
-/

namespace A197057.P2940736085728773466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197061 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A197057.P2940736085728773466

namespace A197057

/-- `A197061(∑[n+3]+7)` -/
def P2940736085728773466.Spec : Prop :=
  ∀ n, P2940736085728773466.a n = A197057 (n + 1)

end A197057

/-! ## A197057.P2847598232533415405

`A000035(2*n+1)*A197061(A374004(n+1))`
-/

namespace A197057.P2847598232533415405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) * A197061 (A374004 (n + 1)).toNat

end

end A197057.P2847598232533415405

namespace A197057

/-- `A000035(2*n+1)*A197061(A374004(n+1))` -/
def P2847598232533415405.Spec : Prop :=
  ∀ n, P2847598232533415405.a n = A197057 (n + 1)

end A197057

/-! ## A197057.P13666676898752605639

`A197061(A374004(n+1))%A151821(2*(n+1))`
-/

namespace A197057.P13666676898752605639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197061 (A374004 (n + 1)).toNat) (A151821 (2 * (n + 1)))

end

end A197057.P13666676898752605639

namespace A197057

/-- `A197061(A374004(n+1))%A151821(2*(n+1))` -/
def P13666676898752605639.Spec : Prop :=
  ∀ n, P13666676898752605639.a n = A197057 (n + 1)

end A197057

/-! ## A197057.P2343989952988405307

`A197061(A055998(n+2))%A000420(n+4)`
-/

namespace A197057.P2343989952988405307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197061 (A055998 (n + 2)).toNat) (A000420 (n + 4))

end

end A197057.P2343989952988405307

namespace A197057

/-- `A197061(A055998(n+2))%A000420(n+4)` -/
def P2343989952988405307.Spec : Prop :=
  ∀ n, P2343989952988405307.a n = A197057 (n + 1)

end A197057

/-!
# A197058: Number of n X 5 0..4 arrays with each element equal to the number its horizontal and vertical neighbors equal to 2.

The programs for A197058, the canonical program `A197058.P3583979346756199714` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197058 has offset 1).

The definition of A197058 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 315 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197058.P3583979346756199714

`ogf((1+3x+5x^2+4x^3-x^4-5x^5-2x^6-2x^7-x^8-6x^9-5x^10-4x^11-x^12)/(1-2x+x^2-x^3-2x^4-3x^5+x^6+2x^7+2x^8-2x^9+2x^10+x^11+3x^12+x^13))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A197058

/-- `ogf((1+3x+5x^2+4x^3-x^4-5x^5-2x^6-2x^7-x^8-6x^9-5x^10-4x^11-x^12)/(1-2x+x^2-x^3-2x^4-3x^5+x^6+2x^7+2x^8-2x^9+2x^10+x^11+3x^12+x^13))` -/
def P3583979346756199714.Spec : Prop :=
  ∀ n, P3583979346756199714.a n = A197058 (n + 1)

theorem P3583979346756199714.correct : P3583979346756199714.Spec := by
  intro n
  simp only [A197058, Nat.add_sub_cancel]

end A197058

/-! ## A197058.P8848211843801562969

`A197061(A374005(n+1))`
-/

namespace A197058.P8848211843801562969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197061 (A374005 (n + 1)).toNat

end

end A197058.P8848211843801562969

namespace A197058

/-- `A197061(A374005(n+1))` -/
def P8848211843801562969.Spec : Prop :=
  ∀ n, P8848211843801562969.a n = A197058 (n + 1)

end A197058

/-! ## A197058.P17644716154873128242

`A197061(A167499(n+3))`
-/

namespace A197058.P17644716154873128242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197061 (A167499 (n + 3)).toNat

end

end A197058.P17644716154873128242

namespace A197058

/-- `A197061(A167499(n+3))` -/
def P17644716154873128242.Spec : Prop :=
  ∀ n, P17644716154873128242.a n = A197058 (n + 1)

end A197058

/-! ## A197058.P17487501179843904862

`A197061(A155212(n)+13)`
-/

namespace A197058.P17487501179843904862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197061 (A155212 n + 13).toNat

end

end A197058.P17487501179843904862

namespace A197058

/-- `A197061(A155212(n)+13)` -/
def P17487501179843904862.Spec : Prop :=
  ∀ n, P17487501179843904862.a n = A197058 (n + 1)

end A197058

/-! ## A197058.P9937640181218015221

`A197061(A056000(n)+15)`
-/

namespace A197058.P9937640181218015221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197061 (A056000 n + 15).toNat

end

end A197058.P9937640181218015221

namespace A197058

/-- `A197061(A056000(n)+15)` -/
def P9937640181218015221.Spec : Prop :=
  ∀ n, P9937640181218015221.a n = A197058 (n + 1)

end A197058

/-!
# A197059: Number of nX6 0..4 arrays with each element equal to the number its horizontal and vertical neighbors equal to 2.

The programs for A197059, there is no canonical definition to state claims against.
-/

/-! ## A197059.P15456830591752629150

`A197061(A374007(n+1))`
-/

namespace A197059.P15456830591752629150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197061 (A374007 (n + 1)).toNat

end

end A197059.P15456830591752629150

/-! ## A197059.P11883503014758648636

`A197061(A166136(n+4))`
-/

namespace A197059.P11883503014758648636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197061 (A166136 (n + 4)).toNat

end

end A197059.P11883503014758648636

/-! ## A197059.P14431314955641983156

`A197061(A056115(n)+21)`
-/

namespace A197059.P14431314955641983156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197061 (A056115 n + 21).toNat

end

end A197059.P14431314955641983156

/-! ## A197059.P5696597097807119194

`A197061(A167487(n+4)-1)`
-/

namespace A197059.P5696597097807119194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197061 (A167487 (n + 4) - 1).toNat

end

end A197059.P5696597097807119194

/-! ## A197059.P1181094163682415730

`A197061(A000124(n+5)+5)`
-/

namespace A197059.P1181094163682415730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197061 (A000124 (n + 5) + 5).toNat

end

end A197059.P1181094163682415730

/-!
# A197060: Number of nX7 0..4 arrays with each element equal to the number its horizontal and vertical neighbors equal to 2.

The programs for A197060, there is no canonical definition to state claims against.
-/

/-! ## A197060.P2058683463797633194

`A197061(A374008(n+1))`
-/

namespace A197060.P2058683463797633194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197061 (A374008 (n + 1)).toNat

end

end A197060.P2058683463797633194

/-! ## A197060.P10191190738682824112

`A197061(A167487(n+5))`
-/

namespace A197060.P10191190738682824112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197061 (A167487 (n + 5)).toNat

end

end A197060.P10191190738682824112

/-! ## A197060.P7632944449088903467

`A197061(eq[11, A066657(n)])`
-/

namespace A197060.P7632944449088903467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197060.P7632944449088903467

/-! ## A197060.P17760080083642615489

`A197061(A167614(n+5)+4)`
-/

namespace A197060.P17760080083642615489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197061 (A167614 (n + 5) + 4).toNat

end

end A197060.P17760080083642615489

/-! ## A197060.P15692861559357862223

`A197061(A000124(n+6)+6)`
-/

namespace A197060.P15692861559357862223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197061 (A000124 (n + 6) + 6).toNat

end

end A197060.P15692861559357862223

/-!
# A197061: T(n,k)=Number of nXk 0..4 arrays with each element equal to the number of its horizontal and vertical neighbors equal to 2.

The programs for A197061, there is no canonical definition to state claims against.
-/

/-! ## A197061.P1541321658472451046

`A076935(A134398(n+1))%p?[A109389(n)]²`
-/

namespace A197061.P1541321658472451046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076935 (A134398 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2)

end

end A197061.P1541321658472451046

/-! ## A197061.P14994092963252373926

`A076935(A134398(n+1))%A001844(A081587(n))`
-/

namespace A197061.P14994092963252373926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076935 (A134398 (n + 1)).toNat) (A001844 (A081587 n).toNat)

end

end A197061.P14994092963252373926

/-! ## A197061.P13141976189864159104

`A076935(A134398(n+1))^A007318(A204929(n+1))`
-/

namespace A197061.P13141976189864159104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076935 (A134398 (n + 1)).toNat : ℚ) ^ (A007318 (A204929 (n + 1)).toNat : ℤ)

end

end A197061.P13141976189864159104

/-! ## A197061.P16599482698600938564

`xor(A000035(A086052(n+1)), A007318(n))`
-/

namespace A197061.P16599482698600938564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (A086052 (n + 1)).toNat) (A007318 n)

end

end A197061.P16599482698600938564

/-! ## A197061.P4353887038331549628

`A010892(A153671(3*n+5))+A007318(n)`
-/

namespace A197061.P4353887038331549628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A153671 (3 * n + 5)).toNat + A007318 n

end

end A197061.P4353887038331549628

/-!
# A197062: Successive records in A152676.

The programs for A197062, there is no canonical definition to state claims against.
-/

/-! ## A197062.P13536343094354550281

`record[A152676(n+1)]`
-/

namespace A197062.P13536343094354550281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197062.P13536343094354550281

/-! ## A197062.P15159786474566520585

`record[A152676(-xor(n, -1))%(59*n-26)]`
-/

namespace A197062.P15159786474566520585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152676 (-Int.xor (n : ℤ) (-1)).toNat) ((59 * n : ℤ) - 26)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197062.P15159786474566520585

/-! ## A197062.P11191341777648724335

`A000027(record[A152676(-xor(n, -1))])`
-/

namespace A197062.P11191341777648724335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152676 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A197062.P11191341777648724335

/-! ## A197062.P5818801462779593031

`record[A002144(n+1)-A002314(n+1)]`
-/

namespace A197062.P5818801462779593031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) - A002314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197062.P5818801462779593031

/-! ## A197062.P15290358805234470693

`record[A002313(n+2)-A002314(n+1)]`
-/

namespace A197062.P15290358805234470693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) - A002314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197062.P15290358805234470693

/-! ## A197062.P6649810080871870551

`A000203(((-1)^n)²)*record[A152676(-xor(n, -1))]`
-/

namespace A197062.P6649810080871870551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152676 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (((-1) ^ n) ^ 2).toNat * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197062.P6649810080871870551

/-! ## A197062.P2740184956961648366

`record[A000040(A080147(n+1))-A002314(n+1)]`
-/

namespace A197062.P2740184956961648366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A080147 (n + 1)).toNat - A002314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197062.P2740184956961648366

/-! ## A197062.P5051750757018614193

`record[A006530(A055131(n))-A002314(n+1)]`
-/

namespace A197062.P5051750757018614193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A055131 n).toNat - A002314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197062.P5051750757018614193

/-!
# A197063: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,1,3,0,2 for x=0,1,2,3,4.

The programs for A197063, there is no canonical definition to state claims against.
-/

/-! ## A197063.P5842973479577444309

`A197069(∑[4*n]+1)`
-/

namespace A197063.P5842973479577444309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197069 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197063.P5842973479577444309

/-! ## A197063.P15341343832080170344

`record[gcd(A037012(n), A197069(n+1))]`
-/

namespace A197063.P15341343832080170344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A197069 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197063.P15341343832080170344

/-! ## A197063.P7813075187685247772

`A197069(A001844(n))+A059995(n)`
-/

namespace A197063.P7813075187685247772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197069 (A001844 n).toNat + A059995 n

end

end A197063.P7813075187685247772

/-! ## A197063.P4737359780614036629

`gcd(A151660(n), A197069(A001844(n)))`
-/

namespace A197063.P4737359780614036629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151660 n) (A197069 (A001844 n).toNat)

end

end A197063.P4737359780614036629

/-! ## A197063.P3707336563091617416

`lcm(A033999(n), A197069(A001844(n)))`
-/

namespace A197063.P3707336563091617416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A197069 (A001844 n).toNat)

end

end A197063.P3707336563091617416

/-!
# A197064: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,1,3,0,2 for x=0,1,2,3,4.

The programs for A197064, there is no canonical definition to state claims against.
-/

/-! ## A197064.P6651219500844067696

`A197069(∑[n+2]+4)`
-/

namespace A197064.P6651219500844067696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197069 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197064.P6651219500844067696

/-! ## A197064.P4760421062961862004

`A197069(A167614(n+1))+A185284(n)`
-/

namespace A197064.P4760421062961862004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197069 (A167614 (n + 1)).toNat + A185284 n

end

end A197064.P4760421062961862004

/-! ## A197064.P3367160201239433731

`A256974(n)+A197069(A167614(n+1))`
-/

namespace A197064.P3367160201239433731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 n + A197069 (A167614 (n + 1)).toNat

end

end A197064.P3367160201239433731

/-! ## A197064.P16632816784856853828

`A326683(n)+A197069(A167614(n+1))`
-/

namespace A197064.P16632816784856853828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326683 n + A197069 (A167614 (n + 1)).toNat

end

end A197064.P16632816784856853828

/-! ## A197064.P344776125476262214

`or(A000007(n), A197069(A167614(n+1)))`
-/

namespace A197064.P344776125476262214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A197069 (A167614 (n + 1)).toNat)

end

end A197064.P344776125476262214

/-!
# A197065: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,1,3,0,2 for x=0,1,2,3,4.

The programs for A197065, there is no canonical definition to state claims against.
-/

/-! ## A197065.P3202604004355541195

`A197069(A374004(n+1))`
-/

namespace A197065.P3202604004355541195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197069 (A374004 (n + 1)).toNat

end

end A197065.P3202604004355541195

/-! ## A197065.P16053969881889270826

`A197069(A141214(n)+7)`
-/

namespace A197065.P16053969881889270826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197069 (A141214 n + 7).toNat

end

end A197065.P16053969881889270826

/-! ## A197065.P1515578486572718568

`A197069(A052905(n)+9)`
-/

namespace A197065.P1515578486572718568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197069 (A052905 n + 9).toNat

end

end A197065.P1515578486572718568

/-! ## A197065.P4049448585934938105

`A197069(A055999(n)+10)`
-/

namespace A197065.P4049448585934938105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197069 (A055999 n + 10).toNat

end

end A197065.P4049448585934938105

/-! ## A197065.P11078914746673810327

`A197069(A167614(n+2)+1)`
-/

namespace A197065.P11078914746673810327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197069 (A167614 (n + 2) + 1).toNat

end

end A197065.P11078914746673810327

/-!
# A197066: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,1,3,0,2 for x=0,1,2,3,4.

The programs for A197066, there is no canonical definition to state claims against.
-/

/-! ## A197066.P7946038973388068456

`A197069(A374005(n+1))`
-/

namespace A197066.P7946038973388068456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197069 (A374005 (n + 1)).toNat

end

end A197066.P7946038973388068456

/-! ## A197066.P7816107329183458418

`A197069(A155212(n)+13)`
-/

namespace A197066.P7816107329183458418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197069 (A155212 n + 13).toNat

end

end A197066.P7816107329183458418

/-! ## A197066.P16491749181466811740

`A197069(eq[6, A131818(n+1)])`
-/

namespace A197066.P16491749181466811740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197069 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197066.P16491749181466811740

/-! ## A197066.P16150481680493055165

`A197069(A166136(n+1)+A020739(n))`
-/

namespace A197066.P16150481680493055165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197069 (A166136 (n + 1) + A020739 n).toNat

end

end A197066.P16150481680493055165

/-! ## A197066.P2360434118523011752

`A197069(Δ[A264443(n)])`
-/

namespace A197066.P2360434118523011752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197069 (f1 (n + 1) - f1 n).toNat

end

end A197066.P2360434118523011752

/-!
# A197067: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,1,3,0,2 for x=0,1,2,3,4.

The programs for A197067, there is no canonical definition to state claims against.
-/

/-! ## A197067.P2459730175714848164

`A197069(A374007(n+1))`
-/

namespace A197067.P2459730175714848164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197069 (A374007 (n + 1)).toNat

end

end A197067.P2459730175714848164

/-! ## A197067.P6703538338531653557

`A197069(eq[7, A131818(n+1)])`
-/

namespace A197067.P6703538338531653557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197069 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197067.P6703538338531653557

/-! ## A197067.P8630813793876739880

`A197069(Δ[A023545(n+1)]+10)`
-/

namespace A197067.P8630813793876739880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197069 (f1 (n + 1) - f1 n + 10).toNat

end

end A197067.P8630813793876739880

/-! ## A197067.P17696914500945320762

`A197069(A056119(n)+16)`
-/

namespace A197067.P17696914500945320762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197069 (A056119 n + 16).toNat

end

end A197067.P17696914500945320762

/-! ## A197067.P7021932611436168564

`A197069(eq[3, A219347(n)])`
-/

namespace A197067.P7021932611436168564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197069 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197067.P7021932611436168564

/-!
# A197068: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,1,3,0,2 for x=0,1,2,3,4.

The programs for A197068, there is no canonical definition to state claims against.
-/

/-! ## A197068.P2554440296041674394

`A197069(A374008(n+1))`
-/

namespace A197068.P2554440296041674394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197069 (A374008 (n + 1)).toNat

end

end A197068.P2554440296041674394

/-! ## A197068.P3702291474533369997

`A197069(eq[8, A131818(n+1)])`
-/

namespace A197068.P3702291474533369997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197069 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197068.P3702291474533369997

/-! ## A197068.P5315068347286582220

`A197069(A055999(n+4))`
-/

namespace A197068.P5315068347286582220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197069 (A055999 (n + 4)).toNat

end

end A197068.P5315068347286582220

/-! ## A197068.P14780531449755383644

`A197069(eq[4, A219347(n)])`
-/

namespace A197068.P14780531449755383644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197069 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197068.P14780531449755383644

/-! ## A197068.P7964836803568087987

`A197069(eq[6, A193592(n)])`
-/

namespace A197068.P7964836803568087987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197069 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197068.P7964836803568087987

/-!
# A197069: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,1,3,0,2 for x=0,1,2,3,4.

The programs for A197069, there is no canonical definition to state claims against.
-/

/-! ## A197069.P11474432389935047042

`A196696(n+1)+A185284(A025148(n))`
-/

namespace A197069.P11474432389935047042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196696 (n + 1) + A185284 (A025148 n).toNat

end

end A197069.P11474432389935047042

/-! ## A197069.P5621106689733151077

`A196729(n+1)+A185284(A025148(n))`
-/

namespace A197069.P5621106689733151077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196729 (n + 1) + A185284 (A025148 n).toNat

end

end A197069.P5621106689733151077

/-! ## A197069.P6109247229395220463

`A196696(n+1)+A185238(A028326(n))`
-/

namespace A197069.P6109247229395220463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196696 (n + 1) + A185238 (A028326 n).toNat

end

end A197069.P6109247229395220463

/-! ## A197069.P9352567431729441654

`A196729(n+1)+A185238(A028326(n))`
-/

namespace A197069.P9352567431729441654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196729 (n + 1) + A185238 (A028326 n).toNat

end

end A197069.P9352567431729441654

/-! ## A197069.P17321304315590266265

`A196696(n+1)+A086015(A273712(n))`
-/

namespace A197069.P17321304315590266265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196696 (n + 1) + A086015 (A273712 n).toNat

end

end A197069.P17321304315590266265

/-!
# A197072: a(n) = prime(2^(n+1)) - 2*prime(2^n).

The programs for A197072, the canonical program `A197072.P14756618527467231371` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197072 has offset 0).

The definition of A197072 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(2^(n+1))-2*A000040(2^n)` (program `A197072.P14756618527467231371`, by `A197072.P14756618527467231371.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A197072.P4728426870046244660

`A033844(n+1)-2*A033844(n)`
-/

namespace A197072.P4728426870046244660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 (n + 1) - 2 * A033844 n

end

end A197072.P4728426870046244660

namespace A197072

/-- `A033844(n+1)-2*A033844(n)` -/
def P4728426870046244660.Spec : Prop :=
  ∀ n, P4728426870046244660.a n = A197072 n

end A197072

/-! ## A197072.P14756618527467231371

`A000040(2^(n+1))-2*A000040(2^n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A197072

/-- `A000040(2^(n+1))-2*A000040(2^n)` -/
def P14756618527467231371.Spec : Prop :=
  ∀ n, P14756618527467231371.a n = A197072 n

theorem P14756618527467231371.correct : P14756618527467231371.Spec := by
  intro n
  simp only [A197072]

end A197072

/-! ## A197072.P5299705183235571071

`Δ[A033844(n)]-A033844(n)`
-/

namespace A197072.P5299705183235571071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A033844 n

end

end A197072.P5299705183235571071

namespace A197072

/-- `Δ[A033844(n)]-A033844(n)` -/
def P5299705183235571071.Spec : Prop :=
  ∀ n, P5299705183235571071.a n = A197072 n

theorem P5299705183235571071.correct : P5299705183235571071.Spec := by
  intro n
  simp only [A197072, Nat.add_sub_cancel, A197072.P5299705183235571071.f1, A197072.P5299705183235571071.a, A197072.P14756618527467231371.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A033844, A033844.P10148935378251685530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A197072

/-! ## A197072.P18306280472874939761

`A073799(char[1]+1+n)%A033844(n)-C(2, n+2)`
-/

namespace A197072.P18306280472874939761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073799 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)) (A033844 n) - (Nat.choose 2 (n + 2) : ℤ)

end

end A197072.P18306280472874939761

namespace A197072

/-- `A073799(char[1]+1+n)%A033844(n)-C(2, n+2)` -/
def P18306280472874939761.Spec : Prop :=
  ∀ n, P18306280472874939761.a n = A197072 n

end A197072

/-! ## A197072.P5079264578842508840

`A018249(n+1)-(A033844(n)+A018249(n))`
-/

namespace A197072.P5079264578842508840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018249 (n + 1) - (A033844 n + A018249 n)

end

end A197072.P5079264578842508840

namespace A197072

/-- `A018249(n+1)-(A033844(n)+A018249(n))` -/
def P5079264578842508840.Spec : Prop :=
  ∀ n, P5079264578842508840.a n = A197072 n

theorem P5079264578842508840.correct : P5079264578842508840.Spec := by
  intro n
  simp only [A197072, Nat.add_sub_cancel, A197072.P5079264578842508840.a, A197072.P14756618527467231371.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A018249, A018249.P2453322492412683053.a, A033844, A033844.P10148935378251685530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A197072

/-! ## A197072.P10668488696317378048

`A073799(n+1)%A033844(n)-A000007(n)`
-/

namespace A197072.P10668488696317378048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073799 (n + 1)) (A033844 n) - A000007 n

end

end A197072.P10668488696317378048

namespace A197072

/-- `A073799(n+1)%A033844(n)-A000007(n)` -/
def P10668488696317378048.Spec : Prop :=
  ∀ n, P10668488696317378048.a n = A197072 n

end A197072

/-! ## A197072.P16202459009815569123

`Δ[A051439(n)-A074325(n)]-(A051439(n)-A074325(n))`
-/

namespace A197072.P16202459009815569123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051439 n - A074325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A051439 n - A074325 n)

end

end A197072.P16202459009815569123

namespace A197072

/-- `Δ[A051439(n)-A074325(n)]-(A051439(n)-A074325(n))` -/
def P16202459009815569123.Spec : Prop :=
  ∀ n, P16202459009815569123.a n = A197072 n

end A197072

/-!
# A197073: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,1,2,4,0 for x=0,1,2,3,4.

The programs for A197073, there is no canonical definition to state claims against.
-/

/-! ## A197073.P5717210634496718469

`A197079(∑[4*n]+1)`
-/

namespace A197073.P5717210634496718469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197073.P5717210634496718469

/-! ## A197073.P4414492834431187642

`record[gcd(A114327(n), A197079(n+1))]`
-/

namespace A197073.P4414492834431187642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A197079 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197073.P4414492834431187642

/-! ## A197073.P6765652231398106110

`A197079(A001844(n))+A185284(n)`
-/

namespace A197073.P6765652231398106110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (A001844 n).toNat + A185284 n

end

end A197073.P6765652231398106110

/-! ## A197073.P6656435156423120230

`A347689(n)+A197079(A001844(n))`
-/

namespace A197073.P6656435156423120230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n + A197079 (A001844 n).toNat

end

end A197073.P6656435156423120230

/-! ## A197073.P7773049186292527334

`A197079(A001844(n))^A178489(n)`
-/

namespace A197073.P7773049186292527334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197079 (A001844 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A197073.P7773049186292527334

/-!
# A197074: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,2,4,0 for x=0,1,2,3,4.

The programs for A197074, there is no canonical definition to state claims against.
-/

/-! ## A197074.P13009787779506968460

`A197079(∑[n+2]+4)`
-/

namespace A197074.P13009787779506968460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197074.P13009787779506968460

/-! ## A197074.P15861405546500723833

`A256974(n)+A197079(A167614(n+1))`
-/

namespace A197074.P15861405546500723833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 n + A197079 (A167614 (n + 1)).toNat

end

end A197074.P15861405546500723833

/-! ## A197074.P6936536925285010962

`A197079(A167614(n+1))%A162561(n)`
-/

namespace A197074.P6936536925285010962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197079 (A167614 (n + 1)).toNat) (A162561 n)

end

end A197074.P6936536925285010962

/-! ## A197074.P4130349433225784914

`lcm(A197079(A167614(n+1)), A321804(n))`
-/

namespace A197074.P4130349433225784914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A197079 (A167614 (n + 1)).toNat) (A321804 n)

end

end A197074.P4130349433225784914

/-! ## A197074.P11523244021293532920

`or(A000007(n), A197079(A167614(n+1)))`
-/

namespace A197074.P11523244021293532920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A197079 (A167614 (n + 1)).toNat)

end

end A197074.P11523244021293532920

/-!
# A197075: Number of n X 4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,2,4,0 for x=0,1,2,3,4.

The programs for A197075, there is no canonical definition to state claims against.
-/

/-! ## A197075.P1359339372311983493

`A197079(A374004(n+1))`
-/

namespace A197075.P1359339372311983493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (A374004 (n + 1)).toNat

end

end A197075.P1359339372311983493

/-! ## A197075.P11669409225753528440

`A197079(A055999(n)+10)`
-/

namespace A197075.P11669409225753528440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (A055999 n + 10).toNat

end

end A197075.P11669409225753528440

/-! ## A197075.P9185519097304173300

`A197079(A167614(n+2)+1)`
-/

namespace A197075.P9185519097304173300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (A167614 (n + 2) + 1).toNat

end

end A197075.P9185519097304173300

/-! ## A197075.P8930360152355251136

`A197079(eq[5, A131818(n+1)])`
-/

namespace A197075.P8930360152355251136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197075.P8930360152355251136

/-! ## A197075.P5380803316742599803

`A197079(Δ[A264443(n)-n²])`
-/

namespace A197075.P5380803316742599803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (f1 (n + 1) - f1 n).toNat

end

end A197075.P5380803316742599803

/-!
# A197076: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,2,4,0 for x=0,1,2,3,4.

The programs for A197076, there is no canonical definition to state claims against.
-/

/-! ## A197076.P4257148176270821892

`A197079(A374005(n+1))`
-/

namespace A197076.P4257148176270821892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (A374005 (n + 1)).toNat

end

end A197076.P4257148176270821892

/-! ## A197076.P4921716154444237132

`A197079(A056000(n)+15)`
-/

namespace A197076.P4921716154444237132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (A056000 n + 15).toNat

end

end A197076.P4921716154444237132

/-! ## A197076.P15237692129558852118

`A197079(eq[6, A131818(n+1)])`
-/

namespace A197076.P15237692129558852118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197076.P15237692129558852118

/-! ## A197076.P113398020314026949

`A197079(Δ[A264443(n)])`
-/

namespace A197076.P113398020314026949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (f1 (n + 1) - f1 n).toNat

end

end A197076.P113398020314026949

/-! ## A197076.P13663280923727019702

`A197079(eq[4, A193592(n)])`
-/

namespace A197076.P13663280923727019702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197076.P13663280923727019702

/-!
# A197077: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,2,4,0 for x=0,1,2,3,4.

The programs for A197077, there is no canonical definition to state claims against.
-/

/-! ## A197077.P11275653994171538933

`A197079(A374007(n+1))`
-/

namespace A197077.P11275653994171538933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (A374007 (n + 1)).toNat

end

end A197077.P11275653994171538933

/-! ## A197077.P8208324120071042652

`A197079(Δ[A264443(n)]+10)`
-/

namespace A197077.P8208324120071042652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (f1 (n + 1) - f1 n + 10).toNat

end

end A197077.P8208324120071042652

/-! ## A197077.P16155084590375569165

`A197079(eq[7, A131818(n+1)])`
-/

namespace A197077.P16155084590375569165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197077.P16155084590375569165

/-! ## A197077.P16915857944971262190

`A197079(eq[3, A219347(n)])`
-/

namespace A197077.P16915857944971262190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197077.P16915857944971262190

/-! ## A197077.P8531804915660037032

`A197079(eq[5, A193592(n)])`
-/

namespace A197077.P8531804915660037032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197077.P8531804915660037032

/-!
# A197078: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,1,2,4,0 for x=0,1,2,3,4.

The programs for A197078, there is no canonical definition to state claims against.
-/

/-! ## A197078.P15345504332600154948

`A197079(A374008(n+1))`
-/

namespace A197078.P15345504332600154948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (A374008 (n + 1)).toNat

end

end A197078.P15345504332600154948

/-! ## A197078.P18393127377024935843

`A197079(eq[11, A066657(n)])`
-/

namespace A197078.P18393127377024935843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197078.P18393127377024935843

/-! ## A197078.P3880571215625894839

`A197079(eq[8, A131818(n+1)])`
-/

namespace A197078.P3880571215625894839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197078.P3880571215625894839

/-! ## A197078.P3712611850359709711

`A197079(eq[4, A219347(n)])`
-/

namespace A197078.P3712611850359709711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197078.P3712611850359709711

/-! ## A197078.P8166440711677269582

`A197079(eq[6, A193592(n)])`
-/

namespace A197078.P8166440711677269582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197078.P8166440711677269582

/-!
# A197079: T(n,k) = Number of n X k 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,1,2,4,0 for x=0,1,2,3,4.

The programs for A197079, there is no canonical definition to state claims against.
-/

/-! ## A197079.P8767027754369265202

`A321936(A174116(n))+A196912(n+1)`
-/

namespace A197079.P8767027754369265202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 (A174116 n).toNat + A196912 (n + 1)

end

end A197079.P8767027754369265202

/-! ## A197079.P1137411642634064538

`A196912(n+1)+A025465(A023105(n))`
-/

namespace A197079.P1137411642634064538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (n + 1) + A025465 (A023105 n).toNat

end

end A197079.P1137411642634064538

/-! ## A197079.P14548892609204877587

`A196912(n+1)+A044940(A014437(n))`
-/

namespace A197079.P14548892609204877587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (n + 1) + A044940 (A014437 n).toNat

end

end A197079.P14548892609204877587

/-! ## A197079.P11370386899212409824

`A196912(n+1)+A025469(A045925(n))`
-/

namespace A197079.P11370386899212409824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (n + 1) + A025469 (A045925 n).toNat

end

end A197079.P11370386899212409824

/-! ## A197079.P11556094169532530744

`A196912(n+1)-A016389(A022166(n))`
-/

namespace A197079.P11556094169532530744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196912 (n + 1) - A016389 (A022166 n).toNat

end

end A197079.P11556094169532530744

/-!
# A197081: Number of partitions of n into distinct positive quarter-squares (cf. A002620).

The programs for A197081, there is no canonical definition to state claims against.
-/

/-! ## A197081.P5993567260081046406

`A043562(∏{p}[A181600(n), #])`
-/

namespace A197081.P5993567260081046406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A197081.P5993567260081046406

/-! ## A197081.P12369647406432888422

`A004218(2^A130872(n+1))`
-/

namespace A197081.P12369647406432888422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A130872 (n + 1) : ℤ))).toNat

end

end A197081.P12369647406432888422

/-! ## A197081.P18303140582250908297

`A043537(2^A130872(n+1))`
-/

namespace A197081.P18303140582250908297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A130872 (n + 1) : ℤ))).toNat

end

end A197081.P18303140582250908297

/-! ## A197081.P7770792132109634955

`A043562(2^A130872(n+1))`
-/

namespace A197081.P7770792132109634955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A130872 (n + 1) : ℤ))).toNat

end

end A197081.P7770792132109634955

/-! ## A197081.P6165828819637027799

`A055642(2^A130872(n+1))`
-/

namespace A197081.P6165828819637027799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A130872 (n + 1) : ℤ))).toNat

end

end A197081.P6165828819637027799

/-!
# A197082: Smallest number with n prime divisors (counted with multiplicity) which is not divisible by a(k) for any k < n.

The programs for A197082, there is no canonical definition to state claims against.
-/

/-! ## A197082.P15975950953341985740

`A380888(n+1)*A380890(A320444(n))`
-/

namespace A197082.P15975950953341985740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380888 (n + 1) * A380890 (A320444 n).toNat

end

end A197082.P15975950953341985740

/-!
# A197083: Number of solutions to a+b+c = d+e+f with 0 < a <= n, 0 <= b,c,d,e,f <= n.

The programs for A197083, the canonical program `A197083.P9899578085510339531` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197083 has offset 0).

The definition of A197083 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A197083.P1533457634696955374

`ogf((10x+36x^2+19x^3+x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A197083.P1533457634696955374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, 36, 19, 1] [1, -6, 15, -20, 15, -6, 1] n

end

end A197083.P1533457634696955374

namespace A197083

/-- `ogf((10x+36x^2+19x^3+x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P1533457634696955374.Spec : Prop :=
  ∀ n, P1533457634696955374.a n = A197083 n

end A197083

/-! ## A197083.P9899578085510339531

`n*(n+1)*(66*n^3+209*n²+231*n+94)/120`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A197083

/-- `n*(n+1)*(66*n^3+209*n²+231*n+94)/120` -/
def P9899578085510339531.Spec : Prop :=
  ∀ n, P9899578085510339531.a n = (A197083 n : ℚ)

end A197083

/-!
# A197084: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,3,2,0,1 for x=0,1,2,3,4.

The programs for A197084, there is no canonical definition to state claims against.
-/

/-! ## A197084.P12883242905741456719

`A197090(∑[4*n]+1)`
-/

namespace A197084.P12883242905741456719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197090 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197084.P12883242905741456719

/-! ## A197084.P16686500790640545139

`record[gcd(A003987(n), A197090(n+1))]`
-/

namespace A197084.P16686500790640545139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A197090 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197084.P16686500790640545139

/-! ## A197084.P12725398525708119311

`lcm(A033999(n), A197090(A001844(n)))`
-/

namespace A197084.P12725398525708119311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A197090 (A001844 n).toNat)

end

end A197084.P12725398525708119311

/-! ## A197084.P8317774094327029289

`or(A000034(n), A197090(A001844(n)))`
-/

namespace A197084.P8317774094327029289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000034 n) (A197090 (A001844 n).toNat)

end

end A197084.P8317774094327029289

/-! ## A197084.P4016907607895684893

`A098732(n+1)*A197090(A001844(n))`
-/

namespace A197084.P4016907607895684893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098732 (n + 1) * A197090 (A001844 n).toNat

end

end A197084.P4016907607895684893

/-!
# A197085: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,2,0,1 for x=0,1,2,3,4.

The programs for A197085, there is no canonical definition to state claims against.
-/

/-! ## A197085.P9080162350599959067

`A197090(∑[n+2]+4)`
-/

namespace A197085.P9080162350599959067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197090 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197085.P9080162350599959067

/-! ## A197085.P16511216264192570138

`A197090(A167614(n+1))*A278657(n)`
-/

namespace A197085.P16511216264192570138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197090 (A167614 (n + 1)).toNat * A278657 n

end

end A197085.P16511216264192570138

/-! ## A197085.P53408704349966325

`A197090(A167614(n+1))%A077555(n)`
-/

namespace A197085.P53408704349966325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197090 (A167614 (n + 1)).toNat) (A077555 n)

end

end A197085.P53408704349966325

/-! ## A197085.P4407174333946382793

`gcd(A018843(n), A197090(A034856(n+2)))`
-/

namespace A197085.P4407174333946382793
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018843 n) (A197090 (A034856 (n + 2)).toNat)

end

end A197085.P4407174333946382793

/-! ## A197085.P6852869388174200091

`A197090(A034856(n+2))+A018843(n+1)`
-/

namespace A197085.P6852869388174200091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197090 (A034856 (n + 2)).toNat + A018843 (n + 1)

end

end A197085.P6852869388174200091

/-!
# A197086: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,2,0,1 for x=0,1,2,3,4.

The programs for A197086, there is no canonical definition to state claims against.
-/

/-! ## A197086.P5479481463169792957

`A197090(A374004(n+1))`
-/

namespace A197086.P5479481463169792957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197090 (A374004 (n + 1)).toNat

end

end A197086.P5479481463169792957

/-! ## A197086.P8708958302060265289

`A197090(A141214(n)+7)`
-/

namespace A197086.P8708958302060265289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197090 (A141214 n + 7).toNat

end

end A197086.P8708958302060265289

/-! ## A197086.P11939709966297207589

`A197090(A055999(n)+10)`
-/

namespace A197086.P11939709966297207589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197090 (A055999 n + 10).toNat

end

end A197086.P11939709966297207589

/-! ## A197086.P14041968901243166679

`A197090(A167614(n+2)+1)`
-/

namespace A197086.P14041968901243166679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197090 (A167614 (n + 2) + 1).toNat

end

end A197086.P14041968901243166679

/-! ## A197086.P7294712881463775622

`A197090(A112355(n+1)+4)`
-/

namespace A197086.P7294712881463775622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197090 (A112355 (n + 1) + 4).toNat

end

end A197086.P7294712881463775622

/-!
# A197087: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,2,0,1 for x=0,1,2,3,4.

The programs for A197087, there is no canonical definition to state claims against.
-/

/-! ## A197087.P18098800969132397770

`A197090(A374005(n+1))`
-/

namespace A197087.P18098800969132397770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197090 (A374005 (n + 1)).toNat

end

end A197087.P18098800969132397770

/-! ## A197087.P6680479679304715992

`A197090(A167499(n+3))`
-/

namespace A197087.P6680479679304715992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197090 (A167499 (n + 3)).toNat

end

end A197087.P6680479679304715992

/-! ## A197087.P13346811407161563340

`A197090(A056000(n)+15)`
-/

namespace A197087.P13346811407161563340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197090 (A056000 n + 15).toNat

end

end A197087.P13346811407161563340

/-! ## A197087.P6973392060037301506

`A197090(eq[6, A131818(n+1)])`
-/

namespace A197087.P6973392060037301506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197087.P6973392060037301506

/-! ## A197087.P4284811437391011209

`A197090(A056115(n)+11)`
-/

namespace A197087.P4284811437391011209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197090 (A056115 n + 11).toNat

end

end A197087.P4284811437391011209

/-!
# A197088: Number of n X 6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,2,0,1 for x=0,1,2,3,4.

The programs for A197088, there is no canonical definition to state claims against.
-/

/-! ## A197088.P12115195396047874380

`A197090(A374007(n+1))`
-/

namespace A197088.P12115195396047874380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197090 (A374007 (n + 1)).toNat

end

end A197088.P12115195396047874380

/-! ## A197088.P12992627707382739069

`A197090(eq[6, A130270(n+1)])`
-/

namespace A197088.P12992627707382739069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197088.P12992627707382739069

/-! ## A197088.P9618499477125125601

`A197090(eq[7, A131818(n+1)])`
-/

namespace A197088.P9618499477125125601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197088.P9618499477125125601

/-! ## A197088.P5026898602597789724

`A197090(Δ[A023545(n+1)]+10)`
-/

namespace A197088.P5026898602597789724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197090 (f1 (n + 1) - f1 n + 10).toNat

end

end A197088.P5026898602597789724

/-! ## A197088.P9557952966109078575

`A197090(A056119(n)+16)`
-/

namespace A197088.P9557952966109078575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197090 (A056119 n + 16).toNat

end

end A197088.P9557952966109078575

/-!
# A197089: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,3,2,0,1 for x=0,1,2,3,4.

The programs for A197089, there is no canonical definition to state claims against.
-/

/-! ## A197089.P3338834450923191514

`A197090(A374008(n+1))`
-/

namespace A197089.P3338834450923191514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197090 (A374008 (n + 1)).toNat

end

end A197089.P3338834450923191514

/-! ## A197089.P6844636319539799209

`A197090(A056119(n)+28)`
-/

namespace A197089.P6844636319539799209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197090 (A056119 n + 28).toNat

end

end A197089.P6844636319539799209

/-! ## A197089.P8014332304886103630

`A197090(eq[8, A131818(n+1)])`
-/

namespace A197089.P8014332304886103630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197089.P8014332304886103630

/-! ## A197089.P16905076115610415131

`A197090(eq[4, A219347(n)])`
-/

namespace A197089.P16905076115610415131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197089.P16905076115610415131

/-! ## A197089.P237744711553972573

`A197090(eq[6, A193592(n)])`
-/

namespace A197089.P237744711553972573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197089.P237744711553972573

/-!
# A197090: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,3,2,0,1 for x=0,1,2,3,4.

The programs for A197090, there is no canonical definition to state claims against.
-/

/-! ## A197090.P3041315499079054887

`A000119(A174109(n))`
-/

namespace A197090.P3041315499079054887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 (A174109 n).toNat

end

end A197090.P3041315499079054887

/-! ## A197090.P14119862838249957012

`A373010(A203338(n+1))`
-/

namespace A197090.P14119862838249957012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373010 (A203338 (n + 1)).toNat

end

end A197090.P14119862838249957012

/-! ## A197090.P16557508614282937364

`A087061(A158116(n)+A096589(n))`
-/

namespace A197090.P16557508614282937364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087061 (A158116 n + A096589 n).toNat

end

end A197090.P16557508614282937364

/-! ## A197090.P13191783576361443301

`A008277(n+1)-A140344(A008277(n+1))`
-/

namespace A197090.P13191783576361443301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) - A140344 (A008277 (n + 1)).toNat

end

end A197090.P13191783576361443301

/-!
# A197091: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,4,0,0,1 for x=0,1,2,3,4.

The programs for A197091, there is no canonical definition to state claims against.
-/

/-! ## A197091.P9844554017269610094

`A197098(∑[4*n]+1)`
-/

namespace A197091.P9844554017269610094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A197091.P9844554017269610094

/-! ## A197091.P1306450812944048529

`record[gcd(A197098(n+1), A231713(n))]`
-/

namespace A197091.P1306450812944048529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A197098 (n + 1)) (A231713 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197091.P1306450812944048529

/-! ## A197091.P6830724429096556048

`A197098(A001844(n))+A185036(n)`
-/

namespace A197091.P6830724429096556048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (A001844 n).toNat + A185036 n

end

end A197091.P6830724429096556048

/-! ## A197091.P15816075973636828453

`A197098(A001844(n))+A185236(n)`
-/

namespace A197091.P15816075973636828453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (A001844 n).toNat + A185236 n

end

end A197091.P15816075973636828453

/-! ## A197091.P17125071307475860273

`A067059(n)*A197098(A001844(n))`
-/

namespace A197091.P17125071307475860273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 n * A197098 (A001844 n).toNat

end

end A197091.P17125071307475860273

/-!
# A197092: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,4,0,0,1 for x=0,1,2,3,4.

The programs for A197092, the canonical program `A197092.P13488187914355065876` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A197092 has offset 1).

The definition of A197092 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A197092.P3911105579599444904

`ogf((1+5x+x^2-2x^3)/(1-2x-3x^2+x^4))`
-/

namespace A197092.P3911105579599444904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 1, -2] [1, -2, -3, 0, 1] n

end

end A197092.P3911105579599444904

namespace A197092

/-- `ogf((1+5x+x^2-2x^3)/(1-2x-3x^2+x^4))` -/
def P3911105579599444904.Spec : Prop :=
  ∀ n, P3911105579599444904.a n = A197092 (n + 1)

end A197092

/-! ## A197092.P13488187914355065876

`2*a(n-1)+3*a(n-2)-a(n-4)` with `a(0)=1, a(1)=7, a(2)=18, a(3)=55`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A197092

/-- `2*a(n-1)+3*a(n-2)-a(n-4)` -/
def P13488187914355065876.Spec : Prop :=
  ∀ n, P13488187914355065876.a n = A197092 (n + 1)

theorem P13488187914355065876.correct : P13488187914355065876.Spec := by
  intro n
  simp only [A197092, Nat.add_sub_cancel]

end A197092

/-! ## A197092.P1430550956347027957

`A197098(∑[n+1]+2)`
-/

namespace A197092.P1430550956347027957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A197092.P1430550956347027957

namespace A197092

/-- `A197098(∑[n+1]+2)` -/
def P1430550956347027957.Spec : Prop :=
  ∀ n, P1430550956347027957.a n = A197092 (n + 1)

end A197092

/-! ## A197092.P12964907894732813635

`record[gcd(2-A002260(n+1), A197098(n+1))]`
-/

namespace A197092.P12964907894732813635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A002260 (n + 1)) (A197098 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197092.P12964907894732813635

namespace A197092

/-- `record[gcd(2-A002260(n+1), A197098(n+1))]` -/
def P12964907894732813635.Spec : Prop :=
  ∀ n, (P12964907894732813635.a n : ℤ) = A197092 (n + 1)

end A197092

/-! ## A197092.P16156434871078120142

`record[A197098(A022856(A004736(n+1)))]`
-/

namespace A197092.P16156434871078120142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (A022856 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197092.P16156434871078120142

namespace A197092

/-- `record[A197098(A022856(A004736(n+1)))]` -/
def P16156434871078120142.Spec : Prop :=
  ∀ n, P16156434871078120142.a n = A197092 (n + 1)

end A197092

/-!
# A197093: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,4,0,0,1 for x=0,1,2,3,4.

The programs for A197093, there is no canonical definition to state claims against.
-/

/-! ## A197093.P16191708859167127806

`A197098(∑[n+2]+4)`
-/

namespace A197093.P16191708859167127806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A197093.P16191708859167127806

/-! ## A197093.P4617781929935079224

`gcd(A000038(n), A197098(A167614(n+1)))`
-/

namespace A197093.P4617781929935079224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A197098 (A167614 (n + 1)).toNat)

end

end A197093.P4617781929935079224

/-! ## A197093.P18064678831189519303

`A197098(A167614(n+1))/A007318(C(2, n+2))`
-/

namespace A197093.P18064678831189519303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197098 (A167614 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 (n + 2)) : ℚ)

end

end A197093.P18064678831189519303

/-! ## A197093.P6300856531217332050

`A005117(gcd(n, n+1))*A197098(A167614(n+1))`
-/

namespace A197093.P6300856531217332050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (Nat.gcd n (n + 1)) * A197098 (A167614 (n + 1)).toNat

end

end A197093.P6300856531217332050

/-! ## A197093.P4399456748206005317

`A197098(A167614(n+1))/log2(A020639(2*(n+1)))`
-/

namespace A197093.P4399456748206005317
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A197098 (A167614 (n + 1)).toNat : ℝ) / Real.logb 2 (A020639 (2 * (n + 1)) : ℝ)

end

end A197093.P4399456748206005317

/-!
# A197094: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,4,0,0,1 for x=0,1,2,3,4.

The programs for A197094, there is no canonical definition to state claims against.
-/

/-! ## A197094.P14517140742546606359

`A197098(A374004(n+1))`
-/

namespace A197094.P14517140742546606359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (A374004 (n + 1)).toNat

end

end A197094.P14517140742546606359

/-! ## A197094.P1412094846486562502

`A197098(A052905(n)+9)`
-/

namespace A197094.P1412094846486562502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (A052905 n + 9).toNat

end

end A197094.P1412094846486562502

/-! ## A197094.P2721164424553800103

`A197098(A055999(n)+10)`
-/

namespace A197094.P2721164424553800103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (A055999 n + 10).toNat

end

end A197094.P2721164424553800103

/-! ## A197094.P16256156283817784635

`A197098(A167614(n+2)+1)`
-/

namespace A197094.P16256156283817784635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (A167614 (n + 2) + 1).toNat

end

end A197094.P16256156283817784635

/-! ## A197094.P2096673917164905671

`A197098(A166136(n+2)-2)`
-/

namespace A197094.P2096673917164905671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (A166136 (n + 2) - 2).toNat

end

end A197094.P2096673917164905671

/-!
# A197095: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,4,0,0,1 for x=0,1,2,3,4.

The programs for A197095, there is no canonical definition to state claims against.
-/

/-! ## A197095.P9028720578928215369

`A197098(A374005(n+1))`
-/

namespace A197095.P9028720578928215369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (A374005 (n + 1)).toNat

end

end A197095.P9028720578928215369

/-! ## A197095.P11100458141022088707

`A197098(A155212(n)+13)`
-/

namespace A197095.P11100458141022088707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (A155212 n + 13).toNat

end

end A197095.P11100458141022088707

/-! ## A197095.P785450223257602882

`A197098(A167614(n+3)+2)`
-/

namespace A197095.P785450223257602882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (A167614 (n + 3) + 2).toNat

end

end A197095.P785450223257602882

/-! ## A197095.P11890192655722603193

`A197098(Δ[A264443(n)])`
-/

namespace A197095.P11890192655722603193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (f1 (n + 1) - f1 n).toNat

end

end A197095.P11890192655722603193

/-! ## A197095.P2740370109987176021

`A197098(eq[4, A193592(n)])`
-/

namespace A197095.P2740370109987176021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197095.P2740370109987176021

/-!
# A197096: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,4,0,0,1 for x=0,1,2,3,4.

The programs for A197096, there is no canonical definition to state claims against.
-/

/-! ## A197096.P1846839243776619485

`A197098(A374007(n+1))`
-/

namespace A197096.P1846839243776619485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (A374007 (n + 1)).toNat

end

end A197096.P1846839243776619485

/-! ## A197096.P10636274546232623407

`A197098(eq[7, A131818(n+1)])`
-/

namespace A197096.P10636274546232623407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197096.P10636274546232623407

/-! ## A197096.P13530929302844147771

`A197098(A056119(n)+16)`
-/

namespace A197096.P13530929302844147771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (A056119 n + 16).toNat

end

end A197096.P13530929302844147771

/-! ## A197096.P17771922463187394613

`A197098(eq[3, A219347(n)])`
-/

namespace A197096.P17771922463187394613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197096.P17771922463187394613

/-! ## A197096.P15623449338883921322

`A197098(eq[5, A193592(n)])`
-/

namespace A197096.P15623449338883921322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197096.P15623449338883921322

/-!
# A197097: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,4,0,0,1 for x=0,1,2,3,4.

The programs for A197097, there is no canonical definition to state claims against.
-/

/-! ## A197097.P13907358356597695897

`A197098(A374008(n+1))`
-/

namespace A197097.P13907358356597695897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (A374008 (n + 1)).toNat

end

end A197097.P13907358356597695897

/-! ## A197097.P4158427955968467248

`A197098(eq[8, A131818(n+1)])`
-/

namespace A197097.P4158427955968467248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197097.P4158427955968467248

/-! ## A197097.P3609844510038751426

`A197098(eq[4, A219347(n)])`
-/

namespace A197097.P3609844510038751426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197097.P3609844510038751426

/-! ## A197097.P3645970012223692276

`A197098(eq[6, A193592(n)])`
-/

namespace A197097.P3645970012223692276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197097.P3645970012223692276

/-! ## A197097.P15701637300905885308

`A197098(eq[7, A200370(n+1)])`
-/

namespace A197097.P15701637300905885308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197098 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A197097.P15701637300905885308

/-!
# A197098: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,4,0,0,1 for x=0,1,2,3,4.

The programs for A197098, there is no canonical definition to state claims against.
-/

/-! ## A197098.P8836235959248215251

`A227394(A196590(n+1)+1)`
-/

namespace A197098.P8836235959248215251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227394 (A196590 (n + 1) + 1).toNat

end

end A197098.P8836235959248215251

/-! ## A197098.P630392168722699283

`A227394(A196802(n+1)+1)`
-/

namespace A197098.P630392168722699283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227394 (A196802 (n + 1) + 1).toNat

end

end A197098.P630392168722699283

/-! ## A197098.P1826831571061304519

`A227394(A197047(n+1)+1)`
-/

namespace A197098.P1826831571061304519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227394 (A197047 (n + 1) + 1).toNat

end

end A197098.P1826831571061304519

/-! ## A197098.P3968008858382814407

`A131818(A157149(n)*A194949(n))`
-/

namespace A197098.P3968008858382814407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A157149 n * A194949 n).toNat

end

end A197098.P3968008858382814407

/-! ## A197098.P14638793634561560114

`A060431(A196590(n+1)%A206367(n+1))`
-/

namespace A197098.P14638793634561560114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060431 (Int.tmod (A196590 (n + 1)) (A206367 (n + 1))).toNat

end

end A197098.P14638793634561560114

/-!
# A197099: Define the array k(n,x) = number of m such that tau(gcd(n,m)) is x where m runs from 1 to n. Also define h(n,x) = Sum_{d|n : tau(d) = x} d. The sequence contains numbers n such that k(n,x)*x = h(n,x) has at least one solution x.

The programs for A197099, there is no canonical definition to state claims against.
-/

/-! ## A197099.P9042374458041296739

`record[A278523(A156043(n+1))]`
-/

namespace A197099.P9042374458041296739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278523 (A156043 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A197099.P9042374458041296739

/-! ## A197099.P5017068037588699817

`A131886(A360229(n)+char[∑[n]])`
-/

namespace A197099.P5017068037588699817
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131886 (A360229 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A197099.P5017068037588699817

