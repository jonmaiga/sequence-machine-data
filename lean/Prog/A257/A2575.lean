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
import Seq.B000.C013
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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A257500: Numbers that cannot be expressed as the sum of distinct odd composite numbers.

The programs for A257500, there is no canonical definition to state claims against.
-/

/-! ## A257500.P7488627792542987544

`eq[0, A280287(n)]`
-/

namespace A257500.P7488627792542987544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280287 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257500.P7488627792542987544

/-! ## A257500.P14828953292028222510

`lt[A280287(n+1), 1]+1`
-/

namespace A257500.P14828953292028222510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280287 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A257500.P14828953292028222510

/-! ## A257500.P15142316296931689761

`A000027(lt[A280287(n), 1])`
-/

namespace A257500.P15142316296931689761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280287 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A257500.P15142316296931689761

/-! ## A257500.P15538775644839346151

`A028310(lt[A280287(n), 1])`
-/

namespace A257500.P15538775644839346151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280287 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A257500.P15538775644839346151

/-! ## A257500.P15078542653533631876

`lt[A280287(n), A057427(n)]`
-/

namespace A257500.P15078542653533631876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280287 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257500.P15078542653533631876

/-!
# A257501: Triangle, read by rows, T(n,k) = 2*k*C(2*(n+k),n-k)/(n+k).

The programs for A257501, the canonical program `A257501.P11950046540205641213` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257501 has offset 1).

The definition of A257501 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257501.P11950046540205641213

`A008315(A025581(n)+A108872(n+1)²)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A257501

/-- `A008315(A025581(n)+A108872(n+1)²)` -/
def P11950046540205641213.Spec : Prop :=
  ∀ n, P11950046540205641213.a n = A257501 (n + 1)

theorem P11950046540205641213.correct : P11950046540205641213.Spec := by
  intro n
  simp only [A257501, Nat.add_sub_cancel]

end A257501

/-!
# A257503: Square array A(row,col) read by antidiagonals: A(1,col) = A256450(col-1), and for row > 1, A(row,col) = A255411(A(row-1,col)); Dispersion of factorial base shift A255411 (array transposed).

The programs for A257503, there is no canonical definition to state claims against.
-/

/-! ## A257503.P11974272385918591346

`A257505(A038722(n+1))`
-/

namespace A257503.P11974272385918591346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257505 (A038722 (n + 1)).toNat

end

end A257503.P11974272385918591346

/-! ## A257503.P925010543940043654

`A257505(A061579(n)+1)`
-/

namespace A257503.P925010543940043654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257505 (A061579 n + 1).toNat

end

end A257503.P925010543940043654

/-! ## A257503.P8718047691623727349

`A257505(A114327(n)+1+n)`
-/

namespace A257503.P8718047691623727349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257505 (A114327 n + 1 + (n : ℤ)).toNat

end

end A257503.P8718047691623727349

/-! ## A257503.P2759962343761147317

`A257505(A093995(n+1)-n)`
-/

namespace A257503.P2759962343761147317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257505 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A257503.P2759962343761147317

/-! ## A257503.P2242206951858302317

`A257505(A004736(n+1)+n+1-A002260(n+1))`
-/

namespace A257503.P2242206951858302317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257505 (A004736 (n + 1) + ((n + 1 : ℤ) - A002260 (n + 1))).toNat

end

end A257503.P2242206951858302317

/-! ## A257503.P6991064975494356544

`A257505(A209268(A135764(n+1)))`
-/

namespace A257503.P6991064975494356544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257505 (A209268 (A135764 (n + 1)).toNat).toNat

end

end A257503.P6991064975494356544

/-! ## A257503.P756485366733108018

`A257505(A246274(A246275(n+1)))`
-/

namespace A257503.P756485366733108018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257505 (A246274 (A246275 (n + 1)).toNat).toNat

end

end A257503.P756485366733108018

/-! ## A257503.P14405443420138224996

`A257505(A246276(A246273(n+1)))`
-/

namespace A257503.P14405443420138224996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257505 (A246276 (A246273 (n + 1)).toNat).toNat

end

end A257503.P14405443420138224996

/-!
# A257504: Inverse permutation to A257503.

The programs for A257504, there is no canonical definition to state claims against.
-/

/-! ## A257504.P7607290177382171656

`A257506(n+1)+A257679(n+1)-A257681(n+1)`
-/

namespace A257504.P7607290177382171656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257506 (n + 1) + (A257679 (n + 1) - A257681 (n + 1))

end

end A257504.P7607290177382171656

/-! ## A257504.P8346868076148401432

`A276954(A275848(n+1))`
-/

namespace A257504.P8346868076148401432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276954 (A275848 (n + 1)).toNat

end

end A257504.P8346868076148401432

/-! ## A257504.P17313244833427018513

`A038722(A257506(n+1))`
-/

namespace A257504.P17313244833427018513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A257506 (n + 1)).toNat

end

end A257504.P17313244833427018513

/-! ## A257504.P10340343728938743689

`A061579(A257506(n+1)-1)+1`
-/

namespace A257504.P10340343728938743689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A257506 (n + 1) - 1).toNat + 1

end

end A257504.P10340343728938743689

/-! ## A257504.P4815786319097456369

`A160755(a(n-1)+n)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=3`
-/

namespace A257504.P4815786319097456369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 3] fun n a =>
  A160755 (a (n - 1) + (n : ℤ)).toNat

end

end A257504.P4815786319097456369

/-!
# A257505: Square array A(row,col): A(row,1) = A256450(row-1), and for col > 1, A(row,col) = A255411(A(row,col-1)); Dispersion of factorial base shift A255411.

The programs for A257505, there is no canonical definition to state claims against.
-/

/-! ## A257505.P7847408601123677351

`A257503(A038722(n+1))`
-/

namespace A257505.P7847408601123677351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257503 (A038722 (n + 1)).toNat

end

end A257505.P7847408601123677351

/-! ## A257505.P16257567991344492250

`A257503(A061579(n)+1)`
-/

namespace A257505.P16257567991344492250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257503 (A061579 n + 1).toNat

end

end A257505.P16257567991344492250

/-! ## A257505.P15205344067074533067

`A257503(∑[A198954(n)]-n)`
-/

namespace A257505.P15205344067074533067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257503 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A257505.P15205344067074533067

/-! ## A257505.P4570328292643989448

`A257503(A114327(n)+1+n)`
-/

namespace A257505.P4570328292643989448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257503 (A114327 n + 1 + (n : ℤ)).toNat

end

end A257505.P4570328292643989448

/-! ## A257505.P16616737357183175940

`A257503(A093995(n+1)-n)`
-/

namespace A257505.P16616737357183175940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257503 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A257505.P16616737357183175940

/-! ## A257505.P16201745484434508826

`A257503(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A257505.P16201745484434508826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257503 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A257505.P16201745484434508826

/-!
# A257506: Inverse permutation to A257505.

The programs for A257506, there is no canonical definition to state claims against.
-/

/-! ## A257506.P15840713254539532668

`A257504(n+1)+A257681(n+1)-A257679(n+1)`
-/

namespace A257506.P15840713254539532668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257504 (n + 1) + (A257681 (n + 1) - A257679 (n + 1))

end

end A257506.P15840713254539532668

/-! ## A257506.P15275595289334052935

`A276956(A275848(n+1))`
-/

namespace A257506.P15275595289334052935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276956 (A275848 (n + 1)).toNat

end

end A257506.P15275595289334052935

/-! ## A257506.P2824487863428037754

`A038722(A257504(n+1))`
-/

namespace A257506.P2824487863428037754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A257504 (n + 1)).toNat

end

end A257506.P2824487863428037754

/-! ## A257506.P14418677957817949826

`A061579(A257504(n+1)-1)+1`
-/

namespace A257506.P14418677957817949826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A257504 (n + 1) - 1).toNat + 1

end

end A257506.P14418677957817949826

/-! ## A257506.P14713372762414248204

`A049777(A257504(n+1))%A001513(A001513(n))`
-/

namespace A257506.P14713372762414248204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049777 (A257504 (n + 1)).toNat) (A001513 (A001513 n).toNat)

end

end A257506.P14713372762414248204

/-!
# A257507: Row 2 of A257264: a(n) = A011371(A055938(n)).

The programs for A257507, the canonical program `A257507.P15201907181584584602` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257507 has offset 1).

The definition of A257507 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055938, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A257507.P15201907181584584602

`A011371(A055938(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A257507

/-- `A011371(A055938(n+1))` -/
def P15201907181584584602.Spec : Prop :=
  ∀ n, P15201907181584584602.a n = A257507 (n + 1)

theorem P15201907181584584602.correct : P15201907181584584602.Spec := by
  intro n
  simp only [A257507, Nat.add_sub_cancel]

end A257507

/-! ## A257507.P7810382224016331222

`A005187(floor(comp[A005187(n)]/2))`
-/

namespace A257507.P7810382224016331222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 ⌊(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2⌋.toNat

end

end A257507.P7810382224016331222

namespace A257507

/-- `A005187(floor(comp[A005187(n)]/2))` -/
def P7810382224016331222.Spec : Prop :=
  ∀ n, P7810382224016331222.a n = A257507 (n + 1)

end A257507

/-! ## A257507.P10028114148616890412

`A005187(A055938(n+1))-comp[A005187(n)]`
-/

namespace A257507.P10028114148616890412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A055938 (n + 1)).toNat - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A257507.P10028114148616890412

namespace A257507

/-- `A005187(A055938(n+1))-comp[A005187(n)]` -/
def P10028114148616890412.Spec : Prop :=
  ∀ n, P10028114148616890412.a n = A257507 (n + 1)

end A257507

/-! ## A257507.P12500511364250222967

`A011371(comp[a(floor(n/2))+n])` with `a(0)=0`
-/

namespace A257507.P12500511364250222967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A257507.P12500511364250222967

namespace A257507

/-- `A011371(comp[a(floor(n/2))+n])` -/
def P12500511364250222967.Spec : Prop :=
  ∀ n, P12500511364250222967.a n = A257507 (n + 1)

end A257507

/-! ## A257507.P14486051462328481177

`A011371(comp[a(n-1)+val(n, 2)+1])` with `a(0)=0`
-/

namespace A257507.P14486051462328481177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 2 + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A257507.P14486051462328481177

namespace A257507

/-- `A011371(comp[a(n-1)+val(n, 2)+1])` -/
def P14486051462328481177.Spec : Prop :=
  ∀ n, P14486051462328481177.a n = A257507 (n + 1)

end A257507

/-! ## A257507.P12388216999594441589

`A011371(comp[2*n-(n-a(floor(n/2)))])` with `a(0)=0`
-/

namespace A257507.P12388216999594441589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (2 * n : ℤ) - ((n : ℤ) - f1 ⌊(n : ℚ) / 2⌋.toNat)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A257507.P12388216999594441589

namespace A257507

/-- `A011371(comp[2*n-(n-a(floor(n/2)))])` -/
def P12388216999594441589.Spec : Prop :=
  ∀ n, P12388216999594441589.a n = A257507 (n + 1)

end A257507

/-! ## A257507.P13995139422943076062

`A011371(comp[A005187(n)])`
-/

namespace A257507.P13995139422943076062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A257507.P13995139422943076062

namespace A257507

/-- `A011371(comp[A005187(n)])` -/
def P13995139422943076062.Spec : Prop :=
  ∀ n, P13995139422943076062.a n = A257507 (n + 1)

end A257507

/-! ## A257507.P5644755378434459337

`A011371(Δ[A029715(n)]+n)`
-/

namespace A257507.P5644755378434459337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A257507.P5644755378434459337

namespace A257507

/-- `A011371(Δ[A029715(n)]+n)` -/
def P5644755378434459337.Spec : Prop :=
  ∀ n, P5644755378434459337.a n = A257507 (n + 1)

end A257507

/-! ## A257507.P11344580999109242553

`A011371(comp[A011371(n)+n])`
-/

namespace A257507.P11344580999109242553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A257507.P11344580999109242553

namespace A257507

/-- `A011371(comp[A011371(n)+n])` -/
def P11344580999109242553.Spec : Prop :=
  ∀ n, P11344580999109242553.a n = A257507 (n + 1)

end A257507

/-! ## A257507.P16512061684605063933

`A011371(A080578(n+2)-2)`
-/

namespace A257507.P16512061684605063933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A080578 (n + 2) - 2).toNat

end

end A257507.P16512061684605063933

namespace A257507

/-- `A011371(A080578(n+2)-2)` -/
def P16512061684605063933.Spec : Prop :=
  ∀ n, P16512061684605063933.a n = A257507 (n + 1)

end A257507

/-! ## A257507.P3479185062460538739

`A011371(A007843(n+1)+n)`
-/

namespace A257507.P3479185062460538739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A007843 (n + 1) + (n : ℤ)).toNat

end

end A257507.P3479185062460538739

namespace A257507

/-- `A011371(A007843(n+1)+n)` -/
def P3479185062460538739.Spec : Prop :=
  ∀ n, P3479185062460538739.a n = A257507 (n + 1)

end A257507

/-! ## A257507.P10214568340971684157

`A011371(comp[2*n-A000120(n)])`
-/

namespace A257507.P10214568340971684157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A000120 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A257507.P10214568340971684157

namespace A257507

/-- `A011371(comp[2*n-A000120(n)])` -/
def P10214568340971684157.Spec : Prop :=
  ∀ n, P10214568340971684157.a n = A257507 (n + 1)

end A257507

/-! ## A257507.P17279907582737014781

`A011371(A257126(n+1)+A005187(n+1))`
-/

namespace A257507.P17279907582737014781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A257126 (n + 1) + A005187 (n + 1)).toNat

end

end A257507.P17279907582737014781

namespace A257507

/-- `A011371(A257126(n+1)+A005187(n+1))` -/
def P17279907582737014781.Spec : Prop :=
  ∀ n, P17279907582737014781.a n = A257507 (n + 1)

theorem P17279907582737014781.correct : P17279907582737014781.Spec := by
  intro n
  simp only [A257507, Nat.add_sub_cancel, A257507.P17279907582737014781.a, A257507.P15201907181584584602.a, A005187, A005187.P3874015513960485494.a, A011371, A011371.P12398255777927387864.a, A055938, A055938.P11436454756649086681.a, A257126, A257126.P1146843161386362051.a, A000120, A000120.P2816527436160941581.a, A045412, A045412.P17699345519846233104.f1, A045412.P17699345519846233104.a, A079559, A079559.P6833565121082423031.a, A043545, A043545.P6199121594405564387.a, A053644, A053644.P1707366427427647095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A257507

/-! ## A257507.P7925796646808046925

`A011371(lt[0, A234017(n)])`
-/

namespace A257507.P7925796646808046925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A257507.P7925796646808046925

namespace A257507

/-- `A011371(lt[0, A234017(n)])` -/
def P7925796646808046925.Spec : Prop :=
  ∀ n, P7925796646808046925.a n = A257507 (n + 1)

end A257507

/-! ## A257507.P4122886894774629856

`A011371(lt[A079559(n), 1])`
-/

namespace A257507.P4122886894774629856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A257507.P4122886894774629856

namespace A257507

/-- `A011371(lt[A079559(n), 1])` -/
def P4122886894774629856.Spec : Prop :=
  ∀ n, P4122886894774629856.a n = A257507 (n + 1)

end A257507

/-! ## A257507.P9612620695607037906

`A011371(lt[1, A182105(n+1)])`
-/

namespace A257507.P9612620695607037906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A257507.P9612620695607037906

namespace A257507

/-- `A011371(lt[1, A182105(n+1)])` -/
def P9612620695607037906.Spec : Prop :=
  ∀ n, P9612620695607037906.a n = A257507 (n + 1)

end A257507

/-! ## A257507.P603171295052388930

`A101925(A045412(n+1)-1)-A045412(n+1)`
-/

namespace A257507.P603171295052388930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101925 (A045412 (n + 1) - 1).toNat - A045412 (n + 1)

end

end A257507.P603171295052388930

namespace A257507

/-- `A101925(A045412(n+1)-1)-A045412(n+1)` -/
def P603171295052388930.Spec : Prop :=
  ∀ n, P603171295052388930.a n = A257507 (n + 1)

end A257507

/-! ## A257507.P17552917003882033414

`A011371(comp[A011371(n)])`
-/

namespace A257507.P17552917003882033414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A257507.P17552917003882033414

namespace A257507

/-- `A011371(comp[A011371(n)])` -/
def P17552917003882033414.Spec : Prop :=
  ∀ n, P17552917003882033414.a n = A257507 (n + 1)

end A257507

/-! ## A257507.P15199679575995739871

`A011371(A054429(A270198(A054429(n+1))))`
-/

namespace A257507.P15199679575995739871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A054429 (A270198 (A054429 (n + 1)).toNat).toNat).toNat

end

end A257507.P15199679575995739871

namespace A257507

/-- `A011371(A054429(A270198(A054429(n+1))))` -/
def P15199679575995739871.Spec : Prop :=
  ∀ n, P15199679575995739871.a n = A257507 (n + 1)

end A257507

/-! ## A257507.P16885128536591945668

`A257264(∑[n+1]+2)`
-/

namespace A257507.P16885128536591945668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257264 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A257507.P16885128536591945668

namespace A257507

/-- `A257264(∑[n+1]+2)` -/
def P16885128536591945668.Spec : Prop :=
  ∀ n, P16885128536591945668.a n = A257507 (n + 1)

end A257507

/-!
# A257508: Next-to-leaf vertices in binary beanstalk; Numbers n for which A257265(n) = 1.

The programs for A257508, the canonical program `A257508.P829939405799321122` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257508 has offset 1).

The definition of A257508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3752 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257508.P17437107410032782826

`eq[1, A257265(n)]`
-/

namespace A257508.P17437107410032782826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257265 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257508.P17437107410032782826

namespace A257508

/-- `eq[1, A257265(n)]` -/
def P17437107410032782826.Spec : Prop :=
  ∀ n, (P17437107410032782826.a n : ℤ) = A257508 (n + 1)

end A257508

/-! ## A257508.P16824141816596637587

`filter[A005187(n), A257265(#)]`
-/

namespace A257508.P16824141816596637587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257265 (f1 j).toNat = 1) n)

end

end A257508.P16824141816596637587

namespace A257508

/-- `filter[A005187(n), A257265(#)]` -/
def P16824141816596637587.Spec : Prop :=
  ∀ n, P16824141816596637587.a n = A257508 (n + 1)

end A257508

/-! ## A257508.P6564917812713758236

`lt[0, char[A257507(n+1)]]`
-/

namespace A257508.P6564917812713758236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257507 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257508.P6564917812713758236

namespace A257508

/-- `lt[0, char[A257507(n+1)]]` -/
def P6564917812713758236.Spec : Prop :=
  ∀ n, (P6564917812713758236.a n : ℤ) = A257508 (n + 1)

end A257508

/-! ## A257508.P829939405799321122

`record[A257507(A152271(n))]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A257508

/-- `record[A257507(A152271(n))]` -/
def P829939405799321122.Spec : Prop :=
  ∀ n, P829939405799321122.a n = A257508 (n + 1)

theorem P829939405799321122.correct : P829939405799321122.Spec := by
  intro n
  simp only [A257508, Nat.add_sub_cancel]

end A257508

/-! ## A257508.P13673193105865944619

`record[A257507(A003602(n+1))]`
-/

namespace A257508.P13673193105865944619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257507 (A003602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257508.P13673193105865944619

namespace A257508

/-- `record[A257507(A003602(n+1))]` -/
def P13673193105865944619.Spec : Prop :=
  ∀ n, P13673193105865944619.a n = A257508 (n + 1)

end A257508

/-! ## A257508.P5394075693444823478

`record[A257507(A032742(n+1))]`
-/

namespace A257508.P5394075693444823478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257507 (A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257508.P5394075693444823478

namespace A257508

/-- `record[A257507(A032742(n+1))]` -/
def P5394075693444823478.Spec : Prop :=
  ∀ n, P5394075693444823478.a n = A257508 (n + 1)

end A257508

/-! ## A257508.P14402897412808560914

`record[A078896(A079559(n)+n)]`
-/

namespace A257508.P14402897412808560914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078896 (A079559 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257508.P14402897412808560914

namespace A257508

/-- `record[A078896(A079559(n)+n)]` -/
def P14402897412808560914.Spec : Prop :=
  ∀ n, P14402897412808560914.a n = A257508 (n + 1)

end A257508

/-! ## A257508.P9748070887591245635

`record[A011371(A055938(n+1-2%(n+1)))]`
-/

namespace A257508.P9748070887591245635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A055938 (n + 1 - 2 % (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257508.P9748070887591245635

namespace A257508

/-- `record[A011371(A055938(n+1-2%(n+1)))]` -/
def P9748070887591245635.Spec : Prop :=
  ∀ n, P9748070887591245635.a n = A257508 (n + 1)

end A257508

/-! ## A257508.P13500704280303521409

`A011371(record[xor(1, A055938(n+1))])`
-/

namespace A257508.P13500704280303521409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A055938 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A257508.P13500704280303521409

namespace A257508

/-- `A011371(record[xor(1, A055938(n+1))])` -/
def P13500704280303521409.Spec : Prop :=
  ∀ n, P13500704280303521409.a n = A257508 (n + 1)

end A257508

/-! ## A257508.P666907850653088598

`record[A257507(n+1)%A257504(3*n+4)]`
-/

namespace A257508.P666907850653088598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257507 (n + 1)) (A257504 (3 * n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257508.P666907850653088598

namespace A257508

/-- `record[A257507(n+1)%A257504(3*n+4)]` -/
def P666907850653088598.Spec : Prop :=
  ∀ n, P666907850653088598.a n = A257508 (n + 1)

end A257508

/-! ## A257508.P12337723615487448519

`record[gcd(A011371(n), A213724(n))]`
-/

namespace A257508.P12337723615487448519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A011371 n) (A213724 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257508.P12337723615487448519

namespace A257508

/-- `record[gcd(A011371(n), A213724(n))]` -/
def P12337723615487448519.Spec : Prop :=
  ∀ n, (P12337723615487448519.a n : ℤ) = A257508 (n + 1)

end A257508

/-!
# A257509: Numbers n for which A257265(n) = 2; numbers for which the nearest descendant leaf in the binary beanstalk is two edges away.

The programs for A257509, there is no canonical definition to state claims against.
-/

/-! ## A257509.P7260549843236146632

`∑[A256489(n+1)]-A256489(n+1)`
-/

namespace A257509.P7260549843236146632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256489 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A256489 (n + 1)

end

end A257509.P7260549843236146632

/-! ## A257509.P17337265495396458070

`lt[1, A257265(n)]`
-/

namespace A257509.P17337265495396458070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257265 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A257509.P17337265495396458070

/-! ## A257509.P5676394980603916954

`record[(n+1)*(A257265(n+1)-1)]`
-/

namespace A257509.P5676394980603916954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A257265 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257509.P5676394980603916954

/-! ## A257509.P13258271855984119238

`eq[A020639(A257257(n+1)), A257265(n)]`
-/

namespace A257509.P13258271855984119238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A257257 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257265 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257509.P13258271855984119238

/-! ## A257509.P5263878917856085446

`A005187(eq[A234017(2*n+1), A234017(2*n)])`
-/

namespace A257509.P5263878917856085446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234017 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234017 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A257509.P5263878917856085446

/-! ## A257509.P12652333356875693604

`A005187(eq[A182105(2*n+1), A182105(2*(n+1))])`
-/

namespace A257509.P12652333356875693604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182105 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182105 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A257509.P12652333356875693604

/-! ## A257509.P17058703366556890147

`A011371(record[A080578(2*n+1)%A055938(2*n+1)])`
-/

namespace A257509.P17058703366556890147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080578 (2 * n + 1)) (A055938 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A257509.P17058703366556890147

/-! ## A257509.P13730030957199145373

`eq[A020639(A257251(n+1)), A257265(n)]`
-/

namespace A257509.P13730030957199145373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A257251 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257265 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257509.P13730030957199145373

/-! ## A257509.P8402323496237939364

`eq[A020639(A257252(n+1)), A257265(n)]`
-/

namespace A257509.P8402323496237939364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A257252 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257265 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A257509.P8402323496237939364

/-!
# A257510: Number of nonleading zeros in factorial base representation of n (A007623).

The programs for A257510, the canonical program `A257510.P6240819439116695136` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257510 has offset 1).

The definition of A257510 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060130, A084558, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A257510.P6240819439116695136

`A084558(n+1)-A060130(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A257510

/-- `A084558(n+1)-A060130(n+1)` -/
def P6240819439116695136.Spec : Prop :=
  ∀ n, P6240819439116695136.a n = A257510 (n + 1)

theorem P6240819439116695136.correct : P6240819439116695136.Spec := by
  intro n
  simp only [A257510, Nat.add_sub_cancel]

end A257510

/-! ## A257510.P15837859528448488526

`A023416(A275727(n+1))`
-/

namespace A257510.P15837859528448488526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A275727 (n + 1)).toNat

