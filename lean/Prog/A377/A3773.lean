import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
# A377300: G.f.: Sum_{k>=1} k * x^(k*(7*k - 7 + 2)/2) / (1 - x^k).

The programs for A377300, there is no canonical definition to state claims against.
-/

/-! ## A377300.P9936327826352871314

`A000203(A023126(n+1)%A210895(n+1))`
-/

namespace A377300.P9936327826352871314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.tmod (A023126 (n + 1)) (A210895 (n + 1))).toNat

end

end A377300.P9936327826352871314

/-! ## A377300.P459112270990162659

`2%(A096577(n+1)+1)+1`
-/

namespace A377300.P459112270990162659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A096577 (n + 1) + 1) + 1

end

end A377300.P459112270990162659

/-! ## A377300.P10803843014779295377

`A110268(A275807(n+1))`
-/

namespace A377300.P10803843014779295377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110268 (A275807 (n + 1)).toNat

end

end A377300.P10803843014779295377

/-! ## A377300.P10173379918549035945

`or(1, A031346(A140730(n)))`
-/

namespace A377300.P10173379918549035945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A031346 (A140730 n).toNat)

end

end A377300.P10173379918549035945

/-! ## A377300.P17474448748242046461

`A365426(2*A209725(n+2))`
-/

namespace A377300.P17474448748242046461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365426 (2 * A209725 (n + 2)).toNat

end

end A377300.P17474448748242046461

/-!
# A377301: G.f.: Sum_{k>=1} k * x^(k*(4*k-3)) / (1 - x^k).

The programs for A377301, there is no canonical definition to state claims against.
-/

/-! ## A377301.P11839192170387385435

`gcd(3, A276871(2*(n+2))-n)`
-/

namespace A377301.P11839192170387385435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A276871 (2 * (n + 2)) - (n : ℤ))

end

end A377301.P11839192170387385435

/-! ## A377301.P7052932996167949496

`A055229(A000792(n))`
-/

namespace A377301.P7052932996167949496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (A000792 n).toNat

end

end A377301.P7052932996167949496

/-! ## A377301.P9648153411130529524

`A040226(A128271(n+1))`
-/

namespace A377301.P9648153411130529524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040226 (A128271 (n + 1)).toNat

end

end A377301.P9648153411130529524

/-! ## A377301.P5896412545449166000

`A365426(A209725(n+1))`
-/

namespace A377301.P5896412545449166000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365426 (A209725 (n + 1)).toNat

end

end A377301.P5896412545449166000

/-! ## A377301.P2085384869160114842

`gcd(A082528(n), A099971(n))`
-/

namespace A377301.P2085384869160114842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082528 n) (A099971 n)

end

end A377301.P2085384869160114842

/-!
# A377304: a(n) is the number of distinct cuboids whose edges are divisors of n.

The programs for A377304, the canonical program `A377304.P13372508252213603195` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377304 has offset 1).

The definition of A377304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377304.P17916413649398192966

`∑{d}[n+1, A086222(#)]`
-/

namespace A377304.P17916413649398192966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A086222 d

end

end A377304.P17916413649398192966

namespace A377304

/-- `∑{d}[n+1, A086222(#)]` -/
def P17916413649398192966.Spec : Prop :=
  ∀ n, P17916413649398192966.a n = A377304 (n + 1)

end A377304

/-! ## A377304.P241593182462568564

`A000292(A000005(n+1))`
-/

namespace A377304.P241593182462568564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A000005 (n + 1)).toNat

end

end A377304.P241593182462568564

namespace A377304

/-- `A000292(A000005(n+1))` -/
def P241593182462568564.Spec : Prop :=
  ∀ n, P241593182462568564.a n = A377304 (n + 1)

end A377304

/-! ## A377304.P16472381939989372724

`A005232(A114003(n+1))`
-/

namespace A377304.P16472381939989372724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 (A114003 (n + 1)).toNat

end

end A377304.P16472381939989372724

namespace A377304

/-- `A005232(A114003(n+1))` -/
def P16472381939989372724.Spec : Prop :=
  ∀ n, P16472381939989372724.a n = A377304 (n + 1)

end A377304

/-! ## A377304.P13372508252213603195

`A058187(A086369(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A377304

/-- `A058187(A086369(n+1))` -/
def P13372508252213603195.Spec : Prop :=
  ∀ n, P13372508252213603195.a n = A377304 (n + 1)

theorem P13372508252213603195.correct : P13372508252213603195.Spec := by
  intro n
  simp only [A377304, Nat.add_sub_cancel]

end A377304

/-! ## A377304.P2112641256703156490

`A094415(A066446(n+1))`
-/

namespace A377304.P2112641256703156490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094415 (A066446 (n + 1)).toNat

end

end A377304.P2112641256703156490

namespace A377304

/-- `A094415(A066446(n+1))` -/
def P2112641256703156490.Spec : Prop :=
  ∀ n, P2112641256703156490.a n = A377304 (n + 1)

end A377304

/-! ## A377304.P11477541315946966139

`A014370(A184389(n+1))`
-/

namespace A377304.P11477541315946966139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014370 (A184389 (n + 1)).toNat

end

end A377304.P11477541315946966139

namespace A377304

/-- `A014370(A184389(n+1))` -/
def P11477541315946966139.Spec : Prop :=
  ∀ n, P11477541315946966139.a n = A377304 (n + 1)

end A377304

/-! ## A377304.P10858369594632843452

`A128505(A337175(n+1))`
-/

namespace A377304.P10858369594632843452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128505 (A337175 (n + 1)).toNat

end

end A377304.P10858369594632843452

namespace A377304

/-- `A128505(A337175(n+1))` -/
def P10858369594632843452.Spec : Prop :=
  ∀ n, P10858369594632843452.a n = A377304 (n + 1)

end A377304

/-! ## A377304.P429914955244112675

`A000292(A006218(n+1)-A006218(n))`
-/

namespace A377304.P429914955244112675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A006218 (n + 1) - A006218 n).toNat

end

end A377304.P429914955244112675

namespace A377304

/-- `A000292(A006218(n+1)-A006218(n))` -/
def P429914955244112675.Spec : Prop :=
  ∀ n, P429914955244112675.a n = A377304 (n + 1)

end A377304

/-! ## A377304.P6554725570002890848

`A008804(A319410(n+1))`
-/

namespace A377304.P6554725570002890848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 (A319410 (n + 1)).toNat

end

end A377304.P6554725570002890848

namespace A377304

/-- `A008804(A319410(n+1))` -/
def P6554725570002890848.Spec : Prop :=
  ∀ n, P6554725570002890848.a n = A377304 (n + 1)

end A377304

/-! ## A377304.P9693310074549934430

`A133826(A337524(n+1))`
-/

namespace A377304.P9693310074549934430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133826 (A337524 (n + 1)).toNat

end

end A377304.P9693310074549934430

namespace A377304

/-- `A133826(A337524(n+1))` -/
def P9693310074549934430.Spec : Prop :=
  ∀ n, P9693310074549934430.a n = A377304 (n + 1)

end A377304

/-! ## A377304.P17139643018047114479

`A007426(A100577(n+1))`
-/

namespace A377304.P17139643018047114479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007426 (A100577 (n + 1)).toNat

end

end A377304.P17139643018047114479

namespace A377304

/-- `A007426(A100577(n+1))` -/
def P17139643018047114479.Spec : Prop :=
  ∀ n, P17139643018047114479.a n = A377304 (n + 1)

end A377304

/-! ## A377304.P18068196577905365791

`A349124(A338506(n+1))`
-/

namespace A377304.P18068196577905365791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349124 (A338506 (n + 1)).toNat

end

end A377304.P18068196577905365791

namespace A377304

/-- `A349124(A338506(n+1))` -/
def P18068196577905365791.Spec : Prop :=
  ∀ n, P18068196577905365791.a n = A377304 (n + 1)

end A377304

/-! ## A377304.P11004213785662612910

`A000292(A046951((n+1)²))`
-/

namespace A377304.P11004213785662612910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A046951 ((n + 1) ^ 2)).toNat

end

end A377304.P11004213785662612910

namespace A377304

/-- `A000292(A046951((n+1)²))` -/
def P11004213785662612910.Spec : Prop :=
  ∀ n, P11004213785662612910.a n = A377304 (n + 1)

end A377304

/-!
# A377306: Numbers that are not the sum of the first k fourth powers.

The programs for A377306, the canonical program `A377306.P13501222665041084625` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377306 has offset 1).

The definition of A377306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377306.P13501222665041084625

`comp[∑[n^4]]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A377306

/-- `comp[∑[n^4]]` -/
def P13501222665041084625.Spec : Prop :=
  ∀ n, (P13501222665041084625.a n : ℤ) = A377306 (n + 1)

theorem P13501222665041084625.correct : P13501222665041084625.Spec := by
  intro n
  simp only [A377306, Nat.add_sub_cancel]

end A377306

/-! ## A377306.P14926738389607582168

`and(comp[A000538(n)], -1)`
-/

namespace A377306.P14926738389607582168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (-1)

end

end A377306.P14926738389607582168

namespace A377306

/-- `and(comp[A000538(n)], -1)` -/
def P14926738389607582168.Spec : Prop :=
  ∀ n, P14926738389607582168.a n = A377306 (n + 1)

end A377306

/-! ## A377306.P10102441853443947454

`comp[∑[A000583(n)]-1]+1`
-/

namespace A377306.P10102441853443947454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A377306.P10102441853443947454

namespace A377306

/-- `comp[∑[A000583(n)]-1]+1` -/
def P10102441853443947454.Spec : Prop :=
  ∀ n, (P10102441853443947454.a n : ℤ) = A377306 (n + 1)

end A377306

/-! ## A377306.P5351135064324953812

