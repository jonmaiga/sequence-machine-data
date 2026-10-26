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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

/-!
# A209000: Number of n-bead necklaces labeled with numbers -1..1 not allowing reversal, with sum zero and first and second differences in -1..1.

The programs for A209000, there is no canonical definition to state claims against.
-/

/-! ## A209000.P2193791766900953685

`A209007(∑[n+1])`
-/

namespace A209000.P2193791766900953685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A209000.P2193791766900953685

/-! ## A209000.P16319793546223500017

`and(-1, A209007(A161680(n+2)))`
-/

namespace A209000.P16319793546223500017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A209007 (A161680 (n + 2)).toNat)

end

end A209000.P16319793546223500017

/-! ## A209000.P1631326691705680035

`A209007(A000217(n+1))+char[19]`
-/

namespace A209000.P1631326691705680035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (A000217 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A209000.P1631326691705680035

/-! ## A209000.P9971222060380592324

`A209007(A000217(n+1))%A000980(n)`
-/

namespace A209000.P9971222060380592324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209007 (A000217 (n + 1)).toNat) (A000980 n)

end

end A209000.P9971222060380592324

/-! ## A209000.P123216280865422845

`A209007(A025747(n))%A105382(n+1)`
-/

namespace A209000.P123216280865422845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209007 (A025747 n).toNat) (A105382 (n + 1))

end

end A209000.P123216280865422845

/-!
# A209001: Number of n-bead necklaces labeled with numbers -2..2 not allowing reversal, with sum zero and first and second differences in -2..2.

The programs for A209001, there is no canonical definition to state claims against.
-/

/-! ## A209001.P15194789006117587384

`A209007(∑[n+2])`
-/

namespace A209001.P15194789006117587384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A209001.P15194789006117587384

/-! ## A209001.P9973874632450742303

`or(char[1], A209007(A000096(n+1)))`
-/

namespace A209001.P9973874632450742303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A209007 (A000096 (n + 1)).toNat)

end

end A209001.P9973874632450742303

/-! ## A209001.P6116653494982967764

`A209007(A000096(n+1))%A000032(2*n)`
-/

namespace A209001.P6116653494982967764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209007 (A000096 (n + 1)).toNat) (A000032 (2 * n))

end

end A209001.P6116653494982967764

/-! ## A209001.P15326841999461766587

`A007318(C(2, n))*A209007(A000096(n+1))`
-/

namespace A209001.P15326841999461766587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A209007 (A000096 (n + 1)).toNat

end

end A209001.P15326841999461766587

/-! ## A209001.P9656486770418534414

`A209007(A000096(n+1))*A285337(2*n+1)`
-/

namespace A209001.P9656486770418534414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (A000096 (n + 1)).toNat * A285337 (2 * n + 1)

end

end A209001.P9656486770418534414

/-!
# A209002: Number of n-bead necklaces labeled with numbers -3..3 not allowing reversal, with sum zero and first and second differences in -3..3.

The programs for A209002, there is no canonical definition to state claims against.
-/

/-! ## A209002.P1425232367028856850

`A209007(∑[n+3]+1)`
-/

namespace A209002.P1425232367028856850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209002.P1425232367028856850

/-! ## A209002.P17960554034430305980

`gcd(A000038(n), A209007(A034856(n+2)))`
-/

namespace A209002.P17960554034430305980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A209007 (A034856 (n + 2)).toNat)

end

end A209002.P17960554034430305980

/-! ## A209002.P10610159714672931355

`or(A000007(n), A209007(A034856(n+2)))`
-/

namespace A209002.P10610159714672931355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A209007 (A034856 (n + 2)).toNat)

end

end A209002.P10610159714672931355

/-! ## A209002.P11465589750084544563

`or(A005369(n²), A209007(A034856(n+2)))`
-/

namespace A209002.P11465589750084544563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005369 (n ^ 2)) (A209007 (A034856 (n + 2)).toNat)

end

end A209002.P11465589750084544563

/-! ## A209002.P642277562213463653

`A209007(A034856(n+2))+A034580(n+1)`
-/

namespace A209002.P642277562213463653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (A034856 (n + 2)).toNat + A034580 (n + 1)

end

end A209002.P642277562213463653

/-!
# A209003: Number of n-bead necklaces labeled with numbers -4..4 not allowing reversal, with sum zero and first and second differences in -4..4.

The programs for A209003, there is no canonical definition to state claims against.
-/

/-! ## A209003.P13390722651910692409

`A209007(∑[n+4]+3)`
-/

namespace A209003.P13390722651910692409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A209003.P13390722651910692409

/-! ## A209003.P7073895298065349095

`A209007(A055998(n+2))+char[16]`
-/

namespace A209003.P7073895298065349095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (A055998 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A209003.P7073895298065349095

/-! ## A209003.P2510946530588741448

`A209007(A052905(n+1)+2)+char[27]`
-/

namespace A209003.P2510946530588741448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (A052905 (n + 1) + 2).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A209003.P2510946530588741448

/-! ## A209003.P11220807322548079693

`record[A209007(n+1)/A109449(n+3)]`
-/

namespace A209003.P11220807322548079693
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209007 (n + 1) : ℚ) / (A109449 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209003.P11220807322548079693

/-! ## A209003.P4035313918570579380

`record[A209007(n+1)/A209007(n+5)]`
-/

namespace A209003.P4035313918570579380
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209007 (n + 1) : ℚ) / (A209007 (n + 5) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209003.P4035313918570579380

/-!
# A209004: Number of n-bead necklaces labeled with numbers -5..5 not allowing reversal, with sum zero and first and second differences in -5..5.

The programs for A209004, there is no canonical definition to state claims against.
-/

/-! ## A209004.P12642717614743969060

`A209007(Δ[A264443(n)])`
-/

namespace A209004.P12642717614743969060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (f1 (n + 1) - f1 n).toNat

end

end A209004.P12642717614743969060

/-! ## A209004.P3045309824370639947

`A209007(A046691(n+3))`
-/

namespace A209004.P3045309824370639947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (A046691 (n + 3)).toNat

end

end A209004.P3045309824370639947

/-! ## A209004.P14366281364283169008

`A209007(A060577(n+4))`
-/

namespace A209004.P14366281364283169008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (A060577 (n + 4)).toNat

end

end A209004.P14366281364283169008

/-! ## A209004.P11107849194797686119

`A209007(A056115(n)+11)`
-/

namespace A209004.P11107849194797686119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (A056115 n + 11).toNat

end

end A209004.P11107849194797686119

/-! ## A209004.P10798213690606243813

`A209007(eq[2, A092921(n)])`
-/

namespace A209004.P10798213690606243813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209004.P10798213690606243813

/-!
# A209005: Number of n-bead necklaces labeled with numbers -6..6 not allowing reversal, with sum zero and first and second differences in -6..6.

The programs for A209005, there is no canonical definition to state claims against.
-/

/-! ## A209005.P9580789670509136551

`A209007(A052905(n+3))`
-/

namespace A209005.P9580789670509136551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (A052905 (n + 3)).toNat

end

end A209005.P9580789670509136551

/-! ## A209005.P2980384512114967513

`A209007(A056119(n)+16)`
-/

namespace A209005.P2980384512114967513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (A056119 n + 16).toNat

end

end A209005.P2980384512114967513

/-! ## A209005.P7341363763177493525

`A209007(eq[3, A219347(n)])`
-/

namespace A209005.P7341363763177493525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209005.P7341363763177493525

/-! ## A209005.P976140043089880472

`A209007(eq[5, A152157(n)])`
-/

namespace A209005.P976140043089880472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209005.P976140043089880472

/-! ## A209005.P15967157575775978183

`A209007(eq[5, A193592(n)])`
-/

namespace A209005.P15967157575775978183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209005.P15967157575775978183

/-!
# A209006: Number of n-bead necklaces labeled with numbers -7..7 not allowing reversal, with sum zero and first and second differences in -7..7.

The programs for A209006, there is no canonical definition to state claims against.
-/

/-! ## A209006.P16321354065572348987

`A209007(A055999(n+4))`
-/

namespace A209006.P16321354065572348987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (A055999 (n + 4)).toNat

end

end A209006.P16321354065572348987

/-! ## A209006.P8508009546293829105

`A209007(A056121(n)+22)`
-/

namespace A209006.P8508009546293829105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (A056121 n + 22).toNat

end

end A209006.P8508009546293829105

/-! ## A209006.P951864503844793242

`A209007(eq[4, A219347(n)])`
-/

namespace A209006.P951864503844793242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209006.P951864503844793242

/-! ## A209006.P13197602257544113043

`A209007(eq[6, A193592(n)])`
-/

namespace A209006.P13197602257544113043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209006.P13197602257544113043

/-! ## A209006.P13026432574032655199

`A209007(eq[7, A152157(n)])`
-/

namespace A209006.P13026432574032655199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209006.P13026432574032655199

/-!
# A209008: Number of 4-bead necklaces labeled with numbers -n..n not allowing reversal, with sum zero and first and second differences in -n..n.

The programs for A209008, the canonical program `A209008.P9852520947703827443` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209008 has offset 1).

The definition of A209008 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209008.P9852520947703827443

`∑[ceil(record[xor(1, n²)/4])]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A209008

/-- `∑[ceil(record[xor(1, n²)/4])]` -/
def P9852520947703827443.Spec : Prop :=
  ∀ n, P9852520947703827443.a n = A209008 (n + 1)

theorem P9852520947703827443.correct : P9852520947703827443.Spec := by
  intro n
  simp only [A209008, Nat.add_sub_cancel]

end A209008

/-! ## A209008.P13522056795859291144

`∑[a(n-2)+n]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A209008.P13522056795859291144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  f1 (n - 2) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209008.P13522056795859291144

namespace A209008

/-- `∑[a(n-2)+n]` -/
def P13522056795859291144.Spec : Prop :=
  ∀ n, (P13522056795859291144.a n : ℤ) = A209008 (n + 1)

end A209008

/-! ## A209008.P2211001367677523118

`∑[∑[n-a(n-1)]]` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A209008.P2211001367677523118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n f2 =>
  (n : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209008.P2211001367677523118

namespace A209008

/-- `∑[∑[n-a(n-1)]]` -/
def P2211001367677523118.Spec : Prop :=
  ∀ n, P2211001367677523118.a n = A209008 (n + 1)

end A209008

/-! ## A209008.P9203405411209661432

`∑[ceil(((n+1)/2)²)]+n%2`
-/

namespace A209008.P9203405411209661432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1 : ℚ) / 2) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n % 2 : ℕ) : ℤ)

end

end A209008.P9203405411209661432

namespace A209008

/-- `∑[ceil(((n+1)/2)²)]+n%2` -/
def P9203405411209661432.Spec : Prop :=
  ∀ n, P9203405411209661432.a n = A209008 (n + 1)

end A209008

/-! ## A209008.P3397484148344820988

`∑[ceil(((n+1)/2)²)]+and(1, n)`
-/

namespace A209008.P3397484148344820988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1 : ℚ) / 2) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.land 1 n : ℤ)

end

end A209008.P3397484148344820988

namespace A209008

/-- `∑[ceil(((n+1)/2)²)]+and(1, n)` -/
def P3397484148344820988.Spec : Prop :=
  ∀ n, P3397484148344820988.a n = A209008 (n + 1)

end A209008

/-! ## A209008.P1835609588378757890

`a(n-2)+C(n+1, 2)+1` with `a(0)=1, a(1)=3`
-/

namespace A209008.P1835609588378757890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + (Nat.choose (n + 1) 2 + 1)

end

end A209008.P1835609588378757890

namespace A209008

/-- `a(n-2)+C(n+1, 2)+1` -/
def P1835609588378757890.Spec : Prop :=
  ∀ n, (P1835609588378757890.a n : ℤ) = A209008 (n + 1)

end A209008

/-! ## A209008.P16523278656729174737

`a(n-2)+(n²+n)/2+1` with `a(0)=1, a(1)=3`
-/

namespace A209008.P16523278656729174737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + ((n ^ 2 + n : ℚ) / 2 + 1)

end

end A209008.P16523278656729174737

namespace A209008

/-- `a(n-2)+(n²+n)/2+1` -/
def P16523278656729174737.Spec : Prop :=
  ∀ n, P16523278656729174737.a n = (A209008 (n + 1) : ℚ)

end A209008

/-! ## A209008.P3648006814382514979

`(n+1)*n/2+a(n-2)+1` with `a(0)=1, a(1)=3`
-/

namespace A209008.P3648006814382514979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (n + 1 : ℚ) * ((n : ℚ) / 2) + (a (n - 2) + 1)

end

end A209008.P3648006814382514979

namespace A209008

/-- `(n+1)*n/2+a(n-2)+1` -/
def P3648006814382514979.Spec : Prop :=
  ∀ n, P3648006814382514979.a n = (A209008 (n + 1) : ℚ)

end A209008

/-! ## A209008.P16047777689969027734

`a(n-2)+a(n-1)-a(n-3)+n` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A209008.P16047777689969027734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  a (n - 2) + (a (n - 1) - a (n - 3)) + (n : ℤ)

end

end A209008.P16047777689969027734

namespace A209008

/-- `a(n-2)+a(n-1)-a(n-3)+n` -/
def P16047777689969027734.Spec : Prop :=
  ∀ n, P16047777689969027734.a n = A209008 (n + 1)

end A209008

/-! ## A209008.P6904252034374715681

`∑[A265611(n)-n]`
-/

namespace A209008.P6904252034374715681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265611 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209008.P6904252034374715681

namespace A209008

/-- `∑[A265611(n)-n]` -/
def P6904252034374715681.Spec : Prop :=
  ∀ n, P6904252034374715681.a n = A209008 (n + 1)

end A209008

/-! ## A209008.P8619678094539217880

`∑[∑[A267182(n)]]-n`
-/

namespace A209008.P8619678094539217880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267182 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A209008.P8619678094539217880

namespace A209008

/-- `∑[∑[A267182(n)]]-n` -/
def P8619678094539217880.Spec : Prop :=
  ∀ n, P8619678094539217880.a n = A209008 (n + 1)

end A209008

/-! ## A209008.P3780742246659943875

`A003600(n)+2-a(n-1)` with `a(0)=1`
-/

namespace A209008.P3780742246659943875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003600 n + (2 - a (n - 1))

end

end A209008.P3780742246659943875

namespace A209008

/-- `A003600(n)+2-a(n-1)` -/
def P3780742246659943875.Spec : Prop :=
  ∀ n, P3780742246659943875.a n = A209008 (n + 1)

end A209008

/-! ## A209008.P6135572666565229232

`A000217(n)+a(n-2)+1` with `a(0)=1, a(1)=3`
-/

namespace A209008.P6135572666565229232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A000217 n + a (n - 2) + 1

end

end A209008.P6135572666565229232

namespace A209008

/-- `A000217(n)+a(n-2)+1` -/
def P6135572666565229232.Spec : Prop :=
  ∀ n, P6135572666565229232.a n = A209008 (n + 1)

end A209008

/-! ## A209008.P7586493367035322941

`A266464(n)+A004652(n)`
-/

namespace A209008.P7586493367035322941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266464 n + A004652 n

end

end A209008.P7586493367035322941

namespace A209008

