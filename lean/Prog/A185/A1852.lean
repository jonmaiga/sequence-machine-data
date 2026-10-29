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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A185200: Square array O(k,g) containing the least nontrivial order of disconnected k-regular simple graphs with girth at least g.

The programs for A185200, there is no canonical definition to state claims against.
-/

/-! ## A185200.P14050099903375112267

`2*A054760(n)`
-/

namespace A185200.P14050099903375112267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054760 n

end

end A185200.P14050099903375112267

/-! ## A185200.P1379171614778672692

`A004277(A054760(n))`
-/

namespace A185200.P1379171614778672692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A054760 n).toNat

end

end A185200.P1379171614778672692

/-! ## A185200.P3795912177702836485

`A000267(A054760(n)²)`
-/

namespace A185200.P3795912177702836485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A054760 n ^ 2).toNat

end

end A185200.P3795912177702836485

/-! ## A185200.P14451267150456434318

`A001670(A054760(n)²)`
-/

namespace A185200.P14451267150456434318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001670 (A054760 n ^ 2).toNat

end

end A185200.P14451267150456434318

/-! ## A185200.P15432928791078981209

`A063655(A054760(n)²)`
-/

namespace A185200.P15432928791078981209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A054760 n ^ 2).toNat

end

end A185200.P15432928791078981209

/-!
# A185202: G.f. A(x) satisfies: x = Sum_{n>=0} -(-A(x))^A000069(n), where A000069 is the odious numbers.

The programs for A185202, there is no canonical definition to state claims against.
-/

/-! ## A185202.P560856504532929380

`A340891(∑[A290544(n)])`
-/

namespace A185202.P560856504532929380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340891 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A185202.P560856504532929380

/-! ## A185202.P8095205462820511731

`A340891(A010352(n+1))`
-/

namespace A185202.P8095205462820511731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340891 (A010352 (n + 1)).toNat

end

end A185202.P8095205462820511731

/-! ## A185202.P13819066779941123181

`A340891(A010353(n+1))`
-/

namespace A185202.P13819066779941123181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340891 (A010353 (n + 1)).toNat

end

end A185202.P13819066779941123181

/-! ## A185202.P4272814596756071932

`A340891(A024651(n+1))`
-/

namespace A185202.P4272814596756071932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340891 (A024651 (n + 1)).toNat

end

end A185202.P4272814596756071932

/-!
# A185204: Triangular array D(n,k) counting disconnected k-regular simple graphs on n vertices with girth at least 4.

The programs for A185204, there is no canonical definition to state claims against.
-/

/-! ## A185204.P6776253057833151652

`A028242(and(A046956(n), A127368(n+1)))`
-/

namespace A185204.P6776253057833151652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.land (A046956 n) (A127368 (n + 1))).toNat

end

end A185204.P6776253057833151652

/-! ## A185204.P13915970395326809585

`A005408(and(A046956(n), A127368(n+1)))%3`
-/

namespace A185204.P13915970395326809585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 (Int.land (A046956 n) (A127368 (n + 1))).toNat) 3

end

end A185204.P13915970395326809585

/-! ## A185204.P1427310770430115567

`A024115(and(A046956(n), A127368(n+1)))%3`
-/

namespace A185204.P1427310770430115567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024115 (Int.land (A046956 n) (A127368 (n + 1))).toNat) 3

end

end A185204.P1427310770430115567

/-! ## A185204.P12471383495076888084

`A165704(and(A046956(n), A127368(n+1)))%3`
-/

namespace A185204.P12471383495076888084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165704 (Int.land (A046956 n) (A127368 (n + 1))).toNat) 3

end

end A185204.P12471383495076888084

/-! ## A185204.P13166254976601972296

`A316101(n)+A010051(A080053(n+1))`
-/

namespace A185204.P13166254976601972296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 n + A010051 (A080053 (n + 1)).toNat

end

end A185204.P13166254976601972296

/-!
# A185205: Triangular array D(n,k) counting disconnected k-regular simple graphs on n vertices with girth at least 5.

The programs for A185205, there is no canonical definition to state claims against.
-/

/-! ## A185205.P12673687124056426919

`A185206(lt[A034551(n+1), A185206(2*n+1)])`
-/

namespace A185205.P12673687124056426919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185206 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185206 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A185205.P12673687124056426919

/-! ## A185205.P3905264849934163682

`A185206(4%A319123(n+1)+n+1)`
-/

namespace A185205.P3905264849934163682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185206 (Int.tmod 4 (A319123 (n + 1)) + (n + 1 : ℤ)).toNat

end

end A185205.P3905264849934163682

/-! ## A185205.P7268164564506129113

`A007877(A269743(n+1)%A003594(n+1))`
-/

namespace A185205.P7268164564506129113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (Int.tmod (A269743 (n + 1)) (A003594 (n + 1))).toNat

end

end A185205.P7268164564506129113

/-! ## A185205.P3112768659820661592

`A185206(lt[A185158(3*n+5), A185217(2*n)])`
-/

namespace A185205.P3112768659820661592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185158 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185217 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185206 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A185205.P3112768659820661592

/-! ## A185205.P12364740536400486781

`A007877(A269743(n+1)%(2^n))`
-/

namespace A185205.P12364740536400486781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (Int.tmod (A269743 (n + 1)) (2 ^ n : ℤ)).toNat

end

end A185205.P12364740536400486781

/-!
# A185206: Triangular array D(n,k) counting disconnected k-regular simple graphs on n vertices with girth at least 6.

The programs for A185206, there is no canonical definition to state claims against.
-/

/-! ## A185206.P16045334848174180518

`A238949(A207384(n+1)+A185237(n))`
-/

namespace A185206.P16045334848174180518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238949 (A207384 (n + 1) + A185237 n).toNat

end

end A185206.P16045334848174180518

/-! ## A185206.P3193859014312870811

`A328390(A207384(n+1)+A185237(n))`
-/

namespace A185206.P3193859014312870811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328390 (A207384 (n + 1) + A185237 n).toNat

end

end A185206.P3193859014312870811

/-! ## A185206.P14624725075265985603

`A011655(A059576(2*(n+2)))`
-/

namespace A185206.P14624725075265985603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A059576 (2 * (n + 2))).toNat

end

end A185206.P14624725075265985603

/-! ## A185206.P17772228491962390821

`A130196(A059576(2*n+4))-1`
-/

namespace A185206.P17772228491962390821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130196 (A059576 (2 * n + 4)).toNat - 1

end

end A185206.P17772228491962390821

/-! ## A185206.P18341203661936832592

`∑{e}[A238353(A238353(2*n+3)!)+1, #]`
-/

namespace A185206.P18341203661936832592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238353 (Nat.factorial (A238353 (2 * n + 3)).toNat) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A185206.P18341203661936832592

/-!
# A185207: Triangular array D(n,k) counting disconnected k-regular simple graphs on n vertices with girth at least 7.

The programs for A185207, there is no canonical definition to state claims against.
-/

/-! ## A185207.P7387778630570233939

`A289748(A190430(n+1)+A025429(n))`
-/

namespace A185207.P7387778630570233939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289748 (A190430 (n + 1) + A025429 n).toNat

end

end A185207.P7387778630570233939

/-! ## A185207.P14857542651271080784

`A275606(lcm(A174204(n), A267530(n+3)))`
-/

namespace A185207.P14857542651271080784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275606 (Int.lcm (A174204 n) (A267530 (n + 3)))

end

end A185207.P14857542651271080784

/-! ## A185207.P17522052819807274021

`A182929(n)%A087162(n+1)`
-/

namespace A185207.P17522052819807274021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182929 n) (A087162 (n + 1))

end

end A185207.P17522052819807274021

/-! ## A185207.P4129780931723542858

`A285657(A016724(n+1))`
-/

namespace A185207.P4129780931723542858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285657 (A016724 (n + 1)).toNat

end

end A185207.P4129780931723542858

/-! ## A185207.P7004843794952252764

`A368281(A151574(n+1))`
-/

namespace A185207.P7004843794952252764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368281 (A151574 (n + 1)).toNat

end

end A185207.P7004843794952252764

/-!
# A185208: Numbers having no divisors d > 1 such that d + 1 are prime powers.

The programs for A185208, the canonical program `A185208.P11100610081056688613` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185208 has offset 1).

The definition of A185208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185208.P11100610081056688613

`comp[n-n%xor(n, n+1)]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185208

/-- `comp[n-n%xor(n, n+1)]` -/
def P11100610081056688613.Spec : Prop :=
  ∀ n, (P11100610081056688613.a n : ℤ) = A185208 (n + 1)

theorem P11100610081056688613.correct : P11100610081056688613.Spec := by
  intro n
  simp only [A185208, Nat.add_sub_cancel]

end A185208

/-! ## A185208.P7232320282351106691

`filter[2*n+1, A154402(#)]`
-/

namespace A185208.P7232320282351106691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A154402 (f1 j) = 1) n)

end

end A185208.P7232320282351106691

namespace A185208

/-- `filter[2*n+1, A154402(#)]` -/
def P7232320282351106691.Spec : Prop :=
  ∀ n, (P7232320282351106691.a n : ℤ) = A185208 (n + 1)

end A185208

/-! ## A185208.P12692624038234139925

`eq[and(1, n+1), A154402(n+1)]+1`
-/

namespace A185208.P12692624038234139925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154402 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A185208.P12692624038234139925

namespace A185208

/-- `eq[and(1, n+1), A154402(n+1)]+1` -/
def P12692624038234139925.Spec : Prop :=
  ∀ n, (P12692624038234139925.a n : ℤ) = A185208 (n + 1)

end A185208

/-! ## A185208.P4955137525357837765

`eq[n, A093178(n)*A154402(A093178(n))]`
-/

namespace A185208.P4955137525357837765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n * A154402 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185208.P4955137525357837765

namespace A185208

/-- `eq[n, A093178(n)*A154402(A093178(n))]` -/
def P4955137525357837765.Spec : Prop :=
  ∀ n, (P4955137525357837765.a n : ℤ) = A185208 (n + 1)

end A185208

/-! ## A185208.P6302903078209710482

`A093178(eq[A093178(n+1), A154402(n+2)]+2)`
-/

namespace A185208.P6302903078209710482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154402 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2)

end

end A185208.P6302903078209710482

namespace A185208

/-- `A093178(eq[A093178(n+1), A154402(n+2)]+2)` -/
def P6302903078209710482.Spec : Prop :=
  ∀ n, P6302903078209710482.a n = A185208 (n + 1)

end A185208

/-! ## A185208.P17155801533520282086

`∩[2*n+1, A161790(n+1)]`
-/

namespace A185208.P17155801533520282086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161790 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185208.P17155801533520282086

namespace A185208

/-- `∩[2*n+1, A161790(n+1)]` -/
def P17155801533520282086.Spec : Prop :=
  ∀ n, (P17155801533520282086.a n : ℤ) = A185208 (n + 1)

end A185208

/-! ## A185208.P327207002481574909

`filter[A161790(n+1), A093719(#)]`
-/

namespace A185208.P327207002481574909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A185208.P327207002481574909

namespace A185208

/-- `filter[A161790(n+1), A093719(#)]` -/
def P327207002481574909.Spec : Prop :=
  ∀ n, P327207002481574909.a n = A185208 (n + 1)

end A185208

/-! ## A185208.P11381461720309837528

`filter[A161790(n+1), A320106(#)]`
-/

namespace A185208.P11381461720309837528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A185208.P11381461720309837528

namespace A185208

/-- `filter[A161790(n+1), A320106(#)]` -/
def P11381461720309837528.Spec : Prop :=
  ∀ n, P11381461720309837528.a n = A185208 (n + 1)

end A185208

/-! ## A185208.P2083359352918236657

`filter[A161790(n+1), A354354(#)]`
-/

namespace A185208.P2083359352918236657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A185208.P2083359352918236657

namespace A185208

/-- `filter[A161790(n+1), A354354(#)]` -/
def P2083359352918236657.Spec : Prop :=
  ∀ n, P2083359352918236657.a n = A185208 (n + 1)

end A185208

/-! ## A185208.P15689901262919709882

`filter[A161790(n+1), A373156(#)]`
-/

namespace A185208.P15689901262919709882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A185208.P15689901262919709882

namespace A185208

/-- `filter[A161790(n+1), A373156(#)]` -/
def P15689901262919709882.Spec : Prop :=
  ∀ n, P15689901262919709882.a n = A185208 (n + 1)

end A185208

/-! ## A185208.P14115145049639877755

`filter[A161790(n+1), A374134(#)]`
-/

namespace A185208.P14115145049639877755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161790 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A185208.P14115145049639877755

namespace A185208

/-- `filter[A161790(n+1), A374134(#)]` -/
def P14115145049639877755.Spec : Prop :=
  ∀ n, P14115145049639877755.a n = A185208 (n + 1)

end A185208

/-! ## A185208.P16467247386394872236

`∩[A161790(n+1), A004273(n)]`
-/

namespace A185208.P16467247386394872236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185208.P16467247386394872236

namespace A185208

/-- `∩[A161790(n+1), A004273(n)]` -/
def P16467247386394872236.Spec : Prop :=
  ∀ n, (P16467247386394872236.a n : ℤ) = A185208 (n + 1)

end A185208

/-! ## A185208.P2357552129458702784

`∩[A161790(n+1), A060747(n)]`
-/

namespace A185208.P2357552129458702784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185208.P2357552129458702784

namespace A185208

/-- `∩[A161790(n+1), A060747(n)]` -/
def P2357552129458702784.Spec : Prop :=
  ∀ n, (P2357552129458702784.a n : ℤ) = A185208 (n + 1)

end A185208

/-! ## A185208.P14051542274906005668

`∩[A161790(n+1), A162699(n+1)]`
-/

namespace A185208.P14051542274906005668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185208.P14051542274906005668

namespace A185208

/-- `∩[A161790(n+1), A162699(n+1)]` -/
def P14051542274906005668.Spec : Prop :=
  ∀ n, (P14051542274906005668.a n : ℤ) = A185208 (n + 1)

end A185208

/-! ## A185208.P3062965648709303607

`∩[A161790(n+1), A206547(n+1)]`
-/

namespace A185208.P3062965648709303607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185208.P3062965648709303607

namespace A185208

/-- `∩[A161790(n+1), A206547(n+1)]` -/
def P3062965648709303607.Spec : Prop :=
  ∀ n, (P3062965648709303607.a n : ℤ) = A185208 (n + 1)

end A185208

/-! ## A185208.P2505287063839777576

`A161790(eq[1, and(1, A161790(n+1))]+1)`
-/

namespace A185208.P2505287063839777576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A161790 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161790 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A185208.P2505287063839777576

namespace A185208

/-- `A161790(eq[1, and(1, A161790(n+1))]+1)` -/
def P2505287063839777576.Spec : Prop :=
  ∀ n, P2505287063839777576.a n = A185208 (n + 1)

end A185208

/-! ## A185208.P15962621506669194843

`∩[A161790(n+1), A260392(n+1)]`
-/

namespace A185208.P15962621506669194843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185208.P15962621506669194843

namespace A185208

/-- `∩[A161790(n+1), A260392(n+1)]` -/
def P15962621506669194843.Spec : Prop :=
  ∀ n, (P15962621506669194843.a n : ℤ) = A185208 (n + 1)

end A185208

/-! ## A185208.P2208973702183570243

`∩[A161790(n+1), A328585(n+1)]`
-/

namespace A185208.P2208973702183570243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185208.P2208973702183570243

namespace A185208

/-- `∩[A161790(n+1), A328585(n+1)]` -/
def P2208973702183570243.Spec : Prop :=
  ∀ n, (P2208973702183570243.a n : ℤ) = A185208 (n + 1)

end A185208

/-!
# A185210: Areas A of the triangles such that A, the sides, the inradius and the radius of the three excircles are integers.

The programs for A185210, there is no canonical definition to state claims against.
-/

/-! ## A185210.P8844872281906788403

`∩[A228383(n+1), A345918(n+1)]`
-/

namespace A185210.P8844872281906788403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185210.P8844872281906788403

/-! ## A185210.P13250649561311834692

`∩[A228383(n+1), A246048(n+1)]`
-/

namespace A185210.P13250649561311834692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185210.P13250649561311834692

/-! ## A185210.P8808729017524471098

`∩[A114145(n+2), A228383(n+1)]`
-/

namespace A185210.P8808729017524471098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114145 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185210.P8808729017524471098

/-! ## A185210.P1617252622936138554

`A097603(lt[A097581(n+3), A097585(n+1)])`
-/

namespace A185210.P1617252622936138554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097581 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097603 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A185210.P1617252622936138554

/-! ## A185210.P10225144737013966613

`A228383(lt[A320387(3*n+1), A064413(n+1)])`
-/

namespace A185210.P10225144737013966613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320387 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228383 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A185210.P10225144737013966613

/-!
# A185211: Triangular numbers for which the product of the digits is a nonzero hexagonal number.

The programs for A185211, there is no canonical definition to state claims against.
-/

/-! ## A185211.P15229007079311069807

`∩[A069077(n+1), A117310(n)]`
-/

namespace A185211.P15229007079311069807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117310 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185211.P15229007079311069807

/-! ## A185211.P12173865489236792924

`filter[A117310(n), A168046(#)]`
-/

namespace A185211.P12173865489236792924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A185211.P12173865489236792924

/-! ## A185211.P17770801035679462743

`filter[A117310(n+1), A209929(#)]`
-/

namespace A185211.P17770801035679462743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A185211.P17770801035679462743

/-! ## A185211.P16665857264665771888

`filter[A069077(n+1), A285427(#)]`
-/

namespace A185211.P16665857264665771888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285427 (f1 j).toNat = 1) n)

end

end A185211.P16665857264665771888

/-!
# A185212: a(n) = 12*n^2 - 8*n + 1.

The programs for A185212, the canonical program `A185212.P9778455479555571894` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185212 has offset 0).

The definition of A185212 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*n²-8*n+1` (program `A185212.P9778455479555571894`, by `A185212.P9778455479555571894.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A185212.P18105432486363281795

`ogf((1+2x+21x^2)/(1-3x+3x^2-x^3))`
-/

namespace A185212.P18105432486363281795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 21] [1, -3, 3, -1] n

end

end A185212.P18105432486363281795

namespace A185212

/-- `ogf((1+2x+21x^2)/(1-3x+3x^2-x^3))` -/
def P18105432486363281795.Spec : Prop :=
  ∀ n, P18105432486363281795.a n = A185212 n

end A185212

/-! ## A185212.P9778455479555571894