end

end A257510.P15837859528448488526

namespace A257510

/-- `A023416(A275727(n+1))` -/
def P15837859528448488526.Spec : Prop :=
  ∀ n, P15837859528448488526.a n = A257510 (n + 1)

end A257510

/-! ## A257510.P17701910823371484036

`∑{digits}[A007623(n+1), A000007(#)]`
-/

namespace A257510.P17701910823371484036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000007 x).sum

end

end A257510.P17701910823371484036

namespace A257510

/-- `∑{digits}[A007623(n+1), A000007(#)]` -/
def P17701910823371484036.Spec : Prop :=
  ∀ n, P17701910823371484036.a n = A257510 (n + 1)

end A257510

/-! ## A257510.P9996962464991070778

`∑{digits}[A007623(n+1), A320231(#)%2]`
-/

namespace A257510.P9996962464991070778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Int.tmod (A320231 x) 2).sum

end

end A257510.P9996962464991070778

namespace A257510

/-- `∑{digits}[A007623(n+1), A320231(#)%2]` -/
def P9996962464991070778.Spec : Prop :=
  ∀ n, P9996962464991070778.a n = A257510 (n + 1)

end A257510

/-! ## A257510.P3354596654866988519

`A090529(A048764(n+1))-A060130(n+1)`
-/

namespace A257510.P3354596654866988519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090529 (A048764 (n + 1)).toNat - A060130 (n + 1)

end

end A257510.P3354596654866988519

namespace A257510

/-- `A090529(A048764(n+1))-A060130(n+1)` -/
def P3354596654866988519.Spec : Prop :=
  ∀ n, P3354596654866988519.a n = A257510 (n + 1)

end A257510

/-! ## A257510.P18325419265246461145

`∑{digits}[A007623(n+1), 1-A000120(A000120(#))]`
-/

namespace A257510.P18325419265246461145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - A000120 (A000120 x).toNat).sum

end

end A257510.P18325419265246461145

namespace A257510

/-- `∑{digits}[A007623(n+1), 1-A000120(A000120(#))]` -/
def P18325419265246461145.Spec : Prop :=
  ∀ n, P18325419265246461145.a n = A257510 (n + 1)

end A257510

/-! ## A257510.P8010502521637907232

`A060128(n+1)+A084558(n+1)-A060129(n+1)`
-/

namespace A257510.P8010502521637907232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 (n + 1) + (A084558 (n + 1) - A060129 (n + 1))

end

end A257510.P8010502521637907232

namespace A257510

/-- `A060128(n+1)+A084558(n+1)-A060129(n+1)` -/
def P8010502521637907232.Spec : Prop :=
  ∀ n, P8010502521637907232.a n = A257510 (n + 1)

end A257510

/-! ## A257510.P10198313114677769327

`A060128(n+1)+A275849(n+1)-A060500(n+1)`
-/

namespace A257510.P10198313114677769327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 (n + 1) + (A275849 (n + 1) - A060500 (n + 1))

end

end A257510.P10198313114677769327

namespace A257510

/-- `A060128(n+1)+A275849(n+1)-A060500(n+1)` -/
def P10198313114677769327.Spec : Prop :=
  ∀ n, P10198313114677769327.a n = A257510 (n + 1)

end A257510

/-! ## A257510.P18195843273189171985

`A275806(n+1)+A275850(n+1)-A060130(n+1)`
-/

namespace A257510.P18195843273189171985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275806 (n + 1) + (A275850 (n + 1) - A060130 (n + 1))

end

end A257510.P18195843273189171985

namespace A257510

/-- `A275806(n+1)+A275850(n+1)-A060130(n+1)` -/
def P18195843273189171985.Spec : Prop :=
  ∀ n, P18195843273189171985.a n = A257510 (n + 1)

end A257510

/-! ## A257510.P14190234931976345359

`A328620(A351576(n+1))`
-/

namespace A257510.P14190234931976345359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328620 (A351576 (n + 1)).toNat

end

end A257510.P14190234931976345359

namespace A257510

/-- `A328620(A351576(n+1))` -/
def P14190234931976345359.Spec : Prop :=
  ∀ n, P14190234931976345359.a n = A257510 (n + 1)

end A257510

/-! ## A257510.P4652344323702630831

`A061395(A275733(n+1))-A060130(n+1)`
-/

namespace A257510.P4652344323702630831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A275733 (n + 1)).toNat - A060130 (n + 1)

end

end A257510.P4652344323702630831

namespace A257510

/-- `A061395(A275733(n+1))-A060130(n+1)` -/
def P4652344323702630831.Spec : Prop :=
  ∀ n, P4652344323702630831.a n = A257510 (n + 1)

end A257510

/-! ## A257510.P2346794170194280791

`A230403(A351988(n+1))`
-/

namespace A257510.P2346794170194280791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230403 (A351988 (n + 1)).toNat

end

end A257510.P2346794170194280791

namespace A257510

/-- `A230403(A351988(n+1))` -/
def P2346794170194280791.Spec : Prop :=
  ∀ n, P2346794170194280791.a n = A257510 (n + 1)

end A257510

/-! ## A257510.P17085720758230583051

`A001221(A278225(n+1))-1`
-/

namespace A257510.P17085720758230583051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A278225 (n + 1)).toNat - 1

end

end A257510.P17085720758230583051

namespace A257510

/-- `A001221(A278225(n+1))-1` -/
def P17085720758230583051.Spec : Prop :=
  ∀ n, P17085720758230583051.a n = A257510 (n + 1)

end A257510

/-! ## A257510.P9882177456873989969

`A275849(A225901(n+1)+n+2)`
-/

namespace A257510.P9882177456873989969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275849 (A225901 (n + 1) + (n + 2 : ℤ)).toNat

end

end A257510.P9882177456873989969

namespace A257510

/-- `A275849(A225901(n+1)+n+2)` -/
def P9882177456873989969.Spec : Prop :=
  ∀ n, P9882177456873989969.a n = A257510 (n + 1)

end A257510

/-! ## A257510.P17520147550154788240

`A060130(A343041(n+1))-A060130(n+1)`
-/

namespace A257510.P17520147550154788240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (A343041 (n + 1)).toNat - A060130 (n + 1)

end

end A257510.P17520147550154788240

namespace A257510

/-- `A060130(A343041(n+1))-A060130(n+1)` -/
def P17520147550154788240.Spec : Prop :=
  ∀ n, P17520147550154788240.a n = A257510 (n + 1)

end A257510

/-! ## A257510.P18199338395979813314

`A079067(A275733(n+1))`
-/

namespace A257510.P18199338395979813314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A275733 (n + 1)).toNat

end

end A257510.P18199338395979813314

namespace A257510

/-- `A079067(A275733(n+1))` -/
def P18199338395979813314.Spec : Prop :=
  ∀ n, P18199338395979813314.a n = A257510 (n + 1)

end A257510

/-! ## A257510.P9033109511508970388

`A005087(A278225(n+1))`
-/

namespace A257510.P9033109511508970388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A278225 (n + 1)).toNat

end

end A257510.P9033109511508970388

namespace A257510

/-- `A005087(A278225(n+1))` -/
def P9033109511508970388.Spec : Prop :=
  ∀ n, P9033109511508970388.a n = A257510 (n + 1)

end A257510

/-! ## A257510.P10201689269301939100

`A001221(A275725(n+1))-1`
-/

namespace A257510.P10201689269301939100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A275725 (n + 1)).toNat - 1

end

end A257510.P10201689269301939100

namespace A257510

/-- `A001221(A275725(n+1))-1` -/
def P10201689269301939100.Spec : Prop :=
  ∀ n, P10201689269301939100.a n = A257510 (n + 1)

end A257510

/-! ## A257510.P247798099688254185

`A275850(A225901(A225901(n+1)+n+2))`
-/

namespace A257510.P247798099688254185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275850 (A225901 (A225901 (n + 1) + (n + 2 : ℤ)).toNat).toNat

end

end A257510.P247798099688254185

namespace A257510

/-- `A275850(A225901(A225901(n+1)+n+2))` -/
def P247798099688254185.Spec : Prop :=
  ∀ n, P247798099688254185.a n = A257510 (n + 1)

end A257510

/-! ## A257510.P14503686914989773624

`A055641(A007623(n+1))`
-/

namespace A257510.P14503686914989773624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A007623 (n + 1)).toNat

end

end A257510.P14503686914989773624

namespace A257510

/-- `A055641(A007623(n+1))` -/
def P14503686914989773624.Spec : Prop :=
  ∀ n, P14503686914989773624.a n = A257510 (n + 1)

end A257510

/-!
# A257511: Number of 1's in factorial base representation of n (A007623).

The programs for A257511, the canonical program `A257511.P4810453012359406512` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257511 has offset 0).

The definition of A257511 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A257687, A265333, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A257511.P4810453012359406512

`A265333(n)+a(A257687(n))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A257511

/-- `A265333(n)+a(A257687(n))` -/
def P4810453012359406512.Spec : Prop :=
  ∀ n, P4810453012359406512.a n = A257511 n

theorem P4810453012359406512.correct : P4810453012359406512.Spec := by
  intro n
  simp only [A257511]

end A257511

/-! ## A257511.P12076492170122359875

`A001221(A275732(n))`
-/

namespace A257511.P12076492170122359875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A275732 n).toNat

end

end A257511.P12076492170122359875

namespace A257511

/-- `A001221(A275732(n))` -/
def P12076492170122359875.Spec : Prop :=
  ∀ n, P12076492170122359875.a n = A257511 n

end A257511

/-! ## A257511.P10598856027258690694

`A007814(A275735(n))`
-/

namespace A257511.P10598856027258690694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A275735 n).toNat

end

end A257511.P10598856027258690694

namespace A257511

/-- `A007814(A275735(n))` -/
def P10598856027258690694.Spec : Prop :=
  ∀ n, P10598856027258690694.a n = A257511 n

end A257511

/-! ## A257511.P1565586825544635945

`A260736(A225901(n))`
-/

namespace A257511.P1565586825544635945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260736 (A225901 n).toNat

end

end A257511.P1565586825544635945

namespace A257511

/-- `A260736(A225901(n))` -/
def P1565586825544635945.Spec : Prop :=
  ∀ n, P1565586825544635945.a n = A257511 n

end A257511

/-! ## A257511.P15591743020951001865

`A056169(A276076(n))`
-/

namespace A257511.P15591743020951001865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A276076 n).toNat

end

end A257511.P15591743020951001865

namespace A257511

/-- `A056169(A276076(n))` -/
def P15591743020951001865.Spec : Prop :=
  ∀ n, P15591743020951001865.a n = A257511 n

end A257511

/-! ## A257511.P14951811297845818191

`val(A275735(n), 2)`
-/

namespace A257511.P14951811297845818191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A275735 n).toNat 2

end

end A257511.P14951811297845818191

namespace A257511

/-- `val(A275735(n), 2)` -/
def P14951811297845818191.Spec : Prop :=
  ∀ n, (P14951811297845818191.a n : ℤ) = A257511 n

end A257511

/-! ## A257511.P13737457709317269753

`∑{e}[A275732(n), #]`
-/

namespace A257511.P13737457709317269753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275732 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A257511.P13737457709317269753

namespace A257511

/-- `∑{e}[A275732(n), #]` -/
def P13737457709317269753.Spec : Prop :=
  ∀ n, (P13737457709317269753.a n : ℤ) = A257511 n

end A257511

/-! ## A257511.P7863812580616675669

`A000120(A275736(n))`
-/

namespace A257511.P7863812580616675669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A275736 n).toNat

end

end A257511.P7863812580616675669

namespace A257511

/-- `A000120(A275736(n))` -/
def P7863812580616675669.Spec : Prop :=
  ∀ n, P7863812580616675669.a n = A257511 n

end A257511

/-! ## A257511.P9887891127900443134

`A060130(n)-A060130(A257684(n))`
-/

namespace A257511.P9887891127900443134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n - A060130 (A257684 n).toNat

end

end A257511.P9887891127900443134

namespace A257511

/-- `A060130(n)-A060130(A257684(n))` -/
def P9887891127900443134.Spec : Prop :=
  ∀ n, P9887891127900443134.a n = A257511 n

end A257511

/-! ## A257511.P10187373973859383358

`A060130(n)-A060130(A276009(n))`
-/

namespace A257511.P10187373973859383358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 n - A060130 (A276009 n).toNat

end

end A257511.P10187373973859383358

namespace A257511

/-- `A060130(n)-A060130(A276009(n))` -/
def P10187373973859383358.Spec : Prop :=
  ∀ n, P10187373973859383358.a n = A257511 n

end A257511

/-! ## A257511.P5044403571843286021

`A060502(n-A255411(A257684(n)))`
-/

namespace A257511.P5044403571843286021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 ((n : ℤ) - A255411 (A257684 n).toNat).toNat

end

end A257511.P5044403571843286021

namespace A257511

/-- `A060502(n-A255411(A257684(n)))` -/
def P5044403571843286021.Spec : Prop :=
  ∀ n, P5044403571843286021.a n = A257511 n

end A257511

/-! ## A257511.P1213842090123301734

`A328614(A351576(n))`
-/

namespace A257511.P1213842090123301734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328614 (A351576 n).toNat

end

end A257511.P1213842090123301734

namespace A257511

/-- `A328614(A351576(n))` -/
def P1213842090123301734.Spec : Prop :=
  ∀ n, P1213842090123301734.a n = A257511 n

end A257511

/-! ## A257511.P4824144321173359146

`A001222(A275732(2*n-n))`
-/

namespace A257511.P4824144321173359146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A275732 (2 * n - n)).toNat

end

end A257511.P4824144321173359146

namespace A257511

/-- `A001222(A275732(2*n-n))` -/
def P4824144321173359146.Spec : Prop :=
  ∀ n, P4824144321173359146.a n = A257511 n

end A257511

/-! ## A257511.P6116576082296696248

`val(∏{e}[A278236(n), A000040(#)], 2)`
-/

namespace A257511.P6116576082296696248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278236 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat 2

end

end A257511.P6116576082296696248

namespace A257511

/-- `val(∏{e}[A278236(n), A000040(#)], 2)` -/
def P6116576082296696248.Spec : Prop :=
  ∀ n, (P6116576082296696248.a n : ℤ) = A257511 n

end A257511

/-! ## A257511.P13717233466885331555

`A048675(gcd(A000079(n), A275735(n)))`
-/

namespace A257511.P13717233466885331555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (Int.gcd (A000079 n) (A275735 n))

end

end A257511.P13717233466885331555

namespace A257511

/-- `A048675(gcd(A000079(n), A275735(n)))` -/
def P13717233466885331555.Spec : Prop :=
  ∀ n, P13717233466885331555.a n = A257511 n

end A257511

/-! ## A257511.P16534127993419519208

`A277937(A277012(n))`
-/

namespace A257511.P16534127993419519208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 (A277012 n).toNat

end

end A257511.P16534127993419519208

namespace A257511

/-- `A277937(A277012(n))` -/
def P16534127993419519208.Spec : Prop :=
  ∀ n, P16534127993419519208.a n = A257511 n

end A257511

/-! ## A257511.P15278813640047321888

`A001222(A275732(n)²)/2`
-/

namespace A257511.P15278813640047321888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A275732 n ^ 2).toNat : ℚ) / 2

end

end A257511.P15278813640047321888

namespace A257511

/-- `A001222(A275732(n)²)/2` -/
def P15278813640047321888.Spec : Prop :=
  ∀ n, P15278813640047321888.a n = (A257511 n : ℚ)

end A257511

/-! ## A257511.P9999446850225699166

`A000005(A000005(A275732(n)²))-1`
-/

namespace A257511.P9999446850225699166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A275732 n ^ 2).toNat).toNat - 1

end

end A257511.P9999446850225699166

namespace A257511

/-- `A000005(A000005(A275732(n)²))-1` -/
def P9999446850225699166.Spec : Prop :=
  ∀ n, P9999446850225699166.a n = A257511 n

end A257511

/-! ## A257511.P4782306317923425281

`A060130(A059590(A275736(A275727(A059590(n)))))`
-/

namespace A257511.P4782306317923425281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (A059590 (A275736 (A275727 (A059590 n).toNat).toNat).toNat).toNat

end

end A257511.P4782306317923425281

namespace A257511

/-- `A060130(A059590(A275736(A275727(A059590(n)))))` -/
def P4782306317923425281.Spec : Prop :=
  ∀ n, P4782306317923425281.a n = A257511 n

end A257511

/-! ## A257511.P988297503144046286

`A268643(A007623(n))`
-/

namespace A257511.P988297503144046286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A007623 n).toNat

end

end A257511.P988297503144046286

namespace A257511

/-- `A268643(A007623(n))` -/
def P988297503144046286.Spec : Prop :=
  ∀ n, P988297503144046286.a n = A257511 n

end A257511

/-!
# A257512: Those vertices of the binary beanstalk whose children are both leaves.

The programs for A257512, the canonical program `A257512.P6741828352315066934` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257512 has offset 1).

The definition of A257512 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4095 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257512.P5517584446551880169

`A005187(lt[2, A082850(2*(n+1))])`
-/

namespace A257512.P5517584446551880169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082850 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A257512.P5517584446551880169

namespace A257512

/-- `A005187(lt[2, A082850(2*(n+1))])` -/
def P5517584446551880169.Spec : Prop :=
  ∀ n, P5517584446551880169.a n = A257512 (n + 1)

end A257512

/-! ## A257512.P14922011385118954887

`A005187(comp[floor(A005187(n)/2)])`
-/

namespace A257512.P14922011385118954887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A005187 n : ℚ) / 2⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A257512.P14922011385118954887

namespace A257512

/-- `A005187(comp[floor(A005187(n)/2)])` -/
def P14922011385118954887.Spec : Prop :=
  ∀ n, P14922011385118954887.a n = A257512 (n + 1)

end A257512

/-! ## A257512.P6741828352315066934

