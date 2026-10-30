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
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import SequenceMachineLib.Triangle

/-!
# A161001: Those positive integers n that when read in binary contains runs of 0's and 1's being of distinct lengths, the list of lengths forming a permutation of some number of consecutive positive integers.

The programs for A161001, there is no canonical definition to state claims against.
-/

/-! ## A161001.P4988944616852751905

`eq[1, A292900(∏{p}[n+1, #])]`
-/

namespace A161001.P4988944616852751905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292900 (∏ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161001.P4988944616852751905

/-! ## A161001.P1758712556927706726

`eq[1, A292900(A007947(n+1))]`
-/

namespace A161001.P1758712556927706726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292900 (A007947 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161001.P1758712556927706726

/-! ## A161001.P5529950918639873156

`eq[1, A292900(A014963(n+1))]`
-/

namespace A161001.P5529950918639873156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292900 (A014963 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161001.P5529950918639873156

/-! ## A161001.P7381541134386727159

`eq[1, A292900(A015052(n+1))]`
-/

namespace A161001.P7381541134386727159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292900 (A015052 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A161001.P7381541134386727159

/-! ## A161001.P1178777505303588184

`eq[A205531(A101508(n)), A284272(n)]`
-/

namespace A161001.P1178777505303588184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205531 (A101508 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284272 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A161001.P1178777505303588184

/-!
# A161002: Least prime of three consecutive primes (p1,p2,p3) such that p2-p1 and p3-p2 are both perfect squares.

The programs for A161002, there is no canonical definition to state claims against.
-/

/-! ## A161002.P12806825980817784159

`A151799(A353088(n+1))`
-/

namespace A161002.P12806825980817784159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (A353088 (n + 1)).toNat

end

end A161002.P12806825980817784159

/-! ## A161002.P7571653082794110606

`A300840(A353088(n+1)+A185203(n))`
-/

namespace A161002.P7571653082794110606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300840 (A353088 (n + 1) + A185203 n).toNat

end

end A161002.P7571653082794110606

/-! ## A161002.P7773998329866569982

`A300840(A353088(n+1)%A058252(n+1))`
-/

namespace A161002.P7773998329866569982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300840 (Int.tmod (A353088 (n + 1)) (A058252 (n + 1))).toNat

end

end A161002.P7773998329866569982

/-! ## A161002.P5180124010498593808

`A300840(A353088(n+1))%A161533(n+1)`
-/

namespace A161002.P5180124010498593808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300840 (A353088 (n + 1)).toNat) (A161533 (n + 1))

end

end A161002.P5180124010498593808

/-! ## A161002.P7163392853531585238

`A300840(∪[A058252(n+1), A353088(n+1)])`
-/

namespace A161002.P7163392853531585238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353088 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300840 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A161002.P7163392853531585238

/-!
# A161003: A list of the composite numbers divided by their largest prime factors.

The programs for A161003, the canonical program `A161003.P1160852448560439033` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161003 has offset 1).

The definition of A161003 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052369, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A161003.P1160852448560439033

`A002808(n+1)/A052369(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A161003

/-- `A002808(n+1)/A052369(n+1)` -/
def P1160852448560439033.Spec : Prop :=
  ∀ n, P1160852448560439033.a n = (A161003 (n + 1) : ℚ)

end A161003

/-! ## A161003.P14345322768631309192

`A018252(n+2)/A052369(n+1)`
-/

namespace A161003.P14345322768631309192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018252 (n + 2) : ℚ) / (A052369 (n + 1) : ℚ)

end

end A161003.P14345322768631309192

namespace A161003

/-- `A018252(n+2)/A052369(n+1)` -/
def P14345322768631309192.Spec : Prop :=
  ∀ n, P14345322768631309192.a n = (A161003 (n + 1) : ℚ)

end A161003

/-! ## A161003.P12332113135714432156

`A141468(n+3)/A006530(A141468(n+3))`
-/

namespace A161003.P12332113135714432156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141468 (n + 3) : ℚ) / (A006530 (A141468 (n + 3)).toNat : ℚ)

end

end A161003.P12332113135714432156

namespace A161003

/-- `A141468(n+3)/A006530(A141468(n+3))` -/
def P12332113135714432156.Spec : Prop :=
  ∀ n, P12332113135714432156.a n = (A161003 (n + 1) : ℚ)

end A161003

/-! ## A161003.P16009539909133184133

`(A072668(n+1)+1)/A006530(comp[A351078(n)])`
-/

namespace A161003.P16009539909133184133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072668 (n + 1) + 1 : ℚ) / (A006530 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ)

end

end A161003.P16009539909133184133

namespace A161003

/-- `(A072668(n+1)+1)/A006530(comp[A351078(n)])` -/
def P16009539909133184133.Spec : Prop :=
  ∀ n, P16009539909133184133.a n = (A161003 (n + 1) : ℚ)

end A161003

/-! ## A161003.P10123893993463965543

`(A079696(n+1)-1)/A006530(comp[A351078(n)])`
-/

namespace A161003.P10123893993463965543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079696 (n + 1) - 1 : ℚ) / (A006530 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) : ℚ)

end

end A161003.P10123893993463965543

namespace A161003

/-- `(A079696(n+1)-1)/A006530(comp[A351078(n)])` -/
def P10123893993463965543.Spec : Prop :=
  ∀ n, P10123893993463965543.a n = (A161003 (n + 1) : ℚ)

end A161003

/-! ## A161003.P13042658729072488840

`A002808(n+1)/A006530(2*A002808(n+1))`
-/

namespace A161003.P13042658729072488840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) / (A006530 (2 * A002808 (n + 1)).toNat : ℚ)

end

end A161003.P13042658729072488840

namespace A161003

/-- `A002808(n+1)/A006530(2*A002808(n+1))` -/
def P13042658729072488840.Spec : Prop :=
  ∀ n, P13042658729072488840.a n = (A161003 (n + 1) : ℚ)

end A161003

/-! ## A161003.P9318376043718657614

`lt[1, A107463(n)]/A006530(A072668(n+1)+1)`
-/

namespace A161003.P9318376043718657614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / (A006530 (A072668 (n + 1) + 1).toNat : ℚ)

end

end A161003.P9318376043718657614

namespace A161003

/-- `lt[1, A107463(n)]/A006530(A072668(n+1)+1)` -/
def P9318376043718657614.Spec : Prop :=
  ∀ n, P9318376043718657614.a n = (A161003 (n + 1) : ℚ)

end A161003

/-! ## A161003.P18386193583288224865

`lt[1, A175126(n)]/A006530(A072668(n+1)+1)`
-/

namespace A161003.P18386193583288224865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / (A006530 (A072668 (n + 1) + 1).toNat : ℚ)

end

end A161003.P18386193583288224865

namespace A161003

/-- `lt[1, A175126(n)]/A006530(A072668(n+1)+1)` -/
def P18386193583288224865.Spec : Prop :=
  ∀ n, P18386193583288224865.a n = (A161003 (n + 1) : ℚ)

end A161003

/-! ## A161003.P3736182750984694256

`lt[1, A107463(n)]/A006530(A079696(n+1)-1)`
-/

namespace A161003.P3736182750984694256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / (A006530 (A079696 (n + 1) - 1).toNat : ℚ)

end

end A161003.P3736182750984694256

namespace A161003

/-- `lt[1, A107463(n)]/A006530(A079696(n+1)-1)` -/
def P3736182750984694256.Spec : Prop :=
  ∀ n, P3736182750984694256.a n = (A161003 (n + 1) : ℚ)

end A161003

/-! ## A161003.P4132473215670199874

`A002808(n+1)/(A002808(n+1)-A085273(n+1))`
-/

namespace A161003.P4132473215670199874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) / (A002808 (n + 1) - A085273 (n + 1) : ℚ)

end

end A161003.P4132473215670199874

namespace A161003

/-- `A002808(n+1)/(A002808(n+1)-A085273(n+1))` -/
def P4132473215670199874.Spec : Prop :=
  ∀ n, P4132473215670199874.a n = (A161003 (n + 1) : ℚ)

end A161003

/-! ## A161003.P15042149133779318022

`A002808(n+1)/(A085275(n+1)-A002808(n+1))`
-/

namespace A161003.P15042149133779318022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) / (A085275 (n + 1) - A002808 (n + 1) : ℚ)

end

end A161003.P15042149133779318022

namespace A161003

/-- `A002808(n+1)/(A085275(n+1)-A002808(n+1))` -/
def P15042149133779318022.Spec : Prop :=
  ∀ n, P15042149133779318022.a n = (A161003 (n + 1) : ℚ)

end A161003

/-! ## A161003.P2975935129076661112

`(A161986(n+1)-A161849(n+1))/A052369(n+1)`
-/

namespace A161003.P2975935129076661112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161986 (n + 1) - A161849 (n + 1) : ℚ) / (A052369 (n + 1) : ℚ)

end

end A161003.P2975935129076661112

namespace A161003

/-- `(A161986(n+1)-A161849(n+1))/A052369(n+1)` -/
def P2975935129076661112.Spec : Prop :=
  ∀ n, P2975935129076661112.a n = (A161003 (n + 1) : ℚ)

end A161003

/-! ## A161003.P8862941971261629927

`A056608(n+1)/A052369(n+1)*A160180(n+1)`
-/

namespace A161003.P8862941971261629927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056608 (n + 1) : ℚ) / (A052369 (n + 1) : ℚ) * (A160180 (n + 1) : ℚ)

end

end A161003.P8862941971261629927

namespace A161003

/-- `A056608(n+1)/A052369(n+1)*A160180(n+1)` -/
def P8862941971261629927.Spec : Prop :=
  ∀ n, P8862941971261629927.a n = (A161003 (n + 1) : ℚ)

end A161003

/-! ## A161003.P1901702808917227026

`A002808(n+1)/A006530(A002808(n+1)/A056608(n+1))`
-/

namespace A161003.P1901702808917227026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002808 (n + 1) : ℚ) / (A006530 (SequenceMachineLib.roundAway ((A002808 (n + 1) : ℚ) / (A056608 (n + 1) : ℚ))).toNat : ℚ)

end

end A161003.P1901702808917227026

namespace A161003

/-- `A002808(n+1)/A006530(A002808(n+1)/A056608(n+1))` -/
def P1901702808917227026.Spec : Prop :=
  ∀ n, P1901702808917227026.a n = (A161003 (n + 1) : ℚ)

end A161003

/-! ## A161003.P11913174031856982434

`A052126(Δ[A053767(n)])`
-/

namespace A161003.P11913174031856982434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (f1 (n + 1) - f1 n).toNat

end

end A161003.P11913174031856982434

namespace A161003

/-- `A052126(Δ[A053767(n)])` -/
def P11913174031856982434.Spec : Prop :=
  ∀ n, P11913174031856982434.a n = A161003 (n + 1)

end A161003

/-! ## A161003.P5170132309478547697

`A052126(comp[A351078(n)])`
-/

namespace A161003.P5170132309478547697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A161003.P5170132309478547697

namespace A161003

/-- `A052126(comp[A351078(n)])` -/
def P5170132309478547697.Spec : Prop :=
  ∀ n, P5170132309478547697.a n = A161003 (n + 1)

end A161003

/-! ## A161003.P1383695421441355444

`A052126(A002808(n+1))`
-/

namespace A161003.P1383695421441355444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A002808 (n + 1)).toNat

end

end A161003.P1383695421441355444

namespace A161003

/-- `A052126(A002808(n+1))` -/
def P1383695421441355444.Spec : Prop :=
  ∀ n, P1383695421441355444.a n = A161003 (n + 1)

end A161003

/-! ## A161003.P14870473160071408962

`A052126(A018252(2+n))`
-/

namespace A161003.P14870473160071408962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A018252 (2 + n)).toNat

end

end A161003.P14870473160071408962

namespace A161003

/-- `A052126(A018252(2+n))` -/
def P14870473160071408962.Spec : Prop :=
  ∀ n, P14870473160071408962.a n = A161003 (n + 1)

end A161003

/-! ## A161003.P14233948816140004843

`A052126(lt[0, A082023(n)])`
-/

namespace A161003.P14233948816140004843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A161003.P14233948816140004843

namespace A161003

/-- `A052126(lt[0, A082023(n)])` -/
def P14233948816140004843.Spec : Prop :=
  ∀ n, P14233948816140004843.a n = A161003 (n + 1)

end A161003

/-! ## A161003.P7702776933948610549

`A052126(lt[0, A107393(n)])`
-/

namespace A161003.P7702776933948610549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A161003.P7702776933948610549

namespace A161003

/-- `A052126(lt[0, A107393(n)])` -/
def P7702776933948610549.Spec : Prop :=
  ∀ n, P7702776933948610549.a n = A161003 (n + 1)

end A161003

/-!
# A161005: Sums of adjacent amicable numbers, a(n) = A063990(2n-1) + A063990(2n).

The programs for A161005, there is no canonical definition to state claims against.
-/

/-! ## A161005.P12934192651112587201

`A063990(2*(n+1)-1)+A063990(2*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A161005.P12934192651112587201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (2 * (n + 1) - 1) + A063990 (2 * (n + 1))

end

end A161005.P12934192651112587201

/-! ## A161005.P9073963385475179101

`A306613(2*n+1)+A279812(2*n+1)`
-/

namespace A161005.P9073963385475179101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306613 (2 * n + 1) + A279812 (2 * n + 1)

end

end A161005.P9073963385475179101

/-! ## A161005.P5654311962071242317

`(A279812(2*n+1)+A279812(2*(n+1)))/2`
-/

namespace A161005.P5654311962071242317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279812 (2 * n + 1) + A279812 (2 * (n + 1)) : ℚ) / 2

end

end A161005.P5654311962071242317

/-! ## A161005.P12903955149628175885

`A279812(2*(n+1))-A178542(n+1)`
-/

namespace A161005.P12903955149628175885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279812 (2 * (n + 1)) - A178542 (n + 1)

end

end A161005.P12903955149628175885

/-! ## A161005.P12832297798776700624

`A063990(2*n+1)+A000027(A063990(2*(n+1)))`
-/

namespace A161005.P12832297798776700624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063990 (2 * n + 1) + A000027 (A063990 (2 * (n + 1))).toNat

end

end A161005.P12832297798776700624

/-!
# A161006: Convolution of A000108 (Catalan numbers) with A126120 (Catalan numbers interpolated with 0's).

The programs for A161006, there is no canonical definition to state claims against.
-/

/-! ## A161006.P17580552509725756163

`A126120(n)+Δ[A006251(n)]`
-/

namespace A161006.P17580552509725756163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n + (f1 (n + 1) - f1 n)

end

end A161006.P17580552509725756163

/-! ## A161006.P6187274109192361103

`Δ[A166588(n)+A006251(n)]`
-/

namespace A161006.P6187274109192361103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166588 n + A006251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161006.P6187274109192361103

/-! ## A161006.P4709632762435021791

`Δ[A006251(n)+∑[A097331(n)]]`
-/

namespace A161006.P4709632762435021791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006251 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161006.P4709632762435021791

/-! ## A161006.P3673158192565400931

`A097331(n+1)+Δ[A006251(n)]`
-/

namespace A161006.P3673158192565400931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (n + 1) + (f1 (n + 1) - f1 n)

end

end A161006.P3673158192565400931

/-! ## A161006.P17538684722874727604

`A073192(n+1)+A187916(n+1)-A000108(n+1)`
-/

namespace A161006.P17538684722874727604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073192 (n + 1) + (A187916 (n + 1) - A000108 (n + 1))

end

end A161006.P17538684722874727604

/-! ## A161006.P12054019562874875253

`A073190(n+2)-Δ[A014137(n)]`
-/

namespace A161006.P12054019562874875253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073190 (n + 2) - (f1 (n + 1) - f1 n)

end

end A161006.P12054019562874875253

/-! ## A161006.P12101422897569952463

`A073190(n+2)-A000108(n+1)`
-/

namespace A161006.P12101422897569952463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073190 (n + 2) - A000108 (n + 1)

end

end A161006.P12101422897569952463

/-!
# A161007: a(n+1) = 2*a(n) + 16*a(n-1), a(0)=0, a(1)=1.

The programs for A161007, the canonical program `A161007.P2914204989081213446` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161007 has offset 0).

The definition of A161007 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A161007.P5637157931475362675

`ogf(x/(1-2x-16x^2))`
-/

namespace A161007.P5637157931475362675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, -16] n

end

end A161007.P5637157931475362675

namespace A161007

/-- `ogf(x/(1-2x-16x^2))` -/
def P5637157931475362675.Spec : Prop :=
  ∀ n, P5637157931475362675.a n = A161007 n

end A161007

/-! ## A161007.P2914204989081213446

`((1+sqrt(17))^n-(1-sqrt(17))^n)/(2*sqrt(17))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A161007

/-- `((1+sqrt(17))^n-(1-sqrt(17))^n)/(2*sqrt(17))` -/
def P2914204989081213446.Spec : Prop :=
  ∀ n, P2914204989081213446.a n = (A161007 n : ℝ)

end A161007

/-! ## A161007.P4609995226353199345

`2*(a(n-1)+8*a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A161007.P4609995226353199345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (a (n - 1) + 8 * a (n - 2))

end

end A161007.P4609995226353199345

namespace A161007

/-- `2*(a(n-1)+8*a(n-2))` -/
def P4609995226353199345.Spec : Prop :=
  ∀ n, (P4609995226353199345.a n : ℤ) = A161007 n

end A161007

/-! ## A161007.P14081726283537239668

`A006131(log2(A011782(n)))*A131577(n)`
-/

namespace A161007.P14081726283537239668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006131 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat * A131577 n

end

end A161007.P14081726283537239668

namespace A161007

/-- `A006131(log2(A011782(n)))*A131577(n)` -/
def P14081726283537239668.Spec : Prop :=
  ∀ n, P14081726283537239668.a n = A161007 n

end A161007

/-! ## A161007.P15889445575714714989

`(A026597(n)-A006131(n))*A011782(n)`
-/

namespace A161007.P15889445575714714989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A026597 n - A006131 n) * A011782 n

end

end A161007.P15889445575714714989

namespace A161007

/-- `(A026597(n)-A006131(n))*A011782(n)` -/
def P15889445575714714989.Spec : Prop :=
  ∀ n, P15889445575714714989.a n = A161007 n

end A161007

/-! ## A161007.P18286654773022804786

`(A006131(n)-A052923(n))*A011782(n)`
-/

namespace A161007.P18286654773022804786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006131 n - A052923 n) * A011782 n

