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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025
import Seq.Opaque.C026

/-!
# A378400: Number of subsets of {1,2,3,...,n}^2 with the property that every point has exactly two other closest points.

The programs for A378400, there is no canonical definition to state claims against.
-/

/-! ## A378400.P10485809894097535845

`A143692(A327364(n)+1)`
-/

namespace A378400.P10485809894097535845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143692 (A327364 n + 1).toNat

end

end A378400.P10485809894097535845

/-!
# A378401: Rectangular array read by descending antidiagonals: (row 1) = u, and for n >= 2, (row n) = u-inverse runlength sequence of u, where u = A006338. See Comments.

The programs for A378401, there is no canonical definition to state claims against.
-/

/-! ## A378401.P4465252775412610249

`A014695(A107811(n+5)+A008483(2*(n+1)))`
-/

namespace A378401.P4465252775412610249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (A107811 (n + 5) + A008483 (2 * (n + 1))).toNat

end

end A378401.P4465252775412610249

/-! ## A378401.P17744359947883539245

`A270646(A331913(n+1)+A085056(n+1))`
-/

namespace A378401.P17744359947883539245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270646 (A331913 (n + 1) + A085056 (n + 1)).toNat

end

end A378401.P17744359947883539245

/-! ## A378401.P8677204828670193147

`A143331(A002095(n)*A286048(3*n+5))`
-/

namespace A378401.P8677204828670193147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143331 (A002095 n * A286048 (3 * n + 5)).toNat

end

end A378401.P8677204828670193147

/-! ## A378401.P15707071634402199730

`A043281(A027862(n+5)-A326689(3*n+5))`
-/

namespace A378401.P15707071634402199730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043281 (A027862 (n + 5) - A326689 (3 * n + 5)).toNat

end

end A378401.P15707071634402199730

/-! ## A378401.P4784336913507930455

`gcd(2, A333230(A112088(n+1)))`
-/

namespace A378401.P4784336913507930455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A333230 (A112088 (n + 1)).toNat)

end

end A378401.P4784336913507930455

/-!
# A378403: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(n+2*k,n-k).

The programs for A378403, there is no canonical definition to state claims against.
-/

/-! ## A378403.P2318145991910077059

`A358374(A005900(n)+1)`
-/

namespace A378403.P2318145991910077059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358374 (A005900 n + 1).toNat

end

end A378403.P2318145991910077059

/-!
# A378404: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(n+3*k,n-k).

The programs for A378404, there is no canonical definition to state claims against.
-/

/-! ## A378404.P5168239350855878871

`A062071(A262910(n))-A152728(n)`
-/

namespace A378404.P5168239350855878871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062071 (A262910 n).toNat - A152728 n

end

end A378404.P5168239350855878871

/-!
# A378405: a(n) = Sum_{k=0..floor(n/2)} binomial(n,k) * binomial(n+k,n-2*k).

The programs for A378405, there is no canonical definition to state claims against.
-/

/-! ## A378405.P2131944346823023748

`A316974(n)-A325178(A064339(n))`
-/

namespace A378405.P2131944346823023748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316974 n - A325178 (A064339 n).toNat

end

end A378405.P2131944346823023748

/-! ## A378405.P14711406804409115394

`or(A030195(n), A066075(A007583(n)))`
-/

namespace A378405.P14711406804409115394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030195 n) (A066075 (A007583 n).toNat)

end

end A378405.P14711406804409115394

/-! ## A378405.P7774195123411430403

`or(A030195(n), A032741(A061292(n)))`
-/

namespace A378405.P7774195123411430403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030195 n) (A032741 (A061292 n).toNat)

end

end A378405.P7774195123411430403

/-!
# A378406: a(n) = Sum_{k=0..floor(n/2)} binomial(n,k) * binomial(n+2*k,n-2*k).

The programs for A378406, there is no canonical definition to state claims against.
-/

/-! ## A378406.P8474856325412903104

`A337254(a(n-1))+n` with `a(0)=1, a(1)=1`
-/

namespace A378406.P8474856325412903104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A337254 (a (n - 1)).toNat + (n : ℤ)

end

end A378406.P8474856325412903104

/-! ## A378406.P4484639974730229274

`A271865(A007161(n))`
-/

namespace A378406.P4484639974730229274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271865 (A007161 n).toNat

end

end A378406.P4484639974730229274

/-!
# A378407: a(n) = Sum_{k=0..floor(n/3)} binomial(n,k) * binomial(n+2*k,n-3*k).

The programs for A378407, there is no canonical definition to state claims against.
-/

/-! ## A378407.P14696797217125174796

`A359762(∑[2^n-n]+2)`
-/

namespace A378407.P14696797217125174796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359762 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A378407.P14696797217125174796

/-! ## A378407.P13146318639370130883

`A105535(A018013(n))`
-/

namespace A378407.P13146318639370130883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105535 (A018013 n).toNat

end

end A378407.P13146318639370130883

/-!
# A378409: a(n) = Sum_{k=0..n} (-1)^(n-k) * binomial(n,k) * binomial(n*k,k) / ((n-1)*k+1).

The programs for A378409, there is no canonical definition to state claims against.
-/

/-! ## A378409.P4171369109517908764

`A016729(A001035(n))-A036043(n)`
-/

namespace A378409.P4171369109517908764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016729 (A001035 n).toNat - A036043 n

end

end A378409.P4171369109517908764

/-! ## A378409.P13501211448927741955

`A016729(A001035(n))-A001222(n+1)`
-/

namespace A378409.P13501211448927741955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016729 (A001035 n).toNat - A001222 (n + 1)

end

end A378409.P13501211448927741955

/-!
# A378410: a(n) = Sum_{k=0..n} (-1)^(n-k) * binomial(n-1,k-1) * binomial(n*k,k) / ((n-1)*k+1).

The programs for A378410, there is no canonical definition to state claims against.
-/

/-! ## A378410.P387922012416968379

`A363357(and(A006246(n+1), A106856(3*n+2)))`
-/

namespace A378410.P387922012416968379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363357 (Int.land (A006246 (n + 1)) (A106856 (3 * n + 2))).toNat

end

end A378410.P387922012416968379

/-!
# A378411: G.f. A(x) satisfies A(x) = ( 1 + x * (1 + x*A(x)^(3/2)) )^2.

The programs for A378411, there is no canonical definition to state claims against.
-/

/-! ## A378411.P14422317142738712938

`A378321(∑[n+3])`
-/

namespace A378411.P14422317142738712938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378321 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A378411.P14422317142738712938

/-! ## A378411.P15018770870464715417

`record[A378321(n)/A135597(n+4)]`
-/

namespace A378411.P15018770870464715417
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378321 n : ℚ) / (A135597 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378411.P15018770870464715417

/-! ## A378411.P4040060145475396392

`abs(Δ[A239104(n+1)])`
-/

namespace A378411.P4040060145475396392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A378411.P4040060145475396392

/-!
# A378414: Sum of the integers from 1 to n that are not antidivisors of n.

The programs for A378414, there is no canonical definition to state claims against.
-/

/-! ## A378414.P10090681493081176152

`∑[n+1]-A066417(n+1)`
-/

namespace A378414.P10090681493081176152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A066417 (n + 1)

end

end A378414.P10090681493081176152

/-! ## A378414.P686016511207781973

`∑[n+1]+1-A058838(n+1)`
-/

namespace A378414.P686016511207781973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - A058838 (n + 1)

end

end A378414.P686016511207781973

/-! ## A378414.P17041396803866453617

`A000096(n)+2-A058838(n+1)`
-/

namespace A378414.P17041396803866453617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + (2 - A058838 (n + 1))

end

end A378414.P17041396803866453617

/-! ## A378414.P8091164881862845915

`A000124(n)-A066417(n+1)+n`
-/

namespace A378414.P8091164881862845915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A066417 (n + 1) + (n : ℤ)

end

end A378414.P8091164881862845915

/-! ## A378414.P1234337247828662934

`abs(A000217(n+1)-A066417(n+1))`
-/

namespace A378414.P1234337247828662934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000217 (n + 1) - A066417 (n + 1)|

end

end A378414.P1234337247828662934

/-! ## A378414.P6166033818918396093

`A000217(n)-A066417(n+1)+1+n`
-/

namespace A378414.P6166033818918396093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A066417 (n + 1) + 1 + (n : ℤ)

end

end A378414.P6166033818918396093

/-!
# A378415: Primes with repeated digits that remain prime when any two of the same-valued digits are deleted.

The programs for A378415, there is no canonical definition to state claims against.
-/

/-! ## A378415.P8719039624699313820

`∩[A073064(n+1), A346408(n+1)]`
-/

namespace A378415.P8719039624699313820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378415.P8719039624699313820

/-! ## A378415.P1002901334881228565

`∩[A155075(n+1), A346408(n+1)]`
-/

namespace A378415.P1002901334881228565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378415.P1002901334881228565

/-! ## A378415.P1486346209901289807

`∩[A164937(n+1), A346408(n+1)]`
-/

namespace A378415.P1486346209901289807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164937 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378415.P1486346209901289807

/-! ## A378415.P2084450472747459473

`∩[A210666(n+1), A346408(n+1)]`
-/

namespace A378415.P2084450472747459473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378415.P2084450472747459473

/-!
# A378416: Number of fixed site animals with n nodes on the nodes of the rhombille tiling.

The programs for A378416, there is no canonical definition to state claims against.
-/

/-! ## A378416.P496585261534696278

`A001576(n)-A046810(A367371(n))`
-/

namespace A378416.P496585261534696278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001576 n - A046810 (A367371 n).toNat

end

end A378416.P496585261534696278

/-!
# A378422: Primes of the form floor(k*log(k)).

The programs for A378422, the canonical program `A378422.P16183056484297808619` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378422 has offset 1).

The definition of A378422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7044 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378422.P16183056484297808619

`p?[floor((n+1)*log(n+1))]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A378422

/-- `p?[floor((n+1)*log(n+1))]` -/
def P16183056484297808619.Spec : Prop :=
  ∀ n, P16183056484297808619.a n = A378422 (n + 1)

theorem P16183056484297808619.correct : P16183056484297808619.Spec := by
  intro n
  simp only [A378422, Nat.add_sub_cancel]

end A378422

/-! ## A378422.P17860230636810653366

`A050504(A066928(n+1))`
-/

namespace A378422.P17860230636810653366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (A066928 (n + 1)).toNat

end

end A378422.P17860230636810653366

namespace A378422

/-- `A050504(A066928(n+1))` -/
def P17860230636810653366.Spec : Prop :=
  ∀ n, P17860230636810653366.a n = A378422 (n + 1)

end A378422

/-! ## A378422.P16632276763388899453

`∩[A000040(n+1), A050504(n+1)]`
-/

namespace A378422.P16632276763388899453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378422.P16632276763388899453

namespace A378422

/-- `∩[A000040(n+1), A050504(n+1)]` -/
def P16632276763388899453.Spec : Prop :=
  ∀ n, (P16632276763388899453.a n : ℤ) = A378422 (n + 1)

end A378422

/-! ## A378422.P10785712206978163531

`∩[A050504(n+1), A051948(n+1)]`
-/

namespace A378422.P10785712206978163531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378422.P10785712206978163531

namespace A378422

/-- `∩[A050504(n+1), A051948(n+1)]` -/
def P10785712206978163531.Spec : Prop :=
  ∀ n, (P10785712206978163531.a n : ℤ) = A378422 (n + 1)

end A378422

/-! ## A378422.P4060031724860893549

`∩[A050504(n+1), A064728(n+1)]`
-/

namespace A378422.P4060031724860893549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378422.P4060031724860893549

namespace A378422

/-- `∩[A050504(n+1), A064728(n+1)]` -/
def P4060031724860893549.Spec : Prop :=
  ∀ n, (P4060031724860893549.a n : ℤ) = A378422 (n + 1)

end A378422

/-! ## A378422.P3541583711177159888

`∩[A050504(n+1), A065091(n+1)]`
-/

namespace A378422.P3541583711177159888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378422.P3541583711177159888

namespace A378422

/-- `∩[A050504(n+1), A065091(n+1)]` -/
def P3541583711177159888.Spec : Prop :=
  ∀ n, (P3541583711177159888.a n : ℤ) = A378422 (n + 1)

end A378422

/-! ## A378422.P8070258355337136423

`∩[A050504(n+1), A065396(n+1)]`
-/

namespace A378422.P8070258355337136423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378422.P8070258355337136423

namespace A378422

/-- `∩[A050504(n+1), A065396(n+1)]` -/
def P8070258355337136423.Spec : Prop :=
  ∀ n, (P8070258355337136423.a n : ℤ) = A378422 (n + 1)

end A378422

/-! ## A378422.P16080540299284988443

`∩[A050504(n+1), A106118(n+1)]`
-/

namespace A378422.P16080540299284988443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378422.P16080540299284988443

namespace A378422

/-- `∩[A050504(n+1), A106118(n+1)]` -/
def P16080540299284988443.Spec : Prop :=
  ∀ n, (P16080540299284988443.a n : ℤ) = A378422 (n + 1)

end A378422

/-! ## A378422.P50049665409825782

`∩[A050504(n+1), A116974(n+1)]`
-/

namespace A378422.P50049665409825782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378422.P50049665409825782

namespace A378422

/-- `∩[A050504(n+1), A116974(n+1)]` -/
def P50049665409825782.Spec : Prop :=
  ∀ n, (P50049665409825782.a n : ℤ) = A378422 (n + 1)

end A378422

/-! ## A378422.P3877727168507504522

`∩[A050504(n+1), A161346(n+1)]`
-/

namespace A378422.P3877727168507504522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378422.P3877727168507504522

namespace A378422

/-- `∩[A050504(n+1), A161346(n+1)]` -/
def P3877727168507504522.Spec : Prop :=
  ∀ n, (P3877727168507504522.a n : ℤ) = A378422 (n + 1)

end A378422

/-! ## A378422.P6216629447946672239

`∩[A050504(n+1), A175787(n+1)]`
-/

namespace A378422.P6216629447946672239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378422.P6216629447946672239

namespace A378422

/-- `∩[A050504(n+1), A175787(n+1)]` -/
def P6216629447946672239.Spec : Prop :=
  ∀ n, (P6216629447946672239.a n : ℤ) = A378422 (n + 1)

end A378422

/-! ## A378422.P11732722773861075687

`∩[A050504(n+1), A240960(n+1)]`
-/

namespace A378422.P11732722773861075687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378422.P11732722773861075687

namespace A378422

/-- `∩[A050504(n+1), A240960(n+1)]` -/
def P11732722773861075687.Spec : Prop :=
  ∀ n, (P11732722773861075687.a n : ℤ) = A378422 (n + 1)

end A378422

/-! ## A378422.P8362841633408613849

`∩[A050504(n+1), A385492(n+1)]`
-/

namespace A378422.P8362841633408613849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378422.P8362841633408613849

namespace A378422

/-- `∩[A050504(n+1), A385492(n+1)]` -/
def P8362841633408613849.Spec : Prop :=
  ∀ n, (P8362841633408613849.a n : ℤ) = A378422 (n + 1)

end A378422

/-!
# A378424: Product_{n>=1} (1+x^n)^a(n) = Sum_{k>=0} C(k)*x^k, where C(k) = A000108(k).

The programs for A378424, there is no canonical definition to state claims against.
-/

/-! ## A378424.P168140687122786080

`∑[A002487(A074426(n+2)+2)]`
-/

namespace A378424.P168140687122786080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A074426 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378424.P168140687122786080

/-! ## A378424.P13298840123281834820

`A096807(n+1)-A204418(A000698(n))`
-/

namespace A378424.P13298840123281834820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096807 (n + 1) - A204418 (A000698 n).toNat

end

end A378424.P13298840123281834820

/-! ## A378424.P6501580498575039530

`A117479(A306844(n+2))+A000958(n+1)`
-/

namespace A378424.P6501580498575039530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117479 (A306844 (n + 2)).toNat + A000958 (n + 1)

end

end A378424.P6501580498575039530

/-!
# A378425: Expansion of (1/x) * Series_Reversion( x / (1 + x + x^2 * (1 + x)^3) ).

The programs for A378425, there is no canonical definition to state claims against.
-/

/-! ## A378425.P7673651962024674970

`A127757(A150289(n))`
-/

namespace A378425.P7673651962024674970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A150289 n).toNat

end

end A378425.P7673651962024674970

/-! ## A378425.P14634286090425537347

`A001462(A181998(n))`
-/

namespace A378425.P14634286090425537347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A181998 n).toNat

end

end A378425.P14634286090425537347

/-! ## A378425.P17804492278474356579

`A063677(A148797(n))`
-/

namespace A378425.P17804492278474356579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063677 (A148797 n).toNat

end

end A378425.P17804492278474356579

/-!
# A378426: Expansion of (1/x) * Series_Reversion( x / (1 + x + x^2 * (1 + x)^2) ).

The programs for A378426, there is no canonical definition to state claims against.
-/

/-! ## A378426.P10369746352918417306

`2*A357504(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A378426.P10369746352918417306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * A357504 (a (n - 1)).toNat

end

end A378426.P10369746352918417306

/-! ## A378426.P7901442179315861213

`A023190(A149046(n))`
-/

namespace A378426.P7901442179315861213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A149046 n).toNat

