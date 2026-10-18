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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.Opaque.C025

/-!
# A071800: Number of lattice paths in the lattice [0..2n] X [0..2n] X [0..2n] which do not pass through the point (n,n,n). Number of paths through a lattice containing a "hole".

The programs for A071800, there is no canonical definition to state claims against.
-/

/-! ## A071800.P16733258383774844745

`A071803(2*(n+1))`
-/

namespace A071800.P16733258383774844745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071803 (2 * (n + 1))

end

end A071800.P16733258383774844745

/-!
# A071801: a(n) = binomial(2n, n) - binomial(n, floor(n/2))^2.

The programs for A071801, the canonical program `A071801.P7428256441683658426` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071801 has offset 0).

The definition of A071801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071801.P7428256441683658426

`A000984(n)-C(n, floor(n/2))²`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071801

/-- `A000984(n)-C(n, floor(n/2))²` -/
def P7428256441683658426.Spec : Prop :=
  ∀ n, P7428256441683658426.a n = A071801 n

theorem P7428256441683658426.correct : P7428256441683658426.Spec := by
  intro n
  simp only [A071801]

end A071801

/-! ## A071801.P5074535876436658924

`record[a(n-1)/(floor(n/2)/n-1)]-A018224(n)` with `a(0)=1`
-/

namespace A071801.P5074535876436658924
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A018224 n : ℚ)

end

end A071801.P5074535876436658924

namespace A071801

/-- `record[a(n-1)/(floor(n/2)/n-1)]-A018224(n)` -/
def P5074535876436658924.Spec : Prop :=
  ∀ n, P5074535876436658924.a n = (A071801 n : ℚ)

end A071801

/-! ## A071801.P834557630372621091

`A000984(n)-A018224(n)`
-/

namespace A071801.P834557630372621091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A018224 n

end

end A071801.P834557630372621091

namespace A071801

/-- `A000984(n)-A018224(n)` -/
def P834557630372621091.Spec : Prop :=
  ∀ n, P834557630372621091.a n = A071801 n

end A071801

/-! ## A071801.P521902364421041152

`A000984(n)-A001405(n)²`
-/

namespace A071801.P521902364421041152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A001405 n ^ 2

end

end A071801.P521902364421041152

namespace A071801

/-- `A000984(n)-A001405(n)²` -/
def P521902364421041152.Spec : Prop :=
  ∀ n, P521902364421041152.a n = A071801 n

end A071801

/-! ## A071801.P10962409950946194330

`A000984(n)-A126930(n)²`
-/

namespace A071801.P10962409950946194330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A126930 n ^ 2

end

end A071801.P10962409950946194330

namespace A071801

/-- `A000984(n)-A126930(n)²` -/
def P10962409950946194330.Spec : Prop :=
  ∀ n, P10962409950946194330.a n = A071801 n

end A071801

/-! ## A071801.P2169923517728638081

`record[A126930(n)]-A018224(n)`
-/

namespace A071801.P2169923517728638081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A018224 n

end

end A071801.P2169923517728638081

namespace A071801

/-- `record[A126930(n)]-A018224(n)` -/
def P2169923517728638081.Spec : Prop :=
  ∀ n, P2169923517728638081.a n = A071801 n

end A071801

/-! ## A071801.P3852112982609038517

`A001405(2*n)-A018224(n)`
-/

namespace A071801.P3852112982609038517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) - A018224 n

end

end A071801.P3852112982609038517

namespace A071801

/-- `A001405(2*n)-A018224(n)` -/
def P3852112982609038517.Spec : Prop :=
  ∀ n, P3852112982609038517.a n = A071801 n

end A071801

/-! ## A071801.P10561411698455665848

`A063886(2*n)-A018224(n)`
-/

namespace A071801.P10561411698455665848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (2 * n) - A018224 n

end

end A071801.P10561411698455665848

namespace A071801

/-- `A063886(2*n)-A018224(n)` -/
def P10561411698455665848.Spec : Prop :=
  ∀ n, P10561411698455665848.a n = A071801 n

end A071801

/-! ## A071801.P15503564418709460316

`A126930(2*n)-A018224(n)`
-/

namespace A071801.P15503564418709460316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 (2 * n) - A018224 n

end

end A071801.P15503564418709460316

namespace A071801

/-- `A126930(2*n)-A018224(n)` -/
def P15503564418709460316.Spec : Prop :=
  ∀ n, P15503564418709460316.a n = A071801 n

end A071801

/-! ## A071801.P5420146068602760132

`A129383(2*n)-A018224(n)`
-/

namespace A071801.P5420146068602760132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129383 (2 * n) - A018224 n

end

end A071801.P5420146068602760132

namespace A071801

/-- `A129383(2*n)-A018224(n)` -/
def P5420146068602760132.Spec : Prop :=
  ∀ n, P5420146068602760132.a n = A071801 n

end A071801

/-! ## A071801.P8602643881592190803

`record[A081668(n)]-A001405(n)²`
-/

namespace A071801.P8602643881592190803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A001405 n ^ 2

end

end A071801.P8602643881592190803

namespace A071801

/-- `record[A081668(n)]-A001405(n)²` -/
def P8602643881592190803.Spec : Prop :=
  ∀ n, P8602643881592190803.a n = A071801 n

end A071801

/-! ## A071801.P6454101427402036030

`record[A081668(n)]-A126930(n)²`
-/

namespace A071801.P6454101427402036030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A126930 n ^ 2

end

end A071801.P6454101427402036030

namespace A071801

/-- `record[A081668(n)]-A126930(n)²` -/
def P6454101427402036030.Spec : Prop :=
  ∀ n, P6454101427402036030.a n = A071801 n

end A071801

/-! ## A071801.P13565146681273862797

`A000984(n)-(A014495(n)+1)²`
-/

namespace A071801.P13565146681273862797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - (A014495 n + 1) ^ 2

end

end A071801.P13565146681273862797

namespace A071801

/-- `A000984(n)-(A014495(n)+1)²` -/
def P13565146681273862797.Spec : Prop :=
  ∀ n, P13565146681273862797.a n = A071801 n

end A071801

/-! ## A071801.P15402222986366887267

`A000984(n)-A210736(n+1)²`
-/

namespace A071801.P15402222986366887267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A210736 (n + 1) ^ 2

end

end A071801.P15402222986366887267

namespace A071801

/-- `A000984(n)-A210736(n+1)²` -/
def P15402222986366887267.Spec : Prop :=
  ∀ n, P15402222986366887267.a n = A071801 n

end A071801

/-! ## A071801.P8280915183973047096

`A000984(n)-(1-A051920(n))²`
-/

namespace A071801.P8280915183973047096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - (1 - A051920 n) ^ 2

end

end A071801.P8280915183973047096

namespace A071801

/-- `A000984(n)-(1-A051920(n))²` -/
def P8280915183973047096.Spec : Prop :=
  ∀ n, P8280915183973047096.a n = A071801 n

end A071801

/-! ## A071801.P7052906636974484318

`A001405(2*n)-A001405(n)²`
-/

namespace A071801.P7052906636974484318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) - A001405 n ^ 2

end

end A071801.P7052906636974484318

namespace A071801

/-- `A001405(2*n)-A001405(n)²` -/
def P7052906636974484318.Spec : Prop :=
  ∀ n, P7052906636974484318.a n = A071801 n

end A071801

/-! ## A071801.P17802225273333205247

`A063886(2*n)-A126930(n)²`
-/

namespace A071801.P17802225273333205247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (2 * n) - A126930 n ^ 2

end

end A071801.P17802225273333205247

namespace A071801

/-- `A063886(2*n)-A126930(n)²` -/
def P17802225273333205247.Spec : Prop :=
  ∀ n, P17802225273333205247.a n = A071801 n

end A071801

/-! ## A071801.P1574105086491230692

`A081668(2*n)-A126930(n)²`
-/

namespace A071801.P1574105086491230692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 (2 * n) - A126930 n ^ 2

end

end A071801.P1574105086491230692

namespace A071801

/-- `A081668(2*n)-A126930(n)²` -/
def P1574105086491230692.Spec : Prop :=
  ∀ n, P1574105086491230692.a n = A071801 n

end A071801

/-! ## A071801.P11210426297556469266

`A126869(2*n)-A126930(n)²`
-/

namespace A071801.P11210426297556469266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n) - A126930 n ^ 2

end

end A071801.P11210426297556469266

namespace A071801

/-- `A126869(2*n)-A126930(n)²` -/
def P11210426297556469266.Spec : Prop :=
  ∀ n, P11210426297556469266.a n = A071801 n

end A071801

/-! ## A071801.P11682167121512329871

`A126930(2*n)-A126930(n)²`
-/

namespace A071801.P11682167121512329871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 (2 * n) - A126930 n ^ 2

end

end A071801.P11682167121512329871

namespace A071801

/-- `A126930(2*n)-A126930(n)²` -/
def P11682167121512329871.Spec : Prop :=
  ∀ n, P11682167121512329871.a n = A071801 n

end A071801

/-!
# A071802: Table in which n-th row gives exponents (in decreasing order) of lexicographically earliest primitive irreducible polynomial of degree n over GF(2).

The programs for A071802, there is no canonical definition to state claims against.
-/

/-! ## A071802.P2817725297466831421

`A219659(eq[A170956(n), A277007(n)])`
-/

namespace A071802.P2817725297466831421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170956 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219659 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A071802.P2817725297466831421

/-! ## A071802.P8348198636436659325

`gcd(A110355(n+1), A262678(A222032(n+1)))`
-/

namespace A071802.P8348198636436659325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A110355 (n + 1)) (A262678 (A222032 (n + 1)).toNat)

end

end A071802.P8348198636436659325

/-! ## A071802.P7087029650523540060

`A110355(n+1)-A101436(A152046(n))`
-/

namespace A071802.P7087029650523540060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110355 (n + 1) - A101436 (A152046 n).toNat

end

end A071802.P7087029650523540060

/-! ## A071802.P7248474788193360235

`A110355(n+1)/A026492(∑[A048584(n)])`
-/

namespace A071802.P7248474788193360235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048584 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110355 (n + 1) : ℚ) / (A026492 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ)

end

end A071802.P7248474788193360235

/-!
# A071804: Number of pairs (x,y) such that tau(x^y) = x+y, 1<=x<=n, 1<=y<=n.

The programs for A071804, there is no canonical definition to state claims against.
-/

/-! ## A071804.P840195826690228508

`A034178(∏[A130321(∑{d}[n+1, (-1)^(n*#)])])`
-/

namespace A071804.P840195826690228508
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 (∑ d ∈ Nat.divisors (f2 n), (-1) ^ (n * d)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A071804.P840195826690228508

/-! ## A071804.P4174881167041426938

`∑[A092573(A218491((n+2)²))]`
-/

namespace A071804.P4174881167041426938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092573 (A218491 ((n + 2) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071804.P4174881167041426938

/-! ## A071804.P2991290075886430903

`∑[A025456(A326486(n)*A333884(n))]`
-/

namespace A071804.P2991290075886430903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 (A326486 n * A333884 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071804.P2991290075886430903

/-!
# A071805: Number of pairs (x,y) such that prime(x) + prime(y) = x*tau(x) + y*tau(y), 1<=x<=y<=n.

The programs for A071805, there is no canonical definition to state claims against.
-/

/-! ## A071805.P6575374843661577183

`∑[A054973(∑[(n+1)²-A300222(n)]+1)]`
-/

namespace A071805.P6575374843661577183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A300222 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071805.P6575374843661577183

/-!
# A071807: Number of pairs (x,y) such that prime(x) - prime(y) = x*tau(x) - y*tau(y), 1<=x<=y<=n.

The programs for A071807, there is no canonical definition to state claims against.
-/

/-! ## A071807.P5462731849760529089

`∑[A352822(∑[A096777(3*n+5)])]`
-/

namespace A071807.P5462731849760529089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096777 (3 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352822 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071807.P5462731849760529089

/-! ## A071807.P14188538680302032094

`lt[A156927(A066990(n+1)), A045662(n)]`
-/

namespace A071807.P14188538680302032094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156927 (A066990 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045662 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A071807.P14188538680302032094

/-! ## A071807.P17968399627914128783

`eq[A123504(n+2), A197879(A101479(n))]`
-/

namespace A071807.P17968399627914128783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123504 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197879 (A101479 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071807.P17968399627914128783

/-! ## A071807.P4044783353067911665

`lt[A002324(A268110(n+1)), A353656(n+1)]`
-/

namespace A071807.P4044783353067911665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (A268110 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353656 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A071807.P4044783353067911665

/-! ## A071807.P10495923339233416023

`lt[A345926(A345920(n+1)), A345877(n+4)]`
-/

namespace A071807.P10495923339233416023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345926 (A345920 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345877 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A071807.P10495923339233416023

/-!
# A071808: Smallest number s such that s*k+1 is squarefree for 1 <= k <= n.

The programs for A071808, there is no canonical definition to state claims against.
-/

/-! ## A071808.P2349497727832885174

`A130130(n)!*A071577(n+1)`
-/

namespace A071808.P2349497727832885174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A130130 n).toNat : ℤ) * A071577 (n + 1)

end

end A071808.P2349497727832885174

/-! ## A071808.P6096990989687180383

`A020639(A018819(n))*A071577(n+1)`
-/

namespace A071808.P6096990989687180383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A018819 n).toNat * A071577 (n + 1)

end

end A071808.P6096990989687180383

/-! ## A071808.P16307664484151653395

`A014963(A060632(n))*A071577(n+1)`
-/

namespace A071808.P16307664484151653395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A060632 n).toNat * A071577 (n + 1)

end

end A071808.P16307664484151653395

/-! ## A071808.P2346332025299822381

`A020639(A000010(n+1))*A071577(n+1)`
-/

namespace A071808.P2346332025299822381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 1)).toNat * A071577 (n + 1)

end

end A071808.P2346332025299822381

/-! ## A071808.P11742172547533116391

`A000005(A082072(n+1))*A071577(n+1)`
-/

namespace A071808.P11742172547533116391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A082072 (n + 1)).toNat * A071577 (n + 1)

end

end A071808.P11742172547533116391

/-! ## A071808.P12078583141389165307

`A000005(A136548(n+1))*A071577(n+1)`
-/

namespace A071808.P12078583141389165307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A136548 (n + 1)).toNat * A071577 (n + 1)

end

end A071808.P12078583141389165307

/-! ## A071808.P15688245215645979202

`lcm(A071577(n+1)*A084100(n), A084100(n))`
-/

namespace A071808.P15688245215645979202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A071577 (n + 1) * A084100 n) (A084100 n)

end

end A071808.P15688245215645979202

/-! ## A071808.P10674526443241036764

`A020639(a(n-1))*A071577(n+1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A071808.P10674526443241036764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A020639 (a (n - 1)).toNat * A071577 (n + 1)

end

end A071808.P10674526443241036764

/-! ## A071808.P13264570893714315267

`A071577(n+1)*A084100(n²)`
-/

namespace A071808.P13264570893714315267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071577 (n + 1) * A084100 (n ^ 2)

end

end A071808.P13264570893714315267

/-!
# A071810: Number of subsets of the first n primes whose sum is a prime.

The programs for A071810, there is no canonical definition to state claims against.
-/

/-! ## A071810.P17863449159089060358

`2^(n+1)-A364535(n+1)`
-/

namespace A071810.P17863449159089060358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A364535 (n + 1)

end

end A071810.P17863449159089060358

/-! ## A071810.P12489812180768405774

`∑[A339613(n+1)]`
-/

namespace A071810.P12489812180768405774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071810.P12489812180768405774

/-! ## A071810.P3128671353556989812

`a(n-1)+A000034(A033583(n))*A339613(n+1)` with `a(0)=1`
-/

namespace A071810.P3128671353556989812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000034 (A033583 n).toNat * A339613 (n + 1)

end

end A071810.P3128671353556989812

/-! ## A071810.P7180578140572340131

`∑{d}[2^n, A339613(A000005(#))]`
-/

namespace A071810.P7180578140572340131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339613 (A000005 d).toNat

end

end A071810.P7180578140572340131

/-! ## A071810.P164544829616302497

`A003056(A335793(n)+C(n+3, 3)+n)`
-/

namespace A071810.P164544829616302497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A335793 n + (Nat.choose (n + 3) 3 + n : ℤ)).toNat

end

end A071810.P164544829616302497

/-!
# A071811: a(n) = Sum_{k = 1..10^n} number of primes (counted with multiplicity) dividing k (A001222).

The programs for A071811, the canonical program `A071811.P5564819025798822458` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071811 has offset 0).

The definition of A071811 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071811.P5564819025798822458

`A022559(10^n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A071811

/-- `A022559(10^n)` -/
def P5564819025798822458.Spec : Prop :=
  ∀ n, P5564819025798822458.a n = A071811 n

theorem P5564819025798822458.correct : P5564819025798822458.Spec := by
  intro n
  simp only [A071811]

end A071811

/-! ## A071811.P1956620529568299644

`record[A022559(A038303(n))]`
-/

namespace A071811.P1956620529568299644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (A038303 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071811.P1956620529568299644

namespace A071811

/-- `record[A022559(A038303(n))]` -/
def P1956620529568299644.Spec : Prop :=
  ∀ n, P1956620529568299644.a n = A071811 n

end A071811

/-!
# A071812: Continued fraction expansion of a constant x where each term is determined by a(n) = floor(1/frac(n*x)), where x=0.283151006074509519...

The programs for A071812, there is no canonical definition to state claims against.
-/

/-! ## A071812.P240989571413779535

`A102800(A024584(2*(n+1)))`
-/

namespace A071812.P240989571413779535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102800 (A024584 (2 * (n + 1))).toNat

end

end A071812.P240989571413779535

/-! ## A071812.P16505774980318547601

`A084794(record[Δ[A304035(n+1)]])`
-/

namespace A071812.P16505774980318547601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304035 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084794 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071812.P16505774980318547601

/-! ## A071812.P2627674020671425266

`A001222(2^A024584(2*(n+1)))`
-/

namespace A071812.P2627674020671425266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A024584 (2 * (n + 1)) : ℤ))).toNat

end

end A071812.P2627674020671425266

/-! ## A071812.P16545466365874146505

`A024584(2*(n+1))^A024573(n+1)`
-/

namespace A071812.P16545466365874146505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024584 (2 * (n + 1)) : ℚ) ^ (A024573 (n + 1) : ℤ)

end

end A071812.P16545466365874146505

/-! ## A071812.P15823146450930759272

`A024584(2*(n+1))%A175534(n+1)`
-/

namespace A071812.P15823146450930759272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024584 (2 * (n + 1))) (A175534 (n + 1))

end

end A071812.P15823146450930759272

/-!
# A071814: Numbers k such that the number of 1's in the binary representation of k equals bigomega(k), the number of prime divisors of k (counted with multiplicity).

The programs for A071814, the canonical program `A071814.P14065954897121222542` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071814 has offset 1).

The definition of A071814 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1873 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071814.P14065954897121222542

`eq[A001222(n+1), A001222(A001316(n+1))]+1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A071814

/-- `eq[A001222(n+1), A001222(A001316(n+1))]+1` -/
def P14065954897121222542.Spec : Prop :=
  ∀ n, (P14065954897121222542.a n : ℤ) = A071814 (n + 1)

theorem P14065954897121222542.correct : P14065954897121222542.Spec := by
  intro n
  simp only [A071814, Nat.add_sub_cancel]

end A071814

/-! ## A071814.P15258564944954465300

`eq[A001222(abs(1-n)+1), A000120(n)]`
-/

namespace A071814.P15258564944954465300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071814.P15258564944954465300

namespace A071814

/-- `eq[A001222(abs(1-n)+1), A000120(n)]` -/
def P15258564944954465300.Spec : Prop :=
  ∀ n, (P15258564944954465300.a n : ℤ) = A071814 (n + 1)

end A071814

/-! ## A071814.P1246061084753558426

`eq[A001222(n+1), A000120(n+1)]+1`
-/

namespace A071814.P1246061084753558426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071814.P1246061084753558426

namespace A071814

/-- `eq[A001222(n+1), A000120(n+1)]+1` -/
def P1246061084753558426.Spec : Prop :=
  ∀ n, (P1246061084753558426.a n : ℤ) = A071814 (n + 1)

end A071814

/-! ## A071814.P17698416367213836324

`eq[A001316(n+1), A061142(n+1)]+1`
-/

namespace A071814.P17698416367213836324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071814.P17698416367213836324

namespace A071814

/-- `eq[A001316(n+1), A061142(n+1)]+1` -/
def P17698416367213836324.Spec : Prop :=
  ∀ n, (P17698416367213836324.a n : ℤ) = A071814 (n + 1)

end A071814

/-! ## A071814.P7583297761438836579

`eq[A000120(n)+1, A001222(A004277(n))]`
-/

namespace A071814.P7583297761438836579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071814.P7583297761438836579

namespace A071814

/-- `eq[A000120(n)+1, A001222(A004277(n))]` -/
def P7583297761438836579.Spec : Prop :=
  ∀ n, (P7583297761438836579.a n : ℤ) = A071814 (n + 1)

end A071814

/-! ## A071814.P1178509861652469009

`eq[A000120(n)+2, A001222(A008574(n))]`
-/

namespace A071814.P1178509861652469009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071814.P1178509861652469009

namespace A071814

/-- `eq[A000120(n)+2, A001222(A008574(n))]` -/
def P1178509861652469009.Spec : Prop :=
  ∀ n, (P1178509861652469009.a n : ℤ) = A071814 (n + 1)

end A071814

/-! ## A071814.P3637558772119062394

`eq[2*n+1-A005187(n), A001222(A004277(n))]`
-/

namespace A071814.P3637558772119062394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A005187 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071814.P3637558772119062394

namespace A071814

/-- `eq[2*n+1-A005187(n), A001222(A004277(n))]` -/
def P3637558772119062394.Spec : Prop :=
  ∀ n, (P3637558772119062394.a n : ℤ) = A071814 (n + 1)

end A071814

/-! ## A071814.P1737317196376086975

`eq[A000120(n+1), A252736(2*(n+1))]+1`
-/

namespace A071814.P1737317196376086975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071814.P1737317196376086975

namespace A071814

/-- `eq[A000120(n+1), A252736(2*(n+1))]+1` -/
def P1737317196376086975.Spec : Prop :=
  ∀ n, (P1737317196376086975.a n : ℤ) = A071814 (n + 1)

end A071814

/-! ## A071814.P8194114330154606894

`eq[2*A001316(n), A061142(A004277(n))]`
-/

namespace A071814.P8194114330154606894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071814.P8194114330154606894

namespace A071814

/-- `eq[2*A001316(n), A061142(A004277(n))]` -/
def P8194114330154606894.Spec : Prop :=
  ∀ n, (P8194114330154606894.a n : ℤ) = A071814 (n + 1)

end A071814

/-!
# A071816: Number of ordered solutions to x+y+z = u+v+w, 0 <= x, y, z, u, v, w < n.

The programs for A071816, the canonical program `A071816.P5842634050163126599` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071816 has offset 1).