end

end A161007.P18286654773022804786

namespace A161007

/-- `(A006131(n)-A052923(n))*A011782(n)` -/
def P18286654773022804786.Spec : Prop :=
  ∀ n, P18286654773022804786.a n = A161007 n

end A161007

/-! ## A161007.P4033430437097238247

`(A102446(n)-A072265(n))*A011782(n)`
-/

namespace A161007.P4033430437097238247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A102446 n - A072265 n) * A011782 n

end

end A161007.P4033430437097238247

namespace A161007

/-- `(A102446(n)-A072265(n))*A011782(n)` -/
def P4033430437097238247.Spec : Prop :=
  ∀ n, P4033430437097238247.a n = A161007 n

end A161007

/-!
# A161009: Tribonacci left-bounded rhombic triangle.

The programs for A161009, there is no canonical definition to state claims against.
-/

/-! ## A161009.P6819919389272887835

`A111960(n)-A353481(A002524(n))`
-/

namespace A161009.P6819919389272887835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111960 n - A353481 (A002524 n).toNat

end

end A161009.P6819919389272887835

/-! ## A161009.P6870477170037277066

`A111960(n)-A185044(A343488(n))`
-/

namespace A161009.P6870477170037277066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111960 n - A185044 (A343488 n).toNat

end

end A161009.P6870477170037277066

/-! ## A161009.P4913823366323875630

`A048766(A104259(n)*A193735(n))`
-/

namespace A161009.P4913823366323875630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A104259 n * A193735 n).toNat

end

end A161009.P4913823366323875630

/-! ## A161009.P10206994726343837084

`A111960(n)+A010815(A090506(n+1))`
-/

namespace A161009.P10206994726343837084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111960 n + A010815 (A090506 (n + 1)).toNat

end

end A161009.P10206994726343837084

/-! ## A161009.P13160703367397866028

`A134379(n)+A014473(A187829(n+1))`
-/

namespace A161009.P13160703367397866028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134379 n + A014473 (A187829 (n + 1)).toNat

end

end A161009.P13160703367397866028

/-!
# A161010: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 14.

The programs for A161010, there is no canonical definition to state claims against.
-/

/-! ## A161010.P2476189575579280195

`A263950(eq[29, A066657(n)])`
-/

namespace A161010.P2476189575579280195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A161010.P2476189575579280195

/-!
# A161020: All the non-repdigit terms of A160818.

The programs for A161020, there is no canonical definition to state claims against.
-/

/-! ## A161020.P7814309383637756330

`∩[A160818(n+1), A276413(n+1)]`
-/

namespace A161020.P7814309383637756330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A161020.P7814309383637756330

/-! ## A161020.P16098097892996661015

`A276413(A001096(n)+1)`
-/

namespace A161020.P16098097892996661015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276413 (A001096 n + 1).toNat

end

end A161020.P16098097892996661015

/-!
# A161025: a(n) = Sum_{d|n} Moebius(n/d)*d^(b-1)/phi(n) for b = 15.

The programs for A161025, the canonical program `A161025.P16166816335795081500` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161025 has offset 1).

The definition of A161025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161025.P16166816335795081500

`A160897(n+1)*A351302(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A161025

/-- `A160897(n+1)*A351302(n+1)` -/
def P16166816335795081500.Spec : Prop :=
  ∀ n, P16166816335795081500.a n = A161025 (n + 1)

theorem P16166816335795081500.correct : P16166816335795081500.Spec := by
  intro n
  simp only [A161025, Nat.add_sub_cancel]

end A161025

/-! ## A161025.P6279486354744110662

`A069092(n+1)/A000010(n+1)*A351302(n+1)`
-/

namespace A161025.P6279486354744110662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069092 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A351302 (n + 1) : ℚ)

end

end A161025.P6279486354744110662

namespace A161025

/-- `A069092(n+1)/A000010(n+1)*A351302(n+1)` -/
def P6279486354744110662.Spec : Prop :=
  ∀ n, P6279486354744110662.a n = (A161025 (n + 1) : ℚ)

end A161025

/-! ## A161025.P5811469437024905281

`∑{d}[n+1, A034444(#)*A069092((n+1)/#)]*A160897(n+1)`
-/

namespace A161025.P5811469437024905281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A034444 d * A069092 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat) * A160897 (n + 1)

end

end A161025.P5811469437024905281

namespace A161025

/-- `∑{d}[n+1, A034444(#)*A069092((n+1)/#)]*A160897(n+1)` -/
def P5811469437024905281.Spec : Prop :=
  ∀ n, P5811469437024905281.a n = A161025 (n + 1)

end A161025

/-! ## A161025.P15867640900205930528

`∑{d}[n+1, A008683(#)*A344303((n+1)/#)]*A351302(n+1)`
-/

namespace A161025.P15867640900205930528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A008683 d * A344303 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat) * A351302 (n + 1)

end

end A161025.P15867640900205930528

namespace A161025

/-- `∑{d}[n+1, A008683(#)*A344303((n+1)/#)]*A351302(n+1)` -/
def P15867640900205930528.Spec : Prop :=
  ∀ n, P15867640900205930528.a n = A161025 (n + 1)

end A161025

/-! ## A161025.P10058230303553501799

`A001015(A003557(n+1))*A160897(n+1)*A351270(n+1)`
-/

namespace A161025.P10058230303553501799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (A003557 (n + 1)).toNat * A160897 (n + 1) * A351270 (n + 1)

end

end A161025.P10058230303553501799

namespace A161025

/-- `A001015(A003557(n+1))*A160897(n+1)*A351270(n+1)` -/
def P10058230303553501799.Spec : Prop :=
  ∀ n, P10058230303553501799.a n = A161025 (n + 1)

end A161025

/-! ## A161025.P3969468646700068088

`A263950(eq[15, A131818(n+1)])`
-/

namespace A161025.P3969468646700068088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263950 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A161025.P3969468646700068088

namespace A161025

/-- `A263950(eq[15, A131818(n+1)])` -/
def P3969468646700068088.Spec : Prop :=
  ∀ n, P3969468646700068088.a n = A161025 (n + 1)

end A161025

/-!
# A161026: Number of partitions of n into Fibonacci numbers where every part appears at least 2 times.

The programs for A161026, there is no canonical definition to state claims against.
-/

/-! ## A161026.P11745126704225297491

`A161077(abs(1-n)+1)%A088050(3*(n+1))`
-/

namespace A161026.P11745126704225297491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161077 (|1 - (n : ℤ)| + 1).toNat) (A088050 (3 * (n + 1)))

end

end A161026.P11745126704225297491

/-! ## A161026.P5321467233542774228

`A161293(n)-A185284(A091769(n))`
-/

namespace A161026.P5321467233542774228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161293 n - A185284 (A091769 n).toNat

end

end A161026.P5321467233542774228

/-! ## A161026.P11731915283600769183

`A161293(n)-A133010(A325832(n))`
-/

namespace A161026.P11731915283600769183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161293 n - A133010 (A325832 n).toNat

end

end A161026.P11731915283600769183

/-! ## A161026.P18118704387581327597

`A161293(n)-A055641(A138728(n+1))`
-/

namespace A161026.P18118704387581327597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161293 n - A055641 (A138728 (n + 1)).toNat

end

end A161026.P18118704387581327597

/-! ## A161026.P10496858857009060811

`A339220(n)-A055641(A138728(n+1))`
-/

namespace A161026.P10496858857009060811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339220 n - A055641 (A138728 (n + 1)).toNat

end

end A161026.P10496858857009060811

/-!
# A161027: Number of partitions of n into Fibonacci numbers where every part appears at least 3 times.

The programs for A161027, there is no canonical definition to state claims against.
-/

/-! ## A161027.P14771233486066247081

`∏{e}[A000079(n), A161078(#)]`
-/

namespace A161027.P14771233486066247081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A161078 (Nat.factorization (f1 n).natAbs p)

end

end A161027.P14771233486066247081

/-! ## A161027.P7694757031786519492

`A100405(n)-A044941(A192317(n))`
-/

namespace A161027.P7694757031786519492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100405 n - A044941 (A192317 n).toNat

end

end A161027.P7694757031786519492

/-! ## A161027.P16671755178699984130

`A100405(n)-A248639(A091320(n+1))`
-/

namespace A161027.P16671755178699984130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100405 n - A248639 (A091320 (n + 1)).toNat

end

end A161027.P16671755178699984130

/-! ## A161027.P11714763976581841732

`A100405(n)-A353676(A197109(n+1))`
-/

namespace A161027.P11714763976581841732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100405 n - A353676 (A197109 (n + 1)).toNat

end

end A161027.P11714763976581841732

/-!
# A161028: Number of partitions of n into Fibonacci numbers where every part appears at least 4 times.

The programs for A161028, there is no canonical definition to state claims against.
-/

/-! ## A161028.P4278049365744466034

`∏{e}[2^n, A161079(#)]`
-/

namespace A161028.P4278049365744466034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A161079 (Nat.factorization (f1 n) p)

end

end A161028.P4278049365744466034

/-! ## A161028.P17130862368507160718

`∏{e}[2^n, A161243(#)]`
-/

namespace A161028.P17130862368507160718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A161243 (Nat.factorization (f1 n) p)

end

end A161028.P17130862368507160718

/-! ## A161028.P18433779312691956295

`∏{e}[2^n, A161295(#)]`
-/

namespace A161028.P18433779312691956295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A161295 (Nat.factorization (f1 n) p)

end

end A161028.P18433779312691956295

/-! ## A161028.P17380415152576163835

`∏{e}[A000079(n), A161309(#)]`
-/

namespace A161028.P17380415152576163835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A161309 (Nat.factorization (f1 n).natAbs p)

end

end A161028.P17380415152576163835

/-! ## A161028.P13907726087316063992

`A160974(n)-A133010(A161293(n+4))`
-/

namespace A161028.P13907726087316063992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160974 n - A133010 (A161293 (n + 4)).toNat

end

end A161028.P13907726087316063992

/-!
# A161029: Number of partitions of n into positive Fibonacci numbers where every part appears at least 5 times.

The programs for A161029, there is no canonical definition to state claims against.
-/

/-! ## A161029.P3447895822116935770

`A161080(and(n, A153010(n))+1)`
-/

namespace A161029.P3447895822116935770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161080 (Int.land (n : ℤ) (A153010 n) + 1).toNat

end

end A161029.P3447895822116935770

/-! ## A161029.P16588283754729763829

`A161080(and(1, A112361(n+1))+n)`
-/

namespace A161029.P16588283754729763829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161080 (Int.land 1 (A112361 (n + 1)) + (n : ℤ)).toNat

end

end A161029.P16588283754729763829

/-! ## A161029.P1479096095247843132

`and(A161080(n+1), A211997(n+1))`
-/

namespace A161029.P1479096095247843132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A161080 (n + 1)) (A211997 (n + 1))

end

end A161029.P1479096095247843132

/-! ## A161029.P7481784443069278130

`A161080(n+1)%A325163(2*n+1)`
-/

namespace A161029.P7481784443069278130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161080 (n + 1)) (A325163 (2 * n + 1))

end

end A161029.P7481784443069278130

/-! ## A161029.P17065148209218387286

`A185284(A140995(n))+A161080(n+1)`
-/

namespace A161029.P17065148209218387286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A140995 n).toNat + A161080 (n + 1)

end

end A161029.P17065148209218387286

/-!
# A161030: Number of partitions of n into positive Fibonacci numbers where every part appears at least 6 times.

The programs for A161030, there is no canonical definition to state claims against.
-/

/-! ## A161030.P18374272703288488230

`A161081(n+1)-A161088(A194917(2*n+1))`
-/

namespace A161030.P18374272703288488230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161081 (n + 1) - A161088 (A194917 (2 * n + 1)).toNat

end

end A161030.P18374272703288488230

/-! ## A161030.P14896232296276955227

`A161081(n+1)-A185284(A161081(n+1))`
-/

namespace A161030.P14896232296276955227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161081 (n + 1) - A185284 (A161081 (n + 1)).toNat

end

end A161030.P14896232296276955227

/-! ## A161030.P17111281881790944959

`A161081(n+1)*A289508(A325683(n))`
-/

namespace A161030.P17111281881790944959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161081 (n + 1) * A289508 (A325683 n).toNat

end

end A161030.P17111281881790944959

/-! ## A161030.P17961157318412460174

`A161081(n+1)%A168219(A000009(n))`
-/

namespace A161030.P17961157318412460174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161081 (n + 1)) (A168219 (A000009 n).toNat)

end

end A161030.P17961157318412460174

/-! ## A161030.P14001492935268927136

`A161081(n+1)+A000007(A005424(n+1))`
-/

namespace A161030.P14001492935268927136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161081 (n + 1) + A000007 (A005424 (n + 1)).toNat

end

end A161030.P14001492935268927136

/-!
# A161031: Number of partitions of n into Fibonacci numbers where every part appears at least 7 times.

The programs for A161031, there is no canonical definition to state claims against.
-/

/-! ## A161031.P1739850043787678863

`A161082(n+1)+A000038(A098859(n))`
-/

namespace A161031.P1739850043787678863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161082 (n + 1) + A000038 (A098859 n).toNat

end

end A161031.P1739850043787678863

/-! ## A161031.P10773279334312960392

`A161082(n+1)%∑[A226613(A171979(n))]`
-/

namespace A161031.P10773279334312960392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226613 (A171979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161082 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A161031.P10773279334312960392

/-! ## A161031.P6226805574612313360

`A001222(A243451(n+1))*A161082(n+1)`
-/

namespace A161031.P6226805574612313360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A243451 (n + 1)).toNat * A161082 (n + 1)

end

end A161031.P6226805574612313360

/-! ## A161031.P9171799782627399545

`A161082(n+1)%A003064(n)`
-/

namespace A161031.P9171799782627399545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161082 (n + 1)) (A003064 n)

end

end A161031.P9171799782627399545

/-! ## A161031.P15036210882632497106

`A161082(A123271(n+2)²+n)`
-/

namespace A161031.P15036210882632497106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161082 (A123271 (n + 2) ^ 2 + (n : ℤ)).toNat

end

end A161031.P15036210882632497106

/-!
# A161032: Number of partitions of n into positive Fibonacci numbers where every part appears at least 8 times.

The programs for A161032, there is no canonical definition to state claims against.
-/

/-! ## A161032.P1264010804527438033

`A161083(n+1)%A265759(n+1)`
-/

namespace A161032.P1264010804527438033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161083 (n + 1)) (A265759 (n + 1))

end

end A161032.P1264010804527438033

/-! ## A161032.P14564391489581622623

`A200522(A137688(n))+A161083(n+1)`
-/

namespace A161032.P14564391489581622623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200522 (A137688 n).toNat + A161083 (n + 1)

end

end A161032.P14564391489581622623

/-! ## A161032.P4881311954423280930

`A161083(n+1)*A266314(A061885(n)²)`
-/

namespace A161032.P4881311954423280930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161083 (n + 1) * A266314 (A061885 n ^ 2).toNat

end

end A161032.P4881311954423280930

/-! ## A161032.P11226522156774506526

`A126241(A227198(n+1)+1)*A161083(n+1)`
-/

namespace A161032.P11226522156774506526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126241 (A227198 (n + 1) + 1).toNat * A161083 (n + 1)

end

end A161032.P11226522156774506526

/-! ## A161032.P9665379775892631859

`∑{d}[n+1, A161083(#)*A330055((n+1)/#-1)]`
-/

namespace A161032.P9665379775892631859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161083 d * A330055 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161032.P9665379775892631859

/-! ## A161032.P5763014464044435406

`A161083(n+1)+A000007(A016754(n))`
-/

namespace A161032.P5763014464044435406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161083 (n + 1) + A000007 (A016754 n).toNat

end

end A161032.P5763014464044435406

/-! ## A161032.P1393044950443572385

`A014963(A190909(n))*A161083(n+1)`
-/

namespace A161032.P1393044950443572385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A190909 n).toNat * A161083 (n + 1)

end

end A161032.P1393044950443572385

/-!
# A161033: Number of partitions of n into positive Fibonacci numbers where every part appears at least 9 times.

The programs for A161033, there is no canonical definition to state claims against.
-/

/-! ## A161033.P4279866819962827553