`A257507(A055938(2*(n+1)))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A257512

/-- `A257507(A055938(2*(n+1)))` -/
def P6741828352315066934.Spec : Prop :=
  ∀ n, P6741828352315066934.a n = A257512 (n + 1)

theorem P6741828352315066934.correct : P6741828352315066934.Spec := by
  intro n
  simp only [A257512, Nat.add_sub_cancel]

end A257512

/-! ## A257512.P18170179312896445142

`eq[2, A213725(n)]`
-/

namespace A257512.P18170179312896445142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257512.P18170179312896445142

namespace A257512

/-- `eq[2, A213725(n)]` -/
def P18170179312896445142.Spec : Prop :=
  ∀ n, (P18170179312896445142.a n : ℤ) = A257512 (n + 1)

end A257512

/-! ## A257512.P173297403285684605

`eq[2, A213726(n)]`
-/

namespace A257512.P173297403285684605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213726 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257512.P173297403285684605

namespace A257512

/-- `eq[2, A213726(n)]` -/
def P173297403285684605.Spec : Prop :=
  ∀ n, (P173297403285684605.a n : ℤ) = A257512 (n + 1)

end A257512

/-! ## A257512.P5727415860761807124

`eq[3, A213727(n)]`
-/

namespace A257512.P5727415860761807124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213727 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A257512.P5727415860761807124

namespace A257512

/-- `eq[3, A213727(n)]` -/
def P5727415860761807124.Spec : Prop :=
  ∀ n, (P5727415860761807124.a n : ℤ) = A257512 (n + 1)

end A257512

/-! ## A257512.P8579187634253609517

`A011371(A055938(A055938(n+2+n)))`
-/

namespace A257512.P8579187634253609517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A055938 (A055938 (n + 2 + n)).toNat).toNat

end

end A257512.P8579187634253609517

namespace A257512

/-- `A011371(A055938(A055938(n+2+n)))` -/
def P8579187634253609517.Spec : Prop :=
  ∀ n, P8579187634253609517.a n = A257512 (n + 1)

theorem P8579187634253609517.correct : P8579187634253609517.Spec := by
  intro n
  simp only [A257512, Nat.add_sub_cancel, A257512.P8579187634253609517.a, A257512.P6741828352315066934.a, A011371, A011371.P12398255777927387864.a, A055938, A055938.P11436454756649086681.a, A257507, A257507.P15201907181584584602.a, A000120, A000120.P2816527436160941581.a, A045412, A045412.P17699345519846233104.f1, A045412.P17699345519846233104.a, A005187, A005187.P3874015513960485494.a, A079559, A079559.P6833565121082423031.a, A043545, A043545.P6199121594405564387.a, A053644, A053644.P1707366427427647095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A257512

/-! ## A257512.P9972548540846249763

`A005187(lt[2, A182105(2*(n+1))])`
-/

namespace A257512.P9972548540846249763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182105 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A257512.P9972548540846249763

namespace A257512

/-- `A005187(lt[2, A182105(2*(n+1))])` -/
def P9972548540846249763.Spec : Prop :=
  ∀ n, P9972548540846249763.a n = A257512 (n + 1)

end A257512

/-! ## A257512.P405993523311514177

`A257507(A213724(A257507(2*(n+1))))`
-/

namespace A257512.P405993523311514177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257507 (A213724 (A257507 (2 * (n + 1))).toNat).toNat

end

end A257512.P405993523311514177

namespace A257512

/-- `A257507(A213724(A257507(2*(n+1))))` -/
def P405993523311514177.Spec : Prop :=
  ∀ n, P405993523311514177.a n = A257512 (n + 1)

end A257512

/-! ## A257512.P10753415363242615370

`A005187(A136767(n+1))`
-/

namespace A257512.P10753415363242615370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (A136767 (n + 1)).toNat

end

end A257512.P10753415363242615370

namespace A257512

/-- `A005187(A136767(n+1))` -/
def P10753415363242615370.Spec : Prop :=
  ∀ n, P10753415363242615370.a n = A257512 (n + 1)

end A257512

/-!
# A257513: Square array A(row,col) = A083221(row+1,col) - A083221(row,col): the first differences of each column of array constructed from the sieve of Eratosthenes.

The programs for A257513, there is no canonical definition to state claims against.
-/

/-! ## A257513.P337320210158691990

`A257514(A038722(n+1))`
-/

namespace A257513.P337320210158691990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257514 (A038722 (n + 1)).toNat

end

end A257513.P337320210158691990

/-! ## A257513.P8095941922918297525

`A257514(A061579(n)+1)`
-/

namespace A257513.P8095941922918297525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257514 (A061579 n + 1).toNat

end

end A257513.P8095941922918297525

/-! ## A257513.P7402794250485967608

`A257514(A002024(n+1)²-n)`
-/

namespace A257513.P7402794250485967608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257514 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A257513.P7402794250485967608

/-! ## A257513.P14150768964531993990

`A083221(comp[∑[n]]+2)-A083221(n+2)`
-/

namespace A257513.P14150768964531993990
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083221 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2) - A083221 (n + 2)

end

end A257513.P14150768964531993990

/-! ## A257513.P9353956460065775916

`A257514(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A257513.P9353956460065775916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257514 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A257513.P9353956460065775916

/-! ## A257513.P16940861431695240080

`A347378(A083221(n+2))`
-/

namespace A257513.P16940861431695240080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347378 (A083221 (n + 2)).toNat

end

end A257513.P16940861431695240080

/-! ## A257513.P13507902029446821269

`A253886(A249741(n+1))-A249741(n+1)`
-/

namespace A257513.P13507902029446821269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253886 (A249741 (n + 1)).toNat - A249741 (n + 1)

end

end A257513.P13507902029446821269

/-!
# A257514: Transpose of square array A257513.

The programs for A257514, there is no canonical definition to state claims against.
-/

/-! ## A257514.P17833518113460203834

`A257513(A038722(n+1))`
-/

namespace A257514.P17833518113460203834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257513 (A038722 (n + 1)).toNat

end

end A257514.P17833518113460203834

/-! ## A257514.P11803748589344328141

`A257513(A061579(n)+1)`
-/

namespace A257514.P11803748589344328141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257513 (A061579 n + 1).toNat

end

end A257514.P11803748589344328141

/-! ## A257514.P5591038827700937548

`A257513(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A257514.P5591038827700937548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257513 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A257514.P5591038827700937548

/-! ## A257514.P4270096108560966989

`A083140(A002024(n+1)+n+2)-A083140(n+2)`
-/

namespace A257514.P4270096108560966989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083140 (A002024 (n + 1) + (n : ℤ) + 2).toNat - A083140 (n + 2)

end

end A257514.P4270096108560966989

/-! ## A257514.P13794610651733353981

`A347378(A083140(n+2))`
-/

namespace A257514.P13794610651733353981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347378 (A083140 (n + 2)).toNat

end

end A257514.P13794610651733353981

/-!
# A257518: Number of factorizations of m^n into n factors, where m is a product of exactly 5 distinct primes and each factor is a product of 5 primes (counted with multiplicity).

The programs for A257518, there is no canonical definition to state claims against.
-/

/-! ## A257518.P9910131698220543313

`A257462(A055999(n+3))`
-/

namespace A257518.P9910131698220543313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257462 (A055999 (n + 3)).toNat

end

end A257518.P9910131698220543313

/-! ## A257518.P13250445384140260279

`A257462(eq[5, A025581(n)])`
-/

namespace A257518.P13250445384140260279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257462 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257518.P13250445384140260279

/-! ## A257518.P17223030334890164725

`A257462(eq[11, A099375(n)])`
-/

namespace A257518.P17223030334890164725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257462 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257518.P17223030334890164725

/-! ## A257518.P7688536292769831023

`A257462(Δ[A026054(n+3)])`
-/

namespace A257518.P7688536292769831023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257462 (f1 (n + 1) - f1 n).toNat

end

end A257518.P7688536292769831023

/-! ## A257518.P13674741372401784588

`A257462(eq[6, A004736(n+1)])`
-/

namespace A257518.P13674741372401784588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257462 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A257518.P13674741372401784588

/-!
# A257519: Number of Motzkin paths of length n with no peaks at level 4.

The programs for A257519, there is no canonical definition to state claims against.
-/

/-! ## A257519.P11028893988803488982

`A028310(A257387(n)-A036639(n))`
-/

namespace A257519.P11028893988803488982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A257387 n - A036639 n).toNat

end

end A257519.P11028893988803488982

/-! ## A257519.P11948788780135945364

`A001006(n)-A118759(A036424(n+1))`
-/

namespace A257519.P11948788780135945364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A118759 (A036424 (n + 1)).toNat

end

end A257519.P11948788780135945364

/-! ## A257519.P406245797852467564

`Δ[A097332(n)]-A118759(A036647(n+1))`
-/

namespace A257519.P406245797852467564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A118759 (A036647 (n + 1)).toNat

end

end A257519.P406245797852467564

/-! ## A257519.P13966992207358919046

`A086246(n+2)-A118759(A036647(n+1))`
-/

namespace A257519.P13966992207358919046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (n + 2) - A118759 (A036647 (n + 1)).toNat

end

end A257519.P13966992207358919046

/-! ## A257519.P17377315546734816565

`A168049(n+2)-A118759(A036647(n+1))`
-/

namespace A257519.P17377315546734816565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 (n + 2) - A118759 (A036647 (n + 1)).toNat

end

end A257519.P17377315546734816565

/-!
# A257520: Number of factorizations of m^2 into 2 factors, where m is a product of exactly n distinct primes and each factor is a product of n primes (counted with multiplicity).

The programs for A257520, the canonical program `A257520.P11881127439333961031` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257520 has offset 0).

The definition of A257520 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257520.P11881127439333961031

`A097861(n)+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A257520

/-- `A097861(n)+1` -/
def P11881127439333961031.Spec : Prop :=
  ∀ n, P11881127439333961031.a n = A257520 n

theorem P11881127439333961031.correct : P11881127439333961031.Spec := by
  intro n
  simp only [A257520]

end A257520

/-! ## A257520.P1243876048979903715

`(A002426(n)+1)/2`
-/

namespace A257520.P1243876048979903715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002426 n + 1 : ℚ) / 2

end

end A257520.P1243876048979903715

namespace A257520

/-- `(A002426(n)+1)/2` -/
def P1243876048979903715.Spec : Prop :=
  ∀ n, P1243876048979903715.a n = (A257520 n : ℚ)

end A257520

/-! ## A257520.P16026893750253522824

`1+A005773(n)-a(n-1)` with `a(0)=1`
-/

namespace A257520.P16026893750253522824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 + A005773 n - a (n - 1)

end

end A257520.P16026893750253522824

namespace A257520

/-- `1+A005773(n)-a(n-1)` -/
def P16026893750253522824.Spec : Prop :=
  ∀ n, P16026893750253522824.a n = A257520 n

end A257520

/-! ## A257520.P11379860195614809491

`A246437(n)+A000035(n)`
-/

namespace A257520.P11379860195614809491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246437 n + A000035 n

end

end A257520.P11379860195614809491

namespace A257520

/-- `A246437(n)+A000035(n)` -/
def P11379860195614809491.Spec : Prop :=
  ∀ n, P11379860195614809491.a n = A257520 n

theorem P11379860195614809491.correct : P11379860195614809491.Spec := by
  intro n
  simp only [A257520, Nat.add_sub_cancel, A257520.P11379860195614809491.a, A257520.P11881127439333961031.a, A000035, A000035.P2023072528413494694.a, A097861, A097861.P10253467573463981684.a, A246437, A246437.P8274867833887097828.a, A002426, A002426.P18316219981098248731.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A257520

/-! ## A257520.P5236334889447598299

`1-A057428(n)*A097861(n)`
-/

namespace A257520.P5236334889447598299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057428 n * A097861 n

end

end A257520.P5236334889447598299

namespace A257520

/-- `1-A057428(n)*A097861(n)` -/
def P5236334889447598299.Spec : Prop :=
  ∀ n, P5236334889447598299.a n = A257520 n

end A257520

/-! ## A257520.P15961834888735850020

`A246437(n)+char[A114753(n+1)]`
-/

namespace A257520.P15961834888735850020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114753 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246437 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A257520.P15961834888735850020

namespace A257520

/-- `A246437(n)+char[A114753(n+1)]` -/
def P15961834888735850020.Spec : Prop :=
  ∀ n, P15961834888735850020.a n = A257520 n

end A257520

/-! ## A257520.P5157500561479737526

`A246437(n)+char[A030101(2*n+1)]`
-/

namespace A257520.P5157500561479737526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246437 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A257520.P5157500561479737526

namespace A257520

/-- `A246437(n)+char[A030101(2*n+1)]` -/
def P5157500561479737526.Spec : Prop :=
  ∀ n, P5157500561479737526.a n = A257520 n

end A257520

/-! ## A257520.P13046585422423855730

`ceil(A002426(n)/2)`
-/

namespace A257520.P13046585422423855730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002426 n : ℚ) / 2⌉

end

end A257520.P13046585422423855730

namespace A257520

/-- `ceil(A002426(n)/2)` -/
def P13046585422423855730.Spec : Prop :=
  ∀ n, P13046585422423855730.a n = A257520 n

end A257520

/-! ## A257520.P6425453598677661656

`A002426(n)-A097861(n)`
-/

namespace A257520.P6425453598677661656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n - A097861 n

end

end A257520.P6425453598677661656

namespace A257520

/-- `A002426(n)-A097861(n)` -/
def P6425453598677661656.Spec : Prop :=
  ∀ n, P6425453598677661656.a n = A257520 n

end A257520

/-! ## A257520.P12443713856825043897

`A002426(n)+A383527(n)-A097893(n)`
-/

namespace A257520.P12443713856825043897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n + (A383527 n - A097893 n)

end

end A257520.P12443713856825043897

namespace A257520

/-- `A002426(n)+A383527(n)-A097893(n)` -/
def P12443713856825043897.Spec : Prop :=
  ∀ n, P12443713856825043897.a n = A257520 n

end A257520

/-! ## A257520.P17839105074407241138

`A116410(n)+1-A124302(n)`
-/

namespace A257520.P17839105074407241138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116410 n + (1 - A124302 n)

end

end A257520.P17839105074407241138

namespace A257520

/-- `A116410(n)+1-A124302(n)` -/
def P17839105074407241138.Spec : Prop :=
  ∀ n, P17839105074407241138.a n = A257520 n

theorem P17839105074407241138.correct : P17839105074407241138.Spec := by
  intro n
  simp only [A257520, Nat.add_sub_cancel, A257520.P17839105074407241138.a, A257520.P11881127439333961031.a, A097861, A097861.P10253467573463981684.a, A116410, A116410.P11469624891977256019.a, A124302, A124302.P7197067930557024172.a, A002426, A002426.P18316219981098248731.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A257520

/-! ## A257520.P1601310342611679390

`A005773(n+1)+A247287(n)-A247287(n+1)`
-/

namespace A257520.P1601310342611679390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) + (A247287 n - A247287 (n + 1))

end

end A257520.P1601310342611679390

namespace A257520

/-- `A005773(n+1)+A247287(n)-A247287(n+1)` -/
def P1601310342611679390.Spec : Prop :=
  ∀ n, P1601310342611679390.a n = A257520 n

end A257520

/-! ## A257520.P3945081431036481159

`A005773(n+1)+A383527(n+1)-A097893(n+1)`
-/

namespace A257520.P3945081431036481159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 1) + (A383527 (n + 1) - A097893 (n + 1))

end

end A257520.P3945081431036481159

namespace A257520

/-- `A005773(n+1)+A383527(n+1)-A097893(n+1)` -/
def P3945081431036481159.Spec : Prop :=
  ∀ n, P3945081431036481159.a n = A257520 n

end A257520

/-! ## A257520.P18154521590224819195

`A027914(n)-A003462(n)`
-/

namespace A257520.P18154521590224819195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 n - A003462 n

end

end A257520.P18154521590224819195

namespace A257520

/-- `A027914(n)-A003462(n)` -/
def P18154521590224819195.Spec : Prop :=
  ∀ n, P18154521590224819195.a n = A257520 n

end A257520

/-! ## A257520.P4731386355982349421

`A027914(n)+1-A007051(n)`
-/

namespace A257520.P4731386355982349421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027914 n + (1 - A007051 n)

end

end A257520.P4731386355982349421

namespace A257520

/-- `A027914(n)+1-A007051(n)` -/
def P4731386355982349421.Spec : Prop :=
  ∀ n, P4731386355982349421.a n = A257520 n

end A257520

/-! ## A257520.P965693453525265527

`A123183(n+1)+A116410(n)+1`
-/

namespace A257520.P965693453525265527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123183 (n + 1) + (A116410 n + 1)

end

end A257520.P965693453525265527

namespace A257520

/-- `A123183(n+1)+A116410(n)+1` -/
def P965693453525265527.Spec : Prop :=
  ∀ n, P965693453525265527.a n = A257520 n

end A257520

/-! ## A257520.P8765180787657262257

`∑{#}[n, (-1)^(n-#)*C(n, #)*A005317(#)]`
-/

namespace A257520.P8765180787657262257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A005317 k : ℚ)

end

end A257520.P8765180787657262257