`12*n²-8*n+1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185212

/-- `12*n²-8*n+1` -/
def P9778455479555571894.Spec : Prop :=
  ∀ n, P9778455479555571894.a n = A185212 n

theorem P9778455479555571894.correct : P9778455479555571894.Spec := by
  intro n
  simp only [A185212]

end A185212

/-! ## A185212.P14720701448364764787

`∑[a(n-1)+24]` with `a(0)=1, a(1)=4`
-/

namespace A185212.P14720701448364764787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185212.P14720701448364764787

namespace A185212

/-- `∑[a(n-1)+24]` -/
def P14720701448364764787.Spec : Prop :=
  ∀ n, (P14720701448364764787.a n : ℤ) = A185212 n

end A185212

/-! ## A185212.P7072741510020839154

`or(1, n*(12*n-8))`
-/

namespace A185212.P7072741510020839154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) * ((12 * n : ℤ) - 8))

end

end A185212.P7072741510020839154

namespace A185212

/-- `or(1, n*(12*n-8))` -/
def P7072741510020839154.Spec : Prop :=
  ∀ n, P7072741510020839154.a n = A185212 n

end A185212

/-! ## A185212.P11182224811410226673

`xor(1, n*(12*n-8))`
-/

namespace A185212.P11182224811410226673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) * ((12 * n : ℤ) - 8))

end

end A185212.P11182224811410226673

namespace A185212

/-- `xor(1, n*(12*n-8))` -/
def P11182224811410226673.Spec : Prop :=
  ∀ n, P11182224811410226673.a n = A185212 n

end A185212

/-! ## A185212.P8787710931558216581

`(A153808(n)+2)/2`
-/

namespace A185212.P8787710931558216581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153808 n + 2 : ℚ) / 2

end

end A185212.P8787710931558216581

namespace A185212

/-- `(A153808(n)+2)/2` -/
def P8787710931558216581.Spec : Prop :=
  ∀ n, P8787710931558216581.a n = (A185212 n : ℚ)

theorem P8787710931558216581.correct : P8787710931558216581.Spec := by
  intro n
  simp only [A185212, Nat.add_sub_cancel, A185212.P8787710931558216581.a, A185212.P9778455479555571894.a, A153808, A153808.P12582623721954130915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185212

/-! ## A185212.P18054120557012153782

`(1-A008588(n))*A165747(n)`
-/

namespace A185212.P18054120557012153782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A008588 n) * A165747 n

end

end A185212.P18054120557012153782

namespace A185212

/-- `(1-A008588(n))*A165747(n)` -/
def P18054120557012153782.Spec : Prop :=
  ∀ n, P18054120557012153782.a n = A185212 n

theorem P18054120557012153782.correct : P18054120557012153782.Spec := by
  intro n
  simp only [A185212, Nat.add_sub_cancel, A185212.P18054120557012153782.a, A185212.P9778455479555571894.a, A008588, A008588.P12386450284809463491.a, A165747, A165747.P841094423596546419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185212

/-! ## A185212.P2089285362764719948

`A158556(n)%A068379(n+1)`
-/

namespace A185212.P2089285362764719948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158556 n) (A068379 (n + 1))

end

end A185212.P2089285362764719948

namespace A185212

/-- `A158556(n)%A068379(n+1)` -/
def P2089285362764719948.Spec : Prop :=
  ∀ n, P2089285362764719948.a n = A185212 n

end A185212

/-! ## A185212.P11927751175440241035

`lcm(A060747(n), A101328(n+2))`
-/

namespace A185212.P11927751175440241035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060747 n) (A101328 (n + 2))

end

end A185212.P11927751175440241035

namespace A185212

/-- `lcm(A060747(n), A101328(n+2))` -/
def P11927751175440241035.Spec : Prop :=
  ∀ n, (P11927751175440241035.a n : ℤ) = A185212 n

end A185212

/-! ## A185212.P11549177944089682923

`Δ[A000384(n)+Δ[A001094(n)]]`
-/

namespace A185212.P11549177944089682923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001094 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185212.P11549177944089682923

namespace A185212

/-- `Δ[A000384(n)+Δ[A001094(n)]]` -/
def P11549177944089682923.Spec : Prop :=
  ∀ n, P11549177944089682923.a n = A185212 n

theorem P11549177944089682923.correct : P11549177944089682923.Spec := by
  intro n
  simp only [A185212, Nat.add_sub_cancel, A185212.P11549177944089682923.f2, A185212.P11549177944089682923.f1, A185212.P11549177944089682923.a, A185212.P9778455479555571894.a, A000384, A000384.P5392390561999168282.a, A001094, A001094.P17747753271672634050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185212

/-! ## A185212.P9115840021235450859

`Δ[A000384(n)+Δ[A052762(n)]]`
-/

namespace A185212.P9115840021235450859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052762 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185212.P9115840021235450859

namespace A185212

/-- `Δ[A000384(n)+Δ[A052762(n)]]` -/
def P9115840021235450859.Spec : Prop :=
  ∀ n, P9115840021235450859.a n = A185212 n

theorem P9115840021235450859.correct : P9115840021235450859.Spec := by
  intro n
  simp only [A185212, Nat.add_sub_cancel, A185212.P9115840021235450859.f2, A185212.P9115840021235450859.f1, A185212.P9115840021235450859.a, A185212.P9778455479555571894.a, A000384, A000384.P5392390561999168282.a, A052762, A052762.P17182617027547716710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185212

/-! ## A185212.P6985640814696769348

`Δ[A130883(n)+Δ[A052762(n)]]`
-/

namespace A185212.P6985640814696769348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052762 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130883 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185212.P6985640814696769348

namespace A185212

/-- `Δ[A130883(n)+Δ[A052762(n)]]` -/
def P6985640814696769348.Spec : Prop :=
  ∀ n, P6985640814696769348.a n = A185212 n

theorem P6985640814696769348.correct : P6985640814696769348.Spec := by
  intro n
  simp only [A185212, Nat.add_sub_cancel, A185212.P6985640814696769348.f2, A185212.P6985640814696769348.f1, A185212.P6985640814696769348.a, A185212.P9778455479555571894.a, A052762, A052762.P17182617027547716710.a, A130883, A130883.P336739246276696576.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185212

/-! ## A185212.P10187929109964618652

`record[(1-n)*A084060(n)]`
-/

namespace A185212.P10187929109964618652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A084060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185212.P10187929109964618652

namespace A185212

/-- `record[(1-n)*A084060(n)]` -/
def P10187929109964618652.Spec : Prop :=
  ∀ n, P10187929109964618652.a n = A185212 n

end A185212

/-! ## A185212.P16592524162664179984

`A060747(3*n)*A060747(n)`
-/

namespace A185212.P16592524162664179984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (3 * n) * A060747 n

end

end A185212.P16592524162664179984

namespace A185212

/-- `A060747(3*n)*A060747(n)` -/
def P16592524162664179984.Spec : Prop :=
  ∀ n, P16592524162664179984.a n = A185212 n

theorem P16592524162664179984.correct : P16592524162664179984.Spec := by
  intro n
  simp only [A185212, Nat.add_sub_cancel, A185212.P16592524162664179984.a, A185212.P9778455479555571894.a, A060747, A060747.P16920431360270313306.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185212

/-! ## A185212.P13005500997029532531

`A367965(A111284(n+1))`
-/

namespace A185212.P13005500997029532531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367965 (A111284 (n + 1)).toNat

end

end A185212.P13005500997029532531

namespace A185212

/-- `A367965(A111284(n+1))` -/
def P13005500997029532531.Spec : Prop :=
  ∀ n, P13005500997029532531.a n = A185212 n

end A185212

/-! ## A185212.P16738492332891939957

`A270454(A004273(n))`
-/

namespace A185212.P16738492332891939957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270454 (A004273 n).toNat

end

end A185212.P16738492332891939957

namespace A185212

/-- `A270454(A004273(n))` -/
def P16738492332891939957.Spec : Prop :=
  ∀ n, P16738492332891939957.a n = A185212 n

end A185212

/-!
# A185214: Number of disconnected regular simple graphs on n vertices with girth at least 4.

The programs for A185214, there is no canonical definition to state claims against.
-/

/-! ## A185214.P17950539091568194969

`A210714(n)+A185215(n)`
-/

namespace A185214.P17950539091568194969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210714 n + A185215 n

end

end A185214.P17950539091568194969

/-! ## A185214.P1427766906259129738

`A185216(n)+A210715(n)+A210714(n)`
-/

namespace A185214.P1427766906259129738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185216 n + (A210715 n + A210714 n)

end

end A185214.P1427766906259129738

/-! ## A185214.P8339709259967821439

`A185215(n)-(A025439(n)-A210714(n))`
-/

namespace A185214.P8339709259967821439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185215 n - (A025439 n - A210714 n)

end

end A185214.P8339709259967821439

/-! ## A185214.P2729797320939351815

`A185215(n)-(A025469(n)-A210714(n))`
-/

namespace A185214.P2729797320939351815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185215 n - (A025469 n - A210714 n)

end

end A185214.P2729797320939351815

/-! ## A185214.P8630386586148127974

`A185215(n)-(A185245(n)-A210714(n))`
-/

namespace A185214.P8630386586148127974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185215 n - (A185245 n - A210714 n)

end

end A185214.P8630386586148127974

/-!
# A185215: Number of disconnected regular simple graphs on n vertices with girth at least 5.

The programs for A185215, there is no canonical definition to state claims against.
-/

/-! ## A185215.P4760553533531409081

`A210715(n)+A185216(n)`
-/

namespace A185215.P4760553533531409081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210715 n + A185216 n

end

end A185215.P4760553533531409081

/-! ## A185215.P16296488210324570471

`A185217(n)+A210716(n)+A210715(n)`
-/

namespace A185215.P16296488210324570471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185217 n + (A210716 n + A210715 n)

end

end A185215.P16296488210324570471

/-! ## A185215.P5473216798940642208

`A185216(n)-(A025439(n)-A210715(n))`
-/

namespace A185215.P5473216798940642208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185216 n - (A025439 n - A210715 n)

end

end A185215.P5473216798940642208

/-! ## A185215.P16475614072765916596

`A185216(n)-(A185246(n)-A210715(n))`
-/

namespace A185215.P16475614072765916596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185216 n - (A185246 n - A210715 n)

end

end A185215.P16475614072765916596

/-! ## A185215.P15429008456483997410

`A185216(n)-A057428(n)*A210715(n)`
-/

namespace A185215.P15429008456483997410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185216 n - A057428 n * A210715 n

end

end A185215.P15429008456483997410

/-!
# A185216: Number of disconnected regular simple graphs on n vertices with girth at least 6.

The programs for A185216, there is no canonical definition to state claims against.
-/

/-! ## A185216.P202635976346975956

`A210716(n)+A185217(n)`
-/

namespace A185216.P202635976346975956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210716 n + A185217 n

end

end A185216.P202635976346975956

/-! ## A185216.P6750278960314401490

`A185218(n)+A210717(n)+A210716(n)`
-/

namespace A185216.P6750278960314401490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185218 n + (A210717 n + A210716 n)

end

end A185216.P6750278960314401490

/-! ## A185216.P8715304805951653855

`A185217(n)-(A025439(n)-A210716(n))`
-/

namespace A185216.P8715304805951653855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185217 n - (A025439 n - A210716 n)

end

end A185216.P8715304805951653855

/-! ## A185216.P1876572929640404702

`A185217(n)-(A185246(n)-A210716(n))`
-/

namespace A185216.P1876572929640404702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185217 n - (A185246 n - A210716 n)

end

end A185216.P1876572929640404702

/-! ## A185216.P891762323672612829

`A185217(n)-A057428(n)*A210716(n)`
-/

namespace A185216.P891762323672612829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185217 n - A057428 n * A210716 n

end

end A185216.P891762323672612829

/-!
# A185217: Number of disconnected regular simple graphs on n vertices with girth at least 7.

The programs for A185217, there is no canonical definition to state claims against.
-/

/-! ## A185217.P18042169491269468299

`A210717(n)+A185218(n)`
-/

namespace A185217.P18042169491269468299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210717 n + A185218 n

end

end A185217.P18042169491269468299

/-! ## A185217.P5423710700624863163

`A185219(n)+A210718(n)+A210717(n)`
-/

namespace A185217.P5423710700624863163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185219 n + (A210718 n + A210717 n)

end

end A185217.P5423710700624863163

/-! ## A185217.P12107928659201312799

`A185218(n)-A057428(n)*A210717(n)`
-/

namespace A185217.P12107928659201312799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185218 n - A057428 n * A210717 n

end

end A185217.P12107928659201312799

/-! ## A185217.P10749837781122748613

`A210717(n)+A185319(n)+A210718(n)-A186729(n)`
-/

namespace A185217.P10749837781122748613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210717 n + (A185319 n + (A210718 n - A186729 n))

end

end A185217.P10749837781122748613

/-! ## A185217.P16289088105573080843

`A185216(n)-A210716(n)`
-/

namespace A185217.P16289088105573080843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185216 n - A210716 n

end

end A185217.P16289088105573080843

/-! ## A185217.P1351870054440785941

`A185216(n)+A057428(n)*A210716(n)`
-/

namespace A185217.P1351870054440785941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185216 n + A057428 n * A210716 n

end

end A185217.P1351870054440785941

/-!
# A185218: Number of disconnected regular simple graphs on n vertices with girth at least 8.

The programs for A185218, there is no canonical definition to state claims against.
-/

/-! ## A185218.P3423675587624987926

`A210718(n)+A185219(n)`
-/

namespace A185218.P3423675587624987926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210718 n + A185219 n

end

end A185218.P3423675587624987926

/-! ## A185218.P8221107789677161402

`A185217(n)-A210717(n)`
-/

namespace A185218.P8221107789677161402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185217 n - A210717 n

end

end A185218.P8221107789677161402

/-! ## A185218.P8229462990614442464

`A185217(n)+A057428(n)*A210717(n)`
-/

namespace A185218.P8229462990614442464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185217 n + A057428 n * A210717 n

end

end A185218.P8229462990614442464

/-! ## A185218.P245213044856314990

`A185217(n)+A210717(n)*A280193(A016813(n))`
-/

namespace A185218.P245213044856314990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185217 n + A210717 n * A280193 (A016813 n).toNat

end

end A185218.P245213044856314990

/-! ## A185218.P10195634947495169370

`A185319(n)+A210718(n)-A186729(n)`
-/

namespace A185218.P10195634947495169370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185319 n + (A210718 n - A186729 n)

end

end A185218.P10195634947495169370

/-! ## A185218.P16056350949215127111

`A185216(n)-(A210717(n)+A210716(n))`
-/

namespace A185218.P16056350949215127111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185216 n - (A210717 n + A210716 n)

end

end A185218.P16056350949215127111

/-!
# A185219: Number of disconnected regular simple graphs on n vertices with girth at least 9.

The programs for A185219, there is no canonical definition to state claims against.
-/

/-! ## A185219.P3884585056825020956

`A185218(n)-A210718(n)`
-/

namespace A185219.P3884585056825020956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185218 n - A210718 n

end

end A185219.P3884585056825020956

/-! ## A185219.P5742744500086184239

`A185218(n)+A210718(n)*A332732(A000040(n+1))`
-/

namespace A185219.P5742744500086184239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185218 n + A210718 n * A332732 (A000040 (n + 1)).toNat

end

end A185219.P5742744500086184239

/-! ## A185219.P5058646402601119023

`A185217(n)-(A210718(n)+A210717(n))`
-/

namespace A185219.P5058646402601119023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185217 n - (A210718 n + A210717 n)

end

end A185219.P5058646402601119023

/-! ## A185219.P17920099655714050893

`A185217(n)-A210717(n)-A210718(A028310(n))`
-/

namespace A185219.P17920099655714050893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185217 n - A210717 n - A210718 (A028310 n).toNat

end

end A185219.P17920099655714050893

/-! ## A185219.P3369507150187360810

`A185319(n)-A186729(n)`
-/

namespace A185219.P3369507150187360810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185319 n - A186729 n

end

end A185219.P3369507150187360810

/-! ## A185219.P7892372286799719167

`A185319(n)-and(1, 55%A240565(n+1))`
-/

namespace A185219.P7892372286799719167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185319 n - Int.land 1 (Int.tmod 55 (A240565 (n + 1)))

end

end A185219.P7892372286799719167

/-!
# A185220: Expansion of phi(x^3) * psi(x)^2 / chi(-x) in powers of x where phi(), psi(), chi() are Ramanujan theta functions.

The programs for A185220, there is no canonical definition to state claims against.
-/

/-! ## A185220.P4219630480519474555

`A224825(3*n)`
-/

namespace A185220.P4219630480519474555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224825 (3 * n)

end

end A185220.P4219630480519474555

/-! ## A185220.P5671409324348538664

`A227595(3*n)`
-/

namespace A185220.P5671409324348538664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227595 (3 * n)

end

end A185220.P5671409324348538664

/-! ## A185220.P10976301292341015730

`A259655(2*n)`
-/

namespace A185220.P10976301292341015730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259655 (2 * n)

end

end A185220.P10976301292341015730

/-! ## A185220.P11272351474276535208

`A321440(3*n+1)`
-/

namespace A185220.P11272351474276535208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321440 (3 * n + 1)

end

end A185220.P11272351474276535208

/-! ## A185220.P4848160992229996667

`or(A000007(n), A224825(A016777(n)-1))`
-/

namespace A185220.P4848160992229996667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A224825 (A016777 n - 1).toNat)

end

end A185220.P4848160992229996667

/-! ## A185220.P11259881710436431368

`A238872(6*n+2)`
-/

namespace A185220.P11259881710436431368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238872 (6 * n + 2)

end

end A185220.P11259881710436431368

/-! ## A185220.P6368758185818652838

`A259884(7*n+n+2)/4`
-/

namespace A185220.P6368758185818652838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259884 (7 * n + (n + 2)) : ℚ) / 4

end

end A185220.P6368758185818652838

/-! ## A185220.P8463382349354892666

`A259827(A016813(2*n))/2`
-/

namespace A185220.P8463382349354892666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259827 (A016813 (2 * n)).toNat : ℚ) / 2

end

end A185220.P8463382349354892666

/-! ## A185220.P4012581465482675170

`A033768(9*n+1)`
-/

namespace A185220.P4012581465482675170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033768 (9 * n + 1)

end

end A185220.P4012581465482675170

/-! ## A185220.P15295225511294141655

`A224823(9*n+2)`
-/

namespace A185220.P15295225511294141655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224823 (9 * n + 2)

end

end A185220.P15295225511294141655

/-! ## A185220.P5819141200152273227

`A006371(A017557(n))`
-/

namespace A185220.P5819141200152273227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006371 (A017557 n).toNat

end

end A185220.P5819141200152273227

/-! ## A185220.P15565651739507059436

`A058305(A135659(n))`
-/

namespace A185220.P15565651739507059436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (A135659 n).toNat

end

end A185220.P15565651739507059436

/-! ## A185220.P277648112580002918

`A058305(A017605(2*n))`
-/

namespace A185220.P277648112580002918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (A017605 (2 * n)).toNat

end

end A185220.P277648112580002918

/-! ## A185220.P17325484118018634772

`A058305(2*A017569(n)-1)`
-/

namespace A185220.P17325484118018634772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (2 * A017569 n - 1).toNat

end

end A185220.P17325484118018634772

/-! ## A185220.P10503867838717738848

`A058305(A017569(n)+A017569(n)-1)`
-/

namespace A185220.P10503867838717738848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (A017569 n + (A017569 n - 1)).toNat

end

end A185220.P10503867838717738848

/-! ## A185220.P241440189048655005

`A058305(A017569(n)-(1-A017569(n)))`
-/

namespace A185220.P241440189048655005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (A017569 n - (1 - A017569 n)).toNat

end

end A185220.P241440189048655005

/-! ## A185220.P8665826564831366496

`A058305(A049453(2*n+1)-A049453(2*n))`
-/

namespace A185220.P8665826564831366496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (A049453 (2 * n + 1) - A049453 (2 * n)).toNat

end

end A185220.P8665826564831366496

/-!
# A185221: E.g.f. is solution to y = 1 + log(1 + x*y) in powers of x.

The programs for A185221, there is no canonical definition to state claims against.
-/

/-! ## A185221.P16960353134237042909

`A177380(n+1)/(n+1)`
-/

namespace A185221.P16960353134237042909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177380 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A185221.P16960353134237042909

/-!
# A185223: A185128(n) is the a(n)-th triangular number.

The programs for A185223, there is no canonical definition to state claims against.
-/

/-! ## A185223.P13071896671931525001

`floor(sqrt(2*A185128(n+1)))`
-/

namespace A185223.P13071896671931525001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A185128 (n + 1))

end

end A185223.P13071896671931525001

/-! ## A185223.P14389153663158455282

`A023443(ceil(sqrt(2*A185128(n+1))))`
-/

namespace A185223.P14389153663158455282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ⌈Real.sqrt (2 * A185128 (n + 1) : ℝ)⌉.toNat

end

end A185223.P14389153663158455282

/-! ## A185223.P12475011865904278717

`A000027(round(sqrt(2*A185128(n+1))))`
-/

namespace A185223.P12475011865904278717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (2 * A185128 (n + 1) : ℝ))).toNat

end

end A185223.P12475011865904278717

/-! ## A185223.P15282285281078016873

`round(A000007(n+1)+sqrt(2*A185128(n+1)))`
-/

namespace A185223.P15282285281078016873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000007 (n + 1) : ℝ) + Real.sqrt (2 * A185128 (n + 1) : ℝ))

end

end A185223.P15282285281078016873

/-! ## A185223.P5015154536914783748

`round(sqrt(2*A185128(n+1)))%A154516(n+1)`
-/

namespace A185223.P5015154536914783748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A185128 (n + 1) : ℝ))) (A154516 (n + 1))

end

end A185223.P5015154536914783748

/-!
# A185224: Number of disconnected 2-regular simple graphs on n vertices with girth at least 4.

The programs for A185224, there is no canonical definition to state claims against.
-/

/-! ## A185224.P10496956372285796118

`A008484(n)-A185114(n)`
-/

namespace A185224.P10496956372285796118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 n - A185114 n

end

end A185224.P10496956372285796118

/-! ## A185224.P496601668582553760

`A008484(n*A130543(n))-1`
-/

namespace A185224.P496601668582553760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 ((n : ℤ) * A130543 n).toNat - 1

end

end A185224.P496601668582553760

/-! ## A185224.P12010715551029682802

`A008484(n*A185117(n))-1`
-/

namespace A185224.P12010715551029682802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 ((n : ℤ) * A185117 n).toNat - 1

end

end A185224.P12010715551029682802

/-! ## A185224.P3343162541080199006

`A008484(n*A185118(n))-1`
-/

namespace A185224.P3343162541080199006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 ((n : ℤ) * A185118 n).toNat - 1

end

end A185224.P3343162541080199006

/-! ## A185224.P7609650028458975793

`A008484(n)-A060576(A000196(n))`
-/

namespace A185224.P7609650028458975793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 n - A060576 (A000196 n).toNat

end

end A185224.P7609650028458975793

/-! ## A185224.P14445190273333616246

`A008484(n)-A060576(A004525(n))`
-/

namespace A185224.P14445190273333616246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 n - A060576 (A004525 n).toNat

end

end A185224.P14445190273333616246

/-! ## A185224.P12103685803248946173

`A008484(n)-A005171(A132171(n))`
-/

namespace A185224.P12103685803248946173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 n - A005171 (A132171 n).toNat

end

end A185224.P12103685803248946173

/-! ## A185224.P7248411129640837456

`A008484(n)-A060576(A202276(n+1))`
-/

namespace A185224.P7248411129640837456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 n - A060576 (A202276 (n + 1)).toNat

end

end A185224.P7248411129640837456

/-! ## A185224.P9481679245545393302

`A008484(n)-A267869(A038722(n+1))`
-/

namespace A185224.P9481679245545393302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 n - A267869 (A038722 (n + 1)).toNat

end

end A185224.P9481679245545393302

/-! ## A185224.P12575855397667621707

`A008484(n)-A008484(C(4, A008484(n)))`
-/

namespace A185224.P12575855397667621707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008484 n - A008484 (Nat.choose 4 (A008484 n).toNat)

end

end A185224.P12575855397667621707

/-! ## A185224.P14613780715467550625

`(A008484(n)-1)%∑[A026798(n)]`
-/

namespace A185224.P14613780715467550625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026798 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008484 n - 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A185224.P14613780715467550625

/-! ## A185224.P7245856254107188773

`A008483(n)-(A185114(n)+A026796(n))`
-/

namespace A185224.P7245856254107188773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 n - (A185114 n + A026796 n)

end

end A185224.P7245856254107188773

/-!
# A185225: Number of disconnected 2-regular simple graphs on n vertices with girth at least 5.

The programs for A185225, there is no canonical definition to state claims against.
-/

/-! ## A185225.P10895730240156884742

`floor(sqrt(A185325(n)²+1))-1`
-/

namespace A185225.P10895730240156884742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A185325 n ^ 2 + 1) - 1

end

end A185225.P10895730240156884742

/-! ## A185225.P1886004623299918056

`round(sqrt(A185325(char[6]+n)²+1))-1`
-/

namespace A185225.P1886004623299918056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A185325 ((if ∃ j, f1 j = n then 1 else 0) + n) ^ 2 + 1 : ℝ)) - 1

end

end A185225.P1886004623299918056

/-! ## A185225.P12068118879861795042

`A185325(n)-A185115(n)`
-/

namespace A185225.P12068118879861795042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185325 n - A185115 n

end

end A185225.P12068118879861795042

/-! ## A185225.P13598095886017050051

`A185325(n*A185116(n))-1`
-/

namespace A185225.P13598095886017050051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185325 ((n : ℤ) * A185116 n).toNat - 1

end

end A185225.P13598095886017050051

/-! ## A185225.P11562026693156190231

`A185325(n*A185117(n))-1`
-/

namespace A185225.P11562026693156190231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185325 ((n : ℤ) * A185117 n).toNat - 1

end

end A185225.P11562026693156190231

/-! ## A185225.P3813560603343383870

`A185325(n*A185118(n))-1`
-/

namespace A185225.P3813560603343383870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185325 ((n : ℤ) * A185118 n).toNat - 1

end

end A185225.P3813560603343383870

/-! ## A185225.P7339378203252004205

`A185325(n*A185119(n))-1`
-/

namespace A185225.P7339378203252004205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185325 ((n : ℤ) * A185119 n).toNat - 1

end

end A185225.P7339378203252004205

/-! ## A185225.P16455985806405625377

`A026798(n+5)-A185115(n)`
-/

namespace A185225.P16455985806405625377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026798 (n + 5) - A185115 n

end

end A185225.P16455985806405625377

/-! ## A185225.P16241231699147241321

`A185325(n)-A003106(A127321(n))`
-/

namespace A185225.P16241231699147241321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185325 n - A003106 (A127321 n).toNat

end

end A185225.P16241231699147241321

/-! ## A185225.P8666325987970787666

`A185325(n)-A057427(A025150(n))`
-/

namespace A185225.P8666325987970787666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185325 n - A057427 (A025150 n).toNat

end

end A185225.P8666325987970787666

/-!
# A185226: Number of disconnected 2-regular simple graphs on n vertices with girth at least 6.

The programs for A185226, there is no canonical definition to state claims against.
-/

/-! ## A185226.P11214198421897024851

`A185326(n)-A185116(n)`
-/

namespace A185226.P11214198421897024851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185326 n - A185116 n

end

end A185226.P11214198421897024851

/-! ## A185226.P3653982476944117666

`A185326(n*A185117(n))-1`
-/

namespace A185226.P3653982476944117666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185326 ((n : ℤ) * A185117 n).toNat - 1

end

end A185226.P3653982476944117666

/-! ## A185226.P11958703884856797423

`A185326(n*A185118(n))-1`
-/

namespace A185226.P11958703884856797423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185326 ((n : ℤ) * A185118 n).toNat - 1

end

end A185226.P11958703884856797423

/-! ## A185226.P10109336587753265421

`A185326(n)-A179184(A003056(n))`
-/

namespace A185226.P10109336587753265421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185326 n - A179184 (A003056 n).toNat

end

end A185226.P10109336587753265421

/-! ## A185226.P4287532134462978408

`A026799(A020715(n))-A185116(n)`
-/

namespace A185226.P4287532134462978408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026799 (A020715 n).toNat - A185116 n

end

end A185226.P4287532134462978408

/-! ## A185226.P3853663460366143715

`A185326(n)-A185117(A099352(n))`
-/

namespace A185226.P3853663460366143715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185326 n - A185117 (A099352 n).toNat

end

end A185226.P3853663460366143715

/-! ## A185226.P17097883385627538616

`A185326(n)-A185117(A001068(n))`
-/

namespace A185226.P17097883385627538616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185326 n - A185117 (A001068 n).toNat

end

end A185226.P17097883385627538616

/-! ## A185226.P4750321392915974399

`A185326(n)-A185118(A032766(n))`
-/

namespace A185226.P4750321392915974399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185326 n - A185118 (A032766 n).toNat

end

end A185226.P4750321392915974399

/-! ## A185226.P3196228197640871161

`(A185326(n)-1)%A005708(n)`
-/

namespace A185226.P3196228197640871161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185326 n - 1) (A005708 n)

end

end A185226.P3196228197640871161

/-! ## A185226.P4394891746918990574

`A185326(n)-A179184(A117707(n))`
-/

namespace A185226.P4394891746918990574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185326 n - A179184 (A117707 n).toNat

end

end A185226.P4394891746918990574

/-!
# A185227: Number of disconnected 2-regular simple graphs on n vertices with girth at least 7.

The programs for A185227, there is no canonical definition to state claims against.
-/

/-! ## A185227.P13598837102214285094

`A185327(n)-A185117(n)`
-/

namespace A185227.P13598837102214285094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185327 n - A185117 n

end

end A185227.P13598837102214285094

/-! ## A185227.P10453589746076298906

`A185327(n*A185118(n))-1`
-/

namespace A185227.P10453589746076298906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185327 ((n : ℤ) * A185118 n).toNat - 1

end

end A185227.P10453589746076298906

/-! ## A185227.P6002843794304647969

`A185327(n)-A179184(A000194(n))`
-/

namespace A185227.P6002843794304647969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185327 n - A179184 (A000194 n).toNat

end

end A185227.P6002843794304647969

/-! ## A185227.P2090583271171120448

`A185327(n)-A185115(A005374(n))`
-/

namespace A185227.P2090583271171120448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185327 n - A185115 (A005374 n).toNat

end

end A185227.P2090583271171120448

/-! ## A185227.P614787614383755427

`A185327(n)-A185114(A110654(n))`
-/

namespace A185227.P614787614383755427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185327 n - A185114 (A110654 n).toNat

end

end A185227.P614787614383755427

/-! ## A185227.P18247912417792397995

`A185327(n)-A185114(A123578(n))`
-/

namespace A185227.P18247912417792397995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185327 n - A185114 (A123578 n).toNat

end

end A185227.P18247912417792397995

/-! ## A185227.P1191640064335278745

`A185327(n)-A179184(A046155(n))`
-/

namespace A185227.P1191640064335278745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185327 n - A179184 (A046155 n).toNat

end

end A185227.P1191640064335278745

/-! ## A185227.P10269497478909981991

`A185327(n)-A185114(A000194(2*n))`
-/

namespace A185227.P10269497478909981991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185327 n - A185114 (A000194 (2 * n)).toNat

end

end A185227.P10269497478909981991

/-! ## A185227.P9147377046504250371

`A185327(n)-A339108(n)%2`
-/

namespace A185227.P9147377046504250371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185327 n - Int.tmod (A339108 n) 2

end

end A185227.P9147377046504250371

/-! ## A185227.P10397051145405246008

`A185327(n)-A179184(A185327(n)+2)`
-/

namespace A185227.P10397051145405246008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185327 n - A179184 (A185327 n + 2).toNat

end

end A185227.P10397051145405246008

/-!
# A185228: Number of disconnected 2-regular simple graphs on n vertices with girth at least 8.

The programs for A185228, there is no canonical definition to state claims against.
-/

/-! ## A185228.P5593760151199262321

`A185328(n)-A185118(n)`
-/

namespace A185228.P5593760151199262321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185328 n - A185118 n

end

end A185228.P5593760151199262321

/-! ## A185228.P12430254258118399738

`A185328(n*A185119(n))-1`
-/

namespace A185228.P12430254258118399738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185328 ((n : ℤ) * A185119 n).toNat - 1

end

end A185228.P12430254258118399738

/-! ## A185228.P10279868146614921365

`A185328(n)-A185114(A004525(n))`
-/

namespace A185228.P10279868146614921365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185328 n - A185114 (A004525 n).toNat

end

end A185228.P10279868146614921365

/-! ## A185228.P14145156689746218636

`A185328(n)-A179184(A202276(n+1))`
-/

namespace A185228.P14145156689746218636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185328 n - A179184 (A202276 (n + 1)).toNat

end

end A185228.P14145156689746218636

/-! ## A185228.P4120221387376411946

`A185328(A185017(n)+n)-A185117(n)`
-/

namespace A185228.P4120221387376411946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185328 (A185017 n + (n : ℤ)).toNat - A185117 n

end

end A185228.P4120221387376411946

/-! ## A185228.P434294692025667198

`A185017(n)-(A185117(n)-A185328(n))`
-/

namespace A185228.P434294692025667198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185017 n - (A185117 n - A185328 n)

end

end A185228.P434294692025667198

/-! ## A185228.P5776691320306984371

`A185328(n)-A339109(n)%2`
-/

namespace A185228.P5776691320306984371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185328 n - Int.tmod (A339109 n) 2

end

end A185228.P5776691320306984371

/-! ## A185228.P14042949373332080451

`(A001584(n)+A185328(n)-1)%A001584(n)`
-/

namespace A185228.P14042949373332080451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001584 n + (A185328 n - 1)) (A001584 n)

end

end A185228.P14042949373332080451

/-! ## A185228.P10646964430403580794

`(A185328(n)-1)%A005710(n)`
-/

namespace A185228.P10646964430403580794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185328 n - 1) (A005710 n)

end

end A185228.P10646964430403580794

/-!
# A185229: Number of disconnected 2-regular simple graphs on n vertices with girth at least 9.

The programs for A185229, there is no canonical definition to state claims against.
-/

/-! ## A185229.P7588323113229719841

`A185329(n)-A185119(n)`
-/

namespace A185229.P7588323113229719841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185329 n - A185119 n

end

end A185229.P7588323113229719841

/-! ## A185229.P3931243862885427128

`A185329(n)-A060576(A110656(n))`
-/

namespace A185229.P3931243862885427128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185329 n - A060576 (A110656 n).toNat

end

end A185229.P3931243862885427128

/-! ## A185229.P8713593507224098538

`A185329(n)-A179184(A000196(n))`
-/

namespace A185229.P8713593507224098538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185329 n - A179184 (A000196 n).toNat

end

end A185229.P8713593507224098538

/-! ## A185229.P13181181258787152048

`A185329(n)-A185115(A004525(n))`
-/

namespace A185229.P13181181258787152048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185329 n - A185115 (A004525 n).toNat

end

end A185229.P13181181258787152048

/-! ## A185229.P5088698558132637212

`A185329(n)-A185116(A005374(n))`
-/

namespace A185229.P5088698558132637212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185329 n - A185116 (A005374 n).toNat

end

end A185229.P5088698558132637212

/-! ## A185229.P3199010506277381147

`A185329(n)-A185115(A055086(n))`
-/

namespace A185229.P3199010506277381147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185329 n - A185115 (A055086 n).toNat

end

end A185229.P3199010506277381147

/-! ## A185229.P10255452421615329547

`A185329(n)-A185116(A073188(n))`
-/

namespace A185229.P10255452421615329547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185329 n - A185116 (A073188 n).toNat

end

end A185229.P10255452421615329547

/-! ## A185229.P9277135712299927465

`A185329(n)-A185115(A110654(n))`
-/

namespace A185229.P9277135712299927465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185329 n - A185115 (A110654 n).toNat

end

end A185229.P9277135712299927465

/-! ## A185229.P9307621257531818814

`A185329(n)-A185118(A121856(n))`
-/

namespace A185229.P9307621257531818814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185329 n - A185118 (A121856 n).toNat

end

end A185229.P9307621257531818814

/-! ## A185229.P5969217334999391902

`A185329(n)-A185114(A202276(n+1))`
-/

namespace A185229.P5969217334999391902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185329 n - A185114 (A202276 (n + 1)).toNat

end

end A185229.P5969217334999391902

/-! ## A185229.P5470752401509643428

`(A185329(n)-1)%A175772(n)`
-/

namespace A185229.P5470752401509643428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185329 n - 1) (A175772 n)

end

end A185229.P5470752401509643428

/-!
# A185231: a(n) = largest prime <= 2a(n-1), with a(0)=1.

The programs for A185231, there is no canonical definition to state claims against.
-/

/-! ## A185231.P16556346617504423988

`A006992(n-A069291(gcd(n, a(n-1))+1)+1)` with `a(0)=1`
-/

namespace A185231.P16556346617504423988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006992 ((n : ℤ) - A069291 (Int.gcd (n : ℤ) (a (n - 1)) + 1) + 1).toNat

end

end A185231.P16556346617504423988

/-! ## A185231.P13529517726351883158

`A006992(A028310(n))-A000007(n)`
-/

namespace A185231.P13529517726351883158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006992 (A028310 n).toNat - A000007 n

end

end A185231.P13529517726351883158

/-! ## A185231.P10451224826198567604

`A006992(A028310(n))/A054977(n)`
-/

namespace A185231.P10451224826198567604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006992 (A028310 n).toNat : ℚ) / (A054977 n : ℚ)

end

end A185231.P10451224826198567604

/-! ## A185231.P7422894595473759468

`A006992(A028310(n))+A057427(n)-1`
-/

namespace A185231.P7422894595473759468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006992 (A028310 n).toNat + (A057427 n - 1)

end

end A185231.P7422894595473759468

/-! ## A185231.P10571232900396925145

`A006992(A000007(n)+n)-A000007(n)`
-/

namespace A185231.P10571232900396925145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006992 (A000007 n + (n : ℤ)).toNat - A000007 n

end

end A185231.P10571232900396925145

/-! ## A185231.P15381572556967778288

`A006992(A028310(n))-A000035(A028586(n))`
-/

namespace A185231.P15381572556967778288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006992 (A028310 n).toNat - A000035 (A028586 n).toNat

end

end A185231.P15381572556967778288

/-! ## A185231.P10635307713658720698

`A000007(n)+A006992(A028310(n))*A057427(n)`
-/

namespace A185231.P10635307713658720698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + A006992 (A028310 n).toNat * A057427 n

end

end A185231.P10635307713658720698

/-! ## A185231.P15869070851488514529

`A113118(n+1)/2`
-/

namespace A185231.P15869070851488514529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113118 (n + 1) : ℚ) / 2

end

end A185231.P15869070851488514529

/-! ## A185231.P5921784608021644243

`A006992(A028310(n))-A028586(n²)`
-/

namespace A185231.P5921784608021644243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006992 (A028310 n).toNat - A028586 (n ^ 2)

end

end A185231.P5921784608021644243

/-! ## A185231.P15011212488978969995

`a(A194184(A182391(n)))*A006992(n)` with `a(0)=1`
-/

namespace A185231.P15011212488978969995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A194184 (A182391 n).toNat).toNat * A006992 n

end

end A185231.P15011212488978969995

/-!
# A185232: n-th arithmetic derivative of n.

The programs for A185232, there is no canonical definition to state claims against.
-/

/-! ## A185232.P4600536827765663387

`A258651(∑[4*n])`
-/

namespace A185232.P4600536827765663387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258651 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A185232.P4600536827765663387

/-! ## A185232.P18429803903657377183

`A258651(A046092(n))%n!`
-/

namespace A185232.P18429803903657377183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258651 (A046092 n).toNat) (Nat.factorial n : ℤ)

end

end A185232.P18429803903657377183

/-! ## A185232.P8874620406150453849

`A057427(n)*A258651(A046092(n))`
-/

namespace A185232.P8874620406150453849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A258651 (A046092 n).toNat

end

end A185232.P8874620406150453849

/-! ## A185232.P7747535500405407369

`A027870(n)!*A258651(A046092(n))`
-/

namespace A185232.P7747535500405407369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A027870 n).toNat : ℤ) * A258651 (A046092 n).toNat

end

end A185232.P7747535500405407369

/-! ## A185232.P9988861744547979635

`A258651(A046092(n))+A007590(n)%2`
-/

namespace A185232.P9988861744547979635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258651 (A046092 n).toNat + Int.tmod (A007590 n) 2

end

end A185232.P9988861744547979635

/-! ## A185232.P10651229140423464026

`A001489(n)+A258651(A046092(n))+n`
-/

namespace A185232.P10651229140423464026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (A258651 (A046092 n).toNat + (n : ℤ))

end

end A185232.P10651229140423464026

/-! ## A185232.P8422468602556991729

`A059268(n)²%3*A258651(A046092(n))`
-/

namespace A185232.P8422468602556991729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059268 n ^ 2) 3 * A258651 (A046092 n).toNat

end

end A185232.P8422468602556991729

/-! ## A185232.P8702707222473563877

`A258651(A046092(n))+n-A004525(2*n)`
-/

namespace A185232.P8702707222473563877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258651 (A046092 n).toNat + (n : ℤ) - A004525 (2 * n)

end

end A185232.P8702707222473563877

/-! ## A185232.P1177609225975247493

`A000045((-1)^(2*n))*A258651(A046092(n))`
-/

namespace A185232.P1177609225975247493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((-1) ^ (2 * n)).toNat * A258651 (A046092 n).toNat

end

end A185232.P1177609225975247493

/-!
# A185233: A185129(n) is the a(n)-th triangular number.

The programs for A185233, there is no canonical definition to state claims against.
-/

/-! ## A185233.P14250860628404691019

`floor(sqrt(2*A185129(n+1)))`
-/

namespace A185233.P14250860628404691019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A185129 (n + 1))

end

end A185233.P14250860628404691019

/-! ## A185233.P8274243442559700650

`A023443(ceil(sqrt(2*A185129(n+1))))`
-/

namespace A185233.P8274243442559700650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ⌈Real.sqrt (2 * A185129 (n + 1) : ℝ)⌉.toNat

end

end A185233.P8274243442559700650

/-! ## A185233.P9838021333119486098

`ceil(sqrt(2*A185129(n+1))-A033999(n)²)`
-/

namespace A185233.P9838021333119486098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A185129 (n + 1) : ℝ) - (A033999 n ^ 2 : ℝ)⌉

end

end A185233.P9838021333119486098

/-! ## A185233.P7123521274624197776

`round(sqrt(2*A185129(n+1))*A057427(n+1))`
-/

namespace A185233.P7123521274624197776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A185129 (n + 1) : ℝ) * (A057427 (n + 1) : ℝ))

end

end A185233.P7123521274624197776

/-! ## A185233.P14211212294938975346

`round(sqrt(2*A185129(n+1))*A007318((n%2)^n))`
-/

namespace A185233.P14211212294938975346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A185129 (n + 1) : ℝ) * (A007318 ((n % 2) ^ n) : ℝ))

end

end A185233.P14211212294938975346

/-!
# A185234: Number of disconnected 3-regular simple graphs on 2n vertices with girth at least 4.

The programs for A185234, there is no canonical definition to state claims against.
-/

/-! ## A185234.P8375369628013608563

`A185235(n)+A185034(n)`
-/

namespace A185234.P8375369628013608563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185235 n + A185034 n

end

end A185234.P8375369628013608563

/-! ## A185234.P8190652664495336575

`A165653(n)-A185033(n)`
-/

namespace A185234.P8190652664495336575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165653 n - A185033 n

end

end A185234.P8190652664495336575

/-! ## A185234.P13556307403408764074

`A185034(n)+A185036(n)+A185035(n)`
-/

namespace A185234.P13556307403408764074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185034 n + (A185036 n + A185035 n)

end

end A185234.P13556307403408764074

/-! ## A185234.P17883402272070374230

`A185034(n)+A185236(n)+A185035(n)`
-/

namespace A185234.P17883402272070374230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185034 n + (A185236 n + A185035 n)

end

end A185234.P17883402272070374230

/-! ## A185234.P14665260026430221856

`A005638(n)-(A185033(n)+A002851(n))`
-/

namespace A185234.P14665260026430221856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005638 n - (A185033 n + A002851 n)

end

end A185234.P14665260026430221856

/-!
# A185235: Number of disconnected 3-regular simple graphs on 2n vertices with girth at least 5.

The programs for A185235, there is no canonical definition to state claims against.
-/

/-! ## A185235.P1100988421868073956

`A185036(n)+A185035(n)`
-/

namespace A185235.P1100988421868073956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185036 n + A185035 n

end

end A185235.P1100988421868073956

/-! ## A185235.P8797784588604161886

`A185236(n)+A185035(n)`
-/

namespace A185235.P8797784588604161886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185236 n + A185035 n

end

end A185235.P8797784588604161886

/-! ## A185235.P3553281302485044208

`A185035(n)-(A011736(n)-A185036(n))`
-/

namespace A185235.P3553281302485044208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185035 n - (A011736 n - A185036 n)

end

end A185235.P3553281302485044208

/-! ## A185235.P10541287152290055080

`A185035(n)-(A011738(n)-A185036(n))`
-/

namespace A185235.P10541287152290055080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185035 n - (A011738 n - A185036 n)

end

end A185235.P10541287152290055080

/-! ## A185235.P11266598591886331368

`A185035(n)-(A011744(n)-A185036(n))`
-/

namespace A185235.P11266598591886331368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185035 n - (A011744 n - A185036 n)

end

end A185235.P11266598591886331368

/-!
# A185236: Number of disconnected 3-regular simple graphs on 2n vertices with girth at least 6.

The programs for A185236, there is no canonical definition to state claims against.
-/

/-! ## A185236.P6846796830939901000

`A185036(n)+char[24]`
-/

namespace A185236.P6846796830939901000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185036 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A185236.P6846796830939901000

/-! ## A185236.P14743154071355574976

`A185037(n)+A185036(n)`
-/

namespace A185236.P14743154071355574976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185037 n + A185036 n

end

end A185236.P14743154071355574976

/-! ## A185236.P736835054905353084

`A185237(n)+A185036(n)`
-/

namespace A185236.P736835054905353084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185237 n + A185036 n

end

end A185236.P736835054905353084

/-! ## A185236.P9087102762219473831

`A185264(n)+A185036(n)`
-/

namespace A185236.P9087102762219473831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185264 n + A185036 n

end

end A185236.P9087102762219473831

/-! ## A185236.P14216825846561786866

`A191928(n)+A185036(n)`
-/

namespace A185236.P14216825846561786866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191928 n + A185036 n

end

end A185236.P14216825846561786866

/-!
# A185237: Number of disconnected 3-regular simple graphs on 2n vertices with girth at least 7.

The programs for A185237, there is no canonical definition to state claims against.
-/

/-! ## A185237.P18066171639776567404

`A185037(n)+char[30]`
-/

namespace A185237.P18066171639776567404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185037 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A185237.P18066171639776567404

/-! ## A185237.P15085198866633684413

`A185238(n)+A185037(n)`
-/

namespace A185237.P15085198866633684413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 n + A185037 n

end

end A185237.P15085198866633684413

/-! ## A185237.P12519948455379624120

`A238403(n+1)+A185037(n)`
-/

namespace A185237.P12519948455379624120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238403 (n + 1) + A185037 n

end

end A185237.P12519948455379624120

/-! ## A185237.P9945154870826399860

`A285007(n+1)+A185037(n)`
-/

namespace A185237.P9945154870826399860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285007 (n + 1) + A185037 n

end

end A185237.P9945154870826399860

/-! ## A185237.P921035296565248777

`A185284(n+2)+A185037(n)`
-/

namespace A185237.P921035296565248777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (n + 2) + A185037 n

end

end A185237.P921035296565248777

/-!
# A185238: Number of disconnected 3-regular simple graphs on 2n vertices with girth at least 8.

The programs for A185238, there is no canonical definition to state claims against.
-/

/-! ## A185238.P12688576903359513004

`A108611(A034551(n+1))+A025443(n)`
-/

namespace A185238.P12688576903359513004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A034551 (n + 1)).toNat + A025443 n

end

end A185238.P12688576903359513004

/-! ## A185238.P14905783696081448662

`A126646(n)%A151551(A034461(n+1))`
-/

namespace A185238.P14905783696081448662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 n) (A151551 (A034461 (n + 1)).toNat)

end

end A185238.P14905783696081448662

/-! ## A185238.P2438603410367291489

`A106747(and(A034461(n+1), A141214(n)))`
-/

namespace A185238.P2438603410367291489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 (Int.land (A034461 (n + 1)) (A141214 n)).toNat

end

end A185238.P2438603410367291489

/-! ## A185238.P13941828230792429857

`or(A011744(n), A108611(A034551(n+1)))`
-/

namespace A185238.P13941828230792429857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011744 n) (A108611 (A034551 (n + 1)).toNat)

end

end A185238.P13941828230792429857

/-! ## A185238.P12248075311257513305

`A321936(A180174(n))`
-/

namespace A185238.P12248075311257513305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 (A180174 n).toNat

end

end A185238.P12248075311257513305

/-!
# A185240: Numbers k such that (35^k + 1)/36 is prime.

The programs for A185240, there is no canonical definition to state claims against.
-/

/-! ## A185240.P8490744094166072764

`p?[A285503(a(n-1)+2)-n]` with `a(0)=0, a(1)=11, a(2)=1`
-/

namespace A185240.P8490744094166072764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 11, 1] fun n f1 =>
  A285503 (f1 (n - 1) + 2).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185240.P8490744094166072764

/-!
# A185242: Successive integers produced by Conway's PRIMEGAME, starting with 3 rather than 2.

The programs for A185242, there is no canonical definition to state claims against.
-/

/-! ## A185242.P7299330879613466258

`A203907(a(n-1))` with `a(0)=3`
-/

namespace A185242.P7299330879613466258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A203907 (a (n - 1)).toNat

end

end A185242.P7299330879613466258

/-!
# A185243: a(n) = A185128(n) + A185129(n).

The programs for A185243, there is no canonical definition to state claims against.
-/

/-! ## A185243.P2286061890147761522

`A185128(n+1)+A185129(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A185243.P2286061890147761522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185128 (n + 1) + A185129 (n + 1)

end

end A185243.P2286061890147761522

/-! ## A185243.P15093435303247954469

`C(A185257(n+1)+1, 2)`
-/

namespace A185243.P15093435303247954469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A185257 (n + 1) + 1).toNat 2