`A161084(n+1)+A008683(A284972(n+1))`
-/

namespace A161033.P4279866819962827553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161084 (n + 1) + A008683 (A284972 (n + 1)).toNat

end

end A161033.P4279866819962827553

/-! ## A161033.P2896839149554954602

`A001222(A181943(n+1))*A161084(n+1)`
-/

namespace A161033.P2896839149554954602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A181943 (n + 1)).toNat * A161084 (n + 1)

end

end A161033.P2896839149554954602

/-! ## A161033.P5543344620244311617

`A161084(n+1)*A326850(A000040(n+1))`
-/

namespace A161033.P5543344620244311617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161084 (n + 1) * A326850 (A000040 (n + 1)).toNat

end

end A161033.P5543344620244311617

/-! ## A161033.P13308706928310222756

`A161084(n+1)+A000007(4*A032926(n+1))`
-/

namespace A161033.P13308706928310222756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161084 (n + 1) + A000007 (4 * A032926 (n + 1)).toNat

end

end A161033.P13308706928310222756

/-! ## A161033.P17197243044246086557

`A161084(n+1)%A000664(n)`
-/

namespace A161033.P17197243044246086557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161084 (n + 1)) (A000664 n)

end

end A161033.P17197243044246086557

/-! ## A161033.P16949826655660585494

`A161084(n+1)%A000105(n)`
-/

namespace A161033.P16949826655660585494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161084 (n + 1)) (A000105 n)

end

end A161033.P16949826655660585494

/-! ## A161033.P4556221729020806406

`or(A025469(A161336(n)), A161084(n+1))`
-/

namespace A161033.P4556221729020806406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025469 (A161336 n).toNat) (A161084 (n + 1))

end

end A161033.P4556221729020806406

/-! ## A161033.P8467383473771625664

`∑{d}[n+1, A161084(#)*A330055((n+1)/#-1)]`
-/

namespace A161033.P8467383473771625664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161084 d * A330055 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161033.P8467383473771625664

/-! ## A161033.P5034272255870615072

`∑{d}[n+1, A161300(#)*A330055((n+1)/#-1)]`
-/

namespace A161033.P5034272255870615072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161300 d * A330055 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161033.P5034272255870615072

/-! ## A161033.P5803450648234532252

`∑{d}[n+1, A161248(#)*A369926((n+1)/#-1)]`
-/

namespace A161033.P5803450648234532252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161248 d * A369926 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161033.P5803450648234532252

/-!
# A161034: Number of partitions of n into positive Fibonacci numbers where every part appears at least 10 times.

The programs for A161034, there is no canonical definition to state claims against.
-/

/-! ## A161034.P2185734739006202653

`A161085(C(A131209(n), n))`
-/

namespace A161034.P2185734739006202653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161085 (Nat.choose (A131209 n).toNat n)

end

end A161034.P2185734739006202653

/-! ## A161034.P13531969914772266014

`A161085(gcd(n+1, A131209(n)))`
-/

namespace A161034.P13531969914772266014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161085 (Int.gcd (n + 1 : ℤ) (A131209 n))

end

end A161034.P13531969914772266014

/-! ## A161034.P14277314835344319292

`A161085(n+1)%∑[A151689(n)]`
-/

namespace A161034.P14277314835344319292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161085 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A161034.P14277314835344319292

/-! ## A161034.P5325551552502780757

`(A131209(n)-n)*A161085(n+1)`
-/

namespace A161034.P5325551552502780757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131209 n - (n : ℤ)) * A161085 (n + 1)

end

end A161034.P5325551552502780757

/-! ## A161034.P11724270490891719589

`A161085(floor(1/A151689(n)+n+1))`
-/

namespace A161034.P11724270490891719589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161085 ⌊1 / (A151689 n : ℚ) + (n + 1 : ℚ)⌋.toNat

end

end A161034.P11724270490891719589

/-! ## A161034.P4056263716934281206

`A001222(A125766(n+1))*A161085(n+1)`
-/

namespace A161034.P4056263716934281206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A125766 (n + 1)).toNat * A161085 (n + 1)

end

end A161034.P4056263716934281206

/-! ## A161034.P955747091995423590

`A161085(n+1)%A000664(n)`
-/

namespace A161034.P955747091995423590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161085 (n + 1)) (A000664 n)

end

end A161034.P955747091995423590

/-! ## A161034.P17350777892153501589

`A161085(n+1)%A000105(n)`
-/

namespace A161034.P17350777892153501589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161085 (n + 1)) (A000105 n)

end

end A161034.P17350777892153501589

/-! ## A161034.P2897513901868837698

`A161085(n+1)^A014963(A043439(n+1))`
-/

namespace A161034.P2897513901868837698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161085 (n + 1) : ℚ) ^ (A014963 (A043439 (n + 1)).toNat : ℤ)

end

end A161034.P2897513901868837698

/-!
# A161035: Number of partitions of n into Fibonacci numbers where every part appears at least 11 times.

The programs for A161035, there is no canonical definition to state claims against.
-/

/-! ## A161035.P15947773140948656983

`A161086(n+1)%A085489(n)`
-/

namespace A161035.P15947773140948656983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161086 (n + 1)) (A085489 n)

end

end A161035.P15947773140948656983

/-! ## A161035.P6528836695468871108

`A161086(n+1)+A003982(A269717(n))`
-/

namespace A161035.P6528836695468871108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161086 (n + 1) + A003982 (A269717 n).toNat

end

end A161035.P6528836695468871108

/-! ## A161035.P2097847275259688060

`A161086(n+1)+A000007(A003238(n+1))`
-/

namespace A161035.P2097847275259688060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161086 (n + 1) + A000007 (A003238 (n + 1)).toNat

end

end A161035.P2097847275259688060

/-! ## A161035.P8687418884176251831

`C(A161086(n+1), A046951(A140616(n+5)))`
-/

namespace A161035.P8687418884176251831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A161086 (n + 1)).toNat (A046951 (A140616 (n + 5)).toNat).toNat

end

end A161035.P8687418884176251831

/-! ## A161035.P4471860811406113300

`A161086(n+1)/(A358233(A269717(n)+1)+1)`
-/

namespace A161035.P4471860811406113300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161086 (n + 1) : ℚ) / (A358233 (A269717 n + 1).toNat + 1 : ℚ)

end

end A161035.P4471860811406113300

/-! ## A161035.P13029207362736051303

`A001222(A161118(n+1))*A161086(n+1)`
-/

namespace A161035.P13029207362736051303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A161118 (n + 1)).toNat * A161086 (n + 1)

end

end A161035.P13029207362736051303

/-! ## A161035.P6084594979014395455

`A353475(A031175(n+1))+A161086(n+1)`
-/

namespace A161035.P6084594979014395455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353475 (A031175 (n + 1)).toNat + A161086 (n + 1)

end

end A161035.P6084594979014395455

/-! ## A161035.P13235575012540980878

`C(A161086(n+1), A078572(A161103(2*n+5)))`
-/

namespace A161035.P13235575012540980878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A161086 (n + 1)).toNat (A078572 (A161103 (2 * n + 5)).toNat).toNat

end

end A161035.P13235575012540980878

/-! ## A161035.P14238434292886851389

`A161086(n+1)%A000664(n)`
-/

namespace A161035.P14238434292886851389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161086 (n + 1)) (A000664 n)

end

end A161035.P14238434292886851389

/-! ## A161035.P9458576213065588682

`A161302(n+1)%A000664(n)`
-/

namespace A161035.P9458576213065588682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161302 (n + 1)) (A000664 n)

end

end A161035.P9458576213065588682

/-!
# A161036: Number of partitions of n into Fibonacci numbers where every part appears at least 12 times.

The programs for A161036, there is no canonical definition to state claims against.
-/

/-! ## A161036.P15148465110427652607

`A161087(n+1)%A280951(n)`
-/

namespace A161036.P15148465110427652607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161087 (n + 1)) (A280951 n)

end

end A161036.P15148465110427652607

/-! ## A161036.P9821920623607812320

`A161087(n+1)+val(∏{p}[A332015(n), #], 10)`
-/

namespace A161036.P9821920623607812320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161087 (n + 1) + (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) 10 : ℤ)

end

end A161036.P9821920623607812320

/-! ## A161036.P2587451393229901067

`A161087(1+n)+A000007(A054142(n))`
-/

namespace A161036.P2587451393229901067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161087 (1 + n) + A000007 (A054142 n).toNat

end

end A161036.P2587451393229901067

/-! ## A161036.P1019261221313417858

`A161087(n+1)*A269626(A332015(n))`
-/

namespace A161036.P1019261221313417858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161087 (n + 1) * A269626 (A332015 n).toNat

end

end A161036.P1019261221313417858

/-! ## A161036.P8797933812472617744

`gcd(A161087(n+1), A309395(A109128(n)))`
-/

namespace A161036.P8797933812472617744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A161087 (n + 1)) (A309395 (A109128 n).toNat)

end

end A161036.P8797933812472617744

/-! ## A161036.P4780612064064570842

`A161087(n+1)+A000038(A001157(n+1))`
-/

namespace A161036.P4780612064064570842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161087 (n + 1) + A000038 (A001157 (n + 1)).toNat

end

end A161036.P4780612064064570842

/-! ## A161036.P12602585474942137167

`A161087(n+1)+A000038(A046400(n+1))`
-/

namespace A161036.P12602585474942137167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161087 (n + 1) + A000038 (A046400 (n + 1)).toNat

end

end A161036.P12602585474942137167

/-! ## A161036.P17287792743343189142

`A001222(A248576(n+1))*A161087(n+1)`
-/

namespace A161036.P17287792743343189142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A248576 (n + 1)).toNat * A161087 (n + 1)

end

end A161036.P17287792743343189142

/-! ## A161036.P12075625160121476456

`A000189(A332015(n)²+1)*A161087(n+1)`
-/

namespace A161036.P12075625160121476456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (A332015 n ^ 2 + 1).toNat * A161087 (n + 1)

end

end A161036.P12075625160121476456

/-! ## A161036.P12149396708434015758

`A161087(n+1)%A000105(n)`
-/

namespace A161036.P12149396708434015758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161087 (n + 1)) (A000105 n)

end

end A161036.P12149396708434015758

/-!
# A161037: Number of partitions of n into Fibonacci numbers where every part appears at least 13 times.

The programs for A161037, there is no canonical definition to state claims against.
-/

/-! ## A161037.P14339571276189897191

`A089854(A089854(A161088(n+1)))`
-/

namespace A161037.P14339571276189897191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089854 (A089854 (A161088 (n + 1)).toNat).toNat

end

end A161037.P14339571276189897191

/-! ## A161037.P6735248849885980629

`A161088(n+1)+A000007(A067979(n))`
-/

namespace A161037.P6735248849885980629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161088 (n + 1) + A000007 (A067979 n).toNat

end

end A161037.P6735248849885980629

/-! ## A161037.P3117083932560017588

`A161088(A178334(A339399(n+1))+n)`
-/

namespace A161037.P3117083932560017588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161088 (A178334 (A339399 (n + 1)).toNat + (n : ℤ)).toNat

end

end A161037.P3117083932560017588

/-! ## A161037.P12477760176974824080

`A014577(A160079(n)²)*A161088(n+1)`
-/

namespace A161037.P12477760176974824080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (A160079 n ^ 2).toNat * A161088 (n + 1)

end

end A161037.P12477760176974824080

/-! ## A161037.P8763403030364380152

`A161088(n+1)-A161038(A339399(n+1))`
-/

namespace A161037.P8763403030364380152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161088 (n + 1) - A161038 (A339399 (n + 1)).toNat

end

end A161037.P8763403030364380152

/-! ## A161037.P636930205226613211

`A161088(n+1)^A014963(A062974(n+1))`
-/

namespace A161037.P636930205226613211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161088 (n + 1) : ℚ) ^ (A014963 (A062974 (n + 1)).toNat : ℤ)

end

end A161037.P636930205226613211

/-! ## A161037.P18334685749811143345

`A161088(n+1)%A003256(A067979(n)+1)`
-/

namespace A161037.P18334685749811143345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161088 (n + 1)) (A003256 (A067979 n + 1).toNat)

end

end A161037.P18334685749811143345

/-! ## A161037.P8459140768807105155

`A161088(n+1)%A031926(A250662(n))`
-/

namespace A161037.P8459140768807105155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161088 (n + 1)) (A031926 (A250662 n).toNat)

end

end A161037.P8459140768807105155

/-! ## A161037.P6294027170512210850

`A065882(A062312(n+1))*A161088(n+1)`
-/

namespace A161037.P6294027170512210850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065882 (A062312 (n + 1)).toNat * A161088 (n + 1)

end

end A161037.P6294027170512210850

/-! ## A161037.P6195718932726859366

`A161304(n+1)*A264981(A264973(n))`
-/

namespace A161037.P6195718932726859366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161304 (n + 1) * A264981 (A264973 n).toNat

end

end A161037.P6195718932726859366

/-!
# A161038: Number of partitions of n into Fibonacci numbers where every part appears at least 14 times.

The programs for A161038, there is no canonical definition to state claims against.
-/

/-! ## A161038.P8161507830452520923

`A161089(n+1)%A085900(n)`
-/

namespace A161038.P8161507830452520923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161089 (n + 1)) (A085900 n)

end

end A161038.P8161507830452520923

/-! ## A161038.P13427028852640517718

`A161089(A218245(n+1)+n+1)`
-/

namespace A161038.P13427028852640517718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161089 (A218245 (n + 1) + (n + 1 : ℤ)).toNat

end

end A161038.P13427028852640517718

/-! ## A161038.P12742497076562913717

`A161089(n+1)+A000038(A028314(n))`
-/

namespace A161038.P12742497076562913717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161089 (n + 1) + A000038 (A028314 n).toNat

end

end A161038.P12742497076562913717

/-! ## A161038.P8946005705077696885

`A161089(n+1)+A067159(A067169(n))`
-/

namespace A161038.P8946005705077696885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161089 (n + 1) + A067159 ((A067169 (n + 11)).toNat + 12)

end

end A161038.P8946005705077696885

/-! ## A161038.P4106900540839901494

`A161089(n+1)+A000038(A333483(n))`
-/

namespace A161038.P4106900540839901494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161089 (n + 1) + A000038 (A333483 n).toNat

end

end A161038.P4106900540839901494

/-! ## A161038.P466686024104465981

`A161089(n+1)+A000038(A304221(n+1))`
-/

namespace A161038.P466686024104465981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161089 (n + 1) + A000038 (A304221 (n + 1)).toNat

end

end A161038.P466686024104465981

/-! ## A161038.P1473489725671164129

`A161089(A069782(n+1))%A008619(A104675(n))`
-/

namespace A161038.P1473489725671164129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161089 (A069782 (n + 1)).toNat) (A008619 (A104675 n).toNat)

end

end A161038.P1473489725671164129

/-!
# A161039: Number of partitions of n into odd numbers where every part appears at least 3 times.

The programs for A161039, there is no canonical definition to state claims against.
-/

/-! ## A161039.P11920227492174656433

`A185284(A069011(n))+A161104(n+1)`
-/

namespace A161039.P11920227492174656433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A069011 n).toNat + A161104 (n + 1)

end

end A161039.P11920227492174656433

/-! ## A161039.P10750729932418790132

`A267528(A161065(n+1))%A008619(A034297(n))`
-/

namespace A161039.P10750729932418790132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267528 (A161065 (n + 1)).toNat) (A008619 (A034297 n).toNat)

end

end A161039.P10750729932418790132

/-!
# A161041: Number of partitions of n into odd numbers where every part appears at least 5 times.

The programs for A161041, there is no canonical definition to state claims against.
-/

/-! ## A161041.P9274866942441790456

`∑{d}[n+1, A161067(#)*A268814((n+1)/#-1)]`
-/

namespace A161041.P9274866942441790456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161067 d * A268814 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161041.P9274866942441790456

/-! ## A161041.P7724634048875584492

`∑{d}[n+1, A161106(#)*A268814((n+1)/#-1)]`
-/

namespace A161041.P7724634048875584492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161106 d * A268814 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161041.P7724634048875584492

/-! ## A161041.P13971836908451301433

`∑{d}[n+1, A161067(#)*A324011((n+1)/#-1)]`
-/

namespace A161041.P13971836908451301433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161067 d * A324011 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161041.P13971836908451301433

/-! ## A161041.P9442992219219524399

`∑{d}[n+1, A161106(#)*A324011((n+1)/#-1)]`
-/

namespace A161041.P9442992219219524399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161106 d * A324011 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161041.P9442992219219524399

/-! ## A161041.P12562501146965629360

`A161106(n+1)%eq[1, A161110(n+1)]`
-/

namespace A161041.P12562501146965629360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161106 (n + 1)) (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A161041.P12562501146965629360

/-!
# A161042: Number of partitions of n into odd numbers where every part appears at least 6 times.

The programs for A161042, there is no canonical definition to state claims against.
-/

/-! ## A161042.P17369372972065653961

`A004271(A161068(n+1)%A118039(n))`
-/

namespace A161042.P17369372972065653961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (Int.tmod (A161068 (n + 1)) (A118039 n)).toNat

end

end A161042.P17369372972065653961

/-! ## A161042.P13588323797415613133

`A004271(A161107(n+1)%A118039(n))`
-/

namespace A161042.P13588323797415613133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 (Int.tmod (A161107 (n + 1)) (A118039 n)).toNat

end

end A161042.P13588323797415613133

/-! ## A161042.P14989687462092248259

`A130945(A161068(n+1))%A173061(n)`
-/

namespace A161042.P14989687462092248259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130945 (A161068 (n + 1)).toNat) (A173061 n)