/-- `A266464(n)+A004652(n)` -/
def P7586493367035322941.Spec : Prop :=
  ∀ n, P7586493367035322941.a n = A209008 (n + 1)

end A209008

/-! ## A209008.P17484437156898335298

`A391995(n)+A263807(n)`
-/

namespace A209008.P17484437156898335298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391995 n + A263807 n

end

end A209008.P17484437156898335298

namespace A209008

/-- `A391995(n)+A263807(n)` -/
def P17484437156898335298.Spec : Prop :=
  ∀ n, P17484437156898335298.a n = A209008 (n + 1)

end A209008

/-! ## A209008.P3727261041636974983

`A005744(n)-A179272(n)`
-/

namespace A209008.P3727261041636974983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005744 n - A179272 n

end

end A209008.P3727261041636974983

namespace A209008

/-- `A005744(n)-A179272(n)` -/
def P3727261041636974983.Spec : Prop :=
  ∀ n, P3727261041636974983.a n = A209008 (n + 1)

end A209008

/-! ## A209008.P15157881669298872299

`A370307(n)-A079524(n)`
-/

namespace A209008.P15157881669298872299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370307 n - A079524 n

end

end A209008.P15157881669298872299

namespace A209008

/-- `A370307(n)-A079524(n)` -/
def P15157881669298872299.Spec : Prop :=
  ∀ n, P15157881669298872299.a n = A209008 (n + 1)

end A209008

/-! ## A209008.P4493222483502724316

`A088795(n+1)+A000982(n)`
-/

namespace A209008.P4493222483502724316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088795 (n + 1) + A000982 n

end

end A209008.P4493222483502724316

namespace A209008

/-- `A088795(n+1)+A000982(n)` -/
def P4493222483502724316.Spec : Prop :=
  ∀ n, P4493222483502724316.a n = A209008 (n + 1)

end A209008

/-! ## A209008.P10019923085709962385

`A173196(n+1)+A080513(n)`
-/

namespace A209008.P10019923085709962385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (n + 1) + A080513 n

end

end A209008.P10019923085709962385

namespace A209008

/-- `A173196(n+1)+A080513(n)` -/
def P10019923085709962385.Spec : Prop :=
  ∀ n, P10019923085709962385.a n = A209008 (n + 1)

end A209008

/-! ## A209008.P12494731425063640624

`A002623(n)-A198442(n+1)`
-/

namespace A209008.P12494731425063640624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 n - A198442 (n + 1)

end

end A209008.P12494731425063640624

namespace A209008

/-- `A002623(n)-A198442(n+1)` -/
def P12494731425063640624.Spec : Prop :=
  ∀ n, P12494731425063640624.a n = A209008 (n + 1)

end A209008

/-!
# A209009: Number of 5-bead necklaces labeled with numbers -n..n not allowing reversal, with sum zero and first and second differences in -n..n.

The programs for A209009, there is no canonical definition to state claims against.
-/

/-! ## A209009.P15550324986525572568

`A209007(A167499(n+3))`
-/

namespace A209009.P15550324986525572568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (A167499 (n + 3)).toNat

end

end A209009.P15550324986525572568

/-! ## A209009.P9992507069613958125

`A209007(A155212(n)+13)`
-/

namespace A209009.P9992507069613958125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (A155212 n + 13).toNat

end

end A209009.P9992507069613958125

/-! ## A209009.P7749663549551116872

`A209007(A056000(n)+15)`
-/

namespace A209009.P7749663549551116872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (A056000 n + 15).toNat

end

end A209009.P7749663549551116872

/-! ## A209009.P1461169100373269401

`A209007(eq[7, A066657(n)])`
-/

namespace A209009.P1461169100373269401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209009.P1461169100373269401

/-! ## A209009.P1147018373014983603

`A209007(A167614(n+3)+2)`
-/

namespace A209009.P1147018373014983603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (A167614 (n + 3) + 2).toNat

end

end A209009.P1147018373014983603

/-!
# A209010: Number of 6-bead necklaces labeled with numbers -n..n not allowing reversal, with sum zero and first and second differences in -n..n.

The programs for A209010, there is no canonical definition to state claims against.
-/

/-! ## A209010.P14139227622720264045

`A209007(A166136(n+4))`
-/

namespace A209010.P14139227622720264045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (A166136 (n + 4)).toNat

end

end A209010.P14139227622720264045

/-! ## A209010.P16222323623169901488

`A209007(A056115(n)+21)`
-/

namespace A209010.P16222323623169901488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (A056115 n + 21).toNat

end

end A209010.P16222323623169901488

/-! ## A209010.P17901377930033310244

`record[A209007(A052905(n)+11)]`
-/

namespace A209010.P17901377930033310244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (A052905 n + 11).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209010.P17901377930033310244

/-! ## A209010.P5185743079002688443

`A209007(A167499(n+4)+1)`
-/

namespace A209010.P5185743079002688443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (A167499 (n + 4) + 1).toNat

end

end A209010.P5185743079002688443

/-! ## A209010.P15838125152159784111

`A209007(A000124(n+5)+5)`
-/

namespace A209010.P15838125152159784111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (A000124 (n + 5) + 5).toNat

end

end A209010.P15838125152159784111

/-!
# A209011: Number of 7-bead necklaces labeled with numbers -n..n not allowing reversal, with sum zero and first and second differences in -n..n.

The programs for A209011, there is no canonical definition to state claims against.
-/

/-! ## A209011.P17892733566158126205

`A209007(∑[n+6]+22)`
-/

namespace A209011.P17892733566158126205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209007 (∑ j ∈ Finset.range (n + 1), f1 j + 22)

end

end A209011.P17892733566158126205

/-!
# A209012: Number of n X n 0..3 arrays with no element equal the average of immediate neighbors vertically above, diagonally above and left, and horizontally left of it.

The programs for A209012, there is no canonical definition to state claims against.
-/

/-! ## A209012.P17478972431235368390

`A209019((n+1)²+n²)`
-/

namespace A209012.P17478972431235368390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209019 ((n + 1) ^ 2 + n ^ 2)

end

end A209012.P17478972431235368390

/-!
# A209013: Number of n X 2 0..3 arrays with no element equal the average of immediate neighbors vertically above, diagonally above and left, and horizontally left of it.

The programs for A209013, there is no canonical definition to state claims against.
-/

/-! ## A209013.P13987158996881491407

`A209019(∑[n+1]+2)`
-/

namespace A209013.P13987158996881491407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209019 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A209013.P13987158996881491407

/-! ## A209013.P13721867621388695899

`lcm(2, A209019(A000096(n)+3))`
-/

namespace A209013.P13721867621388695899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A209019 (A000096 n + 3).toNat)

end

end A209013.P13721867621388695899

/-! ## A209013.P17758438320460354836

`record[gcd(A209019(n+2), A319047(n))]`
-/

namespace A209013.P17758438320460354836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A209019 (n + 2)) (A319047 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209013.P17758438320460354836

/-! ## A209013.P2118456948600661968

`record[root(A209019(n+2), A002260(n+1))]`
-/

namespace A209013.P2118456948600661968
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A209019 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209013.P2118456948600661968

/-! ## A209013.P14361441982916911893

`A209019(A034856(n+1)+1)-A326684(n)`
-/

namespace A209013.P14361441982916911893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209019 (A034856 (n + 1) + 1).toNat - A326684 n

end

end A209013.P14361441982916911893

/-!
# A209014: Number of n X 3 0..3 arrays with no element equal the average of immediate neighbors vertically above, diagonally above and left, and horizontally left of it.

The programs for A209014, there is no canonical definition to state claims against.
-/

/-! ## A209014.P12109716112884822371

`A209019(∑[n+2]+4)`
-/

namespace A209014.P12109716112884822371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209019 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A209014.P12109716112884822371

/-! ## A209014.P1303026416084549215

`lcm(2, A209019(A167614(n+1)))`
-/

namespace A209014.P1303026416084549215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A209019 (A167614 (n + 1)).toNat)

end

end A209014.P1303026416084549215

/-! ## A209014.P12415582975207589494

`A209019(A167614(n+1))+A122180(n+1)`
-/

namespace A209014.P12415582975207589494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209019 (A167614 (n + 1)).toNat + A122180 (n + 1)

end

end A209014.P12415582975207589494

/-! ## A209014.P16380708190787470102

`A342676(n+1)+A209019(A167614(n+1))`
-/

namespace A209014.P16380708190787470102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342676 (n + 1) + A209019 (A167614 (n + 1)).toNat

end

end A209014.P16380708190787470102

/-! ## A209014.P17964667579387560563

`A007318(C(2, n))*A209019(A167614(n+1))`
-/

namespace A209014.P17964667579387560563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A209019 (A167614 (n + 1)).toNat

end

end A209014.P17964667579387560563

/-!
# A209015: Number of nX4 0..3 arrays with no element equal the average of immediate neighbors vertically above, diagonally above and left, and horizontally left of it.

The programs for A209015, there is no canonical definition to state claims against.
-/

/-! ## A209015.P12906977296056124583

`A209019(A141214(n)+7)`
-/

namespace A209015.P12906977296056124583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209019 (A141214 n + 7).toNat

end

end A209015.P12906977296056124583

/-! ## A209015.P16811773553533680833

`A209019(A167614(n+2)+1)`
-/

namespace A209015.P16811773553533680833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209019 (A167614 (n + 2) + 1).toNat

end

end A209015.P16811773553533680833

/-! ## A209015.P1828545693193735185

`A209019(A055998(n+2))`
-/

namespace A209015.P1828545693193735185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209019 (A055998 (n + 2)).toNat

end

end A209015.P1828545693193735185

/-! ## A209015.P12866843254162498198

`A209019(A155212(n)+5)`
-/

namespace A209015.P12866843254162498198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209019 (A155212 n + 5).toNat

end

end A209015.P12866843254162498198

/-! ## A209015.P8896365642504609014

`A209019(Δ[A034857(n+1)])`
-/

namespace A209015.P8896365642504609014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209019 (f1 (n + 1) - f1 n).toNat

end

end A209015.P8896365642504609014

/-!
# A209016: Number of nX5 0..3 arrays with no element equal the average of immediate neighbors vertically above, diagonally above and left, and horizontally left of it.

The programs for A209016, there is no canonical definition to state claims against.
-/

/-! ## A209016.P13259930692068844731

`A209019(A374005(n+1))`
-/

namespace A209016.P13259930692068844731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209019 (A374005 (n + 1)).toNat

end

end A209016.P13259930692068844731

/-! ## A209016.P18446331780253290388

`A209019(eq[5, A239144(n)])`
-/

namespace A209016.P18446331780253290388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209019 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209016.P18446331780253290388

/-! ## A209016.P11748842107128427904

`A209019(Δ[A023545(n+1)])`
-/

namespace A209016.P11748842107128427904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209019 (f1 (n + 1) - f1 n).toNat

end

end A209016.P11748842107128427904

/-! ## A209016.P12012083721644439873

`A209019(eq[8, A057728(n+1)])`
-/

namespace A209016.P12012083721644439873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209019 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209016.P12012083721644439873

/-! ## A209016.P993169103655022994

`A209019(Δ[A034857(n+2)]-1)`
-/

namespace A209016.P993169103655022994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209019 (f1 (n + 1) - f1 n - 1).toNat

end

end A209016.P993169103655022994

/-!
# A209018: 

The programs for A209018, there is no canonical definition to state claims against.
-/

/-! ## A209018.P1169855126705561064

`A209019(eq[6, A193592(n)])`
-/

namespace A209018.P1169855126705561064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209019 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209018.P1169855126705561064

/-!
# A209019: T(n,k)=Number of nXk 0..3 arrays with no element equal the average of immediate neighbors vertically above, diagonally above and left, and horizontally left of it.

The programs for A209019, there is no canonical definition to state claims against.
-/

/-! ## A209019.P8294673139884895282

`A294200(A184284(n+1))-1`
-/

namespace A209019.P8294673139884895282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294200 (A184284 (n + 1)).toNat - 1

end

end A209019.P8294673139884895282

/-! ## A209019.P6372341393148389245

`A202636(n+1)-A065199(A022173(n))`
-/

namespace A209019.P6372341393148389245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202636 (n + 1) - A065199 (A022173 n).toNat

end

end A209019.P6372341393148389245

/-! ## A209019.P2321263843418348418

`xor(A136522(n), A294200(A184284(n+1)))`
-/

namespace A209019.P2321263843418348418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A136522 n) (A294200 (A184284 (n + 1)).toNat)

end

end A209019.P2321263843418348418

/-!
# A209021: Number of n X 2 1..5 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209021, there is no canonical definition to state claims against.
-/

/-! ## A209021.P17064473363206748805

`A209023(∑[n+1]+2)`
-/

namespace A209021.P17064473363206748805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209023 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A209021.P17064473363206748805

/-! ## A209021.P9899765862186456047

`record[A209023(n+3)/A121576(n)]`
-/

namespace A209021.P9899765862186456047
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209023 (n + 3) : ℚ) / (A121576 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209021.P9899765862186456047

/-! ## A209021.P15946954715465861934

`record[root(A209023(n+2), A074909(n))]`
-/

namespace A209021.P15946954715465861934
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A209023 (n + 2) : ℝ) ^ (1 / (A074909 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209021.P15946954715465861934

/-!
# A209022: Number of nX3 1..5 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209022, there is no canonical definition to state claims against.
-/

/-! ## A209022.P1197828077760432395

`A209023(∑[n+2]+4)`
-/

namespace A209022.P1197828077760432395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209023 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A209022.P1197828077760432395

/-!
# A209023: T(n,k)=Number of nXk 1..5 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209023, there is no canonical definition to state claims against.
-/

/-! ## A209023.P4565712569457312212

`A209058(A132263(n+1))`
-/

namespace A209023.P4565712569457312212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209058 (A132263 (n + 1)).toNat

end

end A209023.P4565712569457312212

/-! ## A209023.P12601849994439204981

`A209058(∑[∑[A151722(n)]])`
-/

namespace A209023.P12601849994439204981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151722 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209058 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A209023.P12601849994439204981

/-! ## A209023.P4872871989736295619

`A209215(∑[∑[A151722(n)]])`
-/

namespace A209023.P4872871989736295619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151722 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209215 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A209023.P4872871989736295619

/-! ## A209023.P16089545991165559781

`A209058(n+1)%A209067(n+1)`
-/

namespace A209023.P16089545991165559781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209058 (n + 1)) (A209067 (n + 1))

end

end A209023.P16089545991165559781

/-! ## A209023.P3445665992281760382

`A209215(n+1)%A179151(n+2)`
-/

namespace A209023.P3445665992281760382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209215 (n + 1)) (A179151 (n + 2))

end

end A209023.P3445665992281760382

/-!
# A209024: Number of n-bead necklaces labeled with numbers -n..n allowing reversal, with sum zero and first differences in -n..n.

The programs for A209024, there is no canonical definition to state claims against.
-/

/-! ## A209024.P6646924589810787710

`A209032(∑[4*n]+1)`
-/

namespace A209024.P6646924589810787710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209024.P6646924589810787710

/-! ## A209024.P14011772398053843247

`record[A209032(∑[A266722(n)])]`
-/

namespace A209024.P14011772398053843247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266722 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209024.P14011772398053843247