end

end A185243.P15093435303247954469

/-! ## A185243.P9762529438520836599

`A000217(A185257(n+1))`
-/

namespace A185243.P9762529438520836599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A185257 (n + 1)).toNat

end

end A185243.P9762529438520836599

/-! ## A185243.P1117927010860595420

`A161680(A185257(n+1)+1)`
-/

namespace A185243.P1117927010860595420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A185257 (n + 1) + 1).toNat

end

end A185243.P1117927010860595420

/-! ## A185243.P13300361752837109154

`A179865(A185257(n+1)+1)`
-/

namespace A185243.P13300361752837109154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A185257 (n + 1) + 1).toNat

end

end A185243.P13300361752837109154

/-!
# A185245: Number of disconnected 4-regular simple graphs on n vertices with girth at least 5.

The programs for A185245, there is no canonical definition to state claims against.
-/

/-! ## A185245.P8806130269156186181

`floor((A162823(n+1)/534)²)`
-/

namespace A185245.P8806130269156186181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A162823 (n + 1) : ℚ) / 534) ^ 2⌋

end

end A185245.P8806130269156186181

/-! ## A185245.P7871829763176625047

`A209859(A034487(n+1))`
-/

namespace A185245.P7871829763176625047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209859 (A034487 (n + 1)).toNat