end

end A378426.P7901442179315861213

/-! ## A378426.P2900644454055048763

`A298305(A206301(n))`
-/

namespace A378426.P2900644454055048763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298305 (A206301 n).toNat

end

end A378426.P2900644454055048763

/-!
# A378427: Expansion of (1/x) * Series_Reversion( x / (1 + x + x^3 * (1 + x)^3) ).

The programs for A378427, there is no canonical definition to state claims against.
-/

/-! ## A378427.P3828904174909268962

`A300270(A271843(n+2))`
-/

namespace A378427.P3828904174909268962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300270 (A271843 (n + 2)).toNat

end

end A378427.P3828904174909268962

/-!
# A378428: Composites that become prime when any two of their digits are deleted.

The programs for A378428, there is no canonical definition to state claims against.
-/

/-! ## A378428.P5335220638275979297

`∩[A061371(n+1), A092625(n+1)]`
-/

namespace A378428.P5335220638275979297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378428.P5335220638275979297

/-! ## A378428.P12013409889666463903

`∩[A092625(n+1), A111774(n+1)]`
-/

namespace A378428.P12013409889666463903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378428.P12013409889666463903

/-! ## A378428.P6339356481655722129

`∩[A092625(n+1), A348718(n+1)]`
-/

namespace A378428.P6339356481655722129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378428.P6339356481655722129

/-! ## A378428.P14244894162479491391

`∩[A092625(n+1), A398391(n+1)]`
-/

namespace A378428.P14244894162479491391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378428.P14244894162479491391

/-! ## A378428.P12416971388749931323

`∩[A092625(n+1), A218852(n+1)]`
-/

namespace A378428.P12416971388749931323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378428.P12416971388749931323

/-!
# A378429: Numbers k such that the prime gap between the consecutive primes p1 < k# = primorial(k) < p2 sets a new record.

The programs for A378429, there is no canonical definition to state claims against.
-/

/-! ## A378429.P17557238874441342358

`record[A090369(A056119(xor(1, n)+1))]`
-/

namespace A378429.P17557238874441342358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090369 (A056119 (Nat.xor 1 n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378429.P17557238874441342358

/-! ## A378429.P13909949344877568144

`∩[A039207(n+1), A100807(n+1)]`
-/

namespace A378429.P13909949344877568144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378429.P13909949344877568144

/-! ## A378429.P14187283528331775579

`∩[A020632(n+1), A286323(n+1)]`
-/

namespace A378429.P14187283528331775579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378429.P14187283528331775579

/-! ## A378429.P7226952865998559378

`∩[A020632(n+1), A178338(n+1)]`
-/

namespace A378429.P7226952865998559378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378429.P7226952865998559378

/-! ## A378429.P13317517464891795569

`∩[A073350(n+1), A136110(n+1)]`
-/

namespace A378429.P13317517464891795569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378429.P13317517464891795569

/-!
# A378430: a(n) = Sqrt(A378984(n)).

The programs for A378430, there is no canonical definition to state claims against.
-/

/-! ## A378430.P6495345871649753665

`sqrt(A378984(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378430.P6495345871649753665
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A378984 (n + 1) : ℝ)

end

end A378430.P6495345871649753665

/-! ## A378430.P11020770909834145257

`filter[A375055(n+1), A353625(#)]`
-/

namespace A378430.P11020770909834145257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353625 (f1 j).toNat = 1) n)

end

end A378430.P11020770909834145257

/-! ## A378430.P3597661680352308644

`∩[A036785(n+1), A375055(n+1)]`
-/

namespace A378430.P3597661680352308644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378430.P3597661680352308644

/-! ## A378430.P10103620110443394459

`∩[A000977(n+1), A036785(n+1)]`
-/

namespace A378430.P10103620110443394459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378430.P10103620110443394459

/-! ## A378430.P3667761515600533733

`sqrt(∩[A378769(n+1), A378900(n+1)])`
-/

namespace A378430.P3667761515600533733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378900 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A378430.P3667761515600533733

/-!
# A378432: Dirichlet inverse of A296075, where A296075 is the sum of deficiencies of divisors of n.

The programs for A378432, there is no canonical definition to state claims against.
-/

/-! ## A378432.P9468088145340290941

`∑{d}[n+1, A055615(#)*A174725((n+1)/#)]`
-/

namespace A378432.P9468088145340290941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A174725 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378432.P9468088145340290941

/-! ## A378432.P5100487191774135353

`∑{d}[n+1, A007427(#)*A323912((n+1)/#)]`
-/

namespace A378432.P5100487191774135353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A323912 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378432.P5100487191774135353

/-! ## A378432.P5419246631660615416

`∑{d}[n+1, A008683(#)*A323910((n+1)/#)]`
-/

namespace A378432.P5419246631660615416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A323910 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378432.P5419246631660615416

/-! ## A378432.P7129997620094916806

`∑{d}[n+1, A327960(#)*A330575((n+1)/#)]`
-/

namespace A378432.P7129997620094916806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327960 d * A330575 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378432.P7129997620094916806

/-! ## A378432.P5953787499143347329

`∑{d}[n+1, A326938(#)*A345182((n+1)/#)]`
-/

namespace A378432.P5953787499143347329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326938 d * A345182 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378432.P5953787499143347329

/-! ## A378432.P16153562825707823454

`∑{d}[n+1, A346246(#)*A378606((n+1)/#)]`
-/

namespace A378432.P16153562825707823454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A346246 d * A378606 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378432.P16153562825707823454

/-! ## A378432.P4953998619881056539

`∑{d}[n+1, A378525(#)*A378531((n+1)/#)]`
-/

namespace A378432.P4953998619881056539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378525 d * A378531 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378432.P4953998619881056539

/-! ## A378432.P9583514133813329308

`∑{d}[n+1, A378753(#)*A378754((n+1)/#)]`
-/

namespace A378432.P9583514133813329308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378753 d * A378754 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378432.P9583514133813329308

/-! ## A378432.P12847147577514493000

`∑{d}[n+1, A002033(#-1)*A046692((n+1)/#)]`
-/

namespace A378432.P12847147577514493000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002033 (d - 1) * A046692 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378432.P12847147577514493000

/-!
# A378433: Dirichlet inverse of A325973, where A325973 is the arithmetic mean of {sum of unitary divisors} and {sum of squarefree divisors}.

The programs for A378433, there is no canonical definition to state claims against.
-/

/-! ## A378433.P3394047581535522686

`A378434(n+1)-A361430(A039514(2*(n+2)))`
-/

namespace A378433.P3394047581535522686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378434 (n + 1) - A361430 (A039514 (2 * (n + 2))).toNat

end

end A378433.P3394047581535522686

/-! ## A378433.P13547415651298747973

`A378434(n+1)-A184964(∏{p}[n+1, #^val(n+1, #²)]²-1)`
-/

namespace A378433.P13547415651298747973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378434 (n + 1) - A184964 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 - 1)

end

end A378433.P13547415651298747973

/-! ## A378433.P11197560617816670604

`A378434(n+1)-A353488(A120134(n+3))`
-/

namespace A378433.P11197560617816670604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378434 (n + 1) - A353488 (A120134 (n + 3)).toNat

end

end A378433.P11197560617816670604

/-!
# A378434: Arithmetic mean between the Dirichlet inverses of {sum of unitary divisors} and {sum of squarefree divisors}.

The programs for A378434, the canonical program `A378434.P1462916945159414399` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378434 has offset 1).

The definition of A378434 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158523, A178450, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378434.P1462916945159414399

`(A158523(n+1)+A178450(n+1))/2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A378434

/-- `(A158523(n+1)+A178450(n+1))/2` -/
def P1462916945159414399.Spec : Prop :=
  ∀ n, P1462916945159414399.a n = (A378434 (n + 1) : ℚ)

end A378434

/-! ## A378434.P9476321085255861609

`A378449(A378471(3*(n+1)))+A378433(n+1)`
-/

namespace A378434.P9476321085255861609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378449 (A378471 (3 * (n + 1))).toNat + A378433 (n + 1)

end

end A378434.P9476321085255861609

namespace A378434

/-- `A378449(A378471(3*(n+1)))+A378433(n+1)` -/
def P9476321085255861609.Spec : Prop :=
  ∀ n, P9476321085255861609.a n = A378434 (n + 1)

end A378434

/-! ## A378434.P10673667444445896753

`A378433(n+1)+A079998(A335783(n+1))`
-/

namespace A378434.P10673667444445896753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378433 (n + 1) + A079998 (A335783 (n + 1)).toNat

end

end A378434.P10673667444445896753

namespace A378434

/-- `A378433(n+1)+A079998(A335783(n+1))` -/
def P10673667444445896753.Spec : Prop :=
  ∀ n, P10673667444445896753.a n = A378434 (n + 1)

end A378434

/-! ## A378434.P10338237586989150028

`A378433(n+1)+A288106(A265063(n+2))`
-/

namespace A378434.P10338237586989150028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378433 (n + 1) + A288106 (A265063 (n + 2)).toNat

end

end A378434.P10338237586989150028

namespace A378434

/-- `A378433(n+1)+A288106(A265063(n+2))` -/
def P10338237586989150028.Spec : Prop :=
  ∀ n, P10338237586989150028.a n = A378434 (n + 1)

end A378434

/-! ## A378434.P13911485674428349649

`A378433(A187829(n+1))`
-/

namespace A378434.P13911485674428349649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378433 (A187829 (n + 1)).toNat

end

end A378434.P13911485674428349649

namespace A378434

/-- `A378433(A187829(n+1))` -/
def P13911485674428349649.Spec : Prop :=
  ∀ n, P13911485674428349649.a n = A378434 (n + 1)

end A378434

/-!
# A378435: Dirichlet inverse of the arithmetic mean between the Dirichlet inverses of {sum of unitary divisors} and {sum of squarefree divisors}.

The programs for A378435, there is no canonical definition to state claims against.
-/

/-! ## A378435.P8750173366763351494

`A325973(n+1)+A121373(A328461(3*(n+1)))`
-/

namespace A378435.P8750173366763351494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (n + 1) + A121373 (A328461 (3 * (n + 1))).toNat

end

end A378435.P8750173366763351494

/-! ## A378435.P1778982229599994476

`A325973(n+1)+A178798(A033932(n))`
-/

namespace A378435.P1778982229599994476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (n + 1) + A178798 (A033932 n).toNat

end

end A378435.P1778982229599994476

/-! ## A378435.P5303060439833309549

`A325973(n+1)-A151795(A224808(n+2))`
-/

namespace A378435.P5303060439833309549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (n + 1) - A151795 (A224808 (n + 2)).toNat

end

end A378435.P5303060439833309549

/-! ## A378435.P9810305931591970850

`A325973(n+1)+A014096(A356279(n+1))`
-/

namespace A378435.P9810305931591970850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (n + 1) + A014096 (A356279 (n + 1)).toNat

end

end A378435.P9810305931591970850

/-! ## A378435.P15945493975194867987

`A325973(n+1)-A185254(A253223(n+1))`
-/

namespace A378435.P15945493975194867987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (n + 1) - A185254 (A253223 (n + 1)).toNat

end

end A378435.P15945493975194867987

/-!
# A378436: Inverse Möbius transform of A033630, where A033630 is the number of partitions of n into distinct divisors of n.

The programs for A378436, there is no canonical definition to state claims against.
-/

/-! ## A378436.P12991807769245394254

`∑{d}[n+1, A033630(#)]`
-/

namespace A378436.P12991807769245394254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033630 d

end

end A378436.P12991807769245394254

/-! ## A378436.P12294225924779892263

`∑{d}[n+1, A000005(#)*A378439((n+1)/#)]`
-/

namespace A378436.P12294225924779892263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A378439 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378436.P12294225924779892263

/-! ## A378436.P2614149648101066662

`A014222(A065205(n+1))+A000005(n+1)`
-/

namespace A378436.P2614149648101066662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014222 (A065205 (n + 1)).toNat + A000005 (n + 1)

end

end A378436.P2614149648101066662

/-! ## A378436.P16583893657816330735

`A391067(A308605(n+1))`
-/

namespace A378436.P16583893657816330735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391067 (A308605 (n + 1)).toNat

end

end A378436.P16583893657816330735

/-! ## A378436.P9416684174199213221

`A083914(A157725(n+4))+Δ[A054519(n)]`
-/

namespace A378436.P9416684174199213221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (A157725 (n + 4)).toNat + (f1 (n + 1) - f1 n)

end

end A378436.P9416684174199213221

/-!
# A378437: Dirichlet inverse of A033630, where A033630 is the number of partitions of n into distinct divisors of n.

The programs for A378437, there is no canonical definition to state claims against.
-/

/-! ## A378437.P9695561668584364442

`∑{d}[n+1, A378438(#)]`
-/

namespace A378437.P9695561668584364442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378438 d

end

end A378437.P9695561668584364442

/-! ## A378437.P12976400438692911965

`∑{d}[n+1, A008683(#)*A378440((n+1)/#)]`
-/

namespace A378437.P12976400438692911965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A378440 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378437.P12976400438692911965

/-! ## A378437.P12811046660089054244

`A008683(n+1)-A369427(A066739(n+4))`
-/

namespace A378437.P12811046660089054244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) - A369427 (A066739 (n + 4)).toNat

end

end A378437.P12811046660089054244

/-! ## A378437.P7381361591238023817

`A008683(n+1)-A025468(A092522(3*n+1))`
-/

namespace A378437.P7381361591238023817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) - A025468 (A092522 (3 * n + 1)).toNat