namespace A257520

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A005317(#)]` -/
def P8765180787657262257.Spec : Prop :=
  ∀ n, P8765180787657262257.a n = (A257520 n : ℚ)

end A257520

/-!
# A257521: Odd Brazilian numbers.

The programs for A257521, there is no canonical definition to state claims against.
-/

/-! ## A257521.P3314900973737308049

`lt[A059711(n)+1, n*and(1, n)]`
-/

namespace A257521.P3314900973737308049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059711 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A257521.P3314900973737308049

/-! ## A257521.P2660493378688486018

`eq[char[A220570(n+1)], A027656(n)]`
-/

namespace A257521.P2660493378688486018
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A257521.P2660493378688486018

/-! ## A257521.P13496745672513062054

`lt[char[A220570(n+1)], A000035(n)]`
-/

namespace A257521.P13496745672513062054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A257521.P13496745672513062054

/-! ## A257521.P16231603650120464617

`lt[char[A220570(n+1)], A062157(n)]`
-/

namespace A257521.P16231603650120464617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A257521.P16231603650120464617

/-! ## A257521.P760879939447463093

`eq[char[A220570(n+1)], A193356(n+1)]`
-/

namespace A257521.P760879939447463093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A257521.P760879939447463093

/-! ## A257521.P8293568981732043559

`lt[A027656(n), A220136(A028310(n))]`
-/

namespace A257521.P8293568981732043559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257521.P8293568981732043559

/-! ## A257521.P10148438935893723663

`lt[A027656(n), A220136(A027656(n)+n)]`
-/

namespace A257521.P10148438935893723663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (A027656 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257521.P10148438935893723663

/-! ## A257521.P2114330403554776418

`eq[char[A220570(n+1)], A077957(n)]`
-/

namespace A257521.P2114330403554776418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A257521.P2114330403554776418

/-! ## A257521.P7468533988218457796

`eq[char[A220570(n+1)], A077966(n)]`
-/

namespace A257521.P7468533988218457796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077966 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A257521.P7468533988218457796

/-! ## A257521.P7613639895222154681

`lt[A072345(A059711(n)+1), A072345(n)]`
-/

namespace A257521.P7613639895222154681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072345 (A059711 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072345 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257521.P7613639895222154681

/-! ## A257521.P9163452581289856058

`lt[A000051(A059711(n)), A072345(n)]`
-/

namespace A257521.P9163452581289856058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A059711 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072345 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A257521.P9163452581289856058

/-!
# A257522: Table T(i,j) = denominator of (1/i + 1/j) = i*j/gcd(i*j,i+j) read by antidiagonals (i >= 1, j >= 1).

The programs for A257522, the canonical program `A257522.P1857815431269029601` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257522 has offset 1).

The definition of A257522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257522.P1857815431269029601

`A003991(n+1)/gcd(A003991(n+1), A141387(n))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A257522

/-- `A003991(n+1)/gcd(A003991(n+1), A141387(n))` -/
def P1857815431269029601.Spec : Prop :=
  ∀ n, P1857815431269029601.a n = (A257522 (n + 1) : ℚ)

end A257522

/-! ## A257522.P2261172196256201615

`A003506(n+1)/gcd(A003506(n+1), A014410(n+2))`
-/

namespace A257522.P2261172196256201615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003506 (n + 1) : ℚ) / (Int.gcd (A003506 (n + 1)) (A014410 (n + 2)) : ℚ)

end

end A257522.P2261172196256201615

namespace A257522

/-- `A003506(n+1)/gcd(A003506(n+1), A014410(n+2))` -/
def P2261172196256201615.Spec : Prop :=
  ∀ n, P2261172196256201615.a n = (A257522 (n + 1) : ℚ)

end A257522

/-! ## A257522.P8218837915102352940

`A003991(n+1)/gcd(A003057(n+2), A055096(n+2))`
-/

namespace A257522.P8218837915102352940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) : ℚ) / (Int.gcd (A003057 (n + 2)) (A055096 (n + 2)) : ℚ)

end

end A257522.P8218837915102352940

namespace A257522

/-- `A003991(n+1)/gcd(A003057(n+2), A055096(n+2))` -/
def P8218837915102352940.Spec : Prop :=
  ∀ n, P8218837915102352940.a n = (A257522 (n + 1) : ℚ)

end A257522

/-! ## A257522.P10403355888743401866

`A003991(n+1)/A245717(A014132(n+1))`
-/

namespace A257522.P10403355888743401866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) : ℚ) / (A245717 (A014132 (n + 1)).toNat : ℚ)

end

end A257522.P10403355888743401866

namespace A257522

/-- `A003991(n+1)/A245717(A014132(n+1))` -/
def P10403355888743401866.Spec : Prop :=
  ∀ n, P10403355888743401866.a n = (A257522 (n + 1) : ℚ)

end A257522

/-! ## A257522.P13440998822849525362

`A318574(A073060(n))`
-/

namespace A257522.P13440998822849525362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318574 (A073060 n).toNat

end

end A257522.P13440998822849525362

namespace A257522

/-- `A318574(A073060(n))` -/
def P13440998822849525362.Spec : Prop :=
  ∀ n, P13440998822849525362.a n = A257522 (n + 1)

end A257522

/-! ## A257522.P11204337063192819677

`A318574(A098350(n+1))`
-/

namespace A257522.P11204337063192819677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318574 (A098350 (n + 1)).toNat

end

end A257522.P11204337063192819677

namespace A257522

/-- `A318574(A098350(n+1))` -/
def P11204337063192819677.Spec : Prop :=
  ∀ n, P11204337063192819677.a n = A257522 (n + 1)

end A257522

/-! ## A257522.P15925522066512707412

`A346010(A036561(n))`
-/

namespace A257522.P15925522066512707412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346010 (A036561 n).toNat

end

end A257522.P15925522066512707412

namespace A257522

/-- `A346010(A036561(n))` -/
def P15925522066512707412.Spec : Prop :=
  ∀ n, P15925522066512707412.a n = A257522 (n + 1)

end A257522

/-! ## A257522.P18146971508212484793

`A346010(A082234(n+1))`
-/

namespace A257522.P18146971508212484793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346010 (A082234 (n + 1)).toNat

end

end A257522.P18146971508212484793

namespace A257522

/-- `A346010(A082234(n+1))` -/
def P18146971508212484793.Spec : Prop :=
  ∀ n, P18146971508212484793.a n = A257522 (n + 1)

end A257522

/-! ## A257522.P9414492632676505052

`A346010(A230445(n)+1)`
-/

namespace A257522.P9414492632676505052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346010 (A230445 n + 1).toNat

end

end A257522.P9414492632676505052

namespace A257522

/-- `A346010(A230445(n)+1)` -/
def P9414492632676505052.Spec : Prop :=
  ∀ n, P9414492632676505052.a n = A257522 (n + 1)

end A257522

/-! ## A257522.P16168603311473480860

`A346010(A175840(A061579(n)))`
-/

namespace A257522.P16168603311473480860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346010 (A175840 (A061579 n).toNat).toNat

end

end A257522.P16168603311473480860

namespace A257522

/-- `A346010(A175840(A061579(n)))` -/
def P16168603311473480860.Spec : Prop :=
  ∀ n, P16168603311473480860.a n = A257522 (n + 1)

end A257522

/-!
# A257523: Number T(n,k) of equivalence classes of ways of placing k 4 X 4 tiles in an n X 7 rectangle under all symmetry operations of the rectangle; irregular triangle T(n,k), n>=4, 0<=k<=floor(n/4), read by rows.

The programs for A257523, there is no canonical definition to state claims against.
-/

/-! ## A257523.P12528138922957121528

`A238552(n+4)+A083892(A081703(n+1))`
-/

namespace A257523.P12528138922957121528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238552 (n + 4) + A083892 (A081703 (n + 1)).toNat

end

end A257523.P12528138922957121528

/-! ## A257523.P14858609034797985120

`A342721(A288145(n+1))+A238552(n+4)`
-/

namespace A257523.P14858609034797985120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342721 (A288145 (n + 1)).toNat + A238552 (n + 4)

end

end A257523.P14858609034797985120

/-! ## A257523.P6395638318484608167

`C(A238552(n+4), A175632(A075804(3*n+4)))`
-/

namespace A257523.P6395638318484608167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A238552 (n + 4)).toNat (A175632 (A075804 (3 * n + 4)).toNat).toNat

end

end A257523.P6395638318484608167

/-!
# A257525: Composite numbers equal to the sum of the prime factors, with multiplicity, of the previous k numbers, for some k.

The programs for A257525, there is no canonical definition to state claims against.
-/

/-! ## A257525.P17843031842392065567

`filter[A257976(n+1), A005171(#)]`
-/

namespace A257525.P17843031842392065567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A257525.P17843031842392065567

/-! ## A257525.P4991910284675823350

`filter[A257976(n+1), A066247(#)]`
-/

namespace A257525.P4991910284675823350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A257525.P4991910284675823350

/-! ## A257525.P13290261081729986815

`filter[A257976(n+1), A202238(#)]`
-/

namespace A257525.P13290261081729986815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A257525.P13290261081729986815

/-! ## A257525.P12522666324403026415

`filter[A257976(n+1), A292438(#)]`
-/

namespace A257525.P12522666324403026415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A257525.P12522666324403026415

/-! ## A257525.P10114272758301313694

`filter[A257976(n+1), A323162(#)]`
-/

namespace A257525.P10114272758301313694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A257525.P10114272758301313694

/-!
# A257529: Prime numbers that have a pentagonal Voronoi cell in the Voronoi diagram of the Ulam prime spiral.

The programs for A257529, there is no canonical definition to state claims against.
-/

/-! ## A257529.P4841683907328793823

`p?[A067874(n+1)-A073855(A008837(n+1))]`
-/

namespace A257529.P4841683907328793823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067874 (n + 1) - A073855 (A008837 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A257529.P4841683907328793823

/-! ## A257529.P12995583184544763360

`p?[∑[gcd(7, A066706(n+1))]]`
-/

namespace A257529.P12995583184544763360
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (A066706 (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A257529.P12995583184544763360

/-! ## A257529.P282681939495868616

`p?[∑[A001221(A317293(n))]]`
-/

namespace A257529.P282681939495868616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A317293 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A257529.P282681939495868616

/-! ## A257529.P8616486912969583751

`p?[∑[A001222(A178995(n+4))]]`
-/

namespace A257529.P8616486912969583751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A178995 (n + 4)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A257529.P8616486912969583751

/-! ## A257529.P12369526026738317605

`A000040(lt[A321597(n+1), A335840(n+1)])`
-/

namespace A257529.P12369526026738317605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A257529.P12369526026738317605

/-!
# A257531: If 2^(n-1) mod n = 1, then 1 else 0.

The programs for A257531, the canonical program `A257531.P7062776360316150328` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257531 has offset 1).

The definition of A257531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257531.P1098647567765778067

`and(n+1, A278907(n))`
-/

namespace A257531.P1098647567765778067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A278907 n)

end

end A257531.P1098647567765778067

namespace A257531

/-- `and(n+1, A278907(n))` -/
def P1098647567765778067.Spec : Prop :=
  ∀ n, P1098647567765778067.a n = A257531 (n + 1)

end A257531

/-! ## A257531.P13929037923569816896

`char[A176997(n+2)-1]`
-/

namespace A257531.P13929037923569816896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176997 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A257531.P13929037923569816896

namespace A257531

/-- `char[A176997(n+2)-1]` -/
def P13929037923569816896.Spec : Prop :=
  ∀ n, (P13929037923569816896.a n : ℤ) = A257531 (n + 1)

end A257531

/-! ## A257531.P14613332870827807889

`char[A015919(n+3)-1]`
-/

namespace A257531.P14613332870827807889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 3) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A257531.P14613332870827807889

namespace A257531

/-- `char[A015919(n+3)-1]` -/
def P14613332870827807889.Spec : Prop :=
  ∀ n, (P14613332870827807889.a n : ℤ) = A257531 (n + 1)

end A257531

/-! ## A257531.P6215542511403850823

`char[2*A139791(n+1)]`
-/

namespace A257531.P6215542511403850823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A257531.P6215542511403850823

namespace A257531

/-- `char[2*A139791(n+1)]` -/
def P6215542511403850823.Spec : Prop :=
  ∀ n, (P6215542511403850823.a n : ℤ) = A257531 (n + 1)

end A257531

/-! ## A257531.P5383077905318891552

`char[eq[1, A062173(n+1)]]`
-/

namespace A257531.P5383077905318891552
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062173 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A257531.P5383077905318891552

namespace A257531

/-- `char[eq[1, A062173(n+1)]]` -/
def P5383077905318891552.Spec : Prop :=
  ∀ n, (P5383077905318891552.a n : ℤ) = A257531 (n + 1)

end A257531

/-! ## A257531.P7062776360316150328

`A063524(A062173(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A257531

/-- `A063524(A062173(n+1))` -/
def P7062776360316150328.Spec : Prop :=
  ∀ n, P7062776360316150328.a n = A257531 (n + 1)

theorem P7062776360316150328.correct : P7062776360316150328.Spec := by
  intro n
  simp only [A257531, Nat.add_sub_cancel]

end A257531

/-! ## A257531.P7615629402514778615

`A278907(n)%A040001(n)`
-/

namespace A257531.P7615629402514778615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278907 n) (A040001 n)

end

end A257531.P7615629402514778615

namespace A257531

/-- `A278907(n)%A040001(n)` -/
def P7615629402514778615.Spec : Prop :=
  ∀ n, P7615629402514778615.a n = A257531 (n + 1)

end A257531

/-! ## A257531.P14006709627242669193

`and(A016784(n), A278907(n))²`
-/

namespace A257531.P14006709627242669193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016784 n) (A278907 n) ^ 2

end

end A257531.P14006709627242669193

namespace A257531

/-- `and(A016784(n), A278907(n))²` -/
def P14006709627242669193.Spec : Prop :=
  ∀ n, P14006709627242669193.a n = A257531 (n + 1)

end A257531

/-! ## A257531.P5321256476053974507

`and(A016867(n), A278907(n))²`
-/

namespace A257531.P5321256476053974507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016867 n) (A278907 n) ^ 2

end

end A257531.P5321256476053974507

namespace A257531

/-- `and(A016867(n), A278907(n))²` -/
def P5321256476053974507.Spec : Prop :=
  ∀ n, P5321256476053974507.a n = A257531 (n + 1)

end A257531

/-! ## A257531.P18341328343906044346

`and(A016999(n), A278907(n))²`
-/

namespace A257531.P18341328343906044346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A016999 n) (A278907 n) ^ 2

end

end A257531.P18341328343906044346

namespace A257531

/-- `and(A016999(n), A278907(n))²` -/
def P18341328343906044346.Spec : Prop :=
  ∀ n, P18341328343906044346.a n = A257531 (n + 1)

end A257531

/-! ## A257531.P4799148557653148049

`and(A017047(n), A278907(n))²`
-/

namespace A257531.P4799148557653148049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017047 n) (A278907 n) ^ 2

end

end A257531.P4799148557653148049

namespace A257531

/-- `and(A017047(n), A278907(n))²` -/
def P4799148557653148049.Spec : Prop :=
  ∀ n, P4799148557653148049.a n = A257531 (n + 1)

end A257531

/-! ## A257531.P13755583562221595079

`and(A017406(n), A278907(n))²`
-/

namespace A257531.P13755583562221595079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017406 n) (A278907 n) ^ 2

end

end A257531.P13755583562221595079

namespace A257531

/-- `and(A017406(n), A278907(n))²` -/
def P13755583562221595079.Spec : Prop :=
  ∀ n, P13755583562221595079.a n = A257531 (n + 1)

end A257531

/-! ## A257531.P9855012953979437200

`and(A017430(n), A278907(n))²`
-/

namespace A257531.P9855012953979437200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017430 n) (A278907 n) ^ 2

end

end A257531.P9855012953979437200

namespace A257531

/-- `and(A017430(n), A278907(n))²` -/
def P9855012953979437200.Spec : Prop :=
  ∀ n, P9855012953979437200.a n = A257531 (n + 1)

end A257531

/-! ## A257531.P8703681612158682750

`and(A017454(n), A278907(n))²`
-/

namespace A257531.P8703681612158682750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017454 n) (A278907 n) ^ 2

end

end A257531.P8703681612158682750

namespace A257531

/-- `and(A017454(n), A278907(n))²` -/
def P8703681612158682750.Spec : Prop :=
  ∀ n, P8703681612158682750.a n = A257531 (n + 1)

end A257531

/-! ## A257531.P3464030550980050572

`and(A017478(n), A278907(n))²`
-/

namespace A257531.P3464030550980050572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017478 n) (A278907 n) ^ 2

end

end A257531.P3464030550980050572

namespace A257531

/-- `and(A017478(n), A278907(n))²` -/
def P3464030550980050572.Spec : Prop :=
  ∀ n, P3464030550980050572.a n = A257531 (n + 1)

end A257531

/-! ## A257531.P12992827562295733910

`and(A017502(n), A278907(n))²`
-/

namespace A257531.P12992827562295733910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017502 n) (A278907 n) ^ 2

end

end A257531.P12992827562295733910

namespace A257531

/-- `and(A017502(n), A278907(n))²` -/
def P12992827562295733910.Spec : Prop :=
  ∀ n, P12992827562295733910.a n = A257531 (n + 1)

end A257531

/-! ## A257531.P14136331579923959343

`and(A024008(n), A278907(n))²`
-/

namespace A257531.P14136331579923959343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A024008 n) (A278907 n) ^ 2

end

end A257531.P14136331579923959343

namespace A257531

/-- `and(A024008(n), A278907(n))²` -/
def P14136331579923959343.Spec : Prop :=
  ∀ n, P14136331579923959343.a n = A257531 (n + 1)

end A257531

/-! ## A257531.P3546083499134272832

`and(A024009(n), A278907(n))²`
-/

namespace A257531.P3546083499134272832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A024009 n) (A278907 n) ^ 2

end

end A257531.P3546083499134272832

namespace A257531

/-- `and(A024009(n), A278907(n))²` -/
def P3546083499134272832.Spec : Prop :=
  ∀ n, P3546083499134272832.a n = A257531 (n + 1)

end A257531

/-! ## A257531.P12726602224310683829

`and(A105067(n), A278907(n))²`
-/

namespace A257531.P12726602224310683829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105067 n) (A278907 n) ^ 2

end

end A257531.P12726602224310683829

namespace A257531

/-- `and(A105067(n), A278907(n))²` -/
def P12726602224310683829.Spec : Prop :=
  ∀ n, P12726602224310683829.a n = A257531 (n + 1)

end A257531

/-! ## A257531.P7869783579378207964

`char[eq[2, A015910(n+1)]]`
-/

namespace A257531.P7869783579378207964
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A257531.P7869783579378207964

namespace A257531

/-- `char[eq[2, A015910(n+1)]]` -/
def P7869783579378207964.Spec : Prop :=
  ∀ n, (P7869783579378207964.a n : ℤ) = A257531 (n + 1)

end A257531

/-! ## A257531.P12831864813189571349

`char[runs[p?[ceil(sqrt(2*n))]]]`
-/

namespace A257531.P12831864813189571349
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * n : ℝ)⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A257531.P12831864813189571349

namespace A257531

/-- `char[runs[p?[ceil(sqrt(2*n))]]]` -/
def P12831864813189571349.Spec : Prop :=
  ∀ n, (P12831864813189571349.a n : ℤ) = A257531 (n + 1)

end A257531

/-!
# A257532: Triangle, read by rows, T(n,k)=k/n*Sum_{i=0..n-k} C(2*n,n-k-i)*C(2*n+i-1,i).

The programs for A257532, there is no canonical definition to state claims against.
-/

/-! ## A257532.P15480147243813218069

`A359676(A142963(n+2))`
-/

namespace A257532.P15480147243813218069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359676 (A142963 (n + 2)).toNat

end

end A257532.P15480147243813218069

/-! ## A257532.P18289016854768358601

`A245011(A004736(n+1))*A298445(A135515(n+4))`
-/

namespace A257532.P18289016854768358601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245011 (A004736 (n + 1)).toNat * A298445 (A135515 (n + 4)).toNat

end

end A257532.P18289016854768358601

/-!
# A257533: Sum of the proper divisors of the n-th semiprime.

The programs for A257533, the canonical program `A257533.P4837027764855834530` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257533 has offset 1).

The definition of A257533 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083681, A088707, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A257533.P4837027764855834530

`A083681(n+1)-A088707(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A257533

/-- `A083681(n+1)-A088707(n+1)` -/
def P4837027764855834530.Spec : Prop :=
  ∀ n, P4837027764855834530.a n = A257533 (n + 1)

theorem P4837027764855834530.correct : P4837027764855834530.Spec := by
  intro n
  simp only [A257533, Nat.add_sub_cancel]

end A257533

/-! ## A257533.P15144808333942103152

`A048050(A001358(n+1))`
-/

namespace A257533.P15144808333942103152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (A001358 (n + 1)).toNat

end

end A257533.P15144808333942103152

namespace A257533

/-- `A048050(A001358(n+1))` -/
def P15144808333942103152.Spec : Prop :=
  ∀ n, P15144808333942103152.a n = A257533 (n + 1)

end A257533

/-! ## A257533.P1572325443246248933

`A083682(n+1)-1`
-/

namespace A257533.P1572325443246248933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083682 (n + 1) - 1

end

end A257533.P1572325443246248933

namespace A257533

/-- `A083682(n+1)-1` -/
def P1572325443246248933.Spec : Prop :=
  ∀ n, P1572325443246248933.a n = A257533 (n + 1)

end A257533

/-! ## A257533.P9048709348927451729

`∑{p}[A001358(n+1), #]`
-/

namespace A257533.P9048709348927451729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A257533.P9048709348927451729

namespace A257533

/-- `∑{p}[A001358(n+1), #]` -/
def P9048709348927451729.Spec : Prop :=
  ∀ n, (P9048709348927451729.a n : ℤ) = A257533 (n + 1)

end A257533

/-! ## A257533.P3164486106148052655

`∑{p}[1-A088707(n+1), #]`
-/

namespace A257533.P3164486106148052655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A088707 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A257533.P3164486106148052655

namespace A257533

/-- `∑{p}[1-A088707(n+1), #]` -/
def P3164486106148052655.Spec : Prop :=
  ∀ n, (P3164486106148052655.a n : ℤ) = A257533 (n + 1)

end A257533

/-! ## A257533.P29932723626097201

`∑{p}[A075818(n+1)/2, #]`
-/

namespace A257533.P29932723626097201
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075818 (n + 1) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A257533.P29932723626097201

namespace A257533

/-- `∑{p}[A075818(n+1)/2, #]` -/
def P29932723626097201.Spec : Prop :=
  ∀ n, (P29932723626097201.a n : ℤ) = A257533 (n + 1)

end A257533

/-! ## A257533.P17028602342251883777

`∑{p}[eq[2, A001222(n+1)]+1, #]`
-/

namespace A257533.P17028602342251883777
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A257533.P17028602342251883777

namespace A257533

/-- `∑{p}[eq[2, A001222(n+1)]+1, #]` -/
def P17028602342251883777.Spec : Prop :=
  ∀ n, (P17028602342251883777.a n : ℤ) = A257533 (n + 1)

end A257533

/-! ## A257533.P12964454439056293551

`∑{p}[A175708(n+1)+n+1, #]`
-/

namespace A257533.P12964454439056293551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175708 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A257533.P12964454439056293551

namespace A257533

/-- `∑{p}[A175708(n+1)+n+1, #]` -/
def P12964454439056293551.Spec : Prop :=
  ∀ n, (P12964454439056293551.a n : ℤ) = A257533 (n + 1)

end A257533

/-! ## A257533.P3252219211199932664

`∑{p}[∑[A065516(abs(1-n)+1)]+1, #]`
-/

namespace A257533.P3252219211199932664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065516 (|1 - (n : ℤ)| + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A257533.P3252219211199932664

namespace A257533

/-- `∑{p}[∑[A065516(abs(1-n)+1)]+1, #]` -/
def P3252219211199932664.Spec : Prop :=
  ∀ n, (P3252219211199932664.a n : ℤ) = A257533 (n + 1)

end A257533

/-! ## A257533.P644074044547562249

`A008472(A001358(n+1))`
-/

namespace A257533.P644074044547562249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A001358 (n + 1)).toNat

end

end A257533.P644074044547562249

namespace A257533

/-- `A008472(A001358(n+1))` -/
def P644074044547562249.Spec : Prop :=
  ∀ n, P644074044547562249.a n = A257533 (n + 1)

end A257533

/-! ## A257533.P10358749777102410368

`A008472(sqrt(A074985(n+1)))`
-/

namespace A257533.P10358749777102410368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

end

end A257533.P10358749777102410368

namespace A257533

/-- `A008472(sqrt(A074985(n+1)))` -/
def P10358749777102410368.Spec : Prop :=
  ∀ n, P10358749777102410368.a n = A257533 (n + 1)

end A257533

/-! ## A257533.P5954955120125702176

`A008472(eq[2, A001222(n+1)]+1)`
-/

namespace A257533.P5954955120125702176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A257533.P5954955120125702176

namespace A257533

/-- `A008472(eq[2, A001222(n+1)]+1)` -/
def P5954955120125702176.Spec : Prop :=
  ∀ n, P5954955120125702176.a n = A257533 (n + 1)

end A257533

/-! ## A257533.P7719776964650781745

`A083681(n+1)-(A001358(n+1)+1)`
-/

namespace A257533.P7719776964650781745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083681 (n + 1) - (A001358 (n + 1) + 1)

end

end A257533.P7719776964650781745

namespace A257533

/-- `A083681(n+1)-(A001358(n+1)+1)` -/
def P7719776964650781745.Spec : Prop :=
  ∀ n, P7719776964650781745.a n = A257533 (n + 1)

theorem P7719776964650781745.correct : P7719776964650781745.Spec := by
  intro n
  simp only [A257533, Nat.add_sub_cancel, A257533.P7719776964650781745.a, A257533.P4837027764855834530.a, A001358, A001358.P632087320844056370.a, A083681, A083681.P17881450193974693801.a, A088707, A088707.P7291141647877559993.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A100493, A100493.P3342029395979233194.f1, A100493.P3342029395979233194.a, A072000, A072000.P3706059858088101648.a, A056811, A056811.P3378557342044572151.a, A072613, A072613.P13158909735510187267.f1, A072613.P13158909735510187267.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A257533

/-! ## A257533.P10661904925501887791

`∑{p}[A084126(n+1)*A084127(n+1), #]`
-/

namespace A257533.P10661904925501887791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084126 (n + 1) * A084127 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A257533.P10661904925501887791

namespace A257533

/-- `∑{p}[A084126(n+1)*A084127(n+1), #]` -/
def P10661904925501887791.Spec : Prop :=
  ∀ n, (P10661904925501887791.a n : ℤ) = A257533 (n + 1)

end A257533

/-! ## A257533.P16018644904739151142

`A000203(A001358(n+1))-A088707(n+1)`
-/

namespace A257533.P16018644904739151142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A001358 (n + 1)).toNat - A088707 (n + 1)

end

end A257533.P16018644904739151142

namespace A257533

/-- `A000203(A001358(n+1))-A088707(n+1)` -/
def P16018644904739151142.Spec : Prop :=
  ∀ n, P16018644904739151142.a n = A257533 (n + 1)

end A257533

/-! ## A257533.P8539288889283105262

`A000203(A088707(n+1)-1)-A088707(n+1)`
-/

namespace A257533.P8539288889283105262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A088707 (n + 1) - 1).toNat - A088707 (n + 1)

end

end A257533.P8539288889283105262

namespace A257533

/-- `A000203(A088707(n+1)-1)-A088707(n+1)` -/
def P8539288889283105262.Spec : Prop :=
  ∀ n, P8539288889283105262.a n = A257533 (n + 1)

end A257533

/-! ## A257533.P8606783902185584717

`A000203(A075818(n+1)/2)%A088707(n+1)`
-/

namespace A257533.P8606783902185584717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (SequenceMachineLib.roundAway ((A075818 (n + 1) : ℚ) / 2)).toNat) (A088707 (n + 1))

end

end A257533.P8606783902185584717

namespace A257533

/-- `A000203(A075818(n+1)/2)%A088707(n+1)` -/
def P8606783902185584717.Spec : Prop :=
  ∀ n, P8606783902185584717.a n = A257533 (n + 1)

end A257533

/-! ## A257533.P11631251968862463030

`∑{p}[A176540(n+2), #]`
-/

namespace A257533.P11631251968862463030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A257533.P11631251968862463030

namespace A257533

/-- `∑{p}[A176540(n+2), #]` -/
def P11631251968862463030.Spec : Prop :=
  ∀ n, (P11631251968862463030.a n : ℤ) = A257533 (n + 1)

end A257533

/-! ## A257533.P17631843714868233133

`A008472(A176540(n+2))`
-/

namespace A257533.P17631843714868233133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A176540 (n + 2)).toNat

end

end A257533.P17631843714868233133

namespace A257533

/-- `A008472(A176540(n+2))` -/
def P17631843714868233133.Spec : Prop :=
  ∀ n, P17631843714868233133.a n = A257533 (n + 1)

end A257533

/-! ## A257533.P11773613597951153003

`A023443(A083682(n+1))`
-/

namespace A257533.P11773613597951153003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A083682 (n + 1)).toNat

end

end A257533.P11773613597951153003

namespace A257533

/-- `A023443(A083682(n+1))` -/
def P11773613597951153003.Spec : Prop :=
  ∀ n, P11773613597951153003.a n = A257533 (n + 1)

end A257533

/-!
# A257536: Expansion of phi(-x^4)^2 * f(-x^1, -x^5) in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A257536, there is no canonical definition to state claims against.
-/

/-! ## A257536.P12217791989028132029

`A257873(2*n)`
-/

namespace A257536.P12217791989028132029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257873 (2 * n)

end

end A257536.P12217791989028132029

/-! ## A257536.P12558853794726772202

`or(A000007(n), A257873(A005843(n)))`
-/

namespace A257536.P12558853794726772202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A257873 (A005843 n).toNat)

end

end A257536.P12558853794726772202

/-! ## A257536.P16206869185224689155

`A116597(3*n+1)/2`
-/

namespace A257536.P16206869185224689155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116597 (3 * n + 1) : ℚ) / 2

end

end A257536.P16206869185224689155

/-! ## A257536.P16848312418286079166

`A127786(6*n+2)/2`
-/

namespace A257536.P16848312418286079166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127786 (6 * n + 2) : ℚ) / 2

end

end A257536.P16848312418286079166

/-! ## A257536.P4627875642500016254

`A080963(12*n+4)/2`
-/

namespace A257536.P4627875642500016254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080963 (12 * n + 4) : ℚ) / 2

end

end A257536.P4627875642500016254

/-!
# A257537: Number of subtrees with at least one edge of the rooted tree with Matula-Goebel number n.

The programs for A257537, there is no canonical definition to state claims against.
-/

/-! ## A257537.P10314235428774792947

`A184161(n+1)-A061775(n+1)`
-/

namespace A257537.P10314235428774792947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184161 (n + 1) - A061775 (n + 1)

end

end A257537.P10314235428774792947

/-! ## A257537.P5567246797928327503

`A184161(n+1)-(A196050(n+1)+1)`
-/

namespace A257537.P5567246797928327503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184161 (n + 1) - (A196050 (n + 1) + 1)

end

end A257537.P5567246797928327503

/-! ## A257537.P15568310823981673584

`A184161(n+1)-∑{e}[A324922(2*(n+1)), #]`
-/

namespace A257537.P15568310823981673584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324922 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184161 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A257537.P15568310823981673584

/-! ## A257537.P13178106510721492868

`A184161(n+1)-A196050(Δ[A007504(n)])`
-/

namespace A257537.P13178106510721492868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184161 (n + 1) - A196050 (f1 (n + 1) - f1 n).toNat

end

end A257537.P13178106510721492868

/-! ## A257537.P7024536248203348156

`A184161(n+1)-A196050(p?[A259153(n)])`
-/

namespace A257537.P7024536248203348156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184161 (n + 1) - A196050 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A257537.P7024536248203348156

/-! ## A257537.P13266429441179098247

`A184161(n+1)-A005496(A196050(n+1))`
-/

namespace A257537.P13266429441179098247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184161 (n + 1) - A005496 (A196050 (n + 1)).toNat

end

end A257537.P13266429441179098247

/-! ## A257537.P16601610452167269595

`A023443(A184161(n+1)-A196050(n+1))`
-/

namespace A257537.P16601610452167269595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A184161 (n + 1) - A196050 (n + 1)).toNat

end

end A257537.P16601610452167269595

/-! ## A257537.P6059202390639825579

`A184161(n+1)-A196050(A317440(n+1))`
-/

namespace A257537.P6059202390639825579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184161 (n + 1) - A196050 (A317440 (n + 1)).toNat

end

end A257537.P6059202390639825579

/-! ## A257537.P6196200953894166372

`A184161(n+1)-(A001222(A324922(n+1))+1)`
-/

namespace A257537.P6196200953894166372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184161 (n + 1) - (A001222 (A324922 (n + 1)).toNat + 1)

end

end A257537.P6196200953894166372

/-!
# A257538: The Matula number of the rooted tree obtained from the rooted tree T having Matula number n by replacing each edge of T with a path of length 2.

The programs for A257538, there is no canonical definition to state claims against.
-/

/-! ## A257538.P14687643345299058756

`A000040(A000040(a(A055396(n+1)-1)))*a(A032742(n+1)-1)` with `a(0)=1`
-/

namespace A257538.P14687643345299058756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (A000040 (a (A055396 (n + 1) - 1).toNat).toNat).toNat * a (A032742 (n + 1) - 1).toNat

end

end A257538.P14687643345299058756

/-!
# A257539: The smallest of the Matula numbers of the rooted trees that are isomorphic as trees to the rooted tree with Matula number n.

The programs for A257539, there is no canonical definition to state claims against.
-/

/-! ## A257539.P4310009365133851686

`A235121(∑[A235122(n+1)]-A235122(n+1)+1)`
-/