end

end A185245.P7871829763176625047

/-! ## A185245.P8642692107517645102

`A302930(A161618(n+1))`
-/

namespace A185245.P8642692107517645102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302930 (A161618 (n + 1)).toNat

end

end A185245.P8642692107517645102

/-! ## A185245.P12803335775001194491

`A134653(A034469(n+2))`
-/

namespace A185245.P12803335775001194491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134653 (A034469 (n + 2)).toNat

end

end A185245.P12803335775001194491

/-! ## A185245.P13329573841414783509

`A330240(C(A051933(n), 10))`
-/

namespace A185245.P13329573841414783509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330240 (Nat.choose (A051933 n).toNat 10)

end

end A185245.P13329573841414783509

/-!
# A185246: Number of disconnected 4-regular simple graphs on n vertices with girth at least 6.

The programs for A185246, there is no canonical definition to state claims against.
-/

/-! ## A185246.P14402108067607919219

`A324661(C(A070868(n+1), 14))`
-/

namespace A185246.P14402108067607919219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324661 (Nat.choose (A070868 (n + 1)).toNat 14)

end

end A185246.P14402108067607919219

/-! ## A185246.P10960984739354740830

`A049085(C(A070868(n+1), 14)²)`
-/

namespace A185246.P10960984739354740830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049085 (Nat.choose (A070868 (n + 1)).toNat 14 ^ 2)

end

end A185246.P10960984739354740830

/-! ## A185246.P11869602162029177479

`A185284(A025901(3*n+1))%9`
-/

namespace A185246.P11869602162029177479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185284 (A025901 (3 * n + 1)).toNat) 9

end

end A185246.P11869602162029177479

/-! ## A185246.P5089735302982033134

`A004185(C(A070868(n+1), 14)²)%10`
-/

namespace A185246.P5089735302982033134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004185 (Nat.choose (A070868 (n + 1)).toNat 14 ^ 2)) 10

end

end A185246.P5089735302982033134

/-! ## A185246.P10891785889096156311

`val(A334100(C(A070868(n+1), 14)+1), 2)`
-/

namespace A185246.P10891785889096156311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A334100 (Nat.choose (A070868 (n + 1)).toNat 14 + 1)).toNat 2

end

end A185246.P10891785889096156311

/-! ## A185246.P7049363611181560812

`A007906(C(A070868(n+1), 14)²+1)-1`
-/

namespace A185246.P7049363611181560812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007906 (Nat.choose (A070868 (n + 1)).toNat 14 ^ 2 + 1) - 1

end

end A185246.P7049363611181560812

/-! ## A185246.P2152175131235419500

`A339601(A034537(∑[1-a(n-1)]+1))` with `a(0)=5`
-/

namespace A185246.P2152175131235419500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339601 (A034537 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat).toNat

end

end A185246.P2152175131235419500

/-! ## A185246.P3811352644970279606

`A324179(A220777(n)+A210717(n))`
-/

namespace A185246.P3811352644970279606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324179 (A220777 n + A210717 n).toNat

end

end A185246.P3811352644970279606

/-! ## A185246.P1074080580874294896

`A326597(A334857(n+1))^A058281(n)`
-/

namespace A185246.P1074080580874294896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326597 (A334857 (n + 1)).toNat : ℚ) ^ (A058281 n : ℤ)

end

end A185246.P1074080580874294896

/-! ## A185246.P14281319169755538127

`A326597(A334857(n+1)%A052144(n))`
-/

namespace A185246.P14281319169755538127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326597 (Int.tmod (A334857 (n + 1)) (A052144 n)).toNat

end

end A185246.P14281319169755538127

/-!
# A185247: Expansion of 3F2( (1/4,1/2,3/4); (4,6) )(256 x).

The programs for A185247, there is no canonical definition to state claims against.
-/

/-! ## A185247.P13275194773519253892

`A324478(n)/∑[sqrt(A288876(n))]`
-/

namespace A185247.P13275194773519253892
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A288876 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A324478 n : ℝ) / (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A185247.P13275194773519253892

/-!
# A185248: Expansion of 3F2( (1/2, 3/2, 5/2); (3, 5))(64 x).

The programs for A185248, there is no canonical definition to state claims against.
-/

/-! ## A185248.P12253471692669824772

`A002057(n)*A005568(n)`
-/

namespace A185248.P12253471692669824772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n * A005568 n

end

end A185248.P12253471692669824772

/-! ## A185248.P7328107908883187394

`A005568(n)*A099376(n+1)`
-/

namespace A185248.P7328107908883187394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005568 n * A099376 (n + 1)

end

end A185248.P7328107908883187394

/-! ## A185248.P17353771636391154690

`A000108(n)*A002057(n)*record[A097331(n)]`
-/

namespace A185248.P17353771636391154690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A002057 n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185248.P17353771636391154690

/-! ## A185248.P1148365918754822747

`A000108(n+1)*A000108(n)*A002057(n)`
-/

namespace A185248.P1148365918754822747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A000108 n * A002057 n

end

end A185248.P1148365918754822747

/-! ## A185248.P5874161116600052895

`A000108(n+1)*A099376(n+1)*A000108(n)`
-/

namespace A185248.P5874161116600052895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A099376 (n + 1) * A000108 n

end

end A185248.P5874161116600052895

/-!
# A185249: Triangle read by rows: Table III.5 of Myriam de Sainte-Catherine's 1983 thesis.

The programs for A185249, there is no canonical definition to state claims against.
-/

/-! ## A185249.P4824136634271184841

`A139325(2^A119467(n))`
-/

namespace A185249.P4824136634271184841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139325 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A119467 n : ℤ))).toNat

end

end A185249.P4824136634271184841

/-! ## A185249.P15463488667462652412

`A287272(2^A119467(n))`
-/

namespace A185249.P15463488667462652412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A119467 n : ℤ))).toNat

end

end A185249.P15463488667462652412

/-! ## A185249.P10209818237108148798

`A083415(3^A119467(n))`
-/

namespace A185249.P10209818237108148798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083415 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A119467 n : ℤ))).toNat

end

end A185249.P10209818237108148798

/-! ## A185249.P13228201214855480188

`A213911(4^A119467(n))`
-/

namespace A185249.P13228201214855480188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A119467 n : ℤ))).toNat

end

end A185249.P13228201214855480188

/-! ## A185249.P6953155366281543982

`A000120(floor(exp(A091917(n))))`
-/

namespace A185249.P6953155366281543982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ⌊Real.exp (A091917 n : ℝ)⌋.toNat

end

end A185249.P6953155366281543982

/-!
# A185250: Array A(n,k), n > 0, k = 1,2 read by rows such that (A(n,1), A(n,2)) are the pairs of primes (p, q), p < q, where the decimal digits of q are the 9's complement of the decimal digits of p.

The programs for A185250, there is no canonical definition to state claims against.
-/

/-! ## A185250.P9071842772530363200

`A344482(A061870(2*n+1)-A005206(n))`
-/

namespace A185250.P9071842772530363200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344482 (A061870 (2 * n + 1) - A005206 n).toNat

end

end A185250.P9071842772530363200

/-!
# A185251: a(n) = Sum_{k=0..floor(n/2)} k*binomial(n,k).

The programs for A185251, the canonical program `A185251.P17962619541438210473` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185251 has offset 0).

The definition of A185251 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[floor(n/2), #*C(n, #)]` (program `A185251.P17962619541438210473`, by `A185251.P17962619541438210473.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A185251.P17962619541438210473

`∑{#}[floor(n/2), #*C(n, #)]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185251

/-- `∑{#}[floor(n/2), #*C(n, #)]` -/
def P17962619541438210473.Spec : Prop :=
  ∀ n, (P17962619541438210473.a n : ℤ) = A185251 n

theorem P17962619541438210473.correct : P17962619541438210473.Spec := by
  intro n
  simp only [A185251]

end A185251

/-! ## A185251.P6434148689965256975

`n*A058622(A028310(n)-1)`
-/

namespace A185251.P6434148689965256975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A058622 (A028310 n - 1).toNat

end

end A185251.P6434148689965256975

namespace A185251

/-- `n*A058622(A028310(n)-1)` -/
def P6434148689965256975.Spec : Prop :=
  ∀ n, P6434148689965256975.a n = A185251 n

end A185251

/-! ## A185251.P9546122796799838455

`n*(A027306(n)-A116406(n))`
-/

namespace A185251.P9546122796799838455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A027306 n - A116406 n)

end

end A185251.P9546122796799838455

namespace A185251

/-- `n*(A027306(n)-A116406(n))` -/
def P9546122796799838455.Spec : Prop :=
  ∀ n, P9546122796799838455.a n = A185251 n

end A185251

/-! ## A185251.P8701682267621588404

`n*A058622(A153881(n+1)+n)`
-/

namespace A185251.P8701682267621588404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A058622 (A153881 (n + 1) + (n : ℤ)).toNat

end

end A185251.P8701682267621588404

namespace A185251

/-- `n*A058622(A153881(n+1)+n)` -/
def P8701682267621588404.Spec : Prop :=
  ∀ n, P8701682267621588404.a n = A185251 n

end A185251

/-! ## A185251.P4984848182173116988

`A185252(n)-A138364(n)*A152271(n)`
-/

namespace A185251.P4984848182173116988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185252 n - A138364 n * A152271 n

end

end A185251.P4984848182173116988

namespace A185251

/-- `A185252(n)-A138364(n)*A152271(n)` -/
def P4984848182173116988.Spec : Prop :=
  ∀ n, P4984848182173116988.a n = A185251 n

end A185251

/-! ## A185251.P10678145641415282425

`A185252(n)-lcm(A056040(n), A138364(n))`
-/

namespace A185251.P10678145641415282425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185252 n - (Int.lcm (A056040 n) (A138364 n) : ℤ)

end

end A185251.P10678145641415282425

namespace A185251

/-- `A185252(n)-lcm(A056040(n), A138364(n))` -/
def P10678145641415282425.Spec : Prop :=
  ∀ n, P10678145641415282425.a n = A185251 n

end A185251

/-! ## A185251.P17386244111387295445

`A001787(n)-A185252(n)`
-/

namespace A185251.P17386244111387295445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n - A185252 n

end

end A185251.P17386244111387295445

namespace A185251

/-- `A001787(n)-A185252(n)` -/
def P17386244111387295445.Spec : Prop :=
  ∀ n, P17386244111387295445.a n = A185251 n

end A185251

/-! ## A185251.P7213289569182017247

`n*A011782(n)-A185252(n)`
-/

namespace A185251.P7213289569182017247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011782 n - A185252 n

end

end A185251.P7213289569182017247

namespace A185251

/-- `n*A011782(n)-A185252(n)` -/
def P7213289569182017247.Spec : Prop :=
  ∀ n, P7213289569182017247.a n = A185251 n

end A185251

/-! ## A185251.P14312866823780148701

`n*A248574(n)-A230137(n)`
-/

namespace A185251.P14312866823780148701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A248574 n - A230137 n

end

end A185251.P14312866823780148701

namespace A185251

/-- `n*A248574(n)-A230137(n)` -/
def P14312866823780148701.Spec : Prop :=
  ∀ n, P14312866823780148701.a n = A185251 n

end A185251

/-! ## A185251.P6671550535837840802

`A239632(A004273(n))-A185252(n)`
-/

namespace A185251.P6671550535837840802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239632 (A004273 n).toNat - A185252 n

end

end A185251.P6671550535837840802

namespace A185251

/-- `A239632(A004273(n))-A185252(n)` -/
def P6671550535837840802.Spec : Prop :=
  ∀ n, P6671550535837840802.a n = A185251 n

end A185251

/-! ## A185251.P915054681141648118

`A230137(n)-(A185252(n)+A100071(n))`
-/

namespace A185251.P915054681141648118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230137 n - (A185252 n + A100071 n)

end

end A185251.P915054681141648118

namespace A185251

/-- `A230137(n)-(A185252(n)+A100071(n))` -/
def P915054681141648118.Spec : Prop :=
  ∀ n, P915054681141648118.a n = A185251 n

end A185251

/-! ## A185251.P16601812629355501044

`A189391(n)+A206603(n)-A185252(n)`
-/

namespace A185251.P16601812629355501044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189391 n + (A206603 n - A185252 n)

end

end A185251.P16601812629355501044

namespace A185251

/-- `A189391(n)+A206603(n)-A185252(n)` -/
def P16601812629355501044.Spec : Prop :=
  ∀ n, P16601812629355501044.a n = A185251 n

end A185251

/-! ## A185251.P10736891363077871765

`A107373(n+1)+A130783(n)-A185252(n)`
-/

namespace A185251.P10736891363077871765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (n + 1) + (A130783 n - A185252 n)

end

end A185251.P10736891363077871765

namespace A185251

/-- `A107373(n+1)+A130783(n)-A185252(n)` -/
def P10736891363077871765.Spec : Prop :=
  ∀ n, P10736891363077871765.a n = A185251 n

end A185251

/-! ## A185251.P8702275560390594149

`∑{#}[floor(n/2), C(n, #)*#]`
-/

namespace A185251.P8702275560390594149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose n k * k

end

end A185251.P8702275560390594149

namespace A185251

/-- `∑{#}[floor(n/2), C(n, #)*#]` -/
def P8702275560390594149.Spec : Prop :=
  ∀ n, (P8702275560390594149.a n : ℤ) = A185251 n

end A185251

/-! ## A185251.P17730014524737411907

`A002697(n)/A011782(n)-A185252(n)`
-/

namespace A185251.P17730014524737411907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002697 n : ℚ) / (A011782 n : ℚ) - (A185252 n : ℚ)

end

end A185251.P17730014524737411907

namespace A185251

/-- `A002697(n)/A011782(n)-A185252(n)` -/
def P17730014524737411907.Spec : Prop :=
  ∀ n, P17730014524737411907.a n = (A185251 n : ℚ)

end A185251

/-!
# A185252: a(n) = Sum_{k=0..ceiling(n/2)} k*binomial(n,k).

The programs for A185252, the canonical program `A185252.P12025771986522704603` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185252 has offset 0).

