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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A322800: Number of compositions (ordered partitions) of n into octagonal numbers (A000567).

The programs for A322800, there is no canonical definition to state claims against.
-/

/-! ## A322800.P3927996199886009392

`A123068(A322803(n)+1)`
-/

namespace A322800.P3927996199886009392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (A322803 n + 1).toNat

end

end A322800.P3927996199886009392

/-! ## A322800.P14058652933473686259

`A184944(A058343(n))+A005710(n)`
-/

namespace A322800.P14058652933473686259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184944 (A058343 n).toNat + A005710 n

end

end A322800.P14058652933473686259

/-! ## A322800.P4222641584890218347

`A023358(n)+A011736(A260813(n))`
-/

namespace A322800.P4222641584890218347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023358 n + A011736 (A260813 n).toNat

end

end A322800.P4222641584890218347

/-! ## A322800.P5263718054020156425

`A137748(A184945(n))+A023358(n)`
-/

namespace A322800.P5263718054020156425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137748 (A184945 n).toNat + A023358 n

end

end A322800.P5263718054020156425

/-! ## A322800.P8571389198797527498

`A184944(A184945(n))+A005710(n)`
-/

namespace A322800.P8571389198797527498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184944 (A184945 n).toNat + A005710 n

end

end A322800.P8571389198797527498

/-!
# A322801: Number of compositions (ordered partitions) of n into centered pentagonal numbers (A005891).

The programs for A322801, there is no canonical definition to state claims against.
-/

/-! ## A322801.P17110049389300608137

`A322798(n)-A185238(A137688(n))`
-/

namespace A322801.P17110049389300608137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322798 n - A185238 (A137688 n).toNat

end

end A322801.P17110049389300608137

/-! ## A322801.P57230804772399299

`A167662(A005708(n)%A228599(3*n+1))`
-/

namespace A322801.P57230804772399299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167662 (Int.tmod (A005708 n) (A228599 (3 * n + 1))).toNat

end

end A322801.P57230804772399299

/-!
# A322802: Number of compositions (ordered partitions) of n into centered hexagonal numbers (A003215).

The programs for A322802, there is no canonical definition to state claims against.
-/

/-! ## A322802.P4842202314741987744

`A185284(A000931(n))+A005709(n)`
-/

namespace A322802.P4842202314741987744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000931 n).toNat + A005709 n

end

end A322802.P4842202314741987744

/-! ## A322802.P12537814159666957482

`A185035(A260813(n))+A005709(n)`
-/

namespace A322802.P12537814159666957482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185035 (A260813 n).toNat + A005709 n

end

end A322802.P12537814159666957482

/-! ## A322802.P10368222842657225810

`A324824(A000045(n+1))+A005709(n)`
-/

namespace A322802.P10368222842657225810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324824 (A000045 (n + 1)).toNat + A005709 n

end

end A322802.P10368222842657225810

/-! ## A322802.P5608725809014667343

`A005709(n)-A008683(A007678(2*(n+2)))`
-/

namespace A322802.P5608725809014667343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005709 n - A008683 (A007678 (2 * (n + 2))).toNat

end

end A322802.P5608725809014667343

/-! ## A322802.P15646672072096564616

`xor(A112765(A343743(2*(n+1))), A322799(n))`
-/

namespace A322802.P15646672072096564616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A112765 (A343743 (2 * (n + 1))).toNat) (A322799 n)

end

end A322802.P15646672072096564616

/-!
# A322803: Number of compositions (ordered partitions) of n into centered heptagonal numbers (A069099).

The programs for A322803, there is no canonical definition to state claims against.
-/

/-! ## A322803.P6067550340946256025

`A031286(A184945(n))+A005710(n)`
-/

namespace A322803.P6067550340946256025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (A184945 n).toNat + A005710 n

end

end A322803.P6067550340946256025

/-! ## A322803.P5485347468554996900

`A322855(n)+A031286(A184945(n))`
-/

namespace A322803.P5485347468554996900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322855 n + A031286 (A184945 n).toNat

end

end A322803.P5485347468554996900

/-! ## A322803.P2338849353571883201

`A289165(A009963(n))+A023358(n)`
-/

namespace A322803.P2338849353571883201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289165 (A009963 n).toNat + A023358 n

end

end A322803.P2338849353571883201

/-! ## A322803.P2809785082433195731

`or(A005710(n), A010052(A162975(n)))`
-/

namespace A322803.P2809785082433195731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005710 n) (A010052 (A162975 n).toNat)

end

end A322803.P2809785082433195731

/-! ## A322803.P818666043846846813

`or(A005710(n), A011736(A261517(n)))`
-/

namespace A322803.P818666043846846813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005710 n) (A011736 (A261517 n).toNat)

end

end A322803.P818666043846846813

/-!
# A322804: Numbers that can be written as a product of one or more consecutive primorial numbers.

The programs for A322804, there is no canonical definition to state claims against.
-/

/-! ## A322804.P15836752304472499524

`A129912(A102363(n)%A275584(n+1))`
-/

namespace A322804.P15836752304472499524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129912 (Int.tmod (A102363 n) (A275584 (n + 1))).toNat

end

end A322804.P15836752304472499524

/-! ## A322804.P7699955991378568856

`eq[A014065(n), A328480(n)]`
-/

namespace A322804.P7699955991378568856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014065 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A322804.P7699955991378568856

/-! ## A322804.P12089607932668159621

`record[A243074(A332293(n+1))]`
-/

namespace A322804.P12089607932668159621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243074 (A332293 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322804.P12089607932668159621

/-! ## A322804.P8896587346320494783

`filter[A332293(n+1), A132350(#)]`
-/

namespace A322804.P8896587346320494783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A322804.P8896587346320494783

/-! ## A322804.P6275798813420813422

`∩[A299421(n), A332293(n+1)]`
-/

namespace A322804.P6275798813420813422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299421 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322804.P6275798813420813422

/-!
# A322805: Lexicographically earliest such sequence a that for all i, j, a(i) = a(j) => f(i) = f(j), where f(1)=0, f(2)=1, f(n)=-1 for odd primes, and f(n) = A252463(n) for any other number.

The programs for A322805, there is no canonical definition to state claims against.
-/

/-! ## A322805.P75634137008916445

`A305801(n+1)+A323081(n+1)-A319704(n+1)`
-/

namespace A322805.P75634137008916445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (n + 1) + (A323081 (n + 1) - A319704 (n + 1))

end

end A322805.P75634137008916445

/-! ## A322805.P5123613477225953892

`A322807(n+1)+A025426(A204060(n+1))`
-/

namespace A322805.P5123613477225953892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322807 (n + 1) + A025426 (A204060 (n + 1)).toNat

end

end A322805.P5123613477225953892

/-! ## A322805.P943127671463637469

`A322809(n+1)-A323073(∑[A269818(n+1)])`
-/

namespace A322805.P943127671463637469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322809 (n + 1) - A323073 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A322805.P943127671463637469

/-! ## A322805.P2142162647924487479

`A322807(n+1)+A262988(A115921(n+1))`
-/

namespace A322805.P2142162647924487479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322807 (n + 1) + A262988 (A115921 (n + 1)).toNat

end

end A322805.P2142162647924487479

/-! ## A322805.P12958890597279593024

`A322809(A077168(n))`
-/

namespace A322805.P12958890597279593024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322809 (A077168 n).toNat

end

end A322805.P12958890597279593024

/-!
# A322807: Lexicographically earliest such sequence a that a(i) = a(j) => f(i) = f(j) for all i, j, where f(n) = -1 if n is an odd prime, and f(n) = A285330(n) for all other numbers.

The programs for A322807, there is no canonical definition to state claims against.
-/

/-! ## A322807.P8080560986670471564

`A322805(n+1)-A115952(A138993(2*(n+2)))`
-/

namespace A322807.P8080560986670471564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322805 (n + 1) - A115952 (A138993 (2 * (n + 2))).toNat

end

end A322807.P8080560986670471564

/-! ## A322807.P2012035804952794133

`A116512(n+1)+A046698(A000032(n))`
-/

namespace A322807.P2012035804952794133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116512 (n + 1) + A046698 (A000032 n).toNat

end

end A322807.P2012035804952794133

/-! ## A322807.P10427131404300867444

`A322805(n+1)-A225099(A008825(n))`
-/

namespace A322807.P10427131404300867444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322805 (n + 1) - A225099 (A008825 n).toNat

end

end A322807.P10427131404300867444

/-! ## A322807.P18290477064515870439

`A116512(n+1)+A046698(A193679(n+1))`
-/

namespace A322807.P18290477064515870439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116512 (n + 1) + A046698 (A193679 (n + 1)).toNat

end

end A322807.P18290477064515870439

/-!
# A322808: Lexicographically earliest such sequence a that a(i) = a(j) => f(i) = f(j) for all i, j, where f(n) = 0 if n is a squarefree number > 2, and f(n) = A097246(n) for all other numbers.

The programs for A322808, there is no canonical definition to state claims against.
-/

/-! ## A322808.P5225323974171388316

`A305980(n+1)+A005090(A011782(n))`
-/

namespace A322808.P5225323974171388316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305980 (n + 1) + A005090 (A011782 n).toNat

end

end A322808.P5225323974171388316

/-! ## A322808.P12750189620523159370

`A305980(n+1)+A087049(A007283(n))`
-/

namespace A322808.P12750189620523159370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305980 (n + 1) + A087049 (A007283 n).toNat

end

end A322808.P12750189620523159370

/-! ## A322808.P7565798497875855160

`A305980(n+1)+A021913(A078008(n))`
-/

namespace A322808.P7565798497875855160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305980 (n + 1) + A021913 (A078008 n).toNat

end

end A322808.P7565798497875855160

/-! ## A322808.P5921140155600230656

`A305980(n+1)+A130543(A006528(n))`
-/

namespace A322808.P5921140155600230656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305980 (n + 1) + A130543 (A006528 n).toNat

end

end A322808.P5921140155600230656

/-! ## A322808.P17083689570473155608

`A305980(n+1)+A019425(A212135(n))`
-/

namespace A322808.P17083689570473155608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305980 (n + 1) + A019425 (A212135 n).toNat

end

end A322808.P17083689570473155608

/-!
# A322809: Lexicographically earliest such sequence a that a(i) = a(j) => f(i) = f(j) for all i, j, where f(n) = -1 if n is an odd prime, and f(n) = floor(n/2) for all other numbers.

The programs for A322809, the canonical program `A322809.P8535911819817827912` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322809 has offset 1).

The definition of A322809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322809.P8650155374521960209

`A323161(n+2)-1`
-/

namespace A322809.P8650155374521960209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323161 (n + 2) - 1

end

end A322809.P8650155374521960209

namespace A322809

/-- `A323161(n+2)-1` -/
def P8650155374521960209.Spec : Prop :=
  ∀ n, P8650155374521960209.a n = A322809 (n + 1)

end A322809

/-! ## A322809.P5966706464047531045

`∑[Δ[A323161(n+1)]%A173547(n)]`
-/

namespace A322809.P5966706464047531045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323161 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A173547 (n + 15))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322809.P5966706464047531045

namespace A322809

/-- `∑[Δ[A323161(n+1)]%A173547(n)]` -/
def P5966706464047531045.Spec : Prop :=
  ∀ n, P5966706464047531045.a n = A322809 (n + 1)

end A322809

/-! ## A322809.P3175674381250541223

`A061395(p?[A008578(A323161(n+1))])`
-/

namespace A322809.P3175674381250541223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A323161 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A322809.P3175674381250541223

namespace A322809

/-- `A061395(p?[A008578(A323161(n+1))])` -/
def P3175674381250541223.Spec : Prop :=
  ∀ n, P3175674381250541223.a n = A322809 (n + 1)

end A322809

/-! ## A322809.P8535911819817827912

`A040001(n)+A028242(A191558(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A322809

/-- `A040001(n)+A028242(A191558(n+1))` -/
def P8535911819817827912.Spec : Prop :=
  ∀ n, P8535911819817827912.a n = A322809 (n + 1)

theorem P8535911819817827912.correct : P8535911819817827912.Spec := by
  intro n
  simp only [A322809, Nat.add_sub_cancel]

end A322809

/-! ## A322809.P10388481438966607404

`A171173(A323161(n+2)²)`
-/

namespace A322809.P10388481438966607404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171173 (A323161 (n + 2) ^ 2).toNat

end

end A322809.P10388481438966607404

namespace A322809

/-- `A171173(A323161(n+2)²)` -/
def P10388481438966607404.Spec : Prop :=
  ∀ n, P10388481438966607404.a n = A322809 (n + 1)

end A322809

/-! ## A322809.P12570220490705674939

`A002260(∑[n+1]+A323161(n+2)+n+1)`
-/

namespace A322809.P12570220490705674939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A323161 (n + 2) + (n : ℤ)) + 1).toNat

end

end A322809.P12570220490705674939

namespace A322809

/-- `A002260(∑[n+1]+A323161(n+2)+n+1)` -/
def P12570220490705674939.Spec : Prop :=
  ∀ n, P12570220490705674939.a n = A322809 (n + 1)

end A322809

/-!
# A322810: Lexicographically earliest such sequence a that a(i) = a(j) => f(i) = f(j) for all i, j, where f(n) = 0 if n is an odd squarefree number > 1, and f(n) = n for all other numbers.

The programs for A322810, there is no canonical definition to state claims against.
-/

/-! ## A322810.P5161155087723455336

`A322024(n+1)%A042651(A000001(3*n+1))`
-/

namespace A322810.P5161155087723455336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322024 (n + 1)) (A042651 (A000001 (3 * n + 1)).toNat)

end

end A322810.P5161155087723455336

/-! ## A322810.P1079070546310174142

`A000523(2^A326203(n+1))`
-/

namespace A322810.P1079070546310174142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A326203 (n + 1) : ℤ))).toNat

end

end A322810.P1079070546310174142

/-! ## A322810.P17951161554204397293

`A003434(2^A326203(n+1))`
-/

namespace A322810.P17951161554204397293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A326203 (n + 1) : ℤ))).toNat

end

end A322810.P17951161554204397293

/-! ## A322810.P3433060851087152037

`A006577(2^A326203(n+1))`
-/

namespace A322810.P3433060851087152037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A326203 (n + 1) : ℤ))).toNat

end

end A322810.P3433060851087152037

/-! ## A322810.P5684115568452759666

`A007456(2^A326203(n+1))`
-/

namespace A322810.P5684115568452759666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007456 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A326203 (n + 1) : ℤ))).toNat

end

end A322810.P5684115568452759666

/-!
# A322811: a(1) = 0; for n > 1, a(n) = A001221(A285330(n)).

The programs for A322811, there is no canonical definition to state claims against.
-/

/-! ## A322811.P12186647562747968356

`∑{e}[∏{p}[A285330(n+1), #], #]`
-/

namespace A322811.P12186647562747968356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285330 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A322811.P12186647562747968356

/-! ## A322811.P10105405695686444216

`∑{p}[A285330(n+1), A000188(#)]`
-/

namespace A322811.P10105405695686444216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000188 p

end

end A322811.P10105405695686444216

/-! ## A322811.P2097693574116871686

`∑{p}[A285330(n+1), A001055(#)]`
-/

namespace A322811.P2097693574116871686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001055 p

end

end A322811.P2097693574116871686

/-! ## A322811.P12195557737334585848

`∑{p}[A285330(n+1), A001221(#)]`
-/

namespace A322811.P12195557737334585848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001221 p

end

end A322811.P12195557737334585848

/-! ## A322811.P9451181978352845250

`∑{p}[A285330(n+1), A001222(#)]`
-/

namespace A322811.P9451181978352845250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A322811.P9451181978352845250

/-! ## A322811.P2604056695108832936

`∑{p}[A285330(n+1), A003557(#)]`
-/

namespace A322811.P2604056695108832936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003557 p

end

end A322811.P2604056695108832936

/-! ## A322811.P4640138239764802200

`∑{p}[A285330(n+1), A008833(#)]`
-/

namespace A322811.P4640138239764802200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008833 p

end

end A322811.P4640138239764802200

/-! ## A322811.P5137026643138599730

`∑{p}[A285330(n+1), A010051(#)]`
-/

namespace A322811.P5137026643138599730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A010051 p

end

end A322811.P5137026643138599730

/-! ## A322811.P18352814545910597521

`∑{p}[A285330(n+1), A069288(#)]`
-/

namespace A322811.P18352814545910597521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A069288 p

end

end A322811.P18352814545910597521

/-! ## A322811.P7039915011293002961

`∑{p}[A285330(n+1), A285328(#)]`
-/

namespace A322811.P7039915011293002961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A285328 p

end

end A322811.P7039915011293002961

/-!
# A322812: a(n) = A001221(A048675(n)).

The programs for A322812, the canonical program `A322812.P11194875774676953615` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322812 has offset 2).

The definition of A322812 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A322812.P11194875774676953615

`A001221(A048675(n+2))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A322812

/-- `A001221(A048675(n+2))` -/
def P11194875774676953615.Spec : Prop :=
  ∀ n, P11194875774676953615.a n = A322812 (n + 2)

theorem P11194875774676953615.correct : P11194875774676953615.Spec := by
  intro n
  simp only [A322812, Nat.add_sub_cancel]

end A322812

/-! ## A322812.P5805836042713018124

`A322811(A097248(n+2))`
-/

namespace A322812.P5805836042713018124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A097248 (n + 2)).toNat

end

end A322812.P5805836042713018124

namespace A322812

/-- `A322811(A097248(n+2))` -/
def P5805836042713018124.Spec : Prop :=
  ∀ n, P5805836042713018124.a n = A322812 (n + 2)

end A322812

/-! ## A322812.P17195691386269815240

`A322811(A097247(n+2))`
-/

namespace A322812.P17195691386269815240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A097247 (n + 2)).toNat

end

end A322812.P17195691386269815240

namespace A322812

/-- `A322811(A097247(n+2))` -/
def P17195691386269815240.Spec : Prop :=
  ∀ n, P17195691386269815240.a n = A322812 (n + 2)

end A322812

/-! ## A322812.P18043563449069201654

`∑{p}[A048675(n+2), A001055(#)]`
-/

namespace A322812.P18043563449069201654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001055 p

end

end A322812.P18043563449069201654

namespace A322812

/-- `∑{p}[A048675(n+2), A001055(#)]` -/
def P18043563449069201654.Spec : Prop :=
  ∀ n, P18043563449069201654.a n = A322812 (n + 2)

end A322812

/-! ## A322812.P1139012925309998550

`∑{p}[A048675(n+2), A001222(#)]`
-/

namespace A322812.P1139012925309998550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A322812.P1139012925309998550

namespace A322812

/-- `∑{p}[A048675(n+2), A001222(#)]` -/
def P1139012925309998550.Spec : Prop :=
  ∀ n, P1139012925309998550.a n = A322812 (n + 2)

end A322812

/-! ## A322812.P4276291454257415209

`∑{p}[A048675(n+2), A069626(#)]`
-/

namespace A322812.P4276291454257415209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A069626 p

end

end A322812.P4276291454257415209

namespace A322812

/-- `∑{p}[A048675(n+2), A069626(#)]` -/
def P4276291454257415209.Spec : Prop :=
  ∀ n, P4276291454257415209.a n = A322812 (n + 2)

end A322812

/-! ## A322812.P2340145562175774768

`A001222(∏{p}[A048675(n+2), #])`
-/

namespace A322812.P2340145562175774768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A322812.P2340145562175774768

namespace A322812

/-- `A001222(∏{p}[A048675(n+2), #])` -/
def P2340145562175774768.Spec : Prop :=
  ∀ n, P2340145562175774768.a n = A322812 (n + 2)

end A322812

/-! ## A322812.P9893265228202299090

`∑{p}[A048675(n+2), A048675(A181819(#))]`
-/

namespace A322812.P9893265228202299090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A048675 (A181819 p).toNat

end

end A322812.P9893265228202299090

namespace A322812

/-- `∑{p}[A048675(n+2), A048675(A181819(#))]` -/
def P9893265228202299090.Spec : Prop :=
  ∀ n, P9893265228202299090.a n = A322812 (n + 2)

end A322812

/-!
# A322813: a(n) = A001227(A122111(n)).

The programs for A322813, the canonical program `A322813.P10613444473843019374` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322813 has offset 1).

The definition of A322813 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A322813.P10613444473843019374

`A001227(A122111(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A322813

/-- `A001227(A122111(n+1))` -/
def P10613444473843019374.Spec : Prop :=
  ∀ n, P10613444473843019374.a n = A322813 (n + 1)

theorem P10613444473843019374.correct : P10613444473843019374.Spec := by
  intro n
  simp only [A322813, Nat.add_sub_cancel]

end A322813

/-! ## A322813.P11172035044124144664

`A336315(A052126(n+1))`
-/

namespace A322813.P11172035044124144664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336315 (A052126 (n + 1)).toNat

end

end A322813.P11172035044124144664

namespace A322813

/-- `A336315(A052126(n+1))` -/
def P11172035044124144664.Spec : Prop :=
  ∀ n, P11172035044124144664.a n = A322813 (n + 1)

end A322813

/-! ## A322813.P837131889114710611

`A336315(A322820(n+1))`
-/

namespace A322813.P837131889114710611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336315 (A322820 (n + 1)).toNat

end

end A322813.P837131889114710611

namespace A322813

/-- `A336315(A322820(n+1))` -/
def P837131889114710611.Spec : Prop :=
  ∀ n, P837131889114710611.a n = A322813 (n + 1)

end A322813

/-! ## A322813.P8618947196016213913

`A336315(A338669(n+1))`
-/

namespace A322813.P8618947196016213913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336315 (A338669 (n + 1)).toNat

end

end A322813.P8618947196016213913

namespace A322813

/-- `A336315(A338669(n+1))` -/
def P8618947196016213913.Spec : Prop :=
  ∀ n, P8618947196016213913.a n = A322813 (n + 1)

end A322813

/-! ## A322813.P12725812377376835492

`A336315((n+1)/A006530(n+1))`
-/

namespace A322813.P12725812377376835492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336315 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat

end

end A322813.P12725812377376835492

namespace A322813

/-- `A336315((n+1)/A006530(n+1))` -/
def P12725812377376835492.Spec : Prop :=
  ∀ n, P12725812377376835492.a n = A322813 (n + 1)

end A322813

/-! ## A322813.P13257284168236267915

`∏{e}[A322865(n+1), #+1]`
-/

namespace A322813.P13257284168236267915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322865 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A322813.P13257284168236267915

namespace A322813

/-- `∏{e}[A322865(n+1), #+1]` -/
def P13257284168236267915.Spec : Prop :=
  ∀ n, (P13257284168236267915.a n : ℤ) = A322813 (n + 1)

end A322813

/-! ## A322813.P16275752469453836380

`A000005(A322865(n+1))`
-/

namespace A322813.P16275752469453836380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A322865 (n + 1)).toNat

end

end A322813.P16275752469453836380

namespace A322813

/-- `A000005(A322865(n+1))` -/
def P16275752469453836380.Spec : Prop :=
  ∀ n, P16275752469453836380.a n = A322813 (n + 1)

end A322813

/-! ## A322813.P11735848881081956892

`∑{d}[A322865(n+1), A322865(A006530(#))]`
-/

namespace A322813.P11735848881081956892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A322865 (A006530 d).toNat

end

end A322813.P11735848881081956892

namespace A322813

/-- `∑{d}[A322865(n+1), A322865(A006530(#))]` -/
def P11735848881081956892.Spec : Prop :=
  ∀ n, P11735848881081956892.a n = A322813 (n + 1)

end A322813

/-! ## A322813.P16523032679251423923

`∑{d}[A322865(n+1), A057427(#)]`
-/

namespace A322813.P16523032679251423923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A322813.P16523032679251423923

namespace A322813

/-- `∑{d}[A322865(n+1), A057427(#)]` -/
def P16523032679251423923.Spec : Prop :=
  ∀ n, P16523032679251423923.a n = A322813 (n + 1)

end A322813

/-! ## A322813.P15716340819907488183

`A001227(2*A322865(n+1))`
-/

namespace A322813.P15716340819907488183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (2 * A322865 (n + 1)).toNat

end

end A322813.P15716340819907488183

namespace A322813

/-- `A001227(2*A322865(n+1))` -/
def P15716340819907488183.Spec : Prop :=
  ∀ n, P15716340819907488183.a n = A322813 (n + 1)

end A322813

/-! ## A322813.P5861136789344898937

`A001227(A322865(n+1)+A322865(n+1))`
-/

namespace A322813.P5861136789344898937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A322865 (n + 1) + A322865 (n + 1)).toNat

end

end A322813.P5861136789344898937

namespace A322813

/-- `A001227(A322865(n+1)+A322865(n+1))` -/
def P5861136789344898937.Spec : Prop :=
  ∀ n, P5861136789344898937.a n = A322813 (n + 1)

end A322813

/-! ## A322813.P12975603694102647335

`A182860(A331188(n+1))`
-/

namespace A322813.P12975603694102647335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182860 (A331188 (n + 1)).toNat

end

end A322813.P12975603694102647335

namespace A322813

/-- `A182860(A331188(n+1))` -/
def P12975603694102647335.Spec : Prop :=
  ∀ n, P12975603694102647335.a n = A322813 (n + 1)

end A322813

/-! ## A322813.P7834727857005755176

`∑{d}[A322865(n+1), A322585(A181811(#))]`
-/

namespace A322813.P7834727857005755176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A322585 (A181811 d).toNat

end

end A322813.P7834727857005755176

namespace A322813

/-- `∑{d}[A322865(n+1), A322585(A181811(#))]` -/
def P7834727857005755176.Spec : Prop :=
  ∀ n, P7834727857005755176.a n = A322813 (n + 1)

end A322813

/-! ## A322813.P6149368836749434665

`A000005(A122111(A052126(n+1)²))`
-/

namespace A322813.P6149368836749434665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A122111 (A052126 (n + 1) ^ 2).toNat).toNat