namespace A257539.P4310009365133851686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235122 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235121 (∑ j ∈ Finset.range (n + 1), f1 j - A235122 (n + 1) + 1).toNat

end

end A257539.P4310009365133851686

/-!
# A257540: Irregular triangle read by rows: row n (n>=2) contains the degrees of the level 1 vertices of the rooted tree having Matula-Goebel number n; row 1: 0.

The programs for A257540, there is no canonical definition to state claims against.
-/

/-! ## A257540.P12277232122757640269

`A196052(A027746(n+1))`
-/

namespace A257540.P12277232122757640269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196052 (A027746 (n + 1)).toNat

end

end A257540.P12277232122757640269

/-! ## A257540.P13290858026743065738

`∑{e}[A056239(A027746(n+1)²), #]`
-/

namespace A257540.P13290858026743065738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A027746 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A257540.P13290858026743065738

/-! ## A257540.P12009481075773847736

`∑{e}[A302039(A027746(n+1)²), #]`
-/

namespace A257540.P12009481075773847736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302039 (A027746 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A257540.P12009481075773847736

/-! ## A257540.P9313086362037093469

`A001222(A087712(A027746(n+1)²))`
-/

namespace A257540.P9313086362037093469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A087712 (A027746 (n + 1) ^ 2).toNat).toNat

end

end A257540.P9313086362037093469

/-! ## A257540.P4227386468093893715

`A302242(A027746(n+1))+A057427(n)`
-/

namespace A257540.P4227386468093893715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A027746 (n + 1)).toNat + A057427 n

end

end A257540.P4227386468093893715

/-! ## A257540.P11066801515564635867

`∑{d}[A006530(A265110(n+1)), A196052(#)]`
-/

namespace A257540.P11066801515564635867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A265110 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A196052 d

end

end A257540.P11066801515564635867

/-! ## A257540.P878325848948565528

`A001222(∏{d}[A027746(n+1), A073898(#)])`
-/

namespace A257540.P878325848948565528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ d ∈ Nat.divisors (f1 n).natAbs, A073898 d).toNat

end

end A257540.P878325848948565528

/-! ## A257540.P4433605683910016198

`∑{p}[A027746(n+1), A073093(A000720(#))]`
-/

namespace A257540.P4433605683910016198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A073093 (A000720 p).toNat

end

end A257540.P4433605683910016198

/-! ## A257540.P9885920355750400984

`∑{p}[A027746(n+1), A073093(A056239(#))]`
-/

namespace A257540.P9885920355750400984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A073093 (A056239 p).toNat

end

end A257540.P9885920355750400984

/-! ## A257540.P8410982209597703253

`∑{p}[A027746(n+1), A073093(A065770(#))]`
-/

namespace A257540.P8410982209597703253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A073093 (A065770 p).toNat

end

end A257540.P8410982209597703253

/-!
# A257541: The rank of the partition with Heinz number n.

The programs for A257541, the canonical program `A257541.P8288380593275451200` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257541 has offset 2).

The definition of A257541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257541.P8288380593275451200

`A061395(n+2)-∑{e}[n+2, #]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A257541

/-- `A061395(n+2)-∑{e}[n+2, #]` -/
def P8288380593275451200.Spec : Prop :=
  ∀ n, P8288380593275451200.a n = A257541 (n + 2)

theorem P8288380593275451200.correct : P8288380593275451200.Spec := by
  intro n
  simp only [A257541, Nat.add_sub_cancel]

end A257541

/-! ## A257541.P4713249618781932403

`A061395(n+2)-A001222(n+2)`
-/

namespace A257541.P4713249618781932403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 2) - A001222 (n + 2)

end

end A257541.P4713249618781932403

namespace A257541

/-- `A061395(n+2)-A001222(n+2)` -/
def P4713249618781932403.Spec : Prop :=
  ∀ n, P4713249618781932403.a n = A257541 (n + 2)

theorem P4713249618781932403.correct : P4713249618781932403.Spec := by
  intro n
  simp only [A257541, Nat.add_sub_cancel, A257541.P4713249618781932403.a, A257541.P8288380593275451200.f1, A257541.P8288380593275451200.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A061395, A061395.P8431317036300486107.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A297108, A297108.P15990807296291497671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A257541

/-! ## A257541.P2999342711566579950

`A061395(n+2)-A086436(n+2)`
-/

namespace A257541.P2999342711566579950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 2) - A086436 (n + 2)

end

end A257541.P2999342711566579950

namespace A257541

/-- `A061395(n+2)-A086436(n+2)` -/
def P2999342711566579950.Spec : Prop :=
  ∀ n, P2999342711566579950.a n = A257541 (n + 2)

end A257541

/-! ## A257541.P10308348119817537706

`A252735(n+2)-A252736(n+2)`
-/

namespace A257541.P10308348119817537706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (n + 2) - A252736 (n + 2)

end

end A257541.P10308348119817537706

namespace A257541

/-- `A252735(n+2)-A252736(n+2)` -/
def P10308348119817537706.Spec : Prop :=
  ∀ n, P10308348119817537706.a n = A257541 (n + 2)

end A257541

/-! ## A257541.P12997169792004616502

`A318995(n+2)-A334201(n+2)`
-/

namespace A257541.P12997169792004616502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (n + 2) - A334201 (n + 2)

end

end A257541.P12997169792004616502

namespace A257541

/-- `A318995(n+2)-A334201(n+2)` -/
def P12997169792004616502.Spec : Prop :=
  ∀ n, P12997169792004616502.a n = A257541 (n + 2)

theorem P12997169792004616502.correct : P12997169792004616502.Spec := by
  intro n
  simp only [A257541, Nat.add_sub_cancel, A257541.P12997169792004616502.a, A257541.P8288380593275451200.f1, A257541.P8288380593275451200.a, A061395, A061395.P8431317036300486107.a, A318995, A318995.P10479870511311284550.f1, A318995.P10479870511311284550.a, A334201, A334201.P4094470148935734367.a, A029837, A029837.P1050578713049589.a, A056239, A056239.P11316688788989965672.a, A087207, A087207.P12536008426233777954.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A048896, A048896.P6461019053085857547.a, A297108, A297108.P15990807296291497671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A257541

/-! ## A257541.P8017685442575592291

`A061395(n+2)-Δ[A022559(n+1)]`
-/

namespace A257541.P8017685442575592291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 2) - (f1 (n + 1) - f1 n)

end

end A257541.P8017685442575592291

namespace A257541

/-- `A061395(n+2)-Δ[A022559(n+1)]` -/
def P8017685442575592291.Spec : Prop :=
  ∀ n, P8017685442575592291.a n = A257541 (n + 2)

end A257541

/-! ## A257541.P865596475223469671

`A252735(n+2)+1-A001222(n+2)`
-/

namespace A257541.P865596475223469671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (n + 2) + (1 - A001222 (n + 2))

end

end A257541.P865596475223469671

namespace A257541

/-- `A252735(n+2)+1-A001222(n+2)` -/
def P865596475223469671.Spec : Prop :=
  ∀ n, P865596475223469671.a n = A257541 (n + 2)

end A257541

/-! ## A257541.P15667917725974724311

`A252735(n+2)+2-A073093(n+2)`
-/

namespace A257541.P15667917725974724311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (n + 2) + (2 - A073093 (n + 2))

end

end A257541.P15667917725974724311

namespace A257541

/-- `A252735(n+2)+2-A073093(n+2)` -/
def P15667917725974724311.Spec : Prop :=
  ∀ n, P15667917725974724311.a n = A257541 (n + 2)

end A257541

/-! ## A257541.P6173778134131589061

`A000720(A006530(n+2))-A001222(n+2)`
-/

namespace A257541.P6173778134131589061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006530 (n + 2)).toNat - A001222 (n + 2)

end

end A257541.P6173778134131589061

namespace A257541

/-- `A000720(A006530(n+2))-A001222(n+2)` -/
def P6173778134131589061.Spec : Prop :=
  ∀ n, P6173778134131589061.a n = A257541 (n + 2)

end A257541

/-! ## A257541.P14776656498910200556

`A061395(n+2)-A056239(A105560(n+2))`
-/

namespace A257541.P14776656498910200556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 2) - A056239 (A105560 (n + 2)).toNat

end

end A257541.P14776656498910200556

namespace A257541

/-- `A061395(n+2)-A056239(A105560(n+2))` -/
def P14776656498910200556.Spec : Prop :=
  ∀ n, P14776656498910200556.a n = A257541 (n + 2)

end A257541

/-! ## A257541.P16627644700767434209

`A061395(n+2)-A056239(A181819(n+2))`
-/

namespace A257541.P16627644700767434209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 2) - A056239 (A181819 (n + 2)).toNat

end

end A257541.P16627644700767434209

namespace A257541

/-- `A061395(n+2)-A056239(A181819(n+2))` -/
def P16627644700767434209.Spec : Prop :=
  ∀ n, P16627644700767434209.a n = A257541 (n + 2)

end A257541

/-! ## A257541.P17141928795406222177

`A061395(n+2)-A263297(A046523(n+2))`
-/

namespace A257541.P17141928795406222177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 2) - A263297 (A046523 (n + 2)).toNat

end

end A257541.P17141928795406222177

namespace A257541

/-- `A061395(n+2)-A263297(A046523(n+2))` -/
def P17141928795406222177.Spec : Prop :=
  ∀ n, P17141928795406222177.a n = A257541 (n + 2)

end A257541

/-! ## A257541.P8532289958281159746

`A061395(n+2)-A252464(A061142(n+2))`
-/

namespace A257541.P8532289958281159746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 2) - A252464 (A061142 (n + 2)).toNat

end

end A257541.P8532289958281159746

namespace A257541

/-- `A061395(n+2)-A252464(A061142(n+2))` -/
def P8532289958281159746.Spec : Prop :=
  ∀ n, P8532289958281159746.a n = A257541 (n + 2)

end A257541

/-! ## A257541.P2670937987622144615

`A061395(n+2)-A048675(A293442(n+2))`
-/

namespace A257541.P2670937987622144615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 2) - A048675 (A293442 (n + 2)).toNat

end

end A257541.P2670937987622144615

namespace A257541

/-- `A061395(n+2)-A048675(A293442(n+2))` -/
def P2670937987622144615.Spec : Prop :=
  ∀ n, P2670937987622144615.a n = A257541 (n + 2)

end A257541

/-! ## A257541.P15742986281475982873

`A318995(n+2)-A056239(A052126(n+2))`
-/

namespace A257541.P15742986281475982873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (n + 2) - A056239 (A052126 (n + 2)).toNat

end

end A257541.P15742986281475982873

namespace A257541

/-- `A318995(n+2)-A056239(A052126(n+2))` -/
def P15742986281475982873.Spec : Prop :=
  ∀ n, P15742986281475982873.a n = A257541 (n + 2)

end A257541

/-! ## A257541.P626321842532206531

`A061395(n+2)-A061395(A329607(n+2))`
-/

namespace A257541.P626321842532206531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 2) - A061395 (A329607 (n + 2)).toNat

end

end A257541.P626321842532206531

namespace A257541

/-- `A061395(n+2)-A061395(A329607(n+2))` -/
def P626321842532206531.Spec : Prop :=
  ∀ n, P626321842532206531.a n = A257541 (n + 2)

end A257541

/-! ## A257541.P15168992700462631846

`A252735(n+2)-A252735(A105560(n+2))`
-/

namespace A257541.P15168992700462631846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (n + 2) - A252735 (A105560 (n + 2)).toNat

end

end A257541.P15168992700462631846

namespace A257541

/-- `A252735(n+2)-A252735(A105560(n+2))` -/
def P15168992700462631846.Spec : Prop :=
  ∀ n, P15168992700462631846.a n = A257541 (n + 2)

end A257541

/-! ## A257541.P16772682098532495107

`A061395(n+2)-A061395(A105560(n+2)²)`
-/

namespace A257541.P16772682098532495107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 2) - A061395 (A105560 (n + 2) ^ 2).toNat

end

end A257541.P16772682098532495107

namespace A257541

/-- `A061395(n+2)-A061395(A105560(n+2)²)` -/
def P16772682098532495107.Spec : Prop :=
  ∀ n, P16772682098532495107.a n = A257541 (n + 2)

end A257541

/-! ## A257541.P17824462845588466649

`A285725(n+2)+A000035(n)-A252736(n+2)`
-/

namespace A257541.P17824462845588466649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285725 (n + 2) + (A000035 n - A252736 (n + 2))

end

end A257541.P17824462845588466649

namespace A257541

/-- `A285725(n+2)+A000035(n)-A252736(n+2)` -/
def P17824462845588466649.Spec : Prop :=
  ∀ n, P17824462845588466649.a n = A257541 (n + 2)

end A257541

/-! ## A257541.P10813577871769072672

`A001221(n+2)+A079067(n+2)-A001222(n+2)`
-/

namespace A257541.P10813577871769072672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 2) + (A079067 (n + 2) - A001222 (n + 2))

end

end A257541.P10813577871769072672

namespace A257541

/-- `A001221(n+2)+A079067(n+2)-A001222(n+2)` -/
def P10813577871769072672.Spec : Prop :=
  ∀ n, P10813577871769072672.a n = A257541 (n + 2)

end A257541

/-!
# A257542: Square-sum pairs: Numbers n such that 0,1, ..., 2n-1 can be partitioned into n pairs, where each pair adds up to a perfect square.

The programs for A257542, the canonical program `A257542.P2772783324125058978` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257542 has offset 1).

The definition of A257542 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257542.P2772783324125058978

`ogf((1+2x-2x^2+x^3-x^4)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A257542

/-- `ogf((1+2x-2x^2+x^3-x^4)/(1-2x+x^2))` -/
def P2772783324125058978.Spec : Prop :=
  ∀ n, P2772783324125058978.a n = A257542 (n + 1)

theorem P2772783324125058978.correct : P2772783324125058978.Spec := by
  intro n
  simp only [A257542, Nat.add_sub_cancel]

end A257542

/-!
# A257543: Expansion of 1 / (1 - x^5 - x^8 + x^9) in powers of x.

The programs for A257543, the canonical program `A257543.P13285884327075253749` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257543 has offset 0).

The definition of A257543 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^5-x^8+x^9))` (program `A257543.P13285884327075253749`, by `A257543.P13285884327075253749.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A257543.P8593952490884234752

`a(n-5)+a(n-8)-a(n-9)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=1, a(6)=0, a(7)=0, a(8)=1`
-/

namespace A257543.P8593952490884234752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 0, 1, 0, 0, 1] fun n a =>
  a (n - 5) + a (n - 8) - a (n - 9)

end

end A257543.P8593952490884234752

namespace A257543

/-- `a(n-5)+a(n-8)-a(n-9)` -/
def P8593952490884234752.Spec : Prop :=
  ∀ n, P8593952490884234752.a n = A257543 n

end A257543

/-! ## A257543.P13285884327075253749

`ogf(1/(1-x^5-x^8+x^9))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A257543

/-- `ogf(1/(1-x^5-x^8+x^9))` -/
def P13285884327075253749.Spec : Prop :=
  ∀ n, P13285884327075253749.a n = A257543 n

theorem P13285884327075253749.correct : P13285884327075253749.Spec := by
  intro n
  simp only [A257543]

end A257543

/-! ## A257543.P7703709250754366783

`A247918(n)-a(n-1)` with `a(0)=1`
-/

namespace A257543.P7703709250754366783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A247918 n - a (n - 1)

end

end A257543.P7703709250754366783

namespace A257543

/-- `A247918(n)-a(n-1)` -/
def P7703709250754366783.Spec : Prop :=
  ∀ n, P7703709250754366783.a n = A257543 n

end A257543

/-!
# A257544: Expansion of e.g.f. 1/(1 - x/(1 - (x^2/2!)/(1 - (x^3/3!)/(1 - (x^4/4!)/(1 - (x^5/5!)/(1 -... (x^n/n!)/(1 -...))))))), a continued fraction.

The programs for A257544, there is no canonical definition to state claims against.
-/

/-! ## A257544.P15850388681169946674

`A295944(n*(1-(∑{digits}[n, #]-n)))`
-/

namespace A257544.P15850388681169946674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295944 ((n : ℤ) * (1 - (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ)))).toNat

end

end A257544.P15850388681169946674

/-! ## A257544.P6391324298445398499

`A295944(n^(1-(∑{digits}[n, #]-n)))`
-/

namespace A257544.P6391324298445398499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295944 (SequenceMachineLib.roundAway ((n : ℚ) ^ (1 - (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ)) : ℤ))).toNat

end

end A257544.P6391324298445398499

/-! ## A257544.P14282364079239074322

`A295944(A002998(n))`
-/

namespace A257544.P14282364079239074322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295944 (A002998 n).toNat

end

end A257544.P14282364079239074322

/-! ## A257544.P3995713626809828542

`A295944(A087051(n))`
-/

namespace A257544.P3995713626809828542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295944 (A087051 n).toNat

end

end A257544.P3995713626809828542

/-!
# A257545: a(0) = 2, a(n) = smallest prime p such that none of p - 1, p - 2,... p - n are squarefree.

The programs for A257545, there is no canonical definition to state claims against.
-/

/-! ## A257545.P3445843635886583605

`A020484(A046991(n)-1)`
-/

namespace A257545.P3445843635886583605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (A046991 n - 1).toNat

end

end A257545.P3445843635886583605

/-!
# A257546: Number of permutations of length n such that numbers at odd positions are monotone and numbers at even positions are also monotone.

The programs for A257546, there is no canonical definition to state claims against.
-/

/-! ## A257546.P553927847954981567

`A001405(n)*A010138(A007918(n))`
-/

namespace A257546.P553927847954981567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A010138 (A007918 n).toNat

end

end A257546.P553927847954981567

/-! ## A257546.P1709044454571865607

`(1+3%A000625(n))*A001405(n)`
-/

namespace A257546.P1709044454571865607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + Int.tmod 3 (A000625 n)) * A001405 n

end

end A257546.P1709044454571865607

/-! ## A257546.P12070345531234528031

`A001405(n)*A144464(A133263(n))`
-/

namespace A257546.P12070345531234528031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A144464 (A133263 n).toNat

end

end A257546.P12070345531234528031

/-! ## A257546.P2695841924998065298

`gcd(n!, A047073(n+2))`
-/

namespace A257546.P2695841924998065298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial n : ℤ) (A047073 (n + 2))

end

end A257546.P2695841924998065298

/-! ## A257546.P4111597482897786436

`gcd(4*A001405(n), A000142(n))`
-/

namespace A257546.P4111597482897786436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (4 * A001405 n) (A000142 n)

end

end A257546.P4111597482897786436

/-!
# A257547: Even side of integer-sided triangle such that the area is an integer and two sides are twin primes.

The programs for A257547, there is no canonical definition to state claims against.
-/

/-! ## A257547.P13050624463906661815

`2*(A253639(n+1)-1)`
-/

namespace A257547.P13050624463906661815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A253639 (n + 1) - 1)

end

end A257547.P13050624463906661815

/-! ## A257547.P8172853615523699395

`2*(A085554(n+1)-3)`
-/

namespace A257547.P8172853615523699395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A085554 (n + 1) - 3)

end

end A257547.P8172853615523699395

/-! ## A257547.P2329421966237463762

`2*(A086381(n+1)²+1)`
-/

namespace A257547.P2329421966237463762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A086381 (n + 1) ^ 2 + 1)

end

end A257547.P2329421966237463762

/-! ## A257547.P13325802245502604283

`A253639(n+1)+A086381(n+1)²`
-/

namespace A257547.P13325802245502604283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253639 (n + 1) + A086381 (n + 1) ^ 2

end

end A257547.P13325802245502604283

/-! ## A257547.P2118069320593606993

`A257049(n+1)/A086381(n+1)-2`
-/

namespace A257547.P2118069320593606993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257049 (n + 1) : ℚ) / (A086381 (n + 1) : ℚ) - 2

end

end A257547.P2118069320593606993

/-! ## A257547.P10103672524536285639

`A085554(n+1)+A086381(n+1)²-2`
-/

namespace A257547.P10103672524536285639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085554 (n + 1) + (A086381 (n + 1) ^ 2 - 2)

end

end A257547.P10103672524536285639

/-! ## A257547.P12997540084974335099

`A253639(n+1)+and(A085554(n+1), A253639(n+1))`
-/

namespace A257547.P12997540084974335099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253639 (n + 1) + Int.land (A085554 (n + 1)) (A253639 (n + 1))

end

end A257547.P12997540084974335099

/-! ## A257547.P13661590628213235379

`∩[A068965(n+1), A108099(n)]`
-/

namespace A257547.P13661590628213235379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108099 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257547.P13661590628213235379

/-! ## A257547.P9261174297043964641

`A005893(A086381(n+1))`
-/

namespace A257547.P9261174297043964641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (A086381 (n + 1)).toNat

end

end A257547.P9261174297043964641

/-! ## A257547.P18331127768042235666

`∩[A005893(n), A068965(n+1)]`
-/

namespace A257547.P18331127768042235666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257547.P18331127768042235666

/-!
# A257548: a(1) = 1, a(2) = 2, a(3) = 5, a(4) = 8 and a(5) = 15, a(n) = Sum_{j=1..n-1} a(j).

The programs for A257548, the canonical program `A257548.P15143767610078335878` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257548 has offset 1).

The definition of A257548 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257548.P15143767610078335878

