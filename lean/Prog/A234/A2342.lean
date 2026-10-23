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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A234200: a(n) = |{0 < k < n/2: k*phi(n-k) - 1 and k*phi(n-k) + 1 are both prime}|, where phi(.) is Euler's totient function.

The programs for A234200, there is no canonical definition to state claims against.
-/

/-! ## A234200.P13375557155832095351

`A000720(A325922(n))%4`
-/

namespace A234200.P13375557155832095351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (A325922 n).toNat) 4

end

end A234200.P13375557155832095351

/-! ## A234200.P15608055879444937936

`∑{e}[A330513(A001611(n)), A134451(#)]`
-/

namespace A234200.P15608055879444937936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330513 (A001611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A134451 (Nat.factorization (f1 n).natAbs p)

end

end A234200.P15608055879444937936

/-! ## A234200.P9136743044359228732

`∑{e}[A330513(A001611(n)), A194914(#)]`
-/

namespace A234200.P9136743044359228732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330513 (A001611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A194914 (Nat.factorization (f1 n).natAbs p)

end

end A234200.P9136743044359228732

/-! ## A234200.P14528649162611408458

`A031346(A196700(n+1)+A000005(n+1))`
-/

namespace A234200.P14528649162611408458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A196700 (n + 1) + A000005 (n + 1)).toNat

end

end A234200.P14528649162611408458

/-! ## A234200.P17153653495536717573

`A325225(A191794(n)*A337681(n+1)+1)`
-/

namespace A234200.P17153653495536717573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (A191794 n * A337681 (n + 1) + 1).toNat

end

end A234200.P17153653495536717573

/-!
# A234201: Number of (n+1)X(1+1) 0..5 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 15.

The programs for A234201, there is no canonical definition to state claims against.
-/

/-! ## A234201.P6177694435606346078

`A234208(∑[n]+1)`
-/

namespace A234201.P6177694435606346078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234208 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234201.P6177694435606346078

/-! ## A234201.P14655216816047889932

`lcm(2, A234208(A000124(n)))`
-/

namespace A234201.P14655216816047889932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234208 (A000124 n).toNat)

end

end A234201.P14655216816047889932

/-! ## A234201.P4612465485271550275

`record[A234208(A056534(n+1))]`
-/

namespace A234201.P4612465485271550275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234208 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234201.P4612465485271550275

/-! ## A234201.P10284699468962399821

`record[A234208(A056536(n+1))]`
-/

namespace A234201.P10284699468962399821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234208 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234201.P10284699468962399821

/-! ## A234201.P1972981429246949563

`record[A234208(A114091(n+1))]`
-/

namespace A234201.P1972981429246949563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234208 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234201.P1972981429246949563

/-!
# A234202: Number of (n+1) X (2+1) 0..5 arrays with every 2 X 2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 15.

The programs for A234202, there is no canonical definition to state claims against.
-/

/-! ## A234202.P14583311613594207809

`A234208(∑[n+1]+2)`
-/

namespace A234202.P14583311613594207809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234208 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234202.P14583311613594207809

/-! ## A234202.P8373431225871501429

`record[A010054(n)*A234208(n+2)]`
-/

namespace A234202.P8373431225871501429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234208 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234202.P8373431225871501429

/-! ## A234202.P1595359809723568822

`record[root(A234208(n+2), A059268(n))]`
-/

namespace A234202.P1595359809723568822
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234208 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234202.P1595359809723568822

/-! ## A234202.P8933319310050647228

`record[gcd(A002262(n), A234208(n+2))]`
-/

namespace A234202.P8933319310050647228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234208 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234202.P8933319310050647228

/-! ## A234202.P12277576160854349718

`record[A073424(n+1)*A234208(n+3)]`
-/

namespace A234202.P12277576160854349718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (n + 1) * A234208 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234202.P12277576160854349718

/-!
# A234203: Number of (n+1)X(3+1) 0..5 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 15.

The programs for A234203, there is no canonical definition to state claims against.
-/

/-! ## A234203.P4787937655846086230

`A234208(∑[n+2]+4)`
-/

namespace A234203.P4787937655846086230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234208 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234203.P4787937655846086230

/-! ## A234203.P2800391227225971047

`lcm(2, A234208(A167614(n+1)))`
-/

namespace A234203.P2800391227225971047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234208 (A167614 (n + 1)).toNat)

end

end A234203.P2800391227225971047

/-! ## A234203.P6360228105523009017

`record[A234208(n+4)/A055249(n)]`
-/

namespace A234203.P6360228105523009017
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234208 (n + 4) : ℚ) / (A055249 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234203.P6360228105523009017

/-! ## A234203.P6944199991591317382

`record[root(A234208(n+4), A060922(n))]`
-/

namespace A234203.P6944199991591317382
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234208 (n + 4) : ℝ) ^ (1 / (A060922 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234203.P6944199991591317382

/-! ## A234203.P4085237336292773966

`record[root(A234208(n+4), A056857(n+1))]`
-/

namespace A234203.P4085237336292773966
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234208 (n + 4) : ℝ) ^ (1 / (A056857 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234203.P4085237336292773966

/-!
# A234204: Number of (n+1)X(4+1) 0..5 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 15.

The programs for A234204, there is no canonical definition to state claims against.
-/

/-! ## A234204.P10404744380832122634

`A234208(∑[n+3]+7)`
-/

namespace A234204.P10404744380832122634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234208 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234204.P10404744380832122634

/-!
# A234205: Number of (n+1)X(5+1) 0..5 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 15.

The programs for A234205, there is no canonical definition to state claims against.
-/

/-! ## A234205.P14355460955415460669

`A234208(A374005(n+1))`
-/

namespace A234205.P14355460955415460669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234208 (A374005 (n + 1)).toNat

end

end A234205.P14355460955415460669

/-! ## A234205.P11293979514119059624

`A234208(A167499(n+3))`
-/

namespace A234205.P11293979514119059624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234208 (A167499 (n + 3)).toNat

end

end A234205.P11293979514119059624

/-! ## A234205.P10761130707086637253

`A234208(A155212(n)+13)`
-/

namespace A234205.P10761130707086637253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234208 (A155212 n + 13).toNat

end

end A234205.P10761130707086637253

/-! ## A234205.P14174686900444176668

`A234208(A056000(n)+15)`
-/

namespace A234205.P14174686900444176668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234208 (A056000 n + 15).toNat

end

end A234205.P14174686900444176668

/-! ## A234205.P8159689239490733948

`A234208(eq[7, A066657(n)])`
-/

namespace A234205.P8159689239490733948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234205.P8159689239490733948

/-!
# A234206: Number of (n+1)X(6+1) 0..5 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 15.

The programs for A234206, there is no canonical definition to state claims against.
-/

/-! ## A234206.P7232133935066289340

`A234208(A374007(n+1))`
-/

namespace A234206.P7232133935066289340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234208 (A374007 (n + 1)).toNat

end

end A234206.P7232133935066289340

/-! ## A234206.P5308340224759979006

`A234208(A166136(n+4))`
-/

namespace A234206.P5308340224759979006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234208 (A166136 (n + 4)).toNat

end

end A234206.P5308340224759979006

/-! ## A234206.P16977673907915244193

`A234208(A056115(n)+21)`
-/

namespace A234206.P16977673907915244193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234208 (A056115 n + 21).toNat

end

end A234206.P16977673907915244193

/-! ## A234206.P14261823788449680519

`A234208(A167499(n+4)+1)`
-/

namespace A234206.P14261823788449680519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234208 (A167499 (n + 4) + 1).toNat

end

end A234206.P14261823788449680519

/-! ## A234206.P6306463908529846524

`A234208(A167614(n+4)+3)`
-/

namespace A234206.P6306463908529846524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234208 (A167614 (n + 4) + 3).toNat

end

end A234206.P6306463908529846524

/-!
# A234207: Number of (n+1)X(7+1) 0..5 arrays with every 2X2 subblock having the sum of the absolute values of all six edge and diagonal differences equal to 15.

The programs for A234207, there is no canonical definition to state claims against.
-/

/-! ## A234207.P2653512875833775371

`A234208(A374008(n+1))`
-/

namespace A234207.P2653512875833775371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234208 (A374008 (n + 1)).toNat

end

end A234207.P2653512875833775371

/-! ## A234207.P8512187344959751017

`A234208(A056119(n)+28)`
-/

namespace A234207.P8512187344959751017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234208 (A056119 n + 28).toNat

end

end A234207.P8512187344959751017

/-! ## A234207.P5748920471197470541

`A234208(eq[11, A066657(n)])`
-/

namespace A234207.P5748920471197470541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234208 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234207.P5748920471197470541

/-! ## A234207.P14114861282305029503

`A234208(A167614(n+5)+4)`
-/

namespace A234207.P14114861282305029503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234208 (A167614 (n + 5) + 4).toNat

end

end A234207.P14114861282305029503

/-! ## A234207.P2724218966060417437

`A234208(A000217(n+6)+7)`
-/

namespace A234207.P2724218966060417437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234208 (A000217 (n + 6) + 7).toNat

end

end A234207.P2724218966060417437

/-!
# A234209: Number of (n+1)X(n+1) 0..4 arrays with every 2X2 subblock having the sum of the squares of all six edge and diagonal differences equal to 11.

The programs for A234209, there is no canonical definition to state claims against.
-/

/-! ## A234209.P13213755589023914968

`A234217(∑[4*n]+1)`
-/

namespace A234209.P13213755589023914968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234217 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234209.P13213755589023914968

/-! ## A234209.P15679935318441858256

`lcm(2, A234217(A001844(n)))`
-/

namespace A234209.P15679935318441858256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234217 (A001844 n).toNat)

end

end A234209.P15679935318441858256

/-! ## A234209.P8528112571156595345

`record[A234217(Δ[A235355(n)])]`
-/

namespace A234209.P8528112571156595345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234217 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234209.P8528112571156595345

/-! ## A234209.P16489052195158924189

`record[A234217(A330613(n+1))]`
-/

namespace A234209.P16489052195158924189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234217 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234209.P16489052195158924189

/-!
# A234210: Number of (n+1) X (1+1) 0..4 arrays with every 2 X 2 subblock having the sum of the squares of all six edge and diagonal differences equal to 11.

The programs for A234210, there is no canonical definition to state claims against.
-/

/-! ## A234210.P5528505295078486466

`A234217(∑[n]+1)`
-/

namespace A234210.P5528505295078486466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234217 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234210.P5528505295078486466

/-! ## A234210.P9793844970023641148

`lcm(2, A234217(A000124(n)))`
-/

namespace A234210.P9793844970023641148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234217 (A000124 n).toNat)

end

end A234210.P9793844970023641148

/-! ## A234210.P13269261415810499390

`record[A010054(n)*A234217(n+1)]`
-/

namespace A234210.P13269261415810499390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234210.P13269261415810499390

/-! ## A234210.P15371975826670597462

`record[A176270(n)*A234217(n+1)]`
-/

namespace A234210.P15371975826670597462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176270 n * A234217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234210.P15371975826670597462

/-! ## A234210.P12326835116852532731

`record[gcd(A004247(n), A234217(n+1))]`
-/

namespace A234210.P12326835116852532731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004247 n) (A234217 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234210.P12326835116852532731

/-!
# A234211: Number of (n+1)X(2+1) 0..4 arrays with every 2X2 subblock having the sum of the squares of all six edge and diagonal differences equal to 11.

The programs for A234211, there is no canonical definition to state claims against.
-/

/-! ## A234211.P11605015616604823859

`A234217(∑[n+1]+2)`
-/

namespace A234211.P11605015616604823859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234217 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234211.P11605015616604823859

/-! ## A234211.P18374751172966045252

`record[A234217(abs(A201163(n)))]`
-/

namespace A234211.P18374751172966045252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234217 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234211.P18374751172966045252

/-! ## A234211.P13647642879459056493

`lcm(2, A234217(A000096(n+1)))`
-/

namespace A234211.P13647642879459056493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234217 (A000096 (n + 1)).toNat)

end

end A234211.P13647642879459056493

/-! ## A234211.P16187561502986665008

`A234217(A000096(n+1))+A185264(n)`
-/

namespace A234211.P16187561502986665008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234217 (A000096 (n + 1)).toNat + A185264 n

end

end A234211.P16187561502986665008

/-! ## A234211.P8087408843451042990

`record[A234217(A000096(∑{e}[n+1, #]+1))]`
-/

namespace A234211.P8087408843451042990
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234217 (A000096 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234211.P8087408843451042990

/-!
# A234212: Number of (n+1)X(3+1) 0..4 arrays with every 2X2 subblock having the sum of the squares of all six edge and diagonal differences equal to 11.

The programs for A234212, there is no canonical definition to state claims against.
-/

/-! ## A234212.P17465969087446291381

`A234217(∑[n+2]+4)`
-/

namespace A234212.P17465969087446291381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234217 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234212.P17465969087446291381

/-! ## A234212.P9274564425805546707

`lcm(2, A234217(A167614(n+1)))`
-/

namespace A234212.P9274564425805546707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234217 (A167614 (n + 1)).toNat)

end

end A234212.P9274564425805546707

/-! ## A234212.P9381493919226944749

`A234217(A167614(n+1))+A185284(n)`
-/

namespace A234212.P9381493919226944749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234217 (A167614 (n + 1)).toNat + A185284 n

end

end A234212.P9381493919226944749

/-! ## A234212.P11911890409205616568

`A063775(n+1)*A234217(A167614(n+1))`
-/

namespace A234212.P11911890409205616568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063775 (n + 1) * A234217 (A167614 (n + 1)).toNat

end

end A234212.P11911890409205616568

/-! ## A234212.P3551590350724936967

`A069292(n+1)*A234217(A167614(n+1))`
-/

namespace A234212.P3551590350724936967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069292 (n + 1) * A234217 (A167614 (n + 1)).toNat

end

end A234212.P3551590350724936967

/-!
# A234213: Number of (n+1)X(4+1) 0..4 arrays with every 2X2 subblock having the sum of the squares of all six edge and diagonal differences equal to 11.

The programs for A234213, there is no canonical definition to state claims against.
-/

/-! ## A234213.P12922439697315057179

`A234217(∑[n+3]+7)`
-/

namespace A234213.P12922439697315057179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234217 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234213.P12922439697315057179

/-! ## A234213.P17423429747344204635

`A234217(A141214(n+1))%A234212(n+4)`
-/