/-! ## A209024.P7438981445466472255

`record[A209032(∑[A266981(n)])]`
-/

namespace A209024.P7438981445466472255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209024.P7438981445466472255

/-! ## A209024.P2603991021357676830

`and(-1, A209032(A001844(n)))`
-/

namespace A209024.P2603991021357676830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A209032 (A001844 n).toNat)

end

end A209024.P2603991021357676830

/-! ## A209024.P13352112564776060523

`record[A209032(A330613(n+1))]`
-/

namespace A209024.P13352112564776060523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209024.P13352112564776060523

/-!
# A209025: Number of n-bead necklaces labeled with numbers -1..1 allowing reversal, with sum zero and first differences in -1..1.

The programs for A209025, there is no canonical definition to state claims against.
-/

/-! ## A209025.P3018825876698126476

`A209032(∑[n+1])`
-/

namespace A209025.P3018825876698126476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A209025.P3018825876698126476

/-! ## A209025.P17888129794390928150

`round(sqrt(A209032(C(n+2, 2))²+1))`
-/

namespace A209025.P17888129794390928150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A209032 (Nat.choose (n + 2) 2) ^ 2 + 1 : ℝ))

end

end A209025.P17888129794390928150

/-! ## A209025.P2525525950910276182

`A209032(A000217(n+1))%A022025(n)`
-/

namespace A209025.P2525525950910276182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209032 (A000217 (n + 1)).toNat) (A022025 n)

end

end A209025.P2525525950910276182

/-! ## A209025.P10766596929570040504

`A033999(2*(n+1))*A209032(A000217(n+1))`
-/

namespace A209025.P10766596929570040504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * (n + 1)) * A209032 (A000217 (n + 1)).toNat

end

end A209025.P10766596929570040504

/-! ## A209025.P6320072912089907722

`A209032(A000217(n+1))+A063524(3*n+4)`
-/

namespace A209025.P6320072912089907722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (A000217 (n + 1)).toNat + A063524 (3 * n + 4)

end

end A209025.P6320072912089907722

/-!
# A209026: Number of n-bead necklaces labeled with numbers -2..2 allowing reversal, with sum zero and first differences in -2..2.

The programs for A209026, there is no canonical definition to state claims against.
-/

/-! ## A209026.P7282915567673479600

`A209032(∑[n+2])`
-/

namespace A209026.P7282915567673479600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A209026.P7282915567673479600

/-! ## A209026.P6618311979575011733

`A209032(A000096(n+1))+char[17]`
-/

namespace A209026.P6618311979575011733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A209026.P6618311979575011733

/-! ## A209026.P17740341531745490655

`A209032(A000096(n+1))%A000108(n+2)`
-/

namespace A209026.P17740341531745490655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209032 (A000096 (n + 1)).toNat) (A000108 (n + 2))

end

end A209026.P17740341531745490655

/-! ## A209026.P5345396413844681530

`A007318(C(2, n))*A209032(A000096(n+1))`
-/

namespace A209026.P5345396413844681530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A209032 (A000096 (n + 1)).toNat

end

end A209026.P5345396413844681530

/-! ## A209026.P13118007358093674250

`A000041(C(2, n+2))*A209032(A000096(n+1))`
-/

namespace A209026.P13118007358093674250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A209032 (A000096 (n + 1)).toNat

end

end A209026.P13118007358093674250

/-!
# A209027: Number of n-bead necklaces labeled with numbers -3..3 allowing reversal, with sum zero and first differences in -3..3.

The programs for A209027, there is no canonical definition to state claims against.
-/

/-! ## A209027.P492121060327065948

`A209032(∑[n+3]+1)`
-/

namespace A209027.P492121060327065948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209027.P492121060327065948

/-! ## A209027.P14555244532423894721

`record[A209032(A347633(n+1))]`
-/

namespace A209027.P14555244532423894721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209027.P14555244532423894721

/-! ## A209027.P13824065139701460413

`record[A209032(eq[1, A004197(n)])]`
-/

namespace A209027.P13824065139701460413
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209027.P13824065139701460413

/-! ## A209027.P11844247979484348117

`A209032(A052905(n)+3)+char[18]`
-/

namespace A209027.P11844247979484348117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (A052905 n + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A209027.P11844247979484348117

/-! ## A209027.P16288505602045230437

`record[A010054(n+3)*A209032(n+1)]`
-/

namespace A209027.P16288505602045230437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A209032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209027.P16288505602045230437

/-!
# A209028: Number of n-bead necklaces labeled with numbers -4..4 allowing reversal, with sum zero and first differences in -4..4.

The programs for A209028, there is no canonical definition to state claims against.
-/

/-! ## A209028.P14109147088961216882

`A209032(∑[round(acot(n)+n)+4])`
-/

namespace A209028.P14109147088961216882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A209028.P14109147088961216882

/-! ## A209028.P11398918706683690399

`A209032(C(n+4, 2)+n+1)`
-/

namespace A209028.P11398918706683690399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (Nat.choose (n + 4) 2 + (n + 1))

end

end A209028.P11398918706683690399

/-! ## A209028.P16227041430222574945

`A209032(A141214(n+1))`
-/

namespace A209028.P16227041430222574945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (A141214 (n + 1)).toNat

end

end A209028.P16227041430222574945

/-! ## A209028.P7739917314599626830

`A209032(A055998(n+2))`
-/

namespace A209028.P7739917314599626830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (A055998 (n + 2)).toNat

end

end A209028.P7739917314599626830

/-! ## A209028.P13892563420481544820

`A209032(A155212(n)+5)`
-/

namespace A209028.P13892563420481544820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (A155212 n + 5).toNat

end

end A209028.P13892563420481544820

/-!
# A209029: Number of n-bead necklaces labeled with numbers -5..5 allowing reversal, with sum zero and first differences in -5..5.

The programs for A209029, there is no canonical definition to state claims against.
-/

/-! ## A209029.P6521531060729719839

`A209032(Δ[A264443(n)])`
-/

namespace A209029.P6521531060729719839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (f1 (n + 1) - f1 n).toNat

end

end A209029.P6521531060729719839

/-! ## A209029.P1856387541863798011

`A209032(A046691(n+3))`
-/

namespace A209029.P1856387541863798011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (A046691 (n + 3)).toNat

end

end A209029.P1856387541863798011

/-! ## A209029.P7426457744397391453

`A209032(A056115(n)+11)`
-/

namespace A209029.P7426457744397391453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (A056115 n + 11).toNat

end

end A209029.P7426457744397391453

/-! ## A209029.P1290991884141613050

`A209032(eq[2, A092921(n)])`
-/

namespace A209029.P1290991884141613050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209029.P1290991884141613050

/-! ## A209029.P11557079779217156578

`A209032(eq[3, A152157(n)])`
-/

namespace A209029.P11557079779217156578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209029.P11557079779217156578

/-!
# A209030: Number of n-bead necklaces labeled with numbers -6..6 allowing reversal, with sum zero and first differences in -6..6.

The programs for A209030, there is no canonical definition to state claims against.
-/

/-! ## A209030.P13541901326727859438

`A209032(A052905(n+3))`
-/

namespace A209030.P13541901326727859438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (A052905 (n + 3)).toNat

end

end A209030.P13541901326727859438

/-! ## A209030.P15126448202539019140

`A209032(eq[3, A219347(n)])`
-/

namespace A209030.P15126448202539019140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209030.P15126448202539019140

/-! ## A209030.P15123014585944692263

`A209032(eq[5, A152157(n)])`
-/

namespace A209030.P15123014585944692263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209030.P15123014585944692263

/-! ## A209030.P9484669057257308416

`A209032(eq[5, A193592(n)])`
-/

namespace A209030.P9484669057257308416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209030.P9484669057257308416

/-! ## A209030.P12120057549613714735

`A209032(eq[8, A258709(n)])`
-/

namespace A209030.P12120057549613714735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209030.P12120057549613714735

/-!
# A209031: Number of n-bead necklaces labeled with numbers -7..7 allowing reversal, with sum zero and first differences in -7..7.

The programs for A209031, there is no canonical definition to state claims against.
-/

/-! ## A209031.P4743693532232402510

`A209032(A055999(n+4))`
-/

namespace A209031.P4743693532232402510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (A055999 (n + 4)).toNat

end

end A209031.P4743693532232402510

/-! ## A209031.P8178927884406164092

`A209032(A056121(n)+22)`
-/

namespace A209031.P8178927884406164092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (A056121 n + 22).toNat

end

end A209031.P8178927884406164092

/-! ## A209031.P14418332714969699175

`A209032(eq[4, A219347(n)])`
-/

namespace A209031.P14418332714969699175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209031.P14418332714969699175

/-! ## A209031.P2934562374179532342

`A209032(eq[5, A332954(n)])`
-/

namespace A209031.P2934562374179532342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209031.P2934562374179532342

/-! ## A209031.P13599579153604500158

`A209032(eq[6, A193592(n)])`
-/

namespace A209031.P13599579153604500158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209031.P13599579153604500158

/-!
# A209032: T(n,k) is the number of n-bead necklaces labeled with numbers -k..k allowing reversal, with sum zero and first differences in -k..k.

The programs for A209032, there is no canonical definition to state claims against.
-/

/-! ## A209032.P1965816571323951102

`A225545(A189913(n)%A274300(n))`
-/

namespace A209032.P1965816571323951102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225545 (Int.tmod (A189913 n) (A274300 n)).toNat

end

end A209032.P1965816571323951102

/-! ## A209032.P7136188182526184035

`A225545(A189913(n))%A274301(n)`
-/

namespace A209032.P7136188182526184035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A225545 (A189913 n).toNat) (A274301 n)

end

end A209032.P7136188182526184035

/-! ## A209032.P9264410515293277132

`A225545(A189913(n))*A253641(A295723(n))`
-/

namespace A209032.P9264410515293277132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225545 (A189913 n).toNat * A253641 (A295723 n).toNat

end

end A209032.P9264410515293277132

/-! ## A209032.P18440081369722954134

`A120397(A189913(n))`
-/

namespace A209032.P18440081369722954134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120397 (A189913 n).toNat

end

end A209032.P18440081369722954134

/-! ## A209032.P1375974889220940606

`A001222(A214631(n)+A076450(n+1))`
-/

namespace A209032.P1375974889220940606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A214631 n + A076450 (n + 1)).toNat

end

end A209032.P1375974889220940606

/-!
# A209033: Number of 5-bead necklaces labeled with numbers -n..n allowing reversal, with sum zero and first differences in -n..n.

The programs for A209033, there is no canonical definition to state claims against.
-/

/-! ## A209033.P15144747826458185526

`record[A209032(∑[n]+5)]`
-/

namespace A209033.P15144747826458185526
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (∑ j ∈ Finset.range (n + 1), f2 j + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209033.P15144747826458185526

/-! ## A209033.P446344422422517492

`A209032(∑[n+4]+11)`
-/

namespace A209033.P446344422422517492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A209033.P446344422422517492

/-! ## A209033.P17932243039905374888

`A217149(n+1)+A209032(A167499(n+3))`
-/

namespace A209033.P17932243039905374888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217149 (n + 1) + A209032 (A167499 (n + 3)).toNat

end

end A209033.P17932243039905374888

/-! ## A209033.P12557287981132611851

`A209032(A027379(n+2)+8)%A011545(n)`
-/

namespace A209033.P12557287981132611851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209032 (A027379 (n + 2) + 8).toNat) (A011545 n)

end

end A209033.P12557287981132611851

/-!
# A209034: Number of 6-bead necklaces labeled with numbers -n..n allowing reversal, with sum zero and first differences in -n..n.

The programs for A209034, there is no canonical definition to state claims against.
-/

/-! ## A209034.P4242144035614180917

`A209032(A056115(n)+21)`
-/

namespace A209034.P4242144035614180917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (A056115 n + 21).toNat

end

end A209034.P4242144035614180917

/-! ## A209034.P16792613688529012326

`A209032(A000096(n+4)+7)`
-/

namespace A209034.P16792613688529012326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (A000096 (n + 4) + 7).toNat

end

end A209034.P16792613688529012326

/-! ## A209034.P9501037070758764608

`A209032(A000217(n+5)+6)`
-/

namespace A209034.P9501037070758764608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (A000217 (n + 5) + 6).toNat

end

end A209034.P9501037070758764608

/-! ## A209034.P5819874778613021072

`A209032(eq[7, A131818(n+1)])`
-/

namespace A209034.P5819874778613021072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209034.P5819874778613021072

/-! ## A209034.P6721521671473556094

`A209032(A055999(n+4)-1-n-n)`
-/

namespace A209034.P6721521671473556094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (A055999 (n + 4) - 1 - (n : ℤ) - (n : ℤ)).toNat

end

end A209034.P6721521671473556094

/-!
# A209035: Number of 7-bead necklaces labeled with numbers -n..n allowing reversal, with sum zero and first differences in -n..n.

The programs for A209035, there is no canonical definition to state claims against.
-/

/-! ## A209035.P11699775091250952109

`A209032(eq[11, A066657(n)])`
-/

namespace A209035.P11699775091250952109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209035.P11699775091250952109

/-! ## A209035.P3011576036628648159

`A209032(A077169(n+7)+2)`
-/

namespace A209035.P3011576036628648159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (A077169 (n + 7) + 2).toNat

end

end A209035.P3011576036628648159

/-! ## A209035.P3485466715551837984

`A209032(A133263(n+6)+5)`
-/

namespace A209035.P3485466715551837984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (A133263 (n + 6) + 5).toNat

end

end A209035.P3485466715551837984

/-! ## A209035.P4751263439069833929

`A209032(A000124(n+6)+6)`
-/

namespace A209035.P4751263439069833929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (A000124 (n + 6) + 6).toNat

end

end A209035.P4751263439069833929

/-! ## A209035.P13329261896035436800

`A209032(A000217(n+6)+7)`
-/

namespace A209035.P13329261896035436800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209032 (A000217 (n + 6) + 7).toNat

end

end A209035.P13329261896035436800

/-!
# A209036: Number of permutations of the multiset {1,1,2,2,....,n,n} with exactly two consecutive equal terms.

The programs for A209036, there is no canonical definition to state claims against.
-/

/-! ## A209036.P10575284691713810307

`(n+1)!*A006198(n+1)`
-/

namespace A209036.P10575284691713810307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A006198 (n + 1)

end

end A209036.P10575284691713810307

/-! ## A209036.P10966210429875965510

`∏[A348553(n)]*A006198(n+1)`
-/

namespace A209036.P10966210429875965510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A006198 (n + 1)

end

end A209036.P10966210429875965510

/-! ## A209036.P6052089535854382661

`A000142(n+1)*A006198(n+1)`
-/

namespace A209036.P6052089535854382661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A006198 (n + 1)

end

end A209036.P6052089535854382661

/-! ## A209036.P13407063875760753041

`∏[A000027(n+1)]*A006198(n+1)`
-/

namespace A209036.P13407063875760753041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A006198 (n + 1)

end

end A209036.P13407063875760753041

/-! ## A209036.P14753025156907791995

`∏[A043320(n+1)]*A006198(n+1)`
-/

namespace A209036.P14753025156907791995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A006198 (n + 1)

end

end A209036.P14753025156907791995