end

end A322813.P6149368836749434665

namespace A322813

/-- `A000005(A122111(A052126(n+1)²))` -/
def P6149368836749434665.Spec : Prop :=
  ∀ n, P6149368836749434665.a n = A322813 (n + 1)

end A322813

/-! ## A322813.P10703140970773462945

`A000005(A278221(A052126(n+1)²))`
-/

namespace A322813.P10703140970773462945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278221 (A052126 (n + 1) ^ 2).toNat).toNat

end

end A322813.P10703140970773462945

namespace A322813

/-- `A000005(A278221(A052126(n+1)²))` -/
def P10703140970773462945.Spec : Prop :=
  ∀ n, P10703140970773462945.a n = A322813 (n + 1)

end A322813

/-! ## A322813.P5336784668978766428

`A336315(A122111(A322865(n+1))²)`
-/

namespace A322813.P5336784668978766428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336315 (A122111 (A322865 (n + 1)).toNat ^ 2).toNat

end

end A322813.P5336784668978766428

namespace A322813

/-- `A336315(A122111(A322865(n+1))²)` -/
def P5336784668978766428.Spec : Prop :=
  ∀ n, P5336784668978766428.a n = A322813 (n + 1)

end A322813

/-! ## A322813.P10219774622117609798

`A001227(A322865(A052126((n+1)²)))`
-/

namespace A322813.P10219774622117609798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A322865 (A052126 ((n + 1) ^ 2)).toNat).toNat

end

end A322813.P10219774622117609798

namespace A322813

/-- `A001227(A322865(A052126((n+1)²)))` -/
def P10219774622117609798.Spec : Prop :=
  ∀ n, P10219774622117609798.a n = A322813 (n + 1)

end A322813

/-!
# A322814: Lexicographically earliest such sequence a that a(i) = a(j) => f(i) = f(j) for all i, j, where f(2) = -1, f(n) = 0 if n is an odd prime, and f(n) = A278221(n) for all other numbers.

The programs for A322814, there is no canonical definition to state claims against.
-/

/-! ## A322814.P6061022779188638342

`A324399(A077168(n))`
-/

namespace A322814.P6061022779188638342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324399 (A077168 n).toNat

end

end A322814.P6061022779188638342

/-! ## A322814.P13723243674577918522

`A324399(A002326(2^n-1))`
-/

namespace A322814.P13723243674577918522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324399 (A002326 (2 ^ n - 1)).toNat

end

end A322814.P13723243674577918522

/-! ## A322814.P15988335466582280665

`A032741(3^A324399(n+1))`
-/

namespace A322814.P15988335466582280665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A324399 (n + 1) : ℤ))).toNat

end

end A322814.P15988335466582280665

/-! ## A322814.P16089569128337361991

`A063647(3^A324399(n+1))`
-/

namespace A322814.P16089569128337361991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A324399 (n + 1) : ℤ))).toNat

end

end A322814.P16089569128337361991

/-! ## A322814.P18041914933993019063

`A071178(3^A324399(n+1))`
-/

namespace A322814.P18041914933993019063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A324399 (n + 1) : ℤ))).toNat

end

end A322814.P18041914933993019063

/-!
# A322815: Lexicographically earliest such sequence a that a(i) = a(j) => A048675(i) = A048675(j) for all i, j.

The programs for A322815, there is no canonical definition to state claims against.
-/

/-! ## A322815.P379268316733378277

`A100112(A097248(n+1))`
-/

namespace A322815.P379268316733378277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100112 (A097248 (n + 1)).toNat

end

end A322815.P379268316733378277

/-! ## A322815.P15798672922418477749

`A013928(A097248(n+1)+1)`
-/

namespace A322815.P15798672922418477749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A097248 (n + 1) + 1).toNat

end

end A322815.P15798672922418477749

/-! ## A322815.P12110913744384398464

`A107079(A097248(n+1)%A017512(n))`
-/

namespace A322815.P12110913744384398464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (Int.tmod (A097248 (n + 1)) (A017512 n)).toNat

end

end A322815.P12110913744384398464

/-! ## A322815.P11454680717492409216

`A107079(A097248(n+1))%A002313(n+1)`
-/

namespace A322815.P11454680717492409216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107079 (A097248 (n + 1)).toNat) (A002313 (n + 1))

end

end A322815.P11454680717492409216

/-! ## A322815.P14153925094332913193

`A322590(2*A097248(n+1)-A097248(n+1))`
-/

namespace A322815.P14153925094332913193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322590 (2 * A097248 (n + 1) - A097248 (n + 1)).toNat

end

end A322815.P14153925094332913193

/-! ## A322815.P2988173180928679101

`A322590(A097248(n+1)²)`
-/

namespace A322815.P2988173180928679101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322590 (A097248 (n + 1) ^ 2).toNat

end

end A322815.P2988173180928679101

/-!
# A322816: Lexicographically earliest sequence such that a(i) = a(j) => f(i) = f(j) for all i, j, where f(n) = A048675(n) for all other numbers, except f(n) = -1 if n is an odd prime.

The programs for A322816, there is no canonical definition to state claims against.
-/

/-! ## A322816.P15023851981829365262

`A324413(A061142(n+1))+A324399(n+1)`
-/

namespace A322816.P15023851981829365262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324413 (A061142 (n + 1)).toNat + A324399 (n + 1)

end

end A322816.P15023851981829365262

/-! ## A322816.P14384962107451629383

`A324413(A324391(n+1))+A324399(n+1)`
-/

namespace A322816.P14384962107451629383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324413 (A324391 (n + 1)).toNat + A324399 (n + 1)

end

end A322816.P14384962107451629383

/-! ## A322816.P4527969003374227029

`A324399(n+1)+A037910(A037920(n+2))`
-/

namespace A322816.P4527969003374227029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324399 (n + 1) + A037910 (A037920 (n + 2)).toNat

end

end A322816.P4527969003374227029

/-! ## A322816.P2838658535076611871

`A324399((A048105(n+1)+1)*A077168(n))`
-/

namespace A322816.P2838658535076611871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324399 ((A048105 (n + 1) + 1) * A077168 n).toNat

end

end A322816.P2838658535076611871

/-! ## A322816.P3581258015775562121

`A324399(n+1)+A037913(A056391(n+4))`
-/

namespace A322816.P3581258015775562121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324399 (n + 1) + A037913 (A056391 (n + 4)).toNat

end

end A322816.P3581258015775562121

/-!
# A322817: a(n) = A001222(A065642(n)) - A001222(n), where A065642(n) gives the next larger m that has same prime factors as n (ignoring multiplicity), and A001222 gives the number of prime factors, when counted with multiplicity.

The programs for A322817, there is no canonical definition to state claims against.
-/

/-! ## A322817.P12637495808456376422

`A001222(A065642(n+1))-A001222(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322817.P12637495808456376422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065642 (n + 1)).toNat - A001222 (n + 1)

end

end A322817.P12637495808456376422

/-! ## A322817.P245519342760072884

`A001222(A285336(n+1))-A001222(A285337(n+1))`
-/

namespace A322817.P245519342760072884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A285336 (n + 1)).toNat - A001222 (A285337 (n + 1)).toNat

end

end A322817.P245519342760072884

/-! ## A322817.P15462259603747128149

`A322818(A065642(n+1)/ceil((n+1)/∏{p}[n+1, (n+1)/#]))`
-/

namespace A322817.P15462259603747128149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322818 (SequenceMachineLib.roundAway ((A065642 (n + 1) : ℚ) / (⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉ : ℚ))).toNat

end

end A322817.P15462259603747128149

/-! ## A322817.P6572895611815441456

`A322818(A285336(n+1)*A340679(n+1))`
-/

namespace A322817.P6572895611815441456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322818 (A285336 (n + 1) * A340679 (n + 1)).toNat

end

end A322817.P6572895611815441456

/-! ## A322817.P1233979922246245918

`A001222(A065642(n+1))-Δ[A022559(n)]`
-/

namespace A322817.P1233979922246245918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A065642 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A322817.P1233979922246245918

/-! ## A322817.P12284694914417918441

`A322818(A065642(n+1))`
-/

namespace A322817.P12284694914417918441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322818 (A065642 (n + 1)).toNat

end

end A322817.P12284694914417918441

/-! ## A322817.P7116261553522535304

`A322818(2^∑{p}[n+1, log2(#)]*A285336(n+1))`
-/

namespace A322817.P7116261553522535304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322818 (SequenceMachineLib.roundAway ((2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (p : ℝ)) * (A285336 (n + 1) : ℝ))).toNat

end

end A322817.P7116261553522535304

/-! ## A322817.P9744246435158426963

`A322818(A007947(n+1)*A285336(n+1))`
-/

namespace A322817.P9744246435158426963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322818 (A007947 (n + 1) * A285336 (n + 1)).toNat

end

end A322817.P9744246435158426963

/-! ## A322817.P15942320952292629692

`A322818(A015052(n+1)*A285336(n+1))`
-/

namespace A322817.P15942320952292629692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322818 (A015052 (n + 1) * A285336 (n + 1)).toNat

end

end A322817.P15942320952292629692

/-! ## A322817.P2402864585032966747

`A322818(A053166(n+1)*A285336(n+1))`
-/

namespace A322817.P2402864585032966747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322818 (A053166 (n + 1) * A285336 (n + 1)).toNat

end

end A322817.P2402864585032966747

/-! ## A322817.P11968462227476253800

`A008474(A065642(n+1))-A008474(n+1)`
-/

namespace A322817.P11968462227476253800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008474 (A065642 (n + 1)).toNat - A008474 (n + 1)

end

end A322817.P11968462227476253800

/-! ## A322817.P17141026805694397564

`A046660(A065642(n+1))-A046660(n+1)`
-/

namespace A322817.P17141026805694397564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A065642 (n + 1)).toNat - A046660 (n + 1)

end

end A322817.P17141026805694397564

/-! ## A322817.P17964562074893679439

`A073093(A065642(n+1))-A073093(n+1)`
-/

namespace A322817.P17964562074893679439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A065642 (n + 1)).toNat - A073093 (n + 1)

end

end A322817.P17964562074893679439

/-!
# A322818: a(n) = A001222(n) - A001222(A285328(n)), where A285328(n) gives the next smaller m that has same prime factors as n (ignoring multiplicity), or 1 if n is squarefree, and A001222 gives the number of prime factors, when counted with multiplicity.

The programs for A322818, there is no canonical definition to state claims against.
-/

/-! ## A322818.P13295034338238127228

`A001222(n+1)-A001222(A285328(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322818.P13295034338238127228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A285328 (n + 1)).toNat

end

end A322818.P13295034338238127228

/-! ## A322818.P3624080402150084753

`Δ[A022559(n)]-A001222(A285328(n+1))`
-/

namespace A322818.P3624080402150084753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001222 (A285328 (n + 1)).toNat

end

end A322818.P3624080402150084753

/-! ## A322818.P4896473404051080061

`A073093(n+1)-A073093(A285328(n+1))`
-/

namespace A322818.P4896473404051080061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1) - A073093 (A285328 (n + 1)).toNat

end

end A322818.P4896473404051080061

/-! ## A322818.P16086035561393779319

`A007376(A001221(n+1)^∏{p}[n+1, #^val(n+1, #²)]²)`
-/

namespace A322818.P16086035561393779319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A001221 (n + 1) ^ (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2).toNat

end

end A322818.P16086035561393779319

/-! ## A322818.P596510845511654068

`A007376(A001221(n+1)^gcd(n+1, ∑{p}[n+1, ((n+1)/#)²]))`
-/

namespace A322818.P596510845511654068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A001221 (n + 1) ^ Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 2))).toNat

end

end A322818.P596510845511654068

/-!
# A322819: a(n) = A000593(A122111(n)).

The programs for A322819, the canonical program `A322819.P16931418731388513367` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322819 has offset 1).

The definition of A322819 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A322819.P16931418731388513367

`A000593(A122111(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A322819

/-- `A000593(A122111(n+1))` -/
def P16931418731388513367.Spec : Prop :=
  ∀ n, P16931418731388513367.a n = A322819 (n + 1)

theorem P16931418731388513367.correct : P16931418731388513367.Spec := by
  intro n
  simp only [A322819, Nat.add_sub_cancel]

end A322819

/-! ## A322819.P3168323604756812086

`A323173(A322820(n+1))`
-/

namespace A322819.P3168323604756812086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323173 (A322820 (n + 1)).toNat

end

end A322819.P3168323604756812086

namespace A322819

/-- `A323173(A322820(n+1))` -/
def P3168323604756812086.Spec : Prop :=
  ∀ n, P3168323604756812086.a n = A322819 (n + 1)

end A322819

/-! ## A322819.P3471548917746399960

`∑{d}[A322865(n+1), #]`
-/

namespace A322819.P3471548917746399960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322865 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A322819.P3471548917746399960

namespace A322819

/-- `∑{d}[A322865(n+1), #]` -/
def P3471548917746399960.Spec : Prop :=
  ∀ n, (P3471548917746399960.a n : ℤ) = A322819 (n + 1)

end A322819

/-! ## A322819.P3881429537366915411

`A000203(A322865(n+1))`
-/

namespace A322819.P3881429537366915411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A322865 (n + 1)).toNat

end

end A322819.P3881429537366915411

namespace A322819

/-- `A000203(A322865(n+1))` -/
def P3881429537366915411.Spec : Prop :=
  ∀ n, P3881429537366915411.a n = A322819 (n + 1)

end A322819

/-! ## A322819.P8454099846720940791

`A000203(A122111(n+1)/2^A241917(n+1))`
-/

namespace A322819.P8454099846720940791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A122111 (n + 1) : ℚ) / (2 : ℚ) ^ (A241917 (n + 1) : ℤ))).toNat

end

end A322819.P8454099846720940791

namespace A322819

/-- `A000203(A122111(n+1)/2^A241917(n+1))` -/
def P8454099846720940791.Spec : Prop :=
  ∀ n, P8454099846720940791.a n = A322819 (n + 1)

end A322819

/-! ## A322819.P14615699795656918611

`A000593(2*A322865(n+1))`
-/

namespace A322819.P14615699795656918611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (2 * A322865 (n + 1)).toNat

end

end A322819.P14615699795656918611

namespace A322819

/-- `A000593(2*A322865(n+1))` -/
def P14615699795656918611.Spec : Prop :=
  ∀ n, P14615699795656918611.a n = A322819 (n + 1)

end A322819

/-! ## A322819.P5144158644223889130

`A000593(A322865(n+1)+A322865(n+1))`
-/

namespace A322819.P5144158644223889130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A322865 (n + 1) + A322865 (n + 1)).toNat

end

end A322819.P5144158644223889130

namespace A322819

/-- `A000593(A322865(n+1)+A322865(n+1))` -/
def P5144158644223889130.Spec : Prop :=
  ∀ n, P5144158644223889130.a n = A322819 (n + 1)

end A322819

/-! ## A322819.P3735710116613937128

`A000203(A331732(A241916(n+1)))`
-/

namespace A322819.P3735710116613937128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A331732 (A241916 (n + 1)).toNat).toNat

end

end A322819.P3735710116613937128

namespace A322819

/-- `A000203(A331732(A241916(n+1)))` -/
def P3735710116613937128.Spec : Prop :=
  ∀ n, P3735710116613937128.a n = A322819 (n + 1)

end A322819

/-! ## A322819.P11891399854470142185

`A324118(A322863(n+1))`
-/

namespace A322819.P11891399854470142185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324118 (A322863 (n + 1)).toNat

end

end A322819.P11891399854470142185

namespace A322819

/-- `A324118(A322863(n+1))` -/
def P11891399854470142185.Spec : Prop :=
  ∀ n, P11891399854470142185.a n = A322819 (n + 1)

end A322819

/-! ## A322819.P4572569705655639667

`A324186(A253566(n+1))`
-/

namespace A322819.P4572569705655639667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324186 (A253566 (n + 1)).toNat

end

end A322819.P4572569705655639667

namespace A322819

/-- `A324186(A253566(n+1))` -/
def P4572569705655639667.Spec : Prop :=
  ∀ n, P4572569705655639667.a n = A322819 (n + 1)

end A322819

/-!
# A322820: a(n) = A052126(n) * A006530(A052126(n)).

The programs for A322820, the canonical program `A322820.P17890614107073658229` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322820 has offset 1).

The definition of A322820 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A052126, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A322820.P17890614107073658229

`A052126(n+1)*A006530(A052126(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A322820

/-- `A052126(n+1)*A006530(A052126(n+1))` -/
def P17890614107073658229.Spec : Prop :=
  ∀ n, P17890614107073658229.a n = A322820 (n + 1)

theorem P17890614107073658229.correct : P17890614107073658229.Spec := by
  intro n
  simp only [A322820, Nat.add_sub_cancel]

end A322820

/-! ## A322820.P16264188586140454265

`A122111(A000265(A122111(n+1)))`
-/

namespace A322820.P16264188586140454265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A000265 (A122111 (n + 1)).toNat).toNat

end

end A322820.P16264188586140454265

namespace A322820

/-- `A122111(A000265(A122111(n+1)))` -/
def P16264188586140454265.Spec : Prop :=
  ∀ n, P16264188586140454265.a n = A322820 (n + 1)

end A322820

/-! ## A322820.P4578065882871742309

`A253560(A052126(n+1))`
-/

namespace A322820.P4578065882871742309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253560 (A052126 (n + 1)).toNat

end

end A322820.P4578065882871742309

namespace A322820

/-- `A253560(A052126(n+1))` -/
def P4578065882871742309.Spec : Prop :=
  ∀ n, P4578065882871742309.a n = A322820 (n + 1)

end A322820

/-! ## A322820.P11426937154013160082

`A253560(1-A171462(n+1)+n)`
-/

namespace A322820.P11426937154013160082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253560 (1 - A171462 (n + 1) + (n : ℤ)).toNat

end

end A322820.P11426937154013160082

namespace A322820

/-- `A253560(1-A171462(n+1)+n)` -/
def P11426937154013160082.Spec : Prop :=
  ∀ n, P11426937154013160082.a n = A322820 (n + 1)

end A322820

/-! ## A322820.P4126338140906899505

`A052126(n+1)*A087039(n+1)`
-/

namespace A322820.P4126338140906899505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1) * A087039 (n + 1)

end

end A322820.P4126338140906899505

namespace A322820

/-- `A052126(n+1)*A087039(n+1)` -/
def P4126338140906899505.Spec : Prop :=
  ∀ n, P4126338140906899505.a n = A322820 (n + 1)

end A322820

/-! ## A322820.P10979315999803513118

`A253560(A269304(n+1)-(n+2))`
-/

namespace A322820.P10979315999803513118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253560 (A269304 (n + 1) - (n + 2 : ℤ)).toNat

end

end A322820.P10979315999803513118

namespace A322820

/-- `A253560(A269304(n+1)-(n+2))` -/
def P10979315999803513118.Spec : Prop :=
  ∀ n, P10979315999803513118.a n = A322820 (n + 1)

end A322820

/-! ## A322820.P10125001500721053771

`A253560((n+1)/A006530(n+1))`
-/

namespace A322820.P10125001500721053771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253560 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat

end

end A322820.P10125001500721053771

namespace A322820

/-- `A253560((n+1)/A006530(n+1))` -/
def P10125001500721053771.Spec : Prop :=
  ∀ n, P10125001500721053771.a n = A322820 (n + 1)

end A322820

/-! ## A322820.P15890477741241897517

`A253560(gcd(n+1, A252462(n+1)))`
-/

namespace A322820.P15890477741241897517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253560 (Int.gcd (n + 1 : ℤ) (A252462 (n + 1)))

end

end A322820.P15890477741241897517

namespace A322820

/-- `A253560(gcd(n+1, A252462(n+1)))` -/
def P15890477741241897517.Spec : Prop :=
  ∀ n, P15890477741241897517.a n = A322820 (n + 1)

end A322820

/-! ## A322820.P8290585140206009011

`A253560((n+1)²/A253560(n+1))`
-/

namespace A322820.P8290585140206009011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253560 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A253560 (n + 1) : ℚ))).toNat

end

end A322820.P8290585140206009011

namespace A322820

/-- `A253560((n+1)²/A253560(n+1))` -/
def P8290585140206009011.Spec : Prop :=
  ∀ n, P8290585140206009011.a n = A322820 (n + 1)

end A322820

/-! ## A322820.P9792877468058451860

`A052126(n+1)*A085392(2*A052126(n+1))`
-/

namespace A322820.P9792877468058451860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1) * A085392 (2 * A052126 (n + 1)).toNat

end

end A322820.P9792877468058451860

namespace A322820

/-- `A052126(n+1)*A085392(2*A052126(n+1))` -/
def P9792877468058451860.Spec : Prop :=
  ∀ n, P9792877468058451860.a n = A322820 (n + 1)

end A322820

/-! ## A322820.P16380596567802543166

`A052126(n+1)*A053585(∏{p}[A052126(n+1), #])`
-/

namespace A322820.P16380596567802543166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 1) * A053585 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A322820.P16380596567802543166

namespace A322820

/-- `A052126(n+1)*A053585(∏{p}[A052126(n+1), #])` -/
def P16380596567802543166.Spec : Prop :=
  ∀ n, P16380596567802543166.a n = A322820 (n + 1)

end A322820

/-! ## A322820.P11967885836139987724

`(n+1)/A006530(n+1)*A006530(A329888(n+1))`
-/

namespace A322820.P11967885836139987724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006530 (n + 1) : ℚ) * (A006530 (A329888 (n + 1)).toNat : ℚ)

end

end A322820.P11967885836139987724

namespace A322820

/-- `(n+1)/A006530(n+1)*A006530(A329888(n+1))` -/
def P11967885836139987724.Spec : Prop :=
  ∀ n, P11967885836139987724.a n = (A322820 (n + 1) : ℚ)

end A322820

/-! ## A322820.P11075943098818882534

`(1-A171462(n+1)+n)*A006530(1-A171462(n+1)+n)`
-/

namespace A322820.P11075943098818882534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A171462 (n + 1) + (n : ℤ)) * A006530 (1 - A171462 (n + 1) + (n : ℤ)).toNat

end

end A322820.P11075943098818882534

namespace A322820

/-- `(1-A171462(n+1)+n)*A006530(1-A171462(n+1)+n)` -/
def P11075943098818882534.Spec : Prop :=
  ∀ n, P11075943098818882534.a n = A322820 (n + 1)

theorem P11075943098818882534.correct : P11075943098818882534.Spec := by
  intro n
  simp only [A322820, Nat.add_sub_cancel, A322820.P11075943098818882534.a, A322820.P17890614107073658229.a, A006530, A006530.P13372528560459906635.a, A052126, A052126.P1944428405920482243.a, A171462, A171462.P186066025836437895.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322820

/-! ## A322820.P10866886091462671547

`(n+1)/A006530(n+1)*A006530((n+1)/A006530(n+1))`
-/

namespace A322820.P10866886091462671547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A006530 (n + 1) : ℚ) * (A006530 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat : ℚ)

end

end A322820.P10866886091462671547

namespace A322820

/-- `(n+1)/A006530(n+1)*A006530((n+1)/A006530(n+1))` -/
def P10866886091462671547.Spec : Prop :=
  ∀ n, P10866886091462671547.a n = (A322820 (n + 1) : ℚ)

end A322820

/-! ## A322820.P6352450881632145487

`A052126(A032742(n+1))*A066048(A052126(n+1))`
-/

namespace A322820.P6352450881632145487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A032742 (n + 1)).toNat * A066048 (A052126 (n + 1)).toNat

end

end A322820.P6352450881632145487

namespace A322820

/-- `A052126(A032742(n+1))*A066048(A052126(n+1))` -/
def P6352450881632145487.Spec : Prop :=
  ∀ n, P6352450881632145487.a n = A322820 (n + 1)

end A322820

/-! ## A322820.P10037268030263021044

`A052126(A000027(n+1))²/A052126(A052126(n+1))`
-/

namespace A322820.P10037268030263021044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052126 (A000027 (n + 1)).toNat ^ 2 : ℚ) / (A052126 (A052126 (n + 1)).toNat : ℚ)

end

end A322820.P10037268030263021044

namespace A322820

/-- `A052126(A000027(n+1))²/A052126(A052126(n+1))` -/
def P10037268030263021044.Spec : Prop :=
  ∀ n, P10037268030263021044.a n = (A322820 (n + 1) : ℚ)

end A322820