namespace A234213.P17423429747344204635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234217 (A141214 (n + 1)).toNat) (A234212 (n + 4))

end

end A234213.P17423429747344204635

/-!
# A234214: Number of (n+1)X(5+1) 0..4 arrays with every 2X2 subblock having the sum of the squares of all six edge and diagonal differences equal to 11.

The programs for A234214, there is no canonical definition to state claims against.
-/

/-! ## A234214.P986288125009847228

`A234217(A374005(n+1))`
-/

namespace A234214.P986288125009847228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234217 (A374005 (n + 1)).toNat

end

end A234214.P986288125009847228

/-! ## A234214.P14113649877611924767

`A234217(A155212(n)+13)`
-/

namespace A234214.P14113649877611924767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234217 (A155212 n + 13).toNat

end

end A234214.P14113649877611924767

/-! ## A234214.P14863943120944937088

`A234217(A056000(n)+15)`
-/

namespace A234214.P14863943120944937088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234217 (A056000 n + 15).toNat

end

end A234214.P14863943120944937088

/-! ## A234214.P6903045708389456896

`A234217(eq[7, A066657(n)])`
-/

namespace A234214.P6903045708389456896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234214.P6903045708389456896

/-! ## A234214.P11351694610527508214

`A234217(eq[6, A131818(n+1)])`
-/

namespace A234214.P11351694610527508214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234214.P11351694610527508214

/-!
# A234215: Number of (n+1) X (6+1) 0..4 arrays with every 2 X 2 subblock having the sum of the squares of all six edge and diagonal differences equal to 11.

The programs for A234215, there is no canonical definition to state claims against.
-/

/-! ## A234215.P15051672940100342489

`A234217(A374007(n+1))`
-/

namespace A234215.P15051672940100342489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234217 (A374007 (n + 1)).toNat

end

end A234215.P15051672940100342489

/-! ## A234215.P5666584789633581506

`A234217(eq[7, A131818(n+1)])`
-/

namespace A234215.P5666584789633581506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234215.P5666584789633581506

/-! ## A234215.P8420624351915055909

`A234217(eq[3, A219347(n)])`
-/

namespace A234215.P8420624351915055909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234215.P8420624351915055909

/-! ## A234215.P13322149406874352381

`A234217(eq[5, A193592(n)])`
-/

namespace A234215.P13322149406874352381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234215.P13322149406874352381

/-! ## A234215.P8192029863670704674

`A234217(eq[6, A200370(n+1)])`
-/

namespace A234215.P8192029863670704674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234215.P8192029863670704674

/-!
# A234216: Number of (n+1)X(7+1) 0..4 arrays with every 2X2 subblock having the sum of the squares of all six edge and diagonal differences equal to 11.

The programs for A234216, there is no canonical definition to state claims against.
-/

/-! ## A234216.P17156562422449512923

`A234217(A374008(n+1))`
-/

namespace A234216.P17156562422449512923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234217 (A374008 (n + 1)).toNat

end

end A234216.P17156562422449512923

/-! ## A234216.P12973934351871336197

`A234217(eq[8, A131818(n+1)])`
-/

namespace A234216.P12973934351871336197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234216.P12973934351871336197

/-! ## A234216.P13243133424186042615

`A234217(eq[4, A219347(n)])`
-/

namespace A234216.P13243133424186042615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234216.P13243133424186042615

/-! ## A234216.P6903841764793237636

`A234217(eq[6, A193592(n)])`
-/

namespace A234216.P6903841764793237636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234216.P6903841764793237636

/-! ## A234216.P7586474114488491443

`A234217(eq[7, A200370(n+1)])`
-/

namespace A234216.P7586474114488491443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234216.P7586474114488491443

/-!
# A234218: Primes whose cubes are odious.

The programs for A234218, the canonical program `A234218.P2067863749200831996` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234218 has offset 1).

The definition of A234218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 606 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234218.P16422990120421751094

`eq[A072721(n), A365089(n)]`
-/

namespace A234218.P16422990120421751094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072721 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365089 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A234218.P16422990120421751094

namespace A234218

/-- `eq[A072721(n), A365089(n)]` -/
def P16422990120421751094.Spec : Prop :=
  ∀ n, (P16422990120421751094.a n : ℤ) = A234218 (n + 1)

end A234218

/-! ## A234218.P11008378222738503245

`eq[A210442(n), A365089(n)]`
-/

namespace A234218.P11008378222738503245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365089 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A234218.P11008378222738503245

namespace A234218

/-- `eq[A210442(n), A365089(n)]` -/
def P11008378222738503245.Spec : Prop :=
  ∀ n, (P11008378222738503245.a n : ℤ) = A234218 (n + 1)

end A234218

/-! ## A234218.P2980474311482737490

`eq[A211110(n), A365089(n)]`
-/

namespace A234218.P2980474311482737490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365089 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A234218.P2980474311482737490

namespace A234218

/-- `eq[A211110(n), A365089(n)]` -/
def P2980474311482737490.Spec : Prop :=
  ∀ n, (P2980474311482737490.a n : ℤ) = A234218 (n + 1)

end A234218

/-! ## A234218.P12335169371397938079

`eq[A284289(n), A365089(n)]`
-/

namespace A234218.P12335169371397938079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365089 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A234218.P12335169371397938079

namespace A234218

/-- `eq[A284289(n), A365089(n)]` -/
def P12335169371397938079.Spec : Prop :=
  ∀ n, (P12335169371397938079.a n : ℤ) = A234218 (n + 1)

end A234218

/-! ## A234218.P12829045946394044273

`eq[A322968(n), A365089(n)]`
-/

namespace A234218.P12829045946394044273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322968 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365089 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A234218.P12829045946394044273

namespace A234218

/-- `eq[A322968(n), A365089(n)]` -/
def P12829045946394044273.Spec : Prop :=
  ∀ n, (P12829045946394044273.a n : ℤ) = A234218 (n + 1)

end A234218

/-! ## A234218.P2067863749200831996

`p?[n*A000035(A192085(n))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A234218

/-- `p?[n*A000035(A192085(n))]` -/
def P2067863749200831996.Spec : Prop :=
  ∀ n, P2067863749200831996.a n = A234218 (n + 1)

theorem P2067863749200831996.correct : P2067863749200831996.Spec := by
  intro n
  simp only [A234218, Nat.add_sub_cancel]

end A234218

/-! ## A234218.P6494893708434501458

`filter[A000040(n+1), A365089(#)]`
-/

namespace A234218.P6494893708434501458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365089 (f1 j).toNat = 1) n)

end

end A234218.P6494893708434501458

namespace A234218

/-- `filter[A000040(n+1), A365089(#)]` -/
def P6494893708434501458.Spec : Prop :=
  ∀ n, P6494893708434501458.a n = A234218 (n + 1)

end A234218

/-! ## A234218.P2721749078907674183

`filter[A045319(n+1), A365089(#)]`
-/

namespace A234218.P2721749078907674183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365089 (f1 j).toNat = 1) n)

end

end A234218.P2721749078907674183

namespace A234218

/-- `filter[A045319(n+1), A365089(#)]` -/
def P2721749078907674183.Spec : Prop :=
  ∀ n, P2721749078907674183.a n = A234218 (n + 1)

end A234218

/-! ## A234218.P3532503290221478679

`filter[A045344(n+1), A365089(#)]`
-/

namespace A234218.P3532503290221478679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365089 (f1 j).toNat = 1) n)

end

end A234218.P3532503290221478679

namespace A234218

/-- `filter[A045344(n+1), A365089(#)]` -/
def P3532503290221478679.Spec : Prop :=
  ∀ n, P3532503290221478679.a n = A234218 (n + 1)

end A234218

/-! ## A234218.P10726602494323582490

`filter[A053813(n+1), A365089(#)]`
-/

namespace A234218.P10726602494323582490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365089 (f1 j).toNat = 1) n)

end

end A234218.P10726602494323582490

namespace A234218

/-- `filter[A053813(n+1), A365089(#)]` -/
def P10726602494323582490.Spec : Prop :=
  ∀ n, P10726602494323582490.a n = A234218 (n + 1)

end A234218

/-! ## A234218.P14402808527826670450

`filter[A063884(n+1), A365089(#)]`
-/

namespace A234218.P14402808527826670450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365089 (f1 j).toNat = 1) n)

end

end A234218.P14402808527826670450

namespace A234218

/-- `filter[A063884(n+1), A365089(#)]` -/
def P14402808527826670450.Spec : Prop :=
  ∀ n, P14402808527826670450.a n = A234218 (n + 1)

end A234218

/-! ## A234218.P2893701705494146909

`filter[A063904(n+1), A365089(#)]`
-/

namespace A234218.P2893701705494146909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365089 (f1 j).toNat = 1) n)

end

end A234218.P2893701705494146909

namespace A234218

/-- `filter[A063904(n+1), A365089(#)]` -/
def P2893701705494146909.Spec : Prop :=
  ∀ n, P2893701705494146909.a n = A234218 (n + 1)

end A234218

/-! ## A234218.P16133036737976424533

`filter[A116974(n+1), A365089(#)]`
-/

namespace A234218.P16133036737976424533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365089 (f1 j).toNat = 1) n)

end

end A234218.P16133036737976424533

namespace A234218

/-- `filter[A116974(n+1), A365089(#)]` -/
def P16133036737976424533.Spec : Prop :=
  ∀ n, P16133036737976424533.a n = A234218 (n + 1)

end A234218

/-! ## A234218.P8902077450752403367

`filter[A138837(n+1), A365089(#)]`
-/

namespace A234218.P8902077450752403367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365089 (f1 j).toNat = 1) n)

end

end A234218.P8902077450752403367

namespace A234218

/-- `filter[A138837(n+1), A365089(#)]` -/
def P8902077450752403367.Spec : Prop :=
  ∀ n, P8902077450752403367.a n = A234218 (n + 1)

end A234218

/-! ## A234218.P9721320169333367314

`filter[A182986(n+1), A365089(#)]`
-/

namespace A234218.P9721320169333367314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365089 (f1 j).toNat = 1) n)

end

end A234218.P9721320169333367314

namespace A234218

/-- `filter[A182986(n+1), A365089(#)]` -/
def P9721320169333367314.Spec : Prop :=
  ∀ n, P9721320169333367314.a n = A234218 (n + 1)

end A234218

/-! ## A234218.P3214628384980633710

`filter[A008578(n+2), A365089(#)]`
-/

namespace A234218.P3214628384980633710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365089 (f1 j).toNat = 1) n)

end

end A234218.P3214628384980633710

namespace A234218

/-- `filter[A008578(n+2), A365089(#)]` -/
def P3214628384980633710.Spec : Prop :=
  ∀ n, P3214628384980633710.a n = A234218 (n + 1)

end A234218

/-! ## A234218.P9749749046478205375

`filter[A033946(n+2), A365089(#)]`
-/

namespace A234218.P9749749046478205375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365089 (f1 j).toNat = 1) n)

end

end A234218.P9749749046478205375

namespace A234218

/-- `filter[A033946(n+2), A365089(#)]` -/
def P9749749046478205375.Spec : Prop :=
  ∀ n, P9749749046478205375.a n = A234218 (n + 1)

end A234218

/-! ## A234218.P11730230337601973389

`filter[A162753(2*n), A365089(#)]`
-/

namespace A234218.P11730230337601973389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365089 (f1 j).toNat = 1) n)

end

end A234218.P11730230337601973389

namespace A234218

/-- `filter[A162753(2*n), A365089(#)]` -/
def P11730230337601973389.Spec : Prop :=
  ∀ n, P11730230337601973389.a n = A234218 (n + 1)

end A234218

/-! ## A234218.P5642258382772670983

`eq[A053989(n+1), A365089(n)]`
-/

namespace A234218.P5642258382772670983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365089 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A234218.P5642258382772670983

namespace A234218

/-- `eq[A053989(n+1), A365089(n)]` -/
def P5642258382772670983.Spec : Prop :=
  ∀ n, (P5642258382772670983.a n : ℤ) = A234218 (n + 1)

end A234218

/-!
# A234219: Number of (n+1) X (n+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A234219, there is no canonical definition to state claims against.
-/

/-! ## A234219.P11360345450623089026

`A234227(∑[4*n]+1)`
-/

namespace A234219.P11360345450623089026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234227 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234219.P11360345450623089026

/-! ## A234219.P17481058674794285480

`lcm(2, A234227(A001844(n)))`
-/

namespace A234219.P17481058674794285480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234227 (A001844 n).toNat)

end

end A234219.P17481058674794285480

/-! ## A234219.P18233594751495850668

`record[A234227(A330613(n+1))]`
-/

namespace A234219.P18233594751495850668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234227 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234219.P18233594751495850668

/-! ## A234219.P10649552959899269688

`record[A234227(A001844(val(n+1, 2)))]`
-/

namespace A234219.P10649552959899269688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234227 (A001844 (SequenceMachineLib.valuation (n + 1) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234219.P10649552959899269688

/-! ## A234219.P6207448692824112874

`record[A003982(n)*A234227(n+1)]`
-/

namespace A234219.P6207448692824112874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A234227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234219.P6207448692824112874

/-!
# A234220: Number of (n+1) X (1+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A234220, there is no canonical definition to state claims against.
-/

/-! ## A234220.P17109537695164262699

`A234227(∑[n]+1)`
-/

namespace A234220.P17109537695164262699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234227 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234220.P17109537695164262699

/-! ## A234220.P17122921005380899152

`record[A234227(n+1)]`
-/

namespace A234220.P17122921005380899152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234220.P17122921005380899152

/-! ## A234220.P3494575475513004088

`lcm(2, A234227(A000124(n)))`
-/

namespace A234220.P3494575475513004088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234227 (A000124 n).toNat)

end

end A234220.P3494575475513004088

/-! ## A234220.P12172728682121662187

`A326679(n)+A234227(A000124(n))`
-/

namespace A234220.P12172728682121662187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326679 n + A234227 (A000124 n).toNat

end

end A234220.P12172728682121662187

/-! ## A234220.P8261791846943320572

`A007318(∑[n])*A234227(A000124(n))`
-/

namespace A234220.P8261791846943320572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A234227 (A000124 n).toNat

end

end A234220.P8261791846943320572

/-!
# A234221: Number of (n+1) X (2+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A234221, there is no canonical definition to state claims against.
-/

/-! ## A234221.P7641807039463646045

`A234227(∑[n+1]+2)`
-/

namespace A234221.P7641807039463646045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234227 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234221.P7641807039463646045

/-! ## A234221.P15259935307377926736

`lcm(2, A234227(A000096(n)+3))`
-/

namespace A234221.P15259935307377926736
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234227 (A000096 n + 3).toNat)