The definition of A071816 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071816.P5842634050163126599

`(n+1)*(11*(n+1)^4+5*(n+1)²+4)/20`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A071816

/-- `(n+1)*(11*(n+1)^4+5*(n+1)²+4)/20` -/
def P5842634050163126599.Spec : Prop :=
  ∀ n, P5842634050163126599.a n = (A071816 (n + 1) : ℚ)

end A071816

/-! ## A071816.P11013367161640800552

`∑[∑[A008528(n)]]`
-/

namespace A071816.P11013367161640800552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008528 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071816.P11013367161640800552

namespace A071816

/-- `∑[∑[A008528(n)]]` -/
def P11013367161640800552.Spec : Prop :=
  ∀ n, P11013367161640800552.a n = A071816 (n + 1)

end A071816

/-! ## A071816.P1910954212188492567

`∑[A070302(n+1)]`
-/

namespace A071816.P1910954212188492567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071816.P1910954212188492567

namespace A071816

/-- `∑[A070302(n+1)]` -/
def P1910954212188492567.Spec : Prop :=
  ∀ n, P1910954212188492567.a n = A071816 (n + 1)

end A071816

/-! ## A071816.P10057025052190681164

`∑[A160765(n)+∑[n]²]`
-/

namespace A071816.P10057025052190681164
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160765 n + (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071816.P10057025052190681164

namespace A071816

/-- `∑[A160765(n)+∑[n]²]` -/
def P10057025052190681164.Spec : Prop :=
  ∀ n, P10057025052190681164.a n = A071816 (n + 1)

end A071816

/-! ## A071816.P15376967137064315619

`∑[A160747(n)+(n²+n)²]`
-/

namespace A071816.P15376967137064315619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160747 n + ((n ^ 2 + n) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071816.P15376967137064315619

namespace A071816

/-- `∑[A160747(n)+(n²+n)²]` -/
def P15376967137064315619.Spec : Prop :=
  ∀ n, P15376967137064315619.a n = A071816 (n + 1)

end A071816

/-! ## A071816.P9154729318908082578

`∑[A072025(n)+A008893(n)]`
-/

namespace A071816.P9154729318908082578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072025 n + A008893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071816.P9154729318908082578

namespace A071816

/-- `∑[A072025(n)+A008893(n)]` -/
def P9154729318908082578.Spec : Prop :=
  ∀ n, P9154729318908082578.a n = A071816 (n + 1)

end A071816

/-! ## A071816.P12889739924645651603

`∑[2*A160767(n)-A160747(n)]`
-/

namespace A071816.P12889739924645651603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160767 n - A160747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071816.P12889739924645651603

namespace A071816

/-- `∑[2*A160767(n)-A160747(n)]` -/
def P12889739924645651603.Spec : Prop :=
  ∀ n, P12889739924645651603.a n = A071816 (n + 1)

end A071816

/-! ## A071816.P9163146017669147361

`∑[∑[A008706(n)+n*A010003(n)]]`
-/

namespace A071816.P9163146017669147361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (n : ℤ) * A010003 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071816.P9163146017669147361

namespace A071816

/-- `∑[∑[A008706(n)+n*A010003(n)]]` -/
def P9163146017669147361.Spec : Prop :=
  ∀ n, P9163146017669147361.a n = A071816 (n + 1)

end A071816

/-! ## A071816.P16477245633961971984

`A163269(∑[n+3]+1)`
-/

namespace A071816.P16477245633961971984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163269 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A071816.P16477245633961971984

namespace A071816

/-- `A163269(∑[n+3]+1)` -/
def P16477245633961971984.Spec : Prop :=
  ∀ n, P16477245633961971984.a n = A071816 (n + 1)

end A071816

/-! ## A071816.P3791850332542161313

`A277951(3*n²+n+1)`
-/

namespace A071816.P3791850332542161313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277951 (3 * n ^ 2 + (n + 1))

end

end A071816.P3791850332542161313

namespace A071816

/-- `A277951(3*n²+n+1)` -/
def P3791850332542161313.Spec : Prop :=
  ∀ n, P3791850332542161313.a n = A071816 (n + 1)

end A071816

/-!
# A071817: Number of 3-digit numbers whose digits add up to n.

The programs for A071817, there is no canonical definition to state claims against.
-/

/-! ## A071817.P5515349114212816483

`A289410(n+28)`
-/

namespace A071817.P5515349114212816483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289410 (n + 28)

end

end A071817.P5515349114212816483

/-! ## A071817.P2358058078824823824

`∑[∑[A257076(A306752(n))]]`
-/

namespace A071817.P2358058078824823824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257076 (A306752 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071817.P2358058078824823824

/-! ## A071817.P16170663247844830466

`∑[∑[A257076(A017867(8*n))]]`
-/

namespace A071817.P16170663247844830466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257076 (A017867 (8 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071817.P16170663247844830466

/-! ## A071817.P16612054423821041472

`∑[∑[A113679(A036633(n))]]`
-/

namespace A071817.P16612054423821041472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113679 (A036633 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071817.P16612054423821041472

/-! ## A071817.P7228215055844077867

`∑[n]+dr(A270393(n+1))`
-/

namespace A071817.P7228215055844077867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + SequenceMachineLib.digitalRoot (A270393 (n + 1))

end

end A071817.P7228215055844077867

/-!
# A071820: Kolakoski-(2,3) sequence: a(n) is length of n-th run.

The programs for A071820, there is no canonical definition to state claims against.
-/

/-! ## A071820.P12308628078255891206

`a(A074804(n)-1)` with `a(0)=2, a(1)=2, a(2)=3`
-/

namespace A071820.P12308628078255891206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 3] fun n a =>
  a (A074804 n - 1).toNat

end

end A071820.P12308628078255891206

/-! ## A071820.P2640403436042378618

`A074804(A028310(n))-C(n, n²)`
-/

namespace A071820.P2640403436042378618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074804 (A028310 n).toNat - (Nat.choose n (n ^ 2) : ℤ)

end

end A071820.P2640403436042378618

/-! ## A071820.P14070821432288738746

`A074804(A141044(n)²*A028310(n))`
-/

namespace A071820.P14070821432288738746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074804 (A141044 n ^ 2 * A028310 n).toNat

end

end A071820.P14070821432288738746

/-! ## A071820.P14295334520743887068

`A074804(A028310(n))-char[A352330(n+1)]`
-/

namespace A071820.P14295334520743887068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352330 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074804 (A028310 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A071820.P14295334520743887068

/-! ## A071820.P1864847908546008830

`A074804(A028310(n))-char[1-A274650(n)]`
-/

namespace A071820.P1864847908546008830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A274650 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074804 (A028310 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A071820.P1864847908546008830

/-! ## A071820.P9177132838417152226

`A074804(A028310(n)*A141044(n)*A141044(n))`
-/

namespace A071820.P9177132838417152226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074804 (A028310 n * A141044 n * A141044 n).toNat

end

end A071820.P9177132838417152226

/-! ## A071820.P14213584269915423304

`A074804(A141044(n)*A233583(n+1))`
-/

namespace A071820.P14213584269915423304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074804 (A141044 n * A233583 (n + 1)).toNat

end

end A071820.P14213584269915423304

/-!
# A071821: Numbers whose largest prime factor is of the form 4k+1.

The programs for A071821, the canonical program `A071821.P18435798428974889159` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071821 has offset 1).

The definition of A071821 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071821.P18435798428974889159

`eq[0, and(2, A006530(n+2))]+2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A071821

/-- `eq[0, and(2, A006530(n+2))]+2` -/
def P18435798428974889159.Spec : Prop :=
  ∀ n, (P18435798428974889159.a n : ℤ) = A071821 (n + 1)

theorem P18435798428974889159.correct : P18435798428974889159.Spec := by
  intro n
  simp only [A071821, Nat.add_sub_cancel]

end A071821

/-! ## A071821.P13284649877644788046

`eq[1, A006530(n+4)%4]+4`
-/

namespace A071821.P13284649877644788046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (n + 4)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 4

end

end A071821.P13284649877644788046

namespace A071821

/-- `eq[1, A006530(n+4)%4]+4` -/
def P13284649877644788046.Spec : Prop :=
  ∀ n, (P13284649877644788046.a n : ℤ) = A071821 (n + 1)

end A071821

/-! ## A071821.P5831614955879972813

`eq[1, A005089(A006530(n+1))]+1`
-/

namespace A071821.P5831614955879972813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005089 (A006530 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A071821.P5831614955879972813

namespace A071821

/-- `eq[1, A005089(A006530(n+1))]+1` -/
def P5831614955879972813.Spec : Prop :=
  ∀ n, (P5831614955879972813.a n : ℤ) = A071821 (n + 1)

end A071821

/-! ## A071821.P15070544804094341361

`lt[27, A347634(A006530(n+1)+1)]+1`
-/

namespace A071821.P15070544804094341361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347634 (A006530 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A071821.P15070544804094341361

namespace A071821

/-- `lt[27, A347634(A006530(n+1)+1)]+1` -/
def P15070544804094341361.Spec : Prop :=
  ∀ n, (P15070544804094341361.a n : ℤ) = A071821 (n + 1)

end A071821

/-! ## A071821.P14033782701956750709

`lt[1, A007814(A006530(2*(n+1))-1)]+1`
-/

namespace A071821.P14033782701956750709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A006530 (2 * (n + 1)) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A071821.P14033782701956750709

namespace A071821

/-- `lt[1, A007814(A006530(2*(n+1))-1)]+1` -/
def P14033782701956750709.Spec : Prop :=
  ∀ n, (P14033782701956750709.a n : ℤ) = A071821 (n + 1)

end A071821

/-! ## A071821.P10816131414676094298

`lt[1, A007814(A006530(2*∏{p}[n, #])-1)]`
-/

namespace A071821.P10816131414676094298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A006530 (2 * (∏ p ∈ Nat.primeFactors (f3 n), p)) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A071821.P10816131414676094298

namespace A071821

/-- `lt[1, A007814(A006530(2*∏{p}[n, #])-1)]` -/
def P10816131414676094298.Spec : Prop :=
  ∀ n, (P10816131414676094298.a n : ℤ) = A071821 (n + 1)

end A071821

/-! ## A071821.P5771006934077015118

`eq[2, A091379(A006530(A008458(n)))]`
-/

namespace A071821.P5771006934077015118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091379 (A006530 (A008458 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071821.P5771006934077015118

namespace A071821

/-- `eq[2, A091379(A006530(A008458(n)))]` -/
def P5771006934077015118.Spec : Prop :=
  ∀ n, (P5771006934077015118.a n : ℤ) = A071821 (n + 1)

end A071821

/-! ## A071821.P5818423936229955452

`eq[2, A338690(A006530(A008574(n)))]`
-/

namespace A071821.P5818423936229955452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338690 (A006530 (A008574 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071821.P5818423936229955452

namespace A071821

/-- `eq[2, A338690(A006530(A008574(n)))]` -/
def P5818423936229955452.Spec : Prop :=
  ∀ n, (P5818423936229955452.a n : ℤ) = A071821 (n + 1)

end A071821

/-! ## A071821.P16653295841900443097

`eq[1, A324468(A006530(A233583(n+1)))]`
-/

namespace A071821.P16653295841900443097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324468 (A006530 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071821.P16653295841900443097

namespace A071821

/-- `eq[1, A324468(A006530(A233583(n+1)))]` -/
def P16653295841900443097.Spec : Prop :=
  ∀ n, (P16653295841900443097.a n : ℤ) = A071821 (n + 1)

end A071821

/-!
# A071822: Numbers whose largest prime factor is of the form 4k+3.

The programs for A071822, the canonical program `A071822.P2791233987195657750` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071822 has offset 1).

The definition of A071822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071822.P2791233987195657750

`lt[2, A006530(n+1)%4]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A071822

/-- `lt[2, A006530(n+1)%4]+1` -/
def P2791233987195657750.Spec : Prop :=
  ∀ n, (P2791233987195657750.a n : ℤ) = A071822 (n + 1)

theorem P2791233987195657750.correct : P2791233987195657750.Spec := by
  intro n
  simp only [A071822, Nat.add_sub_cancel]

end A071822

/-! ## A071822.P3556210061631116606

`eq[3, A006530(n+2)%4]+2`
-/

namespace A071822.P3556210061631116606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (n + 2)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A071822.P3556210061631116606

namespace A071822

/-- `eq[3, A006530(n+2)%4]+2` -/
def P3556210061631116606.Spec : Prop :=
  ∀ n, (P3556210061631116606.a n : ℤ) = A071822 (n + 1)

end A071822

/-! ## A071822.P17679066578341756686

`lt[1, val(A006530(2*(n+1))+1, 2)]+1`
-/

namespace A071822.P17679066578341756686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006530 (2 * (n + 1)) + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A071822.P17679066578341756686

namespace A071822

/-- `lt[1, val(A006530(2*(n+1))+1, 2)]+1` -/
def P17679066578341756686.Spec : Prop :=
  ∀ n, (P17679066578341756686.a n : ℤ) = A071822 (n + 1)

end A071822

/-! ## A071822.P2526194670413646135

`eq[1, A354029(A006530(n+1))]+1`
-/

namespace A071822.P2526194670413646135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354029 (A006530 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A071822.P2526194670413646135

namespace A071822

/-- `eq[1, A354029(A006530(n+1))]+1` -/
def P2526194670413646135.Spec : Prop :=
  ∀ n, (P2526194670413646135.a n : ℤ) = A071822 (n + 1)

end A071822

/-! ## A071822.P15904162090733909049

`lt[2, A006530(A022144(n))%4]`
-/

namespace A071822.P15904162090733909049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A022144 n).toNat) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A071822.P15904162090733909049

namespace A071822

/-- `lt[2, A006530(A022144(n))%4]` -/
def P15904162090733909049.Spec : Prop :=
  ∀ n, (P15904162090733909049.a n : ℤ) = A071822 (n + 1)

end A071822

/-! ## A071822.P2266614227634232265

`lt[2, A006530(A028310(n))%4]`
-/

namespace A071822.P2266614227634232265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A028310 n).toNat) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A071822.P2266614227634232265

namespace A071822

/-- `lt[2, A006530(A028310(n))%4]` -/
def P2266614227634232265.Spec : Prop :=
  ∀ n, (P2266614227634232265.a n : ℤ) = A071822 (n + 1)

end A071822

/-! ## A071822.P6432441711266872831

`eq[4, A006530(A008574(n))%4+1]`
-/

namespace A071822.P6432441711266872831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A008574 n).toNat) 4 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071822.P6432441711266872831

namespace A071822

/-- `eq[4, A006530(A008574(n))%4+1]` -/
def P6432441711266872831.Spec : Prop :=
  ∀ n, (P6432441711266872831.a n : ℤ) = A071822 (n + 1)

end A071822

/-! ## A071822.P13745920222524168105

`eq[1, A099379(A006530(n+2))]+2`
-/

namespace A071822.P13745920222524168105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099379 (A006530 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A071822.P13745920222524168105

namespace A071822

/-- `eq[1, A099379(A006530(n+2))]+2` -/
def P13745920222524168105.Spec : Prop :=
  ∀ n, (P13745920222524168105.a n : ℤ) = A071822 (n + 1)

end A071822

/-!
# A071823: Number of numbers x <= n with largest prime factor of the form 4k+3.

The programs for A071823, the canonical program `A071823.P9374140248912975097` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071823 has offset 1).

The definition of A071823 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071823.P5929659603846902978

`∑[char[A071822(n+1)-1]]`
-/

namespace A071823.P5929659603846902978
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071822 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071823.P5929659603846902978

namespace A071823

/-- `∑[char[A071822(n+1)-1]]` -/
def P5929659603846902978.Spec : Prop :=
  ∀ n, (P5929659603846902978.a n : ℤ) = A071823 (n + 1)

end A071823

/-! ## A071823.P9374140248912975097

`∑[4%(A006530(n+1)%4)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A071823

/-- `∑[4%(A006530(n+1)%4)]` -/
def P9374140248912975097.Spec : Prop :=
  ∀ n, P9374140248912975097.a n = A071823 (n + 1)

theorem P9374140248912975097.correct : P9374140248912975097.Spec := by
  intro n
  simp only [A071823, Nat.add_sub_cancel]

end A071823

/-! ## A071823.P15590590277775553083

`∑[A001842(A006530(n+1))]`
-/

namespace A071823.P15590590277775553083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071823.P15590590277775553083

namespace A071823

/-- `∑[A001842(A006530(n+1))]` -/
def P15590590277775553083.Spec : Prop :=
  ∀ n, P15590590277775553083.a n = A071823 (n + 1)

end A071823

/-! ## A071823.P4513577738856835508

`∑[A014707(A070777(n+1))]`
-/

namespace A071823.P4513577738856835508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (A070777 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071823.P4513577738856835508

namespace A071823

/-- `∑[A014707(A070777(n+1))]` -/
def P4513577738856835508.Spec : Prop :=
  ∀ n, P4513577738856835508.a n = A071823 (n + 1)

end A071823

/-! ## A071823.P714010890510447688

`∑[A005091(A006530(2*(n+1)))]`
-/

namespace A071823.P714010890510447688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005091 (A006530 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071823.P714010890510447688

namespace A071823

/-- `∑[A005091(A006530(2*(n+1)))]` -/
def P714010890510447688.Spec : Prop :=
  ∀ n, P714010890510447688.a n = A071823 (n + 1)

end A071823

/-! ## A071823.P14138049063903616866

`A071825(n+1)+A071824(n+1)`
-/

namespace A071823.P14138049063903616866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071825 (n + 1) + A071824 (n + 1)

end

end A071823.P14138049063903616866

namespace A071823

/-- `A071825(n+1)+A071824(n+1)` -/
def P14138049063903616866.Spec : Prop :=
  ∀ n, P14138049063903616866.a n = A071823 (n + 1)

end A071823

/-! ## A071823.P11597460506082293591

`∑[A023895(and(2, -A006530(n+1)))]`
-/

namespace A071823.P11597460506082293591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023895 (Int.land 2 (-A006530 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071823.P11597460506082293591

namespace A071823

/-- `∑[A023895(and(2, -A006530(n+1)))]` -/
def P11597460506082293591.Spec : Prop :=
  ∀ n, P11597460506082293591.a n = A071823 (n + 1)

end A071823

/-! ## A071823.P13320383950134967045

`∑[A005091(A006530(n+1)²)]`
-/

namespace A071823.P13320383950134967045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005091 (A006530 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071823.P13320383950134967045

namespace A071823

/-- `∑[A005091(A006530(n+1)²)]` -/
def P13320383950134967045.Spec : Prop :=
  ∀ n, P13320383950134967045.a n = A071823 (n + 1)

end A071823

/-! ## A071823.P5331269889521266600

`∑[A055029(A006530(n+1)²)]`
-/

namespace A071823.P5331269889521266600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055029 (A006530 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071823.P5331269889521266600

namespace A071823

/-- `∑[A055029(A006530(n+1)²)]` -/
def P5331269889521266600.Spec : Prop :=
  ∀ n, P5331269889521266600.a n = A071823 (n + 1)

end A071823

/-!
# A071824: Number of integers <= n whose largest prime factor is of the form 4*k+1.

The programs for A071824, the canonical program `A071824.P1848342865038717700` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071824 has offset 1).

The definition of A071824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071824.P8413972164350949320

`∑[char[A071821(n+1)-1]]`
-/

namespace A071824.P8413972164350949320
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071821 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071824.P8413972164350949320

namespace A071824

/-- `∑[char[A071821(n+1)-1]]` -/
def P8413972164350949320.Spec : Prop :=
  ∀ n, (P8413972164350949320.a n : ℤ) = A071824 (n + 1)

end A071824

/-! ## A071824.P1848342865038717700

`∑[A005089(A006530(n+1))]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A071824

/-- `∑[A005089(A006530(n+1))]` -/
def P1848342865038717700.Spec : Prop :=
  ∀ n, P1848342865038717700.a n = A071824 (n + 1)

theorem P1848342865038717700.correct : P1848342865038717700.Spec := by
  intro n
  simp only [A071824, Nat.add_sub_cancel]

end A071824

/-! ## A071824.P648055387850925535

`∑[A014707(A070777(n+1)+2)]`
-/

namespace A071824.P648055387850925535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (A070777 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071824.P648055387850925535

namespace A071824

/-- `∑[A014707(A070777(n+1)+2)]` -/
def P648055387850925535.Spec : Prop :=
  ∀ n, P648055387850925535.a n = A071824 (n + 1)

end A071824

/-! ## A071824.P14522281091634058186

`∑[A024362(A006530(2*(n+1)))]`
-/

namespace A071824.P14522281091634058186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024362 (A006530 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071824.P14522281091634058186

namespace A071824

/-- `∑[A024362(A006530(2*(n+1)))]` -/
def P14522281091634058186.Spec : Prop :=
  ∀ n, P14522281091634058186.a n = A071824 (n + 1)

end A071824

/-! ## A071824.P17331028487673421387

`∑[A157228(A006530(2*n+2))]`
-/

namespace A071824.P17331028487673421387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157228 (A006530 (2 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071824.P17331028487673421387

namespace A071824

/-- `∑[A157228(A006530(2*n+2))]` -/
def P17331028487673421387.Spec : Prop :=
  ∀ n, P17331028487673421387.a n = A071824 (n + 1)

end A071824

/-! ## A071824.P2761400599234277919

`A071823(n+1)-A071825(n+1)`
-/

namespace A071824.P2761400599234277919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071823 (n + 1) - A071825 (n + 1)

end

end A071824.P2761400599234277919

namespace A071824

/-- `A071823(n+1)-A071825(n+1)` -/
def P2761400599234277919.Spec : Prop :=
  ∀ n, P2761400599234277919.a n = A071824 (n + 1)

end A071824

/-! ## A071824.P7145091358037057178

`∑[A024362(A006530(n+1)²)]`
-/

namespace A071824.P7145091358037057178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024362 (A006530 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071824.P7145091358037057178

namespace A071824

/-- `∑[A024362(A006530(n+1)²)]` -/
def P7145091358037057178.Spec : Prop :=
  ∀ n, P7145091358037057178.a n = A071824 (n + 1)

end A071824

/-! ## A071824.P12501611672861326268

`∑[A157228(A006530(n+1)²)]`
-/

namespace A071824.P12501611672861326268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157228 (A006530 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071824.P12501611672861326268

namespace A071824

/-- `∑[A157228(A006530(n+1)²)]` -/
def P12501611672861326268.Spec : Prop :=
  ∀ n, P12501611672861326268.a n = A071824 (n + 1)

end A071824

/-!
# A071825: a(n) = (number of x with largest prime factor of the form 4k+3 less than or equal to n) minus (number of x with largest prime factor of the form 4k+1 less than or equal to n).

The programs for A071825, the canonical program `A071825.P2991501413565991606` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071825 has offset 1).

The definition of A071825 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071823, A071824, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071825.P2991501413565991606

`A071823(n+1)-A071824(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A071825

/-- `A071823(n+1)-A071824(n+1)` -/
def P2991501413565991606.Spec : Prop :=
  ∀ n, P2991501413565991606.a n = A071825 (n + 1)

theorem P2991501413565991606.correct : P2991501413565991606.Spec := by
  intro n
  simp only [A071825, Nat.add_sub_cancel]

end A071825

/-! ## A071825.P13819239061522697410

`∑[A006530(2*(n+1))%4]%(n+1)`
-/

namespace A071825.P13819239061522697410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (2 * (n + 1))) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A071825.P13819239061522697410

namespace A071825

/-- `∑[A006530(2*(n+1))%4]%(n+1)` -/
def P13819239061522697410.Spec : Prop :=
  ∀ n, P13819239061522697410.a n = A071825 (n + 1)

end A071825

/-! ## A071825.P3208509761619601723

`∑[A163805(A111089(n+1))]`
-/

namespace A071825.P3208509761619601723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (A111089 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071825.P3208509761619601723

namespace A071825

/-- `∑[A163805(A111089(n+1))]` -/
def P3208509761619601723.Spec : Prop :=
  ∀ n, P3208509761619601723.a n = A071825 (n + 1)

end A071825

/-! ## A071825.P8963767104789258415

`∑[-A005094(A006530(n+1))]`
-/

namespace A071825.P8963767104789258415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A005094 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071825.P8963767104789258415

namespace A071825

/-- `∑[-A005094(A006530(n+1))]` -/
def P8963767104789258415.Spec : Prop :=
  ∀ n, P8963767104789258415.a n = A071825 (n + 1)

end A071825

/-! ## A071825.P1470324332271609558

`∑[char[A071822(n+1)-1]]-A071824(n+1)`
-/

namespace A071825.P1470324332271609558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071822 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A071824 (n + 1)

end

end A071825.P1470324332271609558

namespace A071825

/-- `∑[char[A071822(n+1)-1]]-A071824(n+1)` -/
def P1470324332271609558.Spec : Prop :=
  ∀ n, P1470324332271609558.a n = A071825 (n + 1)

end A071825

/-! ## A071825.P17713940712030528516

`A071823(n+1)-∑[A014707(A070777(n+1)+2)]`
-/

namespace A071825.P17713940712030528516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (A070777 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071823 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071825.P17713940712030528516

namespace A071825

/-- `A071823(n+1)-∑[A014707(A070777(n+1)+2)]` -/
def P17713940712030528516.Spec : Prop :=
  ∀ n, P17713940712030528516.a n = A071825 (n + 1)

end A071825

/-! ## A071825.P9055427768936982037

`A071823(n+1)-∑[A024362(A006530(n+1)²)]`
-/

namespace A071825.P9055427768936982037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024362 (A006530 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071823 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071825.P9055427768936982037

namespace A071825

/-- `A071823(n+1)-∑[A024362(A006530(n+1)²)]` -/
def P9055427768936982037.Spec : Prop :=
  ∀ n, P9055427768936982037.a n = A071825 (n + 1)

end A071825

/-!
# A071828: Primes of the form Sum_{i=1..k} (-1)^(k-i)*i!.

The programs for A071828, there is no canonical definition to state claims against.
-/

/-! ## A071828.P5543732155797619844

`A005165(A001272(n+1))`
-/

namespace A071828.P5543732155797619844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005165 (A001272 (n + 1)).toNat

end

end A071828.P5543732155797619844

/-! ## A071828.P6838240409773805602

`record[A359808(n+3)]`
-/

namespace A071828.P6838240409773805602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359808 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071828.P6838240409773805602

/-! ## A071828.P16506912256856109700

`A359808(and(-1, A001272(n+1)))`
-/

namespace A071828.P16506912256856109700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359808 (Int.land (-1) (A001272 (n + 1))).toNat

end

end A071828.P16506912256856109700

/-! ## A071828.P9413781239230149903

`A359808(A001272(2*n+1-n))`
-/

namespace A071828.P9413781239230149903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359808 (A001272 (2 * n + 1 - n)).toNat

end

end A071828.P9413781239230149903

/-! ## A071828.P14296175464418421390

`A359808(A001272(n+1)%A001567(n+1))`
-/

namespace A071828.P14296175464418421390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359808 (Int.tmod (A001272 (n + 1)) (A001567 (n + 1))).toNat

end

end A071828.P14296175464418421390

/-!
# A071829: Smallest s > 0 such that Lpf(n) = Lpf(n+s) where Lpf(x) denotes the largest prime factor in x factorization.

The programs for A071829, there is no canonical definition to state claims against.
-/

/-! ## A071829.P5801070380597708685

`A071830(n+2)-(n+2)`
-/

namespace A071829.P5801070380597708685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071830 (n + 2) - (n + 2 : ℤ)

end

end A071829.P5801070380597708685

/-! ## A071829.P12682754701835720883

`A023444(A071830(n+2)-n)`
-/

namespace A071829.P12682754701835720883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A071830 (n + 2) - (n : ℤ)).toNat

end

end A071829.P12682754701835720883

/-! ## A071829.P3444764613197793215

`A289207(A071830(n+2)-n)`
-/

namespace A071829.P3444764613197793215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A071830 (n + 2) - (n : ℤ)).toNat

end

end A071829.P3444764613197793215

/-! ## A071829.P16888518020282283023

`A002260(A071830(n+2)+A000217(n+1))`
-/

namespace A071829.P16888518020282283023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A071830 (n + 2) + A000217 (n + 1)).toNat

end

end A071829.P16888518020282283023

/-! ## A071829.P6638097204631354675

`A134868(A071830(n+2)+∑[n+1])`
-/

namespace A071829.P6638097204631354675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (A071830 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A071829.P6638097204631354675

/-! ## A071829.P4528072710907424750

`A002262(A071830(n+2)+C(n+2, 2))`
-/

namespace A071829.P4528072710907424750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A071830 (n + 2) + (Nat.choose (n + 2) 2 : ℤ)).toNat

end

end A071829.P4528072710907424750

/-! ## A071829.P16783152336595912843

`A087789(n+2)-(n+2)`
-/

namespace A071829.P16783152336595912843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087789 (n + 2) - (n + 2 : ℤ)

end

end A071829.P16783152336595912843

/-!
# A071830: Smallest k > n such that Lpf(n) = Lpf(k) where Lpf(x) denotes the largest prime factor in x factorization.

The programs for A071830, there is no canonical definition to state claims against.
-/

/-! ## A071830.P17136185729396494802

`A071829(n+2)+n+2`
-/

namespace A071830.P17136185729396494802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071829 (n + 2) + (n + 2 : ℤ)

end

end A071830.P17136185729396494802

/-! ## A071830.P711366129751605037

`A009056(A071829(n+2))+n`
-/

namespace A071830.P711366129751605037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A071829 (n + 2)).toNat + (n : ℤ)

end

end A071830.P711366129751605037

/-! ## A071830.P18118401658328287394

`A171463(A071829(n+2)+n)`
-/

namespace A071830.P18118401658328287394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (A071829 (n + 2) + (n : ℤ)).toNat

end

end A071830.P18118401658328287394

/-! ## A071830.P77720821305262526

`A243427(A071829(n+2)+n)`
-/

namespace A071830.P77720821305262526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243427 (A071829 (n + 2) + (n : ℤ)).toNat

end

end A071830.P77720821305262526

/-! ## A071830.P16674515804505978864

`A087789(n+2)`
-/

namespace A071830.P16674515804505978864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087789 (n + 2)

end

end A071830.P16674515804505978864

/-!
# A071831: Frequency ratios for notes of C-major scale starting at c = 1 (numerators).

The programs for A071831, there is no canonical definition to state claims against.
-/

/-! ## A071831.P2153084829713789991

`A071832(n)/24*A071833(n)`
-/

namespace A071831.P2153084829713789991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071832 n : ℚ) / 24 * (A071833 n : ℚ)

end

end A071831.P2153084829713789991

/-! ## A071831.P16732248570544369126

`lcm(24, A071833(n))/24`
-/

namespace A071831.P16732248570544369126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 24 (A071833 n) : ℚ) / 24

end

end A071831.P16732248570544369126

/-! ## A071831.P10163488526585593151

`A051712(A071833(n)+1)`
-/

namespace A071831.P10163488526585593151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051712 (A071833 n + 1).toNat

end

end A071831.P10163488526585593151

/-! ## A071831.P1588903861460763037

`A250207(10*A071833(n))`
-/

namespace A071831.P1588903861460763037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250207 (10 * A071833 n).toNat

end

end A071831.P1588903861460763037

/-!
# A071832: Frequency ratios for notes of C-major scale starting at c = 1 (denominators).

The programs for A071832, there is no canonical definition to state claims against.
-/

/-! ## A071832.P12687922796886105309

`24/gcd(24, A071833(n))`
-/

namespace A071832.P12687922796886105309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  24 / (Int.gcd 24 (A071833 n) : ℚ)

end

end A071832.P12687922796886105309

/-!
# A071833: Frequency ratios for notes of C-major scale starting at c = 24 and using Ptolemy's intense diatonic scale.

The programs for A071833, there is no canonical definition to state claims against.
-/

/-! ## A071833.P18213511958609216039

`24*A071831(n)/A071832(n)`
-/

namespace A071833.P18213511958609216039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  24 * ((A071831 n : ℚ) / (A071832 n : ℚ))

end

end A071833.P18213511958609216039

/-! ## A071833.P6158297039470438847

`A291719(A023771(n+1)+15)`
-/

namespace A071833.P6158297039470438847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291719 (A023771 (n + 1) + 15).toNat

end

end A071833.P6158297039470438847

/-! ## A071833.P4266455073421860741

`A291719(A023770(n+1)+15)`
-/

namespace A071833.P4266455073421860741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291719 (A023770 (n + 1) + 15).toNat

end

end A071833.P4266455073421860741

/-! ## A071833.P4744450985611696164

`lt[A265569(n+1), A278510(A028310(n))]`
-/

namespace A071833.P4744450985611696164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278510 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A071833.P4744450985611696164

/-! ## A071833.P12884386324850958505

`lt[A029781(A126759(n)+1), A342495(n)]`
-/

namespace A071833.P12884386324850958505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029781 (A126759 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342495 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A071833.P12884386324850958505

/-!
# A071834: Numbers k > 1 such that k and sigma(k) have the same largest prime factor.

The programs for A071834, the canonical program `A071834.P10650818885645563854` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071834 has offset 1).

The definition of A071834 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071834.P10650818885645563854

`eq[A006530(A000203(n+2)), A006530(n+2)]+2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A071834

/-- `eq[A006530(A000203(n+2)), A006530(n+2)]+2` -/
def P10650818885645563854.Spec : Prop :=
  ∀ n, (P10650818885645563854.a n : ℤ) = A071834 (n + 1)

theorem P10650818885645563854.correct : P10650818885645563854.Spec := by
  intro n
  simp only [A071834, Nat.add_sub_cancel]

end A071834

/-! ## A071834.P16069228538249542342

`eq[A006530(n+2), A071190(n+2)]+2`
-/

namespace A071834.P16069228538249542342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071190 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A071834.P16069228538249542342

namespace A071834

/-- `eq[A006530(n+2), A071190(n+2)]+2` -/
def P16069228538249542342.Spec : Prop :=
  ∀ n, (P16069228538249542342.a n : ℤ) = A071834 (n + 1)

end A071834

/-! ## A071834.P318488630779120616

`A388275(n+2)+A294887(A085986(2*n+5))`
-/

namespace A071834.P318488630779120616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388275 (n + 2) + A294887 (A085986 (2 * n + 5)).toNat

end

end A071834.P318488630779120616

namespace A071834

/-- `A388275(n+2)+A294887(A085986(2*n+5))` -/
def P318488630779120616.Spec : Prop :=
  ∀ n, P318488630779120616.a n = A071834 (n + 1)

end A071834

/-! ## A071834.P7996396600566874771

`A388275(n+2)+A294887(A118679(3*n+4))`
-/

namespace A071834.P7996396600566874771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388275 (n + 2) + A294887 (A118679 (3 * n + 4)).toNat

end

end A071834.P7996396600566874771

namespace A071834

/-- `A388275(n+2)+A294887(A118679(3*n+4))` -/
def P7996396600566874771.Spec : Prop :=
  ∀ n, P7996396600566874771.a n = A071834 (n + 1)

end A071834

/-!
# A071835: Numbers k such that the largest prime factor of k is equal to floor(sqrt(k)).

The programs for A071835, the canonical program `A071835.P15681907629153140028` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071835 has offset 1).

The definition of A071835 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071835.P15681907629153140028

`∩[A048098(n+1), A079142(n)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A071835

/-- `∩[A048098(n+1), A079142(n)]` -/
def P15681907629153140028.Spec : Prop :=
  ∀ n, (P15681907629153140028.a n : ℤ) = A071835 (n + 1)

theorem P15681907629153140028.correct : P15681907629153140028.Spec := by
  intro n
  simp only [A071835, Nat.add_sub_cancel]

end A071835

/-! ## A071835.P3970894937272884050

`∩[A246716(n+1), A079142(n)]`
-/

namespace A071835.P3970894937272884050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079142 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071835.P3970894937272884050

namespace A071835

/-- `∩[A246716(n+1), A079142(n)]` -/
def P3970894937272884050.Spec : Prop :=
  ∀ n, (P3970894937272884050.a n : ℤ) = A071835 (n + 1)

end A071835

/-! ## A071835.P2846089776238186729

`∩[A289553(n+1), A079142(n)]`
-/

namespace A071835.P2846089776238186729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079142 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071835.P2846089776238186729

namespace A071835

/-- `∩[A289553(n+1), A079142(n)]` -/
def P2846089776238186729.Spec : Prop :=
  ∀ n, (P2846089776238186729.a n : ℤ) = A071835 (n + 1)

end A071835

/-! ## A071835.P12346216317968163583

`eq[A006530(2*(n+1)), A000196(n+1)]+1`
-/

namespace A071835.P12346216317968163583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071835.P12346216317968163583

namespace A071835

/-- `eq[A006530(2*(n+1)), A000196(n+1)]+1` -/
def P12346216317968163583.Spec : Prop :=
  ∀ n, (P12346216317968163583.a n : ℤ) = A071835 (n + 1)

end A071835

/-! ## A071835.P17567153763121295474

`eq[A000196(n), A006530(A004277(n))]`
-/

namespace A071835.P17567153763121295474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071835.P17567153763121295474

namespace A071835

/-- `eq[A000196(n), A006530(A004277(n))]` -/
def P17567153763121295474.Spec : Prop :=
  ∀ n, (P17567153763121295474.a n : ℤ) = A071835 (n + 1)

end A071835

/-! ## A071835.P16326541496356946355

`eq[A000196(n), A006530(A008574(n))]`
-/

namespace A071835.P16326541496356946355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071835.P16326541496356946355

namespace A071835

/-- `eq[A000196(n), A006530(A008574(n))]` -/
def P16326541496356946355.Spec : Prop :=
  ∀ n, (P16326541496356946355.a n : ℤ) = A071835 (n + 1)

end A071835

/-! ## A071835.P9347265309669655998

`eq[A000196(n), A006530(A022144(n))]`
-/

namespace A071835.P9347265309669655998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071835.P9347265309669655998

namespace A071835

/-- `eq[A000196(n), A006530(A022144(n))]` -/
def P9347265309669655998.Spec : Prop :=
  ∀ n, (P9347265309669655998.a n : ℤ) = A071835 (n + 1)

end A071835

/-! ## A071835.P15223099750827694325

`eq[A000196(n), A006530(A234275(n))]`
-/

namespace A071835.P15223099750827694325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A234275 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071835.P15223099750827694325

namespace A071835

/-- `eq[A000196(n), A006530(A234275(n))]` -/
def P15223099750827694325.Spec : Prop :=
  ∀ n, (P15223099750827694325.a n : ℤ) = A071835 (n + 1)

end A071835

/-! ## A071835.P6378499856995816370

`eq[A006530(A055456(n+1)), A000196(n)]`
-/

namespace A071835.P6378499856995816370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A055456 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071835.P6378499856995816370

namespace A071835

/-- `eq[A006530(A055456(n+1)), A000196(n)]` -/
def P6378499856995816370.Spec : Prop :=
  ∀ n, (P6378499856995816370.a n : ℤ) = A071835 (n + 1)

end A071835

/-!
# A071836: Numbers k such that the largest prime factor of k = prime(tau(k)).

The programs for A071836, the canonical program `A071836.P9927628474577651843` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071836 has offset 1).

The definition of A071836 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 182 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071836.P5747986578534210381

`eq[A000005(n+1), A061395(n+1)]+1`
-/

namespace A071836.P5747986578534210381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071836.P5747986578534210381

namespace A071836

/-- `eq[A000005(n+1), A061395(n+1)]+1` -/
def P5747986578534210381.Spec : Prop :=
  ∀ n, (P5747986578534210381.a n : ℤ) = A071836 (n + 1)

end A071836

/-! ## A071836.P6033929638760323552

`eq[A000040(A000005(n+1)), A006530(n+1)]+1`
-/

namespace A071836.P6033929638760323552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000005 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071836.P6033929638760323552

namespace A071836

/-- `eq[A000040(A000005(n+1)), A006530(n+1)]+1` -/
def P6033929638760323552.Spec : Prop :=
  ∀ n, (P6033929638760323552.a n : ℤ) = A071836 (n + 1)

end A071836

/-! ## A071836.P9927628474577651843

`eq[A033273(n+1), A079067(n+1)]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A071836

/-- `eq[A033273(n+1), A079067(n+1)]+1` -/
def P9927628474577651843.Spec : Prop :=
  ∀ n, (P9927628474577651843.a n : ℤ) = A071836 (n + 1)

theorem P9927628474577651843.correct : P9927628474577651843.Spec := by
  intro n
  simp only [A071836, Nat.add_sub_cancel]

end A071836

/-! ## A071836.P9760806226222470514

`eq[A000005(n+1), A263297(n+1)]+1`
-/

namespace A071836.P9760806226222470514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071836.P9760806226222470514

namespace A071836

/-- `eq[A000005(n+1), A263297(n+1)]+1` -/
def P9760806226222470514.Spec : Prop :=
  ∀ n, (P9760806226222470514.a n : ℤ) = A071836 (n + 1)

end A071836

/-! ## A071836.P907510616660169407

`A020725(eq[A033273(n+1), A079067(n+1)])`
-/

namespace A071836.P907510616660169407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A071836.P907510616660169407

namespace A071836

/-- `A020725(eq[A033273(n+1), A079067(n+1)])` -/
def P907510616660169407.Spec : Prop :=
  ∀ n, P907510616660169407.a n = A071836 (n + 1)

end A071836

/-! ## A071836.P348994263566474449

`eq[A000005(n+1), A065770(A088835(n+1))]+1`
-/

namespace A071836.P348994263566474449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (A088835 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071836.P348994263566474449

namespace A071836

/-- `eq[A000005(n+1), A065770(A088835(n+1))]+1` -/
def P348994263566474449.Spec : Prop :=
  ∀ n, (P348994263566474449.a n : ℤ) = A071836 (n + 1)

end A071836

/-!
# A071837: Numbers k with the property that in the prime factorization of k all prime exponents are prime, their sum is also prime and equals the sum of distinct prime factors of k.

The programs for A071837, there is no canonical definition to state claims against.
-/

/-! ## A071837.P8162397166862717263

`∩[A054411(n+1), A385288(n+1)]`
-/

namespace A071837.P8162397166862717263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071837.P8162397166862717263

/-! ## A071837.P18416000678823055606

`∩[A054412(n+1), A385288(n+1)]`
-/

namespace A071837.P18416000678823055606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071837.P18416000678823055606

/-! ## A071837.P8130980187053994483

`∩[A122406(n+1), A385288(n+1)]`
-/

namespace A071837.P8130980187053994483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071837.P8130980187053994483

/-! ## A071837.P18127800595264811333

`∩[A272818(n+1), A385288(n+1)]`
-/

namespace A071837.P18127800595264811333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071837.P18127800595264811333

/-! ## A071837.P4096180142273595194

`∩[A272859(n+1), A385288(n+1)]`
-/

namespace A071837.P4096180142273595194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071837.P4096180142273595194

/-!
# A071838: a(n) = Pi(8,3)(n) + Pi(8,5)(n) - Pi(8,1)(n) - Pi(8,7)(n) where Pi(a,b)(x) denotes the number of primes in the arithmetic progression a*k + b less than or equal to x.

The programs for A071838, the canonical program `A071838.P6957763637837304955` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071838 has offset 1).

The definition of A071838 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071838.P10930694307386514584

`∑[A188510(A118136(n)-2)]`
-/

namespace A071838.P10930694307386514584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (A118136 n - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071838.P10930694307386514584

namespace A071838

/-- `∑[A188510(A118136(n)-2)]` -/
def P10930694307386514584.Spec : Prop :=
  ∀ n, P10930694307386514584.a n = A071838 (n + 1)

end A071838

/-! ## A071838.P6957763637837304955

`A321861(A033270(n+1)+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A071838

/-- `A321861(A033270(n+1)+1)` -/
def P6957763637837304955.Spec : Prop :=
  ∀ n, P6957763637837304955.a n = A071838 (n + 1)

theorem P6957763637837304955.correct : P6957763637837304955.Spec := by
  intro n
  simp only [A071838, Nat.add_sub_cancel]

end A071838

/-! ## A071838.P2662588523879109886

`∑[A188510(A061397(n+1)+6)]`
-/

namespace A071838.P2662588523879109886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (A061397 (n + 1) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071838.P2662588523879109886

namespace A071838

/-- `∑[A188510(A061397(n+1)+6)]` -/
def P2662588523879109886.Spec : Prop :=
  ∀ n, P2662588523879109886.a n = A071838 (n + 1)

end A071838

/-! ## A071838.P9572509038825034455

`∑[A257170(A061397(n+1)+6)]`
-/

namespace A071838.P9572509038825034455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257170 (A061397 (n + 1) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071838.P9572509038825034455

namespace A071838

/-- `∑[A257170(A061397(n+1)+6)]` -/
def P9572509038825034455.Spec : Prop :=
  ∀ n, P9572509038825034455.a n = A071838 (n + 1)

end A071838

/-! ## A071838.P686100141469935926

`∑[A056594(n)*A112448(A004526(n))]`
-/

namespace A071838.P686100141469935926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A112448 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071838.P686100141469935926

namespace A071838

/-- `∑[A056594(n)*A112448(A004526(n))]` -/
def P686100141469935926.Spec : Prop :=
  ∀ n, P686100141469935926.a n = A071838 (n + 1)

end A071838

/-! ## A071838.P1496125134703509909

`A321861(A000720(n+1)+A000007(n))`
-/

namespace A071838.P1496125134703509909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321861 (A000720 (n + 1) + A000007 n).toNat

end

end A071838.P1496125134703509909

namespace A071838

/-- `A321861(A000720(n+1)+A000007(n))` -/
def P1496125134703509909.Spec : Prop :=
  ∀ n, P1496125134703509909.a n = A071838 (n + 1)

end A071838

/-! ## A071838.P1933212168803263907

`∑[A151763(n+1)*A228826(A106249(n))]`
-/

namespace A071838.P1933212168803263907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151763 (n + 1) * A228826 (A106249 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071838.P1933212168803263907

namespace A071838

/-- `∑[A151763(n+1)*A228826(A106249(n))]` -/
def P1933212168803263907.Spec : Prop :=
  ∀ n, P1933212168803263907.a n = A071838 (n + 1)

end A071838

/-! ## A071838.P12588050439431341476

`∑[A089003(A089026(n+1))-A089026(n+1)]`
-/

namespace A071838.P12588050439431341476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089003 (A089026 (n + 1)).toNat - A089026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071838.P12588050439431341476

namespace A071838

/-- `∑[A089003(A089026(n+1))-A089026(n+1)]` -/
def P12588050439431341476.Spec : Prop :=
  ∀ n, P12588050439431341476.a n = A071838 (n + 1)

end A071838

/-! ## A071838.P4401690592583690385

`∑[A089003(A135681(n+1))-A135681(n+1)]`
-/

namespace A071838.P4401690592583690385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089003 (A135681 (n + 1)).toNat - A135681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071838.P4401690592583690385

namespace A071838

/-- `∑[A089003(A135681(n+1))-A135681(n+1)]` -/
def P4401690592583690385.Spec : Prop :=
  ∀ n, P4401690592583690385.a n = A071838 (n + 1)

end A071838

/-! ## A071838.P13271373294499420999

`A329242(n+1)-(A320857(n+1)+A066520(n+1))`
-/

namespace A071838.P13271373294499420999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329242 (n + 1) - (A320857 (n + 1) + A066520 (n + 1))

end

end A071838.P13271373294499420999

namespace A071838

/-- `A329242(n+1)-(A320857(n+1)+A066520(n+1))` -/
def P13271373294499420999.Spec : Prop :=
  ∀ n, P13271373294499420999.a n = A071838 (n + 1)

end A071838

/-! ## A071838.P16476825949921683690

`∑[A010051(n+1)*A046978(n+7)]`
-/

namespace A071838.P16476825949921683690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A046978 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071838.P16476825949921683690

namespace A071838

/-- `∑[A010051(n+1)*A046978(n+7)]` -/
def P16476825949921683690.Spec : Prop :=
  ∀ n, P16476825949921683690.a n = A071838 (n + 1)

end A071838

/-! ## A071838.P3968605355650336558

`∑[A188510(A008615(A167298(n+1)))]`
-/

namespace A071838.P3968605355650336558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (A008615 (A167298 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071838.P3968605355650336558

namespace A071838

/-- `∑[A188510(A008615(A167298(n+1)))]` -/
def P3968605355650336558.Spec : Prop :=
  ∀ n, P3968605355650336558.a n = A071838 (n + 1)

end A071838

/-!
# A071839: Number of primes == 1 mod 8 <= n.

The programs for A071839, the canonical program `A071839.P2169769857197006636` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071839 has offset 1).

The definition of A071839 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071839.P6300216341705550665

`∑[char[p?[and(n, -7)]-1]]`
-/

namespace A071839.P6300216341705550665
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-7)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071839.P6300216341705550665

namespace A071839

/-- `∑[char[p?[and(n, -7)]-1]]` -/
def P6300216341705550665.Spec : Prop :=
  ∀ n, (P6300216341705550665.a n : ℤ) = A071839 (n + 1)

end A071839

/-! ## A071839.P8164523648546805549

`∑[char[p?[8*n+1]-1]]`
-/

namespace A071839.P8164523648546805549
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071839.P8164523648546805549

namespace A071839

/-- `∑[char[p?[8*n+1]-1]]` -/
def P8164523648546805549.Spec : Prop :=
  ∀ n, (P8164523648546805549.a n : ℤ) = A071839 (n + 1)

end A071839

/-! ## A071839.P2092668037542751372

`∑[char[xor(1, p?[8*n+1])]]`
-/

namespace A071839.P2092668037542751372
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071839.P2092668037542751372

namespace A071839

/-- `∑[char[xor(1, p?[8*n+1])]]` -/
def P2092668037542751372.Spec : Prop :=
  ∀ n, (P2092668037542751372.a n : ℤ) = A071839 (n + 1)

end A071839

/-! ## A071839.P2880365287605768976

`comp[p?[8*n+1]+n-1]-n`
-/

namespace A071839.P2880365287605768976
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) + ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A071839.P2880365287605768976

namespace A071839

/-- `comp[p?[8*n+1]+n-1]-n` -/
def P2880365287605768976.Spec : Prop :=
  ∀ n, P2880365287605768976.a n = A071839 (n + 1)

end A071839

/-! ## A071839.P13992006780709113709

`∑[char[A007519(n+1)-1]]`
-/

namespace A071839.P13992006780709113709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071839.P13992006780709113709

namespace A071839

/-- `∑[char[A007519(n+1)-1]]` -/
def P13992006780709113709.Spec : Prop :=
  ∀ n, (P13992006780709113709.a n : ℤ) = A071839 (n + 1)

end A071839

/-! ## A071839.P17089626334873080488

`∑[char[record[A020639(8*(n+2)+1)]-1]]`
-/

namespace A071839.P17089626334873080488
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (8 * (n + 2) + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071839.P17089626334873080488

namespace A071839

/-- `∑[char[record[A020639(8*(n+2)+1)]-1]]` -/
def P17089626334873080488.Spec : Prop :=
  ∀ n, (P17089626334873080488.a n : ℤ) = A071839 (n + 1)

end A071839

/-! ## A071839.P1590557682960840395

`∑[char[A000010(A007519(n+1))]]`
-/

namespace A071839.P1590557682960840395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007519 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071839.P1590557682960840395

namespace A071839

/-- `∑[char[A000010(A007519(n+1))]]` -/
def P1590557682960840395.Spec : Prop :=
  ∀ n, (P1590557682960840395.a n : ℤ) = A071839 (n + 1)

end A071839

/-! ## A071839.P2169769857197006636

`A066339(n+1)-A071841(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A071839

/-- `A066339(n+1)-A071841(n+1)` -/
def P2169769857197006636.Spec : Prop :=
  ∀ n, P2169769857197006636.a n = A071839 (n + 1)

theorem P2169769857197006636.correct : P2169769857197006636.Spec := by
  intro n
  simp only [A071839, Nat.add_sub_cancel]

end A071839

/-!
# A071840: Number of primes == 3 mod 8 <= n.

The programs for A071840, the canonical program `A071840.P11563596937102057521` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071840 has offset 1).

The definition of A071840 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071840.P15740927829583693359

`∑[char[p?[8*n+3]-1]]`
-/

namespace A071840.P15740927829583693359
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071840.P15740927829583693359

namespace A071840

/-- `∑[char[p?[8*n+3]-1]]` -/
def P15740927829583693359.Spec : Prop :=
  ∀ n, (P15740927829583693359.a n : ℤ) = A071840 (n + 1)

end A071840

/-! ## A071840.P3053711226040372014

`∑[char[xor(1, p?[8*n+3])]]`
-/

namespace A071840.P3053711226040372014
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071840.P3053711226040372014

namespace A071840

/-- `∑[char[xor(1, p?[8*n+3])]]` -/
def P3053711226040372014.Spec : Prop :=
  ∀ n, (P3053711226040372014.a n : ℤ) = A071840 (n + 1)

end A071840

/-! ## A071840.P1402469031167408799

`∑[char[and(p?[8*n+3], -2)]]`
-/

namespace A071840.P1402469031167408799
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) (-2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071840.P1402469031167408799

namespace A071840

/-- `∑[char[and(p?[8*n+3], -2)]]` -/
def P1402469031167408799.Spec : Prop :=
  ∀ n, (P1402469031167408799.a n : ℤ) = A071840 (n + 1)

end A071840

/-! ## A071840.P5788184073321753856

`∑[char[abs(1-p?[8*n-5])]]`
-/

namespace A071840.P5788184073321753856
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)|

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071840.P5788184073321753856

namespace A071840

/-- `∑[char[abs(1-p?[8*n-5])]]` -/
def P5788184073321753856.Spec : Prop :=
  ∀ n, (P5788184073321753856.a n : ℤ) = A071840 (n + 1)

end A071840

/-! ## A071840.P11563596937102057521

`∑[val(∑[n]%4+1, ∏{e}[2*(n+1), #+1])]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A071840

/-- `∑[val(∑[n]%4+1, ∏{e}[2*(n+1), #+1])]` -/
def P11563596937102057521.Spec : Prop :=
  ∀ n, (P11563596937102057521.a n : ℤ) = A071840 (n + 1)

theorem P11563596937102057521.correct : P11563596937102057521.Spec := by
  intro n
  simp only [A071840, Nat.add_sub_cancel]

end A071840

/-! ## A071840.P9796180457734215768

`∑[char[A007520(n+1)-1]]`
-/

namespace A071840.P9796180457734215768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071840.P9796180457734215768

namespace A071840

/-- `∑[char[A007520(n+1)-1]]` -/
def P9796180457734215768.Spec : Prop :=
  ∀ n, (P9796180457734215768.a n : ℤ) = A071840 (n + 1)

end A071840

/-! ## A071840.P11241578874545882522

`∑[char[record[A006530(8*n+3)]-1]]`
-/

namespace A071840.P11241578874545882522
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (8 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071840.P11241578874545882522

namespace A071840

/-- `∑[char[record[A006530(8*n+3)]-1]]` -/
def P11241578874545882522.Spec : Prop :=
  ∀ n, (P11241578874545882522.a n : ℤ) = A071840 (n + 1)

end A071840

/-! ## A071840.P17126092944950051479

`∑[char[record[A020639(8*n+3)]-1]]`
-/

namespace A071840.P17126092944950051479
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (8 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071840.P17126092944950051479

namespace A071840

/-- `∑[char[record[A020639(8*n+3)]-1]]` -/
def P17126092944950051479.Spec : Prop :=
  ∀ n, (P17126092944950051479.a n : ℤ) = A071840 (n + 1)

end A071840

/-! ## A071840.P12713753032664851367

`∑[char[A000010(record[∑{p}[8*n+3, #]])]]`
-/

namespace A071840.P12713753032664851367
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), p

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071840.P12713753032664851367

namespace A071840

/-- `∑[char[A000010(record[∑{p}[8*n+3, #]])]]` -/
def P12713753032664851367.Spec : Prop :=
  ∀ n, (P12713753032664851367.a n : ℤ) = A071840 (n + 1)

end A071840

/-! ## A071840.P16562866876161303563

`∑[val(A000203(n+1)+1, or(6, n)-1)]`
-/

namespace A071840.P16562866876161303563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000203 (n + 1) + 1).toNat ((Nat.lor 6 n : ℤ) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071840.P16562866876161303563

namespace A071840

/-- `∑[val(A000203(n+1)+1, or(6, n)-1)]` -/
def P16562866876161303563.Spec : Prop :=
  ∀ n, (P16562866876161303563.a n : ℤ) = A071840 (n + 1)

end A071840

/-! ## A071840.P16344855782328236170

`∑[val(A006530(2*(n+1)), or(6, n)-3)]`
-/

namespace A071840.P16344855782328236170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006530 (2 * (n + 1))).toNat ((Nat.lor 6 n : ℤ) - 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071840.P16344855782328236170

namespace A071840

/-- `∑[val(A006530(2*(n+1)), or(6, n)-3)]` -/
def P16344855782328236170.Spec : Prop :=
  ∀ n, (P16344855782328236170.a n : ℤ) = A071840 (n + 1)

end A071840

/-! ## A071840.P10797857724066881788

`∑[char[A000010(or(2, p?[8*n-5]-2))]]`
-/

namespace A071840.P10797857724066881788
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.lor 2 (f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) - 2)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071840.P10797857724066881788

namespace A071840

/-- `∑[char[A000010(or(2, p?[8*n-5]-2))]]` -/
def P10797857724066881788.Spec : Prop :=
  ∀ n, (P10797857724066881788.a n : ℤ) = A071840 (n + 1)

end A071840

/-! ## A071840.P5395190698117261098

`∑[char[A000010(xor(2, p?[8*n-5]-2))]]`
-/

namespace A071840.P5395190698117261098
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.xor 2 (f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) - 2)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071840.P5395190698117261098

namespace A071840

/-- `∑[char[A000010(xor(2, p?[8*n-5]-2))]]` -/
def P5395190698117261098.Spec : Prop :=
  ∀ n, (P5395190698117261098.a n : ℤ) = A071840 (n + 1)

end A071840

/-! ## A071840.P2226288389500136472

`∑[char[A000010(A007520(n+1))]]`
-/

namespace A071840.P2226288389500136472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007520 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071840.P2226288389500136472

namespace A071840

/-- `∑[char[A000010(A007520(n+1))]]` -/
def P2226288389500136472.Spec : Prop :=
  ∀ n, (P2226288389500136472.a n : ℤ) = A071840 (n + 1)

end A071840

/-! ## A071840.P12230925284802236182

`∑[char[A000010(A045339(n+2))]]`
-/

namespace A071840.P12230925284802236182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A045339 (n + 2)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071840.P12230925284802236182

namespace A071840

/-- `∑[char[A000010(A045339(n+2))]]` -/
def P12230925284802236182.Spec : Prop :=
  ∀ n, (P12230925284802236182.a n : ℤ) = A071840 (n + 1)

end A071840

/-! ## A071840.P326710975218391039

`A066490(n+1)-A071842(n+1)`
-/

namespace A071840.P326710975218391039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066490 (n + 1) - A071842 (n + 1)

end

end A071840.P326710975218391039

namespace A071840

/-- `A066490(n+1)-A071842(n+1)` -/
def P326710975218391039.Spec : Prop :=
  ∀ n, P326710975218391039.a n = A071840 (n + 1)

end A071840

/-! ## A071840.P13748370190474009729

`∑[val(A052552(n), or(3, n))]`
-/

namespace A071840.P13748370190474009729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A052552 n).toNat (Nat.lor 3 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071840.P13748370190474009729

namespace A071840

/-- `∑[val(A052552(n), or(3, n))]` -/
def P13748370190474009729.Spec : Prop :=
  ∀ n, (P13748370190474009729.a n : ℤ) = A071840 (n + 1)

end A071840

/-!
# A071841: Number of primes == 5 mod 8 <= n.

The programs for A071841, the canonical program `A071841.P5344048982208262916` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071841 has offset 1).

The definition of A071841 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071841.P10074765086573221055

`∑[char[p?[8*n-3]-1]]`
-/

namespace A071841.P10074765086573221055
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071841.P10074765086573221055

namespace A071841

/-- `∑[char[p?[8*n-3]-1]]` -/
def P10074765086573221055.Spec : Prop :=
  ∀ n, (P10074765086573221055.a n : ℤ) = A071841 (n + 1)

end A071841

/-! ## A071841.P5344048982208262916

`∑[val(∏{p}[n+1, #+1], or(6, n))]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A071841

/-- `∑[val(∏{p}[n+1, #+1], or(6, n))]` -/
def P5344048982208262916.Spec : Prop :=
  ∀ n, (P5344048982208262916.a n : ℤ) = A071841 (n + 1)

theorem P5344048982208262916.correct : P5344048982208262916.Spec := by
  intro n
  simp only [A071841, Nat.add_sub_cancel]

end A071841

/-! ## A071841.P4710782143665561487

`comp[p?[8*n-3]-1+n]-n`
-/

namespace A071841.P4710782143665561487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A071841.P4710782143665561487

namespace A071841

/-- `comp[p?[8*n-3]-1+n]-n` -/
def P4710782143665561487.Spec : Prop :=
  ∀ n, P4710782143665561487.a n = A071841 (n + 1)

end A071841

/-! ## A071841.P8361600734173342176

`∑[val(∑{d}[n+1, #*#%2], or(6, n))]`
-/

namespace A071841.P8361600734173342176
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ d ∈ Nat.divisors (f2 n), d * (d % 2)) (Nat.lor 6 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071841.P8361600734173342176

namespace A071841

/-- `∑[val(∑{d}[n+1, #*#%2], or(6, n))]` -/
def P8361600734173342176.Spec : Prop :=
  ∀ n, (P8361600734173342176.a n : ℤ) = A071841 (n + 1)

end A071841

/-! ## A071841.P4588555628232909176

`∑[C(∑[(4-n%8)%2], ∏{e}[n+1, #+1])]`
-/

namespace A071841.P4588555628232909176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 - ((n % 8 : ℕ) : ℤ)) 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j).toNat (∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071841.P4588555628232909176

namespace A071841

/-- `∑[C(∑[(4-n%8)%2], ∏{e}[n+1, #+1])]` -/
def P4588555628232909176.Spec : Prop :=
  ∀ n, (P4588555628232909176.a n : ℤ) = A071841 (n + 1)

end A071841

/-! ## A071841.P13050285838053412370

`∑[C(gcd(4, n/gcd(2, n))%4, ∑{e}[n+1, #]+1)]`
-/

namespace A071841.P13050285838053412370
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.gcd 4 (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.gcd 2 n : ℚ))) % 4) (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071841.P13050285838053412370

namespace A071841

/-- `∑[C(gcd(4, n/gcd(2, n))%4, ∑{e}[n+1, #]+1)]` -/
def P13050285838053412370.Spec : Prop :=
  ∀ n, (P13050285838053412370.a n : ℤ) = A071841 (n + 1)

end A071841

/-! ## A071841.P4164007466571496517

`∑[char[A007521(n+1)-1]]`
-/

namespace A071841.P4164007466571496517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007521 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071841.P4164007466571496517

namespace A071841

/-- `∑[char[A007521(n+1)-1]]` -/
def P4164007466571496517.Spec : Prop :=
  ∀ n, (P4164007466571496517.a n : ℤ) = A071841 (n + 1)

end A071841

/-! ## A071841.P17015943323535153234

`∑[char[A002322(p?[8*n-3])]]`
-/

namespace A071841.P17015943323535153234
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071841.P17015943323535153234

namespace A071841

/-- `∑[char[A002322(p?[8*n-3])]]` -/
def P17015943323535153234.Spec : Prop :=
  ∀ n, (P17015943323535153234.a n : ℤ) = A071841 (n + 1)

end A071841

/-! ## A071841.P5112932844351200071

`∑[char[A003958(p?[8*n-3])]]`
-/

namespace A071841.P5112932844351200071
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071841.P5112932844351200071

namespace A071841

/-- `∑[char[A003958(p?[8*n-3])]]` -/
def P5112932844351200071.Spec : Prop :=
  ∀ n, (P5112932844351200071.a n : ℤ) = A071841 (n + 1)

end A071841

/-! ## A071841.P14468531536680627905

`∑[val(A000203(n+1)+1, or(7, n))]`
-/

namespace A071841.P14468531536680627905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000203 (n + 1) + 1).toNat (Nat.lor 7 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071841.P14468531536680627905

namespace A071841

/-- `∑[val(A000203(n+1)+1, or(7, n))]` -/
def P14468531536680627905.Spec : Prop :=
  ∀ n, (P14468531536680627905.a n : ℤ) = A071841 (n + 1)

end A071841

/-! ## A071841.P9117793119020886111

`∑[val(A006530(n+1), or(6, n)-1)]`
-/

namespace A071841.P9117793119020886111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006530 (n + 1)).toNat ((Nat.lor 6 n : ℤ) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071841.P9117793119020886111

namespace A071841

/-- `∑[val(A006530(n+1), or(6, n)-1)]` -/
def P9117793119020886111.Spec : Prop :=
  ∀ n, (P9117793119020886111.a n : ℤ) = A071841 (n + 1)

end A071841

/-! ## A071841.P14300905647838695614

`∑[val(A020639(n+1), or(6, n)-1)]`
-/

namespace A071841.P14300905647838695614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 (n + 1)).toNat ((Nat.lor 6 n : ℤ) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071841.P14300905647838695614

namespace A071841

/-- `∑[val(A020639(n+1), or(6, n)-1)]` -/
def P14300905647838695614.Spec : Prop :=
  ∀ n, (P14300905647838695614.a n : ℤ) = A071841 (n + 1)

end A071841

/-! ## A071841.P13273883962791118315

`∑[char[record[A006530(8*n+5)]-1]]`
-/

namespace A071841.P13273883962791118315
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (8 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071841.P13273883962791118315

namespace A071841

/-- `∑[char[record[A006530(8*n+5)]-1]]` -/
def P13273883962791118315.Spec : Prop :=
  ∀ n, (P13273883962791118315.a n : ℤ) = A071841 (n + 1)

end A071841

/-! ## A071841.P8960511259595589326

`∑[char[A000010(A007521(n+1))]]`
-/

namespace A071841.P8960511259595589326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007521 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071841.P8960511259595589326

namespace A071841

/-- `∑[char[A000010(A007521(n+1))]]` -/
def P8960511259595589326.Spec : Prop :=
  ∀ n, (P8960511259595589326.a n : ℤ) = A071841 (n + 1)

end A071841

/-! ## A071841.P6596138842252898632

`A066339(n+1)-A071839(n+1)`
-/

namespace A071841.P6596138842252898632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (n + 1) - A071839 (n + 1)

end

end A071841.P6596138842252898632

namespace A071841

/-- `A066339(n+1)-A071839(n+1)` -/
def P6596138842252898632.Spec : Prop :=
  ∀ n, P6596138842252898632.a n = A071841 (n + 1)

end A071841

/-!
# A071842: Number of primes == 7 mod 8 <= n.

The programs for A071842, the canonical program `A071842.P1944336963424224253` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071842 has offset 1).

The definition of A071842 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071842.P15066793625886797454

`∑[char[p?[or(6, n)]-1]]`
-/

namespace A071842.P15066793625886797454
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 6 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071842.P15066793625886797454

namespace A071842

/-- `∑[char[p?[or(6, n)]-1]]` -/
def P15066793625886797454.Spec : Prop :=
  ∀ n, (P15066793625886797454.a n : ℤ) = A071842 (n + 1)

end A071842

/-! ## A071842.P16076838359796843867

`∑[char[p?[8*n-1]-1]]`
-/

namespace A071842.P16076838359796843867
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071842.P16076838359796843867

namespace A071842

/-- `∑[char[p?[8*n-1]-1]]` -/
def P16076838359796843867.Spec : Prop :=
  ∀ n, (P16076838359796843867.a n : ℤ) = A071842 (n + 1)

end A071842

/-! ## A071842.P1944336963424224253

`∑[and(∑{e}[n+1, #]!%2, C(n, 6))]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A071842

/-- `∑[and(∑{e}[n+1, #]!%2, C(n, 6))]` -/
def P1944336963424224253.Spec : Prop :=
  ∀ n, (P1944336963424224253.a n : ℤ) = A071842 (n + 1)

theorem P1944336963424224253.correct : P1944336963424224253.Spec := by
  intro n
  simp only [A071842, Nat.add_sub_cancel]

end A071842

/-! ## A071842.P10826880718843132480

`∑[char[A186304(n+1)+1]]`
-/

namespace A071842.P10826880718843132480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186304 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071842.P10826880718843132480

namespace A071842

/-- `∑[char[A186304(n+1)+1]]` -/
def P10826880718843132480.Spec : Prop :=
  ∀ n, (P10826880718843132480.a n : ℤ) = A071842 (n + 1)

end A071842

/-! ## A071842.P3124683250203260142

`∑[char[A007522(n+1)-1]]`
-/

namespace A071842.P3124683250203260142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071842.P3124683250203260142

namespace A071842

/-- `∑[char[A007522(n+1)-1]]` -/
def P3124683250203260142.Spec : Prop :=
  ∀ n, (P3124683250203260142.a n : ℤ) = A071842 (n + 1)

end A071842

/-! ## A071842.P16358323321373024517

`∑[char[2*A186302(n+1)]]`
-/

namespace A071842.P16358323321373024517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A186302 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071842.P16358323321373024517

namespace A071842

/-- `∑[char[2*A186302(n+1)]]` -/
def P16358323321373024517.Spec : Prop :=
  ∀ n, (P16358323321373024517.a n : ℤ) = A071842 (n + 1)

end A071842

/-! ## A071842.P12807767894234689672

`∑[val(A000010(n+1), or(6, n))]`
-/

namespace A071842.P12807767894234689672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000010 (n + 1)).toNat (Nat.lor 6 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071842.P12807767894234689672

namespace A071842

/-- `∑[val(A000010(n+1), or(6, n))]` -/
def P12807767894234689672.Spec : Prop :=
  ∀ n, (P12807767894234689672.a n : ℤ) = A071842 (n + 1)

end A071842

/-! ## A071842.P2341166182988270991

`∑[val(A006530(n+1), or(7, n))]`
-/

namespace A071842.P2341166182988270991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006530 (n + 1)).toNat (Nat.lor 7 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071842.P2341166182988270991

namespace A071842

/-- `∑[val(A006530(n+1), or(7, n))]` -/
def P2341166182988270991.Spec : Prop :=
  ∀ n, (P2341166182988270991.a n : ℤ) = A071842 (n + 1)

end A071842

/-! ## A071842.P4218805186552033660

`∑[val(A014963(n+1), or(7, n))]`
-/

namespace A071842.P4218805186552033660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A014963 (n + 1)).toNat (Nat.lor 7 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071842.P4218805186552033660

namespace A071842

/-- `∑[val(A014963(n+1), or(7, n))]` -/
def P4218805186552033660.Spec : Prop :=
  ∀ n, (P4218805186552033660.a n : ℤ) = A071842 (n + 1)

end A071842

/-! ## A071842.P13279590792411493911

`∑[val(A020639(n+1), or(7, n))]`
-/

namespace A071842.P13279590792411493911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 (n + 1)).toNat (Nat.lor 7 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071842.P13279590792411493911

namespace A071842

/-- `∑[val(A020639(n+1), or(7, n))]` -/
def P13279590792411493911.Spec : Prop :=
  ∀ n, (P13279590792411493911.a n : ℤ) = A071842 (n + 1)

end A071842

/-! ## A071842.P5062033739215420984

`∑[char[A000010(A007522(n+1))]]`
-/

namespace A071842.P5062033739215420984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007522 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071842.P5062033739215420984

namespace A071842

/-- `∑[char[A000010(A007522(n+1))]]` -/
def P5062033739215420984.Spec : Prop :=
  ∀ n, (P5062033739215420984.a n : ℤ) = A071842 (n + 1)

end A071842

/-! ## A071842.P183269275935353758

`A066490(n+1)-A071840(n+1)`
-/

namespace A071842.P183269275935353758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066490 (n + 1) - A071840 (n + 1)

end

end A071842.P183269275935353758

namespace A071842

/-- `A066490(n+1)-A071840(n+1)` -/
def P183269275935353758.Spec : Prop :=
  ∀ n, P183269275935353758.a n = A071842 (n + 1)

end A071842

/-! ## A071842.P14592251907039572226

`∑[char[A014963(A130824(2*(n+1))+1)-1]]-1`
-/

namespace A071842.P14592251907039572226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A130824 (2 * (n + 1)) + 1).toNat - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A071842.P14592251907039572226

namespace A071842

/-- `∑[char[A014963(A130824(2*(n+1))+1)-1]]-1` -/
def P14592251907039572226.Spec : Prop :=
  ∀ n, P14592251907039572226.a n = A071842 (n + 1)

end A071842

/-! ## A071842.P15393041148299724283

`∑[C(C(2, A049247(n+1)), 2)]`
-/

namespace A071842.P15393041148299724283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A049247 (n + 1)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071842.P15393041148299724283

namespace A071842

/-- `∑[C(C(2, A049247(n+1)), 2)]` -/
def P15393041148299724283.Spec : Prop :=
  ∀ n, (P15393041148299724283.a n : ℤ) = A071842 (n + 1)

end A071842

/-!
# A071845: Primes p such that the number of ones in the binary representation of p^p is prime.

The programs for A071845, there is no canonical definition to state claims against.
-/

/-! ## A071845.P12283039574207248934

`p?[n*A001222(A214561(n))]`
-/

namespace A071845.P12283039574207248934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (A214561 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071845.P12283039574207248934

/-! ## A071845.P10607801350065129077

`p?[record[A036234(A337254(n+1))]]`
-/

namespace A071845.P10607801350065129077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A337254 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071845.P10607801350065129077

/-! ## A071845.P9798471798632071492

`p?[lt[A176013(n+5), A145369(n+1)]]`
-/

namespace A071845.P9798471798632071492
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176013 (n + 5)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145369 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A071845.P9798471798632071492

/-! ## A071845.P15993251475456295109

`p?[A161539(2*A161539(n+1))]`
-/

namespace A071845.P15993251475456295109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161539 (2 * A161539 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071845.P15993251475456295109

/-!
# A071849: Numbers k such that A245788(k) > prime(k).

The programs for A071849, the canonical program `A071849.P6031364836765928747` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071849 has offset 1).

The definition of A071849 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 371 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071849.P12762275089694247229

`lt[A008578(n+1), n*A000120(n)]`
-/

namespace A071849.P12762275089694247229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A071849.P12762275089694247229

namespace A071849

/-- `lt[A008578(n+1), n*A000120(n)]` -/
def P12762275089694247229.Spec : Prop :=
  ∀ n, (P12762275089694247229.a n : ℤ) = A071849 (n + 1)

end A071849

/-! ## A071849.P6031364836765928747

`lt[A038605(n+1), A000120(n+1)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071849

/-- `lt[A038605(n+1), A000120(n+1)]+1` -/
def P6031364836765928747.Spec : Prop :=
  ∀ n, (P6031364836765928747.a n : ℤ) = A071849 (n + 1)

theorem P6031364836765928747.correct : P6031364836765928747.Spec := by
  intro n
  simp only [A071849, Nat.add_sub_cancel]

end A071849

/-! ## A071849.P7758777809889412539

`lt[A000040(n+1)/A000120(n+1), n+1]+1`
-/

namespace A071849.P7758777809889412539
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / (A000120 (n + 1) : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A071849.P7758777809889412539

namespace A071849

/-- `lt[A000040(n+1)/A000120(n+1), n+1]+1` -/
def P7758777809889412539.Spec : Prop :=
  ∀ n, (P7758777809889412539.a n : ℤ) = A071849 (n + 1)

end A071849

/-! ## A071849.P3714664103504047655

`lt[A006005(A028310(n)), A245788(n)]`
-/

namespace A071849.P3714664103504047655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245788 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A071849.P3714664103504047655

namespace A071849

/-- `lt[A006005(A028310(n)), A245788(n)]` -/
def P3714664103504047655.Spec : Prop :=
  ∀ n, (P3714664103504047655.a n : ℤ) = A071849 (n + 1)

end A071849

/-! ## A071849.P8390271816770484491

`lt[A038605(A233583(n+1)), A000120(n)]`
-/

namespace A071849.P8390271816770484491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A071849.P8390271816770484491

namespace A071849

/-- `lt[A038605(A233583(n+1)), A000120(n)]` -/
def P8390271816770484491.Spec : Prop :=
  ∀ n, (P8390271816770484491.a n : ℤ) = A071849 (n + 1)

end A071849

/-! ## A071849.P13532286164515473224

`lt[A008578(n+1)/A233583(n+1), A000120(n)]`
-/

namespace A071849.P13532286164515473224
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008578 (n + 1) : ℚ) / (A233583 (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A071849.P13532286164515473224

namespace A071849

/-- `lt[A008578(n+1)/A233583(n+1), A000120(n)]` -/
def P13532286164515473224.Spec : Prop :=
  ∀ n, (P13532286164515473224.a n : ℤ) = A071849 (n + 1)

end A071849

/-!
# A071850: Smallest k > n such that n divides prime(k) - prime(n).

The programs for A071850, there is no canonical definition to state claims against.
-/

/-! ## A071850.P152398489835525625

`A000720(A072063(n+1))`
-/

namespace A071850.P152398489835525625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A072063 (n + 1)).toNat

end

end A071850.P152398489835525625

/-! ## A071850.P14092913806849881516

`A061395(p?[A072063(n+1)])`
-/

namespace A071850.P14092913806849881516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A071850.P14092913806849881516

/-! ## A071850.P7443973810240178116

`A061395(2*A072063(n+1))`
-/

namespace A071850.P7443973810240178116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A072063 (n + 1)).toNat

end

end A071850.P7443973810240178116

/-! ## A071850.P7347535284229378851

`A058933(p?[A072063(n+1)])`
-/

namespace A071850.P7347535284229378851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A071850.P7347535284229378851

/-! ## A071850.P10624956189396659101

`A263297(or(1, A072063(n+1)))`
-/

namespace A071850.P10624956189396659101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (Int.lor 1 (A072063 (n + 1))).toNat

end

end A071850.P10624956189396659101

/-! ## A071850.P11863211593611444002

`A003963(p?[A072063(n+1)])`
-/

namespace A071850.P11863211593611444002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A071850.P11863211593611444002

/-! ## A071850.P4408171005486979484

`A026233(p?[A072063(n+1)])`
-/

namespace A071850.P4408171005486979484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A071850.P4408171005486979484

/-! ## A071850.P3781747161580376570

`A026238(p?[A072063(n+1)])`
-/

namespace A071850.P3781747161580376570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A071850.P3781747161580376570

/-! ## A071850.P9671368367762584406

`A049084(p?[A072063(n+1)])`
-/

namespace A071850.P9671368367762584406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A071850.P9671368367762584406

/-! ## A071850.P18117196467472805255

`A055396(p?[A072063(n+1)])`
-/

namespace A071850.P18117196467472805255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A071850.P18117196467472805255

/-! ## A071850.P9900411322343957774

`A056239(p?[A072063(n+1)])`
-/

namespace A071850.P9900411322343957774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A071850.P9900411322343957774

/-! ## A071850.P8895907806530494555

`A391765(A072063(n+1)-1)`
-/

namespace A071850.P8895907806530494555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391765 (A072063 (n + 1) - 1).toNat

end

end A071850.P8895907806530494555

/-! ## A071850.P1874552537382930103

`A263297(2*A072063(n+1))`
-/

namespace A071850.P1874552537382930103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (2 * A072063 (n + 1)).toNat

end

end A071850.P1874552537382930103

/-! ## A071850.P11067175708457847582

`A056239(or(1, A072063(n+1)))`
-/

namespace A071850.P11067175708457847582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.lor 1 (A072063 (n + 1))).toNat

end

end A071850.P11067175708457847582

/-!
# A071853: Numbers n such that for any x, C(2x,x) never has n distinct prime factors.

The programs for A071853, there is no canonical definition to state claims against.
-/

/-! ## A071853.P239913038271996889

`eq[0, A213609(n+1)]+1`
-/

namespace A071853.P239913038271996889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213609 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A071853.P239913038271996889

/-! ## A071853.P12052824677260077371

`eq[0, A213609(A028310(n))]`
-/

namespace A071853.P12052824677260077371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213609 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071853.P12052824677260077371

/-! ## A071853.P4385507445138862823

`A020725(eq[0, A213609(n+1)])`
-/

namespace A071853.P4385507445138862823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A071853.P4385507445138862823

/-! ## A071853.P2488238791794491006

`A065475(eq[0, A213609(n+1)])`
-/

namespace A071853.P2488238791794491006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A071853.P2488238791794491006

/-! ## A071853.P14080282588550870228

`eq[0, A213609(A233583(n+1))]`
-/

namespace A071853.P14080282588550870228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213609 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071853.P14080282588550870228

/-!
# A071854: a(n) = (number of distinct prime factors in C(2n,n)) - pi(n).

The programs for A071854, the canonical program `A071854.P11151984717235714317` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071854 has offset 1).

The definition of A071854 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A067434, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071854.P11151984717235714317

`A067434(n+1)-A000720(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A071854

/-- `A067434(n+1)-A000720(n+1)` -/
def P11151984717235714317.Spec : Prop :=
  ∀ n, P11151984717235714317.a n = A071854 (n + 1)

theorem P11151984717235714317.correct : P11151984717235714317.Spec := by
  intro n
  simp only [A071854, Nat.add_sub_cancel]

end A071854

/-! ## A071854.P12512961116351672863

`A193990(n+1)-A060208(n+1)`
-/

namespace A071854.P12512961116351672863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193990 (n + 1) - A060208 (n + 1)

end

end A071854.P12512961116351672863

namespace A071854

/-- `A193990(n+1)-A060208(n+1)` -/
def P12512961116351672863.Spec : Prop :=
  ∀ n, P12512961116351672863.a n = A071854 (n + 1)

end A071854

/-! ## A071854.P16374057966684518315

`A067434(n+1)-A230980(n+1)`
-/

namespace A071854.P16374057966684518315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (n + 1) - A230980 (n + 1)

end

end A071854.P16374057966684518315

namespace A071854

/-- `A067434(n+1)-A230980(n+1)` -/
def P16374057966684518315.Spec : Prop :=
  ∀ n, P16374057966684518315.a n = A071854 (n + 1)

end A071854

/-! ## A071854.P9277963014665439930

`A067434(n+1)-∑[A010051(n+1)]`
-/

namespace A071854.P9277963014665439930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071854.P9277963014665439930

namespace A071854

/-- `A067434(n+1)-∑[A010051(n+1)]` -/
def P9277963014665439930.Spec : Prop :=
  ∀ n, P9277963014665439930.a n = A071854 (n + 1)

end A071854

/-! ## A071854.P8585798105949821304

`A034973(2*(n+1))-A000720(n+1)`
-/

namespace A071854.P8585798105949821304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (2 * (n + 1)) - A000720 (n + 1)

end

end A071854.P8585798105949821304

namespace A071854

/-- `A034973(2*(n+1))-A000720(n+1)` -/
def P8585798105949821304.Spec : Prop :=
  ∀ n, P8585798105949821304.a n = A071854 (n + 1)

end A071854

/-! ## A071854.P10349970918438680732

`A034973(2*(n+1))-A230980(n+1)`
-/

namespace A071854.P10349970918438680732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (2 * (n + 1)) - A230980 (n + 1)

end

end A071854.P10349970918438680732

namespace A071854

/-- `A034973(2*(n+1))-A230980(n+1)` -/
def P10349970918438680732.Spec : Prop :=
  ∀ n, P10349970918438680732.a n = A071854 (n + 1)

end A071854

/-! ## A071854.P884012417088171904

`A067434(n+1)-(A036541(n+1)+A034973(n+1))`
-/

namespace A071854.P884012417088171904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (n + 1) - (A036541 (n + 1) + A034973 (n + 1))

end

end A071854.P884012417088171904

namespace A071854

/-- `A067434(n+1)-(A036541(n+1)+A034973(n+1))` -/
def P884012417088171904.Spec : Prop :=
  ∀ n, P884012417088171904.a n = A071854 (n + 1)

end A071854

/-! ## A071854.P10956658978034843230

`A108954(n+1)+A193990(n+1)-A000720(n+1)`
-/

namespace A071854.P10956658978034843230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (n + 1) + (A193990 (n + 1) - A000720 (n + 1))

end

end A071854.P10956658978034843230

namespace A071854

/-- `A108954(n+1)+A193990(n+1)-A000720(n+1)` -/
def P10956658978034843230.Spec : Prop :=
  ∀ n, P10956658978034843230.a n = A071854 (n + 1)

end A071854

/-! ## A071854.P18404696075330673594

`A108954(n+1)-A147844(n+1)`
-/

namespace A071854.P18404696075330673594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (n + 1) - A147844 (n + 1)

end

end A071854.P18404696075330673594

namespace A071854

/-- `A108954(n+1)-A147844(n+1)` -/
def P18404696075330673594.Spec : Prop :=
  ∀ n, P18404696075330673594.a n = A071854 (n + 1)

end A071854

/-! ## A071854.P1195297941421663183

`A035250(n+1)-(A147844(n+1)+A010051(n+1))`
-/

namespace A071854.P1195297941421663183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (n + 1) - (A147844 (n + 1) + A010051 (n + 1))

end

end A071854.P1195297941421663183

namespace A071854

/-- `A035250(n+1)-(A147844(n+1)+A010051(n+1))` -/
def P1195297941421663183.Spec : Prop :=
  ∀ n, P1195297941421663183.a n = A071854 (n + 1)

end A071854

/-!
# A071857: Engel expansion of sqrt(2*log(2)).

The programs for A071857, there is no canonical definition to state claims against.
-/

/-! ## A071857.P10139490855832712290

`A056239(A038761(n))+A035199(n+1)`
-/

namespace A071857.P10139490855832712290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A038761 n).toNat + A035199 (n + 1)

end

end A071857.P10139490855832712290

/-!
# A071858: (Number of 1's in binary expansion of n) mod 3.

The programs for A071858, the canonical program `A071858.P17336919292413007964` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071858 has offset 0).

The definition of A071858 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071858.P17336919292413007964

`A010872(A000120(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071858

/-- `A010872(A000120(n))` -/
def P17336919292413007964.Spec : Prop :=
  ∀ n, P17336919292413007964.a n = A071858 n

theorem P17336919292413007964.correct : P17336919292413007964.Spec := by
  intro n
  simp only [A071858]

end A071858

/-! ## A071858.P9284813265476303525

`C(2, a(and(n, n-1))²)` with `a(0)=0`
-/

namespace A071858.P9284813265476303525
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose 2 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat ^ 2)

end

end A071858.P9284813265476303525

namespace A071858

/-- `C(2, a(and(n, n-1))²)` -/
def P9284813265476303525.Spec : Prop :=
  ∀ n, (P9284813265476303525.a n : ℤ) = A071858 n

end A071858

/-! ## A071858.P13351769754285884850

`(a(and(n, n-1))+1)%3` with `a(0)=0`
-/

namespace A071858.P13351769754285884850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1) % 3

end

end A071858.P13351769754285884850

namespace A071858

/-- `(a(and(n, n-1))+1)%3` -/
def P13351769754285884850.Spec : Prop :=
  ∀ n, (P13351769754285884850.a n : ℤ) = A071858 n

end A071858

/-! ## A071858.P13792471864481034881

`∑[∑{e}[xor(n, -n), 2-#]]%3`
-/

namespace A071858.P13792471864481034881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A071858.P13792471864481034881

namespace A071858

/-- `∑[∑{e}[xor(n, -n), 2-#]]%3` -/
def P13792471864481034881.Spec : Prop :=
  ∀ n, P13792471864481034881.a n = A071858 n

end A071858

/-! ## A071858.P7071588019987037264

`(a(floor(n/2))+n%2)%3` with `a(0)=0`
-/

namespace A071858.P7071588019987037264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (a ⌊(n : ℚ) / 2⌋.toNat + n % 2) % 3

end

end A071858.P7071588019987037264

namespace A071858

/-- `(a(floor(n/2))+n%2)%3` -/
def P7071588019987037264.Spec : Prop :=
  ∀ n, (P7071588019987037264.a n : ℤ) = A071858 n

end A071858

/-! ## A071858.P17380453075570292655

`and(3, (2*a(and(n, n-1)))!)` with `a(0)=0`
-/

namespace A071858.P17380453075570292655
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.land 3 (Nat.factorial (2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat))

end

end A071858.P17380453075570292655

namespace A071858

/-- `and(3, (2*a(and(n, n-1)))!)` -/
def P17380453075570292655.Spec : Prop :=
  ∀ n, (P17380453075570292655.a n : ℤ) = A071858 n

end A071858

/-! ## A071858.P9915892585058815061

`A000695(n)%3`
-/

namespace A071858.P9915892585058815061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000695 n) 3

end

end A071858.P9915892585058815061

namespace A071858

/-- `A000695(n)%3` -/
def P9915892585058815061.Spec : Prop :=
  ∀ n, P9915892585058815061.a n = A071858 n

end A071858

/-! ## A071858.P13393464357174149608

`A007088(n)%3`
-/

namespace A071858.P13393464357174149608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007088 n) 3

end

end A071858.P13393464357174149608

namespace A071858

/-- `A007088(n)%3` -/
def P13393464357174149608.Spec : Prop :=
  ∀ n, P13393464357174149608.a n = A071858 n

end A071858

/-! ## A071858.P6809825943280865005

`A033049(n)%3`
-/

namespace A071858.P6809825943280865005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033049 n) 3

end

end A071858.P6809825943280865005

namespace A071858

/-- `A033049(n)%3` -/
def P6809825943280865005.Spec : Prop :=
  ∀ n, P6809825943280865005.a n = A071858 n

end A071858

/-! ## A071858.P4330125573013172338

`A033052(n)%3`
-/

namespace A071858.P4330125573013172338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033052 n) 3

end

end A071858.P4330125573013172338

namespace A071858

/-- `A033052(n)%3` -/
def P4330125573013172338.Spec : Prop :=
  ∀ n, P4330125573013172338.a n = A071858 n

end A071858

/-! ## A071858.P192718441019130208

`A062033(n)%3`
-/

namespace A071858.P192718441019130208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062033 n) 3

end

end A071858.P192718441019130208

namespace A071858

/-- `A062033(n)%3` -/
def P192718441019130208.Spec : Prop :=
  ∀ n, P192718441019130208.a n = A071858 n

end A071858

/-! ## A071858.P4250024070226869833

`A063010(n)%3`
-/

namespace A071858.P4250024070226869833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063010 n) 3

end

end A071858.P4250024070226869833

namespace A071858

/-- `A063010(n)%3` -/
def P4250024070226869833.Spec : Prop :=
  ∀ n, P4250024070226869833.a n = A071858 n

end A071858

/-! ## A071858.P3376890755191429877

`A090640(n)%3`
-/

namespace A071858.P3376890755191429877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090640 n) 3

end

end A071858.P3376890755191429877

namespace A071858

/-- `A090640(n)%3` -/
def P3376890755191429877.Spec : Prop :=
  ∀ n, P3376890755191429877.a n = A071858 n

end A071858

/-! ## A071858.P17840651612820876387

`A099820(n)%3`
-/

namespace A071858.P17840651612820876387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099820 n) 3

end

end A071858.P17840651612820876387

namespace A071858

/-- `A099820(n)%3` -/
def P17840651612820876387.Spec : Prop :=
  ∀ n, P17840651612820876387.a n = A071858 n

end A071858

/-! ## A071858.P13469469672116532447

`A197353(n)%3`
-/

namespace A071858.P13469469672116532447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197353 n) 3

end

end A071858.P13469469672116532447

namespace A071858

/-- `A197353(n)%3` -/
def P13469469672116532447.Spec : Prop :=
  ∀ n, P13469469672116532447.a n = A071858 n

end A071858

/-! ## A071858.P1514944578504703994

`A204094(n)%3`
-/

namespace A071858.P1514944578504703994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204094 n) 3

end

end A071858.P1514944578504703994

namespace A071858

/-- `A204094(n)%3` -/
def P1514944578504703994.Spec : Prop :=
  ∀ n, P1514944578504703994.a n = A071858 n

end A071858

/-! ## A071858.P13469429188048892259

`A221714(n)%3`
-/

namespace A071858.P13469429188048892259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221714 n) 3

end

end A071858.P13469429188048892259

namespace A071858

/-- `A221714(n)%3` -/
def P13469429188048892259.Spec : Prop :=
  ∀ n, P13469429188048892259.a n = A071858 n

end A071858

/-! ## A071858.P8783725027832345683

`A304453(n)%3`
-/

namespace A071858.P8783725027832345683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304453 n) 3

end

end A071858.P8783725027832345683

namespace A071858

/-- `A304453(n)%3` -/
def P8783725027832345683.Spec : Prop :=
  ∀ n, P8783725027832345683.a n = A071858 n

end A071858

/-! ## A071858.P12085680021797774157

`A305989(n)%3`
-/

namespace A071858.P12085680021797774157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305989 n) 3

end

end A071858.P12085680021797774157

namespace A071858

/-- `A305989(n)%3` -/
def P12085680021797774157.Spec : Prop :=
  ∀ n, P12085680021797774157.a n = A071858 n

end A071858

/-!
# A071859: Determinant of M_n where M_n is the n X n matrix m_(i,j) = A030300(i+j).

The programs for A071859, there is no canonical definition to state claims against.
-/

/-! ## A071859.P13292302599798459969

`Δ[A005811(n)]*A072629(A052992(n))`
-/

namespace A071859.P13292302599798459969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A072629 (A052992 n).toNat

end

end A071859.P13292302599798459969

/-! ## A071859.P68218994510879906

`A020985(n+1)*A072629(A052992(n))`
-/

namespace A071859.P68218994510879906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (n + 1) * A072629 (A052992 n).toNat

end

end A071859.P68218994510879906

/-! ## A071859.P5615154213955438779

`A034947(n+1)*A072629(A052992(n))`
-/

namespace A071859.P5615154213955438779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A072629 (A052992 n).toNat

end

end A071859.P5615154213955438779

/-! ## A071859.P7129182694363990963

`A219977(A020695(n))^A203338(n+1)`
-/

namespace A071859.P7129182694363990963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219977 (A020695 n).toNat : ℚ) ^ (A203338 (n + 1) : ℤ)

end

end A071859.P7129182694363990963

/-! ## A071859.P11945153221940334893

`A034947(n+1)*A133872(A000045(n+3))`
-/

namespace A071859.P11945153221940334893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A133872 (A000045 (n + 3)).toNat

end

end A071859.P11945153221940334893

/-!
# A071860: Number of k 1<=k<=n such that sigma(k) is odd.

The programs for A071860, the canonical program `A071860.P10900226461684192974` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071860 has offset 1).

The definition of A071860 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071860.P10900226461684192974

`floor(sqrt(n+1))+floor(sqrt((n+1)/2))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A071860

/-- `floor(sqrt(n+1))+floor(sqrt((n+1)/2))` -/
def P10900226461684192974.Spec : Prop :=
  ∀ n, P10900226461684192974.a n = A071860 (n + 1)

theorem P10900226461684192974.correct : P10900226461684192974.Spec := by
  intro n
  simp only [A071860, Nat.add_sub_cancel]

end A071860

/-! ## A071860.P18322317701042130288

`∑[∑{d}[n+1, #]%2]`
-/

namespace A071860.P18322317701042130288
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n), d) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071860.P18322317701042130288

namespace A071860

/-- `∑[∑{d}[n+1, #]%2]` -/
def P18322317701042130288.Spec : Prop :=
  ∀ n, (P18322317701042130288.a n : ℤ) = A071860 (n + 1)

end A071860

/-! ## A071860.P6714046838193747052

`∑[and(1, ∑{d}[n+1, #])]`
-/

namespace A071860.P6714046838193747052
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071860.P6714046838193747052

namespace A071860

/-- `∑[and(1, ∑{d}[n+1, #])]` -/
def P6714046838193747052.Spec : Prop :=
  ∀ n, (P6714046838193747052.a n : ℤ) = A071860 (n + 1)

end A071860

/-! ## A071860.P15179738479079886376

`∑[2-gcd(2, ∑{d}[n+1, #])]`
-/

namespace A071860.P15179738479079886376
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.gcd 2 (∑ d ∈ Nat.divisors (f2 n), d) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071860.P15179738479079886376

namespace A071860

/-- `∑[2-gcd(2, ∑{d}[n+1, #])]` -/
def P15179738479079886376.Spec : Prop :=
  ∀ n, P15179738479079886376.a n = A071860 (n + 1)

end A071860

/-! ## A071860.P10258521513145585034

`∑[A053866(n+1)]`
-/

namespace A071860.P10258521513145585034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071860.P10258521513145585034

namespace A071860

/-- `∑[A053866(n+1)]` -/
def P10258521513145585034.Spec : Prop :=
  ∀ n, P10258521513145585034.a n = A071860 (n + 1)

end A071860

/-! ## A071860.P4030242048491819254

`∑[A093709(n+1)]`
-/

namespace A071860.P4030242048491819254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071860.P4030242048491819254

namespace A071860

/-- `∑[A093709(n+1)]` -/
def P4030242048491819254.Spec : Prop :=
  ∀ n, P4030242048491819254.a n = A071860 (n + 1)

end A071860

/-! ## A071860.P9548157323725522253

`∑[abs(A143259(n+1))]`
-/

namespace A071860.P9548157323725522253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143259 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071860.P9548157323725522253

namespace A071860

/-- `∑[abs(A143259(n+1))]` -/
def P9548157323725522253.Spec : Prop :=
  ∀ n, P9548157323725522253.a n = A071860 (n + 1)

end A071860

/-! ## A071860.P5482143942439018080

`∑[abs(A214509(n+1))]`
-/

namespace A071860.P5482143942439018080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A214509 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071860.P5482143942439018080

namespace A071860

/-- `∑[abs(A214509(n+1))]` -/
def P5482143942439018080.Spec : Prop :=
  ∀ n, P5482143942439018080.a n = A071860 (n + 1)

end A071860

/-! ## A071860.P7354911769136187759

`∑[abs(A359818(n+1))]`
-/

namespace A071860.P7354911769136187759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A359818 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071860.P7354911769136187759

namespace A071860

/-- `∑[abs(A359818(n+1))]` -/
def P7354911769136187759.Spec : Prop :=
  ∀ n, P7354911769136187759.a n = A071860 (n + 1)

end A071860

/-! ## A071860.P9362855269015437297

`∑[A000203(n+1)%2]`
-/

namespace A071860.P9362855269015437297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071860.P9362855269015437297

namespace A071860

/-- `∑[A000203(n+1)%2]` -/
def P9362855269015437297.Spec : Prop :=
  ∀ n, P9362855269015437297.a n = A071860 (n + 1)

end A071860

/-! ## A071860.P11500470973892988573

`∑[A001227(n+1)%2]`
-/

namespace A071860.P11500470973892988573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001227 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071860.P11500470973892988573

namespace A071860

/-- `∑[A001227(n+1)%2]` -/
def P11500470973892988573.Spec : Prop :=
  ∀ n, P11500470973892988573.a n = A071860 (n + 1)

end A071860

/-! ## A071860.P923916974663817090

`∑[A002325(n+1)%2]`
-/

namespace A071860.P923916974663817090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002325 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071860.P923916974663817090

namespace A071860

/-- `∑[A002325(n+1)%2]` -/
def P923916974663817090.Spec : Prop :=
  ∀ n, P923916974663817090.a n = A071860 (n + 1)

end A071860

/-! ## A071860.P10050612235144770736

`∑[A002654(n+1)%2]`
-/

namespace A071860.P10050612235144770736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002654 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071860.P10050612235144770736

namespace A071860

/-- `∑[A002654(n+1)%2]` -/
def P10050612235144770736.Spec : Prop :=
  ∀ n, P10050612235144770736.a n = A071860 (n + 1)

end A071860

/-! ## A071860.P3855056455896406694

`∑[A145390(n+1)%2]`
-/

namespace A071860.P3855056455896406694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145390 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071860.P3855056455896406694

namespace A071860

/-- `∑[A145390(n+1)%2]` -/
def P3855056455896406694.Spec : Prop :=
  ∀ n, P3855056455896406694.a n = A071860 (n + 1)

end A071860

/-! ## A071860.P11000207963614150893

`∑[A326144(n+1)%2]`
-/

namespace A071860.P11000207963614150893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326144 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071860.P11000207963614150893

namespace A071860

/-- `∑[A326144(n+1)%2]` -/
def P11000207963614150893.Spec : Prop :=
  ∀ n, P11000207963614150893.a n = A071860 (n + 1)

end A071860

/-! ## A071860.P1152637830527235327

`∑[A326147(n+1)%2]`
-/

namespace A071860.P1152637830527235327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326147 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071860.P1152637830527235327

namespace A071860

/-- `∑[A326147(n+1)%2]` -/
def P1152637830527235327.Spec : Prop :=
  ∀ n, P1152637830527235327.a n = A071860 (n + 1)

end A071860

/-! ## A071860.P8084610394675009575

`∑[and(1, A000593(n+1))]`
-/

namespace A071860.P8084610394675009575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000593 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071860.P8084610394675009575

namespace A071860

/-- `∑[and(1, A000593(n+1))]` -/
def P8084610394675009575.Spec : Prop :=
  ∀ n, P8084610394675009575.a n = A071860 (n + 1)

end A071860

/-! ## A071860.P8848525378799642299

`∑[and(1, A001157(n+1))]`
-/

namespace A071860.P8848525378799642299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A001157 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071860.P8848525378799642299

namespace A071860

/-- `∑[and(1, A001157(n+1))]` -/
def P8848525378799642299.Spec : Prop :=
  ∀ n, P8848525378799642299.a n = A071860 (n + 1)

end A071860

/-! ## A071860.P16615912197067578658

`∑[and(1, A001159(n+1))]`
-/

namespace A071860.P16615912197067578658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A001159 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071860.P16615912197067578658

namespace A071860

/-- `∑[and(1, A001159(n+1))]` -/
def P16615912197067578658.Spec : Prop :=
  ∀ n, P16615912197067578658.a n = A071860 (n + 1)

end A071860

/-! ## A071860.P10863786384303921227

`∑[and(1, A050457(n+1))]`
-/

namespace A071860.P10863786384303921227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A050457 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071860.P10863786384303921227

namespace A071860

/-- `∑[and(1, A050457(n+1))]` -/
def P10863786384303921227.Spec : Prop :=
  ∀ n, P10863786384303921227.a n = A071860 (n + 1)

end A071860

/-!
# A071861: Numbers k such that the largest prime factor of k is equal to the sum of primes dividing k+1 (with repetition).

The programs for A071861, there is no canonical definition to state claims against.
-/

/-! ## A071861.P15649508606738048107

`A193458(∑[A073364(n+1)²])`
-/

namespace A071861.P15649508606738048107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073364 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193458 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A071861.P15649508606738048107

/-!
# A071863: Numbers n such that sum of primes dividing n (with repetition) is equal to the largest prime factor of n+1.

The programs for A071863, there is no canonical definition to state claims against.
-/

/-! ## A071863.P9664757593391174813

`eq[A006530(n+1), A107463(n)]`
-/

namespace A071863.P9664757593391174813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071863.P9664757593391174813

/-! ## A071863.P16783010562562557623

`eq[A001414(A028310(n)), A284695(n+1)]`
-/

namespace A071863.P16783010562562557623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284695 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071863.P16783010562562557623

/-! ## A071863.P14813530859525845275

`eq[A001414(A028310(n)), A345931(n+1)]`
-/

namespace A071863.P14813530859525845275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345931 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071863.P14813530859525845275

/-! ## A071863.P1220711238857556063

`A193458(A193498(n+4)%A193501(n+1))`
-/

namespace A071863.P1220711238857556063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193458 (Int.tmod (A193498 (n + 4)) (A193501 (n + 1))).toNat

end

end A071863.P1220711238857556063

/-! ## A071863.P12094435481364226063

`A193458(∩[A193457(n+1), A193498(n+4)])`
-/

namespace A071863.P12094435481364226063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193498 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193458 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A071863.P12094435481364226063

/-!
# A071866: Number of elements in the continued fraction for prime(n+1)/prime(n).

The programs for A071866, there is no canonical definition to state claims against.
-/

/-! ## A071866.P4569060867624840274

`A049843(∑[n+1]+1)+1`
-/

namespace A071866.P4569060867624840274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049843 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A071866.P4569060867624840274

/-! ## A071866.P17712077859230052210

`dr(A049843(C(n+2, 2)+1))+1`
-/

namespace A071866.P17712077859230052210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A049843 (Nat.choose (n + 2) 2 + 1)) + 1

end

end A071866.P17712077859230052210

/-! ## A071866.P17923501114865695364

`A049843(C(n+2, n)+1)%6+1`
-/

namespace A071866.P17923501114865695364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049843 (Nat.choose (n + 2) n + 1)) 6 + 1

end

end A071866.P17923501114865695364

/-! ## A071866.P14836410872515835330

`round(sqrt((A049843(C(n+3, 2)-(n+1))+1)²+1))`
-/

namespace A071866.P14836410872515835330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A049843 (Nat.choose (n + 3) 2 - (n + 1)) + 1) ^ 2 + 1 : ℝ))

end

end A071866.P14836410872515835330

/-! ## A071866.P7328516786756906622

`A049843(A000096(n)+2)%6+1`
-/

namespace A071866.P7328516786756906622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049843 (A000096 n + 2).toNat) 6 + 1

end

end A071866.P7328516786756906622

/-! ## A071866.P6821485373591300839

`A278744(n+1)+1`
-/

namespace A071866.P6821485373591300839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278744 (n + 1) + 1

end

end A071866.P6821485373591300839

/-!
# A071868: Number of integers k (1 <= k <= n) such that k^2+1 is prime.

The programs for A071868, the canonical program `A071868.P4330058732517651371` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071868 has offset 1).

The definition of A071868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071868.P4330058732517651371

`∑[A295405(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071868

/-- `∑[A295405(n+1)]` -/
def P4330058732517651371.Spec : Prop :=
  ∀ n, P4330058732517651371.a n = A071868 (n + 1)

theorem P4330058732517651371.correct : P4330058732517651371.Spec := by
  intro n
  simp only [A071868, Nat.add_sub_cancel]

end A071868

/-! ## A071868.P3496846364170114962

`∑[char[A089593(n+1)]]`
-/

namespace A071868.P3496846364170114962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071868.P3496846364170114962

namespace A071868

/-- `∑[char[A089593(n+1)]]` -/
def P3496846364170114962.Spec : Prop :=
  ∀ n, (P3496846364170114962.a n : ℤ) = A071868 (n + 1)

end A071868

/-! ## A071868.P13660346261332638662

`∑[C(2, A193432(n+1))]`
-/

namespace A071868.P13660346261332638662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A193432 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071868.P13660346261332638662

namespace A071868

/-- `∑[C(2, A193432(n+1))]` -/
def P13660346261332638662.Spec : Prop :=
  ∀ n, (P13660346261332638662.a n : ℤ) = A071868 (n + 1)

end A071868

/-! ## A071868.P8270849681776477903

`∑[round(acot(A193330(n+1)))]`
-/

namespace A071868.P8270849681776477903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A193330 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071868.P8270849681776477903

namespace A071868

/-- `∑[round(acot(A193330(n+1)))]` -/
def P8270849681776477903.Spec : Prop :=
  ∀ n, P8270849681776477903.a n = A071868 (n + 1)

end A071868

/-! ## A071868.P16860214101187286285

`∑[A000007(A035092(n+1)-1)]`
-/

namespace A071868.P16860214101187286285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A035092 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071868.P16860214101187286285

namespace A071868

/-- `∑[A000007(A035092(n+1)-1)]` -/
def P16860214101187286285.Spec : Prop :=
  ∀ n, P16860214101187286285.a n = A071868 (n + 1)

end A071868

/-! ## A071868.P14371447635253577576

`∑[∑{e}[(n+1)²+1, #]!%2]`
-/

namespace A071868.P14371447635253577576
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071868.P14371447635253577576

namespace A071868

/-- `∑[∑{e}[(n+1)²+1, #]!%2]` -/
def P14371447635253577576.Spec : Prop :=
  ∀ n, (P14371447635253577576.a n : ℤ) = A071868 (n + 1)

end A071868

/-! ## A071868.P12413851073322765813

`∑[and(1, ∑{e}[(n+1)²+1, #]!)]`
-/

namespace A071868.P12413851073322765813
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071868.P12413851073322765813

namespace A071868

/-- `∑[and(1, ∑{e}[(n+1)²+1, #]!)]` -/
def P12413851073322765813.Spec : Prop :=
  ∀ n, (P12413851073322765813.a n : ℤ) = A071868 (n + 1)

end A071868

/-! ## A071868.P10074302383551213587

`∑[C(C(2, ∑{e}[(n+1)²+1, #]), 2)]`
-/

namespace A071868.P10074302383551213587
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071868.P10074302383551213587

namespace A071868

/-- `∑[C(C(2, ∑{e}[(n+1)²+1, #]), 2)]` -/
def P10074302383551213587.Spec : Prop :=
  ∀ n, (P10074302383551213587.a n : ℤ) = A071868 (n + 1)

end A071868

/-! ## A071868.P9213173882398370733

`∑[floor(1/∑{p}[(n+1)²+1, gcd(3, #)])]`
-/

namespace A071868.P9213173882398370733
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / ((∑ p ∈ Nat.primeFactors (f2 n), Nat.gcd 3 p : ℕ) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071868.P9213173882398370733

namespace A071868

/-- `∑[floor(1/∑{p}[(n+1)²+1, gcd(3, #)])]` -/
def P9213173882398370733.Spec : Prop :=
  ∀ n, P9213173882398370733.a n = A071868 (n + 1)

end A071868

/-! ## A071868.P16458589492012863008

`∑[round(acot(∏{e}[(n+1)²+1, #+1]/2))]`
-/

namespace A071868.P16458589492012863008
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℚ) / 2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071868.P16458589492012863008

namespace A071868

/-- `∑[round(acot(∏{e}[(n+1)²+1, #+1]/2))]` -/
def P16458589492012863008.Spec : Prop :=
  ∀ n, P16458589492012863008.a n = A071868 (n + 1)

end A071868

/-! ## A071868.P9832693500067557119

`∑[A010051((n+1)²+1)]`
-/

namespace A071868.P9832693500067557119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 ((n + 1) ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071868.P9832693500067557119

namespace A071868

/-- `∑[A010051((n+1)²+1)]` -/
def P9832693500067557119.Spec : Prop :=
  ∀ n, P9832693500067557119.a n = A071868 (n + 1)

end A071868

/-! ## A071868.P6773699393414164736

`∑[A069513((n+1)²+1)]`
-/

namespace A071868.P6773699393414164736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 ((n + 1) ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071868.P6773699393414164736

namespace A071868

/-- `∑[A069513((n+1)²+1)]` -/
def P6773699393414164736.Spec : Prop :=
  ∀ n, P6773699393414164736.a n = A071868 (n + 1)

end A071868

/-! ## A071868.P16592551904112046049

`∑[A100995((n+1)²+1)]`
-/

namespace A071868.P16592551904112046049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100995 ((n + 1) ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071868.P16592551904112046049

namespace A071868

/-- `∑[A100995((n+1)²+1)]` -/
def P16592551904112046049.Spec : Prop :=
  ∀ n, P16592551904112046049.a n = A071868 (n + 1)

end A071868

/-! ## A071868.P13757721020919980474

`∑[A137794((n+1)²+1)]`
-/

namespace A071868.P13757721020919980474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137794 ((n + 1) ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071868.P13757721020919980474

namespace A071868

/-- `∑[A137794((n+1)²+1)]` -/
def P13757721020919980474.Spec : Prop :=
  ∀ n, P13757721020919980474.a n = A071868 (n + 1)

end A071868

/-! ## A071868.P1938769608369290660

`∑[A174897((n+1)²+1)]`
-/

namespace A071868.P1938769608369290660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174897 ((n + 1) ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071868.P1938769608369290660

namespace A071868

/-- `∑[A174897((n+1)²+1)]` -/
def P1938769608369290660.Spec : Prop :=
  ∀ n, P1938769608369290660.a n = A071868 (n + 1)

end A071868

/-! ## A071868.P3176429489972564171

`∑[A302777((n+1)²+1)]`
-/

namespace A071868.P3176429489972564171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302777 ((n + 1) ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071868.P3176429489972564171

namespace A071868

/-- `∑[A302777((n+1)²+1)]` -/
def P3176429489972564171.Spec : Prop :=
  ∀ n, P3176429489972564171.a n = A071868 (n + 1)

end A071868

/-! ## A071868.P16578917712034440092

`∑[A323152((n+1)²+1)]`
-/

namespace A071868.P16578917712034440092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323152 ((n + 1) ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071868.P16578917712034440092

namespace A071868

/-- `∑[A323152((n+1)²+1)]` -/
def P16578917712034440092.Spec : Prop :=
  ∀ n, P16578917712034440092.a n = A071868 (n + 1)

end A071868

/-! ## A071868.P17981407489337552603

`∑[A323153((n+1)²+1)]`
-/

namespace A071868.P17981407489337552603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323153 ((n + 1) ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071868.P17981407489337552603

namespace A071868

/-- `∑[A323153((n+1)²+1)]` -/
def P17981407489337552603.Spec : Prop :=
  ∀ n, P17981407489337552603.a n = A071868 (n + 1)

end A071868

/-! ## A071868.P14355491009583149608

`∑[A327861((n+1)²+1)]`
-/

namespace A071868.P14355491009583149608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327861 ((n + 1) ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071868.P14355491009583149608

namespace A071868

/-- `∑[A327861((n+1)²+1)]` -/
def P14355491009583149608.Spec : Prop :=
  ∀ n, P14355491009583149608.a n = A071868 (n + 1)

end A071868

/-! ## A071868.P16348660141669263992

`∑[A327866((n+1)²+1)]`
-/

namespace A071868.P16348660141669263992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327866 ((n + 1) ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071868.P16348660141669263992

namespace A071868

/-- `∑[A327866((n+1)²+1)]` -/
def P16348660141669263992.Spec : Prop :=
  ∀ n, P16348660141669263992.a n = A071868 (n + 1)

end A071868

/-!
# A071869: Numbers k such that gpf(k) < gpf(k+1) < gpf(k+2) where gpf(k) denotes the largest prime factor of k.

The programs for A071869, the canonical program `A071869.P8198727716046455675` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071869 has offset 1).

The definition of A071869 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079747, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071869.P8198727716046455675

`A079747(n+2)-1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A071869

/-- `A079747(n+2)-1` -/
def P8198727716046455675.Spec : Prop :=
  ∀ n, P8198727716046455675.a n = A071869 (n + 1)

theorem P8198727716046455675.correct : P8198727716046455675.Spec := by
  intro n
  simp only [A071869, Nat.add_sub_cancel]

end A071869

/-! ## A071869.P7651259955734625935

`∩[A070089(n+2)-1, A070089(n+2)]`
-/

namespace A071869.P7651259955734625935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070089 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070089 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071869.P7651259955734625935

namespace A071869

/-- `∩[A070089(n+2)-1, A070089(n+2)]` -/
def P7651259955734625935.Spec : Prop :=
  ∀ n, (P7651259955734625935.a n : ℤ) = A071869 (n + 1)

end A071869

/-! ## A071869.P2058703100649672785

`A070089(eq[1, A070089(n+2)%A070089(n+1)]+1)`
-/

namespace A071869.P2058703100649672785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070089 (n + 2)) (A070089 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070089 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A071869.P2058703100649672785

namespace A071869

/-- `A070089(eq[1, A070089(n+2)%A070089(n+1)]+1)` -/
def P2058703100649672785.Spec : Prop :=
  ∀ n, P2058703100649672785.a n = A071869 (n + 1)

end A071869

/-! ## A071869.P16535990662228659759

`A023443(A079747(n+2))`
-/

namespace A071869.P16535990662228659759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A079747 (n + 2)).toNat

end

end A071869.P16535990662228659759

namespace A071869

/-- `A023443(A079747(n+2))` -/
def P16535990662228659759.Spec : Prop :=
  ∀ n, P16535990662228659759.a n = A071869 (n + 1)

end A071869

/-! ## A071869.P11175326876910626844

`A055456(A079747(n+2))%A231370(n+1)`
-/

namespace A071869.P11175326876910626844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055456 (A079747 (n + 2)).toNat) (A231370 (n + 1))

end

end A071869.P11175326876910626844

namespace A071869

/-- `A055456(A079747(n+2))%A231370(n+1)` -/
def P11175326876910626844.Spec : Prop :=
  ∀ n, P11175326876910626844.a n = A071869 (n + 1)

end A071869

/-! ## A071869.P10859099966879791385

`A055456(A079747(n+2)%A133215(n+1))`
-/

namespace A071869.P10859099966879791385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055456 (Int.tmod (A079747 (n + 2)) (A133215 (n + 1))).toNat

end

end A071869.P10859099966879791385

namespace A071869

/-- `A055456(A079747(n+2)%A133215(n+1))` -/
def P10859099966879791385.Spec : Prop :=
  ∀ n, P10859099966879791385.a n = A071869 (n + 1)

end A071869

/-! ## A071869.P12970876708934755440

`A113520(A079747(n+1))+Δ[A079747(n+1)]`
-/

namespace A071869.P12970876708934755440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A079747 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A071869.P12970876708934755440

namespace A071869

/-- `A113520(A079747(n+1))+Δ[A079747(n+1)]` -/
def P12970876708934755440.Spec : Prop :=
  ∀ n, P12970876708934755440.a n = A071869 (n + 1)

end A071869

/-! ## A071869.P18339663325113352148

`eq[A100376(n+2)+2, A100376(A233583(n+1))]`
-/

namespace A071869.P18339663325113352148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100376 (n + 2) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100376 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071869.P18339663325113352148

namespace A071869

/-- `eq[A100376(n+2)+2, A100376(A233583(n+1))]` -/
def P18339663325113352148.Spec : Prop :=
  ∀ n, (P18339663325113352148.a n : ℤ) = A071869 (n + 1)

end A071869

/-!
# A071870: Numbers k such that gpf(k) > gpf(k+1) > gpf(k+2) where gpf(k) denotes the largest prime factor of k.

The programs for A071870, the canonical program `A071870.P2499928873080730588` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071870 has offset 1).

The definition of A071870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3236 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071870.P2844311642228268639

`A070087(eq[1, A216650(n+1)])`
-/

namespace A071870.P2844311642228268639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A071870.P2844311642228268639

namespace A071870

/-- `A070087(eq[1, A216650(n+1)])` -/
def P2844311642228268639.Spec : Prop :=
  ∀ n, P2844311642228268639.a n = A071870 (n + 1)

end A071870

/-! ## A071870.P13538230979689131013

`∩[A070087(n+1)-1, A070087(n+1)]`
-/

namespace A071870.P13538230979689131013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070087 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071870.P13538230979689131013

namespace A071870

/-- `∩[A070087(n+1)-1, A070087(n+1)]` -/
def P13538230979689131013.Spec : Prop :=
  ∀ n, (P13538230979689131013.a n : ℤ) = A071870 (n + 1)

end A071870

/-! ## A071870.P2499928873080730588

`A070087(eq[1, A070087(n+2)-A070087(n+1)]+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A071870

/-- `A070087(eq[1, A070087(n+2)-A070087(n+1)]+1)` -/
def P2499928873080730588.Spec : Prop :=
  ∀ n, P2499928873080730588.a n = A071870 (n + 1)

theorem P2499928873080730588.correct : P2499928873080730588.Spec := by
  intro n
  simp only [A071870, Nat.add_sub_cancel]

end A071870

/-! ## A071870.P14222238135342581633

`eq[A006530(n+1)%A093074(n+1), A074399(n+1)]`
-/

namespace A071870.P14222238135342581633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (n + 1)) (A093074 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071870.P14222238135342581633

namespace A071870

/-- `eq[A006530(n+1)%A093074(n+1), A074399(n+1)]` -/
def P14222238135342581633.Spec : Prop :=
  ∀ n, (P14222238135342581633.a n : ℤ) = A071870 (n + 1)

end A071870

/-! ## A071870.P17667511734259360883

`eq[A100376(n+2), A174869(n+1)]+1`
-/

namespace A071870.P17667511734259360883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100376 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174869 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071870.P17667511734259360883

namespace A071870

/-- `eq[A100376(n+2), A174869(n+1)]+1` -/
def P17667511734259360883.Spec : Prop :=
  ∀ n, (P17667511734259360883.a n : ℤ) = A071870 (n + 1)

end A071870

/-! ## A071870.P9676953365149638649

`A153152(eq[A100376(n+2), A174869(n+1)])`
-/

namespace A071870.P9676953365149638649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100376 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174869 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A071870.P9676953365149638649

namespace A071870

/-- `A153152(eq[A100376(n+2), A174869(n+1)])` -/
def P9676953365149638649.Spec : Prop :=
  ∀ n, P9676953365149638649.a n = A071870 (n + 1)

end A071870

/-! ## A071870.P11451214610991570679

`eq[1, A174869(n+1)*A174869(A028310(n))]`
-/

namespace A071870.P11451214610991570679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174869 (n + 1) * A174869 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071870.P11451214610991570679

namespace A071870

/-- `eq[1, A174869(n+1)*A174869(A028310(n))]` -/
def P11451214610991570679.Spec : Prop :=
  ∀ n, (P11451214610991570679.a n : ℤ) = A071870 (n + 1)

end A071870

/-! ## A071870.P1709107974157517816

`eq[1, A174869(n+1)*A174869(A233583(n+1))]`
-/

namespace A071870.P1709107974157517816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174869 (n + 1) * A174869 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071870.P1709107974157517816

namespace A071870

/-- `eq[1, A174869(n+1)*A174869(A233583(n+1))]` -/
def P1709107974157517816.Spec : Prop :=
  ∀ n, (P1709107974157517816.a n : ℤ) = A071870 (n + 1)

end A071870

/-!
# A071872: Number of positive k such that k*tau(k) < n plus the number of positive k such that k*tau(k) = n-1.

The programs for A071872, there is no canonical definition to state claims against.
-/

/-! ## A071872.P6151327039628050974

`∑{e}[A089405(n+1), A023396(#)]`
-/

namespace A071872.P6151327039628050974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A023396 (Nat.factorization (f1 n).natAbs p)

end

end A071872.P6151327039628050974

/-! ## A071872.P7270337244388178476

`A028242(∑[A284490(A063886(n))])`
-/

namespace A071872.P7270337244388178476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284490 (A063886 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A071872.P7270337244388178476

/-! ## A071872.P1377777846938227229

`A052938(A243285(n+1))-A000188(A184467(n+1))`
-/

namespace A071872.P1377777846938227229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A243285 (n + 1)).toNat - A000188 (A184467 (n + 1)).toNat

end

end A071872.P1377777846938227229

/-!
# A071873: Decimal expansion of the sixth (of 10) decimal selvage number; the n-th digit of a decimal selvage number, x, is equal to the tenths digit of n*x.

The programs for A071873, there is no canonical definition to state claims against.
-/

/-! ## A071873.P3059448510922620954

`9-A071793(n)`
-/

namespace A071873.P3059448510922620954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A071793 n

end

end A071873.P3059448510922620954

/-!
# A071874: Decimal expansion of the seventh (of 10) decimal selvage number; the n-th digit of a decimal selvage number, x, is equal to the tenths digit of n*x.

The programs for A071874, there is no canonical definition to state claims against.
-/

/-! ## A071874.P9170694703441216704

`9-A071792(n)`
-/

namespace A071874.P9170694703441216704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A071792 n

end

end A071874.P9170694703441216704

/-! ## A071874.P12941098683328061974

`A094561(2*n+2)/A049419(A355527(n+1))`
-/

namespace A071874.P12941098683328061974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094561 (2 * n + 2) : ℚ) / (A049419 (A355527 (n + 1)).toNat : ℚ)

end

end A071874.P12941098683328061974

/-! ## A071874.P3905792709639596618

`A294890(A031938(3*n+1))+A094561(2*(n+1))`
-/

namespace A071874.P3905792709639596618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294890 (A031938 (3 * n + 1)).toNat + A094561 (2 * (n + 1))

end

end A071874.P3905792709639596618

/-! ## A071874.P11210903759016846281

`A000035(A016754(n))*A094561(2*n+2)`
-/

namespace A071874.P11210903759016846281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A016754 n).toNat * A094561 (2 * n + 2)

end

end A071874.P11210903759016846281

/-!
# A071875: Decimal expansion of the eighth (of 10) decimal selvage number; the n-th digit of a decimal selvage number, x, is equal to the tenths digit of n*x.

The programs for A071875, there is no canonical definition to state claims against.
-/

/-! ## A071875.P17099468372281780084

`9-A071791(n)`
-/

namespace A071875.P17099468372281780084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A071791 n

end

end A071875.P17099468372281780084

/-! ## A071875.P7979105655971515551

`A023961(A000566(3*n+4)-(n+1))`
-/

namespace A071875.P7979105655971515551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023961 (A000566 (3 * n + 4) - (n + 1 : ℤ)).toNat

end

end A071875.P7979105655971515551

/-! ## A071875.P14990621065517328198

`A189403(2*(n+1))%A066441(A308795(3*n+4))`
-/

namespace A071875.P14990621065517328198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189403 (2 * (n + 1))) (A066441 (A308795 (3 * n + 4)).toNat)

end

end A071875.P14990621065517328198

/-!
# A071876: Decimal expansion of the ninth (of 10) decimal selvage number; the n-th digit of a decimal selvage number, x, is equal to the tenths digit of n*x.

The programs for A071876, there is no canonical definition to state claims against.
-/

/-! ## A071876.P18233529663222513924

`9-A071790(n)`
-/

namespace A071876.P18233529663222513924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A071790 n

end

end A071876.P18233529663222513924

/-! ## A071876.P675023770091165901

`and(7, A006451(A017425(n)))`
-/

namespace A071876.P675023770091165901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A006451 (A017425 n).toNat)

end

end A071876.P675023770091165901

/-! ## A071876.P11787910496173599807

`xor(A010685(A270085(n+1)), A010702(n))`
-/

namespace A071876.P11787910496173599807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010685 (A270085 (n + 1)).toNat) (A010702 n)

end

end A071876.P11787910496173599807

/-! ## A071876.P4416286015942350341

`xor(6, A277744(A090989(n+1)))`
-/

namespace A071876.P4416286015942350341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (A277744 (A090989 (n + 1)).toNat)

end

end A071876.P4416286015942350341

/-!
# A071877: Decimal expansion of the tenth (of 10) decimal selvage number; the n-th digit of a decimal selvage number, x, is equal to the tenths digit of n*x.

The programs for A071877, there is no canonical definition to state claims against.
-/

/-! ## A071877.P10697838923865222594

`9-A071789(n)`
-/

namespace A071877.P10697838923865222594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A071789 n

end

end A071877.P10697838923865222594

/-! ## A071877.P15257240787359489353

`9-A010879(comp[floor(21*n/4)]%(12*n+11-A226190(12*n+11)))`
-/

namespace A071877.P15257240787359489353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊21 * ((n : ℚ) / 4)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A010879 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) ((12 * n + 11 : ℤ) - A226190 (12 * n + 11))).toNat

end

end A071877.P15257240787359489353

/-! ## A071877.P8581535031398112121

`9-A115180(n+1)%10`
-/

namespace A071877.P8581535031398112121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - Int.tmod (A115180 (n + 1)) 10

end

end A071877.P8581535031398112121

/-! ## A071877.P16067477140080514290

`9-A010879(A115180(n+1))`
-/

namespace A071877.P16067477140080514290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A010879 (A115180 (n + 1)).toNat

end

end A071877.P16067477140080514290

/-!
# A071878: G.f. D(x) satisfies: D(x) = (1 + x*D(x))*(1 + 2*x*D(x))*(1 + 3*x*D(x)).

The programs for A071878, there is no canonical definition to state claims against.
-/

/-! ## A071878.P15057807262252752401

`A369502(n)+A155726(A022345(n))`
-/

namespace A071878.P15057807262252752401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369502 n + A155726 (A022345 n).toNat

end

end A071878.P15057807262252752401

/-!
# A071879: G.f. satisfies: A(x) = 1 + x*A(x) + x^3*A(x)^3.

The programs for A071879, there is no canonical definition to state claims against.
-/

/-! ## A071879.P12979181682405905867

`∑[A361932(n)]`
-/

namespace A071879.P12979181682405905867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361932 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071879.P12979181682405905867

/-! ## A071879.P6196566853412503101

`A127905(n+1)/(n+1)`
-/

namespace A071879.P6196566853412503101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127905 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A071879.P6196566853412503101

/-! ## A071879.P10766182828745779697

`A374565(n+1)-A086080(A343668(n))`
-/

namespace A071879.P10766182828745779697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374565 (n + 1) - A086080 (A343668 n).toNat

end

end A071879.P10766182828745779697

/-! ## A071879.P17957484755628892100

`A374565(n+1)+A131531(A026523(n+3))`
-/

namespace A071879.P17957484755628892100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374565 (n + 1) + A131531 (A026523 (n + 3)).toNat

end

end A071879.P17957484755628892100

/-! ## A071879.P7440626623285968997

`A261104(A054515(n))`
-/

namespace A071879.P7440626623285968997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A054515 n).toNat

end

end A071879.P7440626623285968997

/-!
# A071883: A002487(n)*A002487(n+2).

The programs for A071883, the canonical program `A071883.P11933639635216744692` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071883 has offset 0).

The definition of A071883 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002487, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071883.P11933639635216744692

`A002487(n)*A002487(n+2)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A071883

/-- `A002487(n)*A002487(n+2)` -/
def P11933639635216744692.Spec : Prop :=
  ∀ n, P11933639635216744692.a n = A071883 n

theorem P11933639635216744692.correct : P11933639635216744692.Spec := by
  intro n
  simp only [A071883]

end A071883

/-! ## A071883.P499527322104041491

`Δ[A007729(n)]*A002487(n)`
-/

namespace A071883.P499527322104041491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A002487 n

end

end A071883.P499527322104041491

namespace A071883

/-- `Δ[A007729(n)]*A002487(n)` -/
def P499527322104041491.Spec : Prop :=
  ∀ n, P499527322104041491.a n = A071883 n

end A071883

/-! ## A071883.P18149514107381267978

`A071908(n)/Δ[A174868(n)]`
-/

namespace A071883.P18149514107381267978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174868 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071908 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A071883.P18149514107381267978

namespace A071883

/-- `A071908(n)/Δ[A174868(n)]` -/
def P18149514107381267978.Spec : Prop :=
  ∀ n, P18149514107381267978.a n = (A071883 n : ℚ)

end A071883

/-! ## A071883.P7986859099109014072

`A071908(n)/A002487(n+1)`
-/

namespace A071883.P7986859099109014072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071908 n : ℚ) / (A002487 (n + 1) : ℚ)

end

end A071883.P7986859099109014072

namespace A071883

/-- `A071908(n)/A002487(n+1)` -/
def P7986859099109014072.Spec : Prop :=
  ∀ n, P7986859099109014072.a n = (A071883 n : ℚ)

end A071883

/-! ## A071883.P7194688618189079883

`(A071909(n)+A071909(n))/A002487(n+1)`
-/

namespace A071883.P7194688618189079883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071909 n + A071909 n : ℚ) / (A002487 (n + 1) : ℚ)

end

end A071883.P7194688618189079883

namespace A071883

/-- `(A071909(n)+A071909(n))/A002487(n+1)` -/
def P7194688618189079883.Spec : Prop :=
  ∀ n, P7194688618189079883.a n = (A071883 n : ℚ)

end A071883

/-! ## A071883.P13194052977883885887

`A001511(n+1)/A287896(n+1)*A071908(n)`
-/

namespace A071883.P13194052977883885887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001511 (n + 1) : ℚ) / (A287896 (n + 1) : ℚ) * (A071908 n : ℚ)

end

end A071883.P13194052977883885887

namespace A071883

/-- `A001511(n+1)/A287896(n+1)*A071908(n)` -/
def P13194052977883885887.Spec : Prop :=
  ∀ n, P13194052977883885887.a n = (A071883 n : ℚ)

end A071883

/-! ## A071883.P11150885651635078872

`A002487(n)*A070990(2*n)`
-/

namespace A071883.P11150885651635078872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n * A070990 (2 * n)

end

end A071883.P11150885651635078872

namespace A071883

/-- `A002487(n)*A070990(2*n)` -/
def P11150885651635078872.Spec : Prop :=
  ∀ n, P11150885651635078872.a n = A071883 n

end A071883

/-! ## A071883.P18229945039858461147

`A071908(n)/A288003(2*n+1)`
-/

namespace A071883.P18229945039858461147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071908 n : ℚ) / (A288003 (2 * n + 1) : ℚ)

end

end A071883.P18229945039858461147

namespace A071883

/-- `A071908(n)/A288003(2*n+1)` -/
def P18229945039858461147.Spec : Prop :=
  ∀ n, P18229945039858461147.a n = (A071883 n : ℚ)

end A071883

/-! ## A071883.P14090536915772196401

`A070990(2*n)*A283976(2*n)`
-/

namespace A071883.P14090536915772196401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070990 (2 * n) * A283976 (2 * n)

end

end A071883.P14090536915772196401

namespace A071883

/-- `A070990(2*n)*A283976(2*n)` -/
def P14090536915772196401.Spec : Prop :=
  ∀ n, P14090536915772196401.a n = A071883 n

end A071883

/-! ## A071883.P13470506996106601192

`A070990(2*n)*A283977(2*n)`
-/

namespace A071883.P13470506996106601192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070990 (2 * n) * A283977 (2 * n)

end

end A071883.P13470506996106601192

namespace A071883

/-- `A070990(2*n)*A283977(2*n)` -/
def P13470506996106601192.Spec : Prop :=
  ∀ n, P13470506996106601192.a n = A071883 n

end A071883

/-! ## A071883.P13247170946022789264

`A295515(2*n+1)*A295515(2*(n+2))`
-/

namespace A071883.P13247170946022789264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (2 * n + 1) * A295515 (2 * (n + 2))

end

end A071883.P13247170946022789264

namespace A071883

/-- `A295515(2*n+1)*A295515(2*(n+2))` -/
def P13247170946022789264.Spec : Prop :=
  ∀ n, P13247170946022789264.a n = A071883 n

end A071883

/-! ## A071883.P15796852742063521832

`A283976(2*n)*A283976(A103517(n+1))`
-/

namespace A071883.P15796852742063521832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (2 * n) * A283976 (A103517 (n + 1)).toNat

end

end A071883.P15796852742063521832

namespace A071883

/-- `A283976(2*n)*A283976(A103517(n+1))` -/
def P15796852742063521832.Spec : Prop :=
  ∀ n, P15796852742063521832.a n = A071883 n

end A071883

/-!
# A071884: Trajectory of 37 under map x -> A002487(x)*A002487(x+1).

The programs for A071884, there is no canonical definition to state claims against.
-/

/-! ## A071884.P12846886798404026280

`A070871(a(n-1))` with `a(0)=37`
-/

namespace A071884.P12846886798404026280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [37] fun n a =>
  A070871 (a (n - 1)).toNat

end

end A071884.P12846886798404026280

/-!
# A071885: Trajectory of 38 under map x -> A002487(x)*A002487(x+1).

The programs for A071885, there is no canonical definition to state claims against.
-/

/-! ## A071885.P9382925610127092853

`A070871(a(n-1))` with `a(0)=38`
-/

namespace A071885.P9382925610127092853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [38] fun n a =>
  A070871 (a (n - 1)).toNat

end

end A071885.P9382925610127092853

/-!
# A071886: Trajectory of 41 under map x -> A002487(x)*A002487(x+1).

The programs for A071886, there is no canonical definition to state claims against.
-/

/-! ## A071886.P5643288341606691851

`A070871(a(n-1))` with `a(0)=41`
-/

namespace A071886.P5643288341606691851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [41] fun n a =>
  A070871 (a (n - 1)).toNat

end

end A071886.P5643288341606691851

/-!
# A071888: a(1)=2 and for n>1 a(n) = least squarefree m > n with gcd(m,n)>1.

The programs for A071888, there is no canonical definition to state claims against.
-/

/-! ## A071888.P4111296678544343740

`A071890(n+1)+1+n`
-/

namespace A071888.P4111296678544343740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071890 (n + 1) + 1 + (n : ℤ)

end

end A071888.P4111296678544343740

/-! ## A071888.P14813525900724324211

`A071889(n+1)*A071891(n+1)+1+n`
-/

namespace A071888.P14813525900724324211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071889 (n + 1) * A071891 (n + 1) + 1 + (n : ℤ)

end

end A071888.P14813525900724324211

/-! ## A071888.P13025556606042633389

`A071889(n+1)/(n+1)*A071892(n+1)`
-/

namespace A071888.P13025556606042633389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071889 (n + 1) : ℚ) / (n + 1 : ℚ) * (A071892 (n + 1) : ℚ)

end

end A071888.P13025556606042633389

/-! ## A071888.P4233340195583535202

`A076986(A071890(n+1)+n)`
-/

namespace A071888.P4233340195583535202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076986 (A071890 (n + 1) + (n : ℤ)).toNat

end

end A071888.P4233340195583535202

/-! ## A071888.P14002103515605613313

`A079228(A071890(n+1)+n)`
-/

namespace A071888.P14002103515605613313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079228 (A071890 (n + 1) + (n : ℤ)).toNat

end

end A071888.P14002103515605613313

/-!
# A071889: a(n) = gcd(A071888(n), n).

The programs for A071889, there is no canonical definition to state claims against.
-/

/-! ## A071889.P745226616148525405

`gcd(n+1, A071888(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A071889.P745226616148525405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A071888 (n + 1))

end

end A071889.P745226616148525405

/-! ## A071889.P11684003948420335034

`A071890(n+1)/A071891(n+1)`
-/

namespace A071889.P11684003948420335034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071890 (n + 1) : ℚ) / (A071891 (n + 1) : ℚ)

end

end A071889.P11684003948420335034

/-! ## A071889.P18071423239629291151

`gcd(A071890(n+1), A071892(n+1))`
-/

namespace A071889.P18071423239629291151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071890 (n + 1)) (A071892 (n + 1))

end

end A071889.P18071423239629291151

/-! ## A071889.P9442994744261351990

`(A071888(n+1)-(n+1))/A071891(n+1)`
-/

namespace A071889.P9442994744261351990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071888 (n + 1) - (n + 1 : ℤ) : ℚ) / (A071891 (n + 1) : ℚ)

end

end A071889.P9442994744261351990

/-! ## A071889.P3060143768068289119

`(n+1)*A071888(n+1)/A071892(n+1)`
-/

namespace A071889.P3060143768068289119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A071888 (n + 1) : ℚ) / (A071892 (n + 1) : ℚ))

end

end A071889.P3060143768068289119

/-!
# A071890: a(n) = A071888(n)-n.

The programs for A071890, there is no canonical definition to state claims against.
-/

/-! ## A071890.P14142887883804976809

`A071888(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A071890.P14142887883804976809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071888 (n + 1) - (n + 1 : ℤ)

end

end A071890.P14142887883804976809

/-! ## A071890.P9496020839149214659

`A023443(A071888(n+1)-n)`
-/

namespace A071890.P9496020839149214659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A071888 (n + 1) - (n : ℤ)).toNat

end

end A071890.P9496020839149214659

/-! ## A071890.P10806501861645097085

`A071889(n+1)*A071891(n+1)`
-/

namespace A071890.P10806501861645097085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071889 (n + 1) * A071891 (n + 1)

end

end A071890.P10806501861645097085

/-! ## A071890.P2490906428775733953

`gcd(n+1, A071888(n+1))*A071891(n+1)`
-/

namespace A071890.P2490906428775733953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A071888 (n + 1)) : ℤ) * A071891 (n + 1)

end

end A071890.P2490906428775733953

/-! ## A071890.P1548017478151202978

`A117966(A117968(n+1))+A071888(n+1)`
-/

namespace A071890.P1548017478151202978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A117968 (n + 1)).toNat + A071888 (n + 1)

end

end A071890.P1548017478151202978

/-! ## A071890.P12050110297228178453

`A002260(A071888(n+1)+A046092(n))`
-/

namespace A071890.P12050110297228178453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A071888 (n + 1) + A046092 n).toNat

end

end A071890.P12050110297228178453

/-!
# A071891: A071890(n)/A071889(n).

The programs for A071891, there is no canonical definition to state claims against.
-/

/-! ## A071891.P5087367313650432914

`A071890(n+1)/A071889(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A071891.P5087367313650432914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071890 (n + 1) : ℚ) / (A071889 (n + 1) : ℚ)

end

end A071891.P5087367313650432914

/-! ## A071891.P17323655184425104463

`(A071888(n+1)-(n+1))/A071889(n+1)`
-/

namespace A071891.P17323655184425104463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071888 (n + 1) - (n + 1 : ℤ) : ℚ) / (A071889 (n + 1) : ℚ)

end

end A071891.P17323655184425104463

/-! ## A071891.P13912953245656085248

`A071890(n+1)/gcd(n+1, A071888(n+1))`
-/

namespace A071891.P13912953245656085248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071890 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A071888 (n + 1)) : ℚ)