`ogf((1+x^2-2x^3-x^4+x^5)/(1-2x))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A257548

/-- `ogf((1+x^2-2x^3-x^4+x^5)/(1-2x))` -/
def P15143767610078335878.Spec : Prop :=
  ∀ n, P15143767610078335878.a n = A257548 (n + 1)

theorem P15143767610078335878.correct : P15143767610078335878.Spec := by
  intro n
  simp only [A257548, Nat.add_sub_cancel]

end A257548

/-! ## A257548.P11397323981704346680

`A018487(n+1)+Δ[A089723(n+5)]`
-/

namespace A257548.P11397323981704346680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018487 (n + 1) + (f1 (n + 1) - f1 n)

end

end A257548.P11397323981704346680

namespace A257548

/-- `A018487(n+1)+Δ[A089723(n+5)]` -/
def P11397323981704346680.Spec : Prop :=
  ∀ n, P11397323981704346680.a n = A257548 (n + 1)

end A257548

/-! ## A257548.P1243802440718979368

`A018487(n+1)-A056594(A048968(n+1))`
-/

namespace A257548.P1243802440718979368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018487 (n + 1) - A056594 (A048968 (n + 1)).toNat

end

end A257548.P1243802440718979368

namespace A257548

/-- `A018487(n+1)-A056594(A048968(n+1))` -/
def P1243802440718979368.Spec : Prop :=
  ∀ n, P1243802440718979368.a n = A257548 (n + 1)

end A257548

/-! ## A257548.P9177618262462177152

`A018487(n+1)-A056594(A333000(n+1))`
-/

namespace A257548.P9177618262462177152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018487 (n + 1) - A056594 (A333000 (n + 1)).toNat

end

end A257548.P9177618262462177152

namespace A257548

/-- `A018487(n+1)-A056594(A333000(n+1))` -/
def P9177618262462177152.Spec : Prop :=
  ∀ n, P9177618262462177152.a n = A257548 (n + 1)

end A257548

/-! ## A257548.P13597973919483674664

`Δ[A127321(n+2)+A018487(n+1)]`
-/

namespace A257548.P13597973919483674664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (n + 2) + A018487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257548.P13597973919483674664

namespace A257548

/-- `Δ[A127321(n+2)+A018487(n+1)]` -/
def P13597973919483674664.Spec : Prop :=
  ∀ n, P13597973919483674664.a n = A257548 (n + 1)

end A257548

/-!
# A257549: Decimal expansion of zeta''(0) (negated).

The programs for A257549, there is no canonical definition to state claims against.
-/

/-! ## A257549.P18282521240559739998

`A245273(n-(a(n-1)%2)!)` with `a(0)=2`
-/

namespace A257549.P18282521240559739998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A245273 (n - Nat.factorial (Int.tmod (a (n - 1)) 2).toNat)

end

end A257549.P18282521240559739998

/-! ## A257549.P8384416029888979857

`A245273(n-A015435(2*a(n-1)))` with `a(0)=2`
-/

namespace A257549.P8384416029888979857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A245273 ((n : ℤ) - A015435 (2 * a (n - 1)).toNat).toNat

end

end A257549.P8384416029888979857

/-!
# A257551: Primes p such that q=p^2-2 and r=q^2-2 are also prime.

The programs for A257551, there is no canonical definition to state claims against.
-/

/-! ## A257551.P13830679920682046119

`A100725(A326076(n))`
-/

namespace A257551.P13830679920682046119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100725 (A326076 n).toNat

end

end A257551.P13830679920682046119

/-! ## A257551.P16737354473289357807

`A295425(A358513(n))`
-/

namespace A257551.P16737354473289357807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295425 (A358513 n).toNat

end

end A257551.P16737354473289357807

/-! ## A257551.P5905170127283560086

`A216496(A025612(n+1))`
-/

namespace A257551.P5905170127283560086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216496 (A025612 (n + 1)).toNat

end

end A257551.P5905170127283560086

/-!
# A257553: Primes whose squares are not the sums of two consecutive nonsquares.

The programs for A257553, there is no canonical definition to state claims against.
-/

/-! ## A257553.P1974336203616207274

`A086395(and(n, or(n, a(n-1))))` with `a(0)=2`
-/

namespace A257553.P1974336203616207274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A086395 (Int.land (n : ℤ) (Int.lor (n : ℤ) (a (n - 1)))).toNat

end

end A257553.P1974336203616207274

/-! ## A257553.P809486754217448302

`A086395(n%round(ϕ*a(n-1)))` with `a(0)=2`
-/

namespace A257553.P809486754217448302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A086395 (Int.tmod (n : ℤ) (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ)))).toNat

end

end A257553.P809486754217448302

/-! ## A257553.P7472644799789506575

`A086395(A028310(n))-A000007(n)`
-/

namespace A257553.P7472644799789506575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086395 (A028310 n).toNat - A000007 n

end

end A257553.P7472644799789506575

/-! ## A257553.P17128258328789740943

`A086395(A000007(n)+n)-A000007(n)`
-/

namespace A257553.P17128258328789740943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086395 (A000007 n + (n : ℤ)).toNat - A000007 n

end

end A257553.P17128258328789740943

/-!
# A257554: Numbers k such that A007954(k) divides k and k divides A007954(k)^2.

The programs for A257554, there is no canonical definition to state claims against.
-/

/-! ## A257554.P17489201687359193813

`∩[A007602(n+1), A128606(n+1)]`
-/

namespace A257554.P17489201687359193813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257554.P17489201687359193813

/-! ## A257554.P3338186296586972899

`∩[A128606(n+1), A288069(n+1)*A360075(n+1)]`
-/

namespace A257554.P3338186296586972899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288069 (n + 1) * A360075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257554.P3338186296586972899

/-! ## A257554.P7197929165182454066

`∩[A055471(n+1), A128606(n+1)]`
-/

namespace A257554.P7197929165182454066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257554.P7197929165182454066

/-! ## A257554.P1440072088271787892

`filter[A128606(n+1), A188642(#)]`
-/

namespace A257554.P1440072088271787892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188642 (f1 j).toNat = 1) n)

end

end A257554.P1440072088271787892

/-! ## A257554.P14424822543963259986

`∩[A055201(n+1), A128606(n+1)]`
-/

namespace A257554.P14424822543963259986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257554.P14424822543963259986

/-!
# A257555: Number of distinct ways to dissect a cube into n rectangular boxes of equal volume, up to reflection and rotation.

The programs for A257555, there is no canonical definition to state claims against.
-/

/-! ## A257555.P330560588309941662

`ceil((sqrt(n+2)-1)*n!)`
-/

namespace A257555.P330560588309941662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (n + 2 : ℝ) - 1) * (Nat.factorial n : ℝ)⌉

end

end A257555.P330560588309941662

/-!
# A257556: Triangle, read by rows, T(n,k)= Sum_{i=0..(n-k)/2} C(2*k,i)*C(n-2*i-1,k-1).

The programs for A257556, there is no canonical definition to state claims against.
-/

/-! ## A257556.P7904653686746164140

`or(A033930(A038303(n)), A178225(n))`
-/

namespace A257556.P7904653686746164140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033930 (A038303 n).toNat) (A178225 n)

end

end A257556.P7904653686746164140

/-! ## A257556.P8418433127280637180

`or(A010054(A132870(n)), A216973(n))`
-/

namespace A257556.P8418433127280637180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A132870 n).toNat) (A216973 n)

end

end A257556.P8418433127280637180

/-! ## A257556.P13850329285825340794

`or(A033930(A038303(n)), A051390(n+1))`
-/

namespace A257556.P13850329285825340794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033930 (A038303 n).toNat) (A051390 (n + 1))

end

end A257556.P13850329285825340794

/-! ## A257556.P13423916800814642325

`or(A033930(A038303(n)), A244963(n+1))`
-/

namespace A257556.P13423916800814642325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033930 (A038303 n).toNat) (A244963 (n + 1))

end

end A257556.P13423916800814642325

/-!
# A257557: Expansion (x-1)/(x^5+2*x^3+2*x-1).

The programs for A257557, the canonical program `A257557.P15458726030089287244` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257557 has offset 0).

The definition of A257557 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 267 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257557.P15458726030089287244

`ogf((-1+x)/(-1+2x+2x^3+x^5))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A257557

/-- `ogf((-1+x)/(-1+2x+2x^3+x^5))` -/
def P15458726030089287244.Spec : Prop :=
  ∀ n, P15458726030089287244.a n = A257557 n

theorem P15458726030089287244.correct : P15458726030089287244.Spec := by
  intro n
  simp only [A257557]

end A257557

/-! ## A257557.P7045362697951244388

`∑[A137680(A167614(n+1))]`
-/

namespace A257557.P7045362697951244388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137680 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257557.P7045362697951244388

namespace A257557

/-- `∑[A137680(A167614(n+1))]` -/
def P7045362697951244388.Spec : Prop :=
  ∀ n, P7045362697951244388.a n = A257557 n

end A257557

/-! ## A257557.P5735928162927450223

`A256502(A275873(n)+A137682(n+1))`
-/

namespace A257557.P5735928162927450223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A275873 n + A137682 (n + 1)).toNat

end

end A257557.P5735928162927450223

namespace A257557

/-- `A256502(A275873(n)+A137682(n+1))` -/
def P5735928162927450223.Spec : Prop :=
  ∀ n, P5735928162927450223.a n = A257557 n

end A257557

/-! ## A257557.P14963956931659512891

`A248170(A049152(n))`
-/

namespace A257557.P14963956931659512891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248170 (A049152 n).toNat

end

end A257557.P14963956931659512891

namespace A257557

/-- `A248170(A049152(n))` -/
def P14963956931659512891.Spec : Prop :=
  ∀ n, P14963956931659512891.a n = A257557 n

end A257557

/-!
# A257559: The slowest increasing sequence of semiprimes with strictly increasing difference of successive terms.

The programs for A257559, there is no canonical definition to state claims against.
-/

/-! ## A257559.P6105685180084037490

`A257560(n)+a(n-1)` with `a(0)=4`
-/

namespace A257559.P6105685180084037490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A257560 n + a (n - 1)

end

end A257559.P6105685180084037490

/-! ## A257559.P6655527314722979137

`∑[A257560(A028310(n))]+2`
-/

namespace A257559.P6655527314722979137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257560 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A257559.P6655527314722979137

/-! ## A257559.P15095942736712746508

`∑[A257560(A000007(n)+n)]+2`
-/

namespace A257559.P15095942736712746508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257560 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A257559.P15095942736712746508

/-! ## A257559.P11247526508837098870

`∑[A054977(n)*A257560(A028310(n))]`
-/

namespace A257559.P11247526508837098870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A257560 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257559.P11247526508837098870

/-! ## A257559.P249470939834716364

`∑[(3-A040000(n))*A257560(A028310(n))]`
-/

namespace A257559.P249470939834716364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A040000 n) * A257560 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257559.P249470939834716364

/-! ## A257559.P14211874887035584473

`2-(n*A000007(n)-∑[A257560(A028310(n))])`
-/

namespace A257559.P14211874887035584473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257560 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n : ℤ) * A000007 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A257559.P14211874887035584473

/-!
# A257560: First differences of A257559.

The programs for A257560, there is no canonical definition to state claims against.
-/

/-! ## A257560.P5990696272472551610

`A257559(n+2)-A257559(n+1)`
-/

namespace A257560.P5990696272472551610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257559 (n + 2) - A257559 (n + 1)

end

end A257560.P5990696272472551610

/-! ## A257560.P15361264836256397823

`Δ[A257559(n+1)]`
-/

namespace A257560.P15361264836256397823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257560.P15361264836256397823

/-! ## A257560.P7891031287937135745

`Δ[record[A257559(A126759(n))]]`
-/

namespace A257560.P7891031287937135745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257559 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257560.P7891031287937135745

/-! ## A257560.P12339183975794867724

`Δ[record[A257559(A331743(n))]]`
-/

namespace A257560.P12339183975794867724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257559 (A331743 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257560.P12339183975794867724

/-! ## A257560.P2992247167085978132

`A257559(A020725(n+1))%A257559(n+1)`
-/

namespace A257560.P2992247167085978132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257559 (A020725 (n + 1)).toNat) (A257559 (n + 1))

end

end A257560.P2992247167085978132

/-! ## A257560.P15076134223353245173

`Δ[record[A257559(A263274(n))]]`
-/

namespace A257560.P15076134223353245173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257559 (A263274 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257560.P15076134223353245173

/-! ## A257560.P855465387683335773

`Δ[record[A257559(A102885(n))]]`
-/

namespace A257560.P855465387683335773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257559 (A102885 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257560.P855465387683335773

/-! ## A257560.P5804020407205928881

`Δ[record[A257559(A128227(n))]]`
-/

namespace A257560.P5804020407205928881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257559 (A128227 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257560.P5804020407205928881

/-! ## A257560.P8183211435871702863

`Δ[record[A257559(A137734(n))]]`
-/

namespace A257560.P8183211435871702863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257559 (A137734 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257560.P8183211435871702863

/-!
# A257561: Number of permutations of length n that avoid the patterns 4231, 4312, and 4321.

The programs for A257561, there is no canonical definition to state claims against.
-/

/-! ## A257561.P5204162054745438180

`xor(A106228(n), A319759(A232440(3*n+5)))`
-/

namespace A257561.P5204162054745438180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A106228 n) (A319759 (A232440 (3 * n + 5)).toNat)

end

end A257561.P5204162054745438180

/-! ## A257561.P17704120833465065870

`A106228(n)-A003415(A014384(n))`
-/

namespace A257561.P17704120833465065870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106228 n - A003415 (A014384 n).toNat

end

end A257561.P17704120833465065870

/-! ## A257561.P2641342281902267432

`A106228(n)-A044938(A000898(n))`
-/

namespace A257561.P2641342281902267432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106228 n - A044938 (A000898 n).toNat

end

end A257561.P2641342281902267432

/-! ## A257561.P12493190309486343440

`A106228(n)-A044938(A008776(n))`
-/

namespace A257561.P12493190309486343440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106228 n - A044938 (A008776 n).toNat

end

end A257561.P12493190309486343440

/-!
# A257562: Number of permutations of length n that avoid the patterns 4123, 4231, and 4312.

The programs for A257562, there is no canonical definition to state claims against.
-/

/-! ## A257562.P12677709774702240099

`A026741(A111279(n)+A033321(n))`
-/

namespace A257562.P12677709774702240099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A111279 n + A033321 n).toNat

end

end A257562.P12677709774702240099

/-! ## A257562.P16970652804421588503

`A110654(A111279(n)+A033321(n))`
-/

namespace A257562.P16970652804421588503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A111279 n + A033321 n).toNat

end

end A257562.P16970652804421588503

/-! ## A257562.P11542974051654464115

`A321402(A099132(n))+A111279(n)`
-/

namespace A257562.P11542974051654464115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321402 (A099132 n).toNat + A111279 n

end

end A257562.P11542974051654464115

/-! ## A257562.P14867831119527336899

`A033321(n)-A321402(A099132(n))`
-/

namespace A257562.P14867831119527336899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033321 n - A321402 (A099132 n).toNat

end

end A257562.P14867831119527336899

/-!
# A257563: Triangle read by rows, coefficients T(n,k) of polynomials related to the Bell polynomials, for n>=0 and 0<=k<=n.

The programs for A257563, there is no canonical definition to state claims against.
-/

/-! ## A257563.P144812189475041426

`A216763(A340264(n)²)`
-/

namespace A257563.P144812189475041426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216763 (A340264 n ^ 2).toNat

end

end A257563.P144812189475041426

/-! ## A257563.P3713967024847365193

`and(p?[A195820(n+1)], A005378(n))`
-/

namespace A257563.P3713967024847365193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A005378 n)

end

end A257563.P3713967024847365193

/-! ## A257563.P15576743197637293076

`A103438((comp[∑[n-2]]+1)%A138818(n+1))`
-/

namespace A257563.P15576743197637293076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103438 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1 : ℤ) (A138818 (n + 1))).toNat

end

end A257563.P15576743197637293076

/-! ## A257563.P5784999634259078141

`A119900(n)+A088434(A022174(n))`
-/

namespace A257563.P5784999634259078141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119900 n + A088434 (A022174 n).toNat

end

end A257563.P5784999634259078141

/-! ## A257563.P14048479733370174854

`A249026(n)-A127245(A019299(n))`
-/

namespace A257563.P14048479733370174854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249026 n - A127245 (A019299 n).toNat

end

end A257563.P14048479733370174854

/-!
# A257564: Irregular triangle read by rows: T(n,k) = r(n+k)+r(n-k) with r(n) = (n-(n mod 2))/2 for n>=0 and -n<=k<=n.

The programs for A257564, there is no canonical definition to state claims against.
-/

/-! ## A257564.P10563562862623907362

`and(floor(sqrt(n)+n), -2)-n`
-/

namespace A257564.P10563562862623907362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊Real.sqrt (n : ℝ) + (n : ℝ)⌋ (-2) - (n : ℤ)

end

end A257564.P10563562862623907362

/-! ## A257564.P570210402706770959

`floor(sqrt(n))-char[comp[∑[n]]+n]`
-/

namespace A257564.P570210402706770959
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A257564.P570210402706770959

/-! ## A257564.P8259889515911417429

`or(1, floor(sqrt(n)+n))%(n+1)`
-/

namespace A257564.P8259889515911417429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor 1 ⌊Real.sqrt (n : ℝ) + (n : ℝ)⌋) (n + 1 : ℤ)

end

end A257564.P8259889515911417429

/-! ## A257564.P2493360935241731313

`abs(or(1, floor(sqrt(n)+n))-(n+1))`
-/

namespace A257564.P2493360935241731313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 ⌊Real.sqrt (n : ℝ) + (n : ℝ)⌋ - (n + 1 : ℤ)|

end

end A257564.P2493360935241731313

/-! ## A257564.P12499003613576378283

`-(n-or(1, floor(sqrt(n)+n))+1)`
-/

namespace A257564.P12499003613576378283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) - Int.lor 1 ⌊Real.sqrt (n : ℝ) + (n : ℝ)⌋ + 1)

end

end A257564.P12499003613576378283

/-! ## A257564.P12378383272996389233

`dr(or(1, floor(sqrt(n)+n))-(n+1))`
-/

namespace A257564.P12378383272996389233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.lor 1 ⌊Real.sqrt (n : ℝ) + (n : ℝ)⌋ - (n + 1 : ℤ))

end

end A257564.P12378383272996389233

/-! ## A257564.P17328301103390982823

`floor(2*floor(sqrt(n))-(a(n-1)+1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A257564.P17328301103390982823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * Nat.sqrt n : ℤ) - (a (n - 1) + 1)

end

end A257564.P17328301103390982823

/-! ## A257564.P10552711961527045650

`floor(2*floor(sqrt(n))-1-a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A257564.P10552711961527045650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * Nat.sqrt n : ℤ) - 1 - a (n - 1)

end

end A257564.P10552711961527045650

/-! ## A257564.P16959611952731553348

`floor(sqrt(n)-floor(a(n-1)/floor(sqrt(n))))` with `a(0)=0`
-/

namespace A257564.P16959611952731553348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊Real.sqrt (n : ℝ) - (⌊(a (n - 1) : ℚ) / (Nat.sqrt n : ℚ)⌋ : ℝ)⌋

end

end A257564.P16959611952731553348

/-! ## A257564.P7873603140404779747

`floor(a(n-1)-or(1, a(n-1)-floor(sqrt(n))))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A257564.P7873603140404779747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - Int.lor 1 (a (n - 1) - (Nat.sqrt n : ℤ))

end

end A257564.P7873603140404779747

/-!
# A257565: Generalized Fubini numbers. Square array read by ascending antidiagonals, A(n,k) = 1 + k*(Sum_{j=1..n-1} C(n,j)*A(j,k)); n>=0 and k>=0.

The programs for A257565, there is no canonical definition to state claims against.
-/

/-! ## A257565.P1227139590833388157

`A369435(n)/A128227(n)`
-/

namespace A257565.P1227139590833388157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369435 n : ℚ) / (A128227 n : ℚ)

end

end A257565.P1227139590833388157

/-! ## A257565.P15531902828887724361

`gcd(A344499(n), A369435(n))`
-/

namespace A257565.P15531902828887724361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A344499 n) (A369435 n)

end

end A257565.P15531902828887724361

/-! ## A257565.P4011223228757983321

`A262809(n)%A333220(A362371(3*(n+1)))`
-/

namespace A257565.P4011223228757983321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262809 n) (A333220 (A362371 (3 * (n + 1))).toNat)

end

end A257565.P4011223228757983321

/-! ## A257565.P4835657006835857961

`A262809(n)-A081157(A210472(n))`
-/

namespace A257565.P4835657006835857961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262809 n - A081157 (A210472 n).toNat

end

end A257565.P4835657006835857961

/-! ## A257565.P9685283777234484887

`A347647(A055807(n)^A053632(n))`
-/

namespace A257565.P9685283777234484887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347647 (SequenceMachineLib.roundAway ((A055807 n : ℚ) ^ (A053632 n : ℤ))).toNat

end

end A257565.P9685283777234484887

/-!
# A257566: Triangle read by rows, T(n,k) = Sum_{j=0..n-k+1} P(n,j)*T(n-j,k-1) if k>0 else 0^n where P(n,j) is the number of j-partitions of n; for n>=0 and 0<=k<=n.

The programs for A257566, there is no canonical definition to state claims against.
-/

/-! ## A257566.P15832051275125495542

`A295309(A011782(n))+A256130(n)`
-/

namespace A257566.P15832051275125495542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295309 (A011782 n).toNat + A256130 n

end

end A257566.P15832051275125495542

/-! ## A257566.P7242947548193096877

`A256130(n)+A186747(A319472(n))`
-/

namespace A257566.P7242947548193096877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 n + A186747 (A319472 n).toNat

end

end A257566.P7242947548193096877

/-! ## A257566.P694532419621628216

`A256130(n)+A002325(A063416(n+1))`
-/

namespace A257566.P694532419621628216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256130 n + A002325 (A063416 (n + 1)).toNat

end

end A257566.P694532419621628216

/-! ## A257566.P9535969218620847587

`or(A254379(A249577(2*n)), A256130(n))`
-/

namespace A257566.P9535969218620847587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A254379 (A249577 (2 * n)).toNat) (A256130 n)

end

end A257566.P9535969218620847587

/-! ## A257566.P6487876677088910281

`A055570(A256130(n))`
-/

namespace A257566.P6487876677088910281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A256130 n).toNat

end

end A257566.P6487876677088910281

/-!
# A257567: a(n) is the largest exponent k such that 3^k divides (prime(n)^2 + 2).

The programs for A257567, the canonical program `A257567.P6211609735986924028` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257567 has offset 1).

The definition of A257567 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A257567.P11566071362034009189

`val(A000040(n+1)²+2, 3)`
-/

namespace A257567.P11566071362034009189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (n + 1) ^ 2 + 2).toNat 3

end

end A257567.P11566071362034009189

namespace A257567

/-- `val(A000040(n+1)²+2, 3)` -/
def P11566071362034009189.Spec : Prop :=
  ∀ n, (P11566071362034009189.a n : ℤ) = A257567 (n + 1)

end A257567

/-! ## A257567.P6211609735986924028