end

end A234221.P15259935307377926736

/-! ## A234221.P4325271442218907239

`record[A010054(n)*A234227(n+2)]`
-/

namespace A234221.P4325271442218907239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234227 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234221.P4325271442218907239

/-! ## A234221.P1435861902095910107

`record[A154990(n+1)*A234227(n+3)]`
-/

namespace A234221.P1435861902095910107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154990 (n + 1) * A234227 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234221.P1435861902095910107

/-! ## A234221.P9503565076062404095

`A007318(C(n, 2))*A234227(A000096(n)+3)`
-/

namespace A234221.P9503565076062404095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A234227 (A000096 n + 3).toNat

end

end A234221.P9503565076062404095

/-!
# A234222: Number of (n+1) X (3+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A234222, there is no canonical definition to state claims against.
-/

/-! ## A234222.P5101705492488376147

`A234227(∑[n+2]+4)`
-/

namespace A234222.P5101705492488376147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234227 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234222.P5101705492488376147

/-! ## A234222.P5454550895946770107

`lcm(2, A234227(A167614(n+1)))`
-/

namespace A234222.P5454550895946770107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234227 (A167614 (n + 1)).toNat)

end

end A234222.P5454550895946770107

/-! ## A234222.P5259151308765936135

`A234227(A152950(n+3))+char[19]`
-/

namespace A234222.P5259151308765936135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234227 (A152950 (n + 3)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A234222.P5259151308765936135

/-! ## A234222.P14866702660356207854

`A234227(A167614(n+1))+A185284(n)`
-/

namespace A234222.P14866702660356207854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234227 (A167614 (n + 1)).toNat + A185284 n

end

end A234222.P14866702660356207854

/-! ## A234222.P14245396077181701256

`A234227(A167614(n+1))+A034579(n+1)`
-/

namespace A234222.P14245396077181701256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234227 (A167614 (n + 1)).toNat + A034579 (n + 1)

end

end A234222.P14245396077181701256

/-!
# A234223: Number of (n+1) X (4+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A234223, there is no canonical definition to state claims against.
-/

/-! ## A234223.P1676104940011379203

`A234227(∑[n+3]+7)`
-/

namespace A234223.P1676104940011379203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234227 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234223.P1676104940011379203

/-! ## A234223.P9491475633649978408

`lcm(2, A234227(A052905(n)+9))`
-/

namespace A234223.P9491475633649978408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234227 (A052905 n + 9).toNat)

end

end A234223.P9491475633649978408

/-! ## A234223.P16748409103718529193

`A007318(C(2, n))*A234227(A055999(n)+10)`
-/

namespace A234223.P16748409103718529193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A234227 (A055999 n + 10).toNat

end

end A234223.P16748409103718529193

/-! ## A234223.P4162587009161796880

`A234227(A055999(n)+10)%A000108(n+11)`
-/

namespace A234223.P4162587009161796880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234227 (A055999 n + 10).toNat) (A000108 (n + 11))

end

end A234223.P4162587009161796880

/-! ## A234223.P1494569840200794321

`A234227(A055999(n)+10)+char[A000108(n+7)]`
-/

namespace A234223.P1494569840200794321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 7)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234227 (A055999 n + 10).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A234223.P1494569840200794321

/-!
# A234224: Number of (n+1) X (5+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A234224, there is no canonical definition to state claims against.
-/

/-! ## A234224.P6904548712780451953

`A234227(A374005(n+1))`
-/

namespace A234224.P6904548712780451953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234227 (A374005 (n + 1)).toNat

end

end A234224.P6904548712780451953

/-! ## A234224.P619394159323682446

`A234227(A167499(n+3))`
-/

namespace A234224.P619394159323682446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234227 (A167499 (n + 3)).toNat

end

end A234224.P619394159323682446

/-! ## A234224.P2061703371156400062

`A234227(A155212(n)+13)`
-/

namespace A234224.P2061703371156400062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234227 (A155212 n + 13).toNat

end

end A234224.P2061703371156400062

/-! ## A234224.P3895107215959989571

`A234227(A056000(n)+15)`
-/

namespace A234224.P3895107215959989571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234227 (A056000 n + 15).toNat

end

end A234224.P3895107215959989571

/-! ## A234224.P17408275071501275670

`A234227(eq[7, A066657(n)])`
-/

namespace A234224.P17408275071501275670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234227 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234224.P17408275071501275670

/-!
# A234225: Number of (n+1) X (6+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A234225, there is no canonical definition to state claims against.
-/

/-! ## A234225.P17091284722802789146

`A234227(A374007(n+1))`
-/

namespace A234225.P17091284722802789146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234227 (A374007 (n + 1)).toNat

end

end A234225.P17091284722802789146

/-! ## A234225.P4265126703114129419

`A234227(A166136(n+4))`
-/

namespace A234225.P4265126703114129419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234227 (A166136 (n + 4)).toNat

end

end A234225.P4265126703114129419

/-! ## A234225.P16895073043997298958

`A234227(A056115(n)+21)`
-/

namespace A234225.P16895073043997298958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234227 (A056115 n + 21).toNat

end

end A234225.P16895073043997298958

/-! ## A234225.P5691715018763710971

`A234227(A167499(n+4)+1)`
-/

namespace A234225.P5691715018763710971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234227 (A167499 (n + 4) + 1).toNat

end

end A234225.P5691715018763710971

/-! ## A234225.P4950809852291623968

`A234227(A167487(n+4)-1)`
-/

namespace A234225.P4950809852291623968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234227 (A167487 (n + 4) - 1).toNat

end

end A234225.P4950809852291623968

/-!
# A234226: Number of (n+1) X (7+1) 0..4 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A234226, there is no canonical definition to state claims against.
-/

/-! ## A234226.P16333009098060112555

`A234227(A374008(n+1))`
-/

namespace A234226.P16333009098060112555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234227 (A374008 (n + 1)).toNat

end

end A234226.P16333009098060112555

/-! ## A234226.P12604046212000341938

`A234227(eq[11, A066657(n)])`
-/

namespace A234226.P12604046212000341938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234227 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234226.P12604046212000341938

/-! ## A234226.P17051006985513706433

`A234227(A166136(n+5)+1)`
-/

namespace A234226.P17051006985513706433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234227 (A166136 (n + 5) + 1).toNat

end

end A234226.P17051006985513706433

/-! ## A234226.P1222048740747882667

`A234227(A000217(n+6)+7)`
-/

namespace A234226.P1222048740747882667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234227 (A000217 (n + 6) + 7).toNat

end

end A234226.P1222048740747882667

/-! ## A234226.P2525772842882939226

`A234227(eq[8, A131818(n+1)])`
-/

namespace A234226.P2525772842882939226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234227 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234226.P2525772842882939226

/-!
# A234228: Number of (n+1) X (1+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A234228, there is no canonical definition to state claims against.
-/

/-! ## A234228.P1552818511091479013

`A234233(∑[n]+1)`
-/

namespace A234228.P1552818511091479013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234233 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234228.P1552818511091479013

/-! ## A234228.P13821597931776710208

`lcm(2, A234233(A000124(n)))`
-/

namespace A234228.P13821597931776710208
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234233 (A000124 n).toNat)

end

end A234228.P13821597931776710208

/-! ## A234228.P6795767135373090681

`record[A234233(A056534(n+1))]`
-/

namespace A234228.P6795767135373090681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234233 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234228.P6795767135373090681

/-! ## A234228.P11361447070249105622

`record[A234233(A056536(n+1))]`
-/

namespace A234228.P11361447070249105622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234233 (A056536 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234228.P11361447070249105622

/-! ## A234228.P3729679014855311276

`record[A234233(gcd(n, A097230(n)))]`
-/

namespace A234228.P3729679014855311276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234233 (Int.gcd (n : ℤ) (A097230 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234228.P3729679014855311276

/-!
# A234229: Number of (n+1) X (2+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A234229, there is no canonical definition to state claims against.
-/

/-! ## A234229.P11139397266855579760

`A234233(∑[n+1]+2)`
-/

namespace A234229.P11139397266855579760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234233 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234229.P11139397266855579760

/-! ## A234229.P9258961788884328611

`lcm(2, A234233(A000096(n)+3))`
-/

namespace A234229.P9258961788884328611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234233 (A000096 n + 3).toNat)

end

end A234229.P9258961788884328611

/-! ## A234229.P13598104035397572156

`record[A234233(A056536(n+1)+1)]`
-/

namespace A234229.P13598104035397572156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234233 (A056536 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234229.P13598104035397572156

/-! ## A234229.P5917114897067696373

`record[A234233(A003056(n)²-n+2)]`
-/

namespace A234229.P5917114897067696373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234233 (A003056 n ^ 2 - (n : ℤ) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234229.P5917114897067696373

/-! ## A234229.P17043217022947842371

`record[root(A234233(n+3), A004736(n+1))]`
-/

namespace A234229.P17043217022947842371
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234233 (n + 3) : ℝ) ^ (1 / (A004736 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234229.P17043217022947842371

/-!
# A234230: Number of (n+1) X (3+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A234230, there is no canonical definition to state claims against.
-/

/-! ## A234230.P13792287757305484251

`A234233(∑[n+2]+4)`
-/

namespace A234230.P13792287757305484251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234233 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234230.P13792287757305484251

/-! ## A234230.P17544028423764576211

`lcm(2, A234233(A167614(n+1)))`
-/

namespace A234230.P17544028423764576211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234233 (A167614 (n + 1)).toNat)

end

end A234230.P17544028423764576211

/-! ## A234230.P14128010901246833688

`record[root(A234233(n+4), A004736(n+1))]`
-/

namespace A234230.P14128010901246833688
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234233 (n + 4) : ℝ) ^ (1 / (A004736 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234230.P14128010901246833688

/-! ## A234230.P11457371882316330600

`record[root(A234233(n+4), A325005(n+1))]`
-/

namespace A234230.P11457371882316330600
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234233 (n + 4) : ℝ) ^ (1 / (A325005 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234230.P11457371882316330600

/-! ## A234230.P788398225193556241

`A234233(A167614(n+1))+A025444(n)`
-/

namespace A234230.P788398225193556241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234233 (A167614 (n + 1)).toNat + A025444 n

end

end A234230.P788398225193556241

/-!
# A234231: Number of (n+1) X (4+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A234231, there is no canonical definition to state claims against.
-/

/-! ## A234231.P6796807404510928557

`A234233(∑[n+3]+7)`
-/

namespace A234231.P6796807404510928557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234233 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234231.P6796807404510928557

/-! ## A234231.P3293888818526334994

`lcm(2, A234233(A374004(n+1)))`
-/

namespace A234231.P3293888818526334994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234233 (A374004 (n + 1)).toNat)

end

end A234231.P3293888818526334994

/-! ## A234231.P5612911247675637182

`A234233(A374004(n+1))+A000007(n+2)`
-/

namespace A234231.P5612911247675637182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234233 (A374004 (n + 1)).toNat + A000007 (n + 2)

end

end A234231.P5612911247675637182

/-! ## A234231.P6504067832264769914

`A234585(2*(n+1))+A234233(A374004(n+1))`
-/

namespace A234231.P6504067832264769914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234585 (2 * (n + 1)) + A234233 (A374004 (n + 1)).toNat

end

end A234231.P6504067832264769914

/-!
# A234232: Number of (n+1) X (5+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 3 (constant-stress 1 X 1 tilings).

The programs for A234232, there is no canonical definition to state claims against.
-/

/-! ## A234232.P16448842383605672593

`A234233(A374005(n+1))`
-/

namespace A234232.P16448842383605672593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234233 (A374005 (n + 1)).toNat

end

end A234232.P16448842383605672593

/-! ## A234232.P6040301910111063616

`A234233(A167499(n+3))`
-/

namespace A234232.P6040301910111063616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234233 (A167499 (n + 3)).toNat

end

end A234232.P6040301910111063616

/-! ## A234232.P3429859023095888438

`A234233(A155212(n)+13)`
-/

namespace A234232.P3429859023095888438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234233 (A155212 n + 13).toNat

end

end A234232.P3429859023095888438

/-!
# A234234: Numerators of minimum possible graph likelihood for a graph on n nodes.

The programs for A234234, there is no canonical definition to state claims against.
-/

/-! ## A234234.P1661831761148205905

`A026370(C(30, A112473(n+1)))`
-/

namespace A234234.P1661831761148205905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026370 (Nat.choose 30 (A112473 (n + 1)).toNat)

end

end A234234.P1661831761148205905

/-! ## A234234.P3804926384171474280

`A227821(A227811(n)%(∏[gcd(2, n)]-1))`
-/

namespace A234234.P3804926384171474280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227821 (Int.tmod (A227811 (n + 25)) (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)).toNat

end

end A234234.P3804926384171474280

/-! ## A234234.P6959321225602924203

`A227821(A279559(n)%A154701(n+1))`
-/

namespace A234234.P6959321225602924203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227821 (Int.tmod (A279559 n) (A154701 (n + 1))).toNat

end

end A234234.P6959321225602924203

/-!
# A234235: Denominators of minimum possible graph likelihood for a graph on n nodes.

The programs for A234235, there is no canonical definition to state claims against.
-/

/-! ## A234235.P4393050598741223350

`A093686(n^n)+n`
-/

namespace A234235.P4393050598741223350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093686 (n ^ n) + (n : ℤ)

end

end A234235.P4393050598741223350

/-!
# A234236: Numerators of maximum possible graph likelihood for a graph on n nodes.

The programs for A234236, there is no canonical definition to state claims against.
-/

/-! ## A234236.P13879906140600269595

`A000045(A345871(n))%A345856(n+1)`
-/

namespace A234236.P13879906140600269595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A345871 n).toNat) (A345856 (n + 1))

end

end A234236.P13879906140600269595

/-!
# A234237: Denominators of maximum possible graph likelihood for a graph on n nodes.

The programs for A234237, there is no canonical definition to state claims against.
-/

/-! ## A234237.P12141924667424765744

`A008955(A350916(n+1))*A093594(A004646(n)+1)`
-/

namespace A234237.P12141924667424765744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008955 (A350916 (n + 1)).toNat * A093594 (A004646 n + 1).toNat

end

end A234237.P12141924667424765744

/-!
# A234238: Sporadic solutions m to the congruence sigma(m) == 12 (mod m).

The programs for A234238, there is no canonical definition to state claims against.
-/

/-! ## A234238.P15434321393420450315

`filter[A076496(n+1), A107078(#)]`
-/

namespace A234238.P15434321393420450315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A234238.P15434321393420450315

/-! ## A234238.P2006708896253239005

`A028310(∪[A084306(n+1), A216697(n+1)])`
-/

namespace A234238.P2006708896253239005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216697 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A234238.P2006708896253239005

/-!
# A234239: E.g.f. satisfies: A(x) = exp( x + Integral Integral A(x)^3 dx dx ).

The programs for A234239, there is no canonical definition to state claims against.
-/

/-! ## A234239.P2624575890484569230

`A004526(A143740(n)+A056543(n+1))`
-/

namespace A234239.P2624575890484569230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A143740 n + A056543 (n + 1)).toNat

end

end A234239.P2624575890484569230

/-! ## A234239.P12633235780419860764

`A083920(A201690(n+1)+A152947(n+1))`
-/

namespace A234239.P12633235780419860764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (A201690 (n + 1) + A152947 (n + 1)).toNat

end

end A234239.P12633235780419860764

/-! ## A234239.P288657765897550635

`A080513(A080832(n))-A053575(2*(n+2))`
-/

namespace A234239.P288657765897550635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A080832 n).toNat - A053575 (2 * (n + 2))

end

end A234239.P288657765897550635

/-!
# A234240: Cubes which are arithmetic mean of two consecutive primes.

The programs for A234240, there is no canonical definition to state claims against.
-/

/-! ## A234240.P1242616135548059603

`A075191(n+1)^3`
-/

namespace A234240.P1242616135548059603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075191 (n + 1) ^ 3

end

end A234240.P1242616135548059603

/-! ## A234240.P17920832331440125487

`record[A075191(A126759(n))^3]`
-/

namespace A234240.P17920832331440125487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075191 (A126759 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234240.P17920832331440125487

/-! ## A234240.P13111886800429948334

`A075191(A000027(n+1))²*A075191(n+1)`
-/

namespace A234240.P13111886800429948334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075191 (A000027 (n + 1)).toNat ^ 2 * A075191 (n + 1)

end

end A234240.P13111886800429948334

/-! ## A234240.P17810043614853586083

`A000578(A075191(n+1))`
-/

namespace A234240.P17810043614853586083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A075191 (n + 1)).toNat

end

end A234240.P17810043614853586083

/-! ## A234240.P158047652151012993

`A081276(2*A075191(n+1))`
-/

namespace A234240.P158047652151012993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081276 (2 * A075191 (n + 1)).toNat

end

end A234240.P158047652151012993

/-! ## A234240.P15895266831880623067

`∩[A270696(n+1), n*n²]`
-/

namespace A234240.P15895266831880623067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270696 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A234240.P15895266831880623067

/-! ## A234240.P8205638863809152969

`∩[A000578(n), A270696(n+1)]`
-/

namespace A234240.P8205638863809152969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234240.P8205638863809152969

/-! ## A234240.P11364644389601271684

`∩[A109900(n), A270696(n+1)]`
-/

namespace A234240.P11364644389601271684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234240.P11364644389601271684

/-! ## A234240.P16870512998654574375

`∩[A184628(n+1), A270696(n+1)]`
-/

namespace A234240.P16870512998654574375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234240.P16870512998654574375

/-! ## A234240.P2632639781682828159

`A000027(A075191(n+1)²)²/A075191(n+1)`
-/

namespace A234240.P2632639781682828159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (A075191 (n + 1) ^ 2).toNat ^ 2 : ℚ) / (A075191 (n + 1) : ℚ)