end

end A071891.P13912953245656085248

/-! ## A071891.P11650022211517654133

`A071890(n+1)/gcd(A007947(n+1), A071890(n+1))`
-/

namespace A071891.P11650022211517654133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071890 (n + 1) : ℚ) / (Int.gcd (A007947 (n + 1)) (A071890 (n + 1)) : ℚ)

end

end A071891.P11650022211517654133

/-! ## A071891.P12078630727485036818

`lcm(A071890(n+1), A071892(n+1))/A071892(n+1)`
-/

namespace A071891.P12078630727485036818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A071890 (n + 1)) (A071892 (n + 1)) : ℚ) / (A071892 (n + 1) : ℚ)

end

end A071891.P12078630727485036818

/-!
# A071892: a(n) = lcm(A071888(n), n).

The programs for A071892, there is no canonical definition to state claims against.
-/

/-! ## A071892.P7358835017189523612

`lcm(n+1, A071888(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A071892.P7358835017189523612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A071888 (n + 1))

end

end A071892.P7358835017189523612

/-! ## A071892.P7078833470038563331

`(n+1)*A071888(n+1)/A071889(n+1)`
-/

namespace A071892.P7078833470038563331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A071888 (n + 1) : ℚ) / (A071889 (n + 1) : ℚ))

end

end A071892.P7078833470038563331

/-! ## A071892.P8620132340670901786

`lcm(A071890(n+1)+1+n, A117966(A117968(n+1)))`
-/

namespace A071892.P8620132340670901786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A071890 (n + 1) + 1 + (n : ℤ)) (A117966 (A117968 (n + 1)).toNat)

end

end A071892.P8620132340670901786

/-! ## A071892.P10261599570956006002

`lcm(A071890(n+1)+1+n, A242112(A005843(n)))`
-/

namespace A071892.P10261599570956006002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A071890 (n + 1) + 1 + (n : ℤ)) (A242112 (A005843 n).toNat)

end

end A071892.P10261599570956006002

/-! ## A071892.P5381853420936023986

`lcm(A008611(A023443(3*n+1)), A076986(A071890(n+1)+n))`
-/

namespace A071892.P5381853420936023986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008611 (A023443 (3 * n + 1)).toNat) (A076986 (A071890 (n + 1) + (n : ℤ)).toNat)

end

end A071892.P5381853420936023986

/-!
# A071893: a(n) = Min_{k | A071891(k) = n}.

The programs for A071893, there is no canonical definition to state claims against.
-/

/-! ## A071893.P11462394686889720003

`A261231(∑[A000149(n)²])`
-/

namespace A071893.P11462394686889720003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000149 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261231 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A071893.P11462394686889720003

/-!
# A071894: Largest positive primitive root (

The programs for A071894, there is no canonical definition to state claims against.
-/

/-! ## A071894.P14467780871812249489

`Δ[A007504(n)]-A002199(n+1)`
-/

namespace A071894.P14467780871812249489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002199 (n + 1)

end

end A071894.P14467780871812249489

/-! ## A071894.P2327328274419017227

`A128906(n+1)+A001918(n+1)`
-/

namespace A071894.P2327328274419017227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128906 (n + 1) + A001918 (n + 1)

end

end A071894.P2327328274419017227

/-! ## A071894.P15407431526446166551

`A000040(n+1)-A002199(n+1)`
-/

namespace A071894.P15407431526446166551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A002199 (n + 1)

end

end A071894.P15407431526446166551

/-! ## A071894.P12258326121108846429

`∑[A054541(n+1)]-A002199(n+1)`
-/

namespace A071894.P12258326121108846429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002199 (n + 1)

end

end A071894.P12258326121108846429

/-! ## A071894.P292984099989853534

`A008864(n+1)-(A002199(n+1)+1)`
-/

namespace A071894.P292984099989853534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - (A002199 (n + 1) + 1)

end

end A071894.P292984099989853534

/-! ## A071894.P12896945712367419514

`A046146(p?[comp[n²]])`
-/

namespace A071894.P12896945712367419514
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A071894.P12896945712367419514

/-! ## A071894.P3670858523827142856

`A046146(A000040(n+1))`
-/

namespace A071894.P3670858523827142856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 (A000040 (n + 1)).toNat

end

end A071894.P3670858523827142856

/-! ## A071894.P10466269748741903242

`A046146(A008578(n+2))`
-/

namespace A071894.P10466269748741903242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 (A008578 (n + 2)).toNat

end

end A071894.P10466269748741903242

/-! ## A071894.P3150196208320893419

`A046146(A182986(n+2))`
-/

namespace A071894.P3150196208320893419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 (A182986 (n + 2)).toNat

end

end A071894.P3150196208320893419

/-! ## A071894.P3168764173312263086

`A046146(record[A006530(n+2)])`
-/

namespace A071894.P3168764173312263086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071894.P3168764173312263086

/-! ## A071894.P17410430696136055366

`A046146(record[A014963(n+2)])`
-/

namespace A071894.P17410430696136055366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071894.P17410430696136055366

/-! ## A071894.P6648574474459970090

`A046146(record[A020639(n+2)])`
-/

namespace A071894.P6648574474459970090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071894.P6648574474459970090

/-! ## A071894.P10513474165672598082

`A247176(record[A006530(n+2)])`
-/

namespace A071894.P10513474165672598082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247176 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071894.P10513474165672598082

/-! ## A071894.P922545508737493265

`A247176(record[A014963(n+2)])`
-/

namespace A071894.P922545508737493265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247176 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071894.P922545508737493265

/-! ## A071894.P3961485544466538211

`A247176(record[A020639(n+2)])`
-/

namespace A071894.P3961485544466538211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247176 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071894.P3961485544466538211

/-! ## A071894.P11875600463887488717

`A060749(A333315(n+1))`
-/

namespace A071894.P11875600463887488717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060749 (A333315 (n + 1)).toNat

end

end A071894.P11875600463887488717

/-! ## A071894.P8168932087207532250

`A060749(∑[A008330(n+1)])`
-/

namespace A071894.P8168932087207532250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060749 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A071894.P8168932087207532250

/-!
# A071895: CONTINUANT transform of Fibonacci number 1, 2, 3, 5, 8, ...

The programs for A071895, there is no canonical definition to state claims against.
-/

/-! ## A071895.P13204419626043091449

`A135829(n+2)`
-/

namespace A071895.P13204419626043091449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135829 (n + 2)

end

end A071895.P13204419626043091449

/-! ## A071895.P5524440957866308087

`∑[record[Δ[A135829(n)]]]`
-/

namespace A071895.P5524440957866308087
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135829 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071895.P5524440957866308087

/-! ## A071895.P15391681092656878091

`a(n-2)+a(n-1)*A000045(n+2)` with `a(0)=1, a(1)=3`
-/

namespace A071895.P15391681092656878091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + a (n - 1) * A000045 (n + 2)

end

end A071895.P15391681092656878091

/-! ## A071895.P10124363085727840931

`record[A135829(A007599(n))]`
-/

namespace A071895.P10124363085727840931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135829 (A007599 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071895.P10124363085727840931

/-! ## A071895.P8818331283783181585

`record[A135829(A008611(n))]`
-/

namespace A071895.P8818331283783181585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135829 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071895.P8818331283783181585

/-!
# A071896: CONTINUANT transform of triangular numbers 1, 3, 6, 10, ...

The programs for A071896, there is no canonical definition to state claims against.
-/

/-! ## A071896.P16612153286203517894

`∏[∑[n+1]+1/a(n-1)]` with `a(0)=1`
-/

namespace A071896.P16612153286203517894
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) + 1 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A071896.P16612153286203517894

/-! ## A071896.P14736704530806701425

`a(n-2)+a(n-1)*∑[n+1]` with `a(0)=1, a(1)=4`
-/

namespace A071896.P14736704530806701425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A071896.P14736704530806701425

/-! ## A071896.P15777295979480762604

`a(n-2)+C(n+2, 2)*a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A071896.P15777295979480762604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + Nat.choose (n + 2) 2 * a (n - 1)