`comp[∑[(A005563(n)+1)²]-1]+1`
-/

namespace A377306.P5351135064324953812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005563 n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A377306.P5351135064324953812

namespace A377306

/-- `comp[∑[(A005563(n)+1)²]-1]+1` -/
def P5351135064324953812.Spec : Prop :=
  ∀ n, (P5351135064324953812.a n : ℤ) = A377306 (n + 1)

end A377306

/-! ## A377306.P12072551965521813785

`A000027(comp[∑[A000583(n)]])`
-/

namespace A377306.P12072551965521813785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A377306.P12072551965521813785

namespace A377306

/-- `A000027(comp[∑[A000583(n)]])` -/
def P12072551965521813785.Spec : Prop :=
  ∀ n, P12072551965521813785.a n = A377306 (n + 1)

end A377306

/-! ## A377306.P16069662535930990149

`comp[∑[A000583(n)]]%A061424(n+1)`
-/

namespace A377306.P16069662535930990149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A061424 (n + 1))

end

end A377306.P16069662535930990149

namespace A377306

/-- `comp[∑[A000583(n)]]%A061424(n+1)` -/
def P16069662535930990149.Spec : Prop :=
  ∀ n, P16069662535930990149.a n = A377306 (n + 1)

end A377306

/-! ## A377306.P13938522980897225931

`A023443(comp[∑[A000583(n)]]+1)`
-/

namespace A377306.P13938522980897225931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A377306.P13938522980897225931

namespace A377306

/-- `A023443(comp[∑[A000583(n)]]+1)` -/
def P13938522980897225931.Spec : Prop :=
  ∀ n, P13938522980897225931.a n = A377306 (n + 1)

end A377306

/-!
# A377308: All winning positions of Gordon Hamilton's Jumping Frogs game, encoded as even numbers by their prime-factorization exponents.

The programs for A377308, there is no canonical definition to state claims against.
-/

/-! ## A377308.P662657808255250806

`A005153(lt[A055830(2*n+1), A291810(n+1)])`
-/

namespace A377308.P662657808255250806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055830 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A377308.P662657808255250806

/-! ## A377308.P1826802794791787389

`A345000(A085279(n))+A139252(n+1)`
-/

namespace A377308.P1826802794791787389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345000 (A085279 n).toNat + A139252 (n + 1)

end

end A377308.P1826802794791787389

/-! ## A377308.P2145671327273774189

`A005153(lt[A262949(n), A014190(n+1)])`
-/

namespace A377308.P2145671327273774189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262949 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014190 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A377308.P2145671327273774189

/-!
# A377310: Divisibility sequence associated with elliptic curve y^2 + y = x^3 - x^2 - 2x + 2 and point (1, 0).

The programs for A377310, there is no canonical definition to state claims against.
-/

/-! ## A377310.P8912507436105376598

`A210098(2*n)`
-/

namespace A377310.P8912507436105376598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210098 (2 * n)

end

end A377310.P8912507436105376598

/-! ## A377310.P18367922769531135361

`e^(a(n-1)*a(n-3)-a(n-2))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=-3, a(5)=-4, a(6)=-13, a(7)=23, a(8)=87, a(9)=415`
-/

namespace A377310.P18367922769531135361
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1, 1, 1, -3, -4, -13, 23, 87, 415] fun n a =>
  Real.exp 1 ^ (a (n - 1) * a (n - 3) - a (n - 2))

end

end A377310.P18367922769531135361

/-!
# A377311: Least positive integer k with k*n primitive practical.

The programs for A377311, there is no canonical definition to state claims against.
-/

/-! ## A377311.P16413054484860900123

`A061070(A051569(n+2)%A007780(n+5))`
-/

namespace A377311.P16413054484860900123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061070 (Int.tmod (A051569 (n + 2)) (A007780 (n + 5))).toNat

end

end A377311.P16413054484860900123

/-!
# A377313: Numbers that are not hexateron (5-simplex) numbers.

The programs for A377313, the canonical program `A377313.P481595585610234576` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377313 has offset 1).

The definition of A377313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A377313.P481595585610234576

`comp[C(n, 5)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A377313

/-- `comp[C(n, 5)]` -/
def P481595585610234576.Spec : Prop :=
  ∀ n, (P481595585610234576.a n : ℤ) = A377313 (n + 1)

theorem P481595585610234576.correct : P481595585610234576.Spec := by
  intro n
  simp only [A377313, Nat.add_sub_cancel]

end A377313

/-! ## A377313.P16033697512230101700

`comp[∑[∑[∑[∑[n]]]]]`
-/

namespace A377313.P16033697512230101700
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A377313.P16033697512230101700

namespace A377313

/-- `comp[∑[∑[∑[∑[n]]]]]` -/
def P16033697512230101700.Spec : Prop :=
  ∀ n, (P16033697512230101700.a n : ℤ) = A377313 (n + 1)

end A377313

/-! ## A377313.P13190938061923997847

`eq[0, char[C(n, 5)]]`
-/

namespace A377313.P13190938061923997847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 5

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A377313.P13190938061923997847

namespace A377313

/-- `eq[0, char[C(n, 5)]]` -/
def P13190938061923997847.Spec : Prop :=
  ∀ n, (P13190938061923997847.a n : ℤ) = A377313 (n + 1)

end A377313

/-! ## A377313.P17528449290988178428

`lt[char[C(n, 5)], 1]`
-/

namespace A377313.P17528449290988178428
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 5

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A377313.P17528449290988178428

namespace A377313

/-- `lt[char[C(n, 5)], 1]` -/
def P17528449290988178428.Spec : Prop :=
  ∀ n, (P17528449290988178428.a n : ℤ) = A377313 (n + 1)

end A377313

/-! ## A377313.P12972367568616114908

`lt[char[∑[∑[∑[∑[n]]]]], 1]`
-/

namespace A377313.P12972367568616114908
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f7 j) n

end

end A377313.P12972367568616114908

namespace A377313

/-- `lt[char[∑[∑[∑[∑[n]]]]], 1]` -/
def P12972367568616114908.Spec : Prop :=
  ∀ n, (P12972367568616114908.a n : ℤ) = A377313 (n + 1)

end A377313

/-! ## A377313.P2047407145229922618

`A000194(A001650(A167384(n+1)))+n`
-/

namespace A377313.P2047407145229922618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A001650 (A167384 (n + 1)).toNat).toNat + (n : ℤ)

end

end A377313.P2047407145229922618

namespace A377313

/-- `A000194(A001650(A167384(n+1)))+n` -/
def P2047407145229922618.Spec : Prop :=
  ∀ n, P2047407145229922618.a n = A377313 (n + 1)

end A377313

/-!
# A377314: a(n) = coefficient of the term that is independent of 2^(1/3) and 2^(2/3) in the expansion of (1 + 2^(1/3) + 2^(2/3))^n.

The programs for A377314, the canonical program `A377314.P2318958476718803484` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377314 has offset 0).

The definition of A377314 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377314.P2318958476718803484

`3*a(n-1)+3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A377314

/-- `3*a(n-1)+3*a(n-2)+a(n-3)` -/
def P2318958476718803484.Spec : Prop :=
  ∀ n, (P2318958476718803484.a n : ℤ) = A377314 n

theorem P2318958476718803484.correct : P2318958476718803484.Spec := by
  intro n
  simp only [A377314]

end A377314

/-! ## A377314.P6177402111178587470

`ogf((-1+2x+x^2)/(-1+3x+3x^2+x^3))`
-/

namespace A377314.P6177402111178587470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -1] [1, -3, -3, -1] n

end

end A377314.P6177402111178587470

namespace A377314

/-- `ogf((-1+2x+x^2)/(-1+3x+3x^2+x^3))` -/
def P6177402111178587470.Spec : Prop :=
  ∀ n, P6177402111178587470.a n = A377314 n

end A377314

/-! ## A377314.P17702336218603782411

`a(n-3)+3*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A377314.P17702336218603782411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  a (n - 3) + 3 * (a (n - 1) + a (n - 2))

end

end A377314.P17702336218603782411

namespace A377314

/-- `a(n-3)+3*(a(n-1)+a(n-2))` -/
def P17702336218603782411.Spec : Prop :=
  ∀ n, (P17702336218603782411.a n : ℤ) = A377314 n

end A377314

/-! ## A377314.P7579423328812444241

`2*A195350(n)-1`
-/

namespace A377314.P7579423328812444241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195350 n - 1

end

end A377314.P7579423328812444241

namespace A377314

/-- `2*A195350(n)-1` -/
def P7579423328812444241.Spec : Prop :=
  ∀ n, P7579423328812444241.a n = A377314 n

end A377314

/-! ## A377314.P3163872322760469131

`A108368(n+1)-(A377315(n)+A108368(n))`
-/

namespace A377314.P3163872322760469131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108368 (n + 1) - (A377315 n + A108368 n)

end

end A377314.P3163872322760469131

namespace A377314

/-- `A108368(n+1)-(A377315(n)+A108368(n))` -/
def P3163872322760469131.Spec : Prop :=
  ∀ n, P3163872322760469131.a n = A377314 n

end A377314

/-!
# A377315: a(n) = coefficient of 2^(1/3) in the expansion of (1 + 2^(1/3) + 2^(2/3))^n.

The programs for A377315, the canonical program `A377315.P15279834304925887633` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377315 has offset 0).

The definition of A377315 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377315.P15279834304925887633

`3*a(n-1)+3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A377315

/-- `3*a(n-1)+3*a(n-2)+a(n-3)` -/
def P15279834304925887633.Spec : Prop :=
  ∀ n, (P15279834304925887633.a n : ℤ) = A377315 n

theorem P15279834304925887633.correct : P15279834304925887633.Spec := by
  intro n
  simp only [A377315]

end A377315