`A007949(A061725(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A257567

/-- `A007949(A061725(n+1))` -/
def P6211609735986924028.Spec : Prop :=
  ∀ n, P6211609735986924028.a n = A257567 (n + 1)

theorem P6211609735986924028.correct : P6211609735986924028.Spec := by
  intro n
  simp only [A257567, Nat.add_sub_cancel]

end A257567

/-! ## A257567.P4532601609499404014

`val(A061725(n+1), 3)`
-/

namespace A257567.P4532601609499404014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A061725 (n + 1)).toNat 3

end

end A257567.P4532601609499404014

namespace A257567

/-- `val(A061725(n+1), 3)` -/
def P4532601609499404014.Spec : Prop :=
  ∀ n, (P4532601609499404014.a n : ℤ) = A257567 (n + 1)

end A257567

/-! ## A257567.P2424497008248231491

`val(A066872(n+1)+1, 3)`
-/

namespace A257567.P2424497008248231491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A066872 (n + 1) + 1).toNat 3

end

end A257567.P2424497008248231491

namespace A257567

/-- `val(A066872(n+1)+1, 3)` -/
def P2424497008248231491.Spec : Prop :=
  ∀ n, (P2424497008248231491.a n : ℤ) = A257567 (n + 1)

end A257567

/-! ## A257567.P562670536851206599

`val(2+A001248(n+1), 3)`
-/

namespace A257567.P562670536851206599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 + A001248 (n + 1)).toNat 3

end

end A257567.P562670536851206599

namespace A257567

/-- `val(2+A001248(n+1), 3)` -/
def P562670536851206599.Spec : Prop :=
  ∀ n, (P562670536851206599.a n : ℤ) = A257567 (n + 1)

end A257567

/-! ## A257567.P13517428300209002058

`val(A084920(n+1)+3, 3)`
-/

namespace A257567.P13517428300209002058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A084920 (n + 1) + 3).toNat 3

end

end A257567.P13517428300209002058

namespace A257567

/-- `val(A084920(n+1)+3, 3)` -/
def P13517428300209002058.Spec : Prop :=
  ∀ n, (P13517428300209002058.a n : ℤ) = A257567 (n + 1)

end A257567

/-! ## A257567.P8080468223233897819

`val(A049001(n+1)+4, 3)`
-/

namespace A257567.P8080468223233897819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A049001 (n + 1) + 4).toNat 3

end

end A257567.P8080468223233897819

namespace A257567

/-- `val(A049001(n+1)+4, 3)` -/
def P8080468223233897819.Spec : Prop :=
  ∀ n, (P8080468223233897819.a n : ℤ) = A257567 (n + 1)

end A257567

/-! ## A257567.P13251507332139644684

`val(A030514(n+1)-4, 3)`
-/

namespace A257567.P13251507332139644684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A030514 (n + 1) - 4).toNat 3

end

end A257567.P13251507332139644684

namespace A257567

/-- `val(A030514(n+1)-4, 3)` -/
def P13251507332139644684.Spec : Prop :=
  ∀ n, (P13251507332139644684.a n : ℤ) = A257567 (n + 1)

end A257567

/-! ## A257567.P10426773360313937179

`val(record[A093074(n+1)²]+2, 3)`
-/

namespace A257567.P10426773360313937179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2).toNat 3

end

end A257567.P10426773360313937179

namespace A257567

/-- `val(record[A093074(n+1)²]+2, 3)` -/
def P10426773360313937179.Spec : Prop :=
  ∀ n, (P10426773360313937179.a n : ℤ) = A257567 (n + 1)

end A257567

/-! ## A257567.P2724917075601880400

`val(record[A014963(n+2)²]+2, 3)`
-/

namespace A257567.P2724917075601880400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2).toNat 3

end

end A257567.P2724917075601880400

namespace A257567

/-- `val(record[A014963(n+2)²]+2, 3)` -/
def P2724917075601880400.Spec : Prop :=
  ∀ n, (P2724917075601880400.a n : ℤ) = A257567 (n + 1)

end A257567

/-! ## A257567.P15041184681099642065

`val(record[A287932(n+2)+1]+1, 3)`
-/

namespace A257567.P15041184681099642065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287932 (n + 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat 3

end

end A257567.P15041184681099642065

namespace A257567

/-- `val(record[A287932(n+2)+1]+1, 3)` -/
def P15041184681099642065.Spec : Prop :=
  ∀ n, (P15041184681099642065.a n : ℤ) = A257567 (n + 1)

end A257567

/-! ## A257567.P11429849862425476005

`val(record[A051664(n+1)²]+2, 3)`
-/

namespace A257567.P11429849862425476005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2).toNat 3

end

end A257567.P11429849862425476005

namespace A257567

/-- `val(record[A051664(n+1)²]+2, 3)` -/
def P11429849862425476005.Spec : Prop :=
  ∀ n, (P11429849862425476005.a n : ℤ) = A257567 (n + 1)

end A257567

/-!
# A257568: The least prime p such that the highest power of 3 that divides p^2 + 2 is n.

The programs for A257568, there is no canonical definition to state claims against.
-/

/-! ## A257568.P11496008653800503060

`p?[A095149(n)-Δ[A112492(n)]]`
-/

namespace A257568.P11496008653800503060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112492 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A257568.P11496008653800503060

/-!
# A257569: Triangular array read by rows: T(h,k) = number of steps from (h,k) to (0,0), where one step is (x,y) -> (x-1, y) if x is odd or (x,y) -> (y, x/2) if x is even.

The programs for A257569, the canonical program `A257569.P5073290177656356380` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257569 has offset 1).

The definition of A257569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257569.P5073290177656356380

`A056792(A054238(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A257569

/-- `A056792(A054238(n))` -/
def P5073290177656356380.Spec : Prop :=
  ∀ n, P5073290177656356380.a n = A257569 (n + 1)

theorem P5073290177656356380.correct : P5073290177656356380.Spec := by
  intro n
  simp only [A257569, Nat.add_sub_cancel]

end A257569

/-!
# A257570: Rectangular array, read by antidiagonals: d(h,k) = distance between h and k in the tree at A232558, for h >=0, k >= 0.

The programs for A257570, there is no canonical definition to state claims against.
-/

/-! ## A257570.P14132140229855762220

`A143182(n)-A025143(A304025(n+1))`
-/

namespace A257570.P14132140229855762220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143182 n - A025143 (A304025 (n + 1)).toNat

end

end A257570.P14132140229855762220

/-! ## A257570.P2905407847099556509

`A049581(n)-A316345(A132230(n+1))`
-/

namespace A257570.P2905407847099556509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 n - A316345 (A132230 (n + 1)).toNat

end

end A257570.P2905407847099556509

/-! ## A257570.P9138659890103538179

`A285721(A027420(n)%A159625(n+1))`
-/

namespace A257570.P9138659890103538179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285721 (Int.tmod (A027420 n) (A159625 (n + 1))).toNat

end

end A257570.P9138659890103538179

/-! ## A257570.P18388171348235703970

`A136176(A153512(n))`
-/

namespace A257570.P18388171348235703970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136176 (A153512 n).toNat

end

end A257570.P18388171348235703970

/-! ## A257570.P9370679799163590656

`A125072(A153512(n))`
-/

namespace A257570.P9370679799163590656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125072 (A153512 n).toNat

end

end A257570.P9370679799163590656

/-!
# A257571: Triangular array read by rows: d(h,k) = distance between h and k in the tree at A232558, for h >=0, k = 0..h.

The programs for A257571, there is no canonical definition to state claims against.
-/

/-! ## A257571.P6607289798540291397

`A257570(A245300(n)+1)`
-/

namespace A257571.P6607289798540291397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257570 (A245300 n + 1).toNat

end

end A257571.P6607289798540291397

/-! ## A257571.P13769506948214109696

`A341513(A086800(n+1)-A341025(A001263(n+1)))`
-/

namespace A257571.P13769506948214109696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341513 (A086800 (n + 1) - A341025 ((A001263 (n + 1)).toNat + 120)).toNat

end

end A257571.P13769506948214109696

/-! ## A257571.P7949172686840098917

`A193739(A020753(n+1))%A099375(n)`
-/

namespace A257571.P7949172686840098917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193739 (A020753 (n + 1)).toNat) (A099375 n)

end

end A257571.P7949172686840098917

/-! ## A257571.P15756112374240819603

`A276150(A086800(n+1))%record[A128596(n)]`
-/

namespace A257571.P15756112374240819603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276150 (A086800 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A257571.P15756112374240819603

/-! ## A257571.P5392154637206724788

`A322028(A126454(n))`
-/

namespace A257571.P5392154637206724788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322028 (A126454 n).toNat

end

end A257571.P5392154637206724788

/-!
# A257572: Prime root of n-th term in A257278.

The programs for A257572, there is no canonical definition to state claims against.
-/

/-! ## A257572.P13852711015583414139

`A020639(A257278(n+1))`
-/

namespace A257572.P13852711015583414139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A257278 (n + 1)).toNat

end

end A257572.P13852711015583414139

/-! ## A257572.P3093743652521872892

`root(A257278(n+1), A257573(n+1))`
-/

namespace A257572.P3093743652521872892
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A257278 (n + 1) : ℝ) ^ (1 / (A257573 (n + 1) : ℝ))

end

end A257572.P3093743652521872892

/-! ## A257572.P2082355511862977440

`gcd(A257278(n+1), A300951(A242963(n+1)))`
-/

namespace A257572.P2082355511862977440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A257278 (n + 1)) (A300951 (A242963 (n + 1)).toNat)

end

end A257572.P2082355511862977440

/-! ## A257572.P11266533721180029506

`A006530(gcd(A257278(n+1), A277324(n)))`
-/

namespace A257572.P11266533721180029506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (A257278 (n + 1)) (A277324 n))

end

end A257572.P11266533721180029506

/-! ## A257572.P4255867315336113113

`gcd(A257278(n+1), A336671(n+1))`
-/

namespace A257572.P4255867315336113113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A257278 (n + 1)) (A336671 (n + 1))

end

end A257572.P4255867315336113113

/-!
# A257573: Exponents in A257278 = powers of primes p^m, p <= m.

The programs for A257573, there is no canonical definition to state claims against.
-/

/-! ## A257573.P13667872175173612941

`A001222(A257278(n+1))`
-/

namespace A257573.P13667872175173612941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A257278 (n + 1)).toNat

end

end A257573.P13667872175173612941

/-! ## A257573.P17624329006977114081

`val(A257278(n+1), A257572(n+1))`
-/

namespace A257573.P17624329006977114081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A257278 (n + 1)).toNat (A257572 (n + 1)).toNat

end

end A257573.P17624329006977114081

/-! ## A257573.P18063897542639673979

`∑{e}[A257278(n+1), #]`
-/

namespace A257573.P18063897542639673979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257278 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A257573.P18063897542639673979

/-! ## A257573.P13287162373412922015

`∏{e}[A257278(n-log2(1/2)), #]`
-/

namespace A257573.P13287162373412922015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257278 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A257573.P13287162373412922015

/-! ## A257573.P4167710079268824939

`A000027(∏{e}[A257278(n+1), #])`
-/

namespace A257573.P4167710079268824939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A257573.P4167710079268824939

/-!
# A257582: Lexicographically largest increasing sequence of primes for which the continued square root map (see A257574) produces Pi.

The programs for A257582, there is no canonical definition to state claims against.
-/

/-! ## A257582.P7787585018260077384

`A113029(A294429(n)+A113029(n+1))`
-/

namespace A257582.P7787585018260077384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113029 (A294429 n + A113029 (n + 1)).toNat

end

end A257582.P7787585018260077384

/-!
# A257583: a(0)=4; thereafter a(n)=8*n*(2*n-1)*a(n-1).

The programs for A257583, the canonical program `A257583.P16106452045042051411` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257583 has offset 0).

The definition of A257583 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*n*(2*n-1)*a(n-1)` (program `A257583.P16106452045042051411`, by `A257583.P16106452045042051411.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A257583.P1548528906827228730

`2^(2*n+2)*(2*n)!`
-/

namespace A257583.P1548528906827228730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (2 * n + 2) * Nat.factorial (2 * n)

end

end A257583.P1548528906827228730

namespace A257583

/-- `2^(2*n+2)*(2*n)!` -/
def P1548528906827228730.Spec : Prop :=
  ∀ n, (P1548528906827228730.a n : ℤ) = A257583 n

end A257583

/-! ## A257583.P16106452045042051411

`8*n*(2*n-1)*a(n-1)` with `a(0)=4`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A257583

/-- `8*n*(2*n-1)*a(n-1)` -/
def P16106452045042051411.Spec : Prop :=
  ∀ n, P16106452045042051411.a n = A257583 n

theorem P16106452045042051411.correct : P16106452045042051411.Spec := by
  intro n
  simp only [A257583]

end A257583

/-! ## A257583.P12213694649369089743

`(2*n)!*4^(n+1)`
-/

namespace A257583.P12213694649369089743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n) * 4 ^ (n + 1)

end

end A257583.P12213694649369089743

namespace A257583

/-- `(2*n)!*4^(n+1)` -/
def P12213694649369089743.Spec : Prop :=
  ∀ n, (P12213694649369089743.a n : ℤ) = A257583 n

end A257583

/-! ## A257583.P11824749834292101153

`4*(2*n)!*4^n`
-/

namespace A257583.P11824749834292101153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.factorial (2 * n) * 4 ^ n

end

end A257583.P11824749834292101153

namespace A257583

/-- `4*(2*n)!*4^n` -/
def P11824749834292101153.Spec : Prop :=
  ∀ n, (P11824749834292101153.a n : ℤ) = A257583 n

end A257583

/-! ## A257583.P8573930711418413288

`record[-(n*a(n-2))]` with `a(0)=4, a(1)=0`
-/

namespace A257583.P8573930711418413288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 0] fun n f1 =>
  -((n : ℤ) * f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257583.P8573930711418413288

namespace A257583

/-- `record[-(n*a(n-2))]` -/
def P8573930711418413288.Spec : Prop :=
  ∀ n, P8573930711418413288.a n = A257583 n

end A257583

/-!
# A257585: A254077(n) mod 2.

The programs for A257585, there is no canonical definition to state claims against.
-/

/-! ## A257585.P2614428025160023231

`A254077(n+1)%2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A257585.P2614428025160023231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254077 (n + 1)) 2

end

end A257585.P2614428025160023231

/-! ## A257585.P4899258936140915284

`and(1, A254077(1+n))`
-/

namespace A257585.P4899258936140915284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A254077 (1 + n))

end

end A257585.P4899258936140915284

/-! ## A257585.P5421711658636379739

`A000035(A254077(n+1))`
-/

namespace A257585.P5421711658636379739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A254077 (n + 1)).toNat

end

end A257585.P5421711658636379739

/-! ## A257585.P4224097738861528154

`C(A054977(n+2), A001511(A254077(n+1)))`
-/

namespace A257585.P4224097738861528154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A054977 (n + 2)).toNat (A001511 (A254077 (n + 1)).toNat).toNat

end

end A257585.P4224097738861528154

/-! ## A257585.P1533546767680059089

`A000035(A002144(n+1)*A255582(n+1))`
-/

namespace A257585.P1533546767680059089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A002144 (n + 1) * A255582 (n + 1)).toNat

end

end A257585.P1533546767680059089

/-!
# A257586: Numbers that are neither primes nor three times primes.

The programs for A257586, the canonical program `A257586.P15882022975451041570` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257586 has offset 1).

The definition of A257586 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257586.P15882022975451041570

`comp[(3*A006530(n+1))%(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A257586

/-- `comp[(3*A006530(n+1))%(n+1)]` -/
def P15882022975451041570.Spec : Prop :=
  ∀ n, (P15882022975451041570.a n : ℤ) = A257586 (n + 1)

theorem P15882022975451041570.correct : P15882022975451041570.Spec := by
  intro n
  simp only [A257586, Nat.add_sub_cancel]

end A257586

/-! ## A257586.P2535325862081139959

`∪[A033942(n+1), A171993(n+1)]`
-/

namespace A257586.P2535325862081139959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257586.P2535325862081139959

namespace A257586

/-- `∪[A033942(n+1), A171993(n+1)]` -/
def P2535325862081139959.Spec : Prop :=
  ∀ n, (P2535325862081139959.a n : ℤ) = A257586 (n + 1)

end A257586

/-! ## A257586.P14715171803087223448

`∪[A111087(n+1), A171993(n+1)]`
-/

namespace A257586.P14715171803087223448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257586.P14715171803087223448

namespace A257586

/-- `∪[A111087(n+1), A171993(n+1)]` -/
def P14715171803087223448.Spec : Prop :=
  ∀ n, (P14715171803087223448.a n : ℤ) = A257586 (n + 1)

end A257586

/-! ## A257586.P1379507327625249879

`∪[A033942(n+1), A359171(n+1)]`
-/

namespace A257586.P1379507327625249879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257586.P1379507327625249879

namespace A257586

/-- `∪[A033942(n+1), A359171(n+1)]` -/
def P1379507327625249879.Spec : Prop :=
  ∀ n, (P1379507327625249879.a n : ℤ) = A257586 (n + 1)

end A257586

/-! ## A257586.P9564382672914748648

`∪[A171993(n+1), A271345(n+1)]`
-/

namespace A257586.P9564382672914748648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257586.P9564382672914748648

namespace A257586

/-- `∪[A171993(n+1), A271345(n+1)]` -/
def P9564382672914748648.Spec : Prop :=
  ∀ n, (P9564382672914748648.a n : ℤ) = A257586 (n + 1)

end A257586

/-! ## A257586.P17260643608417776767

`∪[A111087(n+1), A359171(n+1)]`
-/

namespace A257586.P17260643608417776767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257586.P17260643608417776767

namespace A257586

/-- `∪[A111087(n+1), A359171(n+1)]` -/
def P17260643608417776767.Spec : Prop :=
  ∀ n, (P17260643608417776767.a n : ℤ) = A257586 (n + 1)

end A257586

/-! ## A257586.P14202392562246604239

`eq[n+1, A256415(n+1)]+1`
-/

namespace A257586.P14202392562246604239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256415 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A257586.P14202392562246604239

namespace A257586

/-- `eq[n+1, A256415(n+1)]+1` -/
def P14202392562246604239.Spec : Prop :=
  ∀ n, (P14202392562246604239.a n : ℤ) = A257586 (n + 1)

end A257586

/-! ## A257586.P372450148103632424

`record[A256415(A018252(n+1))]`
-/

namespace A257586.P372450148103632424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256415 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257586.P372450148103632424

namespace A257586

/-- `record[A256415(A018252(n+1))]` -/
def P372450148103632424.Spec : Prop :=
  ∀ n, P372450148103632424.a n = A257586 (n + 1)

end A257586

/-! ## A257586.P1497998321375891230

`record[A256419(A256618(n+1))%(n+4)]`
-/

namespace A257586.P1497998321375891230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256419 (A256618 (n + 1)).toNat) (n + 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257586.P1497998321375891230

namespace A257586

/-- `record[A256419(A256618(n+1))%(n+4)]` -/
def P1497998321375891230.Spec : Prop :=
  ∀ n, P1497998321375891230.a n = A257586 (n + 1)

end A257586

/-! ## A257586.P14204139149884144544

`eq[n+1, A256417(A064664(n+1))]+1`
-/

namespace A257586.P14204139149884144544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256417 (A064664 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A257586.P14204139149884144544

namespace A257586

/-- `eq[n+1, A256417(A064664(n+1))]+1` -/
def P14204139149884144544.Spec : Prop :=
  ∀ n, (P14204139149884144544.a n : ℤ) = A257586 (n + 1)

end A257586

/-! ## A257586.P13546194923358588497

`∪[A111087(n+1), A176551(n+1)]`
-/

namespace A257586.P13546194923358588497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A257586.P13546194923358588497

namespace A257586

/-- `∪[A111087(n+1), A176551(n+1)]` -/
def P13546194923358588497.Spec : Prop :=
  ∀ n, (P13546194923358588497.a n : ℤ) = A257586 (n + 1)

end A257586

/-!
# A257587: If n = abcd... in decimal, a(n) = a^2 - b^2 + c^2 - d^2 + ...

The programs for A257587, the canonical program `A257587.P10109054207891543842` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257587 has offset 0).

The definition of A257587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257587.P14605155577292358953

`A007953(A051022(n))*A225693(n)`
-/

namespace A257587.P14605155577292358953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A051022 n).toNat * A225693 n

end

end A257587.P14605155577292358953

namespace A257587

/-- `A007953(A051022(n))*A225693(n)` -/
def P14605155577292358953.Spec : Prop :=
  ∀ n, P14605155577292358953.a n = A257587 n

end A257587

/-! ## A257587.P190942102121156945

`A225693(n)*A225693(A338754(n)/11)`
-/

namespace A257587.P190942102121156945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 n * A225693 (SequenceMachineLib.roundAway ((A338754 n : ℚ) / 11)).toNat

end

end A257587.P190942102121156945

namespace A257587

/-- `A225693(n)*A225693(A338754(n)/11)` -/
def P190942102121156945.Spec : Prop :=
  ∀ n, P190942102121156945.a n = A257587 n

end A257587

/-! ## A257587.P12063566127950705921

`A225693(eq[n, A039723(n)])*A225693(n)`
-/

namespace A257587.P12063566127950705921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225693 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) * A225693 n

end

end A257587.P12063566127950705921

namespace A257587

/-- `A225693(eq[n, A039723(n)])*A225693(n)` -/
def P12063566127950705921.Spec : Prop :=
  ∀ n, P12063566127950705921.a n = A257587 n

end A257587

/-! ## A257587.P10109054207891543842

`(A088133(A056142(n))-A076314(n))*A076314(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A257587

/-- `(A088133(A056142(n))-A076314(n))*A076314(n)` -/
def P10109054207891543842.Spec : Prop :=
  ∀ n, P10109054207891543842.a n = A257587 n

theorem P10109054207891543842.correct : P10109054207891543842.Spec := by
  intro n
  simp only [A257587]

end A257587

/-! ## A257587.P7004254909786921742

`A001222(A329562(n))*A225693(n)`
-/

namespace A257587.P7004254909786921742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A329562 n).toNat * A225693 n

end

end A257587.P7004254909786921742

namespace A257587

/-- `A001222(A329562(n))*A225693(n)` -/
def P7004254909786921742.Spec : Prop :=
  ∀ n, P7004254909786921742.a n = A257587 n

end A257587

/-! ## A257587.P1523469794572085746

`∑{digits}[n, #]*A274580(round(sqrt(n²+1)))`
-/

namespace A257587.P1523469794572085746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) * A274580 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A257587.P1523469794572085746

namespace A257587

/-- `∑{digits}[n, #]*A274580(round(sqrt(n²+1)))` -/
def P1523469794572085746.Spec : Prop :=
  ∀ n, P1523469794572085746.a n = A257587 n

end A257587

/-! ## A257587.P6415905005001618159

`A076314(n)*A274580(A028310(n))`
-/

namespace A257587.P6415905005001618159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 n * A274580 (A028310 n).toNat

end

end A257587.P6415905005001618159

namespace A257587

/-- `A076314(n)*A274580(A028310(n))` -/
def P6415905005001618159.Spec : Prop :=
  ∀ n, P6415905005001618159.a n = A257587 n

end A257587

/-! ## A257587.P4414328300306886949

`A274580(A028310(n))*A331472(n)`
-/

namespace A257587.P4414328300306886949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274580 (A028310 n).toNat * A331472 n

end

end A257587.P4414328300306886949

namespace A257587

/-- `A274580(A028310(n))*A331472(n)` -/
def P4414328300306886949.Spec : Prop :=
  ∀ n, P4414328300306886949.a n = A257587 n

end A257587

/-! ## A257587.P16463682598402965298

`A001222(A069877(n))*A225693(n)`
-/

namespace A257587.P16463682598402965298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A069877 n).toNat * A225693 n

end

end A257587.P16463682598402965298

namespace A257587

/-- `A001222(A069877(n))*A225693(n)` -/
def P16463682598402965298.Spec : Prop :=
  ∀ n, P16463682598402965298.a n = A257587 n

end A257587

/-!
# A257588: If n = abcd... in decimal, a(n) = |a^2 - b^2 + c^2 - d^2 + ...|.

The programs for A257588, the canonical program `A257588.P11449220104297714209` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257588 has offset 0).

The definition of A257588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A257588.P11449220104297714209

`abs(A257587(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A257588

/-- `abs(A257587(n))` -/
def P11449220104297714209.Spec : Prop :=
  ∀ n, P11449220104297714209.a n = A257588 n

theorem P11449220104297714209.correct : P11449220104297714209.Spec := by
  intro n
  simp only [A257588]

end A257588

/-! ## A257588.P3396767446270456618

`lcm(A033999(n), A257587(n))`
-/

namespace A257588.P3396767446270456618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A257587 n)

end

end A257588.P3396767446270456618

namespace A257588

/-- `lcm(A033999(n), A257587(n))` -/
def P3396767446270456618.Spec : Prop :=
  ∀ n, (P3396767446270456618.a n : ℤ) = A257588 n

end A257588

/-! ## A257588.P1120683170729816775

`∑{d}[A257587(n), A000010(#)]`
-/

namespace A257588.P1120683170729816775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A257588.P1120683170729816775

namespace A257588

/-- `∑{d}[A257587(n), A000010(#)]` -/
def P1120683170729816775.Spec : Prop :=
  ∀ n, P1120683170729816775.a n = A257588 n

end A257588

/-! ## A257588.P12919911495896390050

`gcd(A000038(n+1), A257587(n))`
-/

namespace A257588.P12919911495896390050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (n + 1)) (A257587 n)

end

end A257588.P12919911495896390050

namespace A257588

/-- `gcd(A000038(n+1), A257587(n))` -/
def P12919911495896390050.Spec : Prop :=
  ∀ n, (P12919911495896390050.a n : ℤ) = A257588 n

end A257588

/-! ## A257588.P11804337514787493921

`gcd(A010873(A008586(n)), A257587(n))`
-/

namespace A257588.P11804337514787493921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010873 (A008586 n).toNat) (A257587 n)