end

end A161042.P14989687462092248259

/-! ## A161042.P6243729763409234264

`A057164(A161107(n+1))+A000007(A087867(n+1))`
-/

namespace A161042.P6243729763409234264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A161107 (n + 1)).toNat + A000007 (A087867 (n + 1)).toNat

end

end A161042.P6243729763409234264

/-! ## A161042.P13763328306549908448

`and(A161068(n+1), A356877(n))`
-/

namespace A161042.P13763328306549908448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A161068 (n + 1)) (A356877 n)

end

end A161042.P13763328306549908448

/-!
# A161043: Number of partitions of n into odd numbers where every part appears at least 7 times.

The programs for A161043, there is no canonical definition to state claims against.
-/

/-! ## A161043.P8006896755904894292

`A161069(n+1)+A185284(n)%A010263(n)`
-/

namespace A161043.P8006896755904894292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161069 (n + 1) + Int.tmod (A185284 n) (A010263 n)

end

end A161043.P8006896755904894292

/-! ## A161043.P1004364054497700763

`or(A161069(n+1), A185284(A297876(n+1)))`
-/

namespace A161043.P1004364054497700763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A161069 (n + 1)) (A185284 (A297876 (n + 1)).toNat)

end

end A161043.P1004364054497700763

/-! ## A161043.P1306090993884660265

`or(A161108(n+1), A185284(A297876(n+1)))`
-/

namespace A161043.P1306090993884660265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A161108 (n + 1)) (A185284 (A297876 (n + 1)).toNat)

end

end A161043.P1306090993884660265

/-! ## A161043.P13044704691581477349

`A161069(n+1)+A185284(A297876(n+1))*A185284(n)`
-/

namespace A161043.P13044704691581477349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161069 (n + 1) + A185284 (A297876 (n + 1)).toNat * A185284 n

end

end A161043.P13044704691581477349

/-! ## A161043.P5516862969500158096

`A161108(n+1)+A185284(A297876(n+1))*A185284(n)`
-/

namespace A161043.P5516862969500158096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161108 (n + 1) + A185284 (A297876 (n + 1)).toNat * A185284 n

end

end A161043.P5516862969500158096

/-!
# A161044: Number of partitions of n into odd numbers where every part appears at least 8 times.

The programs for A161044, there is no canonical definition to state claims against.
-/

/-! ## A161044.P15508160225936810399

`∑{d}[n+1, A161109(#)*A324012((n+1)/#-1)]`
-/

namespace A161044.P15508160225936810399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161109 d * A324012 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161044.P15508160225936810399

/-! ## A161044.P16040140992941448396

`A322996(A185245(n))+A161070(n+1)`
-/

namespace A161044.P16040140992941448396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322996 (A185245 n).toNat + A161070 (n + 1)

end

end A161044.P16040140992941448396

/-! ## A161044.P18321071182829596157

`A322996(A185245(n))+A161109(n+1)`
-/

namespace A161044.P18321071182829596157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322996 (A185245 n).toNat + A161109 (n + 1)

end

end A161044.P18321071182829596157

/-! ## A161044.P10580103779551166224

`A161070(∑[A185245(n)!])`
-/

namespace A161044.P10580103779551166224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A185245 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161070 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A161044.P10580103779551166224

/-! ## A161044.P3772212281111701847

`A161109(∑[A185245(n)!])`
-/

namespace A161044.P3772212281111701847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A185245 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161109 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A161044.P3772212281111701847

/-!
# A161045: Number of partitions of n into odd numbers where every part appears at least 9 times.

The programs for A161045, there is no canonical definition to state claims against.
-/

/-! ## A161045.P16816771190392737863

`∑{d}[n+1, A161071(#)*A330054((n+1)/#-1)]`
-/

namespace A161045.P16816771190392737863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161071 d * A330054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161045.P16816771190392737863

/-! ## A161045.P4233108960075847419

`∑{d}[n+1, A161110(#)*A330054((n+1)/#-1)]`
-/

namespace A161045.P4233108960075847419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161110 d * A330054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161045.P4233108960075847419

/-! ## A161045.P14774082606385906088

`∑{d}[n+1, A161071(#)*A369926((n+1)/#-1)]`
-/

namespace A161045.P14774082606385906088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161071 d * A369926 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161045.P14774082606385906088

/-! ## A161045.P5327101929073908058

`∑{d}[n+1, A161110(#)*A369926((n+1)/#-1)]`
-/

namespace A161045.P5327101929073908058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161110 d * A369926 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161045.P5327101929073908058

/-! ## A161045.P8053813276890012010

`A186745(A185305(n+1))+A161071(n+1)`
-/

namespace A161045.P8053813276890012010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186745 (A185305 (n + 1)).toNat + A161071 (n + 1)

end

end A161045.P8053813276890012010

/-!
# A161046: Number of partitions of n into odd numbers where every part appears at least 10 times.

The programs for A161046, there is no canonical definition to state claims against.
-/

/-! ## A161046.P6886954087595237116

`A161072(lt[A161104(n+1), n+2]+1)`
-/

namespace A161046.P6886954087595237116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161104 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161072 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A161046.P6886954087595237116

/-! ## A161046.P10912626607890912297

`∑{d}[n+1, A161072(#)*A330054((n+1)/#-1)]`
-/

namespace A161046.P10912626607890912297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161072 d * A330054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161046.P10912626607890912297

/-! ## A161046.P10513442390603540513

`∑{d}[n+1, A161111(#)*A330054((n+1)/#-1)]`
-/

namespace A161046.P10513442390603540513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161111 d * A330054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161046.P10513442390603540513

/-! ## A161046.P6767520808490893898

`∑{d}[n+1, A161072(#)*A369926((n+1)/#-1)]`
-/

namespace A161046.P6767520808490893898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161072 d * A369926 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161046.P6767520808490893898

/-! ## A161046.P17637119685084220665

`∑{d}[n+1, A161111(#)*A369926((n+1)/#-1)]`
-/

namespace A161046.P17637119685084220665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161111 d * A369926 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161046.P17637119685084220665

/-! ## A161046.P1809638146105950526

`A161111(n+1)+A055641(A254766(n+1))`
-/

namespace A161046.P1809638146105950526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161111 (n + 1) + A055641 (A254766 (n + 1)).toNat

end

end A161046.P1809638146105950526

/-!
# A161047: Number of partitions of n into odd numbers where every part appears at least 11 times.

The programs for A161047, there is no canonical definition to state claims against.
-/

/-! ## A161047.P1042417239137666155

`A161073(n+1)%A104380(n)`
-/

namespace A161047.P1042417239137666155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161073 (n + 1)) (A104380 n)

end

end A161047.P1042417239137666155

/-! ## A161047.P10176698248473118970

`A161112(n+1)%A104380(n)`
-/

namespace A161047.P10176698248473118970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161112 (n + 1)) (A104380 n)

end

end A161047.P10176698248473118970

/-! ## A161047.P7027795184523145506

`A161073(n+1)^Δ[A102236(n)]`
-/

namespace A161047.P7027795184523145506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102236 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161073 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A161047.P7027795184523145506

/-! ## A161047.P11823252681061646212

`A161112(n+1)^Δ[A102236(n)]`
-/

namespace A161047.P11823252681061646212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102236 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161112 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A161047.P11823252681061646212

/-! ## A161047.P15414550126583105663

`A161112(n+1)^A014963(n²+1)`
-/

namespace A161047.P15414550126583105663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161112 (n + 1) : ℚ) ^ (A014963 (n ^ 2 + 1) : ℤ)

end

end A161047.P15414550126583105663

/-! ## A161047.P10797463459040652692

`A161073(n+1)^A014963(A002522(n))`
-/

namespace A161047.P10797463459040652692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161073 (n + 1) : ℚ) ^ (A014963 (A002522 n).toNat : ℤ)

end

end A161047.P10797463459040652692

/-! ## A161047.P8137402995624802127

`A161073(n+1)^A014963(A008009(n))`
-/

namespace A161047.P8137402995624802127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161073 (n + 1) : ℚ) ^ (A014963 (A008009 n).toNat : ℤ)

end

end A161047.P8137402995624802127

/-! ## A161047.P17032412770634638440

`A161073(and(1, A045535(n))+n)`
-/

namespace A161047.P17032412770634638440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161073 (Int.land 1 (A045535 n) + (n : ℤ)).toNat

end

end A161047.P17032412770634638440

/-! ## A161047.P3435705783978435425

`A161112(and(1, A045535(n))+n)`
-/

namespace A161047.P3435705783978435425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161112 (Int.land 1 (A045535 n) + (n : ℤ)).toNat

end

end A161047.P3435705783978435425

/-! ## A161047.P10248426083460746892

`∑{d}[n+1, A161073(#)*A330054((n+1)/#-1)]`
-/

namespace A161047.P10248426083460746892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161073 d * A330054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161047.P10248426083460746892

/-!
# A161048: Number of partitions of n into odd numbers where every part appears at least 12 times.

The programs for A161048, there is no canonical definition to state claims against.
-/

/-! ## A161048.P14935963764945948149

`A085170(A161113(n+1)%A151728(n))`
-/

namespace A161048.P14935963764945948149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085170 (Int.tmod (A161113 (n + 1)) (A151728 n)).toNat

end

end A161048.P14935963764945948149

/-! ## A161048.P14067667404345524046

`A122350(A161074(n+1)%A151728(n))`
-/

namespace A161048.P14067667404345524046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122350 (Int.tmod (A161074 (n + 1)) (A151728 n)).toNat

end

end A161048.P14067667404345524046

/-! ## A161048.P7845185587333957872

`A122350(A161074(n+1))%A330318(n)`
-/

namespace A161048.P7845185587333957872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122350 (A161074 (n + 1)).toNat) (A330318 n)

end

end A161048.P7845185587333957872

/-! ## A161048.P6595127690631421653

`A122350(A161113(n+1))%A330318(n)`
-/

namespace A161048.P6595127690631421653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122350 (A161113 (n + 1)).toNat) (A330318 n)

end

end A161048.P6595127690631421653

/-! ## A161048.P17630940812848639887

`A122350(A161074(n+1))^Δ[A004758(n+1)]`
-/

namespace A161048.P17630940812848639887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004758 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122350 (A161074 (n + 1)).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A161048.P17630940812848639887

/-! ## A161048.P7622860090148826877

`∑{d}[n+1, A057405(#-1)*A161074((n+1)/#)]`
-/

namespace A161048.P7622860090148826877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057405 (d - 1) * A161074 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A161048.P7622860090148826877

/-! ## A161048.P6495509743699630055

`∑{d}[n+1, A057405(#-1)*A161113((n+1)/#)]`
-/

namespace A161048.P6495509743699630055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057405 (d - 1) * A161113 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A161048.P6495509743699630055

/-! ## A161048.P1123767791099960246

`∑{d}[n+1, A057402(#-1)*A161074((n+1)/#)]`
-/

namespace A161048.P1123767791099960246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057402 (d - 1) * A161074 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A161048.P1123767791099960246

/-! ## A161048.P12915397381413655817

`∑{d}[n+1, A057402(#-1)*A161113((n+1)/#)]`
-/

namespace A161048.P12915397381413655817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057402 (d - 1) * A161113 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A161048.P12915397381413655817

/-! ## A161048.P13349645928966235956

`and(A045535(n), A161074(n+1))`
-/

namespace A161048.P13349645928966235956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045535 n) (A161074 (n + 1))

end

end A161048.P13349645928966235956

/-!
# A161049: Number of partitions of n into odd numbers where every part appears at least 13 times.

The programs for A161049, there is no canonical definition to state claims against.
-/

/-! ## A161049.P313492634769996173

`A161075(n+1)^A037213(n)!`
-/

namespace A161049.P313492634769996173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161075 (n + 1) ^ Nat.factorial (A037213 n).toNat

end

end A161049.P313492634769996173

/-! ## A161049.P13537273216657051102

`A161114(1+n)^A037213(n)!`
-/

namespace A161049.P13537273216657051102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161114 (1 + n) ^ Nat.factorial (A037213 n).toNat

end

end A161049.P13537273216657051102

/-! ## A161049.P14540068396502334519

`A161075(n+1)^A056926(n)!`
-/

namespace A161049.P14540068396502334519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161075 (n + 1) ^ Nat.factorial (A056926 n).toNat

end

end A161049.P14540068396502334519

/-! ## A161049.P5361114708726294323

`A161114(n+1)^A056926(n)!`
-/

namespace A161049.P5361114708726294323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161114 (n + 1) ^ Nat.factorial (A056926 n).toNat

end

end A161049.P5361114708726294323

/-! ## A161049.P16556971854536654903

`A161075(n+1)^A014963(∑[∏{e}[n, #+1]])`
-/

namespace A161049.P16556971854536654903
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161075 (n + 1) : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A161049.P16556971854536654903

/-! ## A161049.P4734712213694712782

`A161075(n+1)^A000108(n^(char[n²]/2))`
-/

namespace A161049.P4734712213694712782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161075 (n + 1) : ℚ) ^ (A000108 (SequenceMachineLib.roundAway ((n : ℝ) ^ (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) / 2 : ℝ))).toNat : ℤ)

end

end A161049.P4734712213694712782

/-! ## A161049.P14802139069928799051

`∑{d}[n+1, A057378(#-1)*A161075((n+1)/#)]`
-/

namespace A161049.P14802139069928799051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057378 (d - 1) * A161075 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A161049.P14802139069928799051

/-! ## A161049.P7828115314953189793

`∑{d}[n+1, A057381(#-1)*A161075((n+1)/#)]`
-/

namespace A161049.P7828115314953189793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057381 (d - 1) * A161075 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A161049.P7828115314953189793

/-! ## A161049.P2056434828990778295

`∑{d}[n+1, A057378(#-1)*A161114((n+1)/#)]`
-/

namespace A161049.P2056434828990778295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057378 (d - 1) * A161114 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A161049.P2056434828990778295

/-! ## A161049.P5775958395982048609

`∑{d}[n+1, A057381(#-1)*A161114((n+1)/#)]`
-/

namespace A161049.P5775958395982048609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057381 (d - 1) * A161114 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A161049.P5775958395982048609

/-!
# A161050: Number of partitions of n into odd numbers where every part appears at least 14 times.

The programs for A161050, there is no canonical definition to state claims against.
-/

/-! ## A161050.P13362182009655377597

`A161076(C(A131209(n), n))`
-/

namespace A161050.P13362182009655377597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161076 (Nat.choose (A131209 n).toNat n)

end

end A161050.P13362182009655377597

/-! ## A161050.P3459461441634253149

`A161115(C(A131209(n), n))`
-/

namespace A161050.P3459461441634253149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161115 (Nat.choose (A131209 n).toNat n)

end

end A161050.P3459461441634253149

/-! ## A161050.P9594941647409149195

`A161115(n+1)%A074338(n+1)`
-/

namespace A161050.P9594941647409149195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161115 (n + 1)) (A074338 (n + 1))

end

end A161050.P9594941647409149195

/-! ## A161050.P17322699169677133703

`(A131209(n)-n)*A161076(n+1)`
-/

namespace A161050.P17322699169677133703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131209 n - (n : ℤ)) * A161076 (n + 1)

end

end A161050.P17322699169677133703

/-! ## A161050.P7917662499643740989

`(A131209(n)-n)*A161115(n+1)`
-/

namespace A161050.P7917662499643740989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131209 n - (n : ℤ)) * A161115 (n + 1)

end

end A161050.P7917662499643740989

/-! ## A161050.P11469072025965515791

`A161115(n+1)^A007318(C(n+1, 69))`
-/

namespace A161050.P11469072025965515791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161115 (n + 1) : ℚ) ^ (A007318 (Nat.choose (n + 1) 69) : ℤ)

end

end A161050.P11469072025965515791

/-! ## A161050.P17013114480741273942

`A161115(n+1)^A014963(A313801(n))`
-/

namespace A161050.P17013114480741273942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161115 (n + 1) : ℚ) ^ (A014963 (A313801 n).toNat : ℤ)

end

end A161050.P17013114480741273942

/-! ## A161050.P3125364563006344505

`∑{d}[n+1, A057401(#-1)*A161076((n+1)/#)]`
-/

namespace A161050.P3125364563006344505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057401 (d - 1) * A161076 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A161050.P3125364563006344505

/-! ## A161050.P14288070466537617530

`∑{d}[n+1, A057401(#-1)*A161115((n+1)/#)]`
-/

namespace A161050.P14288070466537617530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057401 (d - 1) * A161115 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A161050.P14288070466537617530

/-! ## A161050.P15430612309030241205

`∑{d}[n+1, A057381(#-1)*A161076((n+1)/#)]`
-/

namespace A161050.P15430612309030241205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057381 (d - 1) * A161076 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A161050.P15430612309030241205

/-!
# A161051: Number of partitions of 2n into powers of two where every part appears at least twice.

The programs for A161051, the canonical program `A161051.P17687368643804515329` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A161051 has offset 1).

The definition of A161051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A161051.P17687368643804515329

`Δ[a(n-1)+a(A113497(n)%n)]` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A161051