/-! ## A377315.P3244419687707714061

`ogf((x+x^2)/(1-3x-3x^2-x^3))`
-/

namespace A377315.P3244419687707714061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -3, -3, -1] n

end

end A377315.P3244419687707714061

namespace A377315

/-- `ogf((x+x^2)/(1-3x-3x^2-x^3))` -/
def P3244419687707714061.Spec : Prop :=
  ∀ n, P3244419687707714061.a n = A377315 n

end A377315

/-! ## A377315.P11864088104285465734

`a(n-3)+3*(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A377315.P11864088104285465734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4] fun n a =>
  a (n - 3) + 3 * (a (n - 1) + a (n - 2))

end

end A377315.P11864088104285465734

namespace A377315

/-- `a(n-3)+3*(a(n-1)+a(n-2))` -/
def P11864088104285465734.Spec : Prop :=
  ∀ n, (P11864088104285465734.a n : ℤ) = A377315 n

end A377315

/-! ## A377315.P7521773199826485189

`Δ[A108368(n)]-A377314(n)`
-/

namespace A377315.P7521773199826485189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108368 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A377314 n

end

end A377315.P7521773199826485189

namespace A377315

/-- `Δ[A108368(n)]-A377314(n)` -/
def P7521773199826485189.Spec : Prop :=
  ∀ n, P7521773199826485189.a n = A377315 n

end A377315

/-! ## A377315.P5340304554112303170

`A108368(n+1)-(A377314(n)+A108368(n))`
-/

namespace A377315.P5340304554112303170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108368 (n + 1) - (A377314 n + A108368 n)

end

end A377315.P5340304554112303170

namespace A377315

/-- `A108368(n+1)-(A377314(n)+A108368(n))` -/
def P5340304554112303170.Spec : Prop :=
  ∀ n, P5340304554112303170.a n = A377315 n

end A377315

/-!
# A377316: Orders k of groups G such that G is a non-split extension of Inn(G) by Z(G) for at least one group G of order k.

The programs for A377316, there is no canonical definition to state claims against.
-/

/-! ## A377316.P1487516480905852962

`∩[A060652(n+1), A375399(n+1)]`
-/

namespace A377316.P1487516480905852962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377316.P1487516480905852962

/-! ## A377316.P15721693613556655185

`lt[7, A364906(n+1)]+1`
-/

namespace A377316.P15721693613556655185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364906 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A377316.P15721693613556655185

/-! ## A377316.P6466775495036025902

`lt[1, A004137(A294333(2*n))]`
-/

namespace A377316.P6466775495036025902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004137 (A294333 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A377316.P6466775495036025902

/-! ## A377316.P3858805112277021956

`filter[A051234(n+3), A342023(#)]`
-/

namespace A377316.P3858805112277021956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051234 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342023 (f1 j).toNat = 1) n)

end

end A377316.P3858805112277021956

/-!
# A377317: Numbers k such that prime(k), prime(k)+6, and prime(k)+12 are primes.

The programs for A377317, there is no canonical definition to state claims against.
-/

/-! ## A377317.P650561224136210886

`A000720(A023241(n+1))`
-/

namespace A377317.P650561224136210886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A023241 (n + 1)).toNat

end

end A377317.P650561224136210886

/-! ## A377317.P2299733770484024521

`A000720(A006489(n+1)-5)`
-/

namespace A377317.P2299733770484024521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A006489 (n + 1) - 5).toNat

end

end A377317.P2299733770484024521

/-! ## A377317.P505130969904181788

`A061395(2*A023241(n+1))`
-/

namespace A377317.P505130969904181788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A023241 (n + 1)).toNat

end

end A377317.P505130969904181788

/-! ## A377317.P7701744914991603617

`∑{d}[A023241(n+1), A304818(#)]`
-/

namespace A377317.P7701744914991603617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A304818 d

end

end A377317.P7701744914991603617

/-! ## A377317.P10780541300018950586

`A304818(∏{p}[A023241(n+1), #])`
-/

namespace A377317.P10780541300018950586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304818 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A377317.P10780541300018950586

/-! ## A377317.P5687593215249688974

`A230980(A023241(n+1)+1)`
-/

namespace A377317.P5687593215249688974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A023241 (n + 1) + 1).toNat

end

end A377317.P5687593215249688974

/-! ## A377317.P3626493435387403287

`A036234(A023241(n+1)-1)`
-/

namespace A377317.P3626493435387403287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A023241 (n + 1) - 1).toNat

end

end A377317.P3626493435387403287

/-! ## A377317.P4778036881959440680

`A204892(A023241(n+1)-2)`
-/

namespace A377317.P4778036881959440680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A023241 (n + 1) - 2).toNat

end

end A377317.P4778036881959440680

/-! ## A377317.P2519113941500345034

`A003963(or(1, A023241(n+1)))`
-/

namespace A377317.P2519113941500345034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lor 1 (A023241 (n + 1))).toNat

end

end A377317.P2519113941500345034

/-! ## A377317.P13235867628677073787

`A003963(2*A023241(n+1))`
-/

namespace A377317.P13235867628677073787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A023241 (n + 1)).toNat

end

end A377317.P13235867628677073787

/-!
# A377318: Numbers k such that prime(k), prime(k)+6, prime(k)+12, and prime(k)+18 are primes.

The programs for A377318, there is no canonical definition to state claims against.
-/

/-! ## A377318.P8691975811875260478

`A000720(A023271(n+1))`
-/

namespace A377318.P8691975811875260478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A023271 (n + 1)).toNat

end

end A377318.P8691975811875260478

/-! ## A377318.P5877961129514745823

`A000720(A046122(n+1)-5)`
-/

namespace A377318.P5877961129514745823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A046122 (n + 1) - 5).toNat

end

end A377318.P5877961129514745823

/-! ## A377318.P16761441715358006612

`A061395(or(1, A023271(n+1)))`
-/

namespace A377318.P16761441715358006612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A023271 (n + 1))).toNat

end

end A377318.P16761441715358006612

/-! ## A377318.P16176807671538687604

`∑{d}[A023271(n+1), A061395(#)]`
-/

namespace A377318.P16176807671538687604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A377318.P16176807671538687604

/-! ## A377318.P769891923988852075

`A061395(A023271(n+1)%A080747(n+1))`
-/

namespace A377318.P769891923988852075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A023271 (n + 1)) (A080747 (n + 1))).toNat

end

end A377318.P769891923988852075

/-! ## A377318.P3014614779790930181

`A061395(∪[A023271(3*n+1), A023271(n+1)])`
-/

namespace A377318.P3014614779790930181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023271 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023271 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A377318.P3014614779790930181

/-!
# A377319: a(n) is the smallest positive integer k such that n + k and n - k have the same number of divisors.

The programs for A377319, there is no canonical definition to state claims against.
-/

/-! ## A377319.P16860201621885388997

`A135010(A291700(n+1)+A028982(n+1))`
-/

namespace A377319.P16860201621885388997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135010 (A291700 (n + 1) + A028982 (n + 1)).toNat

end

end A377319.P16860201621885388997

/-! ## A377319.P5068934197123947498

`A374757(A184625(n+1)+A056906(n+4))`
-/

namespace A377319.P5068934197123947498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374757 (A184625 (n + 1) + A056906 (n + 4)).toNat

end

end A377319.P5068934197123947498

/-! ## A377319.P11356970518598945018

`A187447(A352297(n+5)+A122080(n+1))`
-/

namespace A377319.P11356970518598945018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187447 (A352297 (n + 5) + A122080 (n + 1)).toNat

end

end A377319.P11356970518598945018

/-! ## A377319.P418428880975475877

`gcd(A038548(A173033(n)), A062869(2*n+3))`
-/

namespace A377319.P418428880975475877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038548 (A173033 n).toNat) (A062869 (2 * n + 3))

end

end A377319.P418428880975475877

/-!
# A377321: a(n) is the smallest positive integer k such that n + k and n - k have the same number of distinct prime factors.

The programs for A377321, there is no canonical definition to state claims against.
-/

/-! ## A377321.P17635568969708813030

`A094840(A323108(n+2))`
-/

namespace A377321.P17635568969708813030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094840 (A323108 (n + 2)).toNat

end

end A377321.P17635568969708813030

/-! ## A377321.P10239508011000625149

`A026792(A281615(n+1)^A219866(n))`
-/

namespace A377321.P10239508011000625149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026792 (SequenceMachineLib.roundAway ((A281615 (n + 1) : ℚ) ^ (A219866 n : ℤ))).toNat

end

end A377321.P10239508011000625149

/-! ## A377321.P6479962375506818307

`A115575(A178364(n+1)+1)`
-/

namespace A377321.P6479962375506818307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115575 (A178364 (n + 1) + 1).toNat

end

end A377321.P6479962375506818307

/-! ## A377321.P1719087386816375357

`A036036(∑[A239741(n+1)+2])`
-/

namespace A377321.P1719087386816375357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239741 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036036 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A377321.P1719087386816375357

/-! ## A377321.P11774209543396275341

`A337565(A245472(n+1)+A129495(n+1))`
-/

namespace A377321.P11774209543396275341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337565 (A245472 (n + 1) + A129495 (n + 1)).toNat

end

end A377321.P11774209543396275341

/-!
# A377322: Number of cells that are a distance of n away in an order-5 hyperbolic square tiling.

The programs for A377322, there is no canonical definition to state claims against.
-/

/-! ## A377322.P17022841855729359354

`A316470(record[∑{p}[2*n, C(#, n-1)]]+2^n)`
-/

namespace A377322.P17022841855729359354
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p ((n : ℤ) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316470 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2 ^ n)

end

end A377322.P17022841855729359354

/-! ## A377322.P14619998044012494702

`A360615((2*n-1)*(n-1)^(n-1))+(n+4)*2^(n-1)-1`
-/