end

end A257588.P11804337514787493921

namespace A257588

/-- `gcd(A010873(A008586(n)), A257587(n))` -/
def P11804337514787493921.Spec : Prop :=
  ∀ n, (P11804337514787493921.a n : ℤ) = A257588 n

end A257588

/-! ## A257588.P14926960188373833062

`lcm(A010689(2*n), A257587(A004086(n)))`
-/

namespace A257588.P14926960188373833062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010689 (2 * n)) (A257587 (A004086 n).toNat)

end

end A257588.P14926960188373833062

namespace A257588

/-- `lcm(A010689(2*n), A257587(A004086(n)))` -/
def P14926960188373833062.Spec : Prop :=
  ∀ n, (P14926960188373833062.a n : ℤ) = A257588 n

end A257588

/-! ## A257588.P700142707877374809

`A000196(A257587(n)²)`
-/

namespace A257588.P700142707877374809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A257587 n ^ 2).toNat

end

end A257588.P700142707877374809

namespace A257588

/-- `A000196(A257587(n)²)` -/
def P700142707877374809.Spec : Prop :=
  ∀ n, P700142707877374809.a n = A257588 n

end A257588

/-! ## A257588.P12441770902760563521

`A007953(A051022(n))*A241494(n)`
-/

namespace A257588.P12441770902760563521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A051022 n).toNat * A241494 n

end

end A257588.P12441770902760563521

namespace A257588

/-- `A007953(A051022(n))*A241494(n)` -/
def P12441770902760563521.Spec : Prop :=
  ∀ n, P12441770902760563521.a n = A257588 n

end A257588

/-! ## A257588.P7684358002418818110

`abs(A007953(A051022(n))*A055017(n))`
-/

namespace A257588.P7684358002418818110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007953 (A051022 n).toNat * A055017 n|

end

end A257588.P7684358002418818110

namespace A257588

/-- `abs(A007953(A051022(n))*A055017(n))` -/
def P7684358002418818110.Spec : Prop :=
  ∀ n, P7684358002418818110.a n = A257588 n

end A257588

/-! ## A257588.P12926289704437338285

`abs(A007953(A051022(n))*A225693(n))`
-/

namespace A257588.P12926289704437338285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007953 (A051022 n).toNat * A225693 n|

end

end A257588.P12926289704437338285

namespace A257588

/-- `abs(A007953(A051022(n))*A225693(n))` -/
def P12926289704437338285.Spec : Prop :=
  ∀ n, P12926289704437338285.a n = A257588 n

end A257588

/-! ## A257588.P3772094868638087896

`A007953(A051022(n))*A055017(A004185(n))`
-/

namespace A257588.P3772094868638087896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A051022 n).toNat * A055017 (A004185 n).toNat

end

end A257588.P3772094868638087896

namespace A257588

/-- `A007953(A051022(n))*A055017(A004185(n))` -/
def P3772094868638087896.Spec : Prop :=
  ∀ n, P3772094868638087896.a n = A257588 n

end A257588

/-! ## A257588.P7802728810896885543

`A007953(A051022(n))*A225693(A004186(n))`
-/

namespace A257588.P7802728810896885543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A051022 n).toNat * A225693 (A004186 n).toNat

end

end A257588.P7802728810896885543

namespace A257588

/-- `A007953(A051022(n))*A225693(A004186(n))` -/
def P7802728810896885543.Spec : Prop :=
  ∀ n, P7802728810896885543.a n = A257588 n

end A257588

/-! ## A257588.P15278289202500673035

`∑{d}[A007953(A051022(n))*A225693(n), A000010(#)]`
-/

namespace A257588.P15278289202500673035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A051022 n).toNat * A225693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A257588.P15278289202500673035

namespace A257588

/-- `∑{d}[A007953(A051022(n))*A225693(n), A000010(#)]` -/
def P15278289202500673035.Spec : Prop :=
  ∀ n, P15278289202500673035.a n = A257588 n

end A257588

/-! ## A257588.P5375960089133892336

`A033930(n)*A241494(A051022(n))`
-/

namespace A257588.P5375960089133892336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 n * A241494 (A051022 n).toNat

end

end A257588.P5375960089133892336

namespace A257588

/-- `A033930(n)*A241494(A051022(n))` -/
def P5375960089133892336.Spec : Prop :=
  ∀ n, P5375960089133892336.a n = A257588 n

end A257588

/-! ## A257588.P7303722357539718979

`A076314(n)*A241494(A051022(n))`
-/

namespace A257588.P7303722357539718979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 n * A241494 (A051022 n).toNat

end

end A257588.P7303722357539718979

namespace A257588

/-- `A076314(n)*A241494(A051022(n))` -/
def P7303722357539718979.Spec : Prop :=
  ∀ n, P7303722357539718979.a n = A257588 n

end A257588

/-! ## A257588.P723025923697724478

`A241494(A051022(n))*A331472(n)`
-/

namespace A257588.P723025923697724478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241494 (A051022 n).toNat * A331472 n

end

end A257588.P723025923697724478

namespace A257588

/-- `A241494(A051022(n))*A331472(n)` -/
def P723025923697724478.Spec : Prop :=
  ∀ n, P723025923697724478.a n = A257588 n

end A257588

/-!
# A257589: a(n) = (2n+1)^2*Catalan(n).

The programs for A257589, the canonical program `A257589.P4597580534810124875` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257589 has offset 0).

The definition of A257589 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)²*A000108(n)` (program `A257589.P4597580534810124875`, by `A257589.P4597580534810124875.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A257589.P4597580534810124875

`(2*n+1)²*A000108(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A257589

/-- `(2*n+1)²*A000108(n)` -/
def P4597580534810124875.Spec : Prop :=
  ∀ n, P4597580534810124875.a n = A257589 n

theorem P4597580534810124875.correct : P4597580534810124875.Spec := by
  intro n
  simp only [A257589]

end A257589

/-! ## A257589.P11351011317206335248

`(2*n+1)²*C(2*n, n)/(n+1)`
-/

namespace A257589.P11351011317206335248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 * Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ)

end

end A257589.P11351011317206335248

namespace A257589

/-- `(2*n+1)²*C(2*n, n)/(n+1)` -/
def P11351011317206335248.Spec : Prop :=
  ∀ n, P11351011317206335248.a n = (A257589 n : ℚ)

end A257589

/-! ## A257589.P934602151943616829

`(n+1/2)*(2*n+2)!/(n+1)!²`
-/

namespace A257589.P934602151943616829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) + (1 : ℚ) / 2) * (Nat.factorial (2 * n + 2) : ℚ) / (Nat.factorial (n + 1) ^ 2 : ℚ)

end

end A257589.P934602151943616829

namespace A257589

/-- `(n+1/2)*(2*n+2)!/(n+1)!²` -/
def P934602151943616829.Spec : Prop :=
  ∀ n, P934602151943616829.a n = (A257589 n : ℚ)

end A257589

/-! ## A257589.P6156996209982680995

`∏[4-2/(n+1)]/2*Δ[n²]`
-/

namespace A257589.P6156996209982680995
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / 2 * ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ)

end

end A257589.P6156996209982680995

namespace A257589

/-- `∏[4-2/(n+1)]/2*Δ[n²]` -/
def P6156996209982680995.Spec : Prop :=
  ∀ n, P6156996209982680995.a n = (A257589 n : ℚ)

end A257589

/-! ## A257589.P1608563158999988653

`A218073(Δ[n²])`
-/

namespace A257589.P1608563158999988653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218073 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A257589.P1608563158999988653

namespace A257589

/-- `A218073(Δ[n²])` -/
def P1608563158999988653.Spec : Prop :=
  ∀ n, P1608563158999988653.a n = A257589 n

end A257589

/-! ## A257589.P10989266187651010496

`record[Δ[A212303(n)]]`
-/

namespace A257589.P10989266187651010496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212303 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257589.P10989266187651010496

namespace A257589

/-- `record[Δ[A212303(n)]]` -/
def P10989266187651010496.Spec : Prop :=
  ∀ n, P10989266187651010496.a n = A257589 n

end A257589

/-! ## A257589.P5398059264684963033

`A191527(2*(n+1))`
-/

namespace A257589.P5398059264684963033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191527 (2 * (n + 1))

end

end A257589.P5398059264684963033

namespace A257589

/-- `A191527(2*(n+1))` -/
def P5398059264684963033.Spec : Prop :=
  ∀ n, P5398059264684963033.a n = A257589 n

end A257589

/-! ## A257589.P13371547419094373910

`record[Δ[n*A138364(n)]]`
-/

namespace A257589.P13371547419094373910
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A138364 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257589.P13371547419094373910

namespace A257589

/-- `record[Δ[n*A138364(n)]]` -/
def P13371547419094373910.Spec : Prop :=
  ∀ n, P13371547419094373910.a n = A257589 n

end A257589

/-! ## A257589.P2985033967789684028

`record[Δ[n²*A090192(n)]]`
-/

namespace A257589.P2985033967789684028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A090192 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257589.P2985033967789684028

namespace A257589

/-- `record[Δ[n²*A090192(n)]]` -/
def P2985033967789684028.Spec : Prop :=
  ∀ n, P2985033967789684028.a n = A257589 n

end A257589

/-! ## A257589.P7525957432075867077

`record[Δ[n²*A097331(n)]]`
-/

namespace A257589.P7525957432075867077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A097331 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A257589.P7525957432075867077

namespace A257589

/-- `record[Δ[n²*A097331(n)]]` -/
def P7525957432075867077.Spec : Prop :=
  ∀ n, P7525957432075867077.a n = A257589 n

end A257589

/-! ## A257589.P2556492369578493064

`lcm(2*n+1, A218073(2*n+1))`
-/

namespace A257589.P2556492369578493064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A218073 (2 * n + 1))

end

end A257589.P2556492369578493064

namespace A257589

/-- `lcm(2*n+1, A218073(2*n+1))` -/
def P2556492369578493064.Spec : Prop :=
  ∀ n, (P2556492369578493064.a n : ℤ) = A257589 n

end A257589

/-! ## A257589.P9471587691338293713

`A002011(n)-A033876(n)`
-/

namespace A257589.P9471587691338293713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002011 n - A033876 n

end

end A257589.P9471587691338293713

namespace A257589

/-- `A002011(n)-A033876(n)` -/
def P9471587691338293713.Spec : Prop :=
  ∀ n, P9471587691338293713.a n = A257589 n

end A257589

/-! ## A257589.P869706606043997065

`A002737(n)+A001791(n+1)`
-/

namespace A257589.P869706606043997065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002737 n + A001791 (n + 1)

end

end A257589.P869706606043997065

namespace A257589

/-- `A002737(n)+A001791(n+1)` -/
def P869706606043997065.Spec : Prop :=
  ∀ n, P869706606043997065.a n = A257589 n

end A257589

/-! ## A257589.P3601179472520431076

`A352626(n+1)+A110609(n)`
-/

namespace A257589.P3601179472520431076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352626 (n + 1) + A110609 n

end

end A257589.P3601179472520431076

namespace A257589

/-- `A352626(n+1)+A110609(n)` -/
def P3601179472520431076.Spec : Prop :=
  ∀ n, P3601179472520431076.a n = A257589 n

end A257589

/-! ## A257589.P15962762443979411432

`A005430(n+1)-A001700(n)`
-/

namespace A257589.P15962762443979411432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005430 (n + 1) - A001700 n

end

end A257589.P15962762443979411432

namespace A257589

/-- `A005430(n+1)-A001700(n)` -/
def P15962762443979411432.Spec : Prop :=
  ∀ n, P15962762443979411432.a n = A257589 n

end A257589

/-! ## A257589.P17774249623958255293

`A033876(n)-A000984(n+1)`
-/

namespace A257589.P17774249623958255293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033876 n - A000984 (n + 1)

end

end A257589.P17774249623958255293

namespace A257589

/-- `A033876(n)-A000984(n+1)` -/
def P17774249623958255293.Spec : Prop :=
  ∀ n, P17774249623958255293.a n = A257589 n

end A257589

/-! ## A257589.P13057243224476431299

`2*A002457(n)-A001700(n)`
-/

namespace A257589.P13057243224476431299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002457 n - A001700 n

end

end A257589.P13057243224476431299

namespace A257589

/-- `2*A002457(n)-A001700(n)` -/
def P13057243224476431299.Spec : Prop :=
  ∀ n, P13057243224476431299.a n = A257589 n

end A257589

/-! ## A257589.P3338963320587783856

`A033876(n)-2*A001700(n)`
-/

namespace A257589.P3338963320587783856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033876 n - 2 * A001700 n

end

end A257589.P3338963320587783856

namespace A257589

/-- `A033876(n)-2*A001700(n)` -/
def P3338963320587783856.Spec : Prop :=
  ∀ n, P3338963320587783856.a n = A257589 n

end A257589

/-! ## A257589.P1463101536498969141

`A000108(n)+n*A240530(n)`
-/

namespace A257589.P1463101536498969141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (n : ℤ) * A240530 n

end

end A257589.P1463101536498969141

namespace A257589

/-- `A000108(n)+n*A240530(n)` -/
def P1463101536498969141.Spec : Prop :=
  ∀ n, P1463101536498969141.a n = A257589 n

end A257589

/-! ## A257589.P8418783436280083506

`A000108(n)/(1/A005408(n))²`
-/

namespace A257589.P8418783436280083506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) / (1 / (A005408 n : ℚ)) ^ 2

end

end A257589.P8418783436280083506

namespace A257589

/-- `A000108(n)/(1/A005408(n))²` -/
def P8418783436280083506.Spec : Prop :=
  ∀ n, P8418783436280083506.a n = (A257589 n : ℚ)

end A257589

/-!
# A257590: Primes that arise from an investigation of values x for which pi(x) is different from the approximations pi_2(x).

The programs for A257590, there is no canonical definition to state claims against.
-/

/-! ## A257590.P6699471902348517429

`A124277(A030310(n+1)+1)`
-/

namespace A257590.P6699471902348517429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124277 (A030310 (n + 1) + 1).toNat

end

end A257590.P6699471902348517429

/-! ## A257590.P3353263367149561100

`p?[A007067(comp[A030161(n+1)])]`
-/

namespace A257590.P3353263367149561100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030161 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A257590.P3353263367149561100

/-! ## A257590.P14412556356828115609

`p?[A265562(n)+A078358(n+1)]`
-/

namespace A257590.P14412556356828115609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265562 n + A078358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A257590.P14412556356828115609

/-! ## A257590.P1276216468734781763

`p?[lt[A023585(n+1), A103432(n+3)]]`
-/

namespace A257590.P1276216468734781763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023585 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103432 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A257590.P1276216468734781763

/-! ## A257590.P7191245436076484508

`A184859(lt[A106007(n+2), A106027(3*n+2)])`
-/

namespace A257590.P7191245436076484508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106007 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106027 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184859 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A257590.P7191245436076484508

/-!
# A257591: Odd numbers which are not prime powers but which have a proper divisor == 1 mod 4.

The programs for A257591, there is no canonical definition to state claims against.
-/

/-! ## A257591.P16116673267822387782

`∩[A061346(n+1), A334818(n+1)]`
-/

namespace A257591.P16116673267822387782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257591.P16116673267822387782

/-! ## A257591.P8912310326694599833

`∩[2*A083390(n+1)+1, A334818(n+1)]`
-/

namespace A257591.P8912310326694599833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083390 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257591.P8912310326694599833

/-! ## A257591.P6513741336486991300

`∩[∩[2*n+1, A033949(n+1)], A334818(n+1)]`
-/

namespace A257591.P6513741336486991300
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A257591.P6513741336486991300

/-! ## A257591.P1152355488089093920

`∩[∩[2*n+1, A070537(n+2)], A334818(n+1)]`
-/

namespace A257591.P1152355488089093920
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070537 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A257591.P1152355488089093920

/-! ## A257591.P2234703181664446659

`∩[A130773(A083390(n+1)), A334818(n+1)]`
-/

namespace A257591.P2234703181664446659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (A083390 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334818 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A257591.P2234703181664446659

/-!
# A257592: Number of zeros of the polynomial Sum_{j=0..n-1} z^(2^j-1) inside the unit circle.

The programs for A257592, there is no canonical definition to state claims against.
-/

/-! ## A257592.P14018866205274675346

`A397719(A038505(n))`
-/

namespace A257592.P14018866205274675346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397719 (A038505 n).toNat

end

end A257592.P14018866205274675346

/-! ## A257592.P378228393430184580

`A345921(A374747(n))-A345926(n+1)`
-/

namespace A257592.P378228393430184580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345921 (A374747 n).toNat - A345926 (n + 1)

end

end A257592.P378228393430184580

/-! ## A257592.P9964617930413705910

`A345921(A374747(n))-A345938(n+1)`
-/

namespace A257592.P9964617930413705910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345921 (A374747 n).toNat - A345938 (n + 1)

end

end A257592.P9964617930413705910

/-! ## A257592.P8491258880650454496

`A298338(n)-A113504(A069700(2*(n+1)))`
-/

namespace A257592.P8491258880650454496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298338 n - A113504 (A069700 (2 * (n + 1))).toNat

end

end A257592.P8491258880650454496

/-!
# A257595: Expansion of x^3*(1+x+2*x^2+3*x^3+3*x^4+x^5)/(1-x^2-x^3)^3.

The programs for A257595, the canonical program `A257595.P10827125047290396996` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A257595 has offset 0).

The definition of A257595 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x^3+x^4+2x^5+3x^6+3x^7+x^8)/(1-3x^2-3x^3+3x^4+6x^5+2x^6-3x^7-3x^8-x^9))` (program `A257595.P10827125047290396996`, by `A257595.P10827125047290396996.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A257595.P10827125047290396996

`ogf((x^3+x^4+2x^5+3x^6+3x^7+x^8)/(1-3x^2-3x^3+3x^4+6x^5+2x^6-3x^7-3x^8-x^9))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A257595

/-- `ogf((x^3+x^4+2x^5+3x^6+3x^7+x^8)/(1-3x^2-3x^3+3x^4+6x^5+2x^6-3x^7-3x^8-x^9))` -/
def P10827125047290396996.Spec : Prop :=
  ∀ n, P10827125047290396996.a n = A257595 n

theorem P10827125047290396996.correct : P10827125047290396996.Spec := by
  intro n
  simp only [A257595]

end A257595

/-! ## A257595.P16966233582068535442

`A331872(n+1)-A174447(A131685(3*n+4))`
-/

namespace A257595.P16966233582068535442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331872 (n + 1) - A174447 (A131685 (3 * n + 4)).toNat

end

end A257595.P16966233582068535442

namespace A257595

/-- `A331872(n+1)-A174447(A131685(3*n+4))` -/
def P16966233582068535442.Spec : Prop :=
  ∀ n, P16966233582068535442.a n = A257595 n

end A257595

/-! ## A257595.P765972808661604820

`abs(A274923(A181545(n)))`
-/

namespace A257595.P765972808661604820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A274923 (A181545 n).toNat|

end

end A257595.P765972808661604820

namespace A257595

/-- `abs(A274923(A181545(n)))` -/
def P765972808661604820.Spec : Prop :=
  ∀ n, P765972808661604820.a n = A257595 n

end A257595

/-! ## A257595.P17712730939161675827

`Δ[A262689(A153941(n))]`
-/

namespace A257595.P17712730939161675827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A153941 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A257595.P17712730939161675827

namespace A257595

/-- `Δ[A262689(A153941(n))]` -/
def P17712730939161675827.Spec : Prop :=
  ∀ n, P17712730939161675827.a n = A257595 n

end A257595

/-! ## A257595.P4398815483027801174

`A327193(A074085(n+1))`
-/

namespace A257595.P4398815483027801174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327193 (A074085 (n + 1)).toNat

end

end A257595.P4398815483027801174

namespace A257595

/-- `A327193(A074085(n+1))` -/
def P4398815483027801174.Spec : Prop :=
  ∀ n, P4398815483027801174.a n = A257595 n

end A257595

/-!
# A257596: G.f.: (1-x)*(1-2*x-x^2-(1-x)*sqrt(1-2*x-3*x^2))/(2*x*(1-2*x-x^2)).

The programs for A257596, there is no canonical definition to state claims against.
-/

/-! ## A257596.P16593797897376754786

`A001281(A026150(n)-ceil(2^(n-1)))`
-/

namespace A257596.P16593797897376754786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A026150 n - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉).toNat

end

end A257596.P16593797897376754786

/-! ## A257596.P6295742640532608244

`A004525(A026150(n)-ceil(2^(n-1)))`
-/

namespace A257596.P6295742640532608244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A026150 n - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉).toNat

end

end A257596.P6295742640532608244

/-! ## A257596.P14319142898697507133

`A004526(A026150(n)-ceil(2^(n-1)))`
-/

namespace A257596.P14319142898697507133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A026150 n - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉).toNat

end

end A257596.P14319142898697507133

/-! ## A257596.P14212544998386955934

`A025480(A026150(n)-ceil(2^(n-1)))`
-/

namespace A257596.P14212544998386955934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A026150 n - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉).toNat

end

end A257596.P14212544998386955934

/-! ## A257596.P5365656361481776645

`A026741(A026150(n)-ceil(2^(n-1)))`
-/

namespace A257596.P5365656361481776645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026150 n - ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉).toNat

end

end A257596.P5365656361481776645

/-!
# A257597: Irregular triangle read by rows: coefficients of polynomials V_n(x), highest degree terms first.

The programs for A257597, there is no canonical definition to state claims against.
-/

/-! ## A257597.P6629005236956572404

`or(1, a(n-1)-A028297(n))` with `a(0)=1`
-/

namespace A257597.P6629005236956572404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 (a (n - 1) - A028297 n)

end

end A257597.P6629005236956572404

/-! ## A257597.P4578997824719556969

`A118801(A091018(n+1))`
-/

namespace A257597.P4578997824719556969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118801 (A091018 (n + 1)).toNat

end

end A257597.P4578997824719556969

/-! ## A257597.P12709710414847248132

`A118801(A056536(n+2)-1)`
-/

namespace A257597.P12709710414847248132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118801 (A056536 (n + 2) - 1).toNat

end

end A257597.P12709710414847248132

/-! ## A257597.P15456328498213823015

`A000267(n+1)-∑[A028297(n)]`
-/

namespace A257597.P15456328498213823015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A257597.P15456328498213823015

/-!
# A257599: Cusp numbers of terms of A091401.

The programs for A257599, there is no canonical definition to state claims against.
-/

/-! ## A257599.P14980422549765443130

`A001616(A065650(n)+1)`
-/

namespace A257599.P14980422549765443130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001616 (A065650 n + 1).toNat

end

end A257599.P14980422549765443130

/-! ## A257599.P10516157846597083022

`A001616(A091401(n+1))`
-/

namespace A257599.P10516157846597083022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001616 (A091401 (n + 1)).toNat

end

end A257599.P10516157846597083022

/-! ## A257599.P1510345894340140195

`A001616(A154771(n)+1)`
-/

namespace A257599.P1510345894340140195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001616 (A154771 n + 1).toNat

end

end A257599.P1510345894340140195

/-! ## A257599.P12394691364460649106

`A001616(A278581(n+1))`
-/

namespace A257599.P12394691364460649106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001616 (A278581 (n + 1)).toNat

end

end A257599.P12394691364460649106

/-! ## A257599.P5208607913039885363

`A000005(∑[A026757(A017898(n))])`
-/

namespace A257599.P5208607913039885363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026757 (A017898 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A257599.P5208607913039885363