The definition of A185252 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[ceil(n/2), #*C(n, #)]` (program `A185252.P12025771986522704603`, by `A185252.P12025771986522704603.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A185252.P12025771986522704603

`∑{#}[ceil(n/2), #*C(n, #)]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185252

/-- `∑{#}[ceil(n/2), #*C(n, #)]` -/
def P12025771986522704603.Spec : Prop :=
  ∀ n, (P12025771986522704603.a n : ℤ) = A185252 n

theorem P12025771986522704603.correct : P12025771986522704603.Spec := by
  intro n
  simp only [A185252]

end A185252

/-! ## A185252.P13578347679694665257

`n*A027306((2*n)%(n+1))`
-/

namespace A185252.P13578347679694665257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A027306 (2 * n % (n + 1))

end

end A185252.P13578347679694665257

namespace A185252

/-- `n*A027306((2*n)%(n+1))` -/
def P13578347679694665257.Spec : Prop :=
  ∀ n, P13578347679694665257.a n = A185252 n

end A185252

/-! ## A185252.P5477757499154582802

`n*A027306(floor(n²/(n+1)))`
-/

namespace A185252.P5477757499154582802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A027306 ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A185252.P5477757499154582802

namespace A185252

/-- `n*A027306(floor(n²/(n+1)))` -/
def P5477757499154582802.Spec : Prop :=
  ∀ n, P5477757499154582802.a n = A185252 n

end A185252

/-! ## A185252.P874634989305456424

`n*(A248574(n)-A027306(n))`
-/

namespace A185252.P874634989305456424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A248574 n - A027306 n)

end

end A185252.P874634989305456424

namespace A185252

/-- `n*(A248574(n)-A027306(n))` -/
def P874634989305456424.Spec : Prop :=
  ∀ n, P874634989305456424.a n = A185252 n

end A185252

/-! ## A185252.P17590153872981956991

`A001787(n)-A185251(n)`
-/

namespace A185252.P17590153872981956991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n - A185251 n

end

end A185252.P17590153872981956991

namespace A185252

/-- `A001787(n)-A185251(n)` -/
def P17590153872981956991.Spec : Prop :=
  ∀ n, P17590153872981956991.a n = A185252 n

end A185252

/-! ## A185252.P9019180946797513478

`n*A011782(n)-A185251(n)`
-/

namespace A185252.P9019180946797513478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A011782 n - A185251 n

end

end A185252.P9019180946797513478

namespace A185252

/-- `n*A011782(n)-A185251(n)` -/
def P9019180946797513478.Spec : Prop :=
  ∀ n, P9019180946797513478.a n = A185252 n

end A185252

/-! ## A185252.P14074742444173522583

`A185251(n+1)+A185251(n)-A130783(n)`
-/

namespace A185252.P14074742444173522583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185251 (n + 1) + (A185251 n - A130783 n)

end

end A185252.P14074742444173522583

namespace A185252

/-- `A185251(n+1)+A185251(n)-A130783(n)` -/
def P14074742444173522583.Spec : Prop :=
  ∀ n, P14074742444173522583.a n = A185252 n

end A185252

/-! ## A185252.P9405642561652045113

`n*A055248(A007590(n))`
-/

namespace A185252.P9405642561652045113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A055248 (A007590 n).toNat

end

end A185252.P9405642561652045113

namespace A185252

/-- `n*A055248(A007590(n))` -/
def P9405642561652045113.Spec : Prop :=
  ∀ n, P9405642561652045113.a n = A185252 n

end A185252

/-! ## A185252.P8559819161118252043

`n*A055248(2*A002620(n))`
-/

namespace A185252.P8559819161118252043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A055248 (2 * A002620 n).toNat

end

end A185252.P8559819161118252043

namespace A185252

/-- `n*A055248(2*A002620(n))` -/
def P8559819161118252043.Spec : Prop :=
  ∀ n, P8559819161118252043.a n = A185252 n

end A185252

/-! ## A185252.P3118765613392375500

`n*A226873(A046691(n)+1)`
-/

namespace A185252.P3118765613392375500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A226873 (A046691 n + 1).toNat

end

end A185252.P3118765613392375500

namespace A185252

/-- `n*A226873(A046691(n)+1)` -/
def P3118765613392375500.Spec : Prop :=
  ∀ n, P3118765613392375500.a n = A185252 n

end A185252

/-! ## A185252.P11380982735311876023

`n*A226873(A000096(n)+n)`
-/

namespace A185252.P11380982735311876023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A226873 (A000096 n + (n : ℤ)).toNat

end

end A185252.P11380982735311876023

namespace A185252

/-- `n*A226873(A000096(n)+n)` -/
def P11380982735311876023.Spec : Prop :=
  ∀ n, P11380982735311876023.a n = A185252 n

end A185252

/-! ## A185252.P2779921780268170091

`n*A226873(A055999(n)-n)`
-/

namespace A185252.P2779921780268170091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A226873 (A055999 n - (n : ℤ)).toNat

end

end A185252.P2779921780268170091

namespace A185252

/-- `n*A226873(A055999(n)-n)` -/
def P2779921780268170091.Spec : Prop :=
  ∀ n, P2779921780268170091.a n = A185252 n

end A185252

/-! ## A185252.P5349099154952384780

`n*A226873(A034856(n+1)-1)`
-/

namespace A185252.P5349099154952384780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A226873 (A034856 (n + 1) - 1).toNat

end

end A185252.P5349099154952384780

namespace A185252

/-- `n*A226873(A034856(n+1)-1)` -/
def P5349099154952384780.Spec : Prop :=
  ∀ n, P5349099154952384780.a n = A185252 n

end A185252

/-!
# A185253: a(n) = A185128(n) - A185129(n).

The programs for A185253, there is no canonical definition to state claims against.
-/

/-! ## A185253.P12860413273546306299

`A185128(n+1)-A185129(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A185253.P12860413273546306299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185128 (n + 1) - A185129 (n + 1)

end

end A185253.P12860413273546306299

/-! ## A185253.P823844352980111380

`C(A185258(n+1)+1, 2)`
-/

namespace A185253.P823844352980111380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A185258 (n + 1) + 1).toNat 2

end

end A185253.P823844352980111380

/-! ## A185253.P6251843272684600709

`A000217(A185258(n+1))`
-/

namespace A185253.P6251843272684600709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A185258 (n + 1)).toNat

end

end A185253.P6251843272684600709

/-! ## A185253.P18256317141738580507

`A161680(A185258(n+1)+1)`
-/

namespace A185253.P18256317141738580507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A185258 (n + 1) + 1).toNat

end

end A185253.P18256317141738580507

/-! ## A185253.P6555332714759874544

`A179865(A185258(n+1)+1)`
-/

namespace A185253.P6555332714759874544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A185258 (n + 1) + 1).toNat

end

end A185253.P6555332714759874544

/-!
# A185254: Number of disconnected 5-regular simple graphs on 2n vertices with girth at least 4.

The programs for A185254, there is no canonical definition to state claims against.
-/

/-! ## A185254.P12034091221252754584

`A020657(2^A033483(n))`
-/

namespace A185254.P12034091221252754584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020657 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A033483 n : ℤ))).toNat

end

end A185254.P12034091221252754584

/-! ## A185254.P11815801690009209596

`A280060(2^A154781(n))`
-/

namespace A185254.P11815801690009209596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280060 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A154781 n : ℤ))).toNat

end

end A185254.P11815801690009209596

/-! ## A185254.P16985960293074918113

`A076538(A014382(n+1)+1)`
-/

namespace A185254.P16985960293074918113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076538 (A014382 (n + 1) + 1).toNat

end

end A185254.P16985960293074918113

/-! ## A185254.P10045119876618378668

`A293641(A251746(n)^A286852(n))`
-/

namespace A185254.P10045119876618378668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293641 (SequenceMachineLib.roundAway ((A251746 n : ℚ) ^ (A286852 n : ℤ))).toNat

end

end A185254.P10045119876618378668

/-! ## A185254.P4724349373591740514

`A339560(A226916(n+3)^A226916(n))`
-/

namespace A185254.P4724349373591740514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339560 (SequenceMachineLib.roundAway ((A226916 (n + 3) : ℚ) ^ (A226916 n : ℤ))).toNat

end

end A185254.P4724349373591740514

/-!
# A185255: Number of disconnected 5-regular simple graphs on 2n vertices with girth at least 5.

The programs for A185255, there is no canonical definition to state claims against.
-/

/-! ## A185255.P15206877677482369635

`10*∑[A034549(n+1)]²`
-/

namespace A185255.P15206877677482369635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A185255.P15206877677482369635

/-! ## A185255.P5322890932409287542

`10*∑[A034567(n+1)]²`
-/

namespace A185255.P5322890932409287542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A185255.P5322890932409287542

/-! ## A185255.P12402680464158098791

`A305889(A034529(n+1))`
-/

namespace A185255.P12402680464158098791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305889 (A034529 (n + 1)).toNat

end

end A185255.P12402680464158098791

/-! ## A185255.P12933190695863375878

`10*A182722(A034851(n))`
-/

namespace A185255.P12933190695863375878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A182722 (A034851 n).toNat

end

end A185255.P12933190695863375878

/-! ## A185255.P5311665000997256847

`10*A331576(A004247(n))`
-/

namespace A185255.P5311665000997256847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A331576 (A004247 n).toNat

end

end A185255.P5311665000997256847

/-!
# A185256: Stanley Sequence S(0,3).

The programs for A185256, the canonical program `A185256.P14243737951295279238` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185256 has offset 1).

The definition of A185256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185256.P1478751457831725646

`A033157(n+1)-1`
-/

namespace A185256.P1478751457831725646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033157 (n + 1) - 1

end

end A185256.P1478751457831725646

namespace A185256

/-- `A033157(n+1)-1` -/
def P1478751457831725646.Spec : Prop :=
  ∀ n, P1478751457831725646.a n = A185256 (n + 1)

theorem P1478751457831725646.correct : P1478751457831725646.Spec := by
  intro n
  simp only [A185256, Nat.add_sub_cancel, A185256.P1478751457831725646.a, A185256.P14243737951295279238.a, A033157, A033157.P10781485780208723287.a, A033161, A033161.P7450569827711651060.a, A033160, A033160.P14903934844071324041.a, A140081, A140081.P14265476151605300908.a, A004793, A004793.P14402439767548149062.a, A003278, A003278.P16270542562507883629.f1, A003278.P16270542562507883629.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185256

/-! ## A185256.P14243737951295279238

`A033161(n+1)-2`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A185256

/-- `A033161(n+1)-2` -/
def P14243737951295279238.Spec : Prop :=
  ∀ n, P14243737951295279238.a n = A185256 (n + 1)

theorem P14243737951295279238.correct : P14243737951295279238.Spec := by
  intro n
  simp only [A185256, Nat.add_sub_cancel]

end A185256

/-! ## A185256.P14840954417169160747

`A186776(n+1)+A140081(n)`
-/

namespace A185256.P14840954417169160747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186776 (n + 1) + A140081 n

end

end A185256.P14840954417169160747

namespace A185256

/-- `A186776(n+1)+A140081(n)` -/
def P14840954417169160747.Spec : Prop :=
  ∀ n, P14840954417169160747.a n = A185256 (n + 1)

theorem P14840954417169160747.correct : P14840954417169160747.Spec := by
  intro n
  simp only [A185256, Nat.add_sub_cancel, A185256.P14840954417169160747.a, A185256.P14243737951295279238.a, A033161, A033161.P7450569827711651060.a, A140081, A140081.P14265476151605300908.a, A186776, A186776.P17009521900512411188.a, A004793, A004793.P14402439767548149062.a, A033160, A033160.P14903934844071324041.a, A003278, A003278.P16270542562507883629.f1, A003278.P16270542562507883629.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185256

/-! ## A185256.P14206216968504490205

`A004793(n+1)-A102560(n)`
-/

namespace A185256.P14206216968504490205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (n + 1) - A102560 n

end

end A185256.P14206216968504490205

namespace A185256

/-- `A004793(n+1)-A102560(n)` -/
def P14206216968504490205.Spec : Prop :=
  ∀ n, P14206216968504490205.a n = A185256 (n + 1)

end A185256

/-! ## A185256.P164177764364607986

`A005836(n+1)+Δ[A187326(n)]`
-/

namespace A185256.P164177764364607986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1) + (f1 (n + 1) - f1 n)

end

end A185256.P164177764364607986

namespace A185256

/-- `A005836(n+1)+Δ[A187326(n)]` -/
def P164177764364607986.Spec : Prop :=
  ∀ n, P164177764364607986.a n = A185256 (n + 1)

end A185256

/-! ## A185256.P3162213097808623029

`A033160(n+1)-(A102560(n)+1)`
-/

namespace A185256.P3162213097808623029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033160 (n + 1) - (A102560 n + 1)

end

end A185256.P3162213097808623029

namespace A185256

/-- `A033160(n+1)-(A102560(n)+1)` -/
def P3162213097808623029.Spec : Prop :=
  ∀ n, P3162213097808623029.a n = A185256 (n + 1)

end A185256

/-! ## A185256.P5169448337690029681

`A004793(n+1)+A140081(n)-1`
-/

namespace A185256.P5169448337690029681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (n + 1) + (A140081 n - 1)

end

end A185256.P5169448337690029681

namespace A185256

/-- `A004793(n+1)+A140081(n)-1` -/
def P5169448337690029681.Spec : Prop :=
  ∀ n, P5169448337690029681.a n = A185256 (n + 1)

theorem P5169448337690029681.correct : P5169448337690029681.Spec := by
  intro n
  simp only [A185256, Nat.add_sub_cancel, A185256.P5169448337690029681.a, A185256.P14243737951295279238.a, A004793, A004793.P14402439767548149062.a, A033161, A033161.P7450569827711651060.a, A140081, A140081.P14265476151605300908.a, A003278, A003278.P16270542562507883629.f1, A003278.P16270542562507883629.a, A033160, A033160.P14903934844071324041.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185256

/-! ## A185256.P4086244195440991694

`A033163(n+1)-(A102560(n)+2)`
-/

namespace A185256.P4086244195440991694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033163 (n + 1) - (A102560 n + 2)

end

end A185256.P4086244195440991694

namespace A185256

/-- `A033163(n+1)-(A102560(n)+2)` -/
def P4086244195440991694.Spec : Prop :=
  ∀ n, P4086244195440991694.a n = A185256 (n + 1)

end A185256

/-! ## A185256.P6435636686186847282

`A033160(n+1)+A140081(n)-2`
-/

namespace A185256.P6435636686186847282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033160 (n + 1) + (A140081 n - 2)

end

end A185256.P6435636686186847282

namespace A185256

/-- `A033160(n+1)+A140081(n)-2` -/
def P6435636686186847282.Spec : Prop :=
  ∀ n, P6435636686186847282.a n = A185256 (n + 1)

theorem P6435636686186847282.correct : P6435636686186847282.Spec := by
  intro n
  simp only [A185256, Nat.add_sub_cancel, A185256.P6435636686186847282.a, A185256.P14243737951295279238.a, A033160, A033160.P14903934844071324041.a, A033161, A033161.P7450569827711651060.a, A140081, A140081.P14265476151605300908.a, A004793, A004793.P14402439767548149062.a, A003278, A003278.P16270542562507883629.f1, A003278.P16270542562507883629.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A185256

/-! ## A185256.P10884864359321505360

`A005836(n+1)+A057300(n)%4`
-/

namespace A185256.P10884864359321505360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1) + Int.tmod (A057300 n) 4

end

end A185256.P10884864359321505360

namespace A185256

/-- `A005836(n+1)+A057300(n)%4` -/
def P10884864359321505360.Spec : Prop :=
  ∀ n, P10884864359321505360.a n = A185256 (n + 1)

end A185256

/-! ## A185256.P17378132951251359633

`A005836(n+1)+and(3, A080412(n))`
-/

namespace A185256.P17378132951251359633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1) + Int.land 3 (A080412 n)

end

end A185256.P17378132951251359633

namespace A185256

/-- `A005836(n+1)+and(3, A080412(n))` -/
def P17378132951251359633.Spec : Prop :=
  ∀ n, P17378132951251359633.a n = A185256 (n + 1)

end A185256

/-! ## A185256.P7516577434454629147

`A003278(n+1)+Δ[A187331(n)]-2`
-/

namespace A185256.P7516577434454629147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (n + 1) + (f1 (n + 1) - f1 n - 2)

end

end A185256.P7516577434454629147

namespace A185256

/-- `A003278(n+1)+Δ[A187331(n)]-2` -/
def P7516577434454629147.Spec : Prop :=
  ∀ n, P7516577434454629147.a n = A185256 (n + 1)

end A185256

/-! ## A185256.P8201308311482838071

`A004793(n+1)+Δ[A047487(n+1)]-2`
-/

namespace A185256.P8201308311482838071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (n + 1) + (f1 (n + 1) - f1 n - 2)

end

end A185256.P8201308311482838071

namespace A185256

/-- `A004793(n+1)+Δ[A047487(n+1)]-2` -/
def P8201308311482838071.Spec : Prop :=
  ∀ n, P8201308311482838071.a n = A185256 (n + 1)

end A185256

/-! ## A185256.P10243246344948490067

`A004793(n+1)+Δ[A047624(n+1)]-2`
-/

namespace A185256.P10243246344948490067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (n + 1) + (f1 (n + 1) - f1 n - 2)

end

end A185256.P10243246344948490067

namespace A185256

/-- `A004793(n+1)+Δ[A047624(n+1)]-2` -/
def P10243246344948490067.Spec : Prop :=
  ∀ n, P10243246344948490067.a n = A185256 (n + 1)

end A185256

/-! ## A185256.P8930140830575961111

`∪[A033160(2*n+1)-2, A033160(2*(n+1))]`
-/

namespace A185256.P8930140830575961111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033160 (2 * n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033160 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A185256.P8930140830575961111

namespace A185256

/-- `∪[A033160(2*n+1)-2, A033160(2*(n+1))]` -/
def P8930140830575961111.Spec : Prop :=
  ∀ n, (P8930140830575961111.a n : ℤ) = A185256 (n + 1)

end A185256

/-! ## A185256.P13790406319489306619

`floor(A188057(2*n+1)/3)`
-/

namespace A185256.P13790406319489306619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A188057 (2 * n + 1) : ℚ) / 3⌋

end

end A185256.P13790406319489306619

namespace A185256

/-- `floor(A188057(2*n+1)/3)` -/
def P13790406319489306619.Spec : Prop :=
  ∀ n, P13790406319489306619.a n = A185256 (n + 1)

end A185256

/-! ## A185256.P8967832167051032608

`A004793(n+1)-A056594(A184552(n))`
-/

namespace A185256.P8967832167051032608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (n + 1) - A056594 (A184552 n).toNat

end

end A185256.P8967832167051032608

namespace A185256

/-- `A004793(n+1)-A056594(A184552(n))` -/
def P8967832167051032608.Spec : Prop :=
  ∀ n, P8967832167051032608.a n = A185256 (n + 1)

end A185256

/-! ## A185256.P4200876525093413449

`A004483(A033157(n+1))`
-/

namespace A185256.P4200876525093413449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004483 (A033157 (n + 1)).toNat

end

end A185256.P4200876525093413449

namespace A185256

/-- `A004483(A033157(n+1))` -/
def P4200876525093413449.Spec : Prop :=
  ∀ n, P4200876525093413449.a n = A185256 (n + 1)

end A185256

/-! ## A185256.P3364766485460616708

`A023444(A033161(n+1))`
-/

namespace A185256.P3364766485460616708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A033161 (n + 1)).toNat

end

end A185256.P3364766485460616708

namespace A185256

/-- `A023444(A033161(n+1))` -/
def P3364766485460616708.Spec : Prop :=
  ∀ n, P3364766485460616708.a n = A185256 (n + 1)

end A185256

/-!
# A185257: A185243(n) is the a(n)-th triangular number.

The programs for A185257, there is no canonical definition to state claims against.
-/

/-! ## A185257.P5156209489279631689

`floor(sqrt(2*A185243(n+1)))`
-/

namespace A185257.P5156209489279631689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A185243 (n + 1))

end

end A185257.P5156209489279631689

/-! ## A185257.P14708496395525291325

`A000027(round(sqrt(2*A185243(n+1))))`
-/

namespace A185257.P14708496395525291325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (2 * A185243 (n + 1) : ℝ))).toNat

end

end A185257.P14708496395525291325

/-! ## A185257.P12954645193081720387

`round(sqrt(2*A185243(n+1)))%A001232(n+1)`
-/

namespace A185257.P12954645193081720387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A185243 (n + 1) : ℝ))) (A001232 (n + 1))

end

end A185257.P12954645193081720387

/-! ## A185257.P2508401047186970903

`A080098(A185243(n+1))`
-/

namespace A185257.P2508401047186970903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A185243 (n + 1)).toNat

end

end A185257.P2508401047186970903

/-! ## A185257.P1148984385367046395

`A294317(A185243(n+1)-2)`
-/

namespace A185257.P1148984385367046395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 (A185243 (n + 1) - 2).toNat

end

end A185257.P1148984385367046395

/-!
# A185258: A185253(n) is the a(n)-th triangular number.

The programs for A185258, there is no canonical definition to state claims against.
-/

/-! ## A185258.P2413150062176598316

`floor(sqrt(2*A185253(n+1)))`
-/

namespace A185258.P2413150062176598316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A185253 (n + 1))

end

end A185258.P2413150062176598316

/-! ## A185258.P9312144246661057381

`A023443(ceil(sqrt(2*A185253(n+1))))`
-/

namespace A185258.P9312144246661057381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ⌈Real.sqrt (2 * A185253 (n + 1) : ℝ)⌉.toNat

end

end A185258.P9312144246661057381

/-! ## A185258.P10578672884821940762

`A000027(round(sqrt(2*A185253(n+1))))`
-/

namespace A185258.P10578672884821940762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (2 * A185253 (n + 1) : ℝ))).toNat

end

end A185258.P10578672884821940762

/-! ## A185258.P13179238669442763354

`round(sqrt(2*A185253(n+1)))%A016827(n)`
-/

namespace A185258.P13179238669442763354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * A185253 (n + 1) : ℝ))) (A016827 n)

end

end A185258.P13179238669442763354

/-! ## A185258.P12913662395553344773

`round(sqrt(2*A185253(n+1))*A014963(6*(n+1)))`
-/

namespace A185258.P12913662395553344773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A185253 (n + 1) : ℝ) * (A014963 (6 * (n + 1)) : ℝ))

end

end A185258.P12913662395553344773

/-!
# A185263: Triangle T(n,k) read by rows: coefficients (in compressed forms) in order of decreasing exponents of polynomials p_n(t) related to Hultman numbers.

The programs for A185263, there is no canonical definition to state claims against.
-/

/-! ## A185263.P6428098852255468348

`A264616(C(comp[A000695(2*n)], n+1))`
-/

namespace A185263.P6428098852255468348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264616 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) (n + 1))

end

end A185263.P6428098852255468348

/-! ## A185263.P3161398945764547033

`gcd(A061007(A000079(n)), A264616(n+2))`
-/

namespace A185263.P3161398945764547033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061007 (A000079 n).toNat) (A264616 (n + 2))

end

end A185263.P3161398945764547033

/-! ## A185263.P6466830397370255977

`A264616(n+2)^A264622(A215924(n+3))`
-/

namespace A185263.P6466830397370255977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264616 (n + 2) : ℚ) ^ (A264622 (A215924 (n + 3)).toNat : ℤ)

end

end A185263.P6466830397370255977

/-! ## A185263.P7912606383269658219

`A264616(A062947(n+2))`
-/

namespace A185263.P7912606383269658219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264616 (A062947 (n + 2)).toNat

end

end A185263.P7912606383269658219

/-! ## A185263.P1753312720364707917

`A046854(eq[A000122(n), A379679(n+5)])`
-/

namespace A185263.P1753312720364707917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379679 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A185263.P1753312720364707917

/-!
# A185264: Number of disconnected 6-regular simple graphs on n vertices with girth at least 4.

The programs for A185264, there is no canonical definition to state claims against.
-/

/-! ## A185264.P14506972952469175149

`A198317(A326548(abs(xor(1, 1-n))))`
-/

namespace A185264.P14506972952469175149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198317 (A326548 |Int.xor 1 (1 - (n : ℤ))|.toNat).toNat

end

end A185264.P14506972952469175149

/-! ## A185264.P6758856279178214034

`A297243(A217155(n+1)+A105560(n+1))`
-/

namespace A185264.P6758856279178214034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297243 (A217155 (n + 1) + A105560 (n + 1)).toNat

end

end A185264.P6758856279178214034

/-!
# A185265: a(0)=1, a(1)=2; thereafter a(n) = f(n-1) + f(n-2) where f() = A164387().

The programs for A185265, the canonical program `A185265.P5788475199698105486` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185265 has offset 0).

The definition of A185265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185265.P7943441018824357478

`ogf((1+x+x^3+2x^4+x^5)/(1-x-x^2-x^4-x^5))`
-/

namespace A185265.P7943441018824357478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, 1, 2, 1] [1, -1, -1, 0, -1, -1] n

end

end A185265.P7943441018824357478

namespace A185265

/-- `ogf((1+x+x^3+2x^4+x^5)/(1-x-x^2-x^4-x^5))` -/
def P7943441018824357478.Spec : Prop :=
  ∀ n, P7943441018824357478.a n = A185265 n

end A185265

/-! ## A185265.P5788475199698105486

`a(n-1)+a(n-2)+a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6, a(4)=12, a(5)=22`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185265

/-- `a(n-1)+a(n-2)+a(n-4)+a(n-5)` -/
def P5788475199698105486.Spec : Prop :=
  ∀ n, (P5788475199698105486.a n : ℤ) = A185265 n

theorem P5788475199698105486.correct : P5788475199698105486.Spec := by
  intro n
  simp only [A185265]

end A185265

/-! ## A185265.P13577370542092241350

`∑[A242525(n+1)]`
-/

namespace A185265.P13577370542092241350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242525 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185265.P13577370542092241350

namespace A185265

/-- `∑[A242525(n+1)]` -/
def P13577370542092241350.Spec : Prop :=
  ∀ n, P13577370542092241350.a n = A185265 n

end A185265

/-! ## A185265.P2871776688481110018

`A242525(n+1)+a(A000027(n+1)-2)` with `a(0)=1`
-/

namespace A185265.P2871776688481110018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A242525 (n + 1) + a (A000027 (n + 1) - 2).toNat

end

end A185265.P2871776688481110018

namespace A185265

/-- `A242525(n+1)+a(A000027(n+1)-2)` -/
def P2871776688481110018.Spec : Prop :=
  ∀ n, P2871776688481110018.a n = A185265 n

end A185265

/-! ## A185265.P14734209553570104461

`A014743(n+1)-A014743(A289207(n+1))`
-/

namespace A185265.P14734209553570104461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014743 (n + 1) - A014743 (A289207 (n + 1)).toNat

end

end A185265.P14734209553570104461

namespace A185265

/-- `A014743(n+1)-A014743(A289207(n+1))` -/
def P14734209553570104461.Spec : Prop :=
  ∀ n, P14734209553570104461.a n = A185265 n

end A185265

/-! ## A185265.P8197708869826682152

`Δ[A014743(n)+A014743(A289207(n+1))]`
-/

namespace A185265.P8197708869826682152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014743 n + A014743 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185265.P8197708869826682152

namespace A185265

/-- `Δ[A014743(n)+A014743(A289207(n+1))]` -/
def P8197708869826682152.Spec : Prop :=
  ∀ n, P8197708869826682152.a n = A185265 n

end A185265

/-!
# A185267: Smallest palindrome beginning with n-th prime.

The programs for A185267, there is no canonical definition to state claims against.
-/

/-! ## A185267.P17171776590415157414

`A082216(A000040(n+1))`
-/

namespace A185267.P17171776590415157414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (A000040 (n + 1)).toNat

end

end A185267.P17171776590415157414

/-! ## A185267.P18170488202612123260

`A347346(A004087(n+1))`
-/

namespace A185267.P18170488202612123260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347346 (A004087 (n + 1)).toNat

end

end A185267.P18170488202612123260

/-! ## A185267.P17428929753973376659

`A082216(A008578(n+2))`
-/

namespace A185267.P17428929753973376659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (A008578 (n + 2)).toNat

end

end A185267.P17428929753973376659

/-! ## A185267.P6443375717882836761

`A082216(A182986(n+2))`
-/

namespace A185267.P6443375717882836761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (A182986 (n + 2)).toNat

end

end A185267.P6443375717882836761

/-! ## A185267.P5631660004463595286

`A082216(abs(Δ[A008348(n)]))`
-/

namespace A185267.P5631660004463595286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 |f1 (n + 1) - f1 n|.toNat

end

end A185267.P5631660004463595286

/-! ## A185267.P16127603082286540391

`A082216(sqrt(A001248(n+1)))`
-/

namespace A185267.P16127603082286540391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A185267.P16127603082286540391

/-! ## A185267.P4604736234052725492

`A082216(record[A006530(n+2)])`
-/

namespace A185267.P4604736234052725492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A185267.P4604736234052725492

/-! ## A185267.P6669086738351973773

`A082216(record[A014963(n+2)])`
-/

namespace A185267.P6669086738351973773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A185267.P6669086738351973773

/-! ## A185267.P10673747262621306159

`A082216(record[A020639(n+2)])`
-/

namespace A185267.P10673747262621306159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A185267.P10673747262621306159

/-! ## A185267.P12785589674367601140

`A082216(A006093(n+1)+1)`
-/

namespace A185267.P12785589674367601140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (A006093 (n + 1) + 1).toNat

end

end A185267.P12785589674367601140

/-!
# A185269: The subsequence of primes, in order of occurrence, in A005351.

The programs for A185269, the canonical program `A185269.P13063718111534956283` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185269 has offset 1).

The definition of A185269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185269.P13063718111534956283

`p?[A005351(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A185269

/-- `p?[A005351(n)]` -/
def P13063718111534956283.Spec : Prop :=
  ∀ n, P13063718111534956283.a n = A185269 (n + 1)

theorem P13063718111534956283.correct : P13063718111534956283.Spec := by
  intro n
  simp only [A185269, Nat.add_sub_cancel]

end A185269

/-! ## A185269.P10835263709827191298

`p?[2*A005352(n+1)+1]`
-/

namespace A185269.P10835263709827191298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005352 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185269.P10835263709827191298

namespace A185269

/-- `p?[2*A005352(n+1)+1]` -/
def P10835263709827191298.Spec : Prop :=
  ∀ n, P10835263709827191298.a n = A185269 (n + 1)

end A185269

/-! ## A185269.P13798173397389862399

`p?[xor(1-A007310(n), a(n-1))]` with `a(0)=1`
-/

namespace A185269.P13798173397389862399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  Int.xor (1 - A007310 n) (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185269.P13798173397389862399

namespace A185269

/-- `p?[xor(1-A007310(n), a(n-1))]` -/
def P13798173397389862399.Spec : Prop :=
  ∀ n, P13798173397389862399.a n = A185269 (n + 1)

end A185269

/-! ## A185269.P4498277722411414537

`filter[A005351(n+1), A010051(#)]`
-/

namespace A185269.P4498277722411414537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A185269.P4498277722411414537

namespace A185269

/-- `filter[A005351(n+1), A010051(#)]` -/
def P4498277722411414537.Spec : Prop :=
  ∀ n, P4498277722411414537.a n = A185269 (n + 1)

end A185269

/-! ## A185269.P10021028333204749314

`filter[A005351(2*n+1), A323153(#)]`
-/

namespace A185269.P10021028333204749314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005351 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A185269.P10021028333204749314

namespace A185269

/-- `filter[A005351(2*n+1), A323153(#)]` -/
def P10021028333204749314.Spec : Prop :=
  ∀ n, P10021028333204749314.a n = A185269 (n + 1)

end A185269

/-! ## A185269.P15745142909726063211

`filter[A005351(2*n+1), A353670(#)]`
-/

namespace A185269.P15745142909726063211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005351 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A185269.P15745142909726063211

namespace A185269

/-- `filter[A005351(2*n+1), A353670(#)]` -/
def P15745142909726063211.Spec : Prop :=
  ∀ n, P15745142909726063211.a n = A185269 (n + 1)

end A185269

/-! ## A185269.P10890403912750547010

`filter[A005351(2*n+1), A379969(#)]`
-/

namespace A185269.P10890403912750547010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005351 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A185269.P10890403912750547010

namespace A185269

/-- `filter[A005351(2*n+1), A379969(#)]` -/
def P10890403912750547010.Spec : Prop :=
  ∀ n, P10890403912750547010.a n = A185269 (n + 1)

end A185269

/-! ## A185269.P11068094958594215125

`p?[xor(n, A275974(n+1))]`
-/

namespace A185269.P11068094958594215125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A275974 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185269.P11068094958594215125

namespace A185269

/-- `p?[xor(n, A275974(n+1))]` -/
def P11068094958594215125.Spec : Prop :=
  ∀ n, P11068094958594215125.a n = A185269 (n + 1)

end A185269

/-! ## A185269.P14480702146144476902

`p?[A053738(A338248(n+1))]`
-/

namespace A185269.P14480702146144476902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053738 (A338248 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185269.P14480702146144476902

namespace A185269

/-- `p?[A053738(A338248(n+1))]` -/
def P14480702146144476902.Spec : Prop :=
  ∀ n, P14480702146144476902.a n = A185269 (n + 1)

end A185269

/-! ## A185269.P9649501466630937377

`filter[A005351(n+1), A171387(#)]`
-/

namespace A185269.P9649501466630937377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A185269.P9649501466630937377

namespace A185269

/-- `filter[A005351(n+1), A171387(#)]` -/
def P9649501466630937377.Spec : Prop :=
  ∀ n, P9649501466630937377.a n = A185269 (n + 1)

end A185269

/-! ## A185269.P9169756463681072240

`filter[A005351(n+2), A080339(#)]`
-/

namespace A185269.P9169756463681072240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005351 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A185269.P9169756463681072240

namespace A185269

/-- `filter[A005351(n+2), A080339(#)]` -/
def P9169756463681072240.Spec : Prop :=
  ∀ n, P9169756463681072240.a n = A185269 (n + 1)

end A185269

/-! ## A185269.P15645282868420188926

`filter[A005351(n+2), A080545(#)]`
-/

namespace A185269.P15645282868420188926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005351 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A185269.P15645282868420188926

namespace A185269

/-- `filter[A005351(n+2), A080545(#)]` -/
def P15645282868420188926.Spec : Prop :=
  ∀ n, P15645282868420188926.a n = A185269 (n + 1)

end A185269

/-! ## A185269.P8057439018085094385

`p?[A258746(2*A054429(n+2))]`
-/

namespace A185269.P8057439018085094385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258746 (2 * A054429 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A185269.P8057439018085094385

namespace A185269

/-- `p?[A258746(2*A054429(n+2))]` -/
def P8057439018085094385.Spec : Prop :=
  ∀ n, P8057439018085094385.a n = A185269 (n + 1)

end A185269

/-!
# A185270: a(n) = 648 * n^6.

The programs for A185270, the canonical program `A185270.P9216151160357509068` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185270 has offset 0).

The definition of A185270 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `648*n^6` (program `A185270.P9216151160357509068`, by `A185270.P9216151160357509068.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A185270.P9216151160357509068

`648*n^6`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185270

/-- `648*n^6` -/
def P9216151160357509068.Spec : Prop :=
  ∀ n, (P9216151160357509068.a n : ℤ) = A185270 n

theorem P9216151160357509068.correct : P9216151160357509068.Spec := by
  intro n
  simp only [A185270]

end A185270

/-!
# A185271: Differences between consecutive norms of Gaussian primes.

The programs for A185271, the canonical program `A185271.P9882110103991236612` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185271 has offset 1).

The definition of A185271 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055025, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A185271.P9882110103991236612

`A055025(n+2)-A055025(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A185271

/-- `A055025(n+2)-A055025(n+1)` -/
def P9882110103991236612.Spec : Prop :=
  ∀ n, P9882110103991236612.a n = A185271 (n + 1)

theorem P9882110103991236612.correct : P9882110103991236612.Spec := by
  intro n
  simp only [A185271, Nat.add_sub_cancel]

end A185271

/-! ## A185271.P13759605249576906977

`Δ[∪[A002313(n+1), (A281664(n+2)+1)²]]`
-/

namespace A185271.P13759605249576906977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A281664 (n + 2) + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A185271.P13759605249576906977

namespace A185271

/-- `Δ[∪[A002313(n+1), (A281664(n+2)+1)²]]` -/
def P13759605249576906977.Spec : Prop :=
  ∀ n, P13759605249576906977.a n = A185271 (n + 1)

end A185271

/-! ## A185271.P7335153297748900662

`Δ[A055025(n+1)]`
-/

namespace A185271.P7335153297748900662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185271.P7335153297748900662

namespace A185271

/-- `Δ[A055025(n+1)]` -/
def P7335153297748900662.Spec : Prop :=
  ∀ n, P7335153297748900662.a n = A185271 (n + 1)

theorem P7335153297748900662.correct : P7335153297748900662.Spec := by
  intro n
  simp only [A185271, Nat.add_sub_cancel, A185271.P7335153297748900662.f1, A185271.P7335153297748900662.a, A185271.P9882110103991236612.a, SequenceMachineLib.memo_apply]

end A185271

/-! ## A185271.P6628858862131384969

`Δ[record[A055025(A331300(n))]]`
-/

namespace A185271.P6628858862131384969
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (A331300 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185271.P6628858862131384969

namespace A185271

/-- `Δ[record[A055025(A331300(n))]]` -/
def P6628858862131384969.Spec : Prop :=
  ∀ n, P6628858862131384969.a n = A185271 (n + 1)

end A185271

/-! ## A185271.P8423830062467421785

`Δ[record[A055025(A133310(n))]]`
-/

namespace A185271.P8423830062467421785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185271.P8423830062467421785

namespace A185271

/-- `Δ[record[A055025(A133310(n))]]` -/
def P8423830062467421785.Spec : Prop :=
  ∀ n, P8423830062467421785.a n = A185271 (n + 1)

end A185271

/-! ## A185271.P2753193670184158250

`abs(Δ[A055025(A008619(2*n))])`
-/

namespace A185271.P2753193670184158250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A185271.P2753193670184158250

namespace A185271

/-- `abs(Δ[A055025(A008619(2*n))])` -/
def P2753193670184158250.Spec : Prop :=
  ∀ n, P2753193670184158250.a n = A185271 (n + 1)

end A185271

/-! ## A185271.P5998593134159379378

`Δ[lt[0, A055028(n)]]`
-/

namespace A185271.P5998593134159379378
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055028 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A185271.P5998593134159379378

namespace A185271

/-- `Δ[lt[0, A055028(n)]]` -/
def P5998593134159379378.Spec : Prop :=
  ∀ n, P5998593134159379378.a n = A185271 (n + 1)

end A185271

/-! ## A185271.P3533238656472741302

`Δ[lt[0, A055029(n)]]`
-/

namespace A185271.P3533238656472741302
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055029 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A185271.P3533238656472741302

namespace A185271

/-- `Δ[lt[0, A055029(n)]]` -/
def P3533238656472741302.Spec : Prop :=
  ∀ n, P3533238656472741302.a n = A185271 (n + 1)

end A185271

/-! ## A185271.P13575227682497467617

`Δ[record[A055025(A137734(n))]]`
-/

namespace A185271.P13575227682497467617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (A137734 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185271.P13575227682497467617

namespace A185271

/-- `Δ[record[A055025(A137734(n))]]` -/
def P13575227682497467617.Spec : Prop :=
  ∀ n, P13575227682497467617.a n = A185271 (n + 1)

end A185271

/-!
# A185273: Period 6: repeat [1, 6, 5, 6, 1, 0].

The programs for A185273, the canonical program `A185273.P2491656661221126593` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185273 has offset 1).

The definition of A185273 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A185273.anchor (n : ℕ) (hn : 1 ≤ n) : A185273 n = (([1, 6, 5, 6, 1, 0].getD ((n - 1) % 6) 0 : ℕ) : ℤ)` in `Proof.A185.A185273`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A185273.P2491656661221126593

`a(n-6)` with `a(0)=1, a(1)=6, a(2)=5, a(3)=6, a(4)=1, a(5)=0`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185273

/-- `a(n-6)` -/
def P2491656661221126593.Spec : Prop :=
  ∀ n, (P2491656661221126593.a n : ℤ) = A185273 (n + 1)

theorem P2491656661221126593.correct : P2491656661221126593.Spec := by
  intro n
  simp only [A185273, Nat.add_sub_cancel]

end A185273

/-!
# A185274: Number of disconnected 7-regular simple graphs on 2n vertices with girth at least 4.

The programs for A185274, there is no canonical definition to state claims against.
-/

/-! ## A185274.P8462989578541216880

`A094873(A185036(n))`
-/

namespace A185274.P8462989578541216880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094873 (A185036 n).toNat

end

end A185274.P8462989578541216880

/-! ## A185274.P18179406102114119848

`A094873(A185236(n))`
-/

namespace A185274.P18179406102114119848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094873 (A185236 n).toNat

end

end A185274.P18179406102114119848

/-! ## A185274.P5038847437660230003

`∑{d}[A185036(n), A153206(#)]`
-/

namespace A185274.P5038847437660230003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A153206 d

end

end A185274.P5038847437660230003

/-! ## A185274.P90944611749491867

`∑{d}[A185236(n), A153206(#)]`
-/

namespace A185274.P90944611749491867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A153206 d

end

end A185274.P90944611749491867

/-! ## A185274.P16928308068344842719

`A000081(A165656(n))%A098499(n)`
-/

namespace A185274.P16928308068344842719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000081 (A165656 n).toNat) (A098499 n)

end

end A185274.P16928308068344842719

/-!
# A185275: Products of the first terms of the arithmetic sequence f(n) defined by f(2^k l) = l^{1 - k} (for k a nonnegative integer and l a positive odd integer).

The programs for A185275, there is no canonical definition to state claims against.
-/

/-! ## A185275.P6500507392950362656

`∏[((n+1)/2^val(n+1, 2))^Δ[A000120(n)]]`
-/

namespace A185275.P6500507392950362656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A185275.P6500507392950362656

/-! ## A185275.P16416599206167628461

`∏[((n+1)/2^val(n+1, 2))^A088705(n+1)]`
-/

namespace A185275.P16416599206167628461
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)) ^ (A088705 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A185275.P16416599206167628461

/-! ## A185275.P4754911820321948172

`∏[A000265(n+1)^Δ[A000120(n)]]`
-/

namespace A185275.P4754911820321948172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A185275.P4754911820321948172

/-! ## A185275.P11150148682030459919

`∏[A000265(n+1)^Δ[A056791(n)]]`
-/

namespace A185275.P11150148682030459919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056791 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A185275.P11150148682030459919

/-! ## A185275.P8893577256837763771

`∏[A000265(n+1)^Δ[A056792(n)]]`
-/

namespace A185275.P8893577256837763771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056792 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 1) : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A185275.P8893577256837763771

/-!
# A185276: a(n) = Kronecker symbol (-100 / n).

The programs for A185276, the canonical program `A185276.P7675570107242476456` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185276 has offset 0).

The definition of A185276 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185276.P7675570107242476456

`ogf((x-x^3-x^7+x^9)/(1+x^10))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185276

/-- `ogf((x-x^3-x^7+x^9)/(1+x^10))` -/
def P7675570107242476456.Spec : Prop :=
  ∀ n, P7675570107242476456.a n = A185276 n

theorem P7675570107242476456.correct : P7675570107242476456.Spec := by
  intro n
  simp only [A185276]

end A185276

/-!
# A185277: a(n) = n^9 + 9^n.

The programs for A185277, the canonical program `A185277.P13967687818527150631` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185277 has offset 0).

The definition of A185277 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^9+9^n` (program `A185277.P13967687818527150631`, by `A185277.P13967687818527150631.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A185277.P6624590661412976487

`9^n+n^9`
-/

namespace A185277.P6624590661412976487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n + n ^ 9

end

end A185277.P6624590661412976487

namespace A185277

/-- `9^n+n^9` -/
def P6624590661412976487.Spec : Prop :=
  ∀ n, (P6624590661412976487.a n : ℤ) = A185277 n

theorem P6624590661412976487.correct : P6624590661412976487.Spec := by
  intro n
  simp only [A185277, Nat.add_sub_cancel, A185277.P6624590661412976487.a, A185277.P13967687818527150631.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A185277

/-! ## A185277.P13967687818527150631

`n^9+9^n`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185277

/-- `n^9+9^n` -/
def P13967687818527150631.Spec : Prop :=
  ∀ n, (P13967687818527150631.a n : ℤ) = A185277 n

theorem P13967687818527150631.correct : P13967687818527150631.Spec := by
  intro n
  simp only [A185277]

end A185277

/-! ## A185277.P17568719947142157816

`A055652(A167614(n+8)+6)`
-/

namespace A185277.P17568719947142157816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 (A167614 (n + 8) + 6).toNat

end

end A185277.P17568719947142157816

namespace A185277

/-- `A055652(A167614(n+8)+6)` -/
def P17568719947142157816.Spec : Prop :=
  ∀ n, P17568719947142157816.a n = A185277 n

end A185277

/-! ## A185277.P7520575475554739623

`A055652(A000096(n+8)+10)`
-/

namespace A185277.P7520575475554739623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 (A000096 (n + 8) + 10).toNat

end

end A185277.P7520575475554739623

namespace A185277

/-- `A055652(A000096(n+8)+10)` -/
def P7520575475554739623.Spec : Prop :=
  ∀ n, P7520575475554739623.a n = A185277 n

end A185277

/-! ## A185277.P18297165706045190296

`A156354(A161680(n+10)+9)`
-/

namespace A185277.P18297165706045190296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (A161680 (n + 10) + 9).toNat

end

end A185277.P18297165706045190296

namespace A185277

/-- `A156354(A161680(n+10)+9)` -/
def P18297165706045190296.Spec : Prop :=
  ∀ n, P18297165706045190296.a n = A185277 n

end A185277

/-! ## A185277.P2552378505435597222

`A156354(A055999(n+8)-4-2*(n+1))`
-/

namespace A185277.P2552378505435597222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (A055999 (n + 8) - 4 - (2 * (n + 1) : ℤ)).toNat

end

end A185277.P2552378505435597222

namespace A185277

/-- `A156354(A055999(n+8)-4-2*(n+1))` -/
def P2552378505435597222.Spec : Prop :=
  ∀ n, P2552378505435597222.a n = A185277 n

end A185277

/-! ## A185277.P10994312831328150857

`A156354(A000096(n+9)-9)`
-/

namespace A185277.P10994312831328150857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (A000096 (n + 9) - 9).toNat

end

end A185277.P10994312831328150857

namespace A185277

/-- `A156354(A000096(n+9)-9)` -/
def P10994312831328150857.Spec : Prop :=
  ∀ n, P10994312831328150857.a n = A185277 n

end A185277

/-! ## A185277.P12871838167879833568

`A055652(A253145(n+9)-10)`
-/

namespace A185277.P12871838167879833568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 (A253145 (n + 9) - 10).toNat

end

end A185277.P12871838167879833568

namespace A185277

/-- `A055652(A253145(n+9)-10)` -/
def P12871838167879833568.Spec : Prop :=
  ∀ n, P12871838167879833568.a n = A185277 n

end A185277

/-! ## A185277.P12205597409816196384

`A055652(A000217(n+10)-10)`
-/

namespace A185277.P12205597409816196384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055652 (A000217 (n + 10) - 10).toNat

end

end A185277.P12205597409816196384

namespace A185277

/-- `A055652(A000217(n+10)-10)` -/
def P12205597409816196384.Spec : Prop :=
  ∀ n, P12205597409816196384.a n = A185277 n

end A185277

/-! ## A185277.P14352107262491479905

`A156354(A000217(n+10)-10)`
-/

namespace A185277.P14352107262491479905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156354 (A000217 (n + 10) - 10).toNat

end

end A185277.P14352107262491479905

namespace A185277

/-- `A156354(A000217(n+10)-10)` -/
def P14352107262491479905.Spec : Prop :=
  ∀ n, P14352107262491479905.a n = A185277 n

end A185277

/-!
# A185278: Number of isomorphism classes of generalized Petersen graphs G(n,k) on 2n vertices with gcd(n,k) = 1.

The programs for A185278, the canonical program `A185278.P74989508539349748` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185278 has offset 3).

The definition of A185278 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000089, A060594, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A185278.P74989508539349748

`(A000010(n+3)+A060594(n+3)+A000089(n+3))/4`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A185278

/-- `(A000010(n+3)+A060594(n+3)+A000089(n+3))/4` -/
def P74989508539349748.Spec : Prop :=
  ∀ n, P74989508539349748.a n = (A185278 (n + 3) : ℚ)

end A185278

/-! ## A185278.P11756913341155831455

`(A193138(n+3)+A180783(n+3))/2`
-/

namespace A185278.P11756913341155831455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193138 (n + 3) + A180783 (n + 3) : ℚ) / 2

end

end A185278.P11756913341155831455

namespace A185278

/-- `(A193138(n+3)+A180783(n+3))/2` -/
def P11756913341155831455.Spec : Prop :=
  ∀ n, P11756913341155831455.a n = (A185278 (n + 3) : ℚ)

end A185278

/-! ## A185278.P4135583390326925766

`A110654(A193138(n+3)+A180783(n+3))`
-/

namespace A185278.P4135583390326925766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A193138 (n + 3) + A180783 (n + 3)).toNat

end

end A185278.P4135583390326925766

namespace A185278

/-- `A110654(A193138(n+3)+A180783(n+3))` -/
def P4135583390326925766.Spec : Prop :=
  ∀ n, P4135583390326925766.a n = A185278 (n + 3)

end A185278

/-! ## A185278.P2695301930876554038

`A110654(A180783(n+3))%(A327332(n)+3)`
-/

namespace A185278.P2695301930876554038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110654 (A180783 (n + 3)).toNat) (A327332 n + 3)

end

end A185278.P2695301930876554038

namespace A185278

/-- `A110654(A180783(n+3))%(A327332(n)+3)` -/
def P2695301930876554038.Spec : Prop :=
  ∀ n, P2695301930876554038.a n = A185278 (n + 3)

end A185278

/-! ## A185278.P5538505943422177788

`A110654(A180783(n+3))+A000007(A305148(n))`
-/

namespace A185278.P5538505943422177788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A180783 (n + 3)).toNat + A000007 (A305148 n).toNat

end

end A185278.P5538505943422177788

namespace A185278

/-- `A110654(A180783(n+3))+A000007(A305148(n))` -/
def P5538505943422177788.Spec : Prop :=
  ∀ n, P5538505943422177788.a n = A185278 (n + 3)

end A185278

/-! ## A185278.P14739248924111937748

`A110654(A180783(n+3))%A092231(A004768(n))`
-/

namespace A185278.P14739248924111937748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110654 (A180783 (n + 3)).toNat) (A092231 (A004768 n).toNat)

end

end A185278.P14739248924111937748

namespace A185278

/-- `A110654(A180783(n+3))%A092231(A004768(n))` -/
def P14739248924111937748.Spec : Prop :=
  ∀ n, P14739248924111937748.a n = A185278 (n + 3)

end A185278

/-! ## A185278.P7926817348517299187

`A110654(A180793(A000217(n+3)))`
-/

namespace A185278.P7926817348517299187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A180793 (A000217 (n + 3)).toNat).toNat

end

end A185278.P7926817348517299187

namespace A185278

/-- `A110654(A180793(A000217(n+3)))` -/
def P7926817348517299187.Spec : Prop :=
  ∀ n, P7926817348517299187.a n = A185278 (n + 3)

end A185278

/-! ## A185278.P6240032956000450650

`A110654(A180813(A167614(n+2)-3))`
-/

namespace A185278.P6240032956000450650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A180813 (A167614 (n + 2) - 3).toNat).toNat

end

end A185278.P6240032956000450650

namespace A185278

/-- `A110654(A180813(A167614(n+2)-3))` -/
def P6240032956000450650.Spec : Prop :=
  ∀ n, P6240032956000450650.a n = A185278 (n + 3)

end A185278

/-!
# A185279: a(n) = number of ways that one can write n as the sum of two positive integers such that i) the integers are relatively prime to n but ii) the integers are not themselves prime.

The programs for A185279, the canonical program `A185279.P10790172793352354288` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185279 has offset 1).

The definition of A185279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6619 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185279.P16374289611950913943

`A062610(n+1)-A345039(n+1)`
-/

namespace A185279.P16374289611950913943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062610 (n + 1) - A345039 (n + 1)

end

end A185279.P16374289611950913943

namespace A185279

/-- `A062610(n+1)-A345039(n+1)` -/
def P16374289611950913943.Spec : Prop :=
  ∀ n, P16374289611950913943.a n = A185279 (n + 1)

end A185279

/-! ## A185279.P170086076654217094

`ceil(A076608(n+1)/2-A345039(n+1))`
-/

namespace A185279.P170086076654217094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A076608 (n + 1) : ℚ) / 2 - (A345039 (n + 1) : ℚ)⌉

end

end A185279.P170086076654217094

namespace A185279

/-- `ceil(A076608(n+1)/2-A345039(n+1))` -/
def P170086076654217094.Spec : Prop :=
  ∀ n, P170086076654217094.a n = A185279 (n + 1)

end A185279

/-! ## A185279.P3019529511597464770

`A110654(A076608(n+1))-A345039(n+1)`
-/

namespace A185279.P3019529511597464770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A076608 (n + 1)).toNat - A345039 (n + 1)

end

end A185279.P3019529511597464770

namespace A185279

/-- `A110654(A076608(n+1))-A345039(n+1)` -/
def P3019529511597464770.Spec : Prop :=
  ∀ n, P3019529511597464770.a n = A185279 (n + 1)

end A185279

/-! ## A185279.P14827222931233289759

`A004526(A076608(n+1)+1)-A345039(n+1)`
-/

namespace A185279.P14827222931233289759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A076608 (n + 1) + 1).toNat - A345039 (n + 1)

end

end A185279.P14827222931233289759

namespace A185279

/-- `A004526(A076608(n+1)+1)-A345039(n+1)` -/
def P14827222931233289759.Spec : Prop :=
  ∀ n, P14827222931233289759.a n = A185279 (n + 1)

end A185279

/-! ## A185279.P10938029215447938831

`A171691(n+1)-(A345039(n+1)+A005171(n+1))`
-/

namespace A185279.P10938029215447938831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171691 (n + 1) - (A345039 (n + 1) + A005171 (n + 1))

end

end A185279.P10938029215447938831

namespace A185279

/-- `A171691(n+1)-(A345039(n+1)+A005171(n+1))` -/
def P10938029215447938831.Spec : Prop :=
  ∀ n, P10938029215447938831.a n = A185279 (n + 1)

theorem P10938029215447938831.correct : P10938029215447938831.Spec := by
  intro n
  simp only [A185279, Nat.add_sub_cancel, A185279.P10938029215447938831.a, A185279.P10790172793352354288.a, A005171, A005171.P15860856746370777121.a, A008619, A008619.P16053834178911111118.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, A057860, A057860.P15781516878484293447.a, A062610, A062610.P4050296161301265459.f1, A062610.P4050296161301265459.a, A171691, A171691.P6852326580406888419.a, A345039, A345039.P8520321823126508405.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A051953, A051953.P11179276897610979764.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A185279

/-! ## A185279.P8654182139837608595

`A295629(n+1)-(A345039(n+1)+A062602(n+1))`
-/

namespace A185279.P8654182139837608595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295629 (n + 1) - (A345039 (n + 1) + A062602 (n + 1))

end

end A185279.P8654182139837608595

namespace A185279

/-- `A295629(n+1)-(A345039(n+1)+A062602(n+1))` -/
def P8654182139837608595.Spec : Prop :=
  ∀ n, P8654182139837608595.a n = A185279 (n + 1)

theorem P8654182139837608595.correct : P8654182139837608595.Spec := by
  intro n
  simp only [A185279, Nat.add_sub_cancel, A185279.P8654182139837608595.a, A185279.P10790172793352354288.a, A008619, A008619.P16053834178911111118.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, A057860, A057860.P15781516878484293447.a, A062602, A062602.P15976741372333884415.a, A062610, A062610.P4050296161301265459.f1, A062610.P4050296161301265459.a, A295629, A295629.P18345784372025408051.a, A345039, A345039.P8520321823126508405.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A004526, A004526.P10084182425416171735.a, A005171, A005171.P15860856746370777121.a, A051953, A051953.P11179276897610979764.a, A061358, A061358.P17459104721166670744.f1, A061358.P17459104721166670744.a, A000010, A000010.P4673923239450215316.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A185279

/-! ## A185279.P4780304262026284217

`A076608(n+1)-(A345039(n+1)+A302479(n+1))`
-/

namespace A185279.P4780304262026284217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076608 (n + 1) - (A345039 (n + 1) + A302479 (n + 1))

end

end A185279.P4780304262026284217

namespace A185279

/-- `A076608(n+1)-(A345039(n+1)+A302479(n+1))` -/
def P4780304262026284217.Spec : Prop :=
  ∀ n, P4780304262026284217.a n = A185279 (n + 1)

end A185279

/-! ## A185279.P10790172793352354288

`A062610(n+1)-A057860(n+1)%A008619(A016035(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A185279

/-- `A062610(n+1)-A057860(n+1)%A008619(A016035(n+1))` -/
def P10790172793352354288.Spec : Prop :=
  ∀ n, P10790172793352354288.a n = A185279 (n + 1)

theorem P10790172793352354288.correct : P10790172793352354288.Spec := by
  intro n
  simp only [A185279, Nat.add_sub_cancel]

end A185279

/-! ## A185279.P13542783428526729921

`A004526(n+1)-(A062602(n+1)+A061358(n+1))-A345039(n+1)`
-/

namespace A185279.P13542783428526729921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) - (A062602 (n + 1) + A061358 (n + 1)) - A345039 (n + 1)

end

end A185279.P13542783428526729921

namespace A185279

/-- `A004526(n+1)-(A062602(n+1)+A061358(n+1))-A345039(n+1)` -/
def P13542783428526729921.Spec : Prop :=
  ∀ n, P13542783428526729921.a n = A185279 (n + 1)

theorem P13542783428526729921.correct : P13542783428526729921.Spec := by
  intro n
  simp only [A185279, Nat.add_sub_cancel, A185279.P13542783428526729921.a, A185279.P10790172793352354288.a, A004526, A004526.P10084182425416171735.a, A008619, A008619.P16053834178911111118.a, A016035, A016035.P3669285434667491181.f1, A016035.P3669285434667491181.f2, A016035.P3669285434667491181.a, A057860, A057860.P15781516878484293447.a, A061358, A061358.P17459104721166670744.f1, A061358.P17459104721166670744.a, A062602, A062602.P15976741372333884415.a, A062610, A062610.P4050296161301265459.f1, A062610.P4050296161301265459.a, A345039, A345039.P8520321823126508405.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A005171, A005171.P15860856746370777121.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A051953, A051953.P11179276897610979764.a, A295629, A295629.P18345784372025408051.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A185279

/-!
# A185281: a(n) = 2^n*A141316(n).

The programs for A185281, there is no canonical definition to state claims against.
-/

/-! ## A185281.P2866482333435687095

`2^(n+1)*A141316(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A185281.P2866482333435687095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A141316 (n + 1)

end

end A185281.P2866482333435687095

/-! ## A185281.P6700739890948103971

`A141316(n+1)*A283857(A000124(n))`
-/

namespace A185281.P6700739890948103971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141316 (n + 1) * A283857 (A000124 n).toNat

end

end A185281.P6700739890948103971

/-! ## A185281.P1349238071574331897

`A141316(n+1)*A173787(A034856(n+2))`
-/

namespace A185281.P1349238071574331897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141316 (n + 1) * A173787 (A034856 (n + 2)).toNat

end

end A185281.P1349238071574331897

/-! ## A185281.P1502277749758906302

`A141313(n+1)*A141316(n+1)/A122708(n+1)`
-/

namespace A185281.P1502277749758906302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141313 (n + 1) * A141316 (n + 1) : ℚ) / (A122708 (n + 1) : ℚ)

end

end A185281.P1502277749758906302

/-!
# A185283: Least k such that sigma(1) + sigma(2) + sigma(3) +...+ sigma(k) >= n.

The programs for A185283, the canonical program `A185283.P8381209217427042110` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185283 has offset 0).

The definition of A185283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185283.P8381209217427042110

`∑[char[∑[∑{d}[n, #]]+1]]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185283

/-- `∑[char[∑[∑{d}[n, #]]+1]]` -/
def P8381209217427042110.Spec : Prop :=
  ∀ n, (P8381209217427042110.a n : ℤ) = A185283 n

theorem P8381209217427042110.correct : P8381209217427042110.Spec := by
  intro n
  simp only [A185283]

end A185283

/-! ## A185283.P12699498238179850165

`∑[char[∑[∑{d}[1-n, #]]]]`
-/

namespace A185283.P12699498238179850165
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n).natAbs, d

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185283.P12699498238179850165

namespace A185283

/-- `∑[char[∑[∑{d}[1-n, #]]]]` -/
def P12699498238179850165.Spec : Prop :=
  ∀ n, (P12699498238179850165.a n : ℤ) = A185283 n

end A185283

/-! ## A185283.P1512378270056728780

`comp[∑[∑{d}[n, #]+1]]-n`
-/

namespace A185283.P1512378270056728780
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A185283.P1512378270056728780

namespace A185283

/-- `comp[∑[∑{d}[n, #]+1]]-n` -/
def P1512378270056728780.Spec : Prop :=
  ∀ n, P1512378270056728780.a n = A185283 n

end A185283

/-! ## A185283.P1534968202825445327

`∑[char[A160664(n)]]`
-/

namespace A185283.P1534968202825445327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185283.P1534968202825445327

namespace A185283

/-- `∑[char[A160664(n)]]` -/
def P1534968202825445327.Spec : Prop :=
  ∀ n, (P1534968202825445327.a n : ℤ) = A185283 n

end A185283

/-! ## A185283.P12568327168367103094

`∑[char[∑[A039653(n)+1]]]`
-/

namespace A185283.P12568327168367103094
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185283.P12568327168367103094

namespace A185283

/-- `∑[char[∑[A039653(n)+1]]]` -/
def P12568327168367103094.Spec : Prop :=
  ∀ n, (P12568327168367103094.a n : ℤ) = A185283 n

end A185283

/-! ## A185283.P6072562401838291980

`∑[char[A000203(n)+a(n-1)]]` with `a(0)=1`
-/

namespace A185283.P6072562401838291980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000203 n + f2 (n - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185283.P6072562401838291980

namespace A185283

/-- `∑[char[A000203(n)+a(n-1)]]` -/
def P6072562401838291980.Spec : Prop :=
  ∀ n, (P6072562401838291980.a n : ℤ) = A185283 n

end A185283

/-!
# A185284: Number of disconnected 8-regular simple graphs on n vertices with girth at least 4.

The programs for A185284, there is no canonical definition to state claims against.
-/

/-! ## A185284.P13323162875795020114

`C(ceil(n/ϕ²), or(13, val(n+1, 2)+1))`
-/

namespace A185284.P13323162875795020114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈(n : ℝ) / Real.goldenRatio ^ 2⌉.toNat (Nat.lor 13 (SequenceMachineLib.valuation (n + 1) 2 + 1))

end

end A185284.P13323162875795020114

/-! ## A185284.P9965172455656335060

`C(round(sqrt(A312688(n))), 13)`
-/

namespace A185284.P9965172455656335060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (A312688 n : ℝ))).toNat 13

end

end A185284.P9965172455656335060

/-! ## A185284.P187478209782977742

`A095331(A347648(n))`
-/

namespace A185284.P187478209782977742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095331 (A347648 n).toNat

end

end A185284.P187478209782977742

/-! ## A185284.P5245475756491650003

`A367327(A192541(n+1))`
-/

namespace A185284.P5245475756491650003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367327 (A192541 (n + 1)).toNat

end

end A185284.P5245475756491650003

/-! ## A185284.P8147521179569450375

`A076042(A260502(n+3))`
-/

namespace A185284.P8147521179569450375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076042 (A260502 (n + 3)).toNat

end

end A185284.P8147521179569450375

/-!
# A185285: Triangle T(n,k), read by rows, given by (0, 2, 3, 4, 6, 6, 9, 8, 12, 10, 15, ...) DELTA (1, 0, 1, 0, 1, 0, 1, 0, 1, 0, ...) where DELTA is the operator defined in A084938.

The programs for A185285, there is no canonical definition to state claims against.
-/

/-! ## A185285.P16527993758554790109

`A077011(n+1)%A193902(A086645(n))`
-/

namespace A185285.P16527993758554790109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077011 (n + 1)) (A193902 (A086645 n).toNat)

end

end A185285.P16527993758554790109

/-!
# A185286: Triangle T(n,k) is the number of nonnegative walks of n steps with step sizes 1 and 2, starting at 0 and ending at k.

The programs for A185286, there is no canonical definition to state claims against.
-/

/-! ## A185286.P2031312075860662309

`A243223(2^(n+1)+n+3)`
-/

namespace A185286.P2031312075860662309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243223 (2 ^ (n + 1) + (n + 3))

end

end A185286.P2031312075860662309

/-! ## A185286.P1173764882348795682

`abs(1-A117277(∑[2^n+1]+3))`
-/

namespace A185286.P1173764882348795682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A117277 (∑ j ∈ Finset.range (n + 1), f1 j + 3)|

end

end A185286.P1173764882348795682

/-! ## A185286.P1640714053959274172

`A117277(∑[A000051(n)]+3)-1`
-/

namespace A185286.P1640714053959274172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117277 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat - 1

end

end A185286.P1640714053959274172

/-! ## A185286.P9733879097556792126

`A117277(∑[A000079(n)]+n+4)-1`
-/

namespace A185286.P9733879097556792126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117277 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 4 : ℤ)).toNat - 1

end

end A185286.P9733879097556792126

/-! ## A185286.P747414453337284119

`A333750(A264662(n+1)+A186253(n+1))`
-/

namespace A185286.P747414453337284119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333750 (A264662 (n + 1) + A186253 (n + 1)).toNat

end

end A185286.P747414453337284119

/-!
# A185288: Numbers n for which the terms of the multiplicative sequence {n^2/A049417(n)} are integers.

The programs for A185288, there is no canonical definition to state claims against.
-/

/-! ## A185288.P3269622610238807916

`A356020(A326979(n+3))%A102896(n+1)`
-/

namespace A185288.P3269622610238807916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A356020 (A326979 (n + 3)).toNat) (A102896 (n + 1))

end

end A185288.P3269622610238807916

/-! ## A185288.P1900942572854134962

`eq[A193262(n+1), A344760(n)]`
-/

namespace A185288.P1900942572854134962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A185288.P1900942572854134962

/-!
# A185289: In a bipartite graph with 2n vertices (|V_1|=|V_2|=n), this sequence gives the number of ways to create n edges, one for each vertex of V_1, and to rank the vertices of V_2 which have incident edges.

The programs for A185289, there is no canonical definition to state claims against.
-/

/-! ## A185289.P2463226504721815856

`A130487(round(exp(C(n, 2))))`
-/

namespace A185289.P2463226504721815856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130487 (SequenceMachineLib.roundAway (Real.exp (Nat.choose n 2 : ℝ))).toNat

end

end A185289.P2463226504721815856

/-!
# A185291: Dirichlet convolution of A000001 with itself.

The programs for A185291, there is no canonical definition to state claims against.
-/

/-! ## A185291.P8585095419316034086

`∑{d}[n+1, A000001(#)*A000001((n+1)/#)]`
-/

namespace A185291.P8585095419316034086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000001 d * A000001 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A185291.P8585095419316034086

/-! ## A185291.P10975686903976870458

`A000001(A002313(n+1)*A046523(n+1))`
-/

namespace A185291.P10975686903976870458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A002313 (n + 1) * A046523 (n + 1)).toNat

end

end A185291.P10975686903976870458

/-! ## A185291.P12173415348234112761

`A000001(A002313(n+1)*A071364(n+1))`
-/

namespace A185291.P12173415348234112761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A002313 (n + 1) * A071364 (n + 1)).toNat

end

end A185291.P12173415348234112761

/-! ## A185291.P2113263248683724344

`A000001(A002313(n+1)*A083260(n+1))`
-/

namespace A185291.P2113263248683724344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A002313 (n + 1) * A083260 (n + 1)).toNat

end

end A185291.P2113263248683724344

/-! ## A185291.P14091909980870206420

`A000001(lcm(A002313(n+1), A046523(n+1)))`
-/

namespace A185291.P14091909980870206420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (Int.lcm (A002313 (n + 1)) (A046523 (n + 1)))

end

end A185291.P14091909980870206420

/-!
# A185292: Expansion of (x*(1+x)/(1-x^3))^4.

The programs for A185292, the canonical program `A185292.P6414063649298649391` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185292 has offset 0).

The definition of A185292 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x^4+4x^5+6x^6+4x^7+x^8)/(1-4x^3+6x^6-4x^9+x^12))` (program `A185292.P6414063649298649391`, by `A185292.P6414063649298649391.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A185292.P6414063649298649391

`ogf((x^4+4x^5+6x^6+4x^7+x^8)/(1-4x^3+6x^6-4x^9+x^12))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185292

/-- `ogf((x^4+4x^5+6x^6+4x^7+x^8)/(1-4x^3+6x^6-4x^9+x^12))` -/
def P6414063649298649391.Spec : Prop :=
  ∀ n, P6414063649298649391.a n = A185292 n

theorem P6414063649298649391.correct : P6414063649298649391.Spec := by
  intro n
  simp only [A185292]

end A185292

/-! ## A185292.P57644700538550575

`A198295(∑[n+2]-1-comp[2*(n+2)])`
-/

namespace A185292.P57644700538550575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198295 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)).toNat

end

end A185292.P57644700538550575

namespace A185292

/-- `A198295(∑[n+2]-1-comp[2*(n+2)])` -/
def P57644700538550575.Spec : Prop :=
  ∀ n, P57644700538550575.a n = A185292 n

end A185292

/-!
# A185295: a(n) = - A010815(7*n + 1).

The programs for A185295, the canonical program `A185295.P11341972992585939006` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185295 has offset 0).

The definition of A185295 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010815, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A185295.P11341972992585939006

`-A010815(7*n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A185295

/-- `-A010815(7*n+1)` -/
def P11341972992585939006.Spec : Prop :=
  ∀ n, P11341972992585939006.a n = A185295 n

theorem P11341972992585939006.correct : P11341972992585939006.Spec := by
  intro n
  simp only [A185295]

end A185295

/-! ## A185295.P1530061398824930469

`A257628(7*n+1)`
-/

namespace A185295.P1530061398824930469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257628 (7 * n + 1)

end

end A185295.P1530061398824930469

namespace A185295

/-- `A257628(7*n+1)` -/
def P1530061398824930469.Spec : Prop :=
  ∀ n, P1530061398824930469.a n = A185295 n

end A185295

/-! ## A185295.P5905957352875329927

`A147843(7*n+1)%7`
-/

namespace A185295.P5905957352875329927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147843 (7 * n + 1)) 7

end

end A185295.P5905957352875329927

namespace A185295

/-- `A147843(7*n+1)%7` -/
def P5905957352875329927.Spec : Prop :=
  ∀ n, P5905957352875329927.a n = A185295 n

end A185295

/-! ## A185295.P3063452856562888103

`A000007(2*n+1)-A010815(A016993(n))`
-/

namespace A185295.P3063452856562888103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (2 * n + 1) - A010815 (A016993 n).toNat

end

end A185295.P3063452856562888103

namespace A185295

/-- `A000007(2*n+1)-A010815(A016993(n))` -/
def P3063452856562888103.Spec : Prop :=
  ∀ n, P3063452856562888103.a n = A185295 n

end A185295

/-! ## A185295.P13295430772798724393

`A008683(A001097(n+1))*A010815(7*n+1)`
-/

namespace A185295.P13295430772798724393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001097 (n + 1)).toNat * A010815 (7 * n + 1)