namespace A377322.P14619998044012494702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360615 (SequenceMachineLib.roundAway (((2 * n : ℤ) - 1 : ℚ) * ((n : ℤ) - 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat : ℚ) + ((n + 4 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1)

end

end A377322.P14619998044012494702

/-!
# A377323: E.g.f. satisfies A(x) = 1 - log(1 - x*A(x)^3)/A(x).

The programs for A377323, there is no canonical definition to state claims against.
-/

/-! ## A377323.P9882694625814123275

`A321979(n+1)-A000225(n)`
-/

namespace A377323.P9882694625814123275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321979 (n + 1) - A000225 n

end

end A377323.P9882694625814123275

/-!
# A377324: E.g.f. satisfies A(x) = 1 + (exp(x*A(x)^3) - 1)/A(x).

The programs for A377324, there is no canonical definition to state claims against.
-/

/-! ## A377324.P18153042364803552142

`A026347(n!²)`
-/

namespace A377324.P18153042364803552142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026347 (Nat.factorial n ^ 2)

end

end A377324.P18153042364803552142

/-!
# A377325: E.g.f. satisfies A(x) = 1 - log(1 - x*A(x))/A(x).

The programs for A377325, there is no canonical definition to state claims against.
-/

/-! ## A377325.P7352754726193972279

`A116981(A000111(n))`
-/

namespace A377325.P7352754726193972279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116981 (A000111 n).toNat

end

end A377325.P7352754726193972279

/-! ## A377325.P5713932549920121010

`A239639(A087218(n))`
-/

namespace A377325.P5713932549920121010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239639 (A087218 n).toNat

end

end A377325.P5713932549920121010

/-!
# A377326: E.g.f. satisfies A(x) = 1 + (exp(x*A(x)) - 1)/A(x).

The programs for A377326, there is no canonical definition to state claims against.
-/

/-! ## A377326.P1653138545513908654

`A065033(A155521(n)-A010051(n+1))`
-/

namespace A377326.P1653138545513908654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A155521 n - A010051 (n + 1)).toNat

end

end A377326.P1653138545513908654

/-! ## A377326.P1746144598128642152

`A065033(xor(A010051(n+1), A155521(n)))`
-/

namespace A377326.P1746144598128642152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.xor (A010051 (n + 1)) (A155521 n)).toNat

end

end A377326.P1746144598128642152

/-! ## A377326.P9200584139580874485

`A278950(A212923(n+1)+A000203(n+1))`
-/

namespace A377326.P9200584139580874485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278950 (A212923 (n + 1) + A000203 (n + 1)).toNat

end

end A377326.P9200584139580874485

/-!
# A377327: E.g.f. satisfies A(x) = 1 - A(x)^2 * log(1 - x*A(x)^3).

The programs for A377327, there is no canonical definition to state claims against.
-/

/-! ## A377327.P10679457004004007419

`A098238(A002275(n))+abs(A028296(n))`
-/

namespace A377327.P10679457004004007419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098238 (A002275 n).toNat + |A028296 n|

end

end A377327.P10679457004004007419

/-!
# A377330: E.g.f. satisfies A(x) = 1 + A(x)^2 * (exp(x*A(x)^2) - 1).

The programs for A377330, there is no canonical definition to state claims against.
-/

/-! ## A377330.P9709310567893135547

`A058183(A270923(n)-A000045(n))`
-/

namespace A377330.P9709310567893135547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058183 (A270923 n - A000045 n).toNat

end

end A377330.P9709310567893135547

/-!
# A377332: Positive integers k such that there exists a fully symmetric k-celled polycube, i.e., such that A376971(k) > 0.

The programs for A377332, there is no canonical definition to state claims against.
-/

/-! ## A377332.P2335672603588335394

`lt[0, A376971(n+1)]+1`
-/

namespace A377332.P2335672603588335394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376971 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A377332.P2335672603588335394

/-!
# A377333: Positive integers k such that there does not exist a fully symmetric k-celled polycube, i.e., such that A376971(k) = 0.

The programs for A377333, there is no canonical definition to state claims against.
-/

/-! ## A377333.P8229280729143754240

`eq[0, A376971(n+1)]+1`
-/

namespace A377333.P8229280729143754240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376971 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A377333.P8229280729143754240

/-! ## A377333.P13067691881095887279

`eq[0, A376971(A028310(n))]`
-/

namespace A377333.P13067691881095887279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376971 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A377333.P13067691881095887279

/-!
# A377334: Number of n-celled polycubes with full symmetry and the rotation point of the symmetries in the center of a cell (that may or may not be part of the polycube).

The programs for A377334, there is no canonical definition to state claims against.
-/

/-! ## A377334.P3468137000294937635

`and(A045598(n+1), A376971(n+1))`
-/

namespace A377334.P3468137000294937635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045598 (n + 1)) (A376971 (n + 1))

end

end A377334.P3468137000294937635

/-! ## A377334.P376464871349546680

`and(A057296(n+1), A376971(n+1))`
-/

namespace A377334.P376464871349546680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057296 (n + 1)) (A376971 (n + 1))

end

end A377334.P376464871349546680

/-! ## A377334.P7197371710617137401

`and(A276311(n+1), A376971(n+1))`
-/

namespace A377334.P7197371710617137401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A276311 (n + 1)) (A376971 (n + 1))

end

end A377334.P7197371710617137401

/-! ## A377334.P627218393689110118

`and(A045598(n+1), A377336(A167614(n+2)))`
-/

namespace A377334.P627218393689110118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045598 (n + 1)) (A377336 (A167614 (n + 2)).toNat)

end

end A377334.P627218393689110118

/-! ## A377334.P900217555406919702

`and(A276311(n+1), A377336(A167614(n+2)))`
-/

namespace A377334.P900217555406919702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A276311 (n + 1)) (A377336 (A167614 (n + 2)).toNat)

end

end A377334.P900217555406919702

/-!
# A377336: Square array read by antidiagonals: T(n,k) is the number of fully symmetric, k-celled, n-dimensional polyhypercubes; n >= 0, k >= 1.

The programs for A377336, there is no canonical definition to state claims against.
-/

/-! ## A377336.P3810442995398612653

`A355432(n+1)^A029306(A048993(n))`
-/

namespace A377336.P3810442995398612653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355432 (n + 1) : ℚ) ^ (A029306 (A048993 n).toNat : ℤ)

end

end A377336.P3810442995398612653

/-! ## A377336.P4087123826319162857

`A080101(A285824(n)+1)`
-/

namespace A377336.P4087123826319162857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080101 (A285824 n + 1).toNat

end

end A377336.P4087123826319162857

/-! ## A377336.P17286218974303330551

`A080225(n+1)^A028242(A123125(n))`
-/

namespace A377336.P17286218974303330551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080225 (n + 1) : ℚ) ^ (A028242 (A123125 n).toNat : ℤ)

end

end A377336.P17286218974303330551

/-! ## A377336.P1999100386584617854

`A122841(n+1)^A122849(A097805(n))`
-/

namespace A377336.P1999100386584617854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122841 (n + 1) : ℚ) ^ (A122849 (A097805 n).toNat : ℤ)

end

end A377336.P1999100386584617854

/-! ## A377336.P7390770612192174614

`A355432(n+1)^A023416(A123125(n))`
-/

namespace A377336.P7390770612192174614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355432 (n + 1) : ℚ) ^ (A023416 (A123125 n).toNat : ℤ)

end

end A377336.P7390770612192174614

/-!
# A377339: E.g.f. satisfies A(x) = ( 1 + (exp(x*A(x)) - 1)/A(x) )^2.

The programs for A377339, there is no canonical definition to state claims against.
-/

/-! ## A377339.P13843388846638566577

`A055034(A219262(n)+A143293(n))`
-/

namespace A377339.P13843388846638566577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A219262 n + A143293 n).toNat

end

end A377339.P13843388846638566577

/-! ## A377339.P15248737382549664701

`A276796(or(A011782(n), A135920(n+1)))`
-/

namespace A377339.P15248737382549664701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (Int.lor (A011782 n) (A135920 (n + 1))).toNat

end

end A377339.P15248737382549664701

/-!
# A377340: E.g.f. satisfies A(x) = ( 1 + (exp(x*A(x)) - 1)/A(x) )^3.

The programs for A377340, there is no canonical definition to state claims against.
-/

/-! ## A377340.P8453817073467134189

`∑[A175306(A020555(n))]`
-/