/-- `Δ[a(n-1)+a(A113497(n)%n)]` -/
def P17687368643804515329.Spec : Prop :=
  ∀ n, P17687368643804515329.a n = A161051 (n + 1)

theorem P17687368643804515329.correct : P17687368643804515329.Spec := by
  intro n
  simp only [A161051, Nat.add_sub_cancel]

end A161051

/-! ## A161051.P6490506200187539159

`Δ[A018819(n)+a(n-3)]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A161051.P6490506200187539159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  A018819 n + f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161051.P6490506200187539159

namespace A161051

/-- `Δ[A018819(n)+a(n-3)]` -/
def P6490506200187539159.Spec : Prop :=
  ∀ n, P6490506200187539159.a n = A161051 (n + 1)

end A161051

/-! ## A161051.P5819639769750201786

`Δ[a(n-1)+a(A028242(n)-1)]` with `a(0)=1, a(1)=1`
-/

namespace A161051.P5819639769750201786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + f1 (A028242 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A161051.P5819639769750201786

namespace A161051

/-- `Δ[a(n-1)+a(A028242(n)-1)]` -/
def P5819639769750201786.Spec : Prop :=
  ∀ n, P5819639769750201786.a n = A161051 (n + 1)

end A161051

/-! ## A161051.P10521326560059565396

`Δ[a(n-1)+a(n-A030451(n))]` with `a(0)=1, a(1)=1`
-/

namespace A161051.P10521326560059565396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + f1 ((n : ℤ) - A030451 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A161051.P10521326560059565396

namespace A161051

/-- `Δ[a(n-1)+a(n-A030451(n))]` -/
def P10521326560059565396.Spec : Prop :=
  ∀ n, P10521326560059565396.a n = A161051 (n + 1)

end A161051

/-! ## A161051.P13650027135677417720

`A018819(n+1)-(a(n-2)+a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A161051.P13650027135677417720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A018819 (n + 1) - (a (n - 2) + a (n - 1))

end

end A161051.P13650027135677417720

namespace A161051

/-- `A018819(n+1)-(a(n-2)+a(n-1))` -/
def P13650027135677417720.Spec : Prop :=
  ∀ n, P13650027135677417720.a n = A161051 (n + 1)

end A161051

/-! ## A161051.P12705277128822407892

`Δ[A339277(n)]`
-/

namespace A161051.P12705277128822407892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A161051.P12705277128822407892

namespace A161051

/-- `Δ[A339277(n)]` -/
def P12705277128822407892.Spec : Prop :=
  ∀ n, P12705277128822407892.a n = A161051 (n + 1)

end A161051

/-! ## A161051.P6009933751595983000

`A339277(n+1)-A339277(n)`
-/

namespace A161051.P6009933751595983000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339277 (n + 1) - A339277 n

end

end A161051.P6009933751595983000

namespace A161051

/-- `A339277(n+1)-A339277(n)` -/
def P6009933751595983000.Spec : Prop :=
  ∀ n, P6009933751595983000.a n = A161051 (n + 1)

end A161051

/-! ## A161051.P889514615174277920

`record[A339277(A142150(n))]-A339277(n)`
-/

namespace A161051.P889514615174277920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339277 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A339277 n

end

end A161051.P889514615174277920

namespace A161051

/-- `record[A339277(A142150(n))]-A339277(n)` -/
def P889514615174277920.Spec : Prop :=
  ∀ n, P889514615174277920.a n = A161051 (n + 1)

end A161051

/-!
# A161052: Number of partitions of n into powers of two where every part appears at least 3 times.

The programs for A161052, there is no canonical definition to state claims against.
-/

/-! ## A161052.P17690873529245882462

`A178798(A337983(n))+A161256(n+1)`
-/

namespace A161052.P17690873529245882462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A337983 n).toNat + A161256 (n + 1)

end

end A161052.P17690873529245882462

/-! ## A161052.P16466210625838381284

`A161256(n+1)-A025469(A303851(n))`
-/

namespace A161052.P16466210625838381284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161256 (n + 1) - A025469 (A303851 n).toNat

end

end A161052.P16466210625838381284

/-! ## A161052.P2860132447659229782

`A057427(A035597(n))*A161256(n+1)`
-/

namespace A161052.P2860132447659229782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A035597 n).toNat * A161256 (n + 1)

end

end A161052.P2860132447659229782

/-! ## A161052.P4474596366774064440

`or(A025469(A195327(n+1)), A161256(n+1))`
-/

namespace A161052.P4474596366774064440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025469 (A195327 (n + 1)).toNat) (A161256 (n + 1))

end

end A161052.P4474596366774064440

/-! ## A161052.P12121763665168331675

`or(A025469(A057326(3*(n+1))), A161256(n+1))`
-/

namespace A161052.P12121763665168331675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025469 (A057326 (3 * (n + 1))).toNat) (A161256 (n + 1))

end

end A161052.P12121763665168331675

/-!
# A161053: Number of partitions of n into powers of two where every part appears at least 4 times.

The programs for A161053, there is no canonical definition to state claims against.
-/

/-! ## A161053.P3548277517613614667

`A161257(n+1)-A073490(A234517(n+1))`
-/

namespace A161053.P3548277517613614667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161257 (n + 1) - A073490 (A234517 (n + 1)).toNat

end

end A161053.P3548277517613614667

/-! ## A161053.P12406480996553903925

`A001222(2^A161257(n+1))`
-/

namespace A161053.P12406480996553903925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A161257 (n + 1) : ℤ))).toNat

end

end A161053.P12406480996553903925

/-! ## A161053.P5675298361044626070

`A007814(2^A161257(n+1))`
-/

namespace A161053.P5675298361044626070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A161257 (n + 1) : ℤ))).toNat

end

end A161053.P5675298361044626070

/-! ## A161053.P9118507234907177759

`A029837(2^A161257(n+1))`
-/

namespace A161053.P9118507234907177759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A161257 (n + 1) : ℤ))).toNat

end

end A161053.P9118507234907177759

/-! ## A161053.P5176729674922825596

`A161257(n+1)%Δ[A229596(n)]`
-/

namespace A161053.P5176729674922825596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161257 (n + 1)) (f1 (n + 1) - f1 n)

end

end A161053.P5176729674922825596

/-!
# A161054: Number of partitions of n into powers of two where every part appears at least 5 times.

The programs for A161054, there is no canonical definition to state claims against.
-/

/-! ## A161054.P14607976469897464249

`A161258(n+1)-A086483(A184946(n))`
-/

namespace A161054.P14607976469897464249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161258 (n + 1) - A086483 (A184946 n).toNat

end

end A161054.P14607976469897464249

/-! ## A161054.P2316914072094829538

`A161258(n+1)-A238469(A141214(n))`
-/

namespace A161054.P2316914072094829538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161258 (n + 1) - A238469 (A141214 n).toNat

end

end A161054.P2316914072094829538

/-! ## A161054.P12042736723177102102

`A161258(n+1)+A238469(6*A141214(n))`
-/

namespace A161054.P12042736723177102102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161258 (n + 1) + A238469 (6 * A141214 n).toNat

end

end A161054.P12042736723177102102

/-! ## A161054.P18319632013339228304

`A161258(n+1)-A161258(A108104(A185238(n)))`
-/

namespace A161054.P18319632013339228304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161258 (n + 1) - A161258 (A108104 (A185238 n).toNat).toNat

end

end A161054.P18319632013339228304

/-! ## A161054.P16583190632759441263

`and(A153010(n), A161258(n+1))`
-/

namespace A161054.P16583190632759441263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153010 n) (A161258 (n + 1))

end

end A161054.P16583190632759441263

/-!
# A161055: Number of partitions of n into powers of two where every part appears at least 6 times.

The programs for A161055, there is no canonical definition to state claims against.
-/

/-! ## A161055.P7498716253746115410

`A161259(n+1)-A173923(A076303(n+1))`
-/

namespace A161055.P7498716253746115410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161259 (n + 1) - A173923 (A076303 (n + 1)).toNat

end

end A161055.P7498716253746115410

/-! ## A161055.P3635752917081411709

`A048766(A161259(n+1)^3)`
-/

namespace A161055.P3635752917081411709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A161259 (n + 1) ^ 3).toNat

end

end A161055.P3635752917081411709

/-! ## A161055.P15475987208690765543

`A161259(n+1)%A046421(n)`
-/

namespace A161055.P15475987208690765543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161259 (n + 1)) (A046421 n)

end

end A161055.P15475987208690765543

/-! ## A161055.P5336248979084668983

`A161259(A194550(2*(n+1))+n)`
-/

namespace A161055.P5336248979084668983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161259 (A194550 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A161055.P5336248979084668983

/-! ## A161055.P9882697867655210202

`A161259(and(1, A078883(n+1))+n)`
-/

namespace A161055.P9882697867655210202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161259 (Int.land 1 (A078883 (n + 1)) + (n : ℤ)).toNat

end

end A161055.P9882697867655210202

/-!
# A161056: Number of partitions of n into powers of two where every part appears at least 7 times.

The programs for A161056, there is no canonical definition to state claims against.
-/

/-! ## A161056.P13690681468107831891

`A204853(A316092(n+1))+A089870(A161260(n+1))`
-/

namespace A161056.P13690681468107831891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204853 (A316092 (n + 1)).toNat + A089870 (A161260 (n + 1)).toNat

end

end A161056.P13690681468107831891

/-! ## A161056.P2069367708757649212

`A089870(A161260(n+1)%A096076(n))`
-/

namespace A161056.P2069367708757649212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089870 (Int.tmod (A161260 (n + 1)) (A096076 n)).toNat

end

end A161056.P2069367708757649212

/-! ## A161056.P14139861833351524045

`A089870(A161260(n+1))%A236835(A213479(n))`
-/

namespace A161056.P14139861833351524045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089870 (A161260 (n + 1)).toNat) (A236835 (A213479 n).toNat)

end

end A161056.P14139861833351524045

/-! ## A161056.P11547981507455062229

`A089870(A161260(n+1))+A000038(A020213(n+1))`
-/

namespace A161056.P11547981507455062229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089870 (A161260 (n + 1)).toNat + A000038 (A020213 (n + 1)).toNat

end

end A161056.P11547981507455062229

/-! ## A161056.P5655275211693635177

`A204853(A331489(n+3)+1)+A089870(A161260(n+1))`
-/

namespace A161056.P5655275211693635177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204853 (A331489 (n + 3) + 1).toNat + A089870 (A161260 (n + 1)).toNat

end

end A161056.P5655275211693635177

/-! ## A161056.P13728552053611685330

`A001221(A115653(n+1))*A089870(A161260(n+1))`
-/

namespace A161056.P13728552053611685330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A115653 (n + 1)).toNat * A089870 (A161260 (n + 1)).toNat

end

end A161056.P13728552053611685330

/-!
# A161057: Number of partitions of n into powers of two where every part appears at least 8 times.

The programs for A161057, there is no canonical definition to state claims against.
-/

/-! ## A161057.P6581542579070876224

`A161261(n+1)-A185284(A321445(n))`
-/

namespace A161057.P6581542579070876224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161261 (n + 1) - A185284 (A321445 n).toNat

end

end A161057.P6581542579070876224

/-! ## A161057.P7886768418387573754

`A161261(n+1)-A025465(A168323(n+1))`
-/

namespace A161057.P7886768418387573754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161261 (n + 1) - A025465 (A168323 (n + 1)).toNat

end

end A161057.P7886768418387573754

/-! ## A161057.P10383806951443750075

`A161261(n+1)-A018843(A240020(n+1))`
-/

namespace A161057.P10383806951443750075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161261 (n + 1) - A018843 (A240020 (n + 1)).toNat

end

end A161057.P10383806951443750075

/-! ## A161057.P7769420850984433820

`A351831(A161261(n+1)+1)`
-/

namespace A161057.P7769420850984433820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351831 (A161261 (n + 1) + 1).toNat

end

end A161057.P7769420850984433820

/-! ## A161057.P14463671102091161892

`A161261(n+1)%A194266(n+1)`
-/

namespace A161057.P14463671102091161892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161261 (n + 1)) (A194266 (n + 1))

end

end A161057.P14463671102091161892

/-! ## A161057.P13557987071572987114

`A161261(gcd(n+1, A216761(n+1)))`
-/

namespace A161057.P13557987071572987114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161261 (Int.gcd (n + 1 : ℤ) (A216761 (n + 1)))

end

end A161057.P13557987071572987114

/-! ## A161057.P12193478139713389112

`A006257(A029930(n))*A161261(n+1)`
-/

namespace A161057.P12193478139713389112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A029930 n).toNat * A161261 (n + 1)

end

end A161057.P12193478139713389112

/-! ## A161057.P3796120417368154096

`A001221(A144816(n))*A161261(n+1)`
-/

namespace A161057.P3796120417368154096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A144816 n).toNat * A161261 (n + 1)

end

end A161057.P3796120417368154096

/-! ## A161057.P7972652220756991582

`A161261(n+1)+A018843(A161261(n+1)+1)`
-/

namespace A161057.P7972652220756991582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161261 (n + 1) + A018843 (A161261 (n + 1) + 1).toNat

end

end A161057.P7972652220756991582

/-! ## A161057.P13760808155014541479

`and(A141311(n+1), A161261(n+1))`
-/

namespace A161057.P13760808155014541479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141311 (n + 1)) (A161261 (n + 1))

end

end A161057.P13760808155014541479

/-!
# A161058: Number of partitions of n into powers of two where every part appears at least 9 times.

The programs for A161058, there is no canonical definition to state claims against.
-/

/-! ## A161058.P17761799230661219335

`A161262(n+1)-A000007(A332839(n+1))`
-/

namespace A161058.P17761799230661219335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161262 (n + 1) - A000007 (A332839 (n + 1)).toNat

end

end A161058.P17761799230661219335

/-! ## A161058.P2909852778379418878

`A161262(n+1)-A063524(A258646(n))`
-/

namespace A161058.P2909852778379418878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161262 (n + 1) - A063524 (A258646 n).toNat

end

end A161058.P2909852778379418878

/-! ## A161058.P11616971831713427524

`A161262(n+1)-∑{d}[A258646(n), A008683(#)]`
-/

namespace A161058.P11616971831713427524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161262 (n + 1) - ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A161058.P11616971831713427524

/-! ## A161058.P6914011957974910777

`A161262(n+1)-A025437(A341100(n+1))`
-/

namespace A161058.P6914011957974910777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161262 (n + 1) - A025437 (A341100 (n + 1)).toNat

end

end A161058.P6914011957974910777

/-! ## A161058.P17804909593860284580

`A161262(n+1)^Δ[A118471(n)]`
-/

namespace A161058.P17804909593860284580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118471 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161262 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A161058.P17804909593860284580

/-! ## A161058.P10737712494311483836

`A151728(n)%2*A161262(n+1)`
-/

namespace A161058.P10737712494311483836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151728 n) 2 * A161262 (n + 1)

end

end A161058.P10737712494311483836

/-! ## A161058.P83403938986642058

`A161262(n+1)+A000007(A151728(n))`
-/

namespace A161058.P83403938986642058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161262 (n + 1) + A000007 (A151728 n).toNat

end

end A161058.P83403938986642058

/-! ## A161058.P7595685919151056502

`A000001(A005384(n+1))*A161262(n+1)`
-/

namespace A161058.P7595685919151056502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A005384 (n + 1)).toNat * A161262 (n + 1)

end

end A161058.P7595685919151056502

/-! ## A161058.P17176042610817969887

`A161262(n+1)%A000664(n)`
-/

namespace A161058.P17176042610817969887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161262 (n + 1)) (A000664 n)

end

end A161058.P17176042610817969887

/-! ## A161058.P15807364055834717274

`A001222(A020630(n+1))*A161262(n+1)`
-/

namespace A161058.P15807364055834717274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A020630 (n + 1)).toNat * A161262 (n + 1)

end

end A161058.P15807364055834717274

/-!
# A161059: Number of partitions of n into powers of two where every part appears at least 10 times.

The programs for A161059, there is no canonical definition to state claims against.
-/

/-! ## A161059.P16962192915952335121

`A161263(n+1)%∑[A151685(n)]`
-/

namespace A161059.P16962192915952335121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161263 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A161059.P16962192915952335121

/-! ## A161059.P10045836306571499601

`A161263(n+1)^C(A161286(n+1), n)!`
-/

namespace A161059.P10045836306571499601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161263 (n + 1) ^ Nat.factorial (Nat.choose (A161286 (n + 1)).toNat n)

end

end A161059.P10045836306571499601

/-! ## A161059.P13709714040597118462

`A161263(n+1)+A000007(A067763(n))`
-/

namespace A161059.P13709714040597118462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161263 (n + 1) + A000007 (A067763 n).toNat

end

end A161059.P13709714040597118462

/-! ## A161059.P3916090905166508164

`lcm(A161263(n+1), A165591(A202141(n)))`
-/

namespace A161059.P3916090905166508164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A161263 (n + 1)) (A165591 (A202141 n).toNat)

end

end A161059.P3916090905166508164

/-! ## A161059.P14187856875934201480

`and(A057428(A055907(n)), A161263(n+1))`
-/

namespace A161059.P14187856875934201480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 (A055907 n).toNat) (A161263 (n + 1))

end

end A161059.P14187856875934201480

/-! ## A161059.P2784112215698820718