end

end A378437.P7381361591238023817

/-! ## A378437.P10972117639186147839

`A008683(n+1)-A079998(A233940(2*(n+2)))`
-/

namespace A378437.P10972117639186147839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) - A079998 (A233940 (2 * (n + 2))).toNat

end

end A378437.P10972117639186147839

/-!
# A378438: Dirichlet inverse of A378436, where A378436 is the inverse Möbius transform of the number of partitions of n into distinct divisors of n.

The programs for A378438, there is no canonical definition to state claims against.
-/

/-! ## A378438.P6167342275053653578

`∑{d}[n+1, A007427(#)*A378440((n+1)/#)]`
-/

namespace A378438.P6167342275053653578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A378440 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378438.P6167342275053653578

/-! ## A378438.P4650475989217847083

`∑{d}[n+1, A008683(#)*A378437((n+1)/#)]`
-/

namespace A378438.P4650475989217847083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A378437 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378438.P4650475989217847083

/-! ## A378438.P3088448614745771580

`A110161(A033589(n+1))+∏{e}[n+1, (-C(2, #))^#]`
-/

namespace A378438.P3088448614745771580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110161 (A033589 (n + 1)).toNat + ∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.choose 2 (Nat.factorization (f1 n) p) : ℤ)) ^ Nat.factorization (f1 n) p

end

end A378438.P3088448614745771580

/-!
# A378439: Möbius transform of A033630, where A033630 is the number of partitions of n into distinct divisors of n.

The programs for A378439, there is no canonical definition to state claims against.
-/

/-! ## A378439.P9348476435096764463

`∑{d}[n+1, A007427(#)*A378436((n+1)/#)]`
-/

namespace A378439.P9348476435096764463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A378436 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378439.P9348476435096764463

/-! ## A378439.P9108685359824158671

`lcm(A348610(A220182(3*n+5)), A378440(n+1))`
-/

namespace A378439.P9108685359824158671
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A348610 (A220182 (3 * n + 5)).toNat) (A378440 (n + 1))

end

end A378439.P9108685359824158671

/-! ## A378439.P4576615678063180520

`lcm(A124778(n), A378440(n+1))`
-/

namespace A378439.P4576615678063180520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A124778 n) (A378440 (n + 1))

end

end A378439.P4576615678063180520

/-! ## A378439.P5559117656850506530

`gcd(A210709(n), A378440(n+1))`
-/

namespace A378439.P5559117656850506530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A210709 n) (A378440 (n + 1))

end

end A378439.P5559117656850506530

/-! ## A378439.P6957464502396132814

`A324964(A143823(n))+A302110(n+1)`
-/

namespace A378439.P6957464502396132814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324964 (A143823 n).toNat + A302110 (n + 1)

end

end A378439.P6957464502396132814

/-!
# A378440: Dirichlet inverse of Möbius transform of A033630, where A033630 is the number of partitions of n into distinct divisors of n.

The programs for A378440, there is no canonical definition to state claims against.
-/

/-! ## A378440.P1685255948535430564

`∑{d}[n+1, A378437(#)]`
-/

namespace A378440.P1685255948535430564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378437 d

end

end A378440.P1685255948535430564

/-! ## A378440.P1205458355178620961

`∑{d}[n+1, A000005(#)*A378438((n+1)/#)]`
-/

namespace A378440.P1205458355178620961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A378438 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378440.P1205458355178620961

/-! ## A378440.P13682729055074330810

`A293467(A379678(3*n+4)+A341596(n+1))`
-/

namespace A378440.P13682729055074330810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293467 (A379678 (3 * n + 4) + A341596 (n + 1)).toNat

end

end A378440.P13682729055074330810

/-! ## A378440.P4006734289639210130

`(-A302110(n+1)^n)^n`
-/

namespace A378440.P4006734289639210130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(A302110 (n + 1) ^ n)) ^ n

end

end A378440.P4006734289639210130

/-! ## A378440.P15006640983121762255

`(-A302110(n+1))^A000045(n)`
-/

namespace A378440.P15006640983121762255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A302110 (n + 1) : ℚ) ^ (A000045 n : ℤ)

end

end A378440.P15006640983121762255

/-!
# A378441: Fixed points of A378226, where A278226 is XOR-Moebius transform of A318457, and A318457(n) = n XOR (sigma(n)-n).

The programs for A378441, there is no canonical definition to state claims against.
-/

/-! ## A378441.P16239206588414608206

`eq[n+1, A378226(n+1)]+1`
-/

namespace A378441.P16239206588414608206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378226 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A378441.P16239206588414608206

/-! ## A378441.P15859842049621028705

`eq[n, A378226(A028310(n))]`
-/

namespace A378441.P15859842049621028705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378226 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A378441.P15859842049621028705

/-! ## A378441.P4394480804747005148

`lt[A292727(n+1), A059843(A113061(n+1)+1)]+1`
-/

namespace A378441.P4394480804747005148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292727 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059843 (A113061 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A378441.P4394480804747005148

/-! ## A378441.P12444034356921564135

`A176176(n+1)-A335446(A176176(n+1))`
-/

namespace A378441.P12444034356921564135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176176 (n + 1) - A335446 (A176176 (n + 1)).toNat

end

end A378441.P12444034356921564135

/-! ## A378441.P868077529950035429

`∩[A076487(n+1), A329366(n+1)]`
-/

namespace A378441.P868077529950035429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329366 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378441.P868077529950035429

/-!
# A378442: Characteristic function of stable numbers: a(n) = 1 if the distinct prime indices of n are pairwise indivisible, otherwise 0.

The programs for A378442, there is no canonical definition to state claims against.
-/

/-! ## A378442.P1934415198188751256

`floor(1/A327402(n+1))`
-/

namespace A378442.P1934415198188751256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A327402 (n + 1) : ℚ)⌋

end

end A378442.P1934415198188751256

/-! ## A378442.P1436496487117029777

`char[A316476(n+1)-1]`
-/

namespace A378442.P1436496487117029777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316476 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A378442.P1436496487117029777

/-! ## A378442.P11796202691447619056

`C(A327393(n+1), n+1)`
-/

namespace A378442.P11796202691447619056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A327393 (n + 1)).toNat (n + 1)

end

end A378442.P11796202691447619056

/-! ## A378442.P13354857855118108981

`char[A023443(A316476(n+1))]`
-/

namespace A378442.P13354857855118108981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A316476 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A378442.P13354857855118108981

/-! ## A378442.P13421101176371225949

`A010051(2*A327402(n+1))`
-/

namespace A378442.P13421101176371225949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * A327402 (n + 1)).toNat

end

end A378442.P13421101176371225949

/-! ## A378442.P7020147429829352957

`∑{d}[n+1, A008683(#)*A327394((n+1)/#)]`
-/

namespace A378442.P7020147429829352957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A327394 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378442.P7020147429829352957

/-! ## A378442.P4513456574664838909

`A348033(A327402(n+1)²)`
-/

namespace A378442.P4513456574664838909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348033 (A327402 (n + 1) ^ 2).toNat

end

end A378442.P4513456574664838909

/-! ## A378442.P15165693571024431022

`A012245(A327402(n+1)²)`
-/

namespace A378442.P15165693571024431022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012245 (A327402 (n + 1) ^ 2).toNat

end

end A378442.P15165693571024431022

/-!
# A378443: Inverse Möbius transform of A372573.

The programs for A378443, the canonical program `A378443.P3282744420953376765` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378443 has offset 1).

The definition of A378443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378443.P3282744420953376765

`∑{d}[n+1, A372573(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A378443

/-- `∑{d}[n+1, A372573(#)]` -/
def P3282744420953376765.Spec : Prop :=
  ∀ n, P3282744420953376765.a n = A378443 (n + 1)

theorem P3282744420953376765.correct : P3282744420953376765.Spec := by
  intro n
  simp only [A378443, Nat.add_sub_cancel]

end A378443

/-!
# A378444: a(n) is the number of divisors d of n such that A083345(d) is even, where A083345(n) is the numerator of Sum(e/p: n=Product(p^e)).

The programs for A378444, the canonical program `A378444.P4238475947147355882` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378444 has offset 1).

The definition of A378444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378444.P8629178744615787842

`A000005(n+1)-A378445(n+1)`
-/

namespace A378444.P8629178744615787842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A378445 (n + 1)

end

end A378444.P8629178744615787842

namespace A378444

/-- `A000005(n+1)-A378445(n+1)` -/
def P8629178744615787842.Spec : Prop :=
  ∀ n, P8629178744615787842.a n = A378444 (n + 1)

end A378444

/-! ## A378444.P4238475947147355882

`∑{d}[n+1, A369001(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A378444

/-- `∑{d}[n+1, A369001(#)]` -/
def P4238475947147355882.Spec : Prop :=
  ∀ n, P4238475947147355882.a n = A378444 (n + 1)

theorem P4238475947147355882.correct : P4238475947147355882.Spec := by
  intro n
  simp only [A378444, Nat.add_sub_cancel]

end A378444

/-! ## A378444.P593311790322910225

`ceil(A174273(n+1)/2)`
-/

namespace A378444.P593311790322910225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A174273 (n + 1) : ℚ) / 2⌉

end

end A378444.P593311790322910225

namespace A378444

/-- `ceil(A174273(n+1)/2)` -/
def P593311790322910225.Spec : Prop :=
  ∀ n, P593311790322910225.a n = A378444 (n + 1)

end A378444

/-! ## A378444.P13668550591556966675

`ceil(∑{d}[n+1, A029883(#)²]/2)`
-/

namespace A378444.P13668550591556966675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ d ∈ Nat.divisors (f1 n), A029883 d ^ 2 : ℤ) : ℚ) / 2⌉

end

end A378444.P13668550591556966675

namespace A378444

/-- `ceil(∑{d}[n+1, A029883(#)²]/2)` -/
def P13668550591556966675.Spec : Prop :=
  ∀ n, P13668550591556966675.a n = A378444 (n + 1)

end A378444

/-! ## A378444.P11089547296935438451

`A000027(floor((A174273(n+1)+1)/2))`
-/

namespace A378444.P11089547296935438451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌊(A174273 (n + 1) + 1 : ℚ) / 2⌋.toNat

end

end A378444.P11089547296935438451

namespace A378444

/-- `A000027(floor((A174273(n+1)+1)/2))` -/
def P11089547296935438451.Spec : Prop :=
  ∀ n, P11089547296935438451.a n = A378444 (n + 1)

end A378444

/-! ## A378444.P5443267803202832117

`∑{d}[n+1, A023900(#)*A378546((n+1)/#)]`
-/

namespace A378444.P5443267803202832117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A378546 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378444.P5443267803202832117

namespace A378444

/-- `∑{d}[n+1, A023900(#)*A378546((n+1)/#)]` -/
def P5443267803202832117.Spec : Prop :=
  ∀ n, P5443267803202832117.a n = A378444 (n + 1)

end A378444

/-!
# A378445: a(n) is the number of divisors d of n such that A083345(d) is odd, where A083345(n) is the numerator of Sum(e/p: n=Product(p^e)).

The programs for A378445, the canonical program `A378445.P9451803284897487833` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378445 has offset 1).

The definition of A378445 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A378444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378445.P9451803284897487833