/-!
# A209040: Number of n X n 0..3 arrays with no element equal the average of immediate neighbors vertically above and horizontally left of it.

The programs for A209040, there is no canonical definition to state claims against.
-/

/-! ## A209040.P12221127471639344121

`A209047((n+1)²+n²)`
-/

namespace A209040.P12221127471639344121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209047 ((n + 1) ^ 2 + n ^ 2)

end

end A209040.P12221127471639344121

/-!
# A209041: Number of n X 2 0..3 arrays with no element equal to the average of its immediate neighbors vertically above and horizontally left.

The programs for A209041, there is no canonical definition to state claims against.
-/

/-! ## A209041.P177351236870176175

`A209047(∑[n+1]+2)`
-/

namespace A209041.P177351236870176175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209047 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A209041.P177351236870176175

/-! ## A209041.P3898701527238973312

`record[gcd(A209047(n+2), A319047(n))]`
-/

namespace A209041.P3898701527238973312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A209047 (n + 2)) (A319047 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209041.P3898701527238973312

/-! ## A209041.P8303233982567946119

`lcm(2, A209047(A027379(n)+2))`
-/

namespace A209041.P8303233982567946119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A209047 (A027379 n + 2).toNat)

end

end A209041.P8303233982567946119

/-! ## A209041.P13770252771290376331

`record[A209047(Δ[A003453(n+5)])]`
-/

namespace A209041.P13770252771290376331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209047 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209041.P13770252771290376331

/-! ## A209041.P1086702226519228256

`record[A209047(A000096(val(n+1, 2)+1))]`
-/

namespace A209041.P1086702226519228256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209047 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209041.P1086702226519228256

/-!
# A209042: Number of n X 3 0..3 arrays with no element equal the average of immediate neighbors vertically above and horizontally left of it.

The programs for A209042, there is no canonical definition to state claims against.
-/

/-! ## A209042.P5093971582147873717

`A209047(∑[n+2]+4)`
-/

namespace A209042.P5093971582147873717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209047 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A209042.P5093971582147873717

/-! ## A209042.P17570836006257665389

`lcm(2, A209047(A167614(n+1)))`
-/

namespace A209042.P17570836006257665389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A209047 (A167614 (n + 1)).toNat)

end

end A209042.P17570836006257665389

/-! ## A209042.P8920305654723813652

`A209047(A167614(n+1))+A025444(n)`
-/

namespace A209042.P8920305654723813652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209047 (A167614 (n + 1)).toNat + A025444 n

end

end A209042.P8920305654723813652

/-! ## A209042.P10915739654354512221

`A209047(A167614(n+1))+A185284(n)`
-/

namespace A209042.P10915739654354512221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209047 (A167614 (n + 1)).toNat + A185284 n

end

end A209042.P10915739654354512221

/-! ## A209042.P3342889308188953144

`A209047(A167614(n+1))+A122180(n+1)`
-/

namespace A209042.P3342889308188953144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209047 (A167614 (n + 1)).toNat + A122180 (n + 1)

end

end A209042.P3342889308188953144

/-!
# A209043: Number of nX4 0..3 arrays with no element equal the average of immediate neighbors vertically above and horizontally left of it.

The programs for A209043, there is no canonical definition to state claims against.
-/

/-! ## A209043.P2831325375204528210

`A209047(A374004(n+1))`
-/

namespace A209043.P2831325375204528210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209047 (A374004 (n + 1)).toNat

end

end A209043.P2831325375204528210

/-! ## A209043.P8651711321936001132

`A209047(A141214(n)+7)`
-/

namespace A209043.P8651711321936001132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209047 (A141214 n + 7).toNat

end

end A209043.P8651711321936001132

/-! ## A209043.P10853004908763943517

`A209047(Δ[A005586(n)]+5)`
-/

namespace A209043.P10853004908763943517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209047 (f1 (n + 1) - f1 n + 5).toNat

end

end A209043.P10853004908763943517

/-! ## A209043.P16761139577097435297

`A209047(A167614(n+2)+1)`
-/

namespace A209043.P16761139577097435297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209047 (A167614 (n + 2) + 1).toNat

end

end A209043.P16761139577097435297

/-! ## A209043.P12522113756176426071

`lcm(2, A209047(A027379(n+1)+7))`
-/

namespace A209043.P12522113756176426071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A209047 (A027379 (n + 1) + 7).toNat)

end

end A209043.P12522113756176426071

/-!
# A209044: Number of nX5 0..3 arrays with no element equal the average of immediate neighbors vertically above and horizontally left of it.

The programs for A209044, there is no canonical definition to state claims against.
-/

/-! ## A209044.P3112823205072816363

`A209047(A374005(n+1))`
-/

namespace A209044.P3112823205072816363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209047 (A374005 (n + 1)).toNat

end

end A209044.P3112823205072816363

/-! ## A209044.P6036330769411480996

`A209047(A000217(n+4)+5)`
-/

namespace A209044.P6036330769411480996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209047 (A000217 (n + 4) + 5).toNat

end

end A209044.P6036330769411480996

/-! ## A209044.P17712511756218108729

`A209047(eq[4, A193592(n)])`
-/

namespace A209044.P17712511756218108729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209044.P17712511756218108729

/-!
# A209045: Number of nX6 0..3 arrays with no element equal the average of immediate neighbors vertically above and horizontally left of it.

The programs for A209045, there is no canonical definition to state claims against.
-/

/-! ## A209045.P13251725959586480859

`A209047(A374007(n+1))`
-/

namespace A209045.P13251725959586480859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209047 (A374007 (n + 1)).toNat

end

end A209045.P13251725959586480859

/-! ## A209045.P6645214865959829657

`A209047(A056119(n)+16)`
-/

namespace A209045.P6645214865959829657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209047 (A056119 n + 16).toNat

end

end A209045.P6645214865959829657

/-! ## A209045.P8019411616292365317

`A209047(eq[5, A193592(n)])`
-/

namespace A209045.P8019411616292365317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209045.P8019411616292365317

/-!
# A209046: 

The programs for A209046, there is no canonical definition to state claims against.
-/

/-! ## A209046.P11224651806443291460

`A209047(eq[6, A193592(n)])`
-/

namespace A209046.P11224651806443291460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209047 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209046.P11224651806443291460

/-!
# A209047: T(n,k)=Number of nXk 0..3 arrays with no element equal the average of immediate neighbors vertically above and horizontally left of it.

The programs for A209047, there is no canonical definition to state claims against.
-/

/-! ## A209047.P4795292527803063195

`A256139(A239340(n+1))`
-/

namespace A209047.P4795292527803063195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256139 (A239340 (n + 1)).toNat

end

end A209047.P4795292527803063195

/-! ## A209047.P13013791032716382780

`lcm(4, A089854(A257623(n)))`
-/

namespace A209047.P13013791032716382780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A089854 (A257623 n).toNat)

end

end A209047.P13013791032716382780

/-! ## A209047.P2088013276322970867

`A220520(A189161(n+1))+1`
-/

namespace A209047.P2088013276322970867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220520 (A189161 (n + 1)).toNat + 1

end

end A209047.P2088013276322970867

/-!
# A209048: Indices of the pentagonal numbers listed in A209049.

The programs for A209048, there is no canonical definition to state claims against.
-/

/-! ## A209048.P13275859711948369822

`A083277(A209049(n))`
-/

namespace A209048.P13275859711948369822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083277 (A209049 n).toNat

end

end A209048.P13275859711948369822

/-!
# A209049: Smallest pentagonal number with n prime factors (counted with multiplicity).

The programs for A209049, there is no canonical definition to state claims against.
-/

/-! ## A209049.P9954395465008183435

`A000326(A209048(n))`
-/

namespace A209049.P9954395465008183435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A209048 n).toNat

end

end A209049.P9954395465008183435

/-!
# A209051: Number of nX1 0..6 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209051, there is no canonical definition to state claims against.
-/

/-! ## A209051.P5971914309469672398

`A209054(∑[n]+1)`
-/

namespace A209051.P5971914309469672398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209054 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209051.P5971914309469672398

/-! ## A209051.P11198864192330195663

`record[A209054(A114091(n+1))]`
-/

namespace A209051.P11198864192330195663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209054 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209051.P11198864192330195663

/-! ## A209051.P15922308765941238343

`A209054(A000124(n))+char[8]`
-/

namespace A209051.P15922308765941238343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209054 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A209051.P15922308765941238343

/-! ## A209051.P10349844831519774984

`record[A209054(Δ[A053436(n+1)])]`
-/

namespace A209051.P10349844831519774984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053436 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209054 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209051.P10349844831519774984

/-!
# A209052: Number of nX2 0..6 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209052, there is no canonical definition to state claims against.
-/

/-! ## A209052.P4835215245272935866

`A209054(∑[n+1]+2)`
-/

namespace A209052.P4835215245272935866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209054 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A209052.P4835215245272935866

/-! ## A209052.P5372858947137165461

`record[A209054(A114091(n+1)+1)]`
-/

namespace A209052.P5372858947137165461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209054 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209052.P5372858947137165461

/-! ## A209052.P7444855508540137739

`record[A209054(n+3)/A038255(n)]`
-/

namespace A209052.P7444855508540137739
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209054 (n + 3) : ℚ) / (A038255 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209052.P7444855508540137739

/-!
# A209053: Number of nX3 0..6 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209053, there is no canonical definition to state claims against.
-/

/-! ## A209053.P7916526039659101807

`A209054(∑[n+3]+1)`
-/

namespace A209053.P7916526039659101807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209054 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209053.P7916526039659101807

/-!
# A209054: T(n,k)=Number of nXk 0..6 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209054, there is no canonical definition to state claims against.
-/

/-! ## A209054.P17728897873302197536

`A209218(∑[char[∑[n]]]²-n)`
-/

namespace A209054.P17728897873302197536
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209218 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A209054.P17728897873302197536

/-! ## A209054.P11637778567166664480

`A209218(n+1)%∑[A209218(n+3)]`
-/

namespace A209054.P11637778567166664480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209218 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209218 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A209054.P11637778567166664480

/-! ## A209054.P2953426154152337537

`A292274(2^floor(n/2))+A209218(n+1)`
-/

namespace A209054.P2953426154152337537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292274 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat + A209218 (n + 1)

end

end A209054.P2953426154152337537

/-! ## A209054.P4378123499674257011

`A209218(n+1)^A007733(2^floor(n/2))`
-/

namespace A209054.P4378123499674257011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209218 (n + 1) : ℚ) ^ (A007733 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat : ℤ)

end

end A209054.P4378123499674257011

/-! ## A209054.P17303784856239088258

`A209218(n+1)+A000007(A098151(n))`
-/

namespace A209054.P17303784856239088258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209218 (n + 1) + A000007 (A098151 n).toNat

end

end A209054.P17303784856239088258

/-!
# A209056: Number of nX2 1..6 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209056, there is no canonical definition to state claims against.
-/

/-! ## A209056.P7021401655623052434

`A209058(∑[n+1]+2)`
-/

namespace A209056.P7021401655623052434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209058 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A209056.P7021401655623052434

/-! ## A209056.P16553260616544381095

`record[A209058(record[A162514(n)])]`
-/

namespace A209056.P16553260616544381095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162514 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209058 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209056.P16553260616544381095

/-! ## A209056.P14571207586080598198

`record[A209058(A210489(2*(n+1)))]`
-/

namespace A209056.P14571207586080598198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209058 (A210489 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209056.P14571207586080598198

/-!
# A209057: Number of nX3 1..6 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209057, there is no canonical definition to state claims against.
-/

/-! ## A209057.P9158292691172123024

`A209058(∑[n+2]+4)`
-/

namespace A209057.P9158292691172123024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209058 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A209057.P9158292691172123024

/-!
# A209058: T(n,k)=Number of nXk 1..6 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209058, there is no canonical definition to state claims against.
-/

/-! ## A209058.P16868344520838172753

`A209215(∑[char[∑[n]]]²-n)`
-/

namespace A209058.P16868344520838172753
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209215 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A209058.P16868344520838172753

/-! ## A209058.P15896782089519205996

`A209215(n+1)^A185255(n+2)!`
-/

namespace A209058.P15896782089519205996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209215 (n + 1) ^ Nat.factorial (A185255 (n + 2)).toNat

end

end A209058.P15896782089519205996

/-! ## A209058.P108255908087446110

`A296364(2^floor(n/2))+A209215(n+1)`
-/

namespace A209058.P108255908087446110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296364 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat + A209215 (n + 1)

end

end A209058.P108255908087446110

/-! ## A209058.P11231284995039633731

`A057427(2^floor(n/2))*A209215(n+1)`
-/

namespace A209058.P11231284995039633731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat * A209215 (n + 1)

end

end A209058.P11231284995039633731

/-! ## A209058.P16948709760312776948

`A209215(n+1)+A091921(A016116(n))`
-/

namespace A209058.P16948709760312776948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209215 (n + 1) + A091921 (A016116 n).toNat

end

end A209058.P16948709760312776948

/-!
# A209061: Exponentially squarefree numbers.

The programs for A209061, the canonical program `A209061.P16956751986298849818` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209061 has offset 1).

The definition of A209061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9560 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209061.P1138883192821169578

`eq[1, A072411(A072411(n+1))]+1`
-/