end

end A234240.P2632639781682828159

/-!
# A234241: Number of (n+1) X (1+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234241, there is no canonical definition to state claims against.
-/

/-! ## A234241.P6999341184580038379

`A234245(∑[n]+1)`
-/

namespace A234241.P6999341184580038379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234245 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234241.P6999341184580038379

/-! ## A234241.P13930085765291312863

`lcm(2, A234245(A000124(n)))`
-/

namespace A234241.P13930085765291312863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234245 (A000124 n).toNat)

end

end A234241.P13930085765291312863

/-! ## A234241.P2606519278820210660

`record[A234245(A246276(n+1))]`
-/

namespace A234241.P2606519278820210660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234245 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234241.P2606519278820210660

/-! ## A234241.P3845845231623916081

`record[A234245(A249742(n+1))]`
-/

namespace A234241.P3845845231623916081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234245 (A249742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234241.P3845845231623916081

/-! ## A234241.P16388569267566035825

`record[A010054(n)*A234245(n+1)]`
-/

namespace A234241.P16388569267566035825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234245 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234241.P16388569267566035825

/-!
# A234242: Number of (n+1) X (2+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234242, there is no canonical definition to state claims against.
-/

/-! ## A234242.P12165498150139500525

`A234245(∑[n+1]+2)`
-/

namespace A234242.P12165498150139500525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234245 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234242.P12165498150139500525

/-! ## A234242.P8881964859362404153

`record[A010054(n)*A234245(n+2)]`
-/

namespace A234242.P8881964859362404153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A234245 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234242.P8881964859362404153

/-! ## A234242.P3113989830479895130

`record[A234245(A198455(n+1))]`
-/

namespace A234242.P3113989830479895130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234245 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234242.P3113989830479895130

/-! ## A234242.P3550444187095324314

`record[A234245(Δ[A003453(n+5)])]`
-/

namespace A234242.P3550444187095324314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234245 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234242.P3550444187095324314

/-! ## A234242.P12548581208608465748

`record[A234245(A246276(2*(n+1))-1)]`
-/

namespace A234242.P12548581208608465748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234245 (A246276 (2 * (n + 1)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234242.P12548581208608465748

/-!
# A234243: Number of (n+1) X (3+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234243, there is no canonical definition to state claims against.
-/

/-! ## A234243.P11121863280205231887

`A234245(∑[n+2]+4)`
-/

namespace A234243.P11121863280205231887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234245 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234243.P11121863280205231887

/-! ## A234243.P16219703580131412084

`lcm(2, A234245(A167614(n+1)))`
-/

namespace A234243.P16219703580131412084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234245 (A167614 (n + 1)).toNat)

end

end A234243.P16219703580131412084

/-! ## A234243.P899370230960885535

`A234245(A167614(n+1))+A025442(n)`
-/

namespace A234243.P899370230960885535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234245 (A167614 (n + 1)).toNat + A025442 n

end

end A234243.P899370230960885535

/-! ## A234243.P13289920761420461590

`A234245(A167614(n+1))+A026830(n)`
-/

namespace A234243.P13289920761420461590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234245 (A167614 (n + 1)).toNat + A026830 n

end

end A234243.P13289920761420461590

/-! ## A234243.P5533661988901710158

`A234245(A167614(n+1))+A062329(n)`
-/

namespace A234243.P5533661988901710158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234245 (A167614 (n + 1)).toNat + A062329 n

end

end A234243.P5533661988901710158

/-!
# A234244: Number of (n+1) X (4+1) 0..7 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234244, there is no canonical definition to state claims against.
-/

/-! ## A234244.P12264702522779928309

`A234245(∑[a(n-1)+1]+7)` with `a(0)=3`
-/

namespace A234244.P12264702522779928309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234245 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234244.P12264702522779928309

/-! ## A234244.P17995189174055580904

`A234245(A374004(n+1))`
-/

namespace A234244.P17995189174055580904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234245 (A374004 (n + 1)).toNat

end

end A234244.P17995189174055580904

/-! ## A234244.P12650403760661510991

`A234245(A141214(n)+7)`
-/

namespace A234244.P12650403760661510991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234245 (A141214 n + 7).toNat

end

end A234244.P12650403760661510991

/-! ## A234244.P1642157972308103332

`A234245(A052905(n)+9)`
-/

namespace A234244.P1642157972308103332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234245 (A052905 n + 9).toNat

end

end A234244.P1642157972308103332

/-!
# A234246: a(n) = |{0 < k < n: k*phi(n-k) + 1 is a square}|, where phi(.) is Euler's totient function.

The programs for A234246, there is no canonical definition to state claims against.
-/

/-! ## A234246.P12613550580089777083

`A255327(∑[A135351(n)])`
-/

namespace A234246.P12613550580089777083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255327 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A234246.P12613550580089777083

/-! ## A234246.P17933035976361958286

`A196564(A011371(C(n, 2))²)`
-/

namespace A234246.P17933035976361958286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A011371 (Nat.choose n 2) ^ 2).toNat

end

end A234246.P17933035976361958286

/-! ## A234246.P2966806258179830820

`A196563(A160552(A000124(n))²)`
-/

namespace A234246.P2966806258179830820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A160552 (A000124 n).toNat ^ 2).toNat

end

end A234246.P2966806258179830820

/-! ## A234246.P2258425660155878612

`A255327(A110654(n)+A001045(n))`
-/

namespace A234246.P2258425660155878612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255327 (A110654 n + A001045 n).toNat

end

end A234246.P2258425660155878612

/-! ## A234246.P12452169562875297852

`A091633(A027466(n))%A034888(n)`
-/

namespace A234246.P12452169562875297852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091633 (A027466 n).toNat) (A034888 n)

end

end A234246.P12452169562875297852

/-!
# A234248: Number of distinct lines passing through at least three points in a triangular grid of side n.

The programs for A234248, there is no canonical definition to state claims against.
-/

/-! ## A234248.P6915695467121870455

`A366847(A288341(n))`
-/

namespace A234248.P6915695467121870455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366847 (A288341 n).toNat

end

end A234248.P6915695467121870455

/-! ## A234248.P150918472845696856

`A366847(A035298(n+1))`
-/

namespace A234248.P150918472845696856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366847 (A035298 (n + 1)).toNat

end

end A234248.P150918472845696856

/-! ## A234248.P4457164085710137330

`A366847(A347542(n+6))`
-/

namespace A234248.P4457164085710137330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366847 (A347542 (n + 6)).toNat

end

end A234248.P4457164085710137330

/-! ## A234248.P1202936935588700141

`A167817(A085450(n+1))*A175965(n+1)`
-/

namespace A234248.P1202936935588700141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167817 (A085450 (n + 1)).toNat * A175965 (n + 1)

end

end A234248.P1202936935588700141

/-!
# A234249: Number of ways to choose 4 points in an n X n X n triangular grid.

The programs for A234249, the canonical program `A234249.P11590679313945028438` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234249 has offset 3).

The definition of A234249 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234249.P11590679313945028438