/-! ## A322820.P2045363394334909467

`A032742(A130065(n+1))²/A052126(A052126(n+1))`
-/

namespace A322820.P2045363394334909467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (A130065 (n + 1)).toNat ^ 2 : ℚ) / (A052126 (A052126 (n + 1)).toNat : ℚ)

end

end A322820.P2045363394334909467

namespace A322820

/-- `A032742(A130065(n+1))²/A052126(A052126(n+1))` -/
def P2045363394334909467.Spec : Prop :=
  ∀ n, P2045363394334909467.a n = (A322820 (n + 1) : ℚ)

end A322820

/-! ## A322820.P4258796648056057298

`A052126(A181440(n+1))²/A052126(A052126(n+1))`
-/

namespace A322820.P4258796648056057298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052126 (A181440 (n + 1)).toNat ^ 2 : ℚ) / (A052126 (A052126 (n + 1)).toNat : ℚ)

end

end A322820.P4258796648056057298

namespace A322820

/-- `A052126(A181440(n+1))²/A052126(A052126(n+1))` -/
def P4258796648056057298.Spec : Prop :=
  ∀ n, P4258796648056057298.a n = (A322820 (n + 1) : ℚ)

end A322820

/-! ## A322820.P9195162001817398505

`A006530((n+1)/A006530(n+1))*A032742(A130065(n+1))`
-/

namespace A322820.P9195162001817398505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat * A032742 (A130065 (n + 1)).toNat

end

end A322820.P9195162001817398505

namespace A322820

/-- `A006530((n+1)/A006530(n+1))*A032742(A130065(n+1))` -/
def P9195162001817398505.Spec : Prop :=
  ∀ n, P9195162001817398505.a n = A322820 (n + 1)

end A322820

/-! ## A322820.P8102095428236737275

`A008833(A052126(n+1)²)/A052126(A052126(n+1))`
-/

namespace A322820.P8102095428236737275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008833 (A052126 (n + 1) ^ 2).toNat : ℚ) / (A052126 (A052126 (n + 1)).toNat : ℚ)

end

end A322820.P8102095428236737275

namespace A322820

/-- `A008833(A052126(n+1)²)/A052126(A052126(n+1))` -/
def P8102095428236737275.Spec : Prop :=
  ∀ n, P8102095428236737275.a n = (A322820 (n + 1) : ℚ)

end A322820

/-!
# A322821: a(1) = 0; for n > 1, a(n) = A000265(A048675(n)).

The programs for A322821, the canonical program `A322821.P8922676155250871452` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322821 has offset 1).

The definition of A322821 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322821.P8922676155250871452

`A048675(n+1)/gcd(A000079(n), A048675(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A322821

/-- `A048675(n+1)/gcd(A000079(n), A048675(n+1))` -/
def P8922676155250871452.Spec : Prop :=
  ∀ n, P8922676155250871452.a n = (A322821 (n + 1) : ℚ)

end A322821

/-! ## A322821.P8622389820877733676

`lcm(A000079(n), A048675(n+1))/A000079(n)`
-/

namespace A322821.P8622389820877733676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000079 n) (A048675 (n + 1)) : ℚ) / (A000079 n : ℚ)

end

end A322821.P8622389820877733676

namespace A322821

/-- `lcm(A000079(n), A048675(n+1))/A000079(n)` -/
def P8622389820877733676.Spec : Prop :=
  ∀ n, P8622389820877733676.a n = (A322821 (n + 1) : ℚ)

end A322821

/-! ## A322821.P15715294202632763960

`A227140(C(A048675(n+1), C(n, ∑{p}[n+1, C(#, n)])))`
-/

namespace A322821.P15715294202632763960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227140 (Nat.choose (A048675 (n + 1)).toNat (Nat.choose n (∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n)))

end

end A322821.P15715294202632763960

namespace A322821

/-- `A227140(C(A048675(n+1), C(n, ∑{p}[n+1, C(#, n)])))` -/
def P15715294202632763960.Spec : Prop :=
  ∀ n, P15715294202632763960.a n = A322821 (n + 1)

end A322821

/-! ## A322821.P5961436062374576623

`A106617(gcd(A048675(n+1), A049084(n+1)))`
-/

namespace A322821.P5961436062374576623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (Int.gcd (A048675 (n + 1)) (A049084 (n + 1)))

end

end A322821.P5961436062374576623

namespace A322821

/-- `A106617(gcd(A048675(n+1), A049084(n+1)))` -/
def P5961436062374576623.Spec : Prop :=
  ∀ n, P5961436062374576623.a n = A322821 (n + 1)

end A322821

/-! ## A322821.P13107239452025938349

`A325401(Δ[A336415(n)]/A040001(n))`
-/

namespace A322821.P13107239452025938349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n : ℚ) / (A040001 n : ℚ))).toNat

end

end A322821.P13107239452025938349

namespace A322821

/-- `A325401(Δ[A336415(n)]/A040001(n))` -/
def P13107239452025938349.Spec : Prop :=
  ∀ n, P13107239452025938349.a n = A322821 (n + 1)

end A322821

/-! ## A322821.P14735878600716804403

`A325401(A048675(n+1)/A040001(n))`
-/

namespace A322821.P14735878600716804403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A048675 (n + 1) : ℚ) / (A040001 n : ℚ))).toNat

end

end A322821.P14735878600716804403

namespace A322821

/-- `A325401(A048675(n+1)/A040001(n))` -/
def P14735878600716804403.Spec : Prop :=
  ∀ n, P14735878600716804403.a n = A322821 (n + 1)

end A322821

/-! ## A322821.P5326311489502862795

`A325401(∑{d}[n+1, A297108(#)]/A040001(n))`
-/

namespace A322821.P5326311489502862795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), A297108 d : ℤ) : ℚ) / (A040001 n : ℚ))).toNat

end

end A322821.P5326311489502862795

namespace A322821

/-- `A325401(∑{d}[n+1, A297108(#)]/A040001(n))` -/
def P5326311489502862795.Spec : Prop :=
  ∀ n, P5326311489502862795.a n = A322821 (n + 1)

end A322821

/-! ## A322821.P1722050315831021565

`A325401(Δ[A336415(n)])`
-/

namespace A322821.P1722050315831021565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (f1 (n + 1) - f1 n).toNat

end

end A322821.P1722050315831021565

namespace A322821

/-- `A325401(Δ[A336415(n)])` -/
def P1722050315831021565.Spec : Prop :=
  ∀ n, P1722050315831021565.a n = A322821 (n + 1)

end A322821

/-! ## A322821.P15323632644074487807

`A325401(A048675(n+1))`
-/

namespace A322821.P15323632644074487807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A048675 (n + 1)).toNat

end

end A322821.P15323632644074487807

namespace A322821

/-- `A325401(A048675(n+1))` -/
def P15323632644074487807.Spec : Prop :=
  ∀ n, P15323632644074487807.a n = A322821 (n + 1)

end A322821

/-! ## A322821.P14619904560943093253

`A325401(A336415(n+1)-A336415(n))`
-/

namespace A322821.P14619904560943093253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A336415 (n + 1) - A336415 n).toNat

end

end A322821.P14619904560943093253

namespace A322821

/-- `A325401(A336415(n+1)-A336415(n))` -/
def P14619904560943093253.Spec : Prop :=
  ∀ n, P14619904560943093253.a n = A322821 (n + 1)

end A322821

/-!
# A322822: Lexicographically earliest such sequence a that a(i) = a(j) => f(i) = f(j) for all i, j, where f(2) = -1, f(n) = 0 if n is a Fermi-Dirac prime (A050376) > 2, and f(n) = A300840(n) for all other numbers.

The programs for A322822, there is no canonical definition to state claims against.
-/

/-! ## A322822.P4036352371265772047

`A305979(n+1)+A043545(A085146(n+1))`
-/

namespace A322822.P4036352371265772047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305979 (n + 1) + A043545 (A085146 (n + 1)).toNat

end

end A322822.P4036352371265772047

/-! ## A322822.P8394889534377318462

`A334868(n+1)+A043545(A085146(n+1))`
-/

namespace A322822.P8394889534377318462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334868 (n + 1) + A043545 (A085146 (n + 1)).toNat

end

end A322822.P8394889534377318462

/-! ## A322822.P3065995034285946300

`A305979(n+1)+A249442(A163299(n+1))`
-/

namespace A322822.P3065995034285946300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305979 (n + 1) + A249442 (A163299 (n + 1)).toNat

end

end A322822.P3065995034285946300

/-! ## A322822.P12333149280710597579

`A334868(n+1)+A249442(A163299(n+1))`
-/

namespace A322822.P12333149280710597579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334868 (n + 1) + A249442 (A163299 (n + 1)).toNat

end

end A322822.P12333149280710597579

/-! ## A322822.P14872273781807039299

`A334868(n+1)+A057979(A214080(3*n))`
-/

namespace A322822.P14872273781807039299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334868 (n + 1) + A057979 (A214080 (3 * n)).toNat

end

end A322822.P14872273781807039299

/-!
# A322823: a(n) = 0 if n is 1 or a Fermi-Dirac prime (A050376), otherwise a(n) = 1 + a(A300840(n)).

The programs for A322823, there is no canonical definition to state claims against.
-/

/-! ## A322823.P11465781795454554494

`A302785(A302776(n+1))`
-/

namespace A322823.P11465781795454554494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302785 (A302776 (n + 1)).toNat

end

end A322823.P11465781795454554494

/-! ## A322823.P1512096037533458995

`A302785((n+1)/A223491(n+1))`
-/

namespace A322823.P1512096037533458995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302785 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A223491 (n + 1) : ℚ))).toNat

end

end A322823.P1512096037533458995

/-! ## A322823.P1579715480329548459

`A302778(A223491((n+1)/A223491(n+1)))`
-/

namespace A322823.P1579715480329548459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302778 (A223491 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A223491 (n + 1) : ℚ))).toNat).toNat

end

end A322823.P1579715480329548459

/-! ## A322823.P7295467554926768038

`A302785(A302789((n+1)*A223491(n+1)))`
-/

namespace A322823.P7295467554926768038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302785 (A302789 ((n + 1 : ℤ) * A223491 (n + 1)).toNat).toNat

end

end A322823.P7295467554926768038

/-! ## A322823.P12525812498306826517

`A099313(A302776((n+1)²)²)`
-/

namespace A322823.P12525812498306826517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099313 (A302776 ((n + 1) ^ 2) ^ 2).toNat

end

end A322823.P12525812498306826517

/-!
# A322824: Lexicographically earliest such sequence a that a(i) = a(j) => f(i) = f(j) for all i, j, where f(n) = 0 if n is an odd prime, and f(n) = A242424(n) for all other numbers.

The programs for A322824, there is no canonical definition to state claims against.
-/

/-! ## A322824.P862056474974951415

`A352898(n+1)-A184955(A035343(n))`
-/

namespace A322824.P862056474974951415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352898 (n + 1) - A184955 (A035343 n).toNat

end

end A322824.P862056474974951415

/-! ## A322824.P10475152938066114066

`A319346(n+1)-A081603(A080953(n))²`
-/

namespace A322824.P10475152938066114066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319346 (n + 1) - A081603 (A080953 n).toNat ^ 2

end

end A322824.P10475152938066114066

/-! ## A322824.P8009657916092929570

`A323400(n+1)-A028597(A002385(n+1))`
-/

namespace A322824.P8009657916092929570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323400 (n + 1) - A028597 (A002385 (n + 1)).toNat

end

end A322824.P8009657916092929570

/-! ## A322824.P1434769966640774937

`A291766(A305801(n+1)-A255852(2*n))`
-/

namespace A322824.P1434769966640774937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291766 (A305801 (n + 1) - A255852 (2 * n)).toNat

end

end A322824.P1434769966640774937

/-!
# A322825: A variant of A322827.

The programs for A322825, there is no canonical definition to state claims against.
-/

/-! ## A322825.P10307304411807436068

`A304660(A243353(n))`
-/

namespace A322825.P10307304411807436068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304660 (A243353 n).toNat

end

end A322825.P10307304411807436068

/-! ## A322825.P10085618767571906829

`A069799(A322827(n))`
-/

namespace A322825.P10085618767571906829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069799 (A322827 n).toNat

end

end A322825.P10085618767571906829

/-! ## A322825.P10938803365626046770

`A085079(abs(A322827(n)-1)+1)`
-/

namespace A322825.P10938803365626046770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (|A322827 n - 1| + 1).toNat

end

end A322825.P10938803365626046770

/-! ## A322825.P1670141712851233760

`A242419(A322827(sqrt(A000290(n))))`
-/

namespace A322825.P1670141712851233760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242419 (A322827 (SequenceMachineLib.roundAway (Real.sqrt (A000290 n : ℝ))).toNat).toNat

end

end A322825.P1670141712851233760

/-! ## A322825.P5404096357127161156

`A085079(A322827(n)+A025469(n))`
-/

namespace A322825.P5404096357127161156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085079 (A322827 n + A025469 n).toNat

end

end A322825.P5404096357127161156

/-!
# A322826: Lexicographically earliest such sequence a that a(i) = a(j) => A052126(i) = A052126(j) for all i, j.

The programs for A322826, the canonical program `A322826.P3254065494400239450` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322826 has offset 1).

The definition of A322826 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322826.P3254065494400239450

`A243283(A322820(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A322826

/-- `A243283(A322820(n+1))` -/
def P3254065494400239450.Spec : Prop :=
  ∀ n, P3254065494400239450.a n = A322826 (n + 1)

theorem P3254065494400239450.correct : P3254065494400239450.Spec := by
  intro n
  simp only [A322826, Nat.add_sub_cancel]

end A322826

/-! ## A322826.P4214005586673484279

`A339874(n+1)+A057428(n)`
-/

namespace A322826.P4214005586673484279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339874 (n + 1) + A057428 n

end

end A322826.P4214005586673484279

namespace A322826

/-- `A339874(n+1)+A057428(n)` -/
def P4214005586673484279.Spec : Prop :=
  ∀ n, P4214005586673484279.a n = A322826 (n + 1)

end A322826

/-! ## A322826.P13628838738628953690

`A339874(n+1)-A057427(n)`
-/

namespace A322826.P13628838738628953690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339874 (n + 1) - A057427 n

end

end A322826.P13628838738628953690

namespace A322826

/-- `A339874(n+1)-A057427(n)` -/
def P13628838738628953690.Spec : Prop :=
  ∀ n, P13628838738628953690.a n = A322826 (n + 1)

theorem P13628838738628953690.correct : P13628838738628953690.Spec := by
  intro n
  simp only [A322826, Nat.add_sub_cancel, A322826.P13628838738628953690.a, A322826.P3254065494400239450.a, A057427, A057427.P17645173493419391152.a, A243283, A243283.P17872193022962511654.f1, A243283.P17872193022962511654.a, A322820, A322820.P17890614107073658229.a, A339874, A339874.P15501688188757861132.a, A006530, A006530.P13372528560459906635.a, A052126, A052126.P1944428405920482243.a, A319988, A319988.P7589903780705495911.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A322826

/-! ## A322826.P15932270972125826465

`A339874(n+1)-n²%A020639(n+1)`
-/

namespace A322826.P15932270972125826465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339874 (n + 1) - Int.tmod (n ^ 2 : ℤ) (A020639 (n + 1))

end

end A322826.P15932270972125826465

namespace A322826

/-- `A339874(n+1)-n²%A020639(n+1)` -/
def P15932270972125826465.Spec : Prop :=
  ∀ n, P15932270972125826465.a n = A322826 (n + 1)

end A322826

/-! ## A322826.P16399888225396670644

`A339874(n+1)-A001222(A105560(n+1))`
-/

namespace A322826.P16399888225396670644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339874 (n + 1) - A001222 (A105560 (n + 1)).toNat

end

end A322826.P16399888225396670644

namespace A322826

/-- `A339874(n+1)-A001222(A105560(n+1))` -/
def P16399888225396670644.Spec : Prop :=
  ∀ n, P16399888225396670644.a n = A322826 (n + 1)

end A322826

/-! ## A322826.P212679694153737007

`A339874(n+1)-A001222(A006512(a(n-1)+1))` with `a(0)=1`
-/

namespace A322826.P212679694153737007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A339874 (n + 1) - A001222 (A006512 (a (n - 1) + 1).toNat).toNat

end

end A322826.P212679694153737007

namespace A322826

/-- `A339874(n+1)-A001222(A006512(a(n-1)+1))` -/
def P212679694153737007.Spec : Prop :=
  ∀ n, P212679694153737007.a n = A322826 (n + 1)

end A322826

/-! ## A322826.P5232701640089081126

`A339874(n+1)-and(1, Δ[A052126(n+2)])`
-/

namespace A322826.P5232701640089081126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339874 (n + 1) - Int.land 1 (f1 (n + 1) - f1 n)

end

end A322826.P5232701640089081126

namespace A322826

/-- `A339874(n+1)-and(1, Δ[A052126(n+2)])` -/
def P5232701640089081126.Spec : Prop :=
  ∀ n, P5232701640089081126.a n = A322826 (n + 1)

end A322826

/-! ## A322826.P3500273083948840558

`A339874(n+1)-A001222(A008578(n+1))`
-/

namespace A322826.P3500273083948840558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339874 (n + 1) - A001222 (A008578 (n + 1)).toNat

end

end A322826.P3500273083948840558

namespace A322826

/-- `A339874(n+1)-A001222(A008578(n+1))` -/
def P3500273083948840558.Spec : Prop :=
  ∀ n, P3500273083948840558.a n = A322826 (n + 1)

end A322826

/-! ## A322826.P5517570374583526474

`A244984(A243506(A052126(n+1)))`
-/

namespace A322826.P5517570374583526474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244984 (A243506 (A052126 (n + 1)).toNat).toNat

end

end A322826.P5517570374583526474

namespace A322826

/-- `A244984(A243506(A052126(n+1)))` -/
def P5517570374583526474.Spec : Prop :=
  ∀ n, P5517570374583526474.a n = A322826 (n + 1)

end A322826

/-!
# A322827: A permutation of A025487: Sequence of least representatives of distinct prime signatures obtained from the run lengths present in the binary expansion of n.

The programs for A322827, the canonical program `A322827.P11659878149687160008` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322827 has offset 0).

The definition of A322827 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322827.P16338262850877009034

`A046523(A322825(n))`
-/

namespace A322827.P16338262850877009034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A322825 n).toNat

end

end A322827.P16338262850877009034

namespace A322827

/-- `A046523(A322825(n))` -/
def P16338262850877009034.Spec : Prop :=
  ∀ n, P16338262850877009034.a n = A322827 n

end A322827

/-! ## A322827.P9067162900965477071

`a(A004526(n))*A323507(n)` with `a(0)=1`
-/

namespace A322827.P9067162900965477071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A004526 n).toNat * A323507 n

end

end A322827.P9067162900965477071

namespace A322827

/-- `a(A004526(n))*A323507(n)` -/
def P9067162900965477071.Spec : Prop :=
  ∀ n, P9067162900965477071.a n = A322827 n

end A322827

/-! ## A322827.P14193563925395727522

`a(floor(n/2))*A323507(A028310(n))` with `a(0)=1`
-/

namespace A322827.P14193563925395727522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * A323507 (A028310 n).toNat

end

end A322827.P14193563925395727522

namespace A322827

/-- `a(floor(n/2))*A323507(A028310(n))` -/
def P14193563925395727522.Spec : Prop :=
  ∀ n, P14193563925395727522.a n = A322827 n

end A322827

/-! ## A322827.P11659878149687160008

`A329887(A341915(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A322827

/-- `A329887(A341915(n))` -/
def P11659878149687160008.Spec : Prop :=
  ∀ n, P11659878149687160008.a n = A322827 n

theorem P11659878149687160008.correct : P11659878149687160008.Spec := by
  intro n
  simp only [A322827]

end A322827

/-! ## A322827.P567500250966829251

`A181821(A243353(n))`
-/

namespace A322827.P567500250966829251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A243353 n).toNat

end

end A322827.P567500250966829251

namespace A322827

/-- `A181821(A243353(n))` -/
def P567500250966829251.Spec : Prop :=
  ∀ n, P567500250966829251.a n = A322827 n

end A322827

/-! ## A322827.P4342513418390263714

`A181821(A241909(A075159(n+1)))`
-/

namespace A322827.P4342513418390263714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A241909 (A075159 (n + 1)).toNat).toNat

end

end A322827.P4342513418390263714

namespace A322827

/-- `A181821(A241909(A075159(n+1)))` -/
def P4342513418390263714.Spec : Prop :=
  ∀ n, P4342513418390263714.a n = A322827 n

end A322827

/-!
# A322828: a(n) is the concatenation of n and pi(n).

The programs for A322828, there is no canonical definition to state claims against.
-/

/-! ## A322828.P5412658469002097343

`A235399(2*n+3)+A000720(n+1)+n`
-/

namespace A322828.P5412658469002097343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235399 (2 * n + 3) + (A000720 (n + 1) + (n : ℤ))

end

end A322828.P5412658469002097343

/-! ## A322828.P4033256702980403942

`∑[A137580(A224728(n+1))+A010051(n+1)]`
-/

namespace A322828.P4033256702980403942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137580 (A224728 (n + 1)).toNat + A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322828.P4033256702980403942

/-! ## A322828.P7965325284145242685

`Δ[A124080(n)]+A000720(n+1)%A291212(n+1)`
-/

namespace A322828.P7965325284145242685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A000720 (n + 1)) (A291212 (n + 1))

end

end A322828.P7965325284145242685

/-! ## A322828.P4805477129996142301

`A134446(A262221(n+1))+A000720(n+1)`
-/

namespace A322828.P4805477129996142301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134446 (A262221 (n + 1)).toNat + A000720 (n + 1)

end

end A322828.P4805477129996142301

/-! ## A322828.P2416109706615475540

`A121856(A005449(3*(n+1)))+A000720(n+1)`
-/

namespace A322828.P2416109706615475540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121856 (A005449 (3 * (n + 1))).toNat + A000720 (n + 1)

end

end A322828.P2416109706615475540

/-!
# A322829: a(n) = Jacobi (or Kronecker) symbol (n/21).

The programs for A322829, the canonical program `A322829.P91939187961493893` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322829 has offset 0).

The definition of A322829 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322829.P91939187961493893

`ogf((x-2x^2+x^3+2x^4-2x^5+2x^7-2x^8-x^9+2x^10-x^11)/(1-x+x^3-x^4+x^6-x^8+x^9-x^11+x^12))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A322829

/-- `ogf((x-2x^2+x^3+2x^4-2x^5+2x^7-2x^8-x^9+2x^10-x^11)/(1-x+x^3-x^4+x^6-x^8+x^9-x^11+x^12))` -/
def P91939187961493893.Spec : Prop :=
  ∀ n, P91939187961493893.a n = A322829 n

theorem P91939187961493893.correct : P91939187961493893.Spec := by
  intro n
  simp only [A322829]

end A322829

/-!
# A322830: a(n) = 32*n^3 + 48*n^2 + 18*n + 1.

The programs for A322830, the canonical program `A322830.P14091381438376349196` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322830 has offset 0).

The definition of A322830 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `32*n^3+48*n²+18*n+1` (program `A322830.P14091381438376349196`, by `A322830.P14091381438376349196.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A322830.P1722489406838521321

