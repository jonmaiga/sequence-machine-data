import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C024

/-!
# A022300: The sequence a of 1's and 2's starting with (1,1,2,1) such that a(n) is the length of the (n+2)nd run of a.

The programs for A022300, there is no canonical definition to state claims against.
-/

/-! ## A022300.P13632784596567578056

`2-char[A022301(n)-1]`
-/

namespace A022300.P13632784596567578056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022301 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A022300.P13632784596567578056

/-! ## A022300.P15426643016856810408

`char[A025512(n+1)-1]+1`
-/

namespace A022300.P15426643016856810408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025512 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A022300.P15426643016856810408

/-! ## A022300.P2556857601394352527

`Δ[comp[A025512(n+1)+n]]`
-/

namespace A022300.P2556857601394352527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025512 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A022300.P2556857601394352527

/-! ## A022300.P2414220855189381800

`A000002(A263764(3*n+5)+A235791(3*n+4))`
-/

namespace A022300.P2414220855189381800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A263764 (3 * n + 5) + A235791 (3 * n + 4)).toNat

end

end A022300.P2414220855189381800

/-!
# A022301: Index of n-th 1 in A022300.

The programs for A022301, there is no canonical definition to state claims against.
-/

/-! ## A022301.P6489979562641509247

`eq[1, A022300(n+1)]+1`
-/

namespace A022301.P6489979562641509247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022300 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A022301.P6489979562641509247

/-! ## A022301.P1752763590698905390

`record[(n+1)/A022300(-xor(n, -1))]`
-/

namespace A022301.P1752763590698905390
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A022300 (-Int.xor (n : ℤ) (-1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022301.P1752763590698905390

/-! ## A022301.P17571811437446515670

`record[(n+1)/A022300(A000027(n+1))]`
-/

namespace A022301.P17571811437446515670
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A022300 (A000027 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022301.P17571811437446515670

/-! ## A022301.P16051631549830039734

`(comp[A025512(n+1)-1]+1)%A025512(2*n+1)`
-/

namespace A022301.P16051631549830039734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025512 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) (A025512 (2 * n + 1))

end

end A022301.P16051631549830039734

/-! ## A022301.P17641305516773481065

`record[A005408(n)-n*A022300(n+1)]`
-/

namespace A022301.P17641305516773481065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (n : ℤ) * A022300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022301.P17641305516773481065

/-! ## A022301.P1223972028653596539

`A028310(lt[A022300(n+1), 2]+1)`
-/

namespace A022301.P1223972028653596539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022300 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A022301.P1223972028653596539

/-! ## A022301.P15892866714571006241

`record[A023443(n+2)/A022300(n+1)]`
-/

namespace A022301.P15892866714571006241
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023443 (n + 2) : ℚ) / (A022300 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022301.P15892866714571006241

/-! ## A022301.P18176545555028440935

`record[A133310(n)/A022300(A133310(n))]`
-/

namespace A022301.P18176545555028440935
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133310 n : ℚ) / (A022300 (A133310 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022301.P18176545555028440935

/-! ## A022301.P13674800400080740859

`record[A020915(n)/A022300(A020915(n))]`
-/

namespace A022301.P13674800400080740859
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020915 n : ℚ) / (A022300 (A020915 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022301.P13674800400080740859

/-! ## A022301.P3537048023002143840

`record[A260739(2*(n+1))/A022300(n+1)]`
-/

namespace A022301.P3537048023002143840
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260739 (2 * (n + 1)) : ℚ) / (A022300 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022301.P3537048023002143840

/-! ## A022301.P16779925794838701643

`record[A008619(2*n)/A022300(n+1)]`
-/

namespace A022301.P16779925794838701643
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A022300 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022301.P16779925794838701643

/-! ## A022301.P18074702302042767404

`record[A052938(2*n)/A022300(n+1)]`
-/

namespace A022301.P18074702302042767404
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052938 (2 * n) : ℚ) / (A022300 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022301.P18074702302042767404

/-! ## A022301.P10843383367892781863

`record[A052938(n)/A022300(A052938(n))²]`
-/

namespace A022301.P10843383367892781863
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052938 n : ℚ) / (A022300 (A052938 n).toNat ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022301.P10843383367892781863

/-! ## A022301.P11810692732710489439

`record[A029579(2*n)/A022300(n+1)]`
-/

namespace A022301.P11810692732710489439
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029579 (2 * n) : ℚ) / (A022300 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022301.P11810692732710489439

/-! ## A022301.P6319932509919819011

`A001057(record[A005408(n)/A022300(n+1)])`
-/

namespace A022301.P6319932509919819011
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005408 n : ℚ) / (A022300 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A022301.P6319932509919819011

/-! ## A022301.P6239112559914385631

`record[A008611(n)/A022300(A008620(n))]`
-/

namespace A022301.P6239112559914385631
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008611 n : ℚ) / (A022300 (A008620 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022301.P6239112559914385631

/-! ## A022301.P1386410805405810622

`record[A126759(n)/A022300(A126759(n))]`
-/

namespace A022301.P1386410805405810622
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126759 n : ℚ) / (A022300 (A126759 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022301.P1386410805405810622

/-! ## A022301.P6743478759203867668

`record[A141256(n)/A022300(A141256(n))]`
-/

namespace A022301.P6743478759203867668
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141256 n : ℚ) / (A022300 (A141256 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022301.P6743478759203867668

/-! ## A022301.P8725409095208605823

`record[A001057(A005408(n)*A022300(n+1))]`
-/

namespace A022301.P8725409095208605823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A005408 n * A022300 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022301.P8725409095208605823

/-! ## A022301.P8311481363724634189

`lt[A022300(n+1), A000005(A180559(n+1))]+1`
-/

namespace A022301.P8311481363724634189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A180559 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A022301.P8311481363724634189

/-!
# A022303: The sequence a of 1's and 2's starting with (1,2,1) such that a(n) is the length of the (n+2)nd run of a.

The programs for A022303, the canonical program `A022303.P9265149570533791824` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022303 has offset 1).

The definition of A022303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022303.P9265149570533791824

`A000002(n+5)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A022303

/-- `A000002(n+5)` -/
def P9265149570533791824.Spec : Prop :=
  ∀ n, P9265149570533791824.a n = A022303 (n + 1)

theorem P9265149570533791824.correct : P9265149570533791824.Spec := by
  intro n
  simp only [A022303, Nat.add_sub_cancel]

end A022303

/-! ## A022303.P9196337191302084295

`A054977(A249093(n+5))`
-/

namespace A022303.P9196337191302084295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A249093 (n + 5)).toNat

end

end A022303.P9196337191302084295

namespace A022303

/-- `A054977(A249093(n+5))` -/
def P9196337191302084295.Spec : Prop :=
  ∀ n, P9196337191302084295.a n = A022303 (n + 1)

end A022303

/-! ## A022303.P4900071820637759764

`A054977(abs(A249507(n+5)))`
-/

namespace A022303.P4900071820637759764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 |A249507 (n + 5)|.toNat

end

end A022303.P4900071820637759764

namespace A022303

/-- `A054977(abs(A249507(n+5)))` -/
def P4900071820637759764.Spec : Prop :=
  ∀ n, P4900071820637759764.a n = A022303 (n + 1)

end A022303

/-! ## A022303.P2179837289963137071

`A054977(A249507(n+5)²)`
-/

namespace A022303.P2179837289963137071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A249507 (n + 5) ^ 2).toNat

end

end A022303.P2179837289963137071

namespace A022303

/-- `A054977(A249507(n+5)²)` -/
def P2179837289963137071.Spec : Prop :=
  ∀ n, P2179837289963137071.a n = A022303 (n + 1)

end A022303

/-! ## A022303.P8301325974854130752

`A000038(A249094(n+5))!`
-/

namespace A022303.P8301325974854130752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 (A249094 (n + 5)).toNat).toNat

end

end A022303.P8301325974854130752

namespace A022303

/-- `A000038(A249094(n+5))!` -/
def P8301325974854130752.Spec : Prop :=
  ∀ n, (P8301325974854130752.a n : ℤ) = A022303 (n + 1)

end A022303

/-! ## A022303.P15584399908119438721

`A000038(A249507(n+5)²)!`
-/

namespace A022303.P15584399908119438721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 (A249507 (n + 5) ^ 2).toNat).toNat

end

end A022303.P15584399908119438721

namespace A022303

/-- `A000038(A249507(n+5)²)!` -/
def P15584399908119438721.Spec : Prop :=
  ∀ n, (P15584399908119438721.a n : ℤ) = A022303 (n + 1)

end A022303

/-! ## A022303.P321876101027954297

`A006928(n+4)`
-/

namespace A022303.P321876101027954297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (n + 4)

end

end A022303.P321876101027954297

namespace A022303

/-- `A006928(n+4)` -/
def P321876101027954297.Spec : Prop :=
  ∀ n, P321876101027954297.a n = A022303 (n + 1)

end A022303

/-! ## A022303.P2214611551403928102

`A078880(n+4)`
-/

namespace A022303.P2214611551403928102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (n + 4)

end

end A022303.P2214611551403928102

namespace A022303

/-- `A078880(n+4)` -/
def P2214611551403928102.Spec : Prop :=
  ∀ n, P2214611551403928102.a n = A022303 (n + 1)

end A022303

/-! ## A022303.P13811822206116641209

`A157686(n+4)+1`
-/

namespace A022303.P13811822206116641209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157686 (n + 4) + 1

end

end A022303.P13811822206116641209

namespace A022303

/-- `A157686(n+4)+1` -/
def P13811822206116641209.Spec : Prop :=
  ∀ n, P13811822206116641209.a n = A022303 (n + 1)

end A022303

/-! ## A022303.P3444076703200571134

`3-A049710(n+4)`
-/

namespace A022303.P3444076703200571134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A049710 (n + 4)

end

end A022303.P3444076703200571134

namespace A022303

/-- `3-A049710(n+4)` -/
def P3444076703200571134.Spec : Prop :=
  ∀ n, P3444076703200571134.a n = A022303 (n + 1)

end A022303

/-! ## A022303.P14451684496126964920

`3-A088569(n+4)`
-/

namespace A022303.P14451684496126964920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A088569 (n + 4)

end

end A022303.P14451684496126964920

namespace A022303

/-- `3-A088569(n+4)` -/
def P14451684496126964920.Spec : Prop :=
  ∀ n, P14451684496126964920.a n = A022303 (n + 1)

end A022303

/-! ## A022303.P5986963253148013304

`2^∑[A054354(n+4)]`
-/

namespace A022303.P5986963253148013304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054354 (n + 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A022303.P5986963253148013304

namespace A022303

/-- `2^∑[A054354(n+4)]` -/
def P5986963253148013304.Spec : Prop :=
  ∀ n, P5986963253148013304.a n = (A022303 (n + 1) : ℚ)

end A022303

/-! ## A022303.P5198799317174241080

`Δ[A054353(n+4)]`
-/

namespace A022303.P5198799317174241080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022303.P5198799317174241080

namespace A022303

/-- `Δ[A054353(n+4)]` -/
def P5198799317174241080.Spec : Prop :=
  ∀ n, P5198799317174241080.a n = A022303 (n + 1)

end A022303

/-! ## A022303.P16610569219323261149

`Δ[A216345(n+5)]`
-/

namespace A022303.P16610569219323261149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A022303.P16610569219323261149

namespace A022303

/-- `Δ[A216345(n+5)]` -/
def P16610569219323261149.Spec : Prop :=
  ∀ n, P16610569219323261149.a n = A022303 (n + 1)

end A022303

/-!
# A022304: Index of n-th 1 in A022303.

The programs for A022304, the canonical program `A022304.P12337399357003774958` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022304 has offset 0).

The definition of A022304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022304.P13289664674527375645

`eq[1, A054977(A249507(n+5)²)]+1`
-/

namespace A022304.P13289664674527375645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A249507 (n + 5) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A022304.P13289664674527375645

namespace A022304

/-- `eq[1, A054977(A249507(n+5)²)]+1` -/
def P13289664674527375645.Spec : Prop :=
  ∀ n, (P13289664674527375645.a n : ℤ) = A022304 n

end A022304

/-! ## A022304.P9178956721994083050

`eq[1, A001468(C(5, A249094(n+5)))]+1`
-/

namespace A022304.P9178956721994083050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (Nat.choose 5 (A249094 (n + 5)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A022304.P9178956721994083050

namespace A022304

/-- `eq[1, A001468(C(5, A249094(n+5)))]+1` -/
def P9178956721994083050.Spec : Prop :=
  ∀ n, (P9178956721994083050.a n : ℤ) = A022304 n

end A022304

/-! ## A022304.P2918435458030377351

`eq[1, A000038(A249507(n+5)²)!]+1`
-/

namespace A022304.P2918435458030377351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 (A249507 (n + 5) ^ 2).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A022304.P2918435458030377351

namespace A022304

/-- `eq[1, A000038(A249507(n+5)²)!]+1` -/
def P2918435458030377351.Spec : Prop :=
  ∀ n, (P2918435458030377351.a n : ℤ) = A022304 n

end A022304

/-! ## A022304.P17605072722726897135

`lt[A135534(2*n+1), A249093(n+5)]+1`
-/

namespace A022304.P17605072722726897135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135534 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249093 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A022304.P17605072722726897135

namespace A022304

/-- `lt[A135534(2*n+1), A249093(n+5)]+1` -/
def P17605072722726897135.Spec : Prop :=
  ∀ n, (P17605072722726897135.a n : ℤ) = A022304 n

end A022304

/-! ## A022304.P14161207691393625545

`lt[A165473(A135534(2*n+1)), A249094(n+4)]`
-/

namespace A022304.P14161207691393625545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165473 (A135534 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249094 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A022304.P14161207691393625545

namespace A022304

/-- `lt[A165473(A135534(2*n+1)), A249094(n+4)]` -/
def P14161207691393625545.Spec : Prop :=
  ∀ n, (P14161207691393625545.a n : ℤ) = A022304 n

end A022304

/-! ## A022304.P12337399357003774958

`∑[A327239(n+2)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A022304

/-- `∑[A327239(n+2)]` -/
def P12337399357003774958.Spec : Prop :=
  ∀ n, P12337399357003774958.a n = A022304 n

theorem P12337399357003774958.correct : P12337399357003774958.Spec := by
  intro n
  simp only [A022304]

end A022304

/-! ## A022304.P9552907704361673169

`A022297(n+3)-3`
-/

namespace A022304.P9552907704361673169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022297 (n + 3) - 3

end

end A022304.P9552907704361673169

namespace A022304

/-- `A022297(n+3)-3` -/
def P9552907704361673169.Spec : Prop :=
  ∀ n, P9552907704361673169.a n = A022304 n

end A022304

/-! ## A022304.P6477981893804092588

`A013947(n+3)-4`
-/

namespace A022304.P6477981893804092588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 3) - 4

end

end A022304.P6477981893804092588

namespace A022304

/-- `A013947(n+3)-4` -/
def P6477981893804092588.Spec : Prop :=
  ∀ n, P6477981893804092588.a n = A022304 n

end A022304

/-! ## A022304.P17815619695889240858

`∑[abs(Δ[A013947(n+2)])]`
-/

namespace A022304.P17815619695889240858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022304.P17815619695889240858

namespace A022304

/-- `∑[abs(Δ[A013947(n+2)])]` -/
def P17815619695889240858.Spec : Prop :=
  ∀ n, P17815619695889240858.a n = A022304 n

end A022304

/-! ## A022304.P8016342825592405630

`∑[A000027(Δ[A013947(n+2)])]`
-/

namespace A022304.P8016342825592405630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022304.P8016342825592405630

namespace A022304

/-- `∑[A000027(Δ[A013947(n+2)])]` -/
def P8016342825592405630.Spec : Prop :=
  ∀ n, P8016342825592405630.a n = A022304 n

end A022304

/-! ## A022304.P10369198680110977309

`∑[A000027(Δ[A022297(n+2)])]`
-/

namespace A022304.P10369198680110977309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022297 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022304.P10369198680110977309

namespace A022304

/-- `∑[A000027(Δ[A022297(n+2)])]` -/
def P10369198680110977309.Spec : Prop :=
  ∀ n, P10369198680110977309.a n = A022304 n

end A022304

/-! ## A022304.P567456658499007241

`∑[A006530(Δ[A022297(n+2)])]`
-/

namespace A022304.P567456658499007241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022297 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022304.P567456658499007241

namespace A022304

/-- `∑[A006530(Δ[A022297(n+2)])]` -/
def P567456658499007241.Spec : Prop :=
  ∀ n, P567456658499007241.a n = A022304 n

end A022304

/-! ## A022304.P13873801412678628143

`∑[A014963(Δ[A013947(n+2)])]`
-/

namespace A022304.P13873801412678628143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022304.P13873801412678628143

namespace A022304

/-- `∑[A014963(Δ[A013947(n+2)])]` -/
def P13873801412678628143.Spec : Prop :=
  ∀ n, P13873801412678628143.a n = A022304 n

end A022304

/-! ## A022304.P12103836835231504348

`∑[A020639(Δ[A013947(n+2)])]`
-/

namespace A022304.P12103836835231504348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022304.P12103836835231504348

namespace A022304

/-- `∑[A020639(Δ[A013947(n+2)])]` -/
def P12103836835231504348.Spec : Prop :=
  ∀ n, P12103836835231504348.a n = A022304 n

end A022304

/-! ## A022304.P760102596152952060

`∑[A028255(Δ[A022297(n+2)])]`
-/

namespace A022304.P760102596152952060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022297 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028255 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022304.P760102596152952060

namespace A022304

/-- `∑[A028255(Δ[A022297(n+2)])]` -/
def P760102596152952060.Spec : Prop :=
  ∀ n, P760102596152952060.a n = A022304 n

end A022304

/-! ## A022304.P3130042579441510695

`∑[A092824(Δ[A022297(n+2)])]`
-/

namespace A022304.P3130042579441510695
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022297 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092824 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022304.P3130042579441510695

namespace A022304

/-- `∑[A092824(Δ[A022297(n+2)])]` -/
def P3130042579441510695.Spec : Prop :=
  ∀ n, P3130042579441510695.a n = A022304 n

end A022304

/-! ## A022304.P10134303952043080432

`∑[A122282(Δ[A013947(n+2)])]`
-/

namespace A022304.P10134303952043080432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122282 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022304.P10134303952043080432

namespace A022304

/-- `∑[A122282(Δ[A013947(n+2)])]` -/
def P10134303952043080432.Spec : Prop :=
  ∀ n, P10134303952043080432.a n = A022304 n

end A022304

/-! ## A022304.P11957143654322003327

`∑[A270339(Δ[A013947(n+2)])]`
-/

namespace A022304.P11957143654322003327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270339 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022304.P11957143654322003327

namespace A022304

/-- `∑[A270339(Δ[A013947(n+2)])]` -/
def P11957143654322003327.Spec : Prop :=
  ∀ n, P11957143654322003327.a n = A022304 n

end A022304

/-! ## A022304.P12275296872543567227

`eq[1, A022303(n+1)]+1`
-/

namespace A022304.P12275296872543567227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022303 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A022304.P12275296872543567227

namespace A022304

/-- `eq[1, A022303(n+1)]+1` -/
def P12275296872543567227.Spec : Prop :=
  ∀ n, (P12275296872543567227.a n : ℤ) = A022304 n

end A022304

/-! ## A022304.P3244013844728712699

`record[A000027(n+1)/A022303(n+1)]`
-/

namespace A022304.P3244013844728712699
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A022303 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022304.P3244013844728712699

namespace A022304

/-- `record[A000027(n+1)/A022303(n+1)]` -/
def P3244013844728712699.Spec : Prop :=
  ∀ n, P3244013844728712699.a n = (A022304 n : ℚ)

end A022304

/-!
# A022305: Exactly half the first a(n) terms of A022303 are 1's.

The programs for A022305, the canonical program `A022305.P12163215201102219091` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022305 has offset 0).

The definition of A022305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022305.P7457083090576587680

`2*A022306(n)`
-/

namespace A022305.P7457083090576587680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022306 n

end

end A022305.P7457083090576587680

namespace A022305

/-- `2*A022306(n)` -/
def P7457083090576587680.Spec : Prop :=
  ∀ n, P7457083090576587680.a n = A022305 n

end A022305

/-! ## A022305.P7676805597021079589

`A022306(-A001489(n))+A022306(n)`
-/

namespace A022305.P7676805597021079589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022306 (-A001489 n).toNat + A022306 n

end

end A022305.P7676805597021079589

namespace A022305

/-- `A022306(-A001489(n))+A022306(n)` -/
def P7676805597021079589.Spec : Prop :=
  ∀ n, P7676805597021079589.a n = A022305 n

end A022305

/-! ## A022305.P12163215201102219091

`2*(A022293(n+2)-2)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A022305

/-- `2*(A022293(n+2)-2)` -/
def P12163215201102219091.Spec : Prop :=
  ∀ n, P12163215201102219091.a n = A022305 n

theorem P12163215201102219091.correct : P12163215201102219091.Spec := by
  intro n
  simp only [A022305]

end A022305

/-! ## A022305.P6164818260913266271

`∑[2*Δ[A022293(n+1)]]`
-/

namespace A022305.P6164818260913266271
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022293 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022305.P6164818260913266271

namespace A022305

/-- `∑[2*Δ[A022293(n+1)]]` -/
def P6164818260913266271.Spec : Prop :=
  ∀ n, P6164818260913266271.a n = A022305 n

end A022305

/-! ## A022305.P12204441492145150416

`record[abs(2-A022293(n))]+A022293(n+2)-2`
-/

namespace A022305.P12204441492145150416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A022293 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A022293 (n + 2) - 2)

end

end A022305.P12204441492145150416

namespace A022305

/-- `record[abs(2-A022293(n))]+A022293(n+2)-2` -/
def P12204441492145150416.Spec : Prop :=
  ∀ n, P12204441492145150416.a n = A022305 n

end A022305

/-! ## A022305.P3622965151278424673

`A022292(n+3)-4`
-/

namespace A022305.P3622965151278424673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022292 (n + 3) - 4

end

end A022305.P3622965151278424673

namespace A022305

/-- `A022292(n+3)-4` -/
def P3622965151278424673.Spec : Prop :=
  ∀ n, P3622965151278424673.a n = A022305 n

end A022305

/-! ## A022305.P15219788195464637119

`∑[abs(Δ[A022292(n+2)])]`
-/

namespace A022305.P15219788195464637119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022292 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022305.P15219788195464637119

namespace A022305

/-- `∑[abs(Δ[A022292(n+2)])]` -/
def P15219788195464637119.Spec : Prop :=
  ∀ n, P15219788195464637119.a n = A022305 n

end A022305

/-! ## A022305.P8559514614175116745

`A004277(A022306(n))`
-/

namespace A022305.P8559514614175116745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A022306 n).toNat

end

end A022305.P8559514614175116745

namespace A022305

/-- `A004277(A022306(n))` -/
def P8559514614175116745.Spec : Prop :=
  ∀ n, P8559514614175116745.a n = A022305 n

end A022305

/-! ## A022305.P6656992283985536169

`record[abs(2*A097141(A022293(n)))]`
-/

namespace A022305.P6656992283985536169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A097141 (A022293 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022305.P6656992283985536169

namespace A022305

/-- `record[abs(2*A097141(A022293(n)))]` -/
def P6656992283985536169.Spec : Prop :=
  ∀ n, P6656992283985536169.a n = A022305 n

end A022305

/-! ## A022305.P10844017838191815773

`A005843(lcm(log2(1/2), A022306(n)))`
-/

namespace A022305.P10844017838191815773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.lcm (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (A022306 n))

end

end A022305.P10844017838191815773

namespace A022305

/-- `A005843(lcm(log2(1/2), A022306(n)))` -/
def P10844017838191815773.Spec : Prop :=
  ∀ n, P10844017838191815773.a n = A022305 n

end A022305

/-! ## A022305.P6179476591304827903

`A028310(A022293(n+2)-2)+A022293(n+2)-2`
-/

namespace A022305.P6179476591304827903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A022293 (n + 2) - 2).toNat + (A022293 (n + 2) - 2)

end

end A022305.P6179476591304827903

namespace A022305

/-- `A028310(A022293(n+2)-2)+A022293(n+2)-2` -/
def P6179476591304827903.Spec : Prop :=
  ∀ n, P6179476591304827903.a n = A022305 n

end A022305

/-! ## A022305.P15792399201660600941

`A255327(A255056(n))+A005843(A022306(n))`
-/

namespace A022305.P15792399201660600941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255327 (A255056 n).toNat + A005843 (A022306 n).toNat

end

end A022305.P15792399201660600941

namespace A022305

/-- `A255327(A255056(n))+A005843(A022306(n))` -/
def P15792399201660600941.Spec : Prop :=
  ∀ n, P15792399201660600941.a n = A022305 n

end A022305

/-! ## A022305.P7164778182812977089

`record[gcd(n-2, A294448(n+2))]`
-/

namespace A022305.P7164778182812977089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 2) (A294448 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022305.P7164778182812977089

namespace A022305

/-- `record[gcd(n-2, A294448(n+2))]` -/
def P7164778182812977089.Spec : Prop :=
  ∀ n, (P7164778182812977089.a n : ℤ) = A022305 n

end A022305

/-! ## A022305.P5412232405196847996

`eq[Δ[A062383(n)], A294448(n+4)]`
-/

namespace A022305.P5412232405196847996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294448 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A022305.P5412232405196847996

namespace A022305

/-- `eq[Δ[A062383(n)], A294448(n+4)]` -/
def P5412232405196847996.Spec : Prop :=
  ∀ n, (P5412232405196847996.a n : ℤ) = A022305 n

end A022305

/-! ## A022305.P9054088137423687276

`eq[char[A289324(3*n+1)], A294448(n+4)]`
-/

namespace A022305.P9054088137423687276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289324 (3 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294448 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A022305.P9054088137423687276

namespace A022305

/-- `eq[char[A289324(3*n+1)], A294448(n+4)]` -/
def P9054088137423687276.Spec : Prop :=
  ∀ n, (P9054088137423687276.a n : ℤ) = A022305 n

end A022305

/-!
# A022306: Sequence A022305 divided by 2.

The programs for A022306, the canonical program `A022306.P10782893219587604583` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022306 has offset 0).

The definition of A022306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022306.P10782893219587604583

`A022305(n)/2`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A022306

/-- `A022305(n)/2` -/
def P10782893219587604583.Spec : Prop :=
  ∀ n, P10782893219587604583.a n = (A022306 n : ℚ)

end A022306

/-! ## A022306.P4241321048878390876

`A022293(n+2)-2`
-/

namespace A022306.P4241321048878390876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022293 (n + 2) - 2

end

end A022306.P4241321048878390876

namespace A022306

/-- `A022293(n+2)-2` -/
def P4241321048878390876.Spec : Prop :=
  ∀ n, P4241321048878390876.a n = A022306 n

end A022306

/-! ## A022306.P2062666095598977027

`record[abs(2-A022293(n))]`
-/

namespace A022306.P2062666095598977027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A022293 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022306.P2062666095598977027

namespace A022306

/-- `record[abs(2-A022293(n))]` -/
def P2062666095598977027.Spec : Prop :=
  ∀ n, P2062666095598977027.a n = A022306 n

end A022306

/-! ## A022306.P7404858413137538290

`∑[abs(Δ[A022293(n+1)])]`
-/

namespace A022306.P7404858413137538290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022293 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022306.P7404858413137538290

namespace A022306

/-- `∑[abs(Δ[A022293(n+1)])]` -/
def P7404858413137538290.Spec : Prop :=
  ∀ n, P7404858413137538290.a n = A022306 n

end A022306

/-! ## A022306.P17876888323479713990

`A022292(n+3)/2-2`
-/

namespace A022306.P17876888323479713990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022292 (n + 3) : ℚ) / 2 - 2

end

end A022306.P17876888323479713990

namespace A022306

/-- `A022292(n+3)/2-2` -/
def P17876888323479713990.Spec : Prop :=
  ∀ n, P17876888323479713990.a n = (A022306 n : ℚ)

end A022306

/-! ## A022306.P15006227047767189813

`∑[A000027(Δ[A022293(n+1)])]`
-/

namespace A022306.P15006227047767189813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022293 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022306.P15006227047767189813

namespace A022306

/-- `∑[A000027(Δ[A022293(n+1)])]` -/
def P15006227047767189813.Spec : Prop :=
  ∀ n, P15006227047767189813.a n = A022306 n

end A022306

/-! ## A022306.P297689034187730784

`A302043(A022305(n))`
-/

namespace A022306.P297689034187730784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302043 (A022305 n).toNat

end

end A022306.P297689034187730784

namespace A022306

/-- `A302043(A022305(n))` -/
def P297689034187730784.Spec : Prop :=
  ∀ n, P297689034187730784.a n = A022306 n

end A022306

/-! ## A022306.P2624059585473086939

`record[abs(A097141(A022293(n)))]`
-/

namespace A022306.P2624059585473086939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097141 (A022293 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022306.P2624059585473086939

namespace A022306

/-- `record[abs(A097141(A022293(n)))]` -/
def P2624059585473086939.Spec : Prop :=
  ∀ n, P2624059585473086939.a n = A022306 n

end A022306

/-! ## A022306.P4792669586236491544

`record[root(A028310(n), A074298(n+2))]`
-/

namespace A022306.P4792669586236491544
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A028310 n : ℝ) ^ (1 / (A074298 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022306.P4792669586236491544

namespace A022306

/-- `record[root(A028310(n), A074298(n+2))]` -/
def P4792669586236491544.Spec : Prop :=
  ∀ n, P4792669586236491544.a n = (A022306 n : ℝ)

end A022306

/-! ## A022306.P1505962501826482554

`lt[A074298(n+2)²², A080383(2*n)]`
-/

namespace A022306.P1505962501826482554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074298 (n + 2) ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080383 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A022306.P1505962501826482554

namespace A022306

/-- `lt[A074298(n+2)²², A080383(2*n)]` -/
def P1505962501826482554.Spec : Prop :=
  ∀ n, (P1505962501826482554.a n : ℤ) = A022306 n

end A022306

/-! ## A022306.P634983952533927199

`A080513(A022305(n)-2)`
-/

namespace A022306.P634983952533927199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A022305 n - 2).toNat

end

end A022306.P634983952533927199

namespace A022306

/-- `A080513(A022305(n)-2)` -/
def P634983952533927199.Spec : Prop :=
  ∀ n, P634983952533927199.a n = A022306 n

end A022306

/-! ## A022306.P681103823348040855

`A001281(A022305(n)+2)-1`
-/

namespace A022306.P681103823348040855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A022305 n + 2).toNat - 1

end

end A022306.P681103823348040855

namespace A022306

/-- `A001281(A022305(n)+2)-1` -/
def P681103823348040855.Spec : Prop :=
  ∀ n, P681103823348040855.a n = A022306 n

end A022306

/-! ## A022306.P4751091976427952811

`A074286(A022292(n+3))-2`
-/

namespace A022306.P4751091976427952811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (A022292 (n + 3)).toNat - 2

end

end A022306.P4751091976427952811

namespace A022306

/-- `A074286(A022292(n+3))-2` -/
def P4751091976427952811.Spec : Prop :=
  ∀ n, P4751091976427952811.a n = A022306 n

end A022306

/-! ## A022306.P15071073939871327264

`A001281(2*A022305(n)-A022305(n))`
-/

namespace A022306.P15071073939871327264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (2 * A022305 n - A022305 n).toNat

end

end A022306.P15071073939871327264

namespace A022306

/-- `A001281(2*A022305(n)-A022305(n))` -/
def P15071073939871327264.Spec : Prop :=
  ∀ n, P15071073939871327264.a n = A022306 n

end A022306

/-! ## A022306.P18005893726277525078

`eq[char[A306229(n+1)], A074298(n+2)]`
-/

namespace A022306.P18005893726277525078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306229 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074298 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A022306.P18005893726277525078

namespace A022306

/-- `eq[char[A306229(n+1)], A074298(n+2)]` -/
def P18005893726277525078.Spec : Prop :=
  ∀ n, (P18005893726277525078.a n : ℤ) = A022306 n

end A022306

/-!
# A022307: Number of distinct prime factors of n-th Fibonacci number.

The programs for A022307, there is no canonical definition to state claims against.
-/

/-! ## A022307.P7369562860797179005

`∑{d}[n, A086597(#)]`
-/

namespace A022307.P7369562860797179005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A086597 d

end

end A022307.P7369562860797179005

/-! ## A022307.P2161047741335013221

`A001221(A278245(round(acot(n)+n)))`
-/

namespace A022307.P2161047741335013221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A278245 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat).toNat

end

end A022307.P2161047741335013221

/-! ## A022307.P3735445394686187526

`A001221(A278245(abs(1-n)+1))`
-/

namespace A022307.P3735445394686187526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A278245 (|1 - (n : ℤ)| + 1).toNat).toNat

end

end A022307.P3735445394686187526

/-! ## A022307.P15407500200699410620

`∑{e}[A000045(n), gcd(7, #)]`
-/

namespace A022307.P15407500200699410620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.gcd 7 (Nat.factorization (f1 n).natAbs p)

end

end A022307.P15407500200699410620

/-!
# A022308: a(n) = a(n-1) + a(n-2) + 1 for n>1, a(0)=0, a(1)=3.

The programs for A022308, the canonical program `A022308.P3901341239502445022` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022308 has offset 0).

The definition of A022308 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022308.P3901341239502445022`, by `A022308.P3901341239502445022.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022308.P3901341239502445022

`a(n-1)+a(n-2)+1` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022308

/-- `a(n-1)+a(n-2)+1` -/
def P3901341239502445022.Spec : Prop :=
  ∀ n, (P3901341239502445022.a n : ℤ) = A022308 n

theorem P3901341239502445022.correct : P3901341239502445022.Spec := by
  intro n
  simp only [A022308]

end A022308

/-! ## A022308.P11211481578377213958

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=3, a(2)=4`
-/

namespace A022308.P11211481578377213958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 4] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A022308.P11211481578377213958

namespace A022308

/-- `2*a(n-1)-a(n-3)` -/
def P11211481578377213958.Spec : Prop :=
  ∀ n, P11211481578377213958.a n = A022308 n

end A022308

/-! ## A022308.P8564998752250817814

`A000285(n)-1`
-/

namespace A022308.P8564998752250817814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n - 1

end

end A022308.P8564998752250817814

namespace A022308

/-- `A000285(n)-1` -/
def P8564998752250817814.Spec : Prop :=
  ∀ n, P8564998752250817814.a n = A022308 n

end A022308

/-! ## A022308.P9226351011328103812

`2*A000045(n)+A000045(n+2)-1`
-/

namespace A022308.P9226351011328103812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n + A000045 (n + 2) - 1

end

end A022308.P9226351011328103812

namespace A022308

/-- `2*A000045(n)+A000045(n+2)-1` -/
def P9226351011328103812.Spec : Prop :=
  ∀ n, P9226351011328103812.a n = A022308 n

end A022308

/-! ## A022308.P16242370562441455325

`ogf((3x-2x^2)/(1-2x+x^3))`
-/

namespace A022308.P16242370562441455325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -2] [1, -2, 0, 1] n

end

end A022308.P16242370562441455325

namespace A022308

/-- `ogf((3x-2x^2)/(1-2x+x^3))` -/
def P16242370562441455325.Spec : Prop :=
  ∀ n, P16242370562441455325.a n = A022308 n

end A022308

/-! ## A022308.P12411825605256422939

`a(n-1)-xor(-1, a(n-2))` with `a(0)=0, a(1)=3`
-/

namespace A022308.P12411825605256422939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 1) - Int.xor (-1) (a (n - 2))

end

end A022308.P12411825605256422939

namespace A022308

/-- `a(n-1)-xor(-1, a(n-2))` -/
def P12411825605256422939.Spec : Prop :=
  ∀ n, P12411825605256422939.a n = A022308 n

end A022308

/-! ## A022308.P2741327563266751715

`2-floor(1-a(n-1)-a(n-2))` with `a(0)=0, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A022308.P2741327563266751715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  2 - (1 - a (n - 1) - a (n - 2))

end

end A022308.P2741327563266751715

namespace A022308

/-- `2-floor(1-a(n-1)-a(n-2))` -/
def P2741327563266751715.Spec : Prop :=
  ∀ n, P2741327563266751715.a n = A022308 n

end A022308

/-! ## A022308.P15728458054600778688

`4/2-(1-a(n-1)-a(n-2))` with `a(0)=0, a(1)=3`
-/

namespace A022308.P15728458054600778688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 3] fun n a =>
  (4 : ℚ) / 2 - (1 - a (n - 1) - a (n - 2))

end

end A022308.P15728458054600778688

namespace A022308

/-- `4/2-(1-a(n-1)-a(n-2))` -/
def P15728458054600778688.Spec : Prop :=
  ∀ n, P15728458054600778688.a n = (A022308 n : ℚ)

end A022308

/-! ## A022308.P15633552256999089336

`∑[a(n-1)-(a(n-3)-a(n-1))]` with `a(0)=0, a(1)=3, a(2)=1, a(3)=4`
-/

namespace A022308.P15633552256999089336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 1, 4] fun n f1 =>
  f1 (n - 1) - (f1 (n - 3) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022308.P15633552256999089336

namespace A022308

/-- `∑[a(n-1)-(a(n-3)-a(n-1))]` -/
def P15633552256999089336.Spec : Prop :=
  ∀ n, P15633552256999089336.a n = A022308 n

end A022308

/-! ## A022308.P8374896596304807137

`2-((1-a(n-1))%a(n-1)-a(n-2))` with `a(0)=0, a(1)=3`
-/

namespace A022308.P8374896596304807137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  2 - (Int.tmod (1 - a (n - 1)) (a (n - 1)) - a (n - 2))

end

end A022308.P8374896596304807137

namespace A022308

/-- `2-((1-a(n-1))%a(n-1)-a(n-2))` -/
def P8374896596304807137.Spec : Prop :=
  ∀ n, P8374896596304807137.a n = A022308 n

end A022308

/-! ## A022308.P4093364759754632782

`A104449(n+1)-1`
-/

namespace A022308.P4093364759754632782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 (n + 1) - 1

end

end A022308.P4093364759754632782

namespace A022308

/-- `A104449(n+1)-1` -/
def P4093364759754632782.Spec : Prop :=
  ∀ n, P4093364759754632782.a n = A022308 n

end A022308

/-! ## A022308.P13779522410162761069

`A001610(n)+A000045(n)`
-/

namespace A022308.P13779522410162761069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n + A000045 n

end

end A022308.P13779522410162761069

namespace A022308

/-- `A001610(n)+A000045(n)` -/
def P13779522410162761069.Spec : Prop :=
  ∀ n, P13779522410162761069.a n = A022308 n

end A022308

/-! ## A022308.P15043507848708947096

`A301653(n)+A109522(n)`
-/

namespace A022308.P15043507848708947096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301653 n + A109522 n

end

end A022308.P15043507848708947096

namespace A022308

/-- `A301653(n)+A109522(n)` -/
def P15043507848708947096.Spec : Prop :=
  ∀ n, P15043507848708947096.a n = A022308 n

end A022308

/-! ## A022308.P9113843038677328865

`A020706(n)-A000211(n)`
-/

namespace A022308.P9113843038677328865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 n - A000211 n

end

end A022308.P9113843038677328865

namespace A022308

/-- `A020706(n)-A000211(n)` -/
def P9113843038677328865.Spec : Prop :=
  ∀ n, P9113843038677328865.a n = A022308 n

end A022308

/-! ## A022308.P7825015354107275454

`A020701(n)-A001612(n)`
-/

namespace A022308.P7825015354107275454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n - A001612 n

end

end A022308.P7825015354107275454

namespace A022308

/-- `A020701(n)-A001612(n)` -/
def P7825015354107275454.Spec : Prop :=
  ∀ n, P7825015354107275454.a n = A022308 n

end A022308

/-! ## A022308.P887641323435376714

`A022309(n)-A000045(n)`
-/

namespace A022308.P887641323435376714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022309 n - A000045 n

end

end A022308.P887641323435376714

namespace A022308

/-- `A022309(n)-A000045(n)` -/
def P887641323435376714.Spec : Prop :=
  ∀ n, P887641323435376714.a n = A022308 n

end A022308

/-! ## A022308.P1144401209225286578

`A022096(n)-A001588(n)`
-/

namespace A022308.P1144401209225286578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022096 n - A001588 n

end

end A022308.P1144401209225286578

namespace A022308

/-- `A022096(n)-A001588(n)` -/
def P1144401209225286578.Spec : Prop :=
  ∀ n, P1144401209225286578.a n = A022308 n

end A022308

/-! ## A022308.P15925152010765368437

`A022095(n)-A001611(n)`
-/

namespace A022308.P15925152010765368437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 n - A001611 n

end

end A022308.P15925152010765368437

namespace A022308

/-- `A022095(n)-A001611(n)` -/
def P15925152010765368437.Spec : Prop :=
  ∀ n, P15925152010765368437.a n = A022308 n

end A022308

/-! ## A022308.P18438734727195563704

`A001595(n)+Δ[A000032(n)]`
-/

namespace A022308.P18438734727195563704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 n + (f1 (n + 1) - f1 n)

end

end A022308.P18438734727195563704

namespace A022308

/-- `A001595(n)+Δ[A000032(n)]` -/
def P18438734727195563704.Spec : Prop :=
  ∀ n, P18438734727195563704.a n = A022308 n

end A022308

/-! ## A022308.P1505182091226351240

`A022086(n)+A000071(n+1)`
-/

namespace A022308.P1505182091226351240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 n + A000071 (n + 1)

end

end A022308.P1505182091226351240

namespace A022308

/-- `A022086(n)+A000071(n+1)` -/
def P1505182091226351240.Spec : Prop :=
  ∀ n, P1505182091226351240.a n = A022308 n

end A022308

/-!
# A022309: a(n) = a(n-1) + a(n-2) + 1 for n>1, a(0)=0, a(1)=4.

The programs for A022309, the canonical program `A022309.P16069793036239963023` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022309 has offset 0).

The definition of A022309 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022309.P16069793036239963023`, by `A022309.P16069793036239963023.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022309.P16069793036239963023

`a(n-1)+a(n-2)+1` with `a(0)=0, a(1)=4`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022309

/-- `a(n-1)+a(n-2)+1` -/
def P16069793036239963023.Spec : Prop :=
  ∀ n, (P16069793036239963023.a n : ℤ) = A022309 n

theorem P16069793036239963023.correct : P16069793036239963023.Spec := by
  intro n
  simp only [A022309]

end A022309

/-! ## A022309.P16496284092526407015

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=4, a(2)=5`
-/

namespace A022309.P16496284092526407015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 5] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A022309.P16496284092526407015

namespace A022309

/-- `2*a(n-1)-a(n-3)` -/
def P16496284092526407015.Spec : Prop :=
  ∀ n, P16496284092526407015.a n = A022309 n

end A022309

/-! ## A022309.P14005686953710805457

`A022095(n)-1`
-/

namespace A022309.P14005686953710805457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 n - 1

end

end A022309.P14005686953710805457

namespace A022309

/-- `A022095(n)-1` -/
def P14005686953710805457.Spec : Prop :=
  ∀ n, P14005686953710805457.a n = A022309 n

end A022309

/-! ## A022309.P14906699799553104903

`ogf((4x-3x^2)/(1-2x+x^3))`
-/

namespace A022309.P14906699799553104903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -3] [1, -2, 0, 1] n

end

end A022309.P14906699799553104903

namespace A022309

/-- `ogf((4x-3x^2)/(1-2x+x^3))` -/
def P14906699799553104903.Spec : Prop :=
  ∀ n, P14906699799553104903.a n = A022309 n

end A022309

/-! ## A022309.P17728274451297705542

`a(n-1)-xor(-1, a(n-2))` with `a(0)=0, a(1)=4`
-/

namespace A022309.P17728274451297705542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 1) - Int.xor (-1) (a (n - 2))

end

end A022309.P17728274451297705542

namespace A022309

/-- `a(n-1)-xor(-1, a(n-2))` -/
def P17728274451297705542.Spec : Prop :=
  ∀ n, P17728274451297705542.a n = A022309 n

end A022309

/-! ## A022309.P12689735320072885529

`2-floor(1-a(n-1)-a(n-2))` with `a(0)=0, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A022309.P12689735320072885529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  2 - (1 - a (n - 1) - a (n - 2))

end

end A022309.P12689735320072885529

namespace A022309

/-- `2-floor(1-a(n-1)-a(n-2))` -/
def P12689735320072885529.Spec : Prop :=
  ∀ n, P12689735320072885529.a n = A022309 n

end A022309

/-! ## A022309.P4404511472792310285

`4/2-(1-a(n-1)-a(n-2))` with `a(0)=0, a(1)=4`
-/

namespace A022309.P4404511472792310285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 4] fun n a =>
  (4 : ℚ) / 2 - (1 - a (n - 1) - a (n - 2))

end

end A022309.P4404511472792310285

namespace A022309

/-- `4/2-(1-a(n-1)-a(n-2))` -/
def P4404511472792310285.Spec : Prop :=
  ∀ n, P4404511472792310285.a n = (A022309 n : ℚ)

end A022309

/-! ## A022309.P10249936278407801815

`∑[a(n-1)-(a(n-3)-a(n-1))]` with `a(0)=0, a(1)=4, a(2)=1, a(3)=5`
-/

namespace A022309.P10249936278407801815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 1, 5] fun n f1 =>
  f1 (n - 1) - (f1 (n - 3) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022309.P10249936278407801815

namespace A022309

/-- `∑[a(n-1)-(a(n-3)-a(n-1))]` -/
def P10249936278407801815.Spec : Prop :=
  ∀ n, P10249936278407801815.a n = A022309 n

end A022309

/-! ## A022309.P10070740748868189915

`2-((1-a(n-1))%a(n-1)-a(n-2))` with `a(0)=0, a(1)=4`
-/

namespace A022309.P10070740748868189915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  2 - (Int.tmod (1 - a (n - 1)) (a (n - 1)) - a (n - 2))

end

end A022309.P10070740748868189915

namespace A022309

/-- `2-((1-a(n-1))%a(n-1)-a(n-2))` -/
def P10070740748868189915.Spec : Prop :=
  ∀ n, P10070740748868189915.a n = A022309 n

end A022309

/-! ## A022309.P5935386835980164702

`A022308(n)+A000045(n)`
-/

namespace A022309.P5935386835980164702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 n + A000045 n

end

end A022309.P5935386835980164702

namespace A022309

/-- `A022308(n)+A000045(n)` -/
def P5935386835980164702.Spec : Prop :=
  ∀ n, P5935386835980164702.a n = A022309 n

end A022309

/-! ## A022309.P10987607093702057367

`A022310(n)-A000045(n)`
-/

namespace A022309.P10987607093702057367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022310 n - A000045 n

end

end A022309.P10987607093702057367

namespace A022309

/-- `A022310(n)-A000045(n)` -/
def P10987607093702057367.Spec : Prop :=
  ∀ n, P10987607093702057367.a n = A022309 n

end A022309

/-! ## A022309.P7874048633202959300

`A022096(n)-A001611(n)`
-/

namespace A022309.P7874048633202959300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022096 n - A001611 n

end

end A022309.P7874048633202959300

namespace A022309

/-- `A022096(n)-A001611(n)` -/
def P7874048633202959300.Spec : Prop :=
  ∀ n, P7874048633202959300.a n = A022309 n

end A022309

/-! ## A022309.P354150020783128367

`A022086(n)+∑[A000045(n)]`
-/

namespace A022309.P354150020783128367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022309.P354150020783128367

namespace A022309

/-- `A022086(n)+∑[A000045(n)]` -/
def P354150020783128367.Spec : Prop :=
  ∀ n, P354150020783128367.a n = A022309 n

end A022309

/-! ## A022309.P14240652126451874751

`A006355(n+1)+A001610(n)`
-/

namespace A022309.P14240652126451874751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 1) + A001610 n

end

end A022309.P14240652126451874751

namespace A022309

/-- `A006355(n+1)+A001610(n)` -/
def P14240652126451874751.Spec : Prop :=
  ∀ n, P14240652126451874751.a n = A022309 n

end A022309

/-! ## A022309.P2116925062938972494

`A022087(n)+A000071(n+1)`
-/

namespace A022309.P2116925062938972494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 n + A000071 (n + 1)

end

end A022309.P2116925062938972494

namespace A022309

/-- `A022087(n)+A000071(n+1)` -/
def P2116925062938972494.Spec : Prop :=
  ∀ n, P2116925062938972494.a n = A022309 n

end A022309

/-! ## A022309.P5761329227408055445

`A118658(n+1)+A001610(n)`
-/

namespace A022309.P5761329227408055445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 (n + 1) + A001610 n

end

end A022309.P5761329227408055445

namespace A022309

/-- `A118658(n+1)+A001610(n)` -/
def P5761329227408055445.Spec : Prop :=
  ∀ n, P5761329227408055445.a n = A022309 n

end A022309

/-! ## A022309.P12570095621292079495

`A212804(n+1)+A022308(n)`
-/

namespace A022309.P12570095621292079495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + A022308 n

end

end A022309.P12570095621292079495

namespace A022309

/-- `A212804(n+1)+A022308(n)` -/
def P12570095621292079495.Spec : Prop :=
  ∀ n, P12570095621292079495.a n = A022309 n

end A022309

/-! ## A022309.P10703604569992250545

`A000045(n)+A000285(n)-1`
-/

namespace A022309.P10703604569992250545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A000285 n - 1)

end

end A022309.P10703604569992250545

namespace A022309

/-- `A000045(n)+A000285(n)-1` -/
def P10703604569992250545.Spec : Prop :=
  ∀ n, P10703604569992250545.a n = A022309 n

end A022309

/-! ## A022309.P7560949170502701119

`A001588(n)+A001610(n)-1`
-/

namespace A022309.P7560949170502701119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 n + (A001610 n - 1)

end

end A022309.P7560949170502701119

namespace A022309

/-- `A001588(n)+A001610(n)-1` -/
def P7560949170502701119.Spec : Prop :=
  ∀ n, P7560949170502701119.a n = A022309 n

end A022309

/-! ## A022309.P8772062217190201867

`A022096(n)-(A000045(n)+1)`
-/

namespace A022309.P8772062217190201867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022096 n - (A000045 n + 1)

end

end A022309.P8772062217190201867

namespace A022309

/-- `A022096(n)-(A000045(n)+1)` -/
def P8772062217190201867.Spec : Prop :=
  ∀ n, P8772062217190201867.a n = A022309 n

end A022309

/-!
# A022310: a(n) = a(n-1) + a(n-2) + 1 for n>1, a(0)=0, a(1)=5.

The programs for A022310, the canonical program `A022310.P13553319970620797841` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022310 has offset 0).

The definition of A022310 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022310.P13553319970620797841`, by `A022310.P13553319970620797841.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022310.P13553319970620797841

`a(n-1)+a(n-2)+1` with `a(0)=0, a(1)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022310

/-- `a(n-1)+a(n-2)+1` -/
def P13553319970620797841.Spec : Prop :=
  ∀ n, (P13553319970620797841.a n : ℤ) = A022310 n

theorem P13553319970620797841.correct : P13553319970620797841.Spec := by
  intro n
  simp only [A022310]

end A022310

/-! ## A022310.P16317982896784033538

`A022096(n)-1`
-/

namespace A022310.P16317982896784033538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022096 n - 1

end

end A022310.P16317982896784033538

namespace A022310

/-- `A022096(n)-1` -/
def P16317982896784033538.Spec : Prop :=
  ∀ n, P16317982896784033538.a n = A022310 n

end A022310

/-! ## A022310.P10417800547458982492

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=5, a(2)=6`
-/

namespace A022310.P10417800547458982492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5, 6] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A022310.P10417800547458982492

namespace A022310

/-- `2*a(n-1)-a(n-3)` -/
def P10417800547458982492.Spec : Prop :=
  ∀ n, P10417800547458982492.a n = A022310 n

end A022310

/-! ## A022310.P7550521214784694825

`ogf((5x-4x^2)/(1-2x+x^3))`
-/

namespace A022310.P7550521214784694825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, -4] [1, -2, 0, 1] n

end

end A022310.P7550521214784694825

namespace A022310

/-- `ogf((5x-4x^2)/(1-2x+x^3))` -/
def P7550521214784694825.Spec : Prop :=
  ∀ n, P7550521214784694825.a n = A022310 n

end A022310

/-! ## A022310.P7395396001149146334

`a(n-1)-xor(-1, a(n-2))` with `a(0)=0, a(1)=5`
-/

namespace A022310.P7395396001149146334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  a (n - 1) - Int.xor (-1) (a (n - 2))

end

end A022310.P7395396001149146334

namespace A022310

/-- `a(n-1)-xor(-1, a(n-2))` -/
def P7395396001149146334.Spec : Prop :=
  ∀ n, P7395396001149146334.a n = A022310 n

end A022310

/-! ## A022310.P5547083719617198390

`2-floor(1-a(n-1)-a(n-2))` with `a(0)=0, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A022310.P5547083719617198390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  2 - (1 - a (n - 1) - a (n - 2))

end

end A022310.P5547083719617198390

namespace A022310

/-- `2-floor(1-a(n-1)-a(n-2))` -/
def P5547083719617198390.Spec : Prop :=
  ∀ n, P5547083719617198390.a n = A022310 n

end A022310

/-! ## A022310.P5585665719637461322

`A022309(n)+A000045(n)`
-/

namespace A022310.P5585665719637461322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022309 n + A000045 n

end

end A022310.P5585665719637461322

namespace A022310

/-- `A022309(n)+A000045(n)` -/
def P5585665719637461322.Spec : Prop :=
  ∀ n, P5585665719637461322.a n = A022310 n

end A022310

/-! ## A022310.P3299081933235343705

`A022086(n)+A001610(n)`
-/

namespace A022310.P3299081933235343705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 n + A001610 n

end

end A022310.P3299081933235343705

namespace A022310

/-- `A022086(n)+A001610(n)` -/
def P3299081933235343705.Spec : Prop :=
  ∀ n, P3299081933235343705.a n = A022310 n

end A022310

/-! ## A022310.P2277237010134970925

`A022088(n)+A000071(n+1)`
-/

namespace A022310.P2277237010134970925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 n + A000071 (n + 1)

end

end A022310.P2277237010134970925

namespace A022310

/-- `A022088(n)+A000071(n+1)` -/
def P2277237010134970925.Spec : Prop :=
  ∀ n, P2277237010134970925.a n = A022310 n

end A022310

/-! ## A022310.P12826483156090637037

`A057428(n+1)+A022096(n)`
-/

namespace A022310.P12826483156090637037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A022096 n

end

end A022310.P12826483156090637037

namespace A022310

/-- `A057428(n+1)+A022096(n)` -/
def P12826483156090637037.Spec : Prop :=
  ∀ n, P12826483156090637037.a n = A022310 n

end A022310

/-! ## A022310.P16350874314283598269

`A118658(n+1)+A022308(n)`
-/

namespace A022310.P16350874314283598269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 (n + 1) + A022308 n

end

end A022310.P16350874314283598269

namespace A022310

/-- `A118658(n+1)+A022308(n)` -/
def P16350874314283598269.Spec : Prop :=
  ∀ n, P16350874314283598269.a n = A022310 n

end A022310

/-! ## A022310.P15690076699753851051

`A152163(n+1)+A022319(n)`
-/

namespace A022310.P15690076699753851051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 (n + 1) + A022319 n

end

end A022310.P15690076699753851051

namespace A022310

/-- `A152163(n+1)+A022319(n)` -/
def P15690076699753851051.Spec : Prop :=
  ∀ n, P15690076699753851051.a n = A022310 n

end A022310

/-! ## A022310.P123722512772746690

`A212804(n+1)+A022309(n)`
-/

namespace A022310.P123722512772746690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + A022309 n

end

end A022310.P123722512772746690

namespace A022310

/-- `A212804(n+1)+A022309(n)` -/
def P123722512772746690.Spec : Prop :=
  ∀ n, P123722512772746690.a n = A022310 n

end A022310

/-! ## A022310.P6894557534215417954

`A000045(n)+A022095(n)-1`
-/

namespace A022310.P6894557534215417954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A022095 n - 1)

end

end A022310.P6894557534215417954

namespace A022310

/-- `A000045(n)+A022095(n)-1` -/
def P6894557534215417954.Spec : Prop :=
  ∀ n, P6894557534215417954.a n = A022310 n

end A022310

/-! ## A022310.P9262703974258249986

`A022087(n)+A000071(n+2)`
-/

namespace A022310.P9262703974258249986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 n + A000071 (n + 2)

end

end A022310.P9262703974258249986

namespace A022310

/-- `A022087(n)+A000071(n+2)` -/
def P9262703974258249986.Spec : Prop :=
  ∀ n, P9262703974258249986.a n = A022310 n

end A022310

/-! ## A022310.P11561004960917317567

`A001588(n)+A022308(n)-1`
-/

namespace A022310.P11561004960917317567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 n + (A022308 n - 1)

end

end A022310.P11561004960917317567

namespace A022310

/-- `A001588(n)+A022308(n)-1` -/
def P11561004960917317567.Spec : Prop :=
  ∀ n, P11561004960917317567.a n = A022310 n

end A022310

/-! ## A022310.P13548763795063603722

`A001611(n)+A022309(n)-1`
-/

namespace A022310.P13548763795063603722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + (A022309 n - 1)

end

end A022310.P13548763795063603722

namespace A022310

/-- `A001611(n)+A022309(n)-1` -/
def P13548763795063603722.Spec : Prop :=
  ∀ n, P13548763795063603722.a n = A022310 n

end A022310

/-! ## A022310.P17926838445011064494

`A022308(n)+2*A000045(n)`
-/

namespace A022310.P17926838445011064494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 n + 2 * A000045 n

end

end A022310.P17926838445011064494

namespace A022310

/-- `A022308(n)+2*A000045(n)` -/
def P17926838445011064494.Spec : Prop :=
  ∀ n, P17926838445011064494.a n = A022310 n

end A022310

/-! ## A022310.P17853820011581085858

`A001610(n)+3*A000045(n)`
-/

namespace A022310.P17853820011581085858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n + 3 * A000045 n

end

end A022310.P17853820011581085858

namespace A022310

/-- `A001610(n)+3*A000045(n)` -/
def P17853820011581085858.Spec : Prop :=
  ∀ n, P17853820011581085858.a n = A022310 n

end A022310

/-! ## A022310.P3938889088442878608

`A001595(n+1)+Δ[A000032(n)]`
-/

namespace A022310.P3938889088442878608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 (n + 1) + (f1 (n + 1) - f1 n)

end

end A022310.P3938889088442878608

namespace A022310

/-- `A001595(n+1)+Δ[A000032(n)]` -/
def P3938889088442878608.Spec : Prop :=
  ∀ n, P3938889088442878608.a n = A022310 n

end A022310

/-!
# A022311: a(n) = a(n-1) + a(n-2) + 1 for n>1, a(0)=0, a(1)=1.

The programs for A022311, the canonical program `A022311.P4986877223740060268` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022311 has offset 0).

The definition of A022311 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022311.P4986877223740060268`, by `A022311.P4986877223740060268.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022311.P4986877223740060268

`a(n-1)+a(n-2)+1` with `a(0)=0, a(1)=6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022311

/-- `a(n-1)+a(n-2)+1` -/
def P4986877223740060268.Spec : Prop :=
  ∀ n, (P4986877223740060268.a n : ℤ) = A022311 n

theorem P4986877223740060268.correct : P4986877223740060268.Spec := by
  intro n
  simp only [A022311]

end A022311

/-! ## A022311.P871332374486336366

`A022097(n)-1`
-/

namespace A022311.P871332374486336366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022097 n - 1

end

end A022311.P871332374486336366

namespace A022311

/-- `A022097(n)-1` -/
def P871332374486336366.Spec : Prop :=
  ∀ n, P871332374486336366.a n = A022311 n

end A022311

/-! ## A022311.P2260383432882495680

`ogf((6x-5x^2)/(1-2x+x^3))`
-/

namespace A022311.P2260383432882495680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, -5] [1, -2, 0, 1] n

end

end A022311.P2260383432882495680

namespace A022311

/-- `ogf((6x-5x^2)/(1-2x+x^3))` -/
def P2260383432882495680.Spec : Prop :=
  ∀ n, P2260383432882495680.a n = A022311 n

end A022311

/-! ## A022311.P13613255648685846708

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=6, a(2)=7`
-/

namespace A022311.P13613255648685846708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 6, 7] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A022311.P13613255648685846708

namespace A022311

/-- `2*a(n-1)-a(n-3)` -/
def P13613255648685846708.Spec : Prop :=
  ∀ n, P13613255648685846708.a n = A022311 n

end A022311

/-! ## A022311.P13906482865764931609

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=0, a(1)=6, a(2)=7`
-/

namespace A022311.P13906482865764931609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 6, 7] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022311.P13906482865764931609

namespace A022311

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P13906482865764931609.Spec : Prop :=
  ∀ n, P13906482865764931609.a n = A022311 n

end A022311

/-! ## A022311.P8477070508112571569

`A022310(n)+A000045(n)`
-/

namespace A022311.P8477070508112571569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022310 n + A000045 n

end

end A022311.P8477070508112571569

namespace A022311

/-- `A022310(n)+A000045(n)` -/
def P8477070508112571569.Spec : Prop :=
  ∀ n, P8477070508112571569.a n = A022311 n

end A022311

/-! ## A022311.P14839789118984267150

`A022087(n)+A001610(n)`
-/

namespace A022311.P14839789118984267150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 n + A001610 n

end

end A022311.P14839789118984267150

namespace A022311

/-- `A022087(n)+A001610(n)` -/
def P14839789118984267150.Spec : Prop :=
  ∀ n, P14839789118984267150.a n = A022311 n

end A022311

/-! ## A022311.P2564665580200670908

`A022308(n)+A022086(n)`
-/

namespace A022311.P2564665580200670908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 n + A022086 n

end

end A022311.P2564665580200670908

namespace A022311

/-- `A022308(n)+A022086(n)` -/
def P2564665580200670908.Spec : Prop :=
  ∀ n, P2564665580200670908.a n = A022311 n

end A022311

/-! ## A022311.P3062044997053484272

`A187891(n)+A001911(n)`
-/

namespace A022311.P3062044997053484272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 n + A001911 n

end

end A022311.P3062044997053484272

namespace A022311

/-- `A187891(n)+A001911(n)` -/
def P3062044997053484272.Spec : Prop :=
  ∀ n, P3062044997053484272.a n = A022311 n

end A022311

/-! ## A022311.P1388823063754247089

`A022312(n)-A000045(n)`
-/

namespace A022311.P1388823063754247089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022312 n - A000045 n

end

end A022311.P1388823063754247089

namespace A022311

/-- `A022312(n)-A000045(n)` -/
def P1388823063754247089.Spec : Prop :=
  ∀ n, P1388823063754247089.a n = A022311 n

end A022311

/-! ## A022311.P6069405747809136198

`A022099(n)-A001588(n)`
-/

namespace A022311.P6069405747809136198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022099 n - A001588 n

end

end A022311.P6069405747809136198

namespace A022311

/-- `A022099(n)-A001588(n)` -/
def P6069405747809136198.Spec : Prop :=
  ∀ n, P6069405747809136198.a n = A022311 n

end A022311

/-! ## A022311.P7749139385943976593

`A022098(n)-A001611(n)`
-/

namespace A022311.P7749139385943976593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022098 n - A001611 n

end

end A022311.P7749139385943976593

namespace A022311

/-- `A022098(n)-A001611(n)` -/
def P7749139385943976593.Spec : Prop :=
  ∀ n, P7749139385943976593.a n = A022311 n

end A022311

/-! ## A022311.P12343541433905252508

`A022121(n)-A001612(n)`
-/

namespace A022311.P12343541433905252508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022121 n - A001612 n

end

end A022311.P12343541433905252508

namespace A022311

/-- `A022121(n)-A001612(n)` -/
def P12343541433905252508.Spec : Prop :=
  ∀ n, P12343541433905252508.a n = A022311 n

end A022311

/-! ## A022311.P1534795710890541396

`A022407(n)-A013655(n)`
-/

namespace A022311.P1534795710890541396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022407 n - A013655 n

end

end A022311.P1534795710890541396

namespace A022311

/-- `A022407(n)-A013655(n)` -/
def P1534795710890541396.Spec : Prop :=
  ∀ n, P1534795710890541396.a n = A022311 n

end A022311

/-! ## A022311.P6515735014527643336

`A022314(n)-A022086(n)`
-/

namespace A022311.P6515735014527643336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022314 n - A022086 n

end

end A022311.P6515735014527643336

namespace A022311

/-- `A022314(n)-A022086(n)` -/
def P6515735014527643336.Spec : Prop :=
  ∀ n, P6515735014527643336.a n = A022311 n

end A022311

/-! ## A022311.P13212156010914050867

`A022315(n)-A022087(n)`
-/

namespace A022311.P13212156010914050867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022315 n - A022087 n

end

end A022311.P13212156010914050867

namespace A022311

/-- `A022315(n)-A022087(n)` -/
def P13212156010914050867.Spec : Prop :=
  ∀ n, P13212156010914050867.a n = A022311 n

end A022311

/-! ## A022311.P864959938367515780

`A022122(n)-A048577(n)`
-/

namespace A022311.P864959938367515780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 n - A048577 n

end

end A022311.P864959938367515780

namespace A022311

/-- `A022122(n)-A048577(n)` -/
def P864959938367515780.Spec : Prop :=
  ∀ n, P864959938367515780.a n = A022311 n

end A022311

/-! ## A022311.P8246599956324696718

`A022406(n)-A104449(n)`
-/

namespace A022311.P8246599956324696718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022406 n - A104449 n

end

end A022311.P8246599956324696718

namespace A022311

/-- `A022406(n)-A104449(n)` -/
def P8246599956324696718.Spec : Prop :=
  ∀ n, P8246599956324696718.a n = A022311 n

end A022311

/-! ## A022311.P17986637591346828010

`A022319(n)-A152163(n)`
-/

namespace A022311.P17986637591346828010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022319 n - A152163 n

end

end A022311.P17986637591346828010

namespace A022311

/-- `A022319(n)-A152163(n)` -/
def P17986637591346828010.Spec : Prop :=
  ∀ n, P17986637591346828010.a n = A022311 n

end A022311

/-! ## A022311.P8372505459201375615

`A118658(n+1)+A022309(n)`
-/

namespace A022311.P8372505459201375615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 (n + 1) + A022309 n

end

end A022311.P8372505459201375615

namespace A022311

/-- `A118658(n+1)+A022309(n)` -/
def P8372505459201375615.Spec : Prop :=
  ∀ n, P8372505459201375615.a n = A022311 n

end A022311

/-!
# A022312: a(n) = a(n-1) + a(n-2) + 1 for n>1, a(0)=0, a(1)=7.

The programs for A022312, the canonical program `A022312.P1500921371825493792` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022312 has offset 0).

The definition of A022312 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022312.P1500921371825493792`, by `A022312.P1500921371825493792.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022312.P1500921371825493792

`a(n-1)+a(n-2)+1` with `a(0)=0, a(1)=7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022312

/-- `a(n-1)+a(n-2)+1` -/
def P1500921371825493792.Spec : Prop :=
  ∀ n, (P1500921371825493792.a n : ℤ) = A022312 n

theorem P1500921371825493792.correct : P1500921371825493792.Spec := by
  intro n
  simp only [A022312]

end A022312

/-! ## A022312.P12092980028019986521

`A022098(n)-1`
-/

namespace A022312.P12092980028019986521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022098 n - 1

end

end A022312.P12092980028019986521

namespace A022312

/-- `A022098(n)-1` -/
def P12092980028019986521.Spec : Prop :=
  ∀ n, P12092980028019986521.a n = A022312 n

end A022312

/-! ## A022312.P3211697393864626103

`ogf((7x-6x^2)/(1-2x+x^3))`
-/

namespace A022312.P3211697393864626103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, -6] [1, -2, 0, 1] n

end

end A022312.P3211697393864626103

namespace A022312

/-- `ogf((7x-6x^2)/(1-2x+x^3))` -/
def P3211697393864626103.Spec : Prop :=
  ∀ n, P3211697393864626103.a n = A022312 n

end A022312

/-! ## A022312.P14604248919400977119

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=7, a(2)=8`
-/

namespace A022312.P14604248919400977119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 7, 8] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A022312.P14604248919400977119

namespace A022312

/-- `2*a(n-1)-a(n-3)` -/
def P14604248919400977119.Spec : Prop :=
  ∀ n, P14604248919400977119.a n = A022312 n

end A022312

/-! ## A022312.P11511612711250509286

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=0, a(1)=7, a(2)=8`
-/

namespace A022312.P11511612711250509286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 7, 8] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022312.P11511612711250509286

namespace A022312

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P11511612711250509286.Spec : Prop :=
  ∀ n, P11511612711250509286.a n = A022312 n

end A022312

/-! ## A022312.P16278975753203554788

`A022311(n)+A000045(n)`
-/

namespace A022312.P16278975753203554788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022311 n + A000045 n

end

end A022312.P16278975753203554788

namespace A022312

/-- `A022311(n)+A000045(n)` -/
def P16278975753203554788.Spec : Prop :=
  ∀ n, P16278975753203554788.a n = A022312 n

end A022312

/-! ## A022312.P6930414530372662902

`A022088(n)+A001610(n)`
-/

namespace A022312.P6930414530372662902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 n + A001610 n

end

end A022312.P6930414530372662902

namespace A022312

/-- `A022088(n)+A001610(n)` -/
def P6930414530372662902.Spec : Prop :=
  ∀ n, P6930414530372662902.a n = A022312 n

end A022312

/-! ## A022312.P16243588511434725450

`A022308(n)+A022087(n)`
-/

namespace A022312.P16243588511434725450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 n + A022087 n

end

end A022312.P16243588511434725450

namespace A022312

/-- `A022308(n)+A022087(n)` -/
def P16243588511434725450.Spec : Prop :=
  ∀ n, P16243588511434725450.a n = A022312 n

end A022312

/-! ## A022312.P7575771630122520441

`A022309(n)+A022086(n)`
-/

namespace A022312.P7575771630122520441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022309 n + A022086 n

end

end A022312.P7575771630122520441

namespace A022312

/-- `A022309(n)+A022086(n)` -/
def P7575771630122520441.Spec : Prop :=
  ∀ n, P7575771630122520441.a n = A022312 n

end A022312

/-! ## A022312.P5069014525057864734

`A187892(n)+A001911(n)`
-/

namespace A022312.P5069014525057864734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187892 n + A001911 n

end

end A022312.P5069014525057864734

namespace A022312

/-- `A187892(n)+A001911(n)` -/
def P5069014525057864734.Spec : Prop :=
  ∀ n, P5069014525057864734.a n = A022312 n

end A022312

/-! ## A022312.P4570672828943322186

`A022313(n)-A000045(n)`
-/

namespace A022312.P4570672828943322186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022313 n - A000045 n

end

end A022312.P4570672828943322186

namespace A022312

/-- `A022313(n)-A000045(n)` -/
def P4570672828943322186.Spec : Prop :=
  ∀ n, P4570672828943322186.a n = A022312 n

end A022312

/-! ## A022312.P7729835080071581532

`A022100(n)-A001588(n)`
-/

namespace A022312.P7729835080071581532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022100 n - A001588 n

end

end A022312.P7729835080071581532

namespace A022312

/-- `A022100(n)-A001588(n)` -/
def P7729835080071581532.Spec : Prop :=
  ∀ n, P7729835080071581532.a n = A022312 n

end A022312

/-! ## A022312.P15743931529539192239

`A022099(n)-A001611(n)`
-/

namespace A022312.P15743931529539192239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022099 n - A001611 n

end

end A022312.P15743931529539192239

namespace A022312

/-- `A022099(n)-A001611(n)` -/
def P15743931529539192239.Spec : Prop :=
  ∀ n, P15743931529539192239.a n = A022312 n

end A022312

/-! ## A022312.P10350096987311710112

`A022379(n)-A001612(n)`
-/

namespace A022312.P10350096987311710112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022379 n - A001612 n

end

end A022312.P10350096987311710112

namespace A022312

/-- `A022379(n)-A001612(n)` -/
def P10350096987311710112.Spec : Prop :=
  ∀ n, P10350096987311710112.a n = A022312 n

end A022312

/-! ## A022312.P10654108912672439494

`A022315(n)-A022086(n)`
-/

namespace A022312.P10654108912672439494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022315 n - A022086 n

end

end A022312.P10654108912672439494

namespace A022312

/-- `A022315(n)-A022086(n)` -/
def P10654108912672439494.Spec : Prop :=
  ∀ n, P10654108912672439494.a n = A022312 n

end A022312

/-! ## A022312.P18439883027389614487

`A022407(n)-A104449(n)`
-/

namespace A022312.P18439883027389614487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022407 n - A104449 n

end

end A022312.P18439883027389614487

namespace A022312

/-- `A022407(n)-A104449(n)` -/
def P18439883027389614487.Spec : Prop :=
  ∀ n, P18439883027389614487.a n = A022312 n

end A022312

/-! ## A022312.P6865005804095675754

`A022320(n)-A152163(n)`
-/

namespace A022312.P6865005804095675754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022320 n - A152163 n

end

end A022312.P6865005804095675754

namespace A022312

/-- `A022320(n)-A152163(n)` -/
def P6865005804095675754.Spec : Prop :=
  ∀ n, P6865005804095675754.a n = A022312 n

end A022312

/-! ## A022312.P7716764250034269939

`A153382(n)-A181716(n)`
-/

namespace A022312.P7716764250034269939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153382 n - A181716 n

end

end A022312.P7716764250034269939

namespace A022312

/-- `A153382(n)-A181716(n)` -/
def P7716764250034269939.Spec : Prop :=
  ∀ n, P7716764250034269939.a n = A022312 n

end A022312

/-! ## A022312.P1695784009251645344

`A022089(n)+∑[A000045(n)]`
-/

namespace A022312.P1695784009251645344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022089 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022312.P1695784009251645344

namespace A022312

/-- `A022089(n)+∑[A000045(n)]` -/
def P1695784009251645344.Spec : Prop :=
  ∀ n, P1695784009251645344.a n = A022312 n

end A022312

/-! ## A022312.P3067332454322665385

`A152163(n+1)+A022321(n)`
-/

namespace A022312.P3067332454322665385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 (n + 1) + A022321 n

end

end A022312.P3067332454322665385

namespace A022312

/-- `A152163(n+1)+A022321(n)` -/
def P3067332454322665385.Spec : Prop :=
  ∀ n, P3067332454322665385.a n = A022312 n

end A022312

/-!
# A022313: a(n) = a(n-1) + a(n-2) + 1, with a(0) = 0 and a(1) = 8.

The programs for A022313, the canonical program `A022313.P12092447351323080129` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022313 has offset 0).

The definition of A022313 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022313.P12092447351323080129`, by `A022313.P12092447351323080129.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022313.P12092447351323080129

`a(n-1)+a(n-2)+1` with `a(0)=0, a(1)=8`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022313

/-- `a(n-1)+a(n-2)+1` -/
def P12092447351323080129.Spec : Prop :=
  ∀ n, (P12092447351323080129.a n : ℤ) = A022313 n

theorem P12092447351323080129.correct : P12092447351323080129.Spec := by
  intro n
  simp only [A022313]

end A022313

/-! ## A022313.P7507581140257515785

`A022099(n)-1`
-/

namespace A022313.P7507581140257515785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022099 n - 1

end

end A022313.P7507581140257515785

namespace A022313

/-- `A022099(n)-1` -/
def P7507581140257515785.Spec : Prop :=
  ∀ n, P7507581140257515785.a n = A022313 n

end A022313

/-! ## A022313.P6117661377160128247

`ogf((8x-7x^2)/(1-2x+x^3))`
-/

namespace A022313.P6117661377160128247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, -7] [1, -2, 0, 1] n

end

end A022313.P6117661377160128247

namespace A022313

/-- `ogf((8x-7x^2)/(1-2x+x^3))` -/
def P6117661377160128247.Spec : Prop :=
  ∀ n, P6117661377160128247.a n = A022313 n

end A022313

/-! ## A022313.P12508249121710136541

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=8, a(2)=9`
-/

namespace A022313.P12508249121710136541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 8, 9] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A022313.P12508249121710136541

namespace A022313

/-- `2*a(n-1)-a(n-3)` -/
def P12508249121710136541.Spec : Prop :=
  ∀ n, P12508249121710136541.a n = A022313 n

end A022313

/-! ## A022313.P6210440876914718080

`A022312(n)+A000045(n)`
-/

namespace A022313.P6210440876914718080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022312 n + A000045 n

end

end A022313.P6210440876914718080

namespace A022313

/-- `A022312(n)+A000045(n)` -/
def P6210440876914718080.Spec : Prop :=
  ∀ n, P6210440876914718080.a n = A022313 n

end A022313

/-! ## A022313.P15245248864565742477

`A022089(n)+A001610(n)`
-/

namespace A022313.P15245248864565742477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022089 n + A001610 n

end

end A022313.P15245248864565742477

namespace A022313

/-- `A022089(n)+A001610(n)` -/
def P15245248864565742477.Spec : Prop :=
  ∀ n, P15245248864565742477.a n = A022313 n

end A022313

/-! ## A022313.P9399201761312005094

`A022308(n)+A022088(n)`
-/

namespace A022313.P9399201761312005094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 n + A022088 n

end

end A022313.P9399201761312005094

namespace A022313

/-- `A022308(n)+A022088(n)` -/
def P9399201761312005094.Spec : Prop :=
  ∀ n, P9399201761312005094.a n = A022313 n

end A022313

/-! ## A022313.P17911769176682825466

`A022309(n)+A022087(n)`
-/

namespace A022313.P17911769176682825466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022309 n + A022087 n

end

end A022313.P17911769176682825466

namespace A022313

/-- `A022309(n)+A022087(n)` -/
def P17911769176682825466.Spec : Prop :=
  ∀ n, P17911769176682825466.a n = A022313 n

end A022313

/-! ## A022313.P5179424637140308952

`A022310(n)+A022086(n)`
-/

namespace A022313.P5179424637140308952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022310 n + A022086 n

end

end A022313.P5179424637140308952

namespace A022313

/-- `A022310(n)+A022086(n)` -/
def P5179424637140308952.Spec : Prop :=
  ∀ n, P5179424637140308952.a n = A022313 n

end A022313

/-! ## A022313.P16367040566764144663

`A022314(n)-A000045(n)`
-/

namespace A022313.P16367040566764144663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022314 n - A000045 n

end

end A022313.P16367040566764144663

namespace A022313

/-- `A022314(n)-A000045(n)` -/
def P16367040566764144663.Spec : Prop :=
  ∀ n, P16367040566764144663.a n = A022313 n

end A022313

/-! ## A022313.P73605360764015

`A022101(n)-A001588(n)`
-/

namespace A022313.P73605360764015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 n - A001588 n

end

end A022313.P73605360764015

namespace A022313

/-- `A022101(n)-A001588(n)` -/
def P73605360764015.Spec : Prop :=
  ∀ n, P73605360764015.a n = A022313 n

end A022313

/-! ## A022313.P13058548954458465178

`A022100(n)-A001611(n)`
-/

namespace A022313.P13058548954458465178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022100 n - A001611 n

end

end A022313.P13058548954458465178

namespace A022313

/-- `A022100(n)-A001611(n)` -/
def P13058548954458465178.Spec : Prop :=
  ∀ n, P13058548954458465178.a n = A022313 n

end A022313

/-! ## A022313.P5632031031587114844

`A022122(n)-A001612(n)`
-/

namespace A022313.P5632031031587114844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 n - A001612 n

end

end A022313.P5632031031587114844

namespace A022313

/-- `A022122(n)-A001612(n)` -/
def P5632031031587114844.Spec : Prop :=
  ∀ n, P5632031031587114844.a n = A022313 n

end A022313

/-! ## A022313.P11863728142250147324

`A022321(n)-A152163(n)`
-/

namespace A022313.P11863728142250147324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022321 n - A152163 n

end

end A022313.P11863728142250147324

namespace A022313

/-- `A022321(n)-A152163(n)` -/
def P11863728142250147324.Spec : Prop :=
  ∀ n, P11863728142250147324.a n = A022313 n

end A022313

/-! ## A022313.P584788092811468735

`A152163(n+1)+A022322(n)`
-/

namespace A022313.P584788092811468735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 (n + 1) + A022322 n

end

end A022313.P584788092811468735

namespace A022313

/-- `A152163(n+1)+A022322(n)` -/
def P584788092811468735.Spec : Prop :=
  ∀ n, P584788092811468735.a n = A022313 n

end A022313

/-! ## A022313.P10733845369888878144

`A212804(n+1)+A022312(n)`
-/

namespace A022313.P10733845369888878144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + A022312 n

end

end A022313.P10733845369888878144

namespace A022313

/-- `A212804(n+1)+A022312(n)` -/
def P10733845369888878144.Spec : Prop :=
  ∀ n, P10733845369888878144.a n = A022313 n

end A022313

/-! ## A022313.P305626708535738827

`A000045(n)+A022098(n)-1`
-/

namespace A022313.P305626708535738827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A022098 n - 1)

end

end A022313.P305626708535738827

namespace A022313

/-- `A000045(n)+A022098(n)-1` -/
def P305626708535738827.Spec : Prop :=
  ∀ n, P305626708535738827.a n = A022313 n

end A022313

/-! ## A022313.P4021263133528929706

`A022100(n)-(A000045(n)+1)`
-/

namespace A022313.P4021263133528929706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022100 n - (A000045 n + 1)

end

end A022313.P4021263133528929706

namespace A022313

/-- `A022100(n)-(A000045(n)+1)` -/
def P4021263133528929706.Spec : Prop :=
  ∀ n, P4021263133528929706.a n = A022313 n

end A022313

/-! ## A022313.P14929103625995247595

`A022122(n)-(A000032(n)+1)`
-/

namespace A022313.P14929103625995247595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 n - (A000032 n + 1)

end

end A022313.P14929103625995247595

namespace A022313

/-- `A022122(n)-(A000032(n)+1)` -/
def P14929103625995247595.Spec : Prop :=
  ∀ n, P14929103625995247595.a n = A022313 n

end A022313

/-! ## A022313.P10299021914250134246

`A000285(n)+A022088(n)-1`
-/

namespace A022313.P10299021914250134246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n + (A022088 n - 1)

end

end A022313.P10299021914250134246

namespace A022313

/-- `A000285(n)+A022088(n)-1` -/
def P10299021914250134246.Spec : Prop :=
  ∀ n, P10299021914250134246.a n = A022313 n

end A022313

/-!
# A022314: a(n) = a(n-1) + a(n-2) + 1, with a(0) = 0, a(1) = 9.

The programs for A022314, the canonical program `A022314.P8932687997811607329` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022314 has offset 0).

The definition of A022314 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022314.P8932687997811607329`, by `A022314.P8932687997811607329.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022314.P8932687997811607329

`a(n-1)+a(n-2)+1` with `a(0)=0, a(1)=9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022314

/-- `a(n-1)+a(n-2)+1` -/
def P8932687997811607329.Spec : Prop :=
  ∀ n, (P8932687997811607329.a n : ℤ) = A022314 n

theorem P8932687997811607329.correct : P8932687997811607329.Spec := by
  intro n
  simp only [A022314]

end A022314

/-! ## A022314.P8681180791054639890

`A022100(n)-1`
-/

namespace A022314.P8681180791054639890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022100 n - 1

end

end A022314.P8681180791054639890

namespace A022314

/-- `A022100(n)-1` -/
def P8681180791054639890.Spec : Prop :=
  ∀ n, P8681180791054639890.a n = A022314 n

end A022314

/-! ## A022314.P14264517409120879407

`ogf((9x-8x^2)/(1-2x+x^3))`
-/

namespace A022314.P14264517409120879407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 9, -8] [1, -2, 0, 1] n

end

end A022314.P14264517409120879407

namespace A022314

/-- `ogf((9x-8x^2)/(1-2x+x^3))` -/
def P14264517409120879407.Spec : Prop :=
  ∀ n, P14264517409120879407.a n = A022314 n

end A022314

/-! ## A022314.P16487128765553421952

`A022313(n)+A000045(n)`
-/

namespace A022314.P16487128765553421952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022313 n + A000045 n

end

end A022314.P16487128765553421952

namespace A022314

/-- `A022313(n)+A000045(n)` -/
def P16487128765553421952.Spec : Prop :=
  ∀ n, P16487128765553421952.a n = A022314 n

end A022314

/-! ## A022314.P5057900627160490267

`A022090(n)+A001610(n)`
-/

namespace A022314.P5057900627160490267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022090 n + A001610 n

end

end A022314.P5057900627160490267

namespace A022314

/-- `A022090(n)+A001610(n)` -/
def P5057900627160490267.Spec : Prop :=
  ∀ n, P5057900627160490267.a n = A022314 n

end A022314

/-! ## A022314.P13314892557613740764

`A022308(n)+A022089(n)`
-/

namespace A022314.P13314892557613740764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 n + A022089 n

end

end A022314.P13314892557613740764

namespace A022314

/-- `A022308(n)+A022089(n)` -/
def P13314892557613740764.Spec : Prop :=
  ∀ n, P13314892557613740764.a n = A022314 n

end A022314

/-! ## A022314.P1215497352544956765

`A022309(n)+A022088(n)`
-/

namespace A022314.P1215497352544956765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022309 n + A022088 n

end

end A022314.P1215497352544956765

namespace A022314

/-- `A022309(n)+A022088(n)` -/
def P1215497352544956765.Spec : Prop :=
  ∀ n, P1215497352544956765.a n = A022314 n

end A022314

/-! ## A022314.P2350300012707138563

`A022310(n)+A022087(n)`
-/

namespace A022314.P2350300012707138563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022310 n + A022087 n

end

end A022314.P2350300012707138563

namespace A022314

/-- `A022310(n)+A022087(n)` -/
def P2350300012707138563.Spec : Prop :=
  ∀ n, P2350300012707138563.a n = A022314 n

end A022314

/-! ## A022314.P565746755561219984

`A022311(n)+A022086(n)`
-/

namespace A022314.P565746755561219984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022311 n + A022086 n

end

end A022314.P565746755561219984

namespace A022314

/-- `A022311(n)+A022086(n)` -/
def P565746755561219984.Spec : Prop :=
  ∀ n, P565746755561219984.a n = A022314 n

end A022314

/-! ## A022314.P16465304616374987466

`A187891(n)+A168674(n)`
-/

namespace A022314.P16465304616374987466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 n + A168674 n

end

end A022314.P16465304616374987466

namespace A022314

/-- `A187891(n)+A168674(n)` -/
def P16465304616374987466.Spec : Prop :=
  ∀ n, P16465304616374987466.a n = A022314 n

end A022314

/-! ## A022314.P4090658231710405927

`A022315(n)-A000045(n)`
-/

namespace A022314.P4090658231710405927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022315 n - A000045 n

end

end A022314.P4090658231710405927

namespace A022314

/-- `A022315(n)-A000045(n)` -/
def P4090658231710405927.Spec : Prop :=
  ∀ n, P4090658231710405927.a n = A022314 n

end A022314

/-! ## A022314.P12296486612692274188

`A022101(n)-A001611(n)`
-/

namespace A022314.P12296486612692274188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 n - A001611 n

end

end A022314.P12296486612692274188

namespace A022314

/-- `A022101(n)-A001611(n)` -/
def P12296486612692274188.Spec : Prop :=
  ∀ n, P12296486612692274188.a n = A022314 n

end A022314

/-! ## A022314.P316245650979560786

`A022322(n)-A152163(n)`
-/

namespace A022314.P316245650979560786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022322 n - A152163 n

end

end A022314.P316245650979560786

namespace A022314

/-- `A022322(n)-A152163(n)` -/
def P316245650979560786.Spec : Prop :=
  ∀ n, P316245650979560786.a n = A022314 n

end A022314

/-! ## A022314.P13526572642550771082

`A022323(n)-A212804(n)`
-/

namespace A022314.P13526572642550771082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022323 n - A212804 n

end

end A022314.P13526572642550771082

namespace A022314

/-- `A022323(n)-A212804(n)` -/
def P13526572642550771082.Spec : Prop :=
  ∀ n, P13526572642550771082.a n = A022314 n

end A022314

/-! ## A022314.P684641900493349675

`A152163(n+1)+A022323(n)`
-/

namespace A022314.P684641900493349675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 (n + 1) + A022323 n

end

end A022314.P684641900493349675

namespace A022314

/-- `A152163(n+1)+A022323(n)` -/
def P684641900493349675.Spec : Prop :=
  ∀ n, P684641900493349675.a n = A022314 n

end A022314

/-! ## A022314.P8576782101214259936

`A212804(n+1)+A022313(n)`
-/

namespace A022314.P8576782101214259936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + A022313 n

end

end A022314.P8576782101214259936

namespace A022314

/-- `A212804(n+1)+A022313(n)` -/
def P8576782101214259936.Spec : Prop :=
  ∀ n, P8576782101214259936.a n = A022314 n

end A022314

/-! ## A022314.P10843340142675720703

`A000045(n)+A022099(n)-1`
-/

namespace A022314.P10843340142675720703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A022099 n - 1)

end

end A022314.P10843340142675720703

namespace A022314

/-- `A000045(n)+A022099(n)-1` -/
def P10843340142675720703.Spec : Prop :=
  ∀ n, P10843340142675720703.a n = A022314 n

end A022314

/-! ## A022314.P5965702110912332353

`A022101(n)-(A000045(n)+1)`
-/

namespace A022314.P5965702110912332353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 n - (A000045 n + 1)

end

end A022314.P5965702110912332353

namespace A022314

/-- `A022101(n)-(A000045(n)+1)` -/
def P5965702110912332353.Spec : Prop :=
  ∀ n, P5965702110912332353.a n = A022314 n

end A022314

/-! ## A022314.P4733936450015068351

`A000285(n)+A022089(n)-1`
-/

namespace A022314.P4733936450015068351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n + (A022089 n - 1)

end

end A022314.P4733936450015068351

namespace A022314

/-- `A000285(n)+A022089(n)-1` -/
def P4733936450015068351.Spec : Prop :=
  ∀ n, P4733936450015068351.a n = A022314 n

end A022314

/-! ## A022314.P4624683754958524834

`A001588(n)+A022312(n)-1`
-/

namespace A022314.P4624683754958524834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 n + (A022312 n - 1)

end

end A022314.P4624683754958524834

namespace A022314

/-- `A001588(n)+A022312(n)-1` -/
def P4624683754958524834.Spec : Prop :=
  ∀ n, P4624683754958524834.a n = A022314 n

end A022314

/-!
# A022315: a(n) = a(n-1) + a(n-2) + 1, with a(0) = 0 and a(1) = 10.

The programs for A022315, the canonical program `A022315.P9896936764632029265` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022315 has offset 0).

The definition of A022315 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022315.P9896936764632029265`, by `A022315.P9896936764632029265.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022315.P9896936764632029265

`a(n-1)+a(n-2)+1` with `a(0)=0, a(1)=10`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022315

/-- `a(n-1)+a(n-2)+1` -/
def P9896936764632029265.Spec : Prop :=
  ∀ n, (P9896936764632029265.a n : ℤ) = A022315 n

theorem P9896936764632029265.correct : P9896936764632029265.Spec := by
  intro n
  simp only [A022315]

end A022315

/-! ## A022315.P5928340772723611319

`A022101(n)-1`
-/

namespace A022315.P5928340772723611319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 n - 1

end

end A022315.P5928340772723611319

namespace A022315

/-- `A022101(n)-1` -/
def P5928340772723611319.Spec : Prop :=
  ∀ n, P5928340772723611319.a n = A022315 n

end A022315

/-! ## A022315.P10814118095974187700

`ogf((10x-9x^2)/(1-2x+x^3))`
-/

namespace A022315.P10814118095974187700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, -9] [1, -2, 0, 1] n

end

end A022315.P10814118095974187700

namespace A022315

/-- `ogf((10x-9x^2)/(1-2x+x^3))` -/
def P10814118095974187700.Spec : Prop :=
  ∀ n, P10814118095974187700.a n = A022315 n

end A022315

/-! ## A022315.P13039010732584077879

`A022314(n)+A000045(n)`
-/

namespace A022315.P13039010732584077879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022314 n + A000045 n

end

end A022315.P13039010732584077879

namespace A022315

/-- `A022314(n)+A000045(n)` -/
def P13039010732584077879.Spec : Prop :=
  ∀ n, P13039010732584077879.a n = A022315 n

end A022315

/-! ## A022315.P3072496372508606215

`A022091(n)+A001610(n)`
-/

namespace A022315.P3072496372508606215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022091 n + A001610 n

end

end A022315.P3072496372508606215

namespace A022315

/-- `A022091(n)+A001610(n)` -/
def P3072496372508606215.Spec : Prop :=
  ∀ n, P3072496372508606215.a n = A022315 n

end A022315

/-! ## A022315.P6588992904581418667

`A022308(n)+A022090(n)`
-/

namespace A022315.P6588992904581418667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 n + A022090 n

end

end A022315.P6588992904581418667

namespace A022315

/-- `A022308(n)+A022090(n)` -/
def P6588992904581418667.Spec : Prop :=
  ∀ n, P6588992904581418667.a n = A022315 n

end A022315

/-! ## A022315.P15608805284855288089

`A022309(n)+A022089(n)`
-/

namespace A022315.P15608805284855288089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022309 n + A022089 n

end

end A022315.P15608805284855288089

namespace A022315

/-- `A022309(n)+A022089(n)` -/
def P15608805284855288089.Spec : Prop :=
  ∀ n, P15608805284855288089.a n = A022315 n

end A022315

/-! ## A022315.P8540635804617323458

`A022310(n)+A022088(n)`
-/

namespace A022315.P8540635804617323458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022310 n + A022088 n

end

end A022315.P8540635804617323458

namespace A022315

/-- `A022310(n)+A022088(n)` -/
def P8540635804617323458.Spec : Prop :=
  ∀ n, P8540635804617323458.a n = A022315 n

end A022315

/-! ## A022315.P17421407762739769484

`A022311(n)+A022087(n)`
-/

namespace A022315.P17421407762739769484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022311 n + A022087 n

end

end A022315.P17421407762739769484

namespace A022315

/-- `A022311(n)+A022087(n)` -/
def P17421407762739769484.Spec : Prop :=
  ∀ n, P17421407762739769484.a n = A022315 n

end A022315

/-! ## A022315.P12201364831155372981

`A022312(n)+A022086(n)`
-/

namespace A022315.P12201364831155372981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022312 n + A022086 n

end

end A022315.P12201364831155372981

namespace A022315

/-- `A022312(n)+A022086(n)` -/
def P12201364831155372981.Spec : Prop :=
  ∀ n, P12201364831155372981.a n = A022315 n

end A022315

/-! ## A022315.P7551962217876420549

`A187892(n)+A168674(n)`
-/

namespace A022315.P7551962217876420549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187892 n + A168674 n

end

end A022315.P7551962217876420549

namespace A022315

/-- `A187892(n)+A168674(n)` -/
def P7551962217876420549.Spec : Prop :=
  ∀ n, P7551962217876420549.a n = A022315 n

end A022315

/-! ## A022315.P6341917649459438637

`A022323(n)-A152163(n)`
-/

namespace A022315.P6341917649459438637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022323 n - A152163 n

end

end A022315.P6341917649459438637

namespace A022315

/-- `A022323(n)-A152163(n)` -/
def P6341917649459438637.Spec : Prop :=
  ∀ n, P6341917649459438637.a n = A022315 n

end A022315

/-! ## A022315.P16679043805765692133

`A153382(n)+Δ[A052952(n)]`
-/

namespace A022315.P16679043805765692133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153382 n + (f1 (n + 1) - f1 n)

end

end A022315.P16679043805765692133

namespace A022315

/-- `A153382(n)+Δ[A052952(n)]` -/
def P16679043805765692133.Spec : Prop :=
  ∀ n, P16679043805765692133.a n = A022315 n

end A022315

/-! ## A022315.P4415374180754052267

`A022093(n)+A000071(n+1)`
-/

namespace A022315.P4415374180754052267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 n + A000071 (n + 1)

end

end A022315.P4415374180754052267

namespace A022315

/-- `A022093(n)+A000071(n+1)` -/
def P4415374180754052267.Spec : Prop :=
  ∀ n, P4415374180754052267.a n = A022315 n

end A022315

/-! ## A022315.P5682494947614148315

`A212804(n+1)+A022314(n)`
-/

namespace A022315.P5682494947614148315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + A022314 n

end

end A022315.P5682494947614148315

namespace A022315

/-- `A212804(n+1)+A022314(n)` -/
def P5682494947614148315.Spec : Prop :=
  ∀ n, P5682494947614148315.a n = A022315 n

end A022315

/-! ## A022315.P7206523027741319260

`A000045(n)+A022100(n)-1`
-/

namespace A022315.P7206523027741319260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A022100 n - 1)

end

end A022315.P7206523027741319260

namespace A022315

/-- `A000045(n)+A022100(n)-1` -/
def P7206523027741319260.Spec : Prop :=
  ∀ n, P7206523027741319260.a n = A022315 n

end A022315

/-! ## A022315.P9376083297079226644

`A000285(n)+A022090(n)-1`
-/

namespace A022315.P9376083297079226644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000285 n + (A022090 n - 1)

end

end A022315.P9376083297079226644

namespace A022315

/-- `A000285(n)+A022090(n)-1` -/
def P9376083297079226644.Spec : Prop :=
  ∀ n, P9376083297079226644.a n = A022315 n

end A022315

/-! ## A022315.P659905830303765821

`A001588(n)+A022313(n)-1`
-/

namespace A022315.P659905830303765821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 n + (A022313 n - 1)

end

end A022315.P659905830303765821

namespace A022315

/-- `A001588(n)+A022313(n)-1` -/
def P659905830303765821.Spec : Prop :=
  ∀ n, P659905830303765821.a n = A022315 n

end A022315

/-! ## A022315.P634731393457097580

`A001611(n)+A022314(n)-1`
-/

namespace A022315.P634731393457097580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + (A022314 n - 1)

end

end A022315.P634731393457097580

namespace A022315

/-- `A001611(n)+A022314(n)-1` -/
def P634731393457097580.Spec : Prop :=
  ∀ n, P634731393457097580.a n = A022315 n

end A022315

/-! ## A022315.P7476391661734784585

`A022086(n)+A022098(n)-1`
-/

namespace A022315.P7476391661734784585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 n + (A022098 n - 1)

end

end A022315.P7476391661734784585

namespace A022315

/-- `A022086(n)+A022098(n)-1` -/
def P7476391661734784585.Spec : Prop :=
  ∀ n, P7476391661734784585.a n = A022315 n

end A022315

/-!
# A022316: a(n) = a(n-1) + a(n-2) + 1, with a(0) = 0 and a(1) = 11.

The programs for A022316, the canonical program `A022316.P4271483872393700105` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022316 has offset 0).

The definition of A022316 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022316.P4271483872393700105`, by `A022316.P4271483872393700105.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022316.P4271483872393700105

`a(n-1)+a(n-2)+1` with `a(0)=0, a(1)=11`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022316

/-- `a(n-1)+a(n-2)+1` -/
def P4271483872393700105.Spec : Prop :=
  ∀ n, (P4271483872393700105.a n : ℤ) = A022316 n

theorem P4271483872393700105.correct : P4271483872393700105.Spec := by
  intro n
  simp only [A022316]

end A022316

/-! ## A022316.P428120685261421622

`A022102(n)-1`
-/

namespace A022316.P428120685261421622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022102 n - 1

end

end A022316.P428120685261421622

namespace A022316

/-- `A022102(n)-1` -/
def P428120685261421622.Spec : Prop :=
  ∀ n, P428120685261421622.a n = A022316 n

end A022316

/-! ## A022316.P8375738191048507960

`A022315(n)+A000045(n)`
-/

namespace A022316.P8375738191048507960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022315 n + A000045 n

end

end A022316.P8375738191048507960

namespace A022316

/-- `A022315(n)+A000045(n)` -/
def P8375738191048507960.Spec : Prop :=
  ∀ n, P8375738191048507960.a n = A022316 n

end A022316

/-! ## A022316.P5693411118737267637

`A022092(n)+A001610(n)`
-/

namespace A022316.P5693411118737267637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022092 n + A001610 n

end

end A022316.P5693411118737267637

namespace A022316

/-- `A022092(n)+A001610(n)` -/
def P5693411118737267637.Spec : Prop :=
  ∀ n, P5693411118737267637.a n = A022316 n

end A022316

/-! ## A022316.P15496631347984555827

`A022308(n)+A022091(n)`
-/

namespace A022316.P15496631347984555827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 n + A022091 n

end

end A022316.P15496631347984555827

namespace A022316

/-- `A022308(n)+A022091(n)` -/
def P15496631347984555827.Spec : Prop :=
  ∀ n, P15496631347984555827.a n = A022316 n

end A022316

/-! ## A022316.P1700982634552407143

`A022309(n)+A022090(n)`
-/

namespace A022316.P1700982634552407143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022309 n + A022090 n

end

end A022316.P1700982634552407143

namespace A022316

/-- `A022309(n)+A022090(n)` -/
def P1700982634552407143.Spec : Prop :=
  ∀ n, P1700982634552407143.a n = A022316 n

end A022316

/-! ## A022316.P7445528333884165400

`A022310(n)+A022089(n)`
-/

namespace A022316.P7445528333884165400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022310 n + A022089 n

end

end A022316.P7445528333884165400

namespace A022316

/-- `A022310(n)+A022089(n)` -/
def P7445528333884165400.Spec : Prop :=
  ∀ n, P7445528333884165400.a n = A022316 n

end A022316

/-! ## A022316.P4528453906814866714

`A022311(n)+A022088(n)`
-/

namespace A022316.P4528453906814866714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022311 n + A022088 n

end

end A022316.P4528453906814866714

namespace A022316

/-- `A022311(n)+A022088(n)` -/
def P4528453906814866714.Spec : Prop :=
  ∀ n, P4528453906814866714.a n = A022316 n

end A022316

/-! ## A022316.P4959034400133493261

`A022312(n)+A022087(n)`
-/

namespace A022316.P4959034400133493261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022312 n + A022087 n

end

end A022316.P4959034400133493261

namespace A022316

/-- `A022312(n)+A022087(n)` -/
def P4959034400133493261.Spec : Prop :=
  ∀ n, P4959034400133493261.a n = A022316 n

end A022316

/-! ## A022316.P3750757102495200362

`A022313(n)+A022086(n)`
-/

namespace A022316.P3750757102495200362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022313 n + A022086 n

end

end A022316.P3750757102495200362

namespace A022316

/-- `A022313(n)+A022086(n)` -/
def P3750757102495200362.Spec : Prop :=
  ∀ n, P3750757102495200362.a n = A022316 n

end A022316

/-! ## A022316.P4199232399909334548

`A022317(n)-A000045(n)`
-/

namespace A022316.P4199232399909334548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022317 n - A000045 n

end

end A022316.P4199232399909334548

namespace A022316

/-- `A022317(n)-A000045(n)` -/
def P4199232399909334548.Spec : Prop :=
  ∀ n, P4199232399909334548.a n = A022316 n

end A022316

/-! ## A022316.P5297609570752110482

`A022104(n)-A001588(n)`
-/

namespace A022316.P5297609570752110482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022104 n - A001588 n

end

end A022316.P5297609570752110482

namespace A022316

/-- `A022104(n)-A001588(n)` -/
def P5297609570752110482.Spec : Prop :=
  ∀ n, P5297609570752110482.a n = A022316 n

end A022316

/-! ## A022316.P8599014593981336639

`A022103(n)-A001611(n)`
-/

namespace A022316.P8599014593981336639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022103 n - A001611 n

end

end A022316.P8599014593981336639

namespace A022316

/-- `A022103(n)-A001611(n)` -/
def P8599014593981336639.Spec : Prop :=
  ∀ n, P8599014593981336639.a n = A022316 n

end A022316

/-! ## A022316.P15596182587506275924

`A022124(n)-A001612(n)`
-/

namespace A022316.P15596182587506275924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022124 n - A001612 n

end

end A022316.P15596182587506275924

namespace A022316

/-- `A022124(n)-A001612(n)` -/
def P15596182587506275924.Spec : Prop :=
  ∀ n, P15596182587506275924.a n = A022316 n

end A022316

/-! ## A022316.P11681166400043437169

`A022381(n)-A048577(n)`
-/

namespace A022316.P11681166400043437169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022381 n - A048577 n

end

end A022316.P11681166400043437169

namespace A022316

/-- `A022381(n)-A048577(n)` -/
def P11681166400043437169.Spec : Prop :=
  ∀ n, P11681166400043437169.a n = A022316 n

end A022316

/-! ## A022316.P16324467212904588534

`A022411(n)-A104449(n)`
-/

namespace A022316.P16324467212904588534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022411 n - A104449 n

end

end A022316.P16324467212904588534

namespace A022316

/-- `A022411(n)-A104449(n)` -/
def P16324467212904588534.Spec : Prop :=
  ∀ n, P16324467212904588534.a n = A022316 n

end A022316

/-! ## A022316.P12875290161943620476

`A022324(n)-A152163(n)`
-/

namespace A022316.P12875290161943620476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022324 n - A152163 n

end

end A022316.P12875290161943620476

namespace A022316

/-- `A022324(n)-A152163(n)` -/
def P12875290161943620476.Spec : Prop :=
  ∀ n, P12875290161943620476.a n = A022316 n

end A022316

/-! ## A022316.P12770083448534481651

`A022105(n)-A187893(n)`
-/

namespace A022316.P12770083448534481651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022105 n - A187893 n

end

end A022316.P12770083448534481651

namespace A022316

/-- `A022105(n)-A187893(n)` -/
def P12770083448534481651.Spec : Prop :=
  ∀ n, P12770083448534481651.a n = A022316 n

end A022316

/-! ## A022316.P602699191691131909

`A022350(n)-A187891(n)`
-/

namespace A022316.P602699191691131909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022350 n - A187891 n

end

end A022316.P602699191691131909

namespace A022316

/-- `A022350(n)-A187891(n)` -/
def P602699191691131909.Spec : Prop :=
  ∀ n, P602699191691131909.a n = A022316 n

end A022316

/-! ## A022316.P16849971285051332302

`A022351(n)-A187892(n)`
-/

namespace A022316.P16849971285051332302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022351 n - A187892 n

end

end A022316.P16849971285051332302

namespace A022316

/-- `A022351(n)-A187892(n)` -/
def P16849971285051332302.Spec : Prop :=
  ∀ n, P16849971285051332302.a n = A022316 n

end A022316

/-!
# A022317: a(n) = a(n-1) + a(n-2) + 1, with a(0) = 0 and a(1) = 12.

The programs for A022317, the canonical program `A022317.P6413238066853371383` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022317 has offset 0).

The definition of A022317 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022317.P6413238066853371383`, by `A022317.P6413238066853371383.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022317.P6413238066853371383

`a(n-1)+a(n-2)+1` with `a(0)=0, a(1)=12`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022317

/-- `a(n-1)+a(n-2)+1` -/
def P6413238066853371383.Spec : Prop :=
  ∀ n, (P6413238066853371383.a n : ℤ) = A022317 n

theorem P6413238066853371383.correct : P6413238066853371383.Spec := by
  intro n
  simp only [A022317]

end A022317

/-! ## A022317.P9143020217208316879

`A022103(n)-1`
-/

namespace A022317.P9143020217208316879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022103 n - 1

end

end A022317.P9143020217208316879

namespace A022317

/-- `A022103(n)-1` -/
def P9143020217208316879.Spec : Prop :=
  ∀ n, P9143020217208316879.a n = A022317 n

end A022317

/-! ## A022317.P11788324050411360512

`A022316(n)+A000045(n)`
-/

namespace A022317.P11788324050411360512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022316 n + A000045 n

end

end A022317.P11788324050411360512

namespace A022317

/-- `A022316(n)+A000045(n)` -/
def P11788324050411360512.Spec : Prop :=
  ∀ n, P11788324050411360512.a n = A022317 n

end A022317

/-! ## A022317.P9180439112660809424

`A022093(n)+A001610(n)`
-/

namespace A022317.P9180439112660809424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 n + A001610 n

end

end A022317.P9180439112660809424

namespace A022317

/-- `A022093(n)+A001610(n)` -/
def P9180439112660809424.Spec : Prop :=
  ∀ n, P9180439112660809424.a n = A022317 n

end A022317

/-! ## A022317.P8609895136356809902

`A022308(n)+A022092(n)`
-/

namespace A022317.P8609895136356809902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 n + A022092 n

end

end A022317.P8609895136356809902

namespace A022317

/-- `A022308(n)+A022092(n)` -/
def P8609895136356809902.Spec : Prop :=
  ∀ n, P8609895136356809902.a n = A022317 n

end A022317

/-! ## A022317.P10203501311863231878

`A022309(n)+A022091(n)`
-/

namespace A022317.P10203501311863231878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022309 n + A022091 n

end

end A022317.P10203501311863231878

namespace A022317

/-- `A022309(n)+A022091(n)` -/
def P10203501311863231878.Spec : Prop :=
  ∀ n, P10203501311863231878.a n = A022317 n

end A022317

/-! ## A022317.P3573920479764647702

`A022310(n)+A022090(n)`
-/

namespace A022317.P3573920479764647702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022310 n + A022090 n

end

end A022317.P3573920479764647702

namespace A022317

/-- `A022310(n)+A022090(n)` -/
def P3573920479764647702.Spec : Prop :=
  ∀ n, P3573920479764647702.a n = A022317 n

end A022317

/-! ## A022317.P14915842707722969639

`A022311(n)+A022089(n)`
-/

namespace A022317.P14915842707722969639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022311 n + A022089 n

end

end A022317.P14915842707722969639

namespace A022317

/-- `A022311(n)+A022089(n)` -/
def P14915842707722969639.Spec : Prop :=
  ∀ n, P14915842707722969639.a n = A022317 n

end A022317

/-! ## A022317.P3717326715063511226

`A022312(n)+A022088(n)`
-/

namespace A022317.P3717326715063511226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022312 n + A022088 n

end

end A022317.P3717326715063511226

namespace A022317

/-- `A022312(n)+A022088(n)` -/
def P3717326715063511226.Spec : Prop :=
  ∀ n, P3717326715063511226.a n = A022317 n

end A022317

/-! ## A022317.P12295811814547679322

`A022313(n)+A022087(n)`
-/

namespace A022317.P12295811814547679322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022313 n + A022087 n

end

end A022317.P12295811814547679322

namespace A022317

/-- `A022313(n)+A022087(n)` -/
def P12295811814547679322.Spec : Prop :=
  ∀ n, P12295811814547679322.a n = A022317 n

end A022317

/-! ## A022317.P5130047273842851196

`A022314(n)+A022086(n)`
-/

namespace A022317.P5130047273842851196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022314 n + A022086 n

end

end A022317.P5130047273842851196

namespace A022317

/-- `A022314(n)+A022086(n)` -/
def P5130047273842851196.Spec : Prop :=
  ∀ n, P5130047273842851196.a n = A022317 n

end A022317

/-! ## A022317.P7559400528959912852

`A022105(n)-A001588(n)`
-/

namespace A022317.P7559400528959912852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022105 n - A001588 n

end

end A022317.P7559400528959912852

namespace A022317

/-- `A022105(n)-A001588(n)` -/
def P7559400528959912852.Spec : Prop :=
  ∀ n, P7559400528959912852.a n = A022317 n

end A022317

/-! ## A022317.P15520518768272915600

`A022104(n)-A001611(n)`
-/

namespace A022317.P15520518768272915600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022104 n - A001611 n

end

end A022317.P15520518768272915600

namespace A022317

/-- `A022104(n)-A001611(n)` -/
def P15520518768272915600.Spec : Prop :=
  ∀ n, P15520518768272915600.a n = A022317 n

end A022317

/-! ## A022317.P3074121265731063870

`A022125(n)-A001612(n)`
-/

namespace A022317.P3074121265731063870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022125 n - A001612 n

end

end A022317.P3074121265731063870

namespace A022317

/-- `A022125(n)-A001612(n)` -/
def P3074121265731063870.Spec : Prop :=
  ∀ n, P3074121265731063870.a n = A022317 n

end A022317

/-! ## A022317.P17489390411935301530

`A022126(n)-A048577(n)`
-/

namespace A022317.P17489390411935301530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022126 n - A048577 n

end

end A022317.P17489390411935301530

namespace A022317

/-- `A022126(n)-A048577(n)` -/
def P17489390411935301530.Spec : Prop :=
  ∀ n, P17489390411935301530.a n = A022317 n

end A022317

/-! ## A022317.P5681527010665828969

`A022325(n)-A152163(n)`
-/

namespace A022317.P5681527010665828969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022325 n - A152163 n

end

end A022317.P5681527010665828969

namespace A022317

/-- `A022325(n)-A152163(n)` -/
def P5681527010665828969.Spec : Prop :=
  ∀ n, P5681527010665828969.a n = A022317 n

end A022317

/-! ## A022317.P1364782885531234654

`A022106(n)-A187893(n)`
-/

namespace A022317.P1364782885531234654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022106 n - A187893 n

end

end A022317.P1364782885531234654

namespace A022317

/-- `A022106(n)-A187893(n)` -/
def P1364782885531234654.Spec : Prop :=
  ∀ n, P1364782885531234654.a n = A022317 n

end A022317

/-! ## A022317.P5388076484888193941

`A022351(n)-A187891(n)`
-/

namespace A022317.P5388076484888193941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022351 n - A187891 n

end

end A022317.P5388076484888193941

namespace A022317

/-- `A022351(n)-A187891(n)` -/
def P5388076484888193941.Spec : Prop :=
  ∀ n, P5388076484888193941.a n = A022317 n

end A022317

/-! ## A022317.P11485172844039947866

`A022352(n)-A187892(n)`
-/

namespace A022317.P11485172844039947866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022352 n - A187892 n

end

end A022317.P11485172844039947866

namespace A022317

/-- `A022352(n)-A187892(n)` -/
def P11485172844039947866.Spec : Prop :=
  ∀ n, P11485172844039947866.a n = A022317 n

end A022317

/-! ## A022317.P6746216568850268150

`A022326(n)-A212804(n)`
-/

namespace A022317.P6746216568850268150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022326 n - A212804 n

end

end A022317.P6746216568850268150

namespace A022317

/-- `A022326(n)-A212804(n)` -/
def P6746216568850268150.Spec : Prop :=
  ∀ n, P6746216568850268150.a n = A022317 n

end A022317

/-!
# A022318: a(n) = a(n-1) + a(n-2) + 1, with a(0) = 1 and a(1) = 4.

The programs for A022318, the canonical program `A022318.P6062539651723230646` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022318 has offset 0).

The definition of A022318 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022318.P6062539651723230646`, by `A022318.P6062539651723230646.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022318.P6062539651723230646

`a(n-1)+a(n-2)+1` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022318

/-- `a(n-1)+a(n-2)+1` -/
def P6062539651723230646.Spec : Prop :=
  ∀ n, (P6062539651723230646.a n : ℤ) = A022318 n

theorem P6062539651723230646.correct : P6062539651723230646.Spec := by
  intro n
  simp only [A022318]

end A022318

/-! ## A022318.P9726869754078772918

`2*A000045(n+2)+A000045(n)-1`
-/

namespace A022318.P9726869754078772918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (n + 2) + A000045 n - 1

end

end A022318.P9726869754078772918

namespace A022318

/-- `2*A000045(n+2)+A000045(n)-1` -/
def P9726869754078772918.Spec : Prop :=
  ∀ n, P9726869754078772918.a n = A022318 n

end A022318

/-! ## A022318.P14963223113833223577

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=4, a(2)=6`
-/

namespace A022318.P14963223113833223577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 6] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A022318.P14963223113833223577

namespace A022318

/-- `2*a(n-1)-a(n-3)` -/
def P14963223113833223577.Spec : Prop :=
  ∀ n, P14963223113833223577.a n = A022318 n

end A022318

/-! ## A022318.P16024139221031818742

`ogf((1+2x-2x^2)/(1-2x+x^3))`
-/

namespace A022318.P16024139221031818742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -2] [1, -2, 0, 1] n

end

end A022318.P16024139221031818742

namespace A022318

/-- `ogf((1+2x-2x^2)/(1-2x+x^3))` -/
def P16024139221031818742.Spec : Prop :=
  ∀ n, P16024139221031818742.a n = A022318 n

end A022318

/-! ## A022318.P5283684321878961972

`a(n-1)-xor(-1, a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A022318.P5283684321878961972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) - Int.xor (-1) (a (n - 2))

end

end A022318.P5283684321878961972

namespace A022318

/-- `a(n-1)-xor(-1, a(n-2))` -/
def P5283684321878961972.Spec : Prop :=
  ∀ n, P5283684321878961972.a n = A022318 n

end A022318

/-! ## A022318.P13175975848966500435

`2-floor(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A022318.P13175975848966500435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 - (1 - a (n - 1) - a (n - 2))

end

end A022318.P13175975848966500435

namespace A022318

/-- `2-floor(1-a(n-1)-a(n-2))` -/
def P13175975848966500435.Spec : Prop :=
  ∀ n, P13175975848966500435.a n = A022318 n

end A022318

/-! ## A022318.P15710214961498695437

`4/2-(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A022318.P15710214961498695437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  (4 : ℚ) / 2 - (1 - a (n - 1) - a (n - 2))

end

end A022318.P15710214961498695437

namespace A022318

/-- `4/2-(1-a(n-1)-a(n-2))` -/
def P15710214961498695437.Spec : Prop :=
  ∀ n, P15710214961498695437.a n = (A022318 n : ℚ)

end A022318

/-! ## A022318.P14061458748951203112

`∑[a(n-1)-(a(n-3)-a(n-1))]` with `a(0)=1, a(1)=3, a(2)=2, a(3)=5`
-/

namespace A022318.P14061458748951203112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2, 5] fun n f1 =>
  f1 (n - 1) - (f1 (n - 3) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022318.P14061458748951203112

namespace A022318

/-- `∑[a(n-1)-(a(n-3)-a(n-1))]` -/
def P14061458748951203112.Spec : Prop :=
  ∀ n, P14061458748951203112.a n = A022318 n

end A022318

/-! ## A022318.P11691413037590874325

`2-((1-a(n-1))%a(n-1)-a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A022318.P11691413037590874325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 - (Int.tmod (1 - a (n - 1)) (a (n - 1)) - a (n - 2))

end

end A022318.P11691413037590874325

namespace A022318

/-- `2-((1-a(n-1))%a(n-1)-a(n-2))` -/
def P11691413037590874325.Spec : Prop :=
  ∀ n, P11691413037590874325.a n = A022318 n

end A022318

/-! ## A022318.P7891532240561814787

`A001060(n)-1`
-/

namespace A022318.P7891532240561814787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001060 n - 1

end

end A022318.P7891532240561814787

namespace A022318

/-- `A001060(n)-1` -/
def P7891532240561814787.Spec : Prop :=
  ∀ n, P7891532240561814787.a n = A022318 n

end A022318

/-! ## A022318.P17526521390728549144

`∑[abs(A396201(n))]`
-/

namespace A022318.P17526521390728549144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A396201 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022318.P17526521390728549144

namespace A022318

/-- `∑[abs(A396201(n))]` -/
def P17526521390728549144.Spec : Prop :=
  ∀ n, P17526521390728549144.a n = A022318 n

end A022318

/-! ## A022318.P3195886542480932262

`∑[abs(Δ[A013655(n)])]`
-/

namespace A022318.P3195886542480932262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022318.P3195886542480932262

namespace A022318

/-- `∑[abs(Δ[A013655(n)])]` -/
def P3195886542480932262.Spec : Prop :=
  ∀ n, P3195886542480932262.a n = A022318 n

end A022318

/-! ## A022318.P8364021048021878482

`A013655(n+1)-1`
-/

namespace A022318.P8364021048021878482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 (n + 1) - 1

end

end A022318.P8364021048021878482

namespace A022318

/-- `A013655(n+1)-1` -/
def P8364021048021878482.Spec : Prop :=
  ∀ n, P8364021048021878482.a n = A022318 n

end A022318

/-! ## A022318.P16112081786215143804

`A187890(n+3)-2`
-/

namespace A022318.P16112081786215143804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187890 (n + 3) - 2

end

end A022318.P16112081786215143804

namespace A022318

/-- `A187890(n+3)-2` -/
def P16112081786215143804.Spec : Prop :=
  ∀ n, P16112081786215143804.a n = A022318 n

end A022318

/-! ## A022318.P723261678694781340

`A174562(Δ[n²])-1`
-/

namespace A022318.P723261678694781340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174562 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A022318.P723261678694781340

namespace A022318

/-- `A174562(Δ[n²])-1` -/
def P723261678694781340.Spec : Prop :=
  ∀ n, P723261678694781340.a n = A022318 n

end A022318

/-! ## A022318.P13324795719448312781

`A013915(n+1)-(n+2)`
-/

namespace A022318.P13324795719448312781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013915 (n + 1) - (n + 2 : ℤ)

end

end A022318.P13324795719448312781

namespace A022318

/-- `A013915(n+1)-(n+2)` -/
def P13324795719448312781.Spec : Prop :=
  ∀ n, P13324795719448312781.a n = A022318 n

end A022318

/-! ## A022318.P7735006033331021326

`A001911(n)+A001588(n)`
-/

namespace A022318.P7735006033331021326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n + A001588 n

end

end A022318.P7735006033331021326

namespace A022318

/-- `A001911(n)+A001588(n)` -/
def P7735006033331021326.Spec : Prop :=
  ∀ n, P7735006033331021326.a n = A022318 n

end A022318

/-! ## A022318.P12612880922254846941

`A022086(n)+A001595(n)`
-/

namespace A022318.P12612880922254846941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 n + A001595 n

end

end A022318.P12612880922254846941

namespace A022318

/-- `A022086(n)+A001595(n)` -/
def P12612880922254846941.Spec : Prop :=
  ∀ n, P12612880922254846941.a n = A022318 n

end A022318

/-! ## A022318.P11722953469425115538

`A131269(n)+A002062(n)`
-/

namespace A022318.P11722953469425115538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131269 n + A002062 n

end

end A022318.P11722953469425115538

namespace A022318

/-- `A131269(n)+A002062(n)` -/
def P11722953469425115538.Spec : Prop :=
  ∀ n, P11722953469425115538.a n = A022318 n

end A022318

/-! ## A022318.P15656604727108778534

`A152163(n)+A022310(n)`
-/

namespace A022318.P15656604727108778534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022310 n

end

end A022318.P15656604727108778534

namespace A022318

/-- `A152163(n)+A022310(n)` -/
def P15656604727108778534.Spec : Prop :=
  ∀ n, P15656604727108778534.a n = A022318 n

end A022318

/-!
# A022319: a(n) = a(n-1) + a(n-2) + 1 for n > 1, a(0)=1, a(1)=5.

The programs for A022319, the canonical program `A022319.P18148402883930728064` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022319 has offset 0).

The definition of A022319 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022319.P18148402883930728064`, by `A022319.P18148402883930728064.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022319.P18148402883930728064

`a(n-1)+a(n-2)+1` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022319

/-- `a(n-1)+a(n-2)+1` -/
def P18148402883930728064.Spec : Prop :=
  ∀ n, (P18148402883930728064.a n : ℤ) = A022319 n

theorem P18148402883930728064.correct : P18148402883930728064.Spec := by
  intro n
  simp only [A022319]

end A022319

/-! ## A022319.P11942860402071113493

`A022112(n)-1`
-/

namespace A022319.P11942860402071113493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 n - 1

end

end A022319.P11942860402071113493

namespace A022319

/-- `A022112(n)-1` -/
def P11942860402071113493.Spec : Prop :=
  ∀ n, P11942860402071113493.a n = A022319 n

end A022319

/-! ## A022319.P16644695608467954100

`ogf((1+3x-3x^2)/(1-2x+x^3))`
-/

namespace A022319.P16644695608467954100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, -3] [1, -2, 0, 1] n

end

end A022319.P16644695608467954100

namespace A022319

/-- `ogf((1+3x-3x^2)/(1-2x+x^3))` -/
def P16644695608467954100.Spec : Prop :=
  ∀ n, P16644695608467954100.a n = A022319 n

end A022319

/-! ## A022319.P16003863537169609431

`a(n-1)-xor(-1, a(n-2))` with `a(0)=1, a(1)=5`
-/

namespace A022319.P16003863537169609431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) - Int.xor (-1) (a (n - 2))

end

end A022319.P16003863537169609431

namespace A022319

/-- `a(n-1)-xor(-1, a(n-2))` -/
def P16003863537169609431.Spec : Prop :=
  ∀ n, P16003863537169609431.a n = A022319 n

end A022319

/-! ## A022319.P7810126060672233484

`2-floor(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A022319.P7810126060672233484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  2 - (1 - a (n - 1) - a (n - 2))

end

end A022319.P7810126060672233484

namespace A022319

/-- `2-floor(1-a(n-1)-a(n-2))` -/
def P7810126060672233484.Spec : Prop :=
  ∀ n, P7810126060672233484.a n = A022319 n

end A022319

/-! ## A022319.P15536948530102006216

`∑[a(n-1)-(1-a(n-2))]-n` with `a(0)=1, a(1)=5, a(2)=3`
-/

namespace A022319.P15536948530102006216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 3] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A022319.P15536948530102006216

namespace A022319

/-- `∑[a(n-1)-(1-a(n-2))]-n` -/
def P15536948530102006216.Spec : Prop :=
  ∀ n, P15536948530102006216.a n = A022319 n

end A022319

/-! ## A022319.P7269793600051169452

`A168674(n)+1`
-/

namespace A022319.P7269793600051169452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168674 n + 1

end

end A022319.P7269793600051169452

namespace A022319

/-- `A168674(n)+1` -/
def P7269793600051169452.Spec : Prop :=
  ∀ n, P7269793600051169452.a n = A022319 n

end A022319

/-! ## A022319.P7097691047497891911

`A380821(n+1)-2`
-/

namespace A022319.P7097691047497891911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380821 (n + 1) - 2

end

end A022319.P7097691047497891911

namespace A022319

/-- `A380821(n+1)-2` -/
def P7097691047497891911.Spec : Prop :=
  ∀ n, P7097691047497891911.a n = A022319 n

end A022319

/-! ## A022319.P6780770069017219245

`2*A001610(n)+1`
-/

namespace A022319.P6780770069017219245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001610 n + 1

end

end A022319.P6780770069017219245

namespace A022319

/-- `2*A001610(n)+1` -/
def P6780770069017219245.Spec : Prop :=
  ∀ n, P6780770069017219245.a n = A022319 n

end A022319

/-! ## A022319.P15084654441526363488

`abs(2*A075193(n))-1`
-/

namespace A022319.P15084654441526363488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A075193 n| - 1

end

end A022319.P15084654441526363488

namespace A022319

/-- `abs(2*A075193(n))-1` -/
def P15084654441526363488.Spec : Prop :=
  ∀ n, P15084654441526363488.a n = A022319 n

end A022319

/-! ## A022319.P8505573126263554798

`2*A000032(n+1)-1`
-/

namespace A022319.P8505573126263554798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000032 (n + 1) - 1

end

end A022319.P8505573126263554798

namespace A022319

/-- `2*A000032(n+1)-1` -/
def P8505573126263554798.Spec : Prop :=
  ∀ n, P8505573126263554798.a n = A022319 n

end A022319

/-! ## A022319.P16631924851768397166

`2*A000204(n+1)-1`
-/

namespace A022319.P16631924851768397166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000204 (n + 1) - 1

end

end A022319.P16631924851768397166

namespace A022319

/-- `2*A000204(n+1)-1` -/
def P16631924851768397166.Spec : Prop :=
  ∀ n, P16631924851768397166.a n = A022319 n

end A022319

/-! ## A022319.P10676588052215430151

`2*A001612(n+1)-3`
-/

namespace A022319.P10676588052215430151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001612 (n + 1) - 3

end

end A022319.P10676588052215430151

namespace A022319

/-- `2*A001612(n+1)-3` -/
def P10676588052215430151.Spec : Prop :=
  ∀ n, P10676588052215430151.a n = A022319 n

end A022319

/-! ## A022319.P14518825218926570533

`A022318(n)+A000045(n)`
-/

namespace A022319.P14518825218926570533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022318 n + A000045 n

end

end A022319.P14518825218926570533

namespace A022319

/-- `A022318(n)+A000045(n)` -/
def P14518825218926570533.Spec : Prop :=
  ∀ n, P14518825218926570533.a n = A022319 n

end A022319

/-! ## A022319.P8300314185988112682

`A022087(n)+A001595(n)`
-/

namespace A022319.P8300314185988112682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 n + A001595 n

end

end A022319.P8300314185988112682

namespace A022319

/-- `A022087(n)+A001595(n)` -/
def P8300314185988112682.Spec : Prop :=
  ∀ n, P8300314185988112682.a n = A022319 n

end A022319

/-! ## A022319.P14045182370798534246

`A187893(n)+A001911(n)`
-/

namespace A022319.P14045182370798534246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n + A001911 n

end

end A022319.P14045182370798534246

namespace A022319

/-- `A187893(n)+A001911(n)` -/
def P14045182370798534246.Spec : Prop :=
  ∀ n, P14045182370798534246.a n = A022319 n

end A022319

/-! ## A022319.P7536575704279609227

`A212804(n)+A022310(n)`
-/

namespace A022319.P7536575704279609227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022310 n

end

end A022319.P7536575704279609227

namespace A022319

/-- `A212804(n)+A022310(n)` -/
def P7536575704279609227.Spec : Prop :=
  ∀ n, P7536575704279609227.a n = A022319 n

end A022319

/-! ## A022319.P2183296407067739586

`A371843(n)+A001350(n)`
-/

namespace A022319.P2183296407067739586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371843 n + A001350 n

end

end A022319.P2183296407067739586

namespace A022319

/-- `A371843(n)+A001350(n)` -/
def P2183296407067739586.Spec : Prop :=
  ∀ n, P2183296407067739586.a n = A022319 n

end A022319

/-! ## A022319.P11046363607523100933

`A001610(n)+A000032(n+1)`
-/

namespace A022319.P11046363607523100933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n + A000032 (n + 1)

end

end A022319.P11046363607523100933

namespace A022319

/-- `A001610(n)+A000032(n+1)` -/
def P11046363607523100933.Spec : Prop :=
  ∀ n, P11046363607523100933.a n = A022319 n

end A022319

/-! ## A022319.P11638884014804007626

`A001610(n)+A000204(n+1)`
-/

namespace A022319.P11638884014804007626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n + A000204 (n + 1)

end

end A022319.P11638884014804007626

namespace A022319

/-- `A001610(n)+A000204(n+1)` -/
def P11638884014804007626.Spec : Prop :=
  ∀ n, P11638884014804007626.a n = A022319 n

end A022319

/-!
# A022320: a(n) = a(n-1) + a(n-2) + 1, with a(0) = 1 and a(1) = 6.

The programs for A022320, the canonical program `A022320.P2754928452966867062` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022320 has offset 0).

The definition of A022320 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022320.P2754928452966867062`, by `A022320.P2754928452966867062.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022320.P2754928452966867062

`a(n-1)+a(n-2)+1` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022320

/-- `a(n-1)+a(n-2)+1` -/
def P2754928452966867062.Spec : Prop :=
  ∀ n, (P2754928452966867062.a n : ℤ) = A022320 n

theorem P2754928452966867062.correct : P2754928452966867062.Spec := by
  intro n
  simp only [A022320]

end A022320

/-! ## A022320.P4834227033755556653

`A022113(n)-1`
-/

namespace A022320.P4834227033755556653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022113 n - 1

end

end A022320.P4834227033755556653

namespace A022320

/-- `A022113(n)-1` -/
def P4834227033755556653.Spec : Prop :=
  ∀ n, P4834227033755556653.a n = A022320 n

end A022320

/-! ## A022320.P18284495948102340546

`ogf((1+4x-4x^2)/(1-2x+x^3))`
-/

namespace A022320.P18284495948102340546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -4] [1, -2, 0, 1] n

end

end A022320.P18284495948102340546

namespace A022320

/-- `ogf((1+4x-4x^2)/(1-2x+x^3))` -/
def P18284495948102340546.Spec : Prop :=
  ∀ n, P18284495948102340546.a n = A022320 n

end A022320

/-! ## A022320.P110122836997403097

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=6, a(2)=8`
-/

namespace A022320.P110122836997403097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 8] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A022320.P110122836997403097

namespace A022320

/-- `2*a(n-1)-a(n-3)` -/
def P110122836997403097.Spec : Prop :=
  ∀ n, P110122836997403097.a n = A022320 n

end A022320

/-! ## A022320.P4581621446656835400

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=1, a(1)=6, a(2)=8`
-/

namespace A022320.P4581621446656835400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 8] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022320.P4581621446656835400

namespace A022320

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P4581621446656835400.Spec : Prop :=
  ∀ n, P4581621446656835400.a n = A022320 n

end A022320

/-! ## A022320.P2700056033806946324

`A095795(2*n)-1`
-/

namespace A022320.P2700056033806946324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095795 (2 * n) - 1

end

end A022320.P2700056033806946324

namespace A022320

/-- `A095795(2*n)-1` -/
def P2700056033806946324.Spec : Prop :=
  ∀ n, P2700056033806946324.a n = A022320 n

end A022320

/-! ## A022320.P5744965939458592900

`A001610(n)+A000285(n)`
-/

namespace A022320.P5744965939458592900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n + A000285 n

end

end A022320.P5744965939458592900

namespace A022320

/-- `A001610(n)+A000285(n)` -/
def P5744965939458592900.Spec : Prop :=
  ∀ n, P5744965939458592900.a n = A022320 n

end A022320

/-! ## A022320.P2335041824500044536

`A022319(n)+A000045(n)`
-/

namespace A022320.P2335041824500044536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022319 n + A000045 n

end

end A022320.P2335041824500044536

namespace A022320

/-- `A022319(n)+A000045(n)` -/
def P2335041824500044536.Spec : Prop :=
  ∀ n, P2335041824500044536.a n = A022320 n

end A022320

/-! ## A022320.P17386981730346532841

`A022088(n)+A001595(n)`
-/

namespace A022320.P17386981730346532841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 n + A001595 n

end

end A022320.P17386981730346532841

namespace A022320

/-- `A022088(n)+A001595(n)` -/
def P17386981730346532841.Spec : Prop :=
  ∀ n, P17386981730346532841.a n = A022320 n

end A022320

/-! ## A022320.P2938271620701731366

`A168674(n)+A001611(n)`
-/

namespace A022320.P2938271620701731366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168674 n + A001611 n

end

end A022320.P2938271620701731366

namespace A022320

/-- `A168674(n)+A001611(n)` -/
def P2938271620701731366.Spec : Prop :=
  ∀ n, P2938271620701731366.a n = A022320 n

end A022320

/-! ## A022320.P3283003192779493258

`A152163(n)+A022312(n)`
-/

namespace A022320.P3283003192779493258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022312 n

end

end A022320.P3283003192779493258

namespace A022320

/-- `A152163(n)+A022312(n)` -/
def P3283003192779493258.Spec : Prop :=
  ∀ n, P3283003192779493258.a n = A022320 n

end A022320

/-! ## A022320.P12808082159490496457

`A212804(n)+A022311(n)`
-/

namespace A022320.P12808082159490496457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022311 n

end

end A022320.P12808082159490496457

namespace A022320

/-- `A212804(n)+A022311(n)` -/
def P12808082159490496457.Spec : Prop :=
  ∀ n, P12808082159490496457.a n = A022320 n

end A022320

/-! ## A022320.P4399833470385283753

`A187891(n)+A111314(n)`
-/

namespace A022320.P4399833470385283753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 n + A111314 n

end

end A022320.P4399833470385283753

namespace A022320

/-- `A187891(n)+A111314(n)` -/
def P4399833470385283753.Spec : Prop :=
  ∀ n, P4399833470385283753.a n = A022320 n

end A022320

/-! ## A022320.P2575244459515353096

`A022321(n)-A000045(n)`
-/

namespace A022320.P2575244459515353096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022321 n - A000045 n

end

end A022320.P2575244459515353096

namespace A022320

/-- `A022321(n)-A000045(n)` -/
def P2575244459515353096.Spec : Prop :=
  ∀ n, P2575244459515353096.a n = A022320 n

end A022320

/-! ## A022320.P10687201128163958992

`A022406(n)-A000032(n)`
-/

namespace A022320.P10687201128163958992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022406 n - A000032 n

end

end A022320.P10687201128163958992

namespace A022320

/-- `A022406(n)-A000032(n)` -/
def P10687201128163958992.Spec : Prop :=
  ∀ n, P10687201128163958992.a n = A022320 n

end A022320

/-! ## A022320.P9562264173281728136

`A022114(n)-A001588(n)`
-/

namespace A022320.P9562264173281728136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022114 n - A001588 n

end

end A022320.P9562264173281728136

namespace A022320

/-- `A022114(n)-A001588(n)` -/
def P9562264173281728136.Spec : Prop :=
  ∀ n, P9562264173281728136.a n = A022320 n

end A022320

/-! ## A022320.P12725007374410240482

`A022323(n)-A022086(n)`
-/

namespace A022320.P12725007374410240482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022323 n - A022086 n

end

end A022320.P12725007374410240482

namespace A022320

/-- `A022323(n)-A022086(n)` -/
def P12725007374410240482.Spec : Prop :=
  ∀ n, P12725007374410240482.a n = A022320 n

end A022320

/-! ## A022320.P6880061643901020615

`A022096(n)+A000071(n+1)`
-/

namespace A022320.P6880061643901020615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022096 n + A000071 (n + 1)

end

end A022320.P6880061643901020615

namespace A022320

/-- `A022096(n)+A000071(n+1)` -/
def P6880061643901020615.Spec : Prop :=
  ∀ n, P6880061643901020615.a n = A022320 n

end A022320

/-! ## A022320.P10140160295747008534

`A022308(n)+A000032(n+1)`
-/

namespace A022320.P10140160295747008534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 n + A000032 (n + 1)

end

end A022320.P10140160295747008534

namespace A022320

/-- `A022308(n)+A000032(n+1)` -/
def P10140160295747008534.Spec : Prop :=
  ∀ n, P10140160295747008534.a n = A022320 n

end A022320

/-! ## A022320.P1496724584255344269

`A022310(n)+A000045(n+1)`
-/

namespace A022320.P1496724584255344269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022310 n + A000045 (n + 1)

end

end A022320.P1496724584255344269

namespace A022320

/-- `A022310(n)+A000045(n+1)` -/
def P1496724584255344269.Spec : Prop :=
  ∀ n, P1496724584255344269.a n = A022320 n

end A022320

/-!
# A022321: a(n) = a(n-1) + a(n-2) + 1, with a(0) = 1 and a(1) = 7.

The programs for A022321, the canonical program `A022321.P3224986903594311997` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022321 has offset 0).

The definition of A022321 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022321.P3224986903594311997`, by `A022321.P3224986903594311997.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022321.P3224986903594311997

`a(n-1)+a(n-2)+1` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022321

/-- `a(n-1)+a(n-2)+1` -/
def P3224986903594311997.Spec : Prop :=
  ∀ n, (P3224986903594311997.a n : ℤ) = A022321 n

theorem P3224986903594311997.correct : P3224986903594311997.Spec := by
  intro n
  simp only [A022321]

end A022321

/-! ## A022321.P3874916707332773922

`2*A000285(n)-1`
-/

namespace A022321.P3874916707332773922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000285 n - 1

end

end A022321.P3874916707332773922

namespace A022321

/-- `2*A000285(n)-1` -/
def P3874916707332773922.Spec : Prop :=
  ∀ n, P3874916707332773922.a n = A022321 n

end A022321

/-! ## A022321.P1355218580670402886

`ogf((1+5x-5x^2)/(1-2x+x^3))`
-/

namespace A022321.P1355218580670402886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, -5] [1, -2, 0, 1] n

end

end A022321.P1355218580670402886

namespace A022321

/-- `ogf((1+5x-5x^2)/(1-2x+x^3))` -/
def P1355218580670402886.Spec : Prop :=
  ∀ n, P1355218580670402886.a n = A022321 n

end A022321

/-! ## A022321.P954961994053893164

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=7, a(2)=9`
-/

namespace A022321.P954961994053893164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 9] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A022321.P954961994053893164

namespace A022321

/-- `2*a(n-1)-a(n-3)` -/
def P954961994053893164.Spec : Prop :=
  ∀ n, P954961994053893164.a n = A022321 n

end A022321

/-! ## A022321.P17037697957746427790

`∑[a(n-1)-(1-a(n-2))]-n` with `a(0)=1, a(1)=7, a(2)=3`
-/

namespace A022321.P17037697957746427790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 3] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A022321.P17037697957746427790

namespace A022321

/-- `∑[a(n-1)-(1-a(n-2))]-n` -/
def P17037697957746427790.Spec : Prop :=
  ∀ n, P17037697957746427790.a n = A022321 n

end A022321

/-! ## A022321.P14086553678396211492

`A294157(n)-1`
-/

namespace A022321.P14086553678396211492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294157 n - 1

end

end A022321.P14086553678396211492

namespace A022321

/-- `A294157(n)-1` -/
def P14086553678396211492.Spec : Prop :=
  ∀ n, P14086553678396211492.a n = A022321 n

end A022321

/-! ## A022321.P7642700044303158512

`2*A022308(n)+1`
-/

namespace A022321.P7642700044303158512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022308 n + 1

end

end A022321.P7642700044303158512

namespace A022321

/-- `2*A022308(n)+1` -/
def P7642700044303158512.Spec : Prop :=
  ∀ n, P7642700044303158512.a n = A022321 n

end A022321

/-! ## A022321.P3012084915681576174

`2*A104449(n+1)-1`
-/

namespace A022321.P3012084915681576174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104449 (n + 1) - 1

end

end A022321.P3012084915681576174

namespace A022321

/-- `2*A104449(n+1)-1` -/
def P3012084915681576174.Spec : Prop :=
  ∀ n, P3012084915681576174.a n = A022321 n

end A022321

/-! ## A022321.P14030550765919292643

`A022320(n)+A000045(n)`
-/

namespace A022321.P14030550765919292643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022320 n + A000045 n

end

end A022321.P14030550765919292643

namespace A022321

/-- `A022320(n)+A000045(n)` -/
def P14030550765919292643.Spec : Prop :=
  ∀ n, P14030550765919292643.a n = A022321 n

end A022321

/-! ## A022321.P16738249970585958392

`A022308(n)+A000285(n)`
-/

namespace A022321.P16738249970585958392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 n + A000285 n

end

end A022321.P16738249970585958392

namespace A022321

/-- `A022308(n)+A000285(n)` -/
def P16738249970585958392.Spec : Prop :=
  ∀ n, P16738249970585958392.a n = A022321 n

end A022321

/-! ## A022321.P8898017605817864976

`A022089(n)+A001595(n)`
-/

namespace A022321.P8898017605817864976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022089 n + A001595 n

end

end A022321.P8898017605817864976

namespace A022321

/-- `A022089(n)+A001595(n)` -/
def P8898017605817864976.Spec : Prop :=
  ∀ n, P8898017605817864976.a n = A022321 n

end A022321

/-! ## A022321.P503153897495643530

`A022095(n)+A001610(n)`
-/

namespace A022321.P503153897495643530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 n + A001610 n

end

end A022321.P503153897495643530

namespace A022321

/-- `A022095(n)+A001610(n)` -/
def P503153897495643530.Spec : Prop :=
  ∀ n, P503153897495643530.a n = A022321 n

end A022321

/-! ## A022321.P11765379613755323914

`A022318(n)+A022086(n)`
-/

namespace A022321.P11765379613755323914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022318 n + A022086 n

end

end A022321.P11765379613755323914

namespace A022321

/-- `A022318(n)+A022086(n)` -/
def P11765379613755323914.Spec : Prop :=
  ∀ n, P11765379613755323914.a n = A022321 n

end A022321

/-! ## A022321.P10975617904388398516

`A168674(n)+A001588(n)`
-/

namespace A022321.P10975617904388398516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168674 n + A001588 n

end

end A022321.P10975617904388398516

namespace A022321

/-- `A168674(n)+A001588(n)` -/
def P10975617904388398516.Spec : Prop :=
  ∀ n, P10975617904388398516.a n = A022321 n

end A022321

/-! ## A022321.P11553174962808660279

`A152163(n)+A022313(n)`
-/

namespace A022321.P11553174962808660279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022313 n

end

end A022321.P11553174962808660279

namespace A022321

/-- `A152163(n)+A022313(n)` -/
def P11553174962808660279.Spec : Prop :=
  ∀ n, P11553174962808660279.a n = A022321 n

end A022321

/-! ## A022321.P1251031132077163409

`A187891(n)+A014739(n)`
-/

namespace A022321.P1251031132077163409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 n + A014739 n

end

end A022321.P1251031132077163409

namespace A022321

/-- `A187891(n)+A014739(n)` -/
def P1251031132077163409.Spec : Prop :=
  ∀ n, P1251031132077163409.a n = A022321 n

end A022321

/-! ## A022321.P13513833354978893640

`A212804(n)+A022312(n)`
-/

namespace A022321.P13513833354978893640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022312 n

end

end A022321.P13513833354978893640

namespace A022321

/-- `A212804(n)+A022312(n)` -/
def P13513833354978893640.Spec : Prop :=
  ∀ n, P13513833354978893640.a n = A022321 n

end A022321

/-! ## A022321.P1338283811658822059

`A187892(n)+A111314(n)`
-/

namespace A022321.P1338283811658822059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187892 n + A111314 n

end

end A022321.P1338283811658822059

namespace A022321

/-- `A187892(n)+A111314(n)` -/
def P1338283811658822059.Spec : Prop :=
  ∀ n, P1338283811658822059.a n = A022321 n

end A022321

/-! ## A022321.P11661739525329567921

`A022322(n)-A000045(n)`
-/

namespace A022321.P11661739525329567921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022322 n - A000045 n

end

end A022321.P11661739525329567921

namespace A022321

/-- `A022322(n)-A000045(n)` -/
def P11661739525329567921.Spec : Prop :=
  ∀ n, P11661739525329567921.a n = A022321 n

end A022321

/-! ## A022321.P4747894483542397953

`A022407(n)-A000032(n)`
-/

namespace A022321.P4747894483542397953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022407 n - A000032 n

end

end A022321.P4747894483542397953

namespace A022321

/-- `A022407(n)-A000032(n)` -/
def P4747894483542397953.Spec : Prop :=
  ∀ n, P4747894483542397953.a n = A022321 n

end A022321

/-!
# A022322: a(n) = a(n-1) + a(n-2) + 1, with a(0) = 1 and a(1) = 8.

The programs for A022322, the canonical program `A022322.P2432436242261697931` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022322 has offset 0).

The definition of A022322 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022322.P2432436242261697931`, by `A022322.P2432436242261697931.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022322.P2432436242261697931

`a(n-1)+a(n-2)+1` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022322

/-- `a(n-1)+a(n-2)+1` -/
def P2432436242261697931.Spec : Prop :=
  ∀ n, (P2432436242261697931.a n : ℤ) = A022322 n

theorem P2432436242261697931.correct : P2432436242261697931.Spec := by
  intro n
  simp only [A022322]

end A022322

/-! ## A022322.P17353000994180160664

`A022114(n)-1`
-/

namespace A022322.P17353000994180160664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022114 n - 1

end

end A022322.P17353000994180160664

namespace A022322

/-- `A022114(n)-1` -/
def P17353000994180160664.Spec : Prop :=
  ∀ n, P17353000994180160664.a n = A022322 n

end A022322

/-! ## A022322.P4540295715866588901

`ogf((1+6x-6x^2)/(1-2x+x^3))`
-/

namespace A022322.P4540295715866588901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, -6] [1, -2, 0, 1] n

end

end A022322.P4540295715866588901

namespace A022322

/-- `ogf((1+6x-6x^2)/(1-2x+x^3))` -/
def P4540295715866588901.Spec : Prop :=
  ∀ n, P4540295715866588901.a n = A022322 n

end A022322

/-! ## A022322.P1718963143218073437

`A022321(n)+A000045(n)`
-/

namespace A022322.P1718963143218073437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022321 n + A000045 n

end

end A022322.P1718963143218073437

namespace A022322

/-- `A022321(n)+A000045(n)` -/
def P1718963143218073437.Spec : Prop :=
  ∀ n, P1718963143218073437.a n = A022322 n

end A022322

/-! ## A022322.P13476556408899160526

`A022309(n)+A000285(n)`
-/

namespace A022322.P13476556408899160526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022309 n + A000285 n

end

end A022322.P13476556408899160526

namespace A022322

/-- `A022309(n)+A000285(n)` -/
def P13476556408899160526.Spec : Prop :=
  ∀ n, P13476556408899160526.a n = A022322 n

end A022322

/-! ## A022322.P13748110192683540937

`A022090(n)+A001595(n)`
-/

namespace A022322.P13748110192683540937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022090 n + A001595 n

end

end A022322.P13748110192683540937

namespace A022322

/-- `A022090(n)+A001595(n)` -/
def P13748110192683540937.Spec : Prop :=
  ∀ n, P13748110192683540937.a n = A022322 n

end A022322

/-! ## A022322.P15743384296578987766

`A022096(n)+A001610(n)`
-/

namespace A022322.P15743384296578987766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022096 n + A001610 n

end

end A022322.P15743384296578987766

namespace A022322

/-- `A022096(n)+A001610(n)` -/
def P15743384296578987766.Spec : Prop :=
  ∀ n, P15743384296578987766.a n = A022322 n

end A022322

/-! ## A022322.P1821559149924796439

`A022308(n)+A022095(n)`
-/

namespace A022322.P1821559149924796439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 n + A022095 n

end

end A022322.P1821559149924796439

namespace A022322

/-- `A022308(n)+A022095(n)` -/
def P1821559149924796439.Spec : Prop :=
  ∀ n, P1821559149924796439.a n = A022322 n

end A022322

/-! ## A022322.P987737456255649996

`A022318(n)+A022087(n)`
-/

namespace A022322.P987737456255649996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022318 n + A022087 n

end

end A022322.P987737456255649996

namespace A022322

/-- `A022318(n)+A022087(n)` -/
def P987737456255649996.Spec : Prop :=
  ∀ n, P987737456255649996.a n = A022322 n

end A022322

/-! ## A022322.P7954355513174302948

`A022319(n)+A022086(n)`
-/

namespace A022322.P7954355513174302948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022319 n + A022086 n

end

end A022322.P7954355513174302948

namespace A022322

/-- `A022319(n)+A022086(n)` -/
def P7954355513174302948.Spec : Prop :=
  ∀ n, P7954355513174302948.a n = A022322 n

end A022322

/-! ## A022322.P8917200667555452153

`A152163(n)+A022314(n)`
-/

namespace A022322.P8917200667555452153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022314 n

end

end A022322.P8917200667555452153

namespace A022322

/-- `A152163(n)+A022314(n)` -/
def P8917200667555452153.Spec : Prop :=
  ∀ n, P8917200667555452153.a n = A022322 n

end A022322

/-! ## A022322.P2984686597087421961

`A187892(n)+A014739(n)`
-/

namespace A022322.P2984686597087421961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187892 n + A014739 n

end

end A022322.P2984686597087421961

namespace A022322

/-- `A187892(n)+A014739(n)` -/
def P2984686597087421961.Spec : Prop :=
  ∀ n, P2984686597087421961.a n = A022322 n

end A022322

/-! ## A022322.P18057239581876504317

`A212804(n)+A022313(n)`
-/

namespace A022322.P18057239581876504317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022313 n

end

end A022322.P18057239581876504317

namespace A022322

/-- `A212804(n)+A022313(n)` -/
def P18057239581876504317.Spec : Prop :=
  ∀ n, P18057239581876504317.a n = A022322 n

end A022322

/-! ## A022322.P17042685442528158422

`A187893(n)+A168674(n)`
-/

namespace A022322.P17042685442528158422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n + A168674 n

end

end A022322.P17042685442528158422

namespace A022322

/-- `A187893(n)+A168674(n)` -/
def P17042685442528158422.Spec : Prop :=
  ∀ n, P17042685442528158422.a n = A022322 n

end A022322

/-! ## A022322.P16484229451351129009

`A022323(n)-A000045(n)`
-/

namespace A022322.P16484229451351129009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022323 n - A000045 n

end

end A022322.P16484229451351129009

namespace A022322

/-- `A022323(n)-A000045(n)` -/
def P16484229451351129009.Spec : Prop :=
  ∀ n, P16484229451351129009.a n = A022322 n

end A022322

/-! ## A022322.P10995846249181560432

`A022367(n)-A001611(n)`
-/

namespace A022322.P10995846249181560432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022367 n - A001611 n

end

end A022322.P10995846249181560432

namespace A022322

/-- `A022367(n)-A001611(n)` -/
def P10995846249181560432.Spec : Prop :=
  ∀ n, P10995846249181560432.a n = A022322 n

end A022322

/-! ## A022322.P12432838716101453623

`A022098(n)+A000071(n+1)`
-/

namespace A022322.P12432838716101453623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022098 n + A000071 (n + 1)

end

end A022322.P12432838716101453623

namespace A022322

/-- `A022098(n)+A000071(n+1)` -/
def P12432838716101453623.Spec : Prop :=
  ∀ n, P12432838716101453623.a n = A022322 n

end A022322

/-! ## A022322.P1765373810691553588

`A022310(n)+A000032(n+1)`
-/

namespace A022322.P1765373810691553588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022310 n + A000032 (n + 1)

end

end A022322.P1765373810691553588

namespace A022322

/-- `A022310(n)+A000032(n+1)` -/
def P1765373810691553588.Spec : Prop :=
  ∀ n, P1765373810691553588.a n = A022322 n

end A022322

/-! ## A022322.P12150637984105786249

`A022312(n)+A000045(n+1)`
-/

namespace A022322.P12150637984105786249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022312 n + A000045 (n + 1)

end

end A022322.P12150637984105786249

namespace A022322

/-- `A022312(n)+A000045(n+1)` -/
def P12150637984105786249.Spec : Prop :=
  ∀ n, P12150637984105786249.a n = A022322 n

end A022322

/-! ## A022322.P1315610178384184864

`A022310(n)+A000204(n+1)`
-/

namespace A022322.P1315610178384184864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022310 n + A000204 (n + 1)

end

end A022322.P1315610178384184864

namespace A022322

/-- `A022310(n)+A000204(n+1)` -/
def P1315610178384184864.Spec : Prop :=
  ∀ n, P1315610178384184864.a n = A022322 n

end A022322

/-!
# A022323: a(n) = a(n-1) + a(n-2) + 1, with a(0) = 1 and a(1) = 9.

The programs for A022323, the canonical program `A022323.P3020774008995765008` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022323 has offset 0).

The definition of A022323 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022323.P3020774008995765008`, by `A022323.P3020774008995765008.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022323.P3020774008995765008

`a(n-1)+a(n-2)+1` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022323

/-- `a(n-1)+a(n-2)+1` -/
def P3020774008995765008.Spec : Prop :=
  ∀ n, (P3020774008995765008.a n : ℤ) = A022323 n

theorem P3020774008995765008.correct : P3020774008995765008.Spec := by
  intro n
  simp only [A022323]

end A022323

/-! ## A022323.P8586284071528667165

`A022367(n)-1`
-/

namespace A022323.P8586284071528667165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022367 n - 1

end

end A022323.P8586284071528667165

namespace A022323

/-- `A022367(n)-1` -/
def P8586284071528667165.Spec : Prop :=
  ∀ n, P8586284071528667165.a n = A022323 n

end A022323

/-! ## A022323.P18071205892248523481

`ogf((1+7x-7x^2)/(1-2x+x^3))`
-/

namespace A022323.P18071205892248523481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, -7] [1, -2, 0, 1] n

end

end A022323.P18071205892248523481

namespace A022323

/-- `ogf((1+7x-7x^2)/(1-2x+x^3))` -/
def P18071205892248523481.Spec : Prop :=
  ∀ n, P18071205892248523481.a n = A022323 n

end A022323

/-! ## A022323.P1277984784781448105

`2*A022309(n)+1`
-/

namespace A022323.P1277984784781448105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022309 n + 1

end

end A022323.P1277984784781448105

namespace A022323

/-- `2*A022309(n)+1` -/
def P1277984784781448105.Spec : Prop :=
  ∀ n, P1277984784781448105.a n = A022323 n

end A022323

/-! ## A022323.P6154093569207518003

`2*A022095(n)-1`
-/

namespace A022323.P6154093569207518003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022095 n - 1

end

end A022323.P6154093569207518003

namespace A022323

/-- `2*A022095(n)-1` -/
def P6154093569207518003.Spec : Prop :=
  ∀ n, P6154093569207518003.a n = A022323 n

end A022323

/-! ## A022323.P8177319868976739761

`A022322(n)+A000045(n)`
-/

namespace A022323.P8177319868976739761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022322 n + A000045 n

end

end A022323.P8177319868976739761

namespace A022323

/-- `A022322(n)+A000045(n)` -/
def P8177319868976739761.Spec : Prop :=
  ∀ n, P8177319868976739761.a n = A022323 n

end A022323

/-! ## A022323.P5871107973848796454

`A022310(n)+A000285(n)`
-/

namespace A022323.P5871107973848796454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022310 n + A000285 n

end

end A022323.P5871107973848796454

namespace A022323

/-- `A022310(n)+A000285(n)` -/
def P5871107973848796454.Spec : Prop :=
  ∀ n, P5871107973848796454.a n = A022323 n

end A022323

/-! ## A022323.P9252974991495003833

`A022091(n)+A001595(n)`
-/

namespace A022323.P9252974991495003833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022091 n + A001595 n

end

end A022323.P9252974991495003833

namespace A022323

/-- `A022091(n)+A001595(n)` -/
def P9252974991495003833.Spec : Prop :=
  ∀ n, P9252974991495003833.a n = A022323 n

end A022323

/-! ## A022323.P16421227716392298357

`A022097(n)+A001610(n)`
-/

namespace A022323.P16421227716392298357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022097 n + A001610 n

end

end A022323.P16421227716392298357

namespace A022323

/-- `A022097(n)+A001610(n)` -/
def P16421227716392298357.Spec : Prop :=
  ∀ n, P16421227716392298357.a n = A022323 n

end A022323

/-! ## A022323.P8238346387276102248

`A022308(n)+A022096(n)`
-/

namespace A022323.P8238346387276102248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 n + A022096 n

end

end A022323.P8238346387276102248

namespace A022323

/-- `A022308(n)+A022096(n)` -/
def P8238346387276102248.Spec : Prop :=
  ∀ n, P8238346387276102248.a n = A022323 n

end A022323

/-! ## A022323.P8124673038319192871

`A022309(n)+A022095(n)`
-/

namespace A022323.P8124673038319192871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022309 n + A022095 n

end

end A022323.P8124673038319192871

namespace A022323

/-- `A022309(n)+A022095(n)` -/
def P8124673038319192871.Spec : Prop :=
  ∀ n, P8124673038319192871.a n = A022323 n

end A022323

/-! ## A022323.P10856263437289408366

`A022318(n)+A022088(n)`
-/

namespace A022323.P10856263437289408366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022318 n + A022088 n

end

end A022323.P10856263437289408366

namespace A022323

/-- `A022318(n)+A022088(n)` -/
def P10856263437289408366.Spec : Prop :=
  ∀ n, P10856263437289408366.a n = A022323 n

end A022323

/-! ## A022323.P8935887505933578826

`A022319(n)+A022087(n)`
-/

namespace A022323.P8935887505933578826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022319 n + A022087 n

end

end A022323.P8935887505933578826

namespace A022323

/-- `A022319(n)+A022087(n)` -/
def P8935887505933578826.Spec : Prop :=
  ∀ n, P8935887505933578826.a n = A022323 n

end A022323

/-! ## A022323.P5238132925868875870

`A022320(n)+A022086(n)`
-/

namespace A022323.P5238132925868875870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022320 n + A022086 n

end

end A022323.P5238132925868875870

namespace A022323

/-- `A022320(n)+A022086(n)` -/
def P5238132925868875870.Spec : Prop :=
  ∀ n, P5238132925868875870.a n = A022323 n

end A022323

/-! ## A022323.P7231253641762413078

`A152163(n)+A022315(n)`
-/

namespace A022323.P7231253641762413078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022315 n

end

end A022323.P7231253641762413078

namespace A022323

/-- `A152163(n)+A022315(n)` -/
def P7231253641762413078.Spec : Prop :=
  ∀ n, P7231253641762413078.a n = A022323 n

end A022323

/-! ## A022323.P13378015084727103621

`A212804(n)+A022314(n)`
-/

namespace A022323.P13378015084727103621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022314 n

end

end A022323.P13378015084727103621

namespace A022323

/-- `A212804(n)+A022314(n)` -/
def P13378015084727103621.Spec : Prop :=
  ∀ n, P13378015084727103621.a n = A022323 n

end A022323

/-! ## A022323.P15056837379422288736

`A022311(n)+A000032(n+1)`
-/

namespace A022323.P15056837379422288736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022311 n + A000032 (n + 1)

end

end A022323.P15056837379422288736

namespace A022323

/-- `A022311(n)+A000032(n+1)` -/
def P15056837379422288736.Spec : Prop :=
  ∀ n, P15056837379422288736.a n = A022323 n

end A022323

/-! ## A022323.P8953893760002643254

`A022313(n)+A000045(n+1)`
-/

namespace A022323.P8953893760002643254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022313 n + A000045 (n + 1)

end

end A022323.P8953893760002643254

namespace A022323

/-- `A022313(n)+A000045(n+1)` -/
def P8953893760002643254.Spec : Prop :=
  ∀ n, P8953893760002643254.a n = A022323 n

end A022323

/-! ## A022323.P17851781896891286086

`A022311(n)+A000204(n+1)`
-/

namespace A022323.P17851781896891286086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022311 n + A000204 (n + 1)

end

end A022323.P17851781896891286086

namespace A022323

/-- `A022311(n)+A000204(n+1)` -/
def P17851781896891286086.Spec : Prop :=
  ∀ n, P17851781896891286086.a n = A022323 n

end A022323

/-! ## A022323.P3331745680339465936

`A022089(n)+A001595(n+1)`
-/

namespace A022323.P3331745680339465936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022089 n + A001595 (n + 1)

end

end A022323.P3331745680339465936

namespace A022323

/-- `A022089(n)+A001595(n+1)` -/
def P3331745680339465936.Spec : Prop :=
  ∀ n, P3331745680339465936.a n = A022323 n

end A022323

/-!
# A022324: a(n) = a(n-1) + a(n-2) + 1, with a(0) = 1 and a(1) = 10.

The programs for A022324, the canonical program `A022324.P639653739763280728` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022324 has offset 0).

The definition of A022324 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022324.P639653739763280728`, by `A022324.P639653739763280728.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022324.P639653739763280728

`a(n-1)+a(n-2)+1` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022324

/-- `a(n-1)+a(n-2)+1` -/
def P639653739763280728.Spec : Prop :=
  ∀ n, (P639653739763280728.a n : ℤ) = A022324 n

theorem P639653739763280728.correct : P639653739763280728.Spec := by
  intro n
  simp only [A022324]

end A022324

/-! ## A022324.P14854815153339398097

`A022115(n)-1`
-/

namespace A022324.P14854815153339398097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022115 n - 1

end

end A022324.P14854815153339398097

namespace A022324

/-- `A022115(n)-1` -/
def P14854815153339398097.Spec : Prop :=
  ∀ n, P14854815153339398097.a n = A022324 n

end A022324

/-! ## A022324.P1087027366605870622

`ogf((1+8x-8x^2)/(1-2x+x^3))`
-/

namespace A022324.P1087027366605870622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, -8] [1, -2, 0, 1] n

end

end A022324.P1087027366605870622

namespace A022324

/-- `ogf((1+8x-8x^2)/(1-2x+x^3))` -/
def P1087027366605870622.Spec : Prop :=
  ∀ n, P1087027366605870622.a n = A022324 n

end A022324

/-! ## A022324.P1891704336763642922

`A022323(n)+A000045(n)`
-/

namespace A022324.P1891704336763642922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022323 n + A000045 n

end

end A022324.P1891704336763642922

namespace A022324

/-- `A022323(n)+A000045(n)` -/
def P1891704336763642922.Spec : Prop :=
  ∀ n, P1891704336763642922.a n = A022324 n

end A022324

/-! ## A022324.P3856407368175466184

`A022311(n)+A000285(n)`
-/

namespace A022324.P3856407368175466184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022311 n + A000285 n

end

end A022324.P3856407368175466184

namespace A022324

/-- `A022311(n)+A000285(n)` -/
def P3856407368175466184.Spec : Prop :=
  ∀ n, P3856407368175466184.a n = A022324 n

end A022324

/-! ## A022324.P2387266539148012371

`A022092(n)+A001595(n)`
-/

namespace A022324.P2387266539148012371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022092 n + A001595 n

end

end A022324.P2387266539148012371

namespace A022324

/-- `A022092(n)+A001595(n)` -/
def P2387266539148012371.Spec : Prop :=
  ∀ n, P2387266539148012371.a n = A022324 n

end A022324

/-! ## A022324.P9557805061230565148

`A022098(n)+A001610(n)`
-/

namespace A022324.P9557805061230565148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022098 n + A001610 n

end

end A022324.P9557805061230565148

namespace A022324

/-- `A022098(n)+A001610(n)` -/
def P9557805061230565148.Spec : Prop :=
  ∀ n, P9557805061230565148.a n = A022324 n

end A022324

/-! ## A022324.P7966649723425022495

`A022308(n)+A022097(n)`
-/

namespace A022324.P7966649723425022495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 n + A022097 n

end

end A022324.P7966649723425022495

namespace A022324

/-- `A022308(n)+A022097(n)` -/
def P7966649723425022495.Spec : Prop :=
  ∀ n, P7966649723425022495.a n = A022324 n

end A022324

/-! ## A022324.P12267461530526656794

`A022309(n)+A022096(n)`
-/

namespace A022324.P12267461530526656794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022309 n + A022096 n

end

end A022324.P12267461530526656794

namespace A022324

/-- `A022309(n)+A022096(n)` -/
def P12267461530526656794.Spec : Prop :=
  ∀ n, P12267461530526656794.a n = A022324 n

end A022324

/-! ## A022324.P16761743256633180631

`A022310(n)+A022095(n)`
-/

namespace A022324.P16761743256633180631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022310 n + A022095 n

end

end A022324.P16761743256633180631

namespace A022324

/-- `A022310(n)+A022095(n)` -/
def P16761743256633180631.Spec : Prop :=
  ∀ n, P16761743256633180631.a n = A022324 n

end A022324

/-! ## A022324.P9344655088188670660

`A022318(n)+A022089(n)`
-/

namespace A022324.P9344655088188670660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022318 n + A022089 n

end

end A022324.P9344655088188670660

namespace A022324

/-- `A022318(n)+A022089(n)` -/
def P9344655088188670660.Spec : Prop :=
  ∀ n, P9344655088188670660.a n = A022324 n

end A022324

/-! ## A022324.P5918418166300488391

`A022319(n)+A022088(n)`
-/

namespace A022324.P5918418166300488391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022319 n + A022088 n

end

end A022324.P5918418166300488391

namespace A022324

/-- `A022319(n)+A022088(n)` -/
def P5918418166300488391.Spec : Prop :=
  ∀ n, P5918418166300488391.a n = A022324 n

end A022324

/-! ## A022324.P8170819636348681921

`A022320(n)+A022087(n)`
-/

namespace A022324.P8170819636348681921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022320 n + A022087 n

end

end A022324.P8170819636348681921

namespace A022324

/-- `A022320(n)+A022087(n)` -/
def P8170819636348681921.Spec : Prop :=
  ∀ n, P8170819636348681921.a n = A022324 n

end A022324

/-! ## A022324.P6688159621628162110

`A022321(n)+A022086(n)`
-/

namespace A022324.P6688159621628162110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022321 n + A022086 n

end

end A022324.P6688159621628162110

namespace A022324

/-- `A022321(n)+A022086(n)` -/
def P6688159621628162110.Spec : Prop :=
  ∀ n, P6688159621628162110.a n = A022324 n

end A022324

/-! ## A022324.P6816355060858736198

`A152163(n)+A022316(n)`
-/

namespace A022324.P6816355060858736198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022316 n

end

end A022324.P6816355060858736198

namespace A022324

/-- `A152163(n)+A022316(n)` -/
def P6816355060858736198.Spec : Prop :=
  ∀ n, P6816355060858736198.a n = A022324 n

end A022324

/-! ## A022324.P4867836855650775867

`A212804(n)+A022315(n)`
-/

namespace A022324.P4867836855650775867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022315 n

end

end A022324.P4867836855650775867

namespace A022324

/-- `A212804(n)+A022315(n)` -/
def P4867836855650775867.Spec : Prop :=
  ∀ n, P4867836855650775867.a n = A022324 n

end A022324

/-! ## A022324.P4827930616387811203

`A153382(n)+A098600(n)`
-/

namespace A022324.P4827930616387811203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153382 n + A098600 n

end

end A022324.P4827930616387811203

namespace A022324

/-- `A153382(n)+A098600(n)` -/
def P4827930616387811203.Spec : Prop :=
  ∀ n, P4827930616387811203.a n = A022324 n

end A022324

/-! ## A022324.P3490043181609228376

`A372242(n)+A001350(n)`
-/

namespace A022324.P3490043181609228376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372242 n + A001350 n

end

end A022324.P3490043181609228376

namespace A022324

/-- `A372242(n)+A001350(n)` -/
def P3490043181609228376.Spec : Prop :=
  ∀ n, P3490043181609228376.a n = A022324 n

end A022324

/-! ## A022324.P11449609060295477760

`A022325(n)-A000045(n)`
-/

namespace A022324.P11449609060295477760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022325 n - A000045 n

end

end A022324.P11449609060295477760

namespace A022324

/-- `A022325(n)-A000045(n)` -/
def P11449609060295477760.Spec : Prop :=
  ∀ n, P11449609060295477760.a n = A022324 n

end A022324

/-! ## A022324.P8101981805441131003

`A022410(n)-A000032(n)`
-/

namespace A022324.P8101981805441131003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022410 n - A000032 n

end

end A022324.P8101981805441131003

namespace A022324

/-- `A022410(n)-A000032(n)` -/
def P8101981805441131003.Spec : Prop :=
  ∀ n, P8101981805441131003.a n = A022324 n

end A022324

/-!
# A022325: a(n) = a(n-1) + a(n-2) + 1, with a(0) = 1 and a(1) = 11.

The programs for A022325, the canonical program `A022325.P10321987485812121805` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022325 has offset 0).

The definition of A022325 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022325.P10321987485812121805`, by `A022325.P10321987485812121805.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022325.P10321987485812121805

`a(n-1)+a(n-2)+1` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022325

/-- `a(n-1)+a(n-2)+1` -/
def P10321987485812121805.Spec : Prop :=
  ∀ n, (P10321987485812121805.a n : ℤ) = A022325 n

theorem P10321987485812121805.correct : P10321987485812121805.Spec := by
  intro n
  simp only [A022325]

end A022325

/-! ## A022325.P16248866012770713563

`A022368(n)-1`
-/

namespace A022325.P16248866012770713563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022368 n - 1

end

end A022325.P16248866012770713563

namespace A022325

/-- `A022368(n)-1` -/
def P16248866012770713563.Spec : Prop :=
  ∀ n, P16248866012770713563.a n = A022325 n

end A022325

/-! ## A022325.P17134094818804245527

`ogf((1+9x-9x^2)/(1-2x+x^3))`
-/

namespace A022325.P17134094818804245527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9, -9] [1, -2, 0, 1] n

end

end A022325.P17134094818804245527

namespace A022325

/-- `ogf((1+9x-9x^2)/(1-2x+x^3))` -/
def P17134094818804245527.Spec : Prop :=
  ∀ n, P17134094818804245527.a n = A022325 n

end A022325

/-! ## A022325.P8823438702190776635

`2*A022310(n)+1`
-/

namespace A022325.P8823438702190776635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022310 n + 1

end

end A022325.P8823438702190776635

namespace A022325

/-- `2*A022310(n)+1` -/
def P8823438702190776635.Spec : Prop :=
  ∀ n, P8823438702190776635.a n = A022325 n

end A022325

/-! ## A022325.P3686266523037017791

`2*A022096(n)-1`
-/

namespace A022325.P3686266523037017791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022096 n - 1

end

end A022325.P3686266523037017791

namespace A022325

/-- `2*A022096(n)-1` -/
def P3686266523037017791.Spec : Prop :=
  ∀ n, P3686266523037017791.a n = A022325 n

end A022325

/-! ## A022325.P13026330671132116783

`A022324(n)+A000045(n)`
-/

namespace A022325.P13026330671132116783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022324 n + A000045 n

end

end A022325.P13026330671132116783

namespace A022325

/-- `A022324(n)+A000045(n)` -/
def P13026330671132116783.Spec : Prop :=
  ∀ n, P13026330671132116783.a n = A022325 n

end A022325

/-! ## A022325.P4398170816154162424

`A022312(n)+A000285(n)`
-/

namespace A022325.P4398170816154162424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022312 n + A000285 n

end

end A022325.P4398170816154162424

namespace A022325

/-- `A022312(n)+A000285(n)` -/
def P4398170816154162424.Spec : Prop :=
  ∀ n, P4398170816154162424.a n = A022325 n

end A022325

/-! ## A022325.P1113815481163198361

`A022093(n)+A001595(n)`
-/

namespace A022325.P1113815481163198361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 n + A001595 n

end

end A022325.P1113815481163198361

namespace A022325

/-- `A022093(n)+A001595(n)` -/
def P1113815481163198361.Spec : Prop :=
  ∀ n, P1113815481163198361.a n = A022325 n

end A022325

/-! ## A022325.P5776595752271206522

`A022099(n)+A001610(n)`
-/

namespace A022325.P5776595752271206522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022099 n + A001610 n

end

end A022325.P5776595752271206522

namespace A022325

/-- `A022099(n)+A001610(n)` -/
def P5776595752271206522.Spec : Prop :=
  ∀ n, P5776595752271206522.a n = A022325 n

end A022325

/-! ## A022325.P12749817248959528846

`A022308(n)+A022098(n)`
-/

namespace A022325.P12749817248959528846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 n + A022098 n

end

end A022325.P12749817248959528846

namespace A022325

/-- `A022308(n)+A022098(n)` -/
def P12749817248959528846.Spec : Prop :=
  ∀ n, P12749817248959528846.a n = A022325 n

end A022325

/-! ## A022325.P15143649892461372762

`A022309(n)+A022097(n)`
-/

namespace A022325.P15143649892461372762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022309 n + A022097 n

end

end A022325.P15143649892461372762

namespace A022325

/-- `A022309(n)+A022097(n)` -/
def P15143649892461372762.Spec : Prop :=
  ∀ n, P15143649892461372762.a n = A022325 n

end A022325

/-! ## A022325.P9033434044508113033

`A022310(n)+A022096(n)`
-/

namespace A022325.P9033434044508113033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022310 n + A022096 n

end

end A022325.P9033434044508113033

namespace A022325

/-- `A022310(n)+A022096(n)` -/
def P9033434044508113033.Spec : Prop :=
  ∀ n, P9033434044508113033.a n = A022325 n

end A022325

/-! ## A022325.P11071998912490832672

`A022311(n)+A022095(n)`
-/

namespace A022325.P11071998912490832672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022311 n + A022095 n

end

end A022325.P11071998912490832672

namespace A022325

/-- `A022311(n)+A022095(n)` -/
def P11071998912490832672.Spec : Prop :=
  ∀ n, P11071998912490832672.a n = A022325 n

end A022325

/-! ## A022325.P9429740755904762795

`A022318(n)+A022090(n)`
-/

namespace A022325.P9429740755904762795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022318 n + A022090 n

end

end A022325.P9429740755904762795

namespace A022325

/-- `A022318(n)+A022090(n)` -/
def P9429740755904762795.Spec : Prop :=
  ∀ n, P9429740755904762795.a n = A022325 n

end A022325

/-! ## A022325.P448465842137744975

`A022319(n)+A022089(n)`
-/

namespace A022325.P448465842137744975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022319 n + A022089 n

end

end A022325.P448465842137744975

namespace A022325

/-- `A022319(n)+A022089(n)` -/
def P448465842137744975.Spec : Prop :=
  ∀ n, P448465842137744975.a n = A022325 n

end A022325

/-! ## A022325.P16911476744909581844

`A022320(n)+A022088(n)`
-/

namespace A022325.P16911476744909581844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022320 n + A022088 n

end

end A022325.P16911476744909581844

namespace A022325

/-- `A022320(n)+A022088(n)` -/
def P16911476744909581844.Spec : Prop :=
  ∀ n, P16911476744909581844.a n = A022325 n

end A022325

/-! ## A022325.P16659685110517109347

`A022321(n)+A022087(n)`
-/

namespace A022325.P16659685110517109347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022321 n + A022087 n

end

end A022325.P16659685110517109347

namespace A022325

/-- `A022321(n)+A022087(n)` -/
def P16659685110517109347.Spec : Prop :=
  ∀ n, P16659685110517109347.a n = A022325 n

end A022325

/-! ## A022325.P13919178914488209084

`A022322(n)+A022086(n)`
-/

namespace A022325.P13919178914488209084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022322 n + A022086 n

end

end A022325.P13919178914488209084

namespace A022325

/-- `A022322(n)+A022086(n)` -/
def P13919178914488209084.Spec : Prop :=
  ∀ n, P13919178914488209084.a n = A022325 n

end A022325

/-! ## A022325.P5156670746474778675

`A152163(n)+A022317(n)`
-/

namespace A022325.P5156670746474778675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022317 n

end

end A022325.P5156670746474778675

namespace A022325

/-- `A152163(n)+A022317(n)` -/
def P5156670746474778675.Spec : Prop :=
  ∀ n, P5156670746474778675.a n = A022325 n

end A022325

/-! ## A022325.P2967097812325706605

`A212804(n)+A022316(n)`
-/

namespace A022325.P2967097812325706605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022316 n

end

end A022325.P2967097812325706605

namespace A022325

/-- `A212804(n)+A022316(n)` -/
def P2967097812325706605.Spec : Prop :=
  ∀ n, P2967097812325706605.a n = A022325 n

end A022325

/-!
# A022326: a(n) = a(n-1) + a(n-2) + 1, with a(0) = 1 and a(1) = 12.

The programs for A022326, the canonical program `A022326.P8690091732479165083` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022326 has offset 0).

The definition of A022326 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+1` (program `A022326.P8690091732479165083`, by `A022326.P8690091732479165083.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A022326.P8690091732479165083

`a(n-1)+a(n-2)+1` with `a(0)=1, a(1)=12`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022326

/-- `a(n-1)+a(n-2)+1` -/
def P8690091732479165083.Spec : Prop :=
  ∀ n, (P8690091732479165083.a n : ℤ) = A022326 n

theorem P8690091732479165083.correct : P8690091732479165083.Spec := by
  intro n
  simp only [A022326]

end A022326

/-! ## A022326.P7230785368791879686

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=12, a(2)=14`
-/

namespace A022326.P7230785368791879686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12, 14] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A022326.P7230785368791879686

namespace A022326

/-- `2*a(n-1)-a(n-3)` -/
def P7230785368791879686.Spec : Prop :=
  ∀ n, P7230785368791879686.a n = A022326 n

end A022326

/-! ## A022326.P12420834007812826292

`A022116(n)-1`
-/

namespace A022326.P12420834007812826292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022116 n - 1

end

end A022326.P12420834007812826292

namespace A022326

/-- `A022116(n)-1` -/
def P12420834007812826292.Spec : Prop :=
  ∀ n, P12420834007812826292.a n = A022326 n

end A022326

/-! ## A022326.P3081517929841327169

`ogf((1+10x-10x^2)/(1-2x+x^3))`
-/

namespace A022326.P3081517929841327169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, -10] [1, -2, 0, 1] n

end

end A022326.P3081517929841327169

namespace A022326

/-- `ogf((1+10x-10x^2)/(1-2x+x^3))` -/
def P3081517929841327169.Spec : Prop :=
  ∀ n, P3081517929841327169.a n = A022326 n

end A022326

/-! ## A022326.P2586566164464744238

`A022325(n)+A000045(n)`
-/

namespace A022326.P2586566164464744238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022325 n + A000045 n

end

end A022326.P2586566164464744238

namespace A022326

/-- `A022325(n)+A000045(n)` -/
def P2586566164464744238.Spec : Prop :=
  ∀ n, P2586566164464744238.a n = A022326 n

end A022326

/-! ## A022326.P10486198268070678786

`A022313(n)+A000285(n)`
-/

namespace A022326.P10486198268070678786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022313 n + A000285 n

end

end A022326.P10486198268070678786

namespace A022326

/-- `A022313(n)+A000285(n)` -/
def P10486198268070678786.Spec : Prop :=
  ∀ n, P10486198268070678786.a n = A022326 n

end A022326

/-! ## A022326.P5315830027193903986

`A022100(n)+A001610(n)`
-/

namespace A022326.P5315830027193903986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022100 n + A001610 n

end

end A022326.P5315830027193903986

namespace A022326

/-- `A022100(n)+A001610(n)` -/
def P5315830027193903986.Spec : Prop :=
  ∀ n, P5315830027193903986.a n = A022326 n

end A022326

/-! ## A022326.P9546839769918271468

`A022345(n)+A001595(n)`
-/

namespace A022326.P9546839769918271468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A001595 n

end

end A022326.P9546839769918271468

namespace A022326

/-- `A022345(n)+A001595(n)` -/
def P9546839769918271468.Spec : Prop :=
  ∀ n, P9546839769918271468.a n = A022326 n

end A022326

/-! ## A022326.P4071998487134841059

`A022308(n)+A022099(n)`
-/

namespace A022326.P4071998487134841059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022308 n + A022099 n

end

end A022326.P4071998487134841059

namespace A022326

/-- `A022308(n)+A022099(n)` -/
def P4071998487134841059.Spec : Prop :=
  ∀ n, P4071998487134841059.a n = A022326 n

end A022326

/-! ## A022326.P2727703026976005165

`A022309(n)+A022098(n)`
-/

namespace A022326.P2727703026976005165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022309 n + A022098 n

end

end A022326.P2727703026976005165

namespace A022326

/-- `A022309(n)+A022098(n)` -/
def P2727703026976005165.Spec : Prop :=
  ∀ n, P2727703026976005165.a n = A022326 n

end A022326

/-! ## A022326.P9080670559848263395

`A022310(n)+A022097(n)`
-/

namespace A022326.P9080670559848263395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022310 n + A022097 n

end

end A022326.P9080670559848263395

namespace A022326

/-- `A022310(n)+A022097(n)` -/
def P9080670559848263395.Spec : Prop :=
  ∀ n, P9080670559848263395.a n = A022326 n

end A022326

/-! ## A022326.P762230818844728004

`A022311(n)+A022096(n)`
-/

namespace A022326.P762230818844728004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022311 n + A022096 n

end

end A022326.P762230818844728004

namespace A022326

/-- `A022311(n)+A022096(n)` -/
def P762230818844728004.Spec : Prop :=
  ∀ n, P762230818844728004.a n = A022326 n

end A022326

/-! ## A022326.P4823957391278161301

`A022312(n)+A022095(n)`
-/

namespace A022326.P4823957391278161301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022312 n + A022095 n

end

end A022326.P4823957391278161301

namespace A022326

/-- `A022312(n)+A022095(n)` -/
def P4823957391278161301.Spec : Prop :=
  ∀ n, P4823957391278161301.a n = A022326 n

end A022326

/-! ## A022326.P16166345415185182838

`A022318(n)+A022091(n)`
-/

namespace A022326.P16166345415185182838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022318 n + A022091 n

end

end A022326.P16166345415185182838

namespace A022326

/-- `A022318(n)+A022091(n)` -/
def P16166345415185182838.Spec : Prop :=
  ∀ n, P16166345415185182838.a n = A022326 n

end A022326

/-! ## A022326.P3398209186507736446

`A022319(n)+A022090(n)`
-/

namespace A022326.P3398209186507736446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022319 n + A022090 n

end

end A022326.P3398209186507736446

namespace A022326

/-- `A022319(n)+A022090(n)` -/
def P3398209186507736446.Spec : Prop :=
  ∀ n, P3398209186507736446.a n = A022326 n

end A022326

/-! ## A022326.P9964895646752746029

`A022320(n)+A022089(n)`
-/

namespace A022326.P9964895646752746029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022320 n + A022089 n

end

end A022326.P9964895646752746029

namespace A022326

/-- `A022320(n)+A022089(n)` -/
def P9964895646752746029.Spec : Prop :=
  ∀ n, P9964895646752746029.a n = A022326 n

end A022326

/-! ## A022326.P4135576515071454000

`A022321(n)+A022088(n)`
-/

namespace A022326.P4135576515071454000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022321 n + A022088 n

end

end A022326.P4135576515071454000

namespace A022326

/-- `A022321(n)+A022088(n)` -/
def P4135576515071454000.Spec : Prop :=
  ∀ n, P4135576515071454000.a n = A022326 n

end A022326

/-! ## A022326.P10596516629281130725

`A022322(n)+A022087(n)`
-/

namespace A022326.P10596516629281130725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022322 n + A022087 n

end

end A022326.P10596516629281130725

namespace A022326

/-- `A022322(n)+A022087(n)` -/
def P10596516629281130725.Spec : Prop :=
  ∀ n, P10596516629281130725.a n = A022326 n

end A022326

/-! ## A022326.P3492062091636399992

`A022323(n)+A022086(n)`
-/

namespace A022326.P3492062091636399992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022323 n + A022086 n

end

end A022326.P3492062091636399992

namespace A022326

/-- `A022323(n)+A022086(n)` -/
def P3492062091636399992.Spec : Prop :=
  ∀ n, P3492062091636399992.a n = A022326 n

end A022326

/-! ## A022326.P2061821988128036112

`A212804(n)+A022317(n)`
-/

namespace A022326.P2061821988128036112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022317 n

end

end A022326.P2061821988128036112

namespace A022326

/-- `A212804(n)+A022317(n)` -/
def P2061821988128036112.Spec : Prop :=
  ∀ n, P2061821988128036112.a n = A022326 n

end A022326

/-!
# A022327: Least k such that the first k terms of the Kolakoski sequence (A000002) contain n more 1's than 2's.

The programs for A022327, there is no canonical definition to state claims against.
-/

/-! ## A022327.P1057572472309413582

`A025517(n+1)-4*A057428(n)`
-/

namespace A022327.P1057572472309413582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025517 (n + 1) - 4 * A057428 n

end

end A022327.P1057572472309413582

/-! ## A022327.P9279282463330188623

`A025517(n+1)+4%A016789(n)`
-/

namespace A022327.P9279282463330188623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025517 (n + 1) + Int.tmod 4 (A016789 n)

end

end A022327.P9279282463330188623

/-! ## A022327.P8414253232090027241

`A025517(n+1)+(2-A000038(n))²`
-/

namespace A022327.P8414253232090027241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025517 (n + 1) + (2 - A000038 n) ^ 2

end

end A022327.P8414253232090027241

/-! ## A022327.P11876243695247165140

`A025517(n+1)+(2%A000466(n))²`
-/

namespace A022327.P11876243695247165140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025517 (n + 1) + Int.tmod 2 (A000466 n) ^ 2

end

end A022327.P11876243695247165140

/-! ## A022327.P1339936700796428423

`A025517(n+1)+4*A000040(n+1)%2`
-/

namespace A022327.P1339936700796428423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025517 (n + 1) + 4 * Int.tmod (A000040 (n + 1)) 2

end

end A022327.P1339936700796428423

/-! ## A022327.P15400244435203217983

`A025517(n+1)+A002262(A167614(n+2)+1)`
-/

namespace A022327.P15400244435203217983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025517 (n + 1) + A002262 (A167614 (n + 2) + 1).toNat

end

end A022327.P15400244435203217983

/-! ## A022327.P11590883043998080122

`A025517(n+1)+A004531(A140513(n))`
-/

namespace A022327.P11590883043998080122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025517 (n + 1) + A004531 (A140513 n).toNat

end

end A022327.P11590883043998080122

/-!
# A022328: Exponent of 2 (value of i) in n-th number of form 2^i*3^j, i >= 0, j >= 0 (see A003586).

The programs for A022328, there is no canonical definition to state claims against.
-/

/-! ## A022328.P7952970735669702317

`val(∑[A061987(n)], 2)`
-/

namespace A022328.P7952970735669702317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A022328.P7952970735669702317

/-! ## A022328.P8633872022849383469

`val(Δ[A259823(n)], 2)`
-/

namespace A022328.P8633872022849383469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A022328.P8633872022849383469

/-! ## A022328.P16306027559618178231

`A158456(n+1)-1`
-/

namespace A022328.P16306027559618178231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158456 (n + 1) - 1

end

end A022328.P16306027559618178231

/-! ## A022328.P10513217757441772184

`val(A003586(n+1), 2)`
-/

namespace A022328.P10513217757441772184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003586 (n + 1)).toNat 2

end

end A022328.P10513217757441772184

/-! ## A022328.P12081415721253064193

`val(A065119(n+1), 2)`
-/

namespace A022328.P12081415721253064193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A065119 (n + 1)).toNat 2

end

end A022328.P12081415721253064193

/-! ## A022328.P4549487893060496050

`val(A033845(n+1), 2)-1`
-/

namespace A022328.P4549487893060496050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A033845 (n + 1)).toNat 2 : ℤ) - 1

end

end A022328.P4549487893060496050

/-! ## A022328.P5478169698355050518

`val(A055600(n+1)-1, 2)`
-/

namespace A022328.P5478169698355050518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A055600 (n + 1) - 1).toNat 2

end

end A022328.P5478169698355050518

/-! ## A022328.P10132597886040864929

`A069352(n+1)-A022329(n+1)`
-/

namespace A022328.P10132597886040864929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069352 (n + 1) - A022329 (n + 1)

end

end A022328.P10132597886040864929

/-! ## A022328.P16494867141878835897

`A227861(n+1)-(A134583(n+1)+1)`
-/

namespace A022328.P16494867141878835897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227861 (n + 1) - (A134583 (n + 1) + 1)

end

end A022328.P16494867141878835897

/-! ## A022328.P2471658897659047329

`A086416(n+1)/A134583(n+1)-1`
-/

namespace A022328.P2471658897659047329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086416 (n + 1) : ℚ) / (A134583 (n + 1) : ℚ) - 1

end

end A022328.P2471658897659047329

/-! ## A022328.P727370477779580318

`val(A007694(n+2), 2)-1`
-/

namespace A022328.P727370477779580318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A007694 (n + 2)).toNat 2 : ℤ) - 1

end

end A022328.P727370477779580318

/-! ## A022328.P5557498094195717227

`val(A187778(n+2), 2)-1`
-/

namespace A022328.P5557498094195717227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A187778 (n + 2)).toNat 2 : ℤ) - 1

end

end A022328.P5557498094195717227

/-! ## A022328.P2061590844849080475

`val(A025620(n+1), 4)`
-/

namespace A022328.P2061590844849080475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025620 (n + 1)).toNat 4

end

end A022328.P2061590844849080475

/-! ## A022328.P192102761118013521

`A022329(A372744(n+1))`
-/

namespace A022328.P192102761118013521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022329 (A372744 (n + 1)).toNat

end

end A022328.P192102761118013521

/-! ## A022328.P7584752190187326569

`val(A000423(n+3)/2, 2)`
-/

namespace A022328.P7584752190187326569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((A000423 (n + 3) : ℚ) / 2)).toNat 2

end

end A022328.P7584752190187326569

/-! ## A022328.P17998690170823477398

`A163383(and(1, A163383(n+1)))+A158456(n+1)`
-/

namespace A022328.P17998690170823477398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163383 (Int.land 1 (A163383 (n + 1))).toNat + A158456 (n + 1)

end

end A022328.P17998690170823477398

/-! ## A022328.P7339640773023922754

`A001222(A003586(n+1))-A022329(n+1)`
-/

namespace A022328.P7339640773023922754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A003586 (n + 1)).toNat - A022329 (n + 1)

end

end A022328.P7339640773023922754

/-! ## A022328.P3739150720484945890

`A000005(A003586(n+1))/A134583(n+1)-1`
-/

namespace A022328.P3739150720484945890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A003586 (n + 1)).toNat : ℚ) / (A134583 (n + 1) : ℚ) - 1

end

end A022328.P3739150720484945890

/-!
# A022329: Exponent of 3 (value of j) in n-th number of form 2^i*3^j (see A003586).

The programs for A022329, there is no canonical definition to state claims against.
-/

/-! ## A022329.P14791930233482118525

`A069352(n+1)-A022328(n+1)`
-/

namespace A022329.P14791930233482118525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069352 (n + 1) - A022328 (n + 1)

end

end A022329.P14791930233482118525

/-! ## A022329.P14187676033484054442

`val(∑[A061987(n)], 3)`
-/

namespace A022329.P14187676033484054442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061987 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 3

end

end A022329.P14187676033484054442

/-! ## A022329.P7695178751745301981

`val(Δ[A259823(n)], 3)`
-/

namespace A022329.P7695178751745301981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259823 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 3

end

end A022329.P7695178751745301981

/-! ## A022329.P12384900961815228217

`A134583(n+1)-1`
-/

namespace A022329.P12384900961815228217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134583 (n + 1) - 1

end

end A022329.P12384900961815228217

/-! ## A022329.P17828896164262268259

`val(A003586(n+1), 3)`
-/

namespace A022329.P17828896164262268259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003586 (n + 1)).toNat 3

end

end A022329.P17828896164262268259

/-! ## A022329.P601531414381096948

`val(A033845(n+1), 3)-1`
-/

namespace A022329.P601531414381096948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A033845 (n + 1)).toNat 3 : ℤ) - 1

end

end A022329.P601531414381096948

/-! ## A022329.P4955177465475066183

`A069352(n+1)+1-A158456(n+1)`
-/

namespace A022329.P4955177465475066183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069352 (n + 1) + (1 - A158456 (n + 1))

end

end A022329.P4955177465475066183

/-! ## A022329.P990624700658540982

`A227861(n+1)-(A158456(n+1)+1)`
-/

namespace A022329.P990624700658540982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227861 (n + 1) - (A158456 (n + 1) + 1)

end

end A022329.P990624700658540982

/-! ## A022329.P7282754548057712179

`A086419(n+1)-2*A069352(n+1)`
-/

namespace A022329.P7282754548057712179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086419 (n + 1) - 2 * A069352 (n + 1)

end

end A022329.P7282754548057712179

/-! ## A022329.P9238681085390787574

`A086416(n+1)/A158456(n+1)-1`
-/

namespace A022329.P9238681085390787574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086416 (n + 1) : ℚ) / (A158456 (n + 1) : ℚ) - 1

end

end A022329.P9238681085390787574

/-! ## A022329.P14196876480061261729

`val(A007694(n+2), 3)`
-/

namespace A022329.P14196876480061261729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007694 (n + 2)).toNat 3

end

end A022329.P14196876480061261729

/-! ## A022329.P8152908023899351043

`val(A025620(n+1), 9)`
-/

namespace A022329.P8152908023899351043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A025620 (n + 1)).toNat 9

end

end A022329.P8152908023899351043

/-! ## A022329.P18262750991716095365

`val(A063755(n+2), 9)`
-/

namespace A022329.P18262750991716095365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A063755 (n + 2)).toNat 9

end

end A022329.P18262750991716095365

/-! ## A022329.P18178631043057614071

`val(A131096(n+1), 5)`
-/

namespace A022329.P18178631043057614071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A131096 (n + 1)).toNat 5

end

end A022329.P18178631043057614071

/-! ## A022329.P6022170093333799911

`A022328(A372744(n+1))`
-/

namespace A022329.P6022170093333799911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022328 (A372744 (n + 1)).toNat

end

end A022329.P6022170093333799911

/-! ## A022329.P12722596794514576250

`A200748(n)%A134583(n+1)`
-/

namespace A022329.P12722596794514576250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A134583 (n + 1))

end

end A022329.P12722596794514576250

/-! ## A022329.P13073950992733553301

`A163383(and(1, A163383(n+1)))+A134583(n+1)`
-/

namespace A022329.P13073950992733553301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163383 (Int.land 1 (A163383 (n + 1))).toNat + A134583 (n + 1)

end

end A022329.P13073950992733553301

/-! ## A022329.P18071974060679767472

`A198277(n)%A134583(n+1)`
-/

namespace A022329.P18071974060679767472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A134583 (n + 1))

end

end A022329.P18071974060679767472

/-! ## A022329.P57778101900652339

`A001222(A003586(n+1))-A022328(n+1)`
-/

namespace A022329.P57778101900652339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A003586 (n + 1)).toNat - A022328 (n + 1)

end

end A022329.P57778101900652339

/-!
# A022330: Index of 3^n within sequence of numbers of form 2^i*3^j (A003586).

The programs for A022330, the canonical program `A022330.P2680287908115974667` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022330 has offset 0).

The definition of A022330 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071521, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A022330.P2680287908115974667

`A071521(A000244(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022330

/-- `A071521(A000244(n))` -/
def P2680287908115974667.Spec : Prop :=
  ∀ n, P2680287908115974667.a n = A022330 n

theorem P2680287908115974667.correct : P2680287908115974667.Spec := by
  intro n
  simp only [A022330]

end A022330

/-! ## A022330.P9141823178915399508

`∑[floor(n*log2(3))+1]`
-/

namespace A022330.P9141823178915399508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (3 : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022330.P9141823178915399508

namespace A022330

/-- `∑[floor(n*log2(3))+1]` -/
def P9141823178915399508.Spec : Prop :=
  ∀ n, P9141823178915399508.a n = A022330 n

end A022330

/-! ## A022330.P7437837722875113006

`a(n-1)+ceil(n*log2(3))` with `a(0)=1`
-/

namespace A022330.P7437837722875113006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ⌈(n : ℝ) * Real.logb 2 (3 : ℝ)⌉

end

end A022330.P7437837722875113006

namespace A022330

/-- `a(n-1)+ceil(n*log2(3))` -/
def P7437837722875113006.Spec : Prop :=
  ∀ n, P7437837722875113006.a n = A022330 n

end A022330

/-! ## A022330.P16455825997508877847

`∑[A204399(n)]+1`
-/

namespace A022330.P16455825997508877847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022330.P16455825997508877847

namespace A022330

/-- `∑[A204399(n)]+1` -/
def P16455825997508877847.Spec : Prop :=
  ∀ n, P16455825997508877847.a n = A022330 n

end A022330

/-! ## A022330.P8783205757771315375

`A025712(n)-∑[n]`
-/

namespace A022330.P8783205757771315375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025712 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022330.P8783205757771315375

namespace A022330

/-- `A025712(n)-∑[n]` -/
def P8783205757771315375.Spec : Prop :=
  ∀ n, P8783205757771315375.a n = A022330 n

end A022330

/-! ## A022330.P6363154589463941702

`and(∑[A020914(n)], -1)`
-/

namespace A022330.P6363154589463941702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A022330.P6363154589463941702

namespace A022330

/-- `and(∑[A020914(n)], -1)` -/
def P6363154589463941702.Spec : Prop :=
  ∀ n, P6363154589463941702.a n = A022330 n

end A022330

/-! ## A022330.P2853917587039923184

`∑[comp[A054414(n)]]+1`
-/

namespace A022330.P2853917587039923184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054414 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022330.P2853917587039923184

namespace A022330

/-- `∑[comp[A054414(n)]]+1` -/
def P2853917587039923184.Spec : Prop :=
  ∀ n, (P2853917587039923184.a n : ℤ) = A022330 n

end A022330

/-! ## A022330.P11241108367510395762

`∑[A056576(n)]+1+n`
-/

namespace A022330.P11241108367510395762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A022330.P11241108367510395762

namespace A022330

/-- `∑[A056576(n)]+1+n` -/
def P11241108367510395762.Spec : Prop :=
  ∀ n, P11241108367510395762.a n = A022330 n

end A022330

/-! ## A022330.P9674943376233638291

`∑[A098294(n)+n]+1`
-/

namespace A022330.P9674943376233638291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098294 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022330.P9674943376233638291

namespace A022330

/-- `∑[A098294(n)+n]+1` -/
def P9674943376233638291.Spec : Prop :=
  ∀ n, P9674943376233638291.a n = A022330 n

end A022330

/-! ## A022330.P2701123460648418327

`A374484(A122437(n+1))`
-/

namespace A022330.P2701123460648418327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374484 (A122437 (n + 1)).toNat

end

end A022330.P2701123460648418327

namespace A022330

/-- `A374484(A122437(n+1))` -/
def P2701123460648418327.Spec : Prop :=
  ∀ n, P2701123460648418327.a n = A022330 n

end A022330

/-! ## A022330.P2686271596720494691

`A374484(A020914(n)+n)`
-/

namespace A022330.P2686271596720494691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374484 (A020914 n + (n : ℤ)).toNat

end

end A022330.P2686271596720494691

namespace A022330

/-- `A374484(A020914(n)+n)` -/
def P2686271596720494691.Spec : Prop :=
  ∀ n, P2686271596720494691.a n = A022330 n

end A022330

/-! ## A022330.P13903447516588754221

`record[A372744(n+1)]`
-/

namespace A022330.P13903447516588754221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022330.P13903447516588754221

namespace A022330

/-- `record[A372744(n+1)]` -/
def P13903447516588754221.Spec : Prop :=
  ∀ n, P13903447516588754221.a n = A022330 n

end A022330

/-! ## A022330.P5249660842193864846

`A372744(A022331(n))`
-/

namespace A022330.P5249660842193864846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372744 (A022331 n).toNat

end

end A022330.P5249660842193864846

namespace A022330

/-- `A372744(A022331(n))` -/
def P5249660842193864846.Spec : Prop :=
  ∀ n, P5249660842193864846.a n = A022330 n

end A022330

/-! ## A022330.P17521529838531420087

`A247714(∑[n]+n)`
-/

namespace A022330.P17521529838531420087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247714 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A022330.P17521529838531420087

namespace A022330

/-- `A247714(∑[n]+n)` -/
def P17521529838531420087.Spec : Prop :=
  ∀ n, P17521529838531420087.a n = A022330 n

end A022330

/-! ## A022330.P560952854999737363

`record[A247714(n)-A002262(n+1)]`
-/

namespace A022330.P560952854999737363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247714 n - A002262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022330.P560952854999737363

namespace A022330

/-- `record[A247714(n)-A002262(n+1)]` -/
def P560952854999737363.Spec : Prop :=
  ∀ n, P560952854999737363.a n = A022330 n

end A022330

/-! ## A022330.P12380740947120404078

`record[A247714(n+1)-A247703(n)]`
-/

namespace A022330.P12380740947120404078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247714 (n + 1) - A247703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022330.P12380740947120404078

namespace A022330

/-- `record[A247714(n+1)-A247703(n)]` -/
def P12380740947120404078.Spec : Prop :=
  ∀ n, P12380740947120404078.a n = A022330 n

end A022330

/-! ## A022330.P16677542900182611340

`eq[1, A158456(n+1)]+1`
-/

namespace A022330.P16677542900182611340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158456 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A022330.P16677542900182611340

namespace A022330

/-- `eq[1, A158456(n+1)]+1` -/
def P16677542900182611340.Spec : Prop :=
  ∀ n, (P16677542900182611340.a n : ℤ) = A022330 n

end A022330

/-! ## A022330.P14707717412436092575

`lt[A022328(n+1), 1]+1`
-/

namespace A022330.P14707717412436092575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022328 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A022330.P14707717412436092575

namespace A022330

/-- `lt[A022328(n+1), 1]+1` -/
def P14707717412436092575.Spec : Prop :=
  ∀ n, (P14707717412436092575.a n : ℤ) = A022330 n

end A022330

/-! ## A022330.P9739607365576031152

`lt[val(A033031(n+1)², 2), 1]+1`
-/

namespace A022330.P9739607365576031152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A033031 (n + 1) ^ 2).toNat 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A022330.P9739607365576031152

namespace A022330

/-- `lt[val(A033031(n+1)², 2), 1]+1` -/
def P9739607365576031152.Spec : Prop :=
  ∀ n, (P9739607365576031152.a n : ℤ) = A022330 n

end A022330

/-!
# A022331: Index of 2^n within sequence of numbers of form 2^i*3^j (A003586).

The programs for A022331, the canonical program `A022331.P8664898724011485179` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022331 has offset 0).

The definition of A022331 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071521, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A022331.P8664898724011485179

`A071521(A000079(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022331

/-- `A071521(A000079(n))` -/
def P8664898724011485179.Spec : Prop :=
  ∀ n, P8664898724011485179.a n = A022331 n

theorem P8664898724011485179.correct : P8664898724011485179.Spec := by
  intro n
  simp only [A022331]

end A022331

/-! ## A022331.P15806483407629018439

`∑[floor(n/log2(3))+1]`
-/

namespace A022331.P15806483407629018439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.logb 2 (3 : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022331.P15806483407629018439

namespace A022331

/-- `∑[floor(n/log2(3))+1]` -/
def P15806483407629018439.Spec : Prop :=
  ∀ n, P15806483407629018439.a n = A022331 n

end A022331

/-! ## A022331.P552774212970188347

`a(n-1)+ceil(n/log2(3))` with `a(0)=1`
-/

namespace A022331.P552774212970188347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ⌈(n : ℝ) / Real.logb 2 (3 : ℝ)⌉

end

end A022331.P552774212970188347

namespace A022331

/-- `a(n-1)+ceil(n/log2(3))` -/
def P552774212970188347.Spec : Prop :=
  ∀ n, P552774212970188347.a n = A022331 n

end A022331

/-! ## A022331.P9988491480882057286

`∑[A156301(n)]+1`
-/

namespace A022331.P9988491480882057286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022331.P9988491480882057286

namespace A022331

/-- `∑[A156301(n)]+1` -/
def P9988491480882057286.Spec : Prop :=
  ∀ n, P9988491480882057286.a n = A022331 n

end A022331

/-! ## A022331.P4049756898983907927

`A025713(n)-∑[n]`
-/

namespace A022331.P4049756898983907927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025713 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022331.P4049756898983907927

namespace A022331

/-- `A025713(n)-∑[n]` -/
def P4049756898983907927.Spec : Prop :=
  ∀ n, P4049756898983907927.a n = A022331 n

end A022331

/-! ## A022331.P15311283483450971782

`∑[2*A020915(n)]/2`
-/

namespace A022331.P15311283483450971782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020915 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A022331.P15311283483450971782

namespace A022331

/-- `∑[2*A020915(n)]/2` -/
def P15311283483450971782.Spec : Prop :=
  ∀ n, P15311283483450971782.a n = (A022331 n : ℚ)

end A022331

/-! ## A022331.P17568719139007289223

`∑[A136409(n)]+n+1`
-/

namespace A022331.P17568719139007289223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A022331.P17568719139007289223

namespace A022331

/-- `∑[A136409(n)]+n+1` -/
def P17568719139007289223.Spec : Prop :=
  ∀ n, P17568719139007289223.a n = A022331 n

end A022331

/-! ## A022331.P9568346650031409017

`∑[∑[char[A056576(n)+1]]]+1`
-/

namespace A022331.P9568346650031409017
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 n + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022331.P9568346650031409017

namespace A022331

/-- `∑[∑[char[A056576(n)+1]]]+1` -/
def P9568346650031409017.Spec : Prop :=
  ∀ n, (P9568346650031409017.a n : ℤ) = A022331 n

end A022331

/-! ## A022331.P9567232343931801496

`or(∑[A020915(n)], A000007(n))`
-/

namespace A022331.P9567232343931801496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A022331.P9567232343931801496

namespace A022331

/-- `or(∑[A020915(n)], A000007(n))` -/
def P9567232343931801496.Spec : Prop :=
  ∀ n, P9567232343931801496.a n = A022331 n

end A022331

/-! ## A022331.P9169211636232876991

`∑[A020915(n)]%A000096(n+4)`
-/

namespace A022331.P9169211636232876991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000096 (n + 4))

end

end A022331.P9169211636232876991

namespace A022331

/-- `∑[A020915(n)]%A000096(n+4)` -/
def P9169211636232876991.Spec : Prop :=
  ∀ n, P9169211636232876991.a n = A022331 n

end A022331

/-! ## A022331.P14315586974503371732

`A374484(A020915(n)+n)`
-/

namespace A022331.P14315586974503371732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374484 (A020915 n + (n : ℤ)).toNat

end

end A022331.P14315586974503371732

namespace A022331

/-- `A374484(A020915(n)+n)` -/
def P14315586974503371732.Spec : Prop :=
  ∀ n, P14315586974503371732.a n = A022331 n

end A022331

/-! ## A022331.P9293632752876845157

`A000027(∑[A020915(n)])`
-/

namespace A022331.P9293632752876845157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A022331.P9293632752876845157

namespace A022331

/-- `A000027(∑[A020915(n)])` -/
def P9293632752876845157.Spec : Prop :=
  ∀ n, P9293632752876845157.a n = A022331 n

end A022331

/-! ## A022331.P10483653024424262283

`∑{d}[∑[A020915(n)], A000010(#)]`
-/

namespace A022331.P10483653024424262283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A022331.P10483653024424262283

namespace A022331

/-- `∑{d}[∑[A020915(n)], A000010(#)]` -/
def P10483653024424262283.Spec : Prop :=
  ∀ n, P10483653024424262283.a n = A022331 n

end A022331

/-! ## A022331.P8551267098688413650

`eq[2, A049237(n+1)]`
-/

namespace A022331.P8551267098688413650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049237 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A022331.P8551267098688413650

namespace A022331

/-- `eq[2, A049237(n+1)]` -/
def P8551267098688413650.Spec : Prop :=
  ∀ n, (P8551267098688413650.a n : ℤ) = A022331 n

end A022331

/-! ## A022331.P7401639621488146257

`eq[1, A134583(n+1)]+1`
-/

namespace A022331.P7401639621488146257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134583 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A022331.P7401639621488146257

namespace A022331

/-- `eq[1, A134583(n+1)]+1` -/
def P7401639621488146257.Spec : Prop :=
  ∀ n, (P7401639621488146257.a n : ℤ) = A022331 n

end A022331

/-! ## A022331.P15002727519974292984

`eq[1, Δ[A086411(n+1)]]+1`
-/

namespace A022331.P15002727519974292984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A022331.P15002727519974292984

namespace A022331

/-- `eq[1, Δ[A086411(n+1)]]+1` -/
def P15002727519974292984.Spec : Prop :=
  ∀ n, (P15002727519974292984.a n : ℤ) = A022331 n

end A022331

/-! ## A022331.P8404467107954637963

`record[gcd(n+1, A022329(n+1))]`
-/

namespace A022331.P8404467107954637963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A022329 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022331.P8404467107954637963

namespace A022331

/-- `record[gcd(n+1, A022329(n+1))]` -/
def P8404467107954637963.Spec : Prop :=
  ∀ n, (P8404467107954637963.a n : ℤ) = A022331 n

end A022331

/-! ## A022331.P14373922860239184875

`eq[1, A022329(n+2)]-n`
-/

namespace A022331.P14373922860239184875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022329 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A022331.P14373922860239184875

namespace A022331

/-- `eq[1, A022329(n+2)]-n` -/
def P14373922860239184875.Spec : Prop :=
  ∀ n, P14373922860239184875.a n = A022331 n

end A022331

/-! ## A022331.P12950069942782266354

`A247714(∑[n])`
-/

namespace A022331.P12950069942782266354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247714 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A022331.P12950069942782266354

namespace A022331

/-- `A247714(∑[n])` -/
def P12950069942782266354.Spec : Prop :=
  ∀ n, P12950069942782266354.a n = A022331 n

end A022331

/-! ## A022331.P6108359908408594277

`record[gcd(A002262(n), A247714(n))]`
-/

namespace A022331.P6108359908408594277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A247714 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022331.P6108359908408594277

namespace A022331

/-- `record[gcd(A002262(n), A247714(n))]` -/
def P6108359908408594277.Spec : Prop :=
  ∀ n, (P6108359908408594277.a n : ℤ) = A022331 n

end A022331

/-!
# A022332: Exponent of 2 (value of i) in n-th number of form 2^i*5^j.

The programs for A022332, there is no canonical definition to state claims against.
-/

/-! ## A022332.P8978026020371417693

`A007814(A003592(n+1))`
-/

namespace A022332.P8978026020371417693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A003592 (n + 1)).toNat

end

end A022332.P8978026020371417693

/-! ## A022332.P10223324796004761839

`val(A086761(n+1), 2)`
-/

namespace A022332.P10223324796004761839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A086761 (n + 1)).toNat 2

end

end A022332.P10223324796004761839

/-! ## A022332.P12440815117398383545

`val(A158911(n+1)+1, 2)`
-/

namespace A022332.P12440815117398383545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A158911 (n + 1) + 1).toNat 2

end

end A022332.P12440815117398383545

/-! ## A022332.P12271712208994227819

`val(A033846(n+1), 2)-1`
-/

namespace A022332.P12271712208994227819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A033846 (n + 1)).toNat 2 : ℤ) - 1

end

end A022332.P12271712208994227819

/-! ## A022332.P8602838216306980666

`A023443(val(A033846(n+1), 2))`
-/

namespace A022332.P8602838216306980666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.valuation (A033846 (n + 1)).toNat 2)

end

end A022332.P8602838216306980666

/-! ## A022332.P11530136595701148760

`val(A033846(n+1)/2, A000005(A105555(n+1)))`
-/

namespace A022332.P11530136595701148760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((A033846 (n + 1) : ℚ) / 2)).toNat (A000005 (A105555 (n + 1)).toNat).toNat

end

end A022332.P11530136595701148760

/-! ## A022332.P11614076978856030888

`val(A033846(n+1)/2, A000005(A274321(n+1)))`
-/

namespace A022332.P11614076978856030888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((A033846 (n + 1) : ℚ) / 2)).toNat (A000005 (A274321 (n + 1)).toNat).toNat

end

end A022332.P11614076978856030888

/-! ## A022332.P15904479372292314267

`val(A033846(n+1)/2, A010553(A000040(n+1)))`
-/

namespace A022332.P15904479372292314267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((A033846 (n + 1) : ℚ) / 2)).toNat (A010553 (A000040 (n + 1)).toNat).toNat

end

end A022332.P15904479372292314267

/-! ## A022332.P2651310790681149750

`A008683(A247122(n+1))+val(A033846(n+1), 2)`
-/

namespace A022332.P2651310790681149750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A247122 (n + 1)).toNat + (SequenceMachineLib.valuation (A033846 (n + 1)).toNat 2 : ℤ)

end

end A022332.P2651310790681149750

/-! ## A022332.P14215025278475627579

`val(A033846(n+1)/2, A000005(A053070(n+1)))`
-/

namespace A022332.P14215025278475627579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((A033846 (n + 1) : ℚ) / 2)).toNat (A000005 (A053070 (n + 1)).toNat).toNat

end

end A022332.P14215025278475627579

/-! ## A022332.P7661873137595937163

`val(A178335(n+1), 2)`
-/

namespace A022332.P7661873137595937163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A178335 (n + 1)).toNat 2

end

end A022332.P7661873137595937163

/-!
# A022333: Exponent of 5 (value of j) in n-th number of form 2^i*5^j.

The programs for A022333, there is no canonical definition to state claims against.
-/

/-! ## A022333.P3619092970115721733

`A112765(A003592(n+1))`
-/

namespace A022333.P3619092970115721733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A003592 (n + 1)).toNat

end

end A022333.P3619092970115721733

/-! ## A022333.P11762174928007966833

`val(A158911(n+1)+1, 5)`
-/

namespace A022333.P11762174928007966833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A158911 (n + 1) + 1).toNat 5

end

end A022333.P11762174928007966833

/-! ## A022333.P2645021013064056324

`val(A033846(n+1), 5)-1`
-/

namespace A022333.P2645021013064056324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A033846 (n + 1)).toNat 5 : ℤ) - 1

end

end A022333.P2645021013064056324

/-! ## A022333.P14767443393642476336

`A023443(val(A033846(n+1), 5))`
-/

namespace A022333.P14767443393642476336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.valuation (A033846 (n + 1)).toNat 5)

end

end A022333.P14767443393642476336

/-! ## A022333.P16365262283546430501

`A008683(A247122(n+1))+val(A033846(n+1), 5)`
-/

namespace A022333.P16365262283546430501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A247122 (n + 1)).toNat + (SequenceMachineLib.valuation (A033846 (n + 1)).toNat 5 : ℤ)

end

end A022333.P16365262283546430501

/-! ## A022333.P9924371033611370242

`val(A178335(n+1), 5)`
-/

namespace A022333.P9924371033611370242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A178335 (n + 1)).toNat 5

end

end A022333.P9924371033611370242

/-! ## A022333.P17943811836696205499

`∑{e}[A003592(n+1), #]-A022332(n+1)`
-/

namespace A022333.P17943811836696205499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - A022332 (n + 1)

end

end A022333.P17943811836696205499

/-! ## A022333.P17634395817108305303

`A336469(A086761(n+1))`
-/

namespace A022333.P17634395817108305303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336469 (A086761 (n + 1)).toNat

end

end A022333.P17634395817108305303

/-! ## A022333.P5292940199847726036

`A336469(A033846(n+1)/2)`
-/

namespace A022333.P5292940199847726036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336469 (SequenceMachineLib.roundAway ((A033846 (n + 1) : ℚ) / 2)).toNat

end

end A022333.P5292940199847726036

/-!
# A022334: Index of 5^n within sequence of numbers of form 2^i * 5^j.

The programs for A022334, the canonical program `A022334.P10690066324089854614` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022334 has offset 0).

The definition of A022334 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022334.P6948774520967255208

`∑[floor(n*log2(5))+1]`
-/

namespace A022334.P6948774520967255208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.logb 2 (5 : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022334.P6948774520967255208

namespace A022334

/-- `∑[floor(n*log2(5))+1]` -/
def P6948774520967255208.Spec : Prop :=
  ∀ n, P6948774520967255208.a n = A022334 n

end A022334

/-! ## A022334.P2906255211846274927

`ceil(a(n-1)+n*log2(5))` with `a(0)=1`
-/

namespace A022334.P2906255211846274927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + (n : ℝ) * Real.logb 2 (5 : ℝ)⌉

end

end A022334.P2906255211846274927

namespace A022334

/-- `ceil(a(n-1)+n*log2(5))` -/
def P2906255211846274927.Spec : Prop :=
  ∀ n, P2906255211846274927.a n = A022334 n

end A022334

/-! ## A022334.P4552593121898698114

`a(n-1)+floor(n*log2(5))+1` with `a(0)=1`
-/

namespace A022334.P4552593121898698114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (⌊(n : ℝ) * Real.logb 2 (5 : ℝ)⌋ + 1)

end

end A022334.P4552593121898698114

namespace A022334

/-- `a(n-1)+floor(n*log2(5))+1` -/
def P4552593121898698114.Spec : Prop :=
  ∀ n, P4552593121898698114.a n = A022334 n

end A022334

/-! ## A022334.P16936903817337409798

`A025740(n)-∑[n]`
-/

namespace A022334.P16936903817337409798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025740 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022334.P16936903817337409798

namespace A022334

/-- `A025740(n)-∑[n]` -/
def P16936903817337409798.Spec : Prop :=
  ∀ n, P16936903817337409798.a n = A022334 n

end A022334

/-! ## A022334.P10690066324089854614

`∑[A061785(n+1)+1]-A061785(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022334

/-- `∑[A061785(n+1)+1]-A061785(n+1)` -/
def P10690066324089854614.Spec : Prop :=
  ∀ n, P10690066324089854614.a n = A022334 n

theorem P10690066324089854614.correct : P10690066324089854614.Spec := by
  intro n
  simp only [A022334]

end A022334

/-! ## A022334.P10309431928760576185

`∑[A067497(n)-n]+1`
-/

namespace A022334.P10309431928760576185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067497 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022334.P10309431928760576185

namespace A022334

/-- `∑[A067497(n)-n]+1` -/
def P10309431928760576185.Spec : Prop :=
  ∀ n, P10309431928760576185.a n = A022334 n

end A022334

/-! ## A022334.P11095152592103789434

`∑[A123384(n)]-∑[n]`
-/

namespace A022334.P11095152592103789434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123384 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A022334.P11095152592103789434

namespace A022334

/-- `∑[A123384(n)]-∑[n]` -/
def P11095152592103789434.Spec : Prop :=
  ∀ n, P11095152592103789434.a n = A022334 n

end A022334

/-! ## A022334.P5510551077527024906

`∑[ceil(log2(A104745(n)))]+1`
-/

namespace A022334.P5510551077527024906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A104745 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022334.P5510551077527024906

namespace A022334

/-- `∑[ceil(log2(A104745(n)))]+1` -/
def P5510551077527024906.Spec : Prop :=
  ∀ n, P5510551077527024906.a n = A022334 n

end A022334

/-! ## A022334.P9744619420340079854

`∑[floor(log2(A155596(n)+1))]+n`
-/

namespace A022334.P9744619420340079854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A155596 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A022334.P9744619420340079854

namespace A022334

/-- `∑[floor(log2(A155596(n)+1))]+n` -/
def P9744619420340079854.Spec : Prop :=
  ∀ n, (P9744619420340079854.a n : ℤ) = A022334 n

end A022334

/-! ## A022334.P17289579748984034618

`eq[1, A022332(n+1)]-n`
-/

namespace A022334.P17289579748984034618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A022334.P17289579748984034618

namespace A022334

/-- `eq[1, A022332(n+1)]-n` -/
def P17289579748984034618.Spec : Prop :=
  ∀ n, P17289579748984034618.a n = A022334 n

end A022334

/-!
# A022335: Index of 2^n within sequence of numbers of form 2^i * 5^j.

The programs for A022335, the canonical program `A022335.P640562549474577524` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022335 has offset 0).

The definition of A022335 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022335.P11507281100015534268

`∑[floor(n/log2(5))+1]`
-/

namespace A022335.P11507281100015534268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.logb 2 (5 : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022335.P11507281100015534268

namespace A022335

/-- `∑[floor(n/log2(5))+1]` -/
def P11507281100015534268.Spec : Prop :=
  ∀ n, P11507281100015534268.a n = A022335 n

end A022335

/-! ## A022335.P15689687760823656419

`ceil(a(n-1)+n/log2(5))` with `a(0)=1`
-/

namespace A022335.P15689687760823656419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + (n : ℝ) / Real.logb 2 (5 : ℝ)⌉

end

end A022335.P15689687760823656419

namespace A022335

/-- `ceil(a(n-1)+n/log2(5))` -/
def P15689687760823656419.Spec : Prop :=
  ∀ n, P15689687760823656419.a n = A022335 n

end A022335

/-! ## A022335.P6006987426443022812

`A025743(n)-∑[n]`
-/

namespace A022335.P6006987426443022812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025743 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A022335.P6006987426443022812

namespace A022335

/-- `A025743(n)-∑[n]` -/
def P6006987426443022812.Spec : Prop :=
  ∀ n, P6006987426443022812.a n = A022335 n

end A022335

/-! ## A022335.P640562549474577524

`∑[A066344(A028310(n))]-(∑[n]-n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A022335

/-- `∑[A066344(A028310(n))]-(∑[n]-n)` -/
def P640562549474577524.Spec : Prop :=
  ∀ n, P640562549474577524.a n = A022335 n

theorem P640562549474577524.correct : P640562549474577524.Spec := by
  intro n
  simp only [A022335]

end A022335

/-! ## A022335.P11444178010550243266

`∑[A226721(n+1)-n]-A066344(n+1)`
-/

namespace A022335.P11444178010550243266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226721 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A066344 (n + 1)

end

end A022335.P11444178010550243266

namespace A022335

/-- `∑[A226721(n+1)-n]-A066344(n+1)` -/
def P11444178010550243266.Spec : Prop :=
  ∀ n, P11444178010550243266.a n = A022335 n

end A022335

/-! ## A022335.P18107987111666266673

`eq[A022333(n+1), A173517(A022333(n+1))]+1`
-/

namespace A022335.P18107987111666266673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173517 (A022333 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A022335.P18107987111666266673

namespace A022335

/-- `eq[A022333(n+1), A173517(A022333(n+1))]+1` -/
def P18107987111666266673.Spec : Prop :=
  ∀ n, (P18107987111666266673.a n : ℤ) = A022335 n

end A022335

/-! ## A022335.P795982185687240536

`eq[1, A151622(A022333(n+1))]+1`
-/

namespace A022335.P795982185687240536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 (A022333 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A022335.P795982185687240536

namespace A022335

/-- `eq[1, A151622(A022333(n+1))]+1` -/
def P795982185687240536.Spec : Prop :=
  ∀ n, (P795982185687240536.a n : ℤ) = A022335 n

end A022335

/-! ## A022335.P12140926826952775377

`A008617(2*n)+A008617(A211441(n+1))`
-/

namespace A022335.P12140926826952775377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (2 * n) + A008617 (A211441 (n + 1)).toNat

end

end A022335.P12140926826952775377

namespace A022335

/-- `A008617(2*n)+A008617(A211441(n+1))` -/
def P12140926826952775377.Spec : Prop :=
  ∀ n, P12140926826952775377.a n = A022335 n

end A022335

/-! ## A022335.P9265146245365334653

`A008617(A166143(n+1)+n)+A008617(n)`
-/

namespace A022335.P9265146245365334653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A166143 (n + 1) + (n : ℤ)).toNat + A008617 n

end

end A022335.P9265146245365334653

namespace A022335

/-- `A008617(A166143(n+1)+n)+A008617(n)` -/
def P9265146245365334653.Spec : Prop :=
  ∀ n, P9265146245365334653.a n = A022335 n

end A022335

/-! ## A022335.P2171691262259625172

`A008617(A144390(n+2))`
-/

namespace A022335.P2171691262259625172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A144390 (n + 2)).toNat

end

end A022335.P2171691262259625172

namespace A022335

/-- `A008617(A144390(n+2))` -/
def P2171691262259625172.Spec : Prop :=
  ∀ n, P2171691262259625172.a n = A022335 n

end A022335

/-!
# A022336: Exponent of 3 (value of i) in n-th number of form 3^i*5^j.

The programs for A022336, there is no canonical definition to state claims against.
-/

/-! ## A022336.P16305989978850335340

`A112754(n+1)-A022337(n+1)`
-/

namespace A022336.P16305989978850335340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112754 (n + 1) - A022337 (n + 1)

end

end A022336.P16305989978850335340

/-! ## A022336.P1117246476331319208

`A007949(A003593(n+1))`
-/

namespace A022336.P1117246476331319208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A003593 (n + 1)).toNat

end

end A022336.P1117246476331319208

/-! ## A022336.P4469400786364684674

`val(A033849(n+1), 3)-1`
-/

namespace A022336.P4469400786364684674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A033849 (n + 1)).toNat 3 : ℤ) - 1

end

end A022336.P4469400786364684674

/-! ## A022336.P9025485249030062825

`A023443(val(A033849(n+1), 3))`
-/

namespace A022336.P9025485249030062825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.valuation (A033849 (n + 1)).toNat 3)

end

end A022336.P9025485249030062825

/-! ## A022336.P5440875413270514610

`A065423(2*val(A033849(n+1), 3))`
-/

namespace A022336.P5440875413270514610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * SequenceMachineLib.valuation (A033849 (n + 1)).toNat 3)

end

end A022336.P5440875413270514610

/-! ## A022336.P7204880388583638208

`A133334(n+1)-A010052(n²)`
-/

namespace A022336.P7204880388583638208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133334 (n + 1) - A010052 (n ^ 2)

end

end A022336.P7204880388583638208

/-! ## A022336.P9544016686128252353

`A133334(n+1)-A321648(A122535(n+1))`
-/

namespace A022336.P9544016686128252353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133334 (n + 1) - A321648 (A122535 (n + 1)).toNat

end

end A022336.P9544016686128252353

/-! ## A022336.P2187992322588773115

`A133334(n+1)-A287957(∑[n+1])`
-/

namespace A022336.P2187992322588773115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133334 (n + 1) - A287957 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A022336.P2187992322588773115

/-! ## A022336.P13461090881312595540

`A133334(n+1)-A000034(A002378(n))`
-/

namespace A022336.P13461090881312595540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133334 (n + 1) - A000034 (A002378 n).toNat

end

end A022336.P13461090881312595540

/-! ## A022336.P7485262262623400173

`A227539(n+1)-1`
-/

namespace A022336.P7485262262623400173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227539 (n + 1) - 1

end

end A022336.P7485262262623400173

/-!
# A022337: Exponent of 5 (value of j) in n-th number of form 3^i*5^j.

The programs for A022337, there is no canonical definition to state claims against.
-/

/-! ## A022337.P10923890112227123645

`A112754(n+1)-A022336(n+1)`
-/

namespace A022337.P10923890112227123645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112754 (n + 1) - A022336 (n + 1)

end

end A022337.P10923890112227123645

/-! ## A022337.P267846270415855102

`A112765(A003593(n+1))`
-/

namespace A022337.P267846270415855102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A003593 (n + 1)).toNat

end

end A022337.P267846270415855102

/-! ## A022337.P10045391325128668570

`val(A033849(n+1), 5)-1`
-/

namespace A022337.P10045391325128668570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A033849 (n + 1)).toNat 5 : ℤ) - 1

end

end A022337.P10045391325128668570

/-! ## A022337.P6510782389154068615

`A023443(val(A033849(n+1), 5))`
-/

namespace A022337.P6510782389154068615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.valuation (A033849 (n + 1)).toNat 5)

end

end A022337.P6510782389154068615

/-! ## A022337.P12325990840423682252

`A008683(A107286(2*(n+2)))+val(A033849(n+1), 5)`
-/

namespace A022337.P12325990840423682252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A107286 (2 * (n + 2))).toNat + (SequenceMachineLib.valuation (A033849 (n + 1)).toNat 5 : ℤ)

end

end A022337.P12325990840423682252

/-! ## A022337.P16600537872522063484

`(A025687(n+1)%A213443(n))%9`
-/

namespace A022337.P16600537872522063484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A025687 (n + 1)) (A213443 n)) 9

end

end A022337.P16600537872522063484

/-! ## A022337.P5225480005960877071

`A025687(n+1)%A000664(n)`
-/

namespace A022337.P5225480005960877071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025687 (n + 1)) (A000664 n)

end

end A022337.P5225480005960877071

/-! ## A022337.P1999972315431028155

`A001222(5^A025687(n+1))`
-/

namespace A022337.P1999972315431028155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A025687 (n + 1) : ℤ))).toNat

end

end A022337.P1999972315431028155

/-! ## A022337.P7740304145377687297

`A001222(gcd(A003593(n+1), A011557(n)))`
-/

namespace A022337.P7740304145377687297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A003593 (n + 1)) (A011557 n))

end

end A022337.P7740304145377687297

/-! ## A022337.P561624162199178730

`and(A025687(n+1), A045535(A025687(n+1)²))`
-/

namespace A022337.P561624162199178730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025687 (n + 1)) (A045535 (A025687 (n + 1) ^ 2).toNat)

end

end A022337.P561624162199178730

/-!
# A022338: Index of 5^n within sequence of numbers of form 3^i*5^j.

The programs for A022338, there is no canonical definition to state claims against.
-/

/-! ## A022338.P7603352079994850813

`∑[∑[A022927(abs(1-n))]]`
-/

namespace A022338.P7603352079994850813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022927 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022338.P7603352079994850813

/-! ## A022338.P15112950368028022606

`∑[A022927(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A022338.P15112950368028022606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A022927 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022338.P15112950368028022606

/-! ## A022338.P17371975856803192926

`record[gcd(n+1, A022336(n+1))]`
-/

namespace A022338.P17371975856803192926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A022336 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022338.P17371975856803192926

/-! ## A022338.P1448233344350768252

`record[(n+1)/(A112754(n+1)+1-A022337(n+1))]`
-/

namespace A022338.P1448233344350768252
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A112754 (n + 1) + (1 - A022337 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022338.P1448233344350768252

/-! ## A022338.P12600440534580500541

`eq[A000038(n), A022336(A028310(n))]`
-/

namespace A022338.P12600440534580500541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022336 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022338.P12600440534580500541

/-! ## A022338.P1545516815747252051

`eq[A000038(n), A022336(A000038(n)+n)]`
-/

namespace A022338.P1545516815747252051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022336 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022338.P1545516815747252051

/-! ## A022338.P3622167665889951475

`eq[1, A022336(n+1)]-n`
-/

namespace A022338.P3622167665889951475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A022338.P3622167665889951475

/-! ## A022338.P5296730139260292687

`∑[A267871(A005893(n))+A240977(n)]`
-/

namespace A022338.P5296730139260292687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267871 (A005893 n).toNat + A240977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022338.P5296730139260292687

/-!
# A022339: Index of 3^n within sequence of numbers of form 3^i*5^j.

The programs for A022339, there is no canonical definition to state claims against.
-/

/-! ## A022339.P619113205158479101

`∑[∑[A022928(abs(1-n))]]`
-/

namespace A022339.P619113205158479101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022928 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022339.P619113205158479101

/-! ## A022339.P11458449117359063876

`∑[∑[A022928(A004273(n)-n)]+1]`
-/

namespace A022339.P11458449117359063876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022928 (A004273 n - (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022339.P11458449117359063876

/-! ## A022339.P7487983928488365936

`eq[0, A022337(n+1)]+1`
-/

namespace A022339.P7487983928488365936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022337 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A022339.P7487983928488365936

/-! ## A022339.P3184767871754727928

`record[(n+1)/val(A033849(n+1), 5)]`
-/

namespace A022339.P3184767871754727928
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (SequenceMachineLib.valuation (A033849 (n + 1)).toNat 5 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022339.P3184767871754727928

/-! ## A022339.P12351155256086820789

`record[gcd(A000027(n+1), A022337(n+1))]`
-/

namespace A022339.P12351155256086820789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A022337 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022339.P12351155256086820789

/-! ## A022339.P2486358644527780999

`eq[A000038(n), A022337(A123108(2*n))]`
-/

namespace A022339.P2486358644527780999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022337 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A022339.P2486358644527780999

/-! ## A022339.P4083673907992261982

`A002264(A025747(n)+∑[n+1]+1)`
-/

namespace A022339.P4083673907992261982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A025747 n + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)).toNat

end

end A022339.P4083673907992261982

/-!
# A022340: Even Fibbinary numbers (A003714); also a(n) = 2*Fibbinary(n).

The programs for A022340, the canonical program `A022340.P3334581410869230776` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022340 has offset 0).

The definition of A022340 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A022340.P3334581410869230776

`A003714(A022342(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A022340

/-- `A003714(A022342(n+1))` -/
def P3334581410869230776.Spec : Prop :=
  ∀ n, P3334581410869230776.a n = A022340 n

theorem P3334581410869230776.correct : P3334581410869230776.Spec := by
  intro n
  simp only [A022340]

end A022340

/-! ## A022340.P10358117276726775172

`A118113(n)-1`
-/

namespace A022340.P10358117276726775172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118113 n - 1

end

end A022340.P10358117276726775172

namespace A022340

/-- `A118113(n)-1` -/
def P10358117276726775172.Spec : Prop :=
  ∀ n, P10358117276726775172.a n = A022340 n

end A022340

/-! ## A022340.P15059685303447793992

`2*A003714(n)`
-/

namespace A022340.P15059685303447793992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003714 n

end

end A022340.P15059685303447793992

namespace A022340

/-- `2*A003714(n)` -/
def P15059685303447793992.Spec : Prop :=
  ∀ n, P15059685303447793992.a n = A022340 n

end A022340

/-! ## A022340.P12333782264027895307

`floor(A022341(n)/2)`
-/

namespace A022340.P12333782264027895307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A022341 n : ℚ) / 2⌋

end

end A022340.P12333782264027895307

namespace A022340

/-- `floor(A022341(n)/2)` -/
def P12333782264027895307.Spec : Prop :=
  ∀ n, P12333782264027895307.a n = A022340 n

end A022340

/-! ## A022340.P15650603351977291048

`2/3*A277335(n)`
-/

namespace A022340.P15650603351977291048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A277335 n : ℚ)

end

end A022340.P15650603351977291048

namespace A022340

/-- `2/3*A277335(n)` -/
def P15650603351977291048.Spec : Prop :=
  ∀ n, P15650603351977291048.a n = (A022340 n : ℚ)

end A022340

/-! ## A022340.P15925110369214612343

`floor(A213540(n+1)/4)`
-/

namespace A022340.P15925110369214612343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A213540 (n + 1) : ℚ) / 4⌋

end

end A022340.P15925110369214612343

namespace A022340

/-- `floor(A213540(n+1)/4)` -/
def P15925110369214612343.Spec : Prop :=
  ∀ n, P15925110369214612343.a n = A022340 n

end A022340

/-! ## A022340.P7671648137595515868

`2*(A048297(n)-1)/3`
-/

namespace A022340.P7671648137595515868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A048297 n - 1 : ℚ) / 3)

end

end A022340.P7671648137595515868

namespace A022340

/-- `2*(A048297(n)-1)/3` -/
def P7671648137595515868.Spec : Prop :=
  ∀ n, P7671648137595515868.a n = (A022340 n : ℚ)

end A022340

/-! ## A022340.P4936320204384991062

`A277335(n)-A003714(n)`
-/

namespace A022340.P4936320204384991062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277335 n - A003714 n

end

end A022340.P4936320204384991062

namespace A022340

/-- `A277335(n)-A003714(n)` -/
def P4936320204384991062.Spec : Prop :=
  ∀ n, P4936320204384991062.a n = A022340 n

end A022340

/-! ## A022340.P16900302866496941211

`A022341(n)%A118113(n)`
-/

namespace A022340.P16900302866496941211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022341 n) (A118113 n)

end

end A022340.P16900302866496941211

namespace A022340

/-- `A022341(n)%A118113(n)` -/
def P16900302866496941211.Spec : Prop :=
  ∀ n, P16900302866496941211.a n = A022340 n

end A022340

/-! ## A022340.P2952707789867257821

`A213540(n+1)%A118113(n)`
-/

namespace A022340.P2952707789867257821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213540 (n + 1)) (A118113 n)

end

end A022340.P2952707789867257821

namespace A022340

/-- `A213540(n+1)%A118113(n)` -/
def P2952707789867257821.Spec : Prop :=
  ∀ n, P2952707789867257821.a n = A022340 n

end A022340

/-! ## A022340.P16444041832382923018

`A003714(n+1)+A003714(n)-A129761(n)`
-/

namespace A022340.P16444041832382923018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (n + 1) + (A003714 n - A129761 n)

end

end A022340.P16444041832382923018

namespace A022340

/-- `A003714(n+1)+A003714(n)-A129761(n)` -/
def P16444041832382923018.Spec : Prop :=
  ∀ n, P16444041832382923018.a n = A022340 n

end A022340

/-! ## A022340.P1426874403075644323

`A105425(A195121(n))`
-/

namespace A022340.P1426874403075644323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105425 (A195121 n).toNat

end

end A022340.P1426874403075644323

namespace A022340

/-- `A105425(A195121(n))` -/
def P1426874403075644323.Spec : Prop :=
  ∀ n, P1426874403075644323.a n = A022340 n

end A022340

/-! ## A022340.P5972585510417491061

`A003714(lt[A003849(n), 1])`
-/

namespace A022340.P5972585510417491061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A022340.P5972585510417491061

namespace A022340

/-- `A003714(lt[A003849(n), 1])` -/
def P5972585510417491061.Spec : Prop :=
  ∀ n, P5972585510417491061.a n = A022340 n

end A022340

/-! ## A022340.P13181280492276493060

`A003714(A005206(n)+n)`
-/

namespace A022340.P13181280492276493060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A005206 n + (n : ℤ)).toNat

end

end A022340.P13181280492276493060

namespace A022340

/-- `A003714(A005206(n)+n)` -/
def P13181280492276493060.Spec : Prop :=
  ∀ n, P13181280492276493060.a n = A022340 n

end A022340

/-! ## A022340.P3102844190495076087

`A003714(A000201(n+1)-1)`
-/

namespace A022340.P3102844190495076087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A000201 (n + 1) - 1).toNat

end

end A022340.P3102844190495076087

namespace A022340

/-- `A003714(A000201(n+1)-1)` -/
def P3102844190495076087.Spec : Prop :=
  ∀ n, P3102844190495076087.a n = A022340 n

end A022340

/-! ## A022340.P2976921719112291964

`A003714(A026351(n+1)-2)`
-/

namespace A022340.P2976921719112291964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A026351 (n + 1) - 2).toNat

end

end A022340.P2976921719112291964

namespace A022340

/-- `A003714(A026351(n+1)-2)` -/
def P2976921719112291964.Spec : Prop :=
  ∀ n, P2976921719112291964.a n = A022340 n

end A022340

/-! ## A022340.P59344261696392499

`A003714(A060143(n+1)+n)`
-/

namespace A022340.P59344261696392499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A060143 (n + 1) + (n : ℤ)).toNat

end

end A022340.P59344261696392499

namespace A022340

/-- `A003714(A060143(n+1)+n)` -/
def P59344261696392499.Spec : Prop :=
  ∀ n, P59344261696392499.a n = A022340 n

end A022340

/-! ## A022340.P6389727536589002265

`A003714(A003622(n+1)-(n+1))`
-/

namespace A022340.P6389727536589002265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A003622 (n + 1) - (n + 1 : ℤ)).toNat

end

end A022340.P6389727536589002265

namespace A022340

/-- `A003714(A003622(n+1)-(n+1))` -/
def P6389727536589002265.Spec : Prop :=
  ∀ n, P6389727536589002265.a n = A022340 n

end A022340

/-! ## A022340.P13432787834343076693

`A003714(A001950(n+1)-(n+2))`
-/

namespace A022340.P13432787834343076693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A001950 (n + 1) - (n + 2 : ℤ)).toNat

end

end A022340.P13432787834343076693

namespace A022340

/-- `A003714(A001950(n+1)-(n+2))` -/
def P13432787834343076693.Spec : Prop :=
  ∀ n, P13432787834343076693.a n = A022340 n

end A022340

/-! ## A022340.P3245719767391596894

`record[and(2*n, -n)]`
-/

namespace A022340.P3245719767391596894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022340.P3245719767391596894

namespace A022340

/-- `record[and(2*n, -n)]` -/
def P3245719767391596894.Spec : Prop :=
  ∀ n, P3245719767391596894.a n = A022340 n

end A022340

/-!
# A022341: a(n) = 4*A003714(n) + 1; the odd Fibbinary numbers.

The programs for A022341, the canonical program `A022341.P2847779761458071812` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022341 has offset 0).

The definition of A022341 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003714, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A022341.P2847779761458071812

`4*A003714(n)+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A022341

/-- `4*A003714(n)+1` -/
def P2847779761458071812.Spec : Prop :=
  ∀ n, P2847779761458071812.a n = A022341 n

theorem P2847779761458071812.correct : P2847779761458071812.Spec := by
  intro n
  simp only [A022341]

end A022341

/-! ## A022341.P4716572075256721951

`A003714(A003622(n+1))`
-/

namespace A022341.P4716572075256721951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A003622 (n + 1)).toNat

end

end A022341.P4716572075256721951

namespace A022341

/-- `A003714(A003622(n+1))` -/
def P4716572075256721951.Spec : Prop :=
  ∀ n, P4716572075256721951.a n = A022341 n

end A022341

/-! ## A022341.P8656294209864811139

`2*A022340(n)+1`
-/

namespace A022341.P8656294209864811139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022340 n + 1

end

end A022341.P8656294209864811139

namespace A022341

/-- `2*A022340(n)+1` -/
def P8656294209864811139.Spec : Prop :=
  ∀ n, P8656294209864811139.a n = A022341 n

end A022341

/-! ## A022341.P7067316777880628174

`2*A118113(n)-1`
-/

namespace A022341.P7067316777880628174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A118113 n - 1

end

end A022341.P7067316777880628174

namespace A022341

/-- `2*A118113(n)-1` -/
def P7067316777880628174.Spec : Prop :=
  ∀ n, P7067316777880628174.a n = A022341 n

end A022341

/-! ## A022341.P1034203351697796579

`floor(A213540(n+1)/2)`
-/

namespace A022341.P1034203351697796579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A213540 (n + 1) : ℚ) / 2⌋

end

end A022341.P1034203351697796579

namespace A022341

/-- `floor(A213540(n+1)/2)` -/
def P1034203351697796579.Spec : Prop :=
  ∀ n, P1034203351697796579.a n = A022341 n

end A022341

/-! ## A022341.P13272160608878051537

`A048297(n)+A003714(n)`
-/

namespace A022341.P13272160608878051537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048297 n + A003714 n

end

end A022341.P13272160608878051537

namespace A022341

/-- `A048297(n)+A003714(n)` -/
def P13272160608878051537.Spec : Prop :=
  ∀ n, P13272160608878051537.a n = A022341 n

end A022341

/-! ## A022341.P11461671643179923112

`A118113(n)+A022340(n)`
-/

namespace A022341.P11461671643179923112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118113 n + A022340 n

end

end A022341.P11461671643179923112

namespace A022341

/-- `A118113(n)+A022340(n)` -/
def P11461671643179923112.Spec : Prop :=
  ∀ n, P11461671643179923112.a n = A022341 n

end A022341

/-! ## A022341.P13562670819997550876

`A003714(n)+A277335(n)+1`
-/

namespace A022341.P13562670819997550876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n + (A277335 n + 1)

end

end A022341.P13562670819997550876

namespace A022341

/-- `A003714(n)+A277335(n)+1` -/
def P13562670819997550876.Spec : Prop :=
  ∀ n, P13562670819997550876.a n = A022341 n

end A022341

/-! ## A022341.P16510717654723689600

`A003714(n)+A118113(n)+A003714(n)`
-/

namespace A022341.P16510717654723689600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n + (A118113 n + A003714 n)

end

end A022341.P16510717654723689600

namespace A022341

/-- `A003714(n)+A118113(n)+A003714(n)` -/
def P16510717654723689600.Spec : Prop :=
  ∀ n, P16510717654723689600.a n = A022341 n

end A022341

/-! ## A022341.P13675482791492354392

`A048297(n)+A048297(n)-A118113(n)`
-/

namespace A022341.P13675482791492354392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048297 n + (A048297 n - A118113 n)

end

end A022341.P13675482791492354392

namespace A022341

/-- `A048297(n)+A048297(n)-A118113(n)` -/
def P13675482791492354392.Spec : Prop :=
  ∀ n, P13675482791492354392.a n = A022341 n

end A022341

/-! ## A022341.P14834434298879767764

`A022340(n+1)+A022340(n)-A085407(n+1)`
-/

namespace A022341.P14834434298879767764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022340 (n + 1) + (A022340 n - A085407 (n + 1))

end

end A022341.P14834434298879767764

namespace A022341

/-- `A022340(n+1)+A022340(n)-A085407(n+1)` -/
def P14834434298879767764.Spec : Prop :=
  ∀ n, P14834434298879767764.a n = A022341 n

end A022341

/-! ## A022341.P18179188643401706179

`A022340(A022342(n+1))+1`
-/

namespace A022341.P18179188643401706179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022340 (A022342 (n + 1)).toNat + 1

end

end A022341.P18179188643401706179

namespace A022341

/-- `A022340(A022342(n+1))+1` -/
def P18179188643401706179.Spec : Prop :=
  ∀ n, P18179188643401706179.a n = A022341 n

end A022341

/-! ## A022341.P3157062627479178453

`A118113(A022342(n+1))`
-/

namespace A022341.P3157062627479178453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118113 (A022342 (n + 1)).toNat

end

end A022341.P3157062627479178453

namespace A022341

/-- `A118113(A022342(n+1))` -/
def P3157062627479178453.Spec : Prop :=
  ∀ n, P3157062627479178453.a n = A022341 n

end A022341

/-! ## A022341.P12900871526564034021

`A118113(A003622(n+1)-(n+1))`
-/

namespace A022341.P12900871526564034021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118113 (A003622 (n + 1) - (n + 1 : ℤ)).toNat

end

end A022341.P12900871526564034021

namespace A022341

/-- `A118113(A003622(n+1)-(n+1))` -/
def P12900871526564034021.Spec : Prop :=
  ∀ n, P12900871526564034021.a n = A022341 n

end A022341

/-! ## A022341.P431600853854289040

`record[xor(n, 2*n)+1+n]`
-/

namespace A022341.P431600853854289040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n) + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022341.P431600853854289040

namespace A022341

/-- `record[xor(n, 2*n)+1+n]` -/
def P431600853854289040.Spec : Prop :=
  ∀ n, (P431600853854289040.a n : ℤ) = A022341 n

end A022341

/-! ## A022341.P3522952457496873649

`2*record[and(2*n, 3*n)]+1`
-/

namespace A022341.P3522952457496873649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n) (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A022341.P3522952457496873649

namespace A022341

/-- `2*record[and(2*n, 3*n)]+1` -/
def P3522952457496873649.Spec : Prop :=
  ∀ n, (P3522952457496873649.a n : ℤ) = A022341 n

end A022341

/-! ## A022341.P3254729581192614419

`record[n-xor(1-2*n, n-2)]`
-/

namespace A022341.P3254729581192614419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.xor (1 - (2 * n : ℤ)) ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022341.P3254729581192614419

namespace A022341

/-- `record[n-xor(1-2*n, n-2)]` -/
def P3254729581192614419.Spec : Prop :=
  ∀ n, P3254729581192614419.a n = A022341 n

end A022341

/-! ## A022341.P7143698284149629980

`A003714(eq[1, A003849(n)])`
-/

namespace A022341.P7143698284149629980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022341.P7143698284149629980

namespace A022341

/-- `A003714(eq[1, A003849(n)])` -/
def P7143698284149629980.Spec : Prop :=
  ∀ n, P7143698284149629980.a n = A022341 n

end A022341

/-! ## A022341.P4846861922057549984

`∩[A003714(n), A118113(n)]`
-/

namespace A022341.P4846861922057549984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A022341.P4846861922057549984

namespace A022341

/-- `∩[A003714(n), A118113(n)]` -/
def P4846861922057549984.Spec : Prop :=
  ∀ n, (P4846861922057549984.a n : ℤ) = A022341 n

end A022341

/-! ## A022341.P15426218037745681656

`A003714(A001950(n+1)-1)`
-/

namespace A022341.P15426218037745681656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A001950 (n + 1) - 1).toNat

end

end A022341.P15426218037745681656

namespace A022341

/-- `A003714(A001950(n+1)-1)` -/
def P15426218037745681656.Spec : Prop :=
  ∀ n, P15426218037745681656.a n = A022341 n

end A022341

/-!
# A022342: Integers with "even" Zeckendorf expansions (do not end with ... + F_2 = ... + 1) (the Fibonacci-even numbers); also, apart from first term, a(n) = Fibonacci successor to n-1.

The programs for A022342, the canonical program `A022342.P1190268710273068250` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022342 has offset 1).

The definition of A022342 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022342.P1190268710273068250

`floor((n+1)*ϕ)-1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022342

/-- `floor((n+1)*ϕ)-1` -/
def P1190268710273068250.Spec : Prop :=
  ∀ n, P1190268710273068250.a n = A022342 (n + 1)

theorem P1190268710273068250.correct : P1190268710273068250.Spec := by
  intro n
  simp only [A022342, Nat.add_sub_cancel]

end A022342

/-! ## A022342.P9636337680487000028

`A022290(2*A003714(n))`
-/

namespace A022342.P9636337680487000028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (2 * A003714 n).toNat

end

end A022342.P9636337680487000028

namespace A022342

/-- `A022290(2*A003714(n))` -/
def P9636337680487000028.Spec : Prop :=
  ∀ n, P9636337680487000028.a n = A022342 (n + 1)

end A022342

/-! ## A022342.P13666769655222510928

`xor(-floor(ϕ*(n+1)), -1)`
-/

namespace A022342.P13666769655222510928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-⌊Real.goldenRatio * (n + 1 : ℝ)⌋) (-1)

end

end A022342.P13666769655222510928

namespace A022342

/-- `xor(-floor(ϕ*(n+1)), -1)` -/
def P13666769655222510928.Spec : Prop :=
  ∀ n, P13666769655222510928.a n = A022342 (n + 1)

end A022342

/-! ## A022342.P10494211400931670769

`floor(C(n+1, n)/ϕ+n)`
-/

namespace A022342.P10494211400931670769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 1) n : ℝ) / Real.goldenRatio + (n : ℝ)⌋

end

end A022342.P10494211400931670769

namespace A022342

/-- `floor(C(n+1, n)/ϕ+n)` -/
def P10494211400931670769.Spec : Prop :=
  ∀ n, P10494211400931670769.a n = A022342 (n + 1)

end A022342

/-! ## A022342.P1976152797797993940

`abs(1-∑[Δ[floor(ϕ*n)]!])`
-/

namespace A022342.P1976152797797993940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A022342.P1976152797797993940

namespace A022342

/-- `abs(1-∑[Δ[floor(ϕ*n)]!])` -/
def P1976152797797993940.Spec : Prop :=
  ∀ n, P1976152797797993940.a n = A022342 (n + 1)

end A022342

/-! ## A022342.P11830790969601073075

`floor(∑[n-1+ϕ]-C(n, 2))`
-/

namespace A022342.P11830790969601073075
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℝ) + Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j - (Nat.choose n 2 : ℝ)⌋

end

end A022342.P11830790969601073075

namespace A022342

/-- `floor(∑[n-1+ϕ]-C(n, 2))` -/
def P11830790969601073075.Spec : Prop :=
  ∀ n, P11830790969601073075.a n = A022342 (n + 1)

end A022342

/-! ## A022342.P2032714757402145823

`ceil(ϕ*(n+1)-gcd(2, 2*n))`
-/

namespace A022342.P2032714757402145823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n + 1 : ℝ) - (Nat.gcd 2 (2 * n) : ℝ)⌉

end

end A022342.P2032714757402145823

namespace A022342

/-- `ceil(ϕ*(n+1)-gcd(2, 2*n))` -/
def P2032714757402145823.Spec : Prop :=
  ∀ n, P2032714757402145823.a n = A022342 (n + 1)

end A022342

/-! ## A022342.P11262415499522650884

`ceil(C(n+1, n)/ϕ+n-1)`
-/

namespace A022342.P11262415499522650884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 1) n : ℝ) / Real.goldenRatio + ((n : ℤ) - 1 : ℝ)⌉

end

end A022342.P11262415499522650884

namespace A022342

/-- `ceil(C(n+1, n)/ϕ+n-1)` -/
def P11262415499522650884.Spec : Prop :=
  ∀ n, P11262415499522650884.a n = A022342 (n + 1)

end A022342

/-! ## A022342.P17872483201377833982

`lt[(n+1)/floor((n+2)/ϕ), ϕ]`
-/

namespace A022342.P17872483201377833982
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (⌊(n + 2 : ℝ) / Real.goldenRatio⌋ : ℚ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A022342.P17872483201377833982

namespace A022342

/-- `lt[(n+1)/floor((n+2)/ϕ), ϕ]` -/
def P17872483201377833982.Spec : Prop :=
  ∀ n, (P17872483201377833982.a n : ℤ) = A022342 (n + 1)

end A022342

/-! ## A022342.P4183598168135064785

`floor(gcd(n, (2*n)²)+(n+1)/ϕ)`
-/

namespace A022342.P4183598168135064785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd n ((2 * n) ^ 2) : ℝ) + (n + 1 : ℝ) / Real.goldenRatio⌋

end

end A022342.P4183598168135064785

namespace A022342

/-- `floor(gcd(n, (2*n)²)+(n+1)/ϕ)` -/
def P4183598168135064785.Spec : Prop :=
  ∀ n, P4183598168135064785.a n = A022342 (n + 1)

end A022342

/-! ## A022342.P13735289205663140841

`floor(gcd(n+1, ∑[2*n])/ϕ+n)`
-/

namespace A022342.P13735289205663140841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ) / Real.goldenRatio + (n : ℝ)⌋

end

end A022342.P13735289205663140841

namespace A022342

/-- `floor(gcd(n+1, ∑[2*n])/ϕ+n)` -/
def P13735289205663140841.Spec : Prop :=
  ∀ n, P13735289205663140841.a n = A022342 (n + 1)

end A022342

/-! ## A022342.P1294490511447507397

`floor((n+1)²/(a(n-1)+3)+n)` with `a(0)=0`
-/

namespace A022342.P1294490511447507397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊((n + 1) ^ 2 : ℚ) / (a (n - 1) + 3 : ℚ) + (n : ℚ)⌋

end

end A022342.P1294490511447507397

namespace A022342

/-- `floor((n+1)²/(a(n-1)+3)+n)` -/
def P1294490511447507397.Spec : Prop :=
  ∀ n, P1294490511447507397.a n = A022342 (n + 1)

end A022342

/-! ## A022342.P552071679095229325

`floor(A191402(n)/2)`
-/

namespace A022342.P552071679095229325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A191402 n : ℚ) / 2⌋

end

end A022342.P552071679095229325

namespace A022342

/-- `floor(A191402(n)/2)` -/
def P552071679095229325.Spec : Prop :=
  ∀ n, P552071679095229325.a n = A022342 (n + 1)

end A022342

/-! ## A022342.P6795708006967465032

`comp[A003622(n+1)]`
-/

namespace A022342.P6795708006967465032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022342.P6795708006967465032

namespace A022342

/-- `comp[A003622(n+1)]` -/
def P6795708006967465032.Spec : Prop :=
  ∀ n, (P6795708006967465032.a n : ℤ) = A022342 (n + 1)

end A022342

/-! ## A022342.P17624895847311655332

`comp[A004957(n)-2]`
-/

namespace A022342.P17624895847311655332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004957 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022342.P17624895847311655332

namespace A022342

/-- `comp[A004957(n)-2]` -/
def P17624895847311655332.Spec : Prop :=
  ∀ n, (P17624895847311655332.a n : ℤ) = A022342 (n + 1)

end A022342

/-!
# A022343: Expansion of 1/((1-x)*(1-5*x)*(1-6*x)*(1-10*x)).

The programs for A022343, the canonical program `A022343.P17149137804363743511` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022343 has offset 0).

The definition of A022343 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022343.P17149137804363743511

`16*a(n-1)-60*a(n-2)+(5^(n+1)-1)/4` with `a(0)=1, a(1)=22`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022343

/-- `16*a(n-1)-60*a(n-2)+(5^(n+1)-1)/4` -/
def P17149137804363743511.Spec : Prop :=
  ∀ n, P17149137804363743511.a n = (A022343 n : ℚ)

end A022343

/-! ## A022343.P16239405105154992402

`1/180*(9*5^(n+3)+10^(n+3)-9*6^(n+3)-1)`
-/

namespace A022343.P16239405105154992402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 180 * ((9 * 5 ^ (n + 3) + 10 ^ (n + 3) : ℤ) - (9 * 6 ^ (n + 3) : ℤ) - 1 : ℚ)

end

end A022343.P16239405105154992402

namespace A022343

/-- `1/180*(9*5^(n+3)+10^(n+3)-9*6^(n+3)-1)` -/
def P16239405105154992402.Spec : Prop :=
  ∀ n, P16239405105154992402.a n = (A022343 n : ℚ)

end A022343

/-! ## A022343.P118693237720565204

`∑[A019839(n)]`
-/

namespace A022343.P118693237720565204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022343.P118693237720565204

namespace A022343

/-- `∑[A019839(n)]` -/
def P118693237720565204.Spec : Prop :=
  ∀ n, P118693237720565204.a n = A022343 n

end A022343

/-! ## A022343.P8107624797849643146

`2*A016246(n)-A016228(n)`
-/

namespace A022343.P8107624797849643146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016246 n - A016228 n

end

end A022343.P8107624797849643146

namespace A022343

/-- `2*A016246(n)-A016228(n)` -/
def P8107624797849643146.Spec : Prop :=
  ∀ n, P8107624797849643146.a n = A022343 n

end A022343

/-! ## A022343.P9827801616911947604

`2*A021144(n)-A021114(n)`
-/

namespace A022343.P9827801616911947604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021144 n - A021114 n

end

end A022343.P9827801616911947604

namespace A022343

/-- `2*A021144(n)-A021114(n)` -/
def P9827801616911947604.Spec : Prop :=
  ∀ n, P9827801616911947604.a n = A022343 n

end A022343

/-! ## A022343.P8342024244009974043

`2*A021829(n)-A021774(n)`
-/

namespace A022343.P8342024244009974043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021829 n - A021774 n

end

end A022343.P8342024244009974043

namespace A022343

/-- `2*A021829(n)-A021774(n)` -/
def P8342024244009974043.Spec : Prop :=
  ∀ n, P8342024244009974043.a n = A022343 n

end A022343

/-! ## A022343.P8544341412856690681

`A016246(n+1)-A016237(n+1)`
-/

namespace A022343.P8544341412856690681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016246 (n + 1) - A016237 (n + 1)

end

end A022343.P8544341412856690681

namespace A022343

/-- `A016246(n+1)-A016237(n+1)` -/
def P8544341412856690681.Spec : Prop :=
  ∀ n, P8544341412856690681.a n = A022343 n

end A022343

/-!
# A022344: Allan Wechsler's "J determinant" sequence.

The programs for A022344, the canonical program `A022344.P3603512386637391393` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022344 has offset 0).

The definition of A022344 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022344.P3603512386637391393

`floor((n+1)*(1+sqrt(5))/2)²-n*floor((n+1)*(1+sqrt(5))/2)-n²`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022344

/-- `floor((n+1)*(1+sqrt(5))/2)²-n*floor((n+1)*(1+sqrt(5))/2)-n²` -/
def P3603512386637391393.Spec : Prop :=
  ∀ n, P3603512386637391393.a n = A022344 n

theorem P3603512386637391393.correct : P3603512386637391393.Spec := by
  intro n
  simp only [A022344]

end A022344

/-! ## A022344.P17344837198285022800

`comp[floor(ϕ*n)-1]²%(3*floor(n*ϕ²+ϕ)-n)`
-/

namespace A022344.P17344837198285022800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋ - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2 : ℤ) (3 * ⌊(n : ℝ) * Real.goldenRatio ^ 2 + Real.goldenRatio⌋ - (n : ℤ))

end

end A022344.P17344837198285022800

namespace A022344

/-- `comp[floor(ϕ*n)-1]²%(3*floor(n*ϕ²+ϕ)-n)` -/
def P17344837198285022800.Spec : Prop :=
  ∀ n, P17344837198285022800.a n = A022344 n

end A022344

/-! ## A022344.P7331614525356202824

`A005752(A000201(n+1))`
-/

namespace A022344.P7331614525356202824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005752 (A000201 (n + 1)).toNat

end

end A022344.P7331614525356202824

namespace A022344

/-- `A005752(A000201(n+1))` -/
def P7331614525356202824.Spec : Prop :=
  ∀ n, P7331614525356202824.a n = A022344 n

end A022344

/-! ## A022344.P17840070879746099991

`A005752(A066096(n+1))`
-/

namespace A022344.P17840070879746099991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005752 (A066096 (n + 1)).toNat

end

end A022344.P17840070879746099991

namespace A022344

/-- `A005752(A066096(n+1))` -/
def P17840070879746099991.Spec : Prop :=
  ∀ n, P17840070879746099991.a n = A022344 n

end A022344

/-! ## A022344.P6906308506399429471

`A005752(A004956(n+1)-1)`
-/

namespace A022344.P6906308506399429471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005752 (A004956 (n + 1) - 1).toNat

end

end A022344.P6906308506399429471

namespace A022344

/-- `A005752(A004956(n+1)-1)` -/
def P6906308506399429471.Spec : Prop :=
  ∀ n, P6906308506399429471.a n = A022344 n

end A022344

/-! ## A022344.P13462717514891174075

`A005752(A026351(n+1)-1)`
-/

namespace A022344.P13462717514891174075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005752 (A026351 (n + 1) - 1).toNat

end

end A022344.P13462717514891174075

namespace A022344

/-- `A005752(A026351(n+1)-1)` -/
def P13462717514891174075.Spec : Prop :=
  ∀ n, P13462717514891174075.a n = A022344 n

end A022344

/-! ## A022344.P15192786944139950181

`A005752((A035336(n+1)-n)/2)`
-/

namespace A022344.P15192786944139950181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005752 (SequenceMachineLib.roundAway ((A035336 (n + 1) - (n : ℤ) : ℚ) / 2)).toNat

end

end A022344.P15192786944139950181

namespace A022344

/-- `A005752((A035336(n+1)-n)/2)` -/
def P15192786944139950181.Spec : Prop :=
  ∀ n, P15192786944139950181.a n = A022344 n

end A022344

/-! ## A022344.P1861104237690127527

`A005752(A035336(n+1))`
-/

namespace A022344.P1861104237690127527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005752 (A035336 (n + 1)).toNat

end

end A022344.P1861104237690127527

namespace A022344

/-- `A005752(A035336(n+1))` -/
def P1861104237690127527.Spec : Prop :=
  ∀ n, P1861104237690127527.a n = A022344 n

end A022344

/-! ## A022344.P5430652142014711516

`A005752(A035338(n))`
-/

namespace A022344.P5430652142014711516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005752 (A035338 n).toNat

end

end A022344.P5430652142014711516

namespace A022344

/-- `A005752(A035338(n))` -/
def P5430652142014711516.Spec : Prop :=
  ∀ n, P5430652142014711516.a n = A022344 n

end A022344

/-! ## A022344.P4660605834157114351

`A005752(A035340(n))`
-/

namespace A022344.P4660605834157114351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005752 (A035340 n).toNat

end

end A022344.P4660605834157114351

namespace A022344

/-- `A005752(A035340(n))` -/
def P4660605834157114351.Spec : Prop :=
  ∀ n, P4660605834157114351.a n = A022344 n

end A022344

/-!
# A022345: Fibonacci sequence beginning 0, 11.

The programs for A022345, the canonical program `A022345.P3222303767883107132` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022345 has offset 0).

The definition of A022345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022345.P12779853940572961931

`ogf(11x/(1-x-x^2))`
-/

namespace A022345.P12779853940572961931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 11] [1, -1, -1] n

end

end A022345.P12779853940572961931

namespace A022345

/-- `ogf(11x/(1-x-x^2))` -/
def P12779853940572961931.Spec : Prop :=
  ∀ n, P12779853940572961931.a n = A022345 n

end A022345

/-! ## A022345.P3222303767883107132

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=11`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022345

/-- `a(n-1)+a(n-2)` -/
def P3222303767883107132.Spec : Prop :=
  ∀ n, (P3222303767883107132.a n : ℤ) = A022345 n

theorem P3222303767883107132.correct : P3222303767883107132.Spec := by
  intro n
  simp only [A022345]

end A022345

/-! ## A022345.P3308545438996501090

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=0, a(1)=11, a(2)=11`
-/

namespace A022345.P3308545438996501090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 11, 11] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022345.P3308545438996501090

namespace A022345

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P3308545438996501090.Spec : Prop :=
  ∀ n, P3308545438996501090.a n = A022345 n

end A022345

/-! ## A022345.P11331629753888677578

`11*A000045(n)`
-/

namespace A022345.P11331629753888677578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A000045 n

end

end A022345.P11331629753888677578

namespace A022345

/-- `11*A000045(n)` -/
def P11331629753888677578.Spec : Prop :=
  ∀ n, P11331629753888677578.a n = A022345 n

end A022345

/-! ## A022345.P2294212027907805358

`abs(11*A333378(n))`
-/

namespace A022345.P2294212027907805358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |11 * A333378 n|

end

end A022345.P2294212027907805358

namespace A022345

/-- `abs(11*A333378(n))` -/
def P2294212027907805358.Spec : Prop :=
  ∀ n, P2294212027907805358.a n = A022345 n

end A022345

/-! ## A022345.P17858288422564281193

`11*A212804(n+1)`
-/

namespace A022345.P17858288422564281193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A212804 (n + 1)

end

end A022345.P17858288422564281193

namespace A022345

/-- `11*A212804(n+1)` -/
def P17858288422564281193.Spec : Prop :=
  ∀ n, P17858288422564281193.a n = A022345 n

end A022345

/-! ## A022345.P3907474911507997807

`11*(A001611(n)-1)`
-/

namespace A022345.P3907474911507997807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * (A001611 n - 1)

end

end A022345.P3907474911507997807

namespace A022345

/-- `11*(A001611(n)-1)` -/
def P3907474911507997807.Spec : Prop :=
  ∀ n, P3907474911507997807.a n = A022345 n

end A022345

/-! ## A022345.P9781964732884322719

`11*Δ[Δ[record[A212804(n)]]]`
-/

namespace A022345.P9781964732884322719
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * (f1 (n + 1) - f1 n)

end

end A022345.P9781964732884322719

namespace A022345

/-- `11*Δ[Δ[record[A212804(n)]]]` -/
def P9781964732884322719.Spec : Prop :=
  ∀ n, P9781964732884322719.a n = A022345 n

end A022345

/-! ## A022345.P13556002955325580964

`A022093(n)+A000045(n)`
-/

namespace A022345.P13556002955325580964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 n + A000045 n

end

end A022345.P13556002955325580964

namespace A022345

/-- `A022093(n)+A000045(n)` -/
def P13556002955325580964.Spec : Prop :=
  ∀ n, P13556002955325580964.a n = A022345 n

end A022345

/-! ## A022345.P4740597059845932894

`A022089(n)+A022088(n)`
-/

namespace A022345.P4740597059845932894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022089 n + A022088 n

end

end A022345.P4740597059845932894

namespace A022345

/-- `A022089(n)+A022088(n)` -/
def P4740597059845932894.Spec : Prop :=
  ∀ n, P4740597059845932894.a n = A022345 n

end A022345

/-! ## A022345.P12279264664571137853

`A022090(n)+A022087(n)`
-/

namespace A022345.P12279264664571137853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022090 n + A022087 n

end

end A022345.P12279264664571137853

namespace A022345

/-- `A022090(n)+A022087(n)` -/
def P12279264664571137853.Spec : Prop :=
  ∀ n, P12279264664571137853.a n = A022345 n

end A022345

/-! ## A022345.P1811676195064173403

`A022091(n)+A022086(n)`
-/

namespace A022345.P1811676195064173403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022091 n + A022086 n

end

end A022345.P1811676195064173403

namespace A022345

/-- `A022091(n)+A022086(n)` -/
def P1811676195064173403.Spec : Prop :=
  ∀ n, P1811676195064173403.a n = A022345 n

end A022345

/-! ## A022345.P2717055598177623049

`A187891(n)+A022311(n)`
-/

namespace A022345.P2717055598177623049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 n + A022311 n

end

end A022345.P2717055598177623049

namespace A022345

/-- `A187891(n)+A022311(n)` -/
def P2717055598177623049.Spec : Prop :=
  ∀ n, P2717055598177623049.a n = A022345 n

end A022345

/-! ## A022345.P936971536334190692

`A187892(n)+A022310(n)`
-/

namespace A022345.P936971536334190692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187892 n + A022310 n

end

end A022345.P936971536334190692

namespace A022345

/-- `A187892(n)+A022310(n)` -/
def P936971536334190692.Spec : Prop :=
  ∀ n, P936971536334190692.a n = A022345 n

end A022345

/-! ## A022345.P16820677317052449312

`A022346(n)-A000045(n)`
-/

namespace A022345.P16820677317052449312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n - A000045 n

end

end A022345.P16820677317052449312

namespace A022345

/-- `A022346(n)-A000045(n)` -/
def P16820677317052449312.Spec : Prop :=
  ∀ n, P16820677317052449312.a n = A022345 n

end A022345

/-! ## A022345.P16746773883270159138

`A022100(n)-A152163(n)`
-/

namespace A022345.P16746773883270159138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022100 n - A152163 n

end

end A022345.P16746773883270159138

namespace A022345

/-- `A022100(n)-A152163(n)` -/
def P16746773883270159138.Spec : Prop :=
  ∀ n, P16746773883270159138.a n = A022345 n

end A022345

/-! ## A022345.P14502401830395022956

`A022101(n)-A212804(n)`
-/

namespace A022345.P14502401830395022956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 n - A212804 n

end

end A022345.P14502401830395022956

namespace A022345

/-- `A022101(n)-A212804(n)` -/
def P14502401830395022956.Spec : Prop :=
  ∀ n, P14502401830395022956.a n = A022345 n

end A022345

/-! ## A022345.P14982951437315817445

`A022092(n)+A006355(n+1)`
-/

namespace A022345.P14982951437315817445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022092 n + A006355 (n + 1)

end

end A022345.P14982951437315817445

namespace A022345

/-- `A022092(n)+A006355(n+1)` -/
def P14982951437315817445.Spec : Prop :=
  ∀ n, P14982951437315817445.a n = A022345 n

end A022345

/-! ## A022345.P10336152642275007897

`A118658(n+1)+A022092(n)`
-/

namespace A022345.P10336152642275007897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 (n + 1) + A022092 n

end

end A022345.P10336152642275007897

namespace A022345

/-- `A118658(n+1)+A022092(n)` -/
def P10336152642275007897.Spec : Prop :=
  ∀ n, P10336152642275007897.a n = A022345 n

end A022345

/-! ## A022345.P553101782869145061

`A152163(n+1)+A022101(n)`
-/

namespace A022345.P553101782869145061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 (n + 1) + A022101 n

end

end A022345.P553101782869145061

namespace A022345

/-- `A152163(n+1)+A022101(n)` -/
def P553101782869145061.Spec : Prop :=
  ∀ n, P553101782869145061.a n = A022345 n

end A022345

/-!
# A022346: Fibonacci sequence beginning 0, 12.

The programs for A022346, the canonical program `A022346.P959763871011371913` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022346 has offset 0).

The definition of A022346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022346.P8756825994816506259

`ogf(12x/(1-x-x^2))`
-/

namespace A022346.P8756825994816506259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 12] [1, -1, -1] n

end

end A022346.P8756825994816506259

namespace A022346

/-- `ogf(12x/(1-x-x^2))` -/
def P8756825994816506259.Spec : Prop :=
  ∀ n, P8756825994816506259.a n = A022346 n

end A022346

/-! ## A022346.P959763871011371913

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=12`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022346

/-- `a(n-1)+a(n-2)` -/
def P959763871011371913.Spec : Prop :=
  ∀ n, (P959763871011371913.a n : ℤ) = A022346 n

theorem P959763871011371913.correct : P959763871011371913.Spec := by
  intro n
  simp only [A022346]

end A022346

/-! ## A022346.P6044218855647785815

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=0, a(1)=12, a(2)=12`
-/

namespace A022346.P6044218855647785815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 12, 12] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022346.P6044218855647785815

namespace A022346

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P6044218855647785815.Spec : Prop :=
  ∀ n, P6044218855647785815.a n = A022346 n

end A022346

/-! ## A022346.P5895131466872653182

`2*A022089(n)`
-/

namespace A022346.P5895131466872653182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022089 n

end

end A022346.P5895131466872653182

namespace A022346

/-- `2*A022089(n)` -/
def P5895131466872653182.Spec : Prop :=
  ∀ n, P5895131466872653182.a n = A022346 n

end A022346

/-! ## A022346.P8483653499329863023

`3*A022087(n)`
-/

namespace A022346.P8483653499329863023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A022087 n

end

end A022346.P8483653499329863023

namespace A022346

/-- `3*A022087(n)` -/
def P8483653499329863023.Spec : Prop :=
  ∀ n, P8483653499329863023.a n = A022346 n

end A022346

/-! ## A022346.P2386129090523353466

`4*A022086(n)`
-/

namespace A022346.P2386129090523353466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A022086 n

end

end A022346.P2386129090523353466

namespace A022346

/-- `4*A022086(n)` -/
def P2386129090523353466.Spec : Prop :=
  ∀ n, P2386129090523353466.a n = A022346 n

end A022346

/-! ## A022346.P3506680417996539901

`12*A000045(n)`
-/

namespace A022346.P3506680417996539901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A000045 n

end

end A022346.P3506680417996539901

namespace A022346

/-- `12*A000045(n)` -/
def P3506680417996539901.Spec : Prop :=
  ∀ n, P3506680417996539901.a n = A022346 n

end A022346

/-! ## A022346.P11278916805878754204

`4*(A187893(n)-1)`
-/

namespace A022346.P11278916805878754204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A187893 n - 1)

end

end A022346.P11278916805878754204

namespace A022346

/-- `4*(A187893(n)-1)` -/
def P11278916805878754204.Spec : Prop :=
  ∀ n, P11278916805878754204.a n = A022346 n

end A022346

/-! ## A022346.P4488829246205177795

`6*A006355(n+1)`
-/

namespace A022346.P4488829246205177795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A006355 (n + 1)

end

end A022346.P4488829246205177795

namespace A022346

/-- `6*A006355(n+1)` -/
def P4488829246205177795.Spec : Prop :=
  ∀ n, P4488829246205177795.a n = A022346 n

end A022346

/-! ## A022346.P13281261824345501251

`6*A118658(n+1)`
-/

namespace A022346.P13281261824345501251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A118658 (n + 1)

end

end A022346.P13281261824345501251

namespace A022346

/-- `6*A118658(n+1)` -/
def P13281261824345501251.Spec : Prop :=
  ∀ n, P13281261824345501251.a n = A022346 n

end A022346

/-! ## A022346.P18361972218306583510

`3/2*A022091(n)`
-/

namespace A022346.P18361972218306583510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A022091 n : ℚ)

end

end A022346.P18361972218306583510

namespace A022346

/-- `3/2*A022091(n)` -/
def P18361972218306583510.Spec : Prop :=
  ∀ n, P18361972218306583510.a n = (A022346 n : ℚ)

end A022346

/-! ## A022346.P105665636092694692

`6*A198834(n+2)`
-/

namespace A022346.P105665636092694692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A198834 (n + 2)

end

end A022346.P105665636092694692

namespace A022346

/-- `6*A198834(n+2)` -/
def P105665636092694692.Spec : Prop :=
  ∀ n, P105665636092694692.a n = A022346 n

end A022346

/-! ## A022346.P10250574083720622929

`4/3*A022092(n)`
-/

namespace A022346.P10250574083720622929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A022092 n : ℚ)

end

end A022346.P10250574083720622929

namespace A022346

/-- `4/3*A022092(n)` -/
def P10250574083720622929.Spec : Prop :=
  ∀ n, P10250574083720622929.a n = (A022346 n : ℚ)

end A022346

/-! ## A022346.P9874828105537180551

`12*(A001611(n)-1)`
-/

namespace A022346.P9874828105537180551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (A001611 n - 1)

end

end A022346.P9874828105537180551

namespace A022346

/-- `12*(A001611(n)-1)` -/
def P9874828105537180551.Spec : Prop :=
  ∀ n, P9874828105537180551.a n = A022346 n

end A022346

/-! ## A022346.P13790703669796978640

`6*A214927(2*(n+1))`
-/

namespace A022346.P13790703669796978640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A214927 (2 * (n + 1))

end

end A022346.P13790703669796978640

namespace A022346

/-- `6*A214927(2*(n+1))` -/
def P13790703669796978640.Spec : Prop :=
  ∀ n, P13790703669796978640.a n = A022346 n

end A022346

/-! ## A022346.P5828832626323341060

`A022345(n)+A000045(n)`
-/

namespace A022346.P5828832626323341060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A000045 n

end

end A022346.P5828832626323341060

namespace A022346

/-- `A022345(n)+A000045(n)` -/
def P5828832626323341060.Spec : Prop :=
  ∀ n, P5828832626323341060.a n = A022346 n

end A022346

/-! ## A022346.P15786712536442127721

`A022090(n)+A022088(n)`
-/

namespace A022346.P15786712536442127721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022090 n + A022088 n

end

end A022346.P15786712536442127721

namespace A022346

/-- `A022090(n)+A022088(n)` -/
def P15786712536442127721.Spec : Prop :=
  ∀ n, P15786712536442127721.a n = A022346 n

end A022346

/-! ## A022346.P211123391164459038

`A022091(n)+A022087(n)`
-/

namespace A022346.P211123391164459038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022091 n + A022087 n

end

end A022346.P211123391164459038

namespace A022346

/-- `A022091(n)+A022087(n)` -/
def P211123391164459038.Spec : Prop :=
  ∀ n, P211123391164459038.a n = A022346 n

end A022346

/-! ## A022346.P12077871230626467549

`A022092(n)+A022086(n)`
-/

namespace A022346.P12077871230626467549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022092 n + A022086 n

end

end A022346.P12077871230626467549

namespace A022346

/-- `A022092(n)+A022086(n)` -/
def P12077871230626467549.Spec : Prop :=
  ∀ n, P12077871230626467549.a n = A022346 n

end A022346

/-! ## A022346.P2517842150432374901

`A187891(n)+A022312(n)`
-/

namespace A022346.P2517842150432374901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 n + A022312 n

end

end A022346.P2517842150432374901

namespace A022346

/-- `A187891(n)+A022312(n)` -/
def P2517842150432374901.Spec : Prop :=
  ∀ n, P2517842150432374901.a n = A022346 n

end A022346

/-!
# A022347: Fibonacci sequence beginning 0, 13.

The programs for A022347, the canonical program `A022347.P13222596601354913426` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022347 has offset 0).

The definition of A022347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022347.P14356380737566489987

`ogf(13x/(1-x-x^2))`
-/

namespace A022347.P14356380737566489987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 13] [1, -1, -1] n

end

end A022347.P14356380737566489987

namespace A022347

/-- `ogf(13x/(1-x-x^2))` -/
def P14356380737566489987.Spec : Prop :=
  ∀ n, P14356380737566489987.a n = A022347 n

end A022347

/-! ## A022347.P13222596601354913426

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=13`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022347

/-- `a(n-1)+a(n-2)` -/
def P13222596601354913426.Spec : Prop :=
  ∀ n, (P13222596601354913426.a n : ℤ) = A022347 n

theorem P13222596601354913426.correct : P13222596601354913426.Spec := by
  intro n
  simp only [A022347]

end A022347

/-! ## A022347.P11657545191668635364

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=13, a(2)=13`
-/

namespace A022347.P11657545191668635364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 13, 13] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A022347.P11657545191668635364

namespace A022347

/-- `2*a(n-1)-a(n-3)` -/
def P11657545191668635364.Spec : Prop :=
  ∀ n, P11657545191668635364.a n = A022347 n

end A022347

/-! ## A022347.P12682289727445163858

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=0, a(1)=13, a(2)=13`
-/

namespace A022347.P12682289727445163858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 13, 13] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022347.P12682289727445163858

namespace A022347

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P12682289727445163858.Spec : Prop :=
  ∀ n, P12682289727445163858.a n = A022347 n

end A022347

/-! ## A022347.P1041826028407669146

`13*A000045(n)`
-/

namespace A022347.P1041826028407669146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A000045 n

end

end A022347.P1041826028407669146

namespace A022347

/-- `13*A000045(n)` -/
def P1041826028407669146.Spec : Prop :=
  ∀ n, P1041826028407669146.a n = A022347 n

end A022347

/-! ## A022347.P3802852535481856740

`13*(A001611(n)-1)`
-/

namespace A022347.P3802852535481856740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * (A001611 n - 1)

end

end A022347.P3802852535481856740

namespace A022347

/-- `13*(A001611(n)-1)` -/
def P3802852535481856740.Spec : Prop :=
  ∀ n, P3802852535481856740.a n = A022347 n

end A022347

/-! ## A022347.P2986533933154699034

`A022346(n)+A000045(n)`
-/

namespace A022347.P2986533933154699034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A000045 n

end

end A022347.P2986533933154699034

namespace A022347

/-- `A022346(n)+A000045(n)` -/
def P2986533933154699034.Spec : Prop :=
  ∀ n, P2986533933154699034.a n = A022347 n

end A022347

/-! ## A022347.P8330533499390307270

`A022090(n)+A022089(n)`
-/

namespace A022347.P8330533499390307270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022090 n + A022089 n

end

end A022347.P8330533499390307270

namespace A022347

/-- `A022090(n)+A022089(n)` -/
def P8330533499390307270.Spec : Prop :=
  ∀ n, P8330533499390307270.a n = A022347 n

end A022347

/-! ## A022347.P3436541394832610866

`A022091(n)+A022088(n)`
-/

namespace A022347.P3436541394832610866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022091 n + A022088 n

end

end A022347.P3436541394832610866

namespace A022347

/-- `A022091(n)+A022088(n)` -/
def P3436541394832610866.Spec : Prop :=
  ∀ n, P3436541394832610866.a n = A022347 n

end A022347

/-! ## A022347.P13608590873261195798

`A022092(n)+A022087(n)`
-/

namespace A022347.P13608590873261195798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022092 n + A022087 n

end

end A022347.P13608590873261195798

namespace A022347

/-- `A022092(n)+A022087(n)` -/
def P13608590873261195798.Spec : Prop :=
  ∀ n, P13608590873261195798.a n = A022347 n

end A022347

/-! ## A022347.P15054495797725225655

`A022093(n)+A022086(n)`
-/

namespace A022347.P15054495797725225655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 n + A022086 n

end

end A022347.P15054495797725225655

namespace A022347

/-- `A022093(n)+A022086(n)` -/
def P15054495797725225655.Spec : Prop :=
  ∀ n, P15054495797725225655.a n = A022347 n

end A022347

/-! ## A022347.P10471530865716591812

`A187891(n)+A022313(n)`
-/

namespace A022347.P10471530865716591812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 n + A022313 n

end

end A022347.P10471530865716591812

namespace A022347

/-- `A187891(n)+A022313(n)` -/
def P10471530865716591812.Spec : Prop :=
  ∀ n, P10471530865716591812.a n = A022347 n

end A022347

/-! ## A022347.P10639875437731275852

`A187892(n)+A022312(n)`
-/

namespace A022347.P10639875437731275852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187892 n + A022312 n

end

end A022347.P10639875437731275852

namespace A022347

/-- `A187892(n)+A022312(n)` -/
def P10639875437731275852.Spec : Prop :=
  ∀ n, P10639875437731275852.a n = A022347 n

end A022347

/-! ## A022347.P1684888157188160384

`A022107(n)-A000285(n)`
-/

namespace A022347.P1684888157188160384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022107 n - A000285 n

end

end A022347.P1684888157188160384

namespace A022347

/-- `A022107(n)-A000285(n)` -/
def P1684888157188160384.Spec : Prop :=
  ∀ n, P1684888157188160384.a n = A022347 n

end A022347

/-! ## A022347.P13025682720229707033

`A022348(n)-A000045(n)`
-/

namespace A022347.P13025682720229707033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n - A000045 n

end

end A022347.P13025682720229707033

namespace A022347

/-- `A022348(n)-A000045(n)` -/
def P13025682720229707033.Spec : Prop :=
  ∀ n, P13025682720229707033.a n = A022347 n

end A022347

/-! ## A022347.P10989999475141858683

`A022369(n)-A000032(n)`
-/

namespace A022347.P10989999475141858683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022369 n - A000032 n

end

end A022347.P10989999475141858683

namespace A022347

/-- `A022369(n)-A000032(n)` -/
def P10989999475141858683.Spec : Prop :=
  ∀ n, P10989999475141858683.a n = A022347 n

end A022347

/-! ## A022347.P8584813252795413687

`A022371(n)-A001060(n)`
-/

namespace A022347.P8584813252795413687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022371 n - A001060 n

end

end A022347.P8584813252795413687

namespace A022347

/-- `A022371(n)-A001060(n)` -/
def P8584813252795413687.Spec : Prop :=
  ∀ n, P8584813252795413687.a n = A022347 n

end A022347

/-! ## A022347.P8838822672746249572

`A022381(n)-A013655(n)`
-/

namespace A022347.P8838822672746249572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022381 n - A013655 n

end

end A022347.P8838822672746249572

namespace A022347

/-- `A022381(n)-A013655(n)` -/
def P8838822672746249572.Spec : Prop :=
  ∀ n, P8838822672746249572.a n = A022347 n

end A022347

/-! ## A022347.P7414984738639194394

`A022370(n)-A020695(n)`
-/

namespace A022347.P7414984738639194394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022370 n - A020695 n

end

end A022347.P7414984738639194394

namespace A022347

/-- `A022370(n)-A020695(n)` -/
def P7414984738639194394.Spec : Prop :=
  ∀ n, P7414984738639194394.a n = A022347 n

end A022347

/-! ## A022347.P15632355154148938238

`A022108(n)-A022095(n)`
-/

namespace A022347.P15632355154148938238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022108 n - A022095 n

end

end A022347.P15632355154148938238

namespace A022347

/-- `A022108(n)-A022095(n)` -/
def P15632355154148938238.Spec : Prop :=
  ∀ n, P15632355154148938238.a n = A022347 n

end A022347

/-!
# A022348: Fibonacci sequence beginning 0, 14.

The programs for A022348, the canonical program `A022348.P5230939691613285964` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022348 has offset 0).

The definition of A022348 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022348.P5230939691613285964

`14*A000045(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022348

/-- `14*A000045(n)` -/
def P5230939691613285964.Spec : Prop :=
  ∀ n, P5230939691613285964.a n = A022348 n

theorem P5230939691613285964.correct : P5230939691613285964.Spec := by
  intro n
  simp only [A022348]

end A022348

/-! ## A022348.P16279265504163150069

`ogf(14x/(1-x-x^2))`
-/

namespace A022348.P16279265504163150069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 14] [1, -1, -1] n

end

end A022348.P16279265504163150069

namespace A022348

/-- `ogf(14x/(1-x-x^2))` -/
def P16279265504163150069.Spec : Prop :=
  ∀ n, P16279265504163150069.a n = A022348 n

end A022348

/-! ## A022348.P10532313384596523720

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=14`
-/

namespace A022348.P10532313384596523720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 14] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022348.P10532313384596523720

namespace A022348

/-- `a(n-1)+a(n-2)` -/
def P10532313384596523720.Spec : Prop :=
  ∀ n, (P10532313384596523720.a n : ℤ) = A022348 n

end A022348

/-! ## A022348.P18289456266092222439

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=14, a(2)=14`
-/

namespace A022348.P18289456266092222439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 14, 14] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A022348.P18289456266092222439

namespace A022348

/-- `2*a(n-1)-a(n-3)` -/
def P18289456266092222439.Spec : Prop :=
  ∀ n, P18289456266092222439.a n = A022348 n

end A022348

/-! ## A022348.P11336882613128080514

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=0, a(1)=14, a(2)=14`
-/

namespace A022348.P11336882613128080514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 14, 14] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022348.P11336882613128080514

namespace A022348

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P11336882613128080514.Spec : Prop :=
  ∀ n, P11336882613128080514.a n = A022348 n

end A022348

/-! ## A022348.P11710679295591944024

`2*A022090(n)`
-/

namespace A022348.P11710679295591944024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022090 n

end

end A022348.P11710679295591944024

namespace A022348

/-- `2*A022090(n)` -/
def P11710679295591944024.Spec : Prop :=
  ∀ n, P11710679295591944024.a n = A022348 n

end A022348

/-! ## A022348.P12667241214370048712

`7*A006355(n+1)`
-/

namespace A022348.P12667241214370048712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A006355 (n + 1)

end

end A022348.P12667241214370048712

namespace A022348

/-- `7*A006355(n+1)` -/
def P12667241214370048712.Spec : Prop :=
  ∀ n, P12667241214370048712.a n = A022348 n

end A022348

/-! ## A022348.P11545476428623492580

`7*A118658(n+1)`
-/

namespace A022348.P11545476428623492580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A118658 (n + 1)

end

end A022348.P11545476428623492580

namespace A022348

/-- `7*A118658(n+1)` -/
def P11545476428623492580.Spec : Prop :=
  ∀ n, P11545476428623492580.a n = A022348 n

end A022348

/-! ## A022348.P9435464005322556571

`7*(A001588(n)-1)`
-/

namespace A022348.P9435464005322556571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A001588 n - 1)

end

end A022348.P9435464005322556571

namespace A022348

/-- `7*(A001588(n)-1)` -/
def P9435464005322556571.Spec : Prop :=
  ∀ n, P9435464005322556571.a n = A022348 n

end A022348

/-! ## A022348.P1091083694903676596

`7*A198834(n+2)`
-/

namespace A022348.P1091083694903676596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A198834 (n + 2)

end

end A022348.P1091083694903676596

namespace A022348

/-- `7*A198834(n+2)` -/
def P1091083694903676596.Spec : Prop :=
  ∀ n, P1091083694903676596.a n = A022348 n

end A022348

/-! ## A022348.P6901109348860302222

`14*(A001611(n)-1)`
-/

namespace A022348.P6901109348860302222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * (A001611 n - 1)

end

end A022348.P6901109348860302222

namespace A022348

/-- `14*(A001611(n)-1)` -/
def P6901109348860302222.Spec : Prop :=
  ∀ n, P6901109348860302222.a n = A022348 n

end A022348

/-! ## A022348.P13759204235556699313

`14*A103609(2*n)`
-/

namespace A022348.P13759204235556699313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A103609 (2 * n)

end

end A022348.P13759204235556699313

namespace A022348

/-- `14*A103609(2*n)` -/
def P13759204235556699313.Spec : Prop :=
  ∀ n, P13759204235556699313.a n = A022348 n

end A022348

/-! ## A022348.P16783574802800939154

`A022347(n)+A000045(n)`
-/

namespace A022348.P16783574802800939154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A000045 n

end

end A022348.P16783574802800939154

namespace A022348

/-- `A022347(n)+A000045(n)` -/
def P16783574802800939154.Spec : Prop :=
  ∀ n, P16783574802800939154.a n = A022348 n

end A022348

/-! ## A022348.P15899828035069257012

`A022091(n)+A022089(n)`
-/

namespace A022348.P15899828035069257012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022091 n + A022089 n

end

end A022348.P15899828035069257012

namespace A022348

/-- `A022091(n)+A022089(n)` -/
def P15899828035069257012.Spec : Prop :=
  ∀ n, P15899828035069257012.a n = A022348 n

end A022348

/-! ## A022348.P2211727806861343735

`A022092(n)+A022088(n)`
-/

namespace A022348.P2211727806861343735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022092 n + A022088 n

end

end A022348.P2211727806861343735

namespace A022348

/-- `A022092(n)+A022088(n)` -/
def P2211727806861343735.Spec : Prop :=
  ∀ n, P2211727806861343735.a n = A022348 n

end A022348

/-! ## A022348.P11341832766884463728

`A022093(n)+A022087(n)`
-/

namespace A022348.P11341832766884463728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 n + A022087 n

end

end A022348.P11341832766884463728

namespace A022348

/-- `A022093(n)+A022087(n)` -/
def P11341832766884463728.Spec : Prop :=
  ∀ n, P11341832766884463728.a n = A022348 n

end A022348

/-! ## A022348.P518239575752955111

`A022345(n)+A022086(n)`
-/

namespace A022348.P518239575752955111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022086 n

end

end A022348.P518239575752955111

namespace A022348

/-- `A022345(n)+A022086(n)` -/
def P518239575752955111.Spec : Prop :=
  ∀ n, P518239575752955111.a n = A022348 n

end A022348

/-! ## A022348.P10495937073718363260

`A187891(n)+A022314(n)`
-/

namespace A022348.P10495937073718363260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 n + A022314 n

end

end A022348.P10495937073718363260

namespace A022348

/-- `A187891(n)+A022314(n)` -/
def P10495937073718363260.Spec : Prop :=
  ∀ n, P10495937073718363260.a n = A022348 n

end A022348

/-! ## A022348.P10973712242815493249

`A187892(n)+A022313(n)`
-/

namespace A022348.P10973712242815493249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187892 n + A022313 n

end

end A022348.P10973712242815493249

namespace A022348

/-- `A187892(n)+A022313(n)` -/
def P10973712242815493249.Spec : Prop :=
  ∀ n, P10973712242815493249.a n = A022348 n

end A022348

/-! ## A022348.P15412097084719118532

`A022117(n)-A000032(n)`
-/

namespace A022348.P15412097084719118532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022117 n - A000032 n

end

end A022348.P15412097084719118532

namespace A022348

/-- `A022117(n)-A000032(n)` -/
def P15412097084719118532.Spec : Prop :=
  ∀ n, P15412097084719118532.a n = A022348 n

end A022348

/-!
# A022349: Fibonacci sequence beginning 0, 15.

The programs for A022349, the canonical program `A022349.P10870212278406772653` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022349 has offset 0).

The definition of A022349 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022349.P10870212278406772653

`15*A000045(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022349

/-- `15*A000045(n)` -/
def P10870212278406772653.Spec : Prop :=
  ∀ n, P10870212278406772653.a n = A022349 n

theorem P10870212278406772653.correct : P10870212278406772653.Spec := by
  intro n
  simp only [A022349]

end A022349

/-! ## A022349.P15935793456435450198

`ogf(15x/(1-x-x^2))`
-/

namespace A022349.P15935793456435450198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 15] [1, -1, -1] n

end

end A022349.P15935793456435450198

namespace A022349

/-- `ogf(15x/(1-x-x^2))` -/
def P15935793456435450198.Spec : Prop :=
  ∀ n, P15935793456435450198.a n = A022349 n

end A022349

/-! ## A022349.P7261967198565325152

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=15`
-/

namespace A022349.P7261967198565325152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 15] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022349.P7261967198565325152

namespace A022349

/-- `a(n-1)+a(n-2)` -/
def P7261967198565325152.Spec : Prop :=
  ∀ n, (P7261967198565325152.a n : ℤ) = A022349 n

end A022349

/-! ## A022349.P4064192516688315225

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=15, a(2)=15`
-/

namespace A022349.P4064192516688315225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 15, 15] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A022349.P4064192516688315225

namespace A022349

/-- `2*a(n-1)-a(n-3)` -/
def P4064192516688315225.Spec : Prop :=
  ∀ n, P4064192516688315225.a n = A022349 n

end A022349

/-! ## A022349.P3418960797633263404

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=0, a(1)=15, a(2)=15`
-/

namespace A022349.P3418960797633263404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 15, 15] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022349.P3418960797633263404

namespace A022349

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P3418960797633263404.Spec : Prop :=
  ∀ n, P3418960797633263404.a n = A022349 n

end A022349

/-! ## A022349.P9343093083876070268

`3*A022088(n)`
-/

namespace A022349.P9343093083876070268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A022088 n

end

end A022349.P9343093083876070268

namespace A022349

/-- `3*A022088(n)` -/
def P9343093083876070268.Spec : Prop :=
  ∀ n, P9343093083876070268.a n = A022349 n

end A022349

/-! ## A022349.P5016940352573486332

`5*A022086(n)`
-/

namespace A022349.P5016940352573486332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A022086 n

end

end A022349.P5016940352573486332

namespace A022349

/-- `5*A022086(n)` -/
def P5016940352573486332.Spec : Prop :=
  ∀ n, P5016940352573486332.a n = A022349 n

end A022349

/-! ## A022349.P7173346227659422684

`5*(A187893(n)-1)`
-/

namespace A022349.P7173346227659422684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A187893 n - 1)

end

end A022349.P7173346227659422684

namespace A022349

/-- `5*(A187893(n)-1)` -/
def P7173346227659422684.Spec : Prop :=
  ∀ n, P7173346227659422684.a n = A022349 n

end A022349

/-! ## A022349.P12488621172553595861

`3/2*A022093(n)`
-/

namespace A022349.P12488621172553595861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A022093 n : ℚ)

end

end A022349.P12488621172553595861

namespace A022349

/-- `3/2*A022093(n)` -/
def P12488621172553595861.Spec : Prop :=
  ∀ n, P12488621172553595861.a n = (A022349 n : ℚ)

end A022349

/-! ## A022349.P4723167445877053100

`5/2*A022089(n)`
-/

namespace A022349.P4723167445877053100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 2 * (A022089 n : ℚ)

end

end A022349.P4723167445877053100

namespace A022349

/-- `5/2*A022089(n)` -/
def P4723167445877053100.Spec : Prop :=
  ∀ n, P4723167445877053100.a n = (A022349 n : ℚ)

end A022349

/-! ## A022349.P1033439783229618387

`5/3*A022092(n)`
-/

namespace A022349.P1033439783229618387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 3 * (A022092 n : ℚ)

end

end A022349.P1033439783229618387

namespace A022349

/-- `5/3*A022092(n)` -/
def P1033439783229618387.Spec : Prop :=
  ∀ n, P1033439783229618387.a n = (A022349 n : ℚ)

end A022349

/-! ## A022349.P5037631947647047809

`5/4*A022346(n)`
-/

namespace A022349.P5037631947647047809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 4 * (A022346 n : ℚ)

end

end A022349.P5037631947647047809

namespace A022349

/-- `5/4*A022346(n)` -/
def P5037631947647047809.Spec : Prop :=
  ∀ n, P5037631947647047809.a n = (A022349 n : ℚ)

end A022349

/-! ## A022349.P11864258295135431691

`15*(A001611(n)-1)`
-/

namespace A022349.P11864258295135431691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * (A001611 n - 1)

end

end A022349.P11864258295135431691

namespace A022349

/-- `15*(A001611(n)-1)` -/
def P11864258295135431691.Spec : Prop :=
  ∀ n, P11864258295135431691.a n = A022349 n

end A022349

/-! ## A022349.P15252867018535170576

`15*A103609(2*n)`
-/

namespace A022349.P15252867018535170576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A103609 (2 * n)

end

end A022349.P15252867018535170576

namespace A022349

/-- `15*A103609(2*n)` -/
def P15252867018535170576.Spec : Prop :=
  ∀ n, P15252867018535170576.a n = A022349 n

end A022349

/-! ## A022349.P4213402782665141102

`A022348(n)+A000045(n)`
-/

namespace A022349.P4213402782665141102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n + A000045 n

end

end A022349.P4213402782665141102

namespace A022349

/-- `A022348(n)+A000045(n)` -/
def P4213402782665141102.Spec : Prop :=
  ∀ n, P4213402782665141102.a n = A022349 n

end A022349

/-! ## A022349.P14226840413634605720

`A022091(n)+A022090(n)`
-/

namespace A022349.P14226840413634605720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022091 n + A022090 n

end

end A022349.P14226840413634605720

namespace A022349

/-- `A022091(n)+A022090(n)` -/
def P14226840413634605720.Spec : Prop :=
  ∀ n, P14226840413634605720.a n = A022349 n

end A022349

/-! ## A022349.P4118190879269084523

`A022092(n)+A022089(n)`
-/

namespace A022349.P4118190879269084523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022092 n + A022089 n

end

end A022349.P4118190879269084523

namespace A022349

/-- `A022092(n)+A022089(n)` -/
def P4118190879269084523.Spec : Prop :=
  ∀ n, P4118190879269084523.a n = A022349 n

end A022349

/-! ## A022349.P7246598436335743925

`A022093(n)+A022088(n)`
-/

namespace A022349.P7246598436335743925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 n + A022088 n

end

end A022349.P7246598436335743925

namespace A022349

/-- `A022093(n)+A022088(n)` -/
def P7246598436335743925.Spec : Prop :=
  ∀ n, P7246598436335743925.a n = A022349 n

end A022349

/-! ## A022349.P9250132133138882080

`A022345(n)+A022087(n)`
-/

namespace A022349.P9250132133138882080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022087 n

end

end A022349.P9250132133138882080

namespace A022349

/-- `A022345(n)+A022087(n)` -/
def P9250132133138882080.Spec : Prop :=
  ∀ n, P9250132133138882080.a n = A022349 n

end A022349

/-! ## A022349.P12031105127728530930

`A022346(n)+A022086(n)`
-/

namespace A022349.P12031105127728530930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A022086 n

end

end A022349.P12031105127728530930

namespace A022349

/-- `A022346(n)+A022086(n)` -/
def P12031105127728530930.Spec : Prop :=
  ∀ n, P12031105127728530930.a n = A022349 n

end A022349

/-!
# A022350: Fibonacci sequence beginning 0, 16.

The programs for A022350, the canonical program `A022350.P3992686559429308744` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022350 has offset 0).

The definition of A022350 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022350.P3992686559429308744

`16*A000045(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022350

/-- `16*A000045(n)` -/
def P3992686559429308744.Spec : Prop :=
  ∀ n, P3992686559429308744.a n = A022350 n

theorem P3992686559429308744.correct : P3992686559429308744.Spec := by
  intro n
  simp only [A022350]

end A022350

/-! ## A022350.P5676508092779720192

`ogf(16x/(1-x-x^2))`
-/

namespace A022350.P5676508092779720192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 16] [1, -1, -1] n

end

end A022350.P5676508092779720192

namespace A022350

/-- `ogf(16x/(1-x-x^2))` -/
def P5676508092779720192.Spec : Prop :=
  ∀ n, P5676508092779720192.a n = A022350 n

end A022350

/-! ## A022350.P9880112402554398999

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=16`
-/

namespace A022350.P9880112402554398999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 16] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022350.P9880112402554398999

namespace A022350

/-- `a(n-1)+a(n-2)` -/
def P9880112402554398999.Spec : Prop :=
  ∀ n, (P9880112402554398999.a n : ℤ) = A022350 n

end A022350

/-! ## A022350.P16112550863183826325

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=0, a(1)=16, a(2)=16`
-/

namespace A022350.P16112550863183826325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 16, 16] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022350.P16112550863183826325

namespace A022350

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P16112550863183826325.Spec : Prop :=
  ∀ n, P16112550863183826325.a n = A022350 n

end A022350

/-! ## A022350.P7327039813294539179

`2*A022091(n)`
-/

namespace A022350.P7327039813294539179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022091 n

end

end A022350.P7327039813294539179

namespace A022350

/-- `2*A022091(n)` -/
def P7327039813294539179.Spec : Prop :=
  ∀ n, P7327039813294539179.a n = A022350 n

end A022350

/-! ## A022350.P16100846724331639088

`4*A022087(n)`
-/

namespace A022350.P16100846724331639088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A022087 n

end

end A022350.P16100846724331639088

namespace A022350

/-- `4*A022087(n)` -/
def P16100846724331639088.Spec : Prop :=
  ∀ n, P16100846724331639088.a n = A022350 n

end A022350

/-! ## A022350.P3760378919067989513

`8*A006355(n+1)`
-/

namespace A022350.P3760378919067989513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A006355 (n + 1)

end

end A022350.P3760378919067989513

namespace A022350

/-- `8*A006355(n+1)` -/
def P3760378919067989513.Spec : Prop :=
  ∀ n, P3760378919067989513.a n = A022350 n

end A022350

/-! ## A022350.P10466700768246877737

`8*A118658(n+1)`
-/

namespace A022350.P10466700768246877737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A118658 (n + 1)

end

end A022350.P10466700768246877737

namespace A022350

/-- `8*A118658(n+1)` -/
def P10466700768246877737.Spec : Prop :=
  ∀ n, P10466700768246877737.a n = A022350 n

end A022350

/-! ## A022350.P1981266331059418026

`4/3*A022346(n)`
-/

namespace A022350.P1981266331059418026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A022346 n : ℚ)

end

end A022350.P1981266331059418026

namespace A022350

/-- `4/3*A022346(n)` -/
def P1981266331059418026.Spec : Prop :=
  ∀ n, P1981266331059418026.a n = (A022350 n : ℚ)

end A022350

/-! ## A022350.P2863132508557385175

`8*A198834(n+2)`
-/

namespace A022350.P2863132508557385175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A198834 (n + 2)

end

end A022350.P2863132508557385175

namespace A022350

/-- `8*A198834(n+2)` -/
def P2863132508557385175.Spec : Prop :=
  ∀ n, P2863132508557385175.a n = A022350 n

end A022350

/-! ## A022350.P4024961467193953725

`16*A212804(n+1)`
-/

namespace A022350.P4024961467193953725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A212804 (n + 1)

end

end A022350.P4024961467193953725

namespace A022350

/-- `16*A212804(n+1)` -/
def P4024961467193953725.Spec : Prop :=
  ∀ n, P4024961467193953725.a n = A022350 n

end A022350

/-! ## A022350.P4909030916173715033

`16*(A001611(n)-1)`
-/

namespace A022350.P4909030916173715033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (A001611 n - 1)

end

end A022350.P4909030916173715033

namespace A022350

/-- `16*(A001611(n)-1)` -/
def P4909030916173715033.Spec : Prop :=
  ∀ n, P4909030916173715033.a n = A022350 n

end A022350

/-! ## A022350.P12798498533358718227

`16*(A002062(n)-n)`
-/

namespace A022350.P12798498533358718227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (A002062 n - (n : ℤ))

end

end A022350.P12798498533358718227

namespace A022350

/-- `16*(A002062(n)-n)` -/
def P12798498533358718227.Spec : Prop :=
  ∀ n, P12798498533358718227.a n = A022350 n

end A022350

/-! ## A022350.P17578287506940041780

`16*∑{d}[n, A007436(#)]`
-/

namespace A022350.P17578287506940041780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (∑ d ∈ Nat.divisors (f1 n), A007436 d)

end

end A022350.P17578287506940041780

namespace A022350

/-- `16*∑{d}[n, A007436(#)]` -/
def P17578287506940041780.Spec : Prop :=
  ∀ n, P17578287506940041780.a n = A022350 n

end A022350

/-! ## A022350.P7820861893554833390

`16*Δ[A001611(n+1)]`
-/

namespace A022350.P7820861893554833390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * (f1 (n + 1) - f1 n)

end

end A022350.P7820861893554833390

namespace A022350

/-- `16*Δ[A001611(n+1)]` -/
def P7820861893554833390.Spec : Prop :=
  ∀ n, P7820861893554833390.a n = A022350 n

end A022350

/-! ## A022350.P18227338102337843242

`A022349(n)+A000045(n)`
-/

namespace A022350.P18227338102337843242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A000045 n

end

end A022350.P18227338102337843242

namespace A022350

/-- `A022349(n)+A000045(n)` -/
def P18227338102337843242.Spec : Prop :=
  ∀ n, P18227338102337843242.a n = A022350 n

end A022350

/-! ## A022350.P5896005009230489617

`A022092(n)+A022090(n)`
-/

namespace A022350.P5896005009230489617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022092 n + A022090 n

end

end A022350.P5896005009230489617

namespace A022350

/-- `A022092(n)+A022090(n)` -/
def P5896005009230489617.Spec : Prop :=
  ∀ n, P5896005009230489617.a n = A022350 n

end A022350

/-! ## A022350.P12071259020244193062

`A022093(n)+A022089(n)`
-/

namespace A022350.P12071259020244193062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 n + A022089 n

end

end A022350.P12071259020244193062

namespace A022350

/-- `A022093(n)+A022089(n)` -/
def P12071259020244193062.Spec : Prop :=
  ∀ n, P12071259020244193062.a n = A022350 n

end A022350

/-! ## A022350.P12506726385336988973

`A022345(n)+A022088(n)`
-/

namespace A022350.P12506726385336988973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022088 n

end

end A022350.P12506726385336988973

namespace A022350

/-- `A022345(n)+A022088(n)` -/
def P12506726385336988973.Spec : Prop :=
  ∀ n, P12506726385336988973.a n = A022350 n

end A022350

/-! ## A022350.P6502267304296089409

`A022346(n)+A022087(n)`
-/

namespace A022350.P6502267304296089409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A022087 n

end

end A022350.P6502267304296089409

namespace A022350

/-- `A022346(n)+A022087(n)` -/
def P6502267304296089409.Spec : Prop :=
  ∀ n, P6502267304296089409.a n = A022350 n

end A022350

/-!
# A022351: Fibonacci sequence beginning 0, 17.

The programs for A022351, the canonical program `A022351.P1553212968435598646` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022351 has offset 0).

The definition of A022351 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022351.P1553212968435598646

`17*A000045(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022351

/-- `17*A000045(n)` -/
def P1553212968435598646.Spec : Prop :=
  ∀ n, P1553212968435598646.a n = A022351 n

theorem P1553212968435598646.correct : P1553212968435598646.Spec := by
  intro n
  simp only [A022351]

end A022351

/-! ## A022351.P10128272982098269225

`ogf(17x/(1-x-x^2))`
-/

namespace A022351.P10128272982098269225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 17] [1, -1, -1] n

end

end A022351.P10128272982098269225

namespace A022351

/-- `ogf(17x/(1-x-x^2))` -/
def P10128272982098269225.Spec : Prop :=
  ∀ n, P10128272982098269225.a n = A022351 n

end A022351

/-! ## A022351.P5929091940351246440

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=17`
-/

namespace A022351.P5929091940351246440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 17] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022351.P5929091940351246440

namespace A022351

/-- `a(n-1)+a(n-2)` -/
def P5929091940351246440.Spec : Prop :=
  ∀ n, (P5929091940351246440.a n : ℤ) = A022351 n

end A022351

/-! ## A022351.P17215599260647370476

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=0, a(1)=17, a(2)=17`
-/

namespace A022351.P17215599260647370476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 17, 17] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022351.P17215599260647370476

namespace A022351

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P17215599260647370476.Spec : Prop :=
  ∀ n, P17215599260647370476.a n = A022351 n

end A022351

/-! ## A022351.P17199407305885794673

`17*A212804(n+1)`
-/

namespace A022351.P17199407305885794673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A212804 (n + 1)

end

end A022351.P17199407305885794673

namespace A022351

/-- `17*A212804(n+1)` -/
def P17199407305885794673.Spec : Prop :=
  ∀ n, P17199407305885794673.a n = A022351 n

end A022351

/-! ## A022351.P12732197038275879122

`17*(A001611(n)-1)`
-/

namespace A022351.P12732197038275879122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * (A001611 n - 1)

end

end A022351.P12732197038275879122

namespace A022351

/-- `17*(A001611(n)-1)` -/
def P12732197038275879122.Spec : Prop :=
  ∀ n, P12732197038275879122.a n = A022351 n

end A022351

/-! ## A022351.P2243097764961909485

`17*Δ[Δ[record[A212804(n)]]]`
-/

namespace A022351.P2243097764961909485
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * (f1 (n + 1) - f1 n)

end

end A022351.P2243097764961909485

namespace A022351

/-- `17*Δ[Δ[record[A212804(n)]]]` -/
def P2243097764961909485.Spec : Prop :=
  ∀ n, P2243097764961909485.a n = A022351 n

end A022351

/-! ## A022351.P8195011246725008663

`A022350(n)+A000045(n)`
-/

namespace A022351.P8195011246725008663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022350 n + A000045 n

end

end A022351.P8195011246725008663

namespace A022351

/-- `A022350(n)+A000045(n)` -/
def P8195011246725008663.Spec : Prop :=
  ∀ n, P8195011246725008663.a n = A022351 n

end A022351

/-! ## A022351.P5788031339449831390

`A022092(n)+A022091(n)`
-/

namespace A022351.P5788031339449831390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022092 n + A022091 n

end

end A022351.P5788031339449831390

namespace A022351

/-- `A022092(n)+A022091(n)` -/
def P5788031339449831390.Spec : Prop :=
  ∀ n, P5788031339449831390.a n = A022351 n

end A022351

/-! ## A022351.P16723979174881114753

`A022093(n)+A022090(n)`
-/

namespace A022351.P16723979174881114753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 n + A022090 n

end

end A022351.P16723979174881114753

namespace A022351

/-- `A022093(n)+A022090(n)` -/
def P16723979174881114753.Spec : Prop :=
  ∀ n, P16723979174881114753.a n = A022351 n

end A022351

/-! ## A022351.P11530505048103827898

`A022345(n)+A022089(n)`
-/

namespace A022351.P11530505048103827898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022089 n

end

end A022351.P11530505048103827898

namespace A022351

/-- `A022345(n)+A022089(n)` -/
def P11530505048103827898.Spec : Prop :=
  ∀ n, P11530505048103827898.a n = A022351 n

end A022351

/-! ## A022351.P1024125878754071116

`A022346(n)+A022088(n)`
-/

namespace A022351.P1024125878754071116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A022088 n

end

end A022351.P1024125878754071116

namespace A022351

/-- `A022346(n)+A022088(n)` -/
def P1024125878754071116.Spec : Prop :=
  ∀ n, P1024125878754071116.a n = A022351 n

end A022351

/-! ## A022351.P5338422550386212205

`A022347(n)+A022087(n)`
-/

namespace A022351.P5338422550386212205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A022087 n

end

end A022351.P5338422550386212205

namespace A022351

/-- `A022347(n)+A022087(n)` -/
def P5338422550386212205.Spec : Prop :=
  ∀ n, P5338422550386212205.a n = A022351 n

end A022351

/-! ## A022351.P2950800383249919936

`A022348(n)+A022086(n)`
-/

namespace A022351.P2950800383249919936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n + A022086 n

end

end A022351.P2950800383249919936

namespace A022351

/-- `A022348(n)+A022086(n)` -/
def P2950800383249919936.Spec : Prop :=
  ∀ n, P2950800383249919936.a n = A022351 n

end A022351

/-! ## A022351.P3331053547325870259

`A187891(n)+A022317(n)`
-/

namespace A022351.P3331053547325870259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187891 n + A022317 n

end

end A022351.P3331053547325870259

namespace A022351

/-- `A187891(n)+A022317(n)` -/
def P3331053547325870259.Spec : Prop :=
  ∀ n, P3331053547325870259.a n = A022351 n

end A022351

/-! ## A022351.P7624966409696819841

`A187892(n)+A022316(n)`
-/

namespace A022351.P7624966409696819841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187892 n + A022316 n

end

end A022351.P7624966409696819841

namespace A022351

/-- `A187892(n)+A022316(n)` -/
def P7624966409696819841.Spec : Prop :=
  ∀ n, P7624966409696819841.a n = A022351 n

end A022351

/-! ## A022351.P7392336944670478694

`A022352(n)-A000045(n)`
-/

namespace A022351.P7392336944670478694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022352 n - A000045 n

end

end A022351.P7392336944670478694

namespace A022351

/-- `A022352(n)-A000045(n)` -/
def P7392336944670478694.Spec : Prop :=
  ∀ n, P7392336944670478694.a n = A022351 n

end A022351

/-! ## A022351.P10796573153500069916

`A022371(n)-A000032(n)`
-/

namespace A022351.P10796573153500069916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022371 n - A000032 n

end

end A022351.P10796573153500069916

namespace A022351

/-- `A022371(n)-A000032(n)` -/
def P10796573153500069916.Spec : Prop :=
  ∀ n, P10796573153500069916.a n = A022351 n

end A022351

/-! ## A022351.P16360368973127732667

`A022118(n)-A118658(n)`
-/

namespace A022351.P16360368973127732667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022118 n - A118658 n

end

end A022351.P16360368973127732667

namespace A022351

/-- `A022118(n)-A118658(n)` -/
def P16360368973127732667.Spec : Prop :=
  ∀ n, P16360368973127732667.a n = A022351 n

end A022351

/-! ## A022351.P18175985012569288480

`A022106(n)-A152163(n)`
-/

namespace A022351.P18175985012569288480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022106 n - A152163 n

end

end A022351.P18175985012569288480

namespace A022351

/-- `A022106(n)-A152163(n)` -/
def P18175985012569288480.Spec : Prop :=
  ∀ n, P18175985012569288480.a n = A022351 n

end A022351

/-!
# A022352: Fibonacci sequence beginning 0, 18.

The programs for A022352, the canonical program `A022352.P2372187960422330445` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022352 has offset 0).

The definition of A022352 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022352.P17334182119381212224

`ogf(18x/(1-x-x^2))`
-/

namespace A022352.P17334182119381212224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 18] [1, -1, -1] n

end

end A022352.P17334182119381212224

namespace A022352

/-- `ogf(18x/(1-x-x^2))` -/
def P17334182119381212224.Spec : Prop :=
  ∀ n, P17334182119381212224.a n = A022352 n

end A022352

/-! ## A022352.P2372187960422330445

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=18`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022352

/-- `a(n-1)+a(n-2)` -/
def P2372187960422330445.Spec : Prop :=
  ∀ n, (P2372187960422330445.a n : ℤ) = A022352 n

theorem P2372187960422330445.correct : P2372187960422330445.Spec := by
  intro n
  simp only [A022352]

end A022352

/-! ## A022352.P1458513082084239663

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=0, a(1)=18, a(2)=18`
-/

namespace A022352.P1458513082084239663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 18, 18] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022352.P1458513082084239663

namespace A022352

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P1458513082084239663.Spec : Prop :=
  ∀ n, P1458513082084239663.a n = A022352 n

end A022352

/-! ## A022352.P5639717921417025449

`2*A022092(n)`
-/

namespace A022352.P5639717921417025449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022092 n

end

end A022352.P5639717921417025449

namespace A022352

/-- `2*A022092(n)` -/
def P5639717921417025449.Spec : Prop :=
  ∀ n, P5639717921417025449.a n = A022352 n

end A022352

/-! ## A022352.P14806586828813432237

`3*A022089(n)`
-/

namespace A022352.P14806586828813432237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A022089 n

end

end A022352.P14806586828813432237

namespace A022352

/-- `3*A022089(n)` -/
def P14806586828813432237.Spec : Prop :=
  ∀ n, P14806586828813432237.a n = A022352 n

end A022352

/-! ## A022352.P5346199112830192640

`6*A022086(n)`
-/

namespace A022352.P5346199112830192640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A022086 n

end

end A022352.P5346199112830192640

namespace A022352

/-- `6*A022086(n)` -/
def P5346199112830192640.Spec : Prop :=
  ∀ n, P5346199112830192640.a n = A022352 n

end A022352

/-! ## A022352.P10895253600584194026

`18*A000045(n)`
-/

namespace A022352.P10895253600584194026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A000045 n

end

end A022352.P10895253600584194026

namespace A022352

/-- `18*A000045(n)` -/
def P10895253600584194026.Spec : Prop :=
  ∀ n, P10895253600584194026.a n = A022352 n

end A022352

/-! ## A022352.P16182619264201514642

`3/2*A022346(n)`
-/

namespace A022352.P16182619264201514642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A022346 n : ℚ)

end

end A022352.P16182619264201514642

namespace A022352

/-- `3/2*A022346(n)` -/
def P16182619264201514642.Spec : Prop :=
  ∀ n, P16182619264201514642.a n = (A022352 n : ℚ)

end A022352

/-! ## A022352.P6053718500298640034

`9*A006355(n+1)`
-/

namespace A022352.P6053718500298640034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A006355 (n + 1)

end

end A022352.P6053718500298640034

namespace A022352

/-- `9*A006355(n+1)` -/
def P6053718500298640034.Spec : Prop :=
  ∀ n, P6053718500298640034.a n = A022352 n

end A022352

/-! ## A022352.P7126551068727272310

`9*A118658(n+1)`
-/

namespace A022352.P7126551068727272310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A118658 (n + 1)

end

end A022352.P7126551068727272310

namespace A022352

/-- `9*A118658(n+1)` -/
def P7126551068727272310.Spec : Prop :=
  ∀ n, P7126551068727272310.a n = A022352 n

end A022352

/-! ## A022352.P16840392286704161893

`9*A198834(n+2)`
-/

namespace A022352.P16840392286704161893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A198834 (n + 2)

end

end A022352.P16840392286704161893

namespace A022352

/-- `9*A198834(n+2)` -/
def P16840392286704161893.Spec : Prop :=
  ∀ n, P16840392286704161893.a n = A022352 n

end A022352

/-! ## A022352.P17637957309559604097

`18*Δ[A000071(n+1)]`
-/

namespace A022352.P17637957309559604097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * (f1 (n + 1) - f1 n)

end

end A022352.P17637957309559604097

namespace A022352

/-- `18*Δ[A000071(n+1)]` -/
def P17637957309559604097.Spec : Prop :=
  ∀ n, P17637957309559604097.a n = A022352 n

end A022352

/-! ## A022352.P13017880930973493021

`9*2*(A001611(n)-1)`
-/

namespace A022352.P13017880930973493021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * (2 * (A001611 n - 1))

end

end A022352.P13017880930973493021

namespace A022352

/-- `9*2*(A001611(n)-1)` -/
def P13017880930973493021.Spec : Prop :=
  ∀ n, P13017880930973493021.a n = A022352 n

end A022352

/-! ## A022352.P5492201899303387991

`A022351(n)+A000045(n)`
-/

namespace A022352.P5492201899303387991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022351 n + A000045 n

end

end A022352.P5492201899303387991

namespace A022352

/-- `A022351(n)+A000045(n)` -/
def P5492201899303387991.Spec : Prop :=
  ∀ n, P5492201899303387991.a n = A022352 n

end A022352

/-! ## A022352.P17514891627943543947

`A022093(n)+A022091(n)`
-/

namespace A022352.P17514891627943543947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 n + A022091 n

end

end A022352.P17514891627943543947

namespace A022352

/-- `A022093(n)+A022091(n)` -/
def P17514891627943543947.Spec : Prop :=
  ∀ n, P17514891627943543947.a n = A022352 n

end A022352

/-! ## A022352.P13921622194168462682

`A022345(n)+A022090(n)`
-/

namespace A022352.P13921622194168462682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022090 n

end

end A022352.P13921622194168462682

namespace A022352

/-- `A022345(n)+A022090(n)` -/
def P13921622194168462682.Spec : Prop :=
  ∀ n, P13921622194168462682.a n = A022352 n

end A022352

/-! ## A022352.P13007745819208221942

`A022346(n)+A022089(n)`
-/

namespace A022352.P13007745819208221942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A022089 n

end

end A022352.P13007745819208221942

namespace A022352

/-- `A022346(n)+A022089(n)` -/
def P13007745819208221942.Spec : Prop :=
  ∀ n, P13007745819208221942.a n = A022352 n

end A022352

/-! ## A022352.P8626798609041618219

`A022347(n)+A022088(n)`
-/

namespace A022352.P8626798609041618219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A022088 n

end

end A022352.P8626798609041618219

namespace A022352

/-- `A022347(n)+A022088(n)` -/
def P8626798609041618219.Spec : Prop :=
  ∀ n, P8626798609041618219.a n = A022352 n

end A022352

/-! ## A022352.P16234399450959061953

`A022348(n)+A022087(n)`
-/

namespace A022352.P16234399450959061953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n + A022087 n

end

end A022352.P16234399450959061953

namespace A022352

/-- `A022348(n)+A022087(n)` -/
def P16234399450959061953.Spec : Prop :=
  ∀ n, P16234399450959061953.a n = A022352 n

end A022352

/-! ## A022352.P12417442252773745111

`A022349(n)+A022086(n)`
-/

namespace A022352.P12417442252773745111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A022086 n

end

end A022352.P12417442252773745111

namespace A022352

/-- `A022349(n)+A022086(n)` -/
def P12417442252773745111.Spec : Prop :=
  ∀ n, P12417442252773745111.a n = A022352 n

end A022352

/-!
# A022353: Fibonacci sequence beginning 0, 19.

The programs for A022353, the canonical program `A022353.P4384315512974334384` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022353 has offset 0).

The definition of A022353 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022353.P4384315512974334384

`19*A000045(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022353

/-- `19*A000045(n)` -/
def P4384315512974334384.Spec : Prop :=
  ∀ n, P4384315512974334384.a n = A022353 n

theorem P4384315512974334384.correct : P4384315512974334384.Spec := by
  intro n
  simp only [A022353]

end A022353

/-! ## A022353.P2561410982129946157

`ogf(19x/(1-x-x^2))`
-/

namespace A022353.P2561410982129946157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 19] [1, -1, -1] n

end

end A022353.P2561410982129946157

namespace A022353

/-- `ogf(19x/(1-x-x^2))` -/
def P2561410982129946157.Spec : Prop :=
  ∀ n, P2561410982129946157.a n = A022353 n

end A022353

/-! ## A022353.P3718752262186852508

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=19`
-/

namespace A022353.P3718752262186852508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 19] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022353.P3718752262186852508

namespace A022353

/-- `a(n-1)+a(n-2)` -/
def P3718752262186852508.Spec : Prop :=
  ∀ n, (P3718752262186852508.a n : ℤ) = A022353 n

end A022353

/-! ## A022353.P8966199295174035999

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=0, a(1)=19, a(2)=19`
-/

namespace A022353.P8966199295174035999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 19, 19] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022353.P8966199295174035999

namespace A022353

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P8966199295174035999.Spec : Prop :=
  ∀ n, P8966199295174035999.a n = A022353 n

end A022353

/-! ## A022353.P17883622941531407833

`abs(19*A333378(n))`
-/

namespace A022353.P17883622941531407833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |19 * A333378 n|

end

end A022353.P17883622941531407833

namespace A022353

/-- `abs(19*A333378(n))` -/
def P17883622941531407833.Spec : Prop :=
  ∀ n, P17883622941531407833.a n = A022353 n

end A022353

/-! ## A022353.P12637749671320145371

`19*A212804(n+1)`
-/

namespace A022353.P12637749671320145371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  19 * A212804 (n + 1)

end

end A022353.P12637749671320145371

namespace A022353

/-- `19*A212804(n+1)` -/
def P12637749671320145371.Spec : Prop :=
  ∀ n, P12637749671320145371.a n = A022353 n

end A022353

/-! ## A022353.P590220659004269563

`19*(A001611(n)-1)`
-/

namespace A022353.P590220659004269563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  19 * (A001611 n - 1)

end

end A022353.P590220659004269563

namespace A022353

/-- `19*(A001611(n)-1)` -/
def P590220659004269563.Spec : Prop :=
  ∀ n, P590220659004269563.a n = A022353 n

end A022353

/-! ## A022353.P2286683138157327060

`19*A103609(2*n)`
-/

namespace A022353.P2286683138157327060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  19 * A103609 (2 * n)

end

end A022353.P2286683138157327060

namespace A022353

/-- `19*A103609(2*n)` -/
def P2286683138157327060.Spec : Prop :=
  ∀ n, P2286683138157327060.a n = A022353 n

end A022353

/-! ## A022353.P18049696504123455269

`A022352(n)+A000045(n)`
-/

namespace A022353.P18049696504123455269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022352 n + A000045 n

end

end A022353.P18049696504123455269

namespace A022353

/-- `A022352(n)+A000045(n)` -/
def P18049696504123455269.Spec : Prop :=
  ∀ n, P18049696504123455269.a n = A022353 n

end A022353

/-! ## A022353.P12997482018270361114

`A022093(n)+A022092(n)`
-/

namespace A022353.P12997482018270361114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 n + A022092 n

end

end A022353.P12997482018270361114

namespace A022353

/-- `A022093(n)+A022092(n)` -/
def P12997482018270361114.Spec : Prop :=
  ∀ n, P12997482018270361114.a n = A022353 n

end A022353

/-! ## A022353.P5827295471917378499

`A022345(n)+A022091(n)`
-/

namespace A022353.P5827295471917378499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022091 n

end

end A022353.P5827295471917378499

namespace A022353

/-- `A022345(n)+A022091(n)` -/
def P5827295471917378499.Spec : Prop :=
  ∀ n, P5827295471917378499.a n = A022353 n

end A022353

/-! ## A022353.P11918203799325472756

`A022346(n)+A022090(n)`
-/

namespace A022353.P11918203799325472756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A022090 n

end

end A022353.P11918203799325472756

namespace A022353

/-- `A022346(n)+A022090(n)` -/
def P11918203799325472756.Spec : Prop :=
  ∀ n, P11918203799325472756.a n = A022353 n

end A022353

/-! ## A022353.P2481482188775169197

`A022347(n)+A022089(n)`
-/

namespace A022353.P2481482188775169197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A022089 n

end

end A022353.P2481482188775169197

namespace A022353

/-- `A022347(n)+A022089(n)` -/
def P2481482188775169197.Spec : Prop :=
  ∀ n, P2481482188775169197.a n = A022353 n

end A022353

/-! ## A022353.P5180915252406894429

`A022348(n)+A022088(n)`
-/

namespace A022353.P5180915252406894429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n + A022088 n

end

end A022353.P5180915252406894429

namespace A022353

/-- `A022348(n)+A022088(n)` -/
def P5180915252406894429.Spec : Prop :=
  ∀ n, P5180915252406894429.a n = A022353 n

end A022353

/-! ## A022353.P3284946414103261280

`A022349(n)+A022087(n)`
-/

namespace A022353.P3284946414103261280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A022087 n

end

end A022353.P3284946414103261280

namespace A022353

/-- `A022349(n)+A022087(n)` -/
def P3284946414103261280.Spec : Prop :=
  ∀ n, P3284946414103261280.a n = A022353 n

end A022353

/-! ## A022353.P10329998577486662029

`A022350(n)+A022086(n)`
-/

namespace A022353.P10329998577486662029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022350 n + A022086 n

end

end A022353.P10329998577486662029

namespace A022353

/-- `A022350(n)+A022086(n)` -/
def P10329998577486662029.Spec : Prop :=
  ∀ n, P10329998577486662029.a n = A022353 n

end A022353

/-! ## A022353.P10052910312673251309

`A118658(n+1)+A022351(n)`
-/

namespace A022353.P10052910312673251309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 (n + 1) + A022351 n

end

end A022353.P10052910312673251309

namespace A022353

/-- `A118658(n+1)+A022351(n)` -/
def P10052910312673251309.Spec : Prop :=
  ∀ n, P10052910312673251309.a n = A022353 n

end A022353

/-! ## A022353.P3386031395871128014

`A212804(n+1)+A022352(n)`
-/

namespace A022353.P3386031395871128014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + A022352 n

end

end A022353.P3386031395871128014

namespace A022353

/-- `A212804(n+1)+A022352(n)` -/
def P3386031395871128014.Spec : Prop :=
  ∀ n, P3386031395871128014.a n = A022353 n

end A022353

/-! ## A022353.P13387322612846773488

`A022352(n)-A152163(n+2)`
-/

namespace A022353.P13387322612846773488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022352 n - A152163 (n + 2)

end

end A022353.P13387322612846773488

namespace A022353

/-- `A022352(n)-A152163(n+2)` -/
def P13387322612846773488.Spec : Prop :=
  ∀ n, P13387322612846773488.a n = A022353 n

end A022353

/-! ## A022353.P11577090739371844944

`A022086(n)+2*A022091(n)`
-/

namespace A022353.P11577090739371844944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 n + 2 * A022091 n

end

end A022353.P11577090739371844944

namespace A022353

/-- `A022086(n)+2*A022091(n)` -/
def P11577090739371844944.Spec : Prop :=
  ∀ n, P11577090739371844944.a n = A022353 n

end A022353

/-!
# A022354: Fibonacci sequence beginning 0, 20.

The programs for A022354, the canonical program `A022354.P2497390260056676203` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022354 has offset 0).

The definition of A022354 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022354.P2497390260056676203

`20*A000045(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022354

/-- `20*A000045(n)` -/
def P2497390260056676203.Spec : Prop :=
  ∀ n, P2497390260056676203.a n = A022354 n

theorem P2497390260056676203.correct : P2497390260056676203.Spec := by
  intro n
  simp only [A022354]

end A022354

/-! ## A022354.P8075576326442903494

`ogf(20x/(1-x-x^2))`
-/

namespace A022354.P8075576326442903494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 20] [1, -1, -1] n

end

end A022354.P8075576326442903494

namespace A022354

/-- `ogf(20x/(1-x-x^2))` -/
def P8075576326442903494.Spec : Prop :=
  ∀ n, P8075576326442903494.a n = A022354 n

end A022354

/-! ## A022354.P9430349467441321534

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=20`
-/

namespace A022354.P9430349467441321534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 20] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022354.P9430349467441321534

namespace A022354

/-- `a(n-1)+a(n-2)` -/
def P9430349467441321534.Spec : Prop :=
  ∀ n, (P9430349467441321534.a n : ℤ) = A022354 n

end A022354

/-! ## A022354.P228537137545191238

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=20, a(2)=20`
-/

namespace A022354.P228537137545191238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 20, 20] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A022354.P228537137545191238

namespace A022354

/-- `2*a(n-1)-a(n-3)` -/
def P228537137545191238.Spec : Prop :=
  ∀ n, P228537137545191238.a n = A022354 n

end A022354

/-! ## A022354.P3930886368017368204

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=0, a(1)=20, a(2)=20`
-/

namespace A022354.P3930886368017368204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 20, 20] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022354.P3930886368017368204

namespace A022354

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P3930886368017368204.Spec : Prop :=
  ∀ n, P3930886368017368204.a n = A022354 n

end A022354

/-! ## A022354.P6832689477359922395

`2*A022093(n)`
-/

namespace A022354.P6832689477359922395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022093 n

end

end A022354.P6832689477359922395

namespace A022354

/-- `2*A022093(n)` -/
def P6832689477359922395.Spec : Prop :=
  ∀ n, P6832689477359922395.a n = A022354 n

end A022354

/-! ## A022354.P9629188936028941453

`4*A022088(n)`
-/

namespace A022354.P9629188936028941453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A022088 n

end

end A022354.P9629188936028941453

namespace A022354

/-- `4*A022088(n)` -/
def P9629188936028941453.Spec : Prop :=
  ∀ n, P9629188936028941453.a n = A022354 n

end A022354

/-! ## A022354.P5178739222639762384

`5*A022087(n)`
-/

namespace A022354.P5178739222639762384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A022087 n

end

end A022354.P5178739222639762384

namespace A022354

/-- `5*A022087(n)` -/
def P5178739222639762384.Spec : Prop :=
  ∀ n, P5178739222639762384.a n = A022354 n

end A022354

/-! ## A022354.P14066354091667162097

`2/3*A022364(n)`
-/

namespace A022354.P14066354091667162097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A022364 n : ℚ)

end

end A022354.P14066354091667162097

namespace A022354

/-- `2/3*A022364(n)` -/
def P14066354091667162097.Spec : Prop :=
  ∀ n, P14066354091667162097.a n = (A022354 n : ℚ)

end A022354

/-! ## A022354.P13574257988260569411

`5/2*A022091(n)`
-/

namespace A022354.P13574257988260569411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 2 * (A022091 n : ℚ)

end

end A022354.P13574257988260569411

namespace A022354

/-- `5/2*A022091(n)` -/
def P13574257988260569411.Spec : Prop :=
  ∀ n, P13574257988260569411.a n = (A022354 n : ℚ)

end A022354

/-! ## A022354.P13055607673155803708

`4/3*A022349(n)`
-/

namespace A022354.P13055607673155803708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A022349 n : ℚ)

end

end A022354.P13055607673155803708

namespace A022354

/-- `4/3*A022349(n)` -/
def P13055607673155803708.Spec : Prop :=
  ∀ n, P13055607673155803708.a n = (A022354 n : ℚ)

end A022354

/-! ## A022354.P9784138866329779660

`10*A006355(n+1)`
-/

namespace A022354.P9784138866329779660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A006355 (n + 1)

end

end A022354.P9784138866329779660

namespace A022354

/-- `10*A006355(n+1)` -/
def P9784138866329779660.Spec : Prop :=
  ∀ n, P9784138866329779660.a n = A022354 n

end A022354

/-! ## A022354.P5989584706485747828

`5/3*A022346(n)`
-/

namespace A022354.P5989584706485747828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 3 * (A022346 n : ℚ)

end

end A022354.P5989584706485747828

namespace A022354

/-- `5/3*A022346(n)` -/
def P5989584706485747828.Spec : Prop :=
  ∀ n, P5989584706485747828.a n = (A022354 n : ℚ)

end A022354

/-! ## A022354.P18185861646234410053

`5/4*A022350(n)`
-/

namespace A022354.P18185861646234410053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 4 * (A022350 n : ℚ)

end

end A022354.P18185861646234410053

namespace A022354

/-- `5/4*A022350(n)` -/
def P18185861646234410053.Spec : Prop :=
  ∀ n, P18185861646234410053.a n = (A022354 n : ℚ)

end A022354

/-! ## A022354.P4588999631735150653

`4/5*A022359(n)`
-/

namespace A022354.P4588999631735150653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 5 * (A022359 n : ℚ)

end

end A022354.P4588999631735150653

namespace A022354

/-- `4/5*A022359(n)` -/
def P4588999631735150653.Spec : Prop :=
  ∀ n, P4588999631735150653.a n = (A022354 n : ℚ)

end A022354

/-! ## A022354.P16036768796964837601

`20*(A001611(n)-1)`
-/

namespace A022354.P16036768796964837601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 * (A001611 n - 1)

end

end A022354.P16036768796964837601

namespace A022354

/-- `20*(A001611(n)-1)` -/
def P16036768796964837601.Spec : Prop :=
  ∀ n, P16036768796964837601.a n = A022354 n

end A022354

/-! ## A022354.P12123883513113333290

`20*A103609(2*n)`
-/

namespace A022354.P12123883513113333290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 * A103609 (2 * n)

end

end A022354.P12123883513113333290

namespace A022354

/-- `20*A103609(2*n)` -/
def P12123883513113333290.Spec : Prop :=
  ∀ n, P12123883513113333290.a n = A022354 n

end A022354

/-! ## A022354.P13582598156413952544

`A022353(n)+A000045(n)`
-/

namespace A022354.P13582598156413952544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022353 n + A000045 n

end

end A022354.P13582598156413952544

namespace A022354

/-- `A022353(n)+A000045(n)` -/
def P13582598156413952544.Spec : Prop :=
  ∀ n, P13582598156413952544.a n = A022354 n

end A022354

/-! ## A022354.P7172550423532221490

`A022345(n)+A022092(n)`
-/

namespace A022354.P7172550423532221490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022092 n

end

end A022354.P7172550423532221490

namespace A022354

/-- `A022345(n)+A022092(n)` -/
def P7172550423532221490.Spec : Prop :=
  ∀ n, P7172550423532221490.a n = A022354 n

end A022354

/-! ## A022354.P445955890317917348

`A022346(n)+A022091(n)`
-/

namespace A022354.P445955890317917348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A022091 n

end

end A022354.P445955890317917348

namespace A022354

/-- `A022346(n)+A022091(n)` -/
def P445955890317917348.Spec : Prop :=
  ∀ n, P445955890317917348.a n = A022354 n

end A022354

/-!
# A022355: Fibonacci sequence beginning 0, 21.

The programs for A022355, the canonical program `A022355.P14565443088035483899` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022355 has offset 0).

The definition of A022355 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022355.P14565443088035483899

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=21`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022355

/-- `a(n-1)+a(n-2)` -/
def P14565443088035483899.Spec : Prop :=
  ∀ n, (P14565443088035483899.a n : ℤ) = A022355 n

theorem P14565443088035483899.correct : P14565443088035483899.Spec := by
  intro n
  simp only [A022355]

end A022355

/-! ## A022355.P13837838561992659509

`ogf(21x/(1-x-x^2))`
-/

namespace A022355.P13837838561992659509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 21] [1, -1, -1] n

end

end A022355.P13837838561992659509

namespace A022355

/-- `ogf(21x/(1-x-x^2))` -/
def P13837838561992659509.Spec : Prop :=
  ∀ n, P13837838561992659509.a n = A022355 n

end A022355

/-! ## A022355.P6537245705491406430

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=21, a(2)=21`
-/

namespace A022355.P6537245705491406430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 21, 21] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A022355.P6537245705491406430

namespace A022355

/-- `2*a(n-1)-a(n-3)` -/
def P6537245705491406430.Spec : Prop :=
  ∀ n, P6537245705491406430.a n = A022355 n

end A022355

/-! ## A022355.P13827239648891870074

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=0, a(1)=21, a(2)=21`
-/

namespace A022355.P13827239648891870074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 21, 21] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022355.P13827239648891870074

namespace A022355

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P13827239648891870074.Spec : Prop :=
  ∀ n, P13827239648891870074.a n = A022355 n

end A022355

/-! ## A022355.P555847659927804837

`3*A022090(n)`
-/

namespace A022355.P555847659927804837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A022090 n

end

end A022355.P555847659927804837

namespace A022355

/-- `3*A022090(n)` -/
def P555847659927804837.Spec : Prop :=
  ∀ n, P555847659927804837.a n = A022355 n

end A022355

/-! ## A022355.P7743695183018217809

`7*A022086(n)`
-/

namespace A022355.P7743695183018217809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A022086 n

end

end A022355.P7743695183018217809

namespace A022355

/-- `7*A022086(n)` -/
def P7743695183018217809.Spec : Prop :=
  ∀ n, P7743695183018217809.a n = A022355 n

end A022355

/-! ## A022355.P16360287050085371952

`21*A000045(n)`
-/

namespace A022355.P16360287050085371952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 * A000045 n

end

end A022355.P16360287050085371952

namespace A022355

/-- `21*A000045(n)` -/
def P16360287050085371952.Spec : Prop :=
  ∀ n, P16360287050085371952.a n = A022355 n

end A022355

/-! ## A022355.P3906459749582986015

`3/2*A022348(n)`
-/

namespace A022355.P3906459749582986015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A022348 n : ℚ)

end

end A022355.P3906459749582986015

namespace A022355

/-- `3/2*A022348(n)` -/
def P3906459749582986015.Spec : Prop :=
  ∀ n, P3906459749582986015.a n = (A022355 n : ℚ)

end A022355

/-! ## A022355.P14593155203073272757

`7*(A187893(n)-1)`
-/

namespace A022355.P14593155203073272757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (A187893 n - 1)

end

end A022355.P14593155203073272757

namespace A022355

/-- `7*(A187893(n)-1)` -/
def P14593155203073272757.Spec : Prop :=
  ∀ n, P14593155203073272757.a n = A022355 n

end A022355

/-! ## A022355.P6308228176043026193

`3/4*A022362(n)`
-/

namespace A022355.P6308228176043026193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A022362 n : ℚ)

end

end A022355.P6308228176043026193

namespace A022355

/-- `3/4*A022362(n)` -/
def P6308228176043026193.Spec : Prop :=
  ∀ n, P6308228176043026193.a n = (A022355 n : ℚ)

end A022355

/-! ## A022355.P4786231171337922120

`21*A212804(n+1)`
-/

namespace A022355.P4786231171337922120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 * A212804 (n + 1)

end

end A022355.P4786231171337922120

namespace A022355

/-- `21*A212804(n+1)` -/
def P4786231171337922120.Spec : Prop :=
  ∀ n, P4786231171337922120.a n = A022355 n

end A022355

/-! ## A022355.P5442997151843661335

`21*(A001611(n)-1)`
-/

namespace A022355.P5442997151843661335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 * (A001611 n - 1)

end

end A022355.P5442997151843661335

namespace A022355

/-- `21*(A001611(n)-1)` -/
def P5442997151843661335.Spec : Prop :=
  ∀ n, P5442997151843661335.a n = A022355 n

end A022355

/-! ## A022355.P164513991901738899

`21*Δ[Δ[record[A212804(n)]]]`
-/

namespace A022355.P164513991901738899
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 * (f1 (n + 1) - f1 n)

end

end A022355.P164513991901738899

namespace A022355

/-- `21*Δ[Δ[record[A212804(n)]]]` -/
def P164513991901738899.Spec : Prop :=
  ∀ n, P164513991901738899.a n = A022355 n

end A022355

/-! ## A022355.P6151340705120292460

`A022354(n)+A000045(n)`
-/

namespace A022355.P6151340705120292460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022354 n + A000045 n

end

end A022355.P6151340705120292460

namespace A022355

/-- `A022354(n)+A000045(n)` -/
def P6151340705120292460.Spec : Prop :=
  ∀ n, P6151340705120292460.a n = A022355 n

end A022355

/-! ## A022355.P742393988871297522

`A022345(n)+A022093(n)`
-/

namespace A022355.P742393988871297522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022093 n

end

end A022355.P742393988871297522

namespace A022355

/-- `A022345(n)+A022093(n)` -/
def P742393988871297522.Spec : Prop :=
  ∀ n, P742393988871297522.a n = A022355 n

end A022355

/-! ## A022355.P13489845228332081797

`A022346(n)+A022092(n)`
-/

namespace A022355.P13489845228332081797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A022092 n

end

end A022355.P13489845228332081797

namespace A022355

/-- `A022346(n)+A022092(n)` -/
def P13489845228332081797.Spec : Prop :=
  ∀ n, P13489845228332081797.a n = A022355 n

end A022355

/-! ## A022355.P8727475792001983034

`A022347(n)+A022091(n)`
-/

namespace A022355.P8727475792001983034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A022091 n

end

end A022355.P8727475792001983034

namespace A022355

/-- `A022347(n)+A022091(n)` -/
def P8727475792001983034.Spec : Prop :=
  ∀ n, P8727475792001983034.a n = A022355 n

end A022355

/-! ## A022355.P3981553103565317082

`A022348(n)+A022090(n)`
-/

namespace A022355.P3981553103565317082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n + A022090 n

end

end A022355.P3981553103565317082

namespace A022355

/-- `A022348(n)+A022090(n)` -/
def P3981553103565317082.Spec : Prop :=
  ∀ n, P3981553103565317082.a n = A022355 n

end A022355

/-! ## A022355.P9654868797904791143

`A022349(n)+A022089(n)`
-/

namespace A022355.P9654868797904791143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A022089 n

end

end A022355.P9654868797904791143

namespace A022355

/-- `A022349(n)+A022089(n)` -/
def P9654868797904791143.Spec : Prop :=
  ∀ n, P9654868797904791143.a n = A022355 n

end A022355

/-! ## A022355.P4567644621744183364

`A022350(n)+A022088(n)`
-/

namespace A022355.P4567644621744183364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022350 n + A022088 n

end

end A022355.P4567644621744183364

namespace A022355

/-- `A022350(n)+A022088(n)` -/
def P4567644621744183364.Spec : Prop :=
  ∀ n, P4567644621744183364.a n = A022355 n

end A022355

/-!
# A022356: Fibonacci sequence beginning 0, 22.

The programs for A022356, the canonical program `A022356.P14674045787055345271` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022356 has offset 0).

The definition of A022356 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022356.P14674045787055345271

`22*A000045(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022356

/-- `22*A000045(n)` -/
def P14674045787055345271.Spec : Prop :=
  ∀ n, P14674045787055345271.a n = A022356 n

theorem P14674045787055345271.correct : P14674045787055345271.Spec := by
  intro n
  simp only [A022356]

end A022356

/-! ## A022356.P16596155053532581506

`ogf(22x/(1-x-x^2))`
-/

namespace A022356.P16596155053532581506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 22] [1, -1, -1] n

end

end A022356.P16596155053532581506

namespace A022356

/-- `ogf(22x/(1-x-x^2))` -/
def P16596155053532581506.Spec : Prop :=
  ∀ n, P16596155053532581506.a n = A022356 n

end A022356

/-! ## A022356.P1288996219656338634

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=22`
-/

namespace A022356.P1288996219656338634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 22] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022356.P1288996219656338634

namespace A022356

/-- `a(n-1)+a(n-2)` -/
def P1288996219656338634.Spec : Prop :=
  ∀ n, (P1288996219656338634.a n : ℤ) = A022356 n

end A022356

/-! ## A022356.P4440741037926434804

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=22, a(2)=22`
-/

namespace A022356.P4440741037926434804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 22, 22] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A022356.P4440741037926434804

namespace A022356

/-- `2*a(n-1)-a(n-3)` -/
def P4440741037926434804.Spec : Prop :=
  ∀ n, P4440741037926434804.a n = A022356 n

end A022356

/-! ## A022356.P11084622778332147437

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=0, a(1)=22, a(2)=22`
-/

namespace A022356.P11084622778332147437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 22, 22] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022356.P11084622778332147437

namespace A022356

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P11084622778332147437.Spec : Prop :=
  ∀ n, P11084622778332147437.a n = A022356 n

end A022356

/-! ## A022356.P18147420665885163801

`2*A022345(n)`
-/

namespace A022356.P18147420665885163801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022345 n

end

end A022356.P18147420665885163801

namespace A022356

/-- `2*A022345(n)` -/
def P18147420665885163801.Spec : Prop :=
  ∀ n, P18147420665885163801.a n = A022356 n

end A022356

/-! ## A022356.P849045666868465190

`abs(22*A333378(n))`
-/

namespace A022356.P849045666868465190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |22 * A333378 n|

end

end A022356.P849045666868465190

namespace A022356

/-- `abs(22*A333378(n))` -/
def P849045666868465190.Spec : Prop :=
  ∀ n, P849045666868465190.a n = A022356 n

end A022356

/-! ## A022356.P15238402360875493846

`22*A212804(n+1)`
-/

namespace A022356.P15238402360875493846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  22 * A212804 (n + 1)

end

end A022356.P15238402360875493846

namespace A022356

/-- `22*A212804(n+1)` -/
def P15238402360875493846.Spec : Prop :=
  ∀ n, P15238402360875493846.a n = A022356 n

end A022356

/-! ## A022356.P17545729921757599026

`22*(A001611(n)-1)`
-/

namespace A022356.P17545729921757599026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  22 * (A001611 n - 1)

end

end A022356.P17545729921757599026

namespace A022356

/-- `22*(A001611(n)-1)` -/
def P17545729921757599026.Spec : Prop :=
  ∀ n, P17545729921757599026.a n = A022356 n

end A022356

/-! ## A022356.P2669287086748577242

`22*(A002062(n)-n)`
-/

namespace A022356.P2669287086748577242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  22 * (A002062 n - (n : ℤ))

end

end A022356.P2669287086748577242

namespace A022356

/-- `22*(A002062(n)-n)` -/
def P2669287086748577242.Spec : Prop :=
  ∀ n, P2669287086748577242.a n = A022356 n

end A022356

/-! ## A022356.P12490890357972981685

`A022355(n)+A000045(n)`
-/

namespace A022356.P12490890357972981685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022355 n + A000045 n

end

end A022356.P12490890357972981685

namespace A022356

/-- `A022355(n)+A000045(n)` -/
def P12490890357972981685.Spec : Prop :=
  ∀ n, P12490890357972981685.a n = A022356 n

end A022356

/-! ## A022356.P6972896555274419428

`A022346(n)+A022093(n)`
-/

namespace A022356.P6972896555274419428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A022093 n

end

end A022356.P6972896555274419428

namespace A022356

/-- `A022346(n)+A022093(n)` -/
def P6972896555274419428.Spec : Prop :=
  ∀ n, P6972896555274419428.a n = A022356 n

end A022356

/-! ## A022356.P12563365234178434658

`A022347(n)+A022092(n)`
-/

namespace A022356.P12563365234178434658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A022092 n

end

end A022356.P12563365234178434658

namespace A022356

/-- `A022347(n)+A022092(n)` -/
def P12563365234178434658.Spec : Prop :=
  ∀ n, P12563365234178434658.a n = A022356 n

end A022356

/-! ## A022356.P9638958597893871520

`A022348(n)+A022091(n)`
-/

namespace A022356.P9638958597893871520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n + A022091 n

end

end A022356.P9638958597893871520

namespace A022356

/-- `A022348(n)+A022091(n)` -/
def P9638958597893871520.Spec : Prop :=
  ∀ n, P9638958597893871520.a n = A022356 n

end A022356

/-! ## A022356.P5355701303227563178

`A022349(n)+A022090(n)`
-/

namespace A022356.P5355701303227563178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A022090 n

end

end A022356.P5355701303227563178

namespace A022356

/-- `A022349(n)+A022090(n)` -/
def P5355701303227563178.Spec : Prop :=
  ∀ n, P5355701303227563178.a n = A022356 n

end A022356

/-! ## A022356.P16665936543920383664

`A022350(n)+A022089(n)`
-/

namespace A022356.P16665936543920383664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022350 n + A022089 n

end

end A022356.P16665936543920383664

namespace A022356

/-- `A022350(n)+A022089(n)` -/
def P16665936543920383664.Spec : Prop :=
  ∀ n, P16665936543920383664.a n = A022356 n

end A022356

/-! ## A022356.P354323911237064142

`A022351(n)+A022088(n)`
-/

namespace A022356.P354323911237064142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022351 n + A022088 n

end

end A022356.P354323911237064142

namespace A022356

/-- `A022351(n)+A022088(n)` -/
def P354323911237064142.Spec : Prop :=
  ∀ n, P354323911237064142.a n = A022356 n

end A022356

/-! ## A022356.P9506732810429175250

`A022352(n)+A022087(n)`
-/

namespace A022356.P9506732810429175250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022352 n + A022087 n

end

end A022356.P9506732810429175250

namespace A022356

/-- `A022352(n)+A022087(n)` -/
def P9506732810429175250.Spec : Prop :=
  ∀ n, P9506732810429175250.a n = A022356 n

end A022356

/-! ## A022356.P5013564746977978542

`A022353(n)+A022086(n)`
-/

namespace A022356.P5013564746977978542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022353 n + A022086 n

end

end A022356.P5013564746977978542

namespace A022356

/-- `A022353(n)+A022086(n)` -/
def P5013564746977978542.Spec : Prop :=
  ∀ n, P5013564746977978542.a n = A022356 n

end A022356

/-! ## A022356.P14512257252292647120

`A022357(n)-A000045(n)`
-/

namespace A022356.P14512257252292647120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022357 n - A000045 n

end

end A022356.P14512257252292647120

namespace A022356

/-- `A022357(n)-A000045(n)` -/
def P14512257252292647120.Spec : Prop :=
  ∀ n, P14512257252292647120.a n = A022356 n

end A022356

/-!
# A022357: Fibonacci sequence beginning 0, 23.

The programs for A022357, the canonical program `A022357.P7660014603306002529` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022357 has offset 0).

The definition of A022357 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022357.P7660014603306002529

`23*A000045(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022357

/-- `23*A000045(n)` -/
def P7660014603306002529.Spec : Prop :=
  ∀ n, P7660014603306002529.a n = A022357 n

theorem P7660014603306002529.correct : P7660014603306002529.Spec := by
  intro n
  simp only [A022357]

end A022357

/-! ## A022357.P17004596681865932169

`ogf(23x/(1-x-x^2))`
-/

namespace A022357.P17004596681865932169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 23] [1, -1, -1] n

end

end A022357.P17004596681865932169

namespace A022357

/-- `ogf(23x/(1-x-x^2))` -/
def P17004596681865932169.Spec : Prop :=
  ∀ n, P17004596681865932169.a n = A022357 n

end A022357

/-! ## A022357.P49335159545540928

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=23`
-/

namespace A022357.P49335159545540928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 23] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022357.P49335159545540928

namespace A022357

/-- `a(n-1)+a(n-2)` -/
def P49335159545540928.Spec : Prop :=
  ∀ n, (P49335159545540928.a n : ℤ) = A022357 n

end A022357

/-! ## A022357.P3924744965648326283

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=23, a(2)=23`
-/

namespace A022357.P3924744965648326283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 23, 23] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A022357.P3924744965648326283

namespace A022357

/-- `2*a(n-1)-a(n-3)` -/
def P3924744965648326283.Spec : Prop :=
  ∀ n, P3924744965648326283.a n = A022357 n

end A022357

/-! ## A022357.P14519696693193495218

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=0, a(1)=23, a(2)=23`
-/

namespace A022357.P14519696693193495218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 23, 23] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022357.P14519696693193495218

namespace A022357

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P14519696693193495218.Spec : Prop :=
  ∀ n, P14519696693193495218.a n = A022357 n

end A022357

/-! ## A022357.P17618955174893236677

`abs(23*A333378(n))`
-/

namespace A022357.P17618955174893236677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |23 * A333378 n|

end

end A022357.P17618955174893236677

namespace A022357

/-- `abs(23*A333378(n))` -/
def P17618955174893236677.Spec : Prop :=
  ∀ n, P17618955174893236677.a n = A022357 n

end A022357

/-! ## A022357.P17497194584329133544

`23*A212804(n+1)`
-/

namespace A022357.P17497194584329133544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  23 * A212804 (n + 1)

end

end A022357.P17497194584329133544

namespace A022357

/-- `23*A212804(n+1)` -/
def P17497194584329133544.Spec : Prop :=
  ∀ n, P17497194584329133544.a n = A022357 n

end A022357

/-! ## A022357.P4133737425038560374

`23*(A001611(n)-1)`
-/

namespace A022357.P4133737425038560374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  23 * (A001611 n - 1)

end

end A022357.P4133737425038560374

namespace A022357

/-- `23*(A001611(n)-1)` -/
def P4133737425038560374.Spec : Prop :=
  ∀ n, P4133737425038560374.a n = A022357 n

end A022357

/-! ## A022357.P12471705330698935299

`23*Δ[Δ[Δ[A020695(n)]]]`
-/

namespace A022357.P12471705330698935299
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  23 * (f1 (n + 1) - f1 n)

end

end A022357.P12471705330698935299

namespace A022357

/-- `23*Δ[Δ[Δ[A020695(n)]]]` -/
def P12471705330698935299.Spec : Prop :=
  ∀ n, P12471705330698935299.a n = A022357 n

end A022357

/-! ## A022357.P13881247618382368633

`23*Δ[Δ[record[A212804(n)]]]`
-/

namespace A022357.P13881247618382368633
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  23 * (f1 (n + 1) - f1 n)

end

end A022357.P13881247618382368633

namespace A022357

/-- `23*Δ[Δ[record[A212804(n)]]]` -/
def P13881247618382368633.Spec : Prop :=
  ∀ n, P13881247618382368633.a n = A022357 n

end A022357

/-! ## A022357.P792776491845992248

`23*Δ[Δ[A001611(n+2)]]`
-/

namespace A022357.P792776491845992248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  23 * (f1 (n + 1) - f1 n)

end

end A022357.P792776491845992248

namespace A022357

/-- `23*Δ[Δ[A001611(n+2)]]` -/
def P792776491845992248.Spec : Prop :=
  ∀ n, P792776491845992248.a n = A022357 n

end A022357

/-! ## A022357.P2488783338721591360

`A022356(n)+A000045(n)`
-/

namespace A022357.P2488783338721591360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022356 n + A000045 n

end

end A022357.P2488783338721591360

namespace A022357

/-- `A022356(n)+A000045(n)` -/
def P2488783338721591360.Spec : Prop :=
  ∀ n, P2488783338721591360.a n = A022357 n

end A022357

/-! ## A022357.P7511562229164335618

`A022347(n)+A022093(n)`
-/

namespace A022357.P7511562229164335618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A022093 n

end

end A022357.P7511562229164335618

namespace A022357

/-- `A022347(n)+A022093(n)` -/
def P7511562229164335618.Spec : Prop :=
  ∀ n, P7511562229164335618.a n = A022357 n

end A022357

/-! ## A022357.P735727563344493204

`A022348(n)+A022092(n)`
-/

namespace A022357.P735727563344493204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n + A022092 n

end

end A022357.P735727563344493204

namespace A022357

/-- `A022348(n)+A022092(n)` -/
def P735727563344493204.Spec : Prop :=
  ∀ n, P735727563344493204.a n = A022357 n

end A022357

/-! ## A022357.P8337229089376451432

`A022349(n)+A022091(n)`
-/

namespace A022357.P8337229089376451432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A022091 n

end

end A022357.P8337229089376451432

namespace A022357

/-- `A022349(n)+A022091(n)` -/
def P8337229089376451432.Spec : Prop :=
  ∀ n, P8337229089376451432.a n = A022357 n

end A022357

/-! ## A022357.P1402648988081545892

`A022350(n)+A022090(n)`
-/

namespace A022357.P1402648988081545892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022350 n + A022090 n

end

end A022357.P1402648988081545892

namespace A022357

/-- `A022350(n)+A022090(n)` -/
def P1402648988081545892.Spec : Prop :=
  ∀ n, P1402648988081545892.a n = A022357 n

end A022357

/-! ## A022357.P9830669278686596571

`A022351(n)+A022089(n)`
-/

namespace A022357.P9830669278686596571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022351 n + A022089 n

end

end A022357.P9830669278686596571

namespace A022357

/-- `A022351(n)+A022089(n)` -/
def P9830669278686596571.Spec : Prop :=
  ∀ n, P9830669278686596571.a n = A022357 n

end A022357

/-! ## A022357.P16342899994486960598

`A022352(n)+A022088(n)`
-/

namespace A022357.P16342899994486960598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022352 n + A022088 n

end

end A022357.P16342899994486960598

namespace A022357

/-- `A022352(n)+A022088(n)` -/
def P16342899994486960598.Spec : Prop :=
  ∀ n, P16342899994486960598.a n = A022357 n

end A022357

/-! ## A022357.P5684331741806234780

`A022353(n)+A022087(n)`
-/

namespace A022357.P5684331741806234780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022353 n + A022087 n

end

end A022357.P5684331741806234780

namespace A022357

/-- `A022353(n)+A022087(n)` -/
def P5684331741806234780.Spec : Prop :=
  ∀ n, P5684331741806234780.a n = A022357 n

end A022357

/-! ## A022357.P3423885528299213340

`A022354(n)+A022086(n)`
-/

namespace A022357.P3423885528299213340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022354 n + A022086 n

end

end A022357.P3423885528299213340

namespace A022357

/-- `A022354(n)+A022086(n)` -/
def P3423885528299213340.Spec : Prop :=
  ∀ n, P3423885528299213340.a n = A022357 n

end A022357

/-!
# A022358: Fibonacci sequence beginning 0, 24.

The programs for A022358, the canonical program `A022358.P10093818309095177812` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022358 has offset 0).

The definition of A022358 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022358.P10093818309095177812

`24*A000045(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022358

/-- `24*A000045(n)` -/
def P10093818309095177812.Spec : Prop :=
  ∀ n, P10093818309095177812.a n = A022358 n

theorem P10093818309095177812.correct : P10093818309095177812.Spec := by
  intro n
  simp only [A022358]

end A022358

/-! ## A022358.P5015944384382204118

`ogf(24x/(1-x-x^2))`
-/

namespace A022358.P5015944384382204118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 24] [1, -1, -1] n

end

end A022358.P5015944384382204118

namespace A022358

/-- `ogf(24x/(1-x-x^2))` -/
def P5015944384382204118.Spec : Prop :=
  ∀ n, P5015944384382204118.a n = A022358 n

end A022358

/-! ## A022358.P11996557469345474926

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=24`
-/

namespace A022358.P11996557469345474926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 24] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022358.P11996557469345474926

namespace A022358

/-- `a(n-1)+a(n-2)` -/
def P11996557469345474926.Spec : Prop :=
  ∀ n, (P11996557469345474926.a n : ℤ) = A022358 n

end A022358

/-! ## A022358.P16414043059687478804

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=24, a(2)=24`
-/

namespace A022358.P16414043059687478804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 24, 24] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A022358.P16414043059687478804

namespace A022358

/-- `2*a(n-1)-a(n-3)` -/
def P16414043059687478804.Spec : Prop :=
  ∀ n, P16414043059687478804.a n = A022358 n

end A022358

/-! ## A022358.P3239173699771362153

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=0, a(1)=24, a(2)=24`
-/

namespace A022358.P3239173699771362153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 24, 24] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022358.P3239173699771362153

namespace A022358

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P3239173699771362153.Spec : Prop :=
  ∀ n, P3239173699771362153.a n = A022358 n

end A022358

/-! ## A022358.P10741515625839528628

`2*A022346(n)`
-/

namespace A022358.P10741515625839528628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022346 n

end

end A022358.P10741515625839528628

namespace A022358

/-- `2*A022346(n)` -/
def P10741515625839528628.Spec : Prop :=
  ∀ n, P10741515625839528628.a n = A022358 n

end A022358

/-! ## A022358.P13308305556170492613

`3*A022091(n)`
-/

namespace A022358.P13308305556170492613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A022091 n

end

end A022358.P13308305556170492613

namespace A022358

/-- `3*A022091(n)` -/
def P13308305556170492613.Spec : Prop :=
  ∀ n, P13308305556170492613.a n = A022358 n

end A022358

/-! ## A022358.P15036267499151872916

`4*A022089(n)`
-/

namespace A022358.P15036267499151872916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A022089 n

end

end A022358.P15036267499151872916

namespace A022358

/-- `4*A022089(n)` -/
def P15036267499151872916.Spec : Prop :=
  ∀ n, P15036267499151872916.a n = A022358 n

end A022358

/-! ## A022358.P14484897910208023295

`6*A022087(n)`
-/

namespace A022358.P14484897910208023295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A022087 n

end

end A022358.P14484897910208023295

namespace A022358

/-- `6*A022087(n)` -/
def P14484897910208023295.Spec : Prop :=
  ∀ n, P14484897910208023295.a n = A022358 n

end A022358

/-! ## A022358.P2365447836176640054

`8*A022086(n)`
-/

namespace A022358.P2365447836176640054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A022086 n

end

end A022358.P2365447836176640054

namespace A022358

/-- `8*A022086(n)` -/
def P2365447836176640054.Spec : Prop :=
  ∀ n, P2365447836176640054.a n = A022358 n

end A022358

/-! ## A022358.P5793608901665545477

`3/2*A022350(n)`
-/

namespace A022358.P5793608901665545477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A022350 n : ℚ)

end

end A022358.P5793608901665545477

namespace A022358

/-- `3/2*A022350(n)` -/
def P5793608901665545477.Spec : Prop :=
  ∀ n, P5793608901665545477.a n = (A022358 n : ℚ)

end A022358

/-! ## A022358.P5820877657012179678

`4/3*A022352(n)`
-/

namespace A022358.P5820877657012179678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A022352 n : ℚ)

end

end A022358.P5820877657012179678

namespace A022358

/-- `4/3*A022352(n)` -/
def P5820877657012179678.Spec : Prop :=
  ∀ n, P5820877657012179678.a n = (A022358 n : ℚ)

end A022358

/-! ## A022358.P14292107134545784376

`4/5*A022364(n)`
-/

namespace A022358.P14292107134545784376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 5 * (A022364 n : ℚ)

end

end A022358.P14292107134545784376

namespace A022358

/-- `4/5*A022364(n)` -/
def P14292107134545784376.Spec : Prop :=
  ∀ n, P14292107134545784376.a n = (A022358 n : ℚ)

end A022358

/-! ## A022358.P14391958044669108011

`24*(A001611(n)-1)`
-/

namespace A022358.P14391958044669108011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * (A001611 n - 1)

end

end A022358.P14391958044669108011

namespace A022358

/-- `24*(A001611(n)-1)` -/
def P14391958044669108011.Spec : Prop :=
  ∀ n, P14391958044669108011.a n = A022358 n

end A022358

/-! ## A022358.P975535652294564314

`A022357(n)+A000045(n)`
-/

namespace A022358.P975535652294564314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022357 n + A000045 n

end

end A022358.P975535652294564314

namespace A022358

/-- `A022357(n)+A000045(n)` -/
def P975535652294564314.Spec : Prop :=
  ∀ n, P975535652294564314.a n = A022358 n

end A022358

/-! ## A022358.P7247204861836353123

`A022348(n)+A022093(n)`
-/

namespace A022358.P7247204861836353123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n + A022093 n

end

end A022358.P7247204861836353123

namespace A022358

/-- `A022348(n)+A022093(n)` -/
def P7247204861836353123.Spec : Prop :=
  ∀ n, P7247204861836353123.a n = A022358 n

end A022358

/-! ## A022358.P15946632098816354196

`A022349(n)+A022092(n)`
-/

namespace A022358.P15946632098816354196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A022092 n

end

end A022358.P15946632098816354196

namespace A022358

/-- `A022349(n)+A022092(n)` -/
def P15946632098816354196.Spec : Prop :=
  ∀ n, P15946632098816354196.a n = A022358 n

end A022358

/-! ## A022358.P7660159193138095589

`A022350(n)+A022091(n)`
-/

namespace A022358.P7660159193138095589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022350 n + A022091 n

end

end A022358.P7660159193138095589

namespace A022358

/-- `A022350(n)+A022091(n)` -/
def P7660159193138095589.Spec : Prop :=
  ∀ n, P7660159193138095589.a n = A022358 n

end A022358

/-! ## A022358.P8855686953192796219

`A022351(n)+A022090(n)`
-/

namespace A022358.P8855686953192796219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022351 n + A022090 n

end

end A022358.P8855686953192796219

namespace A022358

/-- `A022351(n)+A022090(n)` -/
def P8855686953192796219.Spec : Prop :=
  ∀ n, P8855686953192796219.a n = A022358 n

end A022358

/-! ## A022358.P6976844852288657612

`A022352(n)+A022089(n)`
-/

namespace A022358.P6976844852288657612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022352 n + A022089 n

end

end A022358.P6976844852288657612

namespace A022358

/-- `A022352(n)+A022089(n)` -/
def P6976844852288657612.Spec : Prop :=
  ∀ n, P6976844852288657612.a n = A022358 n

end A022358

/-!
# A022359: Fibonacci sequence beginning 0, 25.

The programs for A022359, the canonical program `A022359.P5202443967155196284` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022359 has offset 0).

The definition of A022359 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022359.P12548707858954271235

`ogf(25x/(1-x-x^2))`
-/

namespace A022359.P12548707858954271235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 25] [1, -1, -1] n

end

end A022359.P12548707858954271235

namespace A022359

/-- `ogf(25x/(1-x-x^2))` -/
def P12548707858954271235.Spec : Prop :=
  ∀ n, P12548707858954271235.a n = A022359 n

end A022359

/-! ## A022359.P5202443967155196284

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=25`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022359

/-- `a(n-1)+a(n-2)` -/
def P5202443967155196284.Spec : Prop :=
  ∀ n, (P5202443967155196284.a n : ℤ) = A022359 n

theorem P5202443967155196284.correct : P5202443967155196284.Spec := by
  intro n
  simp only [A022359]

end A022359

/-! ## A022359.P9815415054690887360

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=25, a(2)=25`
-/

namespace A022359.P9815415054690887360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 25, 25] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A022359.P9815415054690887360

namespace A022359

/-- `2*a(n-1)-a(n-3)` -/
def P9815415054690887360.Spec : Prop :=
  ∀ n, P9815415054690887360.a n = A022359 n

end A022359

/-! ## A022359.P598023768209059690

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=0, a(1)=25, a(2)=25`
-/

namespace A022359.P598023768209059690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 25, 25] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022359.P598023768209059690

namespace A022359

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P598023768209059690.Spec : Prop :=
  ∀ n, P598023768209059690.a n = A022359 n

end A022359

/-! ## A022359.P14301136816231951350

`5*A022088(n)`
-/

namespace A022359.P14301136816231951350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A022088 n

end

end A022359.P14301136816231951350

namespace A022359

/-- `5*A022088(n)` -/
def P14301136816231951350.Spec : Prop :=
  ∀ n, P14301136816231951350.a n = A022359 n

end A022359

/-! ## A022359.P5387251375738147609

`25*A000045(n)`
-/

namespace A022359.P5387251375738147609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 * A000045 n

end

end A022359.P5387251375738147609

namespace A022359

/-- `25*A000045(n)` -/
def P5387251375738147609.Spec : Prop :=
  ∀ n, P5387251375738147609.a n = A022359 n

end A022359

/-! ## A022359.P15996382607044524363

`5/2*A022093(n)`
-/

namespace A022359.P15996382607044524363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 2 * (A022093 n : ℚ)

end

end A022359.P15996382607044524363

namespace A022359

/-- `5/2*A022093(n)` -/
def P15996382607044524363.Spec : Prop :=
  ∀ n, P15996382607044524363.a n = (A022359 n : ℚ)

end A022359

/-! ## A022359.P8442758123118333968

`5/3*A022349(n)`
-/

namespace A022359.P8442758123118333968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 3 * (A022349 n : ℚ)

end

end A022359.P8442758123118333968

namespace A022359

/-- `5/3*A022349(n)` -/
def P8442758123118333968.Spec : Prop :=
  ∀ n, P8442758123118333968.a n = (A022359 n : ℚ)

end A022359

/-! ## A022359.P12782687100714521131

`5/4*A022354(n)`
-/

namespace A022359.P12782687100714521131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 4 * (A022354 n : ℚ)

end

end A022359.P12782687100714521131

namespace A022359

/-- `5/4*A022354(n)` -/
def P12782687100714521131.Spec : Prop :=
  ∀ n, P12782687100714521131.a n = (A022359 n : ℚ)

end A022359

/-! ## A022359.P18342398768927138743

`25*A212804(n+1)`
-/

namespace A022359.P18342398768927138743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 * A212804 (n + 1)

end

end A022359.P18342398768927138743

namespace A022359

/-- `25*A212804(n+1)` -/
def P18342398768927138743.Spec : Prop :=
  ∀ n, P18342398768927138743.a n = A022359 n

end A022359

/-! ## A022359.P11076733608060318695

`25*(A001611(n)-1)`
-/

namespace A022359.P11076733608060318695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 * (A001611 n - 1)

end

end A022359.P11076733608060318695

namespace A022359

/-- `25*(A001611(n)-1)` -/
def P11076733608060318695.Spec : Prop :=
  ∀ n, P11076733608060318695.a n = A022359 n

end A022359

/-! ## A022359.P8215450403989538297

`25/3*A022086(n)`
-/

namespace A022359.P8215450403989538297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (25 : ℚ) / 3 * (A022086 n : ℚ)

end

end A022359.P8215450403989538297

namespace A022359

/-- `25/3*A022086(n)` -/
def P8215450403989538297.Spec : Prop :=
  ∀ n, P8215450403989538297.a n = (A022359 n : ℚ)

end A022359

/-! ## A022359.P8657174339771319351

`25*floor(A187893(n)/3)`
-/

namespace A022359.P8657174339771319351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 * ⌊(A187893 n : ℚ) / 3⌋

end

end A022359.P8657174339771319351

namespace A022359

/-- `25*floor(A187893(n)/3)` -/
def P8657174339771319351.Spec : Prop :=
  ∀ n, P8657174339771319351.a n = A022359 n

end A022359

/-! ## A022359.P6314361530232342055

`25*(A160536(n)-n²)`
-/

namespace A022359.P6314361530232342055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  25 * (A160536 n - (n ^ 2 : ℤ))

end

end A022359.P6314361530232342055

namespace A022359

/-- `25*(A160536(n)-n²)` -/
def P6314361530232342055.Spec : Prop :=
  ∀ n, P6314361530232342055.a n = A022359 n

end A022359

/-! ## A022359.P6297542929264477859

`Δ[A000045(n+1)]/(1/5)²`
-/

namespace A022359.P6297542929264477859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / ((1 : ℚ) / 5) ^ 2

end

end A022359.P6297542929264477859

namespace A022359

/-- `Δ[A000045(n+1)]/(1/5)²` -/
def P6297542929264477859.Spec : Prop :=
  ∀ n, P6297542929264477859.a n = (A022359 n : ℚ)

end A022359

/-! ## A022359.P14604188320121902944

`A022358(n)+A000045(n)`
-/

namespace A022359.P14604188320121902944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022358 n + A000045 n

end

end A022359.P14604188320121902944

namespace A022359

/-- `A022358(n)+A000045(n)` -/
def P14604188320121902944.Spec : Prop :=
  ∀ n, P14604188320121902944.a n = A022359 n

end A022359

/-! ## A022359.P13321994684994067722

`A022349(n)+A022093(n)`
-/

namespace A022359.P13321994684994067722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A022093 n

end

end A022359.P13321994684994067722

namespace A022359

/-- `A022349(n)+A022093(n)` -/
def P13321994684994067722.Spec : Prop :=
  ∀ n, P13321994684994067722.a n = A022359 n

end A022359

/-! ## A022359.P3588970262561390242

`A022350(n)+A022092(n)`
-/

namespace A022359.P3588970262561390242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022350 n + A022092 n

end

end A022359.P3588970262561390242

namespace A022359

/-- `A022350(n)+A022092(n)` -/
def P3588970262561390242.Spec : Prop :=
  ∀ n, P3588970262561390242.a n = A022359 n

end A022359

/-! ## A022359.P8954364696987394588

`A022351(n)+A022091(n)`
-/

namespace A022359.P8954364696987394588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022351 n + A022091 n

end

end A022359.P8954364696987394588

namespace A022359

/-- `A022351(n)+A022091(n)` -/
def P8954364696987394588.Spec : Prop :=
  ∀ n, P8954364696987394588.a n = A022359 n

end A022359

/-!
# A022360: Fibonacci sequence beginning 0, 26.

The programs for A022360, the canonical program `A022360.P3825721097200071590` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022360 has offset 0).

The definition of A022360 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022360.P3825721097200071590

`26*A000045(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022360

/-- `26*A000045(n)` -/
def P3825721097200071590.Spec : Prop :=
  ∀ n, P3825721097200071590.a n = A022360 n

theorem P3825721097200071590.correct : P3825721097200071590.Spec := by
  intro n
  simp only [A022360]

end A022360

/-! ## A022360.P5152134851347251461

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=26`
-/

namespace A022360.P5152134851347251461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 26] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022360.P5152134851347251461

namespace A022360

/-- `a(n-1)+a(n-2)` -/
def P5152134851347251461.Spec : Prop :=
  ∀ n, (P5152134851347251461.a n : ℤ) = A022360 n

end A022360

/-! ## A022360.P5337853550363066621

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=0, a(1)=26, a(2)=26`
-/

namespace A022360.P5337853550363066621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 26, 26] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022360.P5337853550363066621

namespace A022360

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P5337853550363066621.Spec : Prop :=
  ∀ n, P5337853550363066621.a n = A022360 n

end A022360

/-! ## A022360.P15380657781395269351

`2*A022347(n)`
-/

namespace A022360.P15380657781395269351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022347 n

end

end A022360.P15380657781395269351

namespace A022360

/-- `2*A022347(n)` -/
def P15380657781395269351.Spec : Prop :=
  ∀ n, P15380657781395269351.a n = A022360 n

end A022360

/-! ## A022360.P11915698953269451204

`abs(26*A333378(n))`
-/

namespace A022360.P11915698953269451204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |26 * A333378 n|

end

end A022360.P11915698953269451204

namespace A022360

/-- `abs(26*A333378(n))` -/
def P11915698953269451204.Spec : Prop :=
  ∀ n, P11915698953269451204.a n = A022360 n

end A022360

/-! ## A022360.P4589689433111328966

`26*(A001611(n)-1)`
-/

namespace A022360.P4589689433111328966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  26 * (A001611 n - 1)

end

end A022360.P4589689433111328966

namespace A022360

/-- `26*(A001611(n)-1)` -/
def P4589689433111328966.Spec : Prop :=
  ∀ n, P4589689433111328966.a n = A022360 n

end A022360

/-! ## A022360.P13485202266040620214

`A022359(n)+A000045(n)`
-/

namespace A022360.P13485202266040620214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022359 n + A000045 n

end

end A022360.P13485202266040620214

namespace A022360

/-- `A022359(n)+A000045(n)` -/
def P13485202266040620214.Spec : Prop :=
  ∀ n, P13485202266040620214.a n = A022360 n

end A022360

/-! ## A022360.P11976311721665571409

`A022350(n)+A022093(n)`
-/

namespace A022360.P11976311721665571409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022350 n + A022093 n

end

end A022360.P11976311721665571409

namespace A022360

/-- `A022350(n)+A022093(n)` -/
def P11976311721665571409.Spec : Prop :=
  ∀ n, P11976311721665571409.a n = A022360 n

end A022360

/-! ## A022360.P15946516780605642191

`A022351(n)+A022092(n)`
-/

namespace A022360.P15946516780605642191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022351 n + A022092 n

end

end A022360.P15946516780605642191

namespace A022360

/-- `A022351(n)+A022092(n)` -/
def P15946516780605642191.Spec : Prop :=
  ∀ n, P15946516780605642191.a n = A022360 n

end A022360

/-! ## A022360.P8855748020715847257

`A022352(n)+A022091(n)`
-/

namespace A022360.P8855748020715847257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022352 n + A022091 n

end

end A022360.P8855748020715847257

namespace A022360

/-- `A022352(n)+A022091(n)` -/
def P8855748020715847257.Spec : Prop :=
  ∀ n, P8855748020715847257.a n = A022360 n

end A022360

/-! ## A022360.P3147203041991769713

`A022353(n)+A022090(n)`
-/

namespace A022360.P3147203041991769713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022353 n + A022090 n

end

end A022360.P3147203041991769713

namespace A022360

/-- `A022353(n)+A022090(n)` -/
def P3147203041991769713.Spec : Prop :=
  ∀ n, P3147203041991769713.a n = A022360 n

end A022360

/-! ## A022360.P14008817677662307005

`A022354(n)+A022089(n)`
-/

namespace A022360.P14008817677662307005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022354 n + A022089 n

end

end A022360.P14008817677662307005

namespace A022360

/-- `A022354(n)+A022089(n)` -/
def P14008817677662307005.Spec : Prop :=
  ∀ n, P14008817677662307005.a n = A022360 n

end A022360

/-! ## A022360.P6509003355563813816

`A022355(n)+A022088(n)`
-/

namespace A022360.P6509003355563813816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022355 n + A022088 n

end

end A022360.P6509003355563813816

namespace A022360

/-- `A022355(n)+A022088(n)` -/
def P6509003355563813816.Spec : Prop :=
  ∀ n, P6509003355563813816.a n = A022360 n

end A022360

/-! ## A022360.P5025575238895560109

`A022356(n)+A022087(n)`
-/

namespace A022360.P5025575238895560109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022356 n + A022087 n

end

end A022360.P5025575238895560109

namespace A022360

/-- `A022356(n)+A022087(n)` -/
def P5025575238895560109.Spec : Prop :=
  ∀ n, P5025575238895560109.a n = A022360 n

end A022360

/-! ## A022360.P5953340922478687437

`A022357(n)+A022086(n)`
-/

namespace A022360.P5953340922478687437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022357 n + A022086 n

end

end A022360.P5953340922478687437

namespace A022360

/-- `A022357(n)+A022086(n)` -/
def P5953340922478687437.Spec : Prop :=
  ∀ n, P5953340922478687437.a n = A022360 n

end A022360

/-! ## A022360.P13263525173268146150

`A022348(n)+A022346(n)`
-/

namespace A022360.P13263525173268146150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n + A022346 n

end

end A022360.P13263525173268146150

namespace A022360

/-- `A022348(n)+A022346(n)` -/
def P13263525173268146150.Spec : Prop :=
  ∀ n, P13263525173268146150.a n = A022360 n

end A022360

/-! ## A022360.P5238205882545029376

`A022349(n)+A022345(n)`
-/

namespace A022360.P5238205882545029376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A022345 n

end

end A022360.P5238205882545029376

namespace A022360

/-- `A022349(n)+A022345(n)` -/
def P5238205882545029376.Spec : Prop :=
  ∀ n, P5238205882545029376.a n = A022360 n

end A022360

/-! ## A022360.P9868276995939915267

`A022361(n)-A000045(n)`
-/

namespace A022360.P9868276995939915267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022361 n - A000045 n

end

end A022360.P9868276995939915267

namespace A022360

/-- `A022361(n)-A000045(n)` -/
def P9868276995939915267.Spec : Prop :=
  ∀ n, P9868276995939915267.a n = A022360 n

end A022360

/-! ## A022360.P12797781753816837202

`A022400(n)-A000285(n)`
-/

namespace A022360.P12797781753816837202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022400 n - A000285 n

end

end A022360.P12797781753816837202

namespace A022360

/-- `A022400(n)-A000285(n)` -/
def P12797781753816837202.Spec : Prop :=
  ∀ n, P12797781753816837202.a n = A022360 n

end A022360

/-! ## A022360.P635084709853729300

`A022363(n)-A022086(n)`
-/

namespace A022360.P635084709853729300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022363 n - A022086 n

end

end A022360.P635084709853729300

namespace A022360

/-- `A022363(n)-A022086(n)` -/
def P635084709853729300.Spec : Prop :=
  ∀ n, P635084709853729300.a n = A022360 n

end A022360

/-!
# A022361: Fibonacci sequence beginning 0, 27.

The programs for A022361, the canonical program `A022361.P9439601930716895092` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022361 has offset 0).

The definition of A022361 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022361.P9439601930716895092

`27*A000045(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022361

/-- `27*A000045(n)` -/
def P9439601930716895092.Spec : Prop :=
  ∀ n, P9439601930716895092.a n = A022361 n

theorem P9439601930716895092.correct : P9439601930716895092.Spec := by
  intro n
  simp only [A022361]

end A022361

/-! ## A022361.P14914089276363262935

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=27`
-/

namespace A022361.P14914089276363262935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 27] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022361.P14914089276363262935

namespace A022361

/-- `a(n-1)+a(n-2)` -/
def P14914089276363262935.Spec : Prop :=
  ∀ n, (P14914089276363262935.a n : ℤ) = A022361 n

end A022361

/-! ## A022361.P17149429006008026568

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=0, a(1)=27, a(2)=27`
-/

namespace A022361.P17149429006008026568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 27, 27] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022361.P17149429006008026568

namespace A022361

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P17149429006008026568.Spec : Prop :=
  ∀ n, P17149429006008026568.a n = A022361 n

end A022361

/-! ## A022361.P14290993220895397922

`3*A022092(n)`
-/

namespace A022361.P14290993220895397922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A022092 n

end

end A022361.P14290993220895397922

namespace A022361

/-- `3*A022092(n)` -/
def P14290993220895397922.Spec : Prop :=
  ∀ n, P14290993220895397922.a n = A022361 n

end A022361

/-! ## A022361.P4764561884019066966

`9*A022086(n)`
-/

namespace A022361.P4764561884019066966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A022086 n

end

end A022361.P4764561884019066966

namespace A022361

/-- `9*A022086(n)` -/
def P4764561884019066966.Spec : Prop :=
  ∀ n, P4764561884019066966.a n = A022361 n

end A022361

/-! ## A022361.P13035817717940947880

`3/2*A022352(n)`
-/

namespace A022361.P13035817717940947880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A022352 n : ℚ)

end

end A022361.P13035817717940947880

namespace A022361

/-- `3/2*A022352(n)` -/
def P13035817717940947880.Spec : Prop :=
  ∀ n, P13035817717940947880.a n = (A022361 n : ℚ)

end A022361

/-! ## A022361.P15849006441945485690

`27*(A001611(n)-1)`
-/

namespace A022361.P15849006441945485690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  27 * (A001611 n - 1)

end

end A022361.P15849006441945485690

namespace A022361

/-- `27*(A001611(n)-1)` -/
def P15849006441945485690.Spec : Prop :=
  ∀ n, P15849006441945485690.a n = A022361 n

end A022361

/-! ## A022361.P4921585875574335736

`A022360(n)+A000045(n)`
-/

namespace A022361.P4921585875574335736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022360 n + A000045 n

end

end A022361.P4921585875574335736

namespace A022361

/-- `A022360(n)+A000045(n)` -/
def P4921585875574335736.Spec : Prop :=
  ∀ n, P4921585875574335736.a n = A022361 n

end A022361

/-! ## A022361.P5377964257860511777

`A022351(n)+A022093(n)`
-/

namespace A022361.P5377964257860511777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022351 n + A022093 n

end

end A022361.P5377964257860511777

namespace A022361

/-- `A022351(n)+A022093(n)` -/
def P5377964257860511777.Spec : Prop :=
  ∀ n, P5377964257860511777.a n = A022361 n

end A022361

/-! ## A022361.P14828397595301887276

`A022352(n)+A022092(n)`
-/

namespace A022361.P14828397595301887276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022352 n + A022092 n

end

end A022361.P14828397595301887276

namespace A022361

/-- `A022352(n)+A022092(n)` -/
def P14828397595301887276.Spec : Prop :=
  ∀ n, P14828397595301887276.a n = A022361 n

end A022361

/-! ## A022361.P45737557578284932

`A022353(n)+A022091(n)`
-/

namespace A022361.P45737557578284932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022353 n + A022091 n

end

end A022361.P45737557578284932

namespace A022361

/-- `A022353(n)+A022091(n)` -/
def P45737557578284932.Spec : Prop :=
  ∀ n, P45737557578284932.a n = A022361 n

end A022361

/-! ## A022361.P3263632285275733037

`A022354(n)+A022090(n)`
-/

namespace A022361.P3263632285275733037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022354 n + A022090 n

end

end A022361.P3263632285275733037

namespace A022361

/-- `A022354(n)+A022090(n)` -/
def P3263632285275733037.Spec : Prop :=
  ∀ n, P3263632285275733037.a n = A022361 n

end A022361

/-! ## A022361.P6813016869361565109

`A022355(n)+A022089(n)`
-/

namespace A022361.P6813016869361565109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022355 n + A022089 n

end

end A022361.P6813016869361565109

namespace A022361

/-- `A022355(n)+A022089(n)` -/
def P6813016869361565109.Spec : Prop :=
  ∀ n, P6813016869361565109.a n = A022361 n

end A022361

/-! ## A022361.P14499874837674379040

`A022356(n)+A022088(n)`
-/

namespace A022361.P14499874837674379040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022356 n + A022088 n

end

end A022361.P14499874837674379040

namespace A022361

/-- `A022356(n)+A022088(n)` -/
def P14499874837674379040.Spec : Prop :=
  ∀ n, P14499874837674379040.a n = A022361 n

end A022361

/-! ## A022361.P3200794785535232694

`A022357(n)+A022087(n)`
-/

namespace A022361.P3200794785535232694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022357 n + A022087 n

end

end A022361.P3200794785535232694

namespace A022361

/-- `A022357(n)+A022087(n)` -/
def P3200794785535232694.Spec : Prop :=
  ∀ n, P3200794785535232694.a n = A022361 n

end A022361

/-! ## A022361.P12547995782357421881

`A022358(n)+A022086(n)`
-/

namespace A022361.P12547995782357421881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022358 n + A022086 n

end

end A022361.P12547995782357421881

namespace A022361

/-- `A022358(n)+A022086(n)` -/
def P12547995782357421881.Spec : Prop :=
  ∀ n, P12547995782357421881.a n = A022361 n

end A022361

/-! ## A022361.P16813403791803437070

`A022348(n)+A022347(n)`
-/

namespace A022361.P16813403791803437070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n + A022347 n

end

end A022361.P16813403791803437070

namespace A022361

/-- `A022348(n)+A022347(n)` -/
def P16813403791803437070.Spec : Prop :=
  ∀ n, P16813403791803437070.a n = A022361 n

end A022361

/-! ## A022361.P10709837702940364891

`A022349(n)+A022346(n)`
-/

namespace A022361.P10709837702940364891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A022346 n

end

end A022361.P10709837702940364891

namespace A022361

/-- `A022349(n)+A022346(n)` -/
def P10709837702940364891.Spec : Prop :=
  ∀ n, P10709837702940364891.a n = A022361 n

end A022361

/-! ## A022361.P4373659150224289583

`A022350(n)+A022345(n)`
-/

namespace A022361.P4373659150224289583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022350 n + A022345 n

end

end A022361.P4373659150224289583

namespace A022361

/-- `A022350(n)+A022345(n)` -/
def P4373659150224289583.Spec : Prop :=
  ∀ n, P4373659150224289583.a n = A022361 n

end A022361

/-! ## A022361.P5784677569462337644

`A022362(n)-A000045(n)`
-/

namespace A022361.P5784677569462337644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022362 n - A000045 n

end

end A022361.P5784677569462337644

namespace A022361

/-- `A022362(n)-A000045(n)` -/
def P5784677569462337644.Spec : Prop :=
  ∀ n, P5784677569462337644.a n = A022361 n

end A022361

/-!
# A022362: Fibonacci sequence beginning 0, 28.

The programs for A022362, the canonical program `A022362.P11876149498119894087` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022362 has offset 0).

The definition of A022362 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022362.P11876149498119894087

`28*A000045(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022362

/-- `28*A000045(n)` -/
def P11876149498119894087.Spec : Prop :=
  ∀ n, P11876149498119894087.a n = A022362 n

theorem P11876149498119894087.correct : P11876149498119894087.Spec := by
  intro n
  simp only [A022362]

end A022362

/-! ## A022362.P17997744034034430238

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=28`
-/

namespace A022362.P17997744034034430238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 28] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022362.P17997744034034430238

namespace A022362

/-- `a(n-1)+a(n-2)` -/
def P17997744034034430238.Spec : Prop :=
  ∀ n, (P17997744034034430238.a n : ℤ) = A022362 n

end A022362

/-! ## A022362.P13721328104700658478

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=0, a(1)=28, a(2)=28`
-/

namespace A022362.P13721328104700658478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 28, 28] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022362.P13721328104700658478

namespace A022362

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P13721328104700658478.Spec : Prop :=
  ∀ n, P13721328104700658478.a n = A022362 n

end A022362

/-! ## A022362.P17432728157982943114

`2*A022348(n)`
-/

namespace A022362.P17432728157982943114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022348 n

end

end A022362.P17432728157982943114

namespace A022362

/-- `2*A022348(n)` -/
def P17432728157982943114.Spec : Prop :=
  ∀ n, P17432728157982943114.a n = A022362 n

end A022362

/-! ## A022362.P222362093993009633

`4*A022090(n)`
-/

namespace A022362.P222362093993009633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A022090 n

end

end A022362.P222362093993009633

namespace A022362

/-- `4*A022090(n)` -/
def P222362093993009633.Spec : Prop :=
  ∀ n, P222362093993009633.a n = A022362 n

end A022362

/-! ## A022362.P4356131831625713082

`7*A022087(n)`
-/

namespace A022362.P4356131831625713082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A022087 n

end

end A022362.P4356131831625713082

namespace A022362

/-- `7*A022087(n)` -/
def P4356131831625713082.Spec : Prop :=
  ∀ n, P4356131831625713082.a n = A022362 n

end A022362

/-! ## A022362.P17138937209003692244

`4/3*A022355(n)`
-/

namespace A022362.P17138937209003692244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A022355 n : ℚ)

end

end A022362.P17138937209003692244

namespace A022362

/-- `4/3*A022355(n)` -/
def P17138937209003692244.Spec : Prop :=
  ∀ n, P17138937209003692244.a n = (A022362 n : ℚ)

end A022362

/-! ## A022362.P13954268156517709675

`28*(A001611(n)-1)`
-/

namespace A022362.P13954268156517709675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  28 * (A001611 n - 1)

end

end A022362.P13954268156517709675

namespace A022362

/-- `28*(A001611(n)-1)` -/
def P13954268156517709675.Spec : Prop :=
  ∀ n, P13954268156517709675.a n = A022362 n

end A022362

/-! ## A022362.P7369977648660781445

`2*14*Δ[A000071(n+1)]`
-/

namespace A022362.P7369977648660781445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (14 * (f1 (n + 1) - f1 n))

end

end A022362.P7369977648660781445

namespace A022362

/-- `2*14*Δ[A000071(n+1)]` -/
def P7369977648660781445.Spec : Prop :=
  ∀ n, P7369977648660781445.a n = A022362 n

end A022362

/-! ## A022362.P4496079433518816619

`A022361(n)+A000045(n)`
-/

namespace A022362.P4496079433518816619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022361 n + A000045 n

end

end A022362.P4496079433518816619

namespace A022362

/-- `A022361(n)+A000045(n)` -/
def P4496079433518816619.Spec : Prop :=
  ∀ n, P4496079433518816619.a n = A022362 n

end A022362

/-! ## A022362.P4422305188399679617

`A022352(n)+A022093(n)`
-/

namespace A022362.P4422305188399679617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022352 n + A022093 n

end

end A022362.P4422305188399679617

namespace A022362

/-- `A022352(n)+A022093(n)` -/
def P4422305188399679617.Spec : Prop :=
  ∀ n, P4422305188399679617.a n = A022362 n

end A022362

/-! ## A022362.P18004421572737678526

`A022353(n)+A022092(n)`
-/

namespace A022362.P18004421572737678526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022353 n + A022092 n

end

end A022362.P18004421572737678526

namespace A022362

/-- `A022353(n)+A022092(n)` -/
def P18004421572737678526.Spec : Prop :=
  ∀ n, P18004421572737678526.a n = A022362 n

end A022362

/-! ## A022362.P12084742588184154781

`A022354(n)+A022091(n)`
-/

namespace A022362.P12084742588184154781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022354 n + A022091 n

end

end A022362.P12084742588184154781

namespace A022362

/-- `A022354(n)+A022091(n)` -/
def P12084742588184154781.Spec : Prop :=
  ∀ n, P12084742588184154781.a n = A022362 n

end A022362

/-! ## A022362.P17642331338028008805

`A022355(n)+A022090(n)`
-/

namespace A022362.P17642331338028008805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022355 n + A022090 n

end

end A022362.P17642331338028008805

namespace A022362

/-- `A022355(n)+A022090(n)` -/
def P17642331338028008805.Spec : Prop :=
  ∀ n, P17642331338028008805.a n = A022362 n

end A022362

/-! ## A022362.P18044716646909949964

`A022356(n)+A022089(n)`
-/

namespace A022362.P18044716646909949964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022356 n + A022089 n

end

end A022362.P18044716646909949964

namespace A022362

/-- `A022356(n)+A022089(n)` -/
def P18044716646909949964.Spec : Prop :=
  ∀ n, P18044716646909949964.a n = A022362 n

end A022362

/-! ## A022362.P7475486516980314833

`A022357(n)+A022088(n)`
-/

namespace A022362.P7475486516980314833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022357 n + A022088 n

end

end A022362.P7475486516980314833

namespace A022362

/-- `A022357(n)+A022088(n)` -/
def P7475486516980314833.Spec : Prop :=
  ∀ n, P7475486516980314833.a n = A022362 n

end A022362

/-! ## A022362.P7085078139556033368

`A022358(n)+A022087(n)`
-/

namespace A022362.P7085078139556033368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022358 n + A022087 n

end

end A022362.P7085078139556033368

namespace A022362

/-- `A022358(n)+A022087(n)` -/
def P7085078139556033368.Spec : Prop :=
  ∀ n, P7085078139556033368.a n = A022362 n

end A022362

/-! ## A022362.P1175340065016749940

`A022359(n)+A022086(n)`
-/

namespace A022362.P1175340065016749940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022359 n + A022086 n

end

end A022362.P1175340065016749940

namespace A022362

/-- `A022359(n)+A022086(n)` -/
def P1175340065016749940.Spec : Prop :=
  ∀ n, P1175340065016749940.a n = A022362 n

end A022362

/-! ## A022362.P15452538160751569774

`A022349(n)+A022347(n)`
-/

namespace A022362.P15452538160751569774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A022347 n

end

end A022362.P15452538160751569774

namespace A022362

/-- `A022349(n)+A022347(n)` -/
def P15452538160751569774.Spec : Prop :=
  ∀ n, P15452538160751569774.a n = A022362 n

end A022362

/-! ## A022362.P14577971619514602038

`A022350(n)+A022346(n)`
-/

namespace A022362.P14577971619514602038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022350 n + A022346 n

end

end A022362.P14577971619514602038

namespace A022362

/-- `A022350(n)+A022346(n)` -/
def P14577971619514602038.Spec : Prop :=
  ∀ n, P14577971619514602038.a n = A022362 n

end A022362

/-!
# A022363: Fibonacci sequence beginning 0, 29.

The programs for A022363, the canonical program `A022363.P16931110873472012171` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022363 has offset 0).

The definition of A022363 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022363.P16931110873472012171

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=29`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022363

/-- `a(n-1)+a(n-2)` -/
def P16931110873472012171.Spec : Prop :=
  ∀ n, (P16931110873472012171.a n : ℤ) = A022363 n

theorem P16931110873472012171.correct : P16931110873472012171.Spec := by
  intro n
  simp only [A022363]

end A022363

/-! ## A022363.P8882395211890272039

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=0, a(1)=29, a(2)=29`
-/

namespace A022363.P8882395211890272039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 29, 29] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022363.P8882395211890272039

namespace A022363

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P8882395211890272039.Spec : Prop :=
  ∀ n, P8882395211890272039.a n = A022363 n

end A022363

/-! ## A022363.P1206973455911235853

`29*A000045(n)`
-/

namespace A022363.P1206973455911235853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  29 * A000045 n

end

end A022363.P1206973455911235853

namespace A022363

/-- `29*A000045(n)` -/
def P1206973455911235853.Spec : Prop :=
  ∀ n, P1206973455911235853.a n = A022363 n

end A022363

/-! ## A022363.P4116948078955609598

`A022362(n)+A000045(n)`
-/

namespace A022363.P4116948078955609598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022362 n + A000045 n

end

end A022363.P4116948078955609598

namespace A022363

/-- `A022362(n)+A000045(n)` -/
def P4116948078955609598.Spec : Prop :=
  ∀ n, P4116948078955609598.a n = A022363 n

end A022363

/-! ## A022363.P15749487811964109236

`A022353(n)+A022093(n)`
-/

namespace A022363.P15749487811964109236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022353 n + A022093 n

end

end A022363.P15749487811964109236

namespace A022363

/-- `A022353(n)+A022093(n)` -/
def P15749487811964109236.Spec : Prop :=
  ∀ n, P15749487811964109236.a n = A022363 n

end A022363

/-! ## A022363.P16561410567087999290

`A022354(n)+A022092(n)`
-/

namespace A022363.P16561410567087999290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022354 n + A022092 n

end

end A022363.P16561410567087999290

namespace A022363

/-- `A022354(n)+A022092(n)` -/
def P16561410567087999290.Spec : Prop :=
  ∀ n, P16561410567087999290.a n = A022363 n

end A022363

/-! ## A022363.P4886105301669034612

`A022355(n)+A022091(n)`
-/

namespace A022363.P4886105301669034612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022355 n + A022091 n

end

end A022363.P4886105301669034612

namespace A022363

/-- `A022355(n)+A022091(n)` -/
def P4886105301669034612.Spec : Prop :=
  ∀ n, P4886105301669034612.a n = A022363 n

end A022363

/-! ## A022363.P10009737594947778511

`A022356(n)+A022090(n)`
-/

namespace A022363.P10009737594947778511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022356 n + A022090 n

end

end A022363.P10009737594947778511

namespace A022363

/-- `A022356(n)+A022090(n)` -/
def P10009737594947778511.Spec : Prop :=
  ∀ n, P10009737594947778511.a n = A022363 n

end A022363

/-! ## A022363.P4615144140094842832

`A022357(n)+A022089(n)`
-/

namespace A022363.P4615144140094842832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022357 n + A022089 n

end

end A022363.P4615144140094842832

namespace A022363

/-- `A022357(n)+A022089(n)` -/
def P4615144140094842832.Spec : Prop :=
  ∀ n, P4615144140094842832.a n = A022363 n

end A022363

/-! ## A022363.P17805812308443237028

`A022358(n)+A022088(n)`
-/

namespace A022363.P17805812308443237028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022358 n + A022088 n

end

end A022363.P17805812308443237028

namespace A022363

/-- `A022358(n)+A022088(n)` -/
def P17805812308443237028.Spec : Prop :=
  ∀ n, P17805812308443237028.a n = A022363 n

end A022363

/-! ## A022363.P10562055213452544803

`A022359(n)+A022087(n)`
-/

namespace A022363.P10562055213452544803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022359 n + A022087 n

end

end A022363.P10562055213452544803

namespace A022363

/-- `A022359(n)+A022087(n)` -/
def P10562055213452544803.Spec : Prop :=
  ∀ n, P10562055213452544803.a n = A022363 n

end A022363

/-! ## A022363.P11636271448059142278

`A022360(n)+A022086(n)`
-/

namespace A022363.P11636271448059142278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022360 n + A022086 n

end

end A022363.P11636271448059142278

namespace A022363

/-- `A022360(n)+A022086(n)` -/
def P11636271448059142278.Spec : Prop :=
  ∀ n, P11636271448059142278.a n = A022363 n

end A022363

/-! ## A022363.P9624492951375463254

`A022349(n)+A022348(n)`
-/

namespace A022363.P9624492951375463254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A022348 n

end

end A022363.P9624492951375463254

namespace A022363

/-- `A022349(n)+A022348(n)` -/
def P9624492951375463254.Spec : Prop :=
  ∀ n, P9624492951375463254.a n = A022363 n

end A022363

/-! ## A022363.P3940353259383370935

`A022350(n)+A022347(n)`
-/

namespace A022363.P3940353259383370935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022350 n + A022347 n

end

end A022363.P3940353259383370935

namespace A022363

/-- `A022350(n)+A022347(n)` -/
def P3940353259383370935.Spec : Prop :=
  ∀ n, P3940353259383370935.a n = A022363 n

end A022363

/-! ## A022363.P9665758815913628110

`A022351(n)+A022346(n)`
-/

namespace A022363.P9665758815913628110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022351 n + A022346 n

end

end A022363.P9665758815913628110

namespace A022363

/-- `A022351(n)+A022346(n)` -/
def P9665758815913628110.Spec : Prop :=
  ∀ n, P9665758815913628110.a n = A022363 n

end A022363

/-! ## A022363.P7386179044800630486

`A022352(n)+A022345(n)`
-/

namespace A022363.P7386179044800630486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022352 n + A022345 n

end

end A022363.P7386179044800630486

namespace A022363

/-- `A022352(n)+A022345(n)` -/
def P7386179044800630486.Spec : Prop :=
  ∀ n, P7386179044800630486.a n = A022363 n

end A022363

/-! ## A022363.P2873621840986263453

`A022364(n)-A000045(n)`
-/

namespace A022363.P2873621840986263453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022364 n - A000045 n

end

end A022363.P2873621840986263453

namespace A022363

/-- `A022364(n)-A000045(n)` -/
def P2873621840986263453.Spec : Prop :=
  ∀ n, P2873621840986263453.a n = A022363 n

end A022363

/-! ## A022363.P14847539673655957266

`A022377(n)-A000032(n)`
-/

namespace A022363.P14847539673655957266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022377 n - A000032 n

end

end A022363.P14847539673655957266

namespace A022363

/-- `A022377(n)-A000032(n)` -/
def P14847539673655957266.Spec : Prop :=
  ∀ n, P14847539673655957266.a n = A022363 n

end A022363

/-! ## A022363.P9308697503552305046

`A022398(n)-A152163(n)`
-/

namespace A022363.P9308697503552305046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022398 n - A152163 n

end

end A022363.P9308697503552305046

namespace A022363

/-- `A022398(n)-A152163(n)` -/
def P9308697503552305046.Spec : Prop :=
  ∀ n, P9308697503552305046.a n = A022363 n

end A022363

/-! ## A022363.P15497409595630780385

`A022399(n)-A212804(n)`
-/

namespace A022363.P15497409595630780385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022399 n - A212804 n

end

end A022363.P15497409595630780385

namespace A022363

/-- `A022399(n)-A212804(n)` -/
def P15497409595630780385.Spec : Prop :=
  ∀ n, P15497409595630780385.a n = A022363 n

end A022363

/-!
# A022364: Fibonacci sequence beginning 0, 30.

The programs for A022364, the canonical program `A022364.P14315637697114975476` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022364 has offset 0).

The definition of A022364 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022364.P14315637697114975476

`30*A000045(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022364

/-- `30*A000045(n)` -/
def P14315637697114975476.Spec : Prop :=
  ∀ n, P14315637697114975476.a n = A022364 n

theorem P14315637697114975476.correct : P14315637697114975476.Spec := by
  intro n
  simp only [A022364]

end A022364

/-! ## A022364.P1996143829945148334

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=30`
-/

namespace A022364.P1996143829945148334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 30] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022364.P1996143829945148334

namespace A022364

/-- `a(n-1)+a(n-2)` -/
def P1996143829945148334.Spec : Prop :=
  ∀ n, (P1996143829945148334.a n : ℤ) = A022364 n

end A022364

/-! ## A022364.P4006136092258564208

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=0, a(1)=30, a(2)=30`
-/

namespace A022364.P4006136092258564208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 30, 30] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022364.P4006136092258564208

namespace A022364

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P4006136092258564208.Spec : Prop :=
  ∀ n, P4006136092258564208.a n = A022364 n

end A022364

/-! ## A022364.P14113595808808629120

`2*A022349(n)`
-/

namespace A022364.P14113595808808629120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022349 n

end

end A022364.P14113595808808629120

namespace A022364

/-- `2*A022349(n)` -/
def P14113595808808629120.Spec : Prop :=
  ∀ n, P14113595808808629120.a n = A022364 n

end A022364

/-! ## A022364.P8481784997678770873

`3*A022093(n)`
-/

namespace A022364.P8481784997678770873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A022093 n

end

end A022364.P8481784997678770873

namespace A022364

/-- `3*A022093(n)` -/
def P8481784997678770873.Spec : Prop :=
  ∀ n, P8481784997678770873.a n = A022364 n

end A022364

/-! ## A022364.P11716610103636299286

`5*A022089(n)`
-/

namespace A022364.P11716610103636299286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A022089 n

end

end A022364.P11716610103636299286

namespace A022364

/-- `5*A022089(n)` -/
def P11716610103636299286.Spec : Prop :=
  ∀ n, P11716610103636299286.a n = A022364 n

end A022364

/-! ## A022364.P1421375808846860103

`6*A022088(n)`
-/

namespace A022364.P1421375808846860103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A022088 n

end

end A022364.P1421375808846860103

namespace A022364

/-- `6*A022088(n)` -/
def P1421375808846860103.Spec : Prop :=
  ∀ n, P1421375808846860103.a n = A022364 n

end A022364

/-! ## A022364.P6438014421272958548

`10*A022086(n)`
-/

namespace A022364.P6438014421272958548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A022086 n

end

end A022364.P6438014421272958548

namespace A022364

/-- `10*A022086(n)` -/
def P6438014421272958548.Spec : Prop :=
  ∀ n, P6438014421272958548.a n = A022364 n

end A022364

/-! ## A022364.P6239621853051166068

`3/2*A022354(n)`
-/

namespace A022364.P6239621853051166068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A022354 n : ℚ)

end

end A022364.P6239621853051166068

namespace A022364

/-- `3/2*A022354(n)` -/
def P6239621853051166068.Spec : Prop :=
  ∀ n, P6239621853051166068.a n = (A022364 n : ℚ)

end A022364

/-! ## A022364.P10171750884714779230

`5/2*A022346(n)`
-/

namespace A022364.P10171750884714779230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 2 * (A022346 n : ℚ)

end

end A022364.P10171750884714779230

namespace A022364

/-- `5/2*A022346(n)` -/
def P10171750884714779230.Spec : Prop :=
  ∀ n, P10171750884714779230.a n = (A022364 n : ℚ)

end A022364

/-! ## A022364.P10091373654250495499

`5/3*A022352(n)`
-/

namespace A022364.P10091373654250495499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 3 * (A022352 n : ℚ)

end

end A022364.P10091373654250495499

namespace A022364

/-- `5/3*A022352(n)` -/
def P10091373654250495499.Spec : Prop :=
  ∀ n, P10091373654250495499.a n = (A022364 n : ℚ)

end A022364

/-! ## A022364.P8076784326787365157

`5/4*A022358(n)`
-/

namespace A022364.P8076784326787365157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 4 * (A022358 n : ℚ)

end

end A022364.P8076784326787365157

namespace A022364

/-- `5/4*A022358(n)` -/
def P8076784326787365157.Spec : Prop :=
  ∀ n, P8076784326787365157.a n = (A022364 n : ℚ)

end A022364

/-! ## A022364.P6534652340657833302

`10*(A187893(n)-1)`
-/

namespace A022364.P6534652340657833302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (A187893 n - 1)

end

end A022364.P6534652340657833302

namespace A022364

/-- `10*(A187893(n)-1)` -/
def P6534652340657833302.Spec : Prop :=
  ∀ n, P6534652340657833302.a n = A022364 n

end A022364

/-! ## A022364.P3633987487030957102

`30*(A001611(n)-1)`
-/

namespace A022364.P3633987487030957102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * (A001611 n - 1)

end

end A022364.P3633987487030957102

namespace A022364

/-- `30*(A001611(n)-1)` -/
def P3633987487030957102.Spec : Prop :=
  ∀ n, P3633987487030957102.a n = A022364 n

end A022364

/-! ## A022364.P1914122376183436085

`A022363(n)+A000045(n)`
-/

namespace A022364.P1914122376183436085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022363 n + A000045 n

end

end A022364.P1914122376183436085

namespace A022364

/-- `A022363(n)+A000045(n)` -/
def P1914122376183436085.Spec : Prop :=
  ∀ n, P1914122376183436085.a n = A022364 n

end A022364

/-! ## A022364.P12806102998670284330

`A022354(n)+A022093(n)`
-/

namespace A022364.P12806102998670284330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022354 n + A022093 n

end

end A022364.P12806102998670284330

namespace A022364

/-- `A022354(n)+A022093(n)` -/
def P12806102998670284330.Spec : Prop :=
  ∀ n, P12806102998670284330.a n = A022364 n

end A022364

/-! ## A022364.P2228521910903998217

`A022355(n)+A022092(n)`
-/

namespace A022364.P2228521910903998217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022355 n + A022092 n

end

end A022364.P2228521910903998217

namespace A022364

/-- `A022355(n)+A022092(n)` -/
def P2228521910903998217.Spec : Prop :=
  ∀ n, P2228521910903998217.a n = A022364 n

end A022364

/-! ## A022364.P14700178801351880881

`A022356(n)+A022091(n)`
-/

namespace A022364.P14700178801351880881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022356 n + A022091 n

end

end A022364.P14700178801351880881

namespace A022364

/-- `A022356(n)+A022091(n)` -/
def P14700178801351880881.Spec : Prop :=
  ∀ n, P14700178801351880881.a n = A022364 n

end A022364

/-! ## A022364.P4069530952279822455

`A022357(n)+A022090(n)`
-/

namespace A022364.P4069530952279822455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022357 n + A022090 n

end

end A022364.P4069530952279822455

namespace A022364

/-- `A022357(n)+A022090(n)` -/
def P4069530952279822455.Spec : Prop :=
  ∀ n, P4069530952279822455.a n = A022364 n

end A022364

/-! ## A022364.P3003537257454747917

`A022358(n)+A022089(n)`
-/

namespace A022364.P3003537257454747917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022358 n + A022089 n

end

end A022364.P3003537257454747917

namespace A022364

/-- `A022358(n)+A022089(n)` -/
def P3003537257454747917.Spec : Prop :=
  ∀ n, P3003537257454747917.a n = A022364 n

end A022364

/-!
# A022365: Fibonacci sequence beginning 0, 31.

The programs for A022365, the canonical program `A022365.P15230630190226812545` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022365 has offset 0).

The definition of A022365 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022365.P15230630190226812545

`31*A000045(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022365

/-- `31*A000045(n)` -/
def P15230630190226812545.Spec : Prop :=
  ∀ n, P15230630190226812545.a n = A022365 n

theorem P15230630190226812545.correct : P15230630190226812545.Spec := by
  intro n
  simp only [A022365]

end A022365

/-! ## A022365.P14618367106856251606

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=31`
-/

namespace A022365.P14618367106856251606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 31] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022365.P14618367106856251606

namespace A022365

/-- `a(n-1)+a(n-2)` -/
def P14618367106856251606.Spec : Prop :=
  ∀ n, (P14618367106856251606.a n : ℤ) = A022365 n

end A022365

/-! ## A022365.P13527274661438845408

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=0, a(1)=31, a(2)=31`
-/

namespace A022365.P13527274661438845408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 31, 31] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022365.P13527274661438845408

namespace A022365

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P13527274661438845408.Spec : Prop :=
  ∀ n, P13527274661438845408.a n = A022365 n

end A022365

/-! ## A022365.P2919046369135153801

`A022364(n)+A000045(n)`
-/

namespace A022365.P2919046369135153801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022364 n + A000045 n

end

end A022365.P2919046369135153801

namespace A022365

/-- `A022364(n)+A000045(n)` -/
def P2919046369135153801.Spec : Prop :=
  ∀ n, P2919046369135153801.a n = A022365 n

end A022365

/-! ## A022365.P7621774230947635109

`A022355(n)+A022093(n)`
-/

namespace A022365.P7621774230947635109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022355 n + A022093 n

end

end A022365.P7621774230947635109

namespace A022365

/-- `A022355(n)+A022093(n)` -/
def P7621774230947635109.Spec : Prop :=
  ∀ n, P7621774230947635109.a n = A022365 n

end A022365

/-! ## A022365.P18220634674451336316

`A022356(n)+A022092(n)`
-/

namespace A022365.P18220634674451336316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022356 n + A022092 n

end

end A022365.P18220634674451336316

namespace A022365

/-- `A022356(n)+A022092(n)` -/
def P18220634674451336316.Spec : Prop :=
  ∀ n, P18220634674451336316.a n = A022365 n

end A022365

/-! ## A022365.P12446517718867896396

`A022357(n)+A022091(n)`
-/

namespace A022365.P12446517718867896396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022357 n + A022091 n

end

end A022365.P12446517718867896396

namespace A022365

/-- `A022357(n)+A022091(n)` -/
def P12446517718867896396.Spec : Prop :=
  ∀ n, P12446517718867896396.a n = A022365 n

end A022365

/-! ## A022365.P10652579032268508820

`A022358(n)+A022090(n)`
-/

namespace A022365.P10652579032268508820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022358 n + A022090 n

end

end A022365.P10652579032268508820

namespace A022365

/-- `A022358(n)+A022090(n)` -/
def P10652579032268508820.Spec : Prop :=
  ∀ n, P10652579032268508820.a n = A022365 n

end A022365

/-! ## A022365.P3827405099342763968

`A022359(n)+A022089(n)`
-/

namespace A022365.P3827405099342763968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022359 n + A022089 n

end

end A022365.P3827405099342763968

namespace A022365

/-- `A022359(n)+A022089(n)` -/
def P3827405099342763968.Spec : Prop :=
  ∀ n, P3827405099342763968.a n = A022365 n

end A022365

/-! ## A022365.P12931603503817692162

`A022360(n)+A022088(n)`
-/

namespace A022365.P12931603503817692162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022360 n + A022088 n

end

end A022365.P12931603503817692162

namespace A022365

/-- `A022360(n)+A022088(n)` -/
def P12931603503817692162.Spec : Prop :=
  ∀ n, P12931603503817692162.a n = A022365 n

end A022365

/-! ## A022365.P13735555302361983203

`A022361(n)+A022087(n)`
-/

namespace A022365.P13735555302361983203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022361 n + A022087 n

end

end A022365.P13735555302361983203

namespace A022365

/-- `A022361(n)+A022087(n)` -/
def P13735555302361983203.Spec : Prop :=
  ∀ n, P13735555302361983203.a n = A022365 n

end A022365

/-! ## A022365.P13434028973540301027

`A022362(n)+A022086(n)`
-/

namespace A022365.P13434028973540301027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022362 n + A022086 n

end

end A022365.P13434028973540301027

namespace A022365

/-- `A022362(n)+A022086(n)` -/
def P13434028973540301027.Spec : Prop :=
  ∀ n, P13434028973540301027.a n = A022365 n

end A022365

/-! ## A022365.P3780769406501454162

`A022350(n)+A022349(n)`
-/

namespace A022365.P3780769406501454162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022350 n + A022349 n

end

end A022365.P3780769406501454162

namespace A022365

/-- `A022350(n)+A022349(n)` -/
def P3780769406501454162.Spec : Prop :=
  ∀ n, P3780769406501454162.a n = A022365 n

end A022365

/-! ## A022365.P16746606861398223688

`A022351(n)+A022348(n)`
-/

namespace A022365.P16746606861398223688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022351 n + A022348 n

end

end A022365.P16746606861398223688

namespace A022365

/-- `A022351(n)+A022348(n)` -/
def P16746606861398223688.Spec : Prop :=
  ∀ n, P16746606861398223688.a n = A022365 n

end A022365

/-! ## A022365.P6510084649735412051

`A022352(n)+A022347(n)`
-/

namespace A022365.P6510084649735412051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022352 n + A022347 n

end

end A022365.P6510084649735412051

namespace A022365

/-- `A022352(n)+A022347(n)` -/
def P6510084649735412051.Spec : Prop :=
  ∀ n, P6510084649735412051.a n = A022365 n

end A022365

/-! ## A022365.P2050544379913292761

`A022353(n)+A022346(n)`
-/

namespace A022365.P2050544379913292761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022353 n + A022346 n

end

end A022365.P2050544379913292761

namespace A022365

/-- `A022353(n)+A022346(n)` -/
def P2050544379913292761.Spec : Prop :=
  ∀ n, P2050544379913292761.a n = A022365 n

end A022365

/-! ## A022365.P3409144393815677351

`A022354(n)+A022345(n)`
-/

namespace A022365.P3409144393815677351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022354 n + A022345 n

end

end A022365.P3409144393815677351

namespace A022365

/-- `A022354(n)+A022345(n)` -/
def P3409144393815677351.Spec : Prop :=
  ∀ n, P3409144393815677351.a n = A022365 n

end A022365

/-! ## A022365.P2961544175757921279

`A022400(n)-A152163(n)`
-/

namespace A022365.P2961544175757921279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022400 n - A152163 n

end

end A022365.P2961544175757921279

namespace A022365

/-- `A022400(n)-A152163(n)` -/
def P2961544175757921279.Spec : Prop :=
  ∀ n, P2961544175757921279.a n = A022365 n

end A022365

/-! ## A022365.P6929177399491268739

`A022086(n)+2*A022348(n)`
-/

namespace A022365.P6929177399491268739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 n + 2 * A022348 n

end

end A022365.P6929177399491268739

namespace A022365

/-- `A022086(n)+2*A022348(n)` -/
def P6929177399491268739.Spec : Prop :=
  ∀ n, P6929177399491268739.a n = A022365 n

end A022365

/-! ## A022365.P450680897230936796

`A022088(n)+2*A022347(n)`
-/

namespace A022365.P450680897230936796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 n + 2 * A022347 n

end

end A022365.P450680897230936796

namespace A022365

/-- `A022088(n)+2*A022347(n)` -/
def P450680897230936796.Spec : Prop :=
  ∀ n, P450680897230936796.a n = A022365 n

end A022365

/-!
# A022366: Fibonacci sequence beginning 0, 32.

The programs for A022366, the canonical program `A022366.P2612584355768870922` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022366 has offset 0).

The definition of A022366 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022366.P2612584355768870922

`32*A000045(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022366

/-- `32*A000045(n)` -/
def P2612584355768870922.Spec : Prop :=
  ∀ n, P2612584355768870922.a n = A022366 n

theorem P2612584355768870922.correct : P2612584355768870922.Spec := by
  intro n
  simp only [A022366]

end A022366

/-! ## A022366.P2030095494461493362

`a(n-1)+a(n-2)` with `a(0)=0, a(1)=32`
-/

namespace A022366.P2030095494461493362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 32] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022366.P2030095494461493362

namespace A022366

/-- `a(n-1)+a(n-2)` -/
def P2030095494461493362.Spec : Prop :=
  ∀ n, (P2030095494461493362.a n : ℤ) = A022366 n

end A022366

/-! ## A022366.P3472368651222819917

`2*a(n-1)-a(n-3)` with `a(0)=0, a(1)=32, a(2)=32`
-/

namespace A022366.P3472368651222819917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 32, 32] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A022366.P3472368651222819917

namespace A022366

/-- `2*a(n-1)-a(n-3)` -/
def P3472368651222819917.Spec : Prop :=
  ∀ n, P3472368651222819917.a n = A022366 n

end A022366

/-! ## A022366.P4077365980639151009

`a(n-1)-(a(n-3)-a(n-1))` with `a(0)=0, a(1)=32, a(2)=32`
-/

namespace A022366.P4077365980639151009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 32, 32] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1))

end

end A022366.P4077365980639151009

namespace A022366

/-- `a(n-1)-(a(n-3)-a(n-1))` -/
def P4077365980639151009.Spec : Prop :=
  ∀ n, P4077365980639151009.a n = A022366 n

end A022366

/-! ## A022366.P11518765969885437730

`2*A022350(n)`
-/

namespace A022366.P11518765969885437730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022350 n

end

end A022366.P11518765969885437730

namespace A022366

/-- `2*A022350(n)` -/
def P11518765969885437730.Spec : Prop :=
  ∀ n, P11518765969885437730.a n = A022366 n

end A022366

/-! ## A022366.P10199771000213145072

`4*A022091(n)`
-/

namespace A022366.P10199771000213145072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A022091 n

end

end A022366.P10199771000213145072

namespace A022366

/-- `4*A022091(n)` -/
def P10199771000213145072.Spec : Prop :=
  ∀ n, P10199771000213145072.a n = A022366 n

end A022366

/-! ## A022366.P17767040514892286111

`8*A022087(n)`
-/

namespace A022366.P17767040514892286111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A022087 n

end

end A022366.P17767040514892286111

namespace A022366

/-- `8*A022087(n)` -/
def P17767040514892286111.Spec : Prop :=
  ∀ n, P17767040514892286111.a n = A022366 n

end A022366

/-! ## A022366.P3850899836107344325

`4/3*A022358(n)`
-/

namespace A022366.P3850899836107344325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A022358 n : ℚ)

end

end A022366.P3850899836107344325

namespace A022366

/-- `4/3*A022358(n)` -/
def P3850899836107344325.Spec : Prop :=
  ∀ n, P3850899836107344325.a n = (A022366 n : ℚ)

end A022366

/-! ## A022366.P3654501012965267218

`32*A212804(n+1)`
-/

namespace A022366.P3654501012965267218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A212804 (n + 1)

end

end A022366.P3654501012965267218

namespace A022366

/-- `32*A212804(n+1)` -/
def P3654501012965267218.Spec : Prop :=
  ∀ n, P3654501012965267218.a n = A022366 n

end A022366

/-! ## A022366.P7857091305569668675

`32*(A001611(n)-1)`
-/

namespace A022366.P7857091305569668675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * (A001611 n - 1)

end

end A022366.P7857091305569668675

namespace A022366

/-- `32*(A001611(n)-1)` -/
def P7857091305569668675.Spec : Prop :=
  ∀ n, P7857091305569668675.a n = A022366 n

end A022366

/-! ## A022366.P16086917592714895718

`A022365(n)+A000045(n)`
-/

namespace A022366.P16086917592714895718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022365 n + A000045 n

end

end A022366.P16086917592714895718

namespace A022366

/-- `A022365(n)+A000045(n)` -/
def P16086917592714895718.Spec : Prop :=
  ∀ n, P16086917592714895718.a n = A022366 n

end A022366

/-! ## A022366.P9707691596040914618

`A022356(n)+A022093(n)`
-/

namespace A022366.P9707691596040914618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022356 n + A022093 n

end

end A022366.P9707691596040914618

namespace A022366

/-- `A022356(n)+A022093(n)` -/
def P9707691596040914618.Spec : Prop :=
  ∀ n, P9707691596040914618.a n = A022366 n

end A022366

/-! ## A022366.P5663170462803988945

`A022357(n)+A022092(n)`
-/

namespace A022366.P5663170462803988945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022357 n + A022092 n

end

end A022366.P5663170462803988945

namespace A022366

/-- `A022357(n)+A022092(n)` -/
def P5663170462803988945.Spec : Prop :=
  ∀ n, P5663170462803988945.a n = A022366 n

end A022366

/-! ## A022366.P6779889430837697104

`A022358(n)+A022091(n)`
-/

namespace A022366.P6779889430837697104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022358 n + A022091 n

end

end A022366.P6779889430837697104

namespace A022366

/-- `A022358(n)+A022091(n)` -/
def P6779889430837697104.Spec : Prop :=
  ∀ n, P6779889430837697104.a n = A022366 n

end A022366

/-! ## A022366.P4775286436139800754

`A022359(n)+A022090(n)`
-/

namespace A022366.P4775286436139800754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022359 n + A022090 n

end

end A022366.P4775286436139800754

namespace A022366

/-- `A022359(n)+A022090(n)` -/
def P4775286436139800754.Spec : Prop :=
  ∀ n, P4775286436139800754.a n = A022366 n

end A022366

/-! ## A022366.P2900883261079652244

`A022360(n)+A022089(n)`
-/

namespace A022366.P2900883261079652244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022360 n + A022089 n

end

end A022366.P2900883261079652244

namespace A022366

/-- `A022360(n)+A022089(n)` -/
def P2900883261079652244.Spec : Prop :=
  ∀ n, P2900883261079652244.a n = A022366 n

end A022366

/-! ## A022366.P13758518518994540215

`A022361(n)+A022088(n)`
-/

namespace A022366.P13758518518994540215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022361 n + A022088 n

end

end A022366.P13758518518994540215

namespace A022366

/-- `A022361(n)+A022088(n)` -/
def P13758518518994540215.Spec : Prop :=
  ∀ n, P13758518518994540215.a n = A022366 n

end A022366

/-! ## A022366.P15151045741226607555

`A022362(n)+A022087(n)`
-/

namespace A022366.P15151045741226607555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022362 n + A022087 n

end

end A022366.P15151045741226607555

namespace A022366

/-- `A022362(n)+A022087(n)` -/
def P15151045741226607555.Spec : Prop :=
  ∀ n, P15151045741226607555.a n = A022366 n

end A022366

/-! ## A022366.P17001256382811541879

`A022363(n)+A022086(n)`
-/

namespace A022366.P17001256382811541879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022363 n + A022086 n

end

end A022366.P17001256382811541879

namespace A022366

/-- `A022363(n)+A022086(n)` -/
def P17001256382811541879.Spec : Prop :=
  ∀ n, P17001256382811541879.a n = A022366 n

end A022366

/-!
# A022367: Fibonacci sequence beginning 2, 10.

The programs for A022367, the canonical program `A022367.P15141266762109396165` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022367 has offset 0).

The definition of A022367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022367.P15141266762109396165

`2*A022095(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022367

/-- `2*A022095(n)` -/
def P15141266762109396165.Spec : Prop :=
  ∀ n, P15141266762109396165.a n = A022367 n

theorem P15141266762109396165.correct : P15141266762109396165.Spec := by
  intro n
  simp only [A022367]

end A022367

/-! ## A022367.P12929769140011582010

`ogf((2+8x)/(1-x-x^2))`
-/

namespace A022367.P12929769140011582010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 8] [1, -1, -1] n

end

end A022367.P12929769140011582010

namespace A022367

/-- `ogf((2+8x)/(1-x-x^2))` -/
def P12929769140011582010.Spec : Prop :=
  ∀ n, P12929769140011582010.a n = A022367 n

end A022367

/-! ## A022367.P3277807879755972279

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=10`
-/

namespace A022367.P3277807879755972279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 10] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022367.P3277807879755972279

namespace A022367

/-- `a(n-1)+a(n-2)` -/
def P3277807879755972279.Spec : Prop :=
  ∀ n, (P3277807879755972279.a n : ℤ) = A022367 n

end A022367

/-! ## A022367.P6267301458630770780

`a(n-1)-floor(-a(n-2))` with `a(0)=2, a(1)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A022367.P6267301458630770780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 10] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022367.P6267301458630770780

namespace A022367

/-- `a(n-1)-floor(-a(n-2))` -/
def P6267301458630770780.Spec : Prop :=
  ∀ n, P6267301458630770780.a n = A022367 n

end A022367

/-! ## A022367.P7148159457028440765

`a(n-1)-ceil(-a(n-2))` with `a(0)=2, a(1)=10`

`ceil` is left out, it is the identity on integers.
-/

namespace A022367.P7148159457028440765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 10] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022367.P7148159457028440765

namespace A022367

/-- `a(n-1)-ceil(-a(n-2))` -/
def P7148159457028440765.Spec : Prop :=
  ∀ n, P7148159457028440765.a n = A022367 n

end A022367

/-! ## A022367.P1044543204931427104

`a(n-1)-round(-a(n-2))` with `a(0)=2, a(1)=10`

`round` is left out, it is the identity on integers.
-/

namespace A022367.P1044543204931427104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 10] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022367.P1044543204931427104

namespace A022367

/-- `a(n-1)-round(-a(n-2))` -/
def P1044543204931427104.Spec : Prop :=
  ∀ n, P1044543204931427104.a n = A022367 n

end A022367

/-! ## A022367.P779792080168673430

`A022323(n)+1`
-/

namespace A022367.P779792080168673430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022323 n + 1

end

end A022367.P779792080168673430

namespace A022367

/-- `A022323(n)+1` -/
def P779792080168673430.Spec : Prop :=
  ∀ n, P779792080168673430.a n = A022367 n

end A022367

/-! ## A022367.P11641966122521411140

`2*(A022309(n)+1)`
-/

namespace A022367.P11641966122521411140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A022309 n + 1)

end

end A022367.P11641966122521411140

namespace A022367

/-- `2*(A022309(n)+1)` -/
def P11641966122521411140.Spec : Prop :=
  ∀ n, P11641966122521411140.a n = A022367 n

end A022367

/-! ## A022367.P7316465796859790403

`A022092(n)+A000032(n)`
-/

namespace A022367.P7316465796859790403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022092 n + A000032 n

end

end A022367.P7316465796859790403

namespace A022367

/-- `A022092(n)+A000032(n)` -/
def P7316465796859790403.Spec : Prop :=
  ∀ n, P7316465796859790403.a n = A022367 n

end A022367

/-! ## A022367.P15310897066618074405

`A022114(n)+A000045(n)`
-/

namespace A022367.P15310897066618074405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022114 n + A000045 n

end

end A022367.P15310897066618074405

namespace A022367

/-- `A022114(n)+A000045(n)` -/
def P15310897066618074405.Spec : Prop :=
  ∀ n, P15310897066618074405.a n = A022367 n

end A022367

/-! ## A022367.P1602033682056192581

`A022096(n)+A000285(n)`
-/

namespace A022367.P1602033682056192581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022096 n + A000285 n

end

end A022367.P1602033682056192581

namespace A022367

/-- `A022096(n)+A000285(n)` -/
def P1602033682056192581.Spec : Prop :=
  ∀ n, P1602033682056192581.a n = A022367 n

end A022367

/-! ## A022367.P3325386715421940131

`A022088(n)+A001060(n)`
-/

namespace A022367.P3325386715421940131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 n + A001060 n

end

end A022367.P3325386715421940131

namespace A022367

/-- `A022088(n)+A001060(n)` -/
def P3325386715421940131.Spec : Prop :=
  ∀ n, P3325386715421940131.a n = A022367 n

end A022367

/-! ## A022367.P11465773859456093488

`A022321(n)+A001588(n)`
-/

namespace A022367.P11465773859456093488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022321 n + A001588 n

end

end A022367.P11465773859456093488

namespace A022367

/-- `A022321(n)+A001588(n)` -/
def P11465773859456093488.Spec : Prop :=
  ∀ n, P11465773859456093488.a n = A022367 n

end A022367

/-! ## A022367.P12752216667571478705

`A022322(n)+A001611(n)`
-/

namespace A022367.P12752216667571478705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022322 n + A001611 n

end

end A022367.P12752216667571478705

namespace A022367

/-- `A022322(n)+A001611(n)` -/
def P12752216667571478705.Spec : Prop :=
  ∀ n, P12752216667571478705.a n = A022367 n

end A022367

/-! ## A022367.P204040528063701494

`A022090(n)+A020695(n)`
-/

namespace A022367.P204040528063701494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022090 n + A020695 n

end

end A022367.P204040528063701494

namespace A022367

/-- `A022090(n)+A020695(n)` -/
def P204040528063701494.Spec : Prop :=
  ∀ n, P204040528063701494.a n = A022367 n

end A022367

/-! ## A022367.P1206770175537129964

`A022112(n)+A022087(n)`
-/

namespace A022367.P1206770175537129964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 n + A022087 n

end

end A022367.P1206770175537129964

namespace A022367

/-- `A022112(n)+A022087(n)` -/
def P1206770175537129964.Spec : Prop :=
  ∀ n, P1206770175537129964.a n = A022367 n

end A022367

/-! ## A022367.P9065533646686524490

`A022113(n)+A022086(n)`
-/

namespace A022367.P9065533646686524490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022113 n + A022086 n

end

end A022367.P9065533646686524490

namespace A022367

/-- `A022113(n)+A022086(n)` -/
def P9065533646686524490.Spec : Prop :=
  ∀ n, P9065533646686524490.a n = A022367 n

end A022367

/-! ## A022367.P9768972004487193853

`A118658(n)+A022093(n)`
-/

namespace A022367.P9768972004487193853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A022093 n

end

end A022367.P9768972004487193853

namespace A022367

/-- `A118658(n)+A022093(n)` -/
def P9768972004487193853.Spec : Prop :=
  ∀ n, P9768972004487193853.a n = A022367 n

end A022367

/-! ## A022367.P146148056817199286

`A152163(n)+A022101(n)`
-/

namespace A022367.P146148056817199286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022101 n

end

end A022367.P146148056817199286

namespace A022367

/-- `A152163(n)+A022101(n)` -/
def P146148056817199286.Spec : Prop :=
  ∀ n, P146148056817199286.a n = A022367 n

end A022367

/-! ## A022367.P17492582213712583512

`A187893(n)+A022320(n)`
-/

namespace A022367.P17492582213712583512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n + A022320 n

end

end A022367.P17492582213712583512

namespace A022367

/-- `A187893(n)+A022320(n)` -/
def P17492582213712583512.Spec : Prop :=
  ∀ n, P17492582213712583512.a n = A022367 n

end A022367

/-!
# A022368: Fibonacci sequence beginning 2, 12.

The programs for A022368, the canonical program `A022368.P17562576182317563288` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022368 has offset 0).

The definition of A022368 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022368.P17562576182317563288

`2*A022096(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022368

/-- `2*A022096(n)` -/
def P17562576182317563288.Spec : Prop :=
  ∀ n, P17562576182317563288.a n = A022368 n

theorem P17562576182317563288.correct : P17562576182317563288.Spec := by
  intro n
  simp only [A022368]

end A022368

/-! ## A022368.P2606440959628610492

`ogf((2+10x)/(1-x-x^2))`
-/

namespace A022368.P2606440959628610492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 10] [1, -1, -1] n

end

end A022368.P2606440959628610492

namespace A022368

/-- `ogf((2+10x)/(1-x-x^2))` -/
def P2606440959628610492.Spec : Prop :=
  ∀ n, P2606440959628610492.a n = A022368 n

end A022368

/-! ## A022368.P16255545987871584198

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=12`
-/

namespace A022368.P16255545987871584198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 12] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022368.P16255545987871584198

namespace A022368

/-- `a(n-1)+a(n-2)` -/
def P16255545987871584198.Spec : Prop :=
  ∀ n, (P16255545987871584198.a n : ℤ) = A022368 n

end A022368

/-! ## A022368.P12416995326890550570

`abs(Δ[a(n-2)-a(n-1)])` with `a(0)=8, a(1)=10`
-/

namespace A022368.P12416995326890550570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8, 10] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A022368.P12416995326890550570

namespace A022368

/-- `abs(Δ[a(n-2)-a(n-1)])` -/
def P12416995326890550570.Spec : Prop :=
  ∀ n, P12416995326890550570.a n = A022368 n

end A022368

/-! ## A022368.P9643941895734509092

`A022325(n)+1`
-/

namespace A022368.P9643941895734509092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022325 n + 1

end

end A022368.P9643941895734509092

namespace A022368

/-- `A022325(n)+1` -/
def P9643941895734509092.Spec : Prop :=
  ∀ n, P9643941895734509092.a n = A022368 n

end A022368

/-! ## A022368.P1637256231531801458

`2*(A022310(n)+1)`
-/

namespace A022368.P1637256231531801458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A022310 n + 1)

end

end A022368.P1637256231531801458

namespace A022368

/-- `2*(A022310(n)+1)` -/
def P1637256231531801458.Spec : Prop :=
  ∀ n, P1637256231531801458.a n = A022368 n

end A022368

/-! ## A022368.P4123180093222611007

`2*(Δ[A210678(n)]+1)`
-/

namespace A022368.P4123180093222611007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210678 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + 1)

end

end A022368.P4123180093222611007

namespace A022368

/-- `2*(Δ[A210678(n)]+1)` -/
def P4123180093222611007.Spec : Prop :=
  ∀ n, P4123180093222611007.a n = A022368 n

end A022368

/-! ## A022368.P10887297302106456574

`2*(Δ[A210731(n)]+1)`
-/

namespace A022368.P10887297302106456574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + 1)

end

end A022368.P10887297302106456574

namespace A022368

/-- `2*(Δ[A210731(n)]+1)` -/
def P10887297302106456574.Spec : Prop :=
  ∀ n, P10887297302106456574.a n = A022368 n

end A022368

/-! ## A022368.P3042849281766890490

`2*(Δ[A192956(n)]+2)`
-/

namespace A022368.P3042849281766890490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192956 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + 2)

end

end A022368.P3042849281766890490

namespace A022368

/-- `2*(Δ[A192956(n)]+2)` -/
def P3042849281766890490.Spec : Prop :=
  ∀ n, P3042849281766890490.a n = A022368 n

end A022368

/-! ## A022368.P3185560955161284633

`A022115(n)+A000045(n)`
-/

namespace A022368.P3185560955161284633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022115 n + A000045 n

end

end A022368.P3185560955161284633

namespace A022368

/-- `A022115(n)+A000045(n)` -/
def P3185560955161284633.Spec : Prop :=
  ∀ n, P3185560955161284633.a n = A022368 n

end A022368

/-! ## A022368.P24727481851523864

`A022098(n)+A000285(n)`
-/

namespace A022368.P24727481851523864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022098 n + A000285 n

end

end A022368.P24727481851523864

namespace A022368

/-- `A022098(n)+A000285(n)` -/
def P24727481851523864.Spec : Prop :=
  ∀ n, P24727481851523864.a n = A022368 n

end A022368

/-! ## A022368.P15212134491622247812

`A022345(n)+A000032(n)`
-/

namespace A022368.P15212134491622247812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A000032 n

end

end A022368.P15212134491622247812

namespace A022368

/-- `A022345(n)+A000032(n)` -/
def P15212134491622247812.Spec : Prop :=
  ∀ n, P15212134491622247812.a n = A022368 n

end A022368

/-! ## A022368.P17077209660590818785

`A022090(n)+A001060(n)`
-/

namespace A022368.P17077209660590818785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022090 n + A001060 n

end

end A022368.P17077209660590818785

namespace A022368

/-- `A022090(n)+A001060(n)` -/
def P17077209660590818785.Spec : Prop :=
  ∀ n, P17077209660590818785.a n = A022368 n

end A022368

/-! ## A022368.P24791603335954788

`A022323(n)+A001588(n)`
-/

namespace A022368.P24791603335954788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022323 n + A001588 n

end

end A022368.P24791603335954788

namespace A022368

/-- `A022323(n)+A001588(n)` -/
def P24791603335954788.Spec : Prop :=
  ∀ n, P24791603335954788.a n = A022368 n

end A022368

/-! ## A022368.P12288126755942394001

`A022324(n)+A001611(n)`
-/

namespace A022368.P12288126755942394001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022324 n + A001611 n

end

end A022368.P12288126755942394001

namespace A022368

/-- `A022324(n)+A001611(n)` -/
def P12288126755942394001.Spec : Prop :=
  ∀ n, P12288126755942394001.a n = A022368 n

end A022368

/-! ## A022368.P15036661262855001415

`A022092(n)+A020695(n)`
-/

namespace A022368.P15036661262855001415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022092 n + A020695 n

end

end A022368.P15036661262855001415

namespace A022368

/-- `A022092(n)+A020695(n)` -/
def P15036661262855001415.Spec : Prop :=
  ∀ n, P15036661262855001415.a n = A022368 n

end A022368

/-! ## A022368.P12714668346328723576

`A022097(n)+A022095(n)`
-/

namespace A022368.P12714668346328723576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022097 n + A022095 n

end

end A022368.P12714668346328723576

namespace A022368

/-- `A022097(n)+A022095(n)` -/
def P12714668346328723576.Spec : Prop :=
  ∀ n, P12714668346328723576.a n = A022368 n

end A022368

/-! ## A022368.P13680410419835864853

`A022112(n)+A022089(n)`
-/

namespace A022368.P13680410419835864853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 n + A022089 n

end

end A022368.P13680410419835864853

namespace A022368

/-- `A022112(n)+A022089(n)` -/
def P13680410419835864853.Spec : Prop :=
  ∀ n, P13680410419835864853.a n = A022368 n

end A022368

/-! ## A022368.P813824296286633333

`A022113(n)+A022088(n)`
-/

namespace A022368.P813824296286633333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022113 n + A022088 n

end

end A022368.P813824296286633333

namespace A022368

/-- `A022113(n)+A022088(n)` -/
def P813824296286633333.Spec : Prop :=
  ∀ n, P813824296286633333.a n = A022368 n

end A022368

/-! ## A022368.P1333097982940759884

`A022114(n)+A022086(n)`
-/

namespace A022368.P1333097982940759884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022114 n + A022086 n

end

end A022368.P1333097982940759884

namespace A022368

/-- `A022114(n)+A022086(n)` -/
def P1333097982940759884.Spec : Prop :=
  ∀ n, P1333097982940759884.a n = A022368 n

end A022368

/-!
# A022369: Fibonacci sequence beginning 2, 14.

The programs for A022369, the canonical program `A022369.P16171992494825357631` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022369 has offset 0).

The definition of A022369 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022369.P16171992494825357631

`2*A022097(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022369

/-- `2*A022097(n)` -/
def P16171992494825357631.Spec : Prop :=
  ∀ n, P16171992494825357631.a n = A022369 n

theorem P16171992494825357631.correct : P16171992494825357631.Spec := by
  intro n
  simp only [A022369]

end A022369

/-! ## A022369.P7298276339444011852

`ogf((2+12x)/(1-x-x^2))`
-/

namespace A022369.P7298276339444011852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 12] [1, -1, -1] n

end

end A022369.P7298276339444011852

namespace A022369

/-- `ogf((2+12x)/(1-x-x^2))` -/
def P7298276339444011852.Spec : Prop :=
  ∀ n, P7298276339444011852.a n = A022369 n

end A022369

/-! ## A022369.P18015369617867584305

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=14`
-/

namespace A022369.P18015369617867584305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 14] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022369.P18015369617867584305

namespace A022369

/-- `a(n-1)+a(n-2)` -/
def P18015369617867584305.Spec : Prop :=
  ∀ n, (P18015369617867584305.a n : ℤ) = A022369 n

end A022369

/-! ## A022369.P15184361975243221755

`2*(A022311(n)+1)`
-/

namespace A022369.P15184361975243221755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A022311 n + 1)

end

end A022369.P15184361975243221755

namespace A022369

/-- `2*(A022311(n)+1)` -/
def P15184361975243221755.Spec : Prop :=
  ∀ n, P15184361975243221755.a n = A022369 n

end A022369

/-! ## A022369.P2523523506526026197

`A022116(n)+A000045(n)`
-/

namespace A022369.P2523523506526026197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022116 n + A000045 n

end

end A022369.P2523523506526026197

namespace A022369

/-- `A022116(n)+A000045(n)` -/
def P2523523506526026197.Spec : Prop :=
  ∀ n, P2523523506526026197.a n = A022369 n

end A022369

/-! ## A022369.P16866830238707904824

`A022100(n)+A000285(n)`
-/

namespace A022369.P16866830238707904824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022100 n + A000285 n

end

end A022369.P16866830238707904824

namespace A022369

/-- `A022100(n)+A000285(n)` -/
def P16866830238707904824.Spec : Prop :=
  ∀ n, P16866830238707904824.a n = A022369 n

end A022369

/-! ## A022369.P12215595771365762990

`A022347(n)+A000032(n)`
-/

namespace A022369.P12215595771365762990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A000032 n

end

end A022369.P12215595771365762990

namespace A022369

/-- `A022347(n)+A000032(n)` -/
def P12215595771365762990.Spec : Prop :=
  ∀ n, P12215595771365762990.a n = A022369 n

end A022369

/-! ## A022369.P12778244301645466249

`A022092(n)+A001060(n)`
-/

namespace A022369.P12778244301645466249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022092 n + A001060 n

end

end A022369.P12778244301645466249

namespace A022369

/-- `A022092(n)+A001060(n)` -/
def P12778244301645466249.Spec : Prop :=
  ∀ n, P12778244301645466249.a n = A022369 n

end A022369

/-! ## A022369.P15069697453728408336

`A022325(n)+A001588(n)`
-/

namespace A022369.P15069697453728408336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022325 n + A001588 n

end

end A022369.P15069697453728408336

namespace A022369

/-- `A022325(n)+A001588(n)` -/
def P15069697453728408336.Spec : Prop :=
  ∀ n, P15069697453728408336.a n = A022369 n

end A022369

/-! ## A022369.P17289953948572413084

`A022326(n)+A001611(n)`
-/

namespace A022369.P17289953948572413084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022326 n + A001611 n

end

end A022369.P17289953948572413084

namespace A022369

/-- `A022326(n)+A001611(n)` -/
def P17289953948572413084.Spec : Prop :=
  ∀ n, P17289953948572413084.a n = A022369 n

end A022369

/-! ## A022369.P13170138179697143913

`A022345(n)+A020695(n)`
-/

namespace A022369.P13170138179697143913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A020695 n

end

end A022369.P13170138179697143913

namespace A022369

/-- `A022345(n)+A020695(n)` -/
def P13170138179697143913.Spec : Prop :=
  ∀ n, P13170138179697143913.a n = A022369 n

end A022369

/-! ## A022369.P14358502242607103740

`A022098(n)+A022096(n)`
-/

namespace A022369.P14358502242607103740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022098 n + A022096 n

end

end A022369.P14358502242607103740

namespace A022369

/-- `A022098(n)+A022096(n)` -/
def P14358502242607103740.Spec : Prop :=
  ∀ n, P14358502242607103740.a n = A022369 n

end A022369

/-! ## A022369.P13249499877948573051

`A022099(n)+A022095(n)`
-/

namespace A022369.P13249499877948573051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022099 n + A022095 n

end

end A022369.P13249499877948573051

namespace A022369

/-- `A022099(n)+A022095(n)` -/
def P13249499877948573051.Spec : Prop :=
  ∀ n, P13249499877948573051.a n = A022369 n

end A022369

/-! ## A022369.P3467588158981263392

`A022112(n)+A022091(n)`
-/

namespace A022369.P3467588158981263392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 n + A022091 n

end

end A022369.P3467588158981263392

namespace A022369

/-- `A022112(n)+A022091(n)` -/
def P3467588158981263392.Spec : Prop :=
  ∀ n, P3467588158981263392.a n = A022369 n

end A022369

/-! ## A022369.P17994328822695304115

`A022113(n)+A022090(n)`
-/

namespace A022369.P17994328822695304115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022113 n + A022090 n

end

end A022369.P17994328822695304115

namespace A022369

/-- `A022113(n)+A022090(n)` -/
def P17994328822695304115.Spec : Prop :=
  ∀ n, P17994328822695304115.a n = A022369 n

end A022369

/-! ## A022369.P4411979647037238152

`A022114(n)+A022088(n)`
-/

namespace A022369.P4411979647037238152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022114 n + A022088 n

end

end A022369.P4411979647037238152

namespace A022369

/-- `A022114(n)+A022088(n)` -/
def P4411979647037238152.Spec : Prop :=
  ∀ n, P4411979647037238152.a n = A022369 n

end A022369

/-! ## A022369.P17005399273959923280

`A022115(n)+A022086(n)`
-/

namespace A022369.P17005399273959923280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022115 n + A022086 n

end

end A022369.P17005399273959923280

namespace A022369

/-- `A022115(n)+A022086(n)` -/
def P17005399273959923280.Spec : Prop :=
  ∀ n, P17005399273959923280.a n = A022369 n

end A022369

/-! ## A022369.P7274537644986976853

`A022367(n)+A022087(n)`
-/

namespace A022369.P7274537644986976853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022367 n + A022087 n

end

end A022369.P7274537644986976853

namespace A022369

/-- `A022367(n)+A022087(n)` -/
def P7274537644986976853.Spec : Prop :=
  ∀ n, P7274537644986976853.a n = A022369 n

end A022369

/-! ## A022369.P13991281138728449417

`A118658(n)+A022348(n)`
-/

namespace A022369.P13991281138728449417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A022348 n

end

end A022369.P13991281138728449417

namespace A022369

/-- `A118658(n)+A022348(n)` -/
def P13991281138728449417.Spec : Prop :=
  ∀ n, P13991281138728449417.a n = A022369 n

end A022369

/-! ## A022369.P16853901870457288629

`A152163(n)+A022105(n)`
-/

namespace A022369.P16853901870457288629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022105 n

end

end A022369.P16853901870457288629

namespace A022369

/-- `A152163(n)+A022105(n)` -/
def P16853901870457288629.Spec : Prop :=
  ∀ n, P16853901870457288629.a n = A022369 n

end A022369

/-!
# A022370: Fibonacci sequence beginning 2, 16.

The programs for A022370, the canonical program `A022370.P10782743781689353041` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022370 has offset 0).

The definition of A022370 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022370.P10782743781689353041

`2*A022098(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022370

/-- `2*A022098(n)` -/
def P10782743781689353041.Spec : Prop :=
  ∀ n, P10782743781689353041.a n = A022370 n

theorem P10782743781689353041.correct : P10782743781689353041.Spec := by
  intro n
  simp only [A022370]

end A022370

/-! ## A022370.P1363620740802501725

`ogf((2+14x)/(1-x-x^2))`
-/

namespace A022370.P1363620740802501725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 14] [1, -1, -1] n

end

end A022370.P1363620740802501725

namespace A022370

/-- `ogf((2+14x)/(1-x-x^2))` -/
def P1363620740802501725.Spec : Prop :=
  ∀ n, P1363620740802501725.a n = A022370 n

end A022370

/-! ## A022370.P338296008878829680

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=16`
-/

namespace A022370.P338296008878829680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 16] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022370.P338296008878829680

namespace A022370

/-- `a(n-1)+a(n-2)` -/
def P338296008878829680.Spec : Prop :=
  ∀ n, (P338296008878829680.a n : ℤ) = A022370 n

end A022370

/-! ## A022370.P6781549973696648731

`2*(A022312(n)+1)`
-/

namespace A022370.P6781549973696648731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A022312 n + 1)

end

end A022370.P6781549973696648731

namespace A022370

/-- `2*(A022312(n)+1)` -/
def P6781549973696648731.Spec : Prop :=
  ∀ n, P6781549973696648731.a n = A022370 n

end A022370

/-! ## A022370.P8102786676401914684

`A022117(n)+A000045(n)`
-/

namespace A022370.P8102786676401914684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022117 n + A000045 n

end

end A022370.P8102786676401914684

namespace A022370

/-- `A022117(n)+A000045(n)` -/
def P8102786676401914684.Spec : Prop :=
  ∀ n, P8102786676401914684.a n = A022370 n

end A022370

/-! ## A022370.P4390963684307306629

`A022102(n)+A000285(n)`
-/

namespace A022370.P4390963684307306629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022102 n + A000285 n

end

end A022370.P4390963684307306629

namespace A022370

/-- `A022102(n)+A000285(n)` -/
def P4390963684307306629.Spec : Prop :=
  ∀ n, P4390963684307306629.a n = A022370 n

end A022370

/-! ## A022370.P12319347411774483271

`A022349(n)+A000032(n)`
-/

namespace A022370.P12319347411774483271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A000032 n

end

end A022370.P12319347411774483271

namespace A022370

/-- `A022349(n)+A000032(n)` -/
def P12319347411774483271.Spec : Prop :=
  ∀ n, P12319347411774483271.a n = A022370 n

end A022370

/-! ## A022370.P5118821904776843098

`A022345(n)+A001060(n)`
-/

namespace A022370.P5118821904776843098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A001060 n

end

end A022370.P5118821904776843098

namespace A022370

/-- `A022345(n)+A001060(n)` -/
def P5118821904776843098.Spec : Prop :=
  ∀ n, P5118821904776843098.a n = A022370 n

end A022370

/-! ## A022370.P15372441230800375052

`A022347(n)+A020695(n)`
-/

namespace A022370.P15372441230800375052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A020695 n

end

end A022370.P15372441230800375052

namespace A022370

/-- `A022347(n)+A020695(n)` -/
def P15372441230800375052.Spec : Prop :=
  ∀ n, P15372441230800375052.a n = A022370 n

end A022370

/-! ## A022370.P9059153741307804339

`A022099(n)+A022097(n)`
-/

namespace A022370.P9059153741307804339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022099 n + A022097 n

end

end A022370.P9059153741307804339

namespace A022370

/-- `A022099(n)+A022097(n)` -/
def P9059153741307804339.Spec : Prop :=
  ∀ n, P9059153741307804339.a n = A022370 n

end A022370

/-! ## A022370.P5995411606659752315

`A022100(n)+A022096(n)`
-/

namespace A022370.P5995411606659752315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022100 n + A022096 n

end

end A022370.P5995411606659752315

namespace A022370

/-- `A022100(n)+A022096(n)` -/
def P5995411606659752315.Spec : Prop :=
  ∀ n, P5995411606659752315.a n = A022370 n

end A022370

/-! ## A022370.P12026715978661578267

`A022101(n)+A022095(n)`
-/

namespace A022370.P12026715978661578267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 n + A022095 n

end

end A022370.P12026715978661578267

namespace A022370

/-- `A022101(n)+A022095(n)` -/
def P12026715978661578267.Spec : Prop :=
  ∀ n, P12026715978661578267.a n = A022370 n

end A022370

/-! ## A022370.P8968058630444200878

`A022112(n)+A022093(n)`
-/

namespace A022370.P8968058630444200878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 n + A022093 n

end

end A022370.P8968058630444200878

namespace A022370

/-- `A022112(n)+A022093(n)` -/
def P8968058630444200878.Spec : Prop :=
  ∀ n, P8968058630444200878.a n = A022370 n

end A022370

/-! ## A022370.P16308403891231110824

`A022113(n)+A022092(n)`
-/

namespace A022370.P16308403891231110824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022113 n + A022092 n

end

end A022370.P16308403891231110824

namespace A022370

/-- `A022113(n)+A022092(n)` -/
def P16308403891231110824.Spec : Prop :=
  ∀ n, P16308403891231110824.a n = A022370 n

end A022370

/-! ## A022370.P5440307267889254239

`A022114(n)+A022090(n)`
-/

namespace A022370.P5440307267889254239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022114 n + A022090 n

end

end A022370.P5440307267889254239

namespace A022370

/-- `A022114(n)+A022090(n)` -/
def P5440307267889254239.Spec : Prop :=
  ∀ n, P5440307267889254239.a n = A022370 n

end A022370

/-! ## A022370.P4108953059350843424

`A022115(n)+A022088(n)`
-/

namespace A022370.P4108953059350843424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022115 n + A022088 n

end

end A022370.P4108953059350843424

namespace A022370

/-- `A022115(n)+A022088(n)` -/
def P4108953059350843424.Spec : Prop :=
  ∀ n, P4108953059350843424.a n = A022370 n

end A022370

/-! ## A022370.P12434418416750370000

`A022116(n)+A022086(n)`
-/

namespace A022370.P12434418416750370000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022116 n + A022086 n

end

end A022370.P12434418416750370000

namespace A022370

/-- `A022116(n)+A022086(n)` -/
def P12434418416750370000.Spec : Prop :=
  ∀ n, P12434418416750370000.a n = A022370 n

end A022370

/-! ## A022370.P5647805684610370578

`A022367(n)+A022089(n)`
-/

namespace A022370.P5647805684610370578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022367 n + A022089 n

end

end A022370.P5647805684610370578

namespace A022370

/-- `A022367(n)+A022089(n)` -/
def P5647805684610370578.Spec : Prop :=
  ∀ n, P5647805684610370578.a n = A022370 n

end A022370

/-! ## A022370.P4364829610197768374

`A022368(n)+A022087(n)`
-/

namespace A022370.P4364829610197768374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022368 n + A022087 n

end

end A022370.P4364829610197768374

namespace A022370

/-- `A022368(n)+A022087(n)` -/
def P4364829610197768374.Spec : Prop :=
  ∀ n, P4364829610197768374.a n = A022370 n

end A022370

/-! ## A022370.P15561360292075662983

`A118658(n)+A022350(n)`
-/

namespace A022370.P15561360292075662983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A022350 n

end

end A022370.P15561360292075662983

namespace A022370

/-- `A118658(n)+A022350(n)` -/
def P15561360292075662983.Spec : Prop :=
  ∀ n, P15561360292075662983.a n = A022370 n

end A022370

/-!
# A022371: Fibonacci sequence beginning 2, 18.

The programs for A022371, the canonical program `A022371.P497849754708652778` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022371 has offset 0).

The definition of A022371 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022371.P497849754708652778

`2*A022099(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022371

/-- `2*A022099(n)` -/
def P497849754708652778.Spec : Prop :=
  ∀ n, P497849754708652778.a n = A022371 n

theorem P497849754708652778.correct : P497849754708652778.Spec := by
  intro n
  simp only [A022371]

end A022371

/-! ## A022371.P17645307253469859857

`ogf((2+16x)/(1-x-x^2))`
-/

namespace A022371.P17645307253469859857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 16] [1, -1, -1] n

end

end A022371.P17645307253469859857

namespace A022371

/-- `ogf((2+16x)/(1-x-x^2))` -/
def P17645307253469859857.Spec : Prop :=
  ∀ n, P17645307253469859857.a n = A022371 n

end A022371

/-! ## A022371.P3385294528331273374

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=18`
-/

namespace A022371.P3385294528331273374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 18] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022371.P3385294528331273374

namespace A022371

/-- `a(n-1)+a(n-2)` -/
def P3385294528331273374.Spec : Prop :=
  ∀ n, (P3385294528331273374.a n : ℤ) = A022371 n

end A022371

/-! ## A022371.P15048917845828697171

`2*(A022313(n)+1)`
-/

namespace A022371.P15048917845828697171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A022313 n + 1)

end

end A022371.P15048917845828697171

namespace A022371

/-- `2*(A022313(n)+1)` -/
def P15048917845828697171.Spec : Prop :=
  ∀ n, P15048917845828697171.a n = A022371 n

end A022371

/-! ## A022371.P13959589920479505366

`A022118(n)+A000045(n)`
-/

namespace A022371.P13959589920479505366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022118 n + A000045 n

end

end A022371.P13959589920479505366

namespace A022371

/-- `A022118(n)+A000045(n)` -/
def P13959589920479505366.Spec : Prop :=
  ∀ n, P13959589920479505366.a n = A022371 n

end A022371

/-! ## A022371.P9751434025279381602

`A022104(n)+A000285(n)`
-/

namespace A022371.P9751434025279381602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022104 n + A000285 n

end

end A022371.P9751434025279381602

namespace A022371

/-- `A022104(n)+A000285(n)` -/
def P9751434025279381602.Spec : Prop :=
  ∀ n, P9751434025279381602.a n = A022371 n

end A022371

/-! ## A022371.P5403490145225557434

`A022351(n)+A000032(n)`
-/

namespace A022371.P5403490145225557434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022351 n + A000032 n

end

end A022371.P5403490145225557434

namespace A022371

/-- `A022351(n)+A000032(n)` -/
def P5403490145225557434.Spec : Prop :=
  ∀ n, P5403490145225557434.a n = A022371 n

end A022371

/-! ## A022371.P15849681715481466564

`A022347(n)+A001060(n)`
-/

namespace A022371.P15849681715481466564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A001060 n

end

end A022371.P15849681715481466564

namespace A022371

/-- `A022347(n)+A001060(n)` -/
def P15849681715481466564.Spec : Prop :=
  ∀ n, P15849681715481466564.a n = A022371 n

end A022371

/-! ## A022371.P14442410143215313991

`A022349(n)+A020695(n)`
-/

namespace A022371.P14442410143215313991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A020695 n

end

end A022371.P14442410143215313991

namespace A022371

/-- `A022349(n)+A020695(n)` -/
def P14442410143215313991.Spec : Prop :=
  ∀ n, P14442410143215313991.a n = A022371 n

end A022371

/-! ## A022371.P14110021054622978423

`A022100(n)+A022098(n)`
-/

namespace A022371.P14110021054622978423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022100 n + A022098 n

end

end A022371.P14110021054622978423

namespace A022371

/-- `A022100(n)+A022098(n)` -/
def P14110021054622978423.Spec : Prop :=
  ∀ n, P14110021054622978423.a n = A022371 n

end A022371

/-! ## A022371.P13798014251798932131

`A022101(n)+A022097(n)`
-/

namespace A022371.P13798014251798932131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 n + A022097 n

end

end A022371.P13798014251798932131

namespace A022371

/-- `A022101(n)+A022097(n)` -/
def P13798014251798932131.Spec : Prop :=
  ∀ n, P13798014251798932131.a n = A022371 n

end A022371

/-! ## A022371.P4155950692386393563

`A022102(n)+A022096(n)`
-/

namespace A022371.P4155950692386393563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022102 n + A022096 n

end

end A022371.P4155950692386393563

namespace A022371

/-- `A022102(n)+A022096(n)` -/
def P4155950692386393563.Spec : Prop :=
  ∀ n, P4155950692386393563.a n = A022371 n

end A022371

/-! ## A022371.P11580083233105187469

`A022103(n)+A022095(n)`
-/

namespace A022371.P11580083233105187469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022103 n + A022095 n

end

end A022371.P11580083233105187469

namespace A022371

/-- `A022103(n)+A022095(n)` -/
def P11580083233105187469.Spec : Prop :=
  ∀ n, P11580083233105187469.a n = A022371 n

end A022371

/-! ## A022371.P8316986543795412643

`A022114(n)+A022092(n)`
-/

namespace A022371.P8316986543795412643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022114 n + A022092 n

end

end A022371.P8316986543795412643

namespace A022371

/-- `A022114(n)+A022092(n)` -/
def P8316986543795412643.Spec : Prop :=
  ∀ n, P8316986543795412643.a n = A022371 n

end A022371

/-! ## A022371.P367815739003860788

`A022115(n)+A022090(n)`
-/

namespace A022371.P367815739003860788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022115 n + A022090 n

end

end A022371.P367815739003860788

namespace A022371

/-- `A022115(n)+A022090(n)` -/
def P367815739003860788.Spec : Prop :=
  ∀ n, P367815739003860788.a n = A022371 n

end A022371

/-! ## A022371.P9965221530353109394

`A022116(n)+A022088(n)`
-/

namespace A022371.P9965221530353109394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022116 n + A022088 n

end

end A022371.P9965221530353109394

namespace A022371

/-- `A022116(n)+A022088(n)` -/
def P9965221530353109394.Spec : Prop :=
  ∀ n, P9965221530353109394.a n = A022371 n

end A022371

/-! ## A022371.P3836359171740542574

`A022117(n)+A022086(n)`
-/

namespace A022371.P3836359171740542574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022117 n + A022086 n

end

end A022371.P3836359171740542574

namespace A022371

/-- `A022117(n)+A022086(n)` -/
def P3836359171740542574.Spec : Prop :=
  ∀ n, P3836359171740542574.a n = A022371 n

end A022371

/-! ## A022371.P7322168668855547850

`A022345(n)+A022113(n)`
-/

namespace A022371.P7322168668855547850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022113 n

end

end A022371.P7322168668855547850

namespace A022371

/-- `A022345(n)+A022113(n)` -/
def P7322168668855547850.Spec : Prop :=
  ∀ n, P7322168668855547850.a n = A022371 n

end A022371

/-! ## A022371.P13472562435247292187

`A022346(n)+A022112(n)`
-/

namespace A022371.P13472562435247292187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A022112 n

end

end A022371.P13472562435247292187

namespace A022371

/-- `A022346(n)+A022112(n)` -/
def P13472562435247292187.Spec : Prop :=
  ∀ n, P13472562435247292187.a n = A022371 n

end A022371

/-! ## A022371.P18146342232104586639

`A022367(n)+A022091(n)`
-/

namespace A022371.P18146342232104586639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022367 n + A022091 n

end

end A022371.P18146342232104586639

namespace A022371

/-- `A022367(n)+A022091(n)` -/
def P18146342232104586639.Spec : Prop :=
  ∀ n, P18146342232104586639.a n = A022371 n

end A022371

/-!
# A022372: Fibonacci sequence beginning 2, 20.

The programs for A022372, the canonical program `A022372.P3318322918414077424` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022372 has offset 0).

The definition of A022372 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022372.P3318322918414077424

`2*A022100(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022372

/-- `2*A022100(n)` -/
def P3318322918414077424.Spec : Prop :=
  ∀ n, P3318322918414077424.a n = A022372 n

theorem P3318322918414077424.correct : P3318322918414077424.Spec := by
  intro n
  simp only [A022372]

end A022372

/-! ## A022372.P15124651686000668512

`ogf((2+18x)/(1-x-x^2))`
-/

namespace A022372.P15124651686000668512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 18] [1, -1, -1] n

end

end A022372.P15124651686000668512

namespace A022372

/-- `ogf((2+18x)/(1-x-x^2))` -/
def P15124651686000668512.Spec : Prop :=
  ∀ n, P15124651686000668512.a n = A022372 n

end A022372

/-! ## A022372.P2865585126006454163

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=20`
-/

namespace A022372.P2865585126006454163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 20] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022372.P2865585126006454163

namespace A022372

/-- `a(n-1)+a(n-2)` -/
def P2865585126006454163.Spec : Prop :=
  ∀ n, (P2865585126006454163.a n : ℤ) = A022372 n

end A022372

/-! ## A022372.P15316005618624608696

`2*(A022314(n)+1)`
-/

namespace A022372.P15316005618624608696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A022314 n + 1)

end

end A022372.P15316005618624608696

namespace A022372

/-- `2*(A022314(n)+1)` -/
def P15316005618624608696.Spec : Prop :=
  ∀ n, P15316005618624608696.a n = A022372 n

end A022372

/-! ## A022372.P7199380678449027463

`A022119(n)+A000045(n)`
-/

namespace A022372.P7199380678449027463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022119 n + A000045 n

end

end A022372.P7199380678449027463

namespace A022372

/-- `A022119(n)+A000045(n)` -/
def P7199380678449027463.Spec : Prop :=
  ∀ n, P7199380678449027463.a n = A022372 n

end A022372

/-! ## A022372.P13258521175519657052

`A022106(n)+A000285(n)`
-/

namespace A022372.P13258521175519657052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022106 n + A000285 n

end

end A022372.P13258521175519657052

namespace A022372

/-- `A022106(n)+A000285(n)` -/
def P13258521175519657052.Spec : Prop :=
  ∀ n, P13258521175519657052.a n = A022372 n

end A022372

/-! ## A022372.P10924295562481499980

`A022353(n)+A000032(n)`
-/

namespace A022372.P10924295562481499980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022353 n + A000032 n

end

end A022372.P10924295562481499980

namespace A022372

/-- `A022353(n)+A000032(n)` -/
def P10924295562481499980.Spec : Prop :=
  ∀ n, P10924295562481499980.a n = A022372 n

end A022372

/-! ## A022372.P13305336948592601904

`A022349(n)+A001060(n)`
-/

namespace A022372.P13305336948592601904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A001060 n

end

end A022372.P13305336948592601904

namespace A022372

/-- `A022349(n)+A001060(n)` -/
def P13305336948592601904.Spec : Prop :=
  ∀ n, P13305336948592601904.a n = A022372 n

end A022372

/-! ## A022372.P8570669302127706455

`A022351(n)+A020695(n)`
-/

namespace A022372.P8570669302127706455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022351 n + A020695 n

end

end A022372.P8570669302127706455

namespace A022372

/-- `A022351(n)+A020695(n)` -/
def P8570669302127706455.Spec : Prop :=
  ∀ n, P8570669302127706455.a n = A022372 n

end A022372

/-! ## A022372.P14771486550824464940

`A022101(n)+A022099(n)`
-/

namespace A022372.P14771486550824464940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 n + A022099 n

end

end A022372.P14771486550824464940

namespace A022372

/-- `A022101(n)+A022099(n)` -/
def P14771486550824464940.Spec : Prop :=
  ∀ n, P14771486550824464940.a n = A022372 n

end A022372

/-! ## A022372.P3914204865429546093

`A022102(n)+A022098(n)`
-/

namespace A022372.P3914204865429546093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022102 n + A022098 n

end

end A022372.P3914204865429546093

namespace A022372

/-- `A022102(n)+A022098(n)` -/
def P3914204865429546093.Spec : Prop :=
  ∀ n, P3914204865429546093.a n = A022372 n

end A022372

/-! ## A022372.P9232176870435235417

`A022103(n)+A022097(n)`
-/

namespace A022372.P9232176870435235417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022103 n + A022097 n

end

end A022372.P9232176870435235417

namespace A022372

/-- `A022103(n)+A022097(n)` -/
def P9232176870435235417.Spec : Prop :=
  ∀ n, P9232176870435235417.a n = A022372 n

end A022372

/-! ## A022372.P15604408868018032897

`A022104(n)+A022096(n)`
-/

namespace A022372.P15604408868018032897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022104 n + A022096 n

end

end A022372.P15604408868018032897

namespace A022372

/-- `A022104(n)+A022096(n)` -/
def P15604408868018032897.Spec : Prop :=
  ∀ n, P15604408868018032897.a n = A022372 n

end A022372

/-! ## A022372.P14046729727587319809

`A022105(n)+A022095(n)`
-/

namespace A022372.P14046729727587319809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022105 n + A022095 n

end

end A022372.P14046729727587319809

namespace A022372

/-- `A022105(n)+A022095(n)` -/
def P14046729727587319809.Spec : Prop :=
  ∀ n, P14046729727587319809.a n = A022372 n

end A022372

/-! ## A022372.P14486603210007954384

`A022115(n)+A022092(n)`
-/

namespace A022372.P14486603210007954384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022115 n + A022092 n

end

end A022372.P14486603210007954384

namespace A022372

/-- `A022115(n)+A022092(n)` -/
def P14486603210007954384.Spec : Prop :=
  ∀ n, P14486603210007954384.a n = A022372 n

end A022372

/-! ## A022372.P4404296020349992529

`A022116(n)+A022090(n)`
-/

namespace A022372.P4404296020349992529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022116 n + A022090 n

end

end A022372.P4404296020349992529

namespace A022372

/-- `A022116(n)+A022090(n)` -/
def P4404296020349992529.Spec : Prop :=
  ∀ n, P4404296020349992529.a n = A022372 n

end A022372

/-! ## A022372.P17100226609783364081

`A022117(n)+A022088(n)`
-/

namespace A022372.P17100226609783364081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022117 n + A022088 n

end

end A022372.P17100226609783364081

namespace A022372

/-- `A022117(n)+A022088(n)` -/
def P17100226609783364081.Spec : Prop :=
  ∀ n, P17100226609783364081.a n = A022372 n

end A022372

/-! ## A022372.P12104964913277730676

`A022118(n)+A022086(n)`
-/

namespace A022372.P12104964913277730676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022118 n + A022086 n

end

end A022372.P12104964913277730676

namespace A022372

/-- `A022118(n)+A022086(n)` -/
def P12104964913277730676.Spec : Prop :=
  ∀ n, P12104964913277730676.a n = A022372 n

end A022372

/-! ## A022372.P16815003285842890516

`A022345(n)+A022114(n)`
-/

namespace A022372.P16815003285842890516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022114 n

end

end A022372.P16815003285842890516

namespace A022372

/-- `A022345(n)+A022114(n)` -/
def P16815003285842890516.Spec : Prop :=
  ∀ n, P16815003285842890516.a n = A022372 n

end A022372

/-! ## A022372.P12452847357790894850

`A022347(n)+A022113(n)`
-/

namespace A022372.P12452847357790894850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A022113 n

end

end A022372.P12452847357790894850

namespace A022372

/-- `A022347(n)+A022113(n)` -/
def P12452847357790894850.Spec : Prop :=
  ∀ n, P12452847357790894850.a n = A022372 n

end A022372

/-!
# A022373: Fibonacci sequence beginning 2, 22.

The programs for A022373, the canonical program `A022373.P7864979694522191058` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022373 has offset 0).

The definition of A022373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022373.P12860146672640610228

`ogf((2+20x)/(1-x-x^2))`
-/

namespace A022373.P12860146672640610228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 20] [1, -1, -1] n

end

end A022373.P12860146672640610228

namespace A022373

/-- `ogf((2+20x)/(1-x-x^2))` -/
def P12860146672640610228.Spec : Prop :=
  ∀ n, P12860146672640610228.a n = A022373 n

end A022373

/-! ## A022373.P7864979694522191058

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=22`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022373

/-- `a(n-1)+a(n-2)` -/
def P7864979694522191058.Spec : Prop :=
  ∀ n, (P7864979694522191058.a n : ℤ) = A022373 n

theorem P7864979694522191058.correct : P7864979694522191058.Spec := by
  intro n
  simp only [A022373]

end A022373

/-! ## A022373.P3767656546157358879

`2*A022101(n)`
-/

namespace A022373.P3767656546157358879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022101 n

end

end A022373.P3767656546157358879

namespace A022373

/-- `2*A022101(n)` -/
def P3767656546157358879.Spec : Prop :=
  ∀ n, P3767656546157358879.a n = A022373 n

end A022373

/-! ## A022373.P5393114344158481818

`2*(A022315(n)+1)`
-/

namespace A022373.P5393114344158481818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A022315 n + 1)

end

end A022373.P5393114344158481818

namespace A022373

/-- `2*(A022315(n)+1)` -/
def P5393114344158481818.Spec : Prop :=
  ∀ n, P5393114344158481818.a n = A022373 n

end A022373

/-! ## A022373.P5381347332595192082

`A022108(n)+A000285(n)`
-/

namespace A022373.P5381347332595192082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022108 n + A000285 n

end

end A022373.P5381347332595192082

namespace A022373

/-- `A022108(n)+A000285(n)` -/
def P5381347332595192082.Spec : Prop :=
  ∀ n, P5381347332595192082.a n = A022373 n

end A022373

/-! ## A022373.P7980580117900531433

`A022355(n)+A000032(n)`
-/

namespace A022373.P7980580117900531433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022355 n + A000032 n

end

end A022373.P7980580117900531433

namespace A022373

/-- `A022355(n)+A000032(n)` -/
def P7980580117900531433.Spec : Prop :=
  ∀ n, P7980580117900531433.a n = A022373 n

end A022373

/-! ## A022373.P9236218279337108131

`A022351(n)+A001060(n)`
-/

namespace A022373.P9236218279337108131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022351 n + A001060 n

end

end A022373.P9236218279337108131

namespace A022373

/-- `A022351(n)+A001060(n)` -/
def P9236218279337108131.Spec : Prop :=
  ∀ n, P9236218279337108131.a n = A022373 n

end A022373

/-! ## A022373.P2078110998737266963

`A022353(n)+A020695(n)`
-/

namespace A022373.P2078110998737266963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022353 n + A020695 n

end

end A022373.P2078110998737266963

namespace A022373

/-- `A022353(n)+A020695(n)` -/
def P2078110998737266963.Spec : Prop :=
  ∀ n, P2078110998737266963.a n = A022373 n

end A022373

/-! ## A022373.P17691990197618986095

`A022102(n)+A022100(n)`
-/

namespace A022373.P17691990197618986095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022102 n + A022100 n

end

end A022373.P17691990197618986095

namespace A022373

/-- `A022102(n)+A022100(n)` -/
def P17691990197618986095.Spec : Prop :=
  ∀ n, P17691990197618986095.a n = A022373 n

end A022373

/-! ## A022373.P11990929644231994145

`A022103(n)+A022099(n)`
-/

namespace A022373.P11990929644231994145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022103 n + A022099 n

end

end A022373.P11990929644231994145

namespace A022373

/-- `A022103(n)+A022099(n)` -/
def P11990929644231994145.Spec : Prop :=
  ∀ n, P11990929644231994145.a n = A022373 n

end A022373

/-! ## A022373.P279331147884313189

`A022104(n)+A022098(n)`
-/

namespace A022373.P279331147884313189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022104 n + A022098 n

end

end A022373.P279331147884313189

namespace A022373

/-- `A022104(n)+A022098(n)` -/
def P279331147884313189.Spec : Prop :=
  ∀ n, P279331147884313189.a n = A022373 n

end A022373

/-! ## A022373.P13127379945306865222

`A022105(n)+A022097(n)`
-/

namespace A022373.P13127379945306865222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022105 n + A022097 n

end

end A022373.P13127379945306865222

namespace A022373

/-- `A022105(n)+A022097(n)` -/
def P13127379945306865222.Spec : Prop :=
  ∀ n, P13127379945306865222.a n = A022373 n

end A022373

/-! ## A022373.P6820617606908849418

`A022106(n)+A022096(n)`
-/

namespace A022373.P6820617606908849418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022106 n + A022096 n

end

end A022373.P6820617606908849418

namespace A022373

/-- `A022106(n)+A022096(n)` -/
def P6820617606908849418.Spec : Prop :=
  ∀ n, P6820617606908849418.a n = A022373 n

end A022373

/-! ## A022373.P11014723853487410537

`A022107(n)+A022095(n)`
-/

namespace A022373.P11014723853487410537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022107 n + A022095 n

end

end A022373.P11014723853487410537

namespace A022373

/-- `A022107(n)+A022095(n)` -/
def P11014723853487410537.Spec : Prop :=
  ∀ n, P11014723853487410537.a n = A022373 n

end A022373

/-! ## A022373.P5990714527572214827

`A022116(n)+A022092(n)`
-/

namespace A022373.P5990714527572214827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022116 n + A022092 n

end

end A022373.P5990714527572214827

namespace A022373

/-- `A022116(n)+A022092(n)` -/
def P5990714527572214827.Spec : Prop :=
  ∀ n, P5990714527572214827.a n = A022373 n

end A022373

/-! ## A022373.P5821127602687137977

`A022117(n)+A022090(n)`
-/

namespace A022373.P5821127602687137977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022117 n + A022090 n

end

end A022373.P5821127602687137977

namespace A022373

/-- `A022117(n)+A022090(n)` -/
def P5821127602687137977.Spec : Prop :=
  ∀ n, P5821127602687137977.a n = A022373 n

end A022373

/-! ## A022373.P6385188074298133072

`A022118(n)+A022088(n)`
-/

namespace A022373.P6385188074298133072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022118 n + A022088 n

end

end A022373.P6385188074298133072

namespace A022373

/-- `A022118(n)+A022088(n)` -/
def P6385188074298133072.Spec : Prop :=
  ∀ n, P6385188074298133072.a n = A022373 n

end A022373

/-! ## A022373.P5393230200550348938

`A022119(n)+A022086(n)`
-/

namespace A022373.P5393230200550348938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022119 n + A022086 n

end

end A022373.P5393230200550348938

namespace A022373

/-- `A022119(n)+A022086(n)` -/
def P5393230200550348938.Spec : Prop :=
  ∀ n, P5393230200550348938.a n = A022373 n

end A022373

/-! ## A022373.P12124718229692368896

`A022345(n)+A022115(n)`
-/

namespace A022373.P12124718229692368896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022115 n

end

end A022373.P12124718229692368896

namespace A022373

/-- `A022345(n)+A022115(n)` -/
def P12124718229692368896.Spec : Prop :=
  ∀ n, P12124718229692368896.a n = A022373 n

end A022373

/-! ## A022373.P14907007509236506273

`A022347(n)+A022114(n)`
-/

namespace A022373.P14907007509236506273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A022114 n

end

end A022373.P14907007509236506273

namespace A022373

/-- `A022347(n)+A022114(n)` -/
def P14907007509236506273.Spec : Prop :=
  ∀ n, P14907007509236506273.a n = A022373 n

end A022373

/-!
# A022374: Fibonacci sequence beginning 2, 24.

The programs for A022374, the canonical program `A022374.P6234822389245945786` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022374 has offset 0).

The definition of A022374 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022374.P6234822389245945786

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=24`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022374

/-- `a(n-1)+a(n-2)` -/
def P6234822389245945786.Spec : Prop :=
  ∀ n, (P6234822389245945786.a n : ℤ) = A022374 n

theorem P6234822389245945786.correct : P6234822389245945786.Spec := by
  intro n
  simp only [A022374]

end A022374

/-! ## A022374.P4317518912237594929

`2*A022102(n)`
-/

namespace A022374.P4317518912237594929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022102 n

end

end A022374.P4317518912237594929

namespace A022374

/-- `2*A022102(n)` -/
def P4317518912237594929.Spec : Prop :=
  ∀ n, P4317518912237594929.a n = A022374 n

end A022374

/-! ## A022374.P2847924340482400381

`ogf((2+22x)/(1-x-x^2))`
-/

namespace A022374.P2847924340482400381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 22] [1, -1, -1] n

end

end A022374.P2847924340482400381

namespace A022374

/-- `ogf((2+22x)/(1-x-x^2))` -/
def P2847924340482400381.Spec : Prop :=
  ∀ n, P2847924340482400381.a n = A022374 n

end A022374

/-! ## A022374.P18376105604820672608

`2*(A022316(n)+1)`
-/

namespace A022374.P18376105604820672608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A022316 n + 1)

end

end A022374.P18376105604820672608

namespace A022374

/-- `2*(A022316(n)+1)` -/
def P18376105604820672608.Spec : Prop :=
  ∀ n, P18376105604820672608.a n = A022374 n

end A022374

/-! ## A022374.P16377019872444380847

`A022110(n)+A000285(n)`
-/

namespace A022374.P16377019872444380847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022110 n + A000285 n

end

end A022374.P16377019872444380847

namespace A022374

/-- `A022110(n)+A000285(n)` -/
def P16377019872444380847.Spec : Prop :=
  ∀ n, P16377019872444380847.a n = A022374 n

end A022374

/-! ## A022374.P2156733287312190658

`A022357(n)+A000032(n)`
-/

namespace A022374.P2156733287312190658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022357 n + A000032 n

end

end A022374.P2156733287312190658

namespace A022374

/-- `A022357(n)+A000032(n)` -/
def P2156733287312190658.Spec : Prop :=
  ∀ n, P2156733287312190658.a n = A022374 n

end A022374

/-! ## A022374.P14839329483941345763

`A022353(n)+A001060(n)`
-/

namespace A022374.P14839329483941345763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022353 n + A001060 n

end

end A022374.P14839329483941345763

namespace A022374

/-- `A022353(n)+A001060(n)` -/
def P14839329483941345763.Spec : Prop :=
  ∀ n, P14839329483941345763.a n = A022374 n

end A022374

/-! ## A022374.P274014228390306012

`A022355(n)+A020695(n)`
-/

namespace A022374.P274014228390306012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022355 n + A020695 n

end

end A022374.P274014228390306012

namespace A022374

/-- `A022355(n)+A020695(n)` -/
def P274014228390306012.Spec : Prop :=
  ∀ n, P274014228390306012.a n = A022374 n

end A022374

/-! ## A022374.P9548978859277413943

`A022103(n)+A022101(n)`
-/

namespace A022374.P9548978859277413943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022103 n + A022101 n

end

end A022374.P9548978859277413943

namespace A022374

/-- `A022103(n)+A022101(n)` -/
def P9548978859277413943.Spec : Prop :=
  ∀ n, P9548978859277413943.a n = A022374 n

end A022374

/-! ## A022374.P10561326434321195383

`A022104(n)+A022100(n)`
-/

namespace A022374.P10561326434321195383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022104 n + A022100 n

end

end A022374.P10561326434321195383

namespace A022374

/-- `A022104(n)+A022100(n)` -/
def P10561326434321195383.Spec : Prop :=
  ∀ n, P10561326434321195383.a n = A022374 n

end A022374

/-! ## A022374.P8781191168146937430

`A022105(n)+A022099(n)`
-/

namespace A022374.P8781191168146937430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022105 n + A022099 n

end

end A022374.P8781191168146937430

namespace A022374

/-- `A022105(n)+A022099(n)` -/
def P8781191168146937430.Spec : Prop :=
  ∀ n, P8781191168146937430.a n = A022374 n

end A022374

/-! ## A022374.P17285610967500371719

`A022106(n)+A022098(n)`
-/

namespace A022374.P17285610967500371719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022106 n + A022098 n

end

end A022374.P17285610967500371719

namespace A022374

/-- `A022106(n)+A022098(n)` -/
def P17285610967500371719.Spec : Prop :=
  ∀ n, P17285610967500371719.a n = A022374 n

end A022374

/-! ## A022374.P5389421194752606387

`A022107(n)+A022097(n)`
-/

namespace A022374.P5389421194752606387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022107 n + A022097 n

end

end A022374.P5389421194752606387

namespace A022374

/-- `A022107(n)+A022097(n)` -/
def P5389421194752606387.Spec : Prop :=
  ∀ n, P5389421194752606387.a n = A022374 n

end A022374

/-! ## A022374.P5748465823933535142

`A022108(n)+A022096(n)`
-/

namespace A022374.P5748465823933535142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022108 n + A022096 n

end

end A022374.P5748465823933535142

namespace A022374

/-- `A022108(n)+A022096(n)` -/
def P5748465823933535142.Spec : Prop :=
  ∀ n, P5748465823933535142.a n = A022374 n

end A022374

/-! ## A022374.P16153760233719424065

`A022109(n)+A022095(n)`
-/

namespace A022374.P16153760233719424065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022109 n + A022095 n

end

end A022374.P16153760233719424065

namespace A022374

/-- `A022109(n)+A022095(n)` -/
def P16153760233719424065.Spec : Prop :=
  ∀ n, P16153760233719424065.a n = A022374 n

end A022374

/-! ## A022374.P1641974581254484261

`A022117(n)+A022092(n)`
-/

namespace A022374.P1641974581254484261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022117 n + A022092 n

end

end A022374.P1641974581254484261

namespace A022374

/-- `A022117(n)+A022092(n)` -/
def P1641974581254484261.Spec : Prop :=
  ∀ n, P1641974581254484261.a n = A022374 n

end A022374

/-! ## A022374.P10311933839842333953

`A022118(n)+A022090(n)`
-/

namespace A022374.P10311933839842333953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022118 n + A022090 n

end

end A022374.P10311933839842333953

namespace A022374

/-- `A022118(n)+A022090(n)` -/
def P10311933839842333953.Spec : Prop :=
  ∀ n, P10311933839842333953.a n = A022374 n

end A022374

/-! ## A022374.P9506448041964615100

`A022119(n)+A022088(n)`
-/

namespace A022374.P9506448041964615100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022119 n + A022088 n

end

end A022374.P9506448041964615100

namespace A022374

/-- `A022119(n)+A022088(n)` -/
def P9506448041964615100.Spec : Prop :=
  ∀ n, P9506448041964615100.a n = A022374 n

end A022374

/-! ## A022374.P17556724464334087311

`A022345(n)+A022116(n)`
-/

namespace A022374.P17556724464334087311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022116 n

end

end A022374.P17556724464334087311

namespace A022374

/-- `A022345(n)+A022116(n)` -/
def P17556724464334087311.Spec : Prop :=
  ∀ n, P17556724464334087311.a n = A022374 n

end A022374

/-! ## A022374.P11230418081522860523

`A022347(n)+A022115(n)`
-/

namespace A022374.P11230418081522860523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A022115 n

end

end A022374.P11230418081522860523

namespace A022374

/-- `A022347(n)+A022115(n)` -/
def P11230418081522860523.Spec : Prop :=
  ∀ n, P11230418081522860523.a n = A022374 n

end A022374

/-!
# A022375: Fibonacci sequence beginning 2, 26.

The programs for A022375, the canonical program `A022375.P5818569338397038520` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022375 has offset 0).

The definition of A022375 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022375.P5818569338397038520

`2*A022103(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022375

/-- `2*A022103(n)` -/
def P5818569338397038520.Spec : Prop :=
  ∀ n, P5818569338397038520.a n = A022375 n

theorem P5818569338397038520.correct : P5818569338397038520.Spec := by
  intro n
  simp only [A022375]

end A022375

/-! ## A022375.P7823631364457043473

`ogf((2+24x)/(1-x-x^2))`
-/

namespace A022375.P7823631364457043473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 24] [1, -1, -1] n

end

end A022375.P7823631364457043473

namespace A022375

/-- `ogf((2+24x)/(1-x-x^2))` -/
def P7823631364457043473.Spec : Prop :=
  ∀ n, P7823631364457043473.a n = A022375 n

end A022375

/-! ## A022375.P5898041338257881488

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=26`
-/

namespace A022375.P5898041338257881488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 26] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022375.P5898041338257881488

namespace A022375

/-- `a(n-1)+a(n-2)` -/
def P5898041338257881488.Spec : Prop :=
  ∀ n, (P5898041338257881488.a n : ℤ) = A022375 n

end A022375

/-! ## A022375.P14003076358640427851

`2*(A022317(n)+1)`
-/

namespace A022375.P14003076358640427851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A022317 n + 1)

end

end A022375.P14003076358640427851

namespace A022375

/-- `2*(A022317(n)+1)` -/
def P14003076358640427851.Spec : Prop :=
  ∀ n, P14003076358640427851.a n = A022375 n

end A022375

/-! ## A022375.P7651172205425615829

`A022359(n)+A000032(n)`
-/

namespace A022375.P7651172205425615829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022359 n + A000032 n

end

end A022375.P7651172205425615829

namespace A022375

/-- `A022359(n)+A000032(n)` -/
def P7651172205425615829.Spec : Prop :=
  ∀ n, P7651172205425615829.a n = A022375 n

end A022375

/-! ## A022375.P1545129194621831664

`A022392(n)+A000285(n)`
-/

namespace A022375.P1545129194621831664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022392 n + A000285 n

end

end A022375.P1545129194621831664

namespace A022375

/-- `A022392(n)+A000285(n)` -/
def P1545129194621831664.Spec : Prop :=
  ∀ n, P1545129194621831664.a n = A022375 n

end A022375

/-! ## A022375.P11281984105506947470

`A022355(n)+A001060(n)`
-/

namespace A022375.P11281984105506947470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022355 n + A001060 n

end

end A022375.P11281984105506947470

namespace A022375

/-- `A022355(n)+A001060(n)` -/
def P11281984105506947470.Spec : Prop :=
  ∀ n, P11281984105506947470.a n = A022375 n

end A022375

/-! ## A022375.P9523476501568287582

`A022357(n)+A020695(n)`
-/

namespace A022375.P9523476501568287582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022357 n + A020695 n

end

end A022375.P9523476501568287582

namespace A022375

/-- `A022357(n)+A020695(n)` -/
def P9523476501568287582.Spec : Prop :=
  ∀ n, P9523476501568287582.a n = A022375 n

end A022375

/-! ## A022375.P15542047062719956498

`A022104(n)+A022102(n)`
-/

namespace A022375.P15542047062719956498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022104 n + A022102 n

end

end A022375.P15542047062719956498

namespace A022375

/-- `A022104(n)+A022102(n)` -/
def P15542047062719956498.Spec : Prop :=
  ∀ n, P15542047062719956498.a n = A022375 n

end A022375

/-! ## A022375.P7100790282977877480

`A022105(n)+A022101(n)`
-/

namespace A022375.P7100790282977877480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022105 n + A022101 n

end

end A022375.P7100790282977877480

namespace A022375

/-- `A022105(n)+A022101(n)` -/
def P7100790282977877480.Spec : Prop :=
  ∀ n, P7100790282977877480.a n = A022375 n

end A022375

/-! ## A022375.P16458245132687840269

`A022106(n)+A022100(n)`
-/

namespace A022375.P16458245132687840269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022106 n + A022100 n

end

end A022375.P16458245132687840269

namespace A022375

/-- `A022106(n)+A022100(n)` -/
def P16458245132687840269.Spec : Prop :=
  ∀ n, P16458245132687840269.a n = A022375 n

end A022375

/-! ## A022375.P12358223344523213623

`A022107(n)+A022099(n)`
-/

namespace A022375.P12358223344523213623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022107 n + A022099 n

end

end A022375.P12358223344523213623

namespace A022375

/-- `A022107(n)+A022099(n)` -/
def P12358223344523213623.Spec : Prop :=
  ∀ n, P12358223344523213623.a n = A022375 n

end A022375

/-! ## A022375.P14078371489147692640

`A022108(n)+A022098(n)`
-/

namespace A022375.P14078371489147692640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022108 n + A022098 n

end

end A022375.P14078371489147692640

namespace A022375

/-- `A022108(n)+A022098(n)` -/
def P14078371489147692640.Spec : Prop :=
  ∀ n, P14078371489147692640.a n = A022375 n

end A022375

/-! ## A022375.P13140293649343528121

`A022109(n)+A022097(n)`
-/

namespace A022375.P13140293649343528121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022109 n + A022097 n

end

end A022375.P13140293649343528121

namespace A022375

/-- `A022109(n)+A022097(n)` -/
def P13140293649343528121.Spec : Prop :=
  ∀ n, P13140293649343528121.a n = A022375 n

end A022375

/-! ## A022375.P9309849255561719838

`A022110(n)+A022096(n)`
-/

namespace A022375.P9309849255561719838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022110 n + A022096 n

end

end A022375.P9309849255561719838

namespace A022375

/-- `A022110(n)+A022096(n)` -/
def P9309849255561719838.Spec : Prop :=
  ∀ n, P9309849255561719838.a n = A022375 n

end A022375

/-! ## A022375.P4827632445822424398

`A022118(n)+A022092(n)`
-/

namespace A022375.P4827632445822424398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022118 n + A022092 n

end

end A022375.P4827632445822424398

namespace A022375

/-- `A022118(n)+A022092(n)` -/
def P4827632445822424398.Spec : Prop :=
  ∀ n, P4827632445822424398.a n = A022375 n

end A022375

/-! ## A022375.P2097128142646418805

`A022119(n)+A022090(n)`
-/

namespace A022375.P2097128142646418805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022119 n + A022090 n

end

end A022375.P2097128142646418805

namespace A022375

/-- `A022119(n)+A022090(n)` -/
def P2097128142646418805.Spec : Prop :=
  ∀ n, P2097128142646418805.a n = A022375 n

end A022375

/-! ## A022375.P4786672754974768490

`A022345(n)+A022117(n)`
-/

namespace A022375.P4786672754974768490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022117 n

end

end A022375.P4786672754974768490

namespace A022375

/-- `A022345(n)+A022117(n)` -/
def P4786672754974768490.Spec : Prop :=
  ∀ n, P4786672754974768490.a n = A022375 n

end A022375

/-! ## A022375.P14061026922856887170

`A022347(n)+A022116(n)`
-/

namespace A022375.P14061026922856887170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A022116 n

end

end A022375.P14061026922856887170

namespace A022375

/-- `A022347(n)+A022116(n)` -/
def P14061026922856887170.Spec : Prop :=
  ∀ n, P14061026922856887170.a n = A022375 n

end A022375

/-! ## A022375.P3630696352903591040

`A022349(n)+A022115(n)`
-/

namespace A022375.P3630696352903591040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A022115 n

end

end A022375.P3630696352903591040

namespace A022375

/-- `A022349(n)+A022115(n)` -/
def P3630696352903591040.Spec : Prop :=
  ∀ n, P3630696352903591040.a n = A022375 n

end A022375

/-!
# A022376: Fibonacci sequence beginning 2, 28.

The programs for A022376, the canonical program `A022376.P18117227960282036275` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022376 has offset 0).

The definition of A022376 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022376.P18117227960282036275

`2*A022104(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022376

/-- `2*A022104(n)` -/
def P18117227960282036275.Spec : Prop :=
  ∀ n, P18117227960282036275.a n = A022376 n

theorem P18117227960282036275.correct : P18117227960282036275.Spec := by
  intro n
  simp only [A022376]

end A022376

/-! ## A022376.P5354782663301589748

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=28`
-/

namespace A022376.P5354782663301589748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 28] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022376.P5354782663301589748

namespace A022376

/-- `a(n-1)+a(n-2)` -/
def P5354782663301589748.Spec : Prop :=
  ∀ n, (P5354782663301589748.a n : ℤ) = A022376 n

end A022376

/-! ## A022376.P2946278136918388061

`A022361(n)+A000032(n)`
-/

namespace A022376.P2946278136918388061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022361 n + A000032 n

end

end A022376.P2946278136918388061

namespace A022376

/-- `A022361(n)+A000032(n)` -/
def P2946278136918388061.Spec : Prop :=
  ∀ n, P2946278136918388061.a n = A022376 n

end A022376

/-! ## A022376.P13990637577186027557

`A022394(n)+A000285(n)`
-/

namespace A022376.P13990637577186027557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022394 n + A000285 n

end

end A022376.P13990637577186027557

namespace A022376

/-- `A022394(n)+A000285(n)` -/
def P13990637577186027557.Spec : Prop :=
  ∀ n, P13990637577186027557.a n = A022376 n

end A022376

/-! ## A022376.P11071871549391258326

`A022357(n)+A001060(n)`
-/

namespace A022376.P11071871549391258326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022357 n + A001060 n

end

end A022376.P11071871549391258326

namespace A022376

/-- `A022357(n)+A001060(n)` -/
def P11071871549391258326.Spec : Prop :=
  ∀ n, P11071871549391258326.a n = A022376 n

end A022376

/-! ## A022376.P2349033991802870952

`A022359(n)+A020695(n)`
-/

namespace A022376.P2349033991802870952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022359 n + A020695 n

end

end A022376.P2349033991802870952

namespace A022376

/-- `A022359(n)+A020695(n)` -/
def P2349033991802870952.Spec : Prop :=
  ∀ n, P2349033991802870952.a n = A022376 n

end A022376

/-! ## A022376.P18219085542092569539

`A022105(n)+A022103(n)`
-/

namespace A022376.P18219085542092569539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022105 n + A022103 n

end

end A022376.P18219085542092569539

namespace A022376

/-- `A022105(n)+A022103(n)` -/
def P18219085542092569539.Spec : Prop :=
  ∀ n, P18219085542092569539.a n = A022376 n

end A022376

/-! ## A022376.P4831748907888118467

`A022106(n)+A022102(n)`
-/

namespace A022376.P4831748907888118467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022106 n + A022102 n

end

end A022376.P4831748907888118467

namespace A022376

/-- `A022106(n)+A022102(n)` -/
def P4831748907888118467.Spec : Prop :=
  ∀ n, P4831748907888118467.a n = A022376 n

end A022376

/-! ## A022376.P11691604933748716127

`A022107(n)+A022101(n)`
-/

namespace A022376.P11691604933748716127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022107 n + A022101 n

end

end A022376.P11691604933748716127

namespace A022376

/-- `A022107(n)+A022101(n)` -/
def P11691604933748716127.Spec : Prop :=
  ∀ n, P11691604933748716127.a n = A022376 n

end A022376

/-! ## A022376.P3684866816479533363

`A022108(n)+A022100(n)`
-/

namespace A022376.P3684866816479533363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022108 n + A022100 n

end

end A022376.P3684866816479533363

namespace A022376

/-- `A022108(n)+A022100(n)` -/
def P3684866816479533363.Spec : Prop :=
  ∀ n, P3684866816479533363.a n = A022376 n

end A022376

/-! ## A022376.P15316118743573609870

`A022109(n)+A022099(n)`
-/

namespace A022376.P15316118743573609870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022109 n + A022099 n

end

end A022376.P15316118743573609870

namespace A022376

/-- `A022109(n)+A022099(n)` -/
def P15316118743573609870.Spec : Prop :=
  ∀ n, P15316118743573609870.a n = A022376 n

end A022376

/-! ## A022376.P17916272967381245848

`A022110(n)+A022098(n)`
-/

namespace A022376.P17916272967381245848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022110 n + A022098 n

end

end A022376.P17916272967381245848

namespace A022376

/-- `A022110(n)+A022098(n)` -/
def P17916272967381245848.Spec : Prop :=
  ∀ n, P17916272967381245848.a n = A022376 n

end A022376

/-! ## A022376.P11063712764274628402

`A022119(n)+A022092(n)`
-/

namespace A022376.P11063712764274628402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022119 n + A022092 n

end

end A022376.P11063712764274628402

namespace A022376

/-- `A022119(n)+A022092(n)` -/
def P11063712764274628402.Spec : Prop :=
  ∀ n, P11063712764274628402.a n = A022376 n

end A022376

/-! ## A022376.P18261814242727931878

`A022345(n)+A022118(n)`
-/

namespace A022376.P18261814242727931878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022118 n

end

end A022376.P18261814242727931878

namespace A022376

/-- `A022345(n)+A022118(n)` -/
def P18261814242727931878.Spec : Prop :=
  ∀ n, P18261814242727931878.a n = A022376 n

end A022376

/-! ## A022376.P738006919011781930

`A022347(n)+A022117(n)`
-/

namespace A022376.P738006919011781930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A022117 n

end

end A022376.P738006919011781930

namespace A022376

/-- `A022347(n)+A022117(n)` -/
def P738006919011781930.Spec : Prop :=
  ∀ n, P738006919011781930.a n = A022376 n

end A022376

/-! ## A022376.P7368988906307679171

`A022349(n)+A022116(n)`
-/

namespace A022376.P7368988906307679171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A022116 n

end

end A022376.P7368988906307679171

namespace A022376

/-- `A022349(n)+A022116(n)` -/
def P7368988906307679171.Spec : Prop :=
  ∀ n, P7368988906307679171.a n = A022376 n

end A022376

/-! ## A022376.P17832147574435217779

`A022351(n)+A022115(n)`
-/

namespace A022376.P17832147574435217779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022351 n + A022115 n

end

end A022376.P17832147574435217779

namespace A022376

/-- `A022351(n)+A022115(n)` -/
def P17832147574435217779.Spec : Prop :=
  ∀ n, P17832147574435217779.a n = A022376 n

end A022376

/-! ## A022376.P11835498027550317509

`A022353(n)+A022114(n)`
-/

namespace A022376.P11835498027550317509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022353 n + A022114 n

end

end A022376.P11835498027550317509

namespace A022376

/-- `A022353(n)+A022114(n)` -/
def P11835498027550317509.Spec : Prop :=
  ∀ n, P11835498027550317509.a n = A022376 n

end A022376

/-! ## A022376.P14376463660049258164

`A022355(n)+A022113(n)`
-/

namespace A022376.P14376463660049258164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022355 n + A022113 n

end

end A022376.P14376463660049258164

namespace A022376

/-- `A022355(n)+A022113(n)` -/
def P14376463660049258164.Spec : Prop :=
  ∀ n, P14376463660049258164.a n = A022376 n

end A022376

/-! ## A022376.P106408374059628084

`A022371(n)+A022093(n)`
-/

namespace A022376.P106408374059628084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022371 n + A022093 n

end

end A022376.P106408374059628084

namespace A022376

/-- `A022371(n)+A022093(n)` -/
def P106408374059628084.Spec : Prop :=
  ∀ n, P106408374059628084.a n = A022376 n

end A022376

/-!
# A022377: Fibonacci sequence beginning 2, 30.

The programs for A022377, the canonical program `A022377.P6232799325757425718` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022377 has offset 0).

The definition of A022377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022377.P6232799325757425718

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=30`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022377

/-- `a(n-1)+a(n-2)` -/
def P6232799325757425718.Spec : Prop :=
  ∀ n, (P6232799325757425718.a n : ℤ) = A022377 n

theorem P6232799325757425718.correct : P6232799325757425718.Spec := by
  intro n
  simp only [A022377]

end A022377

/-! ## A022377.P6007357007796240961

`a(n-1)-floor(-a(n-2))` with `a(0)=2, a(1)=30`

`floor` is left out, it is the identity on integers.
-/

namespace A022377.P6007357007796240961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 30] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022377.P6007357007796240961

namespace A022377

/-- `a(n-1)-floor(-a(n-2))` -/
def P6007357007796240961.Spec : Prop :=
  ∀ n, P6007357007796240961.a n = A022377 n

end A022377

/-! ## A022377.P11775809174635461867

`a(n-1)-ceil(-a(n-2))` with `a(0)=2, a(1)=30`

`ceil` is left out, it is the identity on integers.
-/

namespace A022377.P11775809174635461867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 30] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A022377.P11775809174635461867

namespace A022377

/-- `a(n-1)-ceil(-a(n-2))` -/
def P11775809174635461867.Spec : Prop :=
  ∀ n, P11775809174635461867.a n = A022377 n

end A022377

/-! ## A022377.P6750203804180319928

`2*A022105(n)`
-/

namespace A022377.P6750203804180319928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022105 n

end

end A022377.P6750203804180319928

namespace A022377

/-- `2*A022105(n)` -/
def P6750203804180319928.Spec : Prop :=
  ∀ n, P6750203804180319928.a n = A022377 n

end A022377

/-! ## A022377.P3780710037293957796

`A022363(n)+A000032(n)`
-/

namespace A022377.P3780710037293957796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022363 n + A000032 n

end

end A022377.P3780710037293957796

namespace A022377

/-- `A022363(n)+A000032(n)` -/
def P3780710037293957796.Spec : Prop :=
  ∀ n, P3780710037293957796.a n = A022377 n

end A022377

/-! ## A022377.P12976802967669305431

`A022396(n)+A000285(n)`
-/

namespace A022377.P12976802967669305431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022396 n + A000285 n

end

end A022377.P12976802967669305431

namespace A022377

/-- `A022396(n)+A000285(n)` -/
def P12976802967669305431.Spec : Prop :=
  ∀ n, P12976802967669305431.a n = A022377 n

end A022377

/-! ## A022377.P8201902429693941053

`A022359(n)+A001060(n)`
-/

namespace A022377.P8201902429693941053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022359 n + A001060 n

end

end A022377.P8201902429693941053

namespace A022377

/-- `A022359(n)+A001060(n)` -/
def P8201902429693941053.Spec : Prop :=
  ∀ n, P8201902429693941053.a n = A022377 n

end A022377

/-! ## A022377.P233590495369335077

`A022361(n)+A020695(n)`
-/

namespace A022377.P233590495369335077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022361 n + A020695 n

end

end A022377.P233590495369335077

namespace A022377

/-- `A022361(n)+A020695(n)` -/
def P233590495369335077.Spec : Prop :=
  ∀ n, P233590495369335077.a n = A022377 n

end A022377

/-! ## A022377.P4318771214897250106

`A022106(n)+A022104(n)`
-/

namespace A022377.P4318771214897250106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022106 n + A022104 n

end

end A022377.P4318771214897250106

namespace A022377

/-- `A022106(n)+A022104(n)` -/
def P4318771214897250106.Spec : Prop :=
  ∀ n, P4318771214897250106.a n = A022377 n

end A022377

/-! ## A022377.P15950193040185855507

`A022107(n)+A022103(n)`
-/

namespace A022377.P15950193040185855507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022107 n + A022103 n

end

end A022377.P15950193040185855507

namespace A022377

/-- `A022107(n)+A022103(n)` -/
def P15950193040185855507.Spec : Prop :=
  ∀ n, P15950193040185855507.a n = A022377 n

end A022377

/-! ## A022377.P7281721887116374949

`A022108(n)+A022102(n)`
-/

namespace A022377.P7281721887116374949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022108 n + A022102 n

end

end A022377.P7281721887116374949

namespace A022377

/-- `A022108(n)+A022102(n)` -/
def P7281721887116374949.Spec : Prop :=
  ∀ n, P7281721887116374949.a n = A022377 n

end A022377

/-! ## A022377.P9806752992874338818

`A022109(n)+A022101(n)`
-/

namespace A022377.P9806752992874338818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022109 n + A022101 n

end

end A022377.P9806752992874338818

namespace A022377

/-- `A022109(n)+A022101(n)` -/
def P9806752992874338818.Spec : Prop :=
  ∀ n, P9806752992874338818.a n = A022377 n

end A022377

/-! ## A022377.P14583132774229200287

`A022110(n)+A022100(n)`
-/

namespace A022377.P14583132774229200287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022110 n + A022100 n

end

end A022377.P14583132774229200287

namespace A022377

/-- `A022110(n)+A022100(n)` -/
def P14583132774229200287.Spec : Prop :=
  ∀ n, P14583132774229200287.a n = A022377 n

end A022377

/-! ## A022377.P15983992093122677977

`A022345(n)+A022119(n)`
-/

namespace A022377.P15983992093122677977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022119 n

end

end A022377.P15983992093122677977

namespace A022377

/-- `A022345(n)+A022119(n)` -/
def P15983992093122677977.Spec : Prop :=
  ∀ n, P15983992093122677977.a n = A022377 n

end A022377

/-! ## A022377.P6500162852367311421

`A022347(n)+A022118(n)`
-/

namespace A022377.P6500162852367311421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A022118 n

end

end A022377.P6500162852367311421

namespace A022377

/-- `A022347(n)+A022118(n)` -/
def P6500162852367311421.Spec : Prop :=
  ∀ n, P6500162852367311421.a n = A022377 n

end A022377

/-! ## A022377.P17449424962606837524

`A022349(n)+A022117(n)`
-/

namespace A022377.P17449424962606837524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A022117 n

end

end A022377.P17449424962606837524

namespace A022377

/-- `A022349(n)+A022117(n)` -/
def P17449424962606837524.Spec : Prop :=
  ∀ n, P17449424962606837524.a n = A022377 n

end A022377

/-! ## A022377.P15298561385528201903

`A022351(n)+A022116(n)`
-/

namespace A022377.P15298561385528201903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022351 n + A022116 n

end

end A022377.P15298561385528201903

namespace A022377

/-- `A022351(n)+A022116(n)` -/
def P15298561385528201903.Spec : Prop :=
  ∀ n, P15298561385528201903.a n = A022377 n

end A022377

/-! ## A022377.P8359331988004698457

`A022353(n)+A022115(n)`
-/

namespace A022377.P8359331988004698457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022353 n + A022115 n

end

end A022377.P8359331988004698457

namespace A022377

/-- `A022353(n)+A022115(n)` -/
def P8359331988004698457.Spec : Prop :=
  ∀ n, P8359331988004698457.a n = A022377 n

end A022377

/-! ## A022377.P13136100476235387944

`A022355(n)+A022114(n)`
-/

namespace A022377.P13136100476235387944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022355 n + A022114 n

end

end A022377.P13136100476235387944

namespace A022377

/-- `A022355(n)+A022114(n)` -/
def P13136100476235387944.Spec : Prop :=
  ∀ n, P13136100476235387944.a n = A022377 n

end A022377

/-! ## A022377.P2190330427493538491

`A022374(n)+A022089(n)`
-/

namespace A022377.P2190330427493538491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022374 n + A022089 n

end

end A022377.P2190330427493538491

namespace A022377

/-- `A022374(n)+A022089(n)` -/
def P2190330427493538491.Spec : Prop :=
  ∀ n, P2190330427493538491.a n = A022377 n

end A022377

/-!
# A022378: Fibonacci sequence beginning 2, 32.

The programs for A022378, the canonical program `A022378.P4822288624874711744` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022378 has offset 0).

The definition of A022378 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022378.P4822288624874711744

`a(n-1)+a(n-2)` with `a(0)=2, a(1)=32`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022378

/-- `a(n-1)+a(n-2)` -/
def P4822288624874711744.Spec : Prop :=
  ∀ n, (P4822288624874711744.a n : ℤ) = A022378 n

theorem P4822288624874711744.correct : P4822288624874711744.Spec := by
  intro n
  simp only [A022378]

end A022378

/-! ## A022378.P1990009097203266786

`2*A022106(n)`
-/

namespace A022378.P1990009097203266786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022106 n

end

end A022378.P1990009097203266786

namespace A022378

/-- `2*A022106(n)` -/
def P1990009097203266786.Spec : Prop :=
  ∀ n, P1990009097203266786.a n = A022378 n

end A022378

/-! ## A022378.P16312237563755499028

`A022365(n)+A000032(n)`
-/

namespace A022378.P16312237563755499028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022365 n + A000032 n

end

end A022378.P16312237563755499028

namespace A022378

/-- `A022365(n)+A000032(n)` -/
def P16312237563755499028.Spec : Prop :=
  ∀ n, P16312237563755499028.a n = A022378 n

end A022378

/-! ## A022378.P1444828830335664222

`A022398(n)+A000285(n)`
-/

namespace A022378.P1444828830335664222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022398 n + A000285 n

end

end A022378.P1444828830335664222

namespace A022378

/-- `A022398(n)+A000285(n)` -/
def P1444828830335664222.Spec : Prop :=
  ∀ n, P1444828830335664222.a n = A022378 n

end A022378

/-! ## A022378.P4175619082321084455

`A022361(n)+A001060(n)`
-/

namespace A022378.P4175619082321084455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022361 n + A001060 n

end

end A022378.P4175619082321084455

namespace A022378

/-- `A022361(n)+A001060(n)` -/
def P4175619082321084455.Spec : Prop :=
  ∀ n, P4175619082321084455.a n = A022378 n

end A022378

/-! ## A022378.P15105252760098638054

`A022363(n)+A020695(n)`
-/

namespace A022378.P15105252760098638054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022363 n + A020695 n

end

end A022378.P15105252760098638054

namespace A022378

/-- `A022363(n)+A020695(n)` -/
def P15105252760098638054.Spec : Prop :=
  ∀ n, P15105252760098638054.a n = A022378 n

end A022378

/-! ## A022378.P13559526956637276473

`A022107(n)+A022105(n)`
-/

namespace A022378.P13559526956637276473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022107 n + A022105 n

end

end A022378.P13559526956637276473

namespace A022378

/-- `A022107(n)+A022105(n)` -/
def P13559526956637276473.Spec : Prop :=
  ∀ n, P13559526956637276473.a n = A022378 n

end A022378

/-! ## A022378.P16252431405215764606

`A022108(n)+A022104(n)`
-/

namespace A022378.P16252431405215764606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022108 n + A022104 n

end

end A022378.P16252431405215764606

namespace A022378

/-- `A022108(n)+A022104(n)` -/
def P16252431405215764606.Spec : Prop :=
  ∀ n, P16252431405215764606.a n = A022378 n

end A022378

/-! ## A022378.P3647835626383006769

`A022109(n)+A022103(n)`
-/

namespace A022378.P3647835626383006769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022109 n + A022103 n

end

end A022378.P3647835626383006769

namespace A022378

/-- `A022109(n)+A022103(n)` -/
def P3647835626383006769.Spec : Prop :=
  ∀ n, P3647835626383006769.a n = A022378 n

end A022378

/-! ## A022378.P16598126699643277268

`A022110(n)+A022102(n)`
-/

namespace A022378.P16598126699643277268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022110 n + A022102 n

end

end A022378.P16598126699643277268

namespace A022378

/-- `A022110(n)+A022102(n)` -/
def P16598126699643277268.Spec : Prop :=
  ∀ n, P16598126699643277268.a n = A022378 n

end A022378

/-! ## A022378.P3259746766691483519

`A022347(n)+A022119(n)`
-/

namespace A022378.P3259746766691483519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A022119 n

end

end A022378.P3259746766691483519

namespace A022378

/-- `A022347(n)+A022119(n)` -/
def P3259746766691483519.Spec : Prop :=
  ∀ n, P3259746766691483519.a n = A022378 n

end A022378

/-! ## A022378.P219038549106823473

`A022349(n)+A022118(n)`
-/

namespace A022378.P219038549106823473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A022118 n

end

end A022378.P219038549106823473

namespace A022378

/-- `A022349(n)+A022118(n)` -/
def P219038549106823473.Spec : Prop :=
  ∀ n, P219038549106823473.a n = A022378 n

end A022378

/-! ## A022378.P5102550985918942616

`A022351(n)+A022117(n)`
-/

namespace A022378.P5102550985918942616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022351 n + A022117 n

end

end A022378.P5102550985918942616

namespace A022378

/-- `A022351(n)+A022117(n)` -/
def P5102550985918942616.Spec : Prop :=
  ∀ n, P5102550985918942616.a n = A022378 n

end A022378

/-! ## A022378.P6388521958261636509

`A022353(n)+A022116(n)`
-/

namespace A022378.P6388521958261636509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022353 n + A022116 n

end

end A022378.P6388521958261636509

namespace A022378

/-- `A022353(n)+A022116(n)` -/
def P6388521958261636509.Spec : Prop :=
  ∀ n, P6388521958261636509.a n = A022378 n

end A022378

/-! ## A022378.P4033287348125790803

`A022376(n)+A022087(n)`
-/

namespace A022378.P4033287348125790803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022376 n + A022087 n

end

end A022378.P4033287348125790803

namespace A022378

/-- `A022376(n)+A022087(n)` -/
def P4033287348125790803.Spec : Prop :=
  ∀ n, P4033287348125790803.a n = A022378 n

end A022378

/-! ## A022378.P12859797442621138731

`A022355(n)+A022115(n)`
-/

namespace A022378.P12859797442621138731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022355 n + A022115 n

end

end A022378.P12859797442621138731

namespace A022378

/-- `A022355(n)+A022115(n)` -/
def P12859797442621138731.Spec : Prop :=
  ∀ n, P12859797442621138731.a n = A022378 n

end A022378

/-! ## A022378.P15519291672500629718

`A022374(n)+A022091(n)`
-/

namespace A022378.P15519291672500629718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022374 n + A022091 n

end

end A022378.P15519291672500629718

namespace A022378

/-- `A022374(n)+A022091(n)` -/
def P15519291672500629718.Spec : Prop :=
  ∀ n, P15519291672500629718.a n = A022378 n

end A022378

/-! ## A022378.P9400553695280341636

`A022375(n)+A022089(n)`
-/

namespace A022378.P9400553695280341636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022375 n + A022089 n

end

end A022378.P9400553695280341636

namespace A022378

/-- `A022375(n)+A022089(n)` -/
def P9400553695280341636.Spec : Prop :=
  ∀ n, P9400553695280341636.a n = A022378 n

end A022378

/-! ## A022378.P7019679053257283885

`A022357(n)+A022114(n)`
-/

namespace A022378.P7019679053257283885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022357 n + A022114 n

end

end A022378.P7019679053257283885

namespace A022378

/-- `A022357(n)+A022114(n)` -/
def P7019679053257283885.Spec : Prop :=
  ∀ n, P7019679053257283885.a n = A022378 n

end A022378

/-! ## A022378.P10257874137219402077

`A022359(n)+A022113(n)`
-/

namespace A022378.P10257874137219402077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022359 n + A022113 n

end

end A022378.P10257874137219402077

namespace A022378

/-- `A022359(n)+A022113(n)` -/
def P10257874137219402077.Spec : Prop :=
  ∀ n, P10257874137219402077.a n = A022378 n

end A022378

/-!
# A022379: Fibonacci sequence beginning 3, 9.

The programs for A022379, the canonical program `A022379.P10751205089241764404` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022379 has offset 0).

The definition of A022379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 476 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022379.P5839843255799885592

`ogf((3+6x)/(1-x-x^2))`
-/

namespace A022379.P5839843255799885592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 6] [1, -1, -1] n

end

end A022379.P5839843255799885592

namespace A022379

/-- `ogf((3+6x)/(1-x-x^2))` -/
def P5839843255799885592.Spec : Prop :=
  ∀ n, P5839843255799885592.a n = A022379 n

end A022379

/-! ## A022379.P10751205089241764404

`a(n-1)+a(n-2)` with `a(0)=3, a(1)=9`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022379

/-- `a(n-1)+a(n-2)` -/
def P10751205089241764404.Spec : Prop :=
  ∀ n, (P10751205089241764404.a n : ℤ) = A022379 n

theorem P10751205089241764404.correct : P10751205089241764404.Spec := by
  intro n
  simp only [A022379]

end A022379

/-! ## A022379.P17167522457306540419

`3*A000032(n+1)`
-/

namespace A022379.P17167522457306540419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000032 (n + 1)

end

end A022379.P17167522457306540419

namespace A022379

/-- `3*A000032(n+1)` -/
def P17167522457306540419.Spec : Prop :=
  ∀ n, P17167522457306540419.a n = A022379 n

end A022379

/-! ## A022379.P17608797783276746725

`3*A000204(n+1)`
-/

namespace A022379.P17608797783276746725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000204 (n + 1)

end

end A022379.P17608797783276746725

namespace A022379

/-- `3*A000204(n+1)` -/
def P17608797783276746725.Spec : Prop :=
  ∀ n, P17608797783276746725.a n = A022379 n

end A022379

/-! ## A022379.P15815715774175320334

`3*(A001610(n)+1)`
-/

namespace A022379.P15815715774175320334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A001610 n + 1)

end

end A022379.P15815715774175320334

namespace A022379

/-- `3*(A001610(n)+1)` -/
def P15815715774175320334.Spec : Prop :=
  ∀ n, P15815715774175320334.a n = A022379 n

end A022379

/-! ## A022379.P689562362075231518

`3*A329723(n+3)`
-/

namespace A022379.P689562362075231518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A329723 (n + 3)

end

end A022379.P689562362075231518

namespace A022379

/-- `3*A329723(n+3)` -/
def P689562362075231518.Spec : Prop :=
  ∀ n, P689562362075231518.a n = A022379 n

end A022379

/-! ## A022379.P2126318127730994344

`3*A090244(2*n)`
-/

namespace A022379.P2126318127730994344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A090244 (2 * n)

end

end A022379.P2126318127730994344

namespace A022379

/-- `3*A090244(2*n)` -/
def P2126318127730994344.Spec : Prop :=
  ∀ n, P2126318127730994344.a n = A022379 n

end A022379

/-! ## A022379.P10965223168382217246

`3/2*A022112(n)`
-/

namespace A022379.P10965223168382217246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A022112 n : ℚ)

end

end A022379.P10965223168382217246

namespace A022379

/-- `3/2*A022112(n)` -/
def P10965223168382217246.Spec : Prop :=
  ∀ n, P10965223168382217246.a n = (A022379 n : ℚ)

end A022379

/-! ## A022379.P615972203549002828

`3*A082587(Δ[n²])`
-/

namespace A022379.P615972203549002828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A082587 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A022379.P615972203549002828

namespace A022379

/-- `3*A082587(Δ[n²])` -/
def P615972203549002828.Spec : Prop :=
  ∀ n, P615972203549002828.a n = A022379 n

end A022379

/-! ## A022379.P13167225355438837126

`3*(A001612(n+1)-1)`
-/

namespace A022379.P13167225355438837126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A001612 (n + 1) - 1)

end

end A022379.P13167225355438837126

namespace A022379

/-- `3*(A001612(n+1)-1)` -/
def P13167225355438837126.Spec : Prop :=
  ∀ n, P13167225355438837126.a n = A022379 n

end A022379

/-! ## A022379.P14553130835675252150

`3*(A000211(n+1)-2)`
-/

namespace A022379.P14553130835675252150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A000211 (n + 1) - 2)

end

end A022379.P14553130835675252150

namespace A022379

/-- `3*(A000211(n+1)-2)` -/
def P14553130835675252150.Spec : Prop :=
  ∀ n, P14553130835675252150.a n = A022379 n

end A022379

/-! ## A022379.P18236012590124283568

`3*A115339(2*(n+1))`
-/

namespace A022379.P18236012590124283568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A115339 (2 * (n + 1))

end

end A022379.P18236012590124283568

namespace A022379

/-- `3*A115339(2*(n+1))` -/
def P18236012590124283568.Spec : Prop :=
  ∀ n, P18236012590124283568.a n = A022379 n

end A022379

/-! ## A022379.P5798236912658975371

`3*A127218(2*(n+1))`
-/

namespace A022379.P5798236912658975371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A127218 (2 * (n + 1))

end

end A022379.P5798236912658975371

namespace A022379

/-- `3*A127218(2*(n+1))` -/
def P5798236912658975371.Spec : Prop :=
  ∀ n, P5798236912658975371.a n = A022379 n

end A022379

/-! ## A022379.P5215993326824547869

`3*A280699(2*(n+1))`
-/

namespace A022379.P5215993326824547869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A280699 (2 * (n + 1))

end

end A022379.P5215993326824547869

namespace A022379

/-- `3*A280699(2*(n+1))` -/
def P5215993326824547869.Spec : Prop :=
  ∀ n, P5215993326824547869.a n = A022379 n

end A022379

/-! ## A022379.P2629892977689500248

`3*(A366506(n+1)-3)`
-/

namespace A022379.P2629892977689500248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A366506 (n + 1) - 3)

end

end A022379.P2629892977689500248

namespace A022379

/-- `3*(A366506(n+1)-3)` -/
def P2629892977689500248.Spec : Prop :=
  ∀ n, P2629892977689500248.a n = A022379 n

end A022379

/-! ## A022379.P1428608214878027090

`3*A302126(2*n+3)`
-/

namespace A022379.P1428608214878027090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A302126 (2 * n + 3)

end

end A022379.P1428608214878027090

namespace A022379

/-- `3*A302126(2*n+3)` -/
def P1428608214878027090.Spec : Prop :=
  ∀ n, P1428608214878027090.a n = A022379 n

end A022379

/-! ## A022379.P9681316074796988595

`∑[3*A000032(abs(1-n))]`
-/

namespace A022379.P9681316074796988595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000032 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022379.P9681316074796988595

namespace A022379

/-- `∑[3*A000032(abs(1-n))]` -/
def P9681316074796988595.Spec : Prop :=
  ∀ n, P9681316074796988595.a n = A022379 n

end A022379

/-! ## A022379.P2582406577201724658

`lcm(3, 3*A000032(2*n-(n-1)))`
-/

namespace A022379.P2582406577201724658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (3 * A000032 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat)

end

end A022379.P2582406577201724658

namespace A022379

/-- `lcm(3, 3*A000032(2*n-(n-1)))` -/
def P2582406577201724658.Spec : Prop :=
  ∀ n, (P2582406577201724658.a n : ℤ) = A022379 n

end A022379

/-! ## A022379.P3932914098363136297

`A001060(n)+A000285(n)`
-/

namespace A022379.P3932914098363136297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001060 n + A000285 n

end

end A022379.P3932914098363136297

namespace A022379

/-- `A001060(n)+A000285(n)` -/
def P3932914098363136297.Spec : Prop :=
  ∀ n, P3932914098363136297.a n = A022379 n

end A022379

/-! ## A022379.P18116564047981231190

`A022098(n)+A000032(n)`
-/

namespace A022379.P18116564047981231190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022098 n + A000032 n

end

end A022379.P18116564047981231190

namespace A022379

/-- `A022098(n)+A000032(n)` -/
def P18116564047981231190.Spec : Prop :=
  ∀ n, P18116564047981231190.a n = A022379 n

end A022379

/-!
# A022380: Fibonacci sequence beginning 3, 12.

The programs for A022380, the canonical program `A022380.P2823883853444346529` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022380 has offset 0).

The definition of A022380 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022380.P2823883853444346529

`a(n-1)+a(n-2)` with `a(0)=3, a(1)=12`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022380

/-- `a(n-1)+a(n-2)` -/
def P2823883853444346529.Spec : Prop :=
  ∀ n, (P2823883853444346529.a n : ℤ) = A022380 n

theorem P2823883853444346529.correct : P2823883853444346529.Spec := by
  intro n
  simp only [A022380]

end A022380

/-! ## A022380.P13132699670191366211

`3*A000285(n)`
-/

namespace A022380.P13132699670191366211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000285 n

end

end A022380.P13132699670191366211

namespace A022380

/-- `3*A000285(n)` -/
def P13132699670191366211.Spec : Prop :=
  ∀ n, P13132699670191366211.a n = A022380 n

end A022380

/-! ## A022380.P3398076382804874702

`ogf((3+9x)/(1-x-x^2))`
-/

namespace A022380.P3398076382804874702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 9] [1, -1, -1] n

end

end A022380.P3398076382804874702

namespace A022380

/-- `ogf((3+9x)/(1-x-x^2))` -/
def P3398076382804874702.Spec : Prop :=
  ∀ n, P3398076382804874702.a n = A022380 n

end A022380

/-! ## A022380.P1830883794865666884

`abs(Δ[a(n-2)-a(n-1)])` with `a(0)=6, a(1)=9`
-/

namespace A022380.P1830883794865666884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 9] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A022380.P1830883794865666884

namespace A022380

/-- `abs(Δ[a(n-2)-a(n-1)])` -/
def P1830883794865666884.Spec : Prop :=
  ∀ n, P1830883794865666884.a n = A022380 n

end A022380

/-! ## A022380.P4033147742404528708

`3*(A022308(n)+1)`
-/

namespace A022380.P4033147742404528708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A022308 n + 1)

end

end A022380.P4033147742404528708

namespace A022380

/-- `3*(A022308(n)+1)` -/
def P4033147742404528708.Spec : Prop :=
  ∀ n, P4033147742404528708.a n = A022380 n

end A022380

/-! ## A022380.P6432105562628248202

`3*A104449(n+1)`
-/

namespace A022380.P6432105562628248202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A104449 (n + 1)

end

end A022380.P6432105562628248202

namespace A022380

/-- `3*A104449(n+1)` -/
def P6432105562628248202.Spec : Prop :=
  ∀ n, P6432105562628248202.a n = A022380 n

end A022380

/-! ## A022380.P13832536616464782188

`3/2*A294157(n)`
-/

namespace A022380.P13832536616464782188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A294157 n : ℚ)

end

end A022380.P13832536616464782188

namespace A022380

/-- `3/2*A294157(n)` -/
def P13832536616464782188.Spec : Prop :=
  ∀ n, P13832536616464782188.a n = (A022380 n : ℚ)

end A022380

/-! ## A022380.P16312952092953745458

`A022101(n)+A000032(n)`
-/

namespace A022380.P16312952092953745458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 n + A000032 n

end

end A022380.P16312952092953745458

namespace A022380

/-- `A022101(n)+A000032(n)` -/
def P16312952092953745458.Spec : Prop :=
  ∀ n, P16312952092953745458.a n = A022380 n

end A022380

/-! ## A022380.P3527522538754633571

`A022123(n)+A000045(n)`
-/

namespace A022380.P3527522538754633571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022123 n + A000045 n

end

end A022380.P3527522538754633571

namespace A022380

/-- `A022123(n)+A000045(n)` -/
def P3527522538754633571.Spec : Prop :=
  ∀ n, P3527522538754633571.a n = A022380 n

end A022380

/-! ## A022380.P13637982739743611986

`A022097(n)+A001060(n)`
-/

namespace A022380.P13637982739743611986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022097 n + A001060 n

end

end A022380.P13637982739743611986

namespace A022380

/-- `A022097(n)+A001060(n)` -/
def P13637982739743611986.Spec : Prop :=
  ∀ n, P13637982739743611986.a n = A022380 n

end A022380

/-! ## A022380.P2404563663180893133

`A022315(n)+A001612(n)`
-/

namespace A022380.P2404563663180893133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022315 n + A001612 n

end

end A022380.P2404563663180893133

namespace A022380

/-- `A022315(n)+A001612(n)` -/
def P2404563663180893133.Spec : Prop :=
  ∀ n, P2404563663180893133.a n = A022380 n

end A022380

/-! ## A022380.P815708941338547065

`A022093(n)+A013655(n)`
-/

namespace A022380.P815708941338547065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 n + A013655 n

end

end A022380.P815708941338547065

namespace A022380

/-- `A022093(n)+A013655(n)` -/
def P815708941338547065.Spec : Prop :=
  ∀ n, P815708941338547065.a n = A022380 n

end A022380

/-! ## A022380.P7987177851276193013

`A022090(n)+A020701(n)`
-/

namespace A022380.P7987177851276193013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022090 n + A020701 n

end

end A022380.P7987177851276193013

namespace A022380

/-- `A022090(n)+A020701(n)` -/
def P7987177851276193013.Spec : Prop :=
  ∀ n, P7987177851276193013.a n = A022380 n

end A022380

/-! ## A022380.P6740211034813291376

`A022099(n)+A020695(n)`
-/

namespace A022380.P6740211034813291376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022099 n + A020695 n

end

end A022380.P6740211034813291376

namespace A022380

/-- `A022099(n)+A020695(n)` -/
def P6740211034813291376.Spec : Prop :=
  ∀ n, P6740211034813291376.a n = A022380 n

end A022380

/-! ## A022380.P5969365849876328845

`A022112(n)+A022096(n)`
-/

namespace A022380.P5969365849876328845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 n + A022096 n

end

end A022380.P5969365849876328845

namespace A022380

/-- `A022112(n)+A022096(n)` -/
def P5969365849876328845.Spec : Prop :=
  ∀ n, P5969365849876328845.a n = A022380 n

end A022380

/-! ## A022380.P8063070648088477825

`A022113(n)+A022095(n)`
-/

namespace A022380.P8063070648088477825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022113 n + A022095 n

end

end A022380.P8063070648088477825

namespace A022380

/-- `A022113(n)+A022095(n)` -/
def P8063070648088477825.Spec : Prop :=
  ∀ n, P8063070648088477825.a n = A022380 n

end A022380

/-! ## A022380.P995123188258639320

`A022120(n)+A022088(n)`
-/

namespace A022380.P995123188258639320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022120 n + A022088 n

end

end A022380.P995123188258639320

namespace A022380

/-- `A022120(n)+A022088(n)` -/
def P995123188258639320.Spec : Prop :=
  ∀ n, P995123188258639320.a n = A022380 n

end A022380

/-! ## A022380.P3598641002215975191

`A022121(n)+A022087(n)`
-/

namespace A022380.P3598641002215975191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022121 n + A022087 n

end

end A022380.P3598641002215975191

namespace A022380

/-- `A022121(n)+A022087(n)` -/
def P3598641002215975191.Spec : Prop :=
  ∀ n, P3598641002215975191.a n = A022380 n

end A022380

/-! ## A022380.P17345985191904054967

`A022379(n)+A022086(n)`
-/

namespace A022380.P17345985191904054967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022379 n + A022086 n

end

end A022380.P17345985191904054967

namespace A022380

/-- `A022379(n)+A022086(n)` -/
def P17345985191904054967.Spec : Prop :=
  ∀ n, P17345985191904054967.a n = A022380 n

end A022380

/-! ## A022380.P7828759536889169515

`A048577(n)+A022313(n)`
-/

namespace A022380.P7828759536889169515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 n + A022313 n

end

end A022380.P7828759536889169515

namespace A022380

/-- `A048577(n)+A022313(n)` -/
def P7828759536889169515.Spec : Prop :=
  ∀ n, P7828759536889169515.a n = A022380 n

end A022380

/-!
# A022381: Fibonacci sequence beginning 3, 15.

The programs for A022381, the canonical program `A022381.P15408426935880832648` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022381 has offset 0).

The definition of A022381 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022381.P15408426935880832648

`3*A022095(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022381

/-- `3*A022095(n)` -/
def P15408426935880832648.Spec : Prop :=
  ∀ n, P15408426935880832648.a n = A022381 n

theorem P15408426935880832648.correct : P15408426935880832648.Spec := by
  intro n
  simp only [A022381]

end A022381

/-! ## A022381.P11953435980079832710

`ogf((3+12x)/(1-x-x^2))`
-/

namespace A022381.P11953435980079832710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 12] [1, -1, -1] n

end

end A022381.P11953435980079832710

namespace A022381

/-- `ogf((3+12x)/(1-x-x^2))` -/
def P11953435980079832710.Spec : Prop :=
  ∀ n, P11953435980079832710.a n = A022381 n

end A022381

/-! ## A022381.P12049995356339146892

`a(n-1)+a(n-2)` with `a(0)=3, a(1)=15`
-/

namespace A022381.P12049995356339146892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 15] fun n a =>
  a (n - 1) + a (n - 2)

end

end A022381.P12049995356339146892

namespace A022381

/-- `a(n-1)+a(n-2)` -/
def P12049995356339146892.Spec : Prop :=
  ∀ n, (P12049995356339146892.a n : ℤ) = A022381 n

end A022381

/-! ## A022381.P3049406550179782555

`3*(A022309(n)+1)`
-/

namespace A022381.P3049406550179782555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A022309 n + 1)

end

end A022381.P3049406550179782555

namespace A022381

/-- `3*(A022309(n)+1)` -/
def P3049406550179782555.Spec : Prop :=
  ∀ n, P3049406550179782555.a n = A022381 n

end A022381

/-! ## A022381.P4671136957726138955

`3/2*A022367(n)`
-/

namespace A022381.P4671136957726138955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A022367 n : ℚ)

end

end A022381.P4671136957726138955

namespace A022381

/-- `3/2*A022367(n)` -/
def P4671136957726138955.Spec : Prop :=
  ∀ n, P4671136957726138955.a n = (A022381 n : ℚ)

end A022381

/-! ## A022381.P12244279419832981967

`A022104(n)+A000032(n)`
-/

namespace A022381.P12244279419832981967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022104 n + A000032 n

end

end A022381.P12244279419832981967

namespace A022381

/-- `A022104(n)+A000032(n)` -/
def P12244279419832981967.Spec : Prop :=
  ∀ n, P12244279419832981967.a n = A022381 n

end A022381

/-! ## A022381.P2052072710611420172

`A022125(n)+A000045(n)`
-/

namespace A022381.P2052072710611420172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022125 n + A000045 n

end

end A022381.P2052072710611420172

namespace A022381

/-- `A022125(n)+A000045(n)` -/
def P2052072710611420172.Spec : Prop :=
  ∀ n, P2052072710611420172.a n = A022381 n

end A022381

/-! ## A022381.P8223078332270777797

`A022115(n)+A000285(n)`
-/

namespace A022381.P8223078332270777797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022115 n + A000285 n

end

end A022381.P8223078332270777797

namespace A022381

/-- `A022115(n)+A000285(n)` -/
def P8223078332270777797.Spec : Prop :=
  ∀ n, P8223078332270777797.a n = A022381 n

end A022381

/-! ## A022381.P3180871432421001112

`A022100(n)+A001060(n)`
-/

namespace A022381.P3180871432421001112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022100 n + A001060 n

end

end A022381.P3180871432421001112

namespace A022381

/-- `A022100(n)+A001060(n)` -/
def P3180871432421001112.Spec : Prop :=
  ∀ n, P3180871432421001112.a n = A022381 n

end A022381

/-! ## A022381.P7597718305537346399

`A022347(n)+A013655(n)`
-/

namespace A022381.P7597718305537346399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A013655 n

end

end A022381.P7597718305537346399

namespace A022381

/-- `A022347(n)+A013655(n)` -/
def P7597718305537346399.Spec : Prop :=
  ∀ n, P7597718305537346399.a n = A022381 n

end A022381

/-! ## A022381.P10834264991719069363

`A022093(n)+A020701(n)`
-/

namespace A022381.P10834264991719069363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022093 n + A020701 n

end

end A022381.P10834264991719069363

namespace A022381

/-- `A022093(n)+A020701(n)` -/
def P10834264991719069363.Spec : Prop :=
  ∀ n, P10834264991719069363.a n = A022381 n

end A022381

/-! ## A022381.P3144566638664787205

`A022102(n)+A020695(n)`
-/

namespace A022381.P3144566638664787205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022102 n + A020695 n

end

end A022381.P3144566638664787205

namespace A022381

/-- `A022102(n)+A020695(n)` -/
def P3144566638664787205.Spec : Prop :=
  ∀ n, P3144566638664787205.a n = A022381 n

end A022381

/-! ## A022381.P3571627255944799128

`A022112(n)+A022099(n)`
-/

namespace A022381.P3571627255944799128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 n + A022099 n

end

end A022381.P3571627255944799128

namespace A022381

/-- `A022112(n)+A022099(n)` -/
def P3571627255944799128.Spec : Prop :=
  ∀ n, P3571627255944799128.a n = A022381 n

end A022381

/-! ## A022381.P2918155084635263137

`A022113(n)+A022098(n)`
-/

namespace A022381.P2918155084635263137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022113 n + A022098 n

end

end A022381.P2918155084635263137

namespace A022381

/-- `A022113(n)+A022098(n)` -/
def P2918155084635263137.Spec : Prop :=
  ∀ n, P2918155084635263137.a n = A022381 n

end A022381

/-! ## A022381.P11789126527948046586

`A022114(n)+A022096(n)`
-/

namespace A022381.P11789126527948046586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022114 n + A022096 n

end

end A022381.P11789126527948046586

namespace A022381

/-- `A022114(n)+A022096(n)` -/
def P11789126527948046586.Spec : Prop :=
  ∀ n, P11789126527948046586.a n = A022381 n

end A022381

/-! ## A022381.P15311573191022297607

`A022120(n)+A022091(n)`
-/

namespace A022381.P15311573191022297607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022120 n + A022091 n

end

end A022381.P15311573191022297607

namespace A022381

/-- `A022120(n)+A022091(n)` -/
def P15311573191022297607.Spec : Prop :=
  ∀ n, P15311573191022297607.a n = A022381 n

end A022381

/-! ## A022381.P10386471129363323826

`A022121(n)+A022090(n)`
-/

namespace A022381.P10386471129363323826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022121 n + A022090 n

end

end A022381.P10386471129363323826

namespace A022381

/-- `A022121(n)+A022090(n)` -/
def P10386471129363323826.Spec : Prop :=
  ∀ n, P10386471129363323826.a n = A022381 n

end A022381

/-! ## A022381.P16544954271926490540

`A022122(n)+A022088(n)`
-/

namespace A022381.P16544954271926490540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 n + A022088 n

end

end A022381.P16544954271926490540

namespace A022381

/-- `A022122(n)+A022088(n)` -/
def P16544954271926490540.Spec : Prop :=
  ∀ n, P16544954271926490540.a n = A022381 n

end A022381

/-! ## A022381.P14273197711520190140

`A022123(n)+A022087(n)`
-/

namespace A022381.P14273197711520190140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022123 n + A022087 n

end

end A022381.P14273197711520190140

namespace A022381

/-- `A022123(n)+A022087(n)` -/
def P14273197711520190140.Spec : Prop :=
  ∀ n, P14273197711520190140.a n = A022381 n

end A022381

/-! ## A022381.P3951757281181045262

`A022367(n)+A022095(n)`
-/

namespace A022381.P3951757281181045262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022367 n + A022095 n

end

end A022381.P3951757281181045262

namespace A022381

/-- `A022367(n)+A022095(n)` -/
def P3951757281181045262.Spec : Prop :=
  ∀ n, P3951757281181045262.a n = A022381 n

end A022381

/-!
# A022382: Fibonacci sequence beginning 4, 10.

The programs for A022382, the canonical program `A022382.P12422491102401618957` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022382 has offset 0).

The definition of A022382 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022382.P12422491102401618957

`a(n-1)+a(n-2)` with `a(0)=4, a(1)=10`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022382

/-- `a(n-1)+a(n-2)` -/
def P12422491102401618957.Spec : Prop :=
  ∀ n, (P12422491102401618957.a n : ℤ) = A022382 n

theorem P12422491102401618957.correct : P12422491102401618957.Spec := by
  intro n
  simp only [A022382]

end A022382

/-! ## A022382.P6517719796562753492

`2*A001060(n)`
-/

namespace A022382.P6517719796562753492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001060 n

end

end A022382.P6517719796562753492

namespace A022382

/-- `2*A001060(n)` -/
def P6517719796562753492.Spec : Prop :=
  ∀ n, P6517719796562753492.a n = A022382 n

end A022382

/-! ## A022382.P15438612387643363106

`ogf((4+6x)/(1-x-x^2))`
-/

namespace A022382.P15438612387643363106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 6] [1, -1, -1] n

end

end A022382.P15438612387643363106

namespace A022382

/-- `ogf((4+6x)/(1-x-x^2))` -/
def P15438612387643363106.Spec : Prop :=
  ∀ n, P15438612387643363106.a n = A022382 n

end A022382

/-! ## A022382.P5353006416972223837

`A022408(n)+1`
-/

namespace A022382.P5353006416972223837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022408 n + 1

end

end A022382.P5353006416972223837

namespace A022382

/-- `A022408(n)+1` -/
def P5353006416972223837.Spec : Prop :=
  ∀ n, P5353006416972223837.a n = A022382 n

end A022382

/-! ## A022382.P13115614971533773985

`2*A013655(n+1)`
-/

namespace A022382.P13115614971533773985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013655 (n + 1)

end

end A022382.P13115614971533773985

namespace A022382

/-- `2*A013655(n+1)` -/
def P13115614971533773985.Spec : Prop :=
  ∀ n, P13115614971533773985.a n = A022382 n

end A022382

/-! ## A022382.P7736592931021716392

`2*(A022318(n)+1)`
-/

namespace A022382.P7736592931021716392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A022318 n + 1)

end

end A022382.P7736592931021716392

namespace A022382

/-- `2*(A022318(n)+1)` -/
def P7736592931021716392.Spec : Prop :=
  ∀ n, P7736592931021716392.a n = A022382 n

end A022382

/-! ## A022382.P16270702630867642606

`2*A174562(Δ[n²])`
-/

namespace A022382.P16270702630867642606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174562 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A022382.P16270702630867642606

namespace A022382

/-- `2*A174562(Δ[n²])` -/
def P16270702630867642606.Spec : Prop :=
  ∀ n, P16270702630867642606.a n = A022382 n

end A022382

/-! ## A022382.P9501701246839958248

`2*(Δ[A192761(n)]+1)`
-/

namespace A022382.P9501701246839958248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + 1)

end

end A022382.P9501701246839958248

namespace A022382

/-- `2*(Δ[A192761(n)]+1)` -/
def P9501701246839958248.Spec : Prop :=
  ∀ n, P9501701246839958248.a n = A022382 n

end A022382

/-! ## A022382.P1268727833177801549

`2*(Δ[A192969(n)]+1)`
-/

namespace A022382.P1268727833177801549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + 1)

end

end A022382.P1268727833177801549

namespace A022382

/-- `2*(Δ[A192969(n)]+1)` -/
def P1268727833177801549.Spec : Prop :=
  ∀ n, P1268727833177801549.a n = A022382 n

end A022382

/-! ## A022382.P1919466457100531675

`2*(Δ[A192979(n)]+2)`
-/

namespace A022382.P1919466457100531675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + 2)

end

end A022382.P1919466457100531675

namespace A022382

/-- `2*(Δ[A192979(n)]+2)` -/
def P1919466457100531675.Spec : Prop :=
  ∀ n, P1919466457100531675.a n = A022382 n

end A022382

/-! ## A022382.P13207454476065687028

`2*(A013915(n+1)-(n+1))`
-/

namespace A022382.P13207454476065687028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A013915 (n + 1) - (n + 1 : ℤ))

end

end A022382.P13207454476065687028

namespace A022382

/-- `2*(A013915(n+1)-(n+1))` -/
def P13207454476065687028.Spec : Prop :=
  ∀ n, P13207454476065687028.a n = A022382 n

end A022382

/-! ## A022382.P5056482069251500798

`A022114(n)+A000032(n)`
-/

namespace A022382.P5056482069251500798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022114 n + A000032 n

end

end A022382.P5056482069251500798

namespace A022382

/-- `A022114(n)+A000032(n)` -/
def P5056482069251500798.Spec : Prop :=
  ∀ n, P5056482069251500798.a n = A022382 n

end A022382

/-! ## A022382.P15252706354577841391

`A022130(n)+A000045(n)`
-/

namespace A022382.P15252706354577841391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022130 n + A000045 n

end

end A022382.P15252706354577841391

namespace A022382

/-- `A022130(n)+A000045(n)` -/
def P15252706354577841391.Spec : Prop :=
  ∀ n, P15252706354577841391.a n = A022382 n

end A022382

/-! ## A022382.P6614682288775131371

`A022322(n)+A001612(n)`
-/

namespace A022382.P6614682288775131371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022322 n + A001612 n

end

end A022382.P6614682288775131371

namespace A022382

/-- `A022322(n)+A001612(n)` -/
def P6614682288775131371.Spec : Prop :=
  ∀ n, P6614682288775131371.a n = A022382 n

end A022382

/-! ## A022382.P3824711470983801726

`A022406(n)+A001588(n)`
-/

namespace A022382.P3824711470983801726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022406 n + A001588 n

end

end A022382.P3824711470983801726

namespace A022382

/-- `A022406(n)+A001588(n)` -/
def P3824711470983801726.Spec : Prop :=
  ∀ n, P3824711470983801726.a n = A022382 n

end A022382

/-! ## A022382.P4991991622635487084

`A022407(n)+A001611(n)`
-/

namespace A022382.P4991991622635487084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022407 n + A001611 n

end

end A022382.P4991991622635487084

namespace A022382

/-- `A022407(n)+A001611(n)` -/
def P4991991622635487084.Spec : Prop :=
  ∀ n, P4991991622635487084.a n = A022382 n

end A022382

/-! ## A022382.P466819838255394372

`A022098(n)+A013655(n)`
-/

namespace A022382.P466819838255394372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022098 n + A013655 n

end

end A022382.P466819838255394372

namespace A022382

/-- `A022098(n)+A013655(n)` -/
def P466819838255394372.Spec : Prop :=
  ∀ n, P466819838255394372.a n = A022382 n

end A022382

/-! ## A022382.P16858927316205578941

`A022095(n)+A020701(n)`
-/

namespace A022382.P16858927316205578941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 n + A020701 n

end

end A022382.P16858927316205578941

namespace A022382

/-- `A022095(n)+A020701(n)` -/
def P16858927316205578941.Spec : Prop :=
  ∀ n, P16858927316205578941.a n = A022382 n

end A022382

/-! ## A022382.P9677883772983999067

`A022113(n)+A020695(n)`
-/

namespace A022382.P9677883772983999067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022113 n + A020695 n

end

end A022382.P9677883772983999067

namespace A022382

/-- `A022113(n)+A020695(n)` -/
def P9677883772983999067.Spec : Prop :=
  ∀ n, P9677883772983999067.a n = A022382 n

end A022382

/-! ## A022382.P7104697093120792991

`A022309(n)+A020706(n)`
-/

namespace A022382.P7104697093120792991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022309 n + A020706 n

end

end A022382.P7104697093120792991

namespace A022382

/-- `A022309(n)+A020706(n)` -/
def P7104697093120792991.Spec : Prop :=
  ∀ n, P7104697093120792991.a n = A022382 n

end A022382

/-!
# A022383: Fibonacci sequence beginning 4, 14.

The programs for A022383, the canonical program `A022383.P14382020885396006128` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022383 has offset 0).

The definition of A022383 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022383.P14382020885396006128

`a(n-1)+a(n-2)` with `a(0)=4, a(1)=14`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022383

/-- `a(n-1)+a(n-2)` -/
def P14382020885396006128.Spec : Prop :=
  ∀ n, (P14382020885396006128.a n : ℤ) = A022383 n

theorem P14382020885396006128.correct : P14382020885396006128.Spec := by
  intro n
  simp only [A022383]

end A022383

/-! ## A022383.P7776887395864852227

`2*A022113(n)`
-/

namespace A022383.P7776887395864852227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022113 n

end

end A022383.P7776887395864852227

namespace A022383

/-- `2*A022113(n)` -/
def P7776887395864852227.Spec : Prop :=
  ∀ n, P7776887395864852227.a n = A022383 n

end A022383

/-! ## A022383.P7921522569194938023

`ogf((4+10x)/(1-x-x^2))`
-/

namespace A022383.P7921522569194938023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 10] [1, -1, -1] n

end

end A022383.P7921522569194938023

namespace A022383

/-- `ogf((4+10x)/(1-x-x^2))` -/
def P7921522569194938023.Spec : Prop :=
  ∀ n, P7921522569194938023.a n = A022383 n

end A022383

/-! ## A022383.P7659911492526248413

`abs(Δ[a(n-2)-a(n-1)])` with `a(0)=6, a(1)=10`
-/

namespace A022383.P7659911492526248413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 10] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A022383.P7659911492526248413

namespace A022383

/-- `abs(Δ[a(n-2)-a(n-1)])` -/
def P7659911492526248413.Spec : Prop :=
  ∀ n, P7659911492526248413.a n = A022383 n

end A022383

/-! ## A022383.P3226723399099287812

`2*(A022320(n)+1)`
-/

namespace A022383.P3226723399099287812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A022320 n + 1)

end

end A022383.P3226723399099287812

namespace A022383

/-- `2*(A022320(n)+1)` -/
def P3226723399099287812.Spec : Prop :=
  ∀ n, P3226723399099287812.a n = A022383 n

end A022383

/-! ## A022383.P6201049831026026731

`2*A095795(2*n)`
-/

namespace A022383.P6201049831026026731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095795 (2 * n)

end

end A022383.P6201049831026026731

namespace A022383

/-- `2*A095795(2*n)` -/
def P6201049831026026731.Spec : Prop :=
  ∀ n, P6201049831026026731.a n = A022383 n

end A022383

/-! ## A022383.P10534924382564182286

`A022116(n)+A000032(n)`
-/

namespace A022383.P10534924382564182286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022116 n + A000032 n

end

end A022383.P10534924382564182286

namespace A022383

/-- `A022116(n)+A000032(n)` -/
def P10534924382564182286.Spec : Prop :=
  ∀ n, P10534924382564182286.a n = A022383 n

end A022383

/-! ## A022383.P4884066703495907026

`A022132(n)+A000045(n)`
-/

namespace A022383.P4884066703495907026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022132 n + A000045 n

end

end A022383.P4884066703495907026

namespace A022383

/-- `A022132(n)+A000045(n)` -/
def P4884066703495907026.Spec : Prop :=
  ∀ n, P4884066703495907026.a n = A022383 n

end A022383

/-! ## A022383.P12101727366583922070

`A022122(n)+A000285(n)`
-/

namespace A022383.P12101727366583922070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 n + A000285 n

end

end A022383.P12101727366583922070

namespace A022383

/-- `A022122(n)+A000285(n)` -/
def P12101727366583922070.Spec : Prop :=
  ∀ n, P12101727366583922070.a n = A022383 n

end A022383

/-! ## A022383.P6007923282577812326

`A022114(n)+A001060(n)`
-/

namespace A022383.P6007923282577812326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022114 n + A001060 n

end

end A022383.P6007923282577812326

namespace A022383

/-- `A022114(n)+A001060(n)` -/
def P6007923282577812326.Spec : Prop :=
  ∀ n, P6007923282577812326.a n = A022383 n

end A022383

/-! ## A022383.P13503094819653584654

`A022326(n)+A001612(n)`
-/

namespace A022383.P13503094819653584654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022326 n + A001612 n

end

end A022383.P13503094819653584654

namespace A022383

/-- `A022326(n)+A001612(n)` -/
def P13503094819653584654.Spec : Prop :=
  ∀ n, P13503094819653584654.a n = A022383 n

end A022383

/-! ## A022383.P3458977878078680084

`A022410(n)+A001588(n)`
-/

namespace A022383.P3458977878078680084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022410 n + A001588 n

end

end A022383.P3458977878078680084

namespace A022383

/-- `A022410(n)+A001588(n)` -/
def P3458977878078680084.Spec : Prop :=
  ∀ n, P3458977878078680084.a n = A022383 n

end A022383

/-! ## A022383.P13007625839328533296

`A022411(n)+A001611(n)`
-/

namespace A022383.P13007625839328533296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022411 n + A001611 n

end

end A022383.P13007625839328533296

namespace A022383

/-- `A022411(n)+A001611(n)` -/
def P13007625839328533296.Spec : Prop :=
  ∀ n, P13007625839328533296.a n = A022383 n

end A022383

/-! ## A022383.P12090998596972098688

`A022102(n)+A013655(n)`
-/

namespace A022383.P12090998596972098688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022102 n + A013655 n

end

end A022383.P12090998596972098688

namespace A022383

/-- `A022102(n)+A013655(n)` -/
def P12090998596972098688.Spec : Prop :=
  ∀ n, P12090998596972098688.a n = A022383 n

end A022383

/-! ## A022383.P12749572086646630113

`A022099(n)+A020701(n)`
-/

namespace A022383.P12749572086646630113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022099 n + A020701 n

end

end A022383.P12749572086646630113

namespace A022383

/-- `A022099(n)+A020701(n)` -/
def P12749572086646630113.Spec : Prop :=
  ∀ n, P12749572086646630113.a n = A022383 n

end A022383

/-! ## A022383.P12586579756250674817

`A022115(n)+A020695(n)`
-/

namespace A022383.P12586579756250674817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022115 n + A020695 n

end

end A022383.P12586579756250674817

namespace A022383

/-- `A022115(n)+A020695(n)` -/
def P12586579756250674817.Spec : Prop :=
  ∀ n, P12586579756250674817.a n = A022383 n

end A022383

/-! ## A022383.P3717550049171777125

`A022313(n)+A020706(n)`
-/

namespace A022383.P3717550049171777125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022313 n + A020706 n

end

end A022383.P3717550049171777125

namespace A022383

/-- `A022313(n)+A020706(n)` -/
def P3717550049171777125.Spec : Prop :=
  ∀ n, P3717550049171777125.a n = A022383 n

end A022383

/-! ## A022383.P10259747302723817308

`A022120(n)+A022097(n)`
-/

namespace A022383.P10259747302723817308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022120 n + A022097 n

end

end A022383.P10259747302723817308

namespace A022383

/-- `A022120(n)+A022097(n)` -/
def P10259747302723817308.Spec : Prop :=
  ∀ n, P10259747302723817308.a n = A022383 n

end A022383

/-! ## A022383.P7973942700541911699

`A022121(n)+A022096(n)`
-/

namespace A022383.P7973942700541911699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022121 n + A022096 n

end

end A022383.P7973942700541911699

namespace A022383

/-- `A022121(n)+A022096(n)` -/
def P7973942700541911699.Spec : Prop :=
  ∀ n, P7973942700541911699.a n = A022383 n

end A022383

/-! ## A022383.P12237862558100679270

`A022130(n)+A022088(n)`
-/

namespace A022383.P12237862558100679270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022130 n + A022088 n

end

end A022383.P12237862558100679270

namespace A022383

/-- `A022130(n)+A022088(n)` -/
def P12237862558100679270.Spec : Prop :=
  ∀ n, P12237862558100679270.a n = A022383 n

end A022383

/-!
# A022384: Fibonacci sequence beginning 4, 18.

The programs for A022384, the canonical program `A022384.P8904920412054153105` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022384 has offset 0).

The definition of A022384 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022384.P8904920412054153105

`a(n-1)+a(n-2)` with `a(0)=4, a(1)=18`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022384

/-- `a(n-1)+a(n-2)` -/
def P8904920412054153105.Spec : Prop :=
  ∀ n, (P8904920412054153105.a n : ℤ) = A022384 n

theorem P8904920412054153105.correct : P8904920412054153105.Spec := by
  intro n
  simp only [A022384]

end A022384

/-! ## A022384.P16362649262002184377

`ogf((4+14x)/(1-x-x^2))`
-/

namespace A022384.P16362649262002184377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 14] [1, -1, -1] n

end

end A022384.P16362649262002184377

namespace A022384

/-- `ogf((4+14x)/(1-x-x^2))` -/
def P16362649262002184377.Spec : Prop :=
  ∀ n, P16362649262002184377.a n = A022384 n

end A022384

/-! ## A022384.P6050509286574674850

`2*A022114(n)`
-/

namespace A022384.P6050509286574674850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022114 n

end

end A022384.P6050509286574674850

namespace A022384

/-- `2*A022114(n)` -/
def P6050509286574674850.Spec : Prop :=
  ∀ n, P6050509286574674850.a n = A022384 n

end A022384

/-! ## A022384.P1114193858525225481

`2*(A022322(n)+1)`
-/

namespace A022384.P1114193858525225481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A022322 n + 1)

end

end A022384.P1114193858525225481

namespace A022384

/-- `2*(A022322(n)+1)` -/
def P1114193858525225481.Spec : Prop :=
  ∀ n, P1114193858525225481.a n = A022384 n

end A022384

/-! ## A022384.P1587324899530705557

`A022118(n)+A000032(n)`
-/

namespace A022384.P1587324899530705557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022118 n + A000032 n

end

end A022384.P1587324899530705557

namespace A022384

/-- `A022118(n)+A000032(n)` -/
def P1587324899530705557.Spec : Prop :=
  ∀ n, P1587324899530705557.a n = A022384 n

end A022384

/-! ## A022384.P5553970988056853330

`A022134(n)+A000045(n)`
-/

namespace A022384.P5553970988056853330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022134 n + A000045 n

end

end A022384.P5553970988056853330

namespace A022384

/-- `A022134(n)+A000045(n)` -/
def P5553970988056853330.Spec : Prop :=
  ∀ n, P5553970988056853330.a n = A022384 n

end A022384

/-! ## A022384.P605373125916472772

`A022125(n)+A000285(n)`
-/

namespace A022384.P605373125916472772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022125 n + A000285 n

end

end A022384.P605373125916472772

namespace A022384

/-- `A022125(n)+A000285(n)` -/
def P605373125916472772.Spec : Prop :=
  ∀ n, P605373125916472772.a n = A022384 n

end A022384

/-! ## A022384.P15521411167511240060

`A022116(n)+A001060(n)`
-/

namespace A022384.P15521411167511240060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022116 n + A001060 n

end

end A022384.P15521411167511240060

namespace A022384

/-- `A022116(n)+A001060(n)` -/
def P15521411167511240060.Spec : Prop :=
  ∀ n, P15521411167511240060.a n = A022384 n

end A022384

/-! ## A022384.P2634547081022036120

`A022106(n)+A013655(n)`
-/

namespace A022384.P2634547081022036120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022106 n + A013655 n

end

end A022384.P2634547081022036120

namespace A022384

/-- `A022106(n)+A013655(n)` -/
def P2634547081022036120.Spec : Prop :=
  ∀ n, P2634547081022036120.a n = A022384 n

end A022384

/-! ## A022384.P10316454513713863995

`A022103(n)+A020701(n)`
-/

namespace A022384.P10316454513713863995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022103 n + A020701 n

end

end A022384.P10316454513713863995

namespace A022384

/-- `A022103(n)+A020701(n)` -/
def P10316454513713863995.Spec : Prop :=
  ∀ n, P10316454513713863995.a n = A022384 n

end A022384

/-! ## A022384.P17452733333300825996

`A022117(n)+A020695(n)`
-/

namespace A022384.P17452733333300825996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022117 n + A020695 n

end

end A022384.P17452733333300825996

namespace A022384

/-- `A022117(n)+A020695(n)` -/
def P17452733333300825996.Spec : Prop :=
  ∀ n, P17452733333300825996.a n = A022384 n

end A022384

/-! ## A022384.P14467554707752504724

`A022317(n)+A020706(n)`
-/

namespace A022384.P14467554707752504724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022317 n + A020706 n

end

end A022384.P14467554707752504724

namespace A022384

/-- `A022317(n)+A020706(n)` -/
def P14467554707752504724.Spec : Prop :=
  ∀ n, P14467554707752504724.a n = A022384 n

end A022384

/-! ## A022384.P5547583465110107156

`A022120(n)+A022101(n)`
-/

namespace A022384.P5547583465110107156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022120 n + A022101 n

end

end A022384.P5547583465110107156

namespace A022384

/-- `A022120(n)+A022101(n)` -/
def P5547583465110107156.Spec : Prop :=
  ∀ n, P5547583465110107156.a n = A022384 n

end A022384

/-! ## A022384.P16945479668986713671

`A022121(n)+A022100(n)`
-/

namespace A022384.P16945479668986713671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022121 n + A022100 n

end

end A022384.P16945479668986713671

namespace A022384

/-- `A022121(n)+A022100(n)` -/
def P16945479668986713671.Spec : Prop :=
  ∀ n, P16945479668986713671.a n = A022384 n

end A022384

/-! ## A022384.P9179837288864755662

`A022122(n)+A022098(n)`
-/

namespace A022384.P9179837288864755662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 n + A022098 n

end

end A022384.P9179837288864755662

namespace A022384

/-- `A022122(n)+A022098(n)` -/
def P9179837288864755662.Spec : Prop :=
  ∀ n, P9179837288864755662.a n = A022384 n

end A022384

/-! ## A022384.P14682401222748329843

`A022123(n)+A022097(n)`
-/

namespace A022384.P14682401222748329843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022123 n + A022097 n

end

end A022384.P14682401222748329843

namespace A022384

/-- `A022123(n)+A022097(n)` -/
def P14682401222748329843.Spec : Prop :=
  ∀ n, P14682401222748329843.a n = A022384 n

end A022384

/-! ## A022384.P12632909569566042407

`A022124(n)+A022095(n)`
-/

namespace A022384.P12632909569566042407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022124 n + A022095 n

end

end A022384.P12632909569566042407

namespace A022384

/-- `A022124(n)+A022095(n)` -/
def P12632909569566042407.Spec : Prop :=
  ∀ n, P12632909569566042407.a n = A022384 n

end A022384

/-! ## A022384.P7335730608631662094

`A022130(n)+A022092(n)`
-/

namespace A022384.P7335730608631662094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022130 n + A022092 n

end

end A022384.P7335730608631662094

namespace A022384

/-- `A022130(n)+A022092(n)` -/
def P7335730608631662094.Spec : Prop :=
  ∀ n, P7335730608631662094.a n = A022384 n

end A022384

/-! ## A022384.P17021901468407694018

`A022131(n)+A022090(n)`
-/

namespace A022384.P17021901468407694018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022131 n + A022090 n

end

end A022384.P17021901468407694018

namespace A022384

/-- `A022131(n)+A022090(n)` -/
def P17021901468407694018.Spec : Prop :=
  ∀ n, P17021901468407694018.a n = A022384 n

end A022384

/-! ## A022384.P14994694761572149132

`A022132(n)+A022088(n)`
-/

namespace A022384.P14994694761572149132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022132 n + A022088 n

end

end A022384.P14994694761572149132

namespace A022384

/-- `A022132(n)+A022088(n)` -/
def P14994694761572149132.Spec : Prop :=
  ∀ n, P14994694761572149132.a n = A022384 n

end A022384

/-!
# A022385: Fibonacci sequence beginning 4, 22.

The programs for A022385, the canonical program `A022385.P16937619479723646624` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022385 has offset 0).

The definition of A022385 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022385.P5371326140341887711

`ogf((4+18x)/(1-x-x^2))`
-/

namespace A022385.P5371326140341887711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 18] [1, -1, -1] n

end

end A022385.P5371326140341887711

namespace A022385

/-- `ogf((4+18x)/(1-x-x^2))` -/
def P5371326140341887711.Spec : Prop :=
  ∀ n, P5371326140341887711.a n = A022385 n

end A022385

/-! ## A022385.P16937619479723646624

`a(n-1)+a(n-2)` with `a(0)=4, a(1)=22`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022385

/-- `a(n-1)+a(n-2)` -/
def P16937619479723646624.Spec : Prop :=
  ∀ n, (P16937619479723646624.a n : ℤ) = A022385 n

theorem P16937619479723646624.correct : P16937619479723646624.Spec := by
  intro n
  simp only [A022385]

end A022385

/-! ## A022385.P10081976401102789325

`2*A022115(n)`
-/

namespace A022385.P10081976401102789325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022115 n

end

end A022385.P10081976401102789325

namespace A022385

/-- `2*A022115(n)` -/
def P10081976401102789325.Spec : Prop :=
  ∀ n, P10081976401102789325.a n = A022385 n

end A022385

/-! ## A022385.P14409564667395149495

`2*(A022324(n)+1)`
-/

namespace A022385.P14409564667395149495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A022324 n + 1)

end

end A022385.P14409564667395149495

namespace A022385

/-- `2*(A022324(n)+1)` -/
def P14409564667395149495.Spec : Prop :=
  ∀ n, P14409564667395149495.a n = A022385 n

end A022385

/-! ## A022385.P167307183344114975

`A022118(n)+A001060(n)`
-/

namespace A022385.P167307183344114975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022118 n + A001060 n

end

end A022385.P167307183344114975

namespace A022385

/-- `A022118(n)+A001060(n)` -/
def P167307183344114975.Spec : Prop :=
  ∀ n, P167307183344114975.a n = A022385 n

end A022385

/-! ## A022385.P17941490740893563277

`A022110(n)+A013655(n)`
-/

namespace A022385.P17941490740893563277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022110 n + A013655 n

end

end A022385.P17941490740893563277

namespace A022385

/-- `A022110(n)+A013655(n)` -/
def P17941490740893563277.Spec : Prop :=
  ∀ n, P17941490740893563277.a n = A022385 n

end A022385

/-! ## A022385.P7701410519253060163

`A022107(n)+A020701(n)`
-/

namespace A022385.P7701410519253060163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022107 n + A020701 n

end

end A022385.P7701410519253060163

namespace A022385

/-- `A022107(n)+A020701(n)` -/
def P7701410519253060163.Spec : Prop :=
  ∀ n, P7701410519253060163.a n = A022385 n

end A022385

/-! ## A022385.P723524391794187747

`A022119(n)+A020695(n)`
-/

namespace A022385.P723524391794187747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022119 n + A020695 n

end

end A022385.P723524391794187747

namespace A022385

/-- `A022119(n)+A020695(n)` -/
def P723524391794187747.Spec : Prop :=
  ∀ n, P723524391794187747.a n = A022385 n

end A022385

/-! ## A022385.P9657122011810879710

`A022116(n)+A022114(n)`
-/

namespace A022385.P9657122011810879710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022116 n + A022114 n

end

end A022385.P9657122011810879710

namespace A022385

/-- `A022116(n)+A022114(n)` -/
def P9657122011810879710.Spec : Prop :=
  ∀ n, P9657122011810879710.a n = A022385 n

end A022385

/-! ## A022385.P18191703938850786493

`A022120(n)+A022105(n)`
-/

namespace A022385.P18191703938850786493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022120 n + A022105 n

end

end A022385.P18191703938850786493

namespace A022385

/-- `A022120(n)+A022105(n)` -/
def P18191703938850786493.Spec : Prop :=
  ∀ n, P18191703938850786493.a n = A022385 n

end A022385

/-! ## A022385.P15128254720013911074

`A022121(n)+A022104(n)`
-/

namespace A022385.P15128254720013911074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022121 n + A022104 n

end

end A022385.P15128254720013911074

namespace A022385

/-- `A022121(n)+A022104(n)` -/
def P15128254720013911074.Spec : Prop :=
  ∀ n, P15128254720013911074.a n = A022385 n

end A022385

/-! ## A022385.P11838367683986136868

`A022122(n)+A022102(n)`
-/

namespace A022385.P11838367683986136868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 n + A022102 n

end

end A022385.P11838367683986136868

namespace A022385

/-- `A022122(n)+A022102(n)` -/
def P11838367683986136868.Spec : Prop :=
  ∀ n, P11838367683986136868.a n = A022385 n

end A022385

/-! ## A022385.P4378402011976051284

`A022123(n)+A022101(n)`
-/

namespace A022385.P4378402011976051284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022123 n + A022101 n

end

end A022385.P4378402011976051284

namespace A022385

/-- `A022123(n)+A022101(n)` -/
def P4378402011976051284.Spec : Prop :=
  ∀ n, P4378402011976051284.a n = A022385 n

end A022385

/-! ## A022385.P13143518346023661006

`A022124(n)+A022099(n)`
-/

namespace A022385.P13143518346023661006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022124 n + A022099 n

end

end A022385.P13143518346023661006

namespace A022385

/-- `A022124(n)+A022099(n)` -/
def P13143518346023661006.Spec : Prop :=
  ∀ n, P13143518346023661006.a n = A022385 n

end A022385

/-! ## A022385.P9083567821968474678

`A022125(n)+A022098(n)`
-/

namespace A022385.P9083567821968474678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022125 n + A022098 n

end

end A022385.P9083567821968474678

namespace A022385

/-- `A022125(n)+A022098(n)` -/
def P9083567821968474678.Spec : Prop :=
  ∀ n, P9083567821968474678.a n = A022385 n

end A022385

/-! ## A022385.P17207377039118124960

`A022126(n)+A022096(n)`
-/

namespace A022385.P17207377039118124960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022126 n + A022096 n

end

end A022385.P17207377039118124960

namespace A022385

/-- `A022126(n)+A022096(n)` -/
def P17207377039118124960.Spec : Prop :=
  ∀ n, P17207377039118124960.a n = A022385 n

end A022385

/-! ## A022385.P10580541282253380570

`A022127(n)+A022095(n)`
-/

namespace A022385.P10580541282253380570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022127 n + A022095 n

end

end A022385.P10580541282253380570

namespace A022385

/-- `A022127(n)+A022095(n)` -/
def P10580541282253380570.Spec : Prop :=
  ∀ n, P10580541282253380570.a n = A022385 n

end A022385

/-! ## A022385.P5051153188285841819

`A022133(n)+A022090(n)`
-/

namespace A022385.P5051153188285841819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022133 n + A022090 n

end

end A022385.P5051153188285841819

namespace A022385

/-- `A022133(n)+A022090(n)` -/
def P5051153188285841819.Spec : Prop :=
  ∀ n, P5051153188285841819.a n = A022385 n

end A022385

/-! ## A022385.P10825568439096314053

`A022134(n)+A022088(n)`
-/

namespace A022385.P10825568439096314053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022134 n + A022088 n

end

end A022385.P10825568439096314053

namespace A022385

/-- `A022134(n)+A022088(n)` -/
def P10825568439096314053.Spec : Prop :=
  ∀ n, P10825568439096314053.a n = A022385 n

end A022385

/-! ## A022385.P11886419257019152481

`A022135(n)+A022086(n)`
-/

namespace A022385.P11886419257019152481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022135 n + A022086 n

end

end A022385.P11886419257019152481

namespace A022385

/-- `A022135(n)+A022086(n)` -/
def P11886419257019152481.Spec : Prop :=
  ∀ n, P11886419257019152481.a n = A022385 n

end A022385

/-!
# A022386: Fibonacci sequence beginning 4, 26.

The programs for A022386, the canonical program `A022386.P11697045666882426555` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022386 has offset 0).

The definition of A022386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022386.P8662764926040559181

`ogf((4+22x)/(1-x-x^2))`
-/

namespace A022386.P8662764926040559181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 22] [1, -1, -1] n

end

end A022386.P8662764926040559181

namespace A022386

/-- `ogf((4+22x)/(1-x-x^2))` -/
def P8662764926040559181.Spec : Prop :=
  ∀ n, P8662764926040559181.a n = A022386 n

end A022386

/-! ## A022386.P11697045666882426555

`a(n-1)+a(n-2)` with `a(0)=4, a(1)=26`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022386

/-- `a(n-1)+a(n-2)` -/
def P11697045666882426555.Spec : Prop :=
  ∀ n, (P11697045666882426555.a n : ℤ) = A022386 n

theorem P11697045666882426555.correct : P11697045666882426555.Spec := by
  intro n
  simp only [A022386]

end A022386

/-! ## A022386.P3818841992865244551

`2*A022116(n)`
-/

namespace A022386.P3818841992865244551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022116 n

end

end A022386.P3818841992865244551

namespace A022386

/-- `2*A022116(n)` -/
def P3818841992865244551.Spec : Prop :=
  ∀ n, P3818841992865244551.a n = A022386 n

end A022386

/-! ## A022386.P8070756026887153912

`2*(A022326(n)+1)`
-/

namespace A022386.P8070756026887153912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A022326 n + 1)

end

end A022386.P8070756026887153912

namespace A022386

/-- `2*(A022326(n)+1)` -/
def P8070756026887153912.Spec : Prop :=
  ∀ n, P8070756026887153912.a n = A022386 n

end A022386

/-! ## A022386.P15990986491498219293

`A022394(n)+A013655(n)`
-/

namespace A022386.P15990986491498219293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022394 n + A013655 n

end

end A022386.P15990986491498219293

namespace A022386

/-- `A022394(n)+A013655(n)` -/
def P15990986491498219293.Spec : Prop :=
  ∀ n, P15990986491498219293.a n = A022386 n

end A022386

/-! ## A022386.P12490059509429883896

`A022391(n)+A020701(n)`
-/

namespace A022386.P12490059509429883896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022391 n + A020701 n

end

end A022386.P12490059509429883896

namespace A022386

/-- `A022391(n)+A020701(n)` -/
def P12490059509429883896.Spec : Prop :=
  ∀ n, P12490059509429883896.a n = A022386 n

end A022386

/-! ## A022386.P12155567403106207414

`A022128(n)+A022097(n)`
-/

namespace A022386.P12155567403106207414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022128 n + A022097 n

end

end A022386.P12155567403106207414

namespace A022386

/-- `A022128(n)+A022097(n)` -/
def P12155567403106207414.Spec : Prop :=
  ∀ n, P12155567403106207414.a n = A022386 n

end A022386

/-! ## A022386.P834423397364850814

`A022129(n)+A022096(n)`
-/

namespace A022386.P834423397364850814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022129 n + A022096 n

end

end A022386.P834423397364850814

namespace A022386

/-- `A022129(n)+A022096(n)` -/
def P834423397364850814.Spec : Prop :=
  ∀ n, P834423397364850814.a n = A022386 n

end A022386

/-! ## A022386.P5877880193117894564

`A022135(n)+A022090(n)`
-/

namespace A022386.P5877880193117894564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022135 n + A022090 n

end

end A022386.P5877880193117894564

namespace A022386

/-- `A022135(n)+A022090(n)` -/
def P5877880193117894564.Spec : Prop :=
  ∀ n, P5877880193117894564.a n = A022386 n

end A022386

/-! ## A022386.P9541298450177123164

`A022117(n)+A022115(n)`
-/

namespace A022386.P9541298450177123164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022117 n + A022115 n

end

end A022386.P9541298450177123164

namespace A022386

/-- `A022117(n)+A022115(n)` -/
def P9541298450177123164.Spec : Prop :=
  ∀ n, P9541298450177123164.a n = A022386 n

end A022386

/-! ## A022386.P4878340344657831539

`A022118(n)+A022114(n)`
-/

namespace A022386.P4878340344657831539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022118 n + A022114 n

end

end A022386.P4878340344657831539

namespace A022386

/-- `A022118(n)+A022114(n)` -/
def P4878340344657831539.Spec : Prop :=
  ∀ n, P4878340344657831539.a n = A022386 n

end A022386

/-! ## A022386.P16436021579590741787

`A022119(n)+A022113(n)`
-/

namespace A022386.P16436021579590741787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022119 n + A022113 n

end

end A022386.P16436021579590741787

namespace A022386

/-- `A022119(n)+A022113(n)` -/
def P16436021579590741787.Spec : Prop :=
  ∀ n, P16436021579590741787.a n = A022386 n

end A022386

/-! ## A022386.P10052964692161664814

`A022120(n)+A022109(n)`
-/

namespace A022386.P10052964692161664814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022120 n + A022109 n

end

end A022386.P10052964692161664814

namespace A022386

/-- `A022120(n)+A022109(n)` -/
def P10052964692161664814.Spec : Prop :=
  ∀ n, P10052964692161664814.a n = A022386 n

end A022386

/-! ## A022386.P1189076615129743646

`A022121(n)+A022108(n)`
-/

namespace A022386.P1189076615129743646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022121 n + A022108 n

end

end A022386.P1189076615129743646

namespace A022386

/-- `A022121(n)+A022108(n)` -/
def P1189076615129743646.Spec : Prop :=
  ∀ n, P1189076615129743646.a n = A022386 n

end A022386

/-! ## A022386.P3652605645504667638

`A022122(n)+A022106(n)`
-/

namespace A022386.P3652605645504667638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 n + A022106 n

end

end A022386.P3652605645504667638

namespace A022386

/-- `A022122(n)+A022106(n)` -/
def P3652605645504667638.Spec : Prop :=
  ∀ n, P3652605645504667638.a n = A022386 n

end A022386

/-! ## A022386.P3375542564007079525

`A022123(n)+A022105(n)`
-/

namespace A022386.P3375542564007079525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022123 n + A022105 n

end

end A022386.P3375542564007079525

namespace A022386

/-- `A022123(n)+A022105(n)` -/
def P3375542564007079525.Spec : Prop :=
  ∀ n, P3375542564007079525.a n = A022386 n

end A022386

/-! ## A022386.P13097585556228872332

`A022124(n)+A022103(n)`
-/

namespace A022386.P13097585556228872332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022124 n + A022103 n

end

end A022386.P13097585556228872332

namespace A022386

/-- `A022124(n)+A022103(n)` -/
def P13097585556228872332.Spec : Prop :=
  ∀ n, P13097585556228872332.a n = A022386 n

end A022386

/-! ## A022386.P6480899154500489835

`A022125(n)+A022102(n)`
-/

namespace A022386.P6480899154500489835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022125 n + A022102 n

end

end A022386.P6480899154500489835

namespace A022386

/-- `A022125(n)+A022102(n)` -/
def P6480899154500489835.Spec : Prop :=
  ∀ n, P6480899154500489835.a n = A022386 n

end A022386

/-! ## A022386.P17863996109773287678

`A022126(n)+A022100(n)`
-/

namespace A022386.P17863996109773287678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022126 n + A022100 n

end

end A022386.P17863996109773287678

namespace A022386

/-- `A022126(n)+A022100(n)` -/
def P17863996109773287678.Spec : Prop :=
  ∀ n, P17863996109773287678.a n = A022386 n

end A022386

/-! ## A022386.P2863110361193887544

`A022127(n)+A022099(n)`
-/

namespace A022386.P2863110361193887544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022127 n + A022099 n

end

end A022386.P2863110361193887544

namespace A022386

/-- `A022127(n)+A022099(n)` -/
def P2863110361193887544.Spec : Prop :=
  ∀ n, P2863110361193887544.a n = A022386 n

end A022386

/-!
# A022387: Fibonacci sequence beginning 4, 30.

The programs for A022387, the canonical program `A022387.P7139518388158535180` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022387 has offset 0).

The definition of A022387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022387.P7139518388158535180

`a(n-1)+a(n-2)` with `a(0)=4, a(1)=30`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022387

/-- `a(n-1)+a(n-2)` -/
def P7139518388158535180.Spec : Prop :=
  ∀ n, (P7139518388158535180.a n : ℤ) = A022387 n

theorem P7139518388158535180.correct : P7139518388158535180.Spec := by
  intro n
  simp only [A022387]

end A022387

/-! ## A022387.P17984907778055701563

`2*A022117(n)`
-/

namespace A022387.P17984907778055701563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022117 n

end

end A022387.P17984907778055701563

namespace A022387

/-- `2*A022117(n)` -/
def P17984907778055701563.Spec : Prop :=
  ∀ n, P17984907778055701563.a n = A022387 n

end A022387

/-! ## A022387.P11773322018513612974

`A022398(n)+A013655(n)`
-/

namespace A022387.P11773322018513612974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022398 n + A013655 n

end

end A022387.P11773322018513612974

namespace A022387

/-- `A022398(n)+A013655(n)` -/
def P11773322018513612974.Spec : Prop :=
  ∀ n, P11773322018513612974.a n = A022387 n

end A022387

/-! ## A022387.P11179073917045590939

`A022395(n)+A020701(n)`
-/

namespace A022387.P11179073917045590939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022395 n + A020701 n

end

end A022387.P11179073917045590939

namespace A022387

/-- `A022395(n)+A020701(n)` -/
def P11179073917045590939.Spec : Prop :=
  ∀ n, P11179073917045590939.a n = A022387 n

end A022387

/-! ## A022387.P12205631896195724894

`A022118(n)+A022116(n)`
-/

namespace A022387.P12205631896195724894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022118 n + A022116 n

end

end A022387.P12205631896195724894

namespace A022387

/-- `A022118(n)+A022116(n)` -/
def P12205631896195724894.Spec : Prop :=
  ∀ n, P12205631896195724894.a n = A022387 n

end A022387

/-! ## A022387.P5772300913144841149

`A022119(n)+A022115(n)`
-/

namespace A022387.P5772300913144841149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022119 n + A022115 n

end

end A022387.P5772300913144841149

namespace A022387

/-- `A022119(n)+A022115(n)` -/
def P5772300913144841149.Spec : Prop :=
  ∀ n, P5772300913144841149.a n = A022387 n

end A022387

/-! ## A022387.P4019095139057090007

`A022122(n)+A022110(n)`
-/

namespace A022387.P4019095139057090007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 n + A022110 n

end

end A022387.P4019095139057090007

namespace A022387

/-- `A022122(n)+A022110(n)` -/
def P4019095139057090007.Spec : Prop :=
  ∀ n, P4019095139057090007.a n = A022387 n

end A022387

/-! ## A022387.P17656260623555669035

`A022123(n)+A022109(n)`
-/

namespace A022387.P17656260623555669035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022123 n + A022109 n

end

end A022387.P17656260623555669035

namespace A022387

/-- `A022123(n)+A022109(n)` -/
def P17656260623555669035.Spec : Prop :=
  ∀ n, P17656260623555669035.a n = A022387 n

end A022387

/-! ## A022387.P4195016680114689849

`A022124(n)+A022107(n)`
-/

namespace A022387.P4195016680114689849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022124 n + A022107 n

end

end A022387.P4195016680114689849

namespace A022387

/-- `A022124(n)+A022107(n)` -/
def P4195016680114689849.Spec : Prop :=
  ∀ n, P4195016680114689849.a n = A022387 n

end A022387

/-! ## A022387.P3124131219186818079

`A022125(n)+A022106(n)`
-/

namespace A022387.P3124131219186818079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022125 n + A022106 n

end

end A022387.P3124131219186818079

namespace A022387

/-- `A022125(n)+A022106(n)` -/
def P3124131219186818079.Spec : Prop :=
  ∀ n, P3124131219186818079.a n = A022387 n

end A022387

/-! ## A022387.P9143045948220750399

`A022126(n)+A022104(n)`
-/

namespace A022387.P9143045948220750399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022126 n + A022104 n

end

end A022387.P9143045948220750399

namespace A022387

/-- `A022126(n)+A022104(n)` -/
def P9143045948220750399.Spec : Prop :=
  ∀ n, P9143045948220750399.a n = A022387 n

end A022387

/-! ## A022387.P15275404941878116365

`A022127(n)+A022103(n)`
-/

namespace A022387.P15275404941878116365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022127 n + A022103 n

end

end A022387.P15275404941878116365

namespace A022387

/-- `A022127(n)+A022103(n)` -/
def P15275404941878116365.Spec : Prop :=
  ∀ n, P15275404941878116365.a n = A022387 n

end A022387

/-! ## A022387.P11370588285988603701

`A022128(n)+A022101(n)`
-/

namespace A022387.P11370588285988603701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022128 n + A022101 n

end

end A022387.P11370588285988603701

namespace A022387

/-- `A022128(n)+A022101(n)` -/
def P11370588285988603701.Spec : Prop :=
  ∀ n, P11370588285988603701.a n = A022387 n

end A022387

/-! ## A022387.P3047108186162969143

`A022129(n)+A022100(n)`
-/

namespace A022387.P3047108186162969143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022129 n + A022100 n

end

end A022387.P3047108186162969143

namespace A022387

/-- `A022129(n)+A022100(n)` -/
def P3047108186162969143.Spec : Prop :=
  ∀ n, P3047108186162969143.a n = A022387 n

end A022387

/-! ## A022387.P9214947999254820079

`A022386(n)+A022087(n)`
-/

namespace A022387.P9214947999254820079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022386 n + A022087 n

end

end A022387.P9214947999254820079

namespace A022387

/-- `A022386(n)+A022087(n)` -/
def P9214947999254820079.Spec : Prop :=
  ∀ n, P9214947999254820079.a n = A022387 n

end A022387

/-! ## A022387.P11835404395800681298

`A022345(n)+A022135(n)`
-/

namespace A022387.P11835404395800681298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022135 n

end

end A022387.P11835404395800681298

namespace A022387

/-- `A022345(n)+A022135(n)` -/
def P11835404395800681298.Spec : Prop :=
  ∀ n, P11835404395800681298.a n = A022387 n

end A022387

/-! ## A022387.P13633785063310252711

`A022347(n)+A022134(n)`
-/

namespace A022387.P13633785063310252711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A022134 n

end

end A022387.P13633785063310252711

namespace A022387

/-- `A022347(n)+A022134(n)` -/
def P13633785063310252711.Spec : Prop :=
  ∀ n, P13633785063310252711.a n = A022387 n

end A022387

/-! ## A022387.P274094358681480943

`A022349(n)+A022133(n)`
-/

namespace A022387.P274094358681480943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A022133 n

end

end A022387.P274094358681480943

namespace A022387

/-- `A022349(n)+A022133(n)` -/
def P274094358681480943.Spec : Prop :=
  ∀ n, P274094358681480943.a n = A022387 n

end A022387

/-! ## A022387.P12676856379555456185

`A022385(n)+A022091(n)`
-/

namespace A022387.P12676856379555456185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022385 n + A022091 n

end

end A022387.P12676856379555456185

namespace A022387

/-- `A022385(n)+A022091(n)` -/
def P12676856379555456185.Spec : Prop :=
  ∀ n, P12676856379555456185.a n = A022387 n

end A022387

/-! ## A022387.P10722834707115616990

`A022351(n)+A022132(n)`
-/

namespace A022387.P10722834707115616990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022351 n + A022132 n

end

end A022387.P10722834707115616990

namespace A022387

/-- `A022351(n)+A022132(n)` -/
def P10722834707115616990.Spec : Prop :=
  ∀ n, P10722834707115616990.a n = A022387 n

end A022387

/-!
# A022388: Fibonacci sequence beginning 6, 13.

The programs for A022388, the canonical program `A022388.P8298662997206301107` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022388 has offset 0).

The definition of A022388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022388.P9220281366161831141

`ogf((6+7x)/(1-x-x^2))`
-/

namespace A022388.P9220281366161831141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 7] [1, -1, -1] n

end

end A022388.P9220281366161831141

namespace A022388

/-- `ogf((6+7x)/(1-x-x^2))` -/
def P9220281366161831141.Spec : Prop :=
  ∀ n, P9220281366161831141.a n = A022388 n

end A022388

/-! ## A022388.P8298662997206301107

`a(n-1)+a(n-2)` with `a(0)=6, a(1)=13`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022388

/-- `a(n-1)+a(n-2)` -/
def P8298662997206301107.Spec : Prop :=
  ∀ n, (P8298662997206301107.a n : ℤ) = A022388 n

theorem P8298662997206301107.correct : P8298662997206301107.Spec := by
  intro n
  simp only [A022388]

end A022388

/-! ## A022388.P1657112531795862598

`abs(Δ[a(n-2)-a(n-1)])` with `a(0)=1, a(1)=7`
-/

namespace A022388.P1657112531795862598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A022388.P1657112531795862598

namespace A022388

/-- `abs(Δ[a(n-2)-a(n-1)])` -/
def P1657112531795862598.Spec : Prop :=
  ∀ n, P1657112531795862598.a n = A022388 n

end A022388

/-! ## A022388.P10467610172616864584

`round((8-ϕ)*A000045(n+2))`
-/

namespace A022388.P10467610172616864584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((8 - Real.goldenRatio) * (A000045 (n + 2) : ℝ))

end

end A022388.P10467610172616864584

namespace A022388

/-- `round((8-ϕ)*A000045(n+2))` -/
def P10467610172616864584.Spec : Prop :=
  ∀ n, P10467610172616864584.a n = A022388 n

end A022388

/-! ## A022388.P7283623908721054513

`A022410(n)+A001612(n)`
-/

namespace A022388.P7283623908721054513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022410 n + A001612 n

end

end A022388.P7283623908721054513

namespace A022388

/-- `A022410(n)+A001612(n)` -/
def P7283623908721054513.Spec : Prop :=
  ∀ n, P7283623908721054513.a n = A022388 n

end A022388

/-! ## A022388.P5202972526054945854

`A022123(n)+A013655(n)`
-/

namespace A022388.P5202972526054945854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022123 n + A013655 n

end

end A022388.P5202972526054945854

namespace A022388

/-- `A022123(n)+A013655(n)` -/
def P5202972526054945854.Spec : Prop :=
  ∀ n, P5202972526054945854.a n = A022388 n

end A022388

/-! ## A022388.P1438111323474406264

`A022095(n)+A020712(n)`
-/

namespace A022388.P1438111323474406264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 n + A020712 n

end

end A022388.P1438111323474406264

namespace A022388

/-- `A022095(n)+A020712(n)` -/
def P1438111323474406264.Spec : Prop :=
  ∀ n, P1438111323474406264.a n = A022388 n

end A022388

/-! ## A022388.P9284529911313071875

`A022121(n)+A020701(n)`
-/

namespace A022388.P9284529911313071875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022121 n + A020701 n

end

end A022388.P9284529911313071875

namespace A022388

/-- `A022121(n)+A020701(n)` -/
def P9284529911313071875.Spec : Prop :=
  ∀ n, P9284529911313071875.a n = A022388 n

end A022388

/-! ## A022388.P2286298444408805895

`A022309(n)+A020717(n)`
-/

namespace A022388.P2286298444408805895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022309 n + A020717 n

end

end A022388.P2286298444408805895

namespace A022388

/-- `A022309(n)+A020717(n)` -/
def P2286298444408805895.Spec : Prop :=
  ∀ n, P2286298444408805895.a n = A022388 n

end A022388

/-! ## A022388.P12890344894327800599

`A022382(n)+A020695(n)`
-/

namespace A022388.P12890344894327800599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022382 n + A020695 n

end

end A022388.P12890344894327800599

namespace A022388

/-- `A022382(n)+A020695(n)` -/
def P12890344894327800599.Spec : Prop :=
  ∀ n, P12890344894327800599.a n = A022388 n

end A022388

/-! ## A022388.P16553737589046508707

`A048577(n)+A022408(n)`
-/

namespace A022388.P16553737589046508707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 n + A022408 n

end

end A022388.P16553737589046508707

namespace A022388

/-- `A048577(n)+A022408(n)` -/
def P16553737589046508707.Spec : Prop :=
  ∀ n, P16553737589046508707.a n = A022388 n

end A022388

/-! ## A022388.P1528867357744177750

`A104449(n)+A022380(n)`
-/

namespace A022388.P1528867357744177750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n + A022380 n

end

end A022388.P1528867357744177750

namespace A022388

/-- `A104449(n)+A022380(n)` -/
def P1528867357744177750.Spec : Prop :=
  ∀ n, P1528867357744177750.a n = A022388 n

end A022388

/-! ## A022388.P1385448832130295673

`A118658(n)+A022132(n)`
-/

namespace A022388.P1385448832130295673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n + A022132 n

end

end A022388.P1385448832130295673

namespace A022388

/-- `A118658(n)+A022132(n)` -/
def P1385448832130295673.Spec : Prop :=
  ∀ n, P1385448832130295673.a n = A022388 n

end A022388

/-! ## A022388.P16707478515810551629

`A152163(n)+A022139(n)`
-/

namespace A022388.P16707478515810551629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022139 n

end

end A022388.P16707478515810551629

namespace A022388

/-- `A152163(n)+A022139(n)` -/
def P16707478515810551629.Spec : Prop :=
  ∀ n, P16707478515810551629.a n = A022388 n

end A022388

/-! ## A022388.P6569632203453763554

`A212804(n)+A022138(n)`
-/

namespace A022388.P6569632203453763554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022138 n

end

end A022388.P6569632203453763554

namespace A022388

/-- `A212804(n)+A022138(n)` -/
def P6569632203453763554.Spec : Prop :=
  ∀ n, P6569632203453763554.a n = A022388 n

end A022388

/-! ## A022388.P14470937934822746241

`A380821(n)+A022324(n)`
-/

namespace A022388.P14470937934822746241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380821 n + A022324 n

end

end A022388.P14470937934822746241

namespace A022388

/-- `A380821(n)+A022324(n)` -/
def P14470937934822746241.Spec : Prop :=
  ∀ n, P14470937934822746241.a n = A022388 n

end A022388

/-! ## A022388.P1664281847555045714

`A022137(n)+A000045(n+1)`
-/

namespace A022388.P1664281847555045714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022137 n + A000045 (n + 1)

end

end A022388.P1664281847555045714

namespace A022388

/-- `A022137(n)+A000045(n+1)` -/
def P1664281847555045714.Spec : Prop :=
  ∀ n, P1664281847555045714.a n = A022388 n

end A022388

/-! ## A022388.P4508848313536605542

`A000032(n)+A022410(n)+1`
-/

namespace A022388.P4508848313536605542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A022410 n + 1)

end

end A022388.P4508848313536605542

namespace A022388

/-- `A000032(n)+A022410(n)+1` -/
def P4508848313536605542.Spec : Prop :=
  ∀ n, P4508848313536605542.a n = A022388 n

end A022388

/-! ## A022388.P16877742978001072404

`A022096(n)+A001060(n+1)`
-/

namespace A022388.P16877742978001072404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022096 n + A001060 (n + 1)

end

end A022388.P16877742978001072404

namespace A022388

/-- `A022096(n)+A001060(n+1)` -/
def P16877742978001072404.Spec : Prop :=
  ∀ n, P16877742978001072404.a n = A022388 n

end A022388

/-! ## A022388.P2372012234718994542

`A022409(n)+A001588(n+1)`
-/

namespace A022388.P2372012234718994542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022409 n + A001588 (n + 1)

end

end A022388.P2372012234718994542

namespace A022388

/-- `A022409(n)+A001588(n+1)` -/
def P2372012234718994542.Spec : Prop :=
  ∀ n, P2372012234718994542.a n = A022388 n

end A022388

/-!
# A022389: Fibonacci sequence beginning 7, 15.

The programs for A022389, the canonical program `A022389.P10332662346858988548` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022389 has offset 0).

The definition of A022389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 475 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022389.P4793373172780606722

`ogf((7+8x)/(1-x-x^2))`
-/

namespace A022389.P4793373172780606722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 8] [1, -1, -1] n

end

end A022389.P4793373172780606722

namespace A022389

/-- `ogf((7+8x)/(1-x-x^2))` -/
def P4793373172780606722.Spec : Prop :=
  ∀ n, P4793373172780606722.a n = A022389 n

end A022389

/-! ## A022389.P10332662346858988548

`a(n-1)+a(n-2)` with `a(0)=7, a(1)=15`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022389

/-- `a(n-1)+a(n-2)` -/
def P10332662346858988548.Spec : Prop :=
  ∀ n, (P10332662346858988548.a n : ℤ) = A022389 n

theorem P10332662346858988548.correct : P10332662346858988548.Spec := by
  intro n
  simp only [A022389]

end A022389

/-! ## A022389.P15511001339627121236

`abs(Δ[a(n-2)-a(n-1)])` with `a(0)=1, a(1)=8`
-/

namespace A022389.P15511001339627121236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A022389.P15511001339627121236

namespace A022389

/-- `abs(Δ[a(n-2)-a(n-1)])` -/
def P15511001339627121236.Spec : Prop :=
  ∀ n, P15511001339627121236.a n = A022389 n

end A022389

/-! ## A022389.P7259777458972514464

`round((9-ϕ)*A000045(n+2))`
-/

namespace A022389.P7259777458972514464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((9 - Real.goldenRatio) * (A000045 (n + 2) : ℝ))

end

end A022389.P7259777458972514464

namespace A022389

/-- `round((9-ϕ)*A000045(n+2))` -/
def P7259777458972514464.Spec : Prop :=
  ∀ n, P7259777458972514464.a n = A022389 n

end A022389

/-! ## A022389.P4097737735292798360

`A022139(n)+A000032(n)`
-/

namespace A022389.P4097737735292798360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022139 n + A000032 n

end

end A022389.P4097737735292798360

namespace A022389

/-- `A022139(n)+A000032(n)` -/
def P4097737735292798360.Spec : Prop :=
  ∀ n, P4097737735292798360.a n = A022389 n

end A022389

/-! ## A022389.P7536716231325343528

`A022132(n)+A013655(n)`
-/

namespace A022389.P7536716231325343528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022132 n + A013655 n

end

end A022389.P7536716231325343528

namespace A022389

/-- `A022132(n)+A013655(n)` -/
def P7536716231325343528.Spec : Prop :=
  ∀ n, P7536716231325343528.a n = A022389 n

end A022389

/-! ## A022389.P7366550972835627634

`A022113(n)+A020712(n)`
-/

namespace A022389.P7366550972835627634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022113 n + A020712 n

end

end A022389.P7366550972835627634

namespace A022389

/-- `A022113(n)+A020712(n)` -/
def P7366550972835627634.Spec : Prop :=
  ∀ n, P7366550972835627634.a n = A022389 n

end A022389

/-! ## A022389.P5341094638062026461

`A022137(n)+A020695(n)`
-/

namespace A022389.P5341094638062026461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022137 n + A020695 n

end

end A022389.P5341094638062026461

namespace A022389

/-- `A022137(n)+A020695(n)` -/
def P5341094638062026461.Spec : Prop :=
  ∀ n, P5341094638062026461.a n = A022389 n

end A022389

/-! ## A022389.P4302582453976130549

`A022320(n)+A020717(n)`
-/

namespace A022389.P4302582453976130549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022320 n + A020717 n

end

end A022389.P4302582453976130549

namespace A022389

/-- `A022320(n)+A020717(n)` -/
def P4302582453976130549.Spec : Prop :=
  ∀ n, P4302582453976130549.a n = A022389 n

end A022389

/-! ## A022389.P2200643482350131382

`A022382(n)+A020701(n)`
-/

namespace A022389.P2200643482350131382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022382 n + A020701 n

end

end A022389.P2200643482350131382

namespace A022389

/-- `A022382(n)+A020701(n)` -/
def P2200643482350131382.Spec : Prop :=
  ∀ n, P2200643482350131382.a n = A022389 n

end A022389

/-! ## A022389.P16689050451574194814

`A022408(n)+A020706(n)`
-/

namespace A022389.P16689050451574194814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022408 n + A020706 n

end

end A022389.P16689050451574194814

namespace A022389

/-- `A022408(n)+A020706(n)` -/
def P16689050451574194814.Spec : Prop :=
  ∀ n, P16689050451574194814.a n = A022389 n

end A022389

/-! ## A022389.P13675236233976989658

`A104449(n)+A022383(n)`
-/

namespace A022389.P13675236233976989658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n + A022383 n

end

end A022389.P13675236233976989658

namespace A022389

/-- `A104449(n)+A022383(n)` -/
def P13675236233976989658.Spec : Prop :=
  ∀ n, P13675236233976989658.a n = A022389 n

end A022389

/-! ## A022389.P14654090471130459141

`A022122(n)+A000285(n+1)`
-/

namespace A022389.P14654090471130459141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 n + A000285 (n + 1)

end

end A022389.P14654090471130459141

namespace A022389

/-- `A022122(n)+A000285(n+1)` -/
def P14654090471130459141.Spec : Prop :=
  ∀ n, P14654090471130459141.a n = A022389 n

end A022389

/-! ## A022389.P3436695421912834164

`A022113(n)+A020701(n+1)`
-/

namespace A022389.P3436695421912834164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022113 n + A020701 (n + 1)

end

end A022389.P3436695421912834164

namespace A022389

/-- `A022113(n)+A020701(n+1)` -/
def P3436695421912834164.Spec : Prop :=
  ∀ n, P3436695421912834164.a n = A022389 n

end A022389

/-! ## A022389.P17989881493833691208

`A022320(n)+A020706(n+1)`
-/

namespace A022389.P17989881493833691208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022320 n + A020706 (n + 1)

end

end A022389.P17989881493833691208

namespace A022389

/-- `A022320(n)+A020706(n+1)` -/
def P17989881493833691208.Spec : Prop :=
  ∀ n, P17989881493833691208.a n = A022389 n

end A022389

/-! ## A022389.P2283305089897839348

`A022382(n)+A020695(n+1)`
-/

namespace A022389.P2283305089897839348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022382 n + A020695 (n + 1)

end

end A022389.P2283305089897839348

namespace A022389

/-- `A022382(n)+A020695(n+1)` -/
def P2283305089897839348.Spec : Prop :=
  ∀ n, P2283305089897839348.a n = A022389 n

end A022389

/-! ## A022389.P17505974010237308370

`A022097(n+1)+A022090(n)`
-/

namespace A022389.P17505974010237308370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022097 (n + 1) + A022090 n

end

end A022389.P17505974010237308370

namespace A022389

/-- `A022097(n+1)+A022090(n)` -/
def P17505974010237308370.Spec : Prop :=
  ∀ n, P17505974010237308370.a n = A022389 n

end A022389

/-! ## A022389.P2677336882131012056

`A022091(n)+A022090(n+1)`
-/

namespace A022389.P2677336882131012056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022091 n + A022090 (n + 1)

end

end A022389.P2677336882131012056

namespace A022389

/-- `A022091(n)+A022090(n+1)` -/
def P2677336882131012056.Spec : Prop :=
  ∀ n, P2677336882131012056.a n = A022389 n

end A022389

/-! ## A022389.P12613310901559187970

`A022098(n)+A022096(n+1)`
-/

namespace A022389.P12613310901559187970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022098 n + A022096 (n + 1)

end

end A022389.P12613310901559187970

namespace A022389

/-- `A022098(n)+A022096(n+1)` -/
def P12613310901559187970.Spec : Prop :=
  ∀ n, P12613310901559187970.a n = A022389 n

end A022389

/-! ## A022389.P1398893849102255568

`A022099(n)+A022089(n+1)`
-/

namespace A022389.P1398893849102255568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022099 n + A022089 (n + 1)

end

end A022389.P1398893849102255568

namespace A022389

/-- `A022099(n)+A022089(n+1)` -/
def P1398893849102255568.Spec : Prop :=
  ∀ n, P1398893849102255568.a n = A022389 n

end A022389

/-!
# A022390: Fibonacci sequence beginning 8, 17.

The programs for A022390, the canonical program `A022390.P1311120122459527410` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022390 has offset 0).

The definition of A022390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022390.P17755153750548257076

`ogf((8+9x)/(1-x-x^2))`
-/

namespace A022390.P17755153750548257076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 9] [1, -1, -1] n

end

end A022390.P17755153750548257076

namespace A022390

/-- `ogf((8+9x)/(1-x-x^2))` -/
def P17755153750548257076.Spec : Prop :=
  ∀ n, P17755153750548257076.a n = A022390 n

end A022390

/-! ## A022390.P1311120122459527410

`a(n-1)+a(n-2)` with `a(0)=8, a(1)=17`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022390

/-- `a(n-1)+a(n-2)` -/
def P1311120122459527410.Spec : Prop :=
  ∀ n, (P1311120122459527410.a n : ℤ) = A022390 n

theorem P1311120122459527410.correct : P1311120122459527410.Spec := by
  intro n
  simp only [A022390]

end A022390

/-! ## A022390.P5067041238270869779

`abs(Δ[a(n-2)-a(n-1)])` with `a(0)=1, a(1)=9`
-/

namespace A022390.P5067041238270869779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A022390.P5067041238270869779

namespace A022390

/-- `abs(Δ[a(n-2)-a(n-1)])` -/
def P5067041238270869779.Spec : Prop :=
  ∀ n, P5067041238270869779.a n = A022390 n

end A022390

/-! ## A022390.P13747464882775891972

`round((10-ϕ)*A000045(n+2))`
-/

namespace A022390.P13747464882775891972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((10 - Real.goldenRatio) * (A000045 (n + 2) : ℝ))

end

end A022390.P13747464882775891972

namespace A022390

/-- `round((10-ϕ)*A000045(n+2))` -/
def P13747464882775891972.Spec : Prop :=
  ∀ n, P13747464882775891972.a n = A022390 n

end A022390

/-! ## A022390.P9553742482892460941

`A022137(n)+A020701(n)`
-/

namespace A022390.P9553742482892460941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022137 n + A020701 n

end

end A022390.P9553742482892460941

namespace A022390

/-- `A022137(n)+A020701(n)` -/
def P9553742482892460941.Spec : Prop :=
  ∀ n, P9553742482892460941.a n = A022390 n

end A022390

/-! ## A022390.P14295606022383496225

`A022379(n)+A020712(n)`
-/

namespace A022390.P14295606022383496225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022379 n + A020712 n

end

end A022390.P14295606022383496225

namespace A022390

/-- `A022379(n)+A020712(n)` -/
def P14295606022383496225.Spec : Prop :=
  ∀ n, P14295606022383496225.a n = A022390 n

end A022390

/-! ## A022390.P3850883770449898847

`A104449(n)+A022140(n)`
-/

namespace A022390.P3850883770449898847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104449 n + A022140 n

end

end A022390.P3850883770449898847

namespace A022390

/-- `A104449(n)+A022140(n)` -/
def P3850883770449898847.Spec : Prop :=
  ∀ n, P3850883770449898847.a n = A022390 n

end A022390

/-! ## A022390.P2947324861567180722

`A156279(n)+A022347(n)`
-/

namespace A022390.P2947324861567180722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156279 n + A022347 n

end

end A022390.P2947324861567180722

namespace A022390

/-- `A156279(n)+A022347(n)` -/
def P2947324861567180722.Spec : Prop :=
  ∀ n, P2947324861567180722.a n = A022390 n

end A022390

/-! ## A022390.P11748578125003146174

`A166025(n)+A118658(n)`
-/

namespace A022390.P11748578125003146174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166025 n + A118658 n

end

end A022390.P11748578125003146174

namespace A022390

/-- `A166025(n)+A118658(n)` -/
def P11748578125003146174.Spec : Prop :=
  ∀ n, P11748578125003146174.a n = A022390 n

end A022390

/-! ## A022390.P17437185911259836847

`A022122(n)+A001060(n+1)`
-/

namespace A022390.P17437185911259836847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022122 n + A001060 (n + 1)

end

end A022390.P17437185911259836847

namespace A022390

/-- `A022122(n)+A001060(n+1)` -/
def P17437185911259836847.Spec : Prop :=
  ∀ n, P17437185911259836847.a n = A022390 n

end A022390

/-! ## A022390.P15359860346543552709

`A022087(n)+A020712(n+1)`
-/

namespace A022390.P15359860346543552709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 n + A020712 (n + 1)

end

end A022390.P15359860346543552709

namespace A022390

/-- `A022087(n)+A020712(n+1)` -/
def P15359860346543552709.Spec : Prop :=
  ∀ n, P15359860346543552709.a n = A022390 n

end A022390

/-! ## A022390.P15729197257716656698

`A022137(n)+A020695(n+1)`
-/

namespace A022390.P15729197257716656698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022137 n + A020695 (n + 1)

end

end A022390.P15729197257716656698

namespace A022390

/-- `A022137(n)+A020695(n+1)` -/
def P15729197257716656698.Spec : Prop :=
  ∀ n, P15729197257716656698.a n = A022390 n

end A022390

/-! ## A022390.P10878699355571911027

`A022098(n+1)+A022091(n)`
-/

namespace A022390.P10878699355571911027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022098 (n + 1) + A022091 n

end

end A022390.P10878699355571911027

namespace A022390

/-- `A022098(n+1)+A022091(n)` -/
def P10878699355571911027.Spec : Prop :=
  ∀ n, P10878699355571911027.a n = A022390 n

end A022390

/-! ## A022390.P3660539988685347713

`A022092(n)+A022091(n+1)`
-/

namespace A022390.P3660539988685347713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022092 n + A022091 (n + 1)

end

end A022390.P3660539988685347713

namespace A022390

/-- `A022092(n)+A022091(n+1)` -/
def P3660539988685347713.Spec : Prop :=
  ∀ n, P3660539988685347713.a n = A022390 n

end A022390

/-! ## A022390.P15009864623002335967

`A022099(n)+A022097(n+1)`
-/

namespace A022390.P15009864623002335967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022099 n + A022097 (n + 1)

end

end A022390.P15009864623002335967

namespace A022390

/-- `A022099(n)+A022097(n+1)` -/
def P15009864623002335967.Spec : Prop :=
  ∀ n, P15009864623002335967.a n = A022390 n

end A022390

/-! ## A022390.P15755662573538128509

`A022100(n)+A022090(n+1)`
-/

namespace A022390.P15755662573538128509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022100 n + A022090 (n + 1)

end

end A022390.P15755662573538128509

namespace A022390

/-- `A022100(n)+A022090(n+1)` -/
def P15755662573538128509.Spec : Prop :=
  ∀ n, P15755662573538128509.a n = A022390 n

end A022390

/-! ## A022390.P1963033406459398004

`A022113(n+1)+A022098(n)`
-/

namespace A022390.P1963033406459398004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022113 (n + 1) + A022098 n

end

end A022390.P1963033406459398004

namespace A022390

/-- `A022113(n+1)+A022098(n)` -/
def P1963033406459398004.Spec : Prop :=
  ∀ n, P1963033406459398004.a n = A022390 n

end A022390

/-! ## A022390.P4183398872840962468

`A022121(n+1)+A022089(n)`
-/

namespace A022390.P4183398872840962468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022121 (n + 1) + A022089 n

end

end A022390.P4183398872840962468

namespace A022390

/-- `A022121(n+1)+A022089(n)` -/
def P4183398872840962468.Spec : Prop :=
  ∀ n, P4183398872840962468.a n = A022390 n

end A022390

/-! ## A022390.P1534147461439922144

`A022115(n)+A022089(n+1)`
-/

namespace A022390.P1534147461439922144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022115 n + A022089 (n + 1)

end

end A022390.P1534147461439922144

namespace A022390

/-- `A022115(n)+A022089(n+1)` -/
def P1534147461439922144.Spec : Prop :=
  ∀ n, P1534147461439922144.a n = A022390 n

end A022390

/-! ## A022390.P9375776874766326853

`A022120(n+1)+A022097(n)`
-/

namespace A022390.P9375776874766326853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022120 (n + 1) + A022097 n

end

end A022390.P9375776874766326853

namespace A022390

/-- `A022120(n+1)+A022097(n)` -/
def P9375776874766326853.Spec : Prop :=
  ∀ n, P9375776874766326853.a n = A022390 n

end A022390

/-!
# A022391: Fibonacci sequence beginning 1, 21.

The programs for A022391, the canonical program `A022391.P1878165112353722524` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022391 has offset 0).

The definition of A022391 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022391.P1878165112353722524

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=21`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022391

/-- `a(n-1)+a(n-2)` -/
def P1878165112353722524.Spec : Prop :=
  ∀ n, (P1878165112353722524.a n : ℤ) = A022391 n

theorem P1878165112353722524.correct : P1878165112353722524.Spec := by
  intro n
  simp only [A022391]

end A022391

/-! ## A022391.P6913538928661195712

`ogf((1+20x)/(1-x-x^2))`
-/

namespace A022391.P6913538928661195712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 20] [1, -1, -1] n

end

end A022391.P6913538928661195712

namespace A022391

/-- `ogf((1+20x)/(1-x-x^2))` -/
def P6913538928661195712.Spec : Prop :=
  ∀ n, P6913538928661195712.a n = A022391 n

end A022391

/-! ## A022391.P14390587317662763192

`A022110(n)+A000045(n)`
-/

namespace A022391.P14390587317662763192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022110 n + A000045 n

end

end A022391.P14390587317662763192

namespace A022391

/-- `A022110(n)+A000045(n)` -/
def P14390587317662763192.Spec : Prop :=
  ∀ n, P14390587317662763192.a n = A022391 n

end A022391

/-! ## A022391.P10678313831619154982

`A022351(n)+A000285(n)`
-/

namespace A022391.P10678313831619154982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022351 n + A000285 n

end

end A022391.P10678313831619154982

namespace A022391

/-- `A022351(n)+A000285(n)` -/
def P10678313831619154982.Spec : Prop :=
  ∀ n, P10678313831619154982.a n = A022391 n

end A022391

/-! ## A022391.P8471973824347210383

`A022101(n)+A022093(n)`
-/

namespace A022391.P8471973824347210383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022101 n + A022093 n

end

end A022391.P8471973824347210383

namespace A022391

/-- `A022101(n)+A022093(n)` -/
def P8471973824347210383.Spec : Prop :=
  ∀ n, P8471973824347210383.a n = A022391 n

end A022391

/-! ## A022391.P4140620206776567548

`A022102(n)+A022092(n)`
-/

namespace A022391.P4140620206776567548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022102 n + A022092 n

end

end A022391.P4140620206776567548

namespace A022391

/-- `A022102(n)+A022092(n)` -/
def P4140620206776567548.Spec : Prop :=
  ∀ n, P4140620206776567548.a n = A022391 n

end A022391

/-! ## A022391.P986232427619339320

`A022103(n)+A022091(n)`
-/

namespace A022391.P986232427619339320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022103 n + A022091 n

end

end A022391.P986232427619339320

namespace A022391

/-- `A022103(n)+A022091(n)` -/
def P986232427619339320.Spec : Prop :=
  ∀ n, P986232427619339320.a n = A022391 n

end A022391

/-! ## A022391.P9056716622956720120

`A022104(n)+A022090(n)`
-/

namespace A022391.P9056716622956720120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022104 n + A022090 n

end

end A022391.P9056716622956720120

namespace A022391

/-- `A022104(n)+A022090(n)` -/
def P9056716622956720120.Spec : Prop :=
  ∀ n, P9056716622956720120.a n = A022391 n

end A022391

/-! ## A022391.P3582508273811888147

`A022105(n)+A022089(n)`
-/

namespace A022391.P3582508273811888147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022105 n + A022089 n

end

end A022391.P3582508273811888147

namespace A022391

/-- `A022105(n)+A022089(n)` -/
def P3582508273811888147.Spec : Prop :=
  ∀ n, P3582508273811888147.a n = A022391 n

end A022391

/-! ## A022391.P1657116144755407962

`A022106(n)+A022088(n)`
-/

namespace A022391.P1657116144755407962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022106 n + A022088 n

end

end A022391.P1657116144755407962

namespace A022391

/-- `A022106(n)+A022088(n)` -/
def P1657116144755407962.Spec : Prop :=
  ∀ n, P1657116144755407962.a n = A022391 n

end A022391

/-! ## A022391.P18296873364621020757

`A022107(n)+A022087(n)`
-/

namespace A022391.P18296873364621020757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022107 n + A022087 n

end

end A022391.P18296873364621020757

namespace A022391

/-- `A022107(n)+A022087(n)` -/
def P18296873364621020757.Spec : Prop :=
  ∀ n, P18296873364621020757.a n = A022391 n

end A022391

/-! ## A022391.P16030605386425757460

`A022108(n)+A022086(n)`
-/

namespace A022391.P16030605386425757460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022108 n + A022086 n

end

end A022391.P16030605386425757460

namespace A022391

/-- `A022108(n)+A022086(n)` -/
def P16030605386425757460.Spec : Prop :=
  ∀ n, P16030605386425757460.a n = A022391 n

end A022391

/-! ## A022391.P6504498889940119763

`A022345(n)+A022100(n)`
-/

namespace A022391.P6504498889940119763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022100 n

end

end A022391.P6504498889940119763

namespace A022391

/-- `A022345(n)+A022100(n)` -/
def P6504498889940119763.Spec : Prop :=
  ∀ n, P6504498889940119763.a n = A022391 n

end A022391

/-! ## A022391.P13312880409094035726

`A022346(n)+A022099(n)`
-/

namespace A022391.P13312880409094035726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A022099 n

end

end A022391.P13312880409094035726

namespace A022391

/-- `A022346(n)+A022099(n)` -/
def P13312880409094035726.Spec : Prop :=
  ∀ n, P13312880409094035726.a n = A022391 n

end A022391

/-! ## A022391.P9990718457246944983

`A022347(n)+A022098(n)`
-/

namespace A022391.P9990718457246944983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A022098 n

end

end A022391.P9990718457246944983

namespace A022391

/-- `A022347(n)+A022098(n)` -/
def P9990718457246944983.Spec : Prop :=
  ∀ n, P9990718457246944983.a n = A022391 n

end A022391

/-! ## A022391.P12245055763085940515

`A022348(n)+A022097(n)`
-/

namespace A022391.P12245055763085940515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n + A022097 n

end

end A022391.P12245055763085940515

namespace A022391

/-- `A022348(n)+A022097(n)` -/
def P12245055763085940515.Spec : Prop :=
  ∀ n, P12245055763085940515.a n = A022391 n

end A022391

/-! ## A022391.P14153462307233643525

`A022349(n)+A022096(n)`
-/

namespace A022391.P14153462307233643525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A022096 n

end

end A022391.P14153462307233643525

namespace A022391

/-- `A022349(n)+A022096(n)` -/
def P14153462307233643525.Spec : Prop :=
  ∀ n, P14153462307233643525.a n = A022391 n

end A022391

/-! ## A022391.P15116394871655400890

`A022350(n)+A022095(n)`
-/

namespace A022391.P15116394871655400890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022350 n + A022095 n

end

end A022391.P15116394871655400890

namespace A022391

/-- `A022350(n)+A022095(n)` -/
def P15116394871655400890.Spec : Prop :=
  ∀ n, P15116394871655400890.a n = A022391 n

end A022391

/-! ## A022391.P11932077206868790849

`A152163(n)+A022356(n)`
-/

namespace A022391.P11932077206868790849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022356 n

end

end A022391.P11932077206868790849

namespace A022391

/-- `A152163(n)+A022356(n)` -/
def P11932077206868790849.Spec : Prop :=
  ∀ n, P11932077206868790849.a n = A022391 n

end A022391

/-! ## A022391.P12845903162368572837

`A212804(n)+A022355(n)`
-/

namespace A022391.P12845903162368572837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A022355 n

end

end A022391.P12845903162368572837

namespace A022391

/-- `A212804(n)+A022355(n)` -/
def P12845903162368572837.Spec : Prop :=
  ∀ n, P12845903162368572837.a n = A022391 n

end A022391

/-!
# A022392: Fibonacci sequence beginning 1, 22.

The programs for A022392, the canonical program `A022392.P8408287489202402408` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022392 has offset 0).

The definition of A022392 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022392.P8408287489202402408

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=22`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022392

/-- `a(n-1)+a(n-2)` -/
def P8408287489202402408.Spec : Prop :=
  ∀ n, (P8408287489202402408.a n : ℤ) = A022392 n

theorem P8408287489202402408.correct : P8408287489202402408.Spec := by
  intro n
  simp only [A022392]

end A022392

/-! ## A022392.P13196780705752233614

`ogf((1+21x)/(1-x-x^2))`
-/

namespace A022392.P13196780705752233614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 21] [1, -1, -1] n

end

end A022392.P13196780705752233614

namespace A022392

/-- `ogf((1+21x)/(1-x-x^2))` -/
def P13196780705752233614.Spec : Prop :=
  ∀ n, P13196780705752233614.a n = A022392 n

end A022392

/-! ## A022392.P5414698535251904877

`A022391(n)+A000045(n)`
-/

namespace A022392.P5414698535251904877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022391 n + A000045 n

end

end A022392.P5414698535251904877

namespace A022392

/-- `A022391(n)+A000045(n)` -/
def P5414698535251904877.Spec : Prop :=
  ∀ n, P5414698535251904877.a n = A022392 n

end A022392

/-! ## A022392.P15756419744385986404

`A022352(n)+A000285(n)`
-/

namespace A022392.P15756419744385986404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022352 n + A000285 n

end

end A022392.P15756419744385986404

namespace A022392

/-- `A022352(n)+A000285(n)` -/
def P15756419744385986404.Spec : Prop :=
  ∀ n, P15756419744385986404.a n = A022392 n

end A022392

/-! ## A022392.P8375043405257655515

`A022102(n)+A022093(n)`
-/

namespace A022392.P8375043405257655515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022102 n + A022093 n

end

end A022392.P8375043405257655515

namespace A022392

/-- `A022102(n)+A022093(n)` -/
def P8375043405257655515.Spec : Prop :=
  ∀ n, P8375043405257655515.a n = A022392 n

end A022392

/-! ## A022392.P3217822366868593807

`A022103(n)+A022092(n)`
-/

namespace A022392.P3217822366868593807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022103 n + A022092 n

end

end A022392.P3217822366868593807

namespace A022392

/-- `A022103(n)+A022092(n)` -/
def P3217822366868593807.Spec : Prop :=
  ∀ n, P3217822366868593807.a n = A022392 n

end A022392

/-! ## A022392.P4501039380014728939

`A022104(n)+A022091(n)`
-/

namespace A022392.P4501039380014728939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022104 n + A022091 n

end

end A022392.P4501039380014728939

namespace A022392

/-- `A022104(n)+A022091(n)` -/
def P4501039380014728939.Spec : Prop :=
  ∀ n, P4501039380014728939.a n = A022392 n

end A022392

/-! ## A022392.P13155960957358393647

`A022105(n)+A022090(n)`
-/

namespace A022392.P13155960957358393647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022105 n + A022090 n

end

end A022392.P13155960957358393647

namespace A022392

/-- `A022105(n)+A022090(n)` -/
def P13155960957358393647.Spec : Prop :=
  ∀ n, P13155960957358393647.a n = A022392 n

end A022392

/-! ## A022392.P13049700652389262850

`A022106(n)+A022089(n)`
-/

namespace A022392.P13049700652389262850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022106 n + A022089 n

end

end A022392.P13049700652389262850

namespace A022392

/-- `A022106(n)+A022089(n)` -/
def P13049700652389262850.Spec : Prop :=
  ∀ n, P13049700652389262850.a n = A022392 n

end A022392

/-! ## A022392.P4524459132229898771

`A022107(n)+A022088(n)`
-/

namespace A022392.P4524459132229898771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022107 n + A022088 n

end

end A022392.P4524459132229898771

namespace A022392

/-- `A022107(n)+A022088(n)` -/
def P4524459132229898771.Spec : Prop :=
  ∀ n, P4524459132229898771.a n = A022392 n

end A022392

/-! ## A022392.P5362868929026809903

`A022108(n)+A022087(n)`
-/

namespace A022392.P5362868929026809903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022108 n + A022087 n

end

end A022392.P5362868929026809903

namespace A022392

/-- `A022108(n)+A022087(n)` -/
def P5362868929026809903.Spec : Prop :=
  ∀ n, P5362868929026809903.a n = A022392 n

end A022392

/-! ## A022392.P16503108164634463304

`A022109(n)+A022086(n)`
-/

namespace A022392.P16503108164634463304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022109 n + A022086 n

end

end A022392.P16503108164634463304

namespace A022392

/-- `A022109(n)+A022086(n)` -/
def P16503108164634463304.Spec : Prop :=
  ∀ n, P16503108164634463304.a n = A022392 n

end A022392

/-! ## A022392.P4109759337244372565

`A022345(n)+A022101(n)`
-/

namespace A022392.P4109759337244372565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022101 n

end

end A022392.P4109759337244372565

namespace A022392

/-- `A022345(n)+A022101(n)` -/
def P4109759337244372565.Spec : Prop :=
  ∀ n, P4109759337244372565.a n = A022392 n

end A022392

/-! ## A022392.P11657832626641997553

`A022346(n)+A022100(n)`
-/

namespace A022392.P11657832626641997553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A022100 n

end

end A022392.P11657832626641997553

namespace A022392

/-- `A022346(n)+A022100(n)` -/
def P11657832626641997553.Spec : Prop :=
  ∀ n, P11657832626641997553.a n = A022392 n

end A022392

/-! ## A022392.P6039790747281040987

`A022347(n)+A022099(n)`
-/

namespace A022392.P6039790747281040987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A022099 n

end

end A022392.P6039790747281040987

namespace A022392

/-- `A022347(n)+A022099(n)` -/
def P6039790747281040987.Spec : Prop :=
  ∀ n, P6039790747281040987.a n = A022392 n

end A022392

/-! ## A022392.P8465650190017561743

`A022348(n)+A022098(n)`
-/

namespace A022392.P8465650190017561743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n + A022098 n

end

end A022392.P8465650190017561743

namespace A022392

/-- `A022348(n)+A022098(n)` -/
def P8465650190017561743.Spec : Prop :=
  ∀ n, P8465650190017561743.a n = A022392 n

end A022392

/-! ## A022392.P7091687203972283926

`A022349(n)+A022097(n)`
-/

namespace A022392.P7091687203972283926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A022097 n

end

end A022392.P7091687203972283926

namespace A022392

/-- `A022349(n)+A022097(n)` -/
def P7091687203972283926.Spec : Prop :=
  ∀ n, P7091687203972283926.a n = A022392 n

end A022392

/-! ## A022392.P7189566819734549643

`A022350(n)+A022096(n)`
-/

namespace A022392.P7189566819734549643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022350 n + A022096 n

end

end A022392.P7189566819734549643

namespace A022392

/-- `A022350(n)+A022096(n)` -/
def P7189566819734549643.Spec : Prop :=
  ∀ n, P7189566819734549643.a n = A022392 n

end A022392

/-! ## A022392.P3297122305899580934

`A022351(n)+A022095(n)`
-/

namespace A022392.P3297122305899580934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022351 n + A022095 n

end

end A022392.P3297122305899580934

namespace A022392

/-- `A022351(n)+A022095(n)` -/
def P3297122305899580934.Spec : Prop :=
  ∀ n, P3297122305899580934.a n = A022392 n

end A022392

/-! ## A022392.P12073737316605772440

`A152163(n)+A022357(n)`
-/

namespace A022392.P12073737316605772440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 n + A022357 n

end

end A022392.P12073737316605772440

namespace A022392

/-- `A152163(n)+A022357(n)` -/
def P12073737316605772440.Spec : Prop :=
  ∀ n, P12073737316605772440.a n = A022392 n

end A022392

/-!
# A022393: Fibonacci sequence beginning 1, 23.

The programs for A022393, the canonical program `A022393.P4373198726378991798` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022393 has offset 0).

The definition of A022393 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022393.P4373198726378991798

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=23`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022393

/-- `a(n-1)+a(n-2)` -/
def P4373198726378991798.Spec : Prop :=
  ∀ n, (P4373198726378991798.a n : ℤ) = A022393 n

theorem P4373198726378991798.correct : P4373198726378991798.Spec := by
  intro n
  simp only [A022393]

end A022393

/-! ## A022393.P2065693397342526363

`ogf((1+22x)/(1-x-x^2))`
-/

namespace A022393.P2065693397342526363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 22] [1, -1, -1] n

end

end A022393.P2065693397342526363

namespace A022393

/-- `ogf((1+22x)/(1-x-x^2))` -/
def P2065693397342526363.Spec : Prop :=
  ∀ n, P2065693397342526363.a n = A022393 n

end A022393

/-! ## A022393.P4334323866027103379

`A022392(n)+A000045(n)`
-/

namespace A022393.P4334323866027103379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022392 n + A000045 n

end

end A022393.P4334323866027103379

namespace A022393

/-- `A022392(n)+A000045(n)` -/
def P4334323866027103379.Spec : Prop :=
  ∀ n, P4334323866027103379.a n = A022393 n

end A022393

/-! ## A022393.P8717312318698836633

`A022353(n)+A000285(n)`
-/

namespace A022393.P8717312318698836633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022353 n + A000285 n

end

end A022393.P8717312318698836633

namespace A022393

/-- `A022353(n)+A000285(n)` -/
def P8717312318698836633.Spec : Prop :=
  ∀ n, P8717312318698836633.a n = A022393 n

end A022393

/-! ## A022393.P3293169360032816622

`A022103(n)+A022093(n)`
-/

namespace A022393.P3293169360032816622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022103 n + A022093 n

end

end A022393.P3293169360032816622

namespace A022393

/-- `A022103(n)+A022093(n)` -/
def P3293169360032816622.Spec : Prop :=
  ∀ n, P3293169360032816622.a n = A022393 n

end A022393

/-! ## A022393.P16145657184746713633

`A022104(n)+A022092(n)`
-/

namespace A022393.P16145657184746713633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022104 n + A022092 n

end

end A022393.P16145657184746713633

namespace A022393

/-- `A022104(n)+A022092(n)` -/
def P16145657184746713633.Spec : Prop :=
  ∀ n, P16145657184746713633.a n = A022393 n

end A022393

/-! ## A022393.P6695300899108200937

`A022105(n)+A022091(n)`
-/

namespace A022393.P6695300899108200937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022105 n + A022091 n

end

end A022393.P6695300899108200937

namespace A022393

/-- `A022105(n)+A022091(n)` -/
def P6695300899108200937.Spec : Prop :=
  ∀ n, P6695300899108200937.a n = A022393 n

end A022393

/-! ## A022393.P2398775749344100450

`A022106(n)+A022090(n)`
-/

namespace A022393.P2398775749344100450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022106 n + A022090 n

end

end A022393.P2398775749344100450

namespace A022393

/-- `A022106(n)+A022090(n)` -/
def P2398775749344100450.Spec : Prop :=
  ∀ n, P2398775749344100450.a n = A022393 n

end A022393

/-! ## A022393.P2920016457966134293

`A022107(n)+A022089(n)`
-/

namespace A022393.P2920016457966134293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022107 n + A022089 n

end

end A022393.P2920016457966134293

namespace A022393

/-- `A022107(n)+A022089(n)` -/
def P2920016457966134293.Spec : Prop :=
  ∀ n, P2920016457966134293.a n = A022393 n

end A022393

/-! ## A022393.P1246562203802474317

`A022108(n)+A022088(n)`
-/

namespace A022393.P1246562203802474317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022108 n + A022088 n

end

end A022393.P1246562203802474317

namespace A022393

/-- `A022108(n)+A022088(n)` -/
def P1246562203802474317.Spec : Prop :=
  ∀ n, P1246562203802474317.a n = A022393 n

end A022393

/-! ## A022393.P15123657963168245934

`A022109(n)+A022087(n)`
-/

namespace A022393.P15123657963168245934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022109 n + A022087 n

end

end A022393.P15123657963168245934

namespace A022393

/-- `A022109(n)+A022087(n)` -/
def P15123657963168245934.Spec : Prop :=
  ∀ n, P15123657963168245934.a n = A022393 n

end A022393

/-! ## A022393.P11449424016030647548

`A022110(n)+A022086(n)`
-/

namespace A022393.P11449424016030647548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022110 n + A022086 n

end

end A022393.P11449424016030647548

namespace A022393

/-- `A022110(n)+A022086(n)` -/
def P11449424016030647548.Spec : Prop :=
  ∀ n, P11449424016030647548.a n = A022393 n

end A022393

/-! ## A022393.P505450248222756104

`A022345(n)+A022102(n)`
-/

namespace A022393.P505450248222756104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022102 n

end

end A022393.P505450248222756104

namespace A022393

/-- `A022345(n)+A022102(n)` -/
def P505450248222756104.Spec : Prop :=
  ∀ n, P505450248222756104.a n = A022393 n

end A022393

/-! ## A022393.P477032794267961994

`A022346(n)+A022101(n)`
-/

namespace A022393.P477032794267961994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A022101 n

end

end A022393.P477032794267961994

namespace A022393

/-- `A022346(n)+A022101(n)` -/
def P477032794267961994.Spec : Prop :=
  ∀ n, P477032794267961994.a n = A022393 n

end A022393

/-! ## A022393.P18363536761132820549

`A022347(n)+A022100(n)`
-/

namespace A022393.P18363536761132820549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A022100 n

end

end A022393.P18363536761132820549

namespace A022393

/-- `A022347(n)+A022100(n)` -/
def P18363536761132820549.Spec : Prop :=
  ∀ n, P18363536761132820549.a n = A022393 n

end A022393

/-! ## A022393.P9755532543468144144

`A022348(n)+A022099(n)`
-/

namespace A022393.P9755532543468144144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n + A022099 n

end

end A022393.P9755532543468144144

namespace A022393

/-- `A022348(n)+A022099(n)` -/
def P9755532543468144144.Spec : Prop :=
  ∀ n, P9755532543468144144.a n = A022393 n

end A022393

/-! ## A022393.P12221484996967471885

`A022349(n)+A022098(n)`
-/

namespace A022393.P12221484996967471885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A022098 n

end

end A022393.P12221484996967471885

namespace A022393

/-- `A022349(n)+A022098(n)` -/
def P12221484996967471885.Spec : Prop :=
  ∀ n, P12221484996967471885.a n = A022393 n

end A022393

/-! ## A022393.P11906175751155433412

`A022350(n)+A022097(n)`
-/

namespace A022393.P11906175751155433412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022350 n + A022097 n

end

end A022393.P11906175751155433412

namespace A022393

/-- `A022350(n)+A022097(n)` -/
def P11906175751155433412.Spec : Prop :=
  ∀ n, P11906175751155433412.a n = A022393 n

end A022393

/-! ## A022393.P5206469191333151165

`A022351(n)+A022096(n)`
-/

namespace A022393.P5206469191333151165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022351 n + A022096 n

end

end A022393.P5206469191333151165

namespace A022393

/-- `A022351(n)+A022096(n)` -/
def P5206469191333151165.Spec : Prop :=
  ∀ n, P5206469191333151165.a n = A022393 n

end A022393

/-! ## A022393.P5961843005992106734

`A022352(n)+A022095(n)`
-/

namespace A022393.P5961843005992106734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022352 n + A022095 n

end

end A022393.P5961843005992106734

namespace A022393

/-- `A022352(n)+A022095(n)` -/
def P5961843005992106734.Spec : Prop :=
  ∀ n, P5961843005992106734.a n = A022393 n

end A022393

/-!
# A022394: Fibonacci sequence beginning 1, 24.

The programs for A022394, the canonical program `A022394.P13204660913798822066` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022394 has offset 0).

The definition of A022394 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022394.P6143624737831555938

`ogf((1+23x)/(1-x-x^2))`
-/

namespace A022394.P6143624737831555938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 23] [1, -1, -1] n

end

end A022394.P6143624737831555938

namespace A022394

/-- `ogf((1+23x)/(1-x-x^2))` -/
def P6143624737831555938.Spec : Prop :=
  ∀ n, P6143624737831555938.a n = A022394 n

end A022394

/-! ## A022394.P13204660913798822066

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=24`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022394

/-- `a(n-1)+a(n-2)` -/
def P13204660913798822066.Spec : Prop :=
  ∀ n, (P13204660913798822066.a n : ℤ) = A022394 n

theorem P13204660913798822066.correct : P13204660913798822066.Spec := by
  intro n
  simp only [A022394]

end A022394

/-! ## A022394.P4584431952957269054

`A022393(n)+A000045(n)`
-/

namespace A022394.P4584431952957269054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022393 n + A000045 n

end

end A022394.P4584431952957269054

namespace A022394

/-- `A022393(n)+A000045(n)` -/
def P4584431952957269054.Spec : Prop :=
  ∀ n, P4584431952957269054.a n = A022394 n

end A022394

/-! ## A022394.P11833361114031747909

`A022354(n)+A000285(n)`
-/

namespace A022394.P11833361114031747909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022354 n + A000285 n

end

end A022394.P11833361114031747909

namespace A022394

/-- `A022354(n)+A000285(n)` -/
def P11833361114031747909.Spec : Prop :=
  ∀ n, P11833361114031747909.a n = A022394 n

end A022394

/-! ## A022394.P11918918138216797517

`A022104(n)+A022093(n)`
-/

namespace A022394.P11918918138216797517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022104 n + A022093 n

end

end A022394.P11918918138216797517

namespace A022394

/-- `A022104(n)+A022093(n)` -/
def P11918918138216797517.Spec : Prop :=
  ∀ n, P11918918138216797517.a n = A022394 n

end A022394

/-! ## A022394.P11197106415801668179

`A022105(n)+A022092(n)`
-/

namespace A022394.P11197106415801668179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022105 n + A022092 n

end

end A022394.P11197106415801668179

namespace A022394

/-- `A022105(n)+A022092(n)` -/
def P11197106415801668179.Spec : Prop :=
  ∀ n, P11197106415801668179.a n = A022394 n

end A022394

/-! ## A022394.P3287965789084176414

`A022106(n)+A022091(n)`
-/

namespace A022394.P3287965789084176414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022106 n + A022091 n

end

end A022394.P3287965789084176414

namespace A022394

/-- `A022106(n)+A022091(n)` -/
def P3287965789084176414.Spec : Prop :=
  ∀ n, P3287965789084176414.a n = A022394 n

end A022394

/-! ## A022394.P7659715943824439163

`A022107(n)+A022090(n)`
-/

namespace A022394.P7659715943824439163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022107 n + A022090 n

end

end A022394.P7659715943824439163

namespace A022394

/-- `A022107(n)+A022090(n)` -/
def P7659715943824439163.Spec : Prop :=
  ∀ n, P7659715943824439163.a n = A022394 n

end A022394

/-! ## A022394.P2166029100145225147

`A022108(n)+A022089(n)`
-/

namespace A022394.P2166029100145225147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022108 n + A022089 n

end

end A022394.P2166029100145225147

namespace A022394

/-- `A022108(n)+A022089(n)` -/
def P2166029100145225147.Spec : Prop :=
  ∀ n, P2166029100145225147.a n = A022394 n

end A022394

/-! ## A022394.P15166741945773904201

`A022109(n)+A022088(n)`
-/

namespace A022394.P15166741945773904201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022109 n + A022088 n

end

end A022394.P15166741945773904201

namespace A022394

/-- `A022109(n)+A022088(n)` -/
def P15166741945773904201.Spec : Prop :=
  ∀ n, P15166741945773904201.a n = A022394 n

end A022394

/-! ## A022394.P16932688004093044086

`A022110(n)+A022087(n)`
-/

namespace A022394.P16932688004093044086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022110 n + A022087 n

end

end A022394.P16932688004093044086

namespace A022394

/-- `A022110(n)+A022087(n)` -/
def P16932688004093044086.Spec : Prop :=
  ∀ n, P16932688004093044086.a n = A022394 n

end A022394

/-! ## A022394.P800972396965674121

`A022345(n)+A022103(n)`
-/

namespace A022394.P800972396965674121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022103 n

end

end A022394.P800972396965674121

namespace A022394

/-- `A022345(n)+A022103(n)` -/
def P800972396965674121.Spec : Prop :=
  ∀ n, P800972396965674121.a n = A022394 n

end A022394

/-! ## A022394.P17478826341879114200

`A022346(n)+A022102(n)`
-/

namespace A022394.P17478826341879114200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A022102 n

end

end A022394.P17478826341879114200

namespace A022394

/-- `A022346(n)+A022102(n)` -/
def P17478826341879114200.Spec : Prop :=
  ∀ n, P17478826341879114200.a n = A022394 n

end A022394

/-! ## A022394.P7167775464860723926

`A022347(n)+A022101(n)`
-/

namespace A022394.P7167775464860723926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A022101 n

end

end A022394.P7167775464860723926

namespace A022394

/-- `A022347(n)+A022101(n)` -/
def P7167775464860723926.Spec : Prop :=
  ∀ n, P7167775464860723926.a n = A022394 n

end A022394

/-! ## A022394.P2789815554881243681

`A022348(n)+A022100(n)`
-/

namespace A022394.P2789815554881243681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n + A022100 n

end

end A022394.P2789815554881243681

namespace A022394

/-- `A022348(n)+A022100(n)` -/
def P2789815554881243681.Spec : Prop :=
  ∀ n, P2789815554881243681.a n = A022394 n

end A022394

/-! ## A022394.P3968180706339725722

`A022349(n)+A022099(n)`
-/

namespace A022394.P3968180706339725722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A022099 n

end

end A022394.P3968180706339725722

namespace A022394

/-- `A022349(n)+A022099(n)` -/
def P3968180706339725722.Spec : Prop :=
  ∀ n, P3968180706339725722.a n = A022394 n

end A022394

/-! ## A022394.P4909455145073507929

`A022350(n)+A022098(n)`
-/

namespace A022394.P4909455145073507929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022350 n + A022098 n

end

end A022394.P4909455145073507929

namespace A022394

/-- `A022350(n)+A022098(n)` -/
def P4909455145073507929.Spec : Prop :=
  ∀ n, P4909455145073507929.a n = A022394 n

end A022394

/-! ## A022394.P15904028234283236187

`A022351(n)+A022097(n)`
-/

namespace A022394.P15904028234283236187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022351 n + A022097 n

end

end A022394.P15904028234283236187

namespace A022394

/-- `A022351(n)+A022097(n)` -/
def P15904028234283236187.Spec : Prop :=
  ∀ n, P15904028234283236187.a n = A022394 n

end A022394

/-! ## A022394.P725655807646569805

`A022352(n)+A022096(n)`
-/

namespace A022394.P725655807646569805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022352 n + A022096 n

end

end A022394.P725655807646569805

namespace A022394

/-- `A022352(n)+A022096(n)` -/
def P725655807646569805.Spec : Prop :=
  ∀ n, P725655807646569805.a n = A022394 n

end A022394

/-! ## A022394.P18261131226423881576

`A022353(n)+A022095(n)`
-/

namespace A022394.P18261131226423881576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022353 n + A022095 n

end

end A022394.P18261131226423881576

namespace A022394

/-- `A022353(n)+A022095(n)` -/
def P18261131226423881576.Spec : Prop :=
  ∀ n, P18261131226423881576.a n = A022394 n

end A022394

/-!
# A022395: Fibonacci sequence beginning 1, 25.

The programs for A022395, the canonical program `A022395.P13665248822055943677` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022395 has offset 0).

The definition of A022395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022395.P12225722893603402550

`ogf((1+24x)/(1-x-x^2))`
-/

namespace A022395.P12225722893603402550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 24] [1, -1, -1] n

end

end A022395.P12225722893603402550

namespace A022395

/-- `ogf((1+24x)/(1-x-x^2))` -/
def P12225722893603402550.Spec : Prop :=
  ∀ n, P12225722893603402550.a n = A022395 n

end A022395

/-! ## A022395.P13665248822055943677

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=25`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022395

/-- `a(n-1)+a(n-2)` -/
def P13665248822055943677.Spec : Prop :=
  ∀ n, (P13665248822055943677.a n : ℤ) = A022395 n

theorem P13665248822055943677.correct : P13665248822055943677.Spec := by
  intro n
  simp only [A022395]

end A022395

/-! ## A022395.P11072602807841040652

`A022394(n)+A000045(n)`
-/

namespace A022395.P11072602807841040652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022394 n + A000045 n

end

end A022395.P11072602807841040652

namespace A022395

/-- `A022394(n)+A000045(n)` -/
def P11072602807841040652.Spec : Prop :=
  ∀ n, P11072602807841040652.a n = A022395 n

end A022395

/-! ## A022395.P8839060400786427217

`A022355(n)+A000285(n)`
-/

namespace A022395.P8839060400786427217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022355 n + A000285 n

end

end A022395.P8839060400786427217

namespace A022395

/-- `A022355(n)+A000285(n)` -/
def P8839060400786427217.Spec : Prop :=
  ∀ n, P8839060400786427217.a n = A022395 n

end A022395

/-! ## A022395.P16318002971757135436

`A022105(n)+A022093(n)`
-/

namespace A022395.P16318002971757135436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022105 n + A022093 n

end

end A022395.P16318002971757135436

namespace A022395

/-- `A022105(n)+A022093(n)` -/
def P16318002971757135436.Spec : Prop :=
  ∀ n, P16318002971757135436.a n = A022395 n

end A022395

/-! ## A022395.P14880204368386173419

`A022106(n)+A022092(n)`
-/

namespace A022395.P14880204368386173419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022106 n + A022092 n

end

end A022395.P14880204368386173419

namespace A022395

/-- `A022106(n)+A022092(n)` -/
def P14880204368386173419.Spec : Prop :=
  ∀ n, P14880204368386173419.a n = A022395 n

end A022395

/-! ## A022395.P17596542689356788308

`A022107(n)+A022091(n)`
-/

namespace A022395.P17596542689356788308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022107 n + A022091 n

end

end A022395.P17596542689356788308

namespace A022395

/-- `A022107(n)+A022091(n)` -/
def P17596542689356788308.Spec : Prop :=
  ∀ n, P17596542689356788308.a n = A022395 n

end A022395

/-! ## A022395.P7412186682194318424

`A022108(n)+A022090(n)`
-/

namespace A022395.P7412186682194318424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022108 n + A022090 n

end

end A022395.P7412186682194318424

namespace A022395

/-- `A022108(n)+A022090(n)` -/
def P7412186682194318424.Spec : Prop :=
  ∀ n, P7412186682194318424.a n = A022395 n

end A022395

/-! ## A022395.P10182706377899974172

`A022109(n)+A022089(n)`
-/

namespace A022395.P10182706377899974172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022109 n + A022089 n

end

end A022395.P10182706377899974172

namespace A022395

/-- `A022109(n)+A022089(n)` -/
def P10182706377899974172.Spec : Prop :=
  ∀ n, P10182706377899974172.a n = A022395 n

end A022395

/-! ## A022395.P2317027830402974088

`A022110(n)+A022088(n)`
-/

namespace A022395.P2317027830402974088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022110 n + A022088 n

end

end A022395.P2317027830402974088

namespace A022395

/-- `A022110(n)+A022088(n)` -/
def P2317027830402974088.Spec : Prop :=
  ∀ n, P2317027830402974088.a n = A022395 n

end A022395

/-! ## A022395.P11367095138186759613

`A022345(n)+A022104(n)`
-/

namespace A022395.P11367095138186759613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022104 n

end

end A022395.P11367095138186759613

namespace A022395

/-- `A022345(n)+A022104(n)` -/
def P11367095138186759613.Spec : Prop :=
  ∀ n, P11367095138186759613.a n = A022395 n

end A022395

/-! ## A022395.P13740316327845959044

`A022346(n)+A022103(n)`
-/

namespace A022395.P13740316327845959044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A022103 n

end

end A022395.P13740316327845959044

namespace A022395

/-- `A022346(n)+A022103(n)` -/
def P13740316327845959044.Spec : Prop :=
  ∀ n, P13740316327845959044.a n = A022395 n

end A022395

/-! ## A022395.P16423648466069952080

`A022347(n)+A022102(n)`
-/

namespace A022395.P16423648466069952080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A022102 n

end

end A022395.P16423648466069952080

namespace A022395

/-- `A022347(n)+A022102(n)` -/
def P16423648466069952080.Spec : Prop :=
  ∀ n, P16423648466069952080.a n = A022395 n

end A022395

/-! ## A022395.P1968199885498843980

`A022348(n)+A022101(n)`
-/

namespace A022395.P1968199885498843980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n + A022101 n

end

end A022395.P1968199885498843980

namespace A022395

/-- `A022348(n)+A022101(n)` -/
def P1968199885498843980.Spec : Prop :=
  ∀ n, P1968199885498843980.a n = A022395 n

end A022395

/-! ## A022395.P13311498114160657832

`A022349(n)+A022100(n)`
-/

namespace A022395.P13311498114160657832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A022100 n

end

end A022395.P13311498114160657832

namespace A022395

/-- `A022349(n)+A022100(n)` -/
def P13311498114160657832.Spec : Prop :=
  ∀ n, P13311498114160657832.a n = A022395 n

end A022395

/-! ## A022395.P4053529642109655059

`A022350(n)+A022099(n)`
-/

namespace A022395.P4053529642109655059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022350 n + A022099 n

end

end A022395.P4053529642109655059

namespace A022395

/-- `A022350(n)+A022099(n)` -/
def P4053529642109655059.Spec : Prop :=
  ∀ n, P4053529642109655059.a n = A022395 n

end A022395

/-! ## A022395.P2440337731880980536

`A022351(n)+A022098(n)`
-/

namespace A022395.P2440337731880980536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022351 n + A022098 n

end

end A022395.P2440337731880980536

namespace A022395

/-- `A022351(n)+A022098(n)` -/
def P2440337731880980536.Spec : Prop :=
  ∀ n, P2440337731880980536.a n = A022395 n

end A022395

/-! ## A022395.P14589791546174729924

`A022352(n)+A022097(n)`
-/

namespace A022395.P14589791546174729924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022352 n + A022097 n

end

end A022395.P14589791546174729924

namespace A022395

/-- `A022352(n)+A022097(n)` -/
def P14589791546174729924.Spec : Prop :=
  ∀ n, P14589791546174729924.a n = A022395 n

end A022395

/-! ## A022395.P17948127422106867538

`A022353(n)+A022096(n)`
-/

namespace A022395.P17948127422106867538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022353 n + A022096 n

end

end A022395.P17948127422106867538

namespace A022395

/-- `A022353(n)+A022096(n)` -/
def P17948127422106867538.Spec : Prop :=
  ∀ n, P17948127422106867538.a n = A022395 n

end A022395

/-! ## A022395.P10905509451742877846

`A022354(n)+A022095(n)`
-/

namespace A022395.P10905509451742877846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022354 n + A022095 n

end

end A022395.P10905509451742877846

namespace A022395

/-- `A022354(n)+A022095(n)` -/
def P10905509451742877846.Spec : Prop :=
  ∀ n, P10905509451742877846.a n = A022395 n

end A022395

/-!
# A022396: Fibonacci sequence beginning 1, 26.

The programs for A022396, the canonical program `A022396.P8139868350851147664` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022396 has offset 0).

The definition of A022396 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022396.P1581341051176879085

`ogf((1+25x)/(1-x-x^2))`
-/

namespace A022396.P1581341051176879085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 25] [1, -1, -1] n

end

end A022396.P1581341051176879085

namespace A022396

/-- `ogf((1+25x)/(1-x-x^2))` -/
def P1581341051176879085.Spec : Prop :=
  ∀ n, P1581341051176879085.a n = A022396 n

end A022396

/-! ## A022396.P8139868350851147664

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=26`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022396

/-- `a(n-1)+a(n-2)` -/
def P8139868350851147664.Spec : Prop :=
  ∀ n, (P8139868350851147664.a n : ℤ) = A022396 n

theorem P8139868350851147664.correct : P8139868350851147664.Spec := by
  intro n
  simp only [A022396]

end A022396

/-! ## A022396.P14844945954106894612

`A022395(n)+A000045(n)`
-/

namespace A022396.P14844945954106894612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022395 n + A000045 n

end

end A022396.P14844945954106894612

namespace A022396

/-- `A022395(n)+A000045(n)` -/
def P14844945954106894612.Spec : Prop :=
  ∀ n, P14844945954106894612.a n = A022396 n

end A022396

/-! ## A022396.P10462259024056107099

`A022356(n)+A000285(n)`
-/

namespace A022396.P10462259024056107099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022356 n + A000285 n

end

end A022396.P10462259024056107099

namespace A022396

/-- `A022356(n)+A000285(n)` -/
def P10462259024056107099.Spec : Prop :=
  ∀ n, P10462259024056107099.a n = A022396 n

end A022396

/-! ## A022396.P12170162058635034481

`A022106(n)+A022093(n)`
-/

namespace A022396.P12170162058635034481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022106 n + A022093 n

end

end A022396.P12170162058635034481

namespace A022396

/-- `A022106(n)+A022093(n)` -/
def P12170162058635034481.Spec : Prop :=
  ∀ n, P12170162058635034481.a n = A022396 n

end A022396

/-! ## A022396.P16927561336984361668

`A022107(n)+A022092(n)`
-/

namespace A022396.P16927561336984361668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022107 n + A022092 n

end

end A022396.P16927561336984361668

namespace A022396

/-- `A022107(n)+A022092(n)` -/
def P16927561336984361668.Spec : Prop :=
  ∀ n, P16927561336984361668.a n = A022396 n

end A022396

/-! ## A022396.P6031236346938052257

`A022108(n)+A022091(n)`
-/

namespace A022396.P6031236346938052257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022108 n + A022091 n

end

end A022396.P6031236346938052257

namespace A022396

/-- `A022108(n)+A022091(n)` -/
def P6031236346938052257.Spec : Prop :=
  ∀ n, P6031236346938052257.a n = A022396 n

end A022396

/-! ## A022396.P14564156326373960101

`A022109(n)+A022090(n)`
-/

namespace A022396.P14564156326373960101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022109 n + A022090 n

end

end A022396.P14564156326373960101

namespace A022396

/-- `A022109(n)+A022090(n)` -/
def P14564156326373960101.Spec : Prop :=
  ∀ n, P14564156326373960101.a n = A022396 n

end A022396

/-! ## A022396.P6215850573145281390

`A022110(n)+A022089(n)`
-/

namespace A022396.P6215850573145281390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022110 n + A022089 n

end

end A022396.P6215850573145281390

namespace A022396

/-- `A022110(n)+A022089(n)` -/
def P6215850573145281390.Spec : Prop :=
  ∀ n, P6215850573145281390.a n = A022396 n

end A022396

/-! ## A022396.P15433566030725310053

`A022345(n)+A022105(n)`
-/

namespace A022396.P15433566030725310053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022105 n

end

end A022396.P15433566030725310053

namespace A022396

/-- `A022345(n)+A022105(n)` -/
def P15433566030725310053.Spec : Prop :=
  ∀ n, P15433566030725310053.a n = A022396 n

end A022396

/-! ## A022396.P7385464575709475745

`A022346(n)+A022104(n)`
-/

namespace A022396.P7385464575709475745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A022104 n

end

end A022396.P7385464575709475745

namespace A022396

/-- `A022346(n)+A022104(n)` -/
def P7385464575709475745.Spec : Prop :=
  ∀ n, P7385464575709475745.a n = A022396 n

end A022396

/-! ## A022396.P9357028066765963061

`A022347(n)+A022103(n)`
-/

namespace A022396.P9357028066765963061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A022103 n

end

end A022396.P9357028066765963061

namespace A022396

/-- `A022347(n)+A022103(n)` -/
def P9357028066765963061.Spec : Prop :=
  ∀ n, P9357028066765963061.a n = A022396 n

end A022396

/-! ## A022396.P12305455147913775486

`A022348(n)+A022102(n)`
-/

namespace A022396.P12305455147913775486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n + A022102 n

end

end A022396.P12305455147913775486

namespace A022396

/-- `A022348(n)+A022102(n)` -/
def P12305455147913775486.Spec : Prop :=
  ∀ n, P12305455147913775486.a n = A022396 n

end A022396

/-! ## A022396.P14820390614859177369

`A022349(n)+A022101(n)`
-/

namespace A022396.P14820390614859177369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A022101 n

end

end A022396.P14820390614859177369

namespace A022396

/-- `A022349(n)+A022101(n)` -/
def P14820390614859177369.Spec : Prop :=
  ∀ n, P14820390614859177369.a n = A022396 n

end A022396

/-! ## A022396.P396990462668916901

`A022350(n)+A022100(n)`
-/

namespace A022396.P396990462668916901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022350 n + A022100 n

end

end A022396.P396990462668916901

namespace A022396

/-- `A022350(n)+A022100(n)` -/
def P396990462668916901.Spec : Prop :=
  ∀ n, P396990462668916901.a n = A022396 n

end A022396

/-! ## A022396.P16126654144196486872

`A022351(n)+A022099(n)`
-/

namespace A022396.P16126654144196486872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022351 n + A022099 n

end

end A022396.P16126654144196486872

namespace A022396

/-- `A022351(n)+A022099(n)` -/
def P16126654144196486872.Spec : Prop :=
  ∀ n, P16126654144196486872.a n = A022396 n

end A022396

/-! ## A022396.P689204324340980680

`A022352(n)+A022098(n)`
-/

namespace A022396.P689204324340980680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022352 n + A022098 n

end

end A022396.P689204324340980680

namespace A022396

/-- `A022352(n)+A022098(n)` -/
def P689204324340980680.Spec : Prop :=
  ∀ n, P689204324340980680.a n = A022396 n

end A022396

/-! ## A022396.P4146445463526547494

`A022353(n)+A022097(n)`
-/

namespace A022396.P4146445463526547494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022353 n + A022097 n

end

end A022396.P4146445463526547494

namespace A022396

/-- `A022353(n)+A022097(n)` -/
def P4146445463526547494.Spec : Prop :=
  ∀ n, P4146445463526547494.a n = A022396 n

end A022396

/-! ## A022396.P8167648556336713023

`A022354(n)+A022096(n)`
-/

namespace A022396.P8167648556336713023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022354 n + A022096 n

end

end A022396.P8167648556336713023

namespace A022396

/-- `A022354(n)+A022096(n)` -/
def P8167648556336713023.Spec : Prop :=
  ∀ n, P8167648556336713023.a n = A022396 n

end A022396

/-! ## A022396.P3280730238531235173

`A022355(n)+A022095(n)`
-/

namespace A022396.P3280730238531235173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022355 n + A022095 n

end

end A022396.P3280730238531235173

namespace A022396

/-- `A022355(n)+A022095(n)` -/
def P3280730238531235173.Spec : Prop :=
  ∀ n, P3280730238531235173.a n = A022396 n

end A022396

/-!
# A022397: Fibonacci sequence beginning 1, 27.

The programs for A022397, the canonical program `A022397.P14278373051886796777` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022397 has offset 0).

The definition of A022397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022397.P14278373051886796777

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=27`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022397

/-- `a(n-1)+a(n-2)` -/
def P14278373051886796777.Spec : Prop :=
  ∀ n, (P14278373051886796777.a n : ℤ) = A022397 n

theorem P14278373051886796777.correct : P14278373051886796777.Spec := by
  intro n
  simp only [A022397]

end A022397

/-! ## A022397.P3762136624417642303

`A022396(n)+A000045(n)`
-/

namespace A022397.P3762136624417642303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022396 n + A000045 n

end

end A022397.P3762136624417642303

namespace A022397

/-- `A022396(n)+A000045(n)` -/
def P3762136624417642303.Spec : Prop :=
  ∀ n, P3762136624417642303.a n = A022397 n

end A022397

/-! ## A022397.P17556824039344387846

`A022357(n)+A000285(n)`
-/

namespace A022397.P17556824039344387846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022357 n + A000285 n

end

end A022397.P17556824039344387846

namespace A022397

/-- `A022357(n)+A000285(n)` -/
def P17556824039344387846.Spec : Prop :=
  ∀ n, P17556824039344387846.a n = A022397 n

end A022397

/-! ## A022397.P11056066013709282009

`A022107(n)+A022093(n)`
-/

namespace A022397.P11056066013709282009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022107 n + A022093 n

end

end A022397.P11056066013709282009

namespace A022397

/-- `A022107(n)+A022093(n)` -/
def P11056066013709282009.Spec : Prop :=
  ∀ n, P11056066013709282009.a n = A022397 n

end A022397

/-! ## A022397.P3362771215069929278

`A022108(n)+A022092(n)`
-/

namespace A022397.P3362771215069929278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022108 n + A022092 n

end

end A022397.P3362771215069929278

namespace A022397

/-- `A022108(n)+A022092(n)` -/
def P3362771215069929278.Spec : Prop :=
  ∀ n, P3362771215069929278.a n = A022397 n

end A022397

/-! ## A022397.P12509282419858259460

`A022109(n)+A022091(n)`
-/

namespace A022397.P12509282419858259460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022109 n + A022091 n

end

end A022397.P12509282419858259460

namespace A022397

/-- `A022109(n)+A022091(n)` -/
def P12509282419858259460.Spec : Prop :=
  ∀ n, P12509282419858259460.a n = A022397 n

end A022397

/-! ## A022397.P8644704297430786931

`A022110(n)+A022090(n)`
-/

namespace A022397.P8644704297430786931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022110 n + A022090 n

end

end A022397.P8644704297430786931

namespace A022397

/-- `A022110(n)+A022090(n)` -/
def P8644704297430786931.Spec : Prop :=
  ∀ n, P8644704297430786931.a n = A022397 n

end A022397

/-! ## A022397.P6573428004934715852

`A022345(n)+A022106(n)`
-/

namespace A022397.P6573428004934715852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022106 n

end

end A022397.P6573428004934715852

namespace A022397

/-- `A022345(n)+A022106(n)` -/
def P6573428004934715852.Spec : Prop :=
  ∀ n, P6573428004934715852.a n = A022397 n

end A022397

/-! ## A022397.P2290130108359317669

`A022346(n)+A022105(n)`
-/

namespace A022397.P2290130108359317669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A022105 n

end

end A022397.P2290130108359317669

namespace A022397

/-- `A022346(n)+A022105(n)` -/
def P2290130108359317669.Spec : Prop :=
  ∀ n, P2290130108359317669.a n = A022397 n

end A022397

/-! ## A022397.P15020342811633793623

`A022347(n)+A022104(n)`
-/

namespace A022397.P15020342811633793623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A022104 n

end

end A022397.P15020342811633793623

namespace A022397

/-- `A022347(n)+A022104(n)` -/
def P15020342811633793623.Spec : Prop :=
  ∀ n, P15020342811633793623.a n = A022397 n

end A022397

/-! ## A022397.P14028823081304579780

`A022348(n)+A022103(n)`
-/

namespace A022397.P14028823081304579780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n + A022103 n

end

end A022397.P14028823081304579780

namespace A022397

/-- `A022348(n)+A022103(n)` -/
def P14028823081304579780.Spec : Prop :=
  ∀ n, P14028823081304579780.a n = A022397 n

end A022397

/-! ## A022397.P13887619943789873643

`A022349(n)+A022102(n)`
-/

namespace A022397.P13887619943789873643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A022102 n

end

end A022397.P13887619943789873643

namespace A022397

/-- `A022349(n)+A022102(n)` -/
def P13887619943789873643.Spec : Prop :=
  ∀ n, P13887619943789873643.a n = A022397 n

end A022397

/-! ## A022397.P4397055615587172587

`A022350(n)+A022101(n)`
-/

namespace A022397.P4397055615587172587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022350 n + A022101 n

end

end A022397.P4397055615587172587

namespace A022397

/-- `A022350(n)+A022101(n)` -/
def P4397055615587172587.Spec : Prop :=
  ∀ n, P4397055615587172587.a n = A022397 n

end A022397

/-! ## A022397.P7734600701053828568

`A022351(n)+A022100(n)`
-/

namespace A022397.P7734600701053828568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022351 n + A022100 n

end

end A022397.P7734600701053828568

namespace A022397

/-- `A022351(n)+A022100(n)` -/
def P7734600701053828568.Spec : Prop :=
  ∀ n, P7734600701053828568.a n = A022397 n

end A022397

/-! ## A022397.P13453087129510604803

`A022352(n)+A022099(n)`
-/

namespace A022397.P13453087129510604803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022352 n + A022099 n

end

end A022397.P13453087129510604803

namespace A022397

/-- `A022352(n)+A022099(n)` -/
def P13453087129510604803.Spec : Prop :=
  ∀ n, P13453087129510604803.a n = A022397 n

end A022397

/-! ## A022397.P7568373891597804422

`A022353(n)+A022098(n)`
-/

namespace A022397.P7568373891597804422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022353 n + A022098 n

end

end A022397.P7568373891597804422

namespace A022397

/-- `A022353(n)+A022098(n)` -/
def P7568373891597804422.Spec : Prop :=
  ∀ n, P7568373891597804422.a n = A022397 n

end A022397

/-! ## A022397.P9866171900810090988

`A022354(n)+A022097(n)`
-/

namespace A022397.P9866171900810090988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022354 n + A022097 n

end

end A022397.P9866171900810090988

namespace A022397

/-- `A022354(n)+A022097(n)` -/
def P9866171900810090988.Spec : Prop :=
  ∀ n, P9866171900810090988.a n = A022397 n

end A022397

/-! ## A022397.P7838120367512500114

`A022355(n)+A022096(n)`
-/

namespace A022397.P7838120367512500114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022355 n + A022096 n

end

end A022397.P7838120367512500114

namespace A022397

/-- `A022355(n)+A022096(n)` -/
def P7838120367512500114.Spec : Prop :=
  ∀ n, P7838120367512500114.a n = A022397 n

end A022397

/-! ## A022397.P9365237556157515684

`A022356(n)+A022095(n)`
-/

namespace A022397.P9365237556157515684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022356 n + A022095 n

end

end A022397.P9365237556157515684

namespace A022397

/-- `A022356(n)+A022095(n)` -/
def P9365237556157515684.Spec : Prop :=
  ∀ n, P9365237556157515684.a n = A022397 n

end A022397

/-! ## A022397.P14061223131147663721

`A022391(n)+A022089(n)`
-/

namespace A022397.P14061223131147663721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022391 n + A022089 n

end

end A022397.P14061223131147663721

namespace A022397

/-- `A022391(n)+A022089(n)` -/
def P14061223131147663721.Spec : Prop :=
  ∀ n, P14061223131147663721.a n = A022397 n

end A022397

/-!
# A022398: Fibonacci sequence beginning 1, 28.

The programs for A022398, the canonical program `A022398.P4417228465673206100` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022398 has offset 0).

The definition of A022398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022398.P4417228465673206100

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=28`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022398

/-- `a(n-1)+a(n-2)` -/
def P4417228465673206100.Spec : Prop :=
  ∀ n, (P4417228465673206100.a n : ℤ) = A022398 n

theorem P4417228465673206100.correct : P4417228465673206100.Spec := by
  intro n
  simp only [A022398]

end A022398

/-! ## A022398.P7322075639953184373

`A022397(n)+A000045(n)`
-/

namespace A022398.P7322075639953184373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022397 n + A000045 n

end

end A022398.P7322075639953184373

namespace A022398

/-- `A022397(n)+A000045(n)` -/
def P7322075639953184373.Spec : Prop :=
  ∀ n, P7322075639953184373.a n = A022398 n

end A022398

/-! ## A022398.P4723663734571277435

`A022358(n)+A000285(n)`
-/

namespace A022398.P4723663734571277435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022358 n + A000285 n

end

end A022398.P4723663734571277435

namespace A022398

/-- `A022358(n)+A000285(n)` -/
def P4723663734571277435.Spec : Prop :=
  ∀ n, P4723663734571277435.a n = A022398 n

end A022398

/-! ## A022398.P5955258064552578416

`A022108(n)+A022093(n)`
-/

namespace A022398.P5955258064552578416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022108 n + A022093 n

end

end A022398.P5955258064552578416

namespace A022398

/-- `A022108(n)+A022093(n)` -/
def P5955258064552578416.Spec : Prop :=
  ∀ n, P5955258064552578416.a n = A022398 n

end A022398

/-! ## A022398.P8339726717999543439

`A022109(n)+A022092(n)`
-/

namespace A022398.P8339726717999543439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022109 n + A022092 n

end

end A022398.P8339726717999543439

namespace A022398

/-- `A022109(n)+A022092(n)` -/
def P8339726717999543439.Spec : Prop :=
  ∀ n, P8339726717999543439.a n = A022398 n

end A022398

/-! ## A022398.P1611782238596218310

`A022110(n)+A022091(n)`
-/

namespace A022398.P1611782238596218310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022110 n + A022091 n

end

end A022398.P1611782238596218310

namespace A022398

/-- `A022110(n)+A022091(n)` -/
def P1611782238596218310.Spec : Prop :=
  ∀ n, P1611782238596218310.a n = A022398 n

end A022398

/-! ## A022398.P11339400048681945318

`A022345(n)+A022107(n)`
-/

namespace A022398.P11339400048681945318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022107 n

end

end A022398.P11339400048681945318

namespace A022398

/-- `A022345(n)+A022107(n)` -/
def P11339400048681945318.Spec : Prop :=
  ∀ n, P11339400048681945318.a n = A022398 n

end A022398

/-! ## A022398.P5598634282565385584

`A022346(n)+A022106(n)`
-/

namespace A022398.P5598634282565385584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A022106 n

end

end A022398.P5598634282565385584

namespace A022398

/-- `A022346(n)+A022106(n)` -/
def P5598634282565385584.Spec : Prop :=
  ∀ n, P5598634282565385584.a n = A022398 n

end A022398

/-! ## A022398.P11783521782252269936

`A022347(n)+A022105(n)`
-/

namespace A022398.P11783521782252269936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A022105 n

end

end A022398.P11783521782252269936

namespace A022398

/-- `A022347(n)+A022105(n)` -/
def P11783521782252269936.Spec : Prop :=
  ∀ n, P11783521782252269936.a n = A022398 n

end A022398

/-! ## A022398.P5627583565982548621

`A022348(n)+A022104(n)`
-/

namespace A022398.P5627583565982548621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n + A022104 n

end

end A022398.P5627583565982548621

namespace A022398

/-- `A022348(n)+A022104(n)` -/
def P5627583565982548621.Spec : Prop :=
  ∀ n, P5627583565982548621.a n = A022398 n

end A022398

/-! ## A022398.P5084040695944000131

`A022349(n)+A022103(n)`
-/

namespace A022398.P5084040695944000131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A022103 n

end

end A022398.P5084040695944000131

namespace A022398

/-- `A022349(n)+A022103(n)` -/
def P5084040695944000131.Spec : Prop :=
  ∀ n, P5084040695944000131.a n = A022398 n

end A022398

/-! ## A022398.P15275107694547976486

`A022350(n)+A022102(n)`
-/

namespace A022398.P15275107694547976486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022350 n + A022102 n

end

end A022398.P15275107694547976486

namespace A022398

/-- `A022350(n)+A022102(n)` -/
def P15275107694547976486.Spec : Prop :=
  ∀ n, P15275107694547976486.a n = A022398 n

end A022398

/-! ## A022398.P5483623993486706246

`A022351(n)+A022101(n)`
-/

namespace A022398.P5483623993486706246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022351 n + A022101 n

end

end A022398.P5483623993486706246

namespace A022398

/-- `A022351(n)+A022101(n)` -/
def P5483623993486706246.Spec : Prop :=
  ∀ n, P5483623993486706246.a n = A022398 n

end A022398

/-! ## A022398.P17621496705000383843

`A022352(n)+A022100(n)`
-/

namespace A022398.P17621496705000383843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022352 n + A022100 n

end

end A022398.P17621496705000383843

namespace A022398

/-- `A022352(n)+A022100(n)` -/
def P17621496705000383843.Spec : Prop :=
  ∀ n, P17621496705000383843.a n = A022398 n

end A022398

/-! ## A022398.P1551488904219476186

`A022353(n)+A022099(n)`
-/

namespace A022398.P1551488904219476186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022353 n + A022099 n

end

end A022398.P1551488904219476186

namespace A022398

/-- `A022353(n)+A022099(n)` -/
def P1551488904219476186.Spec : Prop :=
  ∀ n, P1551488904219476186.a n = A022398 n

end A022398

/-! ## A022398.P17395958167920196667

`A022354(n)+A022098(n)`
-/

namespace A022398.P17395958167920196667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022354 n + A022098 n

end

end A022398.P17395958167920196667

namespace A022398

/-- `A022354(n)+A022098(n)` -/
def P17395958167920196667.Spec : Prop :=
  ∀ n, P17395958167920196667.a n = A022398 n

end A022398

/-! ## A022398.P7850017132901015580

`A022355(n)+A022097(n)`
-/

namespace A022398.P7850017132901015580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022355 n + A022097 n

end

end A022398.P7850017132901015580

namespace A022398

/-- `A022355(n)+A022097(n)` -/
def P7850017132901015580.Spec : Prop :=
  ∀ n, P7850017132901015580.a n = A022398 n

end A022398

/-! ## A022398.P4505599346831227905

`A022356(n)+A022096(n)`
-/

namespace A022398.P4505599346831227905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022356 n + A022096 n

end

end A022398.P4505599346831227905

namespace A022398

/-- `A022356(n)+A022096(n)` -/
def P4505599346831227905.Spec : Prop :=
  ∀ n, P4505599346831227905.a n = A022398 n

end A022398

/-! ## A022398.P1392512516129748883

`A022357(n)+A022095(n)`
-/

namespace A022398.P1392512516129748883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022357 n + A022095 n

end

end A022398.P1392512516129748883

namespace A022398

/-- `A022357(n)+A022095(n)` -/
def P1392512516129748883.Spec : Prop :=
  ∀ n, P1392512516129748883.a n = A022398 n

end A022398

/-! ## A022398.P12159006942938643689

`A022391(n)+A022090(n)`
-/

namespace A022398.P12159006942938643689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022391 n + A022090 n

end

end A022398.P12159006942938643689

namespace A022398

/-- `A022391(n)+A022090(n)` -/
def P12159006942938643689.Spec : Prop :=
  ∀ n, P12159006942938643689.a n = A022398 n

end A022398

/-!
# A022399: Fibonacci sequence beginning 1, 29.

The programs for A022399, the canonical program `A022399.P4368525306321405628` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022399 has offset 0).

The definition of A022399 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022399.P4368525306321405628

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=29`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022399

/-- `a(n-1)+a(n-2)` -/
def P4368525306321405628.Spec : Prop :=
  ∀ n, (P4368525306321405628.a n : ℤ) = A022399 n

theorem P4368525306321405628.correct : P4368525306321405628.Spec := by
  intro n
  simp only [A022399]

end A022399

/-! ## A022399.P9220629986323181611

`A022398(n)+A000045(n)`
-/

namespace A022399.P9220629986323181611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022398 n + A000045 n

end

end A022399.P9220629986323181611

namespace A022399

/-- `A022398(n)+A000045(n)` -/
def P9220629986323181611.Spec : Prop :=
  ∀ n, P9220629986323181611.a n = A022399 n

end A022399

/-! ## A022399.P968552898196511682

`A022359(n)+A000285(n)`
-/

namespace A022399.P968552898196511682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022359 n + A000285 n

end

end A022399.P968552898196511682

namespace A022399

/-- `A022359(n)+A000285(n)` -/
def P968552898196511682.Spec : Prop :=
  ∀ n, P968552898196511682.a n = A022399 n

end A022399

/-! ## A022399.P1342184874594438676

`A022109(n)+A022093(n)`
-/

namespace A022399.P1342184874594438676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022109 n + A022093 n

end

end A022399.P1342184874594438676

namespace A022399

/-- `A022109(n)+A022093(n)` -/
def P1342184874594438676.Spec : Prop :=
  ∀ n, P1342184874594438676.a n = A022399 n

end A022399

/-! ## A022399.P16854051380517806844

`A022110(n)+A022092(n)`
-/

namespace A022399.P16854051380517806844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022110 n + A022092 n

end

end A022399.P16854051380517806844

namespace A022399

/-- `A022110(n)+A022092(n)` -/
def P16854051380517806844.Spec : Prop :=
  ∀ n, P16854051380517806844.a n = A022399 n

end A022399

/-! ## A022399.P12254241101906695941

`A022345(n)+A022108(n)`
-/

namespace A022399.P12254241101906695941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022345 n + A022108 n

end

end A022399.P12254241101906695941

namespace A022399

/-- `A022345(n)+A022108(n)` -/
def P12254241101906695941.Spec : Prop :=
  ∀ n, P12254241101906695941.a n = A022399 n

end A022399

/-! ## A022399.P9269226522688890382

`A022346(n)+A022107(n)`
-/

namespace A022399.P9269226522688890382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022346 n + A022107 n

end

end A022399.P9269226522688890382

namespace A022399

/-- `A022346(n)+A022107(n)` -/
def P9269226522688890382.Spec : Prop :=
  ∀ n, P9269226522688890382.a n = A022399 n

end A022399

/-! ## A022399.P3845131850586511898

`A022347(n)+A022106(n)`
-/

namespace A022399.P3845131850586511898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022347 n + A022106 n

end

end A022399.P3845131850586511898

namespace A022399

/-- `A022347(n)+A022106(n)` -/
def P3845131850586511898.Spec : Prop :=
  ∀ n, P3845131850586511898.a n = A022399 n

end A022399

/-! ## A022399.P5546838624109465507

`A022348(n)+A022105(n)`
-/

namespace A022399.P5546838624109465507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022348 n + A022105 n

end

end A022399.P5546838624109465507

namespace A022399

/-- `A022348(n)+A022105(n)` -/
def P5546838624109465507.Spec : Prop :=
  ∀ n, P5546838624109465507.a n = A022399 n

end A022399

/-! ## A022399.P9296304468255928000

`A022349(n)+A022104(n)`
-/

namespace A022399.P9296304468255928000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022349 n + A022104 n

end

end A022399.P9296304468255928000

namespace A022399

/-- `A022349(n)+A022104(n)` -/
def P9296304468255928000.Spec : Prop :=
  ∀ n, P9296304468255928000.a n = A022399 n

end A022399

/-! ## A022399.P15029888357801766121

`A022350(n)+A022103(n)`
-/

namespace A022399.P15029888357801766121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022350 n + A022103 n

end

end A022399.P15029888357801766121

namespace A022399

/-- `A022350(n)+A022103(n)` -/
def P15029888357801766121.Spec : Prop :=
  ∀ n, P15029888357801766121.a n = A022399 n

end A022399

/-! ## A022399.P3667057908882923432

`A022351(n)+A022102(n)`
-/

namespace A022399.P3667057908882923432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022351 n + A022102 n

end

end A022399.P3667057908882923432

namespace A022399

/-- `A022351(n)+A022102(n)` -/
def P3667057908882923432.Spec : Prop :=
  ∀ n, P3667057908882923432.a n = A022399 n

end A022399

/-! ## A022399.P3455256231268797836

`A022352(n)+A022101(n)`
-/

namespace A022399.P3455256231268797836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022352 n + A022101 n

end

end A022399.P3455256231268797836

namespace A022399

/-- `A022352(n)+A022101(n)` -/
def P3455256231268797836.Spec : Prop :=
  ∀ n, P3455256231268797836.a n = A022399 n

end A022399

/-! ## A022399.P10059586541193219211

`A022353(n)+A022100(n)`
-/

namespace A022399.P10059586541193219211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022353 n + A022100 n

end

end A022399.P10059586541193219211

namespace A022399

/-- `A022353(n)+A022100(n)` -/
def P10059586541193219211.Spec : Prop :=
  ∀ n, P10059586541193219211.a n = A022399 n

end A022399

/-! ## A022399.P12962427814356045899

`A022354(n)+A022099(n)`
-/

namespace A022399.P12962427814356045899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022354 n + A022099 n

end

end A022399.P12962427814356045899

namespace A022399

/-- `A022354(n)+A022099(n)` -/
def P12962427814356045899.Spec : Prop :=
  ∀ n, P12962427814356045899.a n = A022399 n

end A022399

/-! ## A022399.P16799671420688859470

`A022355(n)+A022098(n)`
-/

namespace A022399.P16799671420688859470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022355 n + A022098 n

end

end A022399.P16799671420688859470

namespace A022399

/-- `A022355(n)+A022098(n)` -/
def P16799671420688859470.Spec : Prop :=
  ∀ n, P16799671420688859470.a n = A022399 n

end A022399

/-! ## A022399.P14009008618629078475

`A022356(n)+A022097(n)`
-/

namespace A022399.P14009008618629078475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022356 n + A022097 n

end

end A022399.P14009008618629078475

namespace A022399

/-- `A022356(n)+A022097(n)` -/
def P14009008618629078475.Spec : Prop :=
  ∀ n, P14009008618629078475.a n = A022399 n

end A022399

/-! ## A022399.P3024308704033278934

`A022357(n)+A022096(n)`
-/

namespace A022399.P3024308704033278934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022357 n + A022096 n

end

end A022399.P3024308704033278934

namespace A022399

/-- `A022357(n)+A022096(n)` -/
def P3024308704033278934.Spec : Prop :=
  ∀ n, P3024308704033278934.a n = A022399 n

end A022399

/-! ## A022399.P1042448777751939723

`A022358(n)+A022095(n)`
-/

namespace A022399.P1042448777751939723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022358 n + A022095 n

end

end A022399.P1042448777751939723

namespace A022399

/-- `A022358(n)+A022095(n)` -/
def P1042448777751939723.Spec : Prop :=
  ∀ n, P1042448777751939723.a n = A022399 n

end A022399

/-! ## A022399.P7898589588165927406

`A022391(n)+A022091(n)`
-/

namespace A022399.P7898589588165927406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022391 n + A022091 n

end

end A022399.P7898589588165927406

namespace A022399

/-- `A022391(n)+A022091(n)` -/
def P7898589588165927406.Spec : Prop :=
  ∀ n, P7898589588165927406.a n = A022399 n

end A022399