`C(C(n+4, 2), 4)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A234249

/-- `C(C(n+4, 2), 4)` -/
def P11590679313945028438.Spec : Prop :=
  ∀ n, (P11590679313945028438.a n : ℤ) = A234249 (n + 3)

theorem P11590679313945028438.correct : P11590679313945028438.Spec := by
  intro n
  simp only [A234249, Nat.add_sub_cancel]

end A234249

/-! ## A234249.P2046352460532135957

`(n+3)*(n+4)*(n+2)*(n+5)*(n+1)*(n+6)*((n+3)²+n+3-4)/384`
-/

namespace A234249.P2046352460532135957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 3) * (n + 4) * (n + 2) * (n + 5) * (n + 1) * (n + 6) : ℤ) * (((n + 3) ^ 2 + (n + 3) : ℤ) - 4) : ℚ) / 384

end

end A234249.P2046352460532135957

namespace A234249

/-- `(n+3)*(n+4)*(n+2)*(n+5)*(n+1)*(n+6)*((n+3)²+n+3-4)/384` -/
def P2046352460532135957.Spec : Prop :=
  ∀ n, P2046352460532135957.a n = (A234249 (n + 3) : ℚ)

end A234249

/-! ## A234249.P11730075827036325068

`C(A000217(n+3), 4)`
-/

namespace A234249.P11730075827036325068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000217 (n + 3)).toNat 4

end

end A234249.P11730075827036325068

namespace A234249

/-- `C(A000217(n+3), 4)` -/
def P11730075827036325068.Spec : Prop :=
  ∀ n, (P11730075827036325068.a n : ℤ) = A234249 (n + 3)

end A234249

/-! ## A234249.P1633717070749670928

`C(A052905(n)+5, 4)`
-/

namespace A234249.P1633717070749670928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A052905 n + 5).toNat 4

end

end A234249.P1633717070749670928

namespace A234249

/-- `C(A052905(n)+5, 4)` -/
def P1633717070749670928.Spec : Prop :=
  ∀ n, (P1633717070749670928.a n : ℤ) = A234249 (n + 3)

end A234249

/-! ## A234249.P14811090634434996308

`C(A055999(n)+6, 4)`
-/

namespace A234249.P14811090634434996308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A055999 n + 6).toNat 4

end

end A234249.P14811090634434996308

namespace A234249

/-- `C(A055999(n)+6, 4)` -/
def P14811090634434996308.Spec : Prop :=
  ∀ n, (P14811090634434996308.a n : ℤ) = A234249 (n + 3)

end A234249

/-! ## A234249.P7642673334593362159

`15*A006857(n)-a(n-1)` with `a(0)=15`
-/

namespace A234249.P7642673334593362159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [15] fun n a =>
  15 * A006857 n - a (n - 1)

end

end A234249.P7642673334593362159

namespace A234249

/-- `15*A006857(n)-a(n-1)` -/
def P7642673334593362159.Spec : Prop :=
  ∀ n, P7642673334593362159.a n = A234249 (n + 3)

end A234249

/-! ## A234249.P9511889397831553176

`15*(A034266(n)+A034265(n))`
-/

namespace A234249.P9511889397831553176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * (A034266 n + A034265 n)

end

end A234249.P9511889397831553176

namespace A234249

/-- `15*(A034266(n)+A034265(n))` -/
def P9511889397831553176.Spec : Prop :=
  ∀ n, P9511889397831553176.a n = A234249 (n + 3)

end A234249

/-! ## A234249.P2481972240305424833

`C(Δ[A062748(n)], 4)`
-/

namespace A234249.P2481972240305424833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062748 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 4

end

end A234249.P2481972240305424833

namespace A234249

/-- `C(Δ[A062748(n)], 4)` -/
def P2481972240305424833.Spec : Prop :=
  ∀ n, (P2481972240305424833.a n : ℤ) = A234249 (n + 3)

end A234249

/-! ## A234249.P13734634472770884919

`C(Δ[A092286(n)], 4)`
-/

namespace A234249.P13734634472770884919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 4

end

end A234249.P13734634472770884919

namespace A234249

/-- `C(Δ[A092286(n)], 4)` -/
def P13734634472770884919.Spec : Prop :=
  ∀ n, (P13734634472770884919.a n : ℤ) = A234249 (n + 3)

end A234249

/-! ## A234249.P16998313621461296908

`C(A253145(n+2), 4)`
-/

namespace A234249.P16998313621461296908
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A253145 (n + 2)).toNat 4

end

end A234249.P16998313621461296908

namespace A234249

/-- `C(A253145(n+2), 4)` -/
def P16998313621461296908.Spec : Prop :=
  ∀ n, (P16998313621461296908.a n : ℤ) = A234249 (n + 3)

end A234249

/-! ## A234249.P3854332870561563708

`C(A161680(n+4), 4)`
-/

namespace A234249.P3854332870561563708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A161680 (n + 4)).toNat 4

end

end A234249.P3854332870561563708

namespace A234249

/-- `C(A161680(n+4), 4)` -/
def P3854332870561563708.Spec : Prop :=
  ∀ n, (P3854332870561563708.a n : ℤ) = A234249 (n + 3)

end A234249

/-! ## A234249.P4549604484259390188

`C(A179865(n+4), 4)`
-/

namespace A234249.P4549604484259390188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A179865 (n + 4)).toNat 4

end

end A234249.P4549604484259390188

namespace A234249

/-- `C(A179865(n+4), 4)` -/
def P4549604484259390188.Spec : Prop :=
  ∀ n, (P4549604484259390188.a n : ℤ) = A234249 (n + 3)

end A234249

/-! ## A234249.P13426449796166035297

`A337956(n+4)-A337957(n+4)`
-/

namespace A234249.P13426449796166035297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337956 (n + 4) - A337957 (n + 4)

end

end A234249.P13426449796166035297

namespace A234249

/-- `A337956(n+4)-A337957(n+4)` -/
def P13426449796166035297.Spec : Prop :=
  ∀ n, P13426449796166035297.a n = A234249 (n + 3)

end A234249

/-! ## A234249.P17380365112442574405

`A337957(n+4)-A337958(n+4)`
-/

namespace A234249.P17380365112442574405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337957 (n + 4) - A337958 (n + 4)

end

end A234249.P17380365112442574405

namespace A234249

/-- `A337957(n+4)-A337958(n+4)` -/
def P17380365112442574405.Spec : Prop :=
  ∀ n, P17380365112442574405.a n = A234249 (n + 3)

end A234249

/-! ## A234249.P10291702845250721140

`A000332(C(n+4, 2))`
-/

namespace A234249.P10291702845250721140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (Nat.choose (n + 4) 2)

end

end A234249.P10291702845250721140

namespace A234249

/-- `A000332(C(n+4, 2))` -/
def P10291702845250721140.Spec : Prop :=
  ∀ n, P10291702845250721140.a n = A234249 (n + 3)

end A234249

/-! ## A234249.P3425558844591812338

`A145126(∑[n+3])-1`
-/

namespace A234249.P3425558844591812338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145126 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A234249.P3425558844591812338

namespace A234249

/-- `A145126(∑[n+3])-1` -/
def P3425558844591812338.Spec : Prop :=
  ∀ n, P3425558844591812338.a n = A234249 (n + 3)

end A234249

/-! ## A234249.P15782978737234128852

`A000332(∑[n+3]+3)`
-/

namespace A234249.P15782978737234128852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A234249.P15782978737234128852

namespace A234249

/-- `A000332(∑[n+3]+3)` -/
def P15782978737234128852.Spec : Prop :=
  ∀ n, P15782978737234128852.a n = A234249 (n + 3)

end A234249

/-!
# A234250: Number of ways to choose 3 points in an n X n X n triangular grid so that they do not form a 2 X 2 X 2 triangle.

The programs for A234250, the canonical program `A234250.P5752660602601393653` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234250 has offset 2).

The definition of A234250 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234250.P5752660602601393653

`(n+1)*n*((n+2)^4+6*(n+2)^3+13*(n+2)²+16*(n+2)-24)/48`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A234250

/-- `(n+1)*n*((n+2)^4+6*(n+2)^3+13*(n+2)²+16*(n+2)-24)/48` -/
def P5752660602601393653.Spec : Prop :=
  ∀ n, P5752660602601393653.a n = (A234250 (n + 2) : ℚ)

end A234250

/-! ## A234250.P4864710791093556044

`C(C(n+3, 2), 3)-(n+1)²`
-/

namespace A234250.P4864710791093556044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.choose (n + 3) 2) 3 : ℤ) - ((n + 1) ^ 2 : ℤ)

end

end A234250.P4864710791093556044

namespace A234250

/-- `C(C(n+3, 2), 3)-(n+1)²` -/
def P4864710791093556044.Spec : Prop :=
  ∀ n, P4864710791093556044.a n = A234250 (n + 2)

end A234250

/-! ## A234250.P1425083861925161301

`C(A055998(n)+3, 3)-(n+1)²`
-/

namespace A234250.P1425083861925161301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A055998 n + 3).toNat 3 : ℤ) - ((n + 1) ^ 2 : ℤ)

end

end A234250.P1425083861925161301

namespace A234250

/-- `C(A055998(n)+3, 3)-(n+1)²` -/
def P1425083861925161301.Spec : Prop :=
  ∀ n, P1425083861925161301.a n = A234250 (n + 2)

end A234250

/-! ## A234250.P11814850578615988585

`A243212(n+2)+A019298(n)`
-/

namespace A234250.P11814850578615988585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243212 (n + 2) + A019298 n

end

end A234250.P11814850578615988585

namespace A234250

/-- `A243212(n+2)+A019298(n)` -/
def P11814850578615988585.Spec : Prop :=
  ∀ n, P11814850578615988585.a n = A234250 (n + 2)

end A234250

/-! ## A234250.P2337760066080687713

`A243212(n+2)+∑[A077043(n)]`
-/

namespace A234250.P2337760066080687713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243212 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234250.P2337760066080687713

namespace A234250

/-- `A243212(n+2)+∑[A077043(n)]` -/
def P2337760066080687713.Spec : Prop :=
  ∀ n, P2337760066080687713.a n = A234250 (n + 2)

end A234250

/-! ## A234250.P3726952153270101839

`A005582(n)+A000217(n)*A063258(n)`
-/

namespace A234250.P3726952153270101839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 n + A000217 n * A063258 n

end

end A234250.P3726952153270101839

namespace A234250

/-- `A005582(n)+A000217(n)*A063258(n)` -/
def P3726952153270101839.Spec : Prop :=
  ∀ n, P3726952153270101839.a n = A234250 (n + 2)

end A234250

/-! ## A234250.P9710448485751407408

`A243212(n+2)+A002717(n)-A002620(n)`
-/

namespace A234250.P9710448485751407408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243212 (n + 2) + (A002717 n - A002620 n)

end

end A234250.P9710448485751407408

namespace A234250

/-- `A243212(n+2)+A002717(n)-A002620(n)` -/
def P9710448485751407408.Spec : Prop :=
  ∀ n, P9710448485751407408.a n = A234250 (n + 2)

end A234250

/-! ## A234250.P16646477334467263691

`∑[∑[∑[A063522(n+1)]]]-(n+1)²`
-/

namespace A234250.P16646477334467263691
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A234250.P16646477334467263691

namespace A234250

/-- `∑[∑[∑[A063522(n+1)]]]-(n+1)²` -/
def P16646477334467263691.Spec : Prop :=
  ∀ n, P16646477334467263691.a n = A234250 (n + 2)

end A234250

/-! ## A234250.P15688445378106441951

`A053526(n+3)+C(n+1, 3)`
-/

namespace A234250.P15688445378106441951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053526 (n + 3) + (Nat.choose (n + 1) 3 : ℤ)

end

end A234250.P15688445378106441951

namespace A234250

/-- `A053526(n+3)+C(n+1, 3)` -/
def P15688445378106441951.Spec : Prop :=
  ∀ n, P15688445378106441951.a n = A234250 (n + 2)

end A234250

/-! ## A234250.P10387484367842334589

`A053526(n+3)+Δ[A000332(n+1)]`
-/

namespace A234250.P10387484367842334589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053526 (n + 3) + (f1 (n + 1) - f1 n)

end

end A234250.P10387484367842334589

namespace A234250

/-- `A053526(n+3)+Δ[A000332(n+1)]` -/
def P10387484367842334589.Spec : Prop :=
  ∀ n, P10387484367842334589.a n = A234250 (n + 2)

end A234250

/-! ## A234250.P9010431797409651030

`A000292(∑[n+2]-1)-(n+1)²`
-/

namespace A234250.P9010431797409651030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - ((n + 1) ^ 2 : ℤ)

end

end A234250.P9010431797409651030

namespace A234250

/-- `A000292(∑[n+2]-1)-(n+1)²` -/
def P9010431797409651030.Spec : Prop :=
  ∀ n, P9010431797409651030.a n = A234250 (n + 2)

end A234250

/-!
# A234251: Triangle T(n, k) = Number of ways to choose k points from an n X n X n triangular grid so that no three of them form a 2 X 2 X 2 subtriangle. Triangle T read by rows.

The programs for A234251, there is no canonical definition to state claims against.
-/

/-! ## A234251.P17339247915748081281

`A240439(n+1)+A142150(A216834(n+1))`
-/

namespace A234251.P17339247915748081281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240439 (n + 1) + A142150 (A216834 (n + 1)).toNat

end

end A234251.P17339247915748081281

/-! ## A234251.P707662567314352067

`A243211(n+1)+A142150(A216834(n+1))`
-/

namespace A234251.P707662567314352067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243211 (n + 1) + A142150 (A216834 (n + 1)).toNat

end

end A234251.P707662567314352067

/-!
# A234252: a(n) = ((n-1)^(n+1) + (-1)^n*(n+1)^(n-1))/(n^2).

The programs for A234252, the canonical program `A234252.P5443372980763455594` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234252 has offset 1).

The definition of A234252 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234252.P5443372980763455594

`(n^(n+2)+(-1)^(n+1)*(n+2)^n)/(n+1)²`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A234252

/-- `(n^(n+2)+(-1)^(n+1)*(n+2)^n)/(n+1)²` -/
def P5443372980763455594.Spec : Prop :=
  ∀ n, P5443372980763455594.a n = (A234252 (n + 1) : ℚ)

end A234252

/-!
# A234253: a(n) = Sum_{i=1..n} C(7+i,8)^2.

The programs for A234253, the canonical program `A234253.P628694877504160222` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234253 has offset 1).

The definition of A234253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234253.P628694877504160222

`∑[C(n+8, 8)²]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A234253

/-- `∑[C(n+8, 8)²]` -/
def P628694877504160222.Spec : Prop :=
  ∀ n, (P628694877504160222.a n : ℤ) = A234253 (n + 1)

theorem P628694877504160222.correct : P628694877504160222.Spec := by
  intro n
  simp only [A234253, Nat.add_sub_cancel]

end A234253

/-! ## A234253.P11217879167634308759

`∑[C(n+8, 8)^2]`
-/

namespace A234253.P11217879167634308759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 8) 8 ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234253.P11217879167634308759

namespace A234253

/-- `∑[C(n+8, 8)^2]` -/
def P11217879167634308759.Spec : Prop :=
  ∀ n, (P11217879167634308759.a n : ℤ) = A234253 (n + 1)

theorem P11217879167634308759.correct : P11217879167634308759.Spec := by
  intro n
  simp only [A234253, Nat.add_sub_cancel, A234253.P11217879167634308759.f1, A234253.P11217879167634308759.a, A234253.P628694877504160222.f1, A234253.P628694877504160222.a, SequenceMachineLib.memo_apply]

end A234253

/-! ## A234253.P4189173402404922890

`a(n-1)+C(n+8, 8)²` with `a(0)=1`
-/

namespace A234253.P4189173402404922890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (n + 8) 8 ^ 2

end

end A234253.P4189173402404922890

namespace A234253

/-- `a(n-1)+C(n+8, 8)²` -/
def P4189173402404922890.Spec : Prop :=
  ∀ n, (P4189173402404922890.a n : ℤ) = A234253 (n + 1)

end A234253

/-! ## A234253.P6140061078384255017

`∑[∑[∑[∑[∑[∑[∑[∑[n+1]]]]]]]²]`
-/

namespace A234253.P6140061078384255017
noncomputable section

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234253.P6140061078384255017

namespace A234253

/-- `∑[∑[∑[∑[∑[∑[∑[∑[n+1]]]]]]]²]` -/
def P6140061078384255017.Spec : Prop :=
  ∀ n, (P6140061078384255017.a n : ℤ) = A234253 (n + 1)

end A234253

/-! ## A234253.P9769362082842110881

`a(n-1)+A000581(n+8)²` with `a(0)=1`
-/

namespace A234253.P9769362082842110881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000581 (n + 8) ^ 2

end

end A234253.P9769362082842110881

namespace A234253

/-- `a(n-1)+A000581(n+8)²` -/
def P9769362082842110881.Spec : Prop :=
  ∀ n, P9769362082842110881.a n = A234253 (n + 1)

end A234253

/-! ## A234253.P11235203445864984561

`lcm(∑[A000581(n+8)²], A000034(n))`
-/

namespace A234253.P11235203445864984561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A000034 n)

end

end A234253.P11235203445864984561

namespace A234253

/-- `lcm(∑[A000581(n+8)²], A000034(n))` -/
def P11235203445864984561.Spec : Prop :=
  ∀ n, (P11235203445864984561.a n : ℤ) = A234253 (n + 1)

end A234253

/-! ## A234253.P8786811906785802642

`A007318(A000096(n))*∑[A000581(n+8)²]`
-/

namespace A234253.P8786811906785802642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A234253.P8786811906785802642

namespace A234253

/-- `A007318(A000096(n))*∑[A000581(n+8)²]` -/
def P8786811906785802642.Spec : Prop :=
  ∀ n, P8786811906785802642.a n = A234253 (n + 1)

end A234253

/-! ## A234253.P6104123420863614774

`A007318(A000217(n))*∑[A000581(n+8)²]`
-/