`and(A057428(A055923(n)), A161263(n+1))`
-/

namespace A161059.P2784112215698820718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 (A055923 n).toNat) (A161263 (n + 1))

end

end A161059.P2784112215698820718

/-! ## A161059.P973391172786087394

`A161263(n+1)^(A000040(A151685(n)+1)%2)`
-/

namespace A161059.P973391172786087394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161263 (n + 1) : ℚ) ^ (Int.tmod (A000040 (A151685 n + 1).toNat) 2 : ℤ)

end

end A161059.P973391172786087394

/-! ## A161059.P9988246647481051323

`A161263(n+1)%A000664(n)`
-/

namespace A161059.P9988246647481051323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161263 (n + 1)) (A000664 n)

end

end A161059.P9988246647481051323

/-! ## A161059.P16868145613923471048

`A161263(n+1)%A000105(n)`
-/

namespace A161059.P16868145613923471048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161263 (n + 1)) (A000105 n)

end

end A161059.P16868145613923471048

/-! ## A161059.P2620625172928479914

`A161263(A209755(A252820(A000124(n+1))))`
-/

namespace A161059.P2620625172928479914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161263 (A209755 (A252820 (A000124 (n + 1)).toNat).toNat).toNat

end

end A161059.P2620625172928479914

/-!
# A161060: Number of partitions of n into powers of two where every part appears at least 11 times.

The programs for A161060, there is no canonical definition to state claims against.
-/

/-! ## A161060.P8953305204047568887

`A161264(A002260(2*n²+1))`
-/

namespace A161060.P8953305204047568887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161264 (A002260 (2 * n ^ 2 + 1)).toNat

end

end A161060.P8953305204047568887

/-! ## A161060.P1484404345970111366

`A161264(n+1)%∑[A050167(n)]`
-/

namespace A161060.P1484404345970111366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050167 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161264 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A161060.P1484404345970111366

/-! ## A161060.P16471601192043324008

`A161264(n+1)+A073424(∑[2*lcm(2, n)+n])`
-/

namespace A161060.P16471601192043324008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lcm 2 n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161264 (n + 1) + A073424 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A161060.P16471601192043324008

/-! ## A161060.P9681082593632327641

`A161264(n+1)+A000007(A053281(n))`
-/

namespace A161060.P9681082593632327641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161264 (n + 1) + A000007 (A053281 n).toNat

end

end A161060.P9681082593632327641

/-! ## A161060.P17184423918003115111

`A161264(n+1)+val(A050167(n), A000040(n+1))`
-/

namespace A161060.P17184423918003115111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161264 (n + 1) + (SequenceMachineLib.valuation (A050167 n).toNat (A000040 (n + 1)).toNat : ℤ)

end

end A161060.P17184423918003115111

/-! ## A161060.P16668333202241811083

`and(A153788(A140473(n+1)), A161264(n+1))`
-/

namespace A161060.P16668333202241811083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153788 (A140473 (n + 1)).toNat) (A161264 (n + 1))

end

end A161060.P16668333202241811083

/-! ## A161060.P16304683014329631246

`A161264(A097065(A292622(A000124(2*n+1))))`
-/

namespace A161060.P16304683014329631246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161264 (A097065 (A292622 (A000124 (2 * n + 1)).toNat).toNat).toNat

end

end A161060.P16304683014329631246

/-! ## A161060.P2204887889973053764

`A161264(n+1)%A000664(n)`
-/

namespace A161060.P2204887889973053764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161264 (n + 1)) (A000664 n)

end

end A161060.P2204887889973053764

/-! ## A161060.P8896791226735406128

`A161264(n+1)%A000105(n)`
-/

namespace A161060.P8896791226735406128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161264 (n + 1)) (A000105 n)

end

end A161060.P8896791226735406128

/-! ## A161060.P14029576201239097944

`and(A153788(n*A161264(n+1)), A161264(n+1))`
-/

namespace A161060.P14029576201239097944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153788 ((n : ℤ) * A161264 (n + 1)).toNat) (A161264 (n + 1))

end

end A161060.P14029576201239097944

/-!
# A161061: Number of partitions of n into powers of two where every part appears at least 12 times.

The programs for A161061, there is no canonical definition to state claims against.
-/

/-! ## A161061.P15681312297288444109

`(A091577(n)+1)*A161265(n+1)`
-/

namespace A161061.P15681312297288444109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A091577 n + 1) * A161265 (n + 1)

end

end A161061.P15681312297288444109

/-! ## A161061.P15943404850967896837

`A161265(n+1)%A045911(A316938(n))`
-/

namespace A161061.P15943404850967896837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161265 (n + 1)) (A045911 (A316938 n).toNat)

end

end A161061.P15943404850967896837

/-! ## A161061.P7955190401459735841

`A161265(n+1)+A000007(A298782(n+1))`
-/

namespace A161061.P7955190401459735841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161265 (n + 1) + A000007 (A298782 (n + 1)).toNat

end

end A161061.P7955190401459735841

/-! ## A161061.P9917780270364689567

`A161265(n+1)+A000007(A333427(n+1))`
-/

namespace A161061.P9917780270364689567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161265 (n + 1) + A000007 (A333427 (n + 1)).toNat

end

end A161061.P9917780270364689567

/-! ## A161061.P5328860424131700687

`A161265(n+1)+A063524(∑[A000124(n+3)])`
-/

namespace A161061.P5328860424131700687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161265 (n + 1) + A063524 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161061.P5328860424131700687

/-! ## A161061.P1055187250015807426

`A161265(n+1)+A000007(A185934(3*n+1))`
-/

namespace A161061.P1055187250015807426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161265 (n + 1) + A000007 (A185934 (3 * n + 1)).toNat

end

end A161061.P1055187250015807426

/-! ## A161061.P7986121305929454824

`A342023(A303814(2*n+1)+1)+A161265(n+1)`
-/

namespace A161061.P7986121305929454824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342023 (A303814 (2 * n + 1) + 1).toNat + A161265 (n + 1)

end

end A161061.P7986121305929454824

/-! ## A161061.P4422182201480589150

`A161265(n+1)*A293668(A038530(n+1))`
-/

namespace A161061.P4422182201480589150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161265 (n + 1) * A293668 (A038530 (n + 1)).toNat

end

end A161061.P4422182201480589150

/-! ## A161061.P7071531746924094557

`A161265(A097065(A292622(A000124(2*n+1))))`
-/

namespace A161061.P7071531746924094557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161265 (A097065 (A292622 (A000124 (2 * n + 1)).toNat).toNat).toNat

end

end A161061.P7071531746924094557

/-! ## A161061.P3575194716353547859

`A001222(A007686(n+1))*A161265(n+1)`
-/

namespace A161061.P3575194716353547859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007686 (n + 1)).toNat * A161265 (n + 1)

end

end A161061.P3575194716353547859

/-!
# A161062: Number of partitions of n into powers of two where every part appears at least 13 times.

The programs for A161062, there is no canonical definition to state claims against.
-/

/-! ## A161062.P4938901240792030588

`A161266(n+1)^A056926(A000124(n))`
-/

namespace A161062.P4938901240792030588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161266 (n + 1) : ℚ) ^ (A056926 (A000124 n).toNat : ℤ)

end

end A161062.P4938901240792030588

/-! ## A161062.P12029485782651392238

`A161266(n+1)%A110726(A110726(n))`
-/

namespace A161062.P12029485782651392238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161266 (n + 1)) (A110726 ((A110726 (n + 10)).toNat + 10))

end

end A161062.P12029485782651392238

/-! ## A161062.P17870028636755109030

`A001222(A152050(n+1))*A161266(n+1)`
-/

namespace A161062.P17870028636755109030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A152050 (n + 1)).toNat * A161266 (n + 1)

end

end A161062.P17870028636755109030

/-! ## A161062.P18180360046965042747

`A161266(n+1)%A155045(n+1)`
-/

namespace A161062.P18180360046965042747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161266 (n + 1)) (A155045 (n + 1))

end

end A161062.P18180360046965042747

/-! ## A161062.P16753013633526581893

`A161266(n+1)+A000007(A240020(n+5)²)`
-/

namespace A161062.P16753013633526581893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161266 (n + 1) + A000007 (A240020 (n + 5) ^ 2).toNat

end

end A161062.P16753013633526581893

/-! ## A161062.P1810838842785402475

`A161266(n+1)*A336423(A082910(3*n+2))`
-/

namespace A161062.P1810838842785402475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161266 (n + 1) * A336423 (A082910 (3 * n + 2)).toNat

end

end A161062.P1810838842785402475

/-! ## A161062.P3923725046825196490

`A161276(A296131(n+1))+A161266(n+1)`
-/

namespace A161062.P3923725046825196490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161276 (A296131 (n + 1)).toNat + A161266 (n + 1)

end

end A161062.P3923725046825196490

/-! ## A161062.P10535156500771477735

`A161266(n+1)+A008683(A245400(n+1))`
-/

namespace A161062.P10535156500771477735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161266 (n + 1) + A008683 (A245400 (n + 1)).toNat

end

end A161062.P10535156500771477735

/-! ## A161062.P12014213974214534829

`A161266(n+1)+A010051(A255993(n+1))`
-/

namespace A161062.P12014213974214534829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161266 (n + 1) + A010051 (A255993 (n + 1)).toNat

end

end A161062.P12014213974214534829

/-! ## A161062.P6045217601809326907

`A161266(A097065(A292622(A000124(2*n+1))))`
-/

namespace A161062.P6045217601809326907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161266 (A097065 (A292622 (A000124 (2 * n + 1)).toNat).toNat).toNat

end

end A161062.P6045217601809326907

/-!
# A161063: Number of partitions of n into powers of two where every part appears at least 14 times.

The programs for A161063, there is no canonical definition to state claims against.
-/

/-! ## A161063.P6184450574290611450

`A161267(n+1)+a(A099384(n))` with `a(0)=0, a(1)=0`
-/

namespace A161063.P6184450574290611450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A161267 (n + 1) + a (A099384 n).toNat

end

end A161063.P6184450574290611450

/-! ## A161063.P15562425325170423344

`A161267(n+1)^C(A161252(n+1), n)!`
-/

namespace A161063.P15562425325170423344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161267 (n + 1) ^ Nat.factorial (Nat.choose (A161252 (n + 1)).toNat n)

end

end A161063.P15562425325170423344

/-! ## A161063.P17560224111445714393

`A161267(n+1)+A000007(A099384(n))`
-/

namespace A161063.P17560224111445714393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161267 (n + 1) + A000007 (A099384 n).toNat

end

end A161063.P17560224111445714393

/-! ## A161063.P3093432250546012123

`A161267(n+1)+A000007(A102363(n))`
-/

namespace A161063.P3093432250546012123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161267 (n + 1) + A000007 (A102363 n).toNat

end

end A161063.P3093432250546012123

/-! ## A161063.P2486508348631737330

`A161267(n+1)+A000007(A270905(n))`
-/

namespace A161063.P2486508348631737330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161267 (n + 1) + A000007 (A270905 n).toNat

end

end A161063.P2486508348631737330

/-! ## A161063.P12245135490826042428

`A323408(A020631(n+1))+A161267(n+1)`
-/

namespace A161063.P12245135490826042428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323408 (A020631 (n + 1)).toNat + A161267 (n + 1)

end

end A161063.P12245135490826042428

/-! ## A161063.P9035286683071202818

`A318326(A167535(n+1))+A161267(n+1)`
-/

namespace A161063.P9035286683071202818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318326 (A167535 (n + 1)).toNat + A161267 (n + 1)

end

end A161063.P9035286683071202818

/-! ## A161063.P15065014168535211594

`A161267(n+1)^A000010(C(A099384(n), n)+1)`
-/

namespace A161063.P15065014168535211594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161267 (n + 1) : ℚ) ^ (A000010 (Nat.choose (A099384 n).toNat n + 1) : ℤ)

end

end A161063.P15065014168535211594

/-! ## A161063.P11902515751488335599

`A161267(n+1)%A149366(n)`
-/

namespace A161063.P11902515751488335599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161267 (n + 1)) (A149366 n)

end

end A161063.P11902515751488335599

/-! ## A161063.P10818483853931644436

`A161267(A097065(A292622(A000124(2*n+1))))`
-/

namespace A161063.P10818483853931644436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161267 (A097065 (A292622 (A000124 (2 * n + 1)).toNat).toNat).toNat

end

end A161063.P10818483853931644436

/-!
# A161064: Number of partitions of n into powers of two minus one where every part appears at least 2 times.

The programs for A161064, there is no canonical definition to state claims against.
-/

/-! ## A161064.P4946812920360403433

`A054404(Δ[Δ[A339279(3*n+1)]])`
-/

namespace A161064.P4946812920360403433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339279 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (f1 (n + 1) - f1 n).toNat

end

end A161064.P4946812920360403433

/-! ## A161064.P8497876162409172533

`A103221(∑[A062756(A022095(n))])`
-/

namespace A161064.P8497876162409172533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A022095 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161064.P8497876162409172533

/-! ## A161064.P11230371798693045511

`A183094(A317783(n))+A029170(n+1)`
-/

namespace A161064.P11230371798693045511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183094 (A317783 n).toNat + A029170 (n + 1)

end

end A161064.P11230371798693045511

/-! ## A161064.P3933947578430714980

`A025798(lt[A025803(3*n+4), 2*n])`
-/

namespace A161064.P3933947578430714980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025803 (3 * n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025798 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A161064.P3933947578430714980

/-! ## A161064.P14194592800963901410

`A352131(A317091(n+1)%A157884(3*n+5))`
-/

namespace A161064.P14194592800963901410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352131 (Int.tmod (A317091 (n + 1)) (A157884 (3 * n + 5))).toNat

end

end A161064.P14194592800963901410

/-!
# A161065: Number of partitions of n into powers of two minus one where every part appears at least 3 times.

The programs for A161065, there is no canonical definition to state claims against.
-/

/-! ## A161065.P15601194504925265571

`A014963(A046092(3*n+2))*A130945(A161104(n+1))`
-/

namespace A161065.P15601194504925265571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A046092 (3 * n + 2)).toNat * A130945 (A161104 (n + 1)).toNat

end

end A161065.P15601194504925265571

/-! ## A161065.P15945247127039101285

`A057164(A161104(n+1))+A000007(A173061(n))`
-/

namespace A161065.P15945247127039101285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A161104 (n + 1)).toNat + A000007 (A173061 n).toNat

end

end A161065.P15945247127039101285

/-! ## A161065.P8311898427771303438

`A130945(A161104(n+1)%A219038(n+1))`
-/

namespace A161065.P8311898427771303438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130945 (Int.tmod (A161104 (n + 1)) (A219038 (n + 1))).toNat

end

end A161065.P8311898427771303438

/-! ## A161065.P15895235579531958838

`A057164(A161104(n+1)%A224222(n))`
-/

namespace A161065.P15895235579531958838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (Int.tmod (A161104 (n + 1)) (A224222 n)).toNat

end

end A161065.P15895235579531958838

/-! ## A161065.P12281017376716904685

`A057164(A161104(n+1))+A000007(A301337(n+1))`
-/

namespace A161065.P12281017376716904685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057164 (A161104 (n + 1)).toNat + A000007 (A301337 (n + 1)).toNat

end

end A161065.P12281017376716904685

/-!
# A161066: Number of partitions of n into powers of two minus one where every part appears at least 4 times.

The programs for A161066, there is no canonical definition to state claims against.
-/

/-! ## A161066.P10015598013271572798

`A161072(lt[A161038(n+1), A161070(n+1)])`
-/

namespace A161066.P10015598013271572798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161072 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A161066.P10015598013271572798

/-! ## A161066.P4170701729994950966

`A161111(lt[A161038(n+1), A161070(n+1)])`
-/

namespace A161066.P4170701729994950966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161111 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A161066.P4170701729994950966

/-! ## A161066.P8354251712750730072

`A161072(lt[A161089(n+1), A161070(n+1)])`
-/

namespace A161066.P8354251712750730072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161072 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A161066.P8354251712750730072

/-! ## A161066.P16830889631067600464

`A161111(lt[A161089(n+1), A161070(n+1)])`
-/

namespace A161066.P16830889631067600464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161111 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A161066.P16830889631067600464

/-!
# A161067: Number of partitions of n into powers of two minus one where every part appears at least 5 times.

The programs for A161067, there is no canonical definition to state claims against.
-/

/-! ## A161067.P9519361728303680647

`A161106(n+1)-A127686(A185977(2*n+5))`
-/

namespace A161067.P9519361728303680647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161106 (n + 1) - A127686 (A185977 (2 * n + 5)).toNat

end

end A161067.P9519361728303680647

/-! ## A161067.P3261634633255595458

`A029915(A161106(n+1))%A173061(n)`
-/

namespace A161067.P3261634633255595458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029915 (A161106 (n + 1)).toNat) (A173061 n)

end

end A161067.P3261634633255595458

/-! ## A161067.P16052395862995319085

`A161106(n+1)-A000007(A144879(n+1))`
-/

namespace A161067.P16052395862995319085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161106 (n + 1) - A000007 (A144879 (n + 1)).toNat

end

end A161067.P16052395862995319085

/-! ## A161067.P16055579976256688856

`A029915(A161106(n+1)^A122698(n+1)!)`
-/

namespace A161067.P16055579976256688856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029915 (A161106 (n + 1) ^ Nat.factorial (A122698 (n + 1)).toNat).toNat