end

end A071896.P15777295979480762604

/-! ## A071896.P11381731652790774359

`A001052(n+2)-A001046(n+2)`
-/

namespace A071896.P11381731652790774359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001052 (n + 2) - A001046 (n + 2)

end

end A071896.P11381731652790774359

/-!
# A071897: CONTINUANT transform of Catalan numbers 1, 2, 5, 14, 42, ...

The programs for A071897, there is no canonical definition to state claims against.
-/

/-! ## A071897.P7454091426437606125

`a(n-2)+A000108(n+1)*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A071897.P7454091426437606125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + A000108 (n + 1) * a (n - 1)

end

end A071897.P7454091426437606125

/-!
# A071898: CONTINUANT transform of A002487: 1, 1, 2, 1, 3, 2, ...

The programs for A071898, the canonical program `A071898.P4932306188274408027` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071898 has offset 1).

The definition of A071898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071898.P4932306188274408027

`a(n-2)+a(n-1)*A002487(n+1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A071898

/-- `a(n-2)+a(n-1)*A002487(n+1)` -/
def P4932306188274408027.Spec : Prop :=
  ∀ n, P4932306188274408027.a n = A071898 (n + 1)

theorem P4932306188274408027.correct : P4932306188274408027.Spec := by
  intro n
  simp only [A071898, Nat.add_sub_cancel]

end A071898

/-! ## A071898.P16960502985184871700

`A093875(∑[∏[A095728(n+1)]])`
-/

namespace A071898.P16960502985184871700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095728 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093875 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A071898.P16960502985184871700

namespace A071898

/-- `A093875(∑[∏[A095728(n+1)]])` -/
def P16960502985184871700.Spec : Prop :=
  ∀ n, P16960502985184871700.a n = A071898 (n + 1)

end A071898

/-! ## A071898.P4761975422832337485

`A007306(A098790(n)*A324166(n))`
-/

namespace A071898.P4761975422832337485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A098790 n * A324166 n).toNat

end

end A071898.P4761975422832337485

namespace A071898

/-- `A007306(A098790(n)*A324166(n))` -/
def P4761975422832337485.Spec : Prop :=
  ∀ n, P4761975422832337485.a n = A071898 (n + 1)

end A071898

/-!
# A071899: a(0)=1 and for n>0: a(n) = least prime>a(n-1) of form 1+k*n.

The programs for A071899, there is no canonical definition to state claims against.
-/

/-! ## A071899.P3705408312846175718

`record[A095171(n+1)/A075462(n+1)]`
-/

namespace A071899.P3705408312846175718
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095171 (n + 1) : ℚ) / (A075462 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071899.P3705408312846175718

/-! ## A071899.P13486378774086748101

`eq[A075462(n+1), A320732(n+1)]+1`
-/

namespace A071899.P13486378774086748101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320732 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071899.P13486378774086748101

