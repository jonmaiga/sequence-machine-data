import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022

/-!
# A142200: Primes congruent to 3 mod 41.

The programs for A142200, the canonical program `A142200.P17436572599243192909` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142200 has offset 1).

The definition of A142200 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1963 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142200.P17436572599243192909

`p?[41*n+3]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142200

/-- `p?[41*n+3]` -/
def P17436572599243192909.Spec : Prop :=
  ∀ n, (P17436572599243192909.a n : ℤ) = A142200 (n + 1)

theorem P17436572599243192909.correct : P17436572599243192909.Spec := by
  intro n
  simp only [A142200, Nat.add_sub_cancel]

end A142200

/-! ## A142200.P6470245177694594282

`or(1, p?[a(n-1)+41])` with `a(0)=3`
-/

namespace A142200.P6470245177694594282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 41

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142200.P6470245177694594282

namespace A142200

/-- `or(1, p?[a(n-1)+41])` -/
def P6470245177694594282.Spec : Prop :=
  ∀ n, (P6470245177694594282.a n : ℤ) = A142200 (n + 1)

end A142200

/-! ## A142200.P4220202803058831442

`or(1, p?[A249674(n)+A017425(n)])`
-/

namespace A142200.P4220202803058831442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142200.P4220202803058831442

namespace A142200

/-- `or(1, p?[A249674(n)+A017425(n)])` -/
def P4220202803058831442.Spec : Prop :=
  ∀ n, P4220202803058831442.a n = A142200 (n + 1)

end A142200

/-! ## A142200.P15206187522712945607

`p?[A249674(n)+A017425(n)]%A000124(n+5)²`
-/

namespace A142200.P15206187522712945607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000124 (n + 5) ^ 2)

end

end A142200.P15206187522712945607

namespace A142200

/-- `p?[A249674(n)+A017425(n)]%A000124(n+5)²` -/
def P15206187522712945607.Spec : Prop :=
  ∀ n, P15206187522712945607.a n = A142200 (n + 1)

end A142200

/-! ## A142200.P13868916403577852640

`A255131((-1)^n+1)+p?[A249674(n)+A017425(n)]`
-/

namespace A142200.P13868916403577852640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255131 ((-1) ^ n + 1).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142200.P13868916403577852640

namespace A142200

/-- `A255131((-1)^n+1)+p?[A249674(n)+A017425(n)]` -/
def P13868916403577852640.Spec : Prop :=
  ∀ n, P13868916403577852640.a n = A142200 (n + 1)

end A142200

/-! ## A142200.P599498849790596265

`A001414(p?[A249674(n)+A017425(n)])`
-/

namespace A142200.P599498849790596265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142200.P599498849790596265

namespace A142200

/-- `A001414(p?[A249674(n)+A017425(n)])` -/
def P599498849790596265.Spec : Prop :=
  ∀ n, P599498849790596265.a n = A142200 (n + 1)

end A142200

/-! ## A142200.P14517133407483347411

`A003959(p?[A249674(n)+A017425(n)])-1`
-/

namespace A142200.P14517133407483347411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A142200.P14517133407483347411

namespace A142200

/-- `A003959(p?[A249674(n)+A017425(n)])-1` -/
def P14517133407483347411.Spec : Prop :=
  ∀ n, P14517133407483347411.a n = A142200 (n + 1)

end A142200

/-!
# A142201: Primes congruent to 4 mod 41.

The programs for A142201, the canonical program `A142201.P1722917492615738082` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142201 has offset 1).

The definition of A142201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1953 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142201.P1722917492615738082

`p?[41*n+4]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142201

/-- `p?[41*n+4]` -/
def P1722917492615738082.Spec : Prop :=
  ∀ n, (P1722917492615738082.a n : ℤ) = A142201 (n + 1)

theorem P1722917492615738082.correct : P1722917492615738082.Spec := by
  intro n
  simp only [A142201, Nat.add_sub_cancel]

end A142201

/-! ## A142201.P16017482337148264007

`or(1, p?[A249674(n)+A017437(n)])`
-/

namespace A142201.P16017482337148264007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142201.P16017482337148264007

namespace A142201

/-- `or(1, p?[A249674(n)+A017437(n)])` -/
def P16017482337148264007.Spec : Prop :=
  ∀ n, P16017482337148264007.a n = A142201 (n + 1)

end A142201

/-! ## A142201.P3327606531933944001

`A000027(p?[A158066(n+1)-A004770(n+1)])`
-/

namespace A142201.P3327606531933944001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - A004770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142201.P3327606531933944001

namespace A142201

/-- `A000027(p?[A158066(n+1)-A004770(n+1)])` -/
def P3327606531933944001.Spec : Prop :=
  ∀ n, P3327606531933944001.a n = A142201 (n + 1)

end A142201

/-! ## A142201.P11657345197464625873

`A000038(n+1)+p?[A249674(n)+A017437(n)]`
-/

namespace A142201.P11657345197464625873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142201.P11657345197464625873

namespace A142201

/-- `A000038(n+1)+p?[A249674(n)+A017437(n)]` -/
def P11657345197464625873.Spec : Prop :=
  ∀ n, P11657345197464625873.a n = A142201 (n + 1)

end A142201

/-! ## A142201.P10915415552024391272

`A000027(p?[A124388(n)+A002264(n)])`
-/

namespace A142201.P10915415552024391272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n + A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142201.P10915415552024391272

namespace A142201

/-- `A000027(p?[A124388(n)+A002264(n)])` -/
def P10915415552024391272.Spec : Prop :=
  ∀ n, P10915415552024391272.a n = A142201 (n + 1)

end A142201

/-! ## A142201.P4971519259195877137

`∩[A171141(2*n+1)-2, A038919(n+2)]`
-/

namespace A142201.P4971519259195877137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (2 * n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038919 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142201.P4971519259195877137

namespace A142201

/-- `∩[A171141(2*n+1)-2, A038919(n+2)]` -/
def P4971519259195877137.Spec : Prop :=
  ∀ n, (P4971519259195877137.a n : ℤ) = A142201 (n + 1)

end A142201

/-! ## A142201.P2271114429956932452

`∩[A171141(2*n+1)-2, A191030(n+2)]`
-/

namespace A142201.P2271114429956932452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (2 * n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191030 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142201.P2271114429956932452

namespace A142201

/-- `∩[A171141(2*n+1)-2, A191030(n+2)]` -/
def P2271114429956932452.Spec : Prop :=
  ∀ n, (P2271114429956932452.a n : ℤ) = A142201 (n + 1)

end A142201

/-! ## A142201.P14195564532043807394

`A008472(p?[A124388(n)+A002264(n)])`
-/

namespace A142201.P14195564532043807394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n + A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142201.P14195564532043807394

namespace A142201

/-- `A008472(p?[A124388(n)+A002264(n)])` -/
def P14195564532043807394.Spec : Prop :=
  ∀ n, P14195564532043807394.a n = A142201 (n + 1)

end A142201

/-! ## A142201.P17396915461160366898

`A008472(p?[A128470(n)+A017425(n)])`
-/

namespace A142201.P17396915461160366898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n + A017425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142201.P17396915461160366898

namespace A142201

/-- `A008472(p?[A128470(n)+A017425(n)])` -/
def P17396915461160366898.Spec : Prop :=
  ∀ n, P17396915461160366898.a n = A142201 (n + 1)

end A142201

/-! ## A142201.P14273935259159612914

`A000265(p?[A249674(n)+A017437(n)])`
-/

namespace A142201.P14273935259159612914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142201.P14273935259159612914

namespace A142201

/-- `A000265(p?[A249674(n)+A017437(n)])` -/
def P14273935259159612914.Spec : Prop :=
  ∀ n, P14273935259159612914.a n = A142201 (n + 1)

end A142201

/-! ## A142201.P6746503953383605820

`A007947(p?[A158066(n+1)-A004770(n+1)])`
-/

namespace A142201.P6746503953383605820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - A004770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142201.P6746503953383605820

namespace A142201

/-- `A007947(p?[A158066(n+1)-A004770(n+1)])` -/
def P6746503953383605820.Spec : Prop :=
  ∀ n, P6746503953383605820.a n = A142201 (n + 1)

end A142201

/-!
# A142202: Primes congruent to 5 mod 41.

The programs for A142202, the canonical program `A142202.P3070907779567306481` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142202 has offset 1).

The definition of A142202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1950 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142202.P3070907779567306481

`p?[41*n+5]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142202

/-- `p?[41*n+5]` -/
def P3070907779567306481.Spec : Prop :=
  ∀ n, (P3070907779567306481.a n : ℤ) = A142202 (n + 1)

theorem P3070907779567306481.correct : P3070907779567306481.Spec := by
  intro n
  simp only [A142202, Nat.add_sub_cancel]

end A142202

/-! ## A142202.P9679770536753692868

`or(1, p?[A248572(n)+A017569(n)])`
-/

namespace A142202.P9679770536753692868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A017569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142202.P9679770536753692868

namespace A142202

/-- `or(1, p?[A248572(n)+A017569(n)])` -/
def P9679770536753692868.Spec : Prop :=
  ∀ n, P9679770536753692868.a n = A142202 (n + 1)

end A142202

/-! ## A142202.P14115572183912320911

`or(1, p?[A249674(n)+A017449(n)])`
-/

namespace A142202.P14115572183912320911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142202.P14115572183912320911

namespace A142202

/-- `or(1, p?[A249674(n)+A017449(n)])` -/
def P14115572183912320911.Spec : Prop :=
  ∀ n, P14115572183912320911.a n = A142202 (n + 1)

end A142202

/-! ## A142202.P15256648765118030423

`p?[A249674(n)+A017449(n)]%A017258(n)`
-/

namespace A142202.P15256648765118030423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017258 n)

end

end A142202.P15256648765118030423

namespace A142202

/-- `p?[A249674(n)+A017449(n)]%A017258(n)` -/
def P15256648765118030423.Spec : Prop :=
  ∀ n, P15256648765118030423.a n = A142202 (n + 1)

end A142202

/-! ## A142202.P8873046060011737479

`p?[A248572(n)+A017569(n)]%A053742(n)²`
-/

namespace A142202.P8873046060011737479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A017569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A053742 n ^ 2)

end

end A142202.P8873046060011737479

namespace A142202

/-- `p?[A248572(n)+A017569(n)]%A053742(n)²` -/
def P8873046060011737479.Spec : Prop :=
  ∀ n, P8873046060011737479.a n = A142202 (n + 1)

end A142202

/-! ## A142202.P2377992171969231588

`p?[A249674(n)+A017449(n)]+A005843(n)%2`
-/

namespace A142202.P2377992171969231588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A005843 n) 2

end

end A142202.P2377992171969231588

namespace A142202

/-- `p?[A249674(n)+A017449(n)]+A005843(n)%2` -/
def P2377992171969231588.Spec : Prop :=
  ∀ n, P2377992171969231588.a n = A142202 (n + 1)

end A142202

/-! ## A142202.P2659327949855645105

`p?[A249674(n)+A017449(n)]+A016825(n)%2`
-/

namespace A142202.P2659327949855645105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A016825 n) 2

end

end A142202.P2659327949855645105

namespace A142202

/-- `p?[A249674(n)+A017449(n)]+A016825(n)%2` -/
def P2659327949855645105.Spec : Prop :=
  ∀ n, P2659327949855645105.a n = A142202 (n + 1)

end A142202

/-! ## A142202.P9581062011108109985

`p?[A248572(n)+A017569(n)]/(A002522(n)-n²)`
-/

namespace A142202.P9581062011108109985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A017569 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A002522 n - (n ^ 2 : ℤ) : ℚ)

end

end A142202.P9581062011108109985

namespace A142202

/-- `p?[A248572(n)+A017569(n)]/(A002522(n)-n²)` -/
def P9581062011108109985.Spec : Prop :=
  ∀ n, P9581062011108109985.a n = (A142202 (n + 1) : ℚ)

end A142202

/-! ## A142202.P8060827355126603715

`p?[A249674(n)+A017449(n)]+A000096(n)%((-1)^n)`
-/

namespace A142202.P8060827355126603715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A000096 n) ((-1) ^ n)

end

end A142202.P8060827355126603715

namespace A142202

/-- `p?[A249674(n)+A017449(n)]+A000096(n)%((-1)^n)` -/
def P8060827355126603715.Spec : Prop :=
  ∀ n, P8060827355126603715.a n = A142202 (n + 1)

end A142202

/-! ## A142202.P8119326770321137186

`p?[A249674(n)+A017449(n)]+A005408(n)%((-1)^n)`
-/

namespace A142202.P8119326770321137186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A005408 n) ((-1) ^ n)

end

end A142202.P8119326770321137186

namespace A142202

/-- `p?[A249674(n)+A017449(n)]+A005408(n)%((-1)^n)` -/
def P8119326770321137186.Spec : Prop :=
  ∀ n, P8119326770321137186.a n = A142202 (n + 1)

end A142202

/-! ## A142202.P8507296180221241508

`p?[A249674(n)+A017449(n)]+A024000(n)%((-1)^n)`
-/

namespace A142202.P8507296180221241508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A024000 n) ((-1) ^ n)

end

end A142202.P8507296180221241508

namespace A142202

/-- `p?[A249674(n)+A017449(n)]+A024000(n)%((-1)^n)` -/
def P8507296180221241508.Spec : Prop :=
  ∀ n, P8507296180221241508.a n = A142202 (n + 1)

end A142202

/-! ## A142202.P12481260482423607759

`p?[A249674(n)+A017449(n)]+A064429(n)%((-1)^n)`
-/

namespace A142202.P12481260482423607759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A064429 n) ((-1) ^ n)

end

end A142202.P12481260482423607759

namespace A142202

/-- `p?[A249674(n)+A017449(n)]+A064429(n)%((-1)^n)` -/
def P12481260482423607759.Spec : Prop :=
  ∀ n, P12481260482423607759.a n = A142202 (n + 1)

end A142202

/-! ## A142202.P4599669855388548303

`p?[A249674(n)+A017449(n)]+A130321(n)%((-1)^n)`
-/

namespace A142202.P4599669855388548303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A130321 n) ((-1) ^ n)

end

end A142202.P4599669855388548303

namespace A142202

/-- `p?[A249674(n)+A017449(n)]+A130321(n)%((-1)^n)` -/
def P4599669855388548303.Spec : Prop :=
  ∀ n, P4599669855388548303.a n = A142202 (n + 1)

end A142202

/-! ## A142202.P14756511662519970606

`∩[A171141(2*n+1)-1, A038919(n+2)]`
-/

namespace A142202.P14756511662519970606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (2 * n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038919 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142202.P14756511662519970606

namespace A142202

/-- `∩[A171141(2*n+1)-1, A038919(n+2)]` -/
def P14756511662519970606.Spec : Prop :=
  ∀ n, (P14756511662519970606.a n : ℤ) = A142202 (n + 1)

end A142202

/-! ## A142202.P11557244949519652409

`∩[A171141(2*n+1)-1, A191030(n+2)]`
-/

namespace A142202.P11557244949519652409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (2 * n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191030 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142202.P11557244949519652409

namespace A142202

/-- `∩[A171141(2*n+1)-1, A191030(n+2)]` -/
def P11557244949519652409.Spec : Prop :=
  ∀ n, (P11557244949519652409.a n : ℤ) = A142202 (n + 1)

end A142202

/-! ## A142202.P10021076107308793837

`A007913(p?[A091574(n)+A044102(n)])`
-/

namespace A142202.P10021076107308793837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091574 n + A044102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142202.P10021076107308793837

namespace A142202

/-- `A007913(p?[A091574(n)+A044102(n)])` -/
def P10021076107308793837.Spec : Prop :=
  ∀ n, P10021076107308793837.a n = A142202 (n + 1)

end A142202

/-! ## A142202.P14211793972204509001

`A000265(p?[A248572(n)+A017569(n)])`
-/

namespace A142202.P14211793972204509001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A017569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142202.P14211793972204509001

namespace A142202

/-- `A000265(p?[A248572(n)+A017569(n)])` -/
def P14211793972204509001.Spec : Prop :=
  ∀ n, P14211793972204509001.a n = A142202 (n + 1)

end A142202

/-! ## A142202.P13351536073056356564

`A001414(p?[A249674(n)+A017449(n)])`
-/

namespace A142202.P13351536073056356564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142202.P13351536073056356564

namespace A142202

/-- `A001414(p?[A249674(n)+A017449(n)])` -/
def P13351536073056356564.Spec : Prop :=
  ∀ n, P13351536073056356564.a n = A142202 (n + 1)

end A142202

/-! ## A142202.P1911880900283316014

`A007947(p?[A248572(n)+A017569(n)])`
-/

namespace A142202.P1911880900283316014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A017569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142202.P1911880900283316014

namespace A142202

/-- `A007947(p?[A248572(n)+A017569(n)])` -/
def P1911880900283316014.Spec : Prop :=
  ∀ n, P1911880900283316014.a n = A142202 (n + 1)

end A142202

/-! ## A142202.P4860277334622239022

`A008472(p?[A249674(n)+A017449(n)])`
-/

namespace A142202.P4860277334622239022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142202.P4860277334622239022

namespace A142202

/-- `A008472(p?[A249674(n)+A017449(n)])` -/
def P4860277334622239022.Spec : Prop :=
  ∀ n, P4860277334622239022.a n = A142202 (n + 1)

end A142202

/-!
# A142203: Primes congruent to 6 mod 41.

The programs for A142203, the canonical program `A142203.P6531071673318381671` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142203 has offset 1).

The definition of A142203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1957 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142203.P6531071673318381671

`p?[41*n+6]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142203

/-- `p?[41*n+6]` -/
def P6531071673318381671.Spec : Prop :=
  ∀ n, (P6531071673318381671.a n : ℤ) = A142203 (n + 1)

theorem P6531071673318381671.correct : P6531071673318381671.Spec := by
  intro n
  simp only [A142203, Nat.add_sub_cancel]

end A142203

/-! ## A142203.P17297512354328839789

`A000027(p?[A128470(n)+A017449(n)])`
-/

namespace A142203.P17297512354328839789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n + A017449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142203.P17297512354328839789

namespace A142203

/-- `A000027(p?[A128470(n)+A017449(n)])` -/
def P17297512354328839789.Spec : Prop :=
  ∀ n, P17297512354328839789.a n = A142203 (n + 1)

end A142203

/-! ## A142203.P1580334497015407966

`p?[A128470(n)+A017449(n)]/A034947(n+1)²`
-/

namespace A142203.P1580334497015407966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n + A017449 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A034947 (n + 1) ^ 2 : ℚ)

end

end A142203.P1580334497015407966

namespace A142203

/-- `p?[A128470(n)+A017449(n)]/A034947(n+1)²` -/
def P1580334497015407966.Spec : Prop :=
  ∀ n, P1580334497015407966.a n = (A142203 (n + 1) : ℚ)

end A142203

/-! ## A142203.P16493404096349407097

`∩[A038920(n+1), A171141(n+1)]`
-/

namespace A142203.P16493404096349407097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142203.P16493404096349407097

namespace A142203

/-- `∩[A038920(n+1), A171141(n+1)]` -/
def P16493404096349407097.Spec : Prop :=
  ∀ n, (P16493404096349407097.a n : ℤ) = A142203 (n + 1)

end A142203

/-! ## A142203.P3688820059132883631

`record[A006530(41*(n+1)+6)]`
-/

namespace A142203.P3688820059132883631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (41 * (n + 1) + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142203.P3688820059132883631

namespace A142203

/-- `record[A006530(41*(n+1)+6)]` -/
def P3688820059132883631.Spec : Prop :=
  ∀ n, P3688820059132883631.a n = A142203 (n + 1)

end A142203

/-! ## A142203.P7652783652508549897

`record[A020639(41*(n+1)+6)]`
-/

namespace A142203.P7652783652508549897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (41 * (n + 1) + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142203.P7652783652508549897

namespace A142203

/-- `record[A020639(41*(n+1)+6)]` -/
def P7652783652508549897.Spec : Prop :=
  ∀ n, P7652783652508549897.a n = A142203 (n + 1)

end A142203

/-! ## A142203.P18090203853107299593

`filter[A171141(2*n+1), A010051(#)]`
-/

namespace A142203.P18090203853107299593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A142203.P18090203853107299593

namespace A142203

/-- `filter[A171141(2*n+1), A010051(#)]` -/
def P18090203853107299593.Spec : Prop :=
  ∀ n, P18090203853107299593.a n = A142203 (n + 1)

end A142203

/-! ## A142203.P18306227844400032205

`filter[A171141(2*n+1), A069513(#)]`
-/

namespace A142203.P18306227844400032205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A142203.P18306227844400032205

namespace A142203

/-- `filter[A171141(2*n+1), A069513(#)]` -/
def P18306227844400032205.Spec : Prop :=
  ∀ n, P18306227844400032205.a n = A142203 (n + 1)

end A142203

/-! ## A142203.P17341295592258180214

`filter[A171141(2*n+1), A355937(#)]`
-/

namespace A142203.P17341295592258180214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A142203.P17341295592258180214

namespace A142203

/-- `filter[A171141(2*n+1), A355937(#)]` -/
def P17341295592258180214.Spec : Prop :=
  ∀ n, P17341295592258180214.a n = A142203 (n + 1)

end A142203

/-! ## A142203.P16440865025381278463

`A008472(p?[A128470(n)+A017449(n)])`
-/

namespace A142203.P16440865025381278463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n + A017449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142203.P16440865025381278463

namespace A142203

/-- `A008472(p?[A128470(n)+A017449(n)])` -/
def P16440865025381278463.Spec : Prop :=
  ∀ n, P16440865025381278463.a n = A142203 (n + 1)

end A142203

/-! ## A142203.P16662667636592456934

`record[A008475(A017137(5*(n+1))+n+1)]`
-/

namespace A142203.P16662667636592456934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A017137 (5 * (n + 1)) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142203.P16662667636592456934

namespace A142203

/-- `record[A008475(A017137(5*(n+1))+n+1)]` -/
def P16662667636592456934.Spec : Prop :=
  ∀ n, P16662667636592456934.a n = A142203 (n + 1)

end A142203

/-! ## A142203.P4915010380850850412

`filter[A171141(2*n+1), A302777(#)]`
-/

namespace A142203.P4915010380850850412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A142203.P4915010380850850412

namespace A142203

/-- `filter[A171141(2*n+1), A302777(#)]` -/
def P4915010380850850412.Spec : Prop :=
  ∀ n, P4915010380850850412.a n = A142203 (n + 1)

end A142203

/-! ## A142203.P629241094792492009

`filter[A171141(2*n+1), A345950(#)]`
-/

namespace A142203.P629241094792492009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A142203.P629241094792492009

namespace A142203

/-- `filter[A171141(2*n+1), A345950(#)]` -/
def P629241094792492009.Spec : Prop :=
  ∀ n, P629241094792492009.a n = A142203 (n + 1)

end A142203

/-! ## A142203.P7611623338752969219

`filter[A171141(2*n+1), A353817(#)]`
-/

namespace A142203.P7611623338752969219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A142203.P7611623338752969219

namespace A142203

/-- `filter[A171141(2*n+1), A353817(#)]` -/
def P7611623338752969219.Spec : Prop :=
  ∀ n, P7611623338752969219.a n = A142203 (n + 1)

end A142203

/-!
# A142204: Primes congruent to 7 mod 41.

The programs for A142204, the canonical program `A142204.P796493894810743383` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142204 has offset 1).

The definition of A142204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1942 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142204.P796493894810743383

`p?[41*n+7]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142204

/-- `p?[41*n+7]` -/
def P796493894810743383.Spec : Prop :=
  ∀ n, (P796493894810743383.a n : ℤ) = A142204 (n + 1)

theorem P796493894810743383.correct : P796493894810743383.Spec := by
  intro n
  simp only [A142204, Nat.add_sub_cancel]

end A142204

/-! ## A142204.P7467341753092851962

`or(1, p?[a(n-1)+41])` with `a(0)=7`
-/

namespace A142204.P7467341753092851962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  f1 (n - 1) + 41

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142204.P7467341753092851962

namespace A142204

/-- `or(1, p?[a(n-1)+41])` -/
def P7467341753092851962.Spec : Prop :=
  ∀ n, (P7467341753092851962.a n : ℤ) = A142204 (n + 1)

end A142204

/-! ## A142204.P14784219501743481189

`or(1, p?[A249674(n)+A017473(n)])`
-/

namespace A142204.P14784219501743481189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142204.P14784219501743481189

namespace A142204

/-- `or(1, p?[A249674(n)+A017473(n)])` -/
def P14784219501743481189.Spec : Prop :=
  ∀ n, P14784219501743481189.a n = A142204 (n + 1)

end A142204

/-! ## A142204.P8114273155035637288

`A000007(n+1)+p?[A249674(n)+A017473(n)]`
-/

namespace A142204.P8114273155035637288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142204.P8114273155035637288

namespace A142204

/-- `A000007(n+1)+p?[A249674(n)+A017473(n)]` -/
def P8114273155035637288.Spec : Prop :=
  ∀ n, P8114273155035637288.a n = A142204 (n + 1)

end A142204

/-! ## A142204.P18142595312815454585

`p?[A249674(n)+A017473(n)]%A000389(n+11)`
-/

namespace A142204.P18142595312815454585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000389 (n + 11))

end

end A142204.P18142595312815454585

namespace A142204

/-- `p?[A249674(n)+A017473(n)]%A000389(n+11)` -/
def P18142595312815454585.Spec : Prop :=
  ∀ n, P18142595312815454585.a n = A142204 (n + 1)

end A142204

/-! ## A142204.P127787506649874327

`∩[A171141(2*n+1)+1, A038920(n+2)]`
-/

namespace A142204.P127787506649874327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038920 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142204.P127787506649874327

namespace A142204

/-- `∩[A171141(2*n+1)+1, A038920(n+2)]` -/
def P127787506649874327.Spec : Prop :=
  ∀ n, (P127787506649874327.a n : ℤ) = A142204 (n + 1)

end A142204

/-! ## A142204.P1386369639666303271

`record[A020639(82*n+7)]`
-/

namespace A142204.P1386369639666303271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (82 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142204.P1386369639666303271

namespace A142204

/-- `record[A020639(82*n+7)]` -/
def P1386369639666303271.Spec : Prop :=
  ∀ n, P1386369639666303271.a n = A142204 (n + 1)

end A142204

/-! ## A142204.P12749594136824861668

`A001414(p?[A249674(n)+A017473(n)])`
-/

namespace A142204.P12749594136824861668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142204.P12749594136824861668

namespace A142204

/-- `A001414(p?[A249674(n)+A017473(n)])` -/
def P12749594136824861668.Spec : Prop :=
  ∀ n, P12749594136824861668.a n = A142204 (n + 1)

end A142204

/-!
# A142205: Primes congruent to 8 mod 41.

The programs for A142205, the canonical program `A142205.P1845860967050143778` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142205 has offset 1).

The definition of A142205 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1983 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142205.P1845860967050143778

`p?[41*n+8]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142205

/-- `p?[41*n+8]` -/
def P1845860967050143778.Spec : Prop :=
  ∀ n, (P1845860967050143778.a n : ℤ) = A142205 (n + 1)

theorem P1845860967050143778.correct : P1845860967050143778.Spec := by
  intro n
  simp only [A142205, Nat.add_sub_cancel]

end A142205

/-! ## A142205.P5175242234934664152

`A000027(p?[A139279(n+1)+n])`
-/

namespace A142205.P5175242234934664152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139279 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142205.P5175242234934664152

namespace A142205

/-- `A000027(p?[A139279(n+1)+n])` -/
def P5175242234934664152.Spec : Prop :=
  ∀ n, P5175242234934664152.a n = A142205 (n + 1)

end A142205

/-! ## A142205.P445152626855117345

`A000027(p?[A139610(n)-A016825(n)])`
-/

namespace A142205.P445152626855117345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n - A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142205.P445152626855117345

namespace A142205

/-- `A000027(p?[A139610(n)-A016825(n)])` -/
def P445152626855117345.Spec : Prop :=
  ∀ n, P445152626855117345.a n = A142205 (n + 1)

end A142205

/-! ## A142205.P3519259568554735982

`A000027(p?[A139249(n+1)+A017413(n)])`
-/

namespace A142205.P3519259568554735982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139249 (n + 1) + A017413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142205.P3519259568554735982

namespace A142205

/-- `A000027(p?[A139249(n+1)+A017413(n)])` -/
def P3519259568554735982.Spec : Prop :=
  ∀ n, P3519259568554735982.a n = A142205 (n + 1)

end A142205

/-! ## A142205.P16161134045000420831

`p?[A139610(n)-A016825(n)]%A139616(n)²`
-/

namespace A142205.P16161134045000420831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n - A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A139616 n ^ 2)

end

end A142205.P16161134045000420831

namespace A142205

/-- `p?[A139610(n)-A016825(n)]%A139616(n)²` -/
def P16161134045000420831.Spec : Prop :=
  ∀ n, P16161134045000420831.a n = A142205 (n + 1)

end A142205

/-! ## A142205.P1997316320386813957

`p?[A139610(n)-A016825(n)]+A213064(n)%2`
-/

namespace A142205.P1997316320386813957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n - A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A213064 n) 2

end

end A142205.P1997316320386813957

namespace A142205

/-- `p?[A139610(n)-A016825(n)]+A213064(n)%2` -/
def P1997316320386813957.Spec : Prop :=
  ∀ n, P1997316320386813957.a n = A142205 (n + 1)

end A142205

/-! ## A142205.P18006850882100443564

`p?[A139610(n)-A016825(n)]+A239050(n+1)%2`
-/

namespace A142205.P18006850882100443564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n - A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A239050 (n + 1)) 2

end

end A142205.P18006850882100443564

namespace A142205

/-- `p?[A139610(n)-A016825(n)]+A239050(n+1)%2` -/
def P18006850882100443564.Spec : Prop :=
  ∀ n, P18006850882100443564.a n = A142205 (n + 1)

end A142205

/-! ## A142205.P14277992849007527307

`∩[A038919(n+1), A171141(n+1)+2]`
-/

namespace A142205.P14277992849007527307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142205.P14277992849007527307

namespace A142205

/-- `∩[A038919(n+1), A171141(n+1)+2]` -/
def P14277992849007527307.Spec : Prop :=
  ∀ n, (P14277992849007527307.a n : ℤ) = A142205 (n + 1)

end A142205

/-! ## A142205.P14569656000572400852

`∩[A171141(n+1)+2, A191030(n+1)]`
-/

namespace A142205.P14569656000572400852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142205.P14569656000572400852

namespace A142205

/-- `∩[A171141(n+1)+2, A191030(n+1)]` -/
def P14569656000572400852.Spec : Prop :=
  ∀ n, (P14569656000572400852.a n : ℤ) = A142205 (n + 1)

end A142205

/-! ## A142205.P5036040326251748563

`A000265(p?[A139279(n+1)+n])`
-/

namespace A142205.P5036040326251748563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139279 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142205.P5036040326251748563

namespace A142205

/-- `A000265(p?[A139279(n+1)+n])` -/
def P5036040326251748563.Spec : Prop :=
  ∀ n, P5036040326251748563.a n = A142205 (n + 1)

end A142205

/-! ## A142205.P1793705065183942441

`A007913(p?[A139279(n+1)+n])`
-/

namespace A142205.P1793705065183942441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139279 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142205.P1793705065183942441

namespace A142205

/-- `A007913(p?[A139279(n+1)+n])` -/
def P1793705065183942441.Spec : Prop :=
  ∀ n, P1793705065183942441.a n = A142205 (n + 1)

end A142205

/-! ## A142205.P3463007762240275897

`A000265(p?[A135631(n)+A017365(n)])`
-/

namespace A142205.P3463007762240275897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135631 n + A017365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142205.P3463007762240275897

namespace A142205

/-- `A000265(p?[A135631(n)+A017365(n)])` -/
def P3463007762240275897.Spec : Prop :=
  ∀ n, P3463007762240275897.a n = A142205 (n + 1)

end A142205

/-! ## A142205.P7927462768356037816

`A000265(p?[A139610(n)-A016825(n)])`
-/

namespace A142205.P7927462768356037816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n - A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142205.P7927462768356037816

namespace A142205

/-- `A000265(p?[A139610(n)-A016825(n)])` -/
def P7927462768356037816.Spec : Prop :=
  ∀ n, P7927462768356037816.a n = A142205 (n + 1)

end A142205

/-! ## A142205.P7002156487868848876

`A000265(p?[A139249(n+1)+A017413(n)])`
-/

namespace A142205.P7002156487868848876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139249 (n + 1) + A017413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142205.P7002156487868848876

namespace A142205

/-- `A000265(p?[A139249(n+1)+A017413(n)])` -/
def P7002156487868848876.Spec : Prop :=
  ∀ n, P7002156487868848876.a n = A142205 (n + 1)

end A142205

/-! ## A142205.P16198184135045443156

`record[A006530(A017221(A017221(n+1))+n)]`
-/

namespace A142205.P16198184135045443156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A017221 (A017221 (n + 1)).toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142205.P16198184135045443156

namespace A142205

/-- `record[A006530(A017221(A017221(n+1))+n)]` -/
def P16198184135045443156.Spec : Prop :=
  ∀ n, P16198184135045443156.a n = A142205 (n + 1)

end A142205

/-! ## A142205.P5907068777907670914

`A299149(p?[A139279(n+1)+n])`
-/

namespace A142205.P5907068777907670914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139279 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299149 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142205.P5907068777907670914

namespace A142205

/-- `A299149(p?[A139279(n+1)+n])` -/
def P5907068777907670914.Spec : Prop :=
  ∀ n, P5907068777907670914.a n = A142205 (n + 1)

end A142205

/-!
# A142206: Primes congruent to 9 mod 41.

The programs for A142206, the canonical program `A142206.P5977225734274006564` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142206 has offset 1).

The definition of A142206 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1970 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142206.P5977225734274006564

`p?[41*n+9]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142206

/-- `p?[41*n+9]` -/
def P5977225734274006564.Spec : Prop :=
  ∀ n, (P5977225734274006564.a n : ℤ) = A142206 (n + 1)

theorem P5977225734274006564.correct : P5977225734274006564.Spec := by
  intro n
  simp only [A142206, Nat.add_sub_cancel]

end A142206

/-! ## A142206.P65600199229427225

`∏{d}[p?[A249674(n)+A017497(n)], #]`
-/

namespace A142206.P65600199229427225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017497 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A142206.P65600199229427225

namespace A142206

/-- `∏{d}[p?[A249674(n)+A017497(n)], #]` -/
def P65600199229427225.Spec : Prop :=
  ∀ n, (P65600199229427225.a n : ℤ) = A142206 (n + 1)

end A142206

/-! ## A142206.P11617392935375245779

`p?[A249674(n)+A017497(n)]%A045788(n+1)`
-/

namespace A142206.P11617392935375245779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A045788 (n + 1))

end

end A142206.P11617392935375245779

namespace A142206

/-- `p?[A249674(n)+A017497(n)]%A045788(n+1)` -/
def P11617392935375245779.Spec : Prop :=
  ∀ n, P11617392935375245779.a n = A142206 (n + 1)

end A142206

/-! ## A142206.P9293983410006082149

`A000027(p?[A139279(n+1)+n+1])`
-/

namespace A142206.P9293983410006082149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139279 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142206.P9293983410006082149

namespace A142206

/-- `A000027(p?[A139279(n+1)+n+1])` -/
def P9293983410006082149.Spec : Prop :=
  ∀ n, P9293983410006082149.a n = A142206 (n + 1)

end A142206

/-! ## A142206.P17965046741056959051

`A000027(p?[A161709(n)+A144619(n)])`
-/

namespace A142206.P17965046741056959051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n + A144619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142206.P17965046741056959051

namespace A142206

/-- `A000027(p?[A161709(n)+A144619(n)])` -/
def P17965046741056959051.Spec : Prop :=
  ∀ n, P17965046741056959051.a n = A142206 (n + 1)

end A142206

/-! ## A142206.P10578819377266017965

`A000027(p?[A304205(n+1)-A017101(n)])`
-/

namespace A142206.P10578819377266017965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - A017101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142206.P10578819377266017965

namespace A142206

/-- `A000027(p?[A304205(n+1)-A017101(n)])` -/
def P10578819377266017965.Spec : Prop :=
  ∀ n, P10578819377266017965.a n = A142206 (n + 1)

end A142206

/-! ## A142206.P3947411876470365123

`p?[A139609(n)+A008706(n)]%A125169(n)²`
-/

namespace A142206.P3947411876470365123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A008706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A125169 n ^ 2)

end

end A142206.P3947411876470365123

namespace A142206

/-- `p?[A139609(n)+A008706(n)]%A125169(n)²` -/
def P3947411876470365123.Spec : Prop :=
  ∀ n, P3947411876470365123.a n = A142206 (n + 1)

end A142206

/-! ## A142206.P12110222683382100014

`filter[A155098(2*n+1), A010051(#)]`
-/

namespace A142206.P12110222683382100014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155098 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A142206.P12110222683382100014

namespace A142206

/-- `filter[A155098(2*n+1), A010051(#)]` -/
def P12110222683382100014.Spec : Prop :=
  ∀ n, P12110222683382100014.a n = A142206 (n + 1)

end A142206

/-! ## A142206.P7070085133234387385

`A000265(p?[A139609(n)+A008706(n)])`
-/

namespace A142206.P7070085133234387385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A008706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142206.P7070085133234387385

namespace A142206

/-- `A000265(p?[A139609(n)+A008706(n)])` -/
def P7070085133234387385.Spec : Prop :=
  ∀ n, P7070085133234387385.a n = A142206 (n + 1)

end A142206

/-! ## A142206.P13692342261938246993

`A007947(p?[A139609(n)+A008706(n)])`
-/

namespace A142206.P13692342261938246993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A008706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142206.P13692342261938246993

namespace A142206

/-- `A007947(p?[A139609(n)+A008706(n)])` -/
def P13692342261938246993.Spec : Prop :=
  ∀ n, P13692342261938246993.a n = A142206 (n + 1)

end A142206

/-! ## A142206.P2684028964691824765

`A001414(p?[A249674(n)+A017497(n)])`
-/

namespace A142206.P2684028964691824765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142206.P2684028964691824765

namespace A142206

/-- `A001414(p?[A249674(n)+A017497(n)])` -/
def P2684028964691824765.Spec : Prop :=
  ∀ n, P2684028964691824765.a n = A142206 (n + 1)

end A142206

/-! ## A142206.P10918387526705632157

`A008472(p?[A249674(n)+A017497(n)])`
-/

namespace A142206.P10918387526705632157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142206.P10918387526705632157

namespace A142206

/-- `A008472(p?[A249674(n)+A017497(n)])` -/
def P10918387526705632157.Spec : Prop :=
  ∀ n, P10918387526705632157.a n = A142206 (n + 1)

end A142206

/-! ## A142206.P1854907019985664458

`A000265(p?[A139249(n+1)+A017425(n)])`
-/

namespace A142206.P1854907019985664458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139249 (n + 1) + A017425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142206.P1854907019985664458

namespace A142206

/-- `A000265(p?[A139249(n+1)+A017425(n)])` -/
def P1854907019985664458.Spec : Prop :=
  ∀ n, P1854907019985664458.a n = A142206 (n + 1)

end A142206

/-! ## A142206.P17792443430161164629

`A000265(p?[A139264(n+1)+A017545(n)])`
-/

namespace A142206.P17792443430161164629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139264 (n + 1) + A017545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142206.P17792443430161164629

namespace A142206

/-- `A000265(p?[A139264(n+1)+A017545(n)])` -/
def P17792443430161164629.Spec : Prop :=
  ∀ n, P17792443430161164629.a n = A142206 (n + 1)

end A142206

/-! ## A142206.P7542983414335079600

`A000265(p?[A304205(n+1)-A017101(n)])`
-/

namespace A142206.P7542983414335079600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - A017101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142206.P7542983414335079600

namespace A142206

/-- `A000265(p?[A304205(n+1)-A017101(n)])` -/
def P7542983414335079600.Spec : Prop :=
  ∀ n, P7542983414335079600.a n = A142206 (n + 1)

end A142206

/-! ## A142206.P1224110515809482605

`filter[A155098(2*n+1), A323152(#)]`
-/

namespace A142206.P1224110515809482605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155098 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A142206.P1224110515809482605

namespace A142206

/-- `filter[A155098(2*n+1), A323152(#)]` -/
def P1224110515809482605.Spec : Prop :=
  ∀ n, P1224110515809482605.a n = A142206 (n + 1)

end A142206

/-! ## A142206.P457301224811200271

`filter[A155098(2*n+1), A323153(#)]`
-/

namespace A142206.P457301224811200271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155098 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A142206.P457301224811200271

namespace A142206

/-- `filter[A155098(2*n+1), A323153(#)]` -/
def P457301224811200271.Spec : Prop :=
  ∀ n, P457301224811200271.a n = A142206 (n + 1)

end A142206

/-!
# A142207: Primes congruent to 10 mod 41.

The programs for A142207, the canonical program `A142207.P14197881745197397113` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142207 has offset 1).

The definition of A142207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1967 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142207.P14197881745197397113

`p?[41*n+10]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142207

/-- `p?[41*n+10]` -/
def P14197881745197397113.Spec : Prop :=
  ∀ n, (P14197881745197397113.a n : ℤ) = A142207 (n + 1)

theorem P14197881745197397113.correct : P14197881745197397113.Spec := by
  intro n
  simp only [A142207, Nat.add_sub_cancel]

end A142207

/-! ## A142207.P2038184276276278561

`∏{d}[p?[A249674(n)+A017509(n)], #]`
-/

namespace A142207.P2038184276276278561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017509 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A142207.P2038184276276278561

namespace A142207

/-- `∏{d}[p?[A249674(n)+A017509(n)], #]` -/
def P2038184276276278561.Spec : Prop :=
  ∀ n, (P2038184276276278561.a n : ℤ) = A142207 (n + 1)

end A142207

/-! ## A142207.P16167323501096466522

`A000027(p?[A139279(n+1)+n+2])`
-/

namespace A142207.P16167323501096466522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139279 (n + 1) + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142207.P16167323501096466522

namespace A142207

/-- `A000027(p?[A139279(n+1)+n+2])` -/
def P16167323501096466522.Spec : Prop :=
  ∀ n, P16167323501096466522.a n = A142207 (n + 1)

end A142207

/-! ## A142207.P1413168326945724066

`A000027(p?[A139609(n)+A016861(n)])`
-/

namespace A142207.P1413168326945724066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A016861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142207.P1413168326945724066

namespace A142207

/-- `A000027(p?[A139609(n)+A016861(n)])` -/
def P1413168326945724066.Spec : Prop :=
  ∀ n, P1413168326945724066.a n = A142207 (n + 1)

end A142207

/-! ## A142207.P14412191321867069684

`A000027(p?[A139610(n)-A008574(n)])`
-/

namespace A142207.P14412191321867069684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n - A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142207.P14412191321867069684

namespace A142207

/-- `A000027(p?[A139610(n)-A008574(n)])` -/
def P14412191321867069684.Spec : Prop :=
  ∀ n, P14412191321867069684.a n = A142207 (n + 1)

end A142207

/-! ## A142207.P3680778402719264291

`A000027(p?[A139610(n)-A008586(n)])`
-/

namespace A142207.P3680778402719264291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n - A008586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142207.P3680778402719264291

namespace A142207

/-- `A000027(p?[A139610(n)-A008586(n)])` -/
def P3680778402719264291.Spec : Prop :=
  ∀ n, P3680778402719264291.a n = A142207 (n + 1)

end A142207

/-! ## A142207.P18035279454514558946

`A000027(p?[A139249(n+1)+A017437(n)])`
-/

namespace A142207.P18035279454514558946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139249 (n + 1) + A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142207.P18035279454514558946

namespace A142207

/-- `A000027(p?[A139249(n+1)+A017437(n)])` -/
def P18035279454514558946.Spec : Prop :=
  ∀ n, P18035279454514558946.a n = A142207 (n + 1)

end A142207

/-! ## A142207.P6206707321838907639

`p?[A249674(n)+A017509(n)]%A017332(n)`
-/

namespace A142207.P6206707321838907639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017332 n)

end

end A142207.P6206707321838907639

namespace A142207

/-- `p?[A249674(n)+A017509(n)]%A017332(n)` -/
def P6206707321838907639.Spec : Prop :=
  ∀ n, P6206707321838907639.a n = A142207 (n + 1)

end A142207

/-! ## A142207.P6937783936128838982

`p?[A249674(n)+A017509(n)]+A005843(n)%2`
-/

namespace A142207.P6937783936128838982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A005843 n) 2

end

end A142207.P6937783936128838982

namespace A142207

/-- `p?[A249674(n)+A017509(n)]+A005843(n)%2` -/
def P6937783936128838982.Spec : Prop :=
  ∀ n, P6937783936128838982.a n = A142207 (n + 1)

end A142207

/-! ## A142207.P4015777837862446477

`A000027(n+1)+p?[A249674(n)+A017509(n)]-(n+1)`
-/

namespace A142207.P4015777837862446477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n + 1 : ℤ))

end

end A142207.P4015777837862446477

namespace A142207

/-- `A000027(n+1)+p?[A249674(n)+A017509(n)]-(n+1)` -/
def P4015777837862446477.Spec : Prop :=
  ∀ n, P4015777837862446477.a n = A142207 (n + 1)

end A142207

/-! ## A142207.P15285208120329122307

`A000265(p?[A249674(n)+A017509(n)])`
-/

namespace A142207.P15285208120329122307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142207.P15285208120329122307

namespace A142207

/-- `A000265(p?[A249674(n)+A017509(n)])` -/
def P15285208120329122307.Spec : Prop :=
  ∀ n, P15285208120329122307.a n = A142207 (n + 1)

end A142207

/-! ## A142207.P2566650180475620572

`A007947(p?[A249674(n)+A017509(n)])`
-/

namespace A142207.P2566650180475620572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142207.P2566650180475620572

namespace A142207

/-- `A007947(p?[A249674(n)+A017509(n)])` -/
def P2566650180475620572.Spec : Prop :=
  ∀ n, P2566650180475620572.a n = A142207 (n + 1)

end A142207

/-! ## A142207.P9317219950419983127

`A007913(p?[A139610(n)-A008574(n)])`
-/

namespace A142207.P9317219950419983127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n - A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142207.P9317219950419983127

namespace A142207

/-- `A007913(p?[A139610(n)-A008574(n)])` -/
def P9317219950419983127.Spec : Prop :=
  ∀ n, P9317219950419983127.a n = A142207 (n + 1)

end A142207

/-! ## A142207.P12523923108167763507

`A007947(p?[A139610(n)-A008574(n)])`
-/

namespace A142207.P12523923108167763507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n - A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142207.P12523923108167763507

namespace A142207

/-- `A007947(p?[A139610(n)-A008574(n)])` -/
def P12523923108167763507.Spec : Prop :=
  ∀ n, P12523923108167763507.a n = A142207 (n + 1)

end A142207

/-! ## A142207.P9086892710072867159

`A000265(p?[A139249(n+1)+A017437(n)])`
-/

namespace A142207.P9086892710072867159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139249 (n + 1) + A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142207.P9086892710072867159

namespace A142207

/-- `A000265(p?[A139249(n+1)+A017437(n)])` -/
def P9086892710072867159.Spec : Prop :=
  ∀ n, P9086892710072867159.a n = A142207 (n + 1)

end A142207

/-! ## A142207.P3453363263223045355

`A007913(p?[A139249(n+1)+A017437(n)])`
-/

namespace A142207.P3453363263223045355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139249 (n + 1) + A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142207.P3453363263223045355

namespace A142207

/-- `A007913(p?[A139249(n+1)+A017437(n)])` -/
def P3453363263223045355.Spec : Prop :=
  ∀ n, P3453363263223045355.a n = A142207 (n + 1)

end A142207

/-! ## A142207.P10697668314675439115

`A007947(p?[A139249(n+1)+A017437(n)])`
-/

namespace A142207.P10697668314675439115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139249 (n + 1) + A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142207.P10697668314675439115

namespace A142207

/-- `A007947(p?[A139249(n+1)+A017437(n)])` -/
def P10697668314675439115.Spec : Prop :=
  ∀ n, P10697668314675439115.a n = A142207 (n + 1)

end A142207

/-! ## A142207.P40251423847702868

`∏{d}[p?[A017221(A017221(n))+n+1], #]`
-/

namespace A142207.P40251423847702868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 (A017221 n).toNat + (n + 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A142207.P40251423847702868

namespace A142207

/-- `∏{d}[p?[A017221(A017221(n))+n+1], #]` -/
def P40251423847702868.Spec : Prop :=
  ∀ n, (P40251423847702868.a n : ℤ) = A142207 (n + 1)

end A142207

/-!
# A142208: Primes congruent to 11 mod 41.

The programs for A142208, the canonical program `A142208.P17549706343275110528` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142208 has offset 1).

The definition of A142208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1987 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142208.P17549706343275110528

`p?[11+82*n]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142208

/-- `p?[11+82*n]` -/
def P17549706343275110528.Spec : Prop :=
  ∀ n, (P17549706343275110528.a n : ℤ) = A142208 (n + 1)

theorem P17549706343275110528.correct : P17549706343275110528.Spec := by
  intro n
  simp only [A142208, Nat.add_sub_cancel]

end A142208

/-! ## A142208.P1315791413035957668

`or(1, p?[a(n-1)+41])` with `a(0)=11`
-/

namespace A142208.P1315791413035957668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11] fun n f1 =>
  f1 (n - 1) + 41

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142208.P1315791413035957668

namespace A142208

/-- `or(1, p?[a(n-1)+41])` -/
def P1315791413035957668.Spec : Prop :=
  ∀ n, (P1315791413035957668.a n : ℤ) = A142208 (n + 1)

end A142208

/-! ## A142208.P3425264108363539438

`∏{d}[p?[a(n-1)+41], #]` with `a(0)=11`
-/

namespace A142208.P3425264108363539438
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [11] fun n f2 =>
  f2 (n - 1) + 41

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A142208.P3425264108363539438

namespace A142208

/-- `∏{d}[p?[a(n-1)+41], #]` -/
def P3425264108363539438.Spec : Prop :=
  ∀ n, (P3425264108363539438.a n : ℤ) = A142208 (n + 1)

end A142208

/-! ## A142208.P8896886686391734434

`A000027(p?[A128470(n)+A017509(n)])`
-/

namespace A142208.P8896886686391734434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 n + A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142208.P8896886686391734434

namespace A142208

/-- `A000027(p?[A128470(n)+A017509(n)])` -/
def P8896886686391734434.Spec : Prop :=
  ∀ n, P8896886686391734434.a n = A142208 (n + 1)

end A142208

/-! ## A142208.P3248394031298064005

`record[A020639(82*n+11)]`
-/

namespace A142208.P3248394031298064005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (82 * n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142208.P3248394031298064005

namespace A142208

/-- `record[A020639(82*n+11)]` -/
def P3248394031298064005.Spec : Prop :=
  ∀ n, P3248394031298064005.a n = A142208 (n + 1)

end A142208

/-!
# A142209: Primes congruent to 12 mod 41.

The programs for A142209, the canonical program `A142209.P3604403184899965638` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142209 has offset 1).

The definition of A142209 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1944 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142209.P3604403184899965638

`p?[41*n+12]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142209

/-- `p?[41*n+12]` -/
def P3604403184899965638.Spec : Prop :=
  ∀ n, (P3604403184899965638.a n : ℤ) = A142209 (n + 1)

theorem P3604403184899965638.correct : P3604403184899965638.Spec := by
  intro n
  simp only [A142209, Nat.add_sub_cancel]

end A142209

/-! ## A142209.P12864658052881125395

`A000027(p?[a(n-1)+41])` with `a(0)=12`
-/

namespace A142209.P12864658052881125395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [12] fun n f1 =>
  f1 (n - 1) + 41

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142209.P12864658052881125395

namespace A142209

/-- `A000027(p?[a(n-1)+41])` -/
def P12864658052881125395.Spec : Prop :=
  ∀ n, P12864658052881125395.a n = A142209 (n + 1)

end A142209

/-! ## A142209.P1042169530530440471

`or(1, p?[A139609(n)+A016885(n)])`
-/

namespace A142209.P1042169530530440471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A016885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142209.P1042169530530440471

namespace A142209

/-- `or(1, p?[A139609(n)+A016885(n)])` -/
def P1042169530530440471.Spec : Prop :=
  ∀ n, P1042169530530440471.a n = A142209 (n + 1)

end A142209

/-! ## A142209.P16762050355176642165

`or(1, p?[A248572(n)+A017653(n)])`
-/

namespace A142209.P16762050355176642165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A017653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142209.P16762050355176642165

namespace A142209

/-- `or(1, p?[A248572(n)+A017653(n)])` -/
def P16762050355176642165.Spec : Prop :=
  ∀ n, P16762050355176642165.a n = A142209 (n + 1)

end A142209

/-! ## A142209.P16788079169876446454

`A006530(p?[a(n-1)+41])` with `a(0)=12`
-/

namespace A142209.P16788079169876446454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [12] fun n f1 =>
  f1 (n - 1) + 41

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142209.P16788079169876446454

namespace A142209

/-- `A006530(p?[a(n-1)+41])` -/
def P16788079169876446454.Spec : Prop :=
  ∀ n, P16788079169876446454.a n = A142209 (n + 1)

end A142209

/-! ## A142209.P9271121187986635323

`record[A020639(A232100(n+1)+12)]`
-/

namespace A142209.P9271121187986635323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A232100 (n + 1) + 12).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142209.P9271121187986635323

namespace A142209

/-- `record[A020639(A232100(n+1)+12)]` -/
def P9271121187986635323.Spec : Prop :=
  ∀ n, P9271121187986635323.a n = A142209 (n + 1)

end A142209

/-! ## A142209.P1330124903992265578

`record[A020639(A155098(4*n+3)+3)]`
-/

namespace A142209.P1330124903992265578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A155098 (4 * n + 3) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142209.P1330124903992265578

namespace A142209

/-- `record[A020639(A155098(4*n+3)+3)]` -/
def P1330124903992265578.Spec : Prop :=
  ∀ n, P1330124903992265578.a n = A142209 (n + 1)

end A142209

/-! ## A142209.P4643582741649231291

`record[A020639(A171141(4*n+3)+6)]`
-/

namespace A142209.P4643582741649231291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A171141 (4 * n + 3) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142209.P4643582741649231291

namespace A142209

/-- `record[A020639(A171141(4*n+3)+6)]` -/
def P4643582741649231291.Spec : Prop :=
  ∀ n, P4643582741649231291.a n = A142209 (n + 1)

end A142209

/-! ## A142209.P12720520661833105640

`A000265(p?[A139609(n)+A016885(n)])`
-/

namespace A142209.P12720520661833105640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A016885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142209.P12720520661833105640

namespace A142209

/-- `A000265(p?[A139609(n)+A016885(n)])` -/
def P12720520661833105640.Spec : Prop :=
  ∀ n, P12720520661833105640.a n = A142209 (n + 1)

end A142209

/-! ## A142209.P18206643383817303116

`A000265(p?[A248572(n)+A017653(n)])`
-/

namespace A142209.P18206643383817303116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 n + A017653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142209.P18206643383817303116

namespace A142209

/-- `A000265(p?[A248572(n)+A017653(n)])` -/
def P18206643383817303116.Spec : Prop :=
  ∀ n, P18206643383817303116.a n = A142209 (n + 1)

end A142209

/-!
# A142210: Primes congruent to 13 mod 41.

The programs for A142210, the canonical program `A142210.P955060906268993047` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142210 has offset 1).

The definition of A142210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1962 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142210.P955060906268993047

`p?[82*n+13]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142210

/-- `p?[82*n+13]` -/
def P955060906268993047.Spec : Prop :=
  ∀ n, (P955060906268993047.a n : ℤ) = A142210 (n + 1)

theorem P955060906268993047.correct : P955060906268993047.Spec := by
  intro n
  simp only [A142210, Nat.add_sub_cancel]

end A142210

/-! ## A142210.P12318762834689232390

`or(1, p?[a(n-1)+41])` with `a(0)=13`
-/

namespace A142210.P12318762834689232390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [13] fun n f1 =>
  f1 (n - 1) + 41

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142210.P12318762834689232390

namespace A142210

/-- `or(1, p?[a(n-1)+41])` -/
def P12318762834689232390.Spec : Prop :=
  ∀ n, (P12318762834689232390.a n : ℤ) = A142210 (n + 1)

end A142210

/-! ## A142210.P3479746177174377190

`∩[82*n+13, A000040(n+1)]`
-/

namespace A142210.P3479746177174377190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  82 * n + 13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142210.P3479746177174377190

namespace A142210

/-- `∩[82*n+13, A000040(n+1)]` -/
def P3479746177174377190.Spec : Prop :=
  ∀ n, (P3479746177174377190.a n : ℤ) = A142210 (n + 1)

end A142210

/-! ## A142210.P16396781007380552201

`record[A020639(41*n+13)]`
-/

namespace A142210.P16396781007380552201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (41 * n + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142210.P16396781007380552201

namespace A142210

/-- `record[A020639(41*n+13)]` -/
def P16396781007380552201.Spec : Prop :=
  ∀ n, P16396781007380552201.a n = A142210 (n + 1)

end A142210

/-! ## A142210.P16906136298535026461

`∑{d}[p?[a(n-1)+41], A000010(#)]` with `a(0)=13`
-/

namespace A142210.P16906136298535026461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [13] fun n f2 =>
  f2 (n - 1) + 41

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d

end

end A142210.P16906136298535026461

namespace A142210

/-- `∑{d}[p?[a(n-1)+41], A000010(#)]` -/
def P16906136298535026461.Spec : Prop :=
  ∀ n, P16906136298535026461.a n = A142210 (n + 1)

end A142210

/-!
# A142211: Primes congruent to 14 mod 41.

The programs for A142211, the canonical program `A142211.P13688438854626014357` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142211 has offset 1).

The definition of A142211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1992 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142211.P13688438854626014357

`p?[41*n+14]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142211

/-- `p?[41*n+14]` -/
def P13688438854626014357.Spec : Prop :=
  ∀ n, (P13688438854626014357.a n : ℤ) = A142211 (n + 1)

theorem P13688438854626014357.correct : P13688438854626014357.Spec := by
  intro n
  simp only [A142211, Nat.add_sub_cancel]

end A142211

/-! ## A142211.P1457634490810106911

`or(1, p?[a(n-1)+41])` with `a(0)=55`
-/

namespace A142211.P1457634490810106911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [55] fun n f1 =>
  f1 (n - 1) + 41

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142211.P1457634490810106911

namespace A142211

/-- `or(1, p?[a(n-1)+41])` -/
def P1457634490810106911.Spec : Prop :=
  ∀ n, (P1457634490810106911.a n : ℤ) = A142211 (n + 1)

end A142211

/-! ## A142211.P5626202907388293755

`A000027(p?[a(n-1)+41])` with `a(0)=1, a(1)=8, a(2)=14`
-/

namespace A142211.P5626202907388293755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8, 14] fun n f1 =>
  f1 (n - 1) + 41

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142211.P5626202907388293755

namespace A142211

/-- `A000027(p?[a(n-1)+41])` -/
def P5626202907388293755.Spec : Prop :=
  ∀ n, P5626202907388293755.a n = A142211 (n + 1)

end A142211

/-! ## A142211.P7796303944509766525

`A000027(p?[A082369(n+1)+A017401(n)])`
-/

namespace A142211.P7796303944509766525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1) + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142211.P7796303944509766525

namespace A142211

/-- `A000027(p?[A082369(n+1)+A017401(n)])` -/
def P7796303944509766525.Spec : Prop :=
  ∀ n, P7796303944509766525.a n = A142211 (n + 1)

end A142211

/-! ## A142211.P5689136791363568647

`p?[A082369(n+1)+A017401(n)]%A152579(n)²`
-/

namespace A142211.P5689136791363568647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1) + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A152579 n ^ 2)

end

end A142211.P5689136791363568647

namespace A142211

/-- `p?[A082369(n+1)+A017401(n)]%A152579(n)²` -/
def P5689136791363568647.Spec : Prop :=
  ∀ n, P5689136791363568647.a n = A142211 (n + 1)

end A142211

/-! ## A142211.P13589041120155137999

`∩[A171141(2*n+1)-A171141(n+2), A038920(n+2)]`
-/

namespace A142211.P13589041120155137999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (2 * n + 1) - A171141 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038920 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142211.P13589041120155137999

namespace A142211

/-- `∩[A171141(2*n+1)-A171141(n+2), A038920(n+2)]` -/
def P13589041120155137999.Spec : Prop :=
  ∀ n, (P13589041120155137999.a n : ℤ) = A142211 (n + 1)

end A142211

/-! ## A142211.P4572102727156049197

`record[A020639(A250024(n+4)+n-2)]`
-/

namespace A142211.P4572102727156049197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A250024 (n + 4) + (n : ℤ) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142211.P4572102727156049197

namespace A142211

/-- `record[A020639(A250024(n+4)+n-2)]` -/
def P4572102727156049197.Spec : Prop :=
  ∀ n, P4572102727156049197.a n = A142211 (n + 1)

end A142211

/-! ## A142211.P8360815549820769578

`A000265(p?[A139609(n)+A016897(n)+1])`
-/

namespace A142211.P8360815549820769578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + (A016897 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142211.P8360815549820769578

namespace A142211

/-- `A000265(p?[A139609(n)+A016897(n)+1])` -/
def P8360815549820769578.Spec : Prop :=
  ∀ n, P8360815549820769578.a n = A142211 (n + 1)

end A142211

/-! ## A142211.P7448933979460682962

`A007913(p?[A139609(n)+A016897(n)+1])`
-/

namespace A142211.P7448933979460682962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + (A016897 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142211.P7448933979460682962

namespace A142211

/-- `A007913(p?[A139609(n)+A016897(n)+1])` -/
def P7448933979460682962.Spec : Prop :=
  ∀ n, P7448933979460682962.a n = A142211 (n + 1)

end A142211

/-! ## A142211.P7048979173344565171

`A093178(p?[A082369(n+1)+A017401(n)])`
-/

namespace A142211.P7048979173344565171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1) + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142211.P7048979173344565171

namespace A142211

/-- `A093178(p?[A082369(n+1)+A017401(n)])` -/
def P7048979173344565171.Spec : Prop :=
  ∀ n, P7048979173344565171.a n = A142211 (n + 1)

end A142211

/-!
# A142212: Primes congruent to 15 mod 41.

The programs for A142212, the canonical program `A142212.P11257036222134808020` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142212 has offset 1).

The definition of A142212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1967 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142212.P11257036222134808020

`p?[41*n+15]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142212

/-- `p?[41*n+15]` -/
def P11257036222134808020.Spec : Prop :=
  ∀ n, (P11257036222134808020.a n : ℤ) = A142212 (n + 1)

theorem P11257036222134808020.correct : P11257036222134808020.Spec := by
  intro n
  simp only [A142212, Nat.add_sub_cancel]

end A142212

/-! ## A142212.P1345274769962305419

`p?[A139613(n)+A016825(n)]%A001546(n)`
-/

namespace A142212.P1345274769962305419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139613 n + A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A001546 n)

end

end A142212.P1345274769962305419

namespace A142212

/-- `p?[A139613(n)+A016825(n)]%A001546(n)` -/
def P1345274769962305419.Spec : Prop :=
  ∀ n, P1345274769962305419.a n = A142212 (n + 1)

end A142212

/-! ## A142212.P13275245960086782264

`A000007(n+1)+p?[A139613(n)+A016825(n)]`
-/

namespace A142212.P13275245960086782264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139613 n + A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142212.P13275245960086782264

namespace A142212

/-- `A000007(n+1)+p?[A139613(n)+A016825(n)]` -/
def P13275245960086782264.Spec : Prop :=
  ∀ n, P13275245960086782264.a n = A142212 (n + 1)

end A142212

/-! ## A142212.P1821494267150789299

`A000038(n+1)+p?[A139613(n)+A016825(n)]`
-/

namespace A142212.P1821494267150789299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139613 n + A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142212.P1821494267150789299

namespace A142212

/-- `A000038(n+1)+p?[A139613(n)+A016825(n)]` -/
def P1821494267150789299.Spec : Prop :=
  ∀ n, P1821494267150789299.a n = A142212 (n + 1)

end A142212

/-! ## A142212.P2424094453399920626

`p?[A139613(n)+A016825(n)]+A005843(n)%2`
-/

namespace A142212.P2424094453399920626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139613 n + A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A005843 n) 2

end

end A142212.P2424094453399920626

namespace A142212

/-- `p?[A139613(n)+A016825(n)]+A005843(n)%2` -/
def P2424094453399920626.Spec : Prop :=
  ∀ n, P2424094453399920626.a n = A142212 (n + 1)

end A142212

/-! ## A142212.P16568077093513434715

`p?[A139613(n)+A016825(n)]/(A004442(n)-n)²`
-/

namespace A142212.P16568077093513434715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139613 n + A016825 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / ((A004442 n - (n : ℤ)) ^ 2 : ℚ)

end

end A142212.P16568077093513434715

namespace A142212

/-- `p?[A139613(n)+A016825(n)]/(A004442(n)-n)²` -/
def P16568077093513434715.Spec : Prop :=
  ∀ n, P16568077093513434715.a n = (A142212 (n + 1) : ℚ)

end A142212

/-! ## A142212.P15682535563028091822

`A000027(p?[A139613(n)+A016825(n)])`
-/

namespace A142212.P15682535563028091822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139613 n + A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142212.P15682535563028091822

namespace A142212

/-- `A000027(p?[A139613(n)+A016825(n)])` -/
def P15682535563028091822.Spec : Prop :=
  ∀ n, P15682535563028091822.a n = A142212 (n + 1)

end A142212

/-! ## A142212.P9145202609865914263

`A000027(p?[A154267(n)+A008596(n)])`
-/

namespace A142212.P9145202609865914263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n + A008596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142212.P9145202609865914263

namespace A142212

/-- `A000027(p?[A154267(n)+A008596(n)])` -/
def P9145202609865914263.Spec : Prop :=
  ∀ n, P9145202609865914263.a n = A142212 (n + 1)

end A142212

/-! ## A142212.P4585497695338060316

`A000265(p?[A139613(n)+A016825(n)])`
-/

namespace A142212.P4585497695338060316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139613 n + A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142212.P4585497695338060316

namespace A142212

/-- `A000265(p?[A139613(n)+A016825(n)])` -/
def P4585497695338060316.Spec : Prop :=
  ∀ n, P4585497695338060316.a n = A142212 (n + 1)

end A142212

/-! ## A142212.P5987101171441823649

`A001414(p?[A139613(n)+A016825(n)])`
-/

namespace A142212.P5987101171441823649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139613 n + A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142212.P5987101171441823649

namespace A142212

/-- `A001414(p?[A139613(n)+A016825(n)])` -/
def P5987101171441823649.Spec : Prop :=
  ∀ n, P5987101171441823649.a n = A142212 (n + 1)

end A142212

/-! ## A142212.P6178396599872641866

`A000265(p?[A154267(n)+A008596(n)])`
-/

namespace A142212.P6178396599872641866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n + A008596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142212.P6178396599872641866

namespace A142212

/-- `A000265(p?[A154267(n)+A008596(n)])` -/
def P6178396599872641866.Spec : Prop :=
  ∀ n, P6178396599872641866.a n = A142212 (n + 1)

end A142212

/-! ## A142212.P13646315027814464472

`A001414(p?[A154267(n)+A008596(n)])`
-/

namespace A142212.P13646315027814464472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n + A008596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142212.P13646315027814464472

namespace A142212

/-- `A001414(p?[A154267(n)+A008596(n)])` -/
def P13646315027814464472.Spec : Prop :=
  ∀ n, P13646315027814464472.a n = A142212 (n + 1)

end A142212

/-! ## A142212.P9190310312279829117

`A007913(p?[A139613(n)+A016825(n)])`
-/

namespace A142212.P9190310312279829117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139613 n + A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142212.P9190310312279829117

namespace A142212

/-- `A007913(p?[A139613(n)+A016825(n)])` -/
def P9190310312279829117.Spec : Prop :=
  ∀ n, P9190310312279829117.a n = A142212 (n + 1)

end A142212

/-! ## A142212.P2381023582436921125

`A318456(p?[A154267(n)+A008596(n)])`
-/

namespace A142212.P2381023582436921125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n + A008596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318456 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142212.P2381023582436921125

namespace A142212

/-- `A318456(p?[A154267(n)+A008596(n)])` -/
def P2381023582436921125.Spec : Prop :=
  ∀ n, P2381023582436921125.a n = A142212 (n + 1)

end A142212

/-!
# A142213: Primes congruent to 16 mod 41.

The programs for A142213, the canonical program `A142213.P31053959180324961` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142213 has offset 1).

The definition of A142213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1953 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142213.P31053959180324961

`p?[41*n+16]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142213

/-- `p?[41*n+16]` -/
def P31053959180324961.Spec : Prop :=
  ∀ n, (P31053959180324961.a n : ℤ) = A142213 (n + 1)

theorem P31053959180324961.correct : P31053959180324961.Spec := by
  intro n
  simp only [A142213, Nat.add_sub_cancel]

end A142213

/-! ## A142213.P12633988035179923678

`or(p?[A250024(n+4)+n], A000038(n))`
-/

namespace A142213.P12633988035179923678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250024 (n + 4) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000038 n)

end

end A142213.P12633988035179923678

namespace A142213

/-- `or(p?[A250024(n+4)+n], A000038(n))` -/
def P12633988035179923678.Spec : Prop :=
  ∀ n, P12633988035179923678.a n = A142213 (n + 1)

end A142213

/-! ## A142213.P5845105870170042398

`char[A158861(n+1)]+p?[A250024(n+4)+n]`
-/

namespace A142213.P5845105870170042398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250024 (n + 4) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A142213.P5845105870170042398

namespace A142213

/-- `char[A158861(n+1)]+p?[A250024(n+4)+n]` -/
def P5845105870170042398.Spec : Prop :=
  ∀ n, P5845105870170042398.a n = A142213 (n + 1)

end A142213

/-! ## A142213.P6988505632981307834

`p?[A053741(n)-A017209(n)]%A325319(n+1)²`
-/

namespace A142213.P6988505632981307834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A017209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A325319 (n + 1) ^ 2)

end

end A142213.P6988505632981307834

namespace A142213

/-- `p?[A053741(n)-A017209(n)]%A325319(n+1)²` -/
def P6988505632981307834.Spec : Prop :=
  ∀ n, P6988505632981307834.a n = A142213 (n + 1)

end A142213

/-! ## A142213.P880212568857251263

`A007947(p?[A232100(n+1)+16])`
-/

namespace A142213.P880212568857251263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232100 (n + 1) + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142213.P880212568857251263

namespace A142213

/-- `A007947(p?[A232100(n+1)+16])` -/
def P880212568857251263.Spec : Prop :=
  ∀ n, P880212568857251263.a n = A142213 (n + 1)

end A142213

/-! ## A142213.P18085944989041230378

`record[A006530(A250024(n+4)+n)]`
-/

namespace A142213.P18085944989041230378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A250024 (n + 4) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142213.P18085944989041230378

namespace A142213

/-- `record[A006530(A250024(n+4)+n)]` -/
def P18085944989041230378.Spec : Prop :=
  ∀ n, P18085944989041230378.a n = A142213 (n + 1)

end A142213

/-! ## A142213.P8530965497531356198

`record[A020639(A250024(n+4)+n)]`
-/

namespace A142213.P8530965497531356198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A250024 (n + 4) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142213.P8530965497531356198

namespace A142213

/-- `record[A020639(A250024(n+4)+n)]` -/
def P8530965497531356198.Spec : Prop :=
  ∀ n, P8530965497531356198.a n = A142213 (n + 1)

end A142213

/-! ## A142213.P2681697270977011508

`A000265(p?[A053741(n)-A017209(n)])`
-/

namespace A142213.P2681697270977011508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A017209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142213.P2681697270977011508

namespace A142213

/-- `A000265(p?[A053741(n)-A017209(n)])` -/
def P2681697270977011508.Spec : Prop :=
  ∀ n, P2681697270977011508.a n = A142213 (n + 1)

end A142213

/-! ## A142213.P2310810035040461910

`A000265(p?[A161705(n)+A157330(n+1)])`
-/

namespace A142213.P2310810035040461910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n + A157330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142213.P2310810035040461910

namespace A142213

/-- `A000265(p?[A161705(n)+A157330(n+1)])` -/
def P2310810035040461910.Spec : Prop :=
  ∀ n, P2310810035040461910.a n = A142213 (n + 1)

end A142213

/-! ## A142213.P2951351671277553109

`record[A006530(A017233(A017233(n+1))-2+n)]`
-/

namespace A142213.P2951351671277553109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A017233 (A017233 (n + 1)).toNat - 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142213.P2951351671277553109

namespace A142213

/-- `record[A006530(A017233(A017233(n+1))-2+n)]` -/
def P2951351671277553109.Spec : Prop :=
  ∀ n, P2951351671277553109.a n = A142213 (n + 1)

end A142213

/-!
# A142214: Primes congruent to 17 mod 41.

The programs for A142214, the canonical program `A142214.P4370632602972241411` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142214 has offset 1).

The definition of A142214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1969 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142214.P4370632602972241411

`p?[41*n+17]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142214

/-- `p?[41*n+17]` -/
def P4370632602972241411.Spec : Prop :=
  ∀ n, (P4370632602972241411.a n : ℤ) = A142214 (n + 1)

theorem P4370632602972241411.correct : P4370632602972241411.Spec := by
  intro n
  simp only [A142214, Nat.add_sub_cancel]

end A142214

/-! ## A142214.P5971067738063076112

`abs(2-p?[a(n-1)+41])+2` with `a(0)=17`
-/

namespace A142214.P5971067738063076112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [17] fun n f1 =>
  f1 (n - 1) + 41

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)| + 2

end

end A142214.P5971067738063076112

namespace A142214

/-- `abs(2-p?[a(n-1)+41])+2` -/
def P5971067738063076112.Spec : Prop :=
  ∀ n, P5971067738063076112.a n = A142214 (n + 1)

end A142214

/-! ## A142214.P1522324478258455718

`∑{p}[p?[A158803(A196499(n+1))], #]`
-/

namespace A142214.P1522324478258455718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158803 (A196499 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142214.P1522324478258455718

namespace A142214

/-- `∑{p}[p?[A158803(A196499(n+1))], #]` -/
def P1522324478258455718.Spec : Prop :=
  ∀ n, (P1522324478258455718.a n : ℤ) = A142214 (n + 1)

end A142214

/-! ## A142214.P13939200799923844187

`record[A006530(41*(2*n+1)-24)]`
-/

namespace A142214.P13939200799923844187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (41 * (2 * n + 1) - 24)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142214.P13939200799923844187

namespace A142214

/-- `record[A006530(41*(2*n+1)-24)]` -/
def P13939200799923844187.Spec : Prop :=
  ∀ n, P13939200799923844187.a n = A142214 (n + 1)

end A142214

/-! ## A142214.P4058118371771602780

`∑{d}[p?[a(n-1)+41], A000010(#)]` with `a(0)=17`
-/

namespace A142214.P4058118371771602780
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [17] fun n f2 =>
  f2 (n - 1) + 41

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d

end

end A142214.P4058118371771602780

namespace A142214

/-- `∑{d}[p?[a(n-1)+41], A000010(#)]` -/
def P4058118371771602780.Spec : Prop :=
  ∀ n, P4058118371771602780.a n = A142214 (n + 1)

end A142214

/-! ## A142214.P10468022203390779727

`record[A020639(A158803(2*n+1))]`
-/

namespace A142214.P10468022203390779727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A158803 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142214.P10468022203390779727

namespace A142214

/-- `record[A020639(A158803(2*n+1))]` -/
def P10468022203390779727.Spec : Prop :=
  ∀ n, P10468022203390779727.a n = A142214 (n + 1)

end A142214

/-! ## A142214.P14024959945757758540

`filter[A158803(2*n+1), A010051(#)]`
-/

namespace A142214.P14024959945757758540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158803 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A142214.P14024959945757758540

namespace A142214

/-- `filter[A158803(2*n+1), A010051(#)]` -/
def P14024959945757758540.Spec : Prop :=
  ∀ n, P14024959945757758540.a n = A142214 (n + 1)

end A142214

/-! ## A142214.P14521918032433148012

`filter[A158803(2*n+1), A069513(#)]`
-/

namespace A142214.P14521918032433148012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158803 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A142214.P14521918032433148012

namespace A142214

/-- `filter[A158803(2*n+1), A069513(#)]` -/
def P14521918032433148012.Spec : Prop :=
  ∀ n, P14521918032433148012.a n = A142214 (n + 1)

end A142214

/-! ## A142214.P8823071195451797964

`filter[A158803(2*n+1), A355937(#)]`
-/

namespace A142214.P8823071195451797964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158803 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A142214.P8823071195451797964

namespace A142214

/-- `filter[A158803(2*n+1), A355937(#)]` -/
def P8823071195451797964.Spec : Prop :=
  ∀ n, P8823071195451797964.a n = A142214 (n + 1)

end A142214

/-! ## A142214.P10250173827027237064

`record[A020639(A161705(5*n+1)-(8*n+2))]`
-/

namespace A142214.P10250173827027237064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A161705 (5 * n + 1) - (8 * n + 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142214.P10250173827027237064

namespace A142214

/-- `record[A020639(A161705(5*n+1)-(8*n+2))]` -/
def P10250173827027237064.Spec : Prop :=
  ∀ n, P10250173827027237064.a n = A142214 (n + 1)

end A142214

/-! ## A142214.P8548475674128610888

`record[A020639(A139607(n)+5*A016825(n))]`
-/

namespace A142214.P8548475674128610888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A139607 n + 5 * A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142214.P8548475674128610888

namespace A142214

/-- `record[A020639(A139607(n)+5*A016825(n))]` -/
def P8548475674128610888.Spec : Prop :=
  ∀ n, P8548475674128610888.a n = A142214 (n + 1)

end A142214

/-! ## A142214.P1326547979837004993

`record[A020639(A139608(n)+A139606(n)-2*n+3)]`
-/

namespace A142214.P1326547979837004993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A139608 n + A139606 n - (2 * n : ℤ) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142214.P1326547979837004993

namespace A142214

/-- `record[A020639(A139608(n)+A139606(n)-2*n+3)]` -/
def P1326547979837004993.Spec : Prop :=
  ∀ n, P1326547979837004993.a n = A142214 (n + 1)

end A142214

/-! ## A142214.P6103730769350200667

`filter[A158803(2*n+1), A257531(#)]`
-/

namespace A142214.P6103730769350200667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158803 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A142214.P6103730769350200667

namespace A142214

/-- `filter[A158803(2*n+1), A257531(#)]` -/
def P6103730769350200667.Spec : Prop :=
  ∀ n, P6103730769350200667.a n = A142214 (n + 1)

end A142214

/-! ## A142214.P12921801941181671404

`filter[A158803(2*n+1), A302777(#)]`
-/

namespace A142214.P12921801941181671404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158803 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A142214.P12921801941181671404

namespace A142214

/-- `filter[A158803(2*n+1), A302777(#)]` -/
def P12921801941181671404.Spec : Prop :=
  ∀ n, P12921801941181671404.a n = A142214 (n + 1)

end A142214

/-! ## A142214.P13652857471778146269

`filter[A158803(2*n+1), A323152(#)]`
-/

namespace A142214.P13652857471778146269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158803 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A142214.P13652857471778146269

namespace A142214

/-- `filter[A158803(2*n+1), A323152(#)]` -/
def P13652857471778146269.Spec : Prop :=
  ∀ n, P13652857471778146269.a n = A142214 (n + 1)

end A142214

/-! ## A142214.P5502901166507537919

`filter[A158803(2*n+1), A323153(#)]`
-/

namespace A142214.P5502901166507537919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158803 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A142214.P5502901166507537919

namespace A142214

/-- `filter[A158803(2*n+1), A323153(#)]` -/
def P5502901166507537919.Spec : Prop :=
  ∀ n, P5502901166507537919.a n = A142214 (n + 1)

end A142214

/-! ## A142214.P2489606477020705683

`filter[A158803(2*n+1), A345950(#)]`
-/

namespace A142214.P2489606477020705683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158803 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A142214.P2489606477020705683

namespace A142214

/-- `filter[A158803(2*n+1), A345950(#)]` -/
def P2489606477020705683.Spec : Prop :=
  ∀ n, P2489606477020705683.a n = A142214 (n + 1)

end A142214

/-! ## A142214.P6274513750015799246

`filter[A158803(2*n+1), A353817(#)]`
-/

namespace A142214.P6274513750015799246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158803 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A142214.P6274513750015799246

namespace A142214

/-- `filter[A158803(2*n+1), A353817(#)]` -/
def P6274513750015799246.Spec : Prop :=
  ∀ n, P6274513750015799246.a n = A142214 (n + 1)

end A142214

/-!
# A142215: Primes congruent to 18 mod 41.

The programs for A142215, the canonical program `A142215.P3221935887299973414` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142215 has offset 1).

The definition of A142215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1947 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142215.P3221935887299973414

`p?[41*n+18]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142215

/-- `p?[41*n+18]` -/
def P3221935887299973414.Spec : Prop :=
  ∀ n, (P3221935887299973414.a n : ℤ) = A142215 (n + 1)

theorem P3221935887299973414.correct : P3221935887299973414.Spec := by
  intro n
  simp only [A142215, Nat.add_sub_cancel]

end A142215

/-! ## A142215.P12336371217845297757

`A000027(p?[A250024(n+2)+n])`
-/

namespace A142215.P12336371217845297757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250024 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142215.P12336371217845297757

namespace A142215

/-- `A000027(p?[A250024(n+2)+n])` -/
def P12336371217845297757.Spec : Prop :=
  ∀ n, P12336371217845297757.a n = A142215 (n + 1)

end A142215

/-! ## A142215.P16980988090982422392

`or(1, p?[A053741(n)-A017185(n)])`
-/

namespace A142215.P16980988090982422392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A017185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142215.P16980988090982422392

namespace A142215

/-- `or(1, p?[A053741(n)-A017185(n)])` -/
def P16980988090982422392.Spec : Prop :=
  ∀ n, P16980988090982422392.a n = A142215 (n + 1)

end A142215

/-! ## A142215.P88341252916021537

`p?[A053741(n)-A017185(n)]%A125169(n)²`
-/

namespace A142215.P88341252916021537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A017185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A125169 n ^ 2)

end

end A142215.P88341252916021537

namespace A142215

/-- `p?[A053741(n)-A017185(n)]%A125169(n)²` -/
def P88341252916021537.Spec : Prop :=
  ∀ n, P88341252916021537.a n = A142215 (n + 1)

end A142215

/-! ## A142215.P4989893951833494748

`record[A001414(A156796(n+1)+n)]`
-/

namespace A142215.P4989893951833494748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A156796 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142215.P4989893951833494748

namespace A142215

/-- `record[A001414(A156796(n+1)+n)]` -/
def P4989893951833494748.Spec : Prop :=
  ∀ n, P4989893951833494748.a n = A142215 (n + 1)

end A142215

/-! ## A142215.P13338842624527030081

`record[A006530(A156796(n+1)+n)]`
-/

namespace A142215.P13338842624527030081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A156796 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142215.P13338842624527030081

namespace A142215

/-- `record[A006530(A156796(n+1)+n)]` -/
def P13338842624527030081.Spec : Prop :=
  ∀ n, P13338842624527030081.a n = A142215 (n + 1)

end A142215

/-! ## A142215.P6805577740612526618

`record[A020639(A156796(n+1)+n)]`
-/

namespace A142215.P6805577740612526618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A156796 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142215.P6805577740612526618

namespace A142215

/-- `record[A020639(A156796(n+1)+n)]` -/
def P6805577740612526618.Spec : Prop :=
  ∀ n, P6805577740612526618.a n = A142215 (n + 1)

end A142215

/-! ## A142215.P12952124693370937572

`record[A020639(A250024(n+2)+n)]`
-/

namespace A142215.P12952124693370937572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A250024 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142215.P12952124693370937572

namespace A142215

/-- `record[A020639(A250024(n+2)+n)]` -/
def P12952124693370937572.Spec : Prop :=
  ∀ n, P12952124693370937572.a n = A142215 (n + 1)

end A142215

/-! ## A142215.P14581664121887972533

`record[A020639(A156797(2*(n+1))+n)]`
-/

namespace A142215.P14581664121887972533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A156797 (2 * (n + 1)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142215.P14581664121887972533

namespace A142215

/-- `record[A020639(A156797(2*(n+1))+n)]` -/
def P14581664121887972533.Spec : Prop :=
  ∀ n, P14581664121887972533.a n = A142215 (n + 1)

end A142215

/-! ## A142215.P10705512441635626798

`∑{p}[p?[A156796(n+1)+n], A006530(#)]`
-/

namespace A142215.P10705512441635626798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156796 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A006530 p

end

end A142215.P10705512441635626798

namespace A142215

/-- `∑{p}[p?[A156796(n+1)+n], A006530(#)]` -/
def P10705512441635626798.Spec : Prop :=
  ∀ n, P10705512441635626798.a n = A142215 (n + 1)

end A142215

/-! ## A142215.P904895642053144569

`A000265(p?[A053741(n)-A017185(n)])`
-/

namespace A142215.P904895642053144569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A017185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142215.P904895642053144569

namespace A142215

/-- `A000265(p?[A053741(n)-A017185(n)])` -/
def P904895642053144569.Spec : Prop :=
  ∀ n, P904895642053144569.a n = A142215 (n + 1)

end A142215

/-! ## A142215.P1523061514127861067

`record[A006530(A017233(A017233(n))-1+n)]`
-/

namespace A142215.P1523061514127861067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A017233 (A017233 n).toNat - 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142215.P1523061514127861067

namespace A142215

/-- `record[A006530(A017233(A017233(n))-1+n)]` -/
def P1523061514127861067.Spec : Prop :=
  ∀ n, P1523061514127861067.a n = A142215 (n + 1)

end A142215

/-! ## A142215.P9181834548805045106

`record[A006530(n-(1-A017233(A017233(n))))]`
-/

namespace A142215.P9181834548805045106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n : ℤ) - (1 - A017233 (A017233 n).toNat)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142215.P9181834548805045106

namespace A142215

/-- `record[A006530(n-(1-A017233(A017233(n))))]` -/
def P9181834548805045106.Spec : Prop :=
  ∀ n, P9181834548805045106.a n = A142215 (n + 1)

end A142215

/-!
# A142216: Primes congruent to 19 mod 41.

The programs for A142216, the canonical program `A142216.P15664733973220186143` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142216 has offset 1).

The definition of A142216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1993 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142216.P15664733973220186143

`p?[a(n-1)+41]` with `a(0)=19`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142216

/-- `p?[a(n-1)+41]` -/
def P15664733973220186143.Spec : Prop :=
  ∀ n, (P15664733973220186143.a n : ℤ) = A142216 (n + 1)

theorem P15664733973220186143.correct : P15664733973220186143.Spec := by
  intro n
  simp only [A142216, Nat.add_sub_cancel]

end A142216

/-! ## A142216.P13015412302336124658

`p?[81*n+19+n]`
-/

namespace A142216.P13015412302336124658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  81 * n + 19 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142216.P13015412302336124658

namespace A142216

/-- `p?[81*n+19+n]` -/
def P13015412302336124658.Spec : Prop :=
  ∀ n, (P13015412302336124658.a n : ℤ) = A142216 (n + 1)

end A142216

/-! ## A142216.P9701709304959749101

`abs(2-p?[A250024(n+1)+n])+2`
-/

namespace A142216.P9701709304959749101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250024 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)| + 2

end

end A142216.P9701709304959749101

namespace A142216

/-- `abs(2-p?[A250024(n+1)+n])+2` -/
def P9701709304959749101.Spec : Prop :=
  ∀ n, P9701709304959749101.a n = A142216 (n + 1)

end A142216

/-! ## A142216.P7793567002218301890

`A000027(p?[A250024(n+1)+n])`
-/

namespace A142216.P7793567002218301890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250024 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142216.P7793567002218301890

namespace A142216

/-- `A000027(p?[A250024(n+1)+n])` -/
def P7793567002218301890.Spec : Prop :=
  ∀ n, P7793567002218301890.a n = A142216 (n + 1)

end A142216

/-! ## A142216.P4325725398435561053

`record[A006530(41*(n+1)-22)]`
-/

namespace A142216.P4325725398435561053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (41 * (n + 1) - 22)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142216.P4325725398435561053

namespace A142216

/-- `record[A006530(41*(n+1)-22)]` -/
def P4325725398435561053.Spec : Prop :=
  ∀ n, P4325725398435561053.a n = A142216 (n + 1)

end A142216

/-! ## A142216.P3122299864305902303

`record[A020639(A250024(n+1)+n)]`
-/

namespace A142216.P3122299864305902303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A250024 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142216.P3122299864305902303

namespace A142216

/-- `record[A020639(A250024(n+1)+n)]` -/
def P3122299864305902303.Spec : Prop :=
  ∀ n, P3122299864305902303.a n = A142216 (n + 1)

end A142216

/-! ## A142216.P16617791723422624992

`record[A020639(A158803(2*n+1)+2)]`
-/

namespace A142216.P16617791723422624992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A158803 (2 * n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142216.P16617791723422624992

namespace A142216

/-- `record[A020639(A158803(2*n+1)+2)]` -/
def P16617791723422624992.Spec : Prop :=
  ∀ n, P16617791723422624992.a n = A142216 (n + 1)

end A142216

/-! ## A142216.P13695135733052833114

`record[A020639(A258016(2*n+1)-n)]`
-/

namespace A142216.P13695135733052833114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A258016 (2 * n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142216.P13695135733052833114

namespace A142216

/-- `record[A020639(A258016(2*n+1)-n)]` -/
def P13695135733052833114.Spec : Prop :=
  ∀ n, P13695135733052833114.a n = A142216 (n + 1)

end A142216

/-! ## A142216.P16617100105763478382

`record[A020639(gcd(2, n)*A155098(n+1)+1)]`
-/

namespace A142216.P16617100105763478382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((Nat.gcd 2 n : ℤ) * A155098 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142216.P16617100105763478382

namespace A142216

/-- `record[A020639(gcd(2, n)*A155098(n+1)+1)]` -/
def P16617100105763478382.Spec : Prop :=
  ∀ n, P16617100105763478382.a n = A142216 (n + 1)

end A142216

/-! ## A142216.P5279388472708674885

`record[A020639(abs(1-n-A008592(4*n+2)))]`
-/

namespace A142216.P5279388472708674885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 |1 - (n : ℤ) - A008592 (4 * n + 2)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142216.P5279388472708674885

namespace A142216

/-- `record[A020639(abs(1-n-A008592(4*n+2)))]` -/
def P5279388472708674885.Spec : Prop :=
  ∀ n, P5279388472708674885.a n = A142216 (n + 1)

end A142216

/-! ## A142216.P2203874329569363409

`record[A020639(A053742(n)-A017233(n))]`
-/

namespace A142216.P2203874329569363409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053742 n - A017233 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142216.P2203874329569363409

namespace A142216

/-- `record[A020639(A053742(n)-A017233(n))]` -/
def P2203874329569363409.Spec : Prop :=
  ∀ n, P2203874329569363409.a n = A142216 (n + 1)

end A142216

/-!
# A142217: Primes congruent to 20 mod 41.

The programs for A142217, the canonical program `A142217.P13905811482008414745` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142217 has offset 1).

The definition of A142217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1962 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142217.P13905811482008414745

`p?[41*n+20]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142217

/-- `p?[41*n+20]` -/
def P13905811482008414745.Spec : Prop :=
  ∀ n, (P13905811482008414745.a n : ℤ) = A142217 (n + 1)

theorem P13905811482008414745.correct : P13905811482008414745.Spec := by
  intro n
  simp only [A142217, Nat.add_sub_cancel]

end A142217

/-! ## A142217.P14911939108467717805

`or(1, p?[a(n-1)+41])` with `a(0)=61`
-/

namespace A142217.P14911939108467717805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [61] fun n f1 =>
  f1 (n - 1) + 41

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142217.P14911939108467717805

namespace A142217

/-- `or(1, p?[a(n-1)+41])` -/
def P14911939108467717805.Spec : Prop :=
  ∀ n, (P14911939108467717805.a n : ℤ) = A142217 (n + 1)

end A142217

/-! ## A142217.P7509350915729612050

`A000027(p?[A250024(n+1)+n+1])`
-/

namespace A142217.P7509350915729612050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250024 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142217.P7509350915729612050

namespace A142217

/-- `A000027(p?[A250024(n+1)+n+1])` -/
def P7509350915729612050.Spec : Prop :=
  ∀ n, P7509350915729612050.a n = A142217 (n + 1)

end A142217

/-! ## A142217.P15445143075024946917

`record[A006530(A156796(n+1)+2+n)]`
-/

namespace A142217.P15445143075024946917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A156796 (n + 1) + 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142217.P15445143075024946917

namespace A142217

/-- `record[A006530(A156796(n+1)+2+n)]` -/
def P15445143075024946917.Spec : Prop :=
  ∀ n, P15445143075024946917.a n = A142217 (n + 1)

end A142217

/-! ## A142217.P8271107291419602729

`A000265(p?[A250024(n+1)+n+1])`
-/

namespace A142217.P8271107291419602729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250024 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142217.P8271107291419602729

namespace A142217

/-- `A000265(p?[A250024(n+1)+n+1])` -/
def P8271107291419602729.Spec : Prop :=
  ∀ n, P8271107291419602729.a n = A142217 (n + 1)

end A142217

/-! ## A142217.P3776753338752394993

`A007913(p?[A250024(n+1)+n+1])`
-/

namespace A142217.P3776753338752394993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250024 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142217.P3776753338752394993

namespace A142217

/-- `A007913(p?[A250024(n+1)+n+1])` -/
def P3776753338752394993.Spec : Prop :=
  ∀ n, P3776753338752394993.a n = A142217 (n + 1)

end A142217

/-! ## A142217.P10062257098066878647

`record[A020639(5*A017113(n+1)+n+1)]`
-/

namespace A142217.P10062257098066878647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (5 * A017113 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142217.P10062257098066878647

namespace A142217

/-- `record[A020639(5*A017113(n+1)+n+1)]` -/
def P10062257098066878647.Spec : Prop :=
  ∀ n, P10062257098066878647.a n = A142217 (n + 1)

end A142217

/-! ## A142217.P3295947126071534241

`record[A006530(A017233(A017233(n))+1+n)]`
-/

namespace A142217.P3295947126071534241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A017233 (A017233 n).toNat + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142217.P3295947126071534241

namespace A142217

/-- `record[A006530(A017233(A017233(n))+1+n)]` -/
def P3295947126071534241.Spec : Prop :=
  ∀ n, P3295947126071534241.a n = A142217 (n + 1)

end A142217

/-! ## A142217.P8993986062592334451

`record[A020639(A017233(A017233(n))+n+1)]`
-/

namespace A142217.P8993986062592334451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017233 (A017233 n).toNat + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142217.P8993986062592334451

namespace A142217

/-- `record[A020639(A017233(A017233(n))+n+1)]` -/
def P8993986062592334451.Spec : Prop :=
  ∀ n, P8993986062592334451.a n = A142217 (n + 1)

end A142217

/-!
# A142218: Primes congruent to 21 mod 41.

The programs for A142218, the canonical program `A142218.P6225111548831495056` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142218 has offset 1).

The definition of A142218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1965 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142218.P6225111548831495056

`p?[41*n-20]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142218

/-- `p?[41*n-20]` -/
def P6225111548831495056.Spec : Prop :=
  ∀ n, P6225111548831495056.a n = A142218 (n + 1)

theorem P6225111548831495056.correct : P6225111548831495056.Spec := by
  intro n
  simp only [A142218, Nat.add_sub_cancel]

end A142218

/-! ## A142218.P10585589751169618524

`or(p?[A156795(n+2)+n], A023969(n))`
-/

namespace A142218.P10585589751169618524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156795 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A023969 n)

end

end A142218.P10585589751169618524

namespace A142218

/-- `or(p?[A156795(n+2)+n], A023969(n))` -/
def P10585589751169618524.Spec : Prop :=
  ∀ n, P10585589751169618524.a n = A142218 (n + 1)

end A142218

/-! ## A142218.P2577633386591885902

`p?[A156795(n+2)+n]+and(4, A228085(n))`
-/

namespace A142218.P2577633386591885902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156795 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.land 4 (A228085 n)

end

end A142218.P2577633386591885902

namespace A142218

/-- `p?[A156795(n+2)+n]+and(4, A228085(n))` -/
def P2577633386591885902.Spec : Prop :=
  ∀ n, P2577633386591885902.a n = A142218 (n + 1)

end A142218

/-! ## A142218.P12946081154620403522

`p?[A156795(n+2)+n]*A057427(3*n+2)`
-/

namespace A142218.P12946081154620403522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156795 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A057427 (3 * n + 2)

end

end A142218.P12946081154620403522

namespace A142218

/-- `p?[A156795(n+2)+n]*A057427(3*n+2)` -/
def P12946081154620403522.Spec : Prop :=
  ∀ n, P12946081154620403522.a n = A142218 (n + 1)

end A142218

/-! ## A142218.P18060290234047906775

`record[A006530(A156795(n+2)+n)]`
-/

namespace A142218.P18060290234047906775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A156795 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142218.P18060290234047906775

namespace A142218

/-- `record[A006530(A156795(n+2)+n)]` -/
def P18060290234047906775.Spec : Prop :=
  ∀ n, P18060290234047906775.a n = A142218 (n + 1)

end A142218

/-! ## A142218.P16684851201243944645

`record[A020639(A156795(n+2)+n)]`
-/

namespace A142218.P16684851201243944645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A156795 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142218.P16684851201243944645

namespace A142218

/-- `record[A020639(A156795(n+2)+n)]` -/
def P16684851201243944645.Spec : Prop :=
  ∀ n, P16684851201243944645.a n = A142218 (n + 1)

end A142218

/-! ## A142218.P1796744938929275454

`A000265(p?[A250024(n+1)+n+2])`
-/

namespace A142218.P1796744938929275454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250024 (n + 1) + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142218.P1796744938929275454

namespace A142218

/-- `A000265(p?[A250024(n+1)+n+2])` -/
def P1796744938929275454.Spec : Prop :=
  ∀ n, P1796744938929275454.a n = A142218 (n + 1)

end A142218

/-! ## A142218.P14027159160047356539

`A007913(p?[A250024(n+1)+n+2])`
-/

namespace A142218.P14027159160047356539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250024 (n + 1) + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142218.P14027159160047356539

namespace A142218

/-- `A007913(p?[A250024(n+1)+n+2])` -/
def P14027159160047356539.Spec : Prop :=
  ∀ n, P14027159160047356539.a n = A142218 (n + 1)

end A142218

/-! ## A142218.P3560140321152696284

`record[A006530(A195033(4*(n+1))+A008603(2*n+3))]`
-/

namespace A142218.P3560140321152696284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A195033 (4 * (n + 1)) + A008603 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142218.P3560140321152696284

namespace A142218

/-- `record[A006530(A195033(4*(n+1))+A008603(2*n+3))]` -/
def P3560140321152696284.Spec : Prop :=
  ∀ n, P3560140321152696284.a n = A142218 (n + 1)

end A142218

/-! ## A142218.P15999938746335794613

`A000027(p?[A004770(5*n+3)+n])`
-/

namespace A142218.P15999938746335794613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (5 * n + 3) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142218.P15999938746335794613

namespace A142218

/-- `A000027(p?[A004770(5*n+3)+n])` -/
def P15999938746335794613.Spec : Prop :=
  ∀ n, P15999938746335794613.a n = A142218 (n + 1)

end A142218

/-! ## A142218.P8120137217135452859

`record[p?[A319702(A232100(n+1)-2)]]`
-/

namespace A142218.P8120137217135452859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (A232100 (n + 1) - 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142218.P8120137217135452859

namespace A142218

/-- `record[p?[A319702(A232100(n+1)-2)]]` -/
def P8120137217135452859.Spec : Prop :=
  ∀ n, P8120137217135452859.a n = A142218 (n + 1)

end A142218

/-!
# A142219: Primes congruent to 22 mod 41.

The programs for A142219, the canonical program `A142219.P7248354823462158457` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142219 has offset 1).

The definition of A142219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1948 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142219.P7248354823462158457

`p?[41*n-19]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142219

/-- `p?[41*n-19]` -/
def P7248354823462158457.Spec : Prop :=
  ∀ n, P7248354823462158457.a n = A142219 (n + 1)

theorem P7248354823462158457.correct : P7248354823462158457.Spec := by
  intro n
  simp only [A142219, Nat.add_sub_cancel]

end A142219

/-! ## A142219.P7962563671368458644

`or(1, p?[a(n-1)+41])` with `a(0)=22`
-/

namespace A142219.P7962563671368458644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [22] fun n f1 =>
  f1 (n - 1) + 41

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142219.P7962563671368458644

namespace A142219

/-- `or(1, p?[a(n-1)+41])` -/
def P7962563671368458644.Spec : Prop :=
  ∀ n, (P7962563671368458644.a n : ℤ) = A142219 (n + 1)

end A142219

/-! ## A142219.P7759993421623754360

`A000027(p?[A156376(n)+A017425(n)])`
-/

namespace A142219.P7759993421623754360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n + A017425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142219.P7759993421623754360

namespace A142219

/-- `A000027(p?[A156376(n)+A017425(n)])` -/
def P7759993421623754360.Spec : Prop :=
  ∀ n, P7759993421623754360.a n = A142219 (n + 1)

end A142219

/-! ## A142219.P11878218855172587955

`A000027(p?[A082369(n+1)+A017497(n)])`
-/

namespace A142219.P11878218855172587955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1) + A017497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142219.P11878218855172587955

namespace A142219

/-- `A000027(p?[A082369(n+1)+A017497(n)])` -/
def P11878218855172587955.Spec : Prop :=
  ∀ n, P11878218855172587955.a n = A142219 (n + 1)

end A142219

/-! ## A142219.P16258324609864686659

`A033999(n)²*p?[A156376(n)+A017425(n)]`
-/

namespace A142219.P16258324609864686659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n + A017425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142219.P16258324609864686659

namespace A142219

/-- `A033999(n)²*p?[A156376(n)+A017425(n)]` -/
def P16258324609864686659.Spec : Prop :=
  ∀ n, P16258324609864686659.a n = A142219 (n + 1)

end A142219

/-! ## A142219.P14142482636854508699

`A000007(n+1)+p?[A156376(n)+A017425(n)]`
-/

namespace A142219.P14142482636854508699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n + A017425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142219.P14142482636854508699

namespace A142219

/-- `A000007(n+1)+p?[A156376(n)+A017425(n)]` -/
def P14142482636854508699.Spec : Prop :=
  ∀ n, P14142482636854508699.a n = A142219 (n + 1)

end A142219

/-! ## A142219.P3681938193822847932

`p?[A156376(n)+A017425(n)]%A219774(n+11)`
-/

namespace A142219.P3681938193822847932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n + A017425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A219774 (n + 11))

end

end A142219.P3681938193822847932

namespace A142219

/-- `p?[A156376(n)+A017425(n)]%A219774(n+11)` -/
def P3681938193822847932.Spec : Prop :=
  ∀ n, P3681938193822847932.a n = A142219 (n + 1)

end A142219

/-! ## A142219.P14753702449644662590

`A341994(24*n)+p?[A156376(n)+A017425(n)]`
-/

namespace A142219.P14753702449644662590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n + A017425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 (24 * n) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142219.P14753702449644662590

namespace A142219

/-- `A341994(24*n)+p?[A156376(n)+A017425(n)]` -/
def P14753702449644662590.Spec : Prop :=
  ∀ n, P14753702449644662590.a n = A142219 (n + 1)

end A142219

/-! ## A142219.P18385851745837685629

`A007947(p?[A017293(4*n+2)+n])`
-/

namespace A142219.P18385851745837685629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 (4 * n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142219.P18385851745837685629

namespace A142219

/-- `A007947(p?[A017293(4*n+2)+n])` -/
def P18385851745837685629.Spec : Prop :=
  ∀ n, P18385851745837685629.a n = A142219 (n + 1)

end A142219

/-! ## A142219.P3540730286018611002

`A001414(p?[A156376(n)+A017425(n)])`
-/

namespace A142219.P3540730286018611002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n + A017425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142219.P3540730286018611002

namespace A142219

/-- `A001414(p?[A156376(n)+A017425(n)])` -/
def P3540730286018611002.Spec : Prop :=
  ∀ n, P3540730286018611002.a n = A142219 (n + 1)

end A142219

/-! ## A142219.P16781632064013717316

`A008472(p?[A156376(n)+A017425(n)])`
-/

namespace A142219.P16781632064013717316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n + A017425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142219.P16781632064013717316

namespace A142219

/-- `A008472(p?[A156376(n)+A017425(n)])` -/
def P16781632064013717316.Spec : Prop :=
  ∀ n, P16781632064013717316.a n = A142219 (n + 1)

end A142219

/-! ## A142219.P2069113441469631603

`A000265(p?[A082369(n+1)+A017497(n)])`
-/

namespace A142219.P2069113441469631603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1) + A017497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142219.P2069113441469631603

namespace A142219

/-- `A000265(p?[A082369(n+1)+A017497(n)])` -/
def P2069113441469631603.Spec : Prop :=
  ∀ n, P2069113441469631603.a n = A142219 (n + 1)

end A142219

/-! ## A142219.P13769924872368563336

`A000265(p?[A304157(n+1)-A016789(n)])`
-/

namespace A142219.P13769924872368563336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) - A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142219.P13769924872368563336

namespace A142219

/-- `A000265(p?[A304157(n+1)-A016789(n)])` -/
def P13769924872368563336.Spec : Prop :=
  ∀ n, P13769924872368563336.a n = A142219 (n + 1)

end A142219

/-! ## A142219.P9623116355534111266

`A007913(p?[A304157(n+1)-A016789(n)])`
-/

namespace A142219.P9623116355534111266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) - A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142219.P9623116355534111266

namespace A142219

/-- `A007913(p?[A304157(n+1)-A016789(n)])` -/
def P9623116355534111266.Spec : Prop :=
  ∀ n, P9623116355534111266.a n = A142219 (n + 1)

end A142219

/-! ## A142219.P14425621942251171139

`A007947(p?[A304157(n+1)-A016789(n)])`
-/

namespace A142219.P14425621942251171139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) - A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142219.P14425621942251171139

namespace A142219

/-- `A007947(p?[A304157(n+1)-A016789(n)])` -/
def P14425621942251171139.Spec : Prop :=
  ∀ n, P14425621942251171139.a n = A142219 (n + 1)

end A142219

/-! ## A142219.P15832010458577998458

`A000027(p?[A004770(5*n+3)+n+1])`
-/

namespace A142219.P15832010458577998458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (5 * n + 3) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142219.P15832010458577998458

namespace A142219

/-- `A000027(p?[A004770(5*n+3)+n+1])` -/
def P15832010458577998458.Spec : Prop :=
  ∀ n, P15832010458577998458.a n = A142219 (n + 1)

end A142219

/-! ## A142219.P12218869400896508598

`record[p?[A319702(A232100(n+1))]]`
-/

namespace A142219.P12218869400896508598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (A232100 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142219.P12218869400896508598

namespace A142219

/-- `record[p?[A319702(A232100(n+1))]]` -/
def P12218869400896508598.Spec : Prop :=
  ∀ n, P12218869400896508598.a n = A142219 (n + 1)

end A142219

/-!
# A142220: Primes congruent to 23 mod 41.

The programs for A142220, the canonical program `A142220.P16687407604773362095` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142220 has offset 1).

The definition of A142220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1972 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142220.P16687407604773362095

`p?[41*n-18]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142220

/-- `p?[41*n-18]` -/
def P16687407604773362095.Spec : Prop :=
  ∀ n, P16687407604773362095.a n = A142220 (n + 1)

theorem P16687407604773362095.correct : P16687407604773362095.Spec := by
  intro n
  simp only [A142220, Nat.add_sub_cancel]

end A142220

/-! ## A142220.P5650296749755850857

`A000027(p?[A156795(n+1)+n+1])`
-/

namespace A142220.P5650296749755850857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156795 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142220.P5650296749755850857

namespace A142220

/-- `A000027(p?[A156795(n+1)+n+1])` -/
def P5650296749755850857.Spec : Prop :=
  ∀ n, P5650296749755850857.a n = A142220 (n + 1)

end A142220

/-! ## A142220.P7295589913401236890

`record[A020639(A158803(2*(n+1))-1)]`
-/

namespace A142220.P7295589913401236890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A158803 (2 * (n + 1)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142220.P7295589913401236890

namespace A142220

/-- `record[A020639(A158803(2*(n+1))-1)]` -/
def P7295589913401236890.Spec : Prop :=
  ∀ n, P7295589913401236890.a n = A142220 (n + 1)

end A142220

/-! ## A142220.P1081678923456166694

`record[A006530(A156795(n+1)+1+n)]`
-/

namespace A142220.P1081678923456166694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A156795 (n + 1) + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142220.P1081678923456166694

namespace A142220

/-- `record[A006530(A156795(n+1)+1+n)]` -/
def P1081678923456166694.Spec : Prop :=
  ∀ n, P1081678923456166694.a n = A142220 (n + 1)

end A142220

/-! ## A142220.P7202837521494889449

`record[A020639(A156797(2*n+1)+n+1)]`
-/

namespace A142220.P7202837521494889449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A156797 (2 * n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142220.P7202837521494889449

namespace A142220

/-- `record[A020639(A156797(2*n+1)+n+1)]` -/
def P7202837521494889449.Spec : Prop :=
  ∀ n, P7202837521494889449.a n = A142220 (n + 1)

end A142220

/-! ## A142220.P7022611599559329459

`record[A020639(A304157(n+1)-A016777(n))]`
-/

namespace A142220.P7022611599559329459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304157 (n + 1) - A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142220.P7022611599559329459

namespace A142220

/-- `record[A020639(A304157(n+1)-A016777(n))]` -/
def P7022611599559329459.Spec : Prop :=
  ∀ n, P7022611599559329459.a n = A142220 (n + 1)

end A142220

/-! ## A142220.P12323164018354643191

`record[A020639(A304611(n+1)-A304609(n+1))]`
-/

namespace A142220.P12323164018354643191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304611 (n + 1) - A304609 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142220.P12323164018354643191

namespace A142220

/-- `record[A020639(A304611(n+1)-A304609(n+1))]` -/
def P12323164018354643191.Spec : Prop :=
  ∀ n, P12323164018354643191.a n = A142220 (n + 1)

end A142220

/-! ## A142220.P1790475558366772750

`record[p?[A319702(A232100(n+1))+1]]`
-/

namespace A142220.P1790475558366772750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (A232100 (n + 1)).toNat + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142220.P1790475558366772750

namespace A142220

/-- `record[p?[A319702(A232100(n+1))+1]]` -/
def P1790475558366772750.Spec : Prop :=
  ∀ n, P1790475558366772750.a n = A142220 (n + 1)

end A142220

/-!
# A142221: Primes congruent to 24 mod 41.

The programs for A142221, the canonical program `A142221.P9571681019084595322` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142221 has offset 1).

The definition of A142221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1958 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142221.P9571681019084595322

`p?[41*n-17]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142221

/-- `p?[41*n-17]` -/
def P9571681019084595322.Spec : Prop :=
  ∀ n, P9571681019084595322.a n = A142221 (n + 1)

theorem P9571681019084595322.correct : P9571681019084595322.Spec := by
  intro n
  simp only [A142221, Nat.add_sub_cancel]

end A142221

/-! ## A142221.P14854114883953692795

`or(1, p?[A158803(2*(n+1))])`
-/

namespace A142221.P14854114883953692795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158803 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142221.P14854114883953692795

namespace A142221

/-- `or(1, p?[A158803(2*(n+1))])` -/
def P14854114883953692795.Spec : Prop :=
  ∀ n, P14854114883953692795.a n = A142221 (n + 1)

end A142221

/-! ## A142221.P17623755353188670157

`p?[A158803(2*(n+1))]%A261241(n)`
-/

namespace A142221.P17623755353188670157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158803 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A261241 n)

end

end A142221.P17623755353188670157

namespace A142221

/-- `p?[A158803(2*(n+1))]%A261241(n)` -/
def P17623755353188670157.Spec : Prop :=
  ∀ n, P17623755353188670157.a n = A142221 (n + 1)

end A142221

/-! ## A142221.P7012166421560775840

`A001222(A002476(n+1))*p?[A158803(2*(n+1))]`
-/

namespace A142221.P7012166421560775840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158803 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002476 (n + 1)).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142221.P7012166421560775840

namespace A142221

/-- `A001222(A002476(n+1))*p?[A158803(2*(n+1))]` -/
def P7012166421560775840.Spec : Prop :=
  ∀ n, P7012166421560775840.a n = A142221 (n + 1)

end A142221

/-! ## A142221.P15309054556542883273

`filter[A158803(2*(n+1)), A010051(#)]`
-/

namespace A142221.P15309054556542883273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158803 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A142221.P15309054556542883273

namespace A142221

/-- `filter[A158803(2*(n+1)), A010051(#)]` -/
def P15309054556542883273.Spec : Prop :=
  ∀ n, P15309054556542883273.a n = A142221 (n + 1)

end A142221

/-! ## A142221.P9525555989566388258

`filter[A158803(2*(n+1)), A355937(#)]`
-/

namespace A142221.P9525555989566388258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158803 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A142221.P9525555989566388258

namespace A142221

/-- `filter[A158803(2*(n+1)), A355937(#)]` -/
def P9525555989566388258.Spec : Prop :=
  ∀ n, P9525555989566388258.a n = A142221 (n + 1)

end A142221

/-! ## A142221.P4444055491954114098

`A007913(p?[A128473(n+1)+A017401(n)])`
-/

namespace A142221.P4444055491954114098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1) + A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142221.P4444055491954114098

namespace A142221

/-- `A007913(p?[A128473(n+1)+A017401(n)])` -/
def P4444055491954114098.Spec : Prop :=
  ∀ n, P4444055491954114098.a n = A142221 (n + 1)

end A142221

/-! ## A142221.P10034723319745019827

`filter[A158803(2*(n+1)), A257531(#)]`
-/

namespace A142221.P10034723319745019827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158803 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A142221.P10034723319745019827

namespace A142221

/-- `filter[A158803(2*(n+1)), A257531(#)]` -/
def P10034723319745019827.Spec : Prop :=
  ∀ n, P10034723319745019827.a n = A142221 (n + 1)

end A142221

/-! ## A142221.P16431018936010599366

`filter[A158803(2*(n+1)), A302777(#)]`
-/

namespace A142221.P16431018936010599366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158803 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A142221.P16431018936010599366

namespace A142221

/-- `filter[A158803(2*(n+1)), A302777(#)]` -/
def P16431018936010599366.Spec : Prop :=
  ∀ n, P16431018936010599366.a n = A142221 (n + 1)

end A142221

/-! ## A142221.P14738129459858032823

`filter[A158803(2*(n+1)), A323152(#)]`
-/

namespace A142221.P14738129459858032823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158803 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A142221.P14738129459858032823

namespace A142221

/-- `filter[A158803(2*(n+1)), A323152(#)]` -/
def P14738129459858032823.Spec : Prop :=
  ∀ n, P14738129459858032823.a n = A142221 (n + 1)

end A142221

/-! ## A142221.P10670810670106489212

`filter[A158803(2*(n+1)), A323153(#)]`
-/

namespace A142221.P10670810670106489212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158803 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A142221.P10670810670106489212

namespace A142221

/-- `filter[A158803(2*(n+1)), A323153(#)]` -/
def P10670810670106489212.Spec : Prop :=
  ∀ n, P10670810670106489212.a n = A142221 (n + 1)

end A142221

/-! ## A142221.P1290532432521131646

`filter[A158803(2*(n+1)), A351957(#)]`
-/

namespace A142221.P1290532432521131646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158803 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351957 (f1 j).toNat = 1) n)

end

end A142221.P1290532432521131646

namespace A142221

/-- `filter[A158803(2*(n+1)), A351957(#)]` -/
def P1290532432521131646.Spec : Prop :=
  ∀ n, P1290532432521131646.a n = A142221 (n + 1)

end A142221

/-! ## A142221.P2369548339407831936

`A006530(2*p?[A158803(2*(n+1))])`
-/

namespace A142221.P2369548339407831936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158803 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142221.P2369548339407831936

namespace A142221

/-- `A006530(2*p?[A158803(2*(n+1))])` -/
def P2369548339407831936.Spec : Prop :=
  ∀ n, P2369548339407831936.a n = A142221 (n + 1)

end A142221

/-!
# A142222: Primes congruent to 25 mod 41.

The programs for A142222, the canonical program `A142222.P16922046931421411177` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142222 has offset 1).

The definition of A142222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1960 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142222.P16922046931421411177

`p?[41*n-16]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142222

/-- `p?[41*n-16]` -/
def P16922046931421411177.Spec : Prop :=
  ∀ n, P16922046931421411177.a n = A142222 (n + 1)

theorem P16922046931421411177.correct : P16922046931421411177.Spec := by
  intro n
  simp only [A142222, Nat.add_sub_cancel]

end A142222

/-! ## A142222.P9654546905239971352

`p?[A139612(n)+A082285(n)]%A017236(n)`
-/

namespace A142222.P9654546905239971352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139612 n + A082285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017236 n)

end

end A142222.P9654546905239971352

namespace A142222

/-- `p?[A139612(n)+A082285(n)]%A017236(n)` -/
def P9654546905239971352.Spec : Prop :=
  ∀ n, P9654546905239971352.a n = A142222 (n + 1)

end A142222

/-! ## A142222.P15486786307297365023

`A242179(n)²*p?[A139612(n)+A082285(n)]`
-/

namespace A142222.P15486786307297365023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139612 n + A082285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242179 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142222.P15486786307297365023

namespace A142222

/-- `A242179(n)²*p?[A139612(n)+A082285(n)]` -/
def P15486786307297365023.Spec : Prop :=
  ∀ n, P15486786307297365023.a n = A142222 (n + 1)

end A142222

/-! ## A142222.P4304803516504151369

`A109017(2*n)+p?[A139612(n)+A082285(n)]`
-/

namespace A142222.P4304803516504151369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139612 n + A082285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109017 (2 * n) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142222.P4304803516504151369

namespace A142222

/-- `A109017(2*n)+p?[A139612(n)+A082285(n)]` -/
def P4304803516504151369.Spec : Prop :=
  ∀ n, P4304803516504151369.a n = A142222 (n + 1)

end A142222

/-! ## A142222.P5367649968422764402

`A000027(p?[A139612(n)+A082285(n)])`
-/

namespace A142222.P5367649968422764402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139612 n + A082285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142222.P5367649968422764402

namespace A142222

/-- `A000027(p?[A139612(n)+A082285(n)])` -/
def P5367649968422764402.Spec : Prop :=
  ∀ n, P5367649968422764402.a n = A142222 (n + 1)

end A142222

/-! ## A142222.P17048275832032341249

`A007947(p?[A232100(n+1)-16])`
-/

namespace A142222.P17048275832032341249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232100 (n + 1) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142222.P17048275832032341249

namespace A142222

/-- `A007947(p?[A232100(n+1)-16])` -/
def P17048275832032341249.Spec : Prop :=
  ∀ n, P17048275832032341249.a n = A142222 (n + 1)

end A142222

/-! ## A142222.P4847014354031418706

`A008475(p?[A232100(n+1)-16])`
-/

namespace A142222.P4847014354031418706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232100 (n + 1) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142222.P4847014354031418706

namespace A142222

/-- `A008475(p?[A232100(n+1)-16])` -/
def P4847014354031418706.Spec : Prop :=
  ∀ n, P4847014354031418706.a n = A142222 (n + 1)

end A142222

/-! ## A142222.P12410243777860124828

`A000265(p?[A004768(5*n+2)+n])`
-/

namespace A142222.P12410243777860124828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 (5 * n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142222.P12410243777860124828

namespace A142222

/-- `A000265(p?[A004768(5*n+2)+n])` -/
def P12410243777860124828.Spec : Prop :=
  ∀ n, P12410243777860124828.a n = A142222 (n + 1)

end A142222

/-! ## A142222.P1987153056401236766

`A318456(p?[A139612(n)+A082285(n)])`
-/

namespace A142222.P1987153056401236766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139612 n + A082285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318456 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142222.P1987153056401236766

namespace A142222

/-- `A318456(p?[A139612(n)+A082285(n)])` -/
def P1987153056401236766.Spec : Prop :=
  ∀ n, P1987153056401236766.a n = A142222 (n + 1)

end A142222

/-! ## A142222.P14496447510295437368

`A093178(p?[A128468(n)+A017485(n)])`
-/

namespace A142222.P14496447510295437368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n + A017485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142222.P14496447510295437368

namespace A142222

/-- `A093178(p?[A128468(n)+A017485(n)])` -/
def P14496447510295437368.Spec : Prop :=
  ∀ n, P14496447510295437368.a n = A142222 (n + 1)

end A142222

/-!
# A142223: Primes congruent to 26 mod 41.

The programs for A142223, the canonical program `A142223.P3621335472898979268` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142223 has offset 1).

The definition of A142223 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1968 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142223.P3621335472898979268

`p?[41*n-15]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142223

/-- `p?[41*n-15]` -/
def P3621335472898979268.Spec : Prop :=
  ∀ n, P3621335472898979268.a n = A142223 (n + 1)

theorem P3621335472898979268.correct : P3621335472898979268.Spec := by
  intro n
  simp only [A142223, Nat.add_sub_cancel]

end A142223

/-! ## A142223.P852948044388159014

`or(1, p?[A128473(n+1)+A017425(n)])`
-/

namespace A142223.P852948044388159014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1) + A017425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142223.P852948044388159014

namespace A142223

/-- `or(1, p?[A128473(n+1)+A017425(n)])` -/
def P852948044388159014.Spec : Prop :=
  ∀ n, P852948044388159014.a n = A142223 (n + 1)

end A142223

/-! ## A142223.P4755615186120036511

`A000027(p?[A128473(n+1)+A017425(n)])`
-/

namespace A142223.P4755615186120036511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1) + A017425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142223.P4755615186120036511

namespace A142223

/-- `A000027(p?[A128473(n+1)+A017425(n)])` -/
def P4755615186120036511.Spec : Prop :=
  ∀ n, P4755615186120036511.a n = A142223 (n + 1)

end A142223

/-! ## A142223.P5452363972388330017

`record[A020639(A158803(4*(n+1))+2)]`
-/

namespace A142223.P5452363972388330017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A158803 (4 * (n + 1)) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142223.P5452363972388330017

namespace A142223

/-- `record[A020639(A158803(4*(n+1))+2)]` -/
def P5452363972388330017.Spec : Prop :=
  ∀ n, P5452363972388330017.a n = A142223 (n + 1)

end A142223

/-! ## A142223.P7255484550226504271

`record[A020639(A171141(4*(n+1))-7)]`
-/

namespace A142223.P7255484550226504271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A171141 (4 * (n + 1)) - 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142223.P7255484550226504271

namespace A142223

/-- `record[A020639(A171141(4*(n+1))-7)]` -/
def P7255484550226504271.Spec : Prop :=
  ∀ n, P7255484550226504271.a n = A142223 (n + 1)

end A142223

/-! ## A142223.P16487162739439305763

`A000265(p?[A017341(4*n+2)+n])`
-/

namespace A142223.P16487162739439305763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 (4 * n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142223.P16487162739439305763

namespace A142223

/-- `A000265(p?[A017341(4*n+2)+n])` -/
def P16487162739439305763.Spec : Prop :=
  ∀ n, P16487162739439305763.a n = A142223 (n + 1)

end A142223

/-! ## A142223.P8979716851467110665

`A000265(p?[A128473(n+1)+A017425(n)])`
-/

namespace A142223.P8979716851467110665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1) + A017425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142223.P8979716851467110665

namespace A142223

/-- `A000265(p?[A128473(n+1)+A017425(n)])` -/
def P8979716851467110665.Spec : Prop :=
  ∀ n, P8979716851467110665.a n = A142223 (n + 1)

end A142223

/-! ## A142223.P8191294165522177200

`A007913(p?[A128473(n+1)+A017425(n)])`
-/

namespace A142223.P8191294165522177200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1) + A017425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142223.P8191294165522177200

namespace A142223

/-- `A007913(p?[A128473(n+1)+A017425(n)])` -/
def P8191294165522177200.Spec : Prop :=
  ∀ n, P8191294165522177200.a n = A142223 (n + 1)

end A142223

/-! ## A142223.P13018465606527449140

`A007947(p?[A128473(n+1)+A017425(n)])`
-/

namespace A142223.P13018465606527449140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1) + A017425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142223.P13018465606527449140

namespace A142223

/-- `A007947(p?[A128473(n+1)+A017425(n)])` -/
def P13018465606527449140.Spec : Prop :=
  ∀ n, P13018465606527449140.a n = A142223 (n + 1)

end A142223

/-! ## A142223.P8562213836685936545

`record[A020639(A304157(2*(n+1))-A016777(2*n))]`
-/

namespace A142223.P8562213836685936545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304157 (2 * (n + 1)) - A016777 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142223.P8562213836685936545

namespace A142223

/-- `record[A020639(A304157(2*(n+1))-A016777(2*n))]` -/
def P8562213836685936545.Spec : Prop :=
  ∀ n, P8562213836685936545.a n = A142223 (n + 1)

end A142223

/-! ## A142223.P11002313932663765950

`A125746(p?[A128473(n+1)+A017425(n)])`
-/

namespace A142223.P11002313932663765950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1) + A017425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142223.P11002313932663765950

namespace A142223

/-- `A125746(p?[A128473(n+1)+A017425(n)])` -/
def P11002313932663765950.Spec : Prop :=
  ∀ n, P11002313932663765950.a n = A142223 (n + 1)

end A142223

/-!
# A142224: Primes congruent to 27 mod 41.

The programs for A142224, the canonical program `A142224.P15359484830187203343` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142224 has offset 1).

The definition of A142224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1952 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142224.P15359484830187203343

`p?[82*n+27]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142224

/-- `p?[82*n+27]` -/
def P15359484830187203343.Spec : Prop :=
  ∀ n, (P15359484830187203343.a n : ℤ) = A142224 (n + 1)

theorem P15359484830187203343.correct : P15359484830187203343.Spec := by
  intro n
  simp only [A142224, Nat.add_sub_cancel]

end A142224

/-! ## A142224.P14476683140764746752

`p?[A139612(n)+A125169(n)]%A017151(n)`
-/

namespace A142224.P14476683140764746752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139612 n + A125169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017151 n)

end

end A142224.P14476683140764746752

namespace A142224

/-- `p?[A139612(n)+A125169(n)]%A017151(n)` -/
def P14476683140764746752.Spec : Prop :=
  ∀ n, P14476683140764746752.a n = A142224 (n + 1)

end A142224

/-! ## A142224.P16434412982834586339

`A000038(n+1)+p?[A139612(n)+A125169(n)]`
-/

namespace A142224.P16434412982834586339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139612 n + A125169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142224.P16434412982834586339

namespace A142224

/-- `A000038(n+1)+p?[A139612(n)+A125169(n)]` -/
def P16434412982834586339.Spec : Prop :=
  ∀ n, P16434412982834586339.a n = A142224 (n + 1)

end A142224

/-! ## A142224.P4235012408164800037

`A000027(p?[A139612(n)+A125169(n)])`
-/

namespace A142224.P4235012408164800037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139612 n + A125169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142224.P4235012408164800037

namespace A142224

/-- `A000027(p?[A139612(n)+A125169(n)])` -/
def P4235012408164800037.Spec : Prop :=
  ∀ n, P4235012408164800037.a n = A142224 (n + 1)

end A142224

/-! ## A142224.P16154473307913261893

`A000027(p?[A161714(n)-A133310(n)])`
-/

namespace A142224.P16154473307913261893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161714 n - A133310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142224.P16154473307913261893

namespace A142224

/-- `A000027(p?[A161714(n)-A133310(n)])` -/
def P16154473307913261893.Spec : Prop :=
  ∀ n, P16154473307913261893.a n = A142224 (n + 1)

end A142224

/-! ## A142224.P17347944201860111946

`∩[A171141(2*(n+1))-A171141(n+2), A038920(n+2)]`
-/

namespace A142224.P17347944201860111946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (2 * (n + 1)) - A171141 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038920 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142224.P17347944201860111946

namespace A142224

/-- `∩[A171141(2*(n+1))-A171141(n+2), A038920(n+2)]` -/
def P17347944201860111946.Spec : Prop :=
  ∀ n, (P17347944201860111946.a n : ℤ) = A142224 (n + 1)

end A142224

/-! ## A142224.P15223156457763066091

`A007913(p?[A128473(n+1)+A017437(n)])`
-/

namespace A142224.P15223156457763066091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1) + A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142224.P15223156457763066091

namespace A142224

/-- `A007913(p?[A128473(n+1)+A017437(n)])` -/
def P15223156457763066091.Spec : Prop :=
  ∀ n, P15223156457763066091.a n = A142224 (n + 1)

end A142224

/-! ## A142224.P17591113459675284637

`A007947(p?[A128473(n+1)+A017437(n)])`
-/

namespace A142224.P17591113459675284637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1) + A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142224.P17591113459675284637

namespace A142224

/-- `A007947(p?[A128473(n+1)+A017437(n)])` -/
def P17591113459675284637.Spec : Prop :=
  ∀ n, P17591113459675284637.a n = A142224 (n + 1)

end A142224

/-!
# A142225: Primes congruent to 28 mod 41.

The programs for A142225, the canonical program `A142225.P13519839368476570078` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142225 has offset 1).

The definition of A142225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1981 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142225.P13519839368476570078

`p?[82*n-13]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142225

/-- `p?[82*n-13]` -/
def P13519839368476570078.Spec : Prop :=
  ∀ n, P13519839368476570078.a n = A142225 (n + 1)

theorem P13519839368476570078.correct : P13519839368476570078.Spec := by
  intro n
  simp only [A142225, Nat.add_sub_cancel]

end A142225

/-! ## A142225.P7623346627339377046

`xor(1, p?[4*A017353(n)+n])+1`
-/

namespace A142225.P7623346627339377046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A017353 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) + 1

end

end A142225.P7623346627339377046

namespace A142225

/-- `xor(1, p?[4*A017353(n)+n])+1` -/
def P7623346627339377046.Spec : Prop :=
  ∀ n, P7623346627339377046.a n = A142225 (n + 1)

end A142225

/-! ## A142225.P1890893697796440265

`∏{p}[p?[A249674(n+2)+A017497(n)], #]`
-/

namespace A142225.P1890893697796440265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 (n + 2) + A017497 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142225.P1890893697796440265

namespace A142225

/-- `∏{p}[p?[A249674(n+2)+A017497(n)], #]` -/
def P1890893697796440265.Spec : Prop :=
  ∀ n, (P1890893697796440265.a n : ℤ) = A142225 (n + 1)

end A142225

/-! ## A142225.P10536840684193294273

`p?[A128473(n+1)+A017425(n)+2]+2%A006466(n)`
-/

namespace A142225.P10536840684193294273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1) + (A017425 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod 2 (A006466 n)

end

end A142225.P10536840684193294273

namespace A142225

/-- `p?[A128473(n+1)+A017425(n)+2]+2%A006466(n)` -/
def P10536840684193294273.Spec : Prop :=
  ∀ n, P10536840684193294273.a n = A142225 (n + 1)

end A142225

/-! ## A142225.P11988843505572685785

`∑{d}[p?[a(n-1)+41], A000010(#)]` with `a(0)=28`
-/

namespace A142225.P11988843505572685785
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [28] fun n f2 =>
  f2 (n - 1) + 41

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d

end

end A142225.P11988843505572685785

namespace A142225

/-- `∑{d}[p?[a(n-1)+41], A000010(#)]` -/
def P11988843505572685785.Spec : Prop :=
  ∀ n, P11988843505572685785.a n = A142225 (n + 1)

end A142225

/-! ## A142225.P18328225843602805545

`A007913(p?[A174029(n)+A017017(n)])`
-/

namespace A142225.P18328225843602805545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174029 n + A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142225.P18328225843602805545

namespace A142225

/-- `A007913(p?[A174029(n)+A017017(n)])` -/
def P18328225843602805545.Spec : Prop :=
  ∀ n, P18328225843602805545.a n = A142225 (n + 1)

end A142225

/-! ## A142225.P17972973014033005471

`A007913(p?[A139607(n)-A057979(n)])`
-/

namespace A142225.P17972973014033005471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139607 n - A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142225.P17972973014033005471

namespace A142225

/-- `A007913(p?[A139607(n)-A057979(n)])` -/
def P17972973014033005471.Spec : Prop :=
  ∀ n, P17972973014033005471.a n = A142225 (n + 1)

end A142225

/-! ## A142225.P14096703474324584227

`record[A006530(A017233(A017233(n)+10)+n+1)]`
-/

namespace A142225.P14096703474324584227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A017233 (A017233 n + 10).toNat + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142225.P14096703474324584227

namespace A142225

/-- `record[A006530(A017233(A017233(n)+10)+n+1)]` -/
def P14096703474324584227.Spec : Prop :=
  ∀ n, P14096703474324584227.a n = A142225 (n + 1)

end A142225

/-! ## A142225.P11020016433534059813

`record[p?[A319702(A232100(n+1)+12)]]`
-/

namespace A142225.P11020016433534059813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (A232100 (n + 1) + 12).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142225.P11020016433534059813

namespace A142225

/-- `record[p?[A319702(A232100(n+1)+12)]]` -/
def P11020016433534059813.Spec : Prop :=
  ∀ n, P11020016433534059813.a n = A142225 (n + 1)

end A142225

/-!
# A142226: Primes congruent to 29 mod 41.

The programs for A142226, the canonical program `A142226.P17211449638472722708` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142226 has offset 1).

The definition of A142226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1976 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142226.P17211449638472722708

`p?[41*n-12]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142226

/-- `p?[41*n-12]` -/
def P17211449638472722708.Spec : Prop :=
  ∀ n, P17211449638472722708.a n = A142226 (n + 1)

theorem P17211449638472722708.correct : P17211449638472722708.Spec := by
  intro n
  simp only [A142226, Nat.add_sub_cancel]

end A142226

/-! ## A142226.P8966235708222802543

`or(1, p?[41*n+29])`
-/

namespace A142226.P8966235708222802543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41 * n + 29

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142226.P8966235708222802543

namespace A142226

/-- `or(1, p?[41*n+29])` -/
def P8966235708222802543.Spec : Prop :=
  ∀ n, (P8966235708222802543.a n : ℤ) = A142226 (n + 1)

end A142226

/-! ## A142226.P11321948714211221725

`∏{p}[p?[41*n+29], #]`
-/

namespace A142226.P11321948714211221725
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41 * n + 29

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A142226.P11321948714211221725

namespace A142226

/-- `∏{p}[p?[41*n+29], #]` -/
def P11321948714211221725.Spec : Prop :=
  ∀ n, (P11321948714211221725.a n : ℤ) = A142226 (n + 1)

end A142226

/-! ## A142226.P10635210171104211871

`p?[41*n+29]*char[xor(1, n)]`
-/

namespace A142226.P10635210171104211871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41 * n + 29

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) * (if ∃ j, f2 j = n then 1 else 0)

end

end A142226.P10635210171104211871

namespace A142226

/-- `p?[41*n+29]*char[xor(1, n)]` -/
def P10635210171104211871.Spec : Prop :=
  ∀ n, (P10635210171104211871.a n : ℤ) = A142226 (n + 1)

end A142226

/-! ## A142226.P8274019470113715021

`p?[41*n+29]%(14*(n+1))²`
-/

namespace A142226.P8274019470113715021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41 * n + 29

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) % (14 * (n + 1)) ^ 2

end

end A142226.P8274019470113715021

namespace A142226

/-- `p?[41*n+29]%(14*(n+1))²` -/
def P8274019470113715021.Spec : Prop :=
  ∀ n, (P8274019470113715021.a n : ℤ) = A142226 (n + 1)

end A142226

/-! ## A142226.P15392257506556883747

`char[A017360(n)]+p?[41*n+29]`
-/

namespace A142226.P15392257506556883747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017360 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41 * n + 29

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

end

end A142226.P15392257506556883747

namespace A142226

/-- `char[A017360(n)]+p?[41*n+29]` -/
def P15392257506556883747.Spec : Prop :=
  ∀ n, (P15392257506556883747.a n : ℤ) = A142226 (n + 1)

end A142226

/-! ## A142226.P650459267921901899

`lcm(p?[41*n+29], A066170(A057944(n)))`
-/

namespace A142226.P650459267921901899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41 * n + 29

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (A066170 (A057944 n).toNat)

end

end A142226.P650459267921901899

namespace A142226

/-- `lcm(p?[41*n+29], A066170(A057944(n)))` -/
def P650459267921901899.Spec : Prop :=
  ∀ n, (P650459267921901899.a n : ℤ) = A142226 (n + 1)

end A142226

/-! ## A142226.P1775092200558860133

`record[A020639(41*n+29)]`
-/

namespace A142226.P1775092200558860133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (41 * n + 29)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142226.P1775092200558860133

namespace A142226

/-- `record[A020639(41*n+29)]` -/
def P1775092200558860133.Spec : Prop :=
  ∀ n, P1775092200558860133.a n = A142226 (n + 1)

end A142226

/-!
# A142227: Primes congruent to 30 mod 41.

The programs for A142227, the canonical program `A142227.P6773654250959170506` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142227 has offset 1).

The definition of A142227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1964 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142227.P6773654250959170506

`p?[41*n-11]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142227

/-- `p?[41*n-11]` -/
def P6773654250959170506.Spec : Prop :=
  ∀ n, P6773654250959170506.a n = A142227 (n + 1)

theorem P6773654250959170506.correct : P6773654250959170506.Spec := by
  intro n
  simp only [A142227, Nat.add_sub_cancel]

end A142227

/-! ## A142227.P15377818341748266363

`or(1, p?[a(n-1)+41])` with `a(0)=30`
-/

namespace A142227.P15377818341748266363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [30] fun n f1 =>
  f1 (n - 1) + 41

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142227.P15377818341748266363

namespace A142227

/-- `or(1, p?[a(n-1)+41])` -/
def P15377818341748266363.Spec : Prop :=
  ∀ n, (P15377818341748266363.a n : ℤ) = A142227 (n + 1)

end A142227

/-! ## A142227.P16156379151824652066

`A000007(n+1)+p?[A128473(n+1)+A017473(n)]`
-/

namespace A142227.P16156379151824652066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1) + A017473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142227.P16156379151824652066

namespace A142227

/-- `A000007(n+1)+p?[A128473(n+1)+A017473(n)]` -/
def P16156379151824652066.Spec : Prop :=
  ∀ n, P16156379151824652066.a n = A142227 (n + 1)

end A142227

/-! ## A142227.P3875944188715473905

`p?[A128473(n+1)+A017473(n)]%A096399(n+1)`
-/

namespace A142227.P3875944188715473905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1) + A017473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A096399 (n + 1))

end

end A142227.P3875944188715473905

namespace A142227

/-- `p?[A128473(n+1)+A017473(n)]%A096399(n+1)` -/
def P3875944188715473905.Spec : Prop :=
  ∀ n, P3875944188715473905.a n = A142227 (n + 1)

end A142227

/-! ## A142227.P6166817033836756574

`record[A006530(82*(n+1)-11)]`
-/

namespace A142227.P6166817033836756574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (82 * (n + 1) - 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142227.P6166817033836756574

namespace A142227

/-- `record[A006530(82*(n+1)-11)]` -/
def P6166817033836756574.Spec : Prop :=
  ∀ n, P6166817033836756574.a n = A142227 (n + 1)

end A142227

/-! ## A142227.P9329194473102853831

`record[A020639(82*(n+1)-11)]`
-/

namespace A142227.P9329194473102853831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (82 * (n + 1) - 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142227.P9329194473102853831

namespace A142227

/-- `record[A020639(82*(n+1)-11)]` -/
def P9329194473102853831.Spec : Prop :=
  ∀ n, P9329194473102853831.a n = A142227 (n + 1)

end A142227

/-! ## A142227.P10735583088365830982

`A001414(p?[A128473(n+1)+A017473(n)])`
-/

namespace A142227.P10735583088365830982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1) + A017473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142227.P10735583088365830982

namespace A142227

/-- `A001414(p?[A128473(n+1)+A017473(n)])` -/
def P10735583088365830982.Spec : Prop :=
  ∀ n, P10735583088365830982.a n = A142227 (n + 1)

end A142227

/-!
# A142228: Primes congruent to 31 mod 41.

The programs for A142228, the canonical program `A142228.P4324407765704992455` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142228 has offset 1).

The definition of A142228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1938 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142228.P4324407765704992455

`p?[41*n-10]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142228

/-- `p?[41*n-10]` -/
def P4324407765704992455.Spec : Prop :=
  ∀ n, P4324407765704992455.a n = A142228 (n + 1)

theorem P4324407765704992455.correct : P4324407765704992455.Spec := by
  intro n
  simp only [A142228, Nat.add_sub_cancel]

end A142228

/-! ## A142228.P4701872600783149572

`∏{d}[p?[a(n-1)+41], #]` with `a(0)=31`
-/

namespace A142228.P4701872600783149572
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [31] fun n f2 =>
  f2 (n - 1) + 41

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A142228.P4701872600783149572

namespace A142228

/-- `∏{d}[p?[a(n-1)+41], #]` -/
def P4701872600783149572.Spec : Prop :=
  ∀ n, (P4701872600783149572.a n : ℤ) = A142228 (n + 1)

end A142228

/-! ## A142228.P11490306206286355113

`abs(2-p?[a(n-1)+41])+2` with `a(0)=31`
-/

namespace A142228.P11490306206286355113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [31] fun n f1 =>
  f1 (n - 1) + 41

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)| + 2

end

end A142228.P11490306206286355113

namespace A142228

/-- `abs(2-p?[a(n-1)+41])+2` -/
def P11490306206286355113.Spec : Prop :=
  ∀ n, P11490306206286355113.a n = A142228 (n + 1)

end A142228

/-! ## A142228.P5128994140782256328

`round(sqrt(p?[a(n-1)+41]²+1))` with `a(0)=31`
-/

namespace A142228.P5128994140782256328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [31] fun n f1 =>
  f1 (n - 1) + 41

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 + 1 : ℝ))

end

end A142228.P5128994140782256328

namespace A142228

/-- `round(sqrt(p?[a(n-1)+41]²+1))` -/
def P5128994140782256328.Spec : Prop :=
  ∀ n, P5128994140782256328.a n = A142228 (n + 1)

end A142228

/-! ## A142228.P890748223073386728

`∩[A171141(2*(n+1))-2, A038919(n+2)]`
-/

namespace A142228.P890748223073386728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (2 * (n + 1)) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038919 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142228.P890748223073386728

namespace A142228

/-- `∩[A171141(2*(n+1))-2, A038919(n+2)]` -/
def P890748223073386728.Spec : Prop :=
  ∀ n, (P890748223073386728.a n : ℤ) = A142228 (n + 1)

end A142228

/-! ## A142228.P1472803150655847472

`∩[A171141(2*(n+1))-2, A191030(n+2)]`
-/

namespace A142228.P1472803150655847472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (2 * (n + 1)) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191030 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142228.P1472803150655847472

namespace A142228

/-- `∩[A171141(2*(n+1))-2, A191030(n+2)]` -/
def P1472803150655847472.Spec : Prop :=
  ∀ n, (P1472803150655847472.a n : ℤ) = A142228 (n + 1)

end A142228

/-! ## A142228.P9860758876010991775

`record[A006530(41*(n+1)-10)]`
-/

namespace A142228.P9860758876010991775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (41 * (n + 1) - 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142228.P9860758876010991775

namespace A142228

/-- `record[A006530(41*(n+1)-10)]` -/
def P9860758876010991775.Spec : Prop :=
  ∀ n, P9860758876010991775.a n = A142228 (n + 1)

end A142228

/-! ## A142228.P7813620147026566433

`record[A020639(41*(n+1)-10)]`
-/

namespace A142228.P7813620147026566433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (41 * (n + 1) - 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142228.P7813620147026566433

namespace A142228

/-- `record[A020639(41*(n+1)-10)]` -/
def P7813620147026566433.Spec : Prop :=
  ∀ n, P7813620147026566433.a n = A142228 (n + 1)

end A142228

/-! ## A142228.P14222198902617681995

`A001414(p?[A232100(n+1)-10])`
-/

namespace A142228.P14222198902617681995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232100 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142228.P14222198902617681995

namespace A142228

/-- `A001414(p?[A232100(n+1)-10])` -/
def P14222198902617681995.Spec : Prop :=
  ∀ n, P14222198902617681995.a n = A142228 (n + 1)

end A142228

/-! ## A142228.P1159506406238080035

`A007913(p?[A128473(n+1)+A017485(n)])`
-/

namespace A142228.P1159506406238080035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1) + A017485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142228.P1159506406238080035

namespace A142228

/-- `A007913(p?[A128473(n+1)+A017485(n)])` -/
def P1159506406238080035.Spec : Prop :=
  ∀ n, P1159506406238080035.a n = A142228 (n + 1)

end A142228

/-! ## A142228.P14680795173298704571

`A125746(p?[A017041(5*n+3)+A004273(3*(n+1))])`
-/

namespace A142228.P14680795173298704571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 (5 * n + 3) + A004273 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142228.P14680795173298704571

namespace A142228

/-- `A125746(p?[A017041(5*n+3)+A004273(3*(n+1))])` -/
def P14680795173298704571.Spec : Prop :=
  ∀ n, P14680795173298704571.a n = A142228 (n + 1)

end A142228

/-!
# A142229: Primes congruent to 32 mod 41.

The programs for A142229, the canonical program `A142229.P16253765682010389413` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142229 has offset 1).

The definition of A142229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1955 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142229.P16253765682010389413

`p?[41*n-9]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142229

/-- `p?[41*n-9]` -/
def P16253765682010389413.Spec : Prop :=
  ∀ n, P16253765682010389413.a n = A142229 (n + 1)

theorem P16253765682010389413.correct : P16253765682010389413.Spec := by
  intro n
  simp only [A142229, Nat.add_sub_cancel]

end A142229

/-! ## A142229.P14291235715912511967

`∏{p}[p?[A128470(n+1)+A017401(n)], #]`
-/

namespace A142229.P14291235715912511967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 (n + 1) + A017401 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142229.P14291235715912511967

namespace A142229

/-- `∏{p}[p?[A128470(n+1)+A017401(n)], #]` -/
def P14291235715912511967.Spec : Prop :=
  ∀ n, (P14291235715912511967.a n : ℤ) = A142229 (n + 1)

end A142229

/-! ## A142229.P8096132100225100441

`A000027(p?[A128473(n+1)+A017497(n)])`
-/

namespace A142229.P8096132100225100441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1) + A017497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142229.P8096132100225100441

namespace A142229

/-- `A000027(p?[A128473(n+1)+A017497(n)])` -/
def P8096132100225100441.Spec : Prop :=
  ∀ n, P8096132100225100441.a n = A142229 (n + 1)

end A142229

/-! ## A142229.P13027024561742336690

`p?[A128473(n+1)+A017497(n)]%A244254(n+1)`
-/

namespace A142229.P13027024561742336690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1) + A017497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A244254 (n + 1))

end

end A142229.P13027024561742336690

namespace A142229

/-- `p?[A128473(n+1)+A017497(n)]%A244254(n+1)` -/
def P13027024561742336690.Spec : Prop :=
  ∀ n, P13027024561742336690.a n = A142229 (n + 1)

end A142229

/-! ## A142229.P15625518811521135211

`or(1, p?[A155098(2*(n+1))])`
-/

namespace A142229.P15625518811521135211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155098 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142229.P15625518811521135211

namespace A142229

/-- `or(1, p?[A155098(2*(n+1))])` -/
def P15625518811521135211.Spec : Prop :=
  ∀ n, P15625518811521135211.a n = A142229 (n + 1)

end A142229

/-! ## A142229.P7351045263634450405

`∩[A171141(2*(n+1))-1, A038919(n+2)]`
-/

namespace A142229.P7351045263634450405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (2 * (n + 1)) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038919 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142229.P7351045263634450405

namespace A142229

/-- `∩[A171141(2*(n+1))-1, A038919(n+2)]` -/
def P7351045263634450405.Spec : Prop :=
  ∀ n, (P7351045263634450405.a n : ℤ) = A142229 (n + 1)

end A142229

/-! ## A142229.P8563584133745164881

`∩[A171141(2*(n+1))-1, A191030(n+2)]`
-/

namespace A142229.P8563584133745164881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (2 * (n + 1)) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191030 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142229.P8563584133745164881

namespace A142229

/-- `∩[A171141(2*(n+1))-1, A191030(n+2)]` -/
def P8563584133745164881.Spec : Prop :=
  ∀ n, (P8563584133745164881.a n : ℤ) = A142229 (n + 1)

end A142229

/-! ## A142229.P17457072207142461295

`record[A020639(A155098(2*(n+2)))]`
-/

namespace A142229.P17457072207142461295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A155098 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142229.P17457072207142461295

namespace A142229

/-- `record[A020639(A155098(2*(n+2)))]` -/
def P17457072207142461295.Spec : Prop :=
  ∀ n, P17457072207142461295.a n = A142229 (n + 1)

end A142229

/-! ## A142229.P8170061091123293138

`filter[A155098(2*(n+1)), A010051(#)]`
-/

namespace A142229.P8170061091123293138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155098 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A142229.P8170061091123293138

namespace A142229

/-- `filter[A155098(2*(n+1)), A010051(#)]` -/
def P8170061091123293138.Spec : Prop :=
  ∀ n, P8170061091123293138.a n = A142229 (n + 1)

end A142229

/-! ## A142229.P18391634316118952770

`A007947(p?[A017293(4*n+3)+n])`
-/

namespace A142229.P18391634316118952770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 (4 * n + 3) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142229.P18391634316118952770

namespace A142229

/-- `A007947(p?[A017293(4*n+3)+n])` -/
def P18391634316118952770.Spec : Prop :=
  ∀ n, P18391634316118952770.a n = A142229 (n + 1)

end A142229

/-! ## A142229.P6899236782852332099

`A007913(p?[A128473(n+1)+A017497(n)])`
-/

namespace A142229.P6899236782852332099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1) + A017497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142229.P6899236782852332099

namespace A142229

/-- `A007913(p?[A128473(n+1)+A017497(n)])` -/
def P6899236782852332099.Spec : Prop :=
  ∀ n, P6899236782852332099.a n = A142229 (n + 1)

end A142229

/-! ## A142229.P13949966872835396732

`A007947(p?[A128473(n+1)+A017497(n)])`
-/

namespace A142229.P13949966872835396732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128473 (n + 1) + A017497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142229.P13949966872835396732

namespace A142229

/-- `A007947(p?[A128473(n+1)+A017497(n)])` -/
def P13949966872835396732.Spec : Prop :=
  ∀ n, P13949966872835396732.a n = A142229 (n + 1)

end A142229

/-! ## A142229.P9937733663298776166

`filter[A155098(2*(n+1)), A323152(#)]`
-/

namespace A142229.P9937733663298776166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155098 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A142229.P9937733663298776166

namespace A142229

/-- `filter[A155098(2*(n+1)), A323152(#)]` -/
def P9937733663298776166.Spec : Prop :=
  ∀ n, P9937733663298776166.a n = A142229 (n + 1)

end A142229

/-! ## A142229.P1225788378809416176

`filter[A155098(2*(n+1)), A323153(#)]`
-/

namespace A142229.P1225788378809416176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155098 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A142229.P1225788378809416176

namespace A142229

/-- `filter[A155098(2*(n+1)), A323153(#)]` -/
def P1225788378809416176.Spec : Prop :=
  ∀ n, P1225788378809416176.a n = A142229 (n + 1)

end A142229

/-! ## A142229.P2286105513784479766

`A318677(p?[4*A322489(n+1)+n])`
-/

namespace A142229.P2286105513784479766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A322489 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318677 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142229.P2286105513784479766

namespace A142229

/-- `A318677(p?[4*A322489(n+1)+n])` -/
def P2286105513784479766.Spec : Prop :=
  ∀ n, P2286105513784479766.a n = A142229 (n + 1)

end A142229

/-!
# A142230: Primes congruent to 33 mod 41.

The programs for A142230, the canonical program `A142230.P11424881739351854975` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142230 has offset 1).

The definition of A142230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1955 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142230.P11424881739351854975

`p?[41*n-8]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142230

/-- `p?[41*n-8]` -/
def P11424881739351854975.Spec : Prop :=
  ∀ n, P11424881739351854975.a n = A142230 (n + 1)

theorem P11424881739351854975.correct : P11424881739351854975.Spec := by
  intro n
  simp only [A142230, Nat.add_sub_cancel]

end A142230

/-! ## A142230.P16578187364496630549

`or(1, p?[A146081(n)+A004770(n+1)])`
-/

namespace A142230.P16578187364496630549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n + A004770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142230.P16578187364496630549

namespace A142230

/-- `or(1, p?[A146081(n)+A004770(n+1)])` -/
def P16578187364496630549.Spec : Prop :=
  ∀ n, P16578187364496630549.a n = A142230 (n + 1)

end A142230

/-! ## A142230.P3875712534099539302

`p?[A146081(n)+A004770(n+1)]%A017237(n)`
-/

namespace A142230.P3875712534099539302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n + A004770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017237 n)

end

end A142230.P3875712534099539302

namespace A142230

/-- `p?[A146081(n)+A004770(n+1)]%A017237(n)` -/
def P3875712534099539302.Spec : Prop :=
  ∀ n, P3875712534099539302.a n = A142230 (n + 1)

end A142230

/-! ## A142230.P4464939650359513349

`A020985(n)²*p?[A146081(n)+A004770(n+1)]`
-/

namespace A142230.P4464939650359513349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n + A004770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142230.P4464939650359513349

namespace A142230

/-- `A020985(n)²*p?[A146081(n)+A004770(n+1)]` -/
def P4464939650359513349.Spec : Prop :=
  ∀ n, P4464939650359513349.a n = A142230 (n + 1)

end A142230

/-! ## A142230.P12511994965712981558

`A000007(n+1)+p?[A146081(n)+A004770(n+1)]`
-/

namespace A142230.P12511994965712981558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n + A004770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142230.P12511994965712981558

namespace A142230

/-- `A000007(n+1)+p?[A146081(n)+A004770(n+1)]` -/
def P12511994965712981558.Spec : Prop :=
  ∀ n, P12511994965712981558.a n = A142230 (n + 1)

end A142230

/-! ## A142230.P17471156354584505371

`∩[A038919(n+1), A171141(n+1)]`
-/

namespace A142230.P17471156354584505371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142230.P17471156354584505371

namespace A142230

/-- `∩[A038919(n+1), A171141(n+1)]` -/
def P17471156354584505371.Spec : Prop :=
  ∀ n, (P17471156354584505371.a n : ℤ) = A142230 (n + 1)

end A142230

/-! ## A142230.P3389928322142972803

`∩[A171141(n+1), A191030(n+1)]`
-/

namespace A142230.P3389928322142972803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142230.P3389928322142972803

namespace A142230

/-- `∩[A171141(n+1), A191030(n+1)]` -/
def P3389928322142972803.Spec : Prop :=
  ∀ n, (P3389928322142972803.a n : ℤ) = A142230 (n + 1)

end A142230

/-! ## A142230.P14779489732678927805

`filter[A171141(2*(n+1)), A010051(#)]`
-/

namespace A142230.P14779489732678927805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A142230.P14779489732678927805

namespace A142230

/-- `filter[A171141(2*(n+1)), A010051(#)]` -/
def P14779489732678927805.Spec : Prop :=
  ∀ n, P14779489732678927805.a n = A142230 (n + 1)

end A142230

/-! ## A142230.P7182620937324745613

`A007947(p?[A146081(n)+A004770(n+1)])`
-/

namespace A142230.P7182620937324745613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n + A004770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142230.P7182620937324745613

namespace A142230

/-- `A007947(p?[A146081(n)+A004770(n+1)])` -/
def P7182620937324745613.Spec : Prop :=
  ∀ n, P7182620937324745613.a n = A142230 (n + 1)

end A142230

/-! ## A142230.P1155790442173270548

`A008472(p?[A146081(n)+A004770(n+1)])`
-/

namespace A142230.P1155790442173270548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n + A004770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142230.P1155790442173270548

namespace A142230

/-- `A008472(p?[A146081(n)+A004770(n+1)])` -/
def P1155790442173270548.Spec : Prop :=
  ∀ n, P1155790442173270548.a n = A142230 (n + 1)

end A142230

/-! ## A142230.P10900865102842394633

`A007913(p?[A016993(5*n+3)+6*n+11])`
-/

namespace A142230.P10900865102842394633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (5 * n + 3) + (6 * n + 11 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142230.P10900865102842394633

namespace A142230

/-- `A007913(p?[A016993(5*n+3)+6*n+11])` -/
def P10900865102842394633.Spec : Prop :=
  ∀ n, P10900865102842394633.a n = A142230 (n + 1)

end A142230

/-! ## A142230.P11627885378725390210

`A299149(p?[A146081(n)+A004770(n+1)])`
-/

namespace A142230.P11627885378725390210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n + A004770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299149 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142230.P11627885378725390210

namespace A142230

/-- `A299149(p?[A146081(n)+A004770(n+1)])` -/
def P11627885378725390210.Spec : Prop :=
  ∀ n, P11627885378725390210.a n = A142230 (n + 1)

end A142230

/-!
# A142231: Primes congruent to 34 mod 41.

The programs for A142231, the canonical program `A142231.P3277964425327728692` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142231 has offset 1).

The definition of A142231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1962 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142231.P3277964425327728692

`p?[82*n-7]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142231

/-- `p?[82*n-7]` -/
def P3277964425327728692.Spec : Prop :=
  ∀ n, P3277964425327728692.a n = A142231 (n + 1)

theorem P3277964425327728692.correct : P3277964425327728692.Spec := by
  intro n
  simp only [A142231, Nat.add_sub_cancel]

end A142231

/-! ## A142231.P13671497188109017159

`or(1, p?[A053741(n+2)-A017209(n)])`
-/

namespace A142231.P13671497188109017159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 (n + 2) - A017209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142231.P13671497188109017159

namespace A142231

/-- `or(1, p?[A053741(n+2)-A017209(n)])` -/
def P13671497188109017159.Spec : Prop :=
  ∀ n, P13671497188109017159.a n = A142231 (n + 1)

end A142231

/-! ## A142231.P10690371772850698174

`A000007(n+1)+p?[A249674(n+1)+A017437(n)]`
-/

namespace A142231.P10690371772850698174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 (n + 1) + A017437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142231.P10690371772850698174

namespace A142231

/-- `A000007(n+1)+p?[A249674(n+1)+A017437(n)]` -/
def P10690371772850698174.Spec : Prop :=
  ∀ n, P10690371772850698174.a n = A142231 (n + 1)

end A142231

/-! ## A142231.P4410279506880331029

`∩[A171141(2*(n+1))+1, A038920(n+2)]`
-/

namespace A142231.P4410279506880331029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (2 * (n + 1)) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038920 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142231.P4410279506880331029

namespace A142231

/-- `∩[A171141(2*(n+1))+1, A038920(n+2)]` -/
def P4410279506880331029.Spec : Prop :=
  ∀ n, (P4410279506880331029.a n : ℤ) = A142231 (n + 1)

end A142231

/-! ## A142231.P13708637956567977546

`A000265(p?[A232100(n+1)+34])`
-/

namespace A142231.P13708637956567977546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232100 (n + 1) + 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142231.P13708637956567977546

namespace A142231

/-- `A000265(p?[A232100(n+1)+34])` -/
def P13708637956567977546.Spec : Prop :=
  ∀ n, P13708637956567977546.a n = A142231 (n + 1)

end A142231

/-! ## A142231.P7446009062861752448

`∑{d}[p?[A232100(n+1)+34], A000010(#)]`
-/

namespace A142231.P7446009062861752448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232100 (n + 1) + 34

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A142231.P7446009062861752448

namespace A142231

/-- `∑{d}[p?[A232100(n+1)+34], A000010(#)]` -/
def P7446009062861752448.Spec : Prop :=
  ∀ n, P7446009062861752448.a n = A142231 (n + 1)

end A142231

/-! ## A142231.P6045182760143184110

`∑{p}[p?[A232100(n+1)+34], A020639(#)]`
-/

namespace A142231.P6045182760143184110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232100 (n + 1) + 34

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A020639 p

end

end A142231.P6045182760143184110

namespace A142231

/-- `∑{p}[p?[A232100(n+1)+34], A020639(#)]` -/
def P6045182760143184110.Spec : Prop :=
  ∀ n, P6045182760143184110.a n = A142231 (n + 1)

end A142231

/-! ## A142231.P14692160451657605194

`∏{p}[p?[A232100(n+1)+34], A006530(#)]`
-/

namespace A142231.P14692160451657605194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232100 (n + 1) + 34

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A006530 p

end

end A142231.P14692160451657605194

namespace A142231

/-- `∏{p}[p?[A232100(n+1)+34], A006530(#)]` -/
def P14692160451657605194.Spec : Prop :=
  ∀ n, P14692160451657605194.a n = A142231 (n + 1)

end A142231

/-! ## A142231.P80054016082372466

`A006530(2*p?[A232100(n+1)+34])`
-/

namespace A142231.P80054016082372466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232100 (n + 1) + 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142231.P80054016082372466

namespace A142231

/-- `A006530(2*p?[A232100(n+1)+34])` -/
def P80054016082372466.Spec : Prop :=
  ∀ n, P80054016082372466.a n = A142231 (n + 1)

end A142231

/-! ## A142231.P15150624743622362942

`A014963(A000217(2*n+3))*p?[A232100(n+1)+34]`
-/

namespace A142231.P15150624743622362942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232100 (n + 1) + 34

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (2 * n + 3)).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142231.P15150624743622362942

namespace A142231

/-- `A014963(A000217(2*n+3))*p?[A232100(n+1)+34]` -/
def P15150624743622362942.Spec : Prop :=
  ∀ n, P15150624743622362942.a n = A142231 (n + 1)

end A142231

/-!
# A142232: Primes congruent to 35 mod 41.

The programs for A142232, the canonical program `A142232.P16949354152326269344` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142232 has offset 1).

The definition of A142232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1988 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142232.P16949354152326269344

`p?[41*n-6]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142232

/-- `p?[41*n-6]` -/
def P16949354152326269344.Spec : Prop :=
  ∀ n, P16949354152326269344.a n = A142232 (n + 1)

theorem P16949354152326269344.correct : P16949354152326269344.Spec := by
  intro n
  simp only [A142232, Nat.add_sub_cancel]

end A142232

/-! ## A142232.P4706042292904445825

`A000027(p?[A111284(n+1)+37*(n+1)])`
-/

namespace A142232.P4706042292904445825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (n + 1) + (37 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142232.P4706042292904445825

namespace A142232

/-- `A000027(p?[A111284(n+1)+37*(n+1)])` -/
def P4706042292904445825.Spec : Prop :=
  ∀ n, P4706042292904445825.a n = A142232 (n + 1)

end A142232

/-! ## A142232.P15532566159305763352

`∩[A038920(n+1), A171141(n+1)+2]`
-/

namespace A142232.P15532566159305763352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142232.P15532566159305763352

namespace A142232

/-- `∩[A038920(n+1), A171141(n+1)+2]` -/
def P15532566159305763352.Spec : Prop :=
  ∀ n, (P15532566159305763352.a n : ℤ) = A142232 (n + 1)

end A142232

/-! ## A142232.P8410200367343965238

`A325144(A001749(n+1))+p?[A232100(n+1)-6]`
-/

namespace A142232.P8410200367343965238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232100 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325144 (A001749 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142232.P8410200367343965238

namespace A142232

/-- `A325144(A001749(n+1))+p?[A232100(n+1)-6]` -/
def P8410200367343965238.Spec : Prop :=
  ∀ n, P8410200367343965238.a n = A142232 (n + 1)

end A142232

/-! ## A142232.P1610443436694965252

`p?[A232100(n+1)-6]%A257426(n+1)`
-/

namespace A142232.P1610443436694965252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232100 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A257426 (n + 1))

end

end A142232.P1610443436694965252

namespace A142232

/-- `p?[A232100(n+1)-6]%A257426(n+1)` -/
def P1610443436694965252.Spec : Prop :=
  ∀ n, P1610443436694965252.a n = A142232 (n + 1)

end A142232

/-! ## A142232.P6256418724240558545

`A000265(p?[A232100(n+1)-6])`
-/

namespace A142232.P6256418724240558545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232100 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142232.P6256418724240558545

namespace A142232

/-- `A000265(p?[A232100(n+1)-6])` -/
def P6256418724240558545.Spec : Prop :=
  ∀ n, P6256418724240558545.a n = A142232 (n + 1)

end A142232

/-! ## A142232.P8552501482160948464

`A007913(p?[A232100(n+1)-6])`
-/

namespace A142232.P8552501482160948464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232100 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142232.P8552501482160948464

namespace A142232

/-- `A007913(p?[A232100(n+1)-6])` -/
def P8552501482160948464.Spec : Prop :=
  ∀ n, P8552501482160948464.a n = A142232 (n + 1)

end A142232

/-! ## A142232.P9828333999433508858

`p?[A232100(n+1)-6]/A007318(∑[n])`
-/

namespace A142232.P9828333999433508858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232100 (n + 1) - 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

end

end A142232.P9828333999433508858

namespace A142232

/-- `p?[A232100(n+1)-6]/A007318(∑[n])` -/
def P9828333999433508858.Spec : Prop :=
  ∀ n, P9828333999433508858.a n = (A142232 (n + 1) : ℚ)

end A142232

/-! ## A142232.P2668886756647297150

`p?[A232100(n+1)-6]/A055801(A000217(n))`
-/

namespace A142232.P2668886756647297150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232100 (n + 1) - 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A055801 (A000217 n).toNat : ℚ)

end

end A142232.P2668886756647297150

namespace A142232

/-- `p?[A232100(n+1)-6]/A055801(A000217(n))` -/
def P2668886756647297150.Spec : Prop :=
  ∀ n, P2668886756647297150.a n = (A142232 (n + 1) : ℚ)

end A142232

/-! ## A142232.P11243428917933674561

`A006530(lcm(2, p?[A232100(n+1)-6]))`
-/

namespace A142232.P11243428917933674561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232100 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)))

end

end A142232.P11243428917933674561

namespace A142232

/-- `A006530(lcm(2, p?[A232100(n+1)-6]))` -/
def P11243428917933674561.Spec : Prop :=
  ∀ n, P11243428917933674561.a n = A142232 (n + 1)

end A142232

/-!
# A142233: Primes congruent to 36 mod 41.

The programs for A142233, the canonical program `A142233.P1848949060217978561` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142233 has offset 1).

The definition of A142233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1961 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142233.P1848949060217978561

`p?[41*n-5]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142233

/-- `p?[41*n-5]` -/
def P1848949060217978561.Spec : Prop :=
  ∀ n, P1848949060217978561.a n = A142233 (n + 1)

theorem P1848949060217978561.correct : P1848949060217978561.Spec := by
  intro n
  simp only [A142233, Nat.add_sub_cancel]

end A142233

/-! ## A142233.P10923568299419164025

`or(1, p?[a(n-1)+41])` with `a(0)=36`
-/

namespace A142233.P10923568299419164025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [36] fun n f1 =>
  f1 (n - 1) + 41

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142233.P10923568299419164025

namespace A142233

/-- `or(1, p?[a(n-1)+41])` -/
def P10923568299419164025.Spec : Prop :=
  ∀ n, (P10923568299419164025.a n : ℤ) = A142233 (n + 1)

end A142233

/-! ## A142233.P5096482799480515351

`or(1, p?[A239128(n+1)+A017221(n)])`
-/

namespace A142233.P5096482799480515351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + A017221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142233.P5096482799480515351

namespace A142233

/-- `or(1, p?[A239128(n+1)+A017221(n)])` -/
def P5096482799480515351.Spec : Prop :=
  ∀ n, P5096482799480515351.a n = A142233 (n + 1)

end A142233

/-! ## A142233.P11022109709280410791

`A000027(p?[A239128(n+1)+A017221(n)])`
-/

namespace A142233.P11022109709280410791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + A017221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142233.P11022109709280410791

namespace A142233

/-- `A000027(p?[A239128(n+1)+A017221(n)])` -/
def P11022109709280410791.Spec : Prop :=
  ∀ n, P11022109709280410791.a n = A142233 (n + 1)

end A142233

/-! ## A142233.P14742855822610825199

`A000007(n+1)+p?[A239128(n+1)+A017221(n)]`
-/

namespace A142233.P14742855822610825199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + A017221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142233.P14742855822610825199

namespace A142233

/-- `A000007(n+1)+p?[A239128(n+1)+A017221(n)]` -/
def P14742855822610825199.Spec : Prop :=
  ∀ n, P14742855822610825199.a n = A142233 (n + 1)

end A142233

/-! ## A142233.P4400629334461787291

`A000265(p?[A239128(n+1)+A017221(n)])`
-/

namespace A142233.P4400629334461787291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + A017221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142233.P4400629334461787291

namespace A142233

/-- `A000265(p?[A239128(n+1)+A017221(n)])` -/
def P4400629334461787291.Spec : Prop :=
  ∀ n, P4400629334461787291.a n = A142233 (n + 1)

end A142233

/-! ## A142233.P17286776982312798397

`A001414(p?[A239128(n+1)+A017221(n)])`
-/

namespace A142233.P17286776982312798397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + A017221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142233.P17286776982312798397

namespace A142233

/-- `A001414(p?[A239128(n+1)+A017221(n)])` -/
def P17286776982312798397.Spec : Prop :=
  ∀ n, P17286776982312798397.a n = A142233 (n + 1)

end A142233

/-! ## A142233.P18069189392424194290

`A007913(p?[A239128(n+1)+A017221(n)])`
-/

namespace A142233.P18069189392424194290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + A017221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142233.P18069189392424194290

namespace A142233

/-- `A007913(p?[A239128(n+1)+A017221(n)])` -/
def P18069189392424194290.Spec : Prop :=
  ∀ n, P18069189392424194290.a n = A142233 (n + 1)

end A142233

/-! ## A142233.P2608525289180027302

`A008472(p?[A239128(n+1)+A017221(n)])`
-/

namespace A142233.P2608525289180027302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + A017221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142233.P2608525289180027302

namespace A142233

/-- `A008472(p?[A239128(n+1)+A017221(n)])` -/
def P2608525289180027302.Spec : Prop :=
  ∀ n, P2608525289180027302.a n = A142233 (n + 1)

end A142233

/-!
# A142234: Primes congruent to 37 mod 41.

The programs for A142234, the canonical program `A142234.P10604605828929398941` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142234 has offset 1).

The definition of A142234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1961 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142234.P10604605828929398941

`p?[41*n-4]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142234

/-- `p?[41*n-4]` -/
def P10604605828929398941.Spec : Prop :=
  ∀ n, P10604605828929398941.a n = A142234 (n + 1)

theorem P10604605828929398941.correct : P10604605828929398941.Spec := by
  intro n
  simp only [A142234, Nat.add_sub_cancel]

end A142234

/-! ## A142234.P18133448073743863915

`∏{d}[p?[a(n-1)+41], #]` with `a(0)=-4`
-/

namespace A142234.P18133448073743863915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-4] fun n f2 =>
  f2 (n - 1) + 41

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A142234.P18133448073743863915

namespace A142234

/-- `∏{d}[p?[a(n-1)+41], #]` -/
def P18133448073743863915.Spec : Prop :=
  ∀ n, (P18133448073743863915.a n : ℤ) = A142234 (n + 1)

end A142234

/-! ## A142234.P1093614506724489174

`abs(2-p?[a(n-1)+41])+2` with `a(0)=-4`
-/

namespace A142234.P1093614506724489174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-4] fun n f1 =>
  f1 (n - 1) + 41

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)| + 2

end

end A142234.P1093614506724489174

namespace A142234

/-- `abs(2-p?[a(n-1)+41])+2` -/
def P1093614506724489174.Spec : Prop :=
  ∀ n, P1093614506724489174.a n = A142234 (n + 1)

end A142234

/-! ## A142234.P17133076871539341053

`round(sqrt(p?[a(n-1)+41]²+1))` with `a(0)=-4`
-/

namespace A142234.P17133076871539341053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-4] fun n f1 =>
  f1 (n - 1) + 41

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2 + 1 : ℝ))

end

end A142234.P17133076871539341053

namespace A142234

/-- `round(sqrt(p?[a(n-1)+41]²+1))` -/
def P17133076871539341053.Spec : Prop :=
  ∀ n, P17133076871539341053.a n = A142234 (n + 1)

end A142234

/-! ## A142234.P6632620182613067134

`A000007(n+1)+p?[a(n-1)+41]` with `a(0)=-4`
-/

namespace A142234.P6632620182613067134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-4] fun n f1 =>
  f1 (n - 1) + 41

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142234.P6632620182613067134

namespace A142234

/-- `A000007(n+1)+p?[a(n-1)+41]` -/
def P6632620182613067134.Spec : Prop :=
  ∀ n, P6632620182613067134.a n = A142234 (n + 1)

end A142234

/-! ## A142234.P15561040803811046797

`record[A020639(41*(n+1)-4)]`
-/

namespace A142234.P15561040803811046797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (41 * (n + 1) - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142234.P15561040803811046797

namespace A142234

/-- `record[A020639(41*(n+1)-4)]` -/
def P15561040803811046797.Spec : Prop :=
  ∀ n, P15561040803811046797.a n = A142234 (n + 1)

end A142234

/-! ## A142234.P13672454574965819503

`∑{d}[p?[a(n-1)+41], A000010(#)]` with `a(0)=-4`
-/

namespace A142234.P13672454574965819503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-4] fun n f2 =>
  f2 (n - 1) + 41

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A142234.P13672454574965819503

namespace A142234

/-- `∑{d}[p?[a(n-1)+41], A000010(#)]` -/
def P13672454574965819503.Spec : Prop :=
  ∀ n, P13672454574965819503.a n = A142234 (n + 1)

end A142234

/-! ## A142234.P8072107111009502307

`A006530(2*p?[A151988(n+1)+A017017(n)])`
-/

namespace A142234.P8072107111009502307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (n + 1) + A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142234.P8072107111009502307

namespace A142234

/-- `A006530(2*p?[A151988(n+1)+A017017(n)])` -/
def P8072107111009502307.Spec : Prop :=
  ∀ n, P8072107111009502307.a n = A142234 (n + 1)

end A142234

/-!
# A142235: Primes congruent to 38 mod 41.

The programs for A142235, the canonical program `A142235.P6343162341857643326` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142235 has offset 1).

The definition of A142235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1954 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142235.P6343162341857643326

`p?[41*n-3]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142235

/-- `p?[41*n-3]` -/
def P6343162341857643326.Spec : Prop :=
  ∀ n, P6343162341857643326.a n = A142235 (n + 1)

theorem P6343162341857643326.correct : P6343162341857643326.Spec := by
  intro n
  simp only [A142235, Nat.add_sub_cancel]

end A142235

/-! ## A142235.P18020977850287621290

`or(1, p?[a(n-1)+41])` with `a(0)=38`
-/

namespace A142235.P18020977850287621290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [38] fun n f1 =>
  f1 (n - 1) + 41

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142235.P18020977850287621290

namespace A142235

/-- `or(1, p?[a(n-1)+41])` -/
def P18020977850287621290.Spec : Prop :=
  ∀ n, (P18020977850287621290.a n : ℤ) = A142235 (n + 1)

end A142235

/-! ## A142235.P16590124040078939457

`∏{p}[p?[A215148(2*n+3)+A139609(n)], #]`
-/

namespace A142235.P16590124040078939457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 (2 * n + 3) + A139609 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142235.P16590124040078939457

namespace A142235

/-- `∏{p}[p?[A215148(2*n+3)+A139609(n)], #]` -/
def P16590124040078939457.Spec : Prop :=
  ∀ n, (P16590124040078939457.a n : ℤ) = A142235 (n + 1)

end A142235

/-! ## A142235.P5534026620512252888

`A000027(p?[A139280(n+1)-A304205(n+1)])`
-/

namespace A142235.P5534026620512252888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139280 (n + 1) - A304205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142235.P5534026620512252888

namespace A142235

/-- `A000027(p?[A139280(n+1)-A304205(n+1)])` -/
def P5534026620512252888.Spec : Prop :=
  ∀ n, P5534026620512252888.a n = A142235 (n + 1)

end A142235

/-! ## A142235.P15427264481351312013

`record[A020639(82*(n+1)-3)]`
-/

namespace A142235.P15427264481351312013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (82 * (n + 1) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142235.P15427264481351312013

namespace A142235

/-- `record[A020639(82*(n+1)-3)]` -/
def P15427264481351312013.Spec : Prop :=
  ∀ n, P15427264481351312013.a n = A142235 (n + 1)

end A142235

/-! ## A142235.P11966929880724015680

`A000265(p?[A139280(n+1)-A304205(n+1)])`
-/

namespace A142235.P11966929880724015680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139280 (n + 1) - A304205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142235.P11966929880724015680

namespace A142235

/-- `A000265(p?[A139280(n+1)-A304205(n+1)])` -/
def P11966929880724015680.Spec : Prop :=
  ∀ n, P11966929880724015680.a n = A142235 (n + 1)

end A142235

/-!
# A142236: Primes congruent to 39 mod 41.

The programs for A142236, the canonical program `A142236.P12198417913890289095` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142236 has offset 1).

The definition of A142236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1968 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142236.P12198417913890289095

`p?[41*n-2]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142236

/-- `p?[41*n-2]` -/
def P12198417913890289095.Spec : Prop :=
  ∀ n, P12198417913890289095.a n = A142236 (n + 1)

theorem P12198417913890289095.correct : P12198417913890289095.Spec := by
  intro n
  simp only [A142236, Nat.add_sub_cancel]

end A142236

/-! ## A142236.P7622074663187165038

`∏{p}[p?[A249674(n+1)+A017497(n)], #]`
-/

namespace A142236.P7622074663187165038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 (n + 1) + A017497 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142236.P7622074663187165038

namespace A142236

/-- `∏{p}[p?[A249674(n+1)+A017497(n)], #]` -/
def P7622074663187165038.Spec : Prop :=
  ∀ n, (P7622074663187165038.a n : ℤ) = A142236 (n + 1)

end A142236

/-! ## A142236.P1846531218280373099

`∩[A171141(2*n+1)+A171141(2*(n+1)), A038919(n+2)]`
-/

namespace A142236.P1846531218280373099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (2 * n + 1) + A171141 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038919 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142236.P1846531218280373099

namespace A142236

/-- `∩[A171141(2*n+1)+A171141(2*(n+1)), A038919(n+2)]` -/
def P1846531218280373099.Spec : Prop :=
  ∀ n, (P1846531218280373099.a n : ℤ) = A142236 (n + 1)

end A142236

/-! ## A142236.P15176462641909935789

`∩[A171141(2*n+1)+A171141(2*(n+1)), A191030(n+2)]`
-/

namespace A142236.P15176462641909935789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (2 * n + 1) + A171141 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191030 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142236.P15176462641909935789

namespace A142236

/-- `∩[A171141(2*n+1)+A171141(2*(n+1)), A191030(n+2)]` -/
def P15176462641909935789.Spec : Prop :=
  ∀ n, (P15176462641909935789.a n : ℤ) = A142236 (n + 1)

end A142236

/-! ## A142236.P2415286465854954399

`A007947(p?[A232100(n+1)-2])`
-/

namespace A142236.P2415286465854954399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232100 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142236.P2415286465854954399

namespace A142236

/-- `A007947(p?[A232100(n+1)-2])` -/
def P2415286465854954399.Spec : Prop :=
  ∀ n, P2415286465854954399.a n = A142236 (n + 1)

end A142236

/-! ## A142236.P4898990485442939754

`A008475(p?[A232100(n+1)-2])`
-/

namespace A142236.P4898990485442939754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232100 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142236.P4898990485442939754

namespace A142236

/-- `A008475(p?[A232100(n+1)-2])` -/
def P4898990485442939754.Spec : Prop :=
  ∀ n, P4898990485442939754.a n = A142236 (n + 1)

end A142236

/-! ## A142236.P2036975775388408359

`∑{d}[p?[A232100(n+1)-2], A000010(#)]`
-/

namespace A142236.P2036975775388408359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232100 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A142236.P2036975775388408359

namespace A142236

/-- `∑{d}[p?[A232100(n+1)-2], A000010(#)]` -/
def P2036975775388408359.Spec : Prop :=
  ∀ n, P2036975775388408359.a n = A142236 (n + 1)

end A142236

/-! ## A142236.P418136516371476291

`∏{p}[p?[A232100(n+1)-2], A006530(#)]`
-/

namespace A142236.P418136516371476291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232100 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A006530 p

end

end A142236.P418136516371476291

namespace A142236

/-- `∏{p}[p?[A232100(n+1)-2], A006530(#)]` -/
def P418136516371476291.Spec : Prop :=
  ∀ n, P418136516371476291.a n = A142236 (n + 1)

end A142236

/-! ## A142236.P1686458889837574358

`A007947(p?[A154266(n)+A002264(n)])`
-/

namespace A142236.P1686458889837574358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142236.P1686458889837574358

namespace A142236

/-- `A007947(p?[A154266(n)+A002264(n)])` -/
def P1686458889837574358.Spec : Prop :=
  ∀ n, P1686458889837574358.a n = A142236 (n + 1)

end A142236

/-! ## A142236.P15553471481642646327

`record[A006530(A171141(n+3)+A171141(n+16))]`
-/

namespace A142236.P15553471481642646327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A171141 (n + 3) + A171141 (n + 16)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142236.P15553471481642646327

namespace A142236

/-- `record[A006530(A171141(n+3)+A171141(n+16))]` -/
def P15553471481642646327.Spec : Prop :=
  ∀ n, P15553471481642646327.a n = A142236 (n + 1)

end A142236

/-! ## A142236.P7475672270238151425

`∑{p}[p?[A017209(A017209(n+1))+n], #]`
-/

namespace A142236.P7475672270238151425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 (A017209 (n + 1)).toNat + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142236.P7475672270238151425

namespace A142236

/-- `∑{p}[p?[A017209(A017209(n+1))+n], #]` -/
def P7475672270238151425.Spec : Prop :=
  ∀ n, (P7475672270238151425.a n : ℤ) = A142236 (n + 1)

end A142236

/-!
# A142237: Primes congruent to 40 mod 41.

The programs for A142237, the canonical program `A142237.P5412903853845632496` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142237 has offset 1).

The definition of A142237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1948 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142237.P5412903853845632496

`p?[41*n-1]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142237

/-- `p?[41*n-1]` -/
def P5412903853845632496.Spec : Prop :=
  ∀ n, P5412903853845632496.a n = A142237 (n + 1)

theorem P5412903853845632496.correct : P5412903853845632496.Spec := by
  intro n
  simp only [A142237, Nat.add_sub_cancel]

end A142237

/-! ## A142237.P5682241262283479021

`or(1, p?[40*(n+1)+n])`
-/

namespace A142237.P5682241262283479021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40 * (n + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142237.P5682241262283479021

namespace A142237

/-- `or(1, p?[40*(n+1)+n])` -/
def P5682241262283479021.Spec : Prop :=
  ∀ n, (P5682241262283479021.a n : ℤ) = A142237 (n + 1)

end A142237

/-! ## A142237.P16850531023915088167

`∏{d}[p?[40*(n+1)+n], #]`
-/

namespace A142237.P16850531023915088167
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40 * (n + 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A142237.P16850531023915088167

namespace A142237

/-- `∏{d}[p?[40*(n+1)+n], #]` -/
def P16850531023915088167.Spec : Prop :=
  ∀ n, (P16850531023915088167.a n : ℤ) = A142237 (n + 1)

end A142237

/-! ## A142237.P8841798994792112830

`∏{p}[p?[40*(n+1)+n], #]`
-/

namespace A142237.P8841798994792112830
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40 * (n + 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A142237.P8841798994792112830

namespace A142237

/-- `∏{p}[p?[40*(n+1)+n], #]` -/
def P8841798994792112830.Spec : Prop :=
  ∀ n, (P8841798994792112830.a n : ℤ) = A142237 (n + 1)

end A142237

/-! ## A142237.P10857800627762435077

`p?[40*(n+1)+n]%(82*(n+1))²`
-/

namespace A142237.P10857800627762435077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  40 * (n + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) % (82 * (n + 1)) ^ 2

end

end A142237.P10857800627762435077

namespace A142237

/-- `p?[40*(n+1)+n]%(82*(n+1))²` -/
def P10857800627762435077.Spec : Prop :=
  ∀ n, (P10857800627762435077.a n : ℤ) = A142237 (n + 1)

end A142237

/-! ## A142237.P3804154231288810550

`A001414(p?[A152691(n)-A215148(n)])`
-/

namespace A142237.P3804154231288810550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A215148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142237.P3804154231288810550

namespace A142237

/-- `A001414(p?[A152691(n)-A215148(n)])` -/
def P3804154231288810550.Spec : Prop :=
  ∀ n, P3804154231288810550.a n = A142237 (n + 1)

end A142237

/-! ## A142237.P10145947537367437227

`A052410(p?[A152691(n)-A215148(n)])`
-/

namespace A142237.P10145947537367437227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A215148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142237.P10145947537367437227

namespace A142237

/-- `A052410(p?[A152691(n)-A215148(n)])` -/
def P10145947537367437227.Spec : Prop :=
  ∀ n, P10145947537367437227.a n = A142237 (n + 1)

end A142237

/-!
# A142238: Numerators of continued fraction convergents to sqrt(3/2).

The programs for A142238, the canonical program `A142238.P15564133595584364678` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142238 has offset 0).

The definition of A142238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142238.P18305703212683604835

`a(n-2)+4/gcd(2, n)*a(n-1)` with `a(0)=1, a(1)=5`
-/

namespace A142238.P18305703212683604835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 2) + 4 / (Nat.gcd 2 n : ℚ) * a (n - 1)

end

end A142238.P18305703212683604835

namespace A142238

/-- `a(n-2)+4/gcd(2, n)*a(n-1)` -/
def P18305703212683604835.Spec : Prop :=
  ∀ n, P18305703212683604835.a n = (A142238 n : ℚ)

end A142238

/-! ## A142238.P15216893884397644006

`lcm(2, A041006(n))/2`
-/

namespace A142238.P15216893884397644006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A041006 n) : ℚ) / 2

end

end A142238.P15216893884397644006

namespace A142238

/-- `lcm(2, A041006(n))/2` -/
def P15216893884397644006.Spec : Prop :=
  ∀ n, P15216893884397644006.a n = (A142238 n : ℚ)

end A142238

/-! ## A142238.P8967148456907145612

`A041006(n)/Δ[A007494(n)]`
-/

namespace A142238.P8967148456907145612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041006 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A142238.P8967148456907145612

namespace A142238

/-- `A041006(n)/Δ[A007494(n)]` -/
def P8967148456907145612.Spec : Prop :=
  ∀ n, P8967148456907145612.a n = (A142238 n : ℚ)

end A142238

/-! ## A142238.P15564133595584364678

`A041007(n+1)-A142239(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A142238

/-- `A041007(n+1)-A142239(n)` -/
def P15564133595584364678.Spec : Prop :=
  ∀ n, P15564133595584364678.a n = A142238 n

theorem P15564133595584364678.correct : P15564133595584364678.Spec := by
  intro n
  simp only [A142238]

end A142238

/-! ## A142238.P106222928765581441

`A041006(n)/A000034(n+1)`
-/

namespace A142238.P106222928765581441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041006 n : ℚ) / (A000034 (n + 1) : ℚ)

end

end A142238.P106222928765581441

namespace A142238

/-- `A041006(n)/A000034(n+1)` -/
def P106222928765581441.Spec : Prop :=
  ∀ n, P106222928765581441.a n = (A142238 n : ℚ)

end A142238

/-! ## A142238.P18400029813157697480

`A041006(n)/A040001(n+2)`
-/

namespace A142238.P18400029813157697480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041006 n : ℚ) / (A040001 (n + 2) : ℚ)

end

end A142238.P18400029813157697480

namespace A142238

/-- `A041006(n)/A040001(n+2)` -/
def P18400029813157697480.Spec : Prop :=
  ∀ n, P18400029813157697480.a n = (A142238 n : ℚ)

end A142238

/-! ## A142238.P6434507925665463279

`A041006(n)/(2-A000035(n))`
-/

namespace A142238.P6434507925665463279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041006 n : ℚ) / (2 - A000035 n : ℚ)

end

end A142238.P6434507925665463279

namespace A142238

/-- `A041006(n)/(2-A000035(n))` -/
def P6434507925665463279.Spec : Prop :=
  ∀ n, P6434507925665463279.a n = (A142238 n : ℚ)

end A142238

/-! ## A142238.P18364552627040277204

`A000034(n)/2*A041006(n)`
-/

namespace A142238.P18364552627040277204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000034 n : ℚ) / 2 * (A041006 n : ℚ)

end

end A142238.P18364552627040277204

namespace A142238

/-- `A000034(n)/2*A041006(n)` -/
def P18364552627040277204.Spec : Prop :=
  ∀ n, P18364552627040277204.a n = (A142238 n : ℚ)

end A142238

/-! ## A142238.P6648204933240995042

`A041006(n)/A266303(A266303(n))`
-/

namespace A142238.P6648204933240995042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041006 n : ℚ) / (A266303 (A266303 n).toNat : ℚ)

end

end A142238.P6648204933240995042

namespace A142238

/-- `A041006(n)/A266303(A266303(n))` -/
def P6648204933240995042.Spec : Prop :=
  ∀ n, P6648204933240995042.a n = (A142238 n : ℚ)

end A142238

/-! ## A142238.P2651525071800713381

`A080872(n+1)+A001078(A142150(n))`
-/

namespace A142238.P2651525071800713381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080872 (n + 1) + A001078 (A142150 n).toNat

end

end A142238.P2651525071800713381

namespace A142238

/-- `A080872(n+1)+A001078(A142150(n))` -/
def P2651525071800713381.Spec : Prop :=
  ∀ n, P2651525071800713381.a n = A142238 n

end A142238

/-! ## A142238.P4271708100642111915

`A001333(n+1)/A041010(n)*A041006(n)`
-/

namespace A142238.P4271708100642111915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001333 (n + 1) : ℚ) / (A041010 n : ℚ) * (A041006 n : ℚ)

end

end A142238.P4271708100642111915

namespace A142238

/-- `A001333(n+1)/A041010(n)*A041006(n)` -/
def P4271708100642111915.Spec : Prop :=
  ∀ n, P4271708100642111915.a n = (A142238 n : ℚ)

end A142238

/-! ## A142238.P4724950838291777384

`A080874(n+1)+A080874(n+1)-A080872(n)`
-/

namespace A142238.P4724950838291777384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080874 (n + 1) + (A080874 (n + 1) - A080872 n)

end

end A142238.P4724950838291777384

namespace A142238

/-- `A080874(n+1)+A080874(n+1)-A080872(n)` -/
def P4724950838291777384.Spec : Prop :=
  ∀ n, P4724950838291777384.a n = A142238 n

end A142238

/-! ## A142238.P17756725891466687325

`A041007(n+1)-A040001(n+1)*A041007(n)`
-/

namespace A142238.P17756725891466687325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041007 (n + 1) - A040001 (n + 1) * A041007 n

end

end A142238.P17756725891466687325

namespace A142238

/-- `A041007(n+1)-A040001(n+1)*A041007(n)` -/
def P17756725891466687325.Spec : Prop :=
  ∀ n, P17756725891466687325.a n = A142238 n

end A142238

/-! ## A142238.P11561815377625682049

`Δ[A259595(n)/4]`
-/

namespace A142238.P11561815377625682049
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259595 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A142238.P11561815377625682049

namespace A142238

/-- `Δ[A259595(n)/4]` -/
def P11561815377625682049.Spec : Prop :=
  ∀ n, P11561815377625682049.a n = (A142238 n : ℚ)

end A142238

/-! ## A142238.P6253441119452628279

`lcm(4, A041038(n))/4`
-/

namespace A142238.P6253441119452628279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (A041038 n) : ℚ) / 4

end

end A142238.P6253441119452628279

namespace A142238

/-- `lcm(4, A041038(n))/4` -/
def P6253441119452628279.Spec : Prop :=
  ∀ n, P6253441119452628279.a n = (A142238 n : ℚ)

end A142238

/-! ## A142238.P18201191128554747607

`A040001(n)/A040019(n)*A041038(n)`
-/

namespace A142238.P18201191128554747607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040001 n : ℚ) / (A040019 n : ℚ) * (A041038 n : ℚ)

end

end A142238.P18201191128554747607

namespace A142238

/-- `A040001(n)/A040019(n)*A041038(n)` -/
def P18201191128554747607.Spec : Prop :=
  ∀ n, P18201191128554747607.a n = (A142238 n : ℚ)

end A142238

/-! ## A142238.P1337977867361546692

`A041006(n)/A041038(n)*A041006(n)`
-/

namespace A142238.P1337977867361546692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041006 n : ℚ) / (A041038 n : ℚ) * (A041006 n : ℚ)

end

end A142238.P1337977867361546692

namespace A142238

/-- `A041006(n)/A041038(n)*A041006(n)` -/
def P1337977867361546692.Spec : Prop :=
  ∀ n, P1337977867361546692.a n = (A142238 n : ℚ)

end A142238

/-! ## A142238.P14858261102763360784

`A041007(n+1)/A142239(n+1)*A041006(n)`
-/

namespace A142238.P14858261102763360784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041007 (n + 1) : ℚ) / (A142239 (n + 1) : ℚ) * (A041006 n : ℚ)

end

end A142238.P14858261102763360784

namespace A142238

/-- `A041007(n+1)/A142239(n+1)*A041006(n)` -/
def P14858261102763360784.Spec : Prop :=
  ∀ n, P14858261102763360784.a n = (A142238 n : ℚ)

end A142238

/-! ## A142238.P13298713070579132599

`A123347(n)/A016116(n)`
-/

namespace A142238.P13298713070579132599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123347 n : ℚ) / (A016116 n : ℚ)

end

end A142238.P13298713070579132599

namespace A142238

/-- `A123347(n)/A016116(n)` -/
def P13298713070579132599.Spec : Prop :=
  ∀ n, P13298713070579132599.a n = (A142238 n : ℚ)

end A142238

/-! ## A142238.P13729146442836163705

`A041006(n+1)/A123347(n+1)*A123347(n)`
-/

namespace A142238.P13729146442836163705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041006 (n + 1) : ℚ) / (A123347 (n + 1) : ℚ) * (A123347 n : ℚ)

end

end A142238.P13729146442836163705

namespace A142238

/-- `A041006(n+1)/A123347(n+1)*A123347(n)` -/
def P13729146442836163705.Spec : Prop :=
  ∀ n, P13729146442836163705.a n = (A142238 n : ℚ)

end A142238

/-!
# A142239: Denominators of continued fraction convergents to sqrt(3/2).

The programs for A142239, the canonical program `A142239.P13774150768703777367` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142239 has offset 0).

The definition of A142239 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A142239.P13774150768703777367

`10*a(n-2)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=40`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142239

/-- `10*a(n-2)-a(n-4)` -/
def P13774150768703777367.Spec : Prop :=
  ∀ n, P13774150768703777367.a n = A142239 n

theorem P13774150768703777367.correct : P13774150768703777367.Spec := by
  intro n
  simp only [A142239]

end A142239

/-! ## A142239.P3053656040372137670

`a(n-2)+lcm(4, a(n-1)+a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A142239.P3053656040372137670
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + Nat.lcm 4 (a (n - 1) + a (n - 1))

end

end A142239.P3053656040372137670

namespace A142239

/-- `a(n-2)+lcm(4, a(n-1)+a(n-1))` -/
def P3053656040372137670.Spec : Prop :=
  ∀ n, (P3053656040372137670.a n : ℤ) = A142239 n

end A142239

/-! ## A142239.P13687222324209450618

`4^(n%2)*A041039(n)`
-/

namespace A142239.P13687222324209450618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ (n % 2) : ℤ) * A041039 n

end

end A142239.P13687222324209450618

namespace A142239

/-- `4^(n%2)*A041039(n)` -/
def P13687222324209450618.Spec : Prop :=
  ∀ n, P13687222324209450618.a n = A142239 n

end A142239

/-! ## A142239.P576461942043666580

`A000034(n)*A041007(n)`
-/

namespace A142239.P576461942043666580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A041007 n

end

end A142239.P576461942043666580

namespace A142239

/-- `A000034(n)*A041007(n)` -/
def P576461942043666580.Spec : Prop :=
  ∀ n, P576461942043666580.a n = A142239 n

end A142239

/-! ## A142239.P15002030400360667163

`A010685(n)*A041039(n)`
-/

namespace A142239.P15002030400360667163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n * A041039 n

end

end A142239.P15002030400360667163

namespace A142239

/-- `A010685(n)*A041039(n)` -/
def P15002030400360667163.Spec : Prop :=
  ∀ n, P15002030400360667163.a n = A142239 n

end A142239

/-! ## A142239.P8519654320532156576

`abs(∑[A146311(A110654(n))])`
-/

namespace A142239.P8519654320532156576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146311 (A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A142239.P8519654320532156576

namespace A142239

/-- `abs(∑[A146311(A110654(n))])` -/
def P8519654320532156576.Spec : Prop :=
  ∀ n, P8519654320532156576.a n = A142239 n

end A142239

/-! ## A142239.P16089851809477058479

`A000034(n)²*A041039(n)`
-/

namespace A142239.P16089851809477058479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n ^ 2 * A041039 n

end

end A142239.P16089851809477058479

namespace A142239

/-- `A000034(n)²*A041039(n)` -/
def P16089851809477058479.Spec : Prop :=
  ∀ n, P16089851809477058479.a n = A142239 n

end A142239

/-! ## A142239.P7044998524449996098

`Δ[A032766(n)]*A041007(n)`
-/

namespace A142239.P7044998524449996098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A041007 n

end

end A142239.P7044998524449996098

namespace A142239

/-- `Δ[A032766(n)]*A041007(n)` -/
def P7044998524449996098.Spec : Prop :=
  ∀ n, P7044998524449996098.a n = A142239 n

end A142239

/-! ## A142239.P2319343805726399505

`A041007(n+1)-A142238(n)`
-/

namespace A142239.P2319343805726399505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041007 (n + 1) - A142238 n

end

end A142239.P2319343805726399505

namespace A142239

/-- `A041007(n+1)-A142238(n)` -/
def P2319343805726399505.Spec : Prop :=
  ∀ n, P2319343805726399505.a n = A142239 n

end A142239

/-! ## A142239.P41018409308507580

`(A000035(n)+1)*A041007(n)`
-/

namespace A142239.P41018409308507580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A041007 n

end

end A142239.P41018409308507580

namespace A142239

/-- `(A000035(n)+1)*A041007(n)` -/
def P41018409308507580.Spec : Prop :=
  ∀ n, P41018409308507580.a n = A142239 n

end A142239

/-! ## A142239.P6397819551070463037

`A040001(n+1)*A041007(n)`
-/

namespace A142239.P6397819551070463037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A041007 n

end

end A142239.P6397819551070463037

namespace A142239

/-- `A040001(n+1)*A041007(n)` -/
def P6397819551070463037.Spec : Prop :=
  ∀ n, P6397819551070463037.a n = A142239 n

end A142239

/-! ## A142239.P7165827467033689767

`(2-A059841(n))*A041007(n)`
-/

namespace A142239.P7165827467033689767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A059841 n) * A041007 n

end

end A142239.P7165827467033689767

namespace A142239

/-- `(2-A059841(n))*A041007(n)` -/
def P7165827467033689767.Spec : Prop :=
  ∀ n, P7165827467033689767.a n = A142239 n

end A142239

/-! ## A142239.P2064652927678777369

`lcm(A041007(n), A297402(n+1))`
-/

namespace A142239.P2064652927678777369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A041007 n) (A297402 (n + 1))

end

end A142239.P2064652927678777369

namespace A142239

/-- `lcm(A041007(n), A297402(n+1))` -/
def P2064652927678777369.Spec : Prop :=
  ∀ n, (P2064652927678777369.a n : ℤ) = A142239 n

end A142239

/-! ## A142239.P1269385391502538520

`A040001(n+1)²*A041039(n)`
-/

namespace A142239.P1269385391502538520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) ^ 2 * A041039 n

end

end A142239.P1269385391502538520

namespace A142239

/-- `A040001(n+1)²*A041039(n)` -/
def P1269385391502538520.Spec : Prop :=
  ∀ n, P1269385391502538520.a n = A142239 n

end A142239

/-! ## A142239.P1024527930553389997

`A134451(n+1)²*A041039(n)`
-/

namespace A142239.P1024527930553389997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (n + 1) ^ 2 * A041039 n

end

end A142239.P1024527930553389997

namespace A142239

/-- `A134451(n+1)²*A041039(n)` -/
def P1024527930553389997.Spec : Prop :=
  ∀ n, P1024527930553389997.a n = A142239 n

end A142239

/-! ## A142239.P11103118459955333027

`(A188510(n)²+1)*A041007(n)`
-/

namespace A142239.P11103118459955333027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A188510 n ^ 2 + 1) * A041007 n

end

end A142239.P11103118459955333027

namespace A142239

/-- `(A188510(n)²+1)*A041007(n)` -/
def P11103118459955333027.Spec : Prop :=
  ∀ n, P11103118459955333027.a n = A142239 n

end A142239

/-! ## A142239.P4665113664195675539

`A041007(n-A052928(n))*A041007(n)`
-/

namespace A142239.P4665113664195675539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041007 ((n : ℤ) - A052928 n).toNat * A041007 n

end

end A142239.P4665113664195675539

namespace A142239

/-- `A041007(n-A052928(n))*A041007(n)` -/
def P4665113664195675539.Spec : Prop :=
  ∀ n, P4665113664195675539.a n = A142239 n

end A142239

/-! ## A142239.P13786590133849550420

`A041007(n)/A041039(n)*A041007(n)`
-/

namespace A142239.P13786590133849550420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041007 n : ℚ) / (A041039 n : ℚ) * (A041007 n : ℚ)

end

end A142239.P13786590133849550420

namespace A142239

/-- `A041007(n)/A041039(n)*A041007(n)` -/
def P13786590133849550420.Spec : Prop :=
  ∀ n, P13786590133849550420.a n = (A142239 n : ℚ)

end A142239

/-! ## A142239.P10320969133952931118

`A016116(n+1)/A016116(n)*A041007(n)`
-/

namespace A142239.P10320969133952931118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 (n + 1) : ℚ) / (A016116 n : ℚ) * (A041007 n : ℚ)

end

end A142239.P10320969133952931118

namespace A142239

/-- `A016116(n+1)/A016116(n)*A041007(n)` -/
def P10320969133952931118.Spec : Prop :=
  ∀ n, P10320969133952931118.a n = (A142239 n : ℚ)

end A142239

/-! ## A142239.P4764728691972155581

`Δ[A259594(n)/2]`
-/

namespace A142239.P4764728691972155581
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259594 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A142239.P4764728691972155581

namespace A142239

/-- `Δ[A259594(n)/2]` -/
def P4764728691972155581.Spec : Prop :=
  ∀ n, P4764728691972155581.a n = (A142239 n : ℚ)

end A142239

/-!
# A142240: A triangular sequence from the pattern in row sums of Pascal's triangle A007318, Eulerian numbers A008292 and A060187: Delta_diagonal=m; m={0,1,2,3,...k}.

The programs for A142240, there is no canonical definition to state claims against.
-/

/-! ## A142240.P544519172875533511

`A309555(n)-ceil(acot(n))`
-/

namespace A142240.P544519172875533511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309555 n - ⌈SequenceMachineLib.acot (n : ℝ)⌉

end

end A142240.P544519172875533511

/-! ## A142240.P8053838985746115592

`A077028(n)+ceil(n/63)`
-/

namespace A142240.P8053838985746115592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 n + ⌈(n : ℚ) / 63⌉

end

end A142240.P8053838985746115592

/-! ## A142240.P15481061843040398009

`ceil(A004247(n)+cosh(sin(n)))`
-/

namespace A142240.P15481061843040398009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004247 n : ℝ) + Real.cosh (Real.sin (n : ℝ))⌉

end

end A142240.P15481061843040398009

/-! ## A142240.P1050879699960789656

`3-floor(A176270(n)+acot(n))`
-/

namespace A142240.P1050879699960789656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ⌊(A176270 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A142240.P1050879699960789656

/-! ## A142240.P11271836038233570129

`ceil(sin(n)²)+sqrt(A082043(n))`
-/

namespace A142240.P11271836038233570129
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (⌈Real.sin (n : ℝ) ^ 2⌉ : ℝ) + Real.sqrt (A082043 n : ℝ)

end

end A142240.P11271836038233570129

/-! ## A142240.P6217485913452860169

`A178334(n)+A077028(n)`
-/

namespace A142240.P6217485913452860169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A077028 n

end

end A142240.P6217485913452860169

/-! ## A142240.P6685568058889891781

`A178489(n)+A077028(n)`
-/

namespace A142240.P6685568058889891781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n + A077028 n

end

end A142240.P6685568058889891781

/-! ## A142240.P7330885045500130450

`A309555(n)-A054977(n)`
-/

namespace A142240.P7330885045500130450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309555 n - A054977 n

end

end A142240.P7330885045500130450

/-! ## A142240.P5432841584715580210

`A036452(n+1)+A004247(n)`
-/

namespace A142240.P5432841584715580210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (n + 1) + A004247 n

end

end A142240.P5432841584715580210

/-!
# A142241: a(n) = 24*n + 14.

The programs for A142241, the canonical program `A142241.P12254409372412646352` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142241 has offset 0).

The definition of A142241 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `24*n+14` (program `A142241.P12254409372412646352`, by `A142241.P12254409372412646352.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142241.P12254409372412646352

`24*n+14`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142241

/-- `24*n+14` -/
def P12254409372412646352.Spec : Prop :=
  ∀ n, (P12254409372412646352.a n : ℤ) = A142241 n

theorem P12254409372412646352.correct : P12254409372412646352.Spec := by
  intro n
  simp only [A142241]

end A142241

/-!
# A142242: Row sums of A143200.

The programs for A142242, the canonical program `A142242.P4378309256295079438` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142242 has offset 0).

The definition of A142242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1360 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142242.P4378309256295079438

`2-xor(1, A038573(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A142242

/-- `2-xor(1, A038573(n))` -/
def P4378309256295079438.Spec : Prop :=
  ∀ n, P4378309256295079438.a n = A142242 n

theorem P4378309256295079438.correct : P4378309256295079438.Spec := by
  intro n
  simp only [A142242]

end A142242

/-! ## A142242.P13988201985385856675

`A057174(A038573(n))`
-/

namespace A142242.P13988201985385856675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057174 (A038573 n).toNat

end

end A142242.P13988201985385856675

namespace A142242

/-- `A057174(A038573(n))` -/
def P13988201985385856675.Spec : Prop :=
  ∀ n, P13988201985385856675.a n = A142242 n

end A142242

/-! ## A142242.P8498531470460509080

`A325314(A001316(n))`
-/

namespace A142242.P8498531470460509080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325314 (A001316 n).toNat

end

end A142242.P8498531470460509080

namespace A142242

/-- `A325314(A001316(n))` -/
def P8498531470460509080.Spec : Prop :=
  ∀ n, P8498531470460509080.a n = A142242 n

end A142242

/-! ## A142242.P14998767656245265900

`A297159(A160713(n))`
-/

namespace A142242.P14998767656245265900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297159 (A160713 n).toNat

end

end A142242.P14998767656245265900

namespace A142242

/-- `A297159(A160713(n))` -/
def P14998767656245265900.Spec : Prop :=
  ∀ n, P14998767656245265900.a n = A142242 n

end A142242

/-! ## A142242.P1943635688941576343

`A033879(A151787(n+1))`
-/

namespace A142242.P1943635688941576343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A151787 (n + 1)).toNat

end

end A142242.P1943635688941576343

namespace A142242

/-- `A033879(A151787(n+1))` -/
def P1943635688941576343.Spec : Prop :=
  ∀ n, P1943635688941576343.a n = A142242 n

end A142242

/-! ## A142242.P8790911388742559328

`A040002(n)-A001316(n)`
-/

namespace A142242.P8790911388742559328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040002 n - A001316 n

end

end A142242.P8790911388742559328

namespace A142242

/-- `A040002(n)-A001316(n)` -/
def P8790911388742559328.Spec : Prop :=
  ∀ n, P8790911388742559328.a n = A142242 n

end A142242

/-! ## A142242.P6969253464795916723

`A122553(n)-A038573(n)`
-/

namespace A142242.P6969253464795916723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n - A038573 n

end

end A142242.P6969253464795916723

namespace A142242

/-- `A122553(n)-A038573(n)` -/
def P6969253464795916723.Spec : Prop :=
  ∀ n, P6969253464795916723.a n = A142242 n

end A142242

/-! ## A142242.P10093959842770217988

`A151930(A151787(n+1)-1)`
-/

namespace A142242.P10093959842770217988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151930 (A151787 (n + 1) - 1).toNat

end

end A142242.P10093959842770217988

namespace A142242

/-- `A151930(A151787(n+1)-1)` -/
def P10093959842770217988.Spec : Prop :=
  ∀ n, P10093959842770217988.a n = A142242 n

end A142242

/-! ## A142242.P16740129354247028605

`A057174(A071044(2*n)-1)`
-/

namespace A142242.P16740129354247028605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057174 (A071044 (2 * n) - 1).toNat

end

end A142242.P16740129354247028605

namespace A142242

/-- `A057174(A071044(2*n)-1)` -/
def P16740129354247028605.Spec : Prop :=
  ∀ n, P16740129354247028605.a n = A142242 n

end A142242

/-! ## A142242.P5891817743726307215

`A137882(n+1)-A128806(n)`
-/

namespace A142242.P5891817743726307215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137882 (n + 1) - A128806 n

end

end A142242.P5891817743726307215

namespace A142242

/-- `A137882(n+1)-A128806(n)` -/
def P5891817743726307215.Spec : Prop :=
  ∀ n, P5891817743726307215.a n = A142242 n

end A142242

/-! ## A142242.P5994423637911725902

`A040005(2*n)-A060632(2*n)`
-/

namespace A142242.P5994423637911725902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040005 (2 * n) - A060632 (2 * n)

end

end A142242.P5994423637911725902

namespace A142242

/-- `A040005(2*n)-A060632(2*n)` -/
def P5994423637911725902.Spec : Prop :=
  ∀ n, P5994423637911725902.a n = A142242 n

end A142242

/-! ## A142242.P72535301990410400

`A001316(A001316(n)+1)-A001316(n)`
-/

namespace A142242.P72535301990410400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A001316 n + 1).toNat - A001316 n

end

end A142242.P72535301990410400

namespace A142242

/-- `A001316(A001316(n)+1)-A001316(n)` -/
def P72535301990410400.Spec : Prop :=
  ∀ n, P72535301990410400.a n = A142242 n

end A142242

/-! ## A142242.P2608390733266856558

`A001316(A233775(2*n))-A001316(2*n)`
-/

namespace A142242.P2608390733266856558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A233775 (2 * n)).toNat - A001316 (2 * n)

end

end A142242.P2608390733266856558

namespace A142242

/-- `A001316(A233775(2*n))-A001316(2*n)` -/
def P2608390733266856558.Spec : Prop :=
  ∀ n, P2608390733266856558.a n = A142242 n

end A142242

/-! ## A142242.P3862161770232195388

`A000091(A071044(2*n+1))-A071044(2*n)`
-/

namespace A142242.P3862161770232195388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000091 (A071044 (2 * n + 1)).toNat - A071044 (2 * n)

end

end A142242.P3862161770232195388

namespace A142242

/-- `A000091(A071044(2*n+1))-A071044(2*n)` -/
def P3862161770232195388.Spec : Prop :=
  ∀ n, P3862161770232195388.a n = A142242 n

end A142242

/-! ## A142242.P1661923996679258698

`A060632(A105321(2*n+1))-A060632(2*n)`
-/

namespace A142242.P1661923996679258698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (A105321 (2 * n + 1)).toNat - A060632 (2 * n)

end

end A142242.P1661923996679258698

namespace A142242

/-- `A060632(A105321(2*n+1))-A060632(2*n)` -/
def P1661923996679258698.Spec : Prop :=
  ∀ n, P1661923996679258698.a n = A142242 n

end A142242

/-! ## A142242.P14976151836410648476

`A105321(A233775(2*n))-A233775(2*n+1)`
-/

namespace A142242.P14976151836410648476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105321 (A233775 (2 * n)).toNat - A233775 (2 * n + 1)

end

end A142242.P14976151836410648476

namespace A142242

/-- `A105321(A233775(2*n))-A233775(2*n+1)` -/
def P14976151836410648476.Spec : Prop :=
  ∀ n, P14976151836410648476.a n = A142242 n

end A142242

/-! ## A142242.P9977834115754692476

`A117973(A072376(n))-A072376(A117973(n))`
-/

namespace A142242.P9977834115754692476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117973 (A072376 n).toNat - A072376 (A117973 n).toNat

end

end A142242.P9977834115754692476

namespace A142242

/-- `A117973(A072376(n))-A072376(A117973(n))` -/
def P9977834115754692476.Spec : Prop :=
  ∀ n, P9977834115754692476.a n = A142242 n

end A142242

/-!
# A142243: Triangle T(n,k) = binomial(2*n,k) *binomial(2*n-2*k,n-k), read by rows; 0<=k<=n.

The programs for A142243, the canonical program `A142243.P5346729811082170933` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142243 has offset 0).

The definition of A142243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8430 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142243.P1715199398486137271

`C(∑[2*char[∑[n+1]]], n-C(∑[char[∑[n]]], 2))*A000984(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A142243.P1715199398486137271
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ)).toNat : ℤ) * A000984 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f7 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A142243.P1715199398486137271

namespace A142243

/-- `C(∑[2*char[∑[n+1]]], n-C(∑[char[∑[n]]], 2))*A000984(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P1715199398486137271.Spec : Prop :=
  ∀ n, P1715199398486137271.a n = A142243 n

end A142243

/-! ## A142243.P5346729811082170933

`A062344(n)*A106187(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A142243

/-- `A062344(n)*A106187(n)` -/
def P5346729811082170933.Spec : Prop :=
  ∀ n, P5346729811082170933.a n = A142243 n

theorem P5346729811082170933.correct : P5346729811082170933.Spec := by
  intro n
  simp only [A142243]

end A142243

/-! ## A142243.P15146348455661939096

`A000984(A025581(n))*A062344(n)`
-/

namespace A142243.P15146348455661939096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (A025581 n).toNat * A062344 n

end

end A142243.P15146348455661939096

namespace A142243

/-- `A000984(A025581(n))*A062344(n)` -/
def P15146348455661939096.Spec : Prop :=
  ∀ n, P15146348455661939096.a n = A142243 n

end A142243

/-! ## A142243.P5274100419825918395

`A069466(n)/A054142(n)`
-/

namespace A142243.P5274100419825918395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069466 n : ℚ) / (A054142 n : ℚ)

end

end A142243.P5274100419825918395

namespace A142243

/-- `A069466(n)/A054142(n)` -/
def P5274100419825918395.Spec : Prop :=
  ∀ n, P5274100419825918395.a n = (A142243 n : ℚ)

end A142243

/-! ## A142243.P8347059167851987333

`abs(A069466(n)/A076756(n))`
-/

namespace A142243.P8347059167851987333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A069466 n : ℚ) / (A076756 n : ℚ)|

end

end A142243.P8347059167851987333

namespace A142243

/-- `abs(A069466(n)/A076756(n))` -/
def P8347059167851987333.Spec : Prop :=
  ∀ n, P8347059167851987333.a n = (A142243 n : ℚ)

end A142243

/-!
# A142244: Primes congruent to 23 mod 42.

The programs for A142244, the canonical program `A142244.P2650008043261147922` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142244 has offset 1).

The definition of A142244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142244.P2650008043261147922

`A141888(n+2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A142244

/-- `A141888(n+2)` -/
def P2650008043261147922.Spec : Prop :=
  ∀ n, P2650008043261147922.a n = A142244 (n + 1)

theorem P2650008043261147922.correct : P2650008043261147922.Spec := by
  intro n
  simp only [A142244, Nat.add_sub_cancel]

end A142244

/-! ## A142244.P4728746967653215948

`p?[21*(n+1)+2]`
-/

namespace A142244.P4728746967653215948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21 * (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142244.P4728746967653215948

namespace A142244

/-- `p?[21*(n+1)+2]` -/
def P4728746967653215948.Spec : Prop :=
  ∀ n, (P4728746967653215948.a n : ℤ) = A142244 (n + 1)

end A142244

/-! ## A142244.P963010592720066203

`∩[A106927(n+1), A140442(n+1)]`
-/

namespace A142244.P963010592720066203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142244.P963010592720066203

namespace A142244

/-- `∩[A106927(n+1), A140442(n+1)]` -/
def P963010592720066203.Spec : Prop :=
  ∀ n, (P963010592720066203.a n : ℤ) = A142244 (n + 1)

end A142244

/-! ## A142244.P17255650558765173961

`∩[A045383(n+1), A106927(n+2)]`
-/

namespace A142244.P17255650558765173961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142244.P17255650558765173961

namespace A142244

/-- `∩[A045383(n+1), A106927(n+2)]` -/
def P17255650558765173961.Spec : Prop :=
  ∀ n, (P17255650558765173961.a n : ℤ) = A142244 (n + 1)

end A142244

/-! ## A142244.P8384062977753667783

`∩[A045392(n+1), A106927(n+2)]`
-/

namespace A142244.P8384062977753667783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142244.P8384062977753667783

namespace A142244

/-- `∩[A045392(n+1), A106927(n+2)]` -/
def P8384062977753667783.Spec : Prop :=
  ∀ n, (P8384062977753667783.a n : ℤ) = A142244 (n + 1)

end A142244

/-! ## A142244.P1338548114716303407

`∩[A045368(n+2), A106927(n+2)]`
-/

namespace A142244.P1338548114716303407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045368 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142244.P1338548114716303407

namespace A142244

/-- `∩[A045368(n+2), A106927(n+2)]` -/
def P1338548114716303407.Spec : Prop :=
  ∀ n, (P1338548114716303407.a n : ℤ) = A142244 (n + 1)

end A142244

/-! ## A142244.P1618262163388457234

`∩[A045333(n+1), A106927(n+2)]`
-/

namespace A142244.P1618262163388457234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142244.P1618262163388457234

namespace A142244

/-- `∩[A045333(n+1), A106927(n+2)]` -/
def P1618262163388457234.Spec : Prop :=
  ∀ n, (P1618262163388457234.a n : ℤ) = A142244 (n + 1)

end A142244

/-! ## A142244.P1184603302975224963

`∩[A045343(n+1), A106927(n+2)]`
-/

namespace A142244.P1184603302975224963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142244.P1184603302975224963

namespace A142244

/-- `∩[A045343(n+1), A106927(n+2)]` -/
def P1184603302975224963.Spec : Prop :=
  ∀ n, (P1184603302975224963.a n : ℤ) = A142244 (n + 1)

end A142244

/-! ## A142244.P18262024390156423852

`∩[A045359(n+1), A106927(n+2)]`
-/

namespace A142244.P18262024390156423852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142244.P18262024390156423852

namespace A142244

/-- `∩[A045359(n+1), A106927(n+2)]` -/
def P18262024390156423852.Spec : Prop :=
  ∀ n, (P18262024390156423852.a n : ℤ) = A142244 (n + 1)

end A142244

/-! ## A142244.P16678220441682399662

`∩[A045389(n+1), A106927(n+2)]`
-/

namespace A142244.P16678220441682399662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142244.P16678220441682399662

namespace A142244

/-- `∩[A045389(n+1), A106927(n+2)]` -/
def P16678220441682399662.Spec : Prop :=
  ∀ n, (P16678220441682399662.a n : ℤ) = A142244 (n + 1)

end A142244

/-! ## A142244.P3592636313606556546

`∩[A045377(n+2), A106927(n+2)]`
-/

namespace A142244.P3592636313606556546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045377 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142244.P3592636313606556546

namespace A142244

/-- `∩[A045377(n+2), A106927(n+2)]` -/
def P3592636313606556546.Spec : Prop :=
  ∀ n, (P3592636313606556546.a n : ℤ) = A142244 (n + 1)

end A142244

/-! ## A142244.P16861948721529558218

`∩[A004620(n+2), A106927(n+2)]`
-/

namespace A142244.P16861948721529558218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004620 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142244.P16861948721529558218

namespace A142244

/-- `∩[A004620(n+2), A106927(n+2)]` -/
def P16861948721529558218.Spec : Prop :=
  ∀ n, (P16861948721529558218.a n : ℤ) = A142244 (n + 1)

end A142244

/-! ## A142244.P11689517199801419250

`∩[A045329(n+1), A106927(n+2)]`
-/

namespace A142244.P11689517199801419250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142244.P11689517199801419250

namespace A142244

/-- `∩[A045329(n+1), A106927(n+2)]` -/
def P11689517199801419250.Spec : Prop :=
  ∀ n, (P11689517199801419250.a n : ℤ) = A142244 (n + 1)

end A142244

/-! ## A142244.P8092839394604373344

`∩[A045341(n+1), A106927(n+2)]`
-/

namespace A142244.P8092839394604373344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142244.P8092839394604373344

namespace A142244

/-- `∩[A045341(n+1), A106927(n+2)]` -/
def P8092839394604373344.Spec : Prop :=
  ∀ n, (P8092839394604373344.a n : ℤ) = A142244 (n + 1)

end A142244

/-! ## A142244.P14074086002959048610

`∩[A140442(n+1), A161504(n+1)]`
-/

namespace A142244.P14074086002959048610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142244.P14074086002959048610

namespace A142244

/-- `∩[A140442(n+1), A161504(n+1)]` -/
def P14074086002959048610.Spec : Prop :=
  ∀ n, (P14074086002959048610.a n : ℤ) = A142244 (n + 1)

end A142244

/-! ## A142244.P14086636342003422958

`∩[A106927(n+1), A045365(n+2)]`
-/

namespace A142244.P14086636342003422958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045365 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142244.P14086636342003422958

namespace A142244

/-- `∩[A106927(n+1), A045365(n+2)]` -/
def P14086636342003422958.Spec : Prop :=
  ∀ n, (P14086636342003422958.a n : ℤ) = A142244 (n + 1)

end A142244

/-! ## A142244.P4071932364417529896

`∩[A004620(n+1), A161504(n+2)]`
-/

namespace A142244.P4071932364417529896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161504 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142244.P4071932364417529896

namespace A142244

/-- `∩[A004620(n+1), A161504(n+2)]` -/
def P4071932364417529896.Spec : Prop :=
  ∀ n, (P4071932364417529896.a n : ℤ) = A142244 (n + 1)

end A142244

/-! ## A142244.P4942026148686292219

`∩[A045383(n+1), A161504(n+2)]`
-/

namespace A142244.P4942026148686292219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161504 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142244.P4942026148686292219

namespace A142244

/-- `∩[A045383(n+1), A161504(n+2)]` -/
def P4942026148686292219.Spec : Prop :=
  ∀ n, (P4942026148686292219.a n : ℤ) = A142244 (n + 1)

end A142244

/-! ## A142244.P18179194661368491002

`∩[A045392(n+1), A161504(n+2)]`
-/

namespace A142244.P18179194661368491002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161504 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142244.P18179194661368491002

namespace A142244

/-- `∩[A045392(n+1), A161504(n+2)]` -/
def P18179194661368491002.Spec : Prop :=
  ∀ n, (P18179194661368491002.a n : ℤ) = A142244 (n + 1)

end A142244

/-! ## A142244.P5675043384894511741

`∩[A038894(n+1), A140442(n+1)]`
-/

namespace A142244.P5675043384894511741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142244.P5675043384894511741

namespace A142244

/-- `∩[A038894(n+1), A140442(n+1)]` -/
def P5675043384894511741.Spec : Prop :=
  ∀ n, (P5675043384894511741.a n : ℤ) = A142244 (n + 1)

end A142244

/-!
# A142245: Expansion of 2*x*(6 + 5*x) / ((1 - x)*(1 - x - x^2)).

The programs for A142245, the canonical program `A142245.P4061105670968989405` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142245 has offset 0).

The definition of A142245 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((12x+10x^2)/(1-2x+x^3))` (program `A142245.P4061105670968989405`, by `A142245.P4061105670968989405.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A142245.P4061105670968989405

`ogf((12x+10x^2)/(1-2x+x^3))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142245

/-- `ogf((12x+10x^2)/(1-2x+x^3))` -/
def P4061105670968989405.Spec : Prop :=
  ∀ n, P4061105670968989405.a n = A142245 n

theorem P4061105670968989405.correct : P4061105670968989405.Spec := by
  intro n
  simp only [A142245]

end A142245

/-! ## A142245.P14669397109634929574

`2*A022095(n+3)-22`
-/

namespace A142245.P14669397109634929574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022095 (n + 3) - 22

end

end A142245.P14669397109634929574

namespace A142245

/-- `2*A022095(n+3)-22` -/
def P14669397109634929574.Spec : Prop :=
  ∀ n, P14669397109634929574.a n = A142245 n

end A142245

/-! ## A142245.P158825198070546685

`23*A000045(n)+11*A000032(n)-22`
-/

namespace A142245.P158825198070546685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  23 * A000045 n + 11 * A000032 n - 22

end

end A142245.P158825198070546685

namespace A142245

/-- `23*A000045(n)+11*A000032(n)-22` -/
def P158825198070546685.Spec : Prop :=
  ∀ n, P158825198070546685.a n = A142245 n

end A142245

/-! ## A142245.P9971393933601356746

`10*A094707(2*n)+A094707(2*n+1)`
-/

namespace A142245.P9971393933601356746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A094707 (2 * n) + A094707 (2 * n + 1)

end

end A142245.P9971393933601356746

namespace A142245

/-- `10*A094707(2*n)+A094707(2*n+1)` -/
def P9971393933601356746.Spec : Prop :=
  ∀ n, P9971393933601356746.a n = A142245 n

end A142245

/-! ## A142245.P11974289516209756330

`a(n-1)+a(n-2)+22` with `a(0)=0, a(1)=12`
-/

namespace A142245.P11974289516209756330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 12] fun n a =>
  a (n - 1) + (a (n - 2) + 22)

end

end A142245.P11974289516209756330

namespace A142245

/-- `a(n-1)+a(n-2)+22` -/
def P11974289516209756330.Spec : Prop :=
  ∀ n, (P11974289516209756330.a n : ℤ) = A142245 n

end A142245

/-! ## A142245.P16030589267967028786

`A022323(n+1)+a(n-1)+1` with `a(0)=0`
-/

namespace A142245.P16030589267967028786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A022323 (n + 1) + (a (n - 1) + 1)

end

end A142245.P16030589267967028786

namespace A142245

/-- `A022323(n+1)+a(n-1)+1` -/
def P16030589267967028786.Spec : Prop :=
  ∀ n, P16030589267967028786.a n = A142245 n

end A142245

/-! ## A142245.P18239902897769121531

`A000071(n+1)+A180673(n)-A000045(n)`
-/

namespace A142245.P18239902897769121531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (A180673 n - A000045 n)

end

end A142245.P18239902897769121531

namespace A142245

/-- `A000071(n+1)+A180673(n)-A000045(n)` -/
def P18239902897769121531.Spec : Prop :=
  ∀ n, P18239902897769121531.a n = A142245 n

end A142245

/-! ## A142245.P4719520013658835872

`∑[A022357(n)]-A022316(n)`
-/

namespace A142245.P4719520013658835872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A022316 n

end

end A142245.P4719520013658835872

namespace A142245

/-- `∑[A022357(n)]-A022316(n)` -/
def P4719520013658835872.Spec : Prop :=
  ∀ n, P4719520013658835872.a n = A142245 n

end A142245

/-!
# A142246: Primes of the form (prime(n+2)-prime(n))/(prime(n+1)-prime(n)), where prime(n)=n-th prime.

The programs for A142246, there is no canonical definition to state claims against.
-/

/-! ## A142246.P1854310837707296470

`p?[A274225(n+1)+A083552(n+1)]`
-/

namespace A142246.P1854310837707296470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274225 (n + 1) + A083552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142246.P1854310837707296470

/-! ## A142246.P11411328004049635050

`p?[(A272863(n+1)+1)*A274225(n+1)]`
-/

namespace A142246.P11411328004049635050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A272863 (n + 1) + 1) * A274225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142246.P11411328004049635050

/-!
# A142247: Primes of the form 2^p - 1, 2^p + 1, 2^p - 3, or 2^p + 3, where p is prime.

The programs for A142247, there is no canonical definition to state claims against.
-/

/-! ## A142247.P8581378090873332874

`A226653(∑[A317505(n)²])`
-/

namespace A142247.P8581378090873332874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317505 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226653 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A142247.P8581378090873332874

/-! ## A142247.P15207625959449459490

`filter[A352912(n+2), A131217(#)]`
-/

namespace A142247.P15207625959449459490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352912 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131217 (f1 j).toNat = 1) n)

end

end A142247.P15207625959449459490

/-! ## A142247.P10808557986046390275

`p?[record[A003986(A050053(n+1))]]`
-/

namespace A142247.P10808557986046390275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (A050053 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142247.P10808557986046390275

/-! ## A142247.P10674532463328975934

`record[p?[A116966(A277011(n)+1)]]`
-/

namespace A142247.P10674532463328975934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 (A277011 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142247.P10674532463328975934

/-!
# A142248: Odd numbers in A138123.

The programs for A142248, the canonical program `A142248.P11630301448832299196` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142248 has offset 1).

The definition of A142248 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142248.P11492431434887651058

`or(1, ceil(∑[ϕ^n]))`
-/

namespace A142248.P11492431434887651058
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A142248.P11492431434887651058

namespace A142248

/-- `or(1, ceil(∑[ϕ^n]))` -/
def P11492431434887651058.Spec : Prop :=
  ∀ n, P11492431434887651058.a n = A142248 (n + 1)

end A142248

/-! ## A142248.P3234789559117200301

`record[or(1, round((-sqrt(ϕ))^n)-1)]`
-/

namespace A142248.P3234789559117200301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((-Real.sqrt Real.goldenRatio) ^ n) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142248.P3234789559117200301

namespace A142248

/-- `record[or(1, round((-sqrt(ϕ))^n)-1)]` -/
def P3234789559117200301.Spec : Prop :=
  ∀ n, P3234789559117200301.a n = A142248 (n + 1)

end A142248

/-! ## A142248.P11630301448832299196

`a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=11, a(4)=17, a(5)=29`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142248

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` -/
def P11630301448832299196.Spec : Prop :=
  ∀ n, P11630301448832299196.a n = A142248 (n + 1)

theorem P11630301448832299196.correct : P11630301448832299196.Spec := by
  intro n
  simp only [A142248, Nat.add_sub_cancel]

end A142248

/-! ## A142248.P14033992890899077889

`record[A138123(n+1)]`
-/

namespace A142248.P14033992890899077889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142248.P14033992890899077889

namespace A142248

/-- `record[A138123(n+1)]` -/
def P14033992890899077889.Spec : Prop :=
  ∀ n, P14033992890899077889.a n = A142248 (n + 1)

end A142248

/-! ## A142248.P8968679075895720733

`or(1, A288219(n)-3)+2`
-/

namespace A142248.P8968679075895720733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A288219 n - 3) + 2

end

end A142248.P8968679075895720733

namespace A142248

/-- `or(1, A288219(n)-3)+2` -/
def P8968679075895720733.Spec : Prop :=
  ∀ n, P8968679075895720733.a n = A142248 (n + 1)

end A142248

/-! ## A142248.P10020310241842076524

`record[A090244(n)-a(n-3)]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A142248.P10020310241842076524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  A090244 n - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142248.P10020310241842076524

namespace A142248

/-- `record[A090244(n)-a(n-3)]` -/
def P10020310241842076524.Spec : Prop :=
  ∀ n, P10020310241842076524.a n = A142248 (n + 1)

end A142248

/-! ## A142248.P16340590078053929250

`A138123(A130773(n+1))`
-/

namespace A142248.P16340590078053929250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138123 (A130773 (n + 1)).toNat

end

end A142248.P16340590078053929250

namespace A142248

/-- `A138123(A130773(n+1))` -/
def P16340590078053929250.Spec : Prop :=
  ∀ n, P16340590078053929250.a n = A142248 (n + 1)

end A142248

/-! ## A142248.P14446727266926931216

`A138123(A267872(n+1))`
-/

namespace A142248.P14446727266926931216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138123 (A267872 (n + 1)).toNat

end

end A142248.P14446727266926931216

namespace A142248

/-- `A138123(A267872(n+1))` -/
def P14446727266926931216.Spec : Prop :=
  ∀ n, P14446727266926931216.a n = A142248 (n + 1)

end A142248

/-! ## A142248.P2615139796211451848

`A138123(A140139(n+2))`
-/

namespace A142248.P2615139796211451848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138123 (A140139 (n + 2)).toNat

end

end A142248.P2615139796211451848

namespace A142248

/-- `A138123(A140139(n+2))` -/
def P2615139796211451848.Spec : Prop :=
  ∀ n, P2615139796211451848.a n = A142248 (n + 1)

end A142248

/-! ## A142248.P10420393698763150233

`∪[A014447(n), A100233(n)]`
-/

namespace A142248.P10420393698763150233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014447 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100233 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A142248.P10420393698763150233

namespace A142248

/-- `∪[A014447(n), A100233(n)]` -/
def P10420393698763150233.Spec : Prop :=
  ∀ n, (P10420393698763150233.a n : ℤ) = A142248 (n + 1)

end A142248

/-!
# A142250: Primes congruent to 1 mod 43.

The programs for A142250, the canonical program `A142250.P3046706253787374491` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142250 has offset 1).

The definition of A142250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1867 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142250.P3046706253787374491

`p?[43*n+1]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142250

/-- `p?[43*n+1]` -/
def P3046706253787374491.Spec : Prop :=
  ∀ n, (P3046706253787374491.a n : ℤ) = A142250 (n + 1)

theorem P3046706253787374491.correct : P3046706253787374491.Spec := by
  intro n
  simp only [A142250, Nat.add_sub_cancel]

end A142250

/-! ## A142250.P13690050397507788620

`A000027(p?[A161709(n)+A152691(n)])`
-/

namespace A142250.P13690050397507788620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n + A152691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142250.P13690050397507788620

namespace A142250

/-- `A000027(p?[A161709(n)+A152691(n)])` -/
def P13690050397507788620.Spec : Prop :=
  ∀ n, P13690050397507788620.a n = A142250 (n + 1)

end A142250

/-! ## A142250.P18363294098487339692

`A000027(p?[A161705(n)+A008607(n)])`
-/

namespace A142250.P18363294098487339692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n + A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142250.P18363294098487339692

namespace A142250

/-- `A000027(p?[A161705(n)+A008607(n)])` -/
def P18363294098487339692.Spec : Prop :=
  ∀ n, P18363294098487339692.a n = A142250 (n + 1)

end A142250

/-! ## A142250.P2781199697899060645

`A000027(p?[A215145(n)+A008605(n)])`
-/

namespace A142250.P2781199697899060645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215145 n + A008605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142250.P2781199697899060645

namespace A142250

/-- `A000027(p?[A215145(n)+A008605(n)])` -/
def P2781199697899060645.Spec : Prop :=
  ∀ n, P2781199697899060645.a n = A142250 (n + 1)

end A142250

/-! ## A142250.P8558291721468552950

`p?[A161705(n)+A008607(n)]%A017056(n)`
-/

namespace A142250.P8558291721468552950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n + A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017056 n)

end

end A142250.P8558291721468552950

namespace A142250

/-- `p?[A161705(n)+A008607(n)]%A017056(n)` -/
def P8558291721468552950.Spec : Prop :=
  ∀ n, P8558291721468552950.a n = A142250 (n + 1)

end A142250

/-! ## A142250.P341691609385943656

`p?[A161705(n)+A008607(n)]^A008836(n+1)²`
-/

namespace A142250.P341691609385943656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n + A008607 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A008836 (n + 1) ^ 2 : ℤ)

end

end A142250.P341691609385943656

namespace A142250

/-- `p?[A161705(n)+A008607(n)]^A008836(n+1)²` -/
def P341691609385943656.Spec : Prop :=
  ∀ n, P341691609385943656.a n = (A142250 (n + 1) : ℚ)

end A142250

/-! ## A142250.P12072157278490208062

`p?[A161705(n)+A008607(n)]/(A005408(n)-n-n)`
-/

namespace A142250.P12072157278490208062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n + A008607 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A005408 n - (n : ℤ) - (n : ℤ) : ℚ)

end

end A142250.P12072157278490208062

namespace A142250

/-- `p?[A161705(n)+A008607(n)]/(A005408(n)-n-n)` -/
def P12072157278490208062.Spec : Prop :=
  ∀ n, P12072157278490208062.a n = (A142250 (n + 1) : ℚ)

end A142250

/-! ## A142250.P7830561811394763581

`record[A020639(86*(lcm(n+1, A089026(n+1))+1)+1)]`
-/

namespace A142250.P7830561811394763581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (86 * (Int.lcm (n + 1 : ℤ) (A089026 (n + 1)) + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142250.P7830561811394763581

namespace A142250

/-- `record[A020639(86*(lcm(n+1, A089026(n+1))+1)+1)]` -/
def P7830561811394763581.Spec : Prop :=
  ∀ n, P7830561811394763581.a n = A142250 (n + 1)

end A142250

/-! ## A142250.P14174421412553144039

`A000265(p?[A161705(n)+A008607(n)])`
-/

namespace A142250.P14174421412553144039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n + A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142250.P14174421412553144039

namespace A142250

/-- `A000265(p?[A161705(n)+A008607(n)])` -/
def P14174421412553144039.Spec : Prop :=
  ∀ n, P14174421412553144039.a n = A142250 (n + 1)

end A142250

/-! ## A142250.P3369334040082821642

`A001414(p?[A161709(n)+A008603(n)])`
-/

namespace A142250.P3369334040082821642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n + A008603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142250.P3369334040082821642

namespace A142250

/-- `A001414(p?[A161709(n)+A008603(n)])` -/
def P3369334040082821642.Spec : Prop :=
  ∀ n, P3369334040082821642.a n = A142250 (n + 1)

end A142250

/-! ## A142250.P11400504911062161278

`A007913(p?[A161705(n)+A008607(n)])`
-/

namespace A142250.P11400504911062161278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n + A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142250.P11400504911062161278

namespace A142250

/-- `A007913(p?[A161705(n)+A008607(n)])` -/
def P11400504911062161278.Spec : Prop :=
  ∀ n, P11400504911062161278.a n = A142250 (n + 1)

end A142250

/-! ## A142250.P15918729351810689122

`A007947(p?[A161705(n)+A008607(n)])`
-/

namespace A142250.P15918729351810689122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 n + A008607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142250.P15918729351810689122

namespace A142250

/-- `A007947(p?[A161705(n)+A008607(n)])` -/
def P15918729351810689122.Spec : Prop :=
  ∀ n, P15918729351810689122.a n = A142250 (n + 1)

end A142250

/-! ## A142250.P4547316912871286643

`A000265(p?[A161709(n)+A152691(n)])`
-/

namespace A142250.P4547316912871286643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n + A152691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142250.P4547316912871286643

namespace A142250

/-- `A000265(p?[A161709(n)+A152691(n)])` -/
def P4547316912871286643.Spec : Prop :=
  ∀ n, P4547316912871286643.a n = A142250 (n + 1)

end A142250

/-! ## A142250.P15418719592663609665

`A007913(p?[A161709(n)+A152691(n)])`
-/

namespace A142250.P15418719592663609665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n + A152691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142250.P15418719592663609665

namespace A142250

/-- `A007913(p?[A161709(n)+A152691(n)])` -/
def P15418719592663609665.Spec : Prop :=
  ∀ n, P15418719592663609665.a n = A142250 (n + 1)

end A142250

/-! ## A142250.P10237386347876292989

`A034699(p?[lcm(2, A161709(n))-(n+1)])`
-/

namespace A142250.P10237386347876292989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A161709 n) : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142250.P10237386347876292989

namespace A142250

/-- `A034699(p?[lcm(2, A161709(n))-(n+1)])` -/
def P10237386347876292989.Spec : Prop :=
  ∀ n, P10237386347876292989.a n = A142250 (n + 1)

end A142250

/-! ## A142250.P8866050298089394422

`A034699(p?[A161709(n)+A152691(n)])`
-/

namespace A142250.P8866050298089394422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n + A152691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142250.P8866050298089394422

namespace A142250

/-- `A034699(p?[A161709(n)+A152691(n)])` -/
def P8866050298089394422.Spec : Prop :=
  ∀ n, P8866050298089394422.a n = A142250 (n + 1)

end A142250

/-!
# A142251: Primes congruent to 2 mod 43.

The programs for A142251, the canonical program `A142251.P11557941840240172048` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142251 has offset 1).

The definition of A142251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1878 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142251.P11557941840240172048

`p?[43*n+2]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142251

/-- `p?[43*n+2]` -/
def P11557941840240172048.Spec : Prop :=
  ∀ n, (P11557941840240172048.a n : ℤ) = A142251 (n + 1)

theorem P11557941840240172048.correct : P11557941840240172048.Spec := by
  intro n
  simp only [A142251, Nat.add_sub_cancel]

end A142251

/-! ## A142251.P7933684097201177121

`∏{d}[p?[a(n-1)+43], #]` with `a(0)=2`
-/

namespace A142251.P7933684097201177121
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 43

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A142251.P7933684097201177121

namespace A142251

/-- `∏{d}[p?[a(n-1)+43], #]` -/
def P7933684097201177121.Spec : Prop :=
  ∀ n, (P7933684097201177121.a n : ℤ) = A142251 (n + 1)

end A142251

/-! ## A142251.P83396068423561015

`A000027(p?[A215144(n)+A103214(n)])`
-/

namespace A142251.P83396068423561015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215144 n + A103214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142251.P83396068423561015

namespace A142251

/-- `A000027(p?[A215144(n)+A103214(n)])` -/
def P83396068423561015.Spec : Prop :=
  ∀ n, P83396068423561015.a n = A142251 (n + 1)

end A142251

/-! ## A142251.P12135671063354196259

`A000027(p?[A190991(n)+A128470(n)])`
-/

namespace A142251.P12135671063354196259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n + A128470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142251.P12135671063354196259

namespace A142251

/-- `A000027(p?[A190991(n)+A128470(n)])` -/
def P12135671063354196259.Spec : Prop :=
  ∀ n, P12135671063354196259.a n = A142251 (n + 1)

end A142251

/-! ## A142251.P14180980910344305226

`p?[A190991(n)+A128470(n)]%(A004823(n+1)-6)`
-/

namespace A142251.P14180980910344305226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n + A128470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A004823 (n + 1) - 6)

end

end A142251.P14180980910344305226

namespace A142251

/-- `p?[A190991(n)+A128470(n)]%(A004823(n+1)-6)` -/
def P14180980910344305226.Spec : Prop :=
  ∀ n, P14180980910344305226.a n = A142251 (n + 1)

end A142251

/-! ## A142251.P13950383829780135868

`p?[A139609(n)+A017017(n)-10]%A182087(n+1)`
-/

namespace A142251.P13950383829780135868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017017 n - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A182087 (n + 1))

end

end A142251.P13950383829780135868

namespace A142251

/-- `p?[A139609(n)+A017017(n)-10]%A182087(n+1)` -/
def P13950383829780135868.Spec : Prop :=
  ∀ n, P13950383829780135868.a n = A142251 (n + 1)

end A142251

/-! ## A142251.P1992651040586593631

`A001414(p?[A215144(n)+A103214(n)])`
-/

namespace A142251.P1992651040586593631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215144 n + A103214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142251.P1992651040586593631

namespace A142251

/-- `A001414(p?[A215144(n)+A103214(n)])` -/
def P1992651040586593631.Spec : Prop :=
  ∀ n, P1992651040586593631.a n = A142251 (n + 1)

end A142251

/-! ## A142251.P7037584092861215876

`A001414(p?[A190991(n)+A128470(n)])`
-/

namespace A142251.P7037584092861215876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n + A128470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142251.P7037584092861215876

namespace A142251

/-- `A001414(p?[A190991(n)+A128470(n)])` -/
def P7037584092861215876.Spec : Prop :=
  ∀ n, P7037584092861215876.a n = A142251 (n + 1)

end A142251

/-! ## A142251.P1327283074437625241

`A007913(p?[A190991(n)+A128470(n)])`
-/

namespace A142251.P1327283074437625241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n + A128470 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142251.P1327283074437625241

namespace A142251

/-- `A007913(p?[A190991(n)+A128470(n)])` -/
def P1327283074437625241.Spec : Prop :=
  ∀ n, P1327283074437625241.a n = A142251 (n + 1)

end A142251

/-! ## A142251.P18129376872656832587

`A001414(p?[A215146(n)+A161709(n)])`
-/

namespace A142251.P18129376872656832587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215146 n + A161709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142251.P18129376872656832587

namespace A142251

/-- `A001414(p?[A215146(n)+A161709(n)])` -/
def P18129376872656832587.Spec : Prop :=
  ∀ n, P18129376872656832587.a n = A142251 (n + 1)

end A142251

/-! ## A142251.P4757183475909515641

`A034699(p?[2*A161709(n)-n])`
-/

namespace A142251.P4757183475909515641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161709 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142251.P4757183475909515641

namespace A142251

/-- `A034699(p?[2*A161709(n)-n])` -/
def P4757183475909515641.Spec : Prop :=
  ∀ n, P4757183475909515641.a n = A142251 (n + 1)

end A142251

/-! ## A142251.P10705726288935282640

`A034699(p?[lcm(2, A161709(n))-n])`
-/

namespace A142251.P10705726288935282640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A161709 n) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142251.P10705726288935282640

namespace A142251

/-- `A034699(p?[lcm(2, A161709(n))-n])` -/
def P10705726288935282640.Spec : Prop :=
  ∀ n, P10705726288935282640.a n = A142251 (n + 1)

end A142251

/-!
# A142252: Primes congruent to 3 mod 43.

The programs for A142252, the canonical program `A142252.P419772568220512983` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142252 has offset 1).

The definition of A142252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1863 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142252.P419772568220512983

`p?[43*n+3]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142252

/-- `p?[43*n+3]` -/
def P419772568220512983.Spec : Prop :=
  ∀ n, (P419772568220512983.a n : ℤ) = A142252 (n + 1)

theorem P419772568220512983.correct : P419772568220512983.Spec := by
  intro n
  simp only [A142252, Nat.add_sub_cancel]

end A142252

/-! ## A142252.P11638652305740528261

`A000027(p?[A044102(n)+A017017(n)])`
-/

namespace A142252.P11638652305740528261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 n + A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142252.P11638652305740528261

namespace A142252

/-- `A000027(p?[A044102(n)+A017017(n)])` -/
def P11638652305740528261.Spec : Prop :=
  ∀ n, P11638652305740528261.a n = A142252 (n + 1)

end A142252

/-! ## A142252.P168190034199966902

`p?[A044102(n)+A017017(n)]%A000124(n+7)²`
-/

namespace A142252.P168190034199966902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 n + A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A000124 (n + 7) ^ 2)

end

end A142252.P168190034199966902

namespace A142252

/-- `p?[A044102(n)+A017017(n)]%A000124(n+7)²` -/
def P168190034199966902.Spec : Prop :=
  ∀ n, P168190034199966902.a n = A142252 (n + 1)

end A142252

/-! ## A142252.P15129520078003025960

`record[A020639(43*n+3)]`
-/

namespace A142252.P15129520078003025960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (43 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142252.P15129520078003025960

namespace A142252

/-- `record[A020639(43*n+3)]` -/
def P15129520078003025960.Spec : Prop :=
  ∀ n, P15129520078003025960.a n = A142252 (n + 1)

end A142252

/-! ## A142252.P1755722829355359389

`record[A006530(86*n+3)]`
-/

namespace A142252.P1755722829355359389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (86 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142252.P1755722829355359389

namespace A142252

/-- `record[A006530(86*n+3)]` -/
def P1755722829355359389.Spec : Prop :=
  ∀ n, P1755722829355359389.a n = A142252 (n + 1)

end A142252

/-!
# A142253: Primes congruent to 4 mod 43.

The programs for A142253, the canonical program `A142253.P14971636905352207892` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142253 has offset 1).

The definition of A142253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1883 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142253.P14971636905352207892

`p?[43*n+4]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142253

/-- `p?[43*n+4]` -/
def P14971636905352207892.Spec : Prop :=
  ∀ n, (P14971636905352207892.a n : ℤ) = A142253 (n + 1)

theorem P14971636905352207892.correct : P14971636905352207892.Spec := by
  intro n
  simp only [A142253, Nat.add_sub_cancel]

end A142253

/-! ## A142253.P15655326139901581138

`∏{p}[p?[A190991(n)+A128470(n)+2], #]`
-/

namespace A142253.P15655326139901581138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n + A128470 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142253.P15655326139901581138

namespace A142253

/-- `∏{p}[p?[A190991(n)+A128470(n)+2], #]` -/
def P15655326139901581138.Spec : Prop :=
  ∀ n, (P15655326139901581138.a n : ℤ) = A142253 (n + 1)

end A142253

/-! ## A142253.P9397998611437055210

`A000027(p?[A135631(n)+A017569(n)])`
-/

namespace A142253.P9397998611437055210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135631 n + A017569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142253.P9397998611437055210

namespace A142253

/-- `A000027(p?[A135631(n)+A017569(n)])` -/
def P9397998611437055210.Spec : Prop :=
  ∀ n, P9397998611437055210.a n = A142253 (n + 1)

end A142253

/-! ## A142253.P8787089639340503842

`A000027(p?[A190991(n)+A139222(n+1)])`
-/

namespace A142253.P8787089639340503842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n + A139222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142253.P8787089639340503842

namespace A142253

/-- `A000027(p?[A190991(n)+A139222(n+1)])` -/
def P8787089639340503842.Spec : Prop :=
  ∀ n, P8787089639340503842.a n = A142253 (n + 1)

end A142253

/-! ## A142253.P10202519730016738551

`p?[A135631(n)+A017569(n)]/A020985(n)²`
-/

namespace A142253.P10202519730016738551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135631 n + A017569 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A020985 n ^ 2 : ℚ)

end

end A142253.P10202519730016738551

namespace A142253

/-- `p?[A135631(n)+A017569(n)]/A020985(n)²` -/
def P10202519730016738551.Spec : Prop :=
  ∀ n, P10202519730016738551.a n = (A142253 (n + 1) : ℚ)

end A142253

/-! ## A142253.P12684324672409264641

`record[A020639(43*(n+1)+4)]`
-/

namespace A142253.P12684324672409264641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (43 * (n + 1) + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142253.P12684324672409264641

namespace A142253

/-- `record[A020639(43*(n+1)+4)]` -/
def P12684324672409264641.Spec : Prop :=
  ∀ n, P12684324672409264641.a n = A142253 (n + 1)

end A142253

/-! ## A142253.P12230278676902233606

`record[A006530(A008472(43*(n+1)+4))]`
-/

namespace A142253.P12230278676902233606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008472 (43 * (n + 1) + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142253.P12230278676902233606

namespace A142253

/-- `record[A006530(A008472(43*(n+1)+4))]` -/
def P12230278676902233606.Spec : Prop :=
  ∀ n, P12230278676902233606.a n = A142253 (n + 1)

end A142253

/-! ## A142253.P4708927838161936149

`A007913(p?[A044102(n)+A017029(n)])`
-/

namespace A142253.P4708927838161936149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 n + A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142253.P4708927838161936149

namespace A142253

/-- `A007913(p?[A044102(n)+A017029(n)])` -/
def P4708927838161936149.Spec : Prop :=
  ∀ n, P4708927838161936149.a n = A142253 (n + 1)

end A142253

/-! ## A142253.P10895683614563022344

`A007947(p?[A044102(n)+A017029(n)])`
-/

namespace A142253.P10895683614563022344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 n + A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142253.P10895683614563022344

namespace A142253

/-- `A007947(p?[A044102(n)+A017029(n)])` -/
def P10895683614563022344.Spec : Prop :=
  ∀ n, P10895683614563022344.a n = A142253 (n + 1)

end A142253

/-! ## A142253.P13270701422284584850

`A000265(p?[A135631(n)+A017569(n)])`
-/

namespace A142253.P13270701422284584850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135631 n + A017569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142253.P13270701422284584850

namespace A142253

/-- `A000265(p?[A135631(n)+A017569(n)])` -/
def P13270701422284584850.Spec : Prop :=
  ∀ n, P13270701422284584850.a n = A142253 (n + 1)

end A142253

/-! ## A142253.P9418831505808105743

`A001414(p?[A190991(n)+A139222(n+1)])`
-/

namespace A142253.P9418831505808105743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n + A139222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142253.P9418831505808105743

namespace A142253

/-- `A001414(p?[A190991(n)+A139222(n+1)])` -/
def P9418831505808105743.Spec : Prop :=
  ∀ n, P9418831505808105743.a n = A142253 (n + 1)

end A142253

/-! ## A142253.P17701156489880505660

`A007913(p?[A190991(n)+A139222(n+1)])`
-/

namespace A142253.P17701156489880505660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n + A139222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142253.P17701156489880505660

namespace A142253

/-- `A007913(p?[A190991(n)+A139222(n+1)])` -/
def P17701156489880505660.Spec : Prop :=
  ∀ n, P17701156489880505660.a n = A142253 (n + 1)

end A142253

/-!
# A142254: Primes congruent to 5 mod 43.

The programs for A142254, the canonical program `A142254.P17548689956248471436` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142254 has offset 1).

The definition of A142254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1879 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142254.P17548689956248471436

`p?[43*n+5]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142254

/-- `p?[43*n+5]` -/
def P17548689956248471436.Spec : Prop :=
  ∀ n, (P17548689956248471436.a n : ℤ) = A142254 (n + 1)

theorem P17548689956248471436.correct : P17548689956248471436.Spec := by
  intro n
  simp only [A142254, Nat.add_sub_cancel]

end A142254

/-! ## A142254.P10161809049228183659

`∏{d}[p?[a(n-1)+43], #]` with `a(0)=5`
-/

namespace A142254.P10161809049228183659
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f2 =>
  f2 (n - 1) + 43

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A142254.P10161809049228183659

namespace A142254

/-- `∏{d}[p?[a(n-1)+43], #]` -/
def P10161809049228183659.Spec : Prop :=
  ∀ n, (P10161809049228183659.a n : ℤ) = A142254 (n + 1)

end A142254

/-! ## A142254.P17502203161276448935

`or(1, p?[a(n-1)+43])` with `a(0)=6, a(1)=5`
-/

namespace A142254.P17502203161276448935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 5] fun n f1 =>
  f1 (n - 1) + 43

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142254.P17502203161276448935

namespace A142254

/-- `or(1, p?[a(n-1)+43])` -/
def P17502203161276448935.Spec : Prop :=
  ∀ n, (P17502203161276448935.a n : ℤ) = A142254 (n + 1)

end A142254

/-! ## A142254.P1864499782775360084

`A000027(p?[A044102(n)+A017041(n)])`
-/

namespace A142254.P1864499782775360084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 n + A017041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142254.P1864499782775360084

namespace A142254

/-- `A000027(p?[A044102(n)+A017041(n)])` -/
def P1864499782775360084.Spec : Prop :=
  ∀ n, P1864499782775360084.a n = A142254 (n + 1)

end A142254

/-! ## A142254.P17604836884197884591

`A000027(p?[A139609(n)+A017017(n)-7])`
-/

namespace A142254.P17604836884197884591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017017 n - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142254.P17604836884197884591

namespace A142254

/-- `A000027(p?[A139609(n)+A017017(n)-7])` -/
def P17604836884197884591.Spec : Prop :=
  ∀ n, P17604836884197884591.a n = A142254 (n + 1)

end A142254

/-! ## A142254.P11773166314417664981

`p?[A139609(n)+A017017(n)-7]%A242281(n+1)`
-/

namespace A142254.P11773166314417664981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017017 n - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A242281 (n + 1))

end

end A142254.P11773166314417664981

namespace A142254

/-- `p?[A139609(n)+A017017(n)-7]%A242281(n+1)` -/
def P11773166314417664981.Spec : Prop :=
  ∀ n, P11773166314417664981.a n = A142254 (n + 1)

end A142254

/-! ## A142254.P5861932068964541187

`A000265(p?[A174312(n)+A017449(n)])`
-/

namespace A142254.P5861932068964541187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 n + A017449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142254.P5861932068964541187

namespace A142254

/-- `A000265(p?[A174312(n)+A017449(n)])` -/
def P5861932068964541187.Spec : Prop :=
  ∀ n, P5861932068964541187.a n = A142254 (n + 1)

end A142254

/-! ## A142254.P5138795354774149637

`A000265(p?[A317320(n)+A146511(n+1)])`
-/

namespace A142254.P5138795354774149637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317320 n + A146511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142254.P5138795354774149637

namespace A142254

/-- `A000265(p?[A317320(n)+A146511(n+1)])` -/
def P5138795354774149637.Spec : Prop :=
  ∀ n, P5138795354774149637.a n = A142254 (n + 1)

end A142254

/-!
# A142255: Primes congruent to 6 mod 43.

The programs for A142255, the canonical program `A142255.P11477034241356313697` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142255 has offset 1).

The definition of A142255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1852 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142255.P11477034241356313697

`p?[43*n+6]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142255

/-- `p?[43*n+6]` -/
def P11477034241356313697.Spec : Prop :=
  ∀ n, (P11477034241356313697.a n : ℤ) = A142255 (n + 1)

theorem P11477034241356313697.correct : P11477034241356313697.Spec := by
  intro n
  simp only [A142255, Nat.add_sub_cancel]

end A142255

/-! ## A142255.P17705482538231987322

`A000027(p?[a(n-1)+43])` with `a(0)=6`
-/

namespace A142255.P17705482538231987322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) + 43

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142255.P17705482538231987322

namespace A142255

/-- `A000027(p?[a(n-1)+43])` -/
def P17705482538231987322.Spec : Prop :=
  ∀ n, P17705482538231987322.a n = A142255 (n + 1)

end A142255

/-! ## A142255.P40477619772076708

`or(1, p?[A158066(n+1)-A016921(n)])`
-/

namespace A142255.P40477619772076708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - A016921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142255.P40477619772076708

namespace A142255

/-- `or(1, p?[A158066(n+1)-A016921(n)])` -/
def P40477619772076708.Spec : Prop :=
  ∀ n, P40477619772076708.a n = A142255 (n + 1)

end A142255

/-! ## A142255.P15374222364799184489

`A000027(p?[A174312(n)+A017461(n)])`
-/

namespace A142255.P15374222364799184489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 n + A017461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142255.P15374222364799184489

namespace A142255

/-- `A000027(p?[A174312(n)+A017461(n)])` -/
def P15374222364799184489.Spec : Prop :=
  ∀ n, P15374222364799184489.a n = A142255 (n + 1)

end A142255

/-! ## A142255.P13399904621481001255

`A000027(p?[A158066(n+1)-A016921(n)])`
-/

namespace A142255.P13399904621481001255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - A016921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142255.P13399904621481001255

namespace A142255

/-- `A000027(p?[A158066(n+1)-A016921(n)])` -/
def P13399904621481001255.Spec : Prop :=
  ∀ n, P13399904621481001255.a n = A142255 (n + 1)

end A142255

/-! ## A142255.P86188956136730763

`p?[A158066(n+1)-A016921(n)]%A078144(n+1)`
-/

namespace A142255.P86188956136730763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - A016921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A078144 (n + 1))

end

end A142255.P86188956136730763

namespace A142255

/-- `p?[A158066(n+1)-A016921(n)]%A078144(n+1)` -/
def P86188956136730763.Spec : Prop :=
  ∀ n, P86188956136730763.a n = A142255 (n + 1)

end A142255

/-! ## A142255.P4310123605687427680

`A007947(p?[A174312(n)+A017461(n)])`
-/

namespace A142255.P4310123605687427680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 n + A017461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142255.P4310123605687427680

namespace A142255

/-- `A007947(p?[A174312(n)+A017461(n)])` -/
def P4310123605687427680.Spec : Prop :=
  ∀ n, P4310123605687427680.a n = A142255 (n + 1)

end A142255

/-! ## A142255.P2540550239912281424

`A008472(p?[A174312(n)+A017461(n)])`
-/

namespace A142255.P2540550239912281424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 n + A017461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142255.P2540550239912281424

namespace A142255

/-- `A008472(p?[A174312(n)+A017461(n)])` -/
def P2540550239912281424.Spec : Prop :=
  ∀ n, P2540550239912281424.a n = A142255 (n + 1)

end A142255

/-! ## A142255.P7554983307659870999

`A000265(p?[A158066(n+1)-A016921(n)])`
-/

namespace A142255.P7554983307659870999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - A016921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142255.P7554983307659870999

namespace A142255

/-- `A000265(p?[A158066(n+1)-A016921(n)])` -/
def P7554983307659870999.Spec : Prop :=
  ∀ n, P7554983307659870999.a n = A142255 (n + 1)

end A142255

/-! ## A142255.P17458888755649127527

`A007947(p?[A158066(n+1)-A016921(n)])`
-/

namespace A142255.P17458888755649127527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - A016921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142255.P17458888755649127527

namespace A142255

/-- `A007947(p?[A158066(n+1)-A016921(n)])` -/
def P17458888755649127527.Spec : Prop :=
  ∀ n, P17458888755649127527.a n = A142255 (n + 1)

end A142255

/-! ## A142255.P15788299103112992899

`A008472(p?[A158066(n+1)-A016921(n)])`
-/

namespace A142255.P15788299103112992899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158066 (n + 1) - A016921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142255.P15788299103112992899

namespace A142255

/-- `A008472(p?[A158066(n+1)-A016921(n)])` -/
def P15788299103112992899.Spec : Prop :=
  ∀ n, P15788299103112992899.a n = A142255 (n + 1)

end A142255

/-! ## A142255.P7177061747386447876

`A000265(p?[A304839(n+1)-A239129(n+1)])`
-/

namespace A142255.P7177061747386447876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - A239129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142255.P7177061747386447876

namespace A142255

/-- `A000265(p?[A304839(n+1)-A239129(n+1)])` -/
def P7177061747386447876.Spec : Prop :=
  ∀ n, P7177061747386447876.a n = A142255 (n + 1)

end A142255

/-! ## A142255.P1200588984681443233

`A007913(p?[A304839(n+1)-A239129(n+1)])`
-/

namespace A142255.P1200588984681443233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - A239129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142255.P1200588984681443233

namespace A142255

/-- `A007913(p?[A304839(n+1)-A239129(n+1)])` -/
def P1200588984681443233.Spec : Prop :=
  ∀ n, P1200588984681443233.a n = A142255 (n + 1)

end A142255

/-! ## A142255.P15932438154120579343

`A007947(p?[A304839(n+1)-A239129(n+1)])`
-/

namespace A142255.P15932438154120579343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304839 (n + 1) - A239129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142255.P15932438154120579343

namespace A142255

/-- `A007947(p?[A304839(n+1)-A239129(n+1)])` -/
def P15932438154120579343.Spec : Prop :=
  ∀ n, P15932438154120579343.a n = A142255 (n + 1)

end A142255

/-!
# A142256: Primes congruent to 7 mod 43.

The programs for A142256, the canonical program `A142256.P264774125803354404` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142256 has offset 1).

The definition of A142256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1854 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142256.P264774125803354404

`p?[86*n+7]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142256

/-- `p?[86*n+7]` -/
def P264774125803354404.Spec : Prop :=
  ∀ n, (P264774125803354404.a n : ℤ) = A142256 (n + 1)

theorem P264774125803354404.correct : P264774125803354404.Spec := by
  intro n
  simp only [A142256, Nat.add_sub_cancel]

end A142256

/-! ## A142256.P14299117017989303022

`A000027(p?[A139280(n+1)-A016825(n)])`
-/

namespace A142256.P14299117017989303022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139280 (n + 1) - A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142256.P14299117017989303022

namespace A142256

/-- `A000027(p?[A139280(n+1)-A016825(n)])` -/
def P14299117017989303022.Spec : Prop :=
  ∀ n, P14299117017989303022.a n = A142256 (n + 1)

end A142256

/-! ## A142256.P5099614650123393317

`record[A020639(A139607(2*n)+n)]`
-/

namespace A142256.P5099614650123393317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A139607 (2 * n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142256.P5099614650123393317

namespace A142256

/-- `record[A020639(A139607(2*n)+n)]` -/
def P5099614650123393317.Spec : Prop :=
  ∀ n, P5099614650123393317.a n = A142256 (n + 1)

end A142256

/-! ## A142256.P14693074251444929604

`record[A020639(A139610(2*n)-(4*n+3))]`
-/

namespace A142256.P14693074251444929604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A139610 (2 * n) - (4 * n + 3 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142256.P14693074251444929604

namespace A142256

/-- `record[A020639(A139610(2*n)-(4*n+3))]` -/
def P14693074251444929604.Spec : Prop :=
  ∀ n, P14693074251444929604.a n = A142256 (n + 1)

end A142256

/-! ## A142256.P8012295446529839758

`record[A020639(4*A017413(n)-n-1)+1]-1`
-/

namespace A142256.P8012295446529839758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (4 * A017413 n - (n : ℤ) - 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A142256.P8012295446529839758

namespace A142256

/-- `record[A020639(4*A017413(n)-n-1)+1]-1` -/
def P8012295446529839758.Spec : Prop :=
  ∀ n, P8012295446529839758.a n = A142256 (n + 1)

end A142256

/-! ## A142256.P2946477263659885809

`record[A020639(A174312(n)+A017473(n))]`
-/

namespace A142256.P2946477263659885809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A174312 n + A017473 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142256.P2946477263659885809

namespace A142256

/-- `record[A020639(A174312(n)+A017473(n))]` -/
def P2946477263659885809.Spec : Prop :=
  ∀ n, P2946477263659885809.a n = A142256 (n + 1)

end A142256

/-! ## A142256.P1546883152775539543

`record[A020639(A158066(n+1)-A008458(n))]`
-/

namespace A142256.P1546883152775539543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A158066 (n + 1) - A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142256.P1546883152775539543

namespace A142256

/-- `record[A020639(A158066(n+1)-A008458(n))]` -/
def P1546883152775539543.Spec : Prop :=
  ∀ n, P1546883152775539543.a n = A142256 (n + 1)

end A142256

/-! ## A142256.P11779450108554544712

`record[A020639(A139609(n)+A017017(n)-5)]`
-/

namespace A142256.P11779450108554544712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A139609 n + (A017017 n - 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142256.P11779450108554544712

namespace A142256

/-- `record[A020639(A139609(n)+A017017(n)-5)]` -/
def P11779450108554544712.Spec : Prop :=
  ∀ n, P11779450108554544712.a n = A142256 (n + 1)

end A142256

/-!
# A142257: Primes congruent to 8 mod 43.

The programs for A142257, the canonical program `A142257.P7285034262301320012` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142257 has offset 1).

The definition of A142257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1860 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142257.P7285034262301320012

`p?[43*n+8]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142257

/-- `p?[43*n+8]` -/
def P7285034262301320012.Spec : Prop :=
  ∀ n, (P7285034262301320012.a n : ℤ) = A142257 (n + 1)

theorem P7285034262301320012.correct : P7285034262301320012.Spec := by
  intro n
  simp only [A142257, Nat.add_sub_cancel]

end A142257

/-! ## A142257.P9226258472759110322

`A000027(p?[4*A017413(n)-n])`
-/

namespace A142257.P9226258472759110322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A017413 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142257.P9226258472759110322

namespace A142257

/-- `A000027(p?[4*A017413(n)-n])` -/
def P9226258472759110322.Spec : Prop :=
  ∀ n, P9226258472759110322.a n = A142257 (n + 1)

end A142257

/-! ## A142257.P472847858236718768

`p?[4*A017413(n)-n]-A000122(or(2, n))`
-/

namespace A142257.P472847858236718768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A017413 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A000122 (Nat.lor 2 n)

end

end A142257.P472847858236718768

namespace A142257

/-- `p?[4*A017413(n)-n]-A000122(or(2, n))` -/
def P472847858236718768.Spec : Prop :=
  ∀ n, P472847858236718768.a n = A142257 (n + 1)

end A142257

/-! ## A142257.P6388807184568594601

`A000027(p?[A144619(n)+A008606(n)])`
-/

namespace A142257.P6388807184568594601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n + A008606 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142257.P6388807184568594601

namespace A142257

/-- `A000027(p?[A144619(n)+A008606(n)])` -/
def P6388807184568594601.Spec : Prop :=
  ∀ n, P6388807184568594601.a n = A142257 (n + 1)

end A142257

/-! ## A142257.P5994213500079819822

`A000027(p?[A139610(n)-A103517(n)])`
-/

namespace A142257.P5994213500079819822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n - A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142257.P5994213500079819822

namespace A142257

/-- `A000027(p?[A139610(n)-A103517(n)])` -/
def P5994213500079819822.Spec : Prop :=
  ∀ n, P5994213500079819822.a n = A142257 (n + 1)

end A142257

/-! ## A142257.P18064576580372255219

`A000027(p?[A139279(n+1)+A008585(n)])`
-/

namespace A142257.P18064576580372255219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139279 (n + 1) + A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142257.P18064576580372255219

namespace A142257

/-- `A000027(p?[A139279(n+1)+A008585(n)])` -/
def P18064576580372255219.Spec : Prop :=
  ∀ n, P18064576580372255219.a n = A142257 (n + 1)

end A142257

/-! ## A142257.P12180359944892553163

`A007318(A057944(n))*p?[4*A017413(n)-n]`
-/

namespace A142257.P12180359944892553163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A017413 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A057944 n).toNat * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142257.P12180359944892553163

namespace A142257

/-- `A007318(A057944(n))*p?[4*A017413(n)-n]` -/
def P12180359944892553163.Spec : Prop :=
  ∀ n, P12180359944892553163.a n = A142257 (n + 1)

end A142257

/-! ## A142257.P4241372546769253970

`A001414(p?[A161709(n)+A139607(n)])`
-/

namespace A142257.P4241372546769253970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n + A139607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142257.P4241372546769253970

namespace A142257

/-- `A001414(p?[A161709(n)+A139607(n)])` -/
def P4241372546769253970.Spec : Prop :=
  ∀ n, P4241372546769253970.a n = A142257 (n + 1)

end A142257

/-! ## A142257.P8266247186995885208

`A000265(p?[A139610(n)-A103517(n)])`
-/

namespace A142257.P8266247186995885208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n - A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142257.P8266247186995885208

namespace A142257

/-- `A000265(p?[A139610(n)-A103517(n)])` -/
def P8266247186995885208.Spec : Prop :=
  ∀ n, P8266247186995885208.a n = A142257 (n + 1)

end A142257

/-! ## A142257.P17561240611433690779

`A000265(p?[A139279(n+1)+A008585(n)])`
-/

namespace A142257.P17561240611433690779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139279 (n + 1) + A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142257.P17561240611433690779

namespace A142257

/-- `A000265(p?[A139279(n+1)+A008585(n)])` -/
def P17561240611433690779.Spec : Prop :=
  ∀ n, P17561240611433690779.a n = A142257 (n + 1)

end A142257

/-! ## A142257.P10633604127635684574

`A007913(p?[A139279(n+1)+A008585(n)])`
-/

namespace A142257.P10633604127635684574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139279 (n + 1) + A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142257.P10633604127635684574

namespace A142257

/-- `A007913(p?[A139279(n+1)+A008585(n)])` -/
def P10633604127635684574.Spec : Prop :=
  ∀ n, P10633604127635684574.a n = A142257 (n + 1)

end A142257

/-!
# A142258: Primes congruent to 9 mod 43.

The programs for A142258, the canonical program `A142258.P8628573051359229233` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142258 has offset 1).

The definition of A142258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1841 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142258.P8628573051359229233

`p?[43*n+9]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142258

/-- `p?[43*n+9]` -/
def P8628573051359229233.Spec : Prop :=
  ∀ n, (P8628573051359229233.a n : ℤ) = A142258 (n + 1)

theorem P8628573051359229233.correct : P8628573051359229233.Spec := by
  intro n
  simp only [A142258, Nat.add_sub_cancel]

end A142258

/-! ## A142258.P205509926939584504

`A000027(p?[A174312(n)+A017497(n)])`
-/

namespace A142258.P205509926939584504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 n + A017497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142258.P205509926939584504

namespace A142258

/-- `A000027(p?[A174312(n)+A017497(n)])` -/
def P205509926939584504.Spec : Prop :=
  ∀ n, P205509926939584504.a n = A142258 (n + 1)

end A142258

/-! ## A142258.P1075742621883939934

`A000027(p?[A144619(n)+A103214(n)])`
-/

namespace A142258.P1075742621883939934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n + A103214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142258.P1075742621883939934

namespace A142258

/-- `A000027(p?[A144619(n)+A103214(n)])` -/
def P1075742621883939934.Spec : Prop :=
  ∀ n, P1075742621883939934.a n = A142258 (n + 1)

end A142258

/-! ## A142258.P15416276611228040622

`A000027(p?[A139610(n)-A005408(n)])`
-/

namespace A142258.P15416276611228040622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142258.P15416276611228040622

namespace A142258

/-- `A000027(p?[A139610(n)-A005408(n)])` -/
def P15416276611228040622.Spec : Prop :=
  ∀ n, P15416276611228040622.a n = A142258 (n + 1)

end A142258

/-! ## A142258.P14982094806549781097

`p?[A139610(n)-A005408(n)]%A017150(n)²`
-/

namespace A142258.P14982094806549781097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017150 n ^ 2)

end

end A142258.P14982094806549781097

namespace A142258

/-- `p?[A139610(n)-A005408(n)]%A017150(n)²` -/
def P14982094806549781097.Spec : Prop :=
  ∀ n, P14982094806549781097.a n = A142258 (n + 1)

end A142258

/-! ## A142258.P17112733660711514986

`p?[A139610(n)-A005408(n)]+A052928(n)%2`
-/

namespace A142258.P17112733660711514986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A052928 n) 2

end

end A142258.P17112733660711514986

namespace A142258

/-- `p?[A139610(n)-A005408(n)]+A052928(n)%2` -/
def P17112733660711514986.Spec : Prop :=
  ∀ n, P17112733660711514986.a n = A142258 (n + 1)

end A142258

/-! ## A142258.P14657850918627482014

`p?[A139610(n)-A005408(n)]-n*A000007(n)`
-/

namespace A142258.P14657850918627482014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n : ℤ) * A000007 n

end

end A142258.P14657850918627482014

namespace A142258

/-- `p?[A139610(n)-A005408(n)]-n*A000007(n)` -/
def P14657850918627482014.Spec : Prop :=
  ∀ n, P14657850918627482014.a n = A142258 (n + 1)

end A142258

/-! ## A142258.P17592970558369692836

`p?[A139610(n)-A005408(n)]/A004273(n+1)%2`
-/

namespace A142258.P17592970558369692836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n - A005408 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Int.tmod (A004273 (n + 1)) 2 : ℚ)

end

end A142258.P17592970558369692836

namespace A142258

/-- `p?[A139610(n)-A005408(n)]/A004273(n+1)%2` -/
def P17592970558369692836.Spec : Prop :=
  ∀ n, P17592970558369692836.a n = (A142258 (n + 1) : ℚ)

end A142258

/-! ## A142258.P16603708579701983141

`A000265(p?[A144619(n)+A103214(n)])`
-/

namespace A142258.P16603708579701983141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144619 n + A103214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142258.P16603708579701983141

namespace A142258

/-- `A000265(p?[A144619(n)+A103214(n)])` -/
def P16603708579701983141.Spec : Prop :=
  ∀ n, P16603708579701983141.a n = A142258 (n + 1)

end A142258

/-! ## A142258.P7461867937375916439

`A007913(p?[A139610(n)-A005408(n)])`
-/

namespace A142258.P7461867937375916439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142258.P7461867937375916439

namespace A142258

/-- `A007913(p?[A139610(n)-A005408(n)])` -/
def P7461867937375916439.Spec : Prop :=
  ∀ n, P7461867937375916439.a n = A142258 (n + 1)

end A142258

/-! ## A142258.P1702015784028166251

`A007947(p?[A139610(n)-A005408(n)])`
-/

namespace A142258.P1702015784028166251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142258.P1702015784028166251

namespace A142258

/-- `A007947(p?[A139610(n)-A005408(n)])` -/
def P1702015784028166251.Spec : Prop :=
  ∀ n, P1702015784028166251.a n = A142258 (n + 1)

end A142258

/-! ## A142258.P7849853384178132957

`A008472(p?[A139610(n)-A005408(n)])`
-/

namespace A142258.P7849853384178132957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142258.P7849853384178132957

namespace A142258

/-- `A008472(p?[A139610(n)-A005408(n)])` -/
def P7849853384178132957.Spec : Prop :=
  ∀ n, P7849853384178132957.a n = A142258 (n + 1)

end A142258

/-! ## A142258.P10975024226015286523

`A000265(p?[A164284(n+1)+A161714(n)])`
-/

namespace A142258.P10975024226015286523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164284 (n + 1) + A161714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142258.P10975024226015286523

namespace A142258

/-- `A000265(p?[A164284(n+1)+A161714(n)])` -/
def P10975024226015286523.Spec : Prop :=
  ∀ n, P10975024226015286523.a n = A142258 (n + 1)

end A142258

/-! ## A142258.P15144112250980671351

`A007947(p?[A139280(n+1)-A008574(n)])`
-/

namespace A142258.P15144112250980671351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139280 (n + 1) - A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142258.P15144112250980671351

namespace A142258

/-- `A007947(p?[A139280(n+1)-A008574(n)])` -/
def P15144112250980671351.Spec : Prop :=
  ∀ n, P15144112250980671351.a n = A142258 (n + 1)

end A142258

/-!
# A142259: Primes congruent to 10 mod 43.

The programs for A142259, the canonical program `A142259.P284695560425584678` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142259 has offset 1).

The definition of A142259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1856 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142259.P284695560425584678

`p?[43*n+10]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142259

/-- `p?[43*n+10]` -/
def P284695560425584678.Spec : Prop :=
  ∀ n, (P284695560425584678.a n : ℤ) = A142259 (n + 1)

theorem P284695560425584678.correct : P284695560425584678.Spec := by
  intro n
  simp only [A142259, Nat.add_sub_cancel]

end A142259

/-! ## A142259.P2454499767841806745

`A000027(p?[A139610(n)-2*n])`
-/

namespace A142259.P2454499767841806745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142259.P2454499767841806745

namespace A142259

/-- `A000027(p?[A139610(n)-2*n])` -/
def P2454499767841806745.Spec : Prop :=
  ∀ n, P2454499767841806745.a n = A142259 (n + 1)

end A142259

/-! ## A142259.P16543608123700648777

`p?[A139610(n)-A005843(n)]%A097219(n+1)`
-/

namespace A142259.P16543608123700648777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n - A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A097219 (n + 1))

end

end A142259.P16543608123700648777

namespace A142259

/-- `p?[A139610(n)-A005843(n)]%A097219(n+1)` -/
def P16543608123700648777.Spec : Prop :=
  ∀ n, P16543608123700648777.a n = A142259 (n + 1)

end A142259

/-! ## A142259.P14941373981395143022

`p?[A139610(n)-A005843(n)]-n*A000038(n)`
-/

namespace A142259.P14941373981395143022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n - A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n : ℤ) * A000038 n

end

end A142259.P14941373981395143022

namespace A142259

/-- `p?[A139610(n)-A005843(n)]-n*A000038(n)` -/
def P14941373981395143022.Spec : Prop :=
  ∀ n, P14941373981395143022.a n = A142259 (n + 1)

end A142259

/-! ## A142259.P3365574422201418519

`record[A020639(43*(n+1)+10)]`
-/

namespace A142259.P3365574422201418519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (43 * (n + 1) + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142259.P3365574422201418519

namespace A142259

/-- `record[A020639(43*(n+1)+10)]` -/
def P3365574422201418519.Spec : Prop :=
  ∀ n, P3365574422201418519.a n = A142259 (n + 1)

end A142259

/-! ## A142259.P8820488117670882903

`∑{d}[p?[A139610(n)-2*n], A000010(#)]`
-/

namespace A142259.P8820488117670882903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n - (2 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A142259.P8820488117670882903

namespace A142259

/-- `∑{d}[p?[A139610(n)-2*n], A000010(#)]` -/
def P8820488117670882903.Spec : Prop :=
  ∀ n, P8820488117670882903.a n = A142259 (n + 1)

end A142259

/-! ## A142259.P3776123204793006898

`A000265(p?[A139610(n)-A005843(n)])`
-/

namespace A142259.P3776123204793006898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139610 n - A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142259.P3776123204793006898

namespace A142259

/-- `A000265(p?[A139610(n)-A005843(n)])` -/
def P3776123204793006898.Spec : Prop :=
  ∀ n, P3776123204793006898.a n = A142259 (n + 1)

end A142259

/-!
# A142260: Primes congruent to 11 mod 43.

The programs for A142260, the canonical program `A142260.P3237445093896128342` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142260 has offset 1).

The definition of A142260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1855 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142260.P3237445093896128342

`p?[11+43*n]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142260

/-- `p?[11+43*n]` -/
def P3237445093896128342.Spec : Prop :=
  ∀ n, (P3237445093896128342.a n : ℤ) = A142260 (n + 1)

theorem P3237445093896128342.correct : P3237445093896128342.Spec := by
  intro n
  simp only [A142260, Nat.add_sub_cancel]

end A142260

/-! ## A142260.P16302200522558971168

`∏{d}[p?[a(n-1)+43], #]` with `a(0)=11`
-/

namespace A142260.P16302200522558971168
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [11] fun n f2 =>
  f2 (n - 1) + 43

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A142260.P16302200522558971168

namespace A142260

/-- `∏{d}[p?[a(n-1)+43], #]` -/
def P16302200522558971168.Spec : Prop :=
  ∀ n, (P16302200522558971168.a n : ℤ) = A142260 (n + 1)

end A142260

/-! ## A142260.P12490685941063713402

`A000027(p?[A304205(n+1)-A091998(n+1)])`
-/

namespace A142260.P12490685941063713402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - A091998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142260.P12490685941063713402

namespace A142260

/-- `A000027(p?[A304205(n+1)-A091998(n+1)])` -/
def P12490685941063713402.Spec : Prop :=
  ∀ n, P12490685941063713402.a n = A142260 (n + 1)

end A142260

/-! ## A142260.P12397907528704119551

`record[A020639(43*n+11)]`
-/

namespace A142260.P12397907528704119551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (43 * n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142260.P12397907528704119551

namespace A142260

/-- `record[A020639(43*n+11)]` -/
def P12397907528704119551.Spec : Prop :=
  ∀ n, P12397907528704119551.a n = A142260 (n + 1)

end A142260

/-! ## A142260.P4447339677052518517

`record[A006530(A139611(n)+A135631(n))]`
-/

namespace A142260.P4447339677052518517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A139611 n + A135631 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142260.P4447339677052518517

namespace A142260

/-- `record[A006530(A139611(n)+A135631(n))]` -/
def P4447339677052518517.Spec : Prop :=
  ∀ n, P4447339677052518517.a n = A142260 (n + 1)

end A142260

/-! ## A142260.P14692101565640781654

`A000265(p?[A135631(n)+A017653(n)])`
-/

namespace A142260.P14692101565640781654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135631 n + A017653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142260.P14692101565640781654

namespace A142260

/-- `A000265(p?[A135631(n)+A017653(n)])` -/
def P14692101565640781654.Spec : Prop :=
  ∀ n, P14692101565640781654.a n = A142260 (n + 1)

end A142260

/-! ## A142260.P3024363301700983330

`A008472(p?[A135631(n)+A017653(n)])`
-/

namespace A142260.P3024363301700983330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135631 n + A017653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142260.P3024363301700983330

namespace A142260

/-- `A008472(p?[A135631(n)+A017653(n)])` -/
def P3024363301700983330.Spec : Prop :=
  ∀ n, P3024363301700983330.a n = A142260 (n + 1)

end A142260

/-!
# A142261: Primes congruent to 12 mod 43.

The programs for A142261, the canonical program `A142261.P2629177648987338839` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142261 has offset 1).

The definition of A142261 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1873 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142261.P2629177648987338839

`p?[43*n+12]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142261

/-- `p?[43*n+12]` -/
def P2629177648987338839.Spec : Prop :=
  ∀ n, (P2629177648987338839.a n : ℤ) = A142261 (n + 1)

theorem P2629177648987338839.correct : P2629177648987338839.Spec := by
  intro n
  simp only [A142261, Nat.add_sub_cancel]

end A142261

/-! ## A142261.P4176881470464686896

`A000027(p?[A141694(n)+A008603(n)])`
-/

namespace A142261.P4176881470464686896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141694 n + A008603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142261.P4176881470464686896

namespace A142261

/-- `A000027(p?[A141694(n)+A008603(n)])` -/
def P4176881470464686896.Spec : Prop :=
  ∀ n, P4176881470464686896.a n = A142261 (n + 1)

end A142261

/-! ## A142261.P14955542233283943349

`A000027(p?[A139609(n)+A017017(n)])`
-/

namespace A142261.P14955542233283943349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142261.P14955542233283943349

namespace A142261

/-- `A000027(p?[A139609(n)+A017017(n)])` -/
def P14955542233283943349.Spec : Prop :=
  ∀ n, P14955542233283943349.a n = A142261 (n + 1)

end A142261

/-! ## A142261.P5653683771034678242

`p?[A139609(n)+A017017(n)]+A000038(n)%2`
-/

namespace A142261.P5653683771034678242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A000038 n) 2

end

end A142261.P5653683771034678242

namespace A142261

/-- `p?[A139609(n)+A017017(n)]+A000038(n)%2` -/
def P5653683771034678242.Spec : Prop :=
  ∀ n, P5653683771034678242.a n = A142261 (n + 1)

end A142261

/-! ## A142261.P12724924477774262743

`p?[A139609(n)+A017017(n)]+A008594(n)%2`
-/

namespace A142261.P12724924477774262743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A008594 n) 2

end

end A142261.P12724924477774262743

namespace A142261

/-- `p?[A139609(n)+A017017(n)]+A008594(n)%2` -/
def P12724924477774262743.Spec : Prop :=
  ∀ n, P12724924477774262743.a n = A142261 (n + 1)

end A142261

/-! ## A142261.P2269460100391674643

`A000265(p?[A139609(n)+A017017(n)])`
-/

namespace A142261.P2269460100391674643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142261.P2269460100391674643

namespace A142261

/-- `A000265(p?[A139609(n)+A017017(n)])` -/
def P2269460100391674643.Spec : Prop :=
  ∀ n, P2269460100391674643.a n = A142261 (n + 1)

end A142261

/-! ## A142261.P2133961852012147302

`A007913(p?[A139609(n)+A017017(n)])`
-/

namespace A142261.P2133961852012147302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142261.P2133961852012147302

namespace A142261

/-- `A007913(p?[A139609(n)+A017017(n)])` -/
def P2133961852012147302.Spec : Prop :=
  ∀ n, P2133961852012147302.a n = A142261 (n + 1)

end A142261

/-! ## A142261.P11635927951950000184

`A007947(p?[A139609(n)+A017017(n)])`
-/

namespace A142261.P11635927951950000184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142261.P11635927951950000184

namespace A142261

/-- `A007947(p?[A139609(n)+A017017(n)])` -/
def P11635927951950000184.Spec : Prop :=
  ∀ n, P11635927951950000184.a n = A142261 (n + 1)

end A142261

/-! ## A142261.P18382763356096785379

`A052410(p?[A139609(n)+A017017(n)])`
-/

namespace A142261.P18382763356096785379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142261.P18382763356096785379

namespace A142261

/-- `A052410(p?[A139609(n)+A017017(n)])` -/
def P18382763356096785379.Spec : Prop :=
  ∀ n, P18382763356096785379.a n = A142261 (n + 1)

end A142261

/-! ## A142261.P14677825040894102136

`A007913(p?[A304205(n+1)-A008588(n)])`
-/

namespace A142261.P14677825040894102136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304205 (n + 1) - A008588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142261.P14677825040894102136

namespace A142261

/-- `A007913(p?[A304205(n+1)-A008588(n)])` -/
def P14677825040894102136.Spec : Prop :=
  ∀ n, P14677825040894102136.a n = A142261 (n + 1)

end A142261

/-!
# A142262: Primes congruent to 13 mod 43.

The programs for A142262, the canonical program `A142262.P16814993807808196780` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142262 has offset 1).

The definition of A142262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1889 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142262.P16814993807808196780

`p?[43*n+13]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142262

/-- `p?[43*n+13]` -/
def P16814993807808196780.Spec : Prop :=
  ∀ n, (P16814993807808196780.a n : ℤ) = A142262 (n + 1)

theorem P16814993807808196780.correct : P16814993807808196780.Spec := by
  intro n
  simp only [A142262, Nat.add_sub_cancel]

end A142262

/-! ## A142262.P6440326356837057815

`A000027(p?[A139609(n)+A017029(n)])`
-/

namespace A142262.P6440326356837057815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142262.P6440326356837057815

namespace A142262

/-- `A000027(p?[A139609(n)+A017029(n)])` -/
def P6440326356837057815.Spec : Prop :=
  ∀ n, P6440326356837057815.a n = A142262 (n + 1)

end A142262

/-! ## A142262.P14271634026584358701

`A000007(n+1)+p?[A139609(n)+A017029(n)]`
-/

namespace A142262.P14271634026584358701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142262.P14271634026584358701

namespace A142262

/-- `A000007(n+1)+p?[A139609(n)+A017029(n)]` -/
def P14271634026584358701.Spec : Prop :=
  ∀ n, P14271634026584358701.a n = A142262 (n + 1)

end A142262

/-! ## A142262.P15669212345992834674

`record[A020639(43*(n+1)-30)]`
-/

namespace A142262.P15669212345992834674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (43 * (n + 1) - 30)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142262.P15669212345992834674

namespace A142262

/-- `record[A020639(43*(n+1)-30)]` -/
def P15669212345992834674.Spec : Prop :=
  ∀ n, P15669212345992834674.a n = A142262 (n + 1)

end A142262

/-! ## A142262.P9743375679023435312

`A000265(p?[A139609(n)+A017029(n)])`
-/

namespace A142262.P9743375679023435312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142262.P9743375679023435312

namespace A142262

/-- `A000265(p?[A139609(n)+A017029(n)])` -/
def P9743375679023435312.Spec : Prop :=
  ∀ n, P9743375679023435312.a n = A142262 (n + 1)

end A142262

/-!
# A142263: Primes congruent to 14 mod 43.

The programs for A142263, the canonical program `A142263.P6519544910726459908` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142263 has offset 1).

The definition of A142263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1879 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142263.P6519544910726459908

`p?[43*n+14]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142263

/-- `p?[43*n+14]` -/
def P6519544910726459908.Spec : Prop :=
  ∀ n, (P6519544910726459908.a n : ℤ) = A142263 (n + 1)

theorem P6519544910726459908.correct : P6519544910726459908.Spec := by
  intro n
  simp only [A142263, Nat.add_sub_cancel]

end A142263

/-! ## A142263.P2400662586694214612

`or(1, p?[A139608(n)+A139606(n)])`
-/

namespace A142263.P2400662586694214612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139608 n + A139606 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142263.P2400662586694214612

namespace A142263

/-- `or(1, p?[A139608(n)+A139606(n)])` -/
def P2400662586694214612.Spec : Prop :=
  ∀ n, P2400662586694214612.a n = A142263 (n + 1)

end A142263

/-! ## A142263.P3658736196916248839

`∏{p}[p?[A139609(n)+A017041(n)], #]`
-/

namespace A142263.P3658736196916248839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017041 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142263.P3658736196916248839

namespace A142263

/-- `∏{p}[p?[A139609(n)+A017041(n)], #]` -/
def P3658736196916248839.Spec : Prop :=
  ∀ n, (P3658736196916248839.a n : ℤ) = A142263 (n + 1)

end A142263

/-! ## A142263.P10893081348495848376

`A000027(p?[A190991(n)+A082369(n+1)])`
-/

namespace A142263.P10893081348495848376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n + A082369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142263.P10893081348495848376

namespace A142263

/-- `A000027(p?[A190991(n)+A082369(n+1)])` -/
def P10893081348495848376.Spec : Prop :=
  ∀ n, P10893081348495848376.a n = A142263 (n + 1)

end A142263

/-! ## A142263.P12955523585145459811

`p?[A139609(n)+A017041(n)]%A016900(n)`
-/

namespace A142263.P12955523585145459811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A016900 n)

end

end A142263.P12955523585145459811

namespace A142263

/-- `p?[A139609(n)+A017041(n)]%A016900(n)` -/
def P12955523585145459811.Spec : Prop :=
  ∀ n, P12955523585145459811.a n = A142263 (n + 1)

end A142263

/-! ## A142263.P7359422626707960312

`p?[A139609(n)+A017041(n)]+A061990(n)%2`
-/

namespace A142263.P7359422626707960312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A061990 n) 2

end

end A142263.P7359422626707960312

namespace A142263

/-- `p?[A139609(n)+A017041(n)]+A061990(n)%2` -/
def P7359422626707960312.Spec : Prop :=
  ∀ n, P7359422626707960312.a n = A142263 (n + 1)

end A142263

/-! ## A142263.P1559096871878345581

`p?[A139608(n)+A139606(n)]%A002620(n+9)²`
-/

namespace A142263.P1559096871878345581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139608 n + A139606 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A002620 (n + 9) ^ 2)

end

end A142263.P1559096871878345581

namespace A142263

/-- `p?[A139608(n)+A139606(n)]%A002620(n+9)²` -/
def P1559096871878345581.Spec : Prop :=
  ∀ n, P1559096871878345581.a n = A142263 (n + 1)

end A142263

/-! ## A142263.P6474694299675411046

`p?[A139609(n)+A017041(n)]/A000265(n+1)%2`
-/

namespace A142263.P6474694299675411046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017041 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Int.tmod (A000265 (n + 1)) 2 : ℚ)

end

end A142263.P6474694299675411046

namespace A142263

/-- `p?[A139609(n)+A017041(n)]/A000265(n+1)%2` -/
def P6474694299675411046.Spec : Prop :=
  ∀ n, P6474694299675411046.a n = (A142263 (n + 1) : ℚ)

end A142263

/-! ## A142263.P9049814729128888930

`p?[A139609(n)+A017041(n)]+A131738(n)%(n+1)`
-/

namespace A142263.P9049814729128888930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A131738 n) (n + 1 : ℤ)

end

end A142263.P9049814729128888930

namespace A142263

/-- `p?[A139609(n)+A017041(n)]+A131738(n)%(n+1)` -/
def P9049814729128888930.Spec : Prop :=
  ∀ n, P9049814729128888930.a n = A142263 (n + 1)

end A142263

/-! ## A142263.P8548940396451879287

`A052410(p?[A139609(n)+A017041(n)])`
-/

namespace A142263.P8548940396451879287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142263.P8548940396451879287

namespace A142263

/-- `A052410(p?[A139609(n)+A017041(n)])` -/
def P8548940396451879287.Spec : Prop :=
  ∀ n, P8548940396451879287.a n = A142263 (n + 1)

end A142263

/-! ## A142263.P14610958445549147811

`A276689(n²)+p?[A139609(n)+A017041(n)]`
-/

namespace A142263.P14610958445549147811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139609 n + A017041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276689 (n ^ 2) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142263.P14610958445549147811

namespace A142263

/-- `A276689(n²)+p?[A139609(n)+A017041(n)]` -/
def P14610958445549147811.Spec : Prop :=
  ∀ n, P14610958445549147811.a n = A142263 (n + 1)

end A142263

/-!
# A142264: Primes congruent to 15 mod 43.

The programs for A142264, the canonical program `A142264.P15507071663444307816` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142264 has offset 1).

The definition of A142264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1857 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142264.P15507071663444307816

`p?[43*n+15]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142264

/-- `p?[43*n+15]` -/
def P15507071663444307816.Spec : Prop :=
  ∀ n, (P15507071663444307816.a n : ℤ) = A142264 (n + 1)

theorem P15507071663444307816.correct : P15507071663444307816.Spec := by
  intro n
  simp only [A142264, Nat.add_sub_cancel]

end A142264

/-! ## A142264.P3439973279135279544

`p?[A139613(n)+A017089(n)]/A106400(n)²`
-/

namespace A142264.P3439973279135279544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139613 n + A017089 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A106400 n ^ 2 : ℚ)

end

end A142264.P3439973279135279544

namespace A142264

/-- `p?[A139613(n)+A017089(n)]/A106400(n)²` -/
def P3439973279135279544.Spec : Prop :=
  ∀ n, P3439973279135279544.a n = (A142264 (n + 1) : ℚ)

end A142264

/-! ## A142264.P12035657799711121364

`p?[A139613(n)+A017089(n)]%A017126(n)²`
-/

namespace A142264.P12035657799711121364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139613 n + A017089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017126 n ^ 2)

end

end A142264.P12035657799711121364

namespace A142264

/-- `p?[A139613(n)+A017089(n)]%A017126(n)²` -/
def P12035657799711121364.Spec : Prop :=
  ∀ n, P12035657799711121364.a n = A142264 (n + 1)

end A142264

/-! ## A142264.P15997484681432712863

`A000007(n+1)+p?[A139613(n)+A017089(n)]`
-/

namespace A142264.P15997484681432712863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139613 n + A017089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142264.P15997484681432712863

namespace A142264

/-- `A000007(n+1)+p?[A139613(n)+A017089(n)]` -/
def P15997484681432712863.Spec : Prop :=
  ∀ n, P15997484681432712863.a n = A142264 (n + 1)

end A142264

/-! ## A142264.P4474424526060348553

`p?[A139613(n)+A017089(n)]+2%A014709(n)`
-/

namespace A142264.P4474424526060348553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139613 n + A017089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod 2 (A014709 n)

end

end A142264.P4474424526060348553

namespace A142264

/-- `p?[A139613(n)+A017089(n)]+2%A014709(n)` -/
def P4474424526060348553.Spec : Prop :=
  ∀ n, P4474424526060348553.a n = A142264 (n + 1)

end A142264

/-! ## A142264.P2723781104401697888

`p?[A139613(n)+A017089(n)]+A339483(n)%3`
-/

namespace A142264.P2723781104401697888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139613 n + A017089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A339483 n) 3

end

end A142264.P2723781104401697888

namespace A142264

/-- `p?[A139613(n)+A017089(n)]+A339483(n)%3` -/
def P2723781104401697888.Spec : Prop :=
  ∀ n, P2723781104401697888.a n = A142264 (n + 1)

end A142264

/-! ## A142264.P9498184226331004828

`A001489(n)+p?[A139613(n)+A017089(n)]+n`
-/

namespace A142264.P9498184226331004828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139613 n + A017089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n : ℤ))

end

end A142264.P9498184226331004828

namespace A142264

/-- `A001489(n)+p?[A139613(n)+A017089(n)]+n` -/
def P9498184226331004828.Spec : Prop :=
  ∀ n, P9498184226331004828.a n = A142264 (n + 1)

end A142264

/-! ## A142264.P7650593210630683808

`p?[A139613(n)+A017089(n)]/A165471(n+1)²`
-/

namespace A142264.P7650593210630683808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139613 n + A017089 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A165471 (n + 1) ^ 2 : ℚ)

end

end A142264.P7650593210630683808

namespace A142264

/-- `p?[A139613(n)+A017089(n)]/A165471(n+1)²` -/
def P7650593210630683808.Spec : Prop :=
  ∀ n, P7650593210630683808.a n = (A142264 (n + 1) : ℚ)

end A142264

/-! ## A142264.P7200680324200442647

`A000027(p?[A139613(n)+A017089(n)])`
-/

namespace A142264.P7200680324200442647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139613 n + A017089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142264.P7200680324200442647

namespace A142264

/-- `A000027(p?[A139613(n)+A017089(n)])` -/
def P7200680324200442647.Spec : Prop :=
  ∀ n, P7200680324200442647.a n = A142264 (n + 1)

end A142264

/-! ## A142264.P4673818405237180093

`A000027(p?[A154267(n)+A008598(n)])`
-/

namespace A142264.P4673818405237180093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n + A008598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142264.P4673818405237180093

namespace A142264

/-- `A000027(p?[A154267(n)+A008598(n)])` -/
def P4673818405237180093.Spec : Prop :=
  ∀ n, P4673818405237180093.a n = A142264 (n + 1)

end A142264

/-! ## A142264.P14033324962283541818

`A000265(p?[A139613(n)+A017089(n)])`
-/

namespace A142264.P14033324962283541818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139613 n + A017089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142264.P14033324962283541818

namespace A142264

/-- `A000265(p?[A139613(n)+A017089(n)])` -/
def P14033324962283541818.Spec : Prop :=
  ∀ n, P14033324962283541818.a n = A142264 (n + 1)

end A142264

/-! ## A142264.P17194163083471672144

`A007947(p?[A139613(n)+A017089(n)])`
-/

namespace A142264.P17194163083471672144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139613 n + A017089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142264.P17194163083471672144

namespace A142264

/-- `A007947(p?[A139613(n)+A017089(n)])` -/
def P17194163083471672144.Spec : Prop :=
  ∀ n, P17194163083471672144.a n = A142264 (n + 1)

end A142264

/-! ## A142264.P17320926019718630453

`A008472(p?[A139613(n)+A017089(n)])`
-/

namespace A142264.P17320926019718630453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139613 n + A017089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142264.P17320926019718630453

namespace A142264

/-- `A008472(p?[A139613(n)+A017089(n)])` -/
def P17320926019718630453.Spec : Prop :=
  ∀ n, P17320926019718630453.a n = A142264 (n + 1)

end A142264

/-! ## A142264.P13004875157353083230

`A008475(p?[A139613(n)+A017089(n)])`
-/

namespace A142264.P13004875157353083230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139613 n + A017089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142264.P13004875157353083230

namespace A142264

/-- `A008475(p?[A139613(n)+A017089(n)])` -/
def P13004875157353083230.Spec : Prop :=
  ∀ n, P13004875157353083230.a n = A142264 (n + 1)

end A142264

/-! ## A142264.P1975554283792460168

`record[A006530(A158128(n+1)-A008596(n))]`
-/

namespace A142264.P1975554283792460168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A158128 (n + 1) - A008596 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142264.P1975554283792460168

namespace A142264

/-- `record[A006530(A158128(n+1)-A008596(n))]` -/
def P1975554283792460168.Spec : Prop :=
  ∀ n, P1975554283792460168.a n = A142264 (n + 1)

end A142264

/-! ## A142264.P1725778142534963960

`record[A006530(A119413(5*n+6)+A007310(2*(n+3)))]`
-/

namespace A142264.P1725778142534963960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A119413 (5 * n + 6) + A007310 (2 * (n + 3))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142264.P1725778142534963960

namespace A142264

/-- `record[A006530(A119413(5*n+6)+A007310(2*(n+3)))]` -/
def P1725778142534963960.Spec : Prop :=
  ∀ n, P1725778142534963960.a n = A142264 (n + 1)

end A142264

/-! ## A142264.P11542568169243295370

`A318456(p?[A154267(n)+A008598(n)])`
-/

namespace A142264.P11542568169243295370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n + A008598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318456 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142264.P11542568169243295370

namespace A142264

/-- `A318456(p?[A154267(n)+A008598(n)])` -/
def P11542568169243295370.Spec : Prop :=
  ∀ n, P11542568169243295370.a n = A142264 (n + 1)

end A142264

/-!
# A142265: Primes congruent to 16 mod 43.

The programs for A142265, the canonical program `A142265.P12741568292378737804` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142265 has offset 1).

The definition of A142265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1839 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142265.P12741568292378737804

`p?[43*n+16]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142265

/-- `p?[43*n+16]` -/
def P12741568292378737804.Spec : Prop :=
  ∀ n, (P12741568292378737804.a n : ℤ) = A142265 (n + 1)

theorem P12741568292378737804.correct : P12741568292378737804.Spec := by
  intro n
  simp only [A142265, Nat.add_sub_cancel]

end A142265

/-! ## A142265.P11507853029840294951

`or(1, p?[A158057(n)+A154267(n)])`
-/

namespace A142265.P11507853029840294951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n + A154267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142265.P11507853029840294951

namespace A142265

/-- `or(1, p?[A158057(n)+A154267(n)])` -/
def P11507853029840294951.Spec : Prop :=
  ∀ n, P11507853029840294951.a n = A142265 (n + 1)

end A142265

/-! ## A142265.P17317728612598671477

`A000027(p?[A158057(n)+A154267(n)])`
-/

namespace A142265.P17317728612598671477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n + A154267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142265.P17317728612598671477

namespace A142265

/-- `A000027(p?[A158057(n)+A154267(n)])` -/
def P17317728612598671477.Spec : Prop :=
  ∀ n, P17317728612598671477.a n = A142265 (n + 1)

end A142265

/-! ## A142265.P15030886159572558130

`p?[A158057(n)+A154267(n)]%A017056(n)`
-/

namespace A142265.P15030886159572558130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n + A154267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017056 n)

end

end A142265.P15030886159572558130

namespace A142265

/-- `p?[A158057(n)+A154267(n)]%A017056(n)` -/
def P15030886159572558130.Spec : Prop :=
  ∀ n, P15030886159572558130.a n = A142265 (n + 1)

end A142265

/-! ## A142265.P8211287075782190684

`A000038(n+1)+p?[A158057(n)+A154267(n)]`
-/

namespace A142265.P8211287075782190684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n + A154267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142265.P8211287075782190684

namespace A142265

/-- `A000038(n+1)+p?[A158057(n)+A154267(n)]` -/
def P8211287075782190684.Spec : Prop :=
  ∀ n, P8211287075782190684.a n = A142265 (n + 1)

end A142265

/-! ## A142265.P4569190328982901055

`record[A006530(A156796(n+1)+5*n)]`
-/

namespace A142265.P4569190328982901055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A156796 (n + 1) + (5 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142265.P4569190328982901055

namespace A142265

/-- `record[A006530(A156796(n+1)+5*n)]` -/
def P4569190328982901055.Spec : Prop :=
  ∀ n, P4569190328982901055.a n = A142265 (n + 1)

end A142265

/-! ## A142265.P13880003313938846763

`A000265(p?[A158057(n)+A154267(n)])`
-/

namespace A142265.P13880003313938846763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n + A154267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142265.P13880003313938846763

namespace A142265

/-- `A000265(p?[A158057(n)+A154267(n)])` -/
def P13880003313938846763.Spec : Prop :=
  ∀ n, P13880003313938846763.a n = A142265 (n + 1)

end A142265

/-! ## A142265.P9084063646278293604

`A007913(p?[A158057(n)+A154267(n)])`
-/

namespace A142265.P9084063646278293604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n + A154267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142265.P9084063646278293604

namespace A142265

/-- `A007913(p?[A158057(n)+A154267(n)])` -/
def P9084063646278293604.Spec : Prop :=
  ∀ n, P9084063646278293604.a n = A142265 (n + 1)

end A142265

/-! ## A142265.P3145929564268571224

`record[A006530(A248572(2*n+1)+A161714(n+1))]`
-/

namespace A142265.P3145929564268571224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A248572 (2 * n + 1) + A161714 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142265.P3145929564268571224

namespace A142265

/-- `record[A006530(A248572(2*n+1)+A161714(n+1))]` -/
def P3145929564268571224.Spec : Prop :=
  ∀ n, P3145929564268571224.a n = A142265 (n + 1)

end A142265

/-! ## A142265.P539237786822628616

`A034699(p?[A158057(n)+A154267(n)])`
-/

namespace A142265.P539237786822628616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n + A154267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142265.P539237786822628616

namespace A142265

/-- `A034699(p?[A158057(n)+A154267(n)])` -/
def P539237786822628616.Spec : Prop :=
  ∀ n, P539237786822628616.a n = A142265 (n + 1)

end A142265

/-! ## A142265.P100435808033043571

`A125746(p?[A158057(n)+A154267(n)])`
-/

namespace A142265.P100435808033043571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n + A154267 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142265.P100435808033043571

namespace A142265

/-- `A125746(p?[A158057(n)+A154267(n)])` -/
def P100435808033043571.Spec : Prop :=
  ∀ n, P100435808033043571.a n = A142265 (n + 1)

end A142265

/-! ## A142265.P4200427886510537995

`A299149(p?[A248572(n+1)-A002264(n)])`
-/

namespace A142265.P4200427886510537995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248572 (n + 1) - A002264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299149 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142265.P4200427886510537995

namespace A142265

/-- `A299149(p?[A248572(n+1)-A002264(n)])` -/
def P4200427886510537995.Spec : Prop :=
  ∀ n, P4200427886510537995.a n = A142265 (n + 1)

end A142265

/-!
# A142266: Primes congruent to 17 mod 43.

The programs for A142266, the canonical program `A142266.P4993458387102465404` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142266 has offset 1).

The definition of A142266 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1873 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142266.P4993458387102465404

`p?[43*n+17]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142266

/-- `p?[43*n+17]` -/
def P4993458387102465404.Spec : Prop :=
  ∀ n, (P4993458387102465404.a n : ℤ) = A142266 (n + 1)

theorem P4993458387102465404.correct : P4993458387102465404.Spec := by
  intro n
  simp only [A142266, Nat.add_sub_cancel]

end A142266

/-! ## A142266.P10148805563895447313

`A000027(p?[A053741(n)-A017017(n)])`
-/

namespace A142266.P10148805563895447313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142266.P10148805563895447313

namespace A142266

/-- `A000027(p?[A053741(n)-A017017(n)])` -/
def P10148805563895447313.Spec : Prop :=
  ∀ n, P10148805563895447313.a n = A142266 (n + 1)

end A142266

/-! ## A142266.P301406280356267344

`p?[A053741(n)-A017017(n)]%A269100(n)²`
-/

namespace A142266.P301406280356267344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A269100 n ^ 2)

end

end A142266.P301406280356267344

namespace A142266

/-- `p?[A053741(n)-A017017(n)]%A269100(n)²` -/
def P301406280356267344.Spec : Prop :=
  ∀ n, P301406280356267344.a n = A142266 (n + 1)

end A142266

/-! ## A142266.P11015782507514734354

`record[A020639(43*n+17)]`
-/

namespace A142266.P11015782507514734354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (43 * n + 17)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142266.P11015782507514734354

namespace A142266

/-- `record[A020639(43*n+17)]` -/
def P11015782507514734354.Spec : Prop :=
  ∀ n, P11015782507514734354.a n = A142266 (n + 1)

end A142266

/-! ## A142266.P8929518917918874522

`A007913(p?[A053741(n)-A017017(n)])`
-/

namespace A142266.P8929518917918874522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142266.P8929518917918874522

namespace A142266

/-- `A007913(p?[A053741(n)-A017017(n)])` -/
def P8929518917918874522.Spec : Prop :=
  ∀ n, P8929518917918874522.a n = A142266 (n + 1)

end A142266

/-! ## A142266.P2267572578205443409

`A007947(p?[A053741(n)-A017017(n)])`
-/

namespace A142266.P2267572578205443409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142266.P2267572578205443409

namespace A142266

/-- `A007947(p?[A053741(n)-A017017(n)])` -/
def P2267572578205443409.Spec : Prop :=
  ∀ n, P2267572578205443409.a n = A142266 (n + 1)

end A142266

/-! ## A142266.P11574022981177705084

`A093178(p?[A139613(n)+A017113(n)])`
-/

namespace A142266.P11574022981177705084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139613 n + A017113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142266.P11574022981177705084

namespace A142266

/-- `A093178(p?[A139613(n)+A017113(n)])` -/
def P11574022981177705084.Spec : Prop :=
  ∀ n, P11574022981177705084.a n = A142266 (n + 1)

end A142266

/-!
# A142267: Primes congruent to 18 mod 43.

The programs for A142267, the canonical program `A142267.P3223431257577702686` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142267 has offset 1).

The definition of A142267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1860 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142267.P3223431257577702686

`p?[43*n+18]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142267

/-- `p?[43*n+18]` -/
def P3223431257577702686.Spec : Prop :=
  ∀ n, (P3223431257577702686.a n : ℤ) = A142267 (n + 1)

theorem P3223431257577702686.correct : P3223431257577702686.Spec := by
  intro n
  simp only [A142267, Nat.add_sub_cancel]

end A142267

/-! ## A142267.P8556193990324273688

`or(1, p?[A053741(n)-A017005(n)])`
-/

namespace A142267.P8556193990324273688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A017005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142267.P8556193990324273688

namespace A142267

/-- `or(1, p?[A053741(n)-A017005(n)])` -/
def P8556193990324273688.Spec : Prop :=
  ∀ n, P8556193990324273688.a n = A142267 (n + 1)

end A142267

/-! ## A142267.P1755073077382117234

`A000027(p?[A124388(n)+A008598(n)])`
-/

namespace A142267.P1755073077382117234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n + A008598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142267.P1755073077382117234

namespace A142267

/-- `A000027(p?[A124388(n)+A008598(n)])` -/
def P1755073077382117234.Spec : Prop :=
  ∀ n, P1755073077382117234.a n = A142267 (n + 1)

end A142267

/-! ## A142267.P6557227599709981915

`A000027(p?[A053741(n)-A017005(n)])`
-/

namespace A142267.P6557227599709981915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A017005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142267.P6557227599709981915

namespace A142267

/-- `A000027(p?[A053741(n)-A017005(n)])` -/
def P6557227599709981915.Spec : Prop :=
  ∀ n, P6557227599709981915.a n = A142267 (n + 1)

end A142267

/-! ## A142267.P14662490704626625907

`(A005408(n)-2*n)*p?[A053741(n)-A017005(n)]`
-/

namespace A142267.P14662490704626625907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A017005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n - (2 * n : ℤ)) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142267.P14662490704626625907

namespace A142267

/-- `(A005408(n)-2*n)*p?[A053741(n)-A017005(n)]` -/
def P14662490704626625907.Spec : Prop :=
  ∀ n, P14662490704626625907.a n = A142267 (n + 1)

end A142267

/-! ## A142267.P1172184374543592321

`A007913(p?[A124388(n)+A008598(n)])`
-/

namespace A142267.P1172184374543592321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n + A008598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142267.P1172184374543592321

namespace A142267

/-- `A007913(p?[A124388(n)+A008598(n)])` -/
def P1172184374543592321.Spec : Prop :=
  ∀ n, P1172184374543592321.a n = A142267 (n + 1)

end A142267

/-! ## A142267.P4631258124105002382

`A000265(p?[A053741(n)-A017005(n)])`
-/

namespace A142267.P4631258124105002382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A017005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142267.P4631258124105002382

namespace A142267

/-- `A000265(p?[A053741(n)-A017005(n)])` -/
def P4631258124105002382.Spec : Prop :=
  ∀ n, P4631258124105002382.a n = A142267 (n + 1)

end A142267

/-! ## A142267.P154903186996366808

`A001414(p?[A053741(n)-A017005(n)])`
-/

namespace A142267.P154903186996366808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A017005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142267.P154903186996366808

namespace A142267

/-- `A001414(p?[A053741(n)-A017005(n)])` -/
def P154903186996366808.Spec : Prop :=
  ∀ n, P154903186996366808.a n = A142267 (n + 1)

end A142267

/-! ## A142267.P18026794346643957434

`A007913(p?[A053741(n)-A017005(n)])`
-/

namespace A142267.P18026794346643957434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A017005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142267.P18026794346643957434

namespace A142267

/-- `A007913(p?[A053741(n)-A017005(n)])` -/
def P18026794346643957434.Spec : Prop :=
  ∀ n, P18026794346643957434.a n = A142267 (n + 1)

end A142267

/-! ## A142267.P16948292757785974039

`A007947(p?[A053741(n)-A017005(n)])`
-/

namespace A142267.P16948292757785974039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A017005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142267.P16948292757785974039

namespace A142267

/-- `A007947(p?[A053741(n)-A017005(n)])` -/
def P16948292757785974039.Spec : Prop :=
  ∀ n, P16948292757785974039.a n = A142267 (n + 1)

end A142267

/-! ## A142267.P540600512937131456

`A006530(2*p?[A053741(n)-A017005(n)])`
-/

namespace A142267.P540600512937131456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A017005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142267.P540600512937131456

namespace A142267

/-- `A006530(2*p?[A053741(n)-A017005(n)])` -/
def P540600512937131456.Spec : Prop :=
  ∀ n, P540600512937131456.a n = A142267 (n + 1)

end A142267

/-!
# A142268: Primes congruent to 19 mod 43.

The programs for A142268, the canonical program `A142268.P18212297061773794963` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142268 has offset 1).

The definition of A142268 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1866 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142268.P18212297061773794963

`p?[43*n+19]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142268

/-- `p?[43*n+19]` -/
def P18212297061773794963.Spec : Prop :=
  ∀ n, (P18212297061773794963.a n : ℤ) = A142268 (n + 1)

theorem P18212297061773794963.correct : P18212297061773794963.Spec := by
  intro n
  simp only [A142268, Nat.add_sub_cancel]

end A142268

/-! ## A142268.P4166003116671090470

`record[A020639(A248339(2*n)-n)]`
-/

namespace A142268.P4166003116671090470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A248339 (2 * n) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142268.P4166003116671090470

namespace A142268

/-- `record[A020639(A248339(2*n)-n)]` -/
def P4166003116671090470.Spec : Prop :=
  ∀ n, P4166003116671090470.a n = A142268 (n + 1)

end A142268

/-! ## A142268.P4423205451196115597

`record[A020639(A258016(2*n+1)+n)]`
-/

namespace A142268.P4423205451196115597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A258016 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142268.P4423205451196115597

namespace A142268

/-- `record[A020639(A258016(2*n+1)+n)]` -/
def P4423205451196115597.Spec : Prop :=
  ∀ n, P4423205451196115597.a n = A142268 (n + 1)

end A142268

/-! ## A142268.P9620735912615762244

`record[A020639(A250024(n+1)+3*n)]`
-/

namespace A142268.P9620735912615762244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A250024 (n + 1) + (3 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142268.P9620735912615762244

namespace A142268

/-- `record[A020639(A250024(n+1)+3*n)]` -/
def P9620735912615762244.Spec : Prop :=
  ∀ n, P9620735912615762244.a n = A142268 (n + 1)

end A142268

/-! ## A142268.P10671285507166706664

`A000265(p?[A053741(n)-A016993(n)])`
-/

namespace A142268.P10671285507166706664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053741 n - A016993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142268.P10671285507166706664

namespace A142268

/-- `A000265(p?[A053741(n)-A016993(n)])` -/
def P10671285507166706664.Spec : Prop :=
  ∀ n, P10671285507166706664.a n = A142268 (n + 1)

end A142268

/-! ## A142268.P9772114311806046995

`A007913(p?[A258016(n+1)+A004525(n)])`
-/

namespace A142268.P9772114311806046995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258016 (n + 1) + A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142268.P9772114311806046995

namespace A142268

/-- `A007913(p?[A258016(n+1)+A004525(n)])` -/
def P9772114311806046995.Spec : Prop :=
  ∀ n, P9772114311806046995.a n = A142268 (n + 1)

end A142268

/-! ## A142268.P15552085702702616758

`record[A020639(A139609(n)+A017017(n)+7)]`
-/

namespace A142268.P15552085702702616758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A139609 n + A017017 n + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142268.P15552085702702616758

namespace A142268

/-- `record[A020639(A139609(n)+A017017(n)+7)]` -/
def P15552085702702616758.Spec : Prop :=
  ∀ n, P15552085702702616758.a n = A142268 (n + 1)

end A142268

/-! ## A142268.P1147262487466631834

`record[A006530(A250024(2*n+1)+A016993(n)-(n+1))]`
-/

namespace A142268.P1147262487466631834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A250024 (2 * n + 1) + A016993 n - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142268.P1147262487466631834

namespace A142268

/-- `record[A006530(A250024(2*n+1)+A016993(n)-(n+1))]` -/
def P1147262487466631834.Spec : Prop :=
  ∀ n, P1147262487466631834.a n = A142268 (n + 1)

end A142268

/-!
# A142269: Primes congruent to 20 mod 43.

The programs for A142269, the canonical program `A142269.P5167647981052454786` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142269 has offset 1).

The definition of A142269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1883 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142269.P5167647981052454786

`p?[43*n+63]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142269

/-- `p?[43*n+63]` -/
def P5167647981052454786.Spec : Prop :=
  ∀ n, (P5167647981052454786.a n : ℤ) = A142269 (n + 1)

theorem P5167647981052454786.correct : P5167647981052454786.Spec := by
  intro n
  simp only [A142269, Nat.add_sub_cancel]

end A142269

/-! ## A142269.P6871937136725388923

`A000027(p?[A053742(n)-A017041(n)])`
-/

namespace A142269.P6871937136725388923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A017041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142269.P6871937136725388923

namespace A142269

/-- `A000027(p?[A053742(n)-A017041(n)])` -/
def P6871937136725388923.Spec : Prop :=
  ∀ n, P6871937136725388923.a n = A142269 (n + 1)

end A142269

/-! ## A142269.P6195204590351422951

`p?[A053742(n)-A017041(n)]%A139613(n)²`
-/

namespace A142269.P6195204590351422951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A017041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A139613 n ^ 2)

end

end A142269.P6195204590351422951

namespace A142269

/-- `p?[A053742(n)-A017041(n)]%A139613(n)²` -/
def P6195204590351422951.Spec : Prop :=
  ∀ n, P6195204590351422951.a n = A142269 (n + 1)

end A142269

/-! ## A142269.P13794526161832458506

`p?[A053742(n)-A017041(n)]+A005869(n)%2`
-/

namespace A142269.P13794526161832458506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A017041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A005869 n) 2

end

end A142269.P13794526161832458506

namespace A142269

/-- `p?[A053742(n)-A017041(n)]+A005869(n)%2` -/
def P13794526161832458506.Spec : Prop :=
  ∀ n, P13794526161832458506.a n = A142269 (n + 1)

end A142269

/-! ## A142269.P11358744957953868841

`p?[A053742(n)-A017041(n)]+A153733(n)%2`
-/

namespace A142269.P11358744957953868841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A017041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A153733 n) 2

end

end A142269.P11358744957953868841

namespace A142269

/-- `p?[A053742(n)-A017041(n)]+A153733(n)%2` -/
def P11358744957953868841.Spec : Prop :=
  ∀ n, P11358744957953868841.a n = A142269 (n + 1)

end A142269

/-! ## A142269.P7473415669924076510

`p?[A053742(n)-A017041(n)]/A008836(n+1)²`
-/

namespace A142269.P7473415669924076510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A017041 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A008836 (n + 1) ^ 2 : ℚ)

end

end A142269.P7473415669924076510

namespace A142269

/-- `p?[A053742(n)-A017041(n)]/A008836(n+1)²` -/
def P7473415669924076510.Spec : Prop :=
  ∀ n, P7473415669924076510.a n = (A142269 (n + 1) : ℚ)

end A142269

/-! ## A142269.P10024544994110733246

`p?[A053742(n)-A017041(n)]/A034947(n+2)²`
-/

namespace A142269.P10024544994110733246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A017041 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A034947 (n + 2) ^ 2 : ℚ)

end

end A142269.P10024544994110733246

namespace A142269

/-- `p?[A053742(n)-A017041(n)]/A034947(n+2)²` -/
def P10024544994110733246.Spec : Prop :=
  ∀ n, P10024544994110733246.a n = (A142269 (n + 1) : ℚ)

end A142269

/-! ## A142269.P15122848190427771227

`A056594(2*n)²*p?[A053742(n)-A017041(n)]`
-/

namespace A142269.P15122848190427771227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A017041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142269.P15122848190427771227

namespace A142269

/-- `A056594(2*n)²*p?[A053742(n)-A017041(n)]` -/
def P15122848190427771227.Spec : Prop :=
  ∀ n, P15122848190427771227.a n = A142269 (n + 1)

end A142269

/-! ## A142269.P7120249028579976428

`A000265(p?[A053742(n)-A017041(n)])`
-/

namespace A142269.P7120249028579976428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A017041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142269.P7120249028579976428

namespace A142269

/-- `A000265(p?[A053742(n)-A017041(n)])` -/
def P7120249028579976428.Spec : Prop :=
  ∀ n, P7120249028579976428.a n = A142269 (n + 1)

end A142269

/-! ## A142269.P16147934723753329307

`A001414(p?[A053742(n)-A017041(n)])`
-/

namespace A142269.P16147934723753329307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A017041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142269.P16147934723753329307

namespace A142269

/-- `A001414(p?[A053742(n)-A017041(n)])` -/
def P16147934723753329307.Spec : Prop :=
  ∀ n, P16147934723753329307.a n = A142269 (n + 1)

end A142269

/-! ## A142269.P718628592295581006

`A008472(p?[A053742(n)-A017041(n)])`
-/

namespace A142269.P718628592295581006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A017041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142269.P718628592295581006

namespace A142269

/-- `A008472(p?[A053742(n)-A017041(n)])` -/
def P718628592295581006.Spec : Prop :=
  ∀ n, P718628592295581006.a n = A142269 (n + 1)

end A142269

/-!
# A142270: Primes congruent to 21 mod 43.

The programs for A142270, the canonical program `A142270.P16794312820006790597` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142270 has offset 1).

The definition of A142270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1887 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142270.P16794312820006790597

`p?[43*n+21]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142270

/-- `p?[43*n+21]` -/
def P16794312820006790597.Spec : Prop :=
  ∀ n, (P16794312820006790597.a n : ℤ) = A142270 (n + 1)

theorem P16794312820006790597.correct : P16794312820006790597.Spec := by
  intro n
  simp only [A142270, Nat.add_sub_cancel]

end A142270

/-! ## A142270.P14051231194006843126

`or(1, p?[A053742(n)-A017029(n)])`
-/

namespace A142270.P14051231194006843126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142270.P14051231194006843126

namespace A142270

/-- `or(1, p?[A053742(n)-A017029(n)])` -/
def P14051231194006843126.Spec : Prop :=
  ∀ n, P14051231194006843126.a n = A142270 (n + 1)

end A142270

/-! ## A142270.P9795172827981704501

`A000027(p?[A250024(n+1)+A016789(n)])`
-/

namespace A142270.P9795172827981704501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250024 (n + 1) + A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142270.P9795172827981704501

namespace A142270

/-- `A000027(p?[A250024(n+1)+A016789(n)])` -/
def P9795172827981704501.Spec : Prop :=
  ∀ n, P9795172827981704501.a n = A142270 (n + 1)

end A142270

/-! ## A142270.P10564211947660809789

`p?[A053742(n)-A017029(n)]%A017331(n)`
-/

namespace A142270.P10564211947660809789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017331 n)

end

end A142270.P10564211947660809789

namespace A142270

/-- `p?[A053742(n)-A017029(n)]%A017331(n)` -/
def P10564211947660809789.Spec : Prop :=
  ∀ n, P10564211947660809789.a n = A142270 (n + 1)

end A142270

/-! ## A142270.P7528108069946383236

`A000038(n+1)+p?[A053742(n)-A017029(n)]`
-/

namespace A142270.P7528108069946383236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142270.P7528108069946383236

namespace A142270

/-- `A000038(n+1)+p?[A053742(n)-A017029(n)]` -/
def P7528108069946383236.Spec : Prop :=
  ∀ n, P7528108069946383236.a n = A142270 (n + 1)

end A142270

/-! ## A142270.P15890788125099111118

`p?[A053742(n)-A017029(n)]/A076479(n+1)²`
-/

namespace A142270.P15890788125099111118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A017029 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (A076479 (n + 1) ^ 2 : ℚ)

end

end A142270.P15890788125099111118

namespace A142270

/-- `p?[A053742(n)-A017029(n)]/A076479(n+1)²` -/
def P15890788125099111118.Spec : Prop :=
  ∀ n, P15890788125099111118.a n = (A142270 (n + 1) : ℚ)

end A142270

/-! ## A142270.P12940748161619958894

`A007947(p?[A053742(n)-A017029(n)])`
-/

namespace A142270.P12940748161619958894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142270.P12940748161619958894

namespace A142270

/-- `A007947(p?[A053742(n)-A017029(n)])` -/
def P12940748161619958894.Spec : Prop :=
  ∀ n, P12940748161619958894.a n = A142270 (n + 1)

end A142270

/-! ## A142270.P8370383146292209039

`A008472(p?[A053742(n)-A017029(n)])`
-/

namespace A142270.P8370383146292209039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142270.P8370383146292209039

namespace A142270

/-- `A008472(p?[A053742(n)-A017029(n)])` -/
def P8370383146292209039.Spec : Prop :=
  ∀ n, P8370383146292209039.a n = A142270 (n + 1)

end A142270

/-! ## A142270.P18379439710788173106

`A001414(p?[A250024(n+1)+A016789(n)])`
-/

namespace A142270.P18379439710788173106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250024 (n + 1) + A016789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142270.P18379439710788173106

namespace A142270

/-- `A001414(p?[A250024(n+1)+A016789(n)])` -/
def P18379439710788173106.Spec : Prop :=
  ∀ n, P18379439710788173106.a n = A142270 (n + 1)

end A142270

/-! ## A142270.P6095354591704693269

`A299149(p?[A053742(n)-A017029(n)])`
-/

namespace A142270.P6095354591704693269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299149 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142270.P6095354591704693269

namespace A142270

/-- `A299149(p?[A053742(n)-A017029(n)])` -/
def P6095354591704693269.Spec : Prop :=
  ∀ n, P6095354591704693269.a n = A142270 (n + 1)

end A142270

/-! ## A142270.P5066623933677981379

`A093411(p?[A053742(n)-A017029(n)])`
-/

namespace A142270.P5066623933677981379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A017029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142270.P5066623933677981379

namespace A142270

/-- `A093411(p?[A053742(n)-A017029(n)])` -/
def P5066623933677981379.Spec : Prop :=
  ∀ n, P5066623933677981379.a n = A142270 (n + 1)

end A142270

/-!
# A142271: Primes congruent to 22 mod 43.

The programs for A142271, the canonical program `A142271.P15295842612164848326` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142271 has offset 1).

The definition of A142271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1840 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142271.P15295842612164848326

`p?[43*n+22]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142271

/-- `p?[43*n+22]` -/
def P15295842612164848326.Spec : Prop :=
  ∀ n, (P15295842612164848326.a n : ℤ) = A142271 (n + 1)

theorem P15295842612164848326.correct : P15295842612164848326.Spec := by
  intro n
  simp only [A142271, Nat.add_sub_cancel]

end A142271

/-! ## A142271.P3682822423070657525

`A000027(p?[A053742(n)-A017017(n)])`
-/

namespace A142271.P3682822423070657525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142271.P3682822423070657525

namespace A142271

/-- `A000027(p?[A053742(n)-A017017(n)])` -/
def P3682822423070657525.Spec : Prop :=
  ∀ n, P3682822423070657525.a n = A142271 (n + 1)

end A142271

/-! ## A142271.P721932315019313379

`p?[A053742(n)-A017017(n)]%A014798(n)`
-/

namespace A142271.P721932315019313379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A014798 n)

end

end A142271.P721932315019313379

namespace A142271

/-- `p?[A053742(n)-A017017(n)]%A014798(n)` -/
def P721932315019313379.Spec : Prop :=
  ∀ n, P721932315019313379.a n = A142271 (n + 1)

end A142271

/-! ## A142271.P17965929046594787996

`A020985(n)²*p?[A053742(n)-A017017(n)]`
-/

namespace A142271.P17965929046594787996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142271.P17965929046594787996

namespace A142271

/-- `A020985(n)²*p?[A053742(n)-A017017(n)]` -/
def P17965929046594787996.Spec : Prop :=
  ∀ n, P17965929046594787996.a n = A142271 (n + 1)

end A142271

/-! ## A142271.P4994285329227137529

`p?[A053742(n)-A017017(n)]-A000035(2*n)`
-/

namespace A142271.P4994285329227137529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A000035 (2 * n)

end

end A142271.P4994285329227137529

namespace A142271

/-- `p?[A053742(n)-A017017(n)]-A000035(2*n)` -/
def P4994285329227137529.Spec : Prop :=
  ∀ n, P4994285329227137529.a n = A142271 (n + 1)

end A142271

/-! ## A142271.P931392049399695142

`p?[A053742(n)-A017017(n)]+A016825(n)%2`
-/

namespace A142271.P931392049399695142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A016825 n) 2

end

end A142271.P931392049399695142

namespace A142271

/-- `p?[A053742(n)-A017017(n)]+A016825(n)%2` -/
def P931392049399695142.Spec : Prop :=
  ∀ n, P931392049399695142.a n = A142271 (n + 1)

end A142271

/-! ## A142271.P10829563187895879714

`p?[A053742(n)-A017017(n)]+A017137(n)%2`
-/

namespace A142271.P10829563187895879714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A017137 n) 2

end

end A142271.P10829563187895879714

namespace A142271

/-- `p?[A053742(n)-A017017(n)]+A017137(n)%2` -/
def P10829563187895879714.Spec : Prop :=
  ∀ n, P10829563187895879714.a n = A142271 (n + 1)

end A142271

/-! ## A142271.P17451705179369987353

`p?[A053742(n)-A017017(n)]-n*A000007(n)`
-/

namespace A142271.P17451705179369987353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (n : ℤ) * A000007 n

end

end A142271.P17451705179369987353

namespace A142271

/-- `p?[A053742(n)-A017017(n)]-n*A000007(n)` -/
def P17451705179369987353.Spec : Prop :=
  ∀ n, P17451705179369987353.a n = A142271 (n + 1)

end A142271

/-! ## A142271.P14317391531367429992

`A000265(p?[A053742(n)-A017017(n)])`
-/

namespace A142271.P14317391531367429992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142271.P14317391531367429992

namespace A142271

/-- `A000265(p?[A053742(n)-A017017(n)])` -/
def P14317391531367429992.Spec : Prop :=
  ∀ n, P14317391531367429992.a n = A142271 (n + 1)

end A142271

/-! ## A142271.P11166029218572012743

`A001414(p?[A053742(n)-A017017(n)])`
-/

namespace A142271.P11166029218572012743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142271.P11166029218572012743

namespace A142271

/-- `A001414(p?[A053742(n)-A017017(n)])` -/
def P11166029218572012743.Spec : Prop :=
  ∀ n, P11166029218572012743.a n = A142271 (n + 1)

end A142271

/-! ## A142271.P4873894703481224047

`A008472(p?[A053742(n)-A017017(n)])`
-/

namespace A142271.P4873894703481224047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n - A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142271.P4873894703481224047

namespace A142271

/-- `A008472(p?[A053742(n)-A017017(n)])` -/
def P4873894703481224047.Spec : Prop :=
  ∀ n, P4873894703481224047.a n = A142271 (n + 1)

end A142271

/-!
# A142272: Primes congruent to 23 mod 43.

The programs for A142272, the canonical program `A142272.P13556938270763829172` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142272 has offset 1).

The definition of A142272 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1907 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142272.P13556938270763829172

`p?[43*n-20]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142272

/-- `p?[43*n-20]` -/
def P13556938270763829172.Spec : Prop :=
  ∀ n, P13556938270763829172.a n = A142272 (n + 1)

theorem P13556938270763829172.correct : P13556938270763829172.Spec := by
  intro n
  simp only [A142272, Nat.add_sub_cancel]

end A142272

/-! ## A142272.P14225316467524519750

`∏{p}[p?[43*n+23], #]`
-/

namespace A142272.P14225316467524519750
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43 * n + 23

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A142272.P14225316467524519750

namespace A142272

/-- `∏{p}[p?[43*n+23], #]` -/
def P14225316467524519750.Spec : Prop :=
  ∀ n, (P14225316467524519750.a n : ℤ) = A142272 (n + 1)

end A142272

/-! ## A142272.P3740054076502896255

`∑{d}[p?[A161709(n+1)+A152691(n)], #]-1`
-/

namespace A142272.P3740054076502896255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 (n + 1) + A152691 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A142272.P3740054076502896255

namespace A142272

/-- `∑{d}[p?[A161709(n+1)+A152691(n)], #]-1` -/
def P3740054076502896255.Spec : Prop :=
  ∀ n, P3740054076502896255.a n = A142272 (n + 1)

end A142272

/-! ## A142272.P17284680083365295448

`record[A006530(43*n+23)]`
-/

namespace A142272.P17284680083365295448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (43 * n + 23)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142272.P17284680083365295448

namespace A142272

/-- `record[A006530(43*n+23)]` -/
def P17284680083365295448.Spec : Prop :=
  ∀ n, P17284680083365295448.a n = A142272 (n + 1)

end A142272

/-! ## A142272.P12351221025185411213

`record[A020639(43*n+23)]`
-/

namespace A142272.P12351221025185411213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (43 * n + 23)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142272.P12351221025185411213

namespace A142272

/-- `record[A020639(43*n+23)]` -/
def P12351221025185411213.Spec : Prop :=
  ∀ n, P12351221025185411213.a n = A142272 (n + 1)

end A142272

/-!
# A142273: Primes congruent to 24 mod 43.

The programs for A142273, the canonical program `A142273.P2540258636180105551` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142273 has offset 1).

The definition of A142273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1872 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142273.P2540258636180105551

`p?[43*n-19]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142273

/-- `p?[43*n-19]` -/
def P2540258636180105551.Spec : Prop :=
  ∀ n, P2540258636180105551.a n = A142273 (n + 1)

theorem P2540258636180105551.correct : P2540258636180105551.Spec := by
  intro n
  simp only [A142273, Nat.add_sub_cancel]

end A142273

/-! ## A142273.P17821814066386825539

`or(1, p?[A304157(n+1)-n])`
-/

namespace A142273.P17821814066386825539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142273.P17821814066386825539

namespace A142273

/-- `or(1, p?[A304157(n+1)-n])` -/
def P17821814066386825539.Spec : Prop :=
  ∀ n, P17821814066386825539.a n = A142273 (n + 1)

end A142273

/-! ## A142273.P15284618033794028131

`A000027(p?[A304157(n+1)-n])`
-/

namespace A142273.P15284618033794028131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142273.P15284618033794028131

namespace A142273

/-- `A000027(p?[A304157(n+1)-n])` -/
def P15284618033794028131.Spec : Prop :=
  ∀ n, P15284618033794028131.a n = A142273 (n + 1)

end A142273

/-! ## A142273.P10800505015015388587

`A000007(n+1)+p?[A304157(n+1)-n]`
-/

namespace A142273.P10800505015015388587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142273.P10800505015015388587

namespace A142273

/-- `A000007(n+1)+p?[A304157(n+1)-n]` -/
def P10800505015015388587.Spec : Prop :=
  ∀ n, P10800505015015388587.a n = A142273 (n + 1)

end A142273

/-! ## A142273.P1415886185160656952

`A000038(n+1)+p?[A304157(n+1)-n]`
-/

namespace A142273.P1415886185160656952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142273.P1415886185160656952

namespace A142273

/-- `A000038(n+1)+p?[A304157(n+1)-n]` -/
def P1415886185160656952.Spec : Prop :=
  ∀ n, P1415886185160656952.a n = A142273 (n + 1)

end A142273

/-! ## A142273.P18115854540542959941

`A000027(p?[A156376(n)+A154609(n)])`
-/

namespace A142273.P18115854540542959941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156376 n + A154609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142273.P18115854540542959941

namespace A142273

/-- `A000027(p?[A156376(n)+A154609(n)])` -/
def P18115854540542959941.Spec : Prop :=
  ∀ n, P18115854540542959941.a n = A142273 (n + 1)

end A142273

/-! ## A142273.P12280884763694870637

`A000265(p?[A304157(n+1)-n])`
-/

namespace A142273.P12280884763694870637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142273.P12280884763694870637

namespace A142273

/-- `A000265(p?[A304157(n+1)-n])` -/
def P12280884763694870637.Spec : Prop :=
  ∀ n, P12280884763694870637.a n = A142273 (n + 1)

end A142273

/-! ## A142273.P11829056298663007405

`A001414(p?[A304157(n+1)-n])`
-/

namespace A142273.P11829056298663007405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142273.P11829056298663007405

namespace A142273

/-- `A001414(p?[A304157(n+1)-n])` -/
def P11829056298663007405.Spec : Prop :=
  ∀ n, P11829056298663007405.a n = A142273 (n + 1)

end A142273

/-! ## A142273.P12331672700344224009

`A007913(p?[A304157(n+1)-n])`
-/

namespace A142273.P12331672700344224009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142273.P12331672700344224009

namespace A142273

/-- `A007913(p?[A304157(n+1)-n])` -/
def P12331672700344224009.Spec : Prop :=
  ∀ n, P12331672700344224009.a n = A142273 (n + 1)

end A142273

/-! ## A142273.P218938356724939236

`A008472(p?[A304157(n+1)-n])`
-/

namespace A142273.P218938356724939236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142273.P218938356724939236

namespace A142273

/-- `A008472(p?[A304157(n+1)-n])` -/
def P218938356724939236.Spec : Prop :=
  ∀ n, P218938356724939236.a n = A142273 (n + 1)

end A142273

/-! ## A142273.P17425276685912390115

`record[A020639(A053741(2*n+1)-A017017(2*n))]`
-/

namespace A142273.P17425276685912390115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A053741 (2 * n + 1) - A017017 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142273.P17425276685912390115

namespace A142273

/-- `record[A020639(A053741(2*n+1)-A017017(2*n))]` -/
def P17425276685912390115.Spec : Prop :=
  ∀ n, P17425276685912390115.a n = A142273 (n + 1)

end A142273

/-! ## A142273.P7943765197712522434

`record[A020639(A304157(2*(n+1))-A141310(2*n))]`
-/

namespace A142273.P7943765197712522434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304157 (2 * (n + 1)) - A141310 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142273.P7943765197712522434

namespace A142273

/-- `record[A020639(A304157(2*(n+1))-A141310(2*n))]` -/
def P7943765197712522434.Spec : Prop :=
  ∀ n, P7943765197712522434.a n = A142273 (n + 1)

end A142273

/-!
# A142274: Primes congruent to 25 mod 43.

The programs for A142274, the canonical program `A142274.P12276314700837698252` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142274 has offset 1).

The definition of A142274 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1867 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142274.P12276314700837698252

`p?[43*n-18]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142274

/-- `p?[43*n-18]` -/
def P12276314700837698252.Spec : Prop :=
  ∀ n, P12276314700837698252.a n = A142274 (n + 1)

theorem P12276314700837698252.correct : P12276314700837698252.Spec := by
  intro n
  simp only [A142274, Nat.add_sub_cancel]

end A142274

/-! ## A142274.P15122045132347670353

`A000027(p?[A053742(n)+A044102(n)])`
-/

namespace A142274.P15122045132347670353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053742 n + A044102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142274.P15122045132347670353

namespace A142274

/-- `A000027(p?[A053742(n)+A044102(n)])` -/
def P15122045132347670353.Spec : Prop :=
  ∀ n, P15122045132347670353.a n = A142274 (n + 1)

end A142274

/-! ## A142274.P12532730278530068793

`A000027(p?[A146081(n)+A017533(n)])`
-/

namespace A142274.P12532730278530068793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n + A017533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142274.P12532730278530068793

namespace A142274

/-- `A000027(p?[A146081(n)+A017533(n)])` -/
def P12532730278530068793.Spec : Prop :=
  ∀ n, P12532730278530068793.a n = A142274 (n + 1)

end A142274

/-! ## A142274.P2885920146509954692

`A000027(p?[A154266(n)+A082285(n)])`
-/

namespace A142274.P2885920146509954692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A082285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142274.P2885920146509954692

namespace A142274

/-- `A000027(p?[A154266(n)+A082285(n)])` -/
def P2885920146509954692.Spec : Prop :=
  ∀ n, P2885920146509954692.a n = A142274 (n + 1)

end A142274

/-! ## A142274.P9450776839977260804

`p?[A154266(n)+A082285(n)]%A016973(n)`
-/

namespace A142274.P9450776839977260804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A082285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A016973 n)

end

end A142274.P9450776839977260804

namespace A142274

/-- `p?[A154266(n)+A082285(n)]%A016973(n)` -/
def P9450776839977260804.Spec : Prop :=
  ∀ n, P9450776839977260804.a n = A142274 (n + 1)

end A142274

/-! ## A142274.P11533816094087535817

`A000007(n+1)+p?[A154266(n)+A082285(n)]`
-/

namespace A142274.P11533816094087535817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A082285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142274.P11533816094087535817

namespace A142274

/-- `A000007(n+1)+p?[A154266(n)+A082285(n)]` -/
def P11533816094087535817.Spec : Prop :=
  ∀ n, P11533816094087535817.a n = A142274 (n + 1)

end A142274

/-! ## A142274.P1635944046943152629

`A000035(2*n)+p?[A154266(n)+A082285(n)]`
-/

namespace A142274.P1635944046943152629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A082285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142274.P1635944046943152629

namespace A142274

/-- `A000035(2*n)+p?[A154266(n)+A082285(n)]` -/
def P1635944046943152629.Spec : Prop :=
  ∀ n, P1635944046943152629.a n = A142274 (n + 1)

end A142274

/-! ## A142274.P14624084648720492374

`A010673(2*(n+1))+p?[A154266(n)+A082285(n)]`
-/

namespace A142274.P14624084648720492374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A082285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (2 * (n + 1)) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142274.P14624084648720492374

namespace A142274

/-- `A010673(2*(n+1))+p?[A154266(n)+A082285(n)]` -/
def P14624084648720492374.Spec : Prop :=
  ∀ n, P14624084648720492374.a n = A142274 (n + 1)

end A142274

/-! ## A142274.P12267179948276911295

`p?[A154266(n)+A082285(n)]*A050932(2*n+1)`
-/

namespace A142274.P12267179948276911295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A082285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A050932 (2 * n + 1)

end

end A142274.P12267179948276911295

namespace A142274

/-- `p?[A154266(n)+A082285(n)]*A050932(2*n+1)` -/
def P12267179948276911295.Spec : Prop :=
  ∀ n, P12267179948276911295.a n = A142274 (n + 1)

end A142274

/-! ## A142274.P17174396264309161049

`A000265(p?[A146081(n)+A017533(n)])`
-/

namespace A142274.P17174396264309161049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n + A017533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142274.P17174396264309161049

namespace A142274

/-- `A000265(p?[A146081(n)+A017533(n)])` -/
def P17174396264309161049.Spec : Prop :=
  ∀ n, P17174396264309161049.a n = A142274 (n + 1)

end A142274

/-! ## A142274.P15616329465150901258

`A001414(p?[A146081(n)+A017533(n)])`
-/

namespace A142274.P15616329465150901258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n + A017533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142274.P15616329465150901258

namespace A142274

/-- `A001414(p?[A146081(n)+A017533(n)])` -/
def P15616329465150901258.Spec : Prop :=
  ∀ n, P15616329465150901258.a n = A142274 (n + 1)

end A142274

/-! ## A142274.P18181915467477293208

`A000265(p?[A154266(n)+A082285(n)])`
-/

namespace A142274.P18181915467477293208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A082285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142274.P18181915467477293208

namespace A142274

/-- `A000265(p?[A154266(n)+A082285(n)])` -/
def P18181915467477293208.Spec : Prop :=
  ∀ n, P18181915467477293208.a n = A142274 (n + 1)

end A142274

/-! ## A142274.P3055601724872492368

`A001414(p?[A154266(n)+A082285(n)])`
-/

namespace A142274.P3055601724872492368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A082285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142274.P3055601724872492368

namespace A142274

/-- `A001414(p?[A154266(n)+A082285(n)])` -/
def P3055601724872492368.Spec : Prop :=
  ∀ n, P3055601724872492368.a n = A142274 (n + 1)

end A142274

/-! ## A142274.P14426490659494946541

`A007913(p?[A154266(n)+A082285(n)])`
-/

namespace A142274.P14426490659494946541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A082285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142274.P14426490659494946541

namespace A142274

/-- `A007913(p?[A154266(n)+A082285(n)])` -/
def P14426490659494946541.Spec : Prop :=
  ∀ n, P14426490659494946541.a n = A142274 (n + 1)

end A142274

/-!
# A142275: Primes congruent to 26 mod 43.

The programs for A142275, the canonical program `A142275.P8128551976673487399` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142275 has offset 1).

The definition of A142275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1858 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142275.P8128551976673487399

`p?[86*n-17]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142275

/-- `p?[86*n-17]` -/
def P8128551976673487399.Spec : Prop :=
  ∀ n, P8128551976673487399.a n = A142275 (n + 1)

theorem P8128551976673487399.correct : P8128551976673487399.Spec := by
  intro n
  simp only [A142275, Nat.add_sub_cancel]

end A142275

/-! ## A142275.P7700711628585587941

`A000027(p?[A154267(n)+A106839(n)])`
-/

namespace A142275.P7700711628585587941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n + A106839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142275.P7700711628585587941

namespace A142275

/-- `A000027(p?[A154267(n)+A106839(n)])` -/
def P7700711628585587941.Spec : Prop :=
  ∀ n, P7700711628585587941.a n = A142275 (n + 1)

end A142275

/-! ## A142275.P6789875405698920485

`A000027(p?[A269044(n)+A156376(n)])`
-/

namespace A142275.P6789875405698920485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + A156376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142275.P6789875405698920485

namespace A142275

/-- `A000027(p?[A269044(n)+A156376(n)])` -/
def P6789875405698920485.Spec : Prop :=
  ∀ n, P6789875405698920485.a n = A142275 (n + 1)

end A142275

/-! ## A142275.P633248663224291253

`p?[A154267(n)+A106839(n)]%A017477(n)`
-/

namespace A142275.P633248663224291253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n + A106839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017477 n)

end

end A142275.P633248663224291253

namespace A142275

/-- `p?[A154267(n)+A106839(n)]%A017477(n)` -/
def P633248663224291253.Spec : Prop :=
  ∀ n, P633248663224291253.a n = A142275 (n + 1)

end A142275

/-! ## A142275.P4936358713881567997

`A010673(2*n)+p?[A154267(n)+A106839(n)]`
-/

namespace A142275.P4936358713881567997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n + A106839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (2 * n) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142275.P4936358713881567997

namespace A142275

/-- `A010673(2*n)+p?[A154267(n)+A106839(n)]` -/
def P4936358713881567997.Spec : Prop :=
  ∀ n, P4936358713881567997.a n = A142275 (n + 1)

end A142275

/-! ## A142275.P7401202224841852658

`p?[A154267(n)+A106839(n)]*A028920(2*n)`
-/

namespace A142275.P7401202224841852658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n + A106839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A028920 (2 * n)

end

end A142275.P7401202224841852658

namespace A142275

/-- `p?[A154267(n)+A106839(n)]*A028920(2*n)` -/
def P7401202224841852658.Spec : Prop :=
  ∀ n, P7401202224841852658.a n = A142275 (n + 1)

end A142275

/-! ## A142275.P732988195375767349

`A000265(p?[A269044(n)+A156376(n)])`
-/

namespace A142275.P732988195375767349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + A156376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142275.P732988195375767349

namespace A142275

/-- `A000265(p?[A269044(n)+A156376(n)])` -/
def P732988195375767349.Spec : Prop :=
  ∀ n, P732988195375767349.a n = A142275 (n + 1)

end A142275

/-! ## A142275.P9977944794695596632

`A007913(p?[A269044(n)+A156376(n)])`
-/

namespace A142275.P9977944794695596632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + A156376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142275.P9977944794695596632

namespace A142275

/-- `A007913(p?[A269044(n)+A156376(n)])` -/
def P9977944794695596632.Spec : Prop :=
  ∀ n, P9977944794695596632.a n = A142275 (n + 1)

end A142275

/-! ## A142275.P232802038265130233

`A000265(p?[A017341(4*n+2)+A008585(n)])`
-/

namespace A142275.P232802038265130233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 (4 * n + 2) + A008585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142275.P232802038265130233

namespace A142275

/-- `A000265(p?[A017341(4*n+2)+A008585(n)])` -/
def P232802038265130233.Spec : Prop :=
  ∀ n, P232802038265130233.a n = A142275 (n + 1)

end A142275

/-! ## A142275.P8816854657368167026

`A006530(2*p?[A154267(n)+A106839(n)])`
-/

namespace A142275.P8816854657368167026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n + A106839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142275.P8816854657368167026

namespace A142275

/-- `A006530(2*p?[A154267(n)+A106839(n)])` -/
def P8816854657368167026.Spec : Prop :=
  ∀ n, P8816854657368167026.a n = A142275 (n + 1)

end A142275

/-!
# A142276: Primes congruent to 27 mod 43.

The programs for A142276, the canonical program `A142276.P4845633353831802166` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142276 has offset 1).

The definition of A142276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1880 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142276.P4845633353831802166

`p?[43*n-16]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142276

/-- `p?[43*n-16]` -/
def P4845633353831802166.Spec : Prop :=
  ∀ n, P4845633353831802166.a n = A142276 (n + 1)

theorem P4845633353831802166.correct : P4845633353831802166.Spec := by
  intro n
  simp only [A142276, Nat.add_sub_cancel]

end A142276

/-! ## A142276.P3980444407626376775

`A000027(p?[A154266(n)+A125169(n)])`
-/

namespace A142276.P3980444407626376775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A125169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142276.P3980444407626376775

namespace A142276

/-- `A000027(p?[A154266(n)+A125169(n)])` -/
def P3980444407626376775.Spec : Prop :=
  ∀ n, P3980444407626376775.a n = A142276 (n + 1)

end A142276

/-! ## A142276.P2937540252217394732

`A020985(n)²*p?[A154266(n)+A125169(n)]`
-/

namespace A142276.P2937540252217394732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A125169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142276.P2937540252217394732

namespace A142276

/-- `A020985(n)²*p?[A154266(n)+A125169(n)]` -/
def P2937540252217394732.Spec : Prop :=
  ∀ n, P2937540252217394732.a n = A142276 (n + 1)

end A142276

/-! ## A142276.P4284269042270503892

`p?[A154266(n)+A125169(n)]%A139611(n)²`
-/

namespace A142276.P4284269042270503892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A125169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A139611 n ^ 2)

end

end A142276.P4284269042270503892

namespace A142276

/-- `p?[A154266(n)+A125169(n)]%A139611(n)²` -/
def P4284269042270503892.Spec : Prop :=
  ∀ n, P4284269042270503892.a n = A142276 (n + 1)

end A142276

/-! ## A142276.P9326949550085259918

`p?[A154266(n)+A125169(n)]+n*A000038(n)`
-/

namespace A142276.P9326949550085259918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A125169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n : ℤ) * A000038 n

end

end A142276.P9326949550085259918

namespace A142276

/-- `p?[A154266(n)+A125169(n)]+n*A000038(n)` -/
def P9326949550085259918.Spec : Prop :=
  ∀ n, P9326949550085259918.a n = A142276 (n + 1)

end A142276

/-! ## A142276.P7956702535529409682

`A008836(n+1)²*p?[A154266(n)+A125169(n)]`
-/

namespace A142276.P7956702535529409682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A125169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142276.P7956702535529409682

namespace A142276

/-- `A008836(n+1)²*p?[A154266(n)+A125169(n)]` -/
def P7956702535529409682.Spec : Prop :=
  ∀ n, P7956702535529409682.a n = A142276 (n + 1)

end A142276

/-! ## A142276.P13501780426939281875

`record[A020639(ceil(43*(n+1+ϕ)))]`
-/

namespace A142276.P13501780426939281875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌈43 * ((n + 1 : ℝ) + Real.goldenRatio)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142276.P13501780426939281875

namespace A142276

/-- `record[A020639(ceil(43*(n+1+ϕ)))]` -/
def P13501780426939281875.Spec : Prop :=
  ∀ n, P13501780426939281875.a n = A142276 (n + 1)

end A142276

/-! ## A142276.P432789616259425024

`A000265(p?[A154266(n)+A125169(n)])`
-/

namespace A142276.P432789616259425024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A125169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142276.P432789616259425024

namespace A142276

/-- `A000265(p?[A154266(n)+A125169(n)])` -/
def P432789616259425024.Spec : Prop :=
  ∀ n, P432789616259425024.a n = A142276 (n + 1)

end A142276

/-! ## A142276.P2352060590778732223

`A001414(p?[A154266(n)+A125169(n)])`
-/

namespace A142276.P2352060590778732223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A125169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142276.P2352060590778732223

namespace A142276

/-- `A001414(p?[A154266(n)+A125169(n)])` -/
def P2352060590778732223.Spec : Prop :=
  ∀ n, P2352060590778732223.a n = A142276 (n + 1)

end A142276

/-! ## A142276.P6222624783100958233

`A008475(p?[A154266(n)+A125169(n)])`
-/

namespace A142276.P6222624783100958233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A125169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142276.P6222624783100958233

namespace A142276

/-- `A008475(p?[A154266(n)+A125169(n)])` -/
def P6222624783100958233.Spec : Prop :=
  ∀ n, P6222624783100958233.a n = A142276 (n + 1)

end A142276

/-! ## A142276.P6008105488123062130

`A007947(p?[A270296(n+1)+A269044(n)])`
-/

namespace A142276.P6008105488123062130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270296 (n + 1) + A269044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142276.P6008105488123062130

namespace A142276

/-- `A007947(p?[A270296(n+1)+A269044(n)])` -/
def P6008105488123062130.Spec : Prop :=
  ∀ n, P6008105488123062130.a n = A142276 (n + 1)

end A142276

/-! ## A142276.P3599352419059851003

`A299149(p?[A154266(n)+A125169(n)])`
-/

namespace A142276.P3599352419059851003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154266 n + A125169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299149 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142276.P3599352419059851003

namespace A142276

/-- `A299149(p?[A154266(n)+A125169(n)])` -/
def P3599352419059851003.Spec : Prop :=
  ∀ n, P3599352419059851003.a n = A142276 (n + 1)

end A142276

/-!
# A142277: Primes congruent to 28 mod 43.

The programs for A142277, the canonical program `A142277.P4759217298360384155` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142277 has offset 1).

The definition of A142277 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1866 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142277.P4759217298360384155

`p?[43*n-15]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142277

/-- `p?[43*n-15]` -/
def P4759217298360384155.Spec : Prop :=
  ∀ n, P4759217298360384155.a n = A142277 (n + 1)

theorem P4759217298360384155.correct : P4759217298360384155.Spec := by
  intro n
  simp only [A142277, Nat.add_sub_cancel]

end A142277

/-! ## A142277.P11091130267587747834

`or(1, p?[A174312(n+2)+A017473(n)])`
-/

namespace A142277.P11091130267587747834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 (n + 2) + A017473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142277.P11091130267587747834

namespace A142277

/-- `or(1, p?[A174312(n+2)+A017473(n)])` -/
def P11091130267587747834.Spec : Prop :=
  ∀ n, P11091130267587747834.a n = A142277 (n + 1)

end A142277

/-! ## A142277.P835948831655222419

`A000027(p?[A174312(n+2)+A017473(n)])`
-/

namespace A142277.P835948831655222419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 (n + 2) + A017473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142277.P835948831655222419

namespace A142277

/-- `A000027(p?[A174312(n+2)+A017473(n)])` -/
def P835948831655222419.Spec : Prop :=
  ∀ n, P835948831655222419.a n = A142277 (n + 1)

end A142277

/-! ## A142277.P4494843514021103371

`A000007(n+1)+p?[A174312(n+2)+A017473(n)]`
-/

namespace A142277.P4494843514021103371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 (n + 2) + A017473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142277.P4494843514021103371

namespace A142277

/-- `A000007(n+1)+p?[A174312(n+2)+A017473(n)]` -/
def P4494843514021103371.Spec : Prop :=
  ∀ n, P4494843514021103371.a n = A142277 (n + 1)

end A142277

/-! ## A142277.P17906407725823549744

`p?[A174312(n+2)+A017473(n)]%A152161(n+1)`
-/

namespace A142277.P17906407725823549744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 (n + 2) + A017473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A152161 (n + 1))

end

end A142277.P17906407725823549744

namespace A142277

/-- `p?[A174312(n+2)+A017473(n)]%A152161(n+1)` -/
def P17906407725823549744.Spec : Prop :=
  ∀ n, P17906407725823549744.a n = A142277 (n + 1)

end A142277

/-! ## A142277.P16862306216600187051

`A008836(n+1)²*p?[A174312(n+2)+A017473(n)]`
-/

namespace A142277.P16862306216600187051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 (n + 2) + A017473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142277.P16862306216600187051

namespace A142277

/-- `A008836(n+1)²*p?[A174312(n+2)+A017473(n)]` -/
def P16862306216600187051.Spec : Prop :=
  ∀ n, P16862306216600187051.a n = A142277 (n + 1)

end A142277

/-! ## A142277.P2880517761566201979

`A056594(2*n+1)+p?[A174312(n+2)+A017473(n)]`
-/

namespace A142277.P2880517761566201979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 (n + 2) + A017473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142277.P2880517761566201979

namespace A142277

/-- `A056594(2*n+1)+p?[A174312(n+2)+A017473(n)]` -/
def P2880517761566201979.Spec : Prop :=
  ∀ n, P2880517761566201979.a n = A142277 (n + 1)

end A142277

/-! ## A142277.P15243476339391877317

`(A005408(n)+n)%3*p?[A174312(n+2)+A017473(n)]`
-/

namespace A142277.P15243476339391877317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 (n + 2) + A017473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 n + (n : ℤ)) 3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142277.P15243476339391877317

namespace A142277

/-- `(A005408(n)+n)%3*p?[A174312(n+2)+A017473(n)]` -/
def P15243476339391877317.Spec : Prop :=
  ∀ n, P15243476339391877317.a n = A142277 (n + 1)

end A142277

/-! ## A142277.P1602489076237461986

`A000027(p?[A195033(n+1)+A017473(n)])`
-/

namespace A142277.P1602489076237461986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195033 (n + 1) + A017473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142277.P1602489076237461986

namespace A142277

/-- `A000027(p?[A195033(n+1)+A017473(n)])` -/
def P1602489076237461986.Spec : Prop :=
  ∀ n, P1602489076237461986.a n = A142277 (n + 1)

end A142277

/-! ## A142277.P12437176226268983991

`record[A020639(A174312(n+2)+A017473(n))]`
-/

namespace A142277.P12437176226268983991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A174312 (n + 2) + A017473 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142277.P12437176226268983991

namespace A142277

/-- `record[A020639(A174312(n+2)+A017473(n))]` -/
def P12437176226268983991.Spec : Prop :=
  ∀ n, P12437176226268983991.a n = A142277 (n + 1)

end A142277

/-! ## A142277.P14011137720938225688

`A000265(p?[A174312(n+2)+A017473(n)])`
-/

namespace A142277.P14011137720938225688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 (n + 2) + A017473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142277.P14011137720938225688

namespace A142277

/-- `A000265(p?[A174312(n+2)+A017473(n)])` -/
def P14011137720938225688.Spec : Prop :=
  ∀ n, P14011137720938225688.a n = A142277 (n + 1)

end A142277

/-! ## A142277.P4170022005084615400

`record[A020639(A304839(n+2)-A017209(2*n+1))]`
-/

namespace A142277.P4170022005084615400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A304839 (n + 2) - A017209 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142277.P4170022005084615400

namespace A142277

/-- `record[A020639(A304839(n+2)-A017209(2*n+1))]` -/
def P4170022005084615400.Spec : Prop :=
  ∀ n, P4170022005084615400.a n = A142277 (n + 1)

end A142277

/-!
# A142278: Primes congruent to 29 mod 43.

The programs for A142278, the canonical program `A142278.P13179576882864845803` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142278 has offset 1).

The definition of A142278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1854 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142278.P13179576882864845803

`p?[86*n+29]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142278

/-- `p?[86*n+29]` -/
def P13179576882864845803.Spec : Prop :=
  ∀ n, (P13179576882864845803.a n : ℤ) = A142278 (n + 1)

theorem P13179576882864845803.correct : P13179576882864845803.Spec := by
  intro n
  simp only [A142278, Nat.add_sub_cancel]

end A142278

/-! ## A142278.P3560155965702977673

`or(1, p?[A154267(n)+A125169(n)-1])`
-/

namespace A142278.P3560155965702977673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n + A125169 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142278.P3560155965702977673

namespace A142278

/-- `or(1, p?[A154267(n)+A125169(n)-1])` -/
def P3560155965702977673.Spec : Prop :=
  ∀ n, P3560155965702977673.a n = A142278 (n + 1)

end A142278

/-! ## A142278.P899213170921566017

`record[A020639(43*(n+1)-14)]`
-/

namespace A142278.P899213170921566017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (43 * (n + 1) - 14)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142278.P899213170921566017

namespace A142278

/-- `record[A020639(43*(n+1)-14)]` -/
def P899213170921566017.Spec : Prop :=
  ∀ n, P899213170921566017.a n = A142278 (n + 1)

end A142278

/-! ## A142278.P12491158167620027421

`A000027(record[A020639(86*n+29)])`
-/

namespace A142278.P12491158167620027421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (86 * n + 29)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A142278.P12491158167620027421

namespace A142278

/-- `A000027(record[A020639(86*n+29)])` -/
def P12491158167620027421.Spec : Prop :=
  ∀ n, P12491158167620027421.a n = A142278 (n + 1)

end A142278

/-! ## A142278.P15495425738420420252

`record[A020639(A154266(n)+A125169(n)+2)+n%2]`
-/

namespace A142278.P15495425738420420252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A154266 n + A125169 n + 2).toNat + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142278.P15495425738420420252

namespace A142278

/-- `record[A020639(A154266(n)+A125169(n)+2)+n%2]` -/
def P15495425738420420252.Spec : Prop :=
  ∀ n, P15495425738420420252.a n = A142278 (n + 1)

end A142278

/-!
# A142279: Primes congruent to 30 mod 43.

The programs for A142279, the canonical program `A142279.P11287618654806749709` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142279 has offset 1).

The definition of A142279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1863 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142279.P11287618654806749709

`p?[43*n-13]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142279

/-- `p?[43*n-13]` -/
def P11287618654806749709.Spec : Prop :=
  ∀ n, P11287618654806749709.a n = A142279 (n + 1)

theorem P11287618654806749709.correct : P11287618654806749709.Spec := by
  intro n
  simp only [A142279, Nat.add_sub_cancel]

end A142279

/-! ## A142279.P16252644508887117798

`or(1, p?[A154267(n)+A125169(n)])`
-/

namespace A142279.P16252644508887117798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n + A125169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142279.P16252644508887117798

namespace A142279

/-- `or(1, p?[A154267(n)+A125169(n)])` -/
def P16252644508887117798.Spec : Prop :=
  ∀ n, P16252644508887117798.a n = A142279 (n + 1)

end A142279

/-! ## A142279.P10448103991143546016

`A000027(p?[A269100(n)+A156376(n)])`
-/

namespace A142279.P10448103991143546016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n + A156376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142279.P10448103991143546016

namespace A142279

/-- `A000027(p?[A269100(n)+A156376(n)])` -/
def P10448103991143546016.Spec : Prop :=
  ∀ n, P10448103991143546016.a n = A142279 (n + 1)

end A142279

/-! ## A142279.P8500621770282540378

`p?[A154267(n)+A125169(n)]%A017619(n)`
-/

namespace A142279.P8500621770282540378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n + A125169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017619 n)

end

end A142279.P8500621770282540378

namespace A142279

/-- `p?[A154267(n)+A125169(n)]%A017619(n)` -/
def P8500621770282540378.Spec : Prop :=
  ∀ n, P8500621770282540378.a n = A142279 (n + 1)

end A142279

/-! ## A142279.P10402860502142481242

`A000038(n+1)+p?[A154267(n)+A125169(n)]`
-/

namespace A142279.P10402860502142481242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n + A125169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142279.P10402860502142481242

namespace A142279

/-- `A000038(n+1)+p?[A154267(n)+A125169(n)]` -/
def P10402860502142481242.Spec : Prop :=
  ∀ n, P10402860502142481242.a n = A142279 (n + 1)

end A142279

/-! ## A142279.P8064788811283032731

`p?[A154267(n)+A125169(n)]+A052928(n)%2`
-/

namespace A142279.P8064788811283032731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n + A125169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A052928 n) 2

end

end A142279.P8064788811283032731

namespace A142279

/-- `p?[A154267(n)+A125169(n)]+A052928(n)%2` -/
def P8064788811283032731.Spec : Prop :=
  ∀ n, P8064788811283032731.a n = A142279 (n + 1)

end A142279

/-! ## A142279.P1044637404264789203

`A273750(n)%2*p?[A154267(n)+A125169(n)]`
-/

namespace A142279.P1044637404264789203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n + A125169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273750 n) 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142279.P1044637404264789203

namespace A142279

/-- `A273750(n)%2*p?[A154267(n)+A125169(n)]` -/
def P1044637404264789203.Spec : Prop :=
  ∀ n, P1044637404264789203.a n = A142279 (n + 1)

end A142279

/-! ## A142279.P8059087506429787041

`(3^A081603(n))%2*p?[A154267(n)+A125169(n)]`
-/

namespace A142279.P8059087506429787041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n + A125169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A081603 n : ℤ))) 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142279.P8059087506429787041

namespace A142279

/-- `(3^A081603(n))%2*p?[A154267(n)+A125169(n)]` -/
def P8059087506429787041.Spec : Prop :=
  ∀ n, P8059087506429787041.a n = A142279 (n + 1)

end A142279

/-! ## A142279.P16812407321890287620

`record[A020639(43*(n+1)+30)]`
-/

namespace A142279.P16812407321890287620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (43 * (n + 1) + 30)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142279.P16812407321890287620

namespace A142279

/-- `record[A020639(43*(n+1)+30)]` -/
def P16812407321890287620.Spec : Prop :=
  ∀ n, P16812407321890287620.a n = A142279 (n + 1)

end A142279

/-! ## A142279.P3399277664148004840

`A000265(p?[A269100(n)+A156376(n)])`
-/

namespace A142279.P3399277664148004840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n + A156376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142279.P3399277664148004840

namespace A142279

/-- `A000265(p?[A269100(n)+A156376(n)])` -/
def P3399277664148004840.Spec : Prop :=
  ∀ n, P3399277664148004840.a n = A142279 (n + 1)

end A142279

/-! ## A142279.P7857978480803943558

`A007913(p?[A269100(n)+A156376(n)])`
-/

namespace A142279.P7857978480803943558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 n + A156376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142279.P7857978480803943558

namespace A142279

/-- `A007913(p?[A269100(n)+A156376(n)])` -/
def P7857978480803943558.Spec : Prop :=
  ∀ n, P7857978480803943558.a n = A142279 (n + 1)

end A142279

/-! ## A142279.P14338595549721094860

`A007913(p?[A269044(n)+A128473(n+1)])`
-/

namespace A142279.P14338595549721094860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 n + A128473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142279.P14338595549721094860

namespace A142279

/-- `A007913(p?[A269044(n)+A128473(n+1)])` -/
def P14338595549721094860.Spec : Prop :=
  ∀ n, P14338595549721094860.a n = A142279 (n + 1)

end A142279

/-!
# A142280: Primes congruent to 31 mod 43.

The programs for A142280, the canonical program `A142280.P4564830932489439284` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142280 has offset 1).

The definition of A142280 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1858 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142280.P4564830932489439284

`p?[43*n-12]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142280

/-- `p?[43*n-12]` -/
def P4564830932489439284.Spec : Prop :=
  ∀ n, P4564830932489439284.a n = A142280 (n + 1)

theorem P4564830932489439284.correct : P4564830932489439284.Spec := by
  intro n
  simp only [A142280, Nat.add_sub_cancel]

end A142280

/-! ## A142280.P15473212281289050028

`A000027(p?[A124388(n)+A082285(n)])`
-/

namespace A142280.P15473212281289050028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n + A082285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142280.P15473212281289050028

namespace A142280

/-- `A000027(p?[A124388(n)+A082285(n)])` -/
def P15473212281289050028.Spec : Prop :=
  ∀ n, P15473212281289050028.a n = A142280 (n + 1)

end A142280

/-! ## A142280.P119754314312460456

`A000038(n+1)+p?[A124388(n)+A082285(n)]`
-/

namespace A142280.P119754314312460456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n + A082285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142280.P119754314312460456

namespace A142280

/-- `A000038(n+1)+p?[A124388(n)+A082285(n)]` -/
def P119754314312460456.Spec : Prop :=
  ∀ n, P119754314312460456.a n = A142280 (n + 1)

end A142280

/-! ## A142280.P7742463345977815760

`p?[A124388(n)+A082285(n)]%A059113(n+2)`
-/

namespace A142280.P7742463345977815760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n + A082285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A059113 (n + 2))

end

end A142280.P7742463345977815760

namespace A142280

/-- `p?[A124388(n)+A082285(n)]%A059113(n+2)` -/
def P7742463345977815760.Spec : Prop :=
  ∀ n, P7742463345977815760.a n = A142280 (n + 1)

end A142280

/-! ## A142280.P15794181046133637158

`record[A020639(A124388(n)+A082285(n))]`
-/

namespace A142280.P15794181046133637158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A124388 n + A082285 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142280.P15794181046133637158

namespace A142280

/-- `record[A020639(A124388(n)+A082285(n))]` -/
def P15794181046133637158.Spec : Prop :=
  ∀ n, P15794181046133637158.a n = A142280 (n + 1)

end A142280

/-! ## A142280.P16164911251370268693

`A000265(p?[A124388(n)+A082285(n)])`
-/

namespace A142280.P16164911251370268693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124388 n + A082285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142280.P16164911251370268693

namespace A142280

/-- `A000265(p?[A124388(n)+A082285(n)])` -/
def P16164911251370268693.Spec : Prop :=
  ∀ n, P16164911251370268693.a n = A142280 (n + 1)

end A142280

/-! ## A142280.P1678105456990219288

`record[A020639(A017041(5*n+3)+A004273(4*n+3))]`
-/

namespace A142280.P1678105456990219288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017041 (5 * n + 3) + A004273 (4 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142280.P1678105456990219288

namespace A142280

/-- `record[A020639(A017041(5*n+3)+A004273(4*n+3))]` -/
def P1678105456990219288.Spec : Prop :=
  ∀ n, P1678105456990219288.a n = A142280 (n + 1)

end A142280

/-! ## A142280.P4353627082547002607

`A125746(p?[A017041(5*n+3)+A004273(4*n+3)])`
-/

namespace A142280.P4353627082547002607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 (5 * n + 3) + A004273 (4 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142280.P4353627082547002607

namespace A142280

/-- `A125746(p?[A017041(5*n+3)+A004273(4*n+3)])` -/
def P4353627082547002607.Spec : Prop :=
  ∀ n, P4353627082547002607.a n = A142280 (n + 1)

end A142280

/-!
# A142281: Primes congruent to 32 mod 43.

The programs for A142281, the canonical program `A142281.P12265104987179317449` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142281 has offset 1).

The definition of A142281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1884 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142281.P12265104987179317449

`p?[43*n-11]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142281

/-- `p?[43*n-11]` -/
def P12265104987179317449.Spec : Prop :=
  ∀ n, P12265104987179317449.a n = A142281 (n + 1)

theorem P12265104987179317449.correct : P12265104987179317449.Spec := by
  intro n
  simp only [A142281, Nat.add_sub_cancel]

end A142281

/-! ## A142281.P15363389915125670699

`A000027(p?[A000027(n+1)+42*(n+1)+32])`
-/

namespace A142281.P15363389915125670699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + (42 * (n + 1) + 32 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142281.P15363389915125670699

namespace A142281

/-- `A000027(p?[A000027(n+1)+42*(n+1)+32])` -/
def P15363389915125670699.Spec : Prop :=
  ∀ n, P15363389915125670699.a n = A142281 (n + 1)

end A142281

/-! ## A142281.P17470835570558960945

`∑{p}[p?[A154267(n)+A125169(n)+2], #]`
-/

namespace A142281.P17470835570558960945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n + A125169 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142281.P17470835570558960945

namespace A142281

/-- `∑{p}[p?[A154267(n)+A125169(n)+2], #]` -/
def P17470835570558960945.Spec : Prop :=
  ∀ n, (P17470835570558960945.a n : ℤ) = A142281 (n + 1)

end A142281

/-! ## A142281.P14838381067742022390

`A000027(p?[A152691(n)-A139607(n)-4])`
-/

namespace A142281.P14838381067742022390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A139607 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142281.P14838381067742022390

namespace A142281

/-- `A000027(p?[A152691(n)-A139607(n)-4])` -/
def P14838381067742022390.Spec : Prop :=
  ∀ n, P14838381067742022390.a n = A142281 (n + 1)

end A142281

/-! ## A142281.P15570963065823365433

`p?[A154267(n)+A125169(n)+2]%A190377(n+1)`
-/

namespace A142281.P15570963065823365433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154267 n + A125169 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A190377 (n + 1))

end

end A142281.P15570963065823365433

namespace A142281

/-- `p?[A154267(n)+A125169(n)+2]%A190377(n+1)` -/
def P15570963065823365433.Spec : Prop :=
  ∀ n, P15570963065823365433.a n = A142281 (n + 1)

end A142281

/-! ## A142281.P1373125176667542156

`A000265(p?[A153080(3*n+2)+4*(n+1)])`
-/

namespace A142281.P1373125176667542156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153080 (3 * n + 2) + (4 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142281.P1373125176667542156

namespace A142281

/-- `A000265(p?[A153080(3*n+2)+4*(n+1)])` -/
def P1373125176667542156.Spec : Prop :=
  ∀ n, P1373125176667542156.a n = A142281 (n + 1)

end A142281

/-!
# A142282: Primes congruent to 33 mod 43.

The programs for A142282, the canonical program `A142282.P1088534415416808543` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142282 has offset 1).

The definition of A142282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1881 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142282.P1088534415416808543

`p?[43*n-10]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142282

/-- `p?[43*n-10]` -/
def P1088534415416808543.Spec : Prop :=
  ∀ n, P1088534415416808543.a n = A142282 (n + 1)

theorem P1088534415416808543.correct : P1088534415416808543.Spec := by
  intro n
  simp only [A142282, Nat.add_sub_cancel]

end A142282

/-! ## A142282.P984959415204997909

`A000027(p?[A125169(n)+A124388(n)])`
-/

namespace A142282.P984959415204997909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n + A124388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142282.P984959415204997909

namespace A142282

/-- `A000027(p?[A125169(n)+A124388(n)])` -/
def P984959415204997909.Spec : Prop :=
  ∀ n, P984959415204997909.a n = A142282 (n + 1)

end A142282

/-! ## A142282.P11722302685380548045

`p?[A125169(n)+A124388(n)]%A016961(n)`
-/

namespace A142282.P11722302685380548045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n + A124388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A016961 n)

end

end A142282.P11722302685380548045

namespace A142282

/-- `p?[A125169(n)+A124388(n)]%A016961(n)` -/
def P11722302685380548045.Spec : Prop :=
  ∀ n, P11722302685380548045.a n = A142282 (n + 1)

end A142282

/-! ## A142282.P2833250122549720409

`p?[A125169(n)+A124388(n)]/(A004442(n)-n)²`
-/

namespace A142282.P2833250122549720409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n + A124388 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / ((A004442 n - (n : ℤ)) ^ 2 : ℚ)

end

end A142282.P2833250122549720409

namespace A142282

/-- `p?[A125169(n)+A124388(n)]/(A004442(n)-n)²` -/
def P2833250122549720409.Spec : Prop :=
  ∀ n, P2833250122549720409.a n = (A142282 (n + 1) : ℚ)

end A142282

/-! ## A142282.P16412494445831520184

`A007814(2*n+1)+p?[A125169(n)+A124388(n)]`
-/

namespace A142282.P16412494445831520184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n + A124388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A142282.P16412494445831520184

namespace A142282

/-- `A007814(2*n+1)+p?[A125169(n)+A124388(n)]` -/
def P16412494445831520184.Spec : Prop :=
  ∀ n, P16412494445831520184.a n = A142282 (n + 1)

end A142282

/-! ## A142282.P4903470552271523519

`(2*n+1)/A005408(n)*p?[A125169(n)+A124388(n)]`
-/

namespace A142282.P4903470552271523519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n + A124388 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A005408 n : ℚ) * (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A142282.P4903470552271523519

namespace A142282

/-- `(2*n+1)/A005408(n)*p?[A125169(n)+A124388(n)]` -/
def P4903470552271523519.Spec : Prop :=
  ∀ n, P4903470552271523519.a n = (A142282 (n + 1) : ℚ)

end A142282

/-! ## A142282.P11398366644755625657

`A000265(p?[A125169(n)+A124388(n)])`
-/

namespace A142282.P11398366644755625657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n + A124388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142282.P11398366644755625657

namespace A142282

/-- `A000265(p?[A125169(n)+A124388(n)])` -/
def P11398366644755625657.Spec : Prop :=
  ∀ n, P11398366644755625657.a n = A142282 (n + 1)

end A142282

/-! ## A142282.P10074962542785272271

`A007913(p?[A125169(n)+A124388(n)])`
-/

namespace A142282.P10074962542785272271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n + A124388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142282.P10074962542785272271

namespace A142282

/-- `A007913(p?[A125169(n)+A124388(n)])` -/
def P10074962542785272271.Spec : Prop :=
  ∀ n, P10074962542785272271.a n = A142282 (n + 1)

end A142282

/-! ## A142282.P16766050888795695558

`A008472(p?[A125169(n)+A124388(n)])`
-/

namespace A142282.P16766050888795695558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125169 n + A124388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142282.P16766050888795695558

namespace A142282

/-- `A008472(p?[A125169(n)+A124388(n)])` -/
def P16766050888795695558.Spec : Prop :=
  ∀ n, P16766050888795695558.a n = A142282 (n + 1)

end A142282

/-! ## A142282.P10212780591283130139

`A000265(p?[A239128(n+1)+A017413(n)])`
-/

namespace A142282.P10212780591283130139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + A017413 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142282.P10212780591283130139

namespace A142282

/-- `A000265(p?[A239128(n+1)+A017413(n)])` -/
def P10212780591283130139.Spec : Prop :=
  ∀ n, P10212780591283130139.a n = A142282 (n + 1)

end A142282

/-! ## A142282.P3167156505037834220

`A007913(p?[A016993(4*n+3)+5*A016789(n)+1])`
-/

namespace A142282.P3167156505037834220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (4 * n + 3) + (5 * A016789 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142282.P3167156505037834220

namespace A142282

/-- `A007913(p?[A016993(4*n+3)+5*A016789(n)+1])` -/
def P3167156505037834220.Spec : Prop :=
  ∀ n, P3167156505037834220.a n = A142282 (n + 1)

end A142282

/-!
# A142283: Primes congruent to 34 mod 43.

The programs for A142283, the canonical program `A142283.P8153996233396252491` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142283 has offset 1).

The definition of A142283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1892 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142283.P8153996233396252491

`p?[43*n-9]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142283

/-- `p?[43*n-9]` -/
def P8153996233396252491.Spec : Prop :=
  ∀ n, P8153996233396252491.a n = A142283 (n + 1)

theorem P8153996233396252491.correct : P8153996233396252491.Spec := by
  intro n
  simp only [A142283, Nat.add_sub_cancel]

end A142283

/-! ## A142283.P12144407344618658821

`A000027(p?[A152691(n)-A139607(n)-2])`
-/

namespace A142283.P12144407344618658821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A139607 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142283.P12144407344618658821

namespace A142283

/-- `A000027(p?[A152691(n)-A139607(n)-2])` -/
def P12144407344618658821.Spec : Prop :=
  ∀ n, P12144407344618658821.a n = A142283 (n + 1)

end A142283

/-! ## A142283.P15083233902911409916

`p?[A152691(n)-A139607(n)-2]%A263205(n+1)`
-/

namespace A142283.P15083233902911409916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A139607 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A263205 (n + 1))

end

end A142283.P15083233902911409916

namespace A142283

/-- `p?[A152691(n)-A139607(n)-2]%A263205(n+1)` -/
def P15083233902911409916.Spec : Prop :=
  ∀ n, P15083233902911409916.a n = A142283 (n + 1)

end A142283

/-! ## A142283.P2712202495927709423

`p?[A152691(n)-A139607(n)-2]+A001489(n)+n`
-/

namespace A142283.P2712202495927709423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A139607 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (A001489 n + (n : ℤ))

end

end A142283.P2712202495927709423

namespace A142283

/-- `p?[A152691(n)-A139607(n)-2]+A001489(n)+n` -/
def P2712202495927709423.Spec : Prop :=
  ∀ n, P2712202495927709423.a n = A142283 (n + 1)

end A142283

/-! ## A142283.P11627973168930868985

`A000027(p?[A171141(n+1)+A026741(n)])`
-/

namespace A142283.P11627973168930868985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (n + 1) + A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142283.P11627973168930868985

namespace A142283

/-- `A000027(p?[A171141(n+1)+A026741(n)])` -/
def P11627973168930868985.Spec : Prop :=
  ∀ n, P11627973168930868985.a n = A142283 (n + 1)

end A142283

/-! ## A142283.P6368710878132161935

`A008472(p?[A171141(n+1)+A022998(n)])`
-/

namespace A142283.P6368710878132161935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (n + 1) + A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142283.P6368710878132161935

namespace A142283

/-- `A008472(p?[A171141(n+1)+A022998(n)])` -/
def P6368710878132161935.Spec : Prop :=
  ∀ n, P6368710878132161935.a n = A142283 (n + 1)

end A142283

/-! ## A142283.P12922847559875130946

`A008472(p?[A171141(n+1)+A026741(n)])`
-/

namespace A142283.P12922847559875130946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171141 (n + 1) + A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142283.P12922847559875130946

namespace A142283

/-- `A008472(p?[A171141(n+1)+A026741(n)])` -/
def P12922847559875130946.Spec : Prop :=
  ∀ n, P12922847559875130946.a n = A142283 (n + 1)

end A142283

/-! ## A142283.P4814405687606527185

`A008472(p?[A195140(n)+A171141(n+1)])`
-/

namespace A142283.P4814405687606527185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 n + A171141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142283.P4814405687606527185

namespace A142283

/-- `A008472(p?[A195140(n)+A171141(n+1)])` -/
def P4814405687606527185.Spec : Prop :=
  ∀ n, P4814405687606527185.a n = A142283 (n + 1)

end A142283

/-!
# A142284: Primes congruent to 35 mod 43.

The programs for A142284, the canonical program `A142284.P2727108731763885567` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142284 has offset 1).

The definition of A142284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1886 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142284.P2727108731763885567

`p?[43*n-8]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142284

/-- `p?[43*n-8]` -/
def P2727108731763885567.Spec : Prop :=
  ∀ n, P2727108731763885567.a n = A142284 (n + 1)

theorem P2727108731763885567.correct : P2727108731763885567.Spec := by
  intro n
  simp only [A142284, Nat.add_sub_cancel]

end A142284

/-! ## A142284.P4469341485834894524

`∏{d}[p?[A152691(n+2)-A139607(n)], #]`
-/

namespace A142284.P4469341485834894524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 (n + 2) - A139607 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A142284.P4469341485834894524

namespace A142284

/-- `∏{d}[p?[A152691(n+2)-A139607(n)], #]` -/
def P4469341485834894524.Spec : Prop :=
  ∀ n, (P4469341485834894524.a n : ℤ) = A142284 (n + 1)

end A142284

/-! ## A142284.P16397965077592482692

`A000027(p?[A305068(n+1)-A017401(n)])`
-/

namespace A142284.P16397965077592482692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305068 (n + 1) - A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142284.P16397965077592482692

namespace A142284

/-- `A000027(p?[A305068(n+1)-A017401(n)])` -/
def P16397965077592482692.Spec : Prop :=
  ∀ n, P16397965077592482692.a n = A142284 (n + 1)

end A142284

/-! ## A142284.P14441748027023396658

`p?[A305068(n+1)-A017401(n)]%A069277(n+1)`
-/

namespace A142284.P14441748027023396658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305068 (n + 1) - A017401 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A069277 (n + 1))

end

end A142284.P14441748027023396658

namespace A142284

/-- `p?[A305068(n+1)-A017401(n)]%A069277(n+1)` -/
def P14441748027023396658.Spec : Prop :=
  ∀ n, P14441748027023396658.a n = A142284 (n + 1)

end A142284

/-! ## A142284.P942612524428334664

`p?[A305068(n+1)-A017401(n)]/A002061(n)%2`
-/

namespace A142284.P942612524428334664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305068 (n + 1) - A017401 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Int.tmod (A002061 n) 2 : ℚ)

end

end A142284.P942612524428334664

namespace A142284

/-- `p?[A305068(n+1)-A017401(n)]/A002061(n)%2` -/
def P942612524428334664.Spec : Prop :=
  ∀ n, P942612524428334664.a n = (A142284 (n + 1) : ℚ)

end A142284

/-! ## A142284.P9308943298116305616

`A000265(p?[A174029(n)+A004768(n)])`
-/

namespace A142284.P9308943298116305616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174029 n + A004768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142284.P9308943298116305616

namespace A142284

/-- `A000265(p?[A174029(n)+A004768(n)])` -/
def P9308943298116305616.Spec : Prop :=
  ∀ n, P9308943298116305616.a n = A142284 (n + 1)

end A142284

/-! ## A142284.P8089913786255743761

`A001414(p?[A174029(n)+A004768(n)])`
-/

namespace A142284.P8089913786255743761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174029 n + A004768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142284.P8089913786255743761

namespace A142284

/-- `A001414(p?[A174029(n)+A004768(n)])` -/
def P8089913786255743761.Spec : Prop :=
  ∀ n, P8089913786255743761.a n = A142284 (n + 1)

end A142284

/-! ## A142284.P669436340697706887

`A007947(p?[A174029(n)+A004768(n)])`
-/

namespace A142284.P669436340697706887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174029 n + A004768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142284.P669436340697706887

namespace A142284

/-- `A007947(p?[A174029(n)+A004768(n)])` -/
def P669436340697706887.Spec : Prop :=
  ∀ n, P669436340697706887.a n = A142284 (n + 1)

end A142284

/-! ## A142284.P11777447411074922742

`A034699(p?[A174029(n)+A004768(n)])`
-/

namespace A142284.P11777447411074922742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174029 n + A004768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142284.P11777447411074922742

namespace A142284

/-- `A034699(p?[A174029(n)+A004768(n)])` -/
def P11777447411074922742.Spec : Prop :=
  ∀ n, P11777447411074922742.a n = A142284 (n + 1)

end A142284

/-!
# A142285: Primes congruent to 36 mod 43.

The programs for A142285, the canonical program `A142285.P2831431117663515127` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142285 has offset 1).

The definition of A142285 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1882 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142285.P2831431117663515127

`p?[43*n-7]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142285

/-- `p?[43*n-7]` -/
def P2831431117663515127.Spec : Prop :=
  ∀ n, P2831431117663515127.a n = A142285 (n + 1)

theorem P2831431117663515127.correct : P2831431117663515127.Spec := by
  intro n
  simp only [A142285, Nat.add_sub_cancel]

end A142285

/-! ## A142285.P836846385731396333

`or(1, p?[A152691(n)-A139607(n)])`
-/

namespace A142285.P836846385731396333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A139607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142285.P836846385731396333

namespace A142285

/-- `or(1, p?[A152691(n)-A139607(n)])` -/
def P836846385731396333.Spec : Prop :=
  ∀ n, P836846385731396333.a n = A142285 (n + 1)

end A142285

/-! ## A142285.P2436720088671130105

`or(1, p?[A239128(n+1)+A017449(n)])`
-/

namespace A142285.P2436720088671130105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + A017449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142285.P2436720088671130105

namespace A142285

/-- `or(1, p?[A239128(n+1)+A017449(n)])` -/
def P2436720088671130105.Spec : Prop :=
  ∀ n, P2436720088671130105.a n = A142285 (n + 1)

end A142285

/-! ## A142285.P10184889191222260715

`A000027(p?[A152691(n)-A139607(n)])`
-/

namespace A142285.P10184889191222260715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A139607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142285.P10184889191222260715

namespace A142285

/-- `A000027(p?[A152691(n)-A139607(n)])` -/
def P10184889191222260715.Spec : Prop :=
  ∀ n, P10184889191222260715.a n = A142285 (n + 1)

end A142285

/-! ## A142285.P946405757529147940

`record[A006530(86*(n+1)-7)]`
-/

namespace A142285.P946405757529147940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (86 * (n + 1) - 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142285.P946405757529147940

namespace A142285

/-- `record[A006530(86*(n+1)-7)]` -/
def P946405757529147940.Spec : Prop :=
  ∀ n, P946405757529147940.a n = A142285 (n + 1)

end A142285

/-! ## A142285.P13907099010618787096

`record[A020639(86*(n+1)-7)]`
-/

namespace A142285.P13907099010618787096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (86 * (n + 1) - 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142285.P13907099010618787096

namespace A142285

/-- `record[A020639(86*(n+1)-7)]` -/
def P13907099010618787096.Spec : Prop :=
  ∀ n, P13907099010618787096.a n = A142285 (n + 1)

end A142285

/-! ## A142285.P11907440502728817881

`A000265(p?[A152691(n)-A139607(n)])`
-/

namespace A142285.P11907440502728817881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A139607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142285.P11907440502728817881

namespace A142285

/-- `A000265(p?[A152691(n)-A139607(n)])` -/
def P11907440502728817881.Spec : Prop :=
  ∀ n, P11907440502728817881.a n = A142285 (n + 1)

end A142285

/-! ## A142285.P8280010373463324839

`A001414(p?[A152691(n)-A139607(n)])`
-/

namespace A142285.P8280010373463324839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A139607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142285.P8280010373463324839

namespace A142285

/-- `A001414(p?[A152691(n)-A139607(n)])` -/
def P8280010373463324839.Spec : Prop :=
  ∀ n, P8280010373463324839.a n = A142285 (n + 1)

end A142285

/-! ## A142285.P18034520045512020480

`A007913(p?[A152691(n)-A139607(n)])`
-/

namespace A142285.P18034520045512020480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A139607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142285.P18034520045512020480

namespace A142285

/-- `A007913(p?[A152691(n)-A139607(n)])` -/
def P18034520045512020480.Spec : Prop :=
  ∀ n, P18034520045512020480.a n = A142285 (n + 1)

end A142285

/-! ## A142285.P16921524634694743799

`A008475(p?[A152691(n)-A139607(n)])`
-/

namespace A142285.P16921524634694743799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A139607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142285.P16921524634694743799

namespace A142285

/-- `A008475(p?[A152691(n)-A139607(n)])` -/
def P16921524634694743799.Spec : Prop :=
  ∀ n, P16921524634694743799.a n = A142285 (n + 1)

end A142285

/-! ## A142285.P960601055732708631

`A000265(p?[A239128(n+1)+A017449(n)])`
-/

namespace A142285.P960601055732708631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + A017449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142285.P960601055732708631

namespace A142285

/-- `A000265(p?[A239128(n+1)+A017449(n)])` -/
def P960601055732708631.Spec : Prop :=
  ∀ n, P960601055732708631.a n = A142285 (n + 1)

end A142285

/-! ## A142285.P1256053943762364993

`A001414(p?[A239128(n+1)+A017449(n)])`
-/

namespace A142285.P1256053943762364993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + A017449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142285.P1256053943762364993

namespace A142285

/-- `A001414(p?[A239128(n+1)+A017449(n)])` -/
def P1256053943762364993.Spec : Prop :=
  ∀ n, P1256053943762364993.a n = A142285 (n + 1)

end A142285

/-! ## A142285.P7040863341853758189

`A007913(p?[A239128(n+1)+A017449(n)])`
-/

namespace A142285.P7040863341853758189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239128 (n + 1) + A017449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142285.P7040863341853758189

namespace A142285

/-- `A007913(p?[A239128(n+1)+A017449(n)])` -/
def P7040863341853758189.Spec : Prop :=
  ∀ n, P7040863341853758189.a n = A142285 (n + 1)

end A142285

/-! ## A142285.P3363203566865174931

`A318456(p?[A152691(n)-A139607(n)])`
-/

namespace A142285.P3363203566865174931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A139607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318456 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142285.P3363203566865174931

namespace A142285

/-- `A318456(p?[A152691(n)-A139607(n)])` -/
def P3363203566865174931.Spec : Prop :=
  ∀ n, P3363203566865174931.a n = A142285 (n + 1)

end A142285

/-!
# A142286: Primes congruent to 37 mod 43.

The programs for A142286, the canonical program `A142286.P13052994165343232711` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142286 has offset 1).

The definition of A142286 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1887 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142286.P13052994165343232711

`p?[43*n-6]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142286

/-- `p?[43*n-6]` -/
def P13052994165343232711.Spec : Prop :=
  ∀ n, P13052994165343232711.a n = A142286 (n + 1)

theorem P13052994165343232711.correct : P13052994165343232711.Spec := by
  intro n
  simp only [A142286, Nat.add_sub_cancel]

end A142286

/-! ## A142286.P11550026312584511880

`∏{p}[p?[A161705(n+2)+A008607(n)], #]`
-/

namespace A142286.P11550026312584511880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 (n + 2) + A008607 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142286.P11550026312584511880

namespace A142286

/-- `∏{p}[p?[A161705(n+2)+A008607(n)], #]` -/
def P11550026312584511880.Spec : Prop :=
  ∀ n, (P11550026312584511880.a n : ℤ) = A142286 (n + 1)

end A142286

/-! ## A142286.P5603836406122685691

`∏{p}[p?[A152691(n)-A139607(n)+1], #]`
-/

namespace A142286.P5603836406122685691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A139607 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142286.P5603836406122685691

namespace A142286

/-- `∏{p}[p?[A152691(n)-A139607(n)+1], #]` -/
def P5603836406122685691.Spec : Prop :=
  ∀ n, (P5603836406122685691.a n : ℤ) = A142286 (n + 1)

end A142286

/-! ## A142286.P481282725821149563

`p?[A152691(n)-A139607(n)+1]%A345507(n+1)`
-/

namespace A142286.P481282725821149563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A139607 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A345507 (n + 1))

end

end A142286.P481282725821149563

namespace A142286

/-- `p?[A152691(n)-A139607(n)+1]%A345507(n+1)` -/
def P481282725821149563.Spec : Prop :=
  ∀ n, P481282725821149563.a n = A142286 (n + 1)

end A142286

/-! ## A142286.P12433967651471286108

`record[A020639(43*(n+1)-6)]`
-/

namespace A142286.P12433967651471286108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (43 * (n + 1) - 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142286.P12433967651471286108

namespace A142286

/-- `record[A020639(43*(n+1)-6)]` -/
def P12433967651471286108.Spec : Prop :=
  ∀ n, P12433967651471286108.a n = A142286 (n + 1)

end A142286

/-!
# A142287: Primes congruent to 38 mod 43.

The programs for A142287, the canonical program `A142287.P10298448669598223222` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142287 has offset 1).

The definition of A142287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1876 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142287.P10298448669598223222

`p?[43*n-5]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142287

/-- `p?[43*n-5]` -/
def P10298448669598223222.Spec : Prop :=
  ∀ n, P10298448669598223222.a n = A142287 (n + 1)

theorem P10298448669598223222.correct : P10298448669598223222.Spec := by
  intro n
  simp only [A142287, Nat.add_sub_cancel]

end A142287

/-! ## A142287.P3969089737750901562

`∏{p}[p?[A152691(n)-A139607(n)+2], #]`
-/

namespace A142287.P3969089737750901562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A139607 n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142287.P3969089737750901562

namespace A142287

/-- `∏{p}[p?[A152691(n)-A139607(n)+2], #]` -/
def P3969089737750901562.Spec : Prop :=
  ∀ n, (P3969089737750901562.a n : ℤ) = A142287 (n + 1)

end A142287

/-! ## A142287.P17522558364399444073

`A000027(p?[A152691(n)-A139607(n)+2])`
-/

namespace A142287.P17522558364399444073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A139607 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142287.P17522558364399444073

namespace A142287

/-- `A000027(p?[A152691(n)-A139607(n)+2])` -/
def P17522558364399444073.Spec : Prop :=
  ∀ n, P17522558364399444073.a n = A142287 (n + 1)

end A142287

/-! ## A142287.P9593562983716025157

`p?[A152691(n)-A139607(n)+2]/A000040(n+2)%2`
-/

namespace A142287.P9593562983716025157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A139607 n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Int.tmod (A000040 (n + 2)) 2 : ℚ)

end

end A142287.P9593562983716025157

namespace A142287

/-- `p?[A152691(n)-A139607(n)+2]/A000040(n+2)%2` -/
def P9593562983716025157.Spec : Prop :=
  ∀ n, P9593562983716025157.a n = (A142287 (n + 1) : ℚ)

end A142287

/-! ## A142287.P7315228902950185794

`p?[A152691(n)-A139607(n)+2]%A117151(n+1)`
-/

namespace A142287.P7315228902950185794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A139607 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A117151 (n + 1))

end

end A142287.P7315228902950185794

namespace A142287

/-- `p?[A152691(n)-A139607(n)+2]%A117151(n+1)` -/
def P7315228902950185794.Spec : Prop :=
  ∀ n, P7315228902950185794.a n = A142287 (n + 1)

end A142287

/-! ## A142287.P17105007653221353922

`A000265(p?[A152691(n)-A139607(n)+2])`
-/

namespace A142287.P17105007653221353922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A139607 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142287.P17105007653221353922

namespace A142287

/-- `A000265(p?[A152691(n)-A139607(n)+2])` -/
def P17105007653221353922.Spec : Prop :=
  ∀ n, P17105007653221353922.a n = A142287 (n + 1)

end A142287

/-! ## A142287.P15124461721332165631

`A001414(p?[A152691(n)-A139607(n)+2])`
-/

namespace A142287.P15124461721332165631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A139607 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142287.P15124461721332165631

namespace A142287

/-- `A001414(p?[A152691(n)-A139607(n)+2])` -/
def P15124461721332165631.Spec : Prop :=
  ∀ n, P15124461721332165631.a n = A142287 (n + 1)

end A142287

/-! ## A142287.P1683748848435316270

`A007947(p?[A152691(n)-A139607(n)+2])`
-/

namespace A142287.P1683748848435316270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A139607 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142287.P1683748848435316270

namespace A142287

/-- `A007947(p?[A152691(n)-A139607(n)+2])` -/
def P1683748848435316270.Spec : Prop :=
  ∀ n, P1683748848435316270.a n = A142287 (n + 1)

end A142287

/-!
# A142288: Primes congruent to 39 mod 43.

The programs for A142288, the canonical program `A142288.P13849969014959642047` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142288 has offset 1).

The definition of A142288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1866 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142288.P13849969014959642047

`p?[43*n-4]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142288

/-- `p?[43*n-4]` -/
def P13849969014959642047.Spec : Prop :=
  ∀ n, P13849969014959642047.a n = A142288 (n + 1)

theorem P13849969014959642047.correct : P13849969014959642047.Spec := by
  intro n
  simp only [A142288, Nat.add_sub_cancel]

end A142288

/-! ## A142288.P17064642646461868981

`abs(2-p?[A044102(n+1)+A017017(n)])+2`
-/

namespace A142288.P17064642646461868981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 (n + 1) + A017017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)| + 2

end

end A142288.P17064642646461868981

namespace A142288

/-- `abs(2-p?[A044102(n+1)+A017017(n)])+2` -/
def P17064642646461868981.Spec : Prop :=
  ∀ n, P17064642646461868981.a n = A142288 (n + 1)

end A142288

/-! ## A142288.P5545969603027576501

`A000027(p?[A174312(n+1)+A017473(n)])`
-/

namespace A142288.P5545969603027576501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 (n + 1) + A017473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142288.P5545969603027576501

namespace A142288

/-- `A000027(p?[A174312(n+1)+A017473(n)])` -/
def P5545969603027576501.Spec : Prop :=
  ∀ n, P5545969603027576501.a n = A142288 (n + 1)

end A142288

/-! ## A142288.P11759356396609188013

`A000027(p?[A152691(n)-A139607(n)+3])`
-/

namespace A142288.P11759356396609188013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A139607 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142288.P11759356396609188013

namespace A142288

/-- `A000027(p?[A152691(n)-A139607(n)+3])` -/
def P11759356396609188013.Spec : Prop :=
  ∀ n, P11759356396609188013.a n = A142288 (n + 1)

end A142288

/-! ## A142288.P4032828355548432039

`A000027(p?[A269044(n+1)+A156376(n)]+1)-1`
-/

namespace A142288.P4032828355548432039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269044 (n + 1) + A156376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat - 1

end

end A142288.P4032828355548432039

namespace A142288

/-- `A000027(p?[A269044(n+1)+A156376(n)]+1)-1` -/
def P4032828355548432039.Spec : Prop :=
  ∀ n, P4032828355548432039.a n = A142288 (n + 1)

end A142288

/-! ## A142288.P8844001014564489101

`p?[A174312(n+1)+A017473(n)]%A002997(n+1)`
-/

namespace A142288.P8844001014564489101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174312 (n + 1) + A017473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A002997 (n + 1))

end

end A142288.P8844001014564489101

namespace A142288

/-- `p?[A174312(n+1)+A017473(n)]%A002997(n+1)` -/
def P8844001014564489101.Spec : Prop :=
  ∀ n, P8844001014564489101.a n = A142288 (n + 1)

end A142288

/-!
# A142289: Primes congruent to 40 mod 43.

The programs for A142289, the canonical program `A142289.P4114709481379776997` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142289 has offset 1).

The definition of A142289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1861 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142289.P4114709481379776997

`p?[43*n-3]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142289

/-- `p?[43*n-3]` -/
def P4114709481379776997.Spec : Prop :=
  ∀ n, P4114709481379776997.a n = A142289 (n + 1)

theorem P4114709481379776997.correct : P4114709481379776997.Spec := by
  intro n
  simp only [A142289, Nat.add_sub_cancel]

end A142289

/-! ## A142289.P16853232384100613513

`or(1, p?[A158123(n+1)+A016861(n)])`
-/

namespace A142289.P16853232384100613513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158123 (n + 1) + A016861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142289.P16853232384100613513

namespace A142289

/-- `or(1, p?[A158123(n+1)+A016861(n)])` -/
def P16853232384100613513.Spec : Prop :=
  ∀ n, P16853232384100613513.a n = A142289 (n + 1)

end A142289

/-! ## A142289.P6726006482969563261

`p?[A158123(n+1)+A016861(n)]%A124489(n+1)`
-/

namespace A142289.P6726006482969563261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158123 (n + 1) + A016861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A124489 (n + 1))

end

end A142289.P6726006482969563261

namespace A142289

/-- `p?[A158123(n+1)+A016861(n)]%A124489(n+1)` -/
def P6726006482969563261.Spec : Prop :=
  ∀ n, P6726006482969563261.a n = A142289 (n + 1)

end A142289

/-! ## A142289.P15104584701139692592

`A000027(p?[A158123(n+1)+A016861(n)])`
-/

namespace A142289.P15104584701139692592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158123 (n + 1) + A016861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142289.P15104584701139692592

namespace A142289

/-- `A000027(p?[A158123(n+1)+A016861(n)])` -/
def P15104584701139692592.Spec : Prop :=
  ∀ n, P15104584701139692592.a n = A142289 (n + 1)

end A142289

/-! ## A142289.P7876847860141342370

`A000027(p?[A161705(n+2)+A008607(n)+3])`
-/

namespace A142289.P7876847860141342370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161705 (n + 2) + (A008607 n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142289.P7876847860141342370

namespace A142289

/-- `A000027(p?[A161705(n+2)+A008607(n)+3])` -/
def P7876847860141342370.Spec : Prop :=
  ∀ n, P7876847860141342370.a n = A142289 (n + 1)

end A142289

/-! ## A142289.P17954267410955866251

`record[A006530(86*(n+1)-3)]`
-/

namespace A142289.P17954267410955866251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (86 * (n + 1) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142289.P17954267410955866251

namespace A142289

/-- `record[A006530(86*(n+1)-3)]` -/
def P17954267410955866251.Spec : Prop :=
  ∀ n, P17954267410955866251.a n = A142289 (n + 1)

end A142289

/-! ## A142289.P4576316351564867700

`record[A020639(86*(n+1)-3)]`
-/

namespace A142289.P4576316351564867700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (86 * (n + 1) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142289.P4576316351564867700

namespace A142289

/-- `record[A020639(86*(n+1)-3)]` -/
def P4576316351564867700.Spec : Prop :=
  ∀ n, P4576316351564867700.a n = A142289 (n + 1)

end A142289

/-!
# A142290: Primes congruent to 41 mod 43.

The programs for A142290, the canonical program `A142290.P4566757203383785873` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142290 has offset 1).

The definition of A142290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1878 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142290.P4566757203383785873

`p?[43*n-2]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142290

/-- `p?[43*n-2]` -/
def P4566757203383785873.Spec : Prop :=
  ∀ n, P4566757203383785873.a n = A142290 (n + 1)

theorem P4566757203383785873.correct : P4566757203383785873.Spec := by
  intro n
  simp only [A142290, Nat.add_sub_cancel]

end A142290

/-! ## A142290.P2361318818746482076

`or(1, p?[A152691(n)-A139607(n)+5])`
-/

namespace A142290.P2361318818746482076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152691 n - A139607 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A142290.P2361318818746482076

namespace A142290

/-- `or(1, p?[A152691(n)-A139607(n)+5])` -/
def P2361318818746482076.Spec : Prop :=
  ∀ n, P2361318818746482076.a n = A142290 (n + 1)

end A142290

/-! ## A142290.P14664499803647112407

`abs(p?[A044102(n+1)+A017041(n)]-1)+1`
-/

namespace A142290.P14664499803647112407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 (n + 1) + A017041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1| + 1

end

end A142290.P14664499803647112407

namespace A142290

/-- `abs(p?[A044102(n+1)+A017041(n)]-1)+1` -/
def P14664499803647112407.Spec : Prop :=
  ∀ n, P14664499803647112407.a n = A142290 (n + 1)

end A142290

/-! ## A142290.P4980511956805928916

`A000027(p?[A269100(n+1)+A128468(n)])`
-/

namespace A142290.P4980511956805928916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 (n + 1) + A128468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142290.P4980511956805928916

namespace A142290

/-- `A000027(p?[A269100(n+1)+A128468(n)])` -/
def P4980511956805928916.Spec : Prop :=
  ∀ n, P4980511956805928916.a n = A142290 (n + 1)

end A142290

/-! ## A142290.P14935690427045001834

`A000027(p?[A044102(n)+A017041(n)-7])`
-/

namespace A142290.P14935690427045001834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 n + A017041 n - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142290.P14935690427045001834

namespace A142290

/-- `A000027(p?[A044102(n)+A017041(n)-7])` -/
def P14935690427045001834.Spec : Prop :=
  ∀ n, P14935690427045001834.a n = A142290 (n + 1)

end A142290

/-! ## A142290.P6289957099893935235

`record[A020639(43*(n+1)-2)]`
-/

namespace A142290.P6289957099893935235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (43 * (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142290.P6289957099893935235

namespace A142290

/-- `record[A020639(43*(n+1)-2)]` -/
def P6289957099893935235.Spec : Prop :=
  ∀ n, P6289957099893935235.a n = A142290 (n + 1)

end A142290

/-! ## A142290.P9437033382309079853

`record[A008472(A008472(43*(n+1)-2))]`
-/

namespace A142290.P9437033382309079853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A008472 (43 * (n + 1) - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A142290.P9437033382309079853

namespace A142290

/-- `record[A008472(A008472(43*(n+1)-2))]` -/
def P9437033382309079853.Spec : Prop :=
  ∀ n, P9437033382309079853.a n = A142290 (n + 1)

end A142290

/-!
# A142291: Primes congruent to 42 mod 43.

The programs for A142291, the canonical program `A142291.P6826586550507312059` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142291 has offset 1).

The definition of A142291 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1845 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142291.P6826586550507312059

`p?[43*n-1]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142291

/-- `p?[43*n-1]` -/
def P6826586550507312059.Spec : Prop :=
  ∀ n, P6826586550507312059.a n = A142291 (n + 1)

theorem P6826586550507312059.correct : P6826586550507312059.Spec := by
  intro n
  simp only [A142291, Nat.add_sub_cancel]

end A142291

/-! ## A142291.P10261716770166702499

`or(1, p?[42*(n+1)+n])`
-/

namespace A142291.P10261716770166702499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  42 * (n + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142291.P10261716770166702499

namespace A142291

/-- `or(1, p?[42*(n+1)+n])` -/
def P10261716770166702499.Spec : Prop :=
  ∀ n, (P10261716770166702499.a n : ℤ) = A142291 (n + 1)

end A142291

/-! ## A142291.P10269311029119971087

`∏{p}[p?[42*(n+1)+n], #]`
-/

namespace A142291.P10269311029119971087
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  42 * (n + 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A142291.P10269311029119971087

namespace A142291

/-- `∏{p}[p?[42*(n+1)+n], #]` -/
def P10269311029119971087.Spec : Prop :=
  ∀ n, (P10269311029119971087.a n : ℤ) = A142291 (n + 1)

end A142291

/-! ## A142291.P12730931761198952934

`p?[42*(n+1)+n]*A059841(2*n)`
-/

namespace A142291.P12730931761198952934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  42 * (n + 1) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) * A059841 (2 * n)

end

end A142291.P12730931761198952934

namespace A142291

/-- `p?[42*(n+1)+n]*A059841(2*n)` -/
def P12730931761198952934.Spec : Prop :=
  ∀ n, P12730931761198952934.a n = A142291 (n + 1)

end A142291

/-! ## A142291.P11063064469553313214

`p?[42*(n+1)+n]*A057521(A096916(n+1))`
-/

namespace A142291.P11063064469553313214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  42 * (n + 1) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) * A057521 (A096916 (n + 1)).toNat

end

end A142291.P11063064469553313214

namespace A142291

/-- `p?[42*(n+1)+n]*A057521(A096916(n+1))` -/
def P11063064469553313214.Spec : Prop :=
  ∀ n, P11063064469553313214.a n = A142291 (n + 1)

end A142291

/-! ## A142291.P8515788145818958204

`A000027(p?[42*(n+1)+n])`
-/

namespace A142291.P8515788145818958204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  42 * (n + 1) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142291.P8515788145818958204

namespace A142291

/-- `A000027(p?[42*(n+1)+n])` -/
def P8515788145818958204.Spec : Prop :=
  ∀ n, P8515788145818958204.a n = A142291 (n + 1)

end A142291

/-! ## A142291.P14671864640755964058

`A000265(p?[42*(n+1)+n])`
-/

namespace A142291.P14671864640755964058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  42 * (n + 1) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142291.P14671864640755964058

namespace A142291

/-- `A000265(p?[42*(n+1)+n])` -/
def P14671864640755964058.Spec : Prop :=
  ∀ n, P14671864640755964058.a n = A142291 (n + 1)

end A142291

/-! ## A142291.P16349212137801984280

`A001222(A007700(n+2))*p?[42*(n+1)+n]`
-/

namespace A142291.P16349212137801984280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  42 * (n + 1) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007700 (n + 2)).toNat * (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A142291.P16349212137801984280

namespace A142291

/-- `A001222(A007700(n+2))*p?[42*(n+1)+n]` -/
def P16349212137801984280.Spec : Prop :=
  ∀ n, P16349212137801984280.a n = A142291 (n + 1)

end A142291

/-!
# A142292: Primes congruent to 1 mod 44.

The programs for A142292, the canonical program `A142292.P6431416426378724437` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142292 has offset 1).

The definition of A142292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3903 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142292.P6431416426378724437

`p?[44*n+1]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142292

/-- `p?[44*n+1]` -/
def P6431416426378724437.Spec : Prop :=
  ∀ n, (P6431416426378724437.a n : ℤ) = A142292 (n + 1)

theorem P6431416426378724437.correct : P6431416426378724437.Spec := by
  intro n
  simp only [A142292, Nat.add_sub_cancel]

end A142292

/-! ## A142292.P15403148778378589741

`or(1, p?[or(1, 44*n)])`
-/

namespace A142292.P15403148778378589741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (44 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142292.P15403148778378589741

namespace A142292

/-- `or(1, p?[or(1, 44*n)])` -/
def P15403148778378589741.Spec : Prop :=
  ∀ n, (P15403148778378589741.a n : ℤ) = A142292 (n + 1)

end A142292

/-! ## A142292.P6694313090507303655

`∩[A008846(n+1), A141849(n+1)]`
-/

namespace A142292.P6694313090507303655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142292.P6694313090507303655

namespace A142292

/-- `∩[A008846(n+1), A141849(n+1)]` -/
def P6694313090507303655.Spec : Prop :=
  ∀ n, (P6694313090507303655.a n : ℤ) = A142292 (n + 1)

end A142292

/-! ## A142292.P14700303892711289900

`∩[A141182(n+1), A141849(n+1)]`
-/

namespace A142292.P14700303892711289900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142292.P14700303892711289900

namespace A142292

/-- `∩[A141182(n+1), A141849(n+1)]` -/
def P14700303892711289900.Spec : Prop :=
  ∀ n, (P14700303892711289900.a n : ℤ) = A142292 (n + 1)

end A142292

/-! ## A142292.P3824088444860510827

`∩[A141182(n+1), A215390(n+1)]`
-/

namespace A142292.P3824088444860510827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142292.P3824088444860510827

namespace A142292

/-- `∩[A141182(n+1), A215390(n+1)]` -/
def P3824088444860510827.Spec : Prop :=
  ∀ n, (P3824088444860510827.a n : ℤ) = A142292 (n + 1)

end A142292

/-! ## A142292.P13271298013365408783

`∩[A141182(n+1), A352494(n+1)]`
-/

namespace A142292.P13271298013365408783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142292.P13271298013365408783

namespace A142292

/-- `∩[A141182(n+1), A352494(n+1)]` -/
def P13271298013365408783.Spec : Prop :=
  ∀ n, (P13271298013365408783.a n : ℤ) = A142292 (n + 1)

end A142292

/-! ## A142292.P12959137705485585660

`∩[A141849(n+1), A191218(n+1)]`
-/

namespace A142292.P12959137705485585660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142292.P12959137705485585660

namespace A142292

/-- `∩[A141849(n+1), A191218(n+1)]` -/
def P12959137705485585660.Spec : Prop :=
  ∀ n, (P12959137705485585660.a n : ℤ) = A142292 (n + 1)

end A142292

/-! ## A142292.P6731255001419230510

`∩[A002144(n+1), A141849(n+1)]`
-/

namespace A142292.P6731255001419230510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142292.P6731255001419230510

namespace A142292

/-- `∩[A002144(n+1), A141849(n+1)]` -/
def P6731255001419230510.Spec : Prop :=
  ∀ n, (P6731255001419230510.a n : ℤ) = A142292 (n + 1)

end A142292

/-! ## A142292.P17033543506022214058

`∩[A002313(n+1), A141849(n+1)]`
-/

namespace A142292.P17033543506022214058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142292.P17033543506022214058

namespace A142292

/-- `∩[A002313(n+1), A141849(n+1)]` -/
def P17033543506022214058.Spec : Prop :=
  ∀ n, (P17033543506022214058.a n : ℤ) = A142292 (n + 1)

end A142292

/-! ## A142292.P6181896954884408744

`∩[A038881(n+1), A141849(n+1)]`
-/

namespace A142292.P6181896954884408744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142292.P6181896954884408744

namespace A142292

/-- `∩[A038881(n+1), A141849(n+1)]` -/
def P6181896954884408744.Spec : Prop :=
  ∀ n, (P6181896954884408744.a n : ℤ) = A142292 (n + 1)

end A142292

/-! ## A142292.P13888530831034296763

`∩[A141849(n+1), A280084(n+1)]`
-/

namespace A142292.P13888530831034296763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142292.P13888530831034296763

namespace A142292

/-- `∩[A141849(n+1), A280084(n+1)]` -/
def P13888530831034296763.Spec : Prop :=
  ∀ n, (P13888530831034296763.a n : ℤ) = A142292 (n + 1)

end A142292

/-! ## A142292.P14780668223590560916

`∩[A141849(n+1), A296935(n+1)]`
-/

namespace A142292.P14780668223590560916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142292.P14780668223590560916

namespace A142292

/-- `∩[A141849(n+1), A296935(n+1)]` -/
def P14780668223590560916.Spec : Prop :=
  ∀ n, (P14780668223590560916.a n : ℤ) = A142292 (n + 1)

end A142292

/-! ## A142292.P3187346185247116001

`∩[A055025(n+1), A141849(n+1)]`
-/

namespace A142292.P3187346185247116001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142292.P3187346185247116001

namespace A142292

/-- `∩[A055025(n+1), A141849(n+1)]` -/
def P3187346185247116001.Spec : Prop :=
  ∀ n, (P3187346185247116001.a n : ℤ) = A142292 (n + 1)

end A142292

/-! ## A142292.P4068804173094063595

`∩[A120960(n+1), A141849(n+1)]`
-/

namespace A142292.P4068804173094063595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142292.P4068804173094063595

namespace A142292

/-- `∩[A120960(n+1), A141849(n+1)]` -/
def P4068804173094063595.Spec : Prop :=
  ∀ n, (P4068804173094063595.a n : ℤ) = A142292 (n + 1)

end A142292

/-! ## A142292.P12666170006301191527

`∩[A085759(n+1), A141849(n+1)]`
-/

namespace A142292.P12666170006301191527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142292.P12666170006301191527

namespace A142292

/-- `∩[A085759(n+1), A141849(n+1)]` -/
def P12666170006301191527.Spec : Prop :=
  ∀ n, (P12666170006301191527.a n : ℤ) = A142292 (n + 1)

end A142292

/-! ## A142292.P18094120349590285616

`∩[A002144(n+1), A161709(n)]`
-/

namespace A142292.P18094120349590285616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142292.P18094120349590285616

namespace A142292

/-- `∩[A002144(n+1), A161709(n)]` -/
def P18094120349590285616.Spec : Prop :=
  ∀ n, (P18094120349590285616.a n : ℤ) = A142292 (n + 1)

end A142292

/-! ## A142292.P5209225867800654695

`∩[A002313(n+1), A161709(n)]`
-/

namespace A142292.P5209225867800654695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142292.P5209225867800654695

namespace A142292

/-- `∩[A002313(n+1), A161709(n)]` -/
def P5209225867800654695.Spec : Prop :=
  ∀ n, (P5209225867800654695.a n : ℤ) = A142292 (n + 1)

end A142292

/-! ## A142292.P17243895012484186714

`∩[A038881(n+1), A161709(n)]`
-/

namespace A142292.P17243895012484186714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142292.P17243895012484186714

namespace A142292

/-- `∩[A038881(n+1), A161709(n)]` -/
def P17243895012484186714.Spec : Prop :=
  ∀ n, (P17243895012484186714.a n : ℤ) = A142292 (n + 1)

end A142292

/-! ## A142292.P4417004104825337567

`∩[A141182(n+1), A161709(n)]`
-/

namespace A142292.P4417004104825337567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142292.P4417004104825337567

namespace A142292

/-- `∩[A141182(n+1), A161709(n)]` -/
def P4417004104825337567.Spec : Prop :=
  ∀ n, (P4417004104825337567.a n : ℤ) = A142292 (n + 1)

end A142292

/-! ## A142292.P15471639530989327832

`∩[A296935(n+1), A161709(n)]`
-/

namespace A142292.P15471639530989327832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142292.P15471639530989327832

namespace A142292

/-- `∩[A296935(n+1), A161709(n)]` -/
def P15471639530989327832.Spec : Prop :=
  ∀ n, (P15471639530989327832.a n : ℤ) = A142292 (n + 1)

end A142292

/-!
# A142293: Primes congruent to 3 mod 44.

The programs for A142293, the canonical program `A142293.P969043416426135805` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142293 has offset 1).

The definition of A142293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3940 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142293.P969043416426135805

`p?[4*11*n+3]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142293

/-- `p?[4*11*n+3]` -/
def P969043416426135805.Spec : Prop :=
  ∀ n, (P969043416426135805.a n : ℤ) = A142293 (n + 1)

theorem P969043416426135805.correct : P969043416426135805.Spec := by
  intro n
  simp only [A142293, Nat.add_sub_cancel]

end A142293

/-! ## A142293.P17479408004709566457

`or(1, p?[or(3, 44*n)])`
-/

namespace A142293.P17479408004709566457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (44 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A142293.P17479408004709566457

namespace A142293

/-- `or(1, p?[or(3, 44*n)])` -/
def P17479408004709566457.Spec : Prop :=
  ∀ n, (P17479408004709566457.a n : ℤ) = A142293 (n + 1)

end A142293

/-! ## A142293.P3636080694998784951

`∩[2*A161709(n)+1, A215134(n+2)]`
-/

namespace A142293.P3636080694998784951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161709 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215134 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142293.P3636080694998784951

namespace A142293

/-- `∩[2*A161709(n)+1, A215134(n+2)]` -/
def P3636080694998784951.Spec : Prop :=
  ∀ n, (P3636080694998784951.a n : ℤ) = A142293 (n + 1)

end A142293

/-! ## A142293.P17366578572429909382

`∩[2*A161709(n)+1, A215378(n+2)]`
-/

namespace A142293.P17366578572429909382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161709 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215378 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142293.P17366578572429909382

namespace A142293

/-- `∩[2*A161709(n)+1, A215378(n+2)]` -/
def P17366578572429909382.Spec : Prop :=
  ∀ n, (P17366578572429909382.a n : ℤ) = A142293 (n + 1)

end A142293

/-! ## A142293.P7676960963315601959

`∩[2*A161709(n)+1, A215302(n+2)]`
-/

namespace A142293.P7676960963315601959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161709 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215302 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142293.P7676960963315601959

namespace A142293

/-- `∩[2*A161709(n)+1, A215302(n+2)]` -/
def P7676960963315601959.Spec : Prop :=
  ∀ n, (P7676960963315601959.a n : ℤ) = A142293 (n + 1)

end A142293

/-! ## A142293.P16467890312134363471

`∩[2*A161709(n)+1, A215306(n+2)]`
-/

namespace A142293.P16467890312134363471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161709 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215306 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142293.P16467890312134363471

namespace A142293

/-- `∩[2*A161709(n)+1, A215306(n+2)]` -/
def P16467890312134363471.Spec : Prop :=
  ∀ n, (P16467890312134363471.a n : ℤ) = A142293 (n + 1)

end A142293

/-! ## A142293.P14238556580331504181

`∩[2*A161709(n)+1, A215382(n+2)]`
-/

namespace A142293.P14238556580331504181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161709 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215382 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142293.P14238556580331504181

namespace A142293

/-- `∩[2*A161709(n)+1, A215382(n+2)]` -/
def P14238556580331504181.Spec : Prop :=
  ∀ n, (P14238556580331504181.a n : ℤ) = A142293 (n + 1)

end A142293

/-! ## A142293.P7714940023317404226

`∩[A002145(n+1), A141850(n+1)]`
-/

namespace A142293.P7714940023317404226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142293.P7714940023317404226

namespace A142293

/-- `∩[A002145(n+1), A141850(n+1)]` -/
def P7714940023317404226.Spec : Prop :=
  ∀ n, (P7714940023317404226.a n : ℤ) = A142293 (n + 1)

end A142293

/-! ## A142293.P7223439443750611536

`∩[A038882(n+1), A141850(n+1)]`
-/

namespace A142293.P7223439443750611536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142293.P7223439443750611536

namespace A142293

/-- `∩[A038882(n+1), A141850(n+1)]` -/
def P7223439443750611536.Spec : Prop :=
  ∀ n, (P7223439443750611536.a n : ℤ) = A142293 (n + 1)

end A142293

/-! ## A142293.P6813507396051611164

`∩[A045326(n+1), A141850(n+1)]`
-/

namespace A142293.P6813507396051611164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142293.P6813507396051611164

namespace A142293

/-- `∩[A045326(n+1), A141850(n+1)]` -/
def P6813507396051611164.Spec : Prop :=
  ∀ n, (P6813507396051611164.a n : ℤ) = A142293 (n + 1)

end A142293

/-! ## A142293.P8996890050649869753

`∩[A141850(n+1), A296936(n+1)]`
-/

namespace A142293.P8996890050649869753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142293.P8996890050649869753

namespace A142293

/-- `∩[A141850(n+1), A296936(n+1)]` -/
def P8996890050649869753.Spec : Prop :=
  ∀ n, (P8996890050649869753.a n : ℤ) = A142293 (n + 1)

end A142293

/-! ## A142293.P12165131177484300067

`∩[A085760(n+1), A141850(n+1)]`
-/

namespace A142293.P12165131177484300067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142293.P12165131177484300067

namespace A142293

/-- `∩[A085760(n+1), A141850(n+1)]` -/
def P12165131177484300067.Spec : Prop :=
  ∀ n, (P12165131177484300067.a n : ℤ) = A142293 (n + 1)

end A142293

/-! ## A142293.P3086952284332271138

`∩[A141850(n+1), A197504(n+1)]`
-/

namespace A142293.P3086952284332271138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142293.P3086952284332271138

namespace A142293

/-- `∩[A141850(n+1), A197504(n+1)]` -/
def P3086952284332271138.Spec : Prop :=
  ∀ n, (P3086952284332271138.a n : ℤ) = A142293 (n + 1)

end A142293

/-! ## A142293.P13242712617992134707

`∩[A141850(n+1), A332555(n+1)]`
-/

namespace A142293.P13242712617992134707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142293.P13242712617992134707

namespace A142293

/-- `∩[A141850(n+1), A332555(n+1)]` -/
def P13242712617992134707.Spec : Prop :=
  ∀ n, (P13242712617992134707.a n : ℤ) = A142293 (n + 1)

end A142293

/-! ## A142293.P10022062127553605444

`∩[A002145(n+1), A161709(n)+2]`
-/

namespace A142293.P10022062127553605444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142293.P10022062127553605444

namespace A142293

/-- `∩[A002145(n+1), A161709(n)+2]` -/
def P10022062127553605444.Spec : Prop :=
  ∀ n, (P10022062127553605444.a n : ℤ) = A142293 (n + 1)

end A142293

/-! ## A142293.P3423366930204207191

`∩[A038882(n+1), A161709(n)+2]`
-/

namespace A142293.P3423366930204207191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142293.P3423366930204207191

namespace A142293

/-- `∩[A038882(n+1), A161709(n)+2]` -/
def P3423366930204207191.Spec : Prop :=
  ∀ n, (P3423366930204207191.a n : ℤ) = A142293 (n + 1)

end A142293

/-! ## A142293.P11303661728358809347

`∩[A045326(n+1), A161709(n)+2]`
-/

namespace A142293.P11303661728358809347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142293.P11303661728358809347

namespace A142293

/-- `∩[A045326(n+1), A161709(n)+2]` -/
def P11303661728358809347.Spec : Prop :=
  ∀ n, (P11303661728358809347.a n : ℤ) = A142293 (n + 1)

end A142293

/-! ## A142293.P16872198060209109811

`∩[A296936(n+1), A161709(n)+2]`
-/

namespace A142293.P16872198060209109811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161709 n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142293.P16872198060209109811

namespace A142293

/-- `∩[A296936(n+1), A161709(n)+2]` -/
def P16872198060209109811.Spec : Prop :=
  ∀ n, (P16872198060209109811.a n : ℤ) = A142293 (n + 1)

end A142293

/-! ## A142293.P4006974989201061871

`∩[A141850(n+1), A292762(n+1)]`
-/

namespace A142293.P4006974989201061871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142293.P4006974989201061871

namespace A142293

/-- `∩[A141850(n+1), A292762(n+1)]` -/
def P4006974989201061871.Spec : Prop :=
  ∀ n, (P4006974989201061871.a n : ℤ) = A142293 (n + 1)

end A142293

/-! ## A142293.P4157785025970273137

`∩[A066499(n+1), A141850(n+1)]`
-/

namespace A142293.P4157785025970273137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142293.P4157785025970273137

namespace A142293

/-- `∩[A066499(n+1), A141850(n+1)]` -/
def P4157785025970273137.Spec : Prop :=
  ∀ n, (P4157785025970273137.a n : ℤ) = A142293 (n + 1)

end A142293

/-!
# A142294: Primes congruent to 5 mod 44.

The programs for A142294, the canonical program `A142294.P5475484210722696775` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142294 has offset 1).

The definition of A142294 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3937 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142294.P5475484210722696775

`p?[44*n+5]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142294

/-- `p?[44*n+5]` -/
def P5475484210722696775.Spec : Prop :=
  ∀ n, (P5475484210722696775.a n : ℤ) = A142294 (n + 1)

theorem P5475484210722696775.correct : P5475484210722696775.Spec := by
  intro n
  simp only [A142294, Nat.add_sub_cancel]

end A142294

/-! ## A142294.P2836238056367944884

`∩[A008846(n+1), A141852(n+1)]`
-/

namespace A142294.P2836238056367944884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142294.P2836238056367944884

namespace A142294

/-- `∩[A008846(n+1), A141852(n+1)]` -/
def P2836238056367944884.Spec : Prop :=
  ∀ n, (P2836238056367944884.a n : ℤ) = A142294 (n + 1)

end A142294

/-! ## A142294.P8261916752910343097

`∩[A141182(n+1), A141852(n+1)]`
-/

namespace A142294.P8261916752910343097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142294.P8261916752910343097

namespace A142294

/-- `∩[A141182(n+1), A141852(n+1)]` -/
def P8261916752910343097.Spec : Prop :=
  ∀ n, (P8261916752910343097.a n : ℤ) = A142294 (n + 1)

end A142294

/-! ## A142294.P6939653816175034588

`∩[A141182(n+1), A215167(n+1)]`
-/

namespace A142294.P6939653816175034588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142294.P6939653816175034588

namespace A142294

/-- `∩[A141182(n+1), A215167(n+1)]` -/
def P6939653816175034588.Spec : Prop :=
  ∀ n, (P6939653816175034588.a n : ℤ) = A142294 (n + 1)

end A142294

/-! ## A142294.P3103400621034711836

`∩[A141182(n+1), A215210(n+1)]`
-/

namespace A142294.P3103400621034711836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142294.P3103400621034711836

namespace A142294

/-- `∩[A141182(n+1), A215210(n+1)]` -/
def P3103400621034711836.Spec : Prop :=
  ∀ n, (P3103400621034711836.a n : ℤ) = A142294 (n + 1)

end A142294

/-! ## A142294.P16568123482836668159

`∩[A141852(n+1), A191218(n+1)]`
-/

namespace A142294.P16568123482836668159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142294.P16568123482836668159

namespace A142294

/-- `∩[A141852(n+1), A191218(n+1)]` -/
def P16568123482836668159.Spec : Prop :=
  ∀ n, (P16568123482836668159.a n : ℤ) = A142294 (n + 1)

end A142294

/-! ## A142294.P14097251320316403326

`∩[A038881(n+1), A141852(n+1)]`
-/

namespace A142294.P14097251320316403326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142294.P14097251320316403326

namespace A142294

/-- `∩[A038881(n+1), A141852(n+1)]` -/
def P14097251320316403326.Spec : Prop :=
  ∀ n, (P14097251320316403326.a n : ℤ) = A142294 (n + 1)

end A142294

/-! ## A142294.P16824318454425009427

`∩[A002144(n+1), A141852(n+1)]`
-/

namespace A142294.P16824318454425009427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142294.P16824318454425009427

namespace A142294

/-- `∩[A002144(n+1), A141852(n+1)]` -/
def P16824318454425009427.Spec : Prop :=
  ∀ n, (P16824318454425009427.a n : ℤ) = A142294 (n + 1)

end A142294

/-! ## A142294.P8803614628574101734

`∩[A002313(n+1), A141852(n+1)]`
-/

namespace A142294.P8803614628574101734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142294.P8803614628574101734

namespace A142294

/-- `∩[A002313(n+1), A141852(n+1)]` -/
def P8803614628574101734.Spec : Prop :=
  ∀ n, (P8803614628574101734.a n : ℤ) = A142294 (n + 1)

end A142294

/-! ## A142294.P12971367156275797117

`∩[A141852(n+1), A280084(n+1)]`
-/

namespace A142294.P12971367156275797117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142294.P12971367156275797117

namespace A142294

/-- `∩[A141852(n+1), A280084(n+1)]` -/
def P12971367156275797117.Spec : Prop :=
  ∀ n, (P12971367156275797117.a n : ℤ) = A142294 (n + 1)

end A142294

/-! ## A142294.P2796871719653938675

`∩[A141852(n+1), A296935(n+1)]`
-/

namespace A142294.P2796871719653938675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142294.P2796871719653938675

namespace A142294

/-- `∩[A141852(n+1), A296935(n+1)]` -/
def P2796871719653938675.Spec : Prop :=
  ∀ n, (P2796871719653938675.a n : ℤ) = A142294 (n + 1)

end A142294

/-! ## A142294.P8344371812075775548

`∩[A055025(n+1), A141852(n+1)]`
-/

namespace A142294.P8344371812075775548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142294.P8344371812075775548

namespace A142294

/-- `∩[A055025(n+1), A141852(n+1)]` -/
def P8344371812075775548.Spec : Prop :=
  ∀ n, (P8344371812075775548.a n : ℤ) = A142294 (n + 1)

end A142294

/-! ## A142294.P2523656914447477055

`∩[A120960(n+1), A141852(n+1)]`
-/

namespace A142294.P2523656914447477055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142294.P2523656914447477055

namespace A142294

/-- `∩[A120960(n+1), A141852(n+1)]` -/
def P2523656914447477055.Spec : Prop :=
  ∀ n, (P2523656914447477055.a n : ℤ) = A142294 (n + 1)

end A142294

/-! ## A142294.P13933276174432796061

`∩[A085759(n+1), A141852(n+1)]`
-/

namespace A142294.P13933276174432796061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142294.P13933276174432796061

namespace A142294

/-- `∩[A085759(n+1), A141852(n+1)]` -/
def P13933276174432796061.Spec : Prop :=
  ∀ n, (P13933276174432796061.a n : ℤ) = A142294 (n + 1)

end A142294

/-! ## A142294.P4824323481281482649

`∩[A141852(n+1), A351535(n+1)]`
-/

namespace A142294.P4824323481281482649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142294.P4824323481281482649

namespace A142294

/-- `∩[A141852(n+1), A351535(n+1)]` -/
def P4824323481281482649.Spec : Prop :=
  ∀ n, (P4824323481281482649.a n : ℤ) = A142294 (n + 1)

end A142294

/-! ## A142294.P16223558033943426500

`∩[A125018(n+1), A141852(n+1)]`
-/

namespace A142294.P16223558033943426500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142294.P16223558033943426500

namespace A142294

/-- `∩[A125018(n+1), A141852(n+1)]` -/
def P16223558033943426500.Spec : Prop :=
  ∀ n, (P16223558033943426500.a n : ℤ) = A142294 (n + 1)

end A142294

/-! ## A142294.P17889875592483758083

`∩[A141852(n+1), A347877(n+1)]`
-/

namespace A142294.P17889875592483758083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142294.P17889875592483758083

namespace A142294

/-- `∩[A141852(n+1), A347877(n+1)]` -/
def P17889875592483758083.Spec : Prop :=
  ∀ n, (P17889875592483758083.a n : ℤ) = A142294 (n + 1)

end A142294

/-! ## A142294.P17461844244217511308

`∩[A141852(n+1), A281292(n+1)]`
-/

namespace A142294.P17461844244217511308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142294.P17461844244217511308

namespace A142294

/-- `∩[A141852(n+1), A281292(n+1)]` -/
def P17461844244217511308.Spec : Prop :=
  ∀ n, (P17461844244217511308.a n : ℤ) = A142294 (n + 1)

end A142294

/-! ## A142294.P17914496224546973229

`∩[A141852(n+1), A224450(n+1)]`
-/

namespace A142294.P17914496224546973229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142294.P17914496224546973229

namespace A142294

/-- `∩[A141852(n+1), A224450(n+1)]` -/
def P17914496224546973229.Spec : Prop :=
  ∀ n, (P17914496224546973229.a n : ℤ) = A142294 (n + 1)

end A142294

/-! ## A142294.P13514237735350966752

`∩[A003653(n+1), A141852(n+1)]`
-/

namespace A142294.P13514237735350966752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142294.P13514237735350966752

namespace A142294

/-- `∩[A003653(n+1), A141852(n+1)]` -/
def P13514237735350966752.Spec : Prop :=
  ∀ n, (P13514237735350966752.a n : ℤ) = A142294 (n + 1)

end A142294

/-!
# A142295: Primes congruent to 7 mod 44.

The programs for A142295, the canonical program `A142295.P4010947513429565633` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142295 has offset 1).

The definition of A142295 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4989 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142295.P4010947513429565633

`A141854(eq[2, and(2, A141854(n+1))]+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A142295

/-- `A141854(eq[2, and(2, A141854(n+1))]+1)` -/
def P4010947513429565633.Spec : Prop :=
  ∀ n, P4010947513429565633.a n = A142295 (n + 1)

theorem P4010947513429565633.correct : P4010947513429565633.Spec := by
  intro n
  simp only [A142295, Nat.add_sub_cancel]

end A142295

/-! ## A142295.P17826868395976488723

`p?[44*n+7]`
-/

namespace A142295.P17826868395976488723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  44 * n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A142295.P17826868395976488723

namespace A142295

/-- `p?[44*n+7]` -/
def P17826868395976488723.Spec : Prop :=
  ∀ n, (P17826868395976488723.a n : ℤ) = A142295 (n + 1)

end A142295

/-! ## A142295.P16637113199053847369

`∩[A141183(n+1), A141854(n+1)]`
-/

namespace A142295.P16637113199053847369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142295.P16637113199053847369

namespace A142295

/-- `∩[A141183(n+1), A141854(n+1)]` -/
def P16637113199053847369.Spec : Prop :=
  ∀ n, (P16637113199053847369.a n : ℤ) = A142295 (n + 1)

end A142295

/-! ## A142295.P15115155402482445039

`∩[A040122(n+1), A141854(n+1)]`
-/

namespace A142295.P15115155402482445039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142295.P15115155402482445039

namespace A142295

/-- `∩[A040122(n+1), A141854(n+1)]` -/
def P15115155402482445039.Spec : Prop :=
  ∀ n, (P15115155402482445039.a n : ℤ) = A142295 (n + 1)

end A142295

/-! ## A142295.P7066932063592174378

`∩[A038881(n+1), A141854(n+1)]`
-/

namespace A142295.P7066932063592174378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142295.P7066932063592174378

namespace A142295

/-- `∩[A038881(n+1), A141854(n+1)]` -/
def P7066932063592174378.Spec : Prop :=
  ∀ n, (P7066932063592174378.a n : ℤ) = A142295 (n + 1)

end A142295

/-! ## A142295.P14988366094121054165

`∩[A137978(n+1), A141183(n+1)]`
-/

namespace A142295.P14988366094121054165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142295.P14988366094121054165

namespace A142295

/-- `∩[A137978(n+1), A141183(n+1)]` -/
def P14988366094121054165.Spec : Prop :=
  ∀ n, (P14988366094121054165.a n : ℤ) = A142295 (n + 1)

end A142295

/-! ## A142295.P5446027162924586002

`∩[A141854(n+1), A296935(n+1)]`
-/

namespace A142295.P5446027162924586002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142295.P5446027162924586002

namespace A142295

/-- `∩[A141854(n+1), A296935(n+1)]` -/
def P5446027162924586002.Spec : Prop :=
  ∀ n, (P5446027162924586002.a n : ℤ) = A142295 (n + 1)

end A142295

/-! ## A142295.P13747876374339983181

`∩[A002145(n+1), A141854(n+1)]`
-/

namespace A142295.P13747876374339983181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142295.P13747876374339983181

namespace A142295

/-- `∩[A002145(n+1), A141854(n+1)]` -/
def P13747876374339983181.Spec : Prop :=
  ∀ n, (P13747876374339983181.a n : ℤ) = A142295 (n + 1)

end A142295

/-! ## A142295.P7642079171051453146

`∩[A045326(n+1), A141854(n+1)]`
-/

namespace A142295.P7642079171051453146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142295.P7642079171051453146

namespace A142295

/-- `∩[A045326(n+1), A141854(n+1)]` -/
def P7642079171051453146.Spec : Prop :=
  ∀ n, (P7642079171051453146.a n : ℤ) = A142295 (n + 1)

end A142295

/-! ## A142295.P7629489038560407674

`∩[A085760(n+1), A141854(n+1)]`
-/

namespace A142295.P7629489038560407674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142295.P7629489038560407674

namespace A142295

/-- `∩[A085760(n+1), A141854(n+1)]` -/
def P7629489038560407674.Spec : Prop :=
  ∀ n, (P7629489038560407674.a n : ℤ) = A142295 (n + 1)

end A142295

/-! ## A142295.P17944732220757070214

`∩[A141854(n+1), A197504(n+1)]`
-/

namespace A142295.P17944732220757070214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142295.P17944732220757070214

namespace A142295

/-- `∩[A141854(n+1), A197504(n+1)]` -/
def P17944732220757070214.Spec : Prop :=
  ∀ n, (P17944732220757070214.a n : ℤ) = A142295 (n + 1)

end A142295

/-! ## A142295.P3264806023962969333

`∩[A141854(n+1), A332555(n+1)]`
-/

namespace A142295.P3264806023962969333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142295.P3264806023962969333

namespace A142295

/-- `∩[A141854(n+1), A332555(n+1)]` -/
def P3264806023962969333.Spec : Prop :=
  ∀ n, (P3264806023962969333.a n : ℤ) = A142295 (n + 1)

end A142295

/-! ## A142295.P5823469072205874583

`∩[A141854(n+1), A292762(n+1)]`
-/

namespace A142295.P5823469072205874583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142295.P5823469072205874583

namespace A142295

/-- `∩[A141854(n+1), A292762(n+1)]` -/
def P5823469072205874583.Spec : Prop :=
  ∀ n, (P5823469072205874583.a n : ℤ) = A142295 (n + 1)

end A142295

/-! ## A142295.P8379252476613463824

`∩[A066499(n+1), A141854(n+1)]`
-/

namespace A142295.P8379252476613463824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142295.P8379252476613463824

namespace A142295

/-- `∩[A066499(n+1), A141854(n+1)]` -/
def P8379252476613463824.Spec : Prop :=
  ∀ n, (P8379252476613463824.a n : ℤ) = A142295 (n + 1)

end A142295

/-! ## A142295.P17055359695617632095

`∩[A097987(n+1), A141854(n+1)]`
-/

namespace A142295.P17055359695617632095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142295.P17055359695617632095

namespace A142295

/-- `∩[A097987(n+1), A141854(n+1)]` -/
def P17055359695617632095.Spec : Prop :=
  ∀ n, (P17055359695617632095.a n : ℤ) = A142295 (n + 1)

end A142295

/-! ## A142295.P13445342290784907913

`∩[A094179(n+1), A141854(n+1)]`
-/

namespace A142295.P13445342290784907913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142295.P13445342290784907913

namespace A142295

/-- `∩[A094179(n+1), A141854(n+1)]` -/
def P13445342290784907913.Spec : Prop :=
  ∀ n, (P13445342290784907913.a n : ℤ) = A142295 (n + 1)

end A142295

/-! ## A142295.P14169271081646932239

`∩[A002145(n+1), A017473(n)]`
-/

namespace A142295.P14169271081646932239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142295.P14169271081646932239

namespace A142295

/-- `∩[A002145(n+1), A017473(n)]` -/
def P14169271081646932239.Spec : Prop :=
  ∀ n, (P14169271081646932239.a n : ℤ) = A142295 (n + 1)

end A142295

/-! ## A142295.P6978307269196602718

`∩[A038881(n+1), A017473(n)]`
-/

namespace A142295.P6978307269196602718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142295.P6978307269196602718

namespace A142295

/-- `∩[A038881(n+1), A017473(n)]` -/
def P6978307269196602718.Spec : Prop :=
  ∀ n, (P6978307269196602718.a n : ℤ) = A142295 (n + 1)

end A142295

/-! ## A142295.P3953756071883778881

`∩[A017473(n), A040122(n+1)]`
-/

namespace A142295.P3953756071883778881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142295.P3953756071883778881

namespace A142295

/-- `∩[A017473(n), A040122(n+1)]` -/
def P3953756071883778881.Spec : Prop :=
  ∀ n, (P3953756071883778881.a n : ℤ) = A142295 (n + 1)

end A142295

/-! ## A142295.P4364216244048230455

`∩[A045326(n+1), A017473(n)]`
-/

namespace A142295.P4364216244048230455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017473 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142295.P4364216244048230455

namespace A142295

/-- `∩[A045326(n+1), A017473(n)]` -/
def P4364216244048230455.Spec : Prop :=
  ∀ n, (P4364216244048230455.a n : ℤ) = A142295 (n + 1)

end A142295

/-!
# A142296: Primes congruent to 9 mod 44.

The programs for A142296, the canonical program `A142296.P7549627745790358144` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142296 has offset 1).

The definition of A142296 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3875 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142296.P7549627745790358144

`p?[4*11*n+9]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142296

/-- `p?[4*11*n+9]` -/
def P7549627745790358144.Spec : Prop :=
  ∀ n, (P7549627745790358144.a n : ℤ) = A142296 (n + 1)

theorem P7549627745790358144.correct : P7549627745790358144.Spec := by
  intro n
  simp only [A142296, Nat.add_sub_cancel]

end A142296

/-! ## A142296.P7402809420478559312

`∩[A008846(n+1), A141856(n+1)]`
-/

namespace A142296.P7402809420478559312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142296.P7402809420478559312

namespace A142296

/-- `∩[A008846(n+1), A141856(n+1)]` -/
def P7402809420478559312.Spec : Prop :=
  ∀ n, (P7402809420478559312.a n : ℤ) = A142296 (n + 1)

end A142296

/-! ## A142296.P10537644807688704123

`∩[A141182(n+1), A141856(n+1)]`
-/

namespace A142296.P10537644807688704123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142296.P10537644807688704123

namespace A142296

/-- `∩[A141182(n+1), A141856(n+1)]` -/
def P10537644807688704123.Spec : Prop :=
  ∀ n, (P10537644807688704123.a n : ℤ) = A142296 (n + 1)

end A142296

/-! ## A142296.P2851310332238112050

`∩[A141856(n+1), A191218(n+1)]`
-/

namespace A142296.P2851310332238112050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142296.P2851310332238112050

namespace A142296

/-- `∩[A141856(n+1), A191218(n+1)]` -/
def P2851310332238112050.Spec : Prop :=
  ∀ n, (P2851310332238112050.a n : ℤ) = A142296 (n + 1)

end A142296

/-! ## A142296.P3409627267335684301

`∩[A038881(n+1), A141856(n+1)]`
-/

namespace A142296.P3409627267335684301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142296.P3409627267335684301

namespace A142296

/-- `∩[A038881(n+1), A141856(n+1)]` -/
def P3409627267335684301.Spec : Prop :=
  ∀ n, (P3409627267335684301.a n : ℤ) = A142296 (n + 1)

end A142296

/-! ## A142296.P10371069232600513100

`∩[A002144(n+1), A141856(n+1)]`
-/

namespace A142296.P10371069232600513100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142296.P10371069232600513100

namespace A142296

/-- `∩[A002144(n+1), A141856(n+1)]` -/
def P10371069232600513100.Spec : Prop :=
  ∀ n, (P10371069232600513100.a n : ℤ) = A142296 (n + 1)

end A142296

/-! ## A142296.P6681755061745015985

`∩[A002313(n+1), A141856(n+1)]`
-/

namespace A142296.P6681755061745015985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142296.P6681755061745015985

namespace A142296

/-- `∩[A002313(n+1), A141856(n+1)]` -/
def P6681755061745015985.Spec : Prop :=
  ∀ n, (P6681755061745015985.a n : ℤ) = A142296 (n + 1)

end A142296

/-! ## A142296.P2460558841699575690

`∩[A141856(n+1), A280084(n+1)]`
-/

namespace A142296.P2460558841699575690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142296.P2460558841699575690

namespace A142296

/-- `∩[A141856(n+1), A280084(n+1)]` -/
def P2460558841699575690.Spec : Prop :=
  ∀ n, (P2460558841699575690.a n : ℤ) = A142296 (n + 1)

end A142296

/-! ## A142296.P17914309942996560314

`∩[A141856(n+1), A296935(n+1)]`
-/

namespace A142296.P17914309942996560314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142296.P17914309942996560314

namespace A142296

/-- `∩[A141856(n+1), A296935(n+1)]` -/
def P17914309942996560314.Spec : Prop :=
  ∀ n, (P17914309942996560314.a n : ℤ) = A142296 (n + 1)

end A142296

/-! ## A142296.P15585911147603454099

`∩[A055025(n+1), A141856(n+1)]`
-/

namespace A142296.P15585911147603454099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142296.P15585911147603454099

namespace A142296

/-- `∩[A055025(n+1), A141856(n+1)]` -/
def P15585911147603454099.Spec : Prop :=
  ∀ n, (P15585911147603454099.a n : ℤ) = A142296 (n + 1)

end A142296

/-! ## A142296.P11986559648492990397

`∩[A120960(n+1), A141856(n+1)]`
-/

namespace A142296.P11986559648492990397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142296.P11986559648492990397

namespace A142296

/-- `∩[A120960(n+1), A141856(n+1)]` -/
def P11986559648492990397.Spec : Prop :=
  ∀ n, (P11986559648492990397.a n : ℤ) = A142296 (n + 1)

end A142296

/-! ## A142296.P8758388431670377387

`∩[A085759(n+1), A141856(n+1)]`
-/

namespace A142296.P8758388431670377387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142296.P8758388431670377387

namespace A142296

/-- `∩[A085759(n+1), A141856(n+1)]` -/
def P8758388431670377387.Spec : Prop :=
  ∀ n, (P8758388431670377387.a n : ℤ) = A142296 (n + 1)

end A142296

/-! ## A142296.P13503830161790925341

`∩[A002144(n+1), A063154(n+1)]`
-/

namespace A142296.P13503830161790925341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142296.P13503830161790925341

namespace A142296

/-- `∩[A002144(n+1), A063154(n+1)]` -/
def P13503830161790925341.Spec : Prop :=
  ∀ n, (P13503830161790925341.a n : ℤ) = A142296 (n + 1)

end A142296

/-! ## A142296.P6618135091252334964

`∩[A002313(n+1), A063154(n+1)]`
-/

namespace A142296.P6618135091252334964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142296.P6618135091252334964

namespace A142296

/-- `∩[A002313(n+1), A063154(n+1)]` -/
def P6618135091252334964.Spec : Prop :=
  ∀ n, (P6618135091252334964.a n : ℤ) = A142296 (n + 1)

end A142296

/-! ## A142296.P11876978577650020645

`∩[A038881(n+1), A063154(n+1)]`
-/

namespace A142296.P11876978577650020645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142296.P11876978577650020645

namespace A142296

/-- `∩[A038881(n+1), A063154(n+1)]` -/
def P11876978577650020645.Spec : Prop :=
  ∀ n, (P11876978577650020645.a n : ℤ) = A142296 (n + 1)

end A142296

/-! ## A142296.P4618238458001579569

`∩[A063154(n+1), A141182(n+1)]`
-/

namespace A142296.P4618238458001579569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142296.P4618238458001579569

namespace A142296

/-- `∩[A063154(n+1), A141182(n+1)]` -/
def P4618238458001579569.Spec : Prop :=
  ∀ n, (P4618238458001579569.a n : ℤ) = A142296 (n + 1)

end A142296

/-! ## A142296.P2751497505687602242

`∩[A063154(n+1), A280084(n+1)]`
-/

namespace A142296.P2751497505687602242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142296.P2751497505687602242

namespace A142296

/-- `∩[A063154(n+1), A280084(n+1)]` -/
def P2751497505687602242.Spec : Prop :=
  ∀ n, (P2751497505687602242.a n : ℤ) = A142296 (n + 1)

end A142296

/-! ## A142296.P2548569595112286673

`∩[A063154(n+1), A296935(n+1)]`
-/

namespace A142296.P2548569595112286673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142296.P2548569595112286673

namespace A142296

/-- `∩[A063154(n+1), A296935(n+1)]` -/
def P2548569595112286673.Spec : Prop :=
  ∀ n, (P2548569595112286673.a n : ℤ) = A142296 (n + 1)

end A142296

/-! ## A142296.P16709490464420392183

`∩[A141856(n+1), A351535(n+1)]`
-/

namespace A142296.P16709490464420392183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142296.P16709490464420392183

namespace A142296

/-- `∩[A141856(n+1), A351535(n+1)]` -/
def P16709490464420392183.Spec : Prop :=
  ∀ n, (P16709490464420392183.a n : ℤ) = A142296 (n + 1)

end A142296

/-! ## A142296.P7800012603062567859

`∩[A125018(n+1), A141856(n+1)]`
-/

namespace A142296.P7800012603062567859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142296.P7800012603062567859

namespace A142296

/-- `∩[A125018(n+1), A141856(n+1)]` -/
def P7800012603062567859.Spec : Prop :=
  ∀ n, (P7800012603062567859.a n : ℤ) = A142296 (n + 1)

end A142296

/-!
# A142297: Primes congruent to 13 mod 44.

The programs for A142297, the canonical program `A142297.P4333875725822880942` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142297 has offset 1).

The definition of A142297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3935 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142297.P4333875725822880942

`p?[44*n-31]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142297

/-- `p?[44*n-31]` -/
def P4333875725822880942.Spec : Prop :=
  ∀ n, P4333875725822880942.a n = A142297 (n + 1)

theorem P4333875725822880942.correct : P4333875725822880942.Spec := by
  intro n
  simp only [A142297, Nat.add_sub_cancel]

end A142297

/-! ## A142297.P14208943674513331543

`∩[A008846(n+1), A090187(n+1)]`
-/

namespace A142297.P14208943674513331543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142297.P14208943674513331543

namespace A142297

/-- `∩[A008846(n+1), A090187(n+1)]` -/
def P14208943674513331543.Spec : Prop :=
  ∀ n, (P14208943674513331543.a n : ℤ) = A142297 (n + 1)

end A142297

/-! ## A142297.P6786998705092564359

`∩[A090187(n+1), A191218(n+1)]`
-/

namespace A142297.P6786998705092564359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142297.P6786998705092564359

namespace A142297

/-- `∩[A090187(n+1), A191218(n+1)]` -/
def P6786998705092564359.Spec : Prop :=
  ∀ n, (P6786998705092564359.a n : ℤ) = A142297 (n + 1)

end A142297

/-! ## A142297.P11501137653844541025

`∩[A002144(n+1), A090187(n+1)]`
-/

namespace A142297.P11501137653844541025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142297.P11501137653844541025

namespace A142297

/-- `∩[A002144(n+1), A090187(n+1)]` -/
def P11501137653844541025.Spec : Prop :=
  ∀ n, (P11501137653844541025.a n : ℤ) = A142297 (n + 1)

end A142297

/-! ## A142297.P16434685915589120242

`∩[A090187(n+1), A280084(n+1)]`
-/

namespace A142297.P16434685915589120242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142297.P16434685915589120242

namespace A142297

/-- `∩[A090187(n+1), A280084(n+1)]` -/
def P16434685915589120242.Spec : Prop :=
  ∀ n, (P16434685915589120242.a n : ℤ) = A142297 (n + 1)

end A142297

/-! ## A142297.P18197542732959105580

`∩[A090187(n+1), A296936(n+1)]`
-/

namespace A142297.P18197542732959105580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142297.P18197542732959105580

namespace A142297

/-- `∩[A090187(n+1), A296936(n+1)]` -/
def P18197542732959105580.Spec : Prop :=
  ∀ n, (P18197542732959105580.a n : ℤ) = A142297 (n + 1)

end A142297

/-! ## A142297.P10780044559531969812

`∩[A090187(n+1), A120960(n+1)]`
-/

namespace A142297.P10780044559531969812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142297.P10780044559531969812

namespace A142297

/-- `∩[A090187(n+1), A120960(n+1)]` -/
def P10780044559531969812.Spec : Prop :=
  ∀ n, (P10780044559531969812.a n : ℤ) = A142297 (n + 1)

end A142297

/-! ## A142297.P2222135483928931683

`∩[A085759(n+1), A090187(n+1)]`
-/

namespace A142297.P2222135483928931683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142297.P2222135483928931683

namespace A142297

/-- `∩[A085759(n+1), A090187(n+1)]` -/
def P2222135483928931683.Spec : Prop :=
  ∀ n, (P2222135483928931683.a n : ℤ) = A142297 (n + 1)

end A142297

/-! ## A142297.P11757268124300706314

`∑{p}[p?[A166959(n+1)+1], #]`
-/

namespace A142297.P11757268124300706314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166959 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A142297.P11757268124300706314

namespace A142297

/-- `∑{p}[p?[A166959(n+1)+1], #]` -/
def P11757268124300706314.Spec : Prop :=
  ∀ n, (P11757268124300706314.a n : ℤ) = A142297 (n + 1)

end A142297

/-! ## A142297.P10588754550927284001

`∩[A090187(n+1), A351535(n+1)]`
-/

namespace A142297.P10588754550927284001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142297.P10588754550927284001

namespace A142297

/-- `∩[A090187(n+1), A351535(n+1)]` -/
def P10588754550927284001.Spec : Prop :=
  ∀ n, (P10588754550927284001.a n : ℤ) = A142297 (n + 1)

end A142297

/-! ## A142297.P3638598064716310421

`∩[A090187(n+1), A125018(n+1)]`
-/

namespace A142297.P3638598064716310421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142297.P3638598064716310421

namespace A142297

/-- `∩[A090187(n+1), A125018(n+1)]` -/
def P3638598064716310421.Spec : Prop :=
  ∀ n, (P3638598064716310421.a n : ℤ) = A142297 (n + 1)

end A142297

/-! ## A142297.P14922566260100803587

`∩[A040123(n+1), A090187(n+1)]`
-/

namespace A142297.P14922566260100803587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142297.P14922566260100803587

namespace A142297

/-- `∩[A040123(n+1), A090187(n+1)]` -/
def P14922566260100803587.Spec : Prop :=
  ∀ n, (P14922566260100803587.a n : ℤ) = A142297 (n + 1)

end A142297

/-! ## A142297.P16999837346081328212

`∩[A090187(n+1), A230779(n+1)]`
-/

namespace A142297.P16999837346081328212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142297.P16999837346081328212

namespace A142297

/-- `∩[A090187(n+1), A230779(n+1)]` -/
def P16999837346081328212.Spec : Prop :=
  ∀ n, (P16999837346081328212.a n : ℤ) = A142297 (n + 1)

end A142297

/-! ## A142297.P1835039312257911042

`∩[A003653(n+1), A090187(n+1)]`
-/

namespace A142297.P1835039312257911042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142297.P1835039312257911042

namespace A142297

/-- `∩[A003653(n+1), A090187(n+1)]` -/
def P1835039312257911042.Spec : Prop :=
  ∀ n, (P1835039312257911042.a n : ℤ) = A142297 (n + 1)

end A142297

/-! ## A142297.P13515641717944334471

`∩[A090187(n+1), A231754(n+1)]`
-/

namespace A142297.P13515641717944334471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142297.P13515641717944334471

namespace A142297

/-- `∩[A090187(n+1), A231754(n+1)]` -/
def P13515641717944334471.Spec : Prop :=
  ∀ n, (P13515641717944334471.a n : ℤ) = A142297 (n + 1)

end A142297

/-! ## A142297.P8637889914371225922

`∩[A002144(n+1), A017413(n)]`
-/

namespace A142297.P8637889914371225922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142297.P8637889914371225922

namespace A142297

/-- `∩[A002144(n+1), A017413(n)]` -/
def P8637889914371225922.Spec : Prop :=
  ∀ n, (P8637889914371225922.a n : ℤ) = A142297 (n + 1)

end A142297

/-! ## A142297.P9926137040239077175

`∩[A040123(n+1), A017413(n)]`
-/

namespace A142297.P9926137040239077175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142297.P9926137040239077175

namespace A142297

/-- `∩[A040123(n+1), A017413(n)]` -/
def P9926137040239077175.Spec : Prop :=
  ∀ n, (P9926137040239077175.a n : ℤ) = A142297 (n + 1)

end A142297

/-! ## A142297.P8278615932970657690

`∩[A280084(n+1), A017413(n)]`
-/

namespace A142297.P8278615932970657690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142297.P8278615932970657690

namespace A142297

/-- `∩[A280084(n+1), A017413(n)]` -/
def P8278615932970657690.Spec : Prop :=
  ∀ n, (P8278615932970657690.a n : ℤ) = A142297 (n + 1)

end A142297

/-! ## A142297.P15662510367334936818

`∩[A296936(n+1), A017413(n)]`
-/

namespace A142297.P15662510367334936818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017413 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142297.P15662510367334936818

namespace A142297

/-- `∩[A296936(n+1), A017413(n)]` -/
def P15662510367334936818.Spec : Prop :=
  ∀ n, (P15662510367334936818.a n : ℤ) = A142297 (n + 1)

end A142297

/-! ## A142297.P9014404847003058378

`∩[A002144(n+1), A017401(n)+1]`
-/

namespace A142297.P9014404847003058378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142297.P9014404847003058378

namespace A142297

/-- `∩[A002144(n+1), A017401(n)+1]` -/
def P9014404847003058378.Spec : Prop :=
  ∀ n, (P9014404847003058378.a n : ℤ) = A142297 (n + 1)

end A142297

/-!
# A142298: Primes congruent to 15 mod 44.

The programs for A142298, the canonical program `A142298.P9666880481197302390` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142298 has offset 1).

The definition of A142298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3908 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142298.P9666880481197302390

`p?[4*11*n+15]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142298

/-- `p?[4*11*n+15]` -/
def P9666880481197302390.Spec : Prop :=
  ∀ n, (P9666880481197302390.a n : ℤ) = A142298 (n + 1)

theorem P9666880481197302390.correct : P9666880481197302390.Spec := by
  intro n
  simp only [A142298, Nat.add_sub_cancel]

end A142298

/-! ## A142298.P7310644677687308582

`A000027(p?[A304157(n+1)-9])`
-/

namespace A142298.P7310644677687308582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A142298.P7310644677687308582

namespace A142298

/-- `A000027(p?[A304157(n+1)-9])` -/
def P7310644677687308582.Spec : Prop :=
  ∀ n, P7310644677687308582.a n = A142298 (n + 1)

end A142298

/-! ## A142298.P17689732903597759538

`lcm(p?[A304157(n+1)-9], A087960(n))`
-/

namespace A142298.P17689732903597759538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) - 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A087960 n)

end

end A142298.P17689732903597759538

namespace A142298

/-- `lcm(p?[A304157(n+1)-9], A087960(n))` -/
def P17689732903597759538.Spec : Prop :=
  ∀ n, (P17689732903597759538.a n : ℤ) = A142298 (n + 1)

end A142298

/-! ## A142298.P4415332988244467767

`char[A016974(n)]+p?[A304157(n+1)-9]`
-/

namespace A142298.P4415332988244467767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016974 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304157 (n + 1) - 9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A142298.P4415332988244467767

namespace A142298

/-- `char[A016974(n)]+p?[A304157(n+1)-9]` -/
def P4415332988244467767.Spec : Prop :=
  ∀ n, P4415332988244467767.a n = A142298 (n + 1)

end A142298

/-! ## A142298.P7323809250522226094

`∩[A002145(n+1), A141851(n+1)]`
-/

namespace A142298.P7323809250522226094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142298.P7323809250522226094

namespace A142298

/-- `∩[A002145(n+1), A141851(n+1)]` -/
def P7323809250522226094.Spec : Prop :=
  ∀ n, (P7323809250522226094.a n : ℤ) = A142298 (n + 1)

end A142298

/-! ## A142298.P4371250877098165037

`∩[A045326(n+1), A141851(n+1)]`
-/

namespace A142298.P4371250877098165037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142298.P4371250877098165037

namespace A142298

/-- `∩[A045326(n+1), A141851(n+1)]` -/
def P4371250877098165037.Spec : Prop :=
  ∀ n, (P4371250877098165037.a n : ℤ) = A142298 (n + 1)

end A142298

/-! ## A142298.P5116239359078072712

`∩[A038882(n+1), A141851(n+1)]`
-/

namespace A142298.P5116239359078072712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142298.P5116239359078072712

namespace A142298

/-- `∩[A038882(n+1), A141851(n+1)]` -/
def P5116239359078072712.Spec : Prop :=
  ∀ n, (P5116239359078072712.a n : ℤ) = A142298 (n + 1)

end A142298

/-! ## A142298.P10910134384244898880

`∩[A141851(n+1), A296936(n+1)]`
-/

namespace A142298.P10910134384244898880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142298.P10910134384244898880

namespace A142298

/-- `∩[A141851(n+1), A296936(n+1)]` -/
def P10910134384244898880.Spec : Prop :=
  ∀ n, (P10910134384244898880.a n : ℤ) = A142298 (n + 1)

end A142298

/-! ## A142298.P17517894182633120820

`∩[A085760(n+1), A141851(n+1)]`
-/

namespace A142298.P17517894182633120820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142298.P17517894182633120820

namespace A142298

/-- `∩[A085760(n+1), A141851(n+1)]` -/
def P17517894182633120820.Spec : Prop :=
  ∀ n, (P17517894182633120820.a n : ℤ) = A142298 (n + 1)

end A142298

/-! ## A142298.P15485084845722892523

`∩[A141851(n+1), A197504(n+1)]`
-/

namespace A142298.P15485084845722892523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142298.P15485084845722892523

namespace A142298

/-- `∩[A141851(n+1), A197504(n+1)]` -/
def P15485084845722892523.Spec : Prop :=
  ∀ n, (P15485084845722892523.a n : ℤ) = A142298 (n + 1)

end A142298

/-! ## A142298.P17400740656308630415

`∩[A141851(n+1), A332555(n+1)]`
-/

namespace A142298.P17400740656308630415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142298.P17400740656308630415

namespace A142298

/-- `∩[A141851(n+1), A332555(n+1)]` -/
def P17400740656308630415.Spec : Prop :=
  ∀ n, (P17400740656308630415.a n : ℤ) = A142298 (n + 1)

end A142298

/-! ## A142298.P17485556069774582359

`∩[A141851(n+1), A292762(n+1)]`
-/

namespace A142298.P17485556069774582359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142298.P17485556069774582359

namespace A142298

/-- `∩[A141851(n+1), A292762(n+1)]` -/
def P17485556069774582359.Spec : Prop :=
  ∀ n, (P17485556069774582359.a n : ℤ) = A142298 (n + 1)

end A142298

/-! ## A142298.P16185699797378633542

`∩[A066499(n+1), A141851(n+1)]`
-/

namespace A142298.P16185699797378633542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142298.P16185699797378633542

namespace A142298

/-- `∩[A066499(n+1), A141851(n+1)]` -/
def P16185699797378633542.Spec : Prop :=
  ∀ n, (P16185699797378633542.a n : ℤ) = A142298 (n + 1)

end A142298

/-! ## A142298.P10787223808972900543

`∩[A097987(n+1), A141851(n+1)]`
-/

namespace A142298.P10787223808972900543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142298.P10787223808972900543

namespace A142298

/-- `∩[A097987(n+1), A141851(n+1)]` -/
def P10787223808972900543.Spec : Prop :=
  ∀ n, (P10787223808972900543.a n : ℤ) = A142298 (n + 1)

end A142298

/-! ## A142298.P6462385661562578310

`∩[A094179(n+1), A141851(n+1)]`
-/

namespace A142298.P6462385661562578310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142298.P6462385661562578310

namespace A142298

/-- `∩[A094179(n+1), A141851(n+1)]` -/
def P6462385661562578310.Spec : Prop :=
  ∀ n, (P6462385661562578310.a n : ℤ) = A142298 (n + 1)

end A142298

/-! ## A142298.P6194979522055161829

`∩[A002145(n+1), A017437(n)]`
-/

namespace A142298.P6194979522055161829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142298.P6194979522055161829

namespace A142298

/-- `∩[A002145(n+1), A017437(n)]` -/
def P6194979522055161829.Spec : Prop :=
  ∀ n, (P6194979522055161829.a n : ℤ) = A142298 (n + 1)

end A142298

/-! ## A142298.P10106103751145182743

`∩[A038882(n+1), A017437(n)]`
-/

namespace A142298.P10106103751145182743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142298.P10106103751145182743

namespace A142298

/-- `∩[A038882(n+1), A017437(n)]` -/
def P10106103751145182743.Spec : Prop :=
  ∀ n, (P10106103751145182743.a n : ℤ) = A142298 (n + 1)

end A142298

/-! ## A142298.P7393081130498162161

`∩[A045326(n+1), A017437(n)]`
-/

namespace A142298.P7393081130498162161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142298.P7393081130498162161

namespace A142298

/-- `∩[A045326(n+1), A017437(n)]` -/
def P7393081130498162161.Spec : Prop :=
  ∀ n, (P7393081130498162161.a n : ℤ) = A142298 (n + 1)

end A142298

/-! ## A142298.P7398907350815082585

`∩[A296936(n+1), A017437(n)]`
-/

namespace A142298.P7398907350815082585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017437 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142298.P7398907350815082585

namespace A142298

/-- `∩[A296936(n+1), A017437(n)]` -/
def P7398907350815082585.Spec : Prop :=
  ∀ n, (P7398907350815082585.a n : ℤ) = A142298 (n + 1)

end A142298

/-! ## A142298.P16052283600398095469

`∩[A002145(n+1), A017425(n)+1]`
-/

namespace A142298.P16052283600398095469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017425 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142298.P16052283600398095469

namespace A142298

/-- `∩[A002145(n+1), A017425(n)+1]` -/
def P16052283600398095469.Spec : Prop :=
  ∀ n, (P16052283600398095469.a n : ℤ) = A142298 (n + 1)

end A142298

/-!
# A142299: Primes congruent to 17 mod 44.

The programs for A142299, the canonical program `A142299.P6462142585437383439` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A142299 has offset 1).

The definition of A142299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3959 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A142299.P6462142585437383439

`p?[44*n+17]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A142299

/-- `p?[44*n+17]` -/
def P6462142585437383439.Spec : Prop :=
  ∀ n, (P6462142585437383439.a n : ℤ) = A142299 (n + 1)

theorem P6462142585437383439.correct : P6462142585437383439.Spec := by
  intro n
  simp only [A142299, Nat.add_sub_cancel]

end A142299

/-! ## A142299.P14939850686776901788

`∩[A008846(n+1), A141853(n+1)]`
-/

namespace A142299.P14939850686776901788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142299.P14939850686776901788

namespace A142299

/-- `∩[A008846(n+1), A141853(n+1)]` -/
def P14939850686776901788.Spec : Prop :=
  ∀ n, (P14939850686776901788.a n : ℤ) = A142299 (n + 1)

end A142299

/-! ## A142299.P12500608540211597849

`∩[A141853(n+1), A191218(n+1)]`
-/

namespace A142299.P12500608540211597849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142299.P12500608540211597849

namespace A142299

/-- `∩[A141853(n+1), A191218(n+1)]` -/
def P12500608540211597849.Spec : Prop :=
  ∀ n, (P12500608540211597849.a n : ℤ) = A142299 (n + 1)

end A142299

/-! ## A142299.P3650995301833956763

`∩[A002144(n+1), A141853(n+1)]`
-/

namespace A142299.P3650995301833956763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142299.P3650995301833956763

namespace A142299

/-- `∩[A002144(n+1), A141853(n+1)]` -/
def P3650995301833956763.Spec : Prop :=
  ∀ n, (P3650995301833956763.a n : ℤ) = A142299 (n + 1)

end A142299

/-! ## A142299.P15748072541685312645

`∩[A002313(n+1), A141853(n+1)]`
-/

namespace A142299.P15748072541685312645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142299.P15748072541685312645

namespace A142299

/-- `∩[A002313(n+1), A141853(n+1)]` -/
def P15748072541685312645.Spec : Prop :=
  ∀ n, (P15748072541685312645.a n : ℤ) = A142299 (n + 1)

end A142299

/-! ## A142299.P5035069208092096930

`∩[A141853(n+1), A280084(n+1)]`
-/

namespace A142299.P5035069208092096930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142299.P5035069208092096930

namespace A142299

/-- `∩[A141853(n+1), A280084(n+1)]` -/
def P5035069208092096930.Spec : Prop :=
  ∀ n, (P5035069208092096930.a n : ℤ) = A142299 (n + 1)

end A142299

/-! ## A142299.P7239647746495877774

`∩[A038882(n+1), A141853(n+1)]`
-/

namespace A142299.P7239647746495877774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142299.P7239647746495877774

namespace A142299

/-- `∩[A038882(n+1), A141853(n+1)]` -/
def P7239647746495877774.Spec : Prop :=
  ∀ n, (P7239647746495877774.a n : ℤ) = A142299 (n + 1)

end A142299

/-! ## A142299.P17631064978258725167

`∩[A141853(n+1), A296936(n+1)]`
-/

namespace A142299.P17631064978258725167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142299.P17631064978258725167

namespace A142299

/-- `∩[A141853(n+1), A296936(n+1)]` -/
def P17631064978258725167.Spec : Prop :=
  ∀ n, (P17631064978258725167.a n : ℤ) = A142299 (n + 1)

end A142299

/-! ## A142299.P1538716477526056614

`∩[A055025(n+1), A141853(n+1)]`
-/

namespace A142299.P1538716477526056614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142299.P1538716477526056614

namespace A142299

/-- `∩[A055025(n+1), A141853(n+1)]` -/
def P1538716477526056614.Spec : Prop :=
  ∀ n, (P1538716477526056614.a n : ℤ) = A142299 (n + 1)

end A142299

/-! ## A142299.P16230441894803835491

`∩[A120960(n+1), A141853(n+1)]`
-/

namespace A142299.P16230441894803835491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142299.P16230441894803835491

namespace A142299

/-- `∩[A120960(n+1), A141853(n+1)]` -/
def P16230441894803835491.Spec : Prop :=
  ∀ n, (P16230441894803835491.a n : ℤ) = A142299 (n + 1)

end A142299

/-! ## A142299.P2399015841738304825

`∩[A085759(n+1), A141853(n+1)]`
-/

namespace A142299.P2399015841738304825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142299.P2399015841738304825

namespace A142299

/-- `∩[A085759(n+1), A141853(n+1)]` -/
def P2399015841738304825.Spec : Prop :=
  ∀ n, (P2399015841738304825.a n : ℤ) = A142299 (n + 1)

end A142299

/-! ## A142299.P9045326708739788352

`∩[A002144(n+1), A248339(n)-2]`
-/

namespace A142299.P9045326708739788352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142299.P9045326708739788352

namespace A142299

/-- `∩[A002144(n+1), A248339(n)-2]` -/
def P9045326708739788352.Spec : Prop :=
  ∀ n, (P9045326708739788352.a n : ℤ) = A142299 (n + 1)

end A142299

/-! ## A142299.P15624623227353730680

`∩[A002313(n+1), A248339(n)-2]`
-/

namespace A142299.P15624623227353730680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142299.P15624623227353730680

namespace A142299

/-- `∩[A002313(n+1), A248339(n)-2]` -/
def P15624623227353730680.Spec : Prop :=
  ∀ n, (P15624623227353730680.a n : ℤ) = A142299 (n + 1)

end A142299

/-! ## A142299.P8543930520279835731

`∩[A038882(n+1), A248339(n)-2]`
-/

namespace A142299.P8543930520279835731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142299.P8543930520279835731

namespace A142299

/-- `∩[A038882(n+1), A248339(n)-2]` -/
def P8543930520279835731.Spec : Prop :=
  ∀ n, (P8543930520279835731.a n : ℤ) = A142299 (n + 1)

end A142299

/-! ## A142299.P10540912350082019094

`∩[A055025(n+1), A248339(n)-2]`
-/

namespace A142299.P10540912350082019094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142299.P10540912350082019094

namespace A142299

/-- `∩[A055025(n+1), A248339(n)-2]` -/
def P10540912350082019094.Spec : Prop :=
  ∀ n, (P10540912350082019094.a n : ℤ) = A142299 (n + 1)

end A142299

/-! ## A142299.P8639737875316376759

`∩[A280084(n+1), A248339(n)-2]`
-/

namespace A142299.P8639737875316376759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142299.P8639737875316376759

namespace A142299

/-- `∩[A280084(n+1), A248339(n)-2]` -/
def P8639737875316376759.Spec : Prop :=
  ∀ n, (P8639737875316376759.a n : ℤ) = A142299 (n + 1)

end A142299

/-! ## A142299.P10226913716955645909

`∩[A296936(n+1), A248339(n)-2]`
-/

namespace A142299.P10226913716955645909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142299.P10226913716955645909

namespace A142299

/-- `∩[A296936(n+1), A248339(n)-2]` -/
def P10226913716955645909.Spec : Prop :=
  ∀ n, (P10226913716955645909.a n : ℤ) = A142299 (n + 1)

end A142299

/-! ## A142299.P15574842618197613615

`∩[A141853(n+1), A351535(n+1)]`
-/

namespace A142299.P15574842618197613615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142299.P15574842618197613615

namespace A142299

/-- `∩[A141853(n+1), A351535(n+1)]` -/
def P15574842618197613615.Spec : Prop :=
  ∀ n, (P15574842618197613615.a n : ℤ) = A142299 (n + 1)

end A142299

/-! ## A142299.P12868203927942661910

`∩[A125018(n+1), A141853(n+1)]`
-/

namespace A142299.P12868203927942661910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142299.P12868203927942661910

namespace A142299

/-- `∩[A125018(n+1), A141853(n+1)]` -/
def P12868203927942661910.Spec : Prop :=
  ∀ n, (P12868203927942661910.a n : ℤ) = A142299 (n + 1)

end A142299

/-! ## A142299.P18056786730687271309

`∩[A040123(n+1), A141853(n+1)]`
-/

namespace A142299.P18056786730687271309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A142299.P18056786730687271309

namespace A142299

/-- `∩[A040123(n+1), A141853(n+1)]` -/
def P18056786730687271309.Spec : Prop :=
  ∀ n, (P18056786730687271309.a n : ℤ) = A142299 (n + 1)

end A142299