namespace A234253.P6104123420863614774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A234253.P6104123420863614774

namespace A234253

/-- `A007318(A000217(n))*∑[A000581(n+8)²]` -/
def P6104123420863614774.Spec : Prop :=
  ∀ n, P6104123420863614774.a n = A234253 (n + 1)

end A234253

/-!
# A234254: Number of conjugacy classes in Weyl group of type D_n.

The programs for A234254, there is no canonical definition to state claims against.
-/

/-! ## A234254.P11114702990206357710

`A281357(n+2)+A035363(n+2)`
-/

namespace A234254.P11114702990206357710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281357 (n + 2) + A035363 (n + 2)

end

end A234254.P11114702990206357710

/-!
# A234255: Decimal expansion of -B(12) = 691/2730, 13th Bernoulli number without sign.

The programs for A234255, the canonical program `A234255.P7507792426309223512` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234255 has offset 1).

The definition of A234255 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234255.P7507792426309223512

`a(n-6)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=3, a(4)=1, a(5)=1, a(6)=3, a(7)=5`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A234255

/-- `a(n-6)` -/
def P7507792426309223512.Spec : Prop :=
  ∀ n, (P7507792426309223512.a n : ℤ) = A234255 (n + 1)

theorem P7507792426309223512.correct : P7507792426309223512.Spec := by
  intro n
  simp only [A234255, Nat.add_sub_cancel]

end A234255

/-!
# A234257: Integers n such that the smallest x with sigma(x) == -1 mod n is n - 2.

The programs for A234257, there is no canonical definition to state claims against.
-/

/-! ## A234257.P17418643111914713831

`eq[n, A233929(n+2)]+2`
-/

namespace A234257.P17418643111914713831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233929 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A234257.P17418643111914713831

/-! ## A234257.P3533457714921398495

`eq[n, A233929(A028310(n))+2]`
-/

namespace A234257.P3533457714921398495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233929 (A028310 n).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234257.P3533457714921398495

/-! ## A234257.P8060700078070349830

`eq[A233929(A028310(n)), A289207(n)]`
-/

namespace A234257.P8060700078070349830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233929 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A234257.P8060700078070349830

/-! ## A234257.P4987562313935320132

`A293008(n+1)+A159580(A005153(3*n+5))`
-/

namespace A234257.P4987562313935320132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293008 (n + 1) + A159580 (A005153 (3 * n + 5)).toNat

end

end A234257.P4987562313935320132

/-!
# A234258: Number of (n+1) X (n+1) 0..2 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234258, there is no canonical definition to state claims against.
-/

/-! ## A234258.P12615710405638300697

`A234266(∑[4*n]+1)`
-/

namespace A234258.P12615710405638300697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234266 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234258.P12615710405638300697

/-! ## A234258.P15470288363899978506

`lcm(2, A234266(A001844(n)))`
-/

namespace A234258.P15470288363899978506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234266 (A001844 n).toNat)

end

end A234258.P15470288363899978506

/-! ## A234258.P10150102523325155330

`lcm(4, A234266(A000982(2*n+1)))`
-/

namespace A234258.P10150102523325155330
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A234266 (A000982 (2 * n + 1)).toNat)

end

end A234258.P10150102523325155330

/-! ## A234258.P8526601748727537354

`A234266(A001844(n))+A185037(n)`
-/

namespace A234258.P8526601748727537354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234266 (A001844 n).toNat + A185037 n

end

end A234258.P8526601748727537354

/-! ## A234258.P9672285255514189965

`A007318(∑[n])*A234266(A001844(n))`
-/

namespace A234258.P9672285255514189965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A234266 (A001844 n).toNat

end

end A234258.P9672285255514189965

/-!
# A234259: Number of (n+1) X (1+1) 0..2 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234259, the canonical program `A234259.P13929752698472734076` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234259 has offset 1).

The definition of A234259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234259.P13929752698472734076

`2*a(n-1)+6*a(n-2)-12*a(n-3)` with `a(0)=20, a(1)=46, a(2)=104`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A234259

/-- `2*a(n-1)+6*a(n-2)-12*a(n-3)` -/
def P13929752698472734076.Spec : Prop :=
  ∀ n, P13929752698472734076.a n = A234259 (n + 1)

theorem P13929752698472734076.correct : P13929752698472734076.Spec := by
  intro n
  simp only [A234259, Nat.add_sub_cancel]

end A234259

/-! ## A234259.P10462368101998476980

`A234266(∑[n]+1)`
-/

namespace A234259.P10462368101998476980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234266 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234259.P10462368101998476980

namespace A234259

/-- `A234266(∑[n]+1)` -/
def P10462368101998476980.Spec : Prop :=
  ∀ n, P10462368101998476980.a n = A234259 (n + 1)

end A234259

/-! ## A234259.P11523883642863859529

`record[A234266(n+1)]`
-/

namespace A234259.P11523883642863859529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234259.P11523883642863859529

namespace A234259

/-- `record[A234266(n+1)]` -/
def P11523883642863859529.Spec : Prop :=
  ∀ n, P11523883642863859529.a n = A234259 (n + 1)

end A234259

/-! ## A234259.P9239306933078335893

`lcm(2, A234266(A000124(n)))`
-/

namespace A234259.P9239306933078335893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234266 (A000124 n).toNat)

end

end A234259.P9239306933078335893

namespace A234259

/-- `lcm(2, A234266(A000124(n)))` -/
def P9239306933078335893.Spec : Prop :=
  ∀ n, (P9239306933078335893.a n : ℤ) = A234259 (n + 1)

end A234259

/-! ## A234259.P15932797771238996573

`A007318(∑[n])*A234266(A000124(n))`
-/

namespace A234259.P15932797771238996573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A234266 (A000124 n).toNat

end

end A234259.P15932797771238996573

namespace A234259

/-- `A007318(∑[n])*A234266(A000124(n))` -/
def P15932797771238996573.Spec : Prop :=
  ∀ n, P15932797771238996573.a n = A234259 (n + 1)

end A234259

/-!
# A234260: Number of (n+1) X (2+1) 0..2 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234260, there is no canonical definition to state claims against.
-/

/-! ## A234260.P9939721378597360953

`A234266(∑[n+1]+2)`
-/

namespace A234260.P9939721378597360953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234266 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234260.P9939721378597360953

/-! ## A234260.P876365433028984410

`lcm(2, A234266(A133263(n+1)))`
-/

namespace A234260.P876365433028984410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234266 (A133263 (n + 1)).toNat)

end

end A234260.P876365433028984410

/-! ## A234260.P8617910216191971354

`A234266(A133263(n+1))%A234261(n+1)`
-/

namespace A234260.P8617910216191971354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234266 (A133263 (n + 1)).toNat) (A234261 (n + 1))

end

end A234260.P8617910216191971354

/-! ## A234260.P14802463884514338176

`A007318(C(n, 2))*A234266(A133263(n+1))`
-/

namespace A234260.P14802463884514338176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A234266 (A133263 (n + 1)).toNat

end

end A234260.P14802463884514338176

/-! ## A234260.P14052426345483279043

`A234266(A133263(n+1))+char[A000108(n+8)]`
-/

namespace A234260.P14052426345483279043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 8)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234266 (A133263 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A234260.P14052426345483279043

/-!
# A234261: Number of (n+1) X (3+1) 0..2 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234261, there is no canonical definition to state claims against.
-/

/-! ## A234261.P5083391613721649475

`A234266(∑[n+2]+4)`
-/

namespace A234261.P5083391613721649475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234266 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234261.P5083391613721649475

/-! ## A234261.P11235588053331542287

`lcm(2, A234266(A167614(n+1)))`
-/

namespace A234261.P11235588053331542287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234266 (A167614 (n + 1)).toNat)

end

end A234261.P11235588053331542287

/-! ## A234261.P8738386055674161708

`xor(1, A234266(A167499(n)+n)+1)`
-/

namespace A234261.P8738386055674161708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A234266 (A167499 n + (n : ℤ)).toNat + 1)

end

end A234261.P8738386055674161708

/-! ## A234261.P15623432814291103417

`A234266(A167614(n+1))+A025469(n)`
-/

namespace A234261.P15623432814291103417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234266 (A167614 (n + 1)).toNat + A025469 n

end

end A234261.P15623432814291103417

/-! ## A234261.P16475304738797829249

`A326292(n)+A234266(A167614(n+1))`
-/

namespace A234261.P16475304738797829249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326292 n + A234266 (A167614 (n + 1)).toNat

end

end A234261.P16475304738797829249

/-!
# A234262: Number of (n+1) X (4+1) 0..2 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234262, there is no canonical definition to state claims against.
-/

/-! ## A234262.P6660859487684109537

`A234266(∑[n+3]+7)`
-/

namespace A234262.P6660859487684109537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234266 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A234262.P6660859487684109537

/-! ## A234262.P7798869025388681869

`lcm(2, A234266(A052905(n)+9))`
-/

namespace A234262.P7798869025388681869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234266 (A052905 n + 9).toNat)

end

end A234262.P7798869025388681869

/-! ## A234262.P1721809552617121343

`A234266(A055999(n)+10)+C(n, 47)`
-/

namespace A234262.P1721809552617121343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234266 (A055999 n + 10).toNat + (Nat.choose n 47 : ℤ)

end

end A234262.P1721809552617121343

/-! ## A234262.P8904978260923725023

`A000041(C(n, 64))*A234266(A052905(n)+9)`
-/

namespace A234262.P8904978260923725023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 64) * A234266 (A052905 n + 9).toNat

end

end A234262.P8904978260923725023

/-! ## A234262.P7971960188360781980

`A234266(A055999(n)+10)+A008683(4*(n+1))`
-/

namespace A234262.P7971960188360781980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234266 (A055999 n + 10).toNat + A008683 (4 * (n + 1))

end

end A234262.P7971960188360781980

/-!
# A234263: Number of (n+1) X (5+1) 0..2 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234263, there is no canonical definition to state claims against.
-/

/-! ## A234263.P363773160399738773

`A234266(∑[n+4]+11)`
-/

namespace A234263.P363773160399738773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234266 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A234263.P363773160399738773

/-! ## A234263.P7715401999327607527

`A234266(A374005(n+1))+A025469(n)`
-/

namespace A234263.P7715401999327607527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234266 (A374005 (n + 1)).toNat + A025469 n

end

end A234263.P7715401999327607527

/-! ## A234263.P2365420434066156481

`A234266(A167499(n+3))+A025469(n)`
-/

namespace A234263.P2365420434066156481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234266 (A167499 (n + 3)).toNat + A025469 n

end

end A234263.P2365420434066156481

/-! ## A234263.P12509697149504778139

`A234266(A167499(n+3))%A006919(n+3)`
-/

namespace A234263.P12509697149504778139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234266 (A167499 (n + 3)).toNat) (A006919 (n + 3))

end

end A234263.P12509697149504778139

/-! ## A234263.P5874290289100229359

`A234266(A374005(n+1))+A000007(2*n+1)`
-/

namespace A234263.P5874290289100229359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234266 (A374005 (n + 1)).toNat + A000007 (2 * n + 1)

end

end A234263.P5874290289100229359

/-!
# A234264: Number of (n+1) X (6+1) 0..2 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234264, there is no canonical definition to state claims against.
-/

/-! ## A234264.P15991726936559446067

`A234266(A374007(n+1))`
-/

namespace A234264.P15991726936559446067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234266 (A374007 (n + 1)).toNat

end

end A234264.P15991726936559446067

/-! ## A234264.P6655237821813921169

`A234266(A166136(n+4))`
-/

namespace A234264.P6655237821813921169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234266 (A166136 (n + 4)).toNat

end

end A234264.P6655237821813921169

/-! ## A234264.P17063827168949995315

`A234266(∑[A020710(n)]+16)`
-/

namespace A234264.P17063827168949995315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234266 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A234264.P17063827168949995315

/-! ## A234264.P15096901188306252473

`A234266(A167499(n+4)+1)`
-/

namespace A234264.P15096901188306252473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234266 (A167499 (n + 4) + 1).toNat

end

end A234264.P15096901188306252473

/-! ## A234264.P11114399012146529299

`A234266(A000124(n+5)+5)`
-/

namespace A234264.P11114399012146529299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234266 (A000124 (n + 5) + 5).toNat

end

end A234264.P11114399012146529299

/-!
# A234265: Number of (n+1) X (7+1) 0..2 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234265, there is no canonical definition to state claims against.
-/

/-! ## A234265.P8246338214510184739

`A234266(A374008(n+1))`
-/

namespace A234265.P8246338214510184739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234266 (A374008 (n + 1)).toNat

end

end A234265.P8246338214510184739

/-! ## A234265.P2197649272821236706

`A234266(A167614(n+5)+4)`
-/

namespace A234265.P2197649272821236706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234266 (A167614 (n + 5) + 4).toNat

end

end A234265.P2197649272821236706

/-! ## A234265.P2065693807941042905

`A234266(A000124(n+6)+6)`
-/

namespace A234265.P2065693807941042905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234266 (A000124 (n + 6) + 6).toNat

end

end A234265.P2065693807941042905

/-! ## A234265.P11285171010577361548

`A234266(A000217(n+6)+7)`
-/

namespace A234265.P11285171010577361548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234266 (A000217 (n + 6) + 7).toNat

end

end A234265.P11285171010577361548

/-! ## A234265.P5812198509103826893

`A234266(A027379(n+4)+10)`
-/

namespace A234265.P5812198509103826893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234266 (A027379 (n + 4) + 10).toNat

end

end A234265.P5812198509103826893

/-!
# A234266: T(n,k) is the number of (n+1) X (k+1) 0..2 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 2 (constant-stress 1 X 1 tilings).

The programs for A234266, there is no canonical definition to state claims against.
-/

/-! ## A234266.P12633677162697993093

`A004489(A252910(n+1)-8)`
-/

namespace A234266.P12633677162697993093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004489 (A252910 (n + 1) - 8).toNat

end

end A234266.P12633677162697993093

/-! ## A234266.P3119558056593092685

`A334453(A227074(n))+A227060(n+1)`
-/

namespace A234266.P3119558056593092685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334453 (A227074 n).toNat + A227060 (n + 1)

end

end A234266.P3119558056593092685

/-!
# A234267: Expansion of (1-x)/((1-2*x)*(1-5*x+6*x^2-x^3)).

The programs for A234267, the canonical program `A234267.P17525942382337758347` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234267 has offset 0).