`ogf((1+95x+95x^2+x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A322830.P1722489406838521321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 95, 95, 1] [1, -4, 6, -4, 1] n

end

end A322830.P1722489406838521321

namespace A322830

/-- `ogf((1+95x+95x^2+x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P1722489406838521321.Spec : Prop :=
  ∀ n, P1722489406838521321.a n = A322830 n

end A322830

/-! ## A322830.P3882401502726306172

`(2*n+1)*(16*n²+16*n+1)`
-/

namespace A322830.P3882401502726306172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (16 * n ^ 2 + 16 * n + 1)

end

end A322830.P3882401502726306172

namespace A322830

/-- `(2*n+1)*(16*n²+16*n+1)` -/
def P3882401502726306172.Spec : Prop :=
  ∀ n, (P3882401502726306172.a n : ℤ) = A322830 n

theorem P3882401502726306172.correct : P3882401502726306172.Spec := by
  intro n
  simp only [A322830, Nat.add_sub_cancel, A322830.P3882401502726306172.a, A322830.P14091381438376349196.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A322830

/-! ## A322830.P14091381438376349196

`32*n^3+48*n²+18*n+1`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A322830

/-- `32*n^3+48*n²+18*n+1` -/
def P14091381438376349196.Spec : Prop :=
  ∀ n, (P14091381438376349196.a n : ℤ) = A322830 n

theorem P14091381438376349196.correct : P14091381438376349196.Spec := by
  intro n
  simp only [A322830]

end A322830

/-! ## A322830.P3491939310766250005

`A144129(2*n+1)`
-/

namespace A322830.P3491939310766250005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144129 (2 * n + 1)

end

end A322830.P3491939310766250005

namespace A322830

/-- `A144129(2*n+1)` -/
def P3491939310766250005.Spec : Prop :=
  ∀ n, P3491939310766250005.a n = A322830 n

theorem P3491939310766250005.correct : P3491939310766250005.Spec := by
  intro n
  simp only [A322830, Nat.add_sub_cancel, A322830.P3491939310766250005.a, A322830.P14091381438376349196.a, A144129, A144129.P2880121179738500010.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322830

/-! ## A322830.P9872672956739200307

`2*n*Δ[C(2*n+1, 2)]²+1`
-/

namespace A322830.P9872672956739200307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 + 1

end

end A322830.P9872672956739200307

namespace A322830

/-- `2*n*Δ[C(2*n+1, 2)]²+1` -/
def P9872672956739200307.Spec : Prop :=
  ∀ n, P9872672956739200307.a n = A322830 n

theorem P9872672956739200307.correct : P9872672956739200307.Spec := by
  intro n
  simp only [A322830, Nat.add_sub_cancel, A322830.P9872672956739200307.f1, A322830.P9872672956739200307.a, A322830.P14091381438376349196.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A322830

/-! ## A322830.P9923339433681565894

`Δ[A144130(n)+n²]`
-/

namespace A322830.P9923339433681565894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144130 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A322830.P9923339433681565894

namespace A322830

/-- `Δ[A144130(n)+n²]` -/
def P9923339433681565894.Spec : Prop :=
  ∀ n, P9923339433681565894.a n = A322830 n

theorem P9923339433681565894.correct : P9923339433681565894.Spec := by
  intro n
  simp only [A322830, Nat.add_sub_cancel, A322830.P9923339433681565894.f1, A322830.P9923339433681565894.a, A322830.P14091381438376349196.a, A144130, A144130.P7760986985961990642.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322830

/-! ## A322830.P13050613827535846092

`∑[A010014(2*n)]`
-/

namespace A322830.P13050613827535846092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010014 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322830.P13050613827535846092

namespace A322830

/-- `∑[A010014(2*n)]` -/
def P13050613827535846092.Spec : Prop :=
  ∀ n, P13050613827535846092.a n = A322830 n

end A322830

/-! ## A322830.P4357026708839240883

`sqrt(A239608(Δ[n²]))`
-/

namespace A322830.P4357026708839240883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A239608 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ)

end

end A322830.P4357026708839240883

namespace A322830

/-- `sqrt(A239608(Δ[n²]))` -/
def P4357026708839240883.Spec : Prop :=
  ∀ n, P4357026708839240883.a n = (A322830 n : ℝ)

end A322830

/-! ## A322830.P3103779942240934225

`xor(1, A280089(2*n+1)-2)`
-/

namespace A322830.P3103779942240934225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A280089 (2 * n + 1) - 2)

end

end A322830.P3103779942240934225

namespace A322830

/-- `xor(1, A280089(2*n+1)-2)` -/
def P3103779942240934225.Spec : Prop :=
  ∀ n, P3103779942240934225.a n = A322830 n

end A322830

/-! ## A322830.P4940214176810378837

`A079414(2*n+1)/(2*n+1)`
-/

namespace A322830.P4940214176810378837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079414 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A322830.P4940214176810378837

namespace A322830

/-- `A079414(2*n+1)/(2*n+1)` -/
def P4940214176810378837.Spec : Prop :=
  ∀ n, P4940214176810378837.a n = (A322830 n : ℚ)

theorem P4940214176810378837.correct : P4940214176810378837.Spec := by
  intro n
  simp only [A322830, Nat.add_sub_cancel, A322830.P4940214176810378837.a, A322830.P14091381438376349196.a, A079414, A079414.P3032603617172421399.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322830

/-! ## A322830.P7651123815275886464

`record[∑[A157142(n)²*A157142(n)]]`
-/

namespace A322830.P7651123815275886464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157142 n ^ 2 * A157142 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322830.P7651123815275886464

namespace A322830

/-- `record[∑[A157142(n)²*A157142(n)]]` -/
def P7651123815275886464.Spec : Prop :=
  ∀ n, P7651123815275886464.a n = A322830 n

end A322830

/-! ## A322830.P13032125328819427364

`∑[A010023(2*n)-A195321(2*n)]`
-/

namespace A322830.P13032125328819427364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010023 (2 * n) - A195321 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322830.P13032125328819427364

namespace A322830

/-- `∑[A010023(2*n)-A195321(2*n)]` -/
def P13032125328819427364.Spec : Prop :=
  ∀ n, P13032125328819427364.a n = A322830 n

end A322830

/-! ## A322830.P17097285274561868311

`A154560(4*n)`
-/

namespace A322830.P17097285274561868311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154560 (4 * n)

end

end A322830.P17097285274561868311

namespace A322830

/-- `A154560(4*n)` -/
def P17097285274561868311.Spec : Prop :=
  ∀ n, P17097285274561868311.a n = A322830 n

end A322830

/-! ## A322830.P9608485057512971284

`∑[A005897(4*n)]`
-/

namespace A322830.P9608485057512971284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322830.P9608485057512971284

namespace A322830

/-- `∑[A005897(4*n)]` -/
def P9608485057512971284.Spec : Prop :=
  ∀ n, P9608485057512971284.a n = A322830 n

end A322830

/-! ## A322830.P14808727165849809456

`∑[A397625(4*n)]`
-/

namespace A322830.P14808727165849809456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397625 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322830.P14808727165849809456

namespace A322830

/-- `∑[A397625(4*n)]` -/
def P14808727165849809456.Spec : Prop :=
  ∀ n, P14808727165849809456.a n = A322830 n

end A322830

/-! ## A322830.P6062838663774633734

`A206481(3*(n+1)+n)`
-/

namespace A322830.P6062838663774633734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206481 (3 * (n + 1) + n)

end

end A322830.P6062838663774633734

namespace A322830

/-- `A206481(3*(n+1)+n)` -/
def P6062838663774633734.Spec : Prop :=
  ∀ n, P6062838663774633734.a n = A322830 n

end A322830

/-! ## A322830.P16593548040439349743

`A215097(3*n+n+1)`
-/

namespace A322830.P16593548040439349743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215097 (3 * n + (n + 1))

end

end A322830.P16593548040439349743

namespace A322830

/-- `A215097(3*n+n+1)` -/
def P16593548040439349743.Spec : Prop :=
  ∀ n, P16593548040439349743.a n = A322830 n

end A322830

/-! ## A322830.P6832118203808940895

`Δ[A125201(n²)]`
-/

namespace A322830.P6832118203808940895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125201 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A322830.P6832118203808940895

namespace A322830

/-- `Δ[A125201(n²)]` -/
def P6832118203808940895.Spec : Prop :=
  ∀ n, P6832118203808940895.a n = A322830 n

theorem P6832118203808940895.correct : P6832118203808940895.Spec := by
  intro n
  simp only [A322830, Nat.add_sub_cancel, A322830.P6832118203808940895.f1, A322830.P6832118203808940895.a, A322830.P14091381438376349196.a, A125201, A125201.P9072291273738928373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322830

/-!
# A322832: Values x + y, where the ordered pairs (x,y) are sorted first by maximal coordinate and then lexicographically.

The programs for A322832, the canonical program `A322832.P4257575422464920388` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322832 has offset 0).

The definition of A322832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322832.P4257575422464920388

`floor(sqrt(n))+n%floor(sqrt(n+1))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A322832

/-- `floor(sqrt(n))+n%floor(sqrt(n+1))` -/
def P4257575422464920388.Spec : Prop :=
  ∀ n, (P4257575422464920388.a n : ℤ) = A322832 n

theorem P4257575422464920388.correct : P4257575422464920388.Spec := by
  intro n
  simp only [A322832]

end A322832

/-! ## A322832.P7115855810880587004

`n-A206224(n)`
-/

namespace A322832.P7115855810880587004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A206224 n

end

end A322832.P7115855810880587004

namespace A322832

/-- `n-A206224(n)` -/
def P7115855810880587004.Spec : Prop :=
  ∀ n, P7115855810880587004.a n = A322832 n

end A322832

/-! ## A322832.P11209722492905367581

`A138099(n+1)-1`
-/

namespace A322832.P11209722492905367581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138099 (n + 1) - 1

end

end A322832.P11209722492905367581

namespace A322832

/-- `A138099(n+1)-1` -/
def P11209722492905367581.Spec : Prop :=
  ∀ n, P11209722492905367581.a n = A322832 n

end A322832

/-! ## A322832.P4389650870952051414

`A336751(n+1)-2`
-/

namespace A322832.P4389650870952051414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336751 (n + 1) - 2

end

end A322832.P4389650870952051414

namespace A322832

/-- `A336751(n+1)-2` -/
def P4389650870952051414.Spec : Prop :=
  ∀ n, P4389650870952051414.a n = A322832 n

theorem P4389650870952051414.correct : P4389650870952051414.Spec := by
  intro n
  simp only [A322832, Nat.add_sub_cancel, A322832.P4389650870952051414.a, A322832.P4257575422464920388.a, A336751, A336751.P13144755315143841523.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322832

/-! ## A322832.P14095890576009550342

`floor(A055087(n)+sqrt(n))`
-/

namespace A322832.P14095890576009550342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055087 n : ℝ) + Real.sqrt (n : ℝ)⌋

end

end A322832.P14095890576009550342

namespace A322832

/-- `floor(A055087(n)+sqrt(n))` -/
def P14095890576009550342.Spec : Prop :=
  ∀ n, P14095890576009550342.a n = A322832 n

end A322832

/-! ## A322832.P12689596000394331535

`n-A002620(floor(1/Δ[sqrt(n)])-1)`
-/

namespace A322832.P12689596000394331535
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A002620 (⌊1 / (f1 (n + 1) - f1 n)⌋ - 1).toNat

end

end A322832.P12689596000394331535

namespace A322832

/-- `n-A002620(floor(1/Δ[sqrt(n)])-1)` -/
def P12689596000394331535.Spec : Prop :=
  ∀ n, P12689596000394331535.a n = A322832 n

end A322832

/-! ## A322832.P6023791872786941064

`A023444(A336751(n+1))`
-/

namespace A322832.P6023791872786941064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A336751 (n + 1)).toNat

end

end A322832.P6023791872786941064

namespace A322832

/-- `A023444(A336751(n+1))` -/
def P6023791872786941064.Spec : Prop :=
  ∀ n, P6023791872786941064.a n = A322832 n

end A322832

/-! ## A322832.P2796461625678919152

`A055087(n)+A000196(n)`
-/

namespace A322832.P2796461625678919152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n + A000196 n

end

end A322832.P2796461625678919152

namespace A322832

/-- `A055087(n)+A000196(n)` -/
def P2796461625678919152.Spec : Prop :=
  ∀ n, P2796461625678919152.a n = A322832 n

theorem P2796461625678919152.correct : P2796461625678919152.Spec := by
  intro n
  simp only [A322832, Nat.add_sub_cancel, A322832.P2796461625678919152.a, A322832.P4257575422464920388.a, A000196, A000196.P15434771586934192083.a, A055087, A055087.P17964067358640094815.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322832

/-! ## A322832.P2475399398189761172

`A280026(n)-A259361(n)`
-/

namespace A322832.P2475399398189761172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280026 n - A259361 n

end

end A322832.P2475399398189761172

namespace A322832

/-- `A280026(n)-A259361(n)` -/
def P2475399398189761172.Spec : Prop :=
  ∀ n, P2475399398189761172.a n = A322832 n

end A322832

/-! ## A322832.P3244811955007986674

`A161983(n)%A000267(n)`
-/

namespace A322832.P3244811955007986674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161983 n) (A000267 n)

end

end A322832.P3244811955007986674

namespace A322832

/-- `A161983(n)%A000267(n)` -/
def P3244811955007986674.Spec : Prop :=
  ∀ n, P3244811955007986674.a n = A322832 n

end A322832

/-! ## A322832.P4669840606577901827

`A384688(n)+A216607(n+1)`
-/

namespace A322832.P4669840606577901827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384688 n + A216607 (n + 1)

end

end A322832.P4669840606577901827

namespace A322832

/-- `A384688(n)+A216607(n+1)` -/
def P4669840606577901827.Spec : Prop :=
  ∀ n, P4669840606577901827.a n = A322832 n

end A322832

/-! ## A322832.P8094454216539196918

`A055086(n)-A216607(n+1)`
-/

namespace A322832.P8094454216539196918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 n - A216607 (n + 1)

end

end A322832.P8094454216539196918

namespace A322832

/-- `A055086(n)-A216607(n+1)` -/
def P8094454216539196918.Spec : Prop :=
  ∀ n, P8094454216539196918.a n = A322832 n

end A322832

/-! ## A322832.P18409424102528256988

`A055087(n)+n-A028391(n)`
-/

namespace A322832.P18409424102528256988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n + ((n : ℤ) - A028391 n)

end

end A322832.P18409424102528256988

namespace A322832

/-- `A055087(n)+n-A028391(n)` -/
def P18409424102528256988.Spec : Prop :=
  ∀ n, P18409424102528256988.a n = A322832 n

theorem P18409424102528256988.correct : P18409424102528256988.Spec := by
  intro n
  simp only [A322832, Nat.add_sub_cancel, A322832.P18409424102528256988.a, A322832.P4257575422464920388.a, A028391, A028391.P17198271841435315725.a, A055087, A055087.P17964067358640094815.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322832

/-! ## A322832.P17313226317182888576

`n-A028391(n-A055087(n))`
-/

namespace A322832.P17313226317182888576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A028391 ((n : ℤ) - A055087 n).toNat

end

end A322832.P17313226317182888576

namespace A322832

/-- `n-A028391(n-A055087(n))` -/
def P17313226317182888576.Spec : Prop :=
  ∀ n, P17313226317182888576.a n = A322832 n

end A322832

/-! ## A322832.P17019058460421094050

`n-A000196(n)*A259361(n)`
-/

namespace A322832.P17019058460421094050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000196 n * A259361 n

end

end A322832.P17019058460421094050

namespace A322832

/-- `n-A000196(n)*A259361(n)` -/
def P17019058460421094050.Spec : Prop :=
  ∀ n, P17019058460421094050.a n = A322832 n

end A322832

/-! ## A322832.P15970490825978011698

`A003059(n+1)+A055087(n)-1`
-/

namespace A322832.P15970490825978011698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (n + 1) + (A055087 n - 1)

end

end A322832.P15970490825978011698

namespace A322832

/-- `A003059(n+1)+A055087(n)-1` -/
def P15970490825978011698.Spec : Prop :=
  ∀ n, P15970490825978011698.a n = A322832 n

end A322832

/-! ## A322832.P6254025022308860506

`A122197(n+1)+A000196(n)-1`
-/

namespace A322832.P6254025022308860506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122197 (n + 1) + (A000196 n - 1)

end

end A322832.P6254025022308860506

namespace A322832

/-- `A122197(n+1)+A000196(n)-1` -/
def P6254025022308860506.Spec : Prop :=
  ∀ n, P6254025022308860506.a n = A322832 n

end A322832

/-! ## A322832.P11230079196977210169

`A003059(n+1)+A122197(n+1)-2`
-/

namespace A322832.P11230079196977210169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (n + 1) + (A122197 (n + 1) - 2)

end

end A322832.P11230079196977210169

namespace A322832

/-- `A003059(n+1)+A122197(n+1)-2` -/
def P11230079196977210169.Spec : Prop :=
  ∀ n, P11230079196977210169.a n = A322832 n

end A322832

/-! ## A322832.P4478454306932434733

`n-A000196(n)*A000196(A028391(n))`
-/

namespace A322832.P4478454306932434733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000196 n * A000196 (A028391 n).toNat

end

end A322832.P4478454306932434733

namespace A322832

/-- `n-A000196(n)*A000196(A028391(n))` -/
def P4478454306932434733.Spec : Prop :=
  ∀ n, P4478454306932434733.a n = A322832 n

end A322832

/-! ## A322832.P13033787320487826173

`n-A000196(n)*A000196(A056847(n))`
-/

namespace A322832.P13033787320487826173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000196 n * A000196 (A056847 n).toNat

end

end A322832.P13033787320487826173

namespace A322832

/-- `n-A000196(n)*A000196(A056847(n))` -/
def P13033787320487826173.Spec : Prop :=
  ∀ n, P13033787320487826173.a n = A322832 n

end A322832

/-!
# A322833: Squarefree MM-numbers of strict uniform regular multiset multisystems. Squarefree numbers whose prime indices all have the same number of prime factors counted with multiplicity, and such that the product of the same prime indices is a power of a squarefree number.

The programs for A322833, there is no canonical definition to state claims against.
-/

/-! ## A322833.P12579081482980274030

`record[∏{p}[A321698(n+1), #]]`
-/

namespace A322833.P12579081482980274030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321698 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322833.P12579081482980274030

/-! ## A322833.P10396252160994416418

`record[A007913(A321698(n+1))]`
-/

namespace A322833.P10396252160994416418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A321698 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322833.P10396252160994416418

/-! ## A322833.P9209352542798189733

`filter[A321698(n+1), A008966(#)]`
-/

namespace A322833.P9209352542798189733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A322833.P9209352542798189733

/-! ## A322833.P16867399103279315756

`filter[A321698(n+1), A132350(#)]`
-/

namespace A322833.P16867399103279315756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A322833.P16867399103279315756

/-! ## A322833.P10418351200758133951

`filter[A321698(n+1), A323154(#)]`
-/

namespace A322833.P10418351200758133951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A322833.P10418351200758133951

/-!
# A322835: Non-palindromic numbers n such that n * reverse(n) is a square and n and reverse(n) do not have the same number of digits.

The programs for A322835, there is no canonical definition to state claims against.
-/

/-! ## A322835.P14446623145458698692

`∩[A070760(n+1), A282032(n+1)]`
-/

namespace A322835.P14446623145458698692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322835.P14446623145458698692

/-! ## A322835.P7781023647002122797

`∩[A070760(n+1), A282033(n+1)]`
-/

namespace A322835.P7781023647002122797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322835.P7781023647002122797

/-! ## A322835.P1758152346271460384

`∩[2*A212774(n+1), A070760(n+1)]`
-/

namespace A322835.P1758152346271460384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322835.P1758152346271460384

/-! ## A322835.P12863894309361941781

`∩[A070760(n+1), A186439(n+1)]`
-/

namespace A322835.P12863894309361941781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322835.P12863894309361941781

/-! ## A322835.P10757782092139093204

`∩[A070760(n+1), A212774(n+1)]`
-/

namespace A322835.P10757782092139093204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322835.P10757782092139093204

/-! ## A322835.P11707629444551085355

`∩[A070760(n+1), A008602(n)]`
-/

namespace A322835.P11707629444551085355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008602 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322835.P11707629444551085355

/-! ## A322835.P5917413809542379107

`∩[A070760(n+1), A190039(n+1)]`
-/

namespace A322835.P5917413809542379107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322835.P5917413809542379107

/-! ## A322835.P15635670972783897547

`∩[2*A008592(n), A070760(n+1)]`
-/

namespace A322835.P15635670972783897547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322835.P15635670972783897547

/-! ## A322835.P1733290066336649246

`∩[2*A359841(n+1), A070760(n+1)]`
-/

namespace A322835.P1733290066336649246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A359841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322835.P1733290066336649246

/-! ## A322835.P271553276599748626

`∩[2*A370532(n+1), A070760(n+1)]`
-/

namespace A322835.P271553276599748626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A370532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322835.P271553276599748626

/-! ## A322835.P11616366473623811728

`∩[A070760(n+1), A008592(n)]`
-/

namespace A322835.P11616366473623811728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322835.P11616366473623811728

/-! ## A322835.P7353733683248098918

`∩[A070760(n+1), A370532(n+1)]`
-/

namespace A322835.P7353733683248098918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322835.P7353733683248098918

/-! ## A322835.P12389045283799374243

`∩[A070760(n+1), A396948(n+1)]`
-/

namespace A322835.P12389045283799374243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322835.P12389045283799374243

/-! ## A322835.P134811491284813820

`∩[A306273(n+1), A396948(n+1)]`
-/

namespace A322835.P134811491284813820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322835.P134811491284813820

/-! ## A322835.P4874407116875112912

`∩[A070760(n+1), A359841(n+1)]`
-/

namespace A322835.P4874407116875112912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322835.P4874407116875112912

/-!
# A322836: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where A(n,k) is Chebyshev polynomial of the first kind T_{n}(x), evaluated at x=k.

The programs for A322836, there is no canonical definition to state claims against.
-/

/-! ## A322836.P2875926908704288742

`A101124(A061579(n))`
-/

namespace A322836.P2875926908704288742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101124 (A061579 n).toNat

end

end A322836.P2875926908704288742

/-! ## A322836.P546591661642130047

`A101124(A114327(n)+n)`
-/

namespace A322836.P546591661642130047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101124 (A114327 n + (n : ℤ)).toNat

end

end A322836.P546591661642130047

/-! ## A322836.P9361298460324580863

`A101124(A038722(n+1)-1)`
-/

namespace A322836.P9361298460324580863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101124 (A038722 (n + 1) - 1).toNat

end

end A322836.P9361298460324580863

/-! ## A322836.P3635547927693694372

`A101124(A093995(n+1)-(n+1))`
-/

namespace A322836.P3635547927693694372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101124 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A322836.P3635547927693694372

/-! ## A322836.P5413768977281485674

`A101124(A057944(n)+A025581(n))`
-/

namespace A322836.P5413768977281485674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101124 (A057944 n + A025581 n).toNat

end

end A322836.P5413768977281485674

/-! ## A322836.P9038618128406759789

`A101124(A002378(n)%A014132(n+1))`
-/

namespace A322836.P9038618128406759789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101124 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A322836.P9038618128406759789

/-!
# A322837: Number of positive integers less than n with fewer distinct prime factors than n.

The programs for A322837, there is no canonical definition to state claims against.
-/

/-! ## A322837.P15931817346050129642

`A070962(n+1)-A322841(n+1)`
-/

namespace A322837.P15931817346050129642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070962 (n + 1) - A322841 (n + 1)

end

end A322837.P15931817346050129642

/-! ## A322837.P13035632305667599269

`A330292(n+1)-A334655(n+1)`
-/

namespace A322837.P13035632305667599269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330292 (n + 1) - A334655 (n + 1)

end

end A322837.P13035632305667599269

/-! ## A322837.P14435546161509073530

`A330292(n+1)+1-A067003(n+1)`
-/

namespace A322837.P14435546161509073530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330292 (n + 1) + (1 - A067003 (n + 1))

end

end A322837.P14435546161509073530

/-! ## A322837.P150140348521435728

`A070962(n+1)+A330292(n+1)-n`
-/

namespace A322837.P150140348521435728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070962 (n + 1) + (A330292 (n + 1) - (n : ℤ))

end

end A322837.P150140348521435728

/-! ## A322837.P13329129554533172366

`n-(A334655(n+1)+A322841(n+1))`
-/

namespace A322837.P13329129554533172366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A334655 (n + 1) + A322841 (n + 1))

end

end A322837.P13329129554533172366

/-! ## A322837.P4015679295521254211

`n+1-(A322841(n+1)+A067003(n+1))`
-/

namespace A322837.P4015679295521254211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A322841 (n + 1) + A067003 (n + 1))

end

end A322837.P4015679295521254211

/-! ## A322837.P17675715179470529701

`A330292(n+1)-A023443(A067003(n+1))`
-/

namespace A322837.P17675715179470529701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330292 (n + 1) - A023443 (A067003 (n + 1)).toNat

end

end A322837.P17675715179470529701

/-! ## A322837.P16110084294921256382

`A330292(n+1)-log2(Δ[A339512(n)])`
-/

namespace A322837.P16110084294921256382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339512 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A330292 (n + 1) : ℝ) - Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A322837.P16110084294921256382

/-!
# A322838: Number of positive integers less than n with more prime factors than n, counted with multiplicity.

The programs for A322838, there is no canonical definition to state claims against.
-/

/-! ## A322838.P10399472834922196149

`A001222(A259939(n))-A253555(n+1)`
-/

namespace A322838.P10399472834922196149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A259939 n).toNat - A253555 (n + 1)

end

end A322838.P10399472834922196149

/-! ## A322838.P5566794367746441167

`A099155(floor(n/(xor(n, n+1)+1))+1)%A064989(n+1)`
-/

namespace A322838.P5566794367746441167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099155 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat) (A064989 (n + 1))

end

end A322838.P5566794367746441167

/-! ## A322838.P17757178882943846359

`A001899(A228807(A003958(n+1))²)`
-/

namespace A322838.P17757178882943846359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 (A228807 (A003958 (n + 1)).toNat ^ 2).toNat

end

end A322838.P17757178882943846359

/-! ## A322838.P11061224060238087746

`A001222(A000217(A318995(n+1)!))`
-/

namespace A322838.P11061224060238087746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000217 (Nat.factorial (A318995 (n + 1)).toNat)).toNat

end

end A322838.P11061224060238087746

/-! ## A322838.P14253582812056124195

`A326843(n)%A110868(A003958(n+1))`
-/

namespace A322838.P14253582812056124195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326843 n) (A110868 (A003958 (n + 1)).toNat)

end

end A322838.P14253582812056124195

/-!
# A322839: Numbers n with more prime factors (counted with multiplicity) than n+1.

The programs for A322839, there is no canonical definition to state claims against.
-/

/-! ## A322839.P142555713053661978