namespace A377340.P8453817073467134189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175306 (A020555 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377340.P8453817073467134189

/-!
# A377347: E.g.f. satisfies A(x) = 1 + (exp(x*A(x)^2) - 1)/A(x)^2.

The programs for A377347, there is no canonical definition to state claims against.
-/

/-! ## A377347.P5973238451033456195

`A129263(A212247(n))`
-/

namespace A377347.P5973238451033456195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129263 (A212247 n).toNat

end

end A377347.P5973238451033456195

/-! ## A377347.P4180670895684549623

`A348158(A367908(n!))`
-/

namespace A377347.P4180670895684549623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348158 (A367908 (Nat.factorial n)).toNat

end

end A377347.P4180670895684549623

/-!
# A377348: E.g.f. satisfies A(x) = 1 + (exp(x*A(x)^3) - 1)/A(x)^3.

The programs for A377348, there is no canonical definition to state claims against.
-/

/-! ## A377348.P87780138134157972

`A194509(A086331(n)+n)`
-/

namespace A377348.P87780138134157972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194509 (A086331 n + (n : ℤ)).toNat

end

end A377348.P87780138134157972

/-! ## A377348.P13408020605545550925

`A145393((2-A001372(n))²)`
-/

namespace A377348.P13408020605545550925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145393 ((2 - A001372 n) ^ 2).toNat

end

end A377348.P13408020605545550925

/-!
# A377349: E.g.f. satisfies A(x) = 1 - log(1 - x*A(x)^2)/A(x)^2.

The programs for A377349, there is no canonical definition to state claims against.
-/

/-! ## A377349.P8776687965434324878

`A241183(A186925(n)+∑[n])`
-/

namespace A377349.P8776687965434324878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241183 (A186925 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A377349.P8776687965434324878

/-! ## A377349.P16327095454265759813

`∑{d}[A283469(A303064(n)+1), #]`
-/

namespace A377349.P16327095454265759813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283469 (A303064 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A377349.P16327095454265759813

/-!
# A377350: E.g.f. satisfies A(x) = 1 - log(1 - x*A(x)^3)/A(x)^3.

The programs for A377350, there is no canonical definition to state claims against.
-/

/-! ## A377350.P14416034880787299898

`A238343(n)+A057355(A152554(n))`
-/

namespace A377350.P14416034880787299898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 n + A057355 (A152554 n).toNat

end

end A377350.P14416034880787299898

/-! ## A377350.P5319250393302625979

`A004396(A060223(n)*A352702(n))`
-/

namespace A377350.P5319250393302625979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A060223 n * A352702 n).toNat

end

end A377350.P5319250393302625979

/-!
# A377351: Lexicographically earliest sequence of positive integers such that the means of consecutive terms are all distinct.

The programs for A377351, there is no canonical definition to state claims against.
-/

/-! ## A377351.P8056620746052401969

`A033808(n+1)-A033808(n)`
-/

namespace A377351.P8056620746052401969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033808 (n + 1) - A033808 n

end

end A377351.P8056620746052401969

/-! ## A377351.P16234514213052085916

`Δ[A033808(n)]`
-/

namespace A377351.P16234514213052085916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377351.P16234514213052085916

/-!
# A377352: The smallest deficient number that begins a run of at least n consecutive deficient numbers with the same number of distinct prime factors.

The programs for A377352, there is no canonical definition to state claims against.
-/

/-! ## A377352.P11048727465009263558

`A016009(A148765(n+1))`
-/

namespace A377352.P11048727465009263558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016009 (A148765 (n + 1)).toNat

end

end A377352.P11048727465009263558

/-! ## A377352.P10459267369396838056

`A107753(A344604(n+1))`
-/

namespace A377352.P10459267369396838056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107753 (A344604 (n + 1)).toNat

end

end A377352.P10459267369396838056

/-! ## A377352.P10051292561435300880

`A131034(A133325(n+2))`
-/

namespace A377352.P10051292561435300880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131034 (A133325 (n + 2)).toNat

end

end A377352.P10051292561435300880

/-! ## A377352.P12350168874822990023

`A214455(A103092(n+2))`
-/

namespace A377352.P12350168874822990023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214455 (A103092 (n + 2)).toNat

end

end A377352.P12350168874822990023

/-!
# A377353: The smallest deficient number that begins a run of at least n consecutive deficient numbers with the same number of prime factors (counted with multiplicity).

The programs for A377353, there is no canonical definition to state claims against.
-/

/-! ## A377353.P15711051752370461073

`A138256(A330474(n))+A103069(n+1)`
-/

namespace A377353.P15711051752370461073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138256 (A330474 n).toNat + A103069 (n + 1)

end

end A377353.P15711051752370461073

/-!
# A377354: The smallest deficient number that begins a run of at least n consecutive deficient numbers with the same number of divisors.

The programs for A377354, there is no canonical definition to state claims against.
-/

/-! ## A377354.P3386228646377054762

`A061017(∑[2^ceil(A134560(n+1)/2)-1]!)`
-/

namespace A377354.P3386228646377054762
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(A134560 (n + 1) : ℚ) / 2⌉ : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (Nat.factorial (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat)

end

end A377354.P3386228646377054762

/-!
# A377355: a(n) is the greatest k not yet in the sequence such that A374356(n) = A374356(k).

The programs for A377355, there is no canonical definition to state claims against.
-/

/-! ## A377355.P9826327159874338564

`A154443(A003188(n))%A347547(2*n+3)`
-/

namespace A377355.P9826327159874338564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154443 (A003188 n).toNat) (A347547 (2 * n + 3 + 10))

end

end A377355.P9826327159874338564

/-! ## A377355.P8912578620153429694

`xor(A154442(n), A188170(A146185(n+1)))`
-/

namespace A377355.P8912578620153429694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A154442 n) (A188170 (A146185 (n + 1)).toNat)

end

end A377355.P8912578620153429694

/-! ## A377355.P3053762577278850090

`A154444(A243835(3*n+4)+A003188(n))`
-/

namespace A377355.P3053762577278850090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154444 (A243835 (3 * n + 4) + A003188 n).toNat

end

end A377355.P3053762577278850090

/-!
# A377356: a(n) = Product{i = 1..(n-1)} prime(i)^e_i, where prime(i)^e_i is the smallest power of prime(i) which exceeds prime(n).

The programs for A377356, there is no canonical definition to state claims against.
-/

/-! ## A377356.P5890288277493149309

`A002110(n)*A099795(n+1)`
-/

namespace A377356.P5890288277493149309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n * A099795 (n + 1)

end

end A377356.P5890288277493149309

/-! ## A377356.P18294269166386765372

`record[A108951(n+1)]*A099795(n+1)`
-/

namespace A377356.P18294269166386765372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A099795 (n + 1)

end

end A377356.P18294269166386765372

/-! ## A377356.P7001487079572619995

`A002110(n)*A002944(ratio[A002110(n)])`
-/

namespace A377356.P7001487079572619995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n * A002944 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A377356.P7001487079572619995

/-! ## A377356.P16488288384487369157

`A002110(n)*A002944(A000040(n+1))`
-/

namespace A377356.P16488288384487369157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n * A002944 (A000040 (n + 1)).toNat

end

end A377356.P16488288384487369157

/-! ## A377356.P6758166948233655824

`A002110(n)*A003418(A006093(n+1))`
-/

namespace A377356.P6758166948233655824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n * A003418 (A006093 (n + 1)).toNat

end

end A377356.P6758166948233655824

/-!
# A377357: Numbers k with the property that the smallest subpart of the symmetric representation of sigma(k) equals the denominator of the harmonic means of the divisors of k.

The programs for A377357, there is no canonical definition to state claims against.
-/

/-! ## A377357.P3220990316894675863

`eq[A099378(n+1), A296513(n+1)]+1`
-/

namespace A377357.P3220990316894675863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296513 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A377357.P3220990316894675863

/-!
# A377358: E.g.f. satisfies A(x) = ( 1 - log(1 - x*A(x))/A(x) )^2.

The programs for A377358, there is no canonical definition to state claims against.
-/

/-! ## A377358.P12831087278529887727

`A002110(n)-A002262(A001541(n))`
-/

namespace A377358.P12831087278529887727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n - A002262 (A001541 n).toNat

end

end A377358.P12831087278529887727

/-!
# A377359: E.g.f. satisfies A(x) = ( 1 - log(1 - x*A(x))/A(x) )^3.

The programs for A377359, there is no canonical definition to state claims against.
-/

/-! ## A377359.P18079394020542049800

`∑[A237270(ceil(2*4^n/5)²)]`
-/

namespace A377359.P18079394020542049800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237270 (⌈2 * ((4 ^ n : ℚ) / 5)⌉ ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377359.P18079394020542049800

/-!
# A377360: E.g.f. satisfies A(x) = ( 1 - log(1 - x*A(x)) )^2.

The programs for A377360, there is no canonical definition to state claims against.
-/

/-! ## A377360.P5269197329641318833

`A266351(A316694(2*(n+1))-n)`
-/

namespace A377360.P5269197329641318833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266351 (A316694 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A377360.P5269197329641318833

/-!
# A377361: E.g.f. satisfies A(x) = ( 1 - log(1 - x*A(x)) )^3.

The programs for A377361, there is no canonical definition to state claims against.
-/

/-! ## A377361.P1269723556072948143

`A380780(n)-A261090(A000108(n))`
-/

namespace A377361.P1269723556072948143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380780 n - A261090 (A000108 n).toNat

end

end A377361.P1269723556072948143

/-!
# A377364: a(n) = least k such that 2n*3^k-2 is prime, or 0 if no prime is reached.

The programs for A377364, there is no canonical definition to state claims against.
-/

/-! ## A377364.P15552037484963022294

`A291437(3*(n+1))+1`
-/

namespace A377364.P15552037484963022294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291437 (3 * (n + 1)) + 1

end

end A377364.P15552037484963022294

/-! ## A377364.P4726630695199001678

`A271420(n+1)-A002655(A060173(n+1))`
-/

namespace A377364.P4726630695199001678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271420 (n + 1) - A002655 (A060173 (n + 1)).toNat

end

end A377364.P4726630695199001678

/-! ## A377364.P13389881566978198264

`A076845(3*n+4)^A064645(A002865(n))`
-/

namespace A377364.P13389881566978198264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076845 (3 * n + 4) : ℚ) ^ (A064645 (A002865 n).toNat : ℤ)

end

end A377364.P13389881566978198264

/-! ## A377364.P6851999295796762911

`A076845(3*n+4)+A000007(A076194(n+1))`
-/

namespace A377364.P6851999295796762911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076845 (3 * n + 4) + A000007 (A076194 (n + 1)).toNat

end

end A377364.P6851999295796762911

/-! ## A377364.P10508024755279876297

`A076845(3*n+4)^A239955(A141248(n+1))`
-/

namespace A377364.P10508024755279876297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076845 (3 * n + 4) : ℚ) ^ (A239955 (A141248 (n + 1)).toNat : ℤ)

end

end A377364.P10508024755279876297

/-!
# A377365: a(n) = least k such that 2n*5^k+1 is prime, or 0 if no prime is reached.

The programs for A377365, there is no canonical definition to state claims against.
-/

/-! ## A377365.P13993656577422314999

`gcd(A001227(A113365(n)), A113365(n))`
-/

namespace A377365.P13993656577422314999
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001227 (A113365 n).toNat) (A113365 n)