namespace A209061.P1138883192821169578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (A072411 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A209061.P1138883192821169578

namespace A209061

/-- `eq[1, A072411(A072411(n+1))]+1` -/
def P1138883192821169578.Spec : Prop :=
  ∀ n, (P1138883192821169578.a n : ℤ) = A209061 (n + 1)

end A209061

/-! ## A209061.P13201459063680066439

`record[A338782(n+1)]`
-/

namespace A209061.P13201459063680066439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209061.P13201459063680066439

namespace A209061

/-- `record[A338782(n+1)]` -/
def P13201459063680066439.Spec : Prop :=
  ∀ n, P13201459063680066439.a n = A209061 (n + 1)

end A209061

/-! ## A209061.P9641507102425613342

`record[A365683(n+1)]`
-/

namespace A209061.P9641507102425613342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209061.P9641507102425613342

namespace A209061

/-- `record[A365683(n+1)]` -/
def P9641507102425613342.Spec : Prop :=
  ∀ n, P9641507102425613342.a n = A209061 (n + 1)

end A209061

/-! ## A209061.P11433413899837549622

`record[A383761(n+1)]`
-/

namespace A209061.P11433413899837549622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209061.P11433413899837549622

namespace A209061

/-- `record[A383761(n+1)]` -/
def P11433413899837549622.Spec : Prop :=
  ∀ n, P11433413899837549622.a n = A209061 (n + 1)

end A209061

/-! ## A209061.P14600458571763302763

`record[A383764(n+1)]`
-/

namespace A209061.P14600458571763302763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209061.P14600458571763302763

namespace A209061

/-- `record[A383764(n+1)]` -/
def P14600458571763302763.Spec : Prop :=
  ∀ n, P14600458571763302763.a n = A209061 (n + 1)

end A209061

/-! ## A209061.P12602209034661752747

`lt[A185102(n+1), 3]+1`
-/

namespace A209061.P12602209034661752747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185102 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A209061.P12602209034661752747

namespace A209061

/-- `lt[A185102(n+1), 3]+1` -/
def P12602209034661752747.Spec : Prop :=
  ∀ n, (P12602209034661752747.a n : ℤ) = A209061 (n + 1)

end A209061

/-! ## A209061.P14526251403866568749

`eq[1, A166234(n+1)²]+1`
-/

namespace A209061.P14526251403866568749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166234 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A209061.P14526251403866568749

namespace A209061

/-- `eq[1, A166234(n+1)²]+1` -/
def P14526251403866568749.Spec : Prop :=
  ∀ n, (P14526251403866568749.a n : ℤ) = A209061 (n + 1)

end A209061

/-! ## A209061.P4431973517504422321

`eq[n, A338782(A028310(n))]`
-/

namespace A209061.P4431973517504422321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338782 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209061.P4431973517504422321

namespace A209061

/-- `eq[n, A338782(A028310(n))]` -/
def P4431973517504422321.Spec : Prop :=
  ∀ n, (P4431973517504422321.a n : ℤ) = A209061 (n + 1)

end A209061

/-! ## A209061.P12850064690813719643

`lt[A004525(n), A338782(n+1)]+1`
-/

namespace A209061.P12850064690813719643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338782 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A209061.P12850064690813719643

namespace A209061

/-- `lt[A004525(n), A338782(n+1)]+1` -/
def P12850064690813719643.Spec : Prop :=
  ∀ n, (P12850064690813719643.a n : ℤ) = A209061 (n + 1)

end A209061

/-! ## A209061.P18393071099157958275

`record[(n+1)/A308993(A308993(n+1))]`
-/

namespace A209061.P18393071099157958275
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A308993 (A308993 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209061.P18393071099157958275

namespace A209061

/-- `record[(n+1)/A308993(A308993(n+1))]` -/
def P18393071099157958275.Spec : Prop :=
  ∀ n, P18393071099157958275.a n = (A209061 (n + 1) : ℚ)

end A209061

/-! ## A209061.P16956751986298849818

`eq[A049419(n+1), A278908(n+1)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A209061

/-- `eq[A049419(n+1), A278908(n+1)]+1` -/
def P16956751986298849818.Spec : Prop :=
  ∀ n, (P16956751986298849818.a n : ℤ) = A209061 (n + 1)

theorem P16956751986298849818.correct : P16956751986298849818.Spec := by
  intro n
  simp only [A209061, Nat.add_sub_cancel]

end A209061

/-!
# A209062: Consider all numbers n_1 = n, n_2, ..., n_k obtained from n by permutations of its digits (n_i could begin with 0 except for n_1). Then a(n) is the number of distinct primes dividing at least one from them.

The programs for A209062, there is no canonical definition to state claims against.
-/

/-! ## A209062.P6565393745204639376

`∑{p}[A061147(n+1), A000001(#)]`
-/

namespace A209062.P6565393745204639376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000001 p

end

end A209062.P6565393745204639376

/-! ## A209062.P18424610685369411471

`∑{p}[A061147(n+1), A001055(#)]`
-/

namespace A209062.P18424610685369411471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001055 p

end

end A209062.P18424610685369411471

/-! ## A209062.P11719569508686351228

`∑{p}[A061147(n+1), A001221(#)]`
-/

namespace A209062.P11719569508686351228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p

end

end A209062.P11719569508686351228

/-! ## A209062.P15790707340562535518

`∑{p}[A061147(n+1), A001222(#)]`
-/

namespace A209062.P15790707340562535518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A209062.P15790707340562535518

/-! ## A209062.P5745964303004579617

`∑{p}[A061147(n+1), A003415(#)]`
-/

namespace A209062.P5745964303004579617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003415 p

end

end A209062.P5745964303004579617

/-! ## A209062.P2330676038045948008

`∑{p}[A061147(n+1), A008480(#)]`
-/

namespace A209062.P2330676038045948008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008480 p

end

end A209062.P2330676038045948008

/-! ## A209062.P12395214213615241878

`∑{p}[A061147(n+1), A014648(#)]`
-/

namespace A209062.P12395214213615241878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A014648 p

end

end A209062.P12395214213615241878

/-! ## A209062.P11973946587358025839

`∑{p}[A061147(n+1), A074206(#)]`
-/

namespace A209062.P11973946587358025839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A074206 p

end

end A209062.P11973946587358025839

/-! ## A209062.P11756296720335033319

`A001222(∏{p}[A061147(n+1), #])`
-/

namespace A209062.P11756296720335033319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A209062.P11756296720335033319

/-! ## A209062.P5420487003154691454

`∑{e}[A061147(n+1), A047726(#)]`
-/

namespace A209062.P5420487003154691454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A047726 (Nat.factorization (f1 n).natAbs p)

end

end A209062.P5420487003154691454

/-! ## A209062.P3773822283715411913

`∑{e}[A061147(n+1), A053632(#)]`
-/

namespace A209062.P3773822283715411913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A053632 (Nat.factorization (f1 n).natAbs p)

end

end A209062.P3773822283715411913

/-! ## A209062.P15067275526054127943

`∑{e}[A061147(n+1), A061901(#)]`
-/

namespace A209062.P15067275526054127943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A061901 (Nat.factorization (f1 n).natAbs p)

end

end A209062.P15067275526054127943

/-! ## A209062.P13537343492974771983

`∑{e}[A061147(n+1), A067032(#)]`
-/

namespace A209062.P13537343492974771983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A067032 (Nat.factorization (f1 n).natAbs p)

end

end A209062.P13537343492974771983

/-! ## A209062.P2104708344973624692

`∑{e}[A061147(n+1), A146284(#)]`
-/

namespace A209062.P2104708344973624692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A146284 (Nat.factorization (f1 n).natAbs p)

end

end A209062.P2104708344973624692

/-! ## A209062.P8446736367644823317

`A001221(A061147(n+1))`
-/

namespace A209062.P8446736367644823317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A061147 (n + 1)).toNat

end

end A209062.P8446736367644823317

/-! ## A209062.P8108290502552155531

`A001221(A062003(n+1))`
-/

namespace A209062.P8108290502552155531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A062003 (n + 1)).toNat

end

end A209062.P8108290502552155531

/-! ## A209062.P12141486585123396477

`A087624(A061205(n+1))`
-/

namespace A209062.P12141486585123396477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (A061205 (n + 1)).toNat

end

end A209062.P12141486585123396477

/-! ## A209062.P1551551174356604778

`∑{p}[A068634(n+1), A334924(#)]`
-/

namespace A209062.P1551551174356604778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A334924 p

end

end A209062.P1551551174356604778

/-! ## A209062.P14675309994650293902

`∑{p}[A068634(n+1), A071028(#²)]`
-/

namespace A209062.P14675309994650293902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A071028 (p ^ 2)

end

end A209062.P14675309994650293902

/-! ## A209062.P15005509453316975763

`∑{p}[A068634(n+1), A087624(#²)]`
-/

namespace A209062.P15005509453316975763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087624 (p ^ 2)

end

end A209062.P15005509453316975763

/-!
# A209063: Let p = A099180(n) be the n-th prime which is greater than its reversal p'; a(n) = number of ways to write p as a multiple of p' +- q where q is a prime < p.

The programs for A209063, there is no canonical definition to state claims against.
-/

/-! ## A209063.P6759605339722008786

`A209915(A000720(A099180(n+1)))`
-/

namespace A209063.P6759605339722008786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209915 (A000720 (A099180 (n + 1)).toNat).toNat

end

end A209063.P6759605339722008786

/-!
# A209064: Numbers k whose divisors, when expressed in binary, have lengths 1 to tau(k).

The programs for A209064, there is no canonical definition to state claims against.
-/

/-! ## A209064.P10198274419764183603

`A135772(A316521(n+1)%A135791(n+1))`
-/

namespace A209064.P10198274419764183603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135772 (Int.tmod (A316521 (n + 1)) (A135791 (n + 1))).toNat

end

end A209064.P10198274419764183603

/-! ## A209064.P15090421891312415108

`∩[A135772(n+1), A232012(n+1)]`
-/

namespace A209064.P15090421891312415108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232012 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209064.P15090421891312415108

/-! ## A209064.P1250717094179523197

`∩[A135772(n+1), A238369(n+1)]`
-/

namespace A209064.P1250717094179523197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209064.P1250717094179523197

/-! ## A209064.P17877865732182057857

`∩[A135772(n+1), A322554(n+1)]`
-/

namespace A209064.P17877865732182057857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209064.P17877865732182057857

/-! ## A209064.P12879345756180832499

`∩[A135772(n+1), A335467(n+1)]`
-/

namespace A209064.P12879345756180832499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209064.P12879345756180832499

/-!
# A209065: Number of n-bead necklaces labeled with numbers -n..n not allowing reversal, with sum zero and avoiding the pattern z z+1 z+2.

The programs for A209065, there is no canonical definition to state claims against.
-/

/-! ## A209065.P12959166030852877095

`A209073(∑[4*n]+1)`
-/

namespace A209065.P12959166030852877095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209065.P12959166030852877095

/-! ## A209065.P9903316748411448553

`and(-1, A209073(n²+(n+1)²))`
-/

namespace A209065.P9903316748411448553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A209073 (n ^ 2 + (n + 1) ^ 2))

end

end A209065.P9903316748411448553

/-! ## A209065.P4592382631993775606

`∏{digits}[n, A209073(A001844(#))]`
-/

namespace A209065.P4592382631993775606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A209073 (A001844 x).toNat).prod

end

end A209065.P4592382631993775606

/-! ## A209065.P18300947418109445484

`record[A209073(A330613(n+1))]`
-/

namespace A209065.P18300947418109445484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209065.P18300947418109445484

/-! ## A209065.P15973593348983873925

`A209073(A001844(n))+char[9]`
-/

namespace A209065.P15973593348983873925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A209065.P15973593348983873925

/-!
# A209066: Number of n-bead necklaces labeled with numbers -1..1 not allowing reversal, with sum zero and avoiding the pattern z z+1 z+2.

The programs for A209066, there is no canonical definition to state claims against.
-/

/-! ## A209066.P11441250235966266303

`A209073(∑[n+1])`
-/

namespace A209066.P11441250235966266303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A209066.P11441250235966266303

/-! ## A209066.P5926698584075319941

`A209073(A000217(n+1))+char[17]`
-/

namespace A209066.P5926698584075319941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (A000217 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A209066.P5926698584075319941

/-! ## A209066.P13268764968047100743

`A209073(C(n+2, 2))%A052937(n)`
-/

namespace A209066.P13268764968047100743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209073 (Nat.choose (n + 2) 2)) (A052937 n)

end

end A209066.P13268764968047100743

/-! ## A209066.P17736200513770532718

`A209073(A025747(n))%A266806(n)`
-/

namespace A209066.P17736200513770532718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209073 (A025747 n).toNat) (A266806 n)

end

end A209066.P17736200513770532718

/-! ## A209066.P12656368992102219768

`A119335(n)*A209073(A000217(n+1))`
-/

namespace A209066.P12656368992102219768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119335 n * A209073 (A000217 (n + 1)).toNat

end

end A209066.P12656368992102219768

/-!
# A209067: Number of n-bead necklaces labeled with numbers -2..2 not allowing reversal, with sum zero and avoiding the pattern z z+1 z+2.

The programs for A209067, there is no canonical definition to state claims against.
-/

/-! ## A209067.P16306248447246466913

`A209073(∑[n+2])`
-/

namespace A209067.P16306248447246466913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A209067.P16306248447246466913

/-! ## A209067.P136857616952518750

`record[A209073(A198455(n+1))]`
-/

namespace A209067.P136857616952518750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209067.P136857616952518750

/-! ## A209067.P3261080333893090159

`record[A209073(eq[1, A053616(n)])]`
-/

namespace A209067.P3261080333893090159
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209067.P3261080333893090159

/-! ## A209067.P8303167539825598114

`record[A209073(eq[2, A336534(n)])]`
-/

namespace A209067.P8303167539825598114
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336534 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209067.P8303167539825598114

/-! ## A209067.P3952617731152480290

`record[A209073(A209268(2*(n+1)))]`
-/

namespace A209067.P3952617731152480290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (A209268 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209067.P3952617731152480290

/-!
# A209068: Number of n-bead necklaces labeled with numbers -3..3 not allowing reversal, with sum zero and avoiding the pattern z z+1 z+2.

The programs for A209068, there is no canonical definition to state claims against.
-/

/-! ## A209068.P8009187603129988990

`A209073(∑[n+3]+1)`
-/

namespace A209068.P8009187603129988990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209068.P8009187603129988990

/-! ## A209068.P13474741262714476252

`record[A209073(A198464(n+1))]`
-/

namespace A209068.P13474741262714476252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209068.P13474741262714476252

/-! ## A209068.P8445861594186909152

`A209073(Δ[A008778(n)])+char[30]`
-/

namespace A209068.P8445861594186909152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A209068.P8445861594186909152

/-! ## A209068.P4676912584138437187

`record[A209073(A198455(n+1)-1)]`
-/

namespace A209068.P4676912584138437187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (A198455 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209068.P4676912584138437187

/-! ## A209068.P7995011895192032142

`A209073(A052905(n)+3)+char[22]`
-/

namespace A209068.P7995011895192032142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (A052905 n + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A209068.P7995011895192032142

/-!
# A209069: Number of n-bead necklaces labeled with numbers -4..4 not allowing reversal, with sum zero and avoiding the pattern z z+1 z+2.

The programs for A209069, there is no canonical definition to state claims against.
-/

/-! ## A209069.P6885163375648067645

`A209073(Δ[n²]+∑[n+2]+4)`
-/

namespace A209069.P6885163375648067645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 4 : ℕ) : ℤ)).toNat

end

end A209069.P6885163375648067645

/-! ## A209069.P10871986648591539537

`or(char[1], A209073(A141214(n+1)))`
-/

namespace A209069.P10871986648591539537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A209073 (A141214 (n + 1)).toNat)

end

end A209069.P10871986648591539537

/-! ## A209069.P623997397408262957

`record[A209073(eq[2, A053616(n+1)])]`
-/

namespace A209069.P623997397408262957
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209069.P623997397408262957

/-! ## A209069.P12767884451607967770

`A209073(A141214(n+1))+A025469(n)`
-/

namespace A209069.P12767884451607967770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (A141214 (n + 1)).toNat + A025469 n

end

end A209069.P12767884451607967770

/-! ## A209069.P271300738802205987

`A209073(A141214(n+1))+A185255(n)`
-/

namespace A209069.P271300738802205987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (A141214 (n + 1)).toNat + A185255 n

end

end A209069.P271300738802205987

/-!
# A209070: Number of n-bead necklaces labeled with numbers -5..5 not allowing reversal, with sum zero and avoiding the pattern z z+1 z+2.

The programs for A209070, there is no canonical definition to state claims against.
-/

/-! ## A209070.P10146904031022695355

`A209073(Δ[A264443(n)])`
-/

namespace A209070.P10146904031022695355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (f1 (n + 1) - f1 n).toNat

end

end A209070.P10146904031022695355

/-! ## A209070.P10228762964006108496

`A209073(A046691(n+3))`
-/

namespace A209070.P10228762964006108496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (A046691 (n + 3)).toNat

end

end A209070.P10228762964006108496

/-! ## A209070.P9168133597280374633

`A209073(A056115(n)+11)`
-/