`A339910(n+2)-1`
-/

namespace A322839.P142555713053661978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339910 (n + 2) - 1

end

end A322839.P142555713053661978

/-! ## A322839.P1549697593090284461

`lt[Δ[∑{e}[n, #]], 0]`
-/

namespace A322839.P1549697593090284461
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A322839.P1549697593090284461

/-! ## A322839.P5260862513505534486

`lt[∑{e}[n+1, #], ∑{e}[n, #]]`
-/

namespace A322839.P5260862513505534486
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A322839.P5260862513505534486

/-! ## A322839.P13372582832519767982

`lt[A001222(n+1), ∑{e}[n, #]]`
-/

namespace A322839.P13372582832519767982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A322839.P13372582832519767982

/-! ## A322839.P12662639128178963042

`A023443(A339910(n+2))`
-/

namespace A322839.P12662639128178963042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A339910 (n + 2)).toNat

end

end A322839.P12662639128178963042

/-!
# A322840: Positive integers n with fewer prime factors (counted with multiplicity) than n + 1.

The programs for A322840, the canonical program `A322840.P8700880177477672471` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322840 has offset 1).

The definition of A322840 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322840.P8700880177477672471

`lt[0, Δ[∑{e}[n, #]]]`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A322840

/-- `lt[0, Δ[∑{e}[n, #]]]` -/
def P8700880177477672471.Spec : Prop :=
  ∀ n, (P8700880177477672471.a n : ℤ) = A322840 (n + 1)

theorem P8700880177477672471.correct : P8700880177477672471.Spec := by
  intro n
  simp only [A322840, Nat.add_sub_cancel]

end A322840

/-! ## A322840.P2270542971985967814

`lt[∑{e}[n, #], ∑{e}[n+1, #]]`
-/

namespace A322840.P2270542971985967814
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A322840.P2270542971985967814

namespace A322840

/-- `lt[∑{e}[n, #], ∑{e}[n+1, #]]` -/
def P2270542971985967814.Spec : Prop :=
  ∀ n, (P2270542971985967814.a n : ℤ) = A322840 (n + 1)

end A322840

/-! ## A322840.P14414081212520708864

`lt[∑{e}[n, #], A001222(n+1)]`
-/

namespace A322840.P14414081212520708864
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A322840.P14414081212520708864

namespace A322840

/-- `lt[∑{e}[n, #], A001222(n+1)]` -/
def P14414081212520708864.Spec : Prop :=
  ∀ n, (P14414081212520708864.a n : ℤ) = A322840 (n + 1)

end A322840

/-! ## A322840.P7471379217924502870

`lt[1, Δ[A001222(A004277(n))²]]`
-/

namespace A322840.P7471379217924502870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004277 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A322840.P7471379217924502870

namespace A322840

/-- `lt[1, Δ[A001222(A004277(n))²]]` -/
def P7471379217924502870.Spec : Prop :=
  ∀ n, (P7471379217924502870.a n : ℤ) = A322840 (n + 1)

end A322840

/-! ## A322840.P14745521784369864983

`lt[A001222(n+1), A001222(n+2)]+1`
-/

namespace A322840.P14745521784369864983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A322840.P14745521784369864983

namespace A322840

/-- `lt[A001222(n+1), A001222(n+2)]+1` -/
def P14745521784369864983.Spec : Prop :=
  ∀ n, (P14745521784369864983.a n : ℤ) = A322840 (n + 1)

end A322840

/-! ## A322840.P5868828687752645847

`lt[A105560(n+1), A105560(n+2)]+1`
-/

namespace A322840.P5868828687752645847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A322840.P5868828687752645847

namespace A322840

/-- `lt[A105560(n+1), A105560(n+2)]+1` -/
def P5868828687752645847.Spec : Prop :=
  ∀ n, (P5868828687752645847.a n : ℤ) = A322840 (n + 1)

end A322840

/-! ## A322840.P2264825801052790858

`lt[A165825(abs(1-n)+1), A165825(n+1)]`
-/

namespace A322840.P2264825801052790858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322840.P2264825801052790858

namespace A322840

/-- `lt[A165825(abs(1-n)+1), A165825(n+1)]` -/
def P2264825801052790858.Spec : Prop :=
  ∀ n, (P2264825801052790858.a n : ℤ) = A322840 (n + 1)

end A322840

/-! ## A322840.P3477031333718154874

`lt[A166662(n+1), Δ[A166662(n+1)]]+1`
-/

namespace A322840.P3477031333718154874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166662 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A322840.P3477031333718154874

namespace A322840

/-- `lt[A166662(n+1), Δ[A166662(n+1)]]+1` -/
def P3477031333718154874.Spec : Prop :=
  ∀ n, (P3477031333718154874.a n : ℤ) = A322840 (n + 1)

end A322840

/-! ## A322840.P9336432868904812596

`lt[A001222(A028310(n)), A001222(n+1)]`
-/

namespace A322840.P9336432868904812596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322840.P9336432868904812596

namespace A322840

/-- `lt[A001222(A028310(n)), A001222(n+1)]` -/
def P9336432868904812596.Spec : Prop :=
  ∀ n, (P9336432868904812596.a n : ℤ) = A322840 (n + 1)

end A322840

/-! ## A322840.P10918265969006772931

`lt[A061142(A028310(n)), A061142(n+1)]`
-/

namespace A322840.P10918265969006772931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322840.P10918265969006772931

namespace A322840

/-- `lt[A061142(A028310(n)), A061142(n+1)]` -/
def P10918265969006772931.Spec : Prop :=
  ∀ n, (P10918265969006772931.a n : ℤ) = A322840 (n + 1)

end A322840

/-! ## A322840.P9384237984308070543

`lt[A001222(A257143(n)), A001222(n+1)]`
-/

namespace A322840.P9384237984308070543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A257143 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322840.P9384237984308070543

namespace A322840

/-- `lt[A001222(A257143(n)), A001222(n+1)]` -/
def P9384237984308070543.Spec : Prop :=
  ∀ n, (P9384237984308070543.a n : ℤ) = A322840 (n + 1)

end A322840

/-! ## A322840.P7934103227331935957

`lt[A001222(A000038(n)+n), A001222(n+1)]`
-/

namespace A322840.P7934103227331935957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000038 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322840.P7934103227331935957

namespace A322840

/-- `lt[A001222(A000038(n)+n), A001222(n+1)]` -/
def P7934103227331935957.Spec : Prop :=
  ∀ n, (P7934103227331935957.a n : ℤ) = A322840 (n + 1)

end A322840

/-! ## A322840.P15679035342788567375

`lt[A001222(A004277(n)-n), A001222(n+1)]`
-/

namespace A322840.P15679035342788567375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004277 n - (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322840.P15679035342788567375

namespace A322840

/-- `lt[A001222(A004277(n)-n), A001222(n+1)]` -/
def P15679035342788567375.Spec : Prop :=
  ∀ n, (P15679035342788567375.a n : ℤ) = A322840 (n + 1)

end A322840

/-! ## A322840.P11795822252464119254

`lt[A001222(A028310(n)), A001222(3*n-(n-2))-1]`
-/

namespace A322840.P11795822252464119254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((3 * n : ℤ) - ((n : ℤ) - 2)).toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322840.P11795822252464119254

namespace A322840

/-- `lt[A001222(A028310(n)), A001222(3*n-(n-2))-1]` -/
def P11795822252464119254.Spec : Prop :=
  ∀ n, (P11795822252464119254.a n : ℤ) = A322840 (n + 1)

end A322840

/-! ## A322840.P5439353720647559402

`lt[A091371(2*(n+1)), A091371(A233583(2*n+1))]`
-/

namespace A322840.P5439353720647559402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091371 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091371 (A233583 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322840.P5439353720647559402

namespace A322840

/-- `lt[A091371(2*(n+1)), A091371(A233583(2*n+1))]` -/
def P5439353720647559402.Spec : Prop :=
  ∀ n, (P5439353720647559402.a n : ℤ) = A322840 (n + 1)

end A322840

/-!
# A322841: Number of positive integers less than n with more distinct prime factors than n.

The programs for A322841, there is no canonical definition to state claims against.
-/

/-! ## A322841.P4356450989980539895

`n-A330292(n+1)`
-/

namespace A322841.P4356450989980539895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A330292 (n + 1)

end

end A322841.P4356450989980539895

/-! ## A322841.P15698649083210106927

`-(A330292(n+1)+A001489(n))`
-/

namespace A322841.P15698649083210106927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A330292 (n + 1) + A001489 n)

end

end A322841.P15698649083210106927

/-! ## A322841.P1644943901869809116

`A070962(n+1)-A322837(n+1)`
-/

namespace A322841.P1644943901869809116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070962 (n + 1) - A322837 (n + 1)

end

end A322841.P1644943901869809116

/-! ## A322841.P9020269931040221395

`A001478(A330292(n+1)+1)+1+n`
-/

namespace A322841.P9020269931040221395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (A330292 (n + 1) + 1).toNat + 1 + (n : ℤ)

end

end A322841.P9020269931040221395

/-! ## A322841.P13280416306162599956

`A001489(A330292(n+1)+1)+n+1`
-/

namespace A322841.P13280416306162599956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A330292 (n + 1) + 1).toNat + (n + 1 : ℤ)

end

end A322841.P13280416306162599956

/-! ## A322841.P8186624663292560474

`n-(A334655(n+1)+A322837(n+1))`
-/

namespace A322841.P8186624663292560474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A334655 (n + 1) + A322837 (n + 1))

end

end A322841.P8186624663292560474

/-!
# A322842: Primes p such that both p+2 and p-2 are neither prime nor semiprime.

The programs for A322842, there is no canonical definition to state claims against.
-/

/-! ## A322842.P1385938207351107686

`∩[A117244(n+1), A346659(n+1)]`
-/

namespace A322842.P1385938207351107686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322842.P1385938207351107686

/-! ## A322842.P3229669275683471607

`∩[A007510(n+1), A346659(n+1)]`
-/

namespace A322842.P3229669275683471607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322842.P3229669275683471607

/-! ## A322842.P15352861002166633281

`∩[A134797(n+1), A346659(n+1)]`
-/

namespace A322842.P15352861002166633281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322842.P15352861002166633281

/-! ## A322842.P7128201088729800611

`∩[A167706(n+1), A346659(n+1)]`
-/

namespace A322842.P7128201088729800611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322842.P7128201088729800611

/-! ## A322842.P5369149421041039834

`filter[A346659(n+1), A283265(#)]`
-/

namespace A322842.P5369149421041039834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A322842.P5369149421041039834

/-! ## A322842.P3361618151869152073

`∩[A062729(n+1), A346659(n+1)]`
-/

namespace A322842.P3361618151869152073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322842.P3361618151869152073

/-! ## A322842.P15191959105411237532

`∩[A110673(n+1), A346659(n+1)]`
-/

namespace A322842.P15191959105411237532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346659 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322842.P15191959105411237532

/-! ## A322842.P1805294927794496995

`∩[A346659(n+1), A396571(n+1)]`
-/

namespace A322842.P1805294927794496995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A322842.P1805294927794496995

/-!
# A322844: a(n) = (1/12)*n^2*(3*(1 + n^2) - 2*(2 + n^2)*(n mod 2)).

The programs for A322844, the canonical program `A322844.P14877667083936312609` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322844 has offset 0).

The definition of A322844 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322844.P5698757050805107061

`ogf((5x^2+6x^3+43x^4+20x^5+43x^6+6x^7+5x^8)/(1-5x^2+10x^4-10x^6+5x^8-x^10))`
-/

namespace A322844.P5698757050805107061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 5, 6, 43, 20, 43, 6, 5] [1, 0, -5, 0, 10, 0, -10, 0, 5, 0, -1] n

end

end A322844.P5698757050805107061

namespace A322844

/-- `ogf((5x^2+6x^3+43x^4+20x^5+43x^6+6x^7+5x^8)/(1-5x^2+10x^4-10x^6+5x^8-x^10))` -/
def P5698757050805107061.Spec : Prop :=
  ∀ n, P5698757050805107061.a n = A322844 n

end A322844

/-! ## A322844.P14877667083936312609

`1/12*n²*(3*(1+n²)-2*(2+n²)*n%2)`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A322844

/-- `1/12*n²*(3*(1+n²)-2*(2+n²)*n%2)` -/
def P14877667083936312609.Spec : Prop :=
  ∀ n, P14877667083936312609.a n = (A322844 n : ℚ)

end A322844

/-! ## A322844.P4653860670745528333

`n/16*A035878(n)`
-/

namespace A322844.P4653860670745528333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 16 * (A035878 n : ℚ)

end

end A322844.P4653860670745528333

namespace A322844

/-- `n/16*A035878(n)` -/
def P4653860670745528333.Spec : Prop :=
  ∀ n, P4653860670745528333.a n = (A322844 n : ℚ)

end A322844

/-! ## A322844.P3153861350906103249

`A002415(n)+A006527(n)*A142150(n)`
-/

namespace A322844.P3153861350906103249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 n + A006527 n * A142150 n

end

end A322844.P3153861350906103249

namespace A322844

/-- `A002415(n)+A006527(n)*A142150(n)` -/
def P3153861350906103249.Spec : Prop :=
  ∀ n, P3153861350906103249.a n = A322844 n

end A322844

/-! ## A322844.P8799477263990948968

`A139594(n)-A006527(n)*A026741(n)`
-/

namespace A322844.P8799477263990948968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139594 n - A006527 n * A026741 n

end

end A322844.P8799477263990948968

namespace A322844

/-- `A139594(n)-A006527(n)*A026741(n)` -/
def P8799477263990948968.Spec : Prop :=
  ∀ n, P8799477263990948968.a n = A322844 n

end A322844

/-! ## A322844.P940662786365914018

`A007742(A002620(n))/Δ[A042963(n+1)]`
-/

namespace A322844.P940662786365914018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007742 (A002620 n).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A322844.P940662786365914018

namespace A322844

/-- `A007742(A002620(n))/Δ[A042963(n+1)]` -/
def P940662786365914018.Spec : Prop :=
  ∀ n, P940662786365914018.a n = (A322844 n : ℚ)

end A322844

/-! ## A322844.P15386059734953727195

`A035608(A007590(n))/3^(n%2)`
-/

namespace A322844.P15386059734953727195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035608 (A007590 n).toNat : ℚ) / (3 ^ (n % 2) : ℚ)

end

end A322844.P15386059734953727195

namespace A322844

/-- `A035608(A007590(n))/3^(n%2)` -/
def P15386059734953727195.Spec : Prop :=
  ∀ n, P15386059734953727195.a n = (A322844 n : ℚ)

end A322844

/-! ## A322844.P6000958795537566483

`A035608(A007590(n))/Δ[A042948(n)]`
-/

namespace A322844.P6000958795537566483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035608 (A007590 n).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A322844.P6000958795537566483

namespace A322844

/-- `A035608(A007590(n))/Δ[A042948(n)]` -/
def P6000958795537566483.Spec : Prop :=
  ∀ n, P6000958795537566483.a n = (A322844 n : ℚ)

end A322844

/-! ## A322844.P1797674189621093251

`A035608(A007590(n))/Δ[A042963(n+1)]`
-/

namespace A322844.P1797674189621093251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035608 (A007590 n).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A322844.P1797674189621093251

namespace A322844

/-- `A035608(A007590(n))/Δ[A042963(n+1)]` -/
def P1797674189621093251.Spec : Prop :=
  ∀ n, P1797674189621093251.a n = (A322844 n : ℚ)

end A322844

/-! ## A322844.P13478584459786333897

`A035608(A130519(2*n+1))/A010873(2*n+1)`
-/

namespace A322844.P13478584459786333897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035608 (A130519 (2 * n + 1)).toNat : ℚ) / (A010873 (2 * n + 1) : ℚ)

end

end A322844.P13478584459786333897

namespace A322844

/-- `A035608(A130519(2*n+1))/A010873(2*n+1)` -/
def P13478584459786333897.Spec : Prop :=
  ∀ n, P13478584459786333897.a n = (A322844 n : ℚ)

end A322844

/-!
# A322845: Lexicographically earliest sequence of distinct positive terms such that the sum of two consecutive terms has distinct digits in factorial base.

The programs for A322845, there is no canonical definition to state claims against.
-/

/-! ## A322845.P15641832108308220431

`A000523(2^A336478(n+1))`
-/

namespace A322845.P15641832108308220431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A336478 (n + 1) : ℤ))).toNat

end

end A322845.P15641832108308220431

/-! ## A322845.P16600693062835060713

`A003434(2^A336478(n+1))`
-/

namespace A322845.P16600693062835060713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A336478 (n + 1) : ℤ))).toNat

end

end A322845.P16600693062835060713

/-! ## A322845.P7629207330385739119

`A336478(n+1)+A000122(A048581(n))`
-/

namespace A322845.P7629207330385739119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336478 (n + 1) + A000122 (A048581 n).toNat

end

end A322845.P7629207330385739119

/-! ## A322845.P14294878329520650966

`A336478(n+1)+A151622(A063007(n))`
-/

namespace A322845.P14294878329520650966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336478 (n + 1) + A151622 (A063007 n).toNat

end

end A322845.P14294878329520650966

/-!
# A322846: Squarefree numbers whose prime indices have no equivalent primes.

The programs for A322846, there is no canonical definition to state claims against.
-/

/-! ## A322846.P5208680557454084066

`record[A007947(A322847(n+1))]`
-/

namespace A322846.P5208680557454084066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A322847 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322846.P5208680557454084066

/-! ## A322846.P12497734328004461079

`filter[A322847(n+1), A008966(#)]`
-/

namespace A322846.P12497734328004461079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A322846.P12497734328004461079

/-! ## A322846.P6151110212510163211

`record[A015052(A322847(n+1)²)]`
-/

namespace A322846.P6151110212510163211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A322847 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322846.P6151110212510163211

/-! ## A322846.P2135464347777336406

`record[A015053(A322847(n+1)²)]`
-/

namespace A322846.P2135464347777336406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A322847 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322846.P2135464347777336406

/-! ## A322846.P4601817390086205990

`record[A046692(A322847(n+1)²)]`
-/

namespace A322846.P4601817390086205990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046692 (A322847 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322846.P4601817390086205990

/-!
# A322847: Numbers whose prime indices have no equivalent primes.

The programs for A322847, there is no canonical definition to state claims against.
-/

/-! ## A322847.P2527984972825549685

`∪[A023883(n+1), A330236(n+1)]`
-/

namespace A322847.P2527984972825549685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330236 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A322847.P2527984972825549685

/-! ## A322847.P16754792986710065413

`lt[A065620(A059889(n+1)), A044816(3*n+1)]`
-/

namespace A322847.P16754792986710065413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (A059889 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044816 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A322847.P16754792986710065413

/-! ## A322847.P15775332194702341766

`∑[A061704(A327963(2*n+3))]`
-/

namespace A322847.P15775332194702341766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061704 (A327963 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322847.P15775332194702341766

/-! ## A322847.P15893608673210020031

`∑[A128616(A324876(2*(n+2))+1)!]`
-/

namespace A322847.P15893608673210020031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A128616 (A324876 (2 * (n + 2)) + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322847.P15893608673210020031

/-!
# A322848: 

The programs for A322848, there is no canonical definition to state claims against.
-/

/-! ## A322848.P14126584586563381364

`floor(exp(exp(n)))-1`
-/

namespace A322848.P14126584586563381364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (Real.exp (n : ℝ))⌋ - 1

end

end A322848.P14126584586563381364

/-!
# A322849: Number of times 2^k (for k < 4) appears as a substring within 2^n.

The programs for A322849, there is no canonical definition to state claims against.
-/

/-! ## A322849.P16449607389265273592

`A065712(n)+A065710(n)+A065715(n)+A065719(n)`
-/

namespace A322849.P16449607389265273592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065712 n + A065710 n + A065715 n + A065719 n

end

end A322849.P16449607389265273592

/-! ## A322849.P17834098047143567912

`∑{digits}[2^n, A342704(#+1)]`
-/

namespace A322849.P17834098047143567912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A342704 (x + 1)).sum

end

end A322849.P17834098047143567912

/-! ## A322849.P6642721625493509864

`∑{digits}[A000079(n), A209229(#)]`
-/

namespace A322849.P6642721625493509864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A209229 x).sum

end

end A322849.P6642721625493509864

/-! ## A322849.P8772731292403364103

`∑{digits}[2^n, A077051(A313224(#)+1)]`
-/

namespace A322849.P8772731292403364103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A077051 (A313224 x + 1).toNat).sum

end

end A322849.P8772731292403364103

/-! ## A322849.P6333172302596857043

`∑{digits}[a(n-1)+a(n-1), A163510(A000120(#)+1)]` with `a(0)=1`
-/

namespace A322849.P6333172302596857043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A163510 (A000120 x + 1).toNat).sum

end

end A322849.P6333172302596857043

/-! ## A322849.P16209327085298141453

`∑{digits}[A000079(n), A164349(A215024(#))]`
-/

namespace A322849.P16209327085298141453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A164349 (A215024 x).toNat).sum

end

end A322849.P16209327085298141453

/-!
# A322851: a(n) = floor(2^(2^(n/2))-1).

The programs for A322851, the canonical program `A322851.P12347649903755545308` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322851 has offset 0).

The definition of A322851 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2^2^(n/2)-1)` (program `A322851.P12347649903755545308`, by `A322851.P12347649903755545308.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A322851.P12347649903755545308

`floor(2^2^(n/2)-1)`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A322851

/-- `floor(2^2^(n/2)-1)` -/
def P12347649903755545308.Spec : Prop :=
  ∀ n, P12347649903755545308.a n = A322851 n

theorem P12347649903755545308.correct : P12347649903755545308.Spec := by
  intro n
  simp only [A322851]

end A322851

/-! ## A322851.P4870536854338234904

`A175268(2^n)-1`
-/

namespace A322851.P4870536854338234904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175268 (2 ^ n) - 1

end

end A322851.P4870536854338234904

namespace A322851

/-- `A175268(2^n)-1` -/
def P4870536854338234904.Spec : Prop :=
  ∀ n, P4870536854338234904.a n = A322851 n

end A322851

/-! ## A322851.P14008058413164707707

`A269170(A327424(n))`
-/

namespace A322851.P14008058413164707707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269170 (A327424 n).toNat

end

end A322851.P14008058413164707707

namespace A322851

/-- `A269170(A327424(n))` -/
def P14008058413164707707.Spec : Prop :=
  ∀ n, P14008058413164707707.a n = A322851 n

end A322851

/-!
# A322852: a(n) = floor(e^(e^(n/e))-1).

The programs for A322852, the canonical program `A322852.P4735716821594581138` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322852 has offset 0).

The definition of A322852 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(e^e^(n/e)-1)` (program `A322852.P4735716821594581138`, by `A322852.P4735716821594581138.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A322852.P4735716821594581138

`floor(e^e^(n/e)-1)`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A322852

/-- `floor(e^e^(n/e)-1)` -/
def P4735716821594581138.Spec : Prop :=
  ∀ n, P4735716821594581138.a n = A322852 n

theorem P4735716821594581138.correct : P4735716821594581138.Spec := by
  intro n
  simp only [A322852]

end A322852

/-! ## A322852.P9898991222348649137

`A107037(∑[∑[A275551(n)]])`
-/

namespace A322852.P9898991222348649137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275551 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107037 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A322852.P9898991222348649137

namespace A322852

/-- `A107037(∑[∑[A275551(n)]])` -/
def P9898991222348649137.Spec : Prop :=
  ∀ n, P9898991222348649137.a n = A322852 n

end A322852

/-!
# A322853: Number of compositions (ordered partitions) of n into pentagonal pyramidal numbers (A002411).

The programs for A322853, there is no canonical definition to state claims against.
-/

/-! ## A322853.P10935566740228163670

`A185284(2*n+1)+A005708(n)`
-/

namespace A322853.P10935566740228163670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (2 * n + 1) + A005708 n

end

end A322853.P10935566740228163670

/-! ## A322853.P14630644745677292300

`A025441(A304334(n))+A005708(n)`
-/

namespace A322853.P14630644745677292300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 (A304334 n).toNat + A005708 n

end

end A322853.P14630644745677292300

/-! ## A322853.P17766153111668859959

`A316869(A038475(n+2))+A005708(n)`
-/

namespace A322853.P17766153111668859959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316869 (A038475 (n + 2)).toNat + A005708 n

end

end A322853.P17766153111668859959

/-! ## A322853.P7036916043100903686

`A340999(A005708(n+3))+A005708(n)`
-/

namespace A322853.P7036916043100903686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340999 ((A005708 (n + 3)).toNat + 204) + A005708 n

end

end A322853.P7036916043100903686

/-! ## A322853.P18305324086097558637

`A185284(A367637(n))+A017900(n+6)`
-/

namespace A322853.P18305324086097558637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A367637 n).toNat + A017900 (n + 6)

end

end A322853.P18305324086097558637

/-!
# A322854: Number of compositions (ordered partitions) of n into hexagonal pyramidal numbers (A002412).

The programs for A322854, there is no canonical definition to state claims against.
-/

/-! ## A322854.P18025671103465216215

`A031286(A184945(n))+A005709(n)`
-/