end

end A377365.P13993656577422314999

/-! ## A377365.P11114982733973563499

`A268726(A110148(n+1))+A131534(n)`
-/

namespace A377365.P11114982733973563499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268726 (A110148 (n + 1)).toNat + A131534 n

end

end A377365.P11114982733973563499

/-! ## A377365.P17676885931728623957

`A290104(A345332(n)+A001936(n+3))`
-/

namespace A377365.P17676885931728623957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290104 (A345332 n + A001936 (n + 3)).toNat

end

end A377365.P17676885931728623957

/-! ## A377365.P7762076837797868794

`gcd(A074271(A065567(n+1)), A074289(n+1))`
-/

namespace A377365.P7762076837797868794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A074271 (A065567 (n + 1)).toNat) (A074289 (n + 1))

end

end A377365.P7762076837797868794

/-! ## A377365.P10454541013830959361

`gcd(A104620(n+3), A328594(A305848(n+4)))`
-/

namespace A377365.P10454541013830959361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A104620 (n + 3)) (A328594 (A305848 (n + 4)).toNat)

end

end A377365.P10454541013830959361

/-!
# A377367: Rectangular array by antidiagonals: R(m,n) = least k such that 2n*prime(m)^k + 1 is prime.

The programs for A377367, there is no canonical definition to state claims against.
-/

/-! ## A377367.P8331358206356000753

`A336137(A242330(n+3)+A000005(2*n+3))`
-/

namespace A377367.P8331358206356000753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336137 (A242330 (n + 3) + A000005 (2 * n + 3)).toNat

end

end A377367.P8331358206356000753

/-!
# A377368: a(n) = A255978(n) + 1.

The programs for A377368, the canonical program `A377368.P9845472719769353126` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377368 has offset 0).

The definition of A377368 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377368.P8143612352381670510

`a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=5, a(4)=6`
-/

namespace A377368.P8143612352381670510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 5, 6] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) - a (n - 4) - a (n - 5)

end

end A377368.P8143612352381670510

namespace A377368

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` -/
def P8143612352381670510.Spec : Prop :=
  ∀ n, P8143612352381670510.a n = A377368 n

end A377368

/-! ## A377368.P9845472719769353126

`A255978(n)+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A377368

/-- `A255978(n)+1` -/
def P9845472719769353126.Spec : Prop :=
  ∀ n, P9845472719769353126.a n = A377368 n

theorem P9845472719769353126.correct : P9845472719769353126.Spec := by
  intro n
  simp only [A377368]

end A377368

/-! ## A377368.P2457041180579738309

`xor(1, a(n-1)+a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A377368.P2457041180579738309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.xor 1 (a (n - 1) + a (n - 2))

end

end A377368.P2457041180579738309

namespace A377368

/-- `xor(1, a(n-1)+a(n-2))` -/
def P2457041180579738309.Spec : Prop :=
  ∀ n, (P2457041180579738309.a n : ℤ) = A377368 n

end A377368

/-! ## A377368.P6695261020573089002

`gcd(3, n)-2+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A377368.P6695261020573089002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (Nat.gcd 3 n : ℤ) - 2 + (a (n - 1) + a (n - 2))

end

end A377368.P6695261020573089002

namespace A377368

/-- `gcd(3, n)-2+a(n-1)+a(n-2)` -/
def P6695261020573089002.Spec : Prop :=
  ∀ n, P6695261020573089002.a n = A377368 n

end A377368

/-! ## A377368.P2241973362530866654

`A104220(n)+A000045(n)`
-/

namespace A377368.P2241973362530866654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104220 n + A000045 n

end

end A377368.P2241973362530866654

namespace A377368

/-- `A104220(n)+A000045(n)` -/
def P2241973362530866654.Spec : Prop :=
  ∀ n, P2241973362530866654.a n = A377368 n

end A377368

/-! ## A377368.P2243065466131884244

`A104221(n)+A001611(n)`
-/

namespace A377368.P2243065466131884244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104221 n + A001611 n

end

end A377368.P2243065466131884244

namespace A377368

/-- `A104221(n)+A001611(n)` -/
def P2243065466131884244.Spec : Prop :=
  ∀ n, P2243065466131884244.a n = A377368 n

end A377368

/-! ## A377368.P110325567417919017

`A001588(n)-A011655(n)`
-/

namespace A377368.P110325567417919017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 n - A011655 n

end

end A377368.P110325567417919017

namespace A377368

/-- `A001588(n)-A011655(n)` -/
def P110325567417919017.Spec : Prop :=
  ∀ n, P110325567417919017.a n = A377368 n

end A377368

/-! ## A377368.P7220102175042767866

`xor(A169609(n), A255978(n))`
-/

namespace A377368.P7220102175042767866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A169609 n) (A255978 n)

end

end A377368.P7220102175042767866

namespace A377368

/-- `xor(A169609(n), A255978(n))` -/
def P7220102175042767866.Spec : Prop :=
  ∀ n, P7220102175042767866.a n = A377368 n

end A377368

/-! ## A377368.P17734271342723283198

`A000045(n)+A104221(n)+1`
-/

namespace A377368.P17734271342723283198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A104221 n + 1)

end

end A377368.P17734271342723283198

namespace A377368

/-- `A000045(n)+A104221(n)+1` -/
def P17734271342723283198.Spec : Prop :=
  ∀ n, P17734271342723283198.a n = A377368 n

end A377368

/-! ## A377368.P15814562057669131842

`A001588(n)+1-A130196(n)`
-/

namespace A377368.P15814562057669131842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 n + (1 - A130196 n)

end

end A377368.P15814562057669131842

namespace A377368

/-- `A001588(n)+1-A130196(n)` -/
def P15814562057669131842.Spec : Prop :=
  ∀ n, P15814562057669131842.a n = A377368 n

end A377368

/-! ## A377368.P7973228832137069185

`A253198(n)+1-A022003(n)`
-/

namespace A377368.P7973228832137069185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253198 n + (1 - A022003 n)

end

end A377368.P7973228832137069185

namespace A377368

/-- `A253198(n)+1-A022003(n)` -/
def P7973228832137069185.Spec : Prop :=
  ∀ n, P7973228832137069185.a n = A377368 n

end A377368

/-! ## A377368.P3085372874853830459

`A166012(n)+1-A117447(n)`
-/

namespace A377368.P3085372874853830459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166012 n + (1 - A117447 n)

end

end A377368.P3085372874853830459

namespace A377368

/-- `A166012(n)+1-A117447(n)` -/
def P3085372874853830459.Spec : Prop :=
  ∀ n, P3085372874853830459.a n = A377368 n

end A377368

/-! ## A377368.P1518586759913766675

`A055389(n)+1-A267208(n)`
-/

namespace A377368.P1518586759913766675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 n + (1 - A267208 n)

end

end A377368.P1518586759913766675

namespace A377368

/-- `A055389(n)+1-A267208(n)` -/
def P1518586759913766675.Spec : Prop :=
  ∀ n, P1518586759913766675.a n = A377368 n

end A377368

/-! ## A377368.P14152573803494209206

`A253198(n)+A204418(n+2)`
-/

namespace A377368.P14152573803494209206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253198 n + A204418 (n + 2)

end

end A377368.P14152573803494209206

namespace A377368

/-- `A253198(n)+A204418(n+2)` -/
def P14152573803494209206.Spec : Prop :=
  ∀ n, P14152573803494209206.a n = A377368 n

end A377368

/-! ## A377368.P8622633389742854420

`A001611(n)+2*A004695(n)`
-/

namespace A377368.P8622633389742854420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + 2 * A004695 n

end

end A377368.P8622633389742854420

namespace A377368

/-- `A001611(n)+2*A004695(n)` -/
def P8622633389742854420.Spec : Prop :=
  ∀ n, P8622633389742854420.a n = A377368 n

end A377368

/-! ## A377368.P12061534759072275025

`A079978(n)+2*A000045(n)`
-/

namespace A377368.P12061534759072275025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n + 2 * A000045 n

end

end A377368.P12061534759072275025

namespace A377368

/-- `A079978(n)+2*A000045(n)` -/
def P12061534759072275025.Spec : Prop :=
  ∀ n, P12061534759072275025.a n = A377368 n

end A377368

/-! ## A377368.P15825329336802436633

`2*A001611(n)-A130196(n)`
-/

namespace A377368.P15825329336802436633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001611 n - A130196 n

end

end A377368.P15825329336802436633

namespace A377368

/-- `2*A001611(n)-A130196(n)` -/
def P15825329336802436633.Spec : Prop :=
  ∀ n, P15825329336802436633.a n = A377368 n

end A377368

/-! ## A377368.P17219974436622655132

`A000045(n)+A147997(n)+A004695(n)`
-/

namespace A377368.P17219974436622655132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A147997 n + A004695 n)

end

end A377368.P17219974436622655132

namespace A377368

/-- `A000045(n)+A147997(n)+A004695(n)` -/
def P17219974436622655132.Spec : Prop :=
  ∀ n, P17219974436622655132.a n = A377368 n

end A377368

/-! ## A377368.P18307279859498320901

`A355324(n)-A245968(n)`
-/

namespace A377368.P18307279859498320901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355324 n - A245968 n

end

end A377368.P18307279859498320901

namespace A377368

/-- `A355324(n)-A245968(n)` -/
def P18307279859498320901.Spec : Prop :=
  ∀ n, P18307279859498320901.a n = A377368 n