end

end A185295.P13295430772798724393

namespace A185295

/-- `A008683(A001097(n+1))*A010815(7*n+1)` -/
def P13295430772798724393.Spec : Prop :=
  ∀ n, P13295430772798724393.a n = A185295 n

end A185295

/-! ## A185295.P10625522695649825328

`A010815(2-A024000(n)-n)*A010815(A016993(n))`
-/

namespace A185295.P10625522695649825328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (2 - A024000 n - (n : ℤ)).toNat * A010815 (A016993 n).toNat

end

end A185295.P10625522695649825328

namespace A185295

/-- `A010815(2-A024000(n)-n)*A010815(A016993(n))` -/
def P10625522695649825328.Spec : Prop :=
  ∀ n, P10625522695649825328.a n = A185295 n

end A185295

/-! ## A185295.P18058034527086129489

`A008683(A005384(n+1))*A010815(7*n+1)`
-/

namespace A185295.P18058034527086129489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005384 (n + 1)).toNat * A010815 (7 * n + 1)

end

end A185295.P18058034527086129489

namespace A185295

/-- `A008683(A005384(n+1))*A010815(7*n+1)` -/
def P18058034527086129489.Spec : Prop :=
  ∀ n, P18058034527086129489.a n = A185295 n

end A185295

/-! ## A185295.P10939223721738723734