namespace A322854.P18025671103465216215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (A184945 n).toNat + A005709 n

end

end A322854.P18025671103465216215

/-! ## A322854.P6565726514757797567

`A109527(A144331(n))+A005709(n)`
-/

namespace A322854.P6565726514757797567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109527 (A144331 n).toNat + A005709 n

end

end A322854.P6565726514757797567

/-!
# A322855: Number of compositions (ordered partitions) of n into heptagonal pyramidal numbers (A002413).

The programs for A322855, there is no canonical definition to state claims against.
-/

/-! ## A322855.P917780056674133107

`A316863(A022166(n+3))+A023358(n)`
-/

namespace A322855.P917780056674133107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A022166 (n + 3)).toNat + A023358 n

end

end A322855.P917780056674133107

/-! ## A322855.P17464089036669517243

`A151795(A151685(n))+A005710(n)`
-/

namespace A322855.P17464089036669517243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151795 (A151685 n).toNat + A005710 n

end

end A322855.P17464089036669517243

/-! ## A322855.P10704653834105868768

`A151795(A151685(n))+A023358(n)`
-/

namespace A322855.P10704653834105868768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151795 (A151685 n).toNat + A023358 n

end

end A322855.P10704653834105868768

/-! ## A322855.P1070757996916090193

`A096587(A096587(n)!)+A023358(n)`
-/

namespace A322855.P1070757996916090193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096587 (Nat.factorial (A096587 n).toNat) + A023358 n

end

end A322855.P1070757996916090193

/-! ## A322855.P1201948595219834357

`A033665(A056201(n+1))+A023358(n)`
-/

namespace A322855.P1201948595219834357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033665 (A056201 (n + 1)).toNat + A023358 n

end

end A322855.P1201948595219834357

/-!
# A322856: Number of compositions (ordered partitions) of n into octagonal pyramidal numbers (A002414).

The programs for A322856, there is no canonical definition to state claims against.
-/

/-! ## A322856.P992871843765330695

`∑[A017903(n)%A089450(n+1)]`
-/

namespace A322856.P992871843765330695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017903 n) (A089450 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A322856.P992871843765330695

/-! ## A322856.P14537351724003378393

`∑[A017903(n)]%A133970(n+1)`
-/

namespace A322856.P14537351724003378393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A133970 (n + 1))

end

end A322856.P14537351724003378393

/-! ## A322856.P1383690120720417265

`A000188(∑[A017903(n)]²)`
-/

namespace A322856.P1383690120720417265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A322856.P1383690120720417265

/-! ## A322856.P14894638733932618089

`A000196(∑[A017903(n)]²)`
-/

namespace A322856.P14894638733932618089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A322856.P14894638733932618089

/-! ## A322856.P18357380210951002178

`A033677(A017903(n+9)²)`
-/

namespace A322856.P18357380210951002178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A017903 (n + 9) ^ 2).toNat

end

end A322856.P18357380210951002178

/-!
# A322857: a(1) = 1; a(n) = sum of exponential unitary divisors of n for n > 1.

The programs for A322857, there is no canonical definition to state claims against.
-/

/-! ## A322857.P10576158135032154497

`A057723(n+1)-A396549(n+1)`
-/

namespace A322857.P10576158135032154497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (n + 1) - A396549 (n + 1)

end

end A322857.P10576158135032154497

/-!
# A322859: The number of permutations p of {1,...,n} such that the numbers 2p(1)-1,...,2p(n)-n are all distinct.

The programs for A322859, there is no canonical definition to state claims against.
-/

/-! ## A322859.P13096020721934615139

`floor(sqrt(A005940((n+1)!)))`
-/

namespace A322859.P13096020721934615139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A005940 (Nat.factorial (n + 1)))

end

end A322859.P13096020721934615139

/-! ## A322859.P12489244607439715449

`A032544(A072986(n+1))`
-/

namespace A322859.P12489244607439715449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032544 (A072986 (n + 1)).toNat

end

end A322859.P12489244607439715449

/-! ## A322859.P17257021518393017857

`A100143(A363071(n+1))`
-/

namespace A322859.P17257021518393017857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100143 (A363071 (n + 1)).toNat

end

end A322859.P17257021518393017857

/-!
# A322860: Characteristic function of practical numbers, A005153: If n is in A005153, a(n) = 1, otherwise a(n) = 0.

The programs for A322860, there is no canonical definition to state claims against.
-/

/-! ## A322860.P4806529928054132310

`round(acot(A210445(n+1)))`
-/

namespace A322860.P4806529928054132310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A210445 (n + 1) : ℝ))

end

end A322860.P4806529928054132310

/-! ## A322860.P6053648795476847090

`char[A005153(n+1)-1]`
-/

namespace A322860.P6053648795476847090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A322860.P6053648795476847090

/-! ## A322860.P16383344220328653778

`C(n+1, A275121(n+1))`
-/

namespace A322860.P16383344220328653778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A275121 (n + 1)).toNat

end

end A322860.P16383344220328653778

/-! ## A322860.P708064752073703194

`C(A327832(n+1), n+1)`
-/

namespace A322860.P708064752073703194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A327832 (n + 1)).toNat (n + 1)

end

end A322860.P708064752073703194

/-! ## A322860.P610473907526516181

`char[record[n%A225561(n+1)+1]-1]`
-/

namespace A322860.P610473907526516181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A225561 (n + 1)) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A322860.P610473907526516181

/-! ## A322860.P6326175587477157748

`A063524(A210445(n+1))`
-/

namespace A322860.P6326175587477157748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A210445 (n + 1)).toNat

end

end A322860.P6326175587477157748

/-! ## A322860.P7952040119691424010

`A000007(A210445(n+1)-1)`
-/

namespace A322860.P7952040119691424010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A210445 (n + 1) - 1).toNat

end

end A322860.P7952040119691424010

/-! ## A322860.P12523509478637793089

`A341629(n+2-A327832(n+1))`
-/

namespace A322860.P12523509478637793089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341629 ((n + 2 : ℤ) - A327832 (n + 1)).toNat

end

end A322860.P12523509478637793089

/-! ## A322860.P10637586731241862010

`A341629((n+1)/A327832(n+1))`
-/

namespace A322860.P10637586731241862010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341629 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A327832 (n + 1) : ℚ))).toNat

end

end A322860.P10637586731241862010

/-! ## A322860.P4724210965526071693

`C(A119347(n+1), A000203(n+1))`
-/

namespace A322860.P4724210965526071693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A119347 (n + 1)).toNat (A000203 (n + 1)).toNat

end

end A322860.P4724210965526071693

/-! ## A322860.P2321188992141796692

`C(A237290(n+1), A184387(n+1))`
-/

namespace A322860.P2321188992141796692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A237290 (n + 1)).toNat (A184387 (n + 1)).toNat

end

end A322860.P2321188992141796692

/-! ## A322860.P10199255793130770309

`A241273(a(n-1))^(A210445(n+1)-1)` with `a(0)=1`
-/

namespace A322860.P10199255793130770309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A241273 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) ^ (A210445 (n + 1) - 1 : ℤ)

end

end A322860.P10199255793130770309

/-! ## A322860.P1217035251795948541

`∑{d}[n+1, A008683(#)*A364767((n+1)/#)]`
-/

namespace A322860.P1217035251795948541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A364767 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322860.P1217035251795948541

/-! ## A322860.P7802760077794424548

`char[A275121(n+1)-1]`
-/

namespace A322860.P7802760077794424548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275121 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A322860.P7802760077794424548

/-! ## A322860.P539643916210450351

`char[A327832(n+1)-1]`
-/

namespace A322860.P539643916210450351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A322860.P539643916210450351

/-! ## A322860.P9237920675298583478

`floor(acot(A279048(n+1)))`
-/

namespace A322860.P9237920675298583478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A279048 (n + 1) : ℝ)⌋

end

end A322860.P9237920675298583478

/-! ## A322860.P14488967798187534937

`A000007(A279048(n+1))`
-/

namespace A322860.P14488967798187534937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A279048 (n + 1)).toNat

end

end A322860.P14488967798187534937

/-! ## A322860.P13534606329704562832

`∏{d}[A279048(n+1), A279048(#)]`
-/

namespace A322860.P13534606329704562832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A279048 d

end

end A322860.P13534606329704562832

/-! ## A322860.P3538948013562308742

`C(A210445(2*(n+1)), A210445(n+1))`
-/

namespace A322860.P3538948013562308742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A210445 (2 * (n + 1))).toNat (A210445 (n + 1)).toNat

end

end A322860.P3538948013562308742

/-! ## A322860.P15757147943844013816

`A279048(A279081(n+1))^A279048(n+1)`
-/

namespace A322860.P15757147943844013816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279048 (A279081 (n + 1)).toNat : ℚ) ^ (A279048 (n + 1) : ℤ)

end

end A322860.P15757147943844013816

/-!
# A322861: Lexicographically earliest such sequence a that a(i) = a(j) => A278222(A285330(i)) = A278222(A285330(j)) for all i, j.

The programs for A322861, there is no canonical definition to state claims against.
-/

/-! ## A322861.P9808629291507576636

`A286622(A285330(n+1))`
-/

namespace A322861.P9808629291507576636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 (A285330 (n + 1)).toNat

end

end A322861.P9808629291507576636

/-! ## A322861.P14879751242246982773

`∏{e}[A278222(A285330(n+1)), A000040(#)]`
-/

namespace A322861.P14879751242246982773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A285330 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A322861.P14879751242246982773

/-! ## A322861.P5031256349907900621

`A286589(A285330(n+1))`
-/

namespace A322861.P5031256349907900621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286589 (A285330 (n + 1)).toNat

end

end A322861.P5031256349907900621

/-! ## A322861.P4643189350547294685

`A246029(A285330(n+1))`
-/

namespace A322861.P4643189350547294685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (A285330 (n + 1)).toNat

end

end A322861.P4643189350547294685

/-! ## A322861.P6939284098920605801

`A099427(A005247(n+1))`
-/

namespace A322861.P6939284098920605801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099427 (A005247 (n + 1)).toNat

end

end A322861.P6939284098920605801

/-!
# A322862: a(n) = A000120(A285330(n)).

The programs for A322862, there is no canonical definition to state claims against.
-/

/-! ## A322862.P13243695182885916601

`A000120(A285330(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322862.P13243695182885916601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A285330 (n + 1)).toNat

end

end A322862.P13243695182885916601

/-! ## A322862.P777202917791032251

`A207328(gcd(A049084(n+1), A285330(n+1)))`
-/

namespace A322862.P777202917791032251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207328 (Int.gcd (A049084 (n + 1)) (A285330 (n + 1)))

end

end A322862.P777202917791032251

/-! ## A322862.P10887317489606140579

`A151878(n)!*A056239(A322861(n+1))`
-/

namespace A322862.P10887317489606140579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A151878 n).toNat : ℤ) * A056239 (A322861 (n + 1)).toNat

end

end A322862.P10887317489606140579

/-! ## A322862.P2989659593899242178

`A056239(A322861(n+1))%∑[A326495(n)]`
-/

namespace A322862.P2989659593899242178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326495 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A322861 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322862.P2989659593899242178

/-! ## A322862.P16865064237758491795

`A056239(A322861(n+1))*A344918(A276009(n))`
-/

namespace A322862.P16865064237758491795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A322861 (n + 1)).toNat * A344918 (A276009 n).toNat

end

end A322862.P16865064237758491795

/-! ## A322862.P18268703541353074053

`A056594(A291448(n))+A056239(A322861(n+1))`
-/

namespace A322862.P18268703541353074053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A291448 n).toNat + A056239 (A322861 (n + 1)).toNat

end

end A322862.P18268703541353074053

/-! ## A322862.P13541634299804751903

`A001222(A158238(n+1))*A056239(A322861(n+1))`
-/

namespace A322862.P13541634299804751903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A158238 (n + 1)).toNat * A056239 (A322861 (n + 1)).toNat

end

end A322862.P13541634299804751903

/-!
# A322863: Permutation of natural numbers: a(0) = 1; for n >= 1, a(n) = A005940(1+A122111(n)).

The programs for A322863, there is no canonical definition to state claims against.
-/

/-! ## A322863.P14293106700272892219

`A005940(∑{d}[n, A329034(#)]+1)`
-/

namespace A322863.P14293106700272892219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (∑ d ∈ Nat.divisors (f1 n), A329034 d + 1).toNat

end

end A322863.P14293106700272892219

/-! ## A322863.P12068438095993376609

`A005940(A322864(A005940(n+1))+1)`
-/

namespace A322863.P12068438095993376609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A322864 (A005940 (n + 1)).toNat + 1).toNat

end

end A322863.P12068438095993376609

/-!
# A322864: Permutation of nonnegative integers: a(1) = 0; for n > 1, a(n) = A122111(A156552(n)).

The programs for A322864, there is no canonical definition to state claims against.
-/

/-! ## A322864.P3997892379074719401

`∑{d}[A156552(n+1), A329034(#)]`
-/

namespace A322864.P3997892379074719401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A329034 d

end

end A322864.P3997892379074719401

/-! ## A322864.P11583335712630325013

`∑{d}[∑{d}[n+1, A297112(#)], A329034(#)]`
-/

namespace A322864.P11583335712630325013
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A297112 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A329034 d

end

end A322864.P11583335712630325013

/-! ## A322864.P9558489050812019883

`∑{d}[A269388(A302025(n+1)), A329034(#)]`
-/

namespace A322864.P9558489050812019883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269388 (A302025 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A329034 d

end

end A322864.P9558489050812019883

/-! ## A322864.P13768237535730777413

`∑{d}[A048675(A332462(n+1)), A329034(#)]`
-/

namespace A322864.P13768237535730777413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A332462 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A329034 d

end

end A322864.P13768237535730777413

/-! ## A322864.P14773925098275468806

`A156552(A322863(A156552(n+1)))`
-/

namespace A322864.P14773925098275468806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A322863 (A156552 (n + 1)).toNat).toNat

end

end A322864.P14773925098275468806

/-!
# A322865: a(n) = A000265(A122111(n)).

The programs for A322865, the canonical program `A322865.P5755806288715384124` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322865 has offset 1).

The definition of A322865 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A322865.P9386340974912777534

`A122111(A322820(n+1))`
-/

namespace A322865.P9386340974912777534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A322820 (n + 1)).toNat

end

end A322865.P9386340974912777534

namespace A322865

/-- `A122111(A322820(n+1))` -/
def P9386340974912777534.Spec : Prop :=
  ∀ n, P9386340974912777534.a n = A322865 (n + 1)

end A322865

/-! ## A322865.P5755806288715384124

`A000265(A122111(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A322865

/-- `A000265(A122111(n+1))` -/
def P5755806288715384124.Spec : Prop :=
  ∀ n, P5755806288715384124.a n = A322865 (n + 1)

theorem P5755806288715384124.correct : P5755806288715384124.Spec := by
  intro n
  simp only [A322865, Nat.add_sub_cancel]

end A322865

/-! ## A322865.P5218766183821864778

`2*A243506(A052126(n+1))-1`
-/

namespace A322865.P5218766183821864778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A243506 (A052126 (n + 1)).toNat - 1

end

end A322865.P5218766183821864778

namespace A322865

/-- `2*A243506(A052126(n+1))-1` -/
def P5218766183821864778.Spec : Prop :=
  ∀ n, P5218766183821864778.a n = A322865 (n + 1)

end A322865

/-! ## A322865.P10232825869619797889

`A122111(A253560(A052126(n+1)))`
-/

namespace A322865.P10232825869619797889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A253560 (A052126 (n + 1)).toNat).toNat

end

end A322865.P10232825869619797889

namespace A322865

/-- `A122111(A253560(A052126(n+1)))` -/
def P10232825869619797889.Spec : Prop :=
  ∀ n, P10232825869619797889.a n = A322865 (n + 1)

end A322865

/-! ## A322865.P13794561510029200564

`A122111(A253560(n+1-A171462(n+1)))`
-/

namespace A322865.P13794561510029200564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A253560 ((n + 1 : ℤ) - A171462 (n + 1)).toNat).toNat

end

end A322865.P13794561510029200564

namespace A322865

/-- `A122111(A253560(n+1-A171462(n+1)))` -/
def P13794561510029200564.Spec : Prop :=
  ∀ n, P13794561510029200564.a n = A322865 (n + 1)

end A322865

/-! ## A322865.P9731641119031858134

`A122111(A253560((n+1)/A006530(n+1)))`
-/

namespace A322865.P9731641119031858134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A253560 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat).toNat

end

end A322865.P9731641119031858134

namespace A322865

/-- `A122111(A253560((n+1)/A006530(n+1)))` -/
def P9731641119031858134.Spec : Prop :=
  ∀ n, P9731641119031858134.a n = A322865 (n + 1)

end A322865

/-! ## A322865.P1037279680110098333

`A122111(n+1)/2^A241917(n+1)`
-/

namespace A322865.P1037279680110098333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122111 (n + 1) : ℚ) / (2 : ℚ) ^ (A241917 (n + 1) : ℤ)

end

end A322865.P1037279680110098333

namespace A322865

/-- `A122111(n+1)/2^A241917(n+1)` -/
def P1037279680110098333.Spec : Prop :=
  ∀ n, P1037279680110098333.a n = (A322865 (n + 1) : ℚ)

end A322865

/-! ## A322865.P11264089400327193972

`A003961(A122111((n+1)/A006530(n+1)))`
-/

namespace A322865.P11264089400327193972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A122111 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat).toNat

end

end A322865.P11264089400327193972

namespace A322865

/-- `A003961(A122111((n+1)/A006530(n+1)))` -/
def P11264089400327193972.Spec : Prop :=
  ∀ n, P11264089400327193972.a n = A322865 (n + 1)

end A322865

/-! ## A322865.P7763057736893674168

`gcd(A122111(n+1), A224085(n))`
-/

namespace A322865.P7763057736893674168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122111 (n + 1)) (A224085 n)

end

end A322865.P7763057736893674168

namespace A322865

/-- `gcd(A122111(n+1), A224085(n))` -/
def P7763057736893674168.Spec : Prop :=
  ∀ n, (P7763057736893674168.a n : ℤ) = A322865 (n + 1)

end A322865

/-! ## A322865.P1379775181634823699

`gcd(A046983(n), A122111(n+1))`
-/

namespace A322865.P1379775181634823699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046983 n) (A122111 (n + 1))

end

end A322865.P1379775181634823699

namespace A322865

/-- `gcd(A046983(n), A122111(n+1))` -/
def P1379775181634823699.Spec : Prop :=
  ∀ n, (P1379775181634823699.a n : ℤ) = A322865 (n + 1)

end A322865

/-!
# A322866: Lexicographically earliest such sequence a that a(i) = a(j) => A046523(A322863(i)) = A046523(A322863(j)) for all i, j.

The programs for A322866, there is no canonical definition to state claims against.
-/

/-! ## A322866.P16436433689199794517

`A138467(A322826(n+1))%record[A039656(n)]`
-/

namespace A322866.P16436433689199794517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138467 (A322826 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A322866.P16436433689199794517

/-! ## A322866.P3385698378068296937

`A093178(2*(A005993(n)-1))*A138467(A322826(n+1))`
-/

namespace A322866.P3385698378068296937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (2 * (A005993 n - 1)).toNat * A138467 (A322826 (n + 1)).toNat

end

end A322866.P3385698378068296937

/-! ## A322866.P9787257219211403034

`A138467(A322826(n+1))+A008437(A008423(n))`
-/

namespace A322866.P9787257219211403034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138467 (A322826 (n + 1)).toNat + A008437 (A008423 n).toNat

end

end A322866.P9787257219211403034

/-! ## A322866.P14194404247506729146

`∏{e}[A258882(A331188(n+1)), #]`
-/

namespace A322866.P14194404247506729146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258882 (A331188 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A322866.P14194404247506729146

/-! ## A322866.P5173097651936347894

`∑{digits}[A333226(A344699(n+1)), #]`
-/

namespace A322866.P5173097651936347894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333226 (A344699 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A322866.P5173097651936347894

/-!
# A322867: a(n) = A000120(A122111(n)).

The programs for A322867, the canonical program `A322867.P15707704793658103334` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322867 has offset 1).

The definition of A322867 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A322867.P13290411255162024779

`A000120(A322865(n+1))`
-/

namespace A322867.P13290411255162024779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A322865 (n + 1)).toNat

end

end A322867.P13290411255162024779

namespace A322867

/-- `A000120(A322865(n+1))` -/
def P13290411255162024779.Spec : Prop :=
  ∀ n, P13290411255162024779.a n = A322867 (n + 1)

end A322867

/-! ## A322867.P16785233337149774401

`A001222(A322863(n+1))`
-/

namespace A322867.P16785233337149774401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A322863 (n + 1)).toNat

end

end A322867.P16785233337149774401

namespace A322867

/-- `A001222(A322863(n+1))` -/
def P16785233337149774401.Spec : Prop :=
  ∀ n, P16785233337149774401.a n = A322867 (n + 1)

end A322867

/-! ## A322867.P15707704793658103334

`A000120(A122111(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A322867

/-- `A000120(A122111(n+1))` -/
def P15707704793658103334.Spec : Prop :=
  ∀ n, P15707704793658103334.a n = A322867 (n + 1)

theorem P15707704793658103334.correct : P15707704793658103334.Spec := by
  intro n
  simp only [A322867, Nat.add_sub_cancel]

end A322867

/-! ## A322867.P15718816860688809892

`A323174(n+1)-A323167(n+1)`
-/

namespace A322867.P15718816860688809892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323174 (n + 1) - A323167 (n + 1)

end

end A322867.P15718816860688809892

namespace A322867

/-- `A323174(n+1)-A323167(n+1)` -/
def P15718816860688809892.Spec : Prop :=
  ∀ n, P15718816860688809892.a n = A322867 (n + 1)

end A322867

/-! ## A322867.P9576330370094783879

`∑{d}[A322865(n+1), A297115(#)]`
-/

namespace A322867.P9576330370094783879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297115 d

end

end A322867.P9576330370094783879

namespace A322867

/-- `∑{d}[A322865(n+1), A297115(#)]` -/
def P9576330370094783879.Spec : Prop :=
  ∀ n, P9576330370094783879.a n = A322867 (n + 1)

end A322867

/-! ## A322867.P12052262737239777533

`dr(A139709(A322865(n+1)+A000007(n)))`
-/

namespace A322867.P12052262737239777533
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A139709 (A322865 (n + 1) + A000007 n).toNat)

end

end A322867.P12052262737239777533

namespace A322867

/-- `dr(A139709(A322865(n+1)+A000007(n)))` -/
def P12052262737239777533.Spec : Prop :=
  ∀ n, (P12052262737239777533.a n : ℤ) = A322867 (n + 1)

end A322867

/-! ## A322867.P12024959612254619043

`dr(A139709(2*A322865(n+1)))`
-/

namespace A322867.P12024959612254619043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A139709 (2 * A322865 (n + 1)).toNat)

end

end A322867.P12024959612254619043

namespace A322867

/-- `dr(A139709(2*A322865(n+1)))` -/
def P12024959612254619043.Spec : Prop :=
  ∀ n, (P12024959612254619043.a n : ℤ) = A322867 (n + 1)

end A322867

/-! ## A322867.P10717250043809907836

`∑{e}[A322863(n+1), #]`
-/

namespace A322867.P10717250043809907836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322863 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A322867.P10717250043809907836

namespace A322867

/-- `∑{e}[A322863(n+1), #]` -/
def P10717250043809907836.Spec : Prop :=
  ∀ n, (P10717250043809907836.a n : ℤ) = A322867 (n + 1)

end A322867

/-! ## A322867.P12658900056919017918

`A064097(∏{e}[A322863(n+1), 2^#])`
-/

namespace A322867.P12658900056919017918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, 2 ^ Nat.factorization (f1 n).natAbs p)

end

end A322867.P12658900056919017918

namespace A322867

/-- `A064097(∏{e}[A322863(n+1), 2^#])` -/
def P12658900056919017918.Spec : Prop :=
  ∀ n, P12658900056919017918.a n = A322867 (n + 1)

end A322867

/-! ## A322867.P17843087730486155495

`∏{e}[∏{e}[A322863(n+1), A000079(#)], #]`
-/

namespace A322867.P17843087730486155495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322863 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A000079 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A322867.P17843087730486155495

namespace A322867

/-- `∏{e}[∏{e}[A322863(n+1), A000079(#)], #]` -/
def P17843087730486155495.Spec : Prop :=
  ∀ n, (P17843087730486155495.a n : ℤ) = A322867 (n + 1)

end A322867

/-!
# A322868: Lexicographically earliest such sequence a that a(i) = a(j) => A278222(A048675(i)) = A278222(A048675(j)) for all i, j.

The programs for A322868, there is no canonical definition to state claims against.
-/

/-! ## A322868.P13955973091066125682

`A335424(A097248(n+1))`
-/

namespace A322868.P13955973091066125682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335424 (A097248 (n + 1)).toNat

end

end A322868.P13955973091066125682

/-! ## A322868.P17943366111978644050

`A166469(A097248(n+1))%record[A260294(n+2)]`
-/