end A377368

/-! ## A377368.P170768367678455322

`A079978(n+1)+A253197(n+1)-A253197(n)`
-/

namespace A377368.P170768367678455322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (n + 1) + (A253197 (n + 1) - A253197 n)

end

end A377368.P170768367678455322

namespace A377368

/-- `A079978(n+1)+A253197(n+1)-A253197(n)` -/
def P170768367678455322.Spec : Prop :=
  ∀ n, P170768367678455322.a n = A377368 n

end A377368

/-!
# A377369: a(n) = total number of bits in the binary representation of the prime factorization of n (including exponents > 1).

The programs for A377369, there is no canonical definition to state claims against.
-/

/-! ## A377369.P3050172551773349213

`A070939(A230625(n+1))-A000007(n)`
-/

namespace A377369.P3050172551773349213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A230625 (n + 1)).toNat - A000007 n

end

end A377369.P3050172551773349213

/-! ## A377369.P2628860338399007228

`A070939(A230625(n+1))%A008778(n)`
-/

namespace A377369.P2628860338399007228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 (A230625 (n + 1)).toNat) (A008778 n)

end

end A377369.P2628860338399007228

/-! ## A377369.P16386825298454230975

`A070939(A230625(n+1))-A151878(A000120(n))`
-/

namespace A377369.P16386825298454230975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A230625 (n + 1)).toNat - A151878 (A000120 n).toNat

end

end A377369.P16386825298454230975

/-! ## A377369.P3283027694398009029

`A070939(A230625(n+1))-A257403(A298033(n))`
-/

namespace A377369.P3283027694398009029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A230625 (n + 1)).toNat - A257403 (A298033 n).toNat

end

end A377369.P3283027694398009029

/-! ## A377369.P769169550755678141

`A010059(A151878(n))*A070939(A230625(n+1))`
-/

namespace A377369.P769169550755678141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A151878 n).toNat * A070939 (A230625 (n + 1)).toNat

end

end A377369.P769169550755678141

/-!
# A377373: Expansion of e.g.f. (1/x) * Series_Reversion( x / (exp(-x) + 2*x) ).

The programs for A377373, there is no canonical definition to state claims against.
-/

/-! ## A377373.P4678480617011901320

`A376106(n+1)/(n+1)`
-/

namespace A377373.P4678480617011901320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376106 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A377373.P4678480617011901320

/-! ## A377373.P13539507952976181351

`A097992(∑[A217388(n+1)])`
-/

namespace A377373.P13539507952976181351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A377373.P13539507952976181351

/-!
# A377374: Expansion of e.g.f. (1/x) * Series_Reversion( x / (exp(-x) + 3*x) ).

The programs for A377374, there is no canonical definition to state claims against.
-/

/-! ## A377374.P14615597352381537452

`A376107(n+1)/(n+1)`
-/

namespace A377374.P14615597352381537452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376107 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A377374.P14615597352381537452

/-!
# A377376: Expansion of e.g.f. log( 1 - log(1 - x)^3 / 6 ).

The programs for A377376, there is no canonical definition to state claims against.
-/

/-! ## A377376.P1862084626263320751

`A054899(n!*∑[1/n!])`
-/

namespace A377376.P1862084626263320751
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j))).toNat

end

end A377376.P1862084626263320751

/-! ## A377376.P10153678562706333977

`A054899(A000522(n))`
-/

namespace A377376.P10153678562706333977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A000522 n).toNat

end

end A377376.P10153678562706333977

/-! ## A377376.P1105640903898178453

`A054899(A007526(n))`
-/

namespace A377376.P1105640903898178453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A007526 n).toNat

end

end A377376.P1105640903898178453

/-!
# A377377: a(n) is the quotient of the practical number A005153(n) divided by its largest divisor that is primitive practical.

The programs for A377377, there is no canonical definition to state claims against.
-/

/-! ## A377377.P9264659004071963513

`A005153(n+1)/A378202(n+1)`
-/

namespace A377377.P9264659004071963513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005153 (n + 1) : ℚ) / (A378202 (n + 1) : ℚ)

end

end A377377.P9264659004071963513

/-! ## A377377.P14107996274292688350

`record[A327832(n+1)]/A378202(n+1)`
-/

namespace A377377.P14107996274292688350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A378202 (n + 1) : ℚ)

end

end A377377.P14107996274292688350

/-! ## A377377.P1992939984493471548

`(eq[1, A210445(n+1)]+1)/A378202(n+1)`
-/

namespace A377377.P1992939984493471548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210445 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℚ) / (A378202 (n + 1) : ℚ)

end

end A377377.P1992939984493471548

/-! ## A377377.P5893845046503651789

`(eq[1, A322860(n+1)]+1)/A378202(n+1)`
-/

namespace A377377.P5893845046503651789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322860 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℚ) / (A378202 (n + 1) : ℚ)

end

end A377377.P5893845046503651789

/-! ## A377377.P13978840539638716559

`(lt[A279048(n+1), 1]+1)/A378202(n+1)`
-/

namespace A377377.P13978840539638716559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279048 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℚ) / (A378202 (n + 1) : ℚ)

end

end A377377.P13978840539638716559

/-! ## A377377.P10065711011847625354

`record[n%A225561(n+1)+1]/A378202(n+1)`
-/

namespace A377377.P10065711011847625354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A225561 (n + 1)) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A378202 (n + 1) : ℚ)

end

end A377377.P10065711011847625354

/-! ## A377377.P2674121232059253392

`A327832(lt[n, A327832(n+1)]+1)/A378202(n+1)`
-/

namespace A377377.P2674121232059253392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327832 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) : ℚ) / (A378202 (n + 1) : ℚ)

end

end A377377.P2674121232059253392

/-! ## A377377.P1153905658419014894

`A275121(record[(n+1)*A322860(n+1)])/A378202(n+1)`
-/

namespace A377377.P1153905658419014894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A322860 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275121 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / (A378202 (n + 1) : ℚ)

end

end A377377.P1153905658419014894

/-! ## A377377.P5387577945511716103

`(∑[A179651(n+1)]+1-A179651(n+1))/A378202(n+1)`
-/

namespace A377377.P5387577945511716103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179651 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + (1 - A179651 (n + 1)) : ℤ) : ℚ) / (A378202 (n + 1) : ℚ)

end

end A377377.P5387577945511716103

/-!
# A377378: a(n) = sum of row n of A376248.

The programs for A377378, there is no canonical definition to state claims against.
-/

/-! ## A377378.P15622746009439675803

`A378182(A129598(n+1))`
-/

namespace A377378.P15622746009439675803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378182 (A129598 (n + 1)).toNat

end

end A377378.P15622746009439675803

/-! ## A377378.P12939316180179154593

`A378182(n+1)+A377072(n+1)`
-/

namespace A377378.P12939316180179154593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378182 (n + 1) + A377072 (n + 1)

end

end A377378.P12939316180179154593

/-!
# A377379: a(n) = rad(n)^binomial(bigomega(n) + omega(n), omega(n) + 1), where rad = A007947, bigomega = A001222, and omega = A001221.

The programs for A377379, there is no canonical definition to state claims against.
-/

/-! ## A377379.P4658905891361783800

`A377073(n+1)*A378183(n+1)`
-/

namespace A377379.P4658905891361783800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377073 (n + 1) * A378183 (n + 1)

end

end A377379.P4658905891361783800

/-! ## A377379.P12154214342028109548

`A378183(A129598(n+1))`
-/

namespace A377379.P12154214342028109548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378183 (A129598 (n + 1)).toNat

end

end A377379.P12154214342028109548

/-! ## A377379.P17850264111255855351

`A378183(A253560(n+1))`
-/

namespace A377379.P17850264111255855351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378183 (A253560 (n + 1)).toNat

end

end A377379.P17850264111255855351

/-! ## A377379.P9111945667560830710

`A378183(A285109(n+1))`
-/

namespace A377379.P9111945667560830710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378183 (A285109 (n + 1)).toNat

end

end A377379.P9111945667560830710

/-! ## A377379.P15504568194952134991

`A378183(A007947(n+1)*A375400(n+1))`
-/

namespace A377379.P15504568194952134991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378183 (A007947 (n + 1) * A375400 (n + 1)).toNat

end

end A377379.P15504568194952134991

/-!
# A377381: a(n) is the number of divisors of n that are interprime numbers (A024675).

The programs for A377381, there is no canonical definition to state claims against.
-/

/-! ## A377381.P1244942448237506517

`A000577(A238279(n))%A001055(n+1)`
-/

namespace A377381.P1244942448237506517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000577 (A238279 n).toNat) (A001055 (n + 1))

end

end A377381.P1244942448237506517

/-! ## A377381.P5009768533170009472

`A133717(n)%A133692(A055212(n+1))`
-/

namespace A377381.P5009768533170009472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133717 n) (A133692 (A055212 (n + 1)).toNat)

end

end A377381.P5009768533170009472

/-! ## A377381.P4454732703658891583

`A024568(A024567(n+1))%A126131(n+1)`
-/

namespace A377381.P4454732703658891583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024568 (A024567 (n + 1)).toNat) (A126131 (n + 1))

end

end A377381.P4454732703658891583

/-! ## A377381.P7899283106393199225

`A001605(A008805(n))%A356233(n+1)`
-/

namespace A377381.P7899283106393199225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001605 (A008805 n).toNat) (A356233 (n + 1))

end

end A377381.P7899283106393199225

/-! ## A377381.P8669693423050033897

`A373349(A000032(n))%A356233(n+1)`
-/

namespace A377381.P8669693423050033897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373349 (A000032 n).toNat) (A356233 (n + 1))

end

end A377381.P8669693423050033897

/-!
# A377382: a(n) is the smallest number k for which exactly n of its divisors are interprime numbers (A024675).