`A000005(n+1)-A378444(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A378445

/-- `A000005(n+1)-A378444(n+1)` -/
def P9451803284897487833.Spec : Prop :=
  ∀ n, P9451803284897487833.a n = A378445 (n + 1)

theorem P9451803284897487833.correct : P9451803284897487833.Spec := by
  intro n
  simp only [A378445, Nat.add_sub_cancel]

end A378445

/-! ## A378445.P11135049067155052976

`∑{d}[n+1, A023900(#)*A378547((n+1)/#)]`
-/

namespace A378445.P11135049067155052976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A378547 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378445.P11135049067155052976

namespace A378445

/-- `∑{d}[n+1, A023900(#)*A378547((n+1)/#)]` -/
def P11135049067155052976.Spec : Prop :=
  ∀ n, P11135049067155052976.a n = A378445 (n + 1)

end A378445

/-! ## A378445.P7333273563464804380

`A000005(n+1)-A110654(A174273(n+1))`
-/

namespace A378445.P7333273563464804380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A110654 (A174273 (n + 1)).toNat

end

end A378445.P7333273563464804380

namespace A378445

/-- `A000005(n+1)-A110654(A174273(n+1))` -/
def P7333273563464804380.Spec : Prop :=
  ∀ n, P7333273563464804380.a n = A378445 (n + 1)

end A378445

/-! ## A378445.P8059756982628434403

`A174273(A003961(n+1))-A118177(A072499(n+1))`
-/

namespace A378445.P8059756982628434403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174273 (A003961 (n + 1)).toNat - A118177 (A072499 (n + 1)).toNat

end

end A378445.P8059756982628434403

namespace A378445

/-- `A174273(A003961(n+1))-A118177(A072499(n+1))` -/
def P8059756982628434403.Spec : Prop :=
  ∀ n, P8059756982628434403.a n = A378445 (n + 1)

end A378445

/-!
# A378446: Inverse Möbius transform of A083206, where A083206(n) is the number of ways of partitioning the divisors of n into two disjoint sets with equal sum.

The programs for A378446, there is no canonical definition to state claims against.
-/

/-! ## A378446.P666149209434237629

`∑{d}[n+1, A083206(#)]`
-/

namespace A378446.P666149209434237629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A083206 d

end

end A378446.P666149209434237629

/-! ## A378446.P18222888850986363967

`A097430(A369875(n+1))`
-/

namespace A378446.P18222888850986363967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097430 (A369875 (n + 1)).toNat

end

end A378446.P18222888850986363967

/-! ## A378446.P14259820219440886374

`A031619(n+1)%A308608(n+1)`
-/

namespace A378446.P14259820219440886374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031619 (n + 1)) (A308608 (n + 1))

end

end A378446.P14259820219440886374

/-! ## A378446.P2519313162623027019

`A102444(n+1)%A308608(n+1)`
-/

namespace A378446.P2519313162623027019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102444 (n + 1)) (A308608 (n + 1))

end

end A378446.P2519313162623027019

/-! ## A378446.P16497514941017551615

`A248074(n+1)%A308608(n+1)`
-/

namespace A378446.P16497514941017551615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248074 (n + 1)) (A308608 (n + 1))

end

end A378446.P16497514941017551615

/-!
# A378447: Difference between {the number of distinct sums of distinct divisors of n} and {the number of distinct sums of distinct proper divisors of n}.

The programs for A378447, there is no canonical definition to state claims against.
-/

/-! ## A378447.P10480457116343250350

`A119347(n+1)-A193279(n+1)`
-/

namespace A378447.P10480457116343250350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119347 (n + 1) - A193279 (n + 1)

end

end A378447.P10480457116343250350

/-! ## A378447.P6438304496581800797

`A088580(n+1)-(A378450(n+1)+1)-A193279(n+1)`
-/

namespace A378447.P6438304496581800797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A378450 (n + 1) + 1) - A193279 (n + 1)

end

end A378447.P6438304496581800797

/-! ## A378447.P8879651405016245568

`2/A000203(n+1)*A237290(n+1)-1-A193279(n+1)`
-/

namespace A378447.P8879651405016245568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000203 (n + 1) : ℚ) * (A237290 (n + 1) : ℚ) - 1 - (A193279 (n + 1) : ℚ)

end

end A378447.P8879651405016245568

/-! ## A378447.P7940422755681994621

`2*A237290(n+1)/∑[A340793(n+1)]-1-A193279(n+1)`
-/

namespace A378447.P7940422755681994621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A237290 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)) - 1 - (A193279 (n + 1) : ℚ)

end

end A378447.P7940422755681994621

/-! ## A378447.P15550107225524368612

`A023443(A308605(n+1))-A193279(n+1)`
-/

namespace A378447.P15550107225524368612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A308605 (n + 1)).toNat - A193279 (n + 1)

end

end A378447.P15550107225524368612

/-! ## A378447.P14205382985785678971

`A023443(2/A000203(n+1)*A237290(n+1))-A193279(n+1)`
-/

namespace A378447.P14205382985785678971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.roundAway (2 / (A000203 (n + 1) : ℚ) * (A237290 (n + 1) : ℚ))).toNat - A193279 (n + 1)

end

end A378447.P14205382985785678971

/-! ## A378447.P10476161884013553854

`Δ[eq[1, A119348(n+1)]]-A193279(n+1)`
-/

namespace A378447.P10476161884013553854
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119348 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A193279 (n + 1)

end

end A378447.P10476161884013553854

/-!
# A378448: Characteristic function of A064771: a(n) = 1 if there is exactly one subset of the proper divisors of n that sum to n, otherwise 0.

The programs for A378448, there is no canonical definition to state claims against.
-/

/-! ## A378448.P12997296516154130491

`char[A064771(n+1)-1]`
-/

namespace A378448.P12997296516154130491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064771 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A378448.P12997296516154130491

/-! ## A378448.P10666391748740832590

`char[eq[1, A065205(n+1)]]`
-/

namespace A378448.P10666391748740832590
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065205 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A378448.P10666391748740832590

/-! ## A378448.P1965677491877180917

`char[eq[2, A033630(n+1)]]`
-/

namespace A378448.P1965677491877180917
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A378448.P1965677491877180917

/-! ## A378448.P10880340752370050434

`char[eq[2, A033630(n)]-1]`
-/

namespace A378448.P10880340752370050434
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A378448.P10880340752370050434

/-! ## A378448.P13865513039725416795

`A063524(A033630(n+1)-1)`
-/

namespace A378448.P13865513039725416795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A033630 (n + 1) - 1).toNat

end

end A378448.P13865513039725416795

/-! ## A378448.P6337970880590726283

`A135461(2*A033630(n+1))`
-/

namespace A378448.P6337970880590726283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135461 (2 * A033630 (n + 1)).toNat

end

end A378448.P6337970880590726283

/-! ## A378448.P5143884111035167762

`A154272(A065205(n+1)+2)`
-/

namespace A378448.P5143884111035167762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154272 (A065205 (n + 1) + 2).toNat

end

end A378448.P5143884111035167762

/-! ## A378448.P7386071504622961784

`A000007(xor(2, A033630(n+1)))`
-/

namespace A378448.P7386071504622961784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor 2 (A033630 (n + 1))).toNat

end

end A378448.P7386071504622961784

/-! ## A378448.P6771957560544102260

`A099892(C(A033630(n+1), 2))`
-/

namespace A378448.P6771957560544102260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099892 (Nat.choose (A033630 (n + 1)).toNat 2)

end

end A378448.P6771957560544102260

/-! ## A378448.P17357482800593721072

`and(A002189(n), A378529(n+1))`
-/

namespace A378448.P17357482800593721072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002189 n) (A378529 (n + 1))

end

end A378448.P17357482800593721072

/-!
# A378449: Characteristic function of A083209: a(n) = 1 if there is exactly one subset of the divisors of n such that the complement has the same sum, otherwise 0.

The programs for A378449, there is no canonical definition to state claims against.
-/

/-! ## A378449.P11881791241605784932

`char[A083209(n+1)-1]`
-/

namespace A378449.P11881791241605784932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083209 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A378449.P11881791241605784932

/-! ## A378449.P6593292727325315415

`char[eq[1, A083206(n+1)]]`
-/

namespace A378449.P6593292727325315415
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083206 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A378449.P6593292727325315415

/-! ## A378449.P14194954036483309044

`A000073(C(2, A083206(n+1)))`
-/

namespace A378449.P14194954036483309044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (Nat.choose 2 (A083206 (n + 1)).toNat)

end

end A378449.P14194954036483309044

/-! ## A378449.P14831773590541584802

`A000701(C(2, A083206(n+1)))`
-/

namespace A378449.P14831773590541584802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 (Nat.choose 2 (A083206 (n + 1)).toNat)

end

end A378449.P14831773590541584802

/-! ## A378449.P5338046896484297671

`A003415(C(2, A083206(n+1)))`
-/

namespace A378449.P5338046896484297671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (Nat.choose 2 (A083206 (n + 1)).toNat)

end

end A378449.P5338046896484297671

/-! ## A378449.P2341964927149714519

`A053186(C(2, A083206(n+1)))`
-/

namespace A378449.P2341964927149714519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (Nat.choose 2 (A083206 (n + 1)).toNat)

end

end A378449.P2341964927149714519

/-! ## A378449.P4757800613519916922

`A083920(C(2, A083206(n+1)))`
-/

namespace A378449.P4757800613519916922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (Nat.choose 2 (A083206 (n + 1)).toNat)

end

end A378449.P4757800613519916922

/-! ## A378449.P10849260450613909791

`A108885(C(2, A083206(n+1)))`
-/

namespace A378449.P10849260450613909791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108885 (Nat.choose 2 (A083206 (n + 1)).toNat)

end

end A378449.P10849260450613909791

/-! ## A378449.P680424921065671647

`A173517(C(2, A083206(n+1)))`
-/

namespace A378449.P680424921065671647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173517 (Nat.choose 2 (A083206 (n + 1)).toNat)

end

end A378449.P680424921065671647

/-! ## A378449.P14526748496597875894

`A063524(A083206(n+1))`
-/

namespace A378449.P14526748496597875894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A083206 (n + 1)).toNat

end

end A378449.P14526748496597875894

/-! ## A378449.P17153912175167729444

`A055672(2*A083206(n+1))`
-/

namespace A378449.P17153912175167729444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 (2 * A083206 (n + 1)).toNat

end

end A378449.P17153912175167729444

/-! ## A378449.P5774296367135968563

`A000007(xor(1, A083206(n+1)))`
-/

namespace A378449.P5774296367135968563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor 1 (A083206 (n + 1))).toNat

end

end A378449.P5774296367135968563

/-! ## A378449.P1843810430594216064

`A378651(A004928(n+1))`
-/

namespace A378449.P1843810430594216064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378651 (A004928 (n + 1)).toNat

end

end A378449.P1843810430594216064

/-! ## A378449.P6534110128203441746

`A378651(A033286(n+1))`
-/

namespace A378449.P6534110128203441746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378651 (A033286 (n + 1)).toNat

end

end A378449.P6534110128203441746

/-! ## A378449.P7359696947026264666

`A000007((1-A083206(n+1))²)`
-/

namespace A378449.P7359696947026264666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((1 - A083206 (n + 1)) ^ 2).toNat

end

end A378449.P7359696947026264666

/-! ## A378449.P7650350822360090765

`1-A275714(A083206(n+1)²)`
-/

namespace A378449.P7650350822360090765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A275714 (A083206 (n + 1) ^ 2).toNat

end

end A378449.P7650350822360090765

/-! ## A378449.P15338510821826724587

`A275714(A275714(A083206(n+1)²))`
-/

namespace A378449.P15338510821826724587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275714 (A275714 (A083206 (n + 1) ^ 2).toNat).toNat

end

end A378449.P15338510821826724587

/-! ## A378449.P14246507335301522819

`A378651(A009474(n+1))`
-/

namespace A378449.P14246507335301522819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378651 (A009474 (n + 1)).toNat

end

end A378449.P14246507335301522819

/-! ## A378449.P7229407004223495071

`A378651((n+1)*A320518(n+1))`
-/

namespace A378449.P7229407004223495071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378651 ((n + 1 : ℤ) * A320518 (n + 1)).toNat

end

end A378449.P7229407004223495071

/-!
# A378450: a(n) is the number of positive numbers k <= sigma(n) that are not a sum of any subset of distinct divisors of n.

The programs for A378450, there is no canonical definition to state claims against.
-/

/-! ## A378450.P6397730097920603033

`A000203(n+1)-A119347(n+1)`
-/

namespace A378450.P6397730097920603033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A119347 (n + 1)

end

end A378450.P6397730097920603033

/-! ## A378450.P46159772936575440

`∑{d}[n+1, A378597(#)]`
-/

namespace A378450.P46159772936575440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378597 d

end

end A378450.P46159772936575440

/-! ## A378450.P2257033627240482275

`A088580(n+1)-A308605(n+1)`
-/

namespace A378450.P2257033627240482275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - A308605 (n + 1)

end

end A378450.P2257033627240482275

/-! ## A378450.P942564282669583424

`A000203(n+1)+1-A308605(n+1)`
-/

namespace A378450.P942564282669583424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (1 - A308605 (n + 1))

end

end A378450.P942564282669583424

/-! ## A378450.P5019241448384578257

`2/A000203(n+1)*A237289(n+1)`
-/

namespace A378450.P5019241448384578257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000203 (n + 1) : ℚ) * (A237289 (n + 1) : ℚ)

end

end A378450.P5019241448384578257

/-! ## A378450.P15989255036971068657

`A229335(n+1)/A100577(n+1)-A119347(n+1)`
-/

namespace A378450.P15989255036971068657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229335 (n + 1) : ℚ) / (A100577 (n + 1) : ℚ) - (A119347 (n + 1) : ℚ)

end

end A378450.P15989255036971068657

/-!
# A378452: Dirichlet inverse of A007875, where A007875(n) = phi(2^omega(n)).

The programs for A378452, there is no canonical definition to state claims against.
-/

/-! ## A378452.P6651590385840846002

`∑{d}[n+1, A378453(#)]`
-/

namespace A378452.P6651590385840846002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378453 d

end

end A378452.P6651590385840846002

/-! ## A378452.P1619545655513784620

`and(A008836(n+1), A378534(n+1))`
-/

namespace A378452.P1619545655513784620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008836 (n + 1)) (A378534 (n + 1))

end

end A378452.P1619545655513784620

/-! ## A378452.P9828623403570496269

`∑{d}[n+1, A008836(#)*A359763((n+1)/#)]`
-/

namespace A378452.P9828623403570496269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A359763 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378452.P9828623403570496269

/-! ## A378452.P17774098147961631936

`∑{d}[n+1, A046951(#)*A378213((n+1)/#)]`
-/

namespace A378452.P17774098147961631936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A378213 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378452.P17774098147961631936