The definition of A234267 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-7x+16x^2-13x^3+2x^4))` (program `A234267.P17525942382337758347`, by `A234267.P17525942382337758347.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A234267.P17525942382337758347

`ogf((1-x)/(1-7x+16x^2-13x^3+2x^4))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A234267

/-- `ogf((1-x)/(1-7x+16x^2-13x^3+2x^4))` -/
def P17525942382337758347.Spec : Prop :=
  ∀ n, P17525942382337758347.a n = A234267 n

theorem P17525942382337758347.correct : P17525942382337758347.Spec := by
  intro n
  simp only [A234267]

end A234267

/-! ## A234267.P2321470437389522577

`7*a(n-1)-16*a(n-2)+13*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=6, a(2)=26, a(3)=99`
-/

namespace A234267.P2321470437389522577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 26, 99] fun n a =>
  7 * a (n - 1) - 16 * a (n - 2) + 13 * a (n - 3) - 2 * a (n - 4)

end

end A234267.P2321470437389522577

namespace A234267

/-- `7*a(n-1)-16*a(n-2)+13*a(n-3)-2*a(n-4)` -/
def P2321470437389522577.Spec : Prop :=
  ∀ n, P2321470437389522577.a n = A234267 n

end A234267

/-! ## A234267.P13329984488334175597

`A080937(n+3)-2^(n+2)`
-/

namespace A234267.P13329984488334175597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080937 (n + 3) - (2 ^ (n + 2) : ℤ)

end

end A234267.P13329984488334175597

namespace A234267

/-- `A080937(n+3)-2^(n+2)` -/
def P13329984488334175597.Spec : Prop :=
  ∀ n, P13329984488334175597.a n = A234267 n

end A234267

/-! ## A234267.P16873322649219972457

`∑[∑[A052975(n+1)-2^n]]`
-/

namespace A234267.P16873322649219972457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052975 (n + 1) - (2 ^ n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234267.P16873322649219972457

namespace A234267

/-- `∑[∑[A052975(n+1)-2^n]]` -/
def P16873322649219972457.Spec : Prop :=
  ∀ n, P16873322649219972457.a n = A234267 n

end A234267

/-! ## A234267.P7806758492358498495

`A094789(n+1)+2*a(n-1)` with `a(0)=1`
-/

namespace A234267.P7806758492358498495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A094789 (n + 1) + 2 * a (n - 1)

end

end A234267.P7806758492358498495

namespace A234267

/-- `A094789(n+1)+2*a(n-1)` -/
def P7806758492358498495.Spec : Prop :=
  ∀ n, P7806758492358498495.a n = A234267 n

end A234267

/-! ## A234267.P4193176977982818804

`record[A080937(n)-A131577(n)]`
-/

namespace A234267.P4193176977982818804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080937 n - A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234267.P4193176977982818804

namespace A234267

/-- `record[A080937(n)-A131577(n)]` -/
def P4193176977982818804.Spec : Prop :=
  ∀ n, P4193176977982818804.a n = A234267 n

end A234267

/-! ## A234267.P13986134952172983440

`record[A080937(n)-Δ[A011782(n)]]`
-/

namespace A234267.P13986134952172983440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080937 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234267.P13986134952172983440

namespace A234267

/-- `record[A080937(n)-Δ[A011782(n)]]` -/
def P13986134952172983440.Spec : Prop :=
  ∀ n, P13986134952172983440.a n = A234267 n

end A234267

/-!
# A234268: Number of convex topologies on an n-point totally ordered set.

The programs for A234268, there is no canonical definition to state claims against.
-/

/-! ## A234268.P8164158472331643363

`A047498(A272906(n)+A002893(n))`
-/

namespace A234268.P8164158472331643363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047498 (A272906 n + A002893 n).toNat

end

end A234268.P8164158472331643363

/-!
# A234269: Expansion of (1-2*x^2-sqrt(1-4*x^2-4*x^3))/(2*x*sqrt(1-4*x^2-4*x^3)).

The programs for A234269, there is no canonical definition to state claims against.
-/

/-! ## A234269.P12980428859260878245

`A172471((3*a(n-2)+2*a(n-3)-a(n-4))²)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=4`
-/

namespace A234269.P12980428859260878245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1, 4] fun n a =>
  A172471 ((3 * a (n - 2) + 2 * a (n - 3) - a (n - 4)) ^ 2).toNat

end

end A234269.P12980428859260878245

/-! ## A234269.P9903316556326292778

`A002024(A000110(n))-A294442(n)`
-/

namespace A234269.P9903316556326292778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A000110 n).toNat - A294442 n

end

end A234269.P9903316556326292778

/-! ## A234269.P9829325251037519821

`A137734(A155069(n))-A025157(n)`
-/

namespace A234269.P9829325251037519821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A155069 n).toNat - A025157 n

end

end A234269.P9829325251037519821

/-! ## A234269.P6408008697911607712

`A302505(A326020(n))-A000005(n+1)`
-/

namespace A234269.P6408008697911607712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302505 (A326020 n).toNat - A000005 (n + 1)

end

end A234269.P6408008697911607712

/-!
# A234270: G.f.: (1-x)*(1-x-2*x^2-sqrt(1-2*x-3*x^2))/(2*x*(1-2*x-x^2)).

The programs for A234270, there is no canonical definition to state claims against.
-/

/-! ## A234270.P8178245587709744717

`A132292(A330079(n))`
-/

namespace A234270.P8178245587709744717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (A330079 n).toNat

end

end A234270.P8178245587709744717

/-! ## A234270.P8727350244895069684

`A344420(∑[A077846(n)])`
-/

namespace A234270.P8727350244895069684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A234270.P8727350244895069684

/-! ## A234270.P4272406927361725562

`A344420(∑[∑[A002605(n+1)]])`
-/

namespace A234270.P4272406927361725562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344420 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A234270.P4272406927361725562

/-! ## A234270.P6307114254101824920

`A059995(A116747(n+1)+A002378(n))`
-/

namespace A234270.P6307114254101824920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A116747 (n + 1) + A002378 n).toNat

end

end A234270.P6307114254101824920

/-! ## A234270.P7274741509881698754

`A005378(A002605(n))-A019425(A000984(n))`
-/

namespace A234270.P7274741509881698754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A002605 n).toNat - A019425 (A000984 n).toNat

end

end A234270.P7274741509881698754

/-!
# A234271: G.f.: (1+4*x+10*x^2+4*x^3+x^4)/(1-2*x-2*x^2-2*x^3+x^4).

The programs for A234271, there is no canonical definition to state claims against.
-/

/-! ## A234271.P17541764924081435379

`A008458(A387018(n))`
-/

namespace A234271.P17541764924081435379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A387018 n).toNat

end

end A234271.P17541764924081435379

/-! ## A234271.P7473134300264357245

`A008458(A183119(n*A023422(n)))`
-/

namespace A234271.P7473134300264357245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A183119 ((n : ℤ) * A023422 n).toNat).toNat

end

end A234271.P7473134300264357245

/-!
# A234272: G.f.: (1+4*x+x^2)/(1-4*x+x^2).

The programs for A234272, the canonical program `A234272.P6511088581616772627` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234272 has offset 0).

The definition of A234272 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234272.P6511088581616772627

`4*a(n-1)-a(n-2)` with `a(0)=1, a(1)=8, a(2)=32`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A234272

/-- `4*a(n-1)-a(n-2)` -/
def P6511088581616772627.Spec : Prop :=
  ∀ n, P6511088581616772627.a n = A234272 n

theorem P6511088581616772627.correct : P6511088581616772627.Spec := by
  intro n
  simp only [A234272]

end A234272

/-! ## A234272.P16581559491000619249

`ogf((1+4x+x^2)/(1-4x+x^2))`
-/

namespace A234272.P16581559491000619249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 1] [1, -4, 1] n

end

end A234272.P16581559491000619249

namespace A234272

/-- `ogf((1+4x+x^2)/(1-4x+x^2))` -/
def P16581559491000619249.Spec : Prop :=
  ∀ n, P16581559491000619249.a n = A234272 n

end A234272

/-! ## A234272.P17896385742542215193

`A052530(n)+A001352(n)`
-/

namespace A234272.P17896385742542215193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052530 n + A001352 n

end

end A234272.P17896385742542215193

namespace A234272

/-- `A052530(n)+A001352(n)` -/
def P17896385742542215193.Spec : Prop :=
  ∀ n, P17896385742542215193.a n = A234272 n

end A234272

/-! ## A234272.P7125876399108427701

`A001352(n)+Δ[A001835(n)]`
-/

namespace A234272.P7125876399108427701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001835 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001352 n + (f1 (n + 1) - f1 n)

end

end A234272.P7125876399108427701

namespace A234272

/-- `A001352(n)+Δ[A001835(n)]` -/
def P7125876399108427701.Spec : Prop :=
  ∀ n, P7125876399108427701.a n = A234272 n

end A234272

/-! ## A234272.P9546886196263217338

`A001352(n)+2*A001353(n)`
-/

namespace A234272.P9546886196263217338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001352 n + 2 * A001353 n

end

end A234272.P9546886196263217338

namespace A234272

/-- `A001352(n)+2*A001353(n)` -/
def P9546886196263217338.Spec : Prop :=
  ∀ n, P9546886196263217338.a n = A234272 n

end A234272

/-! ## A234272.P6114656532293267740

`A048788(2*n)+A001352(n)`
-/

namespace A234272.P6114656532293267740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048788 (2 * n) + A001352 n

end

end A234272.P6114656532293267740

namespace A234272

/-- `A048788(2*n)+A001352(n)` -/
def P6114656532293267740.Spec : Prop :=
  ∀ n, P6114656532293267740.a n = A234272 n

end A234272

/-! ## A234272.P2918014809585901688

`A000007(n)+8*A001353(n)`
-/

namespace A234272.P2918014809585901688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 8 * A001353 n

end

end A234272.P2918014809585901688

namespace A234272

/-- `A000007(n)+8*A001353(n)` -/
def P2918014809585901688.Spec : Prop :=
  ∀ n, P2918014809585901688.a n = A234272 n

end A234272

/-! ## A234272.P10790832303749719255

`A162959(2*n+1)+A001352(n)`
-/

namespace A234272.P10790832303749719255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162959 (2 * n + 1) + A001352 n

end

end A234272.P10790832303749719255

namespace A234272

/-- `A162959(2*n+1)+A001352(n)` -/
def P10790832303749719255.Spec : Prop :=
  ∀ n, P10790832303749719255.a n = A234272 n

end A234272

/-!
# A234273: G.f.: (1+x+x^2+x^3)/(1-x^2-2*x^3-x^4+x^6).

The programs for A234273, there is no canonical definition to state claims against.
-/

/-! ## A234273.P16194448903468005206

`A293137(A205490(n)+A160552(n))`
-/

namespace A234273.P16194448903468005206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (A205490 n + A160552 n).toNat

end

end A234273.P16194448903468005206

/-! ## A234273.P11856753613884825754

`A293137(A236455(n+1)+A205490(n))`
-/

namespace A234273.P11856753613884825754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (A236455 (n + 1) + A205490 n).toNat

end

end A234273.P11856753613884825754

/-! ## A234273.P14739565204723038349

`A000196(Δ[A032048(n+4)])`
-/

namespace A234273.P14739565204723038349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032048 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (f1 (n + 1) - f1 n).toNat

end

end A234273.P14739565204723038349

/-! ## A234273.P4531072919634329652

`A003056(A102881(n)+floor(2^(n-1)))`
-/

namespace A234273.P4531072919634329652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A102881 n + ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋).toNat

end

end A234273.P4531072919634329652

/-! ## A234273.P9643731900387819167

`A000196(round(sqrt(A264570(2*n+1))+n))`
-/

namespace A234273.P9643731900387819167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway (Real.sqrt (A264570 (2 * n + 1) : ℝ) + (n : ℝ))).toNat

end

end A234273.P9643731900387819167

/-!
# A234274: Expansion of g.f. (1+x)*(1+x+x^2+x^3+x^4)/(1-6*x-6*x^2-6*x^3+x^4).

The programs for A234274, the canonical program `A234274.P13945129748443558554` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234274 has offset 0).

The definition of A234274 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+2x^2+2x^3+2x^4+x^5)/(1-6x-6x^2-6x^3+x^4))` (program `A234274.P13945129748443558554`, by `A234274.P13945129748443558554.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A234274.P13945129748443558554

`ogf((1+2x+2x^2+2x^3+2x^4+x^5)/(1-6x-6x^2-6x^3+x^4))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A234274

/-- `ogf((1+2x+2x^2+2x^3+2x^4+x^5)/(1-6x-6x^2-6x^3+x^4))` -/
def P13945129748443558554.Spec : Prop :=
  ∀ n, P13945129748443558554.a n = A234274 n

theorem P13945129748443558554.correct : P13945129748443558554.Spec := by
  intro n
  simp only [A234274]

end A234274

/-!
# A234275: Expansion of (1+2*x+9*x^2-4*x^3)/(1-x)^2.

The programs for A234275, the canonical program `A234275.P1626450572029916515` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234275 has offset 0).

The definition of A234275 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+9x^2-4x^3)/(1-2x+x^2))` (program `A234275.P1626450572029916515`, by `A234275.P1626450572029916515.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A234275.P1626450572029916515

`ogf((1+2x+9x^2-4x^3)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A234275

/-- `ogf((1+2x+9x^2-4x^3)/(1-2x+x^2))` -/
def P1626450572029916515.Spec : Prop :=
  ∀ n, P1626450572029916515.a n = A234275 n

theorem P1626450572029916515.correct : P1626450572029916515.Spec := by
  intro n
  simp only [A234275]

end A234275

/-!
# A234277: a(n) = binomial(floor(n/2),4) + (ceiling(n/2)-3)*binomial(floor(n/2),3).

The programs for A234277, the canonical program `A234277.P8947705547595667076` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234277 has offset 0).

The definition of A234277 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(floor(n/2), 4)+(ceil(n/2)-3)*C(floor(n/2), 3)` (program `A234277.P8947705547595667076`, by `A234277.P8947705547595667076.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A234277.P8947705547595667076

`C(floor(n/2), 4)+(ceil(n/2)-3)*C(floor(n/2), 3)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A234277

/-- `C(floor(n/2), 4)+(ceil(n/2)-3)*C(floor(n/2), 3)` -/
def P8947705547595667076.Spec : Prop :=
  ∀ n, P8947705547595667076.a n = A234277 n

theorem P8947705547595667076.correct : P8947705547595667076.Spec := by
  intro n
  simp only [A234277]

end A234277

/-! ## A234277.P11062682948680852741

`A000578(n)%A066839(A242526(n+1)+1)`
-/

namespace A234277.P11062682948680852741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 n) (A066839 (A242526 (n + 1) + 1).toNat)