The programs for A377382, there is no canonical definition to state claims against.
-/

/-! ## A377382.P17531057447456556781

`A064402(n+1)*A371015(A006256(n))`
-/

namespace A377382.P17531057447456556781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064402 (n + 1) * A371015 (A006256 n).toNat

end

end A377382.P17531057447456556781

/-!
# A377385: Factorial-base Niven numbers (A118363) k such that k/f(k) is also a factorial-base Niven number, where f(k) = A034968(k) is the sum of digits in the factorial-base representation of k.

The programs for A377385, there is no canonical definition to state claims against.
-/

/-! ## A377385.P4838793392209661000

`A118363(A000961(n+1))%A103396(3*n+2)`
-/

namespace A377385.P4838793392209661000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118363 (A000961 (n + 1)).toNat) (A103396 (3 * n + 2))

end

end A377385.P4838793392209661000

/-! ## A377385.P13311700221042599376

`A355880(A121846(n+1))`
-/

namespace A377385.P13311700221042599376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355880 (A121846 (n + 1)).toNat

end

end A377385.P13311700221042599376

/-! ## A377385.P8997231938499221954

`A000005(record[A367761(n+1)])`
-/

namespace A377385.P8997231938499221954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A377385.P8997231938499221954

/-! ## A377385.P2878483849306551707

`∩[A384010(n+1), A037465(n)]`
-/

namespace A377385.P2878483849306551707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377385.P2878483849306551707

/-! ## A377385.P10134151050838963029

`∩[A009993(n+1), A384010(n+1)]`
-/

namespace A377385.P10134151050838963029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377385.P10134151050838963029

/-!
# A377386: Factorial-base Niven numbers (A118363) k such that m = k/f(k) and m/f(m) are also factorial-base Niven numbers, where f(k) = A034968(k) is the sum of digits in the factorial-base representation of k.

The programs for A377386, there is no canonical definition to state claims against.
-/

/-! ## A377386.P14376561773424659385

`∩[A367224(n+1), A377385(n+1)]`
-/

namespace A377386.P14376561773424659385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377386.P14376561773424659385

/-! ## A377386.P11314225457613250560

`∩[A179892(n+1), A377385(n+1)]`
-/

namespace A377386.P11314225457613250560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377386.P11314225457613250560

/-! ## A377386.P5594405843507752903

`∩[A371447(n+1), A377385(n+1)]`
-/

namespace A377386.P5594405843507752903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377386.P5594405843507752903

/-! ## A377386.P13826982700798990752

`∩[A377385(n+1), A354912(n)]`
-/

namespace A377386.P13826982700798990752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354912 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377386.P13826982700798990752

/-! ## A377386.P9124986552876624663

`∩[A114149(n+1), A377385(n+1)]`
-/

namespace A377386.P9124986552876624663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A377386.P9124986552876624663

/-!
# A377387: a(n) is the least number k such that A377384(k) = n, or -1 if no such number exists.

The programs for A377387, there is no canonical definition to state claims against.
-/

/-! ## A377387.P16724371709908733552

`∑[∑[A191983(2*n!)]]`
-/

namespace A377387.P16724371709908733552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191983 (2 * Nat.factorial n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377387.P16724371709908733552

/-!
# A377388: Infinite sequence of integers a(1), a(2), ... such that for any n > 0, a(n) is as small as possible (in absolute value) and the means of consecutive terms are all distinct; in case of a tie, preference is given to the positive value.

The programs for A377388, there is no canonical definition to state claims against.
-/

/-! ## A377388.P15478458059865304045

`Δ[A377389(A028310(n))]`
-/

namespace A377388.P15478458059865304045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377389 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377388.P15478458059865304045

/-! ## A377388.P4408536772072730234

`A377389(n+1)-A377389(A028310(n))`
-/

namespace A377388.P4408536772072730234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377389 (n + 1) - A377389 (A028310 n).toNat

end

end A377388.P4408536772072730234

/-! ## A377388.P4273347454096400632

`Δ[A377389(A065033(2*n))]`
-/

namespace A377388.P4273347454096400632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377389 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A377388.P4273347454096400632

/-!
# A377389: Partial sums of A377388.

The programs for A377389, there is no canonical definition to state claims against.
-/

/-! ## A377389.P4809806201027978799

`∑[A377388(n+1)]`
-/

namespace A377389.P4809806201027978799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A377389.P4809806201027978799

/-! ## A377389.P14285286058419916291

`char[A262472(n+1)]-A003192(n+1)`
-/

namespace A377389.P14285286058419916291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262472 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A003192 (n + 1)

end

end A377389.P14285286058419916291

/-! ## A377389.P8532561153938431403

`A030341(A004080(n))-A003192(n+1)`
-/

namespace A377389.P8532561153938431403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030341 (A004080 n).toNat - A003192 (n + 1)

end

end A377389.P8532561153938431403

/-! ## A377389.P16931342496491776015

`A010054(A356299(n+1))-A003192(n+1)`
-/

namespace A377389.P16931342496491776015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A356299 (n + 1)).toNat - A003192 (n + 1)

end

end A377389.P16931342496491776015

/-! ## A377389.P8895652167576500862

`A109720(A333217(n+1))-A003192(n+1)`
-/

namespace A377389.P8895652167576500862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109720 (A333217 (n + 1)).toNat - A003192 (n + 1)

end

end A377389.P8895652167576500862

/-!
# A377390: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 - x*log(1-x))^2 ).

The programs for A377390, there is no canonical definition to state claims against.
-/

/-! ## A377390.P13575375470597348606

`A357026(n)*A357071(A007088(n))`
-/

namespace A377390.P13575375470597348606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357026 n * A357071 (A007088 n).toNat

end

end A377390.P13575375470597348606

/-! ## A377390.P164727891683763800

`A000688(n+1)*A022998(A371146(n))`
-/

namespace A377390.P164727891683763800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1) * A022998 (A371146 n).toNat

end

end A377390.P164727891683763800

/-!
# A377391: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 - x*log(1-x))^3 ).

The programs for A377391, there is no canonical definition to state claims against.
-/

/-! ## A377391.P2385304966397572605

`A290103(A000351(n))*A371232(n)`
-/

namespace A377391.P2385304966397572605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A000351 n).toNat * A371232 n

end

end A377391.P2385304966397572605

/-! ## A377391.P11708622896991517600

`A006368(A137921(n+1)*A371232(n))`
-/

namespace A377391.P11708622896991517600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A137921 (n + 1) * A371232 n).toNat

end

end A377391.P11708622896991517600

/-!
# A377392: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 + x*(exp(x) - 1))^2 ).

The programs for A377392, there is no canonical definition to state claims against.
-/

/-! ## A377392.P13587536047903886486

`A193432(A302606(n))*A371023(n)`
-/

namespace A377392.P13587536047903886486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 (A302606 n).toNat * A371023 n

end

end A377392.P13587536047903886486

/-!
# A377393: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 + x*(exp(x) - 1))^3 ).

The programs for A377393, there is no canonical definition to state claims against.
-/

/-! ## A377393.P16929750898871160066

`A006368(A137921(n+1)*A371273(n))`
-/

namespace A377393.P16929750898871160066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A137921 (n + 1) * A371273 n).toNat

end

end A377393.P16929750898871160066

/-! ## A377393.P4544784844900660854

`A358479(A099225(2*(n+2)))*A371273(n)`
-/

namespace A377393.P4544784844900660854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358479 (A099225 (2 * (n + 2))).toNat * A371273 n

end

end A377393.P4544784844900660854

/-!
# A377394: Expansion of e.g.f. (1 - log(1-x))^3.

The programs for A377394, there is no canonical definition to state claims against.
-/

/-! ## A377394.P3710237287178318376

`A352493(A045905(n))+A297202(n)`
-/

namespace A377394.P3710237287178318376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352493 (A045905 n).toNat + A297202 n

end

end A377394.P3710237287178318376

/-! ## A377394.P5660880258375586200

`A297202(n)+A025441(A137747(2*n))`
-/

namespace A377394.P5660880258375586200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297202 n + A025441 (A137747 (2 * n)).toNat

end

end A377394.P5660880258375586200

/-! ## A377394.P13242886107778709776

`A335446(A250351(2*n+5))+A297202(n)`
-/

namespace A377394.P13242886107778709776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335446 (A250351 (2 * n + 5)).toNat + A297202 n

end

end A377394.P13242886107778709776

/-!
# A377398: Expansion of e.g.f. (2 - exp(x))^3.

The programs for A377398, the canonical program `A377398.P17489594873205496758` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377398 has offset 0).

The definition of A377398 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377398.P17489594873205496758

`5*a(n-1)-6*a(n-2)-24` with `a(0)=1, a(1)=-3, a(2)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A377398

/-- `5*a(n-1)-6*a(n-2)-24` -/
def P17489594873205496758.Spec : Prop :=
  ∀ n, P17489594873205496758.a n = A377398 n

theorem P17489594873205496758.correct : P17489594873205496758.Spec := by
  intro n
  simp only [A377398]

end A377398

/-!
# A377399: Expansion of e.g.f. (2 - exp(x))^4.

The programs for A377399, the canonical program `A377399.P14007955703071434024` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A377399 has offset 0).

The definition of A377399 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A377399.P14007955703071434024

`9*a(n-1)-26*a(n-2)+24*a(n-3)+192` with `a(0)=1, a(1)=-4, a(2)=8, a(3)=8`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A377399

/-- `9*a(n-1)-26*a(n-2)+24*a(n-3)+192` -/
def P14007955703071434024.Spec : Prop :=
  ∀ n, P14007955703071434024.a n = A377399 n

theorem P14007955703071434024.correct : P14007955703071434024.Spec := by
  intro n
  simp only [A377399]

end A377399