/-! ## A378452.P2793348241904872426

`∑{d}[n+1, A074722(#)*A378536((n+1)/#)]`
-/

namespace A378452.P2793348241904872426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074722 d * A378536 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378452.P2793348241904872426

/-! ## A378452.P1464227049589150971

`∑{d}[n+1, A206369(#)*A378525((n+1)/#)]`
-/

namespace A378452.P1464227049589150971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A206369 d * A378525 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378452.P1464227049589150971

/-! ## A378452.P16727719621244407997

`∑{d}[n+1, A219009(#)*A378214((n+1)/#)]`
-/

namespace A378452.P16727719621244407997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A219009 d * A378214 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378452.P16727719621244407997

/-! ## A378452.P16382851575502172508

`and(A304653(n+1), A378534(n+1))`
-/

namespace A378452.P16382851575502172508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A304653 (n + 1)) (A378534 (n + 1))

end

end A378452.P16382851575502172508

/-!
# A378453: Dirichlet inverse of A018892, where A018892(n) = (tau(n^2)+1)/2.

The programs for A378453, there is no canonical definition to state claims against.
-/

/-! ## A378453.P16853052647234335718

`2*A008683(n+1)-A359763(n+1)`
-/

namespace A378453.P16853052647234335718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008683 (n + 1) - A359763 (n + 1)

end

end A378453.P16853052647234335718

/-! ## A378453.P5251043008264827504

`∑{d}[n+1, A008836(#)*A369453((n+1)/#)]`
-/

namespace A378453.P5251043008264827504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A369453 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378453.P5251043008264827504

/-! ## A378453.P8825068755842590744

`∑{d}[n+1, A008683(#)*A378452((n+1)/#)]`
-/

namespace A378453.P8825068755842590744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A378452 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378453.P8825068755842590744

/-! ## A378453.P14976072994445982106

`∑{d}[n+1, A074722(#)*A378525((n+1)/#)]`
-/

namespace A378453.P14976072994445982106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074722 d * A378525 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378453.P14976072994445982106

/-! ## A378453.P7208452074046350483

`∑{d}[n+1, A158522(#)*A359763((n+1)/#)]`
-/

namespace A378453.P7208452074046350483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A359763 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378453.P7208452074046350483

/-!
# A378454: Characteristic function of A267124, primitive practical numbers.

The programs for A378454, there is no canonical definition to state claims against.
-/

/-! ## A378454.P14880252590406426422

`floor(1/A377311(n+1))`
-/

namespace A378454.P14880252590406426422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A377311 (n + 1) : ℚ)⌋

end

end A378454.P14880252590406426422

/-! ## A378454.P11124888621133457482

`char[A267124(n+1)-1]`
-/

namespace A378454.P11124888621133457482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267124 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A378454.P11124888621133457482

/-! ## A378454.P13477462350413957893

`char[A379325(n+1)-1]`
-/

namespace A378454.P13477462350413957893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379325 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A378454.P13477462350413957893

/-! ## A378454.P15977489412578445865

`∏{e}[A377311(n+1), A111856(#)]`
-/

namespace A378454.P15977489412578445865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A111856 (Nat.factorization (f1 n).natAbs p)

end

end A378454.P15977489412578445865

/-! ## A378454.P12783388308651567392

`A008683(A377311(n+1)²)`
-/

namespace A378454.P12783388308651567392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A377311 (n + 1) ^ 2).toNat

end

end A378454.P12783388308651567392

/-! ## A378454.P1632315950739910382

`A008683(A377311(n+1)*A377311(n+1))`
-/

namespace A378454.P1632315950739910382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A377311 (n + 1) * A377311 (n + 1)).toNat

end

end A378454.P1632315950739910382

/-!
# A378456: Number of composite numbers between consecutive nonprime prime powers (exclusive).

The programs for A378456, there is no canonical definition to state claims against.
-/

/-! ## A378456.P8618247695621211531

`Δ[eq[1, A010055(A002808(n+1))]]-1`
-/

namespace A378456.P8618247695621211531
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (A002808 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A378456.P8618247695621211531

/-!
# A378457: Difference between n and the greatest prime power <= n, allowing 1.

The programs for A378457, the canonical program `A378457.P16628396355233593541` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378457 has offset 1).

The definition of A378457 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276781, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378457.P16628396355233593541

`A276781(n+1)-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A378457

/-- `A276781(n+1)-1` -/
def P16628396355233593541.Spec : Prop :=
  ∀ n, P16628396355233593541.a n = A378457 (n + 1)

theorem P16628396355233593541.correct : P16628396355233593541.Spec := by
  intro n
  simp only [A378457, Nat.add_sub_cancel]

end A378457

/-! ## A378457.P13782942388231239325

`1-A031218(n+1)+n`
-/

namespace A378457.P13782942388231239325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A031218 (n + 1) + (n : ℤ)

end

end A378457.P13782942388231239325

namespace A378457

/-- `1-A031218(n+1)+n` -/
def P13782942388231239325.Spec : Prop :=
  ∀ n, P13782942388231239325.a n = A378457 (n + 1)

end A378457

/-! ## A378457.P11783297707240503057

`(n+1)%A031218(C(n+1, n))`
-/

namespace A378457.P11783297707240503057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A031218 (Nat.choose (n + 1) n))

end

end A378457.P11783297707240503057

namespace A378457

/-- `(n+1)%A031218(C(n+1, n))` -/
def P11783297707240503057.Spec : Prop :=
  ∀ n, P11783297707240503057.a n = A378457 (n + 1)

end A378457

/-! ## A378457.P16847500099598866645

`n-A181062(A065515(n+1))`
-/

namespace A378457.P16847500099598866645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A181062 (A065515 (n + 1)).toNat

end

end A378457.P16847500099598866645

namespace A378457

/-- `n-A181062(A065515(n+1))` -/
def P16847500099598866645.Spec : Prop :=
  ∀ n, P16847500099598866645.a n = A378457 (n + 1)

end A378457

/-! ## A378457.P3880817413058907237

`A097106(n+1)-A378370(n+1)`
-/

namespace A378457.P3880817413058907237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097106 (n + 1) - A378370 (n + 1)

end

end A378457.P3880817413058907237

namespace A378457

/-- `A097106(n+1)-A378370(n+1)` -/
def P3880817413058907237.Spec : Prop :=
  ∀ n, P3880817413058907237.a n = A378457 (n + 1)

end A378457

/-! ## A378457.P9394011907427196486

`A000027(n+1)%A031218(n+1)`
-/

namespace A378457.P9394011907427196486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A031218 (n + 1))

end

end A378457.P9394011907427196486

namespace A378457

/-- `A000027(n+1)%A031218(n+1)` -/
def P9394011907427196486.Spec : Prop :=
  ∀ n, P9394011907427196486.a n = A378457 (n + 1)

end A378457

/-! ## A378457.P1076070199376016177

`A305805(A151800(n))+A276781(n+1)`
-/

namespace A378457.P1076070199376016177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305805 (A151800 n).toNat + A276781 (n + 1)

end

end A378457.P1076070199376016177

namespace A378457

/-- `A305805(A151800(n))+A276781(n+1)` -/
def P1076070199376016177.Spec : Prop :=
  ∀ n, P1076070199376016177.a n = A378457 (n + 1)

end A378457

/-! ## A378457.P15971507341365064851

`A007920(A031218(n+1)+A007920(n+1))`
-/

namespace A378457.P15971507341365064851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A031218 (n + 1) + A007920 (n + 1)).toNat

end

end A378457.P15971507341365064851

namespace A378457

/-- `A007920(A031218(n+1)+A007920(n+1))` -/
def P15971507341365064851.Spec : Prop :=
  ∀ n, P15971507341365064851.a n = A378457 (n + 1)

end A378457

/-! ## A378457.P12815871151027898350

`A378370(A378370(n+1)+A031218(n+1))`
-/

namespace A378457.P12815871151027898350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378370 (A378370 (n + 1) + A031218 (n + 1)).toNat

end

end A378457.P12815871151027898350

namespace A378457

/-- `A378370(A378370(n+1)+A031218(n+1))` -/
def P12815871151027898350.Spec : Prop :=
  ∀ n, P12815871151027898350.a n = A378457 (n + 1)

end A378457

/-! ## A378457.P4761655477203485622

`n+1-A120636(A000015(n+2))`
-/

namespace A378457.P4761655477203485622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A120636 (A000015 (n + 2)).toNat

end

end A378457.P4761655477203485622

namespace A378457

/-- `n+1-A120636(A000015(n+2))` -/
def P4761655477203485622.Spec : Prop :=
  ∀ n, P4761655477203485622.a n = A378457 (n + 1)

end A378457

/-! ## A378457.P1568904093297109271

`A200748(n)%A276781(n+1)`
-/

namespace A378457.P1568904093297109271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A276781 (n + 1))

end

end A378457.P1568904093297109271

namespace A378457

/-- `A200748(n)%A276781(n+1)` -/
def P1568904093297109271.Spec : Prop :=
  ∀ n, P1568904093297109271.a n = A378457 (n + 1)

end A378457

/-! ## A378457.P7232599208101654377

`A065515(A000961(n+1))-A000961(A065515(n+1))`
-/

namespace A378457.P7232599208101654377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (A000961 (n + 1)).toNat - A000961 (A065515 (n + 1)).toNat

end

end A378457.P7232599208101654377

namespace A378457

/-- `A065515(A000961(n+1))-A000961(A065515(n+1))` -/
def P7232599208101654377.Spec : Prop :=
  ∀ n, P7232599208101654377.a n = A378457 (n + 1)

end A378457

/-! ## A378457.P8069009678048087439

`A082860(C(A276781(n+1), 2))`
-/

namespace A378457.P8069009678048087439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082860 (Nat.choose (A276781 (n + 1)).toNat 2)

end

end A378457.P8069009678048087439

namespace A378457

/-- `A082860(C(A276781(n+1), 2))` -/
def P8069009678048087439.Spec : Prop :=
  ∀ n, P8069009678048087439.a n = A378457 (n + 1)

end A378457

/-! ## A378457.P4517560585589234

`A083800(n+1)%A276781(n+1)`
-/

namespace A378457.P4517560585589234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A276781 (n + 1))

end

end A378457.P4517560585589234

namespace A378457

/-- `A083800(n+1)%A276781(n+1)` -/
def P4517560585589234.Spec : Prop :=
  ∀ n, P4517560585589234.a n = A378457 (n + 1)

end A378457

/-! ## A378457.P16520888664562729344

`A070198(n)%A276781(n+1)`
-/

namespace A378457.P16520888664562729344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A276781 (n + 1))

end

end A378457.P16520888664562729344

namespace A378457

/-- `A070198(n)%A276781(n+1)` -/
def P16520888664562729344.Spec : Prop :=
  ∀ n, P16520888664562729344.a n = A378457 (n + 1)

end A378457

/-! ## A378457.P6464811007050736684

`A060401(n+1)%A031218(n+1)`
-/

namespace A378457.P6464811007050736684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060401 (n + 1)) (A031218 (n + 1))

end

end A378457.P6464811007050736684

namespace A378457

/-- `A060401(n+1)%A031218(n+1)` -/
def P6464811007050736684.Spec : Prop :=
  ∀ n, P6464811007050736684.a n = A378457 (n + 1)

end A378457

/-! ## A378457.P2373700850778348814

`A079782(n+1)%A276781(n+1)`
-/

namespace A378457.P2373700850778348814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A276781 (n + 1))

end

end A378457.P2373700850778348814

namespace A378457

/-- `A079782(n+1)%A276781(n+1)` -/
def P2373700850778348814.Spec : Prop :=
  ∀ n, P2373700850778348814.a n = A378457 (n + 1)

end A378457

/-! ## A378457.P3345631054442953125

`A083685(n+1)%A276781(n+1)`
-/

namespace A378457.P3345631054442953125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A276781 (n + 1))

end

end A378457.P3345631054442953125

namespace A378457

/-- `A083685(n+1)%A276781(n+1)` -/
def P3345631054442953125.Spec : Prop :=
  ∀ n, P3345631054442953125.a n = A378457 (n + 1)

end A378457

/-! ## A378457.P15294130307467572386

`A121934(n+1)%A276781(n+1)`
-/

namespace A378457.P15294130307467572386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A276781 (n + 1))

end

end A378457.P15294130307467572386

namespace A378457

/-- `A121934(n+1)%A276781(n+1)` -/
def P15294130307467572386.Spec : Prop :=
  ∀ n, P15294130307467572386.a n = A378457 (n + 1)

end A378457

/-! ## A378457.P11785376616239305556

`A030494(n+1)%A276781(n+1)`
-/

namespace A378457.P11785376616239305556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A276781 (n + 1))

end

end A378457.P11785376616239305556

namespace A378457

/-- `A030494(n+1)%A276781(n+1)` -/
def P11785376616239305556.Spec : Prop :=
  ∀ n, P11785376616239305556.a n = A378457 (n + 1)

end A378457

/-!
# A378458: Squarefree numbers k such that k + 1 is squarefree but k + 2 is not.

The programs for A378458, the canonical program `A378458.P204532322274590323` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378458 has offset 1).

The definition of A378458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378458.P204532322274590323

`∪[A073248(n+1), A228649(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A378458

/-- `∪[A073248(n+1), A228649(n+1)]` -/
def P204532322274590323.Spec : Prop :=
  ∀ n, (P204532322274590323.a n : ℤ) = A378458 (n + 1)

theorem P204532322274590323.correct : P204532322274590323.Spec := by
  intro n
  simp only [A378458, Nat.add_sub_cancel]

end A378458

/-! ## A378458.P9504154053796160964

`lt[2, A378036(n+1)]`
-/

namespace A378458.P9504154053796160964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378036 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A378458.P9504154053796160964

namespace A378458

/-- `lt[2, A378036(n+1)]` -/
def P9504154053796160964.Spec : Prop :=
  ∀ n, (P9504154053796160964.a n : ℤ) = A378458 (n + 1)

end A378458

/-! ## A378458.P11865081560160233281

`eq[1, A365196(n)+A105570(n)]`
-/

namespace A378458.P11865081560160233281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365196 n + A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A378458.P11865081560160233281

namespace A378458

/-- `eq[1, A365196(n)+A105570(n)]` -/
def P11865081560160233281.Spec : Prop :=
  ∀ n, (P11865081560160233281.a n : ℤ) = A378458 (n + 1)

end A378458

/-! ## A378458.P13951071953363412475

`lt[A105587(n+2), A105587(A105587(n))]`
-/

namespace A378458.P13951071953363412475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105587 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105587 (A105587 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378458.P13951071953363412475

namespace A378458

/-- `lt[A105587(n+2), A105587(A105587(n))]` -/
def P13951071953363412475.Spec : Prop :=
  ∀ n, (P13951071953363412475.a n : ℤ) = A378458 (n + 1)

end A378458

/-! ## A378458.P3548243582639435552

`eq[log(A285736(2*n+1)), A008966(n+2)]`
-/

namespace A378458.P3548243582639435552
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A285736 (2 * n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A378458.P3548243582639435552

namespace A378458

/-- `eq[log(A285736(2*n+1)), A008966(n+2)]` -/
def P3548243582639435552.Spec : Prop :=
  ∀ n, (P3548243582639435552.a n : ℤ) = A378458 (n + 1)

end A378458

/-!
# A378460: a(n) = Sum_{k=0..n} binomial(n+k-1,k) * binomial(2*n+k-1,n-k).

The programs for A378460, there is no canonical definition to state claims against.
-/

/-! ## A378460.P16618686093410071343

`A195120(Δ[A015565(n)])`
-/

namespace A378460.P16618686093410071343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (f1 (n + 1) - f1 n).toNat

end

end A378460.P16618686093410071343

/-!
# A378461: a(n) = Sum_{k=0..n} binomial(n+k-1,k) * binomial(2*n+2*k-1,n-k).

The programs for A378461, there is no canonical definition to state claims against.
-/

/-! ## A378461.P2194806756127859272

`A065266(A103885(n))/2`
-/

namespace A378461.P2194806756127859272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065266 (A103885 n).toNat : ℚ) / 2

end

end A378461.P2194806756127859272

/-!
# A378462: a(n) = Sum_{k=0..floor(n/2)} binomial(n+k-1,k) * binomial(2*n+k-1,n-2*k).

The programs for A378462, there is no canonical definition to state claims against.
-/

/-! ## A378462.P11564663576573794959

`A116401((n+1)²+n²)`
-/

namespace A378462.P11564663576573794959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116401 ((n + 1) ^ 2 + n ^ 2)

end

end A378462.P11564663576573794959

/-! ## A378462.P4385174388235451613

`A376761(A045458(a(n-1)+1)+23)` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A378462.P4385174388235451613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  A376761 (A045458 (a (n - 1) + 1).toNat + 23).toNat

end

end A378462.P4385174388235451613

/-!
# A378463: a(n) = Sum_{k=0..floor(n/3)} binomial(n+k-1,k) * binomial(2*n-k-1,n-3*k).

The programs for A378463, there is no canonical definition to state claims against.
-/

/-! ## A378463.P14209853043268494362

`A194640(A126952(n))`
-/

namespace A378463.P14209853043268494362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A126952 n).toNat

end

end A378463.P14209853043268494362

/-! ## A378463.P10131149486829576560

`A230980(2*(floor(6^n/9)+1))-A230980(n)`
-/

namespace A378463.P10131149486829576560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (2 * (⌊(6 ^ n : ℚ) / 9⌋ + 1)).toNat - A230980 n

end

end A378463.P10131149486829576560

/-!
# A378464: a(n) = Sum_{k=0..floor(n/3)} binomial(n+k-1,k) * binomial(2*n-1,n-3*k).

The programs for A378464, there is no canonical definition to state claims against.
-/

/-! ## A378464.P12417425587902097135

`A329395(A349186(n))`
-/

namespace A378464.P12417425587902097135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329395 (A349186 n).toNat

end

end A378464.P12417425587902097135

/-! ## A378464.P10743119707561167359

`A320536(Δ[A219672(n)])`
-/

namespace A378464.P10743119707561167359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320536 (f1 (n + 1) - f1 n).toNat

end

end A378464.P10743119707561167359

/-!
# A378465: Expansion of (1/x) * Series_Reversion( x * (1 - x - x/(1 - x)) ).

The programs for A378465, there is no canonical definition to state claims against.
-/

/-! ## A378465.P15917021856470349807

`A096008(A006125(n))+A001006(2*n)`
-/

namespace A378465.P15917021856470349807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096008 (A006125 n).toNat + A001006 (2 * n)

end

end A378465.P15917021856470349807

/-!
# A378466: Expansion of (1/x) * Series_Reversion( x * (1 - x - x/(1 - x)^2) ).

The programs for A378466, there is no canonical definition to state claims against.
-/

/-! ## A378466.P5020480783893066725

`∑{d}[(10^n+8)/9, A049695(#)]`
-/

namespace A378466.P5020480783893066725
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n + 8 : ℚ) / 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A049695 d

end

end A378466.P5020480783893066725

/-!
# A378467: Expansion of (1/x) * Series_Reversion( x * (1 - x - x^2/(1 - x)^2) ).

The programs for A378467, there is no canonical definition to state claims against.
-/

/-! ## A378467.P3578176821726309489

`A307412(n)-A025443(A330677(n))`
-/

namespace A378467.P3578176821726309489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307412 n - A025443 (A330677 n).toNat

end

end A378467.P3578176821726309489

/-! ## A378467.P10102825880720637676

`A095396(A120594(n))`
-/

namespace A378467.P10102825880720637676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095396 (A120594 n).toNat

end

end A378467.P10102825880720637676

/-!
# A378470: a(n) is the smallest number k for which the width pattern of the symmetric representation of sigma(k), SRS(k), consists of two unimodal parts of maximum width n.

The programs for A378470, there is no canonical definition to state claims against.
-/

/-! ## A378470.P14249138020733373873

`A367377(∑[n+1]+2)`
-/

namespace A378470.P14249138020733373873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367377 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A378470.P14249138020733373873

/-!
# A378471: Numbers m whose symmetric representation of sigma(m), SRS(m), has at least 2 parts the first of which has width 1.

The programs for A378471, there is no canonical definition to state claims against.
-/

/-! ## A378471.P2744846656552777965

`lt[A241558(n+1), n+1]+1`
-/

namespace A378471.P2744846656552777965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241558 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A378471.P2744846656552777965

/-! ## A378471.P2820517658870026972

`lt[A241838(n+1), n+1]+1`
-/

namespace A378471.P2820517658870026972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241838 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A378471.P2820517658870026972

/-! ## A378471.P10926983985893652592

`eq[A048298(n), A331928(n)]`
-/

namespace A378471.P10926983985893652592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378471.P10926983985893652592

/-! ## A378471.P7519267737762120845

`eq[A060147(n), A331928(n)]`
-/

namespace A378471.P7519267737762120845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060147 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378471.P7519267737762120845

/-! ## A378471.P6310138897890813430

`eq[A099892(n), A331928(n)]`
-/

namespace A378471.P6310138897890813430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099892 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378471.P6310138897890813430

/-! ## A378471.P1336458253197356123

`eq[A099893(n), A331928(n)]`
-/

namespace A378471.P1336458253197356123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099893 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378471.P1336458253197356123

/-! ## A378471.P1206494238038935353

`eq[A209229(n), A331928(n)]`
-/

namespace A378471.P1206494238038935353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378471.P1206494238038935353

/-! ## A378471.P12737981748091788890

`eq[A255308(n), A331928(n)]`
-/

namespace A378471.P12737981748091788890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255308 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378471.P12737981748091788890

/-! ## A378471.P9073671475105338649

`lt[A257088(n), A076600(n)]`
-/

namespace A378471.P9073671475105338649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076600 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378471.P9073671475105338649

/-! ## A378471.P12665726189731768954

`lt[A034891(A304442(n)), n]`
-/

namespace A378471.P12665726189731768954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034891 (A304442 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A378471.P12665726189731768954

/-!
# A378475: The number of n-colorings of the vertices of the snub cube up to rotation.

The programs for A378475, the canonical program `A378475.P41768347042816994` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378475 has offset 0).

The definition of A378475 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378475.P41768347042816994

`n^6*(n^18+9*n^6+8*n²+6)/24`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A378475

/-- `n^6*(n^18+9*n^6+8*n²+6)/24` -/
def P41768347042816994.Spec : Prop :=
  ∀ n, P41768347042816994.a n = (A378475 n : ℚ)

end A378475

/-!
# A378480: Products of 3 distinct prime numbers (or sphenics) that are deficient.

The programs for A378480, the canonical program `A378480.P8315309591831248702` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378480 has offset 1).