end

end A234277.P11062682948680852741

namespace A234277

/-- `A000578(n)%A066839(A242526(n+1)+1)` -/
def P11062682948680852741.Spec : Prop :=
  ∀ n, P11062682948680852741.a n = A234277 n

end A234277

/-!
# A234278: The number of circular maps C(n) with n edges regardless of genus.

The programs for A234278, there is no canonical definition to state claims against.
-/

/-! ## A234278.P4325805889167766613

`(A289678(n+1)+A057005(n+1))/2`
-/

namespace A234278.P4325805889167766613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289678 (n + 1) + A057005 (n + 1) : ℚ) / 2

end

end A234278.P4325805889167766613

/-! ## A234278.P18349868003061782402

`A004525(A289678(n+1)+A057005(n+1))`
-/

namespace A234278.P18349868003061782402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A289678 (n + 1) + A057005 (n + 1)).toNat

end

end A234278.P18349868003061782402

/-! ## A234278.P16929112312302730245

`A004526(A289678(n+1)+A057005(n+1))`
-/

namespace A234278.P16929112312302730245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A289678 (n + 1) + A057005 (n + 1)).toNat

end

end A234278.P16929112312302730245

/-!
# A234279: Number of spanning forests of a benzenoid chain of length n.

The programs for A234279, the canonical program `A234279.P4133498962412126190` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234279 has offset 0).

The definition of A234279 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234279.P4133498962412126190

`32*a(n-1)-16*a(n-2)` with `a(0)=2, a(1)=63`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A234279

/-- `32*a(n-1)-16*a(n-2)` -/
def P4133498962412126190.Spec : Prop :=
  ∀ n, P4133498962412126190.a n = A234279 n

theorem P4133498962412126190.correct : P4133498962412126190.Spec := by
  intro n
  simp only [A234279]

end A234279

/-! ## A234279.P11955370337479467525

`floor(a(n-1)²/a(n-2))` with `a(0)=2, a(1)=63`
-/

namespace A234279.P11955370337479467525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 63] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A234279.P11955370337479467525

namespace A234279

/-- `floor(a(n-1)²/a(n-2))` -/
def P11955370337479467525.Spec : Prop :=
  ∀ n, P11955370337479467525.a n = A234279 n

end A234279

/-! ## A234279.P15058672816812450491

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=2, a(1)=63`
-/

namespace A234279.P15058672816812450491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 63] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1

end

end A234279.P15058672816812450491

namespace A234279

/-- `ceil(a(n-1)²/a(n-2))-1` -/
def P15058672816812450491.Spec : Prop :=
  ∀ n, P15058672816812450491.a n = A234279 n

end A234279

/-! ## A234279.P13749031788349071548

`round(xor(1, a(n-1)²)/a(n-2))` with `a(0)=2, a(1)=63`
-/

namespace A234279.P13749031788349071548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 63] fun n a =>
  SequenceMachineLib.roundAway ((Int.xor 1 (a (n - 1) ^ 2) : ℚ) / (a (n - 2) : ℚ))

end

end A234279.P13749031788349071548

namespace A234279

/-- `round(xor(1, a(n-1)²)/a(n-2))` -/
def P13749031788349071548.Spec : Prop :=
  ∀ n, P13749031788349071548.a n = A234279 n

end A234279

/-!
# A234282: Number of 321-avoiding extensions of comb K_{s,2}^{alpha}.

The programs for A234282, there is no canonical definition to state claims against.
-/

/-! ## A234282.P17378446599463814187

`A174687(n+1)-record[A262717(n)]`
-/

namespace A234282.P17378446599463814187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174687 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234282.P17378446599463814187

/-! ## A234282.P13702907258372959890

`A183160(A062934(n+1))+A062889(n+1)`
-/

namespace A234282.P13702907258372959890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183160 (A062934 (n + 1)).toNat + A062889 (n + 1)

end

end A234282.P13702907258372959890

/-!
# A234285: Positive odd numbers n such that sigma(m) - 2m is never equal to n, where sigma(.) is the sum of divisors function A000203. Conjectural.

The programs for A234285, there is no canonical definition to state claims against.
-/

/-! ## A234285.P8733512549404881087

`eq[0, A082731(n)]`
-/

namespace A234285.P8733512549404881087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082731 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234285.P8733512549404881087

/-! ## A234285.P6062773750361148962

`record[n+1-A082731(n+1)]`
-/

namespace A234285.P6062773750361148962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A082731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234285.P6062773750361148962

/-! ## A234285.P16764470029799779067

`A000027(lt[A082731(n), 1])`
-/

namespace A234285.P16764470029799779067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082731 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A234285.P16764470029799779067

/-! ## A234285.P2908194318401158610

`A348173(lt[A082731(n), 1])`
-/

namespace A234285.P2908194318401158610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082731 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348173 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A234285.P2908194318401158610

/-! ## A234285.P11681437727670087562

`lt[A082731(n), A000120(n)]`
-/

namespace A234285.P11681437727670087562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082731 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A234285.P11681437727670087562

/-!
# A234286: Positive odd numbers n such that 2m - sigma(m) is never equal to n, where sigma(.) is the sum of divisors function A000203. Conjectural.

The programs for A234286, there is no canonical definition to state claims against.
-/

/-! ## A234286.P15010979271487326839

`eq[0, A082730(n)]`
-/

namespace A234286.P15010979271487326839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082730 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A234286.P15010979271487326839

/-! ## A234286.P16730530926864329274

`lt[A082730(n^(n%2)), 1]`
-/

namespace A234286.P16730530926864329274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082730 (n ^ (n % 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A234286.P16730530926864329274

/-! ## A234286.P3205304233684350560

`record[n+3-A082730(n+3)]`
-/

namespace A234286.P3205304233684350560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A082730 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234286.P3205304233684350560

/-! ## A234286.P8744044684442613284

`A000027(lt[A082730(n), 1])`
-/

namespace A234286.P8744044684442613284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082730 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A234286.P8744044684442613284

/-! ## A234286.P12768789911918278563

`A118759(lt[A082730(n), 1])`
-/

namespace A234286.P12768789911918278563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082730 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A234286.P12768789911918278563

/-!
# A234287: Number of distinct quadratic forms of discriminant -4n by which some prime can be represented.

The programs for A234287, there is no canonical definition to state claims against.
-/

/-! ## A234287.P8009027737497154148

`A232551(n+1)+A001221(A234002(n+1))`
-/

namespace A234287.P8009027737497154148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232551 (n + 1) + A001221 (A234002 (n + 1)).toNat

end

end A234287.P8009027737497154148

/-! ## A234287.P7395872388805174525

`A223708(2*(n+1))+A001221(A234002(n+1))`
-/

namespace A234287.P7395872388805174525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223708 (2 * (n + 1)) + A001221 (A234002 (n + 1)).toNat

end

end A234287.P7395872388805174525

/-! ## A234287.P5600148229611894274

`A107628(4*(n+1))+A001221(A234002(n+1))`
-/

namespace A234287.P5600148229611894274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107628 (4 * (n + 1)) + A001221 (A234002 (n + 1)).toNat

end

end A234287.P5600148229611894274

/-! ## A234287.P3355993265050255959

`A001221(A234002(n+1))+dr(A223708(n+2+n))`
-/

namespace A234287.P3355993265050255959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A234002 (n + 1)).toNat + (SequenceMachineLib.digitalRoot (A223708 (n + 2 + n)) : ℤ)

end

end A234287.P3355993265050255959

/-! ## A234287.P17455978274014925730

`A001221(A234002(n+1))+A001222(2^A223708(n+2+n))`
-/

namespace A234287.P17455978274014925730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A234002 (n + 1)).toNat + A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A223708 (n + 2 + n) : ℤ))).toNat

end

end A234287.P17455978274014925730

/-! ## A234287.P8635196816382790148

`A001221(A234002(n+1))+A223708(n+2+n)%A000041(n+2)`
-/

namespace A234287.P8635196816382790148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A234002 (n + 1)).toNat + Int.tmod (A223708 (n + 2 + n)) (A000041 (n + 2))

end

end A234287.P8635196816382790148

/-!
# A234289: E.g.f. satisfies: A(x) = 1 + A(x)^2 * Integral 1/A(x) dx.

The programs for A234289, there is no canonical definition to state claims against.
-/

/-! ## A234289.P5821262222464830485

`A321227(ceil(log(2*(n+1)^(n-1))))`
-/

namespace A234289.P5821262222464830485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321227 ⌈Real.log (2 * (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌉.toNat

end

end A234289.P5821262222464830485

/-! ## A234289.P2434458959353675922

`A028310(A321227(comp[2*n+3]))`
-/

namespace A234289.P2434458959353675922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A321227 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A234289.P2434458959353675922

/-!
# A234291: E.g.f. satisfies: A(x) = 1 + A(x)^3 * Integral 1/A(x)^2 dx.

The programs for A234291, there is no canonical definition to state claims against.
-/

/-! ## A234291.P5261250490125401686

`A043096(A215529(n)+A028412(n))`
-/

namespace A234291.P5261250490125401686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (A215529 n + A028412 n).toNat

end

end A234291.P5261250490125401686

/-!
# A234292: E.g.f. satisfies: A(x) = 1 + A(x)^4 * Integral 1/A(x) dx.

The programs for A234292, there is no canonical definition to state claims against.
-/

/-! ## A234292.P656943028793740936

`A026254(round(1/acot(n))^(n+2))`
-/

namespace A234292.P656943028793740936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026254 (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) ^ (n + 2)).toNat

end

end A234292.P656943028793740936

/-!
# A234293: E.g.f. satisfies: A(x) = 1 + A(x)^4 * Integral 1/A(x)^3 dx.

The programs for A234293, there is no canonical definition to state claims against.
-/

/-! ## A234293.P10735566759935149150

`A032364(A042077(n))`
-/

namespace A234293.P10735566759935149150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032364 (A042077 n).toNat

end

end A234293.P10735566759935149150

/-!
# A234294: E.g.f. A(x) satisfies A(x) = 1 + A(x)^4 * Integral 1/A(x)^4 dx.

The programs for A234294, there is no canonical definition to state claims against.
-/

/-! ## A234294.P4745256731538489292

`A310551((n-1)*a(n-1))` with `a(0)=1`
-/

namespace A234294.P4745256731538489292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A310551 (((n : ℤ) - 1) * a (n - 1)).toNat

end

end A234294.P4745256731538489292

/-!
# A234295: E.g.f. A(x) satisfies A(x) = 1 + A(x)^5 * Integral 1/A(x)^5 dx.

The programs for A234295, there is no canonical definition to state claims against.
-/

/-! ## A234295.P1074990124203068985

`A348735(A383555(n)²)`
-/

namespace A234295.P1074990124203068985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348735 (A383555 n ^ 2).toNat

end

end A234295.P1074990124203068985

/-!
# A234296: E.g.f.: 1 + Integral (1 + Integral (1 + Integral (1 + Integral (1 + ...)^16 dx)^8 dx)^4 dx)^2 dx.

The programs for A234296, there is no canonical definition to state claims against.
-/

/-! ## A234296.P497261660759055405

`A008620(Δ[A324040(∑[n])])`
-/

namespace A234296.P497261660759055405
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324040 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (f1 (n + 1) - f1 n).toNat

end

end A234296.P497261660759055405

/-! ## A234296.P4527212403483422727

`∑[A057357(A355216(n+1))]+1`
-/

namespace A234296.P4527212403483422727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057357 (A355216 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A234296.P4527212403483422727

/-!
# A234298: Ramanujan prime R_k such that pi(R_(k+1)) - pi(R_k) are record values: record Ramanujan prime A190874(k).

The programs for A234298, there is no canonical definition to state claims against.
-/

/-! ## A234298.P4901666071620875717

`A104272(A202187(n+1))`
-/

namespace A234298.P4901666071620875717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (A202187 (n + 1)).toNat

end

end A234298.P4901666071620875717

/-! ## A234298.P1960229313064660846

`A104272(record[A202188(n+1)-char[1]])`
-/

namespace A234298.P1960229313064660846
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202188 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A234298.P1960229313064660846

/-! ## A234298.P1354615661562505533

`A104272(record[A202188(n+1)%A064226(n)])`
-/

namespace A234298.P1354615661562505533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202188 (n + 1)) (A064226 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A234298.P1354615661562505533

/-! ## A234298.P4229438127583358096

`A104272(record[A089829(n+3)*A202188(n+1)])`
-/

namespace A234298.P4229438127583358096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089829 (n + 3) * A202188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A234298.P4229438127583358096

/-!
# A234299: a(n) = |A| is the smallest order of a set A of consecutive integers which has Euler-phi(3*5*7*11*...*Pn) members coprime to 3*5*7*..*Pn, where Pn is the n-th odd prime.

The programs for A234299, there is no canonical definition to state claims against.
-/

/-! ## A234299.P1715911176786211374

`A070826(n+2)-A072752(n+2)`
-/

namespace A234299.P1715911176786211374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070826 (n + 2) - A072752 (n + 2)

end

end A234299.P1715911176786211374

/-! ## A234299.P14559524052263187675

`∏[A065091(n+1)]-A072752(n+2)`
-/

namespace A234299.P14559524052263187675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A072752 (n + 2)

end

end A234299.P14559524052263187675

/-! ## A234299.P6696068249656977321

`∏[A065380(n+1)]-A072752(n+2)`
-/

namespace A234299.P6696068249656977321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A072752 (n + 2)

end

end A234299.P6696068249656977321

/-! ## A234299.P11359056237494837484

`∏[A065091(n+1)]-(A058989(n+2)-1)/2`
-/

namespace A234299.P11359056237494837484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (A058989 (n + 2) - 1 : ℚ) / 2

end

end A234299.P11359056237494837484

/-! ## A234299.P17850084712931476616

`∏[A065091(n+1)]-A046667(A048670(n+2))`
-/

namespace A234299.P17850084712931476616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A046667 (A048670 (n + 2)).toNat

end

end A234299.P17850084712931476616