`1-A007706(7*n+1)`
-/

namespace A185295.P10939223721738723734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A007706 (7 * n + 1)

end

end A185295.P10939223721738723734

namespace A185295

/-- `1-A007706(7*n+1)` -/
def P10939223721738723734.Spec : Prop :=
  ∀ n, P10939223721738723734.a n = A185295 n

end A185295

/-!
# A185296: Triangle of connection constants between the falling factorials (x)_(n) and (2*x)_(n).

The programs for A185296, the canonical program `A185296.P4068277283592902524` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185296 has offset 0).

The definition of A185296 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185296.P4068277283592902524

`(2*col(n)-row(n)+1)*T(n-1,k)+2*T(n-1,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185296

/-- `(2*col(n)-row(n)+1)*T(n-1,k)+2*T(n-1,k-1)` -/
def P4068277283592902524.Spec : Prop :=
  ∀ n, P4068277283592902524.a n = A185296 n

theorem P4068277283592902524.correct : P4068277283592902524.Spec := by
  intro n
  simp only [A185296]

end A185296

/-! ## A185296.P13559638108628574660

`row(n)!/col(n)!*C(col(n), row(n)-col(n))*2^(2*col(n)-row(n))`
-/

namespace A185296.P13559638108628574660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.triRow n) : ℚ) / (Nat.factorial (SequenceMachineLib.triCol n) : ℚ) * (Nat.choose (SequenceMachineLib.triCol n) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat : ℚ) * (2 : ℚ) ^ ((2 * SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n : ℤ) : ℤ)

end

end A185296.P13559638108628574660

namespace A185296

/-- `row(n)!/col(n)!*C(col(n), row(n)-col(n))*2^(2*col(n)-row(n))` -/
def P13559638108628574660.Spec : Prop :=
  ∀ n, P13559638108628574660.a n = (A185296 n : ℚ)

end A185296

/-! ## A185296.P2158221872714195626

`2*(T(n-1,k-1)+(row(n)-1)*T(n-2,k-1))` with `a(0)=1`
-/

namespace A185296.P2158221872714195626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (SequenceMachineLib.triUpLeft a n + ((SequenceMachineLib.triRow n : ℤ) - 1) * SequenceMachineLib.triUp2Left a n)

end

end A185296.P2158221872714195626

namespace A185296

/-- `2*(T(n-1,k-1)+(row(n)-1)*T(n-2,k-1))` -/
def P2158221872714195626.Spec : Prop :=
  ∀ n, P2158221872714195626.a n = A185296 n

end A185296

/-! ## A185296.P16719424963540735828

`2*(T(n-1,k-1)-(1-row(n))*T(n-2,k-1))` with `a(0)=1`
-/

namespace A185296.P16719424963540735828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (SequenceMachineLib.triUpLeft a n - (1 - (SequenceMachineLib.triRow n : ℤ)) * SequenceMachineLib.triUp2Left a n)

end

end A185296.P16719424963540735828

namespace A185296

/-- `2*(T(n-1,k-1)-(1-row(n))*T(n-2,k-1))` -/
def P16719424963540735828.Spec : Prop :=
  ∀ n, P16719424963540735828.a n = A185296 n

end A185296

/-! ## A185296.P8733956465593507671

`(2*col(n)+1-row(n))*T(n-1,k)+2*T(n-1,k-1)` with `a(0)=1`
-/

namespace A185296.P8733956465593507671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * SequenceMachineLib.triCol n + 1 : ℤ) - (SequenceMachineLib.triRow n : ℤ)) * SequenceMachineLib.triUp a n + 2 * SequenceMachineLib.triUpLeft a n

end

end A185296.P8733956465593507671

namespace A185296

/-- `(2*col(n)+1-row(n))*T(n-1,k)+2*T(n-1,k-1)` -/
def P8733956465593507671.Spec : Prop :=
  ∀ n, P8733956465593507671.a n = A185296 n

theorem P8733956465593507671.correct : P8733956465593507671.Spec := by
  intro n
  simp only [A185296, Nat.add_sub_cancel, A185296.P8733956465593507671.a, A185296.P4068277283592902524.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A185296

/-! ## A185296.P2499524066850899388

`A059268(n)*A122848(n)`
-/

namespace A185296.P2499524066850899388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A122848 n

end

end A185296.P2499524066850899388

namespace A185296

/-- `A059268(n)*A122848(n)` -/
def P2499524066850899388.Spec : Prop :=
  ∀ n, P2499524066850899388.a n = A185296 n

end A185296

/-! ## A185296.P9354999514124668795

`A061930(n)*A122848(n)`
-/

namespace A185296.P9354999514124668795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061930 n * A122848 n

end

end A185296.P9354999514124668795

namespace A185296

/-- `A061930(n)*A122848(n)` -/
def P9354999514124668795.Spec : Prop :=
  ∀ n, P9354999514124668795.a n = A185296 n

end A185296

/-! ## A185296.P11460200553422533485

`A122848(n)*A143446(n+1)`
-/

namespace A185296.P11460200553422533485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122848 n * A143446 (n + 1)

end

end A185296.P11460200553422533485

namespace A185296

/-- `A122848(n)*A143446(n+1)` -/
def P11460200553422533485.Spec : Prop :=
  ∀ n, P11460200553422533485.a n = A185296 n

end A185296

/-! ## A185296.P9076101540458315106

`2^A002262(n)*A122848(n)`
-/

namespace A185296.P9076101540458315106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002262 n : ℤ) * (A122848 n : ℚ)

end

end A185296.P9076101540458315106

namespace A185296

/-- `2^A002262(n)*A122848(n)` -/
def P9076101540458315106.Spec : Prop :=
  ∀ n, P9076101540458315106.a n = (A185296 n : ℚ)

end A185296

/-! ## A185296.P11823885653304917284

`A000079(A002262(n))*A122848(n)`
-/

namespace A185296.P11823885653304917284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A122848 n

end

end A185296.P11823885653304917284

namespace A185296

/-- `A000079(A002262(n))*A122848(n)` -/
def P11823885653304917284.Spec : Prop :=
  ∀ n, P11823885653304917284.a n = A185296 n

end A185296

/-! ## A185296.P12496580053326074778

`A094587(n)*A099089(n)`
-/

namespace A185296.P12496580053326074778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n * A099089 n

end

end A185296.P12496580053326074778

namespace A185296

/-- `A094587(n)*A099089(n)` -/
def P12496580053326074778.Spec : Prop :=
  ∀ n, P12496580053326074778.a n = A185296 n

end A185296

/-! ## A185296.P3317869688955268171

`abs(A094587(n)*A099096(n))`
-/

namespace A185296.P3317869688955268171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A094587 n * A099096 n|

end

end A185296.P3317869688955268171

namespace A185296

/-- `abs(A094587(n)*A099096(n))` -/
def P3317869688955268171.Spec : Prop :=
  ∀ n, P3317869688955268171.a n = A185296 n

end A185296

/-! ## A185296.P5168976776849568595

`lcm(A094587(n)*A099096(n), A007318(n))`
-/

namespace A185296.P5168976776849568595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A094587 n * A099096 n) (A007318 n)

end

end A185296.P5168976776849568595

namespace A185296

/-- `lcm(A094587(n)*A099096(n), A007318(n))` -/
def P5168976776849568595.Spec : Prop :=
  ∀ n, (P5168976776849568595.a n : ℤ) = A185296 n

end A185296

/-! ## A185296.P15600201761947461789

`A099089(n)*A159623(n)`
-/

namespace A185296.P15600201761947461789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099089 n * A159623 n

end

end A185296.P15600201761947461789

namespace A185296

/-- `A099089(n)*A159623(n)` -/
def P15600201761947461789.Spec : Prop :=
  ∀ n, P15600201761947461789.a n = A185296 n

end A185296

/-!
# A185297: Consider all pairs of primes (p,q) with p+q = 2n, p <= q; a(n) is the sum of all the p's.

The programs for A185297, the canonical program `A185297.P12343918897002506325` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185297 has offset 2).

The definition of A185297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1153 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185297.P9134796558481283339

`A008472(A362641(n+2))`
-/

namespace A185297.P9134796558481283339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A362641 (n + 2)).toNat

end

end A185297.P9134796558481283339

namespace A185297

/-- `A008472(A362641(n+2))` -/
def P9134796558481283339.Spec : Prop :=
  ∀ n, P9134796558481283339.a n = A185297 (n + 2)

end A185297

/-! ## A185297.P12343918897002506325

`(A226237(n+2)-A187619(n+2))/2`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A185297

/-- `(A226237(n+2)-A187619(n+2))/2` -/
def P12343918897002506325.Spec : Prop :=
  ∀ n, P12343918897002506325.a n = (A185297 (n + 2) : ℚ)

end A185297

/-! ## A185297.P15573626168708570380

`A187129(n+2)-A187619(n+2)`
-/

namespace A185297.P15573626168708570380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187129 (n + 2) - A187619 (n + 2)

end

end A185297.P15573626168708570380

namespace A185297

/-- `A187129(n+2)-A187619(n+2)` -/
def P15573626168708570380.Spec : Prop :=
  ∀ n, P15573626168708570380.a n = A185297 (n + 2)

end A185297

/-! ## A185297.P16200102982347283209

`A226237(n+2)-A187129(n+2)`
-/

namespace A185297.P16200102982347283209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226237 (n + 2) - A187129 (n + 2)

end

end A185297.P16200102982347283209

namespace A185297

/-- `A226237(n+2)-A187129(n+2)` -/
def P16200102982347283209.Spec : Prop :=
  ∀ n, P16200102982347283209.a n = A185297 (n + 2)

end A185297

/-! ## A185297.P3398383802388500938

`A187129(n+2)-Δ[A279726(n+1)]`
-/

namespace A185297.P3398383802388500938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187129 (n + 2) - (f1 (n + 1) - f1 n)

end

end A185297.P3398383802388500938

namespace A185297

/-- `A187129(n+2)-Δ[A279726(n+1)]` -/
def P3398383802388500938.Spec : Prop :=
  ∀ n, P3398383802388500938.a n = A185297 (n + 2)

end A185297

/-! ## A185297.P3026015979010960476

`A279726(n+1)+A187129(n+2)-A279726(n+2)`
-/

namespace A185297.P3026015979010960476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279726 (n + 1) + (A187129 (n + 2) - A279726 (n + 2))

end

end A185297.P3026015979010960476

namespace A185297

/-- `A279726(n+1)+A187129(n+2)-A279726(n+2)` -/
def P3026015979010960476.Spec : Prop :=
  ∀ n, P3026015979010960476.a n = A185297 (n + 2)

end A185297

/-! ## A185297.P718166303631385851

`A355197(2*(n+3))`
-/

namespace A185297.P718166303631385851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355197 (2 * (n + 3))

end

end A185297.P718166303631385851

namespace A185297

/-- `A355197(2*(n+3))` -/
def P718166303631385851.Spec : Prop :=
  ∀ n, P718166303631385851.a n = A185297 (n + 2)

end A185297

/-! ## A185297.P11654160546693102580

`A004526(A226237(n+2)-A187619(n+2))`
-/

namespace A185297.P11654160546693102580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A226237 (n + 2) - A187619 (n + 2)).toNat

end

end A185297.P11654160546693102580

namespace A185297

/-- `A004526(A226237(n+2)-A187619(n+2))` -/
def P11654160546693102580.Spec : Prop :=
  ∀ n, P11654160546693102580.a n = A185297 (n + 2)

end A185297

/-!
# A185298: Expansion of e.g.f. x*exp(x)*exp(x*exp(x)).

The programs for A185298, the canonical program `A185298.P1813386947273062442` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185298 has offset 0).

The definition of A185298 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185298.P1813386947273062442

`∑{#}[n-1, C(n, #+1)*(#+1)^(n-#)]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A185298

/-- `∑{#}[n-1, C(n, #+1)*(#+1)^(n-#)]` -/
def P1813386947273062442.Spec : Prop :=
  ∀ n, P1813386947273062442.a n = (A185298 n : ℚ)

end A185298

/-! ## A185298.P11544505779130771883

`∑{#}[n, C(n, #)*#^(n-#)*#]`
-/

namespace A185298.P11544505779130771883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℚ) * (k : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (k : ℚ)

end

end A185298.P11544505779130771883

namespace A185298

/-- `∑{#}[n, C(n, #)*#^(n-#)*#]` -/
def P11544505779130771883.Spec : Prop :=
  ∀ n, P11544505779130771883.a n = (A185298 n : ℚ)

end A185298

/-! ## A185298.P14670186908028326764

`n*A080108(A028310(n))`
-/

namespace A185298.P14670186908028326764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A080108 (A028310 n).toNat

end

end A185298.P14670186908028326764

namespace A185298

/-- `n*A080108(A028310(n))` -/
def P14670186908028326764.Spec : Prop :=
  ∀ n, P14670186908028326764.a n = A185298 n

end A185298

/-! ## A185298.P8561264751345888833

`n*A080108(A000007(n)+n)`
-/

namespace A185298.P8561264751345888833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A080108 (A000007 n + (n : ℤ)).toNat

end

end A185298.P8561264751345888833

namespace A185298

/-- `n*A080108(A000007(n)+n)` -/
def P8561264751345888833.Spec : Prop :=
  ∀ n, P8561264751345888833.a n = A185298 n

end A185298

/-! ## A185298.P2346909389910374378

`A000248(n+1)-A080108(n+1)`
-/

namespace A185298.P2346909389910374378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000248 (n + 1) - A080108 (n + 1)

end

end A185298.P2346909389910374378

namespace A185298

/-- `A000248(n+1)-A080108(n+1)` -/
def P2346909389910374378.Spec : Prop :=
  ∀ n, P2346909389910374378.a n = A185298 n

end A185298

/-! ## A185298.P5841027524993498601

`A116071(A253145(n))-A080108(n+1)`
-/

namespace A185298.P5841027524993498601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116071 (A253145 n).toNat - A080108 (n + 1)

end

end A185298.P5841027524993498601

namespace A185298

/-- `A116071(A253145(n))-A080108(n+1)` -/
def P5841027524993498601.Spec : Prop :=
  ∀ n, P5841027524993498601.a n = A185298 n

end A185298

/-! ## A185298.P2866862917540670995

`A116071(record[A038722(n+1)])-A080108(n+1)`
-/

namespace A185298.P2866862917540670995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116071 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A080108 (n + 1)

end

end A185298.P2866862917540670995

namespace A185298

/-- `A116071(record[A038722(n+1)])-A080108(n+1)` -/
def P2866862917540670995.Spec : Prop :=
  ∀ n, P2866862917540670995.a n = A185298 n

end A185298