namespace A322868.P17943366111978644050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260294 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166469 (A097248 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A322868.P17943366111978644050

/-! ## A322868.P13597585825361459985

`A166469(A097248(n+1))+A010051(A291795(n+1))`
-/

namespace A322868.P13597585825361459985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166469 (A097248 (n + 1)).toNat + A010051 (A291795 (n + 1)).toNat

end

end A322868.P13597585825361459985

/-! ## A322868.P10803736312180830726

`A166469(A097248(n+1))+A154271(A161612(n+1))`
-/

namespace A322868.P10803736312180830726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166469 (A097248 (n + 1)).toNat + A154271 (A161612 (n + 1)).toNat

end

end A322868.P10803736312180830726

/-! ## A322868.P16525761555900233287

`A166469(A097248(n+1))+A010059(2^A059127(n))`
-/

namespace A322868.P16525761555900233287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166469 (A097248 (n + 1)).toNat + A010059 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A059127 n : ℤ))).toNat

end

end A322868.P16525761555900233287

/-! ## A322868.P12788241052571287227

`A002654(2^A059127(n))*A166469(A097248(n+1))`
-/

namespace A322868.P12788241052571287227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A059127 n : ℤ))).toNat * A166469 (A097248 (n + 1)).toNat

end

end A322868.P12788241052571287227

/-! ## A322868.P12936115368844190429

`A286589(A322821(n+1))`
-/

namespace A322868.P12936115368844190429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286589 (A322821 (n + 1)).toNat

end

end A322868.P12936115368844190429

/-! ## A322868.P2153193273843264229

`A166469(A097248((n+1)²))`
-/

namespace A322868.P2153193273843264229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166469 (A097248 ((n + 1) ^ 2)).toNat

end

end A322868.P2153193273843264229

/-! ## A322868.P281370890902666922

`A322861(A097248(A097248(n+1)²))`
-/

namespace A322868.P281370890902666922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322861 (A097248 (A097248 (n + 1) ^ 2).toNat).toNat

end

end A322868.P281370890902666922

/-! ## A322868.P13686642139198983734

`A245564(A322821(n+1))`
-/

namespace A322868.P13686642139198983734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245564 (A322821 (n + 1)).toNat

end

end A322868.P13686642139198983734

/-!
# A322869: a(n) = A000120(A048675(n)).

The programs for A322869, the canonical program `A322869.P13858766443451224919` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322869 has offset 1).

The definition of A322869 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A322869.P8298341942135499951

`A001221(A097248(n+1))`
-/

namespace A322869.P8298341942135499951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A097248 (n + 1)).toNat

end

end A322869.P8298341942135499951

namespace A322869

/-- `A001221(A097248(n+1))` -/
def P8298341942135499951.Spec : Prop :=
  ∀ n, P8298341942135499951.a n = A322869 (n + 1)

end A322869

/-! ## A322869.P5940152108780367793

`A000120(A322821(n+1))`
-/

namespace A322869.P5940152108780367793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A322821 (n + 1)).toNat

end

end A322869.P5940152108780367793

namespace A322869

/-- `A000120(A322821(n+1))` -/
def P5940152108780367793.Spec : Prop :=
  ∀ n, P5940152108780367793.a n = A322869 (n + 1)

end A322869

/-! ## A322869.P13858766443451224919

`A000120(A048675(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A322869

/-- `A000120(A048675(n+1))` -/
def P13858766443451224919.Spec : Prop :=
  ∀ n, P13858766443451224919.a n = A322869 (n + 1)

theorem P13858766443451224919.correct : P13858766443451224919.Spec := by
  intro n
  simp only [A322869, Nat.add_sub_cancel]

end A322869

/-! ## A322869.P6550563854770663018

`∑{e}[A097248(n+1), #]`
-/

namespace A322869.P6550563854770663018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097248 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A322869.P6550563854770663018

namespace A322869

/-- `∑{e}[A097248(n+1), #]` -/
def P6550563854770663018.Spec : Prop :=
  ∀ n, (P6550563854770663018.a n : ℤ) = A322869 (n + 1)

end A322869

/-! ## A322869.P13899484717802778793

`floor(log(A322868(n+1)²))`
-/

namespace A322869.P13899484717802778793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A322868 (n + 1) ^ 2 : ℝ)⌋

end

end A322869.P13899484717802778793

namespace A322869

/-- `floor(log(A322868(n+1)²))` -/
def P13899484717802778793.Spec : Prop :=
  ∀ n, P13899484717802778793.a n = A322869 (n + 1)

end A322869

/-! ## A322869.P8993612057025736751

`A072047(A322815(n+1))`
-/

namespace A322869.P8993612057025736751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072047 (A322815 (n + 1)).toNat

end

end A322869.P8993612057025736751

namespace A322869

/-- `A072047(A322815(n+1))` -/
def P8993612057025736751.Spec : Prop :=
  ∀ n, P8993612057025736751.a n = A322869 (n + 1)

end A322869

/-! ## A322869.P3937374645715644671

`A322862(A097248(2*n+1-n))`
-/

namespace A322869.P3937374645715644671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322862 (A097248 (2 * n + 1 - n)).toNat

end

end A322869.P3937374645715644671

namespace A322869

/-- `A322862(A097248(2*n+1-n))` -/
def P3937374645715644671.Spec : Prop :=
  ∀ n, P3937374645715644671.a n = A322869 (n + 1)

end A322869

/-! ## A322869.P11451552139758210551

`∑{p}[A097248(n+1), #-A000010(#)]`
-/

namespace A322869.P11451552139758210551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - A000010 p)

end

end A322869.P11451552139758210551

namespace A322869

/-- `∑{p}[A097248(n+1), #-A000010(#)]` -/
def P11451552139758210551.Spec : Prop :=
  ∀ n, P11451552139758210551.a n = A322869 (n + 1)

end A322869

/-! ## A322869.P11985880683369725113

`∑{p}[A097248(n+1), #/A097248(#)]`
-/

namespace A322869.P11985880683369725113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097248 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℚ) / (A097248 p : ℚ)

end

end A322869.P11985880683369725113

namespace A322869

/-- `∑{p}[A097248(n+1), #/A097248(#)]` -/
def P11985880683369725113.Spec : Prop :=
  ∀ n, P11985880683369725113.a n = (A322869 (n + 1) : ℚ)

end A322869

/-! ## A322869.P15980700572837678236

`A001222(A097248(n+1)²)/2`
-/

namespace A322869.P15980700572837678236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A097248 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A322869.P15980700572837678236

namespace A322869

/-- `A001222(A097248(n+1)²)/2` -/
def P15980700572837678236.Spec : Prop :=
  ∀ n, P15980700572837678236.a n = (A322869 (n + 1) : ℚ)

end A322869

/-! ## A322869.P5913954579164358650

`A001222(A097248((n+1)²))`
-/

namespace A322869.P5913954579164358650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A097248 ((n + 1) ^ 2)).toNat

end

end A322869.P5913954579164358650

namespace A322869

/-- `A001222(A097248((n+1)²))` -/
def P5913954579164358650.Spec : Prop :=
  ∀ n, P5913954579164358650.a n = A322869 (n + 1)

end A322869

/-! ## A322869.P8364897364259204524

`A046660(A097248(n+1)²)`
-/

namespace A322869.P8364897364259204524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A097248 (n + 1) ^ 2).toNat

end

end A322869.P8364897364259204524

namespace A322869

/-- `A046660(A097248(n+1)²)` -/
def P8364897364259204524.Spec : Prop :=
  ∀ n, P8364897364259204524.a n = A322869 (n + 1)

end A322869

/-! ## A322869.P5302071437063966478

`A322811(A097248(n+1)²)`
-/

namespace A322869.P5302071437063966478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A097248 (n + 1) ^ 2).toNat

end

end A322869.P5302071437063966478

namespace A322869

/-- `A322811(A097248(n+1)²)` -/
def P5302071437063966478.Spec : Prop :=
  ∀ n, P5302071437063966478.a n = A322869 (n + 1)

end A322869

/-!
# A322870: Ordinal transform of A302043.

The programs for A322870, there is no canonical definition to state claims against.
-/

/-! ## A322870.P5689351215486301841

`gcd(A007318(A303809(n+1)), A182643(n+1))`
-/

namespace A322870.P5689351215486301841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007318 (A303809 (n + 1)).toNat) (A182643 (n + 1))

end

end A322870.P5689351215486301841

/-! ## A322870.P18302883097487395878

`A322871(∑[A124647(A326683(n))])`
-/

namespace A322870.P18302883097487395878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124647 (A326683 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322871 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A322870.P18302883097487395878

/-! ## A322870.P14509183024035304281

`A026099(gcd(A026100(n+1), A261957(2*n)))`
-/

namespace A322870.P14509183024035304281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026099 (Int.gcd (A026100 (n + 1)) (A261957 (2 * n)))

end

end A322870.P14509183024035304281

/-! ## A322870.P6435519048870049485

`A322871(n+1)+A025466(A302415(2*(n+1)))`
-/

namespace A322870.P6435519048870049485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322871 (n + 1) + A025466 (A302415 (2 * (n + 1))).toNat

end

end A322870.P6435519048870049485

/-! ## A322870.P2266975902121460249

`A007947(A038548(n+1)^A382773(3*n+5))`
-/

namespace A322870.P2266975902121460249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.roundAway ((A038548 (n + 1) : ℚ) ^ (A382773 (3 * n + 5) : ℤ))).toNat

end

end A322870.P2266975902121460249

/-!
# A322871: Ordinal transform of A060681, where A060681(n) = n - A032742(n).

The programs for A322871, there is no canonical definition to state claims against.
-/

/-! ## A322871.P15348365335598596956

`gcd(A061395(A059758(n+1)), A327399(n+1))`
-/

namespace A322871.P15348365335598596956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061395 (A059758 (n + 1)).toNat) (A327399 (n + 1))

end

end A322871.P15348365335598596956

/-! ## A322871.P7271327055124955025

`gcd(A072670(n)+1, A167637(A228728(n+1)))`
-/

namespace A322871.P7271327055124955025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072670 n + 1) (A167637 (A228728 (n + 1)).toNat)

end

end A322871.P7271327055124955025

/-! ## A322871.P2317676940870988354

`A031245(xor(A065661(2*n+5), A318948(n+1)))`
-/

namespace A322871.P2317676940870988354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031245 (Int.xor (A065661 (2 * n + 5)) (A318948 (n + 1))).toNat

end

end A322871.P2317676940870988354

/-! ## A322871.P18268295647960913231

`gcd(A257883(n+1), A325389(A145265(n+1)))`
-/

namespace A322871.P18268295647960913231
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A257883 (n + 1)) (A325389 (A145265 (n + 1)).toNat)

end

end A322871.P18268295647960913231

/-! ## A322871.P17692046466398793682

`gcd(A025357(A005851(n+5)), A326406(n+1))`
-/

namespace A322871.P17692046466398793682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025357 (A005851 (n + 5)).toNat) (A326406 (n + 1))

end

end A322871.P17692046466398793682

/-!
# A322872: Ordinal transform of A171462, where A171462(n) = n - A052126(n).

The programs for A322872, there is no canonical definition to state claims against.
-/

/-! ## A322872.P3828797086431111373

`A126305(C(n, A334208(n+1)))`
-/

namespace A322872.P3828797086431111373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126305 (Nat.choose n (A334208 (n + 1)).toNat)

end

end A322872.P3828797086431111373

/-! ## A322872.P5546644785208977492

`gcd(A000720(3*n+5), A064547(A050414(2*n+3)))`
-/

namespace A322872.P5546644785208977492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000720 (3 * n + 5)) (A064547 (A050414 (2 * n + 3)).toNat)

end

end A322872.P5546644785208977492

/-! ## A322872.P9925203998258222773

`A276150(A305975(n+1)%A331935(3*n+5))`
-/

namespace A322872.P9925203998258222773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (Int.tmod (A305975 (n + 1)) (A331935 (3 * n + 5))).toNat

end

end A322872.P9925203998258222773

/-! ## A322872.P5484482792220348986

`A118382(A117298(n+2))`
-/

namespace A322872.P5484482792220348986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118382 (A117298 (n + 2)).toNat

end

end A322872.P5484482792220348986

/-! ## A322872.P15379215589905622995

`A356233(A268199(n)+n)`
-/

namespace A322872.P15379215589905622995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356233 (A268199 n + (n : ℤ)).toNat

end

end A322872.P15379215589905622995

/-!
# A322873: Ordinal transform of A300721, which is Möbius transform of A060681.

The programs for A322873, there is no canonical definition to state claims against.
-/

/-! ## A322873.P9477407708234339042

`A008616(3*A077168(A305800(n+1)))`
-/

namespace A322873.P9477407708234339042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (3 * A077168 (A305800 (n + 1)).toNat).toNat

end

end A322873.P9477407708234339042

/-! ## A322873.P17613620429931415061

`A105588(A239968(n+1)%A018699(n+1))`
-/

namespace A322873.P17613620429931415061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105588 (Int.tmod (A239968 (n + 1)) (A018699 (n + 1))).toNat

end

end A322873.P17613620429931415061

/-! ## A322873.P15300572033439493484

`A050252(A306019(n+1))`
-/

namespace A322873.P15300572033439493484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050252 (A306019 (n + 1)).toNat

end

end A322873.P15300572033439493484

/-! ## A322873.P2073749185611080948

`A055642(5*A303552(n+1))`
-/

namespace A322873.P2073749185611080948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (5 * A303552 (n + 1)).toNat

end

end A322873.P2073749185611080948

/-! ## A322873.P4473296146430845633

`A078349(50*A329350(n+1))`
-/

namespace A322873.P4473296146430845633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078349 (50 * A329350 (n + 1)).toNat

end

end A322873.P4473296146430845633

/-!
# A322874: Ordinal transform of A007431, which is Möbius transform of Euler phi.

The programs for A322874, there is no canonical definition to state claims against.
-/

/-! ## A322874.P5759612158627131749

`gcd(A029039(2^n), A159944(2*(n+1)))`
-/

namespace A322874.P5759612158627131749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029039 (2 ^ n)) (A159944 (2 * (n + 1)))

end

end A322874.P5759612158627131749

/-! ## A322874.P15155378818783716394

`gcd(A238937(n+1), A251552(A000079(n)))`
-/

namespace A322874.P15155378818783716394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A238937 (n + 1)) (A251552 (A000079 n).toNat)

end

end A322874.P15155378818783716394

/-! ## A322874.P8297931634630786526

`A296120(A157971(n+1))+A182581(n+1)`
-/

namespace A322874.P8297931634630786526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296120 (A157971 (n + 1)).toNat + A182581 (n + 1)

end

end A322874.P8297931634630786526

/-! ## A322874.P14642203593713670235

`A191770(A325712(n+1))^A003983(n+1)`
-/

namespace A322874.P14642203593713670235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191770 (A325712 (n + 1)).toNat : ℚ) ^ (A003983 (n + 1) : ℤ)

end

end A322874.P14642203593713670235

/-! ## A322874.P13956902733579290273

`gcd(A103921(A136192(3*n+4)), A275609(n))`
-/

namespace A322874.P13956902733579290273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103921 (A136192 (3 * n + 4)).toNat) (A275609 n)

end

end A322874.P13956902733579290273

/-!
# A322875: Number of set partitions of [n] such that the maximal absolute difference between the least elements of consecutive blocks equals two.

The programs for A322875, there is no canonical definition to state claims against.
-/

/-! ## A322875.P12059327203820885799

`A287252(n+2)-A026898(n+1)`
-/

namespace A322875.P12059327203820885799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287252 (n + 2) - A026898 (n + 1)

end

end A322875.P12059327203820885799

/-! ## A322875.P14548346299372070587

`record[A287215(n+2)%A228900(n)]`
-/

namespace A322875.P14548346299372070587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287215 (n + 2)) (A228900 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322875.P14548346299372070587

/-!
# A322876: Number of set partitions of [n] such that the maximal absolute difference between the least elements of consecutive blocks equals three.

The programs for A322876, there is no canonical definition to state claims against.
-/

/-! ## A322876.P11127627649067168160

`A287253(n+3)-A287252(n+3)`
-/

namespace A322876.P11127627649067168160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287253 (n + 3) - A287252 (n + 3)

end

end A322876.P11127627649067168160

/-! ## A322876.P6126232014361410726

`record[A287215(n+3)%A228900(n)]`
-/

namespace A322876.P6126232014361410726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287215 (n + 3)) (A228900 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322876.P6126232014361410726

/-!
# A322877: Number of set partitions of [n] such that the maximal absolute difference between the least elements of consecutive blocks equals four.

The programs for A322877, there is no canonical definition to state claims against.
-/

/-! ## A322877.P11074954847328302785

`A287254(n+4)-A287253(n+4)`
-/

namespace A322877.P11074954847328302785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287254 (n + 4) - A287253 (n + 4)

end

end A322877.P11074954847328302785

/-!
# A322878: Number of set partitions of [n] such that the maximal absolute difference between the least elements of consecutive blocks equals five.

The programs for A322878, there is no canonical definition to state claims against.
-/

/-! ## A322878.P10943726436404413044

`A287255(n+5)-A287254(n+5)`
-/

namespace A322878.P10943726436404413044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287255 (n + 5) - A287254 (n + 5)

end

end A322878.P10943726436404413044

/-!
# A322879: Number of set partitions of [n] such that the maximal absolute difference between the least elements of consecutive blocks equals six.

The programs for A322879, there is no canonical definition to state claims against.
-/

/-! ## A322879.P17014929203705678407

`A287256(n+6)-A287255(n+6)`
-/

namespace A322879.P17014929203705678407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287256 (n + 6) - A287255 (n + 6)

end

end A322879.P17014929203705678407

/-!
# A322880: Number of set partitions of [n] such that the maximal absolute difference between the least elements of consecutive blocks equals seven.

The programs for A322880, there is no canonical definition to state claims against.
-/

/-! ## A322880.P8440870400254560097

`A287257(n+7)-A287256(n+7)`
-/

namespace A322880.P8440870400254560097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287257 (n + 7) - A287256 (n + 7)

end

end A322880.P8440870400254560097

/-!
# A322881: Number of set partitions of [n] such that the maximal absolute difference between the least elements of consecutive blocks equals eight.

The programs for A322881, there is no canonical definition to state claims against.
-/

/-! ## A322881.P2386161676082820584

`A287258(n+8)-A287257(n+8)`
-/

namespace A322881.P2386161676082820584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287258 (n + 8) - A287257 (n + 8)

end

end A322881.P2386161676082820584

/-!
# A322882: Number of set partitions of [n] such that the maximal absolute difference between the least elements of consecutive blocks equals nine.

The programs for A322882, there is no canonical definition to state claims against.
-/

/-! ## A322882.P17934964139418449174

`A287259(n+9)-A287258(n+9)`
-/

namespace A322882.P17934964139418449174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287259 (n + 9) - A287258 (n + 9)

end

end A322882.P17934964139418449174

/-!
# A322883: Number of set partitions of [n] such that the maximal absolute difference between the least elements of consecutive blocks equals ten.

The programs for A322883, there is no canonical definition to state claims against.
-/

/-! ## A322883.P17075246686839388742

`A287260(n+10)-A287259(n+10)`
-/

namespace A322883.P17075246686839388742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287260 (n + 10) - A287259 (n + 10)

end

end A322883.P17075246686839388742

/-!
# A322884: Number of set partitions of [2n] such that the maximal absolute difference between the least elements of consecutive blocks equals n.

The programs for A322884, there is no canonical definition to state claims against.
-/

/-! ## A322884.P11243178858802047343

`A287215(2*n²+1)`
-/

namespace A322884.P11243178858802047343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287215 (2 * n ^ 2 + 1)

end

end A322884.P11243178858802047343

/-! ## A322884.P18098019726539651274

`(n%2)!*A287215(A058331(n))`
-/

namespace A322884.P18098019726539651274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % 2) : ℤ) * A287215 (A058331 n).toNat

end

end A322884.P18098019726539651274

/-! ## A322884.P6711983932211577755

`A287215(A058331(n))+A063524(3*(n+1))`
-/

namespace A322884.P6711983932211577755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287215 (A058331 n).toNat + A063524 (3 * (n + 1))

end

end A322884.P6711983932211577755

/-! ## A322884.P7903084873267961634

`A287215(A058331(n))+A087666(3*(n+3))`
-/

namespace A322884.P7903084873267961634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287215 (A058331 n).toNat + A087666 (3 * (n + 3))

end

end A322884.P7903084873267961634

/-! ## A322884.P9436225079663243275

`A287215(A058331(n))%A000166(2*(n+2))`
-/

namespace A322884.P9436225079663243275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287215 (A058331 n).toNat) (A000166 (2 * (n + 2)))

end

end A322884.P9436225079663243275

/-!
# A322885: Number of 3-generated Abelian groups of order n.

The programs for A322885, the canonical program `A322885.P8921599766518576260` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322885 has offset 1).

The definition of A322885 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A322885.P14838235761746233108

`∑{d}[n+1, A370256(#)]`
-/

namespace A322885.P14838235761746233108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A370256 d

end

end A322885.P14838235761746233108

namespace A322885

/-- `∑{d}[n+1, A370256(#)]` -/
def P14838235761746233108.Spec : Prop :=
  ∀ n, P14838235761746233108.a n = A322885 (n + 1)

end A322885

/-! ## A322885.P8921599766518576260