The definition of A378480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8934 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378480.P8315309591831248702

`filter[A007304(n+1), A294934(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A378480

/-- `filter[A007304(n+1), A294934(#)]` -/
def P8315309591831248702.Spec : Prop :=
  ∀ n, P8315309591831248702.a n = A378480 (n + 1)

theorem P8315309591831248702.correct : P8315309591831248702.Spec := by
  intro n
  simp only [A378480, Nat.add_sub_cancel]

end A378480

/-! ## A378480.P14239295421927307881

`filter[A007304(n+1), A294935(#)]`
-/

namespace A378480.P14239295421927307881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A378480.P14239295421927307881

namespace A378480

/-- `filter[A007304(n+1), A294935(#)]` -/
def P14239295421927307881.Spec : Prop :=
  ∀ n, P14239295421927307881.a n = A378480 (n + 1)

end A378480

/-! ## A378480.P3503978119438875646

`filter[A354145(n+1), A252233(#)]`
-/

namespace A378480.P3503978119438875646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A378480.P3503978119438875646

namespace A378480

/-- `filter[A354145(n+1), A252233(#)]` -/
def P3503978119438875646.Spec : Prop :=
  ∀ n, P3503978119438875646.a n = A378480 (n + 1)

end A378480

/-! ## A378480.P4887897656382097499

`filter[A354145(n+1), A354926(#)]`
-/

namespace A378480.P4887897656382097499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A378480.P4887897656382097499

namespace A378480

/-- `filter[A354145(n+1), A354926(#)]` -/
def P4887897656382097499.Spec : Prop :=
  ∀ n, P4887897656382097499.a n = A378480 (n + 1)

end A378480

/-! ## A378480.P3161777692946270383

`∩[A007304(n+1), A354145(n+1)]`
-/

namespace A378480.P3161777692946270383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378480.P3161777692946270383

namespace A378480

/-- `∩[A007304(n+1), A354145(n+1)]` -/
def P3161777692946270383.Spec : Prop :=
  ∀ n, (P3161777692946270383.a n : ℤ) = A378480 (n + 1)

end A378480

/-! ## A378480.P9776012012859468407

`∩[A030059(n+1), A354145(n+1)]`
-/

namespace A378480.P9776012012859468407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378480.P9776012012859468407

namespace A378480

/-- `∩[A030059(n+1), A354145(n+1)]` -/
def P9776012012859468407.Spec : Prop :=
  ∀ n, (P9776012012859468407.a n : ℤ) = A378480 (n + 1)

end A378480

/-! ## A378480.P5310956305174232857

`∩[A007304(n+1), A087247(n+1)]`
-/

namespace A378480.P5310956305174232857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378480.P5310956305174232857

namespace A378480

/-- `∩[A007304(n+1), A087247(n+1)]` -/
def P5310956305174232857.Spec : Prop :=
  ∀ n, (P5310956305174232857.a n : ℤ) = A378480 (n + 1)

end A378480

/-! ## A378480.P5208383906655677304

`∩[A014612(n+1), A087247(n+1)]`
-/

namespace A378480.P5208383906655677304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378480.P5208383906655677304

namespace A378480

/-- `∩[A014612(n+1), A087247(n+1)]` -/
def P5208383906655677304.Spec : Prop :=
  ∀ n, (P5208383906655677304.a n : ℤ) = A378480 (n + 1)

end A378480

/-! ## A378480.P6816798546312945756

`∩[A030059(n+1), A087247(n+1)]`
-/

namespace A378480.P6816798546312945756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378480.P6816798546312945756

namespace A378480

/-- `∩[A030059(n+1), A087247(n+1)]` -/
def P6816798546312945756.Spec : Prop :=
  ∀ n, (P6816798546312945756.a n : ℤ) = A378480 (n + 1)

end A378480

/-! ## A378480.P8344628673789041815

`∩[A030626(n+1), A087247(n+1)]`
-/

namespace A378480.P8344628673789041815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378480.P8344628673789041815

namespace A378480

/-- `∩[A030626(n+1), A087247(n+1)]` -/
def P8344628673789041815.Spec : Prop :=
  ∀ n, (P8344628673789041815.a n : ℤ) = A378480 (n + 1)

end A378480

/-! ## A378480.P16433293647868417782

`∩[A033992(n+1), A087247(n+1)]`
-/

namespace A378480.P16433293647868417782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378480.P16433293647868417782

namespace A378480

/-- `∩[A033992(n+1), A087247(n+1)]` -/
def P16433293647868417782.Spec : Prop :=
  ∀ n, (P16433293647868417782.a n : ℤ) = A378480 (n + 1)

end A378480

/-! ## A378480.P1296604252725289527

`∩[A036456(n+1), A087247(n+1)]`
-/

namespace A378480.P1296604252725289527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378480.P1296604252725289527

namespace A378480

/-- `∩[A036456(n+1), A087247(n+1)]` -/
def P1296604252725289527.Spec : Prop :=
  ∀ n, (P1296604252725289527.a n : ℤ) = A378480 (n + 1)

end A378480

/-! ## A378480.P16223325500147674514

`∩[A046339(n+1), A087247(n+1)]`
-/

namespace A378480.P16223325500147674514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378480.P16223325500147674514

namespace A378480

/-- `∩[A046339(n+1), A087247(n+1)]` -/
def P16223325500147674514.Spec : Prop :=
  ∀ n, (P16223325500147674514.a n : ℤ) = A378480 (n + 1)

end A378480

/-! ## A378480.P2702699766669100381

`∩[A087247(n+1), A109426(n+1)]`
-/

namespace A378480.P2702699766669100381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378480.P2702699766669100381

namespace A378480

/-- `∩[A087247(n+1), A109426(n+1)]` -/
def P2702699766669100381.Spec : Prop :=
  ∀ n, (P2702699766669100381.a n : ℤ) = A378480 (n + 1)

end A378480

/-! ## A378480.P10778364639652897112

`∩[A087247(n+1), A211338(n+1)]`
-/

namespace A378480.P10778364639652897112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378480.P10778364639652897112

namespace A378480

/-- `∩[A087247(n+1), A211338(n+1)]` -/
def P10778364639652897112.Spec : Prop :=
  ∀ n, (P10778364639652897112.a n : ℤ) = A378480 (n + 1)

end A378480

/-! ## A378480.P8971823461936530282

`∩[A087247(n+1), A217856(n+1)]`
-/

namespace A378480.P8971823461936530282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378480.P8971823461936530282

namespace A378480

/-- `∩[A087247(n+1), A217856(n+1)]` -/
def P8971823461936530282.Spec : Prop :=
  ∀ n, (P8971823461936530282.a n : ℤ) = A378480 (n + 1)

end A378480

/-! ## A378480.P2571784030286044283

`∩[A087247(n+1), A225228(n+1)]`
-/

namespace A378480.P2571784030286044283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378480.P2571784030286044283

namespace A378480

/-- `∩[A087247(n+1), A225228(n+1)]` -/
def P2571784030286044283.Spec : Prop :=
  ∀ n, (P2571784030286044283.a n : ℤ) = A378480 (n + 1)

end A378480

/-! ## A378480.P10222683555913327503

`∩[A087247(n+1), A279457(n+1)]`
-/

namespace A378480.P10222683555913327503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378480.P10222683555913327503

namespace A378480

/-- `∩[A087247(n+1), A279457(n+1)]` -/
def P10222683555913327503.Spec : Prop :=
  ∀ n, (P10222683555913327503.a n : ℤ) = A378480 (n + 1)

end A378480

/-! ## A378480.P6929724309309400152

`∩[A345382(n+1), A087247(n+1)]`
-/

namespace A378480.P6929724309309400152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378480.P6929724309309400152

namespace A378480

/-- `∩[A345382(n+1), A087247(n+1)]` -/
def P6929724309309400152.Spec : Prop :=
  ∀ n, (P6929724309309400152.a n : ℤ) = A378480 (n + 1)

end A378480

/-!
# A378489: Intersection of A000028 and A028260.

The programs for A378489, the canonical program `A378489.P17623488810974009379` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378489 has offset 1).

The definition of A378489 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8378 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378489.P17623488810974009379

`filter[A066427(n+1), A065043(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A378489

/-- `filter[A066427(n+1), A065043(#)]` -/
def P17623488810974009379.Spec : Prop :=
  ∀ n, P17623488810974009379.a n = A378489 (n + 1)

theorem P17623488810974009379.correct : P17623488810974009379.Spec := by
  intro n
  simp only [A378489, Nat.add_sub_cancel]

end A378489

/-! ## A378489.P11525024935105474406

`∩[A028260(n+1), A066427(n+1)]`
-/

namespace A378489.P11525024935105474406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378489.P11525024935105474406

namespace A378489

/-- `∩[A028260(n+1), A066427(n+1)]` -/
def P11525024935105474406.Spec : Prop :=
  ∀ n, (P11525024935105474406.a n : ℤ) = A378489 (n + 1)

end A378489

/-! ## A378489.P17362606914253249613

`filter[A000028(n+1), A065043(#)]`
-/

namespace A378489.P17362606914253249613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A378489.P17362606914253249613

namespace A378489

/-- `filter[A000028(n+1), A065043(#)]` -/
def P17362606914253249613.Spec : Prop :=
  ∀ n, P17362606914253249613.a n = A378489 (n + 1)

end A378489

/-! ## A378489.P8353042412581678782

`∩[A000028(n+1), A028260(n+1)]`
-/

namespace A378489.P8353042412581678782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378489.P8353042412581678782

namespace A378489

/-- `∩[A000028(n+1), A028260(n+1)]` -/
def P8353042412581678782.Spec : Prop :=
  ∀ n, (P8353042412581678782.a n : ℤ) = A378489 (n + 1)

end A378489

/-! ## A378489.P3748968369202470290

`∩[comp[A000379(n+1)-1]+1, A028260(n+1)]`
-/

namespace A378489.P3748968369202470290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000379 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A378489.P3748968369202470290

namespace A378489

/-- `∩[comp[A000379(n+1)-1]+1, A028260(n+1)]` -/
def P3748968369202470290.Spec : Prop :=
  ∀ n, (P3748968369202470290.a n : ℤ) = A378489 (n + 1)

end A378489

/-! ## A378489.P4640654435146688862

`filter[A374473(n+1), A065043(#)]`
-/

namespace A378489.P4640654435146688862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A378489.P4640654435146688862

namespace A378489

/-- `filter[A374473(n+1), A065043(#)]` -/
def P4640654435146688862.Spec : Prop :=
  ∀ n, P4640654435146688862.a n = A378489 (n + 1)

end A378489

/-! ## A378489.P2759202926156897326

`∩[A028260(n+1), A374473(n+1)]`
-/

namespace A378489.P2759202926156897326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378489.P2759202926156897326

namespace A378489

/-- `∩[A028260(n+1), A374473(n+1)]` -/
def P2759202926156897326.Spec : Prop :=
  ∀ n, (P2759202926156897326.a n : ℤ) = A378489 (n + 1)

end A378489

/-!
# A378492: Squares where larger digits have larger multiplicity.

The programs for A378492, there is no canonical definition to state claims against.
-/

/-! ## A378492.P2155649656005569931

`∩[A019544(n+1), A385324(n+1)]`
-/

namespace A378492.P2155649656005569931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378492.P2155649656005569931

/-! ## A378492.P16031233340631382419

`A143979(∑[2^n])²`
-/

namespace A378492.P16031233340631382419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143979 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A378492.P16031233340631382419

/-!
# A378493: Dot product of the first n primes and the first n triangular numbers.

The programs for A378493, the canonical program `A378493.P10753090170849270192` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378493 has offset 1).

The definition of A378493 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378493.P10753090170849270192

`∑[A196421(n+1)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A378493

/-- `∑[A196421(n+1)]` -/
def P10753090170849270192.Spec : Prop :=
  ∀ n, P10753090170849270192.a n = A378493 (n + 1)

theorem P10753090170849270192.correct : P10753090170849270192.Spec := by
  intro n
  simp only [A378493, Nat.add_sub_cancel]

end A378493

/-! ## A378493.P11608009474193427468

`∑[∑[n+1]*Δ[A007504(n)]]`
-/

namespace A378493.P11608009474193427468
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * (f3 (n + 1) - f3 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378493.P11608009474193427468

namespace A378493

/-- `∑[∑[n+1]*Δ[A007504(n)]]` -/
def P11608009474193427468.Spec : Prop :=
  ∀ n, P11608009474193427468.a n = A378493 (n + 1)

end A378493

/-! ## A378493.P4198203372428130734

`∑[∑[n+1]*A000040(n+1)]`
-/

namespace A378493.P4198203372428130734
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378493.P4198203372428130734

namespace A378493

/-- `∑[∑[n+1]*A000040(n+1)]` -/
def P4198203372428130734.Spec : Prop :=
  ∀ n, P4198203372428130734.a n = A378493 (n + 1)

end A378493

/-! ## A378493.P11565595526760333655

`∑[A000217(n+1)*A008578(n+2)]`
-/

namespace A378493.P11565595526760333655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378493.P11565595526760333655

namespace A378493

/-- `∑[A000217(n+1)*A008578(n+2)]` -/
def P11565595526760333655.Spec : Prop :=
  ∀ n, P11565595526760333655.a n = A378493 (n + 1)

end A378493

/-! ## A378493.P17188786962876698194

`∑[A000217(n+1)*A073846(2*(n+1))]`
-/

namespace A378493.P17188786962876698194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A073846 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378493.P17188786962876698194

namespace A378493

/-- `∑[A000217(n+1)*A073846(2*(n+1))]` -/
def P17188786962876698194.Spec : Prop :=
  ∀ n, P17188786962876698194.a n = A378493 (n + 1)

end A378493

/-! ## A378493.P1284823384860234156

`∑[∑[n+1]*p?[comp[n²]]]`
-/

namespace A378493.P1284823384860234156
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378493.P1284823384860234156

namespace A378493

/-- `∑[∑[n+1]*p?[comp[n²]]]` -/
def P1284823384860234156.Spec : Prop :=
  ∀ n, (P1284823384860234156.a n : ℤ) = A378493 (n + 1)

end A378493

/-!
# A378494: Intersection of A000379 and A026424.

The programs for A378494, the canonical program `A378494.P8782437258541775153` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378494 has offset 1).

The definition of A378494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8436 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378494.P8782437258541775153

`filter[A066428(n+1), A066829(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A378494

/-- `filter[A066428(n+1), A066829(#)]` -/
def P8782437258541775153.Spec : Prop :=
  ∀ n, P8782437258541775153.a n = A378494 (n + 1)

theorem P8782437258541775153.correct : P8782437258541775153.Spec := by
  intro n
  simp only [A378494, Nat.add_sub_cancel]

end A378494

/-! ## A378494.P15735289476028130917

`filter[A046339(n+1), A359464(#)]`
-/

namespace A378494.P15735289476028130917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A378494.P15735289476028130917

namespace A378494

/-- `filter[A046339(n+1), A359464(#)]` -/
def P15735289476028130917.Spec : Prop :=
  ∀ n, P15735289476028130917.a n = A378494 (n + 1)

end A378494

/-! ## A378494.P14651787370355557354

`∩[A046339(n+1), A066428(n+1)]`
-/

namespace A378494.P14651787370355557354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378494.P14651787370355557354

namespace A378494

/-- `∩[A046339(n+1), A066428(n+1)]` -/
def P14651787370355557354.Spec : Prop :=
  ∀ n, (P14651787370355557354.a n : ℤ) = A378494 (n + 1)

end A378494

/-! ## A378494.P11222774346011160517

`filter[A000379(n+1), A066829(#)]`
-/

namespace A378494.P11222774346011160517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A378494.P11222774346011160517

namespace A378494

/-- `filter[A000379(n+1), A066829(#)]` -/
def P11222774346011160517.Spec : Prop :=
  ∀ n, P11222774346011160517.a n = A378494 (n + 1)

end A378494

/-! ## A378494.P11795245014049343401

`∩[A000379(n+1), A046339(n+1)]`
-/

namespace A378494.P11795245014049343401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378494.P11795245014049343401

namespace A378494

/-- `∩[A000379(n+1), A046339(n+1)]` -/
def P11795245014049343401.Spec : Prop :=
  ∀ n, (P11795245014049343401.a n : ℤ) = A378494 (n + 1)

end A378494

/-! ## A378494.P7735026235445943238

`filter[A026424(n+1), A359464(#)]`
-/

namespace A378494.P7735026235445943238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A378494.P7735026235445943238

namespace A378494

/-- `filter[A026424(n+1), A359464(#)]` -/
def P7735026235445943238.Spec : Prop :=
  ∀ n, P7735026235445943238.a n = A378494 (n + 1)

end A378494

/-! ## A378494.P17472435992854538374

`∩[A000379(n+1), A026424(n+1)]`
-/

namespace A378494.P17472435992854538374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378494.P17472435992854538374

namespace A378494

/-- `∩[A000379(n+1), A026424(n+1)]` -/
def P17472435992854538374.Spec : Prop :=
  ∀ n, (P17472435992854538374.a n : ℤ) = A378494 (n + 1)

end A378494

/-! ## A378494.P4626620836958051456

`∩[A026424(n+1), A066428(n+1)]`
-/

namespace A378494.P4626620836958051456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378494.P4626620836958051456

namespace A378494

/-- `∩[A026424(n+1), A066428(n+1)]` -/
def P4626620836958051456.Spec : Prop :=
  ∀ n, (P4626620836958051456.a n : ℤ) = A378494 (n + 1)

end A378494

/-! ## A378494.P4145224190042682241

`filter[A026422(n+2), A359464(#)]`
-/

namespace A378494.P4145224190042682241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A378494.P4145224190042682241

namespace A378494

/-- `filter[A026422(n+2), A359464(#)]` -/
def P4145224190042682241.Spec : Prop :=
  ∀ n, P4145224190042682241.a n = A378494 (n + 1)

end A378494

/-! ## A378494.P14769980390901648361

`∩[A026422(n+1), A066428(n+1)]`
-/

namespace A378494.P14769980390901648361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378494.P14769980390901648361

namespace A378494

/-- `∩[A026422(n+1), A066428(n+1)]` -/
def P14769980390901648361.Spec : Prop :=
  ∀ n, (P14769980390901648361.a n : ℤ) = A378494 (n + 1)

end A378494

/-! ## A378494.P10957040371638684699

`filter[A374473(n+3), A359464(#)]`
-/

namespace A378494.P10957040371638684699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374473 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A378494.P10957040371638684699

namespace A378494

/-- `filter[A374473(n+3), A359464(#)]` -/
def P10957040371638684699.Spec : Prop :=
  ∀ n, P10957040371638684699.a n = A378494 (n + 1)

end A378494

/-! ## A378494.P6438792581269797124

`∩[A000379(n+1), A374473(n+1)]`
-/

namespace A378494.P6438792581269797124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378494.P6438792581269797124

namespace A378494

/-- `∩[A000379(n+1), A374473(n+1)]` -/
def P6438792581269797124.Spec : Prop :=
  ∀ n, (P6438792581269797124.a n : ℤ) = A378494 (n + 1)

end A378494

/-! ## A378494.P17284124118109993299

`∩[A066428(n+1), A374473(n+1)]`
-/

namespace A378494.P17284124118109993299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374473 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378494.P17284124118109993299

namespace A378494

/-- `∩[A066428(n+1), A374473(n+1)]` -/
def P17284124118109993299.Spec : Prop :=
  ∀ n, (P17284124118109993299.a n : ℤ) = A378494 (n + 1)

end A378494

/-! ## A378494.P1792499875536810402

`filter[A143691(2*(n+1)), A359464(#)]`
-/

namespace A378494.P1792499875536810402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143691 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A378494.P1792499875536810402

namespace A378494

/-- `filter[A143691(2*(n+1)), A359464(#)]` -/
def P1792499875536810402.Spec : Prop :=
  ∀ n, P1792499875536810402.a n = A378494 (n + 1)

end A378494

/-!
# A378496: Inverse of permutation in A380856.

The programs for A378496, there is no canonical definition to state claims against.
-/

/-! ## A378496.P14740198823595977785

`Δ[A025466(A339656(n)+4)]+n`
-/

namespace A378496.P14740198823595977785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025466 (A339656 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A378496.P14740198823595977785

/-!
# A378497: a(n) is the number whose base-4 digits are 1 followed by the first n-1 terms of the periodic sequence with initial period 2,0,3.

The programs for A378497, the canonical program `A378497.P8746426100364290314` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378497 has offset 1).

The definition of A378497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378497.P8746426100364290314

`A037667(n+1)-A004171(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A378497

/-- `A037667(n+1)-A004171(n)` -/
def P8746426100364290314.Spec : Prop :=
  ∀ n, P8746426100364290314.a n = A378497 (n + 1)

theorem P8746426100364290314.correct : P8746426100364290314.Spec := by
  intro n
  simp only [A378497, Nat.add_sub_cancel]

end A378497

/-! ## A378497.P13021456036904530147

`A037618(n+1)-A387868(n)`
-/

namespace A378497.P13021456036904530147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037618 (n + 1) - A387868 n

end

end A378497.P13021456036904530147

namespace A378497

/-- `A037618(n+1)-A387868(n)` -/
def P13021456036904530147.Spec : Prop :=
  ∀ n, P13021456036904530147.a n = A378497 (n + 1)

end A378497

/-! ## A378497.P12939085192694298532

`A378502(n+1)-A191597(n)`
-/

namespace A378497.P12939085192694298532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378502 (n + 1) - A191597 n

end

end A378497.P12939085192694298532

namespace A378497

/-- `A378502(n+1)-A191597(n)` -/
def P12939085192694298532.Spec : Prop :=
  ∀ n, P12939085192694298532.a n = A378497 (n + 1)

end A378497

/-! ## A378497.P18372399015647191792

`and(A037667(n+1), A083420(n))`
-/

namespace A378497.P18372399015647191792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037667 (n + 1)) (A083420 n)

end

end A378497.P18372399015647191792

namespace A378497

/-- `and(A037667(n+1), A083420(n))` -/
def P18372399015647191792.Spec : Prop :=
  ∀ n, P18372399015647191792.a n = A378497 (n + 1)

end A378497

/-! ## A378497.P15540485962895189419

`and(A037667(n+1), A267536(n))`
-/

namespace A378497.P15540485962895189419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037667 (n + 1)) (A267536 n)

end

end A378497.P15540485962895189419

namespace A378497

/-- `and(A037667(n+1), A267536(n))` -/
def P15540485962895189419.Spec : Prop :=
  ∀ n, P15540485962895189419.a n = A378497 (n + 1)

end A378497

/-! ## A378497.P10160552043423264035

`and(A037667(n+1), A267890(n))`
-/

namespace A378497.P10160552043423264035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037667 (n + 1)) (A267890 n)

end

end A378497.P10160552043423264035

namespace A378497

/-- `and(A037667(n+1), A267890(n))` -/
def P10160552043423264035.Spec : Prop :=
  ∀ n, P10160552043423264035.a n = A378497 (n + 1)

end A378497

/-! ## A378497.P10558445486002080080

`xor(A020988(n), A037497(n+1))`
-/

namespace A378497.P10558445486002080080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020988 n) (A037497 (n + 1))

end

end A378497.P10558445486002080080

namespace A378497

/-- `xor(A020988(n), A037497(n+1))` -/
def P10558445486002080080.Spec : Prop :=
  ∀ n, P10558445486002080080.a n = A378497 (n + 1)

end A378497

/-! ## A378497.P16623973080348950240

`xor(A037639(n+1), A072197(n))`
-/

namespace A378497.P16623973080348950240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037639 (n + 1)) (A072197 n)

end

end A378497.P16623973080348950240

namespace A378497

/-- `xor(A037639(n+1), A072197(n))` -/
def P16623973080348950240.Spec : Prop :=
  ∀ n, P16623973080348950240.a n = A378497 (n + 1)

end A378497

/-! ## A378497.P18789202327987344

`A131666(2*n+1)+A002450(n+1)`
-/

namespace A378497.P18789202327987344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 (2 * n + 1) + A002450 (n + 1)

end

end A378497.P18789202327987344

namespace A378497

/-- `A131666(2*n+1)+A002450(n+1)` -/
def P18789202327987344.Spec : Prop :=
  ∀ n, P18789202327987344.a n = A378497 (n + 1)

end A378497

/-! ## A378497.P555784225088406855

`A131666(2*n+1)+A097074(2*n)`
-/

namespace A378497.P555784225088406855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 (2 * n + 1) + A097074 (2 * n)

end

end A378497.P555784225088406855

namespace A378497

/-- `A131666(2*n+1)+A097074(2*n)` -/
def P555784225088406855.Spec : Prop :=
  ∀ n, P555784225088406855.a n = A378497 (n + 1)

end A378497

/-! ## A378497.P9634404859522341046

`A084214(2*n+1)-A113405(2*n)`
-/

namespace A378497.P9634404859522341046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084214 (2 * n + 1) - A113405 (2 * n)

end

end A378497.P9634404859522341046

namespace A378497

/-- `A084214(2*n+1)-A113405(2*n)` -/
def P9634404859522341046.Spec : Prop :=
  ∀ n, P9634404859522341046.a n = A378497 (n + 1)

end A378497

/-! ## A378497.P10301662754910778412

`A131666(2*n+1)+A000975(2*n+1)`
-/

namespace A378497.P10301662754910778412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 (2 * n + 1) + A000975 (2 * n + 1)

end

end A378497.P10301662754910778412

namespace A378497

/-- `A131666(2*n+1)+A000975(2*n+1)` -/
def P10301662754910778412.Spec : Prop :=
  ∀ n, P10301662754910778412.a n = A378497 (n + 1)

end A378497

/-! ## A378497.P694377441071295373

`A024494(2*n+1)+∑[A024495(2*n+1)]`
-/

namespace A378497.P694377441071295373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024494 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378497.P694377441071295373

namespace A378497

/-- `A024494(2*n+1)+∑[A024495(2*n+1)]` -/
def P694377441071295373.Spec : Prop :=
  ∀ n, P694377441071295373.a n = A378497 (n + 1)

end A378497

/-! ## A378497.P10088544074588097342

`A131708(2*n+1)+∑[A024495(2*n+1)]`
-/

namespace A378497.P10088544074588097342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131708 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378497.P10088544074588097342

namespace A378497

/-- `A131708(2*n+1)+∑[A024495(2*n+1)]` -/
def P10088544074588097342.Spec : Prop :=
  ∀ n, P10088544074588097342.a n = A378497 (n + 1)

end A378497

/-! ## A378497.P5258481361303289554

`and(A037667(n+1), A140529(n))`
-/

namespace A378497.P5258481361303289554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037667 (n + 1)) (A140529 n)

end

end A378497.P5258481361303289554

namespace A378497

/-- `and(A037667(n+1), A140529(n))` -/
def P5258481361303289554.Spec : Prop :=
  ∀ n, P5258481361303289554.a n = A378497 (n + 1)

end A378497

/-! ## A378497.P5995999054638767025

`and(A037667(n+1), A206372(n))`
-/

namespace A378497.P5995999054638767025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037667 (n + 1)) (A206372 n)

end

end A378497.P5995999054638767025

namespace A378497

/-- `and(A037667(n+1), A206372(n))` -/
def P5995999054638767025.Spec : Prop :=
  ∀ n, P5995999054638767025.a n = A378497 (n + 1)

end A378497

/-!
# A378498: Squares where larger digits have smaller multiplicity.

The programs for A378498, there is no canonical definition to state claims against.
-/

/-! ## A378498.P18381441811079058781

`eq[1, A162511(A000291(n))+2]²`
-/

namespace A378498.P18381441811079058781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162511 (A000291 n).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A378498.P18381441811079058781

/-! ## A378498.P12998865846934862447

`A165441(ceil(2^(n-1))*A369093(n+1))`
-/

namespace A378498.P12998865846934862447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165441 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A369093 (n + 1)).toNat

end

end A378498.P12998865846934862447

/-! ## A378498.P8749052455546499948

`A111245(∑[A000120(n)^A000120(n)])`
-/

namespace A378498.P8749052455546499948
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000120 n : ℚ) ^ (A000120 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111245 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A378498.P8749052455546499948

/-!
# A378499: a(n) is the number whose base-4 digits are 1 followed by the first n-1 terms of the periodic sequence with initial period 0,3,2.

The programs for A378499, the canonical program `A378499.P16723912667862187755` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378499 has offset 1).

The definition of A378499 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378499.P16723912667862187755

`4*a(n-1)+a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=4, a(2)=19, a(3)=78`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A378499

/-- `4*a(n-1)+a(n-3)-4*a(n-4)` -/
def P16723912667862187755.Spec : Prop :=
  ∀ n, P16723912667862187755.a n = A378499 (n + 1)

theorem P16723912667862187755.correct : P16723912667862187755.Spec := by
  intro n
  simp only [A378499, Nat.add_sub_cancel]

end A378499

/-! ## A378499.P6472902104400387649

`A037618(n+1)-A000302(n)`
-/

namespace A378499.P6472902104400387649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037618 (n + 1) - A000302 n

end

end A378499.P6472902104400387649

namespace A378499

/-- `A037618(n+1)-A000302(n)` -/
def P6472902104400387649.Spec : Prop :=
  ∀ n, P6472902104400387649.a n = A378499 (n + 1)

end A378499

/-! ## A378499.P18302433270286774214

`A198693(n)-A037597(n+1)`
-/

namespace A378499.P18302433270286774214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198693 n - A037597 (n + 1)

end

end A378499.P18302433270286774214

namespace A378499

/-- `A198693(n)-A037597(n+1)` -/
def P18302433270286774214.Spec : Prop :=
  ∀ n, P18302433270286774214.a n = A378499 (n + 1)

end A378499

/-! ## A378499.P17558719365884850521

`xor(A024036(n), A037597(n+1))`
-/

namespace A378499.P17558719365884850521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A024036 n) (A037597 (n + 1))

end

end A378499.P17558719365884850521

namespace A378499

/-- `xor(A024036(n), A037597(n+1))` -/
def P17558719365884850521.Spec : Prop :=
  ∀ n, P17558719365884850521.a n = A378499 (n + 1)

end A378499

/-! ## A378499.P13111492886505405656

`xor(A037618(n+1), A164346(n))`
-/

namespace A378499.P13111492886505405656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037618 (n + 1)) (A164346 n)

end

end A378499.P13111492886505405656

namespace A378499

/-- `xor(A037618(n+1), A164346(n))` -/
def P13111492886505405656.Spec : Prop :=
  ∀ n, P13111492886505405656.a n = A378499 (n + 1)

end A378499

/-! ## A378499.P16758653108117015076

`A002450(n+1)-A131666(2*n)`
-/

namespace A378499.P16758653108117015076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 (n + 1) - A131666 (2 * n)

end

end A378499.P16758653108117015076

namespace A378499

/-- `A002450(n+1)-A131666(2*n)` -/
def P16758653108117015076.Spec : Prop :=
  ∀ n, P16758653108117015076.a n = A378499 (n + 1)

end A378499

/-! ## A378499.P3906733639737832020

`A097074(2*n)-A131666(2*n)`
-/

namespace A378499.P3906733639737832020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097074 (2 * n) - A131666 (2 * n)

end

end A378499.P3906733639737832020

namespace A378499

/-- `A097074(2*n)-A131666(2*n)` -/
def P3906733639737832020.Spec : Prop :=
  ∀ n, P3906733639737832020.a n = A378499 (n + 1)

end A378499

/-! ## A378499.P4282145129681658976

`A153234(2*n+1)+A000079(n)²`
-/

namespace A378499.P4282145129681658976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153234 (2 * n + 1) + A000079 n ^ 2

end

end A378499.P4282145129681658976

namespace A378499

/-- `A153234(2*n+1)+A000079(n)²` -/
def P4282145129681658976.Spec : Prop :=
  ∀ n, P4282145129681658976.a n = A378499 (n + 1)

end A378499

/-! ## A378499.P10799810980633910984

`A328881(2*n+1)+A000079(n)²`
-/

namespace A378499.P10799810980633910984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328881 (2 * n + 1) + A000079 n ^ 2

end

end A378499.P10799810980633910984

namespace A378499

/-- `A328881(2*n+1)+A000079(n)²` -/
def P10799810980633910984.Spec : Prop :=
  ∀ n, P10799810980633910984.a n = A378499 (n + 1)

end A378499

/-! ## A378499.P2854088157076812050

`A153234(2*n+1)+A000079(2*n)`
-/

namespace A378499.P2854088157076812050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153234 (2 * n + 1) + A000079 (2 * n)

end

end A378499.P2854088157076812050

namespace A378499

/-- `A153234(2*n+1)+A000079(2*n)` -/
def P2854088157076812050.Spec : Prop :=
  ∀ n, P2854088157076812050.a n = A378499 (n + 1)

end A378499

/-! ## A378499.P17806378093582321254

`A328881(2*n+1)+A000079(2*n)`
-/

namespace A378499.P17806378093582321254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328881 (2 * n + 1) + A000079 (2 * n)

end

end A378499.P17806378093582321254

namespace A378499

/-- `A328881(2*n+1)+A000079(2*n)` -/
def P17806378093582321254.Spec : Prop :=
  ∀ n, P17806378093582321254.a n = A378499 (n + 1)

end A378499

/-! ## A378499.P9699860401694041472

`A000975(2*n+1)-A131666(2*n)`
-/

namespace A378499.P9699860401694041472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (2 * n + 1) - A131666 (2 * n)

end

end A378499.P9699860401694041472

namespace A378499

/-- `A000975(2*n+1)-A131666(2*n)` -/
def P9699860401694041472.Spec : Prop :=
  ∀ n, P9699860401694041472.a n = A378499 (n + 1)

end A378499