namespace A209070.P9168133597280374633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (A056115 n + 11).toNat

end

end A209070.P9168133597280374633

/-! ## A209070.P2303768826171758263

`A209073(eq[2, A092921(n)])`
-/

namespace A209070.P2303768826171758263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209070.P2303768826171758263

/-! ## A209070.P3616455608068372301

`A209073(eq[3, A152157(n)])`
-/

namespace A209070.P3616455608068372301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209070.P3616455608068372301

/-!
# A209071: Number of n-bead necklaces labeled with numbers -6..6 not allowing reversal, with sum zero and avoiding the pattern z z+1 z+2.

The programs for A209071, there is no canonical definition to state claims against.
-/

/-! ## A209071.P4324676753251901040

`A209073(A052905(n+3))`
-/

namespace A209071.P4324676753251901040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (A052905 (n + 3)).toNat

end

end A209071.P4324676753251901040

/-! ## A209071.P15098684627245808721

`A209073(A056119(n)+16)`
-/

namespace A209071.P15098684627245808721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (A056119 n + 16).toNat

end

end A209071.P15098684627245808721

/-! ## A209071.P2728236017082543180

`A209073(eq[3, A219347(n)])`
-/

namespace A209071.P2728236017082543180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209071.P2728236017082543180

/-! ## A209071.P8914702065078699616

`A209073(eq[5, A152157(n)])`
-/

namespace A209071.P8914702065078699616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209071.P8914702065078699616

/-! ## A209071.P15531012694349271868

`A209073(eq[5, A193592(n)])`
-/

namespace A209071.P15531012694349271868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209071.P15531012694349271868

/-!
# A209072: Number of n-bead necklaces labeled with numbers -7..7 not allowing reversal, with sum zero and avoiding the pattern z z+1 z+2.

The programs for A209072, there is no canonical definition to state claims against.
-/

/-! ## A209072.P14651022233379847384

`A209073(C(n+7, 2)+n+1)`
-/

namespace A209072.P14651022233379847384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (Nat.choose (n + 7) 2 + (n + 1))

end

end A209072.P14651022233379847384

/-! ## A209072.P1530591728764331047

`A209073(A055999(n+4))`
-/

namespace A209072.P1530591728764331047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (A055999 (n + 4)).toNat

end

end A209072.P1530591728764331047

/-! ## A209072.P15654852781851585816

`A209073(A134227(n+5))`
-/

namespace A209072.P15654852781851585816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (A134227 (n + 5)).toNat

end

end A209072.P15654852781851585816

/-! ## A209072.P1438810491121320690

`A209073(eq[4, A219347(n)])`
-/

namespace A209072.P1438810491121320690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209072.P1438810491121320690

/-! ## A209072.P3018597627109687564

`A209073(eq[6, A193592(n)])`
-/

namespace A209072.P3018597627109687564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209072.P3018597627109687564

/-!
# A209073: T(n,k) = number of n-bead necklaces labeled with numbers -k..k not allowing reversal, with sum zero and avoiding the pattern z z+1 z+2.

The programs for A209073, there is no canonical definition to state claims against.
-/

/-! ## A209073.P9008527467591849636

`A336107(A336096(n+1))+A208945(n+1)`
-/

namespace A209073.P9008527467591849636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336107 (A336096 (n + 1)).toNat + A208945 (n + 1)

end

end A209073.P9008527467591849636

/-! ## A209073.P9679207353092810665

`A208945(n+1)+A018843(A125778(2*n+1))`
-/

namespace A209073.P9679207353092810665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208945 (n + 1) + A018843 (A125778 (2 * n + 1)).toNat

end

end A209073.P9679207353092810665

/-!
# A209074: Number of 5-bead necklaces labeled with numbers -n..n not allowing reversal, with sum zero and avoiding the pattern z z+1 z+2.

The programs for A209074, there is no canonical definition to state claims against.
-/

/-! ## A209074.P13275179543050817383

`A208947(n+1)+and(2, n+1)`
-/

namespace A209074.P13275179543050817383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208947 (n + 1) + (Nat.land 2 (n + 1) : ℤ)

end

end A209074.P13275179543050817383

/-! ## A209074.P7186964717297371702

`A208947(n+1)+A002378(n)%4`
-/

namespace A209074.P7186964717297371702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208947 (n + 1) + Int.tmod (A002378 n) 4

end

end A209074.P7186964717297371702

/-! ## A209074.P14300828384318081636

`A208947(n+1)+A027689(n)%4`
-/

namespace A209074.P14300828384318081636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208947 (n + 1) + Int.tmod (A027689 n) 4

end

end A209074.P14300828384318081636

/-! ## A209074.P10138253825691972591

`(A209117(n+1)+A208599(n+1))/2`
-/

namespace A209074.P10138253825691972591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209117 (n + 1) + A208599 (n + 1) : ℚ) / 2

end

end A209074.P10138253825691972591

/-! ## A209074.P5428696896458604901

`(A209117(n+1)+ceil(A083669(n+1)/5))/2`
-/

namespace A209074.P5428696896458604901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209117 (n + 1) + ⌈(A083669 (n + 1) : ℚ) / 5⌉ : ℚ) / 2

end

end A209074.P5428696896458604901

/-! ## A209074.P107471626969592571

`A208947(n+1)+A010673(A110654(n))`
-/

namespace A209074.P107471626969592571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208947 (n + 1) + A010673 (A110654 n).toNat

end

end A209074.P107471626969592571

/-! ## A209074.P14019312358782819368

`A208947(n+1)+A010673(A003188(n))`
-/

namespace A209074.P14019312358782819368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208947 (n + 1) + A010673 (A003188 n).toNat

end

end A209074.P14019312358782819368

/-! ## A209074.P17147323041500831878

`A208947(n+1)+A199398(A027689(n))`
-/

namespace A209074.P17147323041500831878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208947 (n + 1) + A199398 (A027689 n).toNat

end

end A209074.P17147323041500831878

/-!
# A209075: Number of 6-bead necklaces labeled with numbers -n..n not allowing reversal, with sum zero and avoiding the pattern z z+1 z+2.

The programs for A209075, there is no canonical definition to state claims against.
-/

/-! ## A209075.P4835928555589858989

`A208948(n+1)-abs(1-n)+n`
-/

namespace A209075.P4835928555589858989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208948 (n + 1) - |1 - (n : ℤ)| + (n : ℤ)

end

end A209075.P4835928555589858989

/-! ## A209075.P8295706588816696938

`A208948(n+1)+A158388(n)`
-/

namespace A209075.P8295706588816696938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208948 (n + 1) + A158388 n

end

end A209075.P8295706588816696938

/-! ## A209075.P2639068648327534674

`A208948(n+1)+1-A000038(n)`
-/

namespace A209075.P2639068648327534674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208948 (n + 1) + (1 - A000038 n)

end

end A209075.P2639068648327534674

/-! ## A209075.P9286637035496066654

`A208948(n+1)-A153881(n+1)`
-/

namespace A209075.P9286637035496066654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208948 (n + 1) - A153881 (n + 1)

end

end A209075.P9286637035496066654

/-! ## A209075.P201929934299370170

`A208948(n+1)+A014111(C(2, n²))`
-/

namespace A209075.P201929934299370170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208948 (n + 1) + A014111 (Nat.choose 2 (n ^ 2))

end

end A209075.P201929934299370170

/-! ## A209075.P4516575857199902786

`A208948(n+1)+(-1)^A000010(n+2)`
-/

namespace A209075.P4516575857199902786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208948 (n + 1) : ℚ) + (-1 : ℚ) ^ (A000010 (n + 2) : ℤ)

end

end A209075.P4516575857199902786

/-! ## A209075.P5514714169656140088

`A208948(n+1)-A008683(A002233(n+1))`
-/

namespace A209075.P5514714169656140088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208948 (n + 1) - A008683 (A002233 (n + 1)).toNat

end

end A209075.P5514714169656140088

/-! ## A209075.P3361947889620704501

`A208948(n+1)-A008836(A006530(n+1))`
-/

namespace A209075.P3361947889620704501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208948 (n + 1) - A008836 (A006530 (n + 1)).toNat

end

end A209075.P3361947889620704501

/-! ## A209075.P15415257587283775079

`A208948(n+1)-A008836(A020639(n+1))`
-/

namespace A209075.P15415257587283775079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208948 (n + 1) - A008836 (A020639 (n + 1)).toNat

end

end A209075.P15415257587283775079

/-! ## A209075.P13875542025150204059

`A208948(n+1)-A008683(A027746(n+1))`
-/

namespace A209075.P13875542025150204059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208948 (n + 1) - A008683 (A027746 (n + 1)).toNat

end

end A209075.P13875542025150204059

/-! ## A209075.P11508878033123455656

`A208948(n+1)-A008683(A008578(n+1))`
-/

namespace A209075.P11508878033123455656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208948 (n + 1) - A008683 (A008578 (n + 1)).toNat

end

end A209075.P11508878033123455656

/-! ## A209075.P11112114980144736868

`A208948(n+1)-A008683(A006005(n+1))`
-/

namespace A209075.P11112114980144736868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208948 (n + 1) - A008683 (A006005 (n + 1)).toNat

end

end A209075.P11112114980144736868

/-! ## A209075.P5526793079892445739

`A208948(n+1)-A086831(A000040(n+1))`
-/

namespace A209075.P5526793079892445739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208948 (n + 1) - A086831 (A000040 (n + 1)).toNat

end

end A209075.P5526793079892445739

/-! ## A209075.P4288379496389065303

`A208948(n+1)+A008683(2*A006005(n+1))`
-/

namespace A209075.P4288379496389065303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208948 (n + 1) + A008683 (2 * A006005 (n + 1)).toNat

end

end A209075.P4288379496389065303

/-! ## A209075.P14211454197116352993

`A208948(n+1)+A008836(2*A006530(n+1))`
-/

namespace A209075.P14211454197116352993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208948 (n + 1) + A008836 (2 * A006530 (n + 1)).toNat

end

end A209075.P14211454197116352993

/-! ## A209075.P8770433588136179094

`A208948(n+1)+A008836(2*A020639(n+1))`
-/

namespace A209075.P8770433588136179094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208948 (n + 1) + A008836 (2 * A020639 (n + 1)).toNat

end

end A209075.P8770433588136179094

/-! ## A209075.P15248089440196082638

`A208948(n+1)-A260196(2*n)`
-/

namespace A209075.P15248089440196082638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208948 (n + 1) - A260196 (2 * n)

end

end A209075.P15248089440196082638

/-!
# A209076: Number of 7-bead necklaces labeled with numbers -n..n not allowing reversal, with sum zero and avoiding the pattern z z+1 z+2.

The programs for A209076, there is no canonical definition to state claims against.
-/

/-! ## A209076.P6293112650052094147

`A209073(C(n+7, 2)+7)`
-/

namespace A209076.P6293112650052094147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (Nat.choose (n + 7) 2 + 7)

end

end A209076.P6293112650052094147

/-! ## A209076.P17120654090345392498

`A209073(A056119(n)+28)`
-/

namespace A209076.P17120654090345392498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (A056119 n + 28).toNat

end

end A209076.P17120654090345392498

/-! ## A209076.P16375845425264413011

`A209073(eq[11, A066657(n)])`
-/

namespace A209076.P16375845425264413011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209076.P16375845425264413011

/-! ## A209076.P6149202730324085567

`A209073(A167499(n+5)+2)`
-/

namespace A209076.P6149202730324085567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (A167499 (n + 5) + 2).toNat

end

end A209076.P6149202730324085567

/-! ## A209076.P13599539679620688896

`A209073(A000217(n+6)+7)`
-/

namespace A209076.P13599539679620688896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209073 (A000217 (n + 6) + 7).toNat

end

end A209076.P13599539679620688896

/-!
# A209078: Conjectured list of values of n such that the Diophantine equation a^4 + b^4 = n*c^2 has infinitely many solutions with 0 < a < b.

The programs for A209078, there is no canonical definition to state claims against.
-/

/-! ## A209078.P16418845605436009031

`∩[A155561(n+1), A375474(n+1)]`
-/

namespace A209078.P16418845605436009031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209078.P16418845605436009031

/-!
# A209079: Integer part of sigma(m)*phi(m)/m for colossally abundant numbers m.

The programs for A209079, there is no canonical definition to state claims against.
-/

/-! ## A209079.P14631034779376879155

`A097368(A005195(2*n+3))*A336322(n+1)`
-/

namespace A209079.P14631034779376879155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097368 (A005195 (2 * n + 3)).toNat * A336322 (n + 1)

end

end A209079.P14631034779376879155

/-! ## A209079.P9913122953562864001

`A332277(A000040(3*(n+1))-A031235(n+4))`
-/

namespace A209079.P9913122953562864001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332277 (A000040 (3 * (n + 1)) - A031235 (n + 4)).toNat

end

end A209079.P9913122953562864001

/-!
# A209081: Floor(A152170(n)/n^n). Floor of the expected value of the cardinality of the image of a function from [n] to [n].

The programs for A209081, the canonical program `A209081.P15403903494236758463` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209081 has offset 1).

The definition of A209081 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1313 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209081.P15403903494236758463