end

end A161067.P16055579976256688856

/-! ## A161067.P10791843841165665358

`and(A161106(n+1), A356877(n))`
-/

namespace A161067.P10791843841165665358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A161106 (n + 1)) (A356877 n)

end

end A161067.P10791843841165665358

/-!
# A161068: Number of partitions of n into powers of two minus one where every part appears at least 6 times.

The programs for A161068, there is no canonical definition to state claims against.
-/

/-! ## A161068.P1796949671492119132

`A089854(A161107(n+1)%A005496(n))`
-/

namespace A161068.P1796949671492119132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089854 (Int.tmod (A161107 (n + 1)) (A005496 n)).toNat

end

end A161068.P1796949671492119132

/-! ## A161068.P14298416952248259783

`A161107(n+1)-A161112(A161148(2*n+5))`
-/

namespace A161068.P14298416952248259783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161107 (n + 1) - A161112 (A161148 (2 * n + 5)).toNat

end

end A161068.P14298416952248259783

/-! ## A161068.P9223825809281066870

`A122350(A161107(n+1))%A151728(A161106(2*(n+1)))`
-/

namespace A161068.P9223825809281066870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122350 (A161107 (n + 1)).toNat) (A151728 (A161106 (2 * (n + 1))).toNat)

end

end A161068.P9223825809281066870

/-! ## A161068.P7451327829934580340

`A185245(A297876(n+1))+A122350(A161107(n+1))`
-/

namespace A161068.P7451327829934580340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185245 (A297876 (n + 1)).toNat + A122350 (A161107 (n + 1)).toNat

end

end A161068.P7451327829934580340

/-! ## A161068.P12589545565397431919

`and(A161107(n+1), A399707(n))`
-/

namespace A161068.P12589545565397431919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A161107 (n + 1)) (A399707 n)

end

end A161068.P12589545565397431919

/-!
# A161069: Number of partitions of n into powers of two minus one where every part appears at least 7 times.

The programs for A161069, there is no canonical definition to state claims against.
-/

/-! ## A161069.P4762376276799088007

`A161108(n+1)-A185284(A173387(n+1))`
-/

namespace A161069.P4762376276799088007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161108 (n + 1) - A185284 (A173387 (n + 1)).toNat

end

end A161069.P4762376276799088007

/-! ## A161069.P8006905221746249080

`A161108(n+1)-A185284(A161081(n+1))`
-/

namespace A161069.P8006905221746249080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161108 (n + 1) - A185284 (A161081 (n + 1)).toNat

end

end A161069.P8006905221746249080

/-! ## A161069.P10336976515018240293

`A001222(5^A161108(n+1))`
-/

namespace A161069.P10336976515018240293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A161108 (n + 1) : ℤ))).toNat

end

end A161069.P10336976515018240293

/-! ## A161069.P3395251460328775053

`and(A161108(n+1), A335574(n))`
-/

namespace A161069.P3395251460328775053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A161108 (n + 1)) (A335574 n)

end

end A161069.P3395251460328775053

/-! ## A161069.P11131250673231960964

`and(A068975(n+1), A161108(n+1))`
-/

namespace A161069.P11131250673231960964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A068975 (n + 1)) (A161108 (n + 1))

end

end A161069.P11131250673231960964

/-!
# A161070: Number of partitions of n into powers of two minus one where every part appears at least 8 times.

The programs for A161070, there is no canonical definition to state claims against.
-/

/-! ## A161070.P12738099183604301601

`A161109(n+1)-A185284(A161083(n+5))`
-/

namespace A161070.P12738099183604301601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161109 (n + 1) - A185284 (A161083 (n + 5)).toNat

end

end A161070.P12738099183604301601

/-! ## A161070.P9795761585526090593

`A235489(A161109(n+1))%A005496(A161110(2*n+3))`
-/

namespace A161070.P9795761585526090593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235489 (A161109 (n + 1)).toNat) (A005496 (A161110 (2 * n + 3)).toNat)

end

end A161070.P9795761585526090593

/-! ## A161070.P9356317179305093107

`A001222(5^A161109(n+1))`
-/

namespace A161070.P9356317179305093107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A161109 (n + 1) : ℤ))).toNat

end

end A161070.P9356317179305093107

/-! ## A161070.P14233124614648025225

`A161109(n+1)%A003064(n)`
-/

namespace A161070.P14233124614648025225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161109 (n + 1)) (A003064 n)

end

end A161070.P14233124614648025225

/-! ## A161070.P15787376741553082739

`and(A146526(n), A161109(n+1))`
-/

namespace A161070.P15787376741553082739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A146526 n) (A161109 (n + 1))

end

end A161070.P15787376741553082739

/-!
# A161071: Number of partitions of n into powers of two minus one where every part appears at least 9 times.

The programs for A161071, there is no canonical definition to state claims against.
-/

/-! ## A161071.P663885020099756823

`A161110(n+1)-A185284(A062830(n+1))`
-/

namespace A161071.P663885020099756823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161110 (n + 1) - A185284 (A062830 (n + 1)).toNat

end

end A161071.P663885020099756823

/-! ## A161071.P14406183198369105472

`A000195(3^A161110(n+1))`
-/

namespace A161071.P14406183198369105472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A161110 (n + 1) : ℤ))).toNat

end

end A161071.P14406183198369105472

/-! ## A161071.P16266179016305290077

`A007949(3^A161110(n+1))`
-/

namespace A161071.P16266179016305290077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A161110 (n + 1) : ℤ))).toNat

end

end A161071.P16266179016305290077

/-! ## A161071.P5220115294781909739

`A032741(3^A161110(n+1))`
-/

namespace A161071.P5220115294781909739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A161110 (n + 1) : ℤ))).toNat

end

end A161071.P5220115294781909739

/-! ## A161071.P2830840547544027517

`A046081(3^A161110(n+1))`
-/

namespace A161071.P2830840547544027517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A161110 (n + 1) : ℤ))).toNat

end

end A161071.P2830840547544027517

/-! ## A161071.P7832649451862648516

`A064415(3^A161110(n+1))`
-/

namespace A161071.P7832649451862648516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A161110 (n + 1) : ℤ))).toNat

end

end A161071.P7832649451862648516

/-! ## A161071.P11522274157869714841

`A065339(3^A161110(n+1))`
-/

namespace A161071.P11522274157869714841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A161110 (n + 1) : ℤ))).toNat

end

end A161071.P11522274157869714841

/-! ## A161071.P17552256843790370772

`val(A000217(3^A161110(n+1)), 3)`
-/

namespace A161071.P17552256843790370772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000217 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A161110 (n + 1) : ℤ))).toNat).toNat 3

end

end A161071.P17552256843790370772

/-! ## A161071.P4678956572941361720

`val(A002378(3^A161110(n+1)), 3)`
-/

namespace A161071.P4678956572941361720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002378 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A161110 (n + 1) : ℤ))).toNat).toNat 3

end

end A161071.P4678956572941361720

/-! ## A161071.P11984704922238817020

`∑{d}[n+1, A161110(#)*A330055((n+1)/#-1)]`
-/

namespace A161071.P11984704922238817020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161110 d * A330055 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161071.P11984704922238817020

/-!
# A161072: Number of partitions of n into powers of two minus one where every part appears at least 10 times.

The programs for A161072, there is no canonical definition to state claims against.
-/

/-! ## A161072.P1118746255194128693

`A161111(n+1)-A185284(A161042(n+4))`
-/

namespace A161072.P1118746255194128693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161111 (n + 1) - A185284 (A161042 (n + 4)).toNat

end

end A161072.P1118746255194128693

/-! ## A161072.P11060449731344878547

`A261423(A161111(n+1)%A122089(n+1))`
-/

namespace A161072.P11060449731344878547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261423 (Int.tmod (A161111 (n + 1)) (A122089 (n + 1))).toNat

end

end A161072.P11060449731344878547

/-! ## A161072.P12479780721756862485

`A262087(A161111(n+1))%A239089(n+1)`
-/

namespace A161072.P12479780721756862485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262087 (A161111 (n + 1)).toNat) (A239089 (n + 1))

end

end A161072.P12479780721756862485

/-! ## A161072.P8206302624599527545

`A161111(A085736(n+1))*A261143(A071833(n))`
-/

namespace A161072.P8206302624599527545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161111 (A085736 (n + 1)).toNat * A261143 (A071833 n).toNat

end

end A161072.P8206302624599527545

/-! ## A161072.P7003253494465337055

`A261143(A071833(n))*A261423(A161111(n+1))`
-/

namespace A161072.P7003253494465337055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261143 (A071833 n).toNat * A261423 (A161111 (n + 1)).toNat

end

end A161072.P7003253494465337055

/-! ## A161072.P2706379051866897682

`A262087(A161111(n+1))*A329684(A342237(n+1))`
-/

namespace A161072.P2706379051866897682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 (A161111 (n + 1)).toNat * A329684 (A342237 (n + 1)).toNat

end

end A161072.P2706379051866897682

/-! ## A161072.P1893594457053667833

`A032741(3^A161111(n+1))`
-/

namespace A161072.P1893594457053667833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A161111 (n + 1) : ℤ))).toNat

end

end A161072.P1893594457053667833

/-! ## A161072.P6215047660811484669

`A065339(3^A161111(n+1))`
-/

namespace A161072.P6215047660811484669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A161111 (n + 1) : ℤ))).toNat

end

end A161072.P6215047660811484669

/-! ## A161072.P15373027868694872143

`and(A045535(n), A161111(n+1))`
-/

namespace A161072.P15373027868694872143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045535 n) (A161111 (n + 1))

end

end A161072.P15373027868694872143

/-! ## A161072.P2160538053886934385

`∑{d}[n+1, A161111(#)*A330055((n+1)/#-1)]`
-/

namespace A161072.P2160538053886934385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A161111 d * A330055 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A161072.P2160538053886934385

/-!
# A161073: Number of partitions of n into powers of two minus one where every part appears at least 11 times.

The programs for A161073, there is no canonical definition to state claims against.
-/

/-! ## A161073.P2416097731913231698

`A324161(A161112(n+1))%A031133(n+1)`
-/

namespace A161073.P2416097731913231698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324161 (A161112 (n + 1)).toNat) (A031133 (n + 1))

end

end A161073.P2416097731913231698

/-! ## A161073.P11245259863677175485

`A065650(A161112(n+1))+A000038(A100082(n))`
-/

namespace A161073.P11245259863677175485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065650 (A161112 (n + 1)).toNat + A000038 (A100082 n).toNat

end

end A161073.P11245259863677175485

/-! ## A161073.P16628920295418465710

`A324161(A161112(n+1))%A075784(A027379(n))`
-/

namespace A161073.P16628920295418465710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324161 (A161112 (n + 1)).toNat) (A075784 (A027379 n).toNat)

end

end A161073.P16628920295418465710

/-! ## A161073.P5480679174158237352

`A324902(A155024(n+1))+A324161(A161112(n+1))`
-/

namespace A161073.P5480679174158237352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324902 (A155024 (n + 1)).toNat + A324161 (A161112 (n + 1)).toNat

end

end A161073.P5480679174158237352

/-! ## A161073.P17076416554929986419

`A010051(A028871(n+1))*A065650(A161112(n+1))`
-/

namespace A161073.P17076416554929986419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A028871 (n + 1)).toNat * A065650 (A161112 (n + 1)).toNat

end

end A161073.P17076416554929986419

/-! ## A161073.P13783869569811896542

`and(A045535(A161112(n+1)²), A161112(n+1))`
-/

namespace A161073.P13783869569811896542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045535 (A161112 (n + 1) ^ 2).toNat) (A161112 (n + 1))

end

end A161073.P13783869569811896542

/-!
# A161074: Number of partitions of n into powers of two minus one where every part appears at least 12 times.

The programs for A161074, there is no canonical definition to state claims against.
-/

/-! ## A161074.P8144826398632767284

`A001222(3^A161113(n+1))`
-/

namespace A161074.P8144826398632767284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A161113 (n + 1) : ℤ))).toNat

end

end A161074.P8144826398632767284

/-! ## A161074.P6684787861105193463

`A046079(3^A161113(n+1))`
-/

namespace A161074.P6684787861105193463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A161113 (n + 1) : ℤ))).toNat

end

end A161074.P6684787861105193463

/-! ## A161074.P14322688595376246457

`A051903(3^A161113(n+1))`
-/

namespace A161074.P14322688595376246457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A161113 (n + 1) : ℤ))).toNat

end

end A161074.P14322688595376246457

/-! ## A161074.P12632308102907301963

`A052409(3^A161113(n+1))`
-/

namespace A161074.P12632308102907301963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A161113 (n + 1) : ℤ))).toNat

end

end A161074.P12632308102907301963

/-! ## A161074.P17534858826418110183

`A329697(3^A161113(n+1))`
-/

namespace A161074.P17534858826418110183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A161113 (n + 1) : ℤ))).toNat

end

end A161074.P17534858826418110183

/-! ## A161074.P2729150784841700548

`A161113(n+1)%A129396(n)`
-/

namespace A161074.P2729150784841700548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161113 (n + 1)) (A129396 n)

end

end A161074.P2729150784841700548

/-! ## A161074.P6236506207318655110

`A000005(3^A161113(n+1))-1`
-/

namespace A161074.P6236506207318655110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A161113 (n + 1) : ℤ))).toNat - 1

end

end A161074.P6236506207318655110

/-! ## A161074.P13988272455972187948

`∑{d}[3^A161113(n+1), A001221(#)]`
-/

namespace A161074.P13988272455972187948
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A161113 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A001221 d

end

end A161074.P13988272455972187948

/-! ## A161074.P12378885669993238446

`A129396(A161113(n+1)²)-1`
-/

namespace A161074.P12378885669993238446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129396 (A161113 (n + 1) ^ 2).toNat - 1

end

end A161074.P12378885669993238446

/-!
# A161075: Number of partitions of n into powers of two minus one where every part appears at least 13 times.

The programs for A161075, there is no canonical definition to state claims against.
-/

/-! ## A161075.P6696038744994934757

`A001222(3^A161114(n+1))`
-/

namespace A161075.P6696038744994934757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A161114 (n + 1) : ℤ))).toNat

end

end A161075.P6696038744994934757

/-! ## A161075.P15098261912652912368

`A046079(3^A161114(n+1))`
-/

namespace A161075.P15098261912652912368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A161114 (n + 1) : ℤ))).toNat

end

end A161075.P15098261912652912368

/-! ## A161075.P10107411763022277668

`A051903(3^A161114(n+1))`
-/

namespace A161075.P10107411763022277668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A161114 (n + 1) : ℤ))).toNat

end

end A161075.P10107411763022277668

/-! ## A161075.P8139355491785092777

`A087436(3^A161114(n+1))`
-/

namespace A161075.P8139355491785092777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A161114 (n + 1) : ℤ))).toNat

end

end A161075.P8139355491785092777

/-! ## A161075.P1298020595040843942

`A018853(A161114(n+1)^4)`
-/

namespace A161075.P1298020595040843942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018853 (A161114 (n + 1) ^ 4).toNat

end

end A161075.P1298020595040843942

/-! ## A161075.P187069420643571361

`A018853(A161114(n+1)²²)`
-/

namespace A161075.P187069420643571361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018853 ((A161114 (n + 1) ^ 2) ^ 2).toNat

end

end A161075.P187069420643571361

/-! ## A161075.P4473750072036220262

`A000005(3^A161114(n+1))-1`
-/

namespace A161075.P4473750072036220262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A161114 (n + 1) : ℤ))).toNat - 1

end

end A161075.P4473750072036220262

/-! ## A161075.P4079964618448889867

`val(A000027(3^A161114(n+1)), 3)`
-/

namespace A161075.P4079964618448889867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000027 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A161114 (n + 1) : ℤ))).toNat).toNat 3

end

end A161075.P4079964618448889867

/-! ## A161075.P15736808953272344662

`∑{d}[A000244(A161114(n+1)), A001221(#)]`
-/

namespace A161075.P15736808953272344662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A161114 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A161075.P15736808953272344662

/-!
# A161076: Number of partitions of n into powers of two minus one where every part appears at least 14 times.

The programs for A161076, there is no canonical definition to state claims against.
-/

/-! ## A161076.P8644937746563422163

`A161115(n+1)+round(A228812(n+1)/90)`
-/

namespace A161076.P8644937746563422163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161115 (n + 1) + SequenceMachineLib.roundAway ((A228812 (n + 1) : ℚ) / 90)

end

end A161076.P8644937746563422163

/-! ## A161076.P12681522247135211446

`A080791(A007283(A161115(n+1)))`
-/

namespace A161076.P12681522247135211446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A007283 (A161115 (n + 1)).toNat).toNat

end

end A161076.P12681522247135211446

/-! ## A161076.P12727201536623994921

`A161115(n+1)%A007504(A000009(n))`
-/

namespace A161076.P12727201536623994921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161115 (n + 1)) (A007504 (A000009 n).toNat)

end

end A161076.P12727201536623994921

/-! ## A161076.P3367587750551825084

`A161115(n+1)+A000035(A014682(n²))`
-/

namespace A161076.P3367587750551825084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161115 (n + 1) + A000035 (A014682 (n ^ 2)).toNat

end

end A161076.P3367587750551825084

/-! ## A161076.P6819697153526974761

`A161115(n+1)^A118394(A327172(n+1))`
-/