`∏{e}[n+1, A001399(#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A322885

/-- `∏{e}[n+1, A001399(#)]` -/
def P8921599766518576260.Spec : Prop :=
  ∀ n, P8921599766518576260.a n = A322885 (n + 1)

theorem P8921599766518576260.correct : P8921599766518576260.Spec := by
  intro n
  simp only [A322885, Nat.add_sub_cancel]

end A322885

/-! ## A322885.P7209489888931277085

`∏{e}[n+1, A069905(#+3)]`
-/

namespace A322885.P7209489888931277085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A069905 (Nat.factorization (f1 n) p + 3)

end

end A322885.P7209489888931277085

namespace A322885

/-- `∏{e}[n+1, A069905(#+3)]` -/
def P7209489888931277085.Spec : Prop :=
  ∀ n, P7209489888931277085.a n = A322885 (n + 1)

theorem P7209489888931277085.correct : P7209489888931277085.Spec := by
  intro n
  simp only [A322885, Nat.add_sub_cancel, A322885.P7209489888931277085.f1, A322885.P7209489888931277085.a, A322885.P8921599766518576260.f1, A322885.P8921599766518576260.a, A001399, A001399.P15968082049530848519.a, A069905, A069905.P9161905402948910103.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A322885

/-! ## A322885.P17714422582868270372

`∑{d}[n+1, A010057(#)*A046951((n+1)/#)]`
-/

namespace A322885.P17714422582868270372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010057 d * A046951 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322885.P17714422582868270372

namespace A322885

/-- `∑{d}[n+1, A010057(#)*A046951((n+1)/#)]` -/
def P17714422582868270372.Spec : Prop :=
  ∀ n, P17714422582868270372.a n = A322885 (n + 1)

end A322885

/-! ## A322885.P9263934400398749030

`∑{d}[n+1, A010052(#)*A061704((n+1)/#)]`
-/

namespace A322885.P9263934400398749030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010052 d * A061704 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322885.P9263934400398749030

namespace A322885

/-- `∑{d}[n+1, A010052(#)*A061704((n+1)/#)]` -/
def P9263934400398749030.Spec : Prop :=
  ∀ n, P9263934400398749030.a n = A322885 (n + 1)

end A322885

/-! ## A322885.P8928487813814300025

`∑{d}[n+1, A000005(#)*A307420((n+1)/#)]`
-/

namespace A322885.P8928487813814300025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A307420 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322885.P8928487813814300025

namespace A322885

/-- `∑{d}[n+1, A000005(#)*A307420((n+1)/#)]` -/
def P8928487813814300025.Spec : Prop :=
  ∀ n, P8928487813814300025.a n = A322885 (n + 1)

end A322885

/-! ## A322885.P13197760786101821612

`∑{d}[n+1, A124315(#)*A210826((n+1)/#)]`
-/

namespace A322885.P13197760786101821612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A124315 d * A210826 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322885.P13197760786101821612

namespace A322885

/-- `∑{d}[n+1, A124315(#)*A210826((n+1)/#)]` -/
def P13197760786101821612.Spec : Prop :=
  ∀ n, P13197760786101821612.a n = A322885 (n + 1)

end A322885

/-! ## A322885.P15908163139970088555

`∑{d}[n+1, A063775(#)*A355448((n+1)/#)]`
-/

namespace A322885.P15908163139970088555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063775 d * A355448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A322885.P15908163139970088555

namespace A322885

/-- `∑{d}[n+1, A063775(#)*A355448((n+1)/#)]` -/
def P15908163139970088555.Spec : Prop :=
  ∀ n, P15908163139970088555.a n = A322885 (n + 1)

end A322885

/-! ## A322885.P5368580220538559285

`or(A000007(A248153(n)), A005361(n+1))`
-/

namespace A322885.P5368580220538559285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A248153 n).toNat) (A005361 (n + 1))

end

end A322885.P5368580220538559285

namespace A322885

/-- `or(A000007(A248153(n)), A005361(n+1))` -/
def P5368580220538559285.Spec : Prop :=
  ∀ n, P5368580220538559285.a n = A322885 (n + 1)

end A322885

/-! ## A322885.P15791437190673962490

`∏{e}[A113004(A113001(n+1)), A324758(#)]`
-/

namespace A322885.P15791437190673962490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113004 (A113001 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A324758 (Nat.factorization (f1 n).natAbs p)

end

end A322885.P15791437190673962490

namespace A322885

/-- `∏{e}[A113004(A113001(n+1)), A324758(#)]` -/
def P15791437190673962490.Spec : Prop :=
  ∀ n, P15791437190673962490.a n = A322885 (n + 1)

end A322885

/-!
# A322886: Number of 3-generated Abelian groups of order A025487(n).

The programs for A322886, there is no canonical definition to state claims against.
-/

/-! ## A322886.P17898153799528696325

`A322885(A025487(n+1))`
-/

namespace A322886.P17898153799528696325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322885 (A025487 (n + 1)).toNat

end

end A322886.P17898153799528696325

/-! ## A322886.P14166352213829670905

`∏{e}[A307107(n+1), A001399(#+1)]`
-/

namespace A322886.P14166352213829670905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001399 (Nat.factorization (f1 n).natAbs p + 1)

end

end A322886.P14166352213829670905

/-! ## A322886.P3258161382434995531

`∏{e}[A025487(n+1), A001399(#)]`
-/

namespace A322886.P3258161382434995531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001399 (Nat.factorization (f1 n).natAbs p)

end

end A322886.P3258161382434995531

/-! ## A322886.P12974103624265149105

`∏{e}[record[A329899(n+1)], A001399(#)]`
-/

namespace A322886.P12974103624265149105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001399 (Nat.factorization (f1 n).natAbs p)

end

end A322886.P12974103624265149105

/-! ## A322886.P12609310781567381217

`∏{e}[record[A051466(n+2)], A001399(#)]`
-/

namespace A322886.P12609310781567381217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001399 (Nat.factorization (f1 n).natAbs p)

end

end A322886.P12609310781567381217

/-! ## A322886.P2529742053927221661

`∏{e}[A181821(A181820(n+1)), A001399(#)]`
-/

namespace A322886.P2529742053927221661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A181820 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001399 (Nat.factorization (f1 n).natAbs p)

end

end A322886.P2529742053927221661

/-! ## A322886.P660579588376429041

`∏{e}[A051466(A329898(n+1)), A001399(#)]`
-/

namespace A322886.P660579588376429041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (A329898 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001399 (Nat.factorization (f1 n).natAbs p)

end

end A322886.P660579588376429041

/-! ## A322886.P12559594839425353025

`A322885(record[A329899(n+1)])`
-/

namespace A322886.P12559594839425353025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322885 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A322886.P12559594839425353025

/-! ## A322886.P9893105916540412971

`A322885(record[A051466(n+2)])`
-/

namespace A322886.P9893105916540412971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322885 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A322886.P9893105916540412971

/-! ## A322886.P7733585526249392777

`∏{e}[record[A046523(n+1)], A001399(#)]`
-/

namespace A322886.P7733585526249392777
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001399 (Nat.factorization (f1 n).natAbs p)

end

end A322886.P7733585526249392777

/-!
# A322888: Chebyshev T-polynomials T_n(16).

The programs for A322888, the canonical program `A322888.P2837484167475734783` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322888 has offset 0).

The definition of A322888 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322888.P10968557572048172333

`ogf((1-16x)/(1-32x+x^2))`
-/

namespace A322888.P10968557572048172333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -16] [1, -32, 1] n

end

end A322888.P10968557572048172333

namespace A322888

/-- `ogf((1-16x)/(1-32x+x^2))` -/
def P10968557572048172333.Spec : Prop :=
  ∀ n, P10968557572048172333.a n = A322888 n

end A322888

/-! ## A322888.P2837484167475734783

`32*a(n-1)-a(n-2)` with `a(0)=1, a(1)=16`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A322888

/-- `32*a(n-1)-a(n-2)` -/
def P2837484167475734783.Spec : Prop :=
  ∀ n, P2837484167475734783.a n = A322888 n

theorem P2837484167475734783.correct : P2837484167475734783.Spec := by
  intro n
  simp only [A322888]

end A322888

/-! ## A322888.P8406507497208308604

`(16+sqrt(255))^-n*(1+(16+sqrt(255))^(2*n))/2`
-/

namespace A322888.P8406507497208308604
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (16 + Real.sqrt (255 : ℝ)) ^ (-(n : ℤ) : ℤ) * (1 + (16 + Real.sqrt (255 : ℝ)) ^ (2 * n)) / 2

end

end A322888.P8406507497208308604

namespace A322888

/-- `(16+sqrt(255))^-n*(1+(16+sqrt(255))^(2*n))/2` -/
def P8406507497208308604.Spec : Prop :=
  ∀ n, P8406507497208308604.a n = (A322888 n : ℝ)

end A322888

/-! ## A322888.P4680647376891781036

`record[A041478(n)^(n%2)]`
-/

namespace A322888.P4680647376891781036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041478 n ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322888.P4680647376891781036

namespace A322888

/-- `record[A041478(n)^(n%2)]` -/
def P4680647376891781036.Spec : Prop :=
  ∀ n, P4680647376891781036.a n = A322888 n

end A322888

/-! ## A322888.P12668748720300759397

`A101124(eq[16, A002262(n)])`
-/

namespace A322888.P12668748720300759397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322888.P12668748720300759397

namespace A322888

/-- `A101124(eq[16, A002262(n)])` -/
def P12668748720300759397.Spec : Prop :=
  ∀ n, P12668748720300759397.a n = A322888 n

end A322888

/-! ## A322888.P11744533880779388223

`A322836(eq[16, A025581(n)])`
-/

namespace A322888.P11744533880779388223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322888.P11744533880779388223

namespace A322888

/-- `A322836(eq[16, A025581(n)])` -/
def P11744533880779388223.Spec : Prop :=
  ∀ n, P11744533880779388223.a n = A322888 n

end A322888

/-! ## A322888.P11292714000610517885

`record[gcd(A041478(n), A077957(n))]`
-/

namespace A322888.P11292714000610517885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A041478 n) (A077957 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322888.P11292714000610517885

namespace A322888

/-- `record[gcd(A041478(n), A077957(n))]` -/
def P11292714000610517885.Spec : Prop :=
  ∀ n, (P11292714000610517885.a n : ℤ) = A322888 n

end A322888

/-! ## A322888.P1048347512182448714

`A101124(eq[17, A002260(n+1)])`
-/

namespace A322888.P1048347512182448714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A322888.P1048347512182448714

namespace A322888

/-- `A101124(eq[17, A002260(n+1)])` -/
def P1048347512182448714.Spec : Prop :=
  ∀ n, P1048347512182448714.a n = A322888 n

end A322888

/-! ## A322888.P12414143488995141467

`A041478(2*n+1)-A041478(2*n)`
-/

namespace A322888.P12414143488995141467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041478 (2 * n + 1) - A041478 (2 * n)

end

end A322888.P12414143488995141467

namespace A322888

/-- `A041478(2*n+1)-A041478(2*n)` -/
def P12414143488995141467.Spec : Prop :=
  ∀ n, P12414143488995141467.a n = A322888 n

end A322888

/-!
# A322889: Chebyshev T-polynomials T_n(18).

The programs for A322889, the canonical program `A322889.P15327018470531479080` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322889 has offset 0).

The definition of A322889 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322889.P1712881271515335645

`ogf((1-18x)/(1-36x+x^2))`
-/

namespace A322889.P1712881271515335645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -18] [1, -36, 1] n

end

end A322889.P1712881271515335645

namespace A322889

/-- `ogf((1-18x)/(1-36x+x^2))` -/
def P1712881271515335645.Spec : Prop :=
  ∀ n, P1712881271515335645.a n = A322889 n

end A322889

/-! ## A322889.P15327018470531479080

`36*a(n-1)-a(n-2)` with `a(0)=1, a(1)=18`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A322889

/-- `36*a(n-1)-a(n-2)` -/
def P15327018470531479080.Spec : Prop :=
  ∀ n, P15327018470531479080.a n = A322889 n

theorem P15327018470531479080.correct : P15327018470531479080.Spec := by
  intro n
  simp only [A322889]

end A322889

/-! ## A322889.P2608988024055180027

`(18+sqrt(323))^-n*(1+(18+sqrt(323))^(2*n))/2`
-/

namespace A322889.P2608988024055180027
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (18 + Real.sqrt (323 : ℝ)) ^ (-(n : ℤ) : ℤ) * (1 + (18 + Real.sqrt (323 : ℝ)) ^ (2 * n)) / 2

end

end A322889.P2608988024055180027

namespace A322889

/-- `(18+sqrt(323))^-n*(1+(18+sqrt(323))^(2*n))/2` -/
def P2608988024055180027.Spec : Prop :=
  ∀ n, P2608988024055180027.a n = (A322889 n : ℝ)

end A322889

/-! ## A322889.P17266091850792288023

`record[A041610(n)^A062157(n)]`
-/

namespace A322889.P17266091850792288023
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041610 n : ℚ) ^ (A062157 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322889.P17266091850792288023

namespace A322889

/-- `record[A041610(n)^A062157(n)]` -/
def P17266091850792288023.Spec : Prop :=
  ∀ n, P17266091850792288023.a n = (A322889 n : ℚ)

end A322889

/-! ## A322889.P10627605937758790408

`record[and(A033999(n), A041610(n))]`
-/

namespace A322889.P10627605937758790408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A041610 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322889.P10627605937758790408

namespace A322889

/-- `record[and(A033999(n), A041610(n))]` -/
def P10627605937758790408.Spec : Prop :=
  ∀ n, P10627605937758790408.a n = A322889 n

end A322889

/-! ## A322889.P15477588696058280285

`A144128(n+1)-3*A154023(n+1)`
-/

namespace A322889.P15477588696058280285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144128 (n + 1) - 3 * A154023 (n + 1)

end

end A322889.P15477588696058280285

namespace A322889

/-- `A144128(n+1)-3*A154023(n+1)` -/
def P15477588696058280285.Spec : Prop :=
  ∀ n, P15477588696058280285.a n = A322889 n

end A322889

/-! ## A322889.P11431968248427203518

`gcd(A000038(n), A041610(A004273(n)))`
-/

namespace A322889.P11431968248427203518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A041610 (A004273 n).toNat)

end

end A322889.P11431968248427203518

namespace A322889

/-- `gcd(A000038(n), A041610(A004273(n)))` -/
def P11431968248427203518.Spec : Prop :=
  ∀ n, (P11431968248427203518.a n : ℤ) = A322889 n

end A322889

/-! ## A322889.P9996469962615660921

`A041610(2*n+1)-A041610(2*n)`
-/

namespace A322889.P9996469962615660921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041610 (2 * n + 1) - A041610 (2 * n)

end

end A322889.P9996469962615660921

namespace A322889

/-- `A041610(2*n+1)-A041610(2*n)` -/
def P9996469962615660921.Spec : Prop :=
  ∀ n, P9996469962615660921.a n = A322889 n

end A322889

/-! ## A322889.P8201226495949916650

`A041610(2*n+1)%A041610(A052928(2*n))`
-/

namespace A322889.P8201226495949916650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A041610 (2 * n + 1)) (A041610 (A052928 (2 * n)).toNat)

end

end A322889.P8201226495949916650

namespace A322889

/-- `A041610(2*n+1)%A041610(A052928(2*n))` -/
def P8201226495949916650.Spec : Prop :=
  ∀ n, P8201226495949916650.a n = A322889 n

end A322889

/-! ## A322889.P16892674805786491435

`A041610(2*n+1)+A041610(2*n)/A033999(2*n+1)`
-/

namespace A322889.P16892674805786491435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041610 (2 * n + 1) : ℚ) + (A041610 (2 * n) : ℚ) / (A033999 (2 * n + 1) : ℚ)

end

end A322889.P16892674805786491435

namespace A322889

/-- `A041610(2*n+1)+A041610(2*n)/A033999(2*n+1)` -/
def P16892674805786491435.Spec : Prop :=
  ∀ n, P16892674805786491435.a n = (A322889 n : ℚ)

end A322889

/-!
# A322890: a(n) = value of Chebyshev T-polynomial T_n(20).

The programs for A322890, the canonical program `A322890.P3115176329684773802` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322890 has offset 0).

The definition of A322890 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322890.P4817381126847339795

`ogf((1-20x)/(1-40x+x^2))`
-/

namespace A322890.P4817381126847339795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -20] [1, -40, 1] n

end

end A322890.P4817381126847339795

namespace A322890

/-- `ogf((1-20x)/(1-40x+x^2))` -/
def P4817381126847339795.Spec : Prop :=
  ∀ n, P4817381126847339795.a n = A322890 n

end A322890

/-! ## A322890.P3115176329684773802

`40*a(n-1)-a(n-2)` with `a(0)=1, a(1)=20`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A322890

/-- `40*a(n-1)-a(n-2)` -/
def P3115176329684773802.Spec : Prop :=
  ∀ n, P3115176329684773802.a n = A322890 n

theorem P3115176329684773802.correct : P3115176329684773802.Spec := by
  intro n
  simp only [A322890]

end A322890

/-! ## A322890.P5722835096342833073

`(20+sqrt(399))^-n*(1+(20+sqrt(399))^(2*n))/2`
-/

namespace A322890.P5722835096342833073
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (20 + Real.sqrt (399 : ℝ)) ^ (-(n : ℤ) : ℤ) * (1 + (20 + Real.sqrt (399 : ℝ)) ^ (2 * n)) / 2

end

end A322890.P5722835096342833073

namespace A322890

/-- `(20+sqrt(399))^-n*(1+(20+sqrt(399))^(2*n))/2` -/
def P5722835096342833073.Spec : Prop :=
  ∀ n, P5722835096342833073.a n = (A322890 n : ℝ)

end A322890

/-! ## A322890.P8246861714195557521

`record[A041758(n)^and(1, n)]`
-/

namespace A322890.P8246861714195557521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041758 n ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322890.P8246861714195557521

namespace A322890

/-- `record[A041758(n)^and(1, n)]` -/
def P8246861714195557521.Spec : Prop :=
  ∀ n, P8246861714195557521.a n = A322890 n

end A322890

/-! ## A322890.P15244386050159441445

`record[A041758(n)^A088705(n)]`
-/

namespace A322890.P15244386050159441445
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041758 n : ℚ) ^ (A088705 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322890.P15244386050159441445

namespace A322890

/-- `record[A041758(n)^A088705(n)]` -/
def P15244386050159441445.Spec : Prop :=
  ∀ n, P15244386050159441445.a n = (A322890 n : ℚ)

end A322890

/-! ## A322890.P10241593315510078880

`record[and(A033999(n), A041758(n))]`
-/

namespace A322890.P10241593315510078880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A041758 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322890.P10241593315510078880

namespace A322890

/-- `record[and(A033999(n), A041758(n))]` -/
def P10241593315510078880.Spec : Prop :=
  ∀ n, P10241593315510078880.a n = A322890 n

end A322890

/-! ## A322890.P8318302963526824909

`A041758(A004273(n))^A178334(n)`
-/

namespace A322890.P8318302963526824909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041758 (A004273 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A322890.P8318302963526824909

namespace A322890

/-- `A041758(A004273(n))^A178334(n)` -/
def P8318302963526824909.Spec : Prop :=
  ∀ n, P8318302963526824909.a n = (A322890 n : ℚ)

end A322890

/-! ## A322890.P2352380939356226692

`A041758(2*n+1)-A041758(2*n)`
-/

namespace A322890.P2352380939356226692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041758 (2 * n + 1) - A041758 (2 * n)

end

end A322890.P2352380939356226692

namespace A322890

/-- `A041758(2*n+1)-A041758(2*n)` -/
def P2352380939356226692.Spec : Prop :=
  ∀ n, P2352380939356226692.a n = A322890 n

end A322890

/-! ## A322890.P16868061037811747794

`A041758(2*n+1)+A041758(2*n)/A033999(2*n+1)`
-/

namespace A322890.P16868061037811747794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041758 (2 * n + 1) : ℚ) + (A041758 (2 * n) : ℚ) / (A033999 (2 * n + 1) : ℚ)

end

end A322890.P16868061037811747794

namespace A322890

/-- `A041758(2*n+1)+A041758(2*n)/A033999(2*n+1)` -/
def P16868061037811747794.Spec : Prop :=
  ∀ n, P16868061037811747794.a n = (A322890 n : ℚ)

end A322890

/-! ## A322890.P18308084254042086456

`cosh(n*log(20+sqrt(399)))`
-/

namespace A322890.P18308084254042086456
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh ((n : ℝ) * Real.log (20 + Real.sqrt (399 : ℝ)))

end

end A322890.P18308084254042086456

namespace A322890

/-- `cosh(n*log(20+sqrt(399)))` -/
def P18308084254042086456.Spec : Prop :=
  ∀ n, P18308084254042086456.a n = (A322890 n : ℝ)

end A322890

/-!
# A322892: a(n) = [x^n] Product_{k=1..n} (k + x + 2*k*x^2), for n >= 0.

The programs for A322892, there is no canonical definition to state claims against.
-/

/-! ## A322892.P12725205163323961712

`A322891(∑[2*n])`
-/

namespace A322892.P12725205163323961712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322891 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A322892.P12725205163323961712

/-! ## A322892.P3512242997946185579

`or(1, A322891(A002378(n)))`
-/

namespace A322892.P3512242997946185579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A322891 (A002378 n).toNat)

end

end A322892.P3512242997946185579

/-! ## A322892.P741078052827263960

`A007318(C(n, 2))*A322891(A002378(n))`
-/

namespace A322892.P741078052827263960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A322891 (A002378 n).toNat

end

end A322892.P741078052827263960

/-! ## A322892.P6501739841877846384

`A000108(C(2, n+2))*A322891(A002378(n))`
-/

namespace A322892.P6501739841877846384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A322891 (A002378 n).toNat

end

end A322892.P6501739841877846384

/-! ## A322892.P15579447834666935830

`A008683(n+1)²!*A322891(A002378(n))`
-/

namespace A322892.P15579447834666935830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A008683 (n + 1) ^ 2).toNat : ℤ) * A322891 (A002378 n).toNat

end

end A322892.P15579447834666935830

/-!
# A322893: a(n) = [x^(n-1)] Product_{k=1..n} (k + x + 2*k*x^2), for n >= 1.

The programs for A322893, there is no canonical definition to state claims against.
-/

/-! ## A322893.P427387610323805290

`(n+1)*(n+2)/2*A322894(n+1)`
-/

namespace A322893.P427387610323805290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) : ℚ) / 2 * (A322894 (n + 1) : ℚ)

end

end A322893.P427387610323805290

/-! ## A322893.P11038801409537325242

`A322891((n+1)²+n)`
-/

namespace A322893.P11038801409537325242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322891 ((n + 1) ^ 2 + n)

end

end A322893.P11038801409537325242

/-! ## A322893.P671982188275833635

`record[gcd(A214776(n), A322891(2*n+1))]`
-/

namespace A322893.P671982188275833635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A214776 n) (A322891 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322893.P671982188275833635

/-!
# A322894: a(n) = A322893(n) / (n*(n+1)/2), where A322893(n) = [x^(n-1)] Product_{k=1..n} (k + x + 2*k*x^2), for n >= 1.

The programs for A322894, there is no canonical definition to state claims against.
-/

/-! ## A322894.P4800651195736035380

`A322893(n+1)/((n+1)*(n+2)/2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A322894.P4800651195736035380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322893 (n + 1) : ℚ) / (((n + 1) * (n + 2) : ℚ) / 2)

end

end A322894.P4800651195736035380

/-! ## A322894.P5696115289650968644

`floor(A322893(n+1)/A000217(n+1))`
-/

namespace A322894.P5696115289650968644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A322893 (n + 1) : ℚ) / (A000217 (n + 1) : ℚ)⌋

end

end A322894.P5696115289650968644

/-! ## A322894.P5914542265366329399

`record[gcd(A214776(n), A322891(2*n+1))]/A000217(n+1)`
-/

namespace A322894.P5914542265366329399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A214776 n) (A322891 (2 * n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A000217 (n + 1) : ℚ)

end

end A322894.P5914542265366329399

/-!
# A322895: E.g.f. S(x) = Integral C(x) * C(S(x)) dx, such that C(x)^2 - S(x)^2 = 1, where S(x) = Sum_{n>=0} a(n)*x^(2*n+1)/(2*n+1)!, with coefficients a(n) starting at n = 0.

The programs for A322895, there is no canonical definition to state claims against.
-/

/-! ## A322895.P3952256563357240967

`A322897(Δ[n²])`
-/

namespace A322895.P3952256563357240967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322897 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A322895.P3952256563357240967

/-! ## A322895.P15871658078890490341

`record[A322897(A004442(n))]`
-/

namespace A322895.P15871658078890490341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322897 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322895.P15871658078890490341

/-! ## A322895.P174269324933082295

`record[A322897(A099375(n))]`
-/

namespace A322895.P174269324933082295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322897 (A099375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322895.P174269324933082295

/-! ## A322895.P3356466458062926259

`record[A322897(A029578(n)+1)]`
-/

namespace A322895.P3356466458062926259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322897 (A029578 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322895.P3356466458062926259

/-! ## A322895.P9441572067912942688

`record[and(A081362(n), A322897(n))]`
-/

namespace A322895.P9441572067912942688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A081362 n) (A322897 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A322895.P9441572067912942688

/-!
# A322896: E.g.f. C(x) = 1 + Integral S(x) * C(S(x)) dx, such that C(x)^2 - S(x)^2 = 1, where C(x) = Sum_{n>=0} a(n)*x^(2*n)/(2*n)!, with coefficients a(n) starting at n = 0.

The programs for A322896, there is no canonical definition to state claims against.
-/

/-! ## A322896.P12113380359822759624

`A322897(2*n)`
-/

namespace A322896.P12113380359822759624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322897 (2 * n)

end

end A322896.P12113380359822759624

/-! ## A322896.P15763792877485142577

`or(1, A322897(A004277(n)))`
-/

namespace A322896.P15763792877485142577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A322897 (A004277 n).toNat)

end

end A322896.P15763792877485142577

/-! ## A322896.P7315903437113699108

`or(1, A322897(A005843(n)))`
-/

namespace A322896.P7315903437113699108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A322897 (A005843 n).toNat)

end

end A322896.P7315903437113699108

/-! ## A322896.P6341541812902416630

`gcd(A000038(n), A322897(A004277(n)))`
-/

namespace A322896.P6341541812902416630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A322897 (A004277 n).toNat)

end

end A322896.P6341541812902416630

/-! ## A322896.P10709053537200299757

`A322897(A004277(n))^A014963(∑[n+1])`
-/

namespace A322896.P10709053537200299757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322897 (A004277 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A322896.P10709053537200299757

/-!
# A322899: a(n) = T_{2*n}(n+1) where T_{n}(x) is a Chebyshev polynomial of the first kind.

The programs for A322899, the canonical program `A322899.P15960630835991350868` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A322899 has offset 0).

The definition of A322899 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A322899.P15960630835991350868

`∑{#}[n, C(2*n, 2*#)*(n²+2*n)^(n-#)*(n+1)^(2*#)]`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A322899

/-- `∑{#}[n, C(2*n, 2*#)*(n²+2*n)^(n-#)*(n+1)^(2*#)]` -/
def P15960630835991350868.Spec : Prop :=
  ∀ n, P15960630835991350868.a n = (A322899 n : ℚ)

end A322899

/-! ## A322899.P776141185260400776

`A343261(2*n)/2`
-/

namespace A322899.P776141185260400776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343261 (2 * n) : ℚ) / 2

end

end A322899.P776141185260400776

namespace A322899

/-- `A343261(2*n)/2` -/
def P776141185260400776.Spec : Prop :=
  ∀ n, P776141185260400776.a n = (A322899 n : ℚ)

end A322899

/-! ## A322899.P12892033112400257997

`2*A342205(n)²-1`
-/

namespace A322899.P12892033112400257997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A342205 n ^ 2 - 1

end

end A322899.P12892033112400257997

namespace A322899

/-- `2*A342205(n)²-1` -/
def P12892033112400257997.Spec : Prop :=
  ∀ n, P12892033112400257997.a n = A322899 n

end A322899

/-! ## A322899.P10321592979013913533

`A322836(A081268(n))`
-/

namespace A322899.P10321592979013913533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322836 (A081268 n).toNat

end

end A322899.P10321592979013913533

namespace A322899

/-- `A322836(A081268(n))` -/
def P10321592979013913533.Spec : Prop :=
  ∀ n, P10321592979013913533.a n = A322899 n

end A322899

/-! ## A322899.P5079222368272503228

`A101124(A117625(n+1))`
-/

namespace A322899.P5079222368272503228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101124 (A117625 (n + 1)).toNat

end

end A322899.P5079222368272503228

namespace A322899

/-- `A101124(A117625(n+1))` -/
def P5079222368272503228.Spec : Prop :=
  ∀ n, P5079222368272503228.a n = A322899 n

end A322899