`floor(n+1-n*(n/(n+1))^n)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A209081

/-- `floor(n+1-n*(n/(n+1))^n)` -/
def P15403903494236758463.Spec : Prop :=
  ∀ n, P15403903494236758463.a n = A209081 (n + 1)

theorem P15403903494236758463.correct : P15403903494236758463.Spec := by
  intro n
  simp only [A209081, Nat.add_sub_cancel]

end A209081

/-! ## A209081.P16908610528156024113

`C(2, n+2)-floor(sqrt(∑[2*n])/e)+n`
-/

namespace A209081.P16908610528156024113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) - ⌊Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.exp 1⌋ + (n : ℤ)

end

end A209081.P16908610528156024113

namespace A209081

/-- `C(2, n+2)-floor(sqrt(∑[2*n])/e)+n` -/
def P16908610528156024113.Spec : Prop :=
  ∀ n, P16908610528156024113.a n = A209081 (n + 1)

end A209081

/-! ## A209081.P16575554659789103341

`A028310(n-floor(sqrt(∑[2*n])/e))`
-/

namespace A209081.P16575554659789103341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) - ⌊Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.exp 1⌋).toNat

end

end A209081.P16575554659789103341

namespace A209081

/-- `A028310(n-floor(sqrt(∑[2*n])/e))` -/
def P16575554659789103341.Spec : Prop :=
  ∀ n, P16575554659789103341.a n = A209081 (n + 1)

end A209081

/-! ## A209081.P321843528997549483

`a(n-1)+1-char[A022852(n)]` with `a(0)=1, a(1)=1`
-/

namespace A209081.P321843528997549483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022852 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + 1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A209081.P321843528997549483

namespace A209081

/-- `a(n-1)+1-char[A022852(n)]` -/
def P321843528997549483.Spec : Prop :=
  ∀ n, P321843528997549483.a n = A209081 (n + 1)

end A209081

/-! ## A209081.P14156935161228890878

`A028310(n)-A062276(n)`
-/

namespace A209081.P14156935161228890878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - A062276 n

end

end A209081.P14156935161228890878

namespace A209081

/-- `A028310(n)-A062276(n)` -/
def P14156935161228890878.Spec : Prop :=
  ∀ n, P14156935161228890878.a n = A209081 (n + 1)

end A209081

/-!
# A209082: Least power separator of the partitions of n.

The programs for A209082, there is no canonical definition to state claims against.
-/

/-! ## A209082.P3113898351749265216

`floor(log(A054219(lt[n, 2*and(n, 2*n)])))`
-/

namespace A209082.P3113898351749265216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A054219 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) : ℝ)⌋

end

end A209082.P3113898351749265216

/-! ## A209082.P6998399790383463346

`ceil(sqrt(A118956(n+1)-A053645(n+1)))`
-/

namespace A209082.P6998399790383463346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A118956 (n + 1) - A053645 (n + 1) : ℝ)⌉

end

end A209082.P6998399790383463346

/-! ## A209082.P6971356043166322199

`∑[and(A080995(n), A100249(n))]`
-/

namespace A209082.P6971356043166322199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A080995 n) (A100249 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209082.P6971356043166322199

/-! ## A209082.P2044338486351676559

`∑[and(A152822(n), A202091(n))]`
-/

namespace A209082.P2044338486351676559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152822 n) (A202091 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209082.P2044338486351676559

/-! ## A209082.P1489344906891515604

`∑[and(A221640(n+1), A221642(3*n+1))]`
-/

namespace A209082.P1489344906891515604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A221640 (n + 1)) (A221642 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209082.P1489344906891515604

/-!
# A209083: Largest number of the form C(n,x) + C(n,y) + C(n,z) where x + y + z = n.

The programs for A209083, there is no canonical definition to state claims against.
-/

/-! ## A209083.P12937809016197463684

`or(A000267(A025192(n)), A141601(n))`
-/

namespace A209083.P12937809016197463684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000267 (A025192 n).toNat) (A141601 n)

end

end A209083.P12937809016197463684

/-!
# A209084: a(n) = 2*a(n-1) + 4*a(n-2) with n>1, a(0)=0, a(1)=4.

The programs for A209084, the canonical program `A209084.P17628721794901898696` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209084 has offset 0).

The definition of A209084 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+4*a(n-2)` (program `A209084.P17628721794901898696`, by `A209084.P17628721794901898696.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A209084.P17628721794901898696

`2*a(n-1)+4*a(n-2)` with `a(0)=0, a(1)=4`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A209084

/-- `2*a(n-1)+4*a(n-2)` -/
def P17628721794901898696.Spec : Prop :=
  ∀ n, (P17628721794901898696.a n : ℤ) = A209084 n

theorem P17628721794901898696.correct : P17628721794901898696.Spec := by
  intro n
  simp only [A209084]

end A209084

/-! ## A209084.P3943187817639253570

`2*A103435(n)`
-/

namespace A209084.P3943187817639253570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103435 n

end

end A209084.P3943187817639253570

namespace A209084

/-- `2*A103435(n)` -/
def P3943187817639253570.Spec : Prop :=
  ∀ n, P3943187817639253570.a n = A209084 n

end A209084

/-! ## A209084.P6730785613082099295

`4*A085449(n)`
-/

namespace A209084.P6730785613082099295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A085449 n

end

end A209084.P6730785613082099295

namespace A209084

/-- `4*A085449(n)` -/
def P6730785613082099295.Spec : Prop :=
  ∀ n, P6730785613082099295.a n = A209084 n

end A209084

/-! ## A209084.P16908811483159913073

`ogf(4x/(1-2x-4x^2))`
-/

namespace A209084.P16908811483159913073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4] [1, -2, -4] n

end

end A209084.P16908811483159913073

namespace A209084

/-- `ogf(4x/(1-2x-4x^2))` -/
def P16908811483159913073.Spec : Prop :=
  ∀ n, P16908811483159913073.a n = A209084 n

end A209084

/-! ## A209084.P10281823884944502724

`2^(n+1)*round(ϕ^n/sqrt(5))`
-/

namespace A209084.P10281823884944502724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ))

end

end A209084.P10281823884944502724

namespace A209084

/-- `2^(n+1)*round(ϕ^n/sqrt(5))` -/
def P10281823884944502724.Spec : Prop :=
  ∀ n, P10281823884944502724.a n = A209084 n

end A209084

/-! ## A209084.P15452381435383343901

`abs(A086344(n+1))`
-/

namespace A209084.P15452381435383343901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A086344 (n + 1)|

end

end A209084.P15452381435383343901

namespace A209084

/-- `abs(A086344(n+1))` -/
def P15452381435383343901.Spec : Prop :=
  ∀ n, P15452381435383343901.a n = A209084 n

end A209084

/-! ## A209084.P13558839745053430664

`2*A006483(n)-2`
-/

namespace A209084.P13558839745053430664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006483 n - 2

end

end A209084.P13558839745053430664

namespace A209084

/-- `2*A006483(n)-2` -/
def P13558839745053430664.Spec : Prop :=
  ∀ n, P13558839745053430664.a n = A209084 n

end A209084

/-! ## A209084.P5738488438461451206

`A000045(n)/2^-(n+1)`
-/

namespace A209084.P5738488438461451206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / (2 : ℚ) ^ (-(n + 1 : ℤ) : ℤ)

end

end A209084.P5738488438461451206

namespace A209084

/-- `A000045(n)/2^-(n+1)` -/
def P5738488438461451206.Spec : Prop :=
  ∀ n, P5738488438461451206.a n = (A209084 n : ℚ)

end A209084

/-! ## A209084.P1701849026052067697

`∑[2^n*A000032(abs(1-n))]-1`
-/

namespace A209084.P1701849026052067697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000032 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A209084.P1701849026052067697

namespace A209084

/-- `∑[2^n*A000032(abs(1-n))]-1` -/
def P1701849026052067697.Spec : Prop :=
  ∀ n, P1701849026052067697.a n = A209084 n

end A209084

/-! ## A209084.P6101697977240321221

`A063782(n)-A319196(n)`
-/

namespace A209084.P6101697977240321221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063782 n - A319196 n

end

end A209084.P6101697977240321221

namespace A209084

/-- `A063782(n)-A319196(n)` -/
def P6101697977240321221.Spec : Prop :=
  ∀ n, P6101697977240321221.a n = A209084 n

end A209084

/-! ## A209084.P13195253352335232934

`A319196(n+1)+A063727(n)`
-/

namespace A209084.P13195253352335232934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319196 (n + 1) + A063727 n

end

end A209084.P13195253352335232934

namespace A209084

/-- `A319196(n+1)+A063727(n)` -/
def P13195253352335232934.Spec : Prop :=
  ∀ n, P13195253352335232934.a n = A209084 n

end A209084

/-! ## A209084.P13415388311975117022

`A087131(n)-2*A319196(n)`
-/

namespace A209084.P13415388311975117022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087131 n - 2 * A319196 n

end

end A209084.P13415388311975117022

namespace A209084

/-- `A087131(n)-2*A319196(n)` -/
def P13415388311975117022.Spec : Prop :=
  ∀ n, P13415388311975117022.a n = A209084 n

end A209084

/-! ## A209084.P3630535761525179266

`A319196(n+1)+A085449(n+1)`
-/

namespace A209084.P3630535761525179266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319196 (n + 1) + A085449 (n + 1)

end

end A209084.P3630535761525179266

namespace A209084

/-- `A319196(n+1)+A085449(n+1)` -/
def P3630535761525179266.Spec : Prop :=
  ∀ n, P3630535761525179266.a n = A209084 n

end A209084

/-! ## A209084.P7211234742210216022

`A085449(n)+A103435(n)+A085449(n)`
-/

namespace A209084.P7211234742210216022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085449 n + (A103435 n + A085449 n)

end

end A209084.P7211234742210216022

namespace A209084

/-- `A085449(n)+A103435(n)+A085449(n)` -/
def P7211234742210216022.Spec : Prop :=
  ∀ n, P7211234742210216022.a n = A209084 n

end A209084

/-! ## A209084.P4092341193771834352

`A000045(n)+A000045(n)*A126646(n)`
-/

namespace A209084.P4092341193771834352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + A000045 n * A126646 n

end

end A209084.P4092341193771834352

namespace A209084

/-- `A000045(n)+A000045(n)*A126646(n)` -/
def P4092341193771834352.Spec : Prop :=
  ∀ n, P4092341193771834352.a n = A209084 n

end A209084

/-! ## A209084.P11790696570706877898

`A063727(n)-(A319196(n)-A085449(n))`
-/

namespace A209084.P11790696570706877898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063727 n - (A319196 n - A085449 n)

end

end A209084.P11790696570706877898

namespace A209084

/-- `A063727(n)-(A319196(n)-A085449(n))` -/
def P11790696570706877898.Spec : Prop :=
  ∀ n, P11790696570706877898.a n = A209084 n

end A209084

/-! ## A209084.P4665842779860604550

`A000045(n)*A000051(n+1)-A000045(n)`
-/

namespace A209084.P4665842779860604550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A000051 (n + 1) - A000045 n

end

end A209084.P4665842779860604550

namespace A209084

/-- `A000045(n)*A000051(n+1)-A000045(n)` -/
def P4665842779860604550.Spec : Prop :=
  ∀ n, P4665842779860604550.a n = A209084 n

end A209084

/-! ## A209084.P15556966187337444647

`A000079(n+1)*A001611(n)-A000079(n+1)`
-/

namespace A209084.P15556966187337444647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A001611 n - A000079 (n + 1)

end

end A209084.P15556966187337444647

namespace A209084

/-- `A000079(n+1)*A001611(n)-A000079(n+1)` -/
def P15556966187337444647.Spec : Prop :=
  ∀ n, P15556966187337444647.a n = A209084 n

end A209084

/-! ## A209084.P15681405896924339719

`Δ[A052899(n)]`
-/

namespace A209084.P15681405896924339719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A209084.P15681405896924339719

namespace A209084

/-- `Δ[A052899(n)]` -/
def P15681405896924339719.Spec : Prop :=
  ∀ n, P15681405896924339719.a n = A209084 n

end A209084

/-! ## A209084.P11796954724611771148

`Δ[2*A014334(n)]`
-/

namespace A209084.P11796954724611771148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A209084.P11796954724611771148

namespace A209084

/-- `Δ[2*A014334(n)]` -/
def P11796954724611771148.Spec : Prop :=
  ∀ n, P11796954724611771148.a n = A209084 n

end A209084

/-!
# A209085: a(n) is the next larger than A208982(n) number with mutual Hamming distance 1.

The programs for A209085, there is no canonical definition to state claims against.
-/

/-! ## A209085.P5692073715127316307

`p?[or(n, n+1)]`
-/

namespace A209085.P5692073715127316307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A209085.P5692073715127316307

/-! ## A209085.P17288118844197963614

`p?[abs(or(n, n-1))]`
-/

namespace A209085.P17288118844197963614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n : ℤ) ((n : ℤ) - 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209085.P17288118844197963614

/-! ## A209085.P10593985846989558135

`or(1, p?[or(n, n-1)])`
-/

namespace A209085.P10593985846989558135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A209085.P10593985846989558135

/-! ## A209085.P15967288205606141959

`p?[gcd(64, n+1)+n]`
-/

namespace A209085.P15967288205606141959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 64 (n + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A209085.P15967288205606141959

/-! ## A209085.P15363500323942884670

`p?[and(n, -n)-1+n]`
-/

namespace A209085.P15363500323942884670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209085.P15363500323942884670

/-! ## A209085.P5714901456719311478

`p?[2^val(n+1, 2)+n]`
-/

namespace A209085.P5714901456719311478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A209085.P5714901456719311478

/-! ## A209085.P12190689700703029764

`p?[Δ[n²]-and(n, n+1)]`
-/

namespace A209085.P12190689700703029764
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (Nat.land n (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209085.P12190689700703029764

/-! ## A209085.P16766617915696273662

`p?[and(n+1, -(n+1))+n]`
-/

namespace A209085.P16766617915696273662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209085.P16766617915696273662

/-! ## A209085.P2627631507124131707

`p?[n+1-and(n, n+1)+n]`
-/

namespace A209085.P2627631507124131707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209085.P2627631507124131707

/-! ## A209085.P14148870081071899857

`p?[A086799(n+1)]`
-/

namespace A209085.P14148870081071899857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209085.P14148870081071899857

/-!
# A209086: Number of n X n 0..3 arrays avoiding the pattern z z+1 z horizontally and z z-1 z vertically.

The programs for A209086, there is no canonical definition to state claims against.
-/

/-! ## A209086.P830878340047449083

`A209092((n+1)²+n²)`
-/

namespace A209086.P830878340047449083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209092 ((n + 1) ^ 2 + n ^ 2)

end

end A209086.P830878340047449083

/-!
# A209087: Number of n X 3 0..3 arrays avoiding the pattern z z+1 z horizontally and z z-1 z vertically.

The programs for A209087, there is no canonical definition to state claims against.
-/

/-! ## A209087.P6390889274096923743

`A209092(∑[n+2]+4)`
-/

namespace A209087.P6390889274096923743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209092 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A209087.P6390889274096923743

/-! ## A209087.P10931976120590527608

`A209092(A167614(n+1))*A238015(n)`
-/

namespace A209087.P10931976120590527608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209092 (A167614 (n + 1)).toNat * A238015 n

end

end A209087.P10931976120590527608

/-! ## A209087.P3044792107900725539

`lcm(A020985(n), A209092(A167614(n+1)))`
-/

namespace A209087.P3044792107900725539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A209092 (A167614 (n + 1)).toNat)

end

end A209087.P3044792107900725539

/-! ## A209087.P14666152585788217005

`A209092(A167614(n+1))%A206793(n+1)`
-/

namespace A209087.P14666152585788217005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209092 (A167614 (n + 1)).toNat) (A206793 (n + 1))

end

end A209087.P14666152585788217005

/-! ## A209087.P13230253561635816319

`or(A101605(n+1), A209092(A167614(n+1)))`
-/

namespace A209087.P13230253561635816319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A101605 (n + 1)) (A209092 (A167614 (n + 1)).toNat)

end

end A209087.P13230253561635816319

/-!
# A209088: Number of nX4 0..3 arrays avoiding the pattern z z+1 z horizontally and z z-1 z vertically.

The programs for A209088, there is no canonical definition to state claims against.
-/

/-! ## A209088.P2267678977586295578

`A209092(A167614(n+2)+1)`
-/

namespace A209088.P2267678977586295578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209092 (A167614 (n + 2) + 1).toNat

end

end A209088.P2267678977586295578

/-! ## A209088.P16581404248609481712

`A209092(Δ[A023545(n+1)-n²])`
-/

namespace A209088.P16581404248609481712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209092 (f1 (n + 1) - f1 n).toNat

end

end A209088.P16581404248609481712

/-!
# A209089: Number of nX5 0..3 arrays avoiding the pattern z z+1 z horizontally and z z-1 z vertically.

The programs for A209089, there is no canonical definition to state claims against.
-/

/-! ## A209089.P14187968925007882648

`A209092(A374005(n+1))`
-/

namespace A209089.P14187968925007882648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209092 (A374005 (n + 1)).toNat

end

end A209089.P14187968925007882648

/-! ## A209089.P13060026137367926640

`A209092(Δ[A023545(n+1)])`
-/

namespace A209089.P13060026137367926640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209092 (f1 (n + 1) - f1 n).toNat

end

end A209089.P13060026137367926640

/-! ## A209089.P16854659268401778794

`A209092(A000217(n+5)-4)`
-/

namespace A209089.P16854659268401778794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209092 (A000217 (n + 5) - 4).toNat

end

end A209089.P16854659268401778794

/-! ## A209089.P12074195676976911653

`A209092(A000124(n+5)-5)`
-/

namespace A209089.P12074195676976911653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209092 (A000124 (n + 5) - 5).toNat

end

end A209089.P12074195676976911653

/-!
# A209090: 

The programs for A209090, there is no canonical definition to state claims against.
-/

/-! ## A209090.P17217685952511868924

`A209092(A000124(n+5)+5)`
-/

namespace A209090.P17217685952511868924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209092 (A000124 (n + 5) + 5).toNat

end

end A209090.P17217685952511868924

/-! ## A209090.P16452137834881238616

`A209092(A000096(n+5)-(n-1))`
-/

namespace A209090.P16452137834881238616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209092 (A000096 (n + 5) - ((n : ℤ) - 1)).toNat

end

end A209090.P16452137834881238616

/-!
# A209091: 

The programs for A209091, there is no canonical definition to state claims against.
-/

/-! ## A209091.P17289222550443996439

`A209092(eq[6, A025581(n)]+1)`
-/

namespace A209091.P17289222550443996439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209092 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A209091.P17289222550443996439

/-!
# A209092: T(n,k)=Number of nXk 0..3 arrays avoiding the pattern z z+1 z horizontally and z z-1 z vertically.

The programs for A209092, there is no canonical definition to state claims against.
-/

/-! ## A209092.P10585879614991870588

`A207582(n+1)+A020987(A110148(n+1))`
-/

namespace A209092.P10585879614991870588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207582 (n + 1) + A020987 (A110148 (n + 1)).toNat

end

end A209092.P10585879614991870588

/-! ## A209092.P13365134191599833500

`A207582(n+1)+A010054(A207050(n+1))`
-/

namespace A209092.P13365134191599833500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207582 (n + 1) + A010054 (A207050 (n + 1)).toNat

end

end A209092.P13365134191599833500

/-! ## A209092.P16773739565803804778

`A207582(n+1)+A101605(A000051(n))`
-/

namespace A209092.P16773739565803804778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207582 (n + 1) + A101605 (A000051 n).toNat

end

end A209092.P16773739565803804778

/-! ## A209092.P11401223079795900029

`A207582(n+1)+A206499(A000930(n))`
-/

namespace A209092.P11401223079795900029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207582 (n + 1) + A206499 (A000930 n).toNat

end

end A209092.P11401223079795900029

/-! ## A209092.P6918325104910657396

`A207582(n+1)+A206499(A347576(n))`
-/

namespace A209092.P6918325104910657396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207582 (n + 1) + A206499 (A347576 (n + 45)).toNat

end

end A209092.P6918325104910657396

/-!
# A209093: Number of n X n 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A209093, there is no canonical definition to state claims against.
-/

/-! ## A209093.P6426173339034738932

`A209100((n+1)²+n²)`
-/

namespace A209093.P6426173339034738932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209100 ((n + 1) ^ 2 + n ^ 2)

end

end A209093.P6426173339034738932

/-! ## A209093.P6185293363456268397

`record[gcd(A114327(n), A209100(n+1))]`
-/

namespace A209093.P6185293363456268397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A209100 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209093.P6185293363456268397

/-! ## A209093.P1176279264721114774

`gcd(A000038(n), A209100(A001844(n)))`
-/

namespace A209093.P1176279264721114774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A209100 (A001844 n).toNat)

end

end A209093.P1176279264721114774

/-! ## A209093.P1911079161036572436

`lcm(A067760(n), A209100(A001844(n)))`
-/

namespace A209093.P1911079161036572436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A067760 n) (A209100 (A001844 n).toNat)

end

end A209093.P1911079161036572436

/-!
# A209094: Number of n X 2 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A209094, the canonical program `A209094.P988925749288172618` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209094 has offset 1).

The definition of A209094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209094.P10358909686552547934

`ogf((2-5x+2x^2)/(1-8x+4x^2))`
-/

namespace A209094.P10358909686552547934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -5, 2] [1, -8, 4] n

end

end A209094.P10358909686552547934

namespace A209094

/-- `ogf((2-5x+2x^2)/(1-8x+4x^2))` -/
def P10358909686552547934.Spec : Prop :=
  ∀ n, P10358909686552547934.a n = A209094 (n + 1)

end A209094

/-! ## A209094.P988925749288172618

`8*a(n-1)-4*a(n-2)` with `a(0)=2, a(1)=11, a(2)=82`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A209094

/-- `8*a(n-1)-4*a(n-2)` -/
def P988925749288172618.Spec : Prop :=
  ∀ n, P988925749288172618.a n = A209094 (n + 1)

theorem P988925749288172618.correct : P988925749288172618.Spec := by
  intro n
  simp only [A209094, Nat.add_sub_cancel]

end A209094

/-! ## A209094.P10696659444698288410

`ceil(A028859(Δ[n²])/2)`
-/

namespace A209094.P10696659444698288410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A028859 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2⌉

end

end A209094.P10696659444698288410

namespace A209094

/-- `ceil(A028859(Δ[n²])/2)` -/
def P10696659444698288410.Spec : Prop :=
  ∀ n, P10696659444698288410.a n = A209094 (n + 1)

end A209094

/-! ## A209094.P17885969653695523230

`A155020(2*n)+A028859(2*n)`
-/

namespace A209094.P17885969653695523230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155020 (2 * n) + A028859 (2 * n)

end

end A209094.P17885969653695523230

namespace A209094

/-- `A155020(2*n)+A028859(2*n)` -/
def P17885969653695523230.Spec : Prop :=
  ∀ n, P17885969653695523230.a n = A209094 (n + 1)

end A209094

/-! ## A209094.P5103575577290937917

`A052945(2*n)+∑[A052945(2*n)]`
-/

namespace A209094.P5103575577290937917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052945 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052945 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209094.P5103575577290937917

namespace A209094

/-- `A052945(2*n)+∑[A052945(2*n)]` -/
def P5103575577290937917.Spec : Prop :=
  ∀ n, P5103575577290937917.a n = A209094 (n + 1)

end A209094

/-! ## A209094.P8547668998484112560

`A052945(2*n)+A002605(2*n+1)`
-/

namespace A209094.P8547668998484112560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052945 (2 * n) + A002605 (2 * n + 1)

end

end A209094.P8547668998484112560

namespace A209094

/-- `A052945(2*n)+A002605(2*n+1)` -/
def P8547668998484112560.Spec : Prop :=
  ∀ n, P8547668998484112560.a n = A209094 (n + 1)

end A209094

/-! ## A209094.P7072901881108555283

`A155020(2*n+1)+A155020(2*n)`
-/

namespace A209094.P7072901881108555283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155020 (2 * n + 1) + A155020 (2 * n)

end

end A209094.P7072901881108555283

namespace A209094

/-- `A155020(2*n+1)+A155020(2*n)` -/
def P7072901881108555283.Spec : Prop :=
  ∀ n, P7072901881108555283.a n = A209094 (n + 1)

end A209094

/-! ## A209094.P4209406315466156687

`A052945(2*n)+A152035(2*n+1)/2`
-/

namespace A209094.P4209406315466156687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052945 (2 * n) : ℚ) + (A152035 (2 * n + 1) : ℚ) / 2

end

end A209094.P4209406315466156687

namespace A209094

/-- `A052945(2*n)+A152035(2*n+1)/2` -/
def P4209406315466156687.Spec : Prop :=
  ∀ n, P4209406315466156687.a n = (A209094 (n + 1) : ℚ)

end A209094

/-! ## A209094.P5916156172573207020

`(A152035(2*n)+A083337(2*n+1))/2`
-/

namespace A209094.P5916156172573207020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152035 (2 * n) + A083337 (2 * n + 1) : ℚ) / 2

end

end A209094.P5916156172573207020

namespace A209094

/-- `(A152035(2*n)+A083337(2*n+1))/2` -/
def P5916156172573207020.Spec : Prop :=
  ∀ n, P5916156172573207020.a n = (A209094 (n + 1) : ℚ)

end A209094

/-! ## A209094.P8666893557843744684

`A152035(2*n+1)-A293007(2*n)/2`
-/

namespace A209094.P8666893557843744684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152035 (2 * n + 1) : ℚ) - (A293007 (2 * n) : ℚ) / 2

end

end A209094.P8666893557843744684

namespace A209094

/-- `A152035(2*n+1)-A293007(2*n)/2` -/
def P8666893557843744684.Spec : Prop :=
  ∀ n, P8666893557843744684.a n = (A209094 (n + 1) : ℚ)

end A209094

/-! ## A209094.P15045800234408763202

`A028859(2*n)+A028859(A004273(n))`
-/

namespace A209094.P15045800234408763202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 (2 * n) + A028859 (A004273 n).toNat

end

end A209094.P15045800234408763202

namespace A209094

/-- `A028859(2*n)+A028859(A004273(n))` -/
def P15045800234408763202.Spec : Prop :=
  ∀ n, P15045800234408763202.a n = A209094 (n + 1)

end A209094

/-! ## A209094.P58925448582412062

`A028859(A289207(2*n+1))+A028859(2*n)`
-/

namespace A209094.P58925448582412062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 (A289207 (2 * n + 1)).toNat + A028859 (2 * n)

end

end A209094.P58925448582412062

namespace A209094

/-- `A028859(A289207(2*n+1))+A028859(2*n)` -/
def P58925448582412062.Spec : Prop :=
  ∀ n, P58925448582412062.a n = A209094 (n + 1)

end A209094

/-! ## A209094.P5208026810625948172

`A052945(2*n+1)+A052945(2*n)-A028859(2*n)`
-/

namespace A209094.P5208026810625948172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052945 (2 * n + 1) + (A052945 (2 * n) - A028859 (2 * n))

end

end A209094.P5208026810625948172

namespace A209094

/-- `A052945(2*n+1)+A052945(2*n)-A028859(2*n)` -/
def P5208026810625948172.Spec : Prop :=
  ∀ n, P5208026810625948172.a n = A209094 (n + 1)

end A209094

/-! ## A209094.P1837877884706721423

`A152035(2*n+1)+A152035(2*n)-A052945(2*n)`
-/

namespace A209094.P1837877884706721423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152035 (2 * n + 1) + (A152035 (2 * n) - A052945 (2 * n))

end

end A209094.P1837877884706721423

namespace A209094

/-- `A152035(2*n+1)+A152035(2*n)-A052945(2*n)` -/
def P1837877884706721423.Spec : Prop :=
  ∀ n, P1837877884706721423.a n = A209094 (n + 1)

end A209094

/-! ## A209094.P6564649915226164242

`round(round(Δ[A052948(2*n+1)]/2)/2)`
-/

namespace A209094.P6564649915226164242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052948 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / 2) : ℚ) / 2)

end

end A209094.P6564649915226164242

namespace A209094

/-- `round(round(Δ[A052948(2*n+1)]/2)/2)` -/
def P6564649915226164242.Spec : Prop :=
  ∀ n, P6564649915226164242.a n = A209094 (n + 1)

end A209094

/-!
# A209095: Number of n X 3 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A209095, there is no canonical definition to state claims against.
-/

/-! ## A209095.P13542687381916505889

`A209100(∑[n+3]+1)`
-/

namespace A209095.P13542687381916505889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209100 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209095.P13542687381916505889

/-!
# A209096: Number of n X 4 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A209096, there is no canonical definition to state claims against.
-/

/-! ## A209096.P677377746814375068

`A209100(A141214(n+1))`
-/

namespace A209096.P677377746814375068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209100 (A141214 (n + 1)).toNat

end

end A209096.P677377746814375068

/-! ## A209096.P17143841658086569186

`A209100(A155212(n)+5)`
-/

namespace A209096.P17143841658086569186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209100 (A155212 n + 5).toNat

end

end A209096.P17143841658086569186

/-! ## A209096.P7025656791826420798

`A209100(A056000(n)+7)`
-/

namespace A209096.P7025656791826420798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209100 (A056000 n + 7).toNat

end

end A209096.P7025656791826420798

/-! ## A209096.P5656189005978353520

`A209100(eq[4, A209434(n)])`
-/

namespace A209096.P5656189005978353520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209434 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209096.P5656189005978353520

/-! ## A209096.P2942257848294488012

`A209100(Δ[A034857(n+1)])`
-/

namespace A209096.P2942257848294488012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209100 (f1 (n + 1) - f1 n).toNat

end

end A209096.P2942257848294488012

/-!
# A209097: Number of n X 5 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A209097, there is no canonical definition to state claims against.
-/

/-! ## A209097.P13688667640969583267

`A209100(Δ[A264443(n)])`
-/

namespace A209097.P13688667640969583267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209100 (f1 (n + 1) - f1 n).toNat

end

end A209097.P13688667640969583267

/-! ## A209097.P11447399572269726481

`A209100(A046691(n+3))`
-/

namespace A209097.P11447399572269726481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209100 (A046691 (n + 3)).toNat

end

end A209097.P11447399572269726481

/-! ## A209097.P9794559726327564455

`A209100(eq[4, A193592(n)])`
-/

namespace A209097.P9794559726327564455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209097.P9794559726327564455

/-! ## A209097.P9432365177234173684

`A209100(Δ[A023545(n+1)])`
-/

namespace A209097.P9432365177234173684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209100 (f1 (n + 1) - f1 n).toNat

end

end A209097.P9432365177234173684

/-! ## A209097.P13711509049371626143

`A209100(A052905(n+2)+1)`
-/

namespace A209097.P13711509049371626143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209100 (A052905 (n + 2) + 1).toNat

end

end A209097.P13711509049371626143

/-!
# A209098: Number of n X 6 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A209098, there is no canonical definition to state claims against.
-/

/-! ## A209098.P11693238580314243454

`A209100(A052905(n+3))`
-/

namespace A209098.P11693238580314243454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209100 (A052905 (n + 3)).toNat

end

end A209098.P11693238580314243454

/-! ## A209098.P12916543119831827842

`A209100(eq[5, A193592(n)])`
-/

namespace A209098.P12916543119831827842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209098.P12916543119831827842

/-! ## A209098.P4422934366023286750

`A209100(A155212(n+2)+3)`
-/

namespace A209098.P4422934366023286750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209100 (A155212 (n + 2) + 3).toNat

end

end A209098.P4422934366023286750

/-! ## A209098.P16382577009353669768

`A209100(Δ[A264443(n+1)]-1)`
-/

namespace A209098.P16382577009353669768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209100 (f1 (n + 1) - f1 n - 1).toNat

end

end A209098.P16382577009353669768

/-!
# A209099: Number of nX7 0..2 arrays with new values 0..2 introduced in row major order and no element equal to more than one of its immediate leftward or upward or right-upward antidiagonal neighbors.

The programs for A209099, there is no canonical definition to state claims against.
-/

/-! ## A209099.P12729107616761265820

`A209100(eq[6, A193592(n)])`
-/

namespace A209099.P12729107616761265820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209100 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209099.P12729107616761265820