namespace A161076.P6819697153526974761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161115 (n + 1) : ℚ) ^ (A118394 (A327172 (n + 1)).toNat : ℤ)

end

end A161076.P6819697153526974761

/-! ## A161076.P9185975702729525635

`A161115(n+1)+A000122(A246955(n+1))`
-/

namespace A161076.P9185975702729525635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161115 (n + 1) + A000122 (A246955 (n + 1)).toNat

end

end A161076.P9185975702729525635

/-! ## A161076.P15695886257635027081

`A001222(3^A161115(n+1))`
-/

namespace A161076.P15695886257635027081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A161115 (n + 1) : ℤ))).toNat

end

end A161076.P15695886257635027081

/-! ## A161076.P7551122627517234179

`A000005(3^A161115(n+1))-1`
-/

namespace A161076.P7551122627517234179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A161115 (n + 1) : ℤ))).toNat - 1

end

end A161076.P7551122627517234179

/-! ## A161076.P15974137983566998793

`A001222(A056449(2*A161115(n+1)))`
-/

namespace A161076.P15974137983566998793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A056449 (2 * A161115 (n + 1)).toNat).toNat

end

end A161076.P15974137983566998793

/-!
# A161077: Number of partitions of n into primes or 1 where every part appears at least 2 times.

The programs for A161077, there is no canonical definition to state claims against.
-/

/-! ## A161077.P11849879216585633550

`Δ[A339218(n)]+∑[A339218(n)]`
-/

namespace A161077.P11849879216585633550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339218 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A161077.P11849879216585633550

/-! ## A161077.P6559769968433191327

`∑[A339218(n+1)]+1-A339218(n)`
-/

namespace A161077.P6559769968433191327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A339218 n)

end

end A161077.P6559769968433191327

/-! ## A161077.P10398524237808185558

`A161026(or(A161037(n+1), A187829(n+1)))`
-/

namespace A161077.P10398524237808185558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161026 (Int.lor (A161037 (n + 1)) (A187829 (n + 1))).toNat

end

end A161077.P10398524237808185558

/-! ## A161077.P16241350751342525514

`A161026(or(A161038(n+1), A187829(n+1)))`
-/

namespace A161077.P16241350751342525514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161026 (Int.lor (A161038 (n + 1)) (A187829 (n + 1))).toNat

end

end A161077.P16241350751342525514

/-! ## A161077.P17982590046573644068

`A161026(or(A161049(n+1), A187829(n+1)))`
-/

namespace A161077.P17982590046573644068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161026 (Int.lor (A161049 (n + 1)) (A187829 (n + 1))).toNat

end

end A161077.P17982590046573644068

/-!
# A161078: Number of partitions of n into primes or 1 where every part appears at least 3 times.

The programs for A161078, there is no canonical definition to state claims against.
-/

/-! ## A161078.P12906250983269480954

`A344246(A058343(n)!)+A161027(n+1)`
-/

namespace A161078.P12906250983269480954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344246 (Nat.factorial (A058343 n).toNat + 24) + A161027 (n + 1)

end

end A161078.P12906250983269480954

/-! ## A161078.P4723446566477764457

`A001222(2^A161027(n+1))`
-/

namespace A161078.P4723446566477764457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A161027 (n + 1) : ℤ))).toNat

end

end A161078.P4723446566477764457

/-! ## A161078.P156864364053927440

`A161027(n+1)%A341954(n)`
-/

namespace A161078.P156864364053927440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161027 (n + 1)) (A341954 n)

end

end A161078.P156864364053927440

/-! ## A161078.P10930970132198100156

`A161027(∑[A007318(A144228(n))])`
-/

namespace A161078.P10930970132198100156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A144228 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161078.P10930970132198100156

/-! ## A161078.P9221054218762196275

`A001221(A060818(n))*A161027(n+1)`
-/

namespace A161078.P9221054218762196275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A060818 n).toNat * A161027 (n + 1)

end

end A161078.P9221054218762196275

/-!
# A161079: Number of partitions of n into primes or 1 where every part appears at least 4 times.

The programs for A161079, there is no canonical definition to state claims against.
-/

/-! ## A161079.P14406629478237862702

`A161028(n+1)%A121648(n)`
-/

namespace A161079.P14406629478237862702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161028 (n + 1)) (A121648 n)

end

end A161079.P14406629478237862702

/-! ## A161079.P8565445608037532095

`A161028(n+1)+A000038(A060735(n+1))`
-/

namespace A161079.P8565445608037532095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161028 (n + 1) + A000038 (A060735 (n + 1)).toNat

end

end A161079.P8565445608037532095

/-! ## A161079.P16250347431059669070

`A001222(A062352(n+1))*A161028(n+1)`
-/

namespace A161079.P16250347431059669070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A062352 (n + 1)).toNat * A161028 (n + 1)

end

end A161079.P16250347431059669070

/-! ## A161079.P11819810683158593004

`A161028(A000027(n+1))%A066828(n+1)`
-/

namespace A161079.P11819810683158593004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161028 (A000027 (n + 1)).toNat) (A066828 (n + 1))

end

end A161079.P11819810683158593004

/-! ## A161079.P14233287886022892056

`A161028(A028310(n+1))%A141593(n+1)`
-/

namespace A161079.P14233287886022892056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161028 (A028310 (n + 1)).toNat) (A141593 (n + 1))

end

end A161079.P14233287886022892056

/-!
# A161081: Number of partitions of n into primes or 1 where every part appears at least 6 times.

The programs for A161081, there is no canonical definition to state claims against.
-/

/-! ## A161081.P2821289506638555887

`A161036(A194917(2*(n+1)))+A161030(n+1)`
-/

namespace A161081.P2821289506638555887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161036 (A194917 (2 * (n + 1))).toNat + A161030 (n + 1)

end

end A161081.P2821289506638555887

/-! ## A161081.P10863567012204790788

`A161037(A194917(2*n+1))+A161030(n+1)`
-/

namespace A161081.P10863567012204790788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161037 (A194917 (2 * n + 1)).toNat + A161030 (n + 1)

end

end A161081.P10863567012204790788

/-! ## A161081.P15304840321895176175

`A161037(A194983(2*(n+1)))+A161030(n+1)`
-/

namespace A161081.P15304840321895176175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161037 (A194983 (2 * (n + 1))).toNat + A161030 (n + 1)

end

end A161081.P15304840321895176175

/-! ## A161081.P5734609056085128907

`A161036(A194987(2*(n+1)))+A161030(n+1)`
-/

namespace A161081.P5734609056085128907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161036 (A194987 (2 * (n + 1))).toNat + A161030 (n + 1)

end

end A161081.P5734609056085128907

/-!
# A161088: Number of partitions of n into primes or 1 where every part appears at least 13 times.

The programs for A161088, there is no canonical definition to state claims against.
-/

/-! ## A161088.P9468057691136326670

`or(A161037(n+1), A185284(A161063(n+1)))`
-/

namespace A161088.P9468057691136326670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A161037 (n + 1)) (A185284 (A161063 (n + 1)).toNat)

end

end A161088.P9468057691136326670

/-!
# A161090: Number of partitions of n into squares where every part appears at least 2 times.

The programs for A161090, there is no canonical definition to state claims against.
-/

/-! ## A161090.P1555723325253957513

`A178487(n*ratio[gcd(2, n)]*A317669(n))`
-/

namespace A161090.P1555723325253957513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (SequenceMachineLib.roundAway ((n : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ)) * (A317669 n : ℚ))).toNat

end

end A161090.P1555723325253957513

/-! ## A161090.P774575580743581110

`A008619(A005044(n))%A153687(n+1)`
-/

namespace A161090.P774575580743581110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (A005044 n).toNat) (A153687 (n + 1))

end

end A161090.P774575580743581110

/-! ## A161090.P13034403352297197747

`A178487(A035363(3*n+1)+A000045(n))`
-/

namespace A161090.P13034403352297197747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (A035363 (3 * n + 1) + A000045 n).toNat

end

end A161090.P13034403352297197747

/-! ## A161090.P10613526420772236713

`A005686(((2*n+7-3*(-1)^n)/4)%A191755(n))`
-/

namespace A161090.P10613526420772236713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005686 (Int.tmod (SequenceMachineLib.roundAway (((2 * n : ℤ) + (7 - 3 * (-1) ^ n) : ℚ) / 4)) (A191755 n)).toNat

end

end A161090.P10613526420772236713

/-! ## A161090.P6817000685889768350

`A287272(A301765(n+2))`
-/

namespace A161090.P6817000685889768350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (A301765 (n + 2)).toNat

end

end A161090.P6817000685889768350

/-!
# A161091: Number of partitions of n into squares where every part appears at least 3 times.

The programs for A161091, there is no canonical definition to state claims against.
-/

/-! ## A161091.P17558290584986696250

`A161095(lt[A161038(n+1), A161094(n+1)])`
-/

namespace A161091.P17558290584986696250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161095 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A161091.P17558290584986696250

/-! ## A161091.P16108180500070800554

`A161095(lt[A161089(n+1), A161094(n+1)])`
-/

namespace A161091.P16108180500070800554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161095 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A161091.P16108180500070800554

/-! ## A161091.P6817624542395266555

`A196228(A132045(A246552(n))²)`
-/

namespace A161091.P6817624542395266555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196228 (A132045 (A246552 n).toNat ^ 2).toNat

end

end A161091.P6817624542395266555

/-!
# A161094: Number of partitions of n into squares where every part appears at least 6 times.

The programs for A161094, there is no canonical definition to state claims against.
-/

/-! ## A161094.P16069239105343003432

`A161098(lt[A161078(n+3), A161127(n+3)])`
-/

namespace A161094.P16069239105343003432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161078 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161127 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161098 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A161094.P16069239105343003432

/-! ## A161094.P8166132337545868781

`A297045(A156562((n+1)²))`
-/

namespace A161094.P8166132337545868781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297045 (A156562 ((n + 1) ^ 2)).toNat

end

end A161094.P8166132337545868781

/-! ## A161094.P9903673990789016355

`A166374(n+1)%A000196(A295283(2*n+1))`
-/

namespace A161094.P9903673990789016355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166374 (n + 1)) (A000196 (A295283 (2 * n + 1)).toNat)

end

end A161094.P9903673990789016355

/-! ## A161094.P8046459756282978487

`floor(log(A106161(n+1)))`
-/

namespace A161094.P8046459756282978487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A106161 (n + 1) : ℝ)⌋

end

end A161094.P8046459756282978487

/-!
# A161095: Number of partitions of n into squares where every part appears at least 7 times.

The programs for A161095, there is no canonical definition to state claims against.
-/

/-! ## A161095.P4551915804388373988

`A161102(2*(n+1)-A170957(n))`
-/

namespace A161095.P4551915804388373988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161102 ((2 * (n + 1) : ℤ) - A170957 n).toNat

end

end A161095.P4551915804388373988

/-! ## A161095.P17945913437326929296

`A297046(∑[3*A304479(n+1)])`
-/

namespace A161095.P17945913437326929296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A304479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297046 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A161095.P17945913437326929296

/-! ## A161095.P12698177157179448193

`A297046(A008585(∑[A304479(n+1)]))`
-/

namespace A161095.P12698177157179448193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297046 (A008585 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A161095.P12698177157179448193

/-! ## A161095.P14940422503218710679

`A225654(A005472(n+2))`
-/

namespace A161095.P14940422503218710679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225654 (A005472 (n + 2)).toNat

end

end A161095.P14940422503218710679

/-! ## A161095.P5248745049876168894

`A323022(A224810(n+1))`
-/

namespace A161095.P5248745049876168894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323022 (A224810 (n + 1)).toNat

end

end A161095.P5248745049876168894

/-!
# A161096: Number of partitions of n into squares where every part appears at least 8 times.

The programs for A161096, there is no canonical definition to state claims against.
-/

/-! ## A161096.P1524714068658751722

`ceil(∑{e}[A346030(n+1), A346034(#)]/3)`
-/

namespace A161096.P1524714068658751722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ p ∈ Nat.primeFactors (f1 n).natAbs, A346034 (Nat.factorization (f1 n).natAbs p) : ℤ) : ℚ) / 3⌉

end

end A161096.P1524714068658751722

/-! ## A161096.P17073427457896102361

`∑{d}[n+1, A267202(#)*A297036((n+1)/#)]`
-/

namespace A161096.P17073427457896102361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A267202 d * A297036 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A161096.P17073427457896102361

/-! ## A161096.P12830797662603726542

`A297046(A092533(n)*A116623(n))`
-/

namespace A161096.P12830797662603726542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297046 (A092533 n * A116623 n).toNat

end

end A161096.P12830797662603726542

/-! ## A161096.P15146580956426225648

`A297046(A211055(n+1)+A110003(n+1))`
-/

namespace A161096.P15146580956426225648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297046 (A211055 (n + 1) + A110003 (n + 1)).toNat

end

end A161096.P15146580956426225648

/-! ## A161096.P9889850576213411007

`A161048(A208150(2*(n+1))+A013928(2*(n+1)))`
-/

namespace A161096.P9889850576213411007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161048 (A208150 (2 * (n + 1)) + A013928 (2 * (n + 1))).toNat

end

end A161096.P9889850576213411007

/-!
# A161097: Number of partitions of n into squares where every part appears at least 9 times.

The programs for A161097, there is no canonical definition to state claims against.
-/

/-! ## A161097.P2615240100775089568

`A130467(n+2)%A077564(A000196(n+1))`
-/

namespace A161097.P2615240100775089568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130467 (n + 2)) (A077564 (A000196 (n + 1)).toNat)

end

end A161097.P2615240100775089568

/-! ## A161097.P11657582288797891986

`A227945(A023181(n+1))-1`
-/

namespace A161097.P11657582288797891986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227945 (A023181 (n + 1)).toNat - 1

end

end A161097.P11657582288797891986

/-! ## A161097.P1697032556705261473

`A355032(n+1)%A339569(n+1)`
-/

namespace A161097.P1697032556705261473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355032 (n + 1)) (A339569 (n + 1))

end

end A161097.P1697032556705261473

/-! ## A161097.P11830699833048613629

`A161087(A316979(2*(n+1))+2*(row(n)+1)+1)`
-/

namespace A161097.P11830699833048613629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161087 (A316979 (2 * (n + 1)) + (2 * (SequenceMachineLib.triRow n + 1) : ℤ) + 1).toNat

end

end A161097.P11830699833048613629

/-! ## A161097.P16224269212164083083

`A355032(n+1)%A276625(A355028(n))`
-/

namespace A161097.P16224269212164083083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355032 (n + 1)) (A276625 (A355028 n).toNat)

end

end A161097.P16224269212164083083

/-!
# A161098: Number of partitions of n into squares where every part appears at least 10 times.

The programs for A161098, there is no canonical definition to state claims against.
-/

/-! ## A161098.P16685542794670761903

`ceil(A326529(n)/A318847(n+1))`
-/

namespace A161098.P16685542794670761903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A326529 n : ℚ) / (A318847 (n + 1) : ℚ)⌉

end

end A161098.P16685542794670761903

/-! ## A161098.P13723508724403158861

`A004216(A069799(n+1)%A331456(n))`
-/

namespace A161098.P13723508724403158861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (Int.tmod (A069799 (n + 1)) (A331456 n)).toNat

end

end A161098.P13723508724403158861

/-! ## A161098.P15587069661658044620

`A004216(A105119(n+1)%A331456(n))`
-/

namespace A161098.P15587069661658044620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (Int.tmod (A105119 (n + 1)) (A331456 n)).toNat

end

end A161098.P15587069661658044620

/-! ## A161098.P155054188888998005

`A257696(A325648(n+1))`
-/

namespace A161098.P155054188888998005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257696 (A325648 (n + 1)).toNat

end

end A161098.P155054188888998005

/-! ## A161098.P5457526302550149099

`A098429(A384005(2*n+3)+A098429(n+4))`
-/

namespace A161098.P5457526302550149099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098429 (A384005 (2 * n + 3) + A098429 (n + 4)).toNat

end

end A161098.P5457526302550149099

/-!
# A161099: Number of partitions of n into squares where every part appears at least 11 times.

The programs for A161099, there is no canonical definition to state claims against.
-/

/-! ## A161099.P12390451466897682855

`floor(A307188(A307204(n))/A307222(n+1))`
-/

namespace A161099.P12390451466897682855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A307188 (A307204 n).toNat : ℚ) / (A307222 (n + 1) : ℚ)⌋

end

end A161099.P12390451466897682855

/-! ## A161099.P16802209448593760030

`A161098(A106744(n+1)+1)`
-/

namespace A161099.P16802209448593760030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161098 (A106744 (n + 1) + 1).toNat

end

end A161099.P16802209448593760030

/-! ## A161099.P4630603177253787049

`A161098(A106744(n+2))`
-/

namespace A161099.P4630603177253787049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161098 (A106744 (n + 2)).toNat

end

end A161099.P4630603177253787049

/-! ## A161099.P16350090623825067949

`A152715(n+1)%A204551(n+1)`
-/

namespace A161099.P16350090623825067949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152715 (n + 1)) (A204551 (n + 1))

end

end A161099.P16350090623825067949

/-! ## A161099.P7164301645699419684

`A369936(A273737(n))`
-/

namespace A161099.P7164301645699419684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369936 (A273737 n).toNat

end

end A161099.P7164301645699419684

