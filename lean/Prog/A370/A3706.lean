import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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
import Seq.Opaque.C025

/-!
# A370600: Numbers m such that 4m + k is squarefree for k = 1..3.

The programs for A370600, the canonical program `A370600.P2403494429229605259` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370600 has offset 1).

The definition of A370600 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007675, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A370600.P2403494429229605259

`(A007675(n+1)-1)/4`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A370600

/-- `(A007675(n+1)-1)/4` -/
def P2403494429229605259.Spec : Prop :=
  ∀ n, P2403494429229605259.a n = (A370600 (n + 1) : ℚ)

end A370600

/-! ## A370600.P2723418576287007168

`(A228649(n+1)-2)/4`
-/

namespace A370600.P2723418576287007168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228649 (n + 1) - 2 : ℚ) / 4

end

end A370600.P2723418576287007168

namespace A370600

/-- `(A228649(n+1)-2)/4` -/
def P2723418576287007168.Spec : Prop :=
  ∀ n, P2723418576287007168.a n = (A370600 (n + 1) : ℚ)

end A370600

/-! ## A370600.P9337902084349262758

`eq[7, A063736(n)]`
-/

namespace A370600.P9337902084349262758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063736 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A370600.P9337902084349262758

namespace A370600

/-- `eq[7, A063736(n)]` -/
def P9337902084349262758.Spec : Prop :=
  ∀ n, (P9337902084349262758.a n : ℤ) = A370600 (n + 1)

end A370600

/-! ## A370600.P5897578337946535861

`A002265(A007675(n+1))`
-/

namespace A370600.P5897578337946535861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A007675 (n + 1)).toNat

end

end A370600.P5897578337946535861

namespace A370600

/-- `A002265(A007675(n+1))` -/
def P5897578337946535861.Spec : Prop :=
  ∀ n, P5897578337946535861.a n = A370600 (n + 1)

end A370600

/-! ## A370600.P18285923242752189882

`A002265(A228649(n+1))`
-/

namespace A370600.P18285923242752189882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A228649 (n + 1)).toNat

end

end A370600.P18285923242752189882

namespace A370600

/-- `A002265(A228649(n+1))` -/
def P18285923242752189882.Spec : Prop :=
  ∀ n, P18285923242752189882.a n = A370600 (n + 1)

end A370600

/-!
# A370601: a(n) is the number of integer values of the function F_2n(x) = Product_{i=0..2n-1} (x + i) / Sum_{i=0..2n-1} (x + i).

The programs for A370601, there is no canonical definition to state claims against.
-/

/-! ## A370601.P11473020078866695057

`a((2*n-1)!!)²` with `a(0)=0, a(1)=1, a(2)=3, a(3)=23, a(4)=37, a(5)=156`
-/

namespace A370601.P11473020078866695057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 23, 37, 156] fun n a =>
  a (Nat.factorial (Nat.factorial ((2 * n : ℤ) - 1).toNat)) ^ 2

end

end A370601.P11473020078866695057

/-! ## A370601.P7050742400544456694

`eq[A000120(2*n+1), A053632(A002145(n+3))]`
-/

namespace A370601.P7050742400544456694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053632 (A002145 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370601.P7050742400544456694

/-!
# A370602: a(n) = n! * Sum_{d|n} 1/((d-1)! * (n/d)^(d-1)).

The programs for A370602, there is no canonical definition to state claims against.
-/

/-! ## A370602.P14493277024436418082

`(n+1)*A005225(n+1)`
-/

namespace A370602.P14493277024436418082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005225 (n + 1)

end

end A370602.P14493277024436418082

/-! ## A370602.P6579753924992368304

`(A343576(n+1)+1)*(n+1)`
-/

namespace A370602.P6579753924992368304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A343576 (n + 1) + 1) * (n + 1 : ℤ)

end

end A370602.P6579753924992368304

/-! ## A370602.P8976261862055026897

`(n+1)*A364967(A089071(n+1))`
-/

namespace A370602.P8976261862055026897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A364967 (A089071 (n + 1)).toNat

end

end A370602.P8976261862055026897

/-! ## A370602.P16842455889348953719

`(n+1)*A218868(A006463(n+1)+1)`
-/

namespace A370602.P16842455889348953719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A218868 (A006463 (n + 1) + 1).toNat

end

end A370602.P16842455889348953719

/-! ## A370602.P14863252796827557175

`A005225(A052938(2*n))*A052938(2*n)`
-/

namespace A370602.P14863252796827557175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005225 (A052938 (2 * n)).toNat * A052938 (2 * n)

end

end A370602.P14863252796827557175

/-!
# A370603: a(n) = n! * Sum_{d|n} 1/((d-1)! * (n/d)!^(d-1)).

The programs for A370603, there is no canonical definition to state claims against.
-/

/-! ## A370603.P3637785509152498919

`(n+1)*A370608(n+1)`
-/

namespace A370603.P3637785509152498919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A370608 (n + 1)

end

end A370603.P3637785509152498919

/-! ## A370603.P3540016747989073309

`A370602(n+1)-A320751(A262164(n))`
-/

namespace A370603.P3540016747989073309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370602 (n + 1) - A320751 (A262164 n).toNat

end

end A370603.P3540016747989073309

/-!
# A370604: a(n) = n! * Sum_{d|n} 1/((d-1)! * (n/d)^d).

The programs for A370604, there is no canonical definition to state claims against.
-/

/-! ## A370604.P13477195658096995843

`A003726(A326361(n))+A001317(n)`
-/

namespace A370604.P13477195658096995843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003726 (A326361 n).toNat + A001317 n

end

end A370604.P13477195658096995843

/-!
# A370606: Primes p such that valuation(p-1,2) is a record.

The programs for A370606, there is no canonical definition to state claims against.
-/

/-! ## A370606.P9519431657128541330

`A035089(A370607(n+1))`
-/

namespace A370606.P9519431657128541330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035089 (A370607 (n + 1)).toNat

end

end A370606.P9519431657128541330

/-! ## A370606.P10904584755032285358

`record[A035089(A055396(n+1))]`
-/

namespace A370606.P10904584755032285358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035089 (A055396 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370606.P10904584755032285358

/-! ## A370606.P3652726889958318323

`record[A035089(n)%A035089(n+1)]`
-/

namespace A370606.P3652726889958318323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035089 n) (A035089 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370606.P3652726889958318323

/-! ## A370606.P7365181213338557517

`A035089(eq[A035089(n), A057775(n)])`
-/

namespace A370606.P7365181213338557517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035089 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057775 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035089 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A370606.P7365181213338557517

/-! ## A370606.P4554744890494454860

`A057775(eq[A035050(n), A057778(n)])`
-/

namespace A370606.P4554744890494454860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035050 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057775 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A370606.P4554744890494454860

/-! ## A370606.P4561687939400747458

`record[A035089(A025581(n))]`
-/

namespace A370606.P4561687939400747458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035089 (A025581 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370606.P4561687939400747458

/-!
# A370607: 2-valuations of terms of A370606.

The programs for A370607, there is no canonical definition to state claims against.
-/

/-! ## A370607.P657589805658276898

`lt[0, A000035(A035050(n))]`
-/

namespace A370607.P657589805658276898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A035050 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A370607.P657589805658276898

/-! ## A370607.P16996906282413852532

`eq[A035050(n), A057778(n)]`
-/

namespace A370607.P16996906282413852532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035050 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370607.P16996906282413852532

/-! ## A370607.P17058594802810325622

`lt[A105500(n), A010686(A035050(n))]`
-/

namespace A370607.P17058594802810325622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105500 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010686 (A035050 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370607.P17058594802810325622

/-! ## A370607.P12321646657655186893

`lt[A094267(A035050(n)), A101264(n)]`
-/

namespace A370607.P12321646657655186893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (A035050 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370607.P12321646657655186893

/-! ## A370607.P1341263484343245760

`lt[A094267(A035050(n)), A008966(n+1)]`
-/

namespace A370607.P1341263484343245760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (A035050 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A370607.P1341263484343245760

/-! ## A370607.P5331679857470470080

`eq[A035089(n), A057775(n)]`
-/

namespace A370607.P5331679857470470080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035089 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057775 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370607.P5331679857470470080

/-!
# A370608: a(n) = (n-1)! * Sum_{d|n} 1/((d-1)! * (n/d)!^(d-1)).

The programs for A370608, there is no canonical definition to state claims against.
-/

/-! ## A370608.P8684788150079044131

`A370603(n+1)/(n+1)`
-/

namespace A370608.P8684788150079044131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370603 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A370608.P8684788150079044131

/-! ## A370608.P6496925983104450445

`A007913(n+1)*A007913(A370603(n+1))`
-/

namespace A370608.P6496925983104450445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A007913 (A370603 (n + 1)).toNat

end

end A370608.P6496925983104450445

/-! ## A370608.P2942576896220049691

`A390091(A038041(n+1))+A000142(n)`
-/

namespace A370608.P2942576896220049691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390091 (A038041 (n + 1)).toNat + A000142 n

end

end A370608.P2942576896220049691

/-!
# A370609: Triangle read by rows: T(n,k) is the number of labeled graphs with vertex set [n] that are reachable in k (but no fewer) steps from a given graph on [n], where a step consists of choosing a subset S of [n] and replacing the subgraph induced by S with its complement, 0 <= k <= n-1.

The programs for A370609, there is no canonical definition to state claims against.
-/

/-! ## A370609.P10582135386323289678

`A329452(A343805(n))`
-/

namespace A370609.P10582135386323289678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329452 (A343805 n).toNat

end

end A370609.P10582135386323289678

/-! ## A370609.P1692185983932701191

`A111651(A008955(n)^A111651(n+1))`
-/

namespace A370609.P1692185983932701191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111651 (SequenceMachineLib.roundAway ((A008955 n : ℚ) ^ (A111651 (n + 1) : ℤ))).toNat

end

end A370609.P1692185983932701191

/-! ## A370609.P11521953037066281322

`A038566(C(A325712(n+1), A167637(3*n+1)))`
-/

namespace A370609.P11521953037066281322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (Nat.choose (A325712 (n + 1)).toNat (A167637 (3 * n + 1)).toNat)

end

end A370609.P11521953037066281322

/-!
# A370610: Squares such that any two consecutive decimal digits differ by 1 after arranging the digits in decreasing order.

The programs for A370610, there is no canonical definition to state claims against.
-/

/-! ## A370610.P15672982627388664395

`A370362(n+1)²`
-/

namespace A370610.P15672982627388664395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370362 (n + 1) ^ 2

end

end A370610.P15672982627388664395

/-! ## A370610.P6861040676057583390

`A370362(A000027(n+1))^2`
-/

namespace A370610.P6861040676057583390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370362 (A000027 (n + 1)).toNat ^ 2

end

end A370610.P6861040676057583390

/-! ## A370610.P5785521764730591721

`A370362(n+1)^(A060576(n)+1)`
-/

namespace A370610.P5785521764730591721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370362 (n + 1) : ℚ) ^ (A060576 n + 1 : ℤ)

end

end A370610.P5785521764730591721

/-! ## A370610.P1860096246907112949

`A370362(n+1)^A020639(2*(n+2))`
-/

namespace A370610.P1860096246907112949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370362 (n + 1) : ℚ) ^ (A020639 (2 * (n + 2)) : ℤ)

end

end A370610.P1860096246907112949

/-! ## A370610.P17187972164747978382

`A370362(n+1)^(A000035(2*(n+1))+2)`
-/

namespace A370610.P17187972164747978382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370362 (n + 1) : ℚ) ^ (A000035 (2 * (n + 1)) + 2 : ℤ)

end

end A370610.P17187972164747978382

/-! ## A370610.P12547098131071445614

`A370362(n+1)^A187038(A265509(n))`
-/

namespace A370610.P12547098131071445614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370362 (n + 1) : ℚ) ^ (A187038 (A265509 n).toNat : ℤ)

end

end A370610.P12547098131071445614

/-! ## A370610.P16282904080927677247

`A370362(A000027(n+1))*A370362(n+1)`
-/

namespace A370610.P16282904080927677247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370362 (A000027 (n + 1)).toNat * A370362 (n + 1)

end

end A370610.P16282904080927677247

/-! ## A370610.P9653973714568981318

`A370362(n+1)^A000005(A000040(n+1))`
-/

namespace A370610.P9653973714568981318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370362 (n + 1) : ℚ) ^ (A000005 (A000040 (n + 1)).toNat : ℤ)

end

end A370610.P9653973714568981318

/-! ## A370610.P13713174134109236593

`A370362(n+1)^A000005(A027746(n+1))`
-/

namespace A370610.P13713174134109236593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370362 (n + 1) : ℚ) ^ (A000005 (A027746 (n + 1)).toNat : ℤ)

end

end A370610.P13713174134109236593

/-! ## A370610.P15717090531873443063

`A370362(n+1)^A000005(A031368(n+1))`
-/

namespace A370610.P15717090531873443063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370362 (n + 1) : ℚ) ^ (A000005 (A031368 (n + 1)).toNat : ℤ)

end

end A370610.P15717090531873443063

/-! ## A370610.P12140709914031584764

`A370362(n+1)^A000005(A051654(n+1))`
-/

namespace A370610.P12140709914031584764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370362 (n + 1) : ℚ) ^ (A000005 (A051654 (n + 1)).toNat : ℤ)

end

end A370610.P12140709914031584764

/-! ## A370610.P5889209414620752985

`A370362(n+1)^A000005(A094383(n+1))`
-/

namespace A370610.P5889209414620752985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370362 (n + 1) : ℚ) ^ (A000005 (A094383 (n + 1)).toNat : ℤ)

end

end A370610.P5889209414620752985

/-! ## A370610.P4544040787221615622

`A370362(n+1)^A000005(A217926(n+1))`
-/

namespace A370610.P4544040787221615622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370362 (n + 1) : ℚ) ^ (A000005 (A217926 (n + 1)).toNat : ℤ)

end

end A370610.P4544040787221615622

/-! ## A370610.P1661826340628529917

`A370362(A003602(2*n+1))*A370362(n+1)`
-/

namespace A370610.P1661826340628529917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370362 (A003602 (2 * n + 1)).toNat * A370362 (n + 1)

end

end A370610.P1661826340628529917

/-!
# A370611: Largest square such that any two consecutive digits of its base-n expansion differ by 1 after arranging the digits in decreasing order.

The programs for A370611, there is no canonical definition to state claims against.
-/

/-! ## A370611.P18157920935704573200

`A370371(n+2)²`
-/

namespace A370611.P18157920935704573200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370371 (n + 2) ^ 2

end

end A370611.P18157920935704573200

/-! ## A370611.P16174004793411743374

`A370371(n+2)^A000005(A000040(n+1))`
-/

namespace A370611.P16174004793411743374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370371 (n + 2) : ℚ) ^ (A000005 (A000040 (n + 1)).toNat : ℤ)

end

end A370611.P16174004793411743374

/-! ## A370611.P14475655410670429971

`A370371(n+2)^A000005(A006512(n+1))`
-/

namespace A370611.P14475655410670429971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370371 (n + 2) : ℚ) ^ (A000005 (A006512 (n + 1)).toNat : ℤ)

end

end A370611.P14475655410670429971

/-! ## A370611.P3777878749550659766

`A370371(n+2)^A000005(A030430(n+1))`
-/

namespace A370611.P3777878749550659766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370371 (n + 2) : ℚ) ^ (A000005 (A030430 (n + 1)).toNat : ℤ)

end

end A370611.P3777878749550659766

/-! ## A370611.P14435545138796563183

`A370371(n+2)^A000005(A078656(n+1))`
-/

namespace A370611.P14435545138796563183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370371 (n + 2) : ℚ) ^ (A000005 (A078656 (n + 1)).toNat : ℤ)

end

end A370611.P14435545138796563183

/-!
# A370612: The smallest number whose prime factor concatenation, when written in base n, does not contain 0 and contains all digits 1,...,(n-1) at least once.

The programs for A370612, there is no canonical definition to state claims against.
-/

/-! ## A370612.P6902253449050848763

`A063655(A141057(n))+A005195(n)`
-/

namespace A370612.P6902253449050848763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (A141057 n).toNat + A005195 n

end

end A370612.P6902253449050848763

/-!
# A370615: a(0) = 0. For n >= 1, a(n) = 1 + (sum of the next consecutive a(n-1) positive integers).

The programs for A370615, there is no canonical definition to state claims against.
-/

/-! ## A370615.P15087402115207040385

`Δ[C(a(n-1), 2)+n]` with `a(0)=1`
-/

namespace A370615.P15087402115207040385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.choose (f1 (n - 1)) 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A370615.P15087402115207040385

/-! ## A370615.P7468975709360012399

`Δ[2*n-(n-C(a(n-1), 2))]` with `a(0)=1`
-/

namespace A370615.P7468975709360012399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (2 * n : ℤ) - ((n : ℤ) - (Nat.choose (f1 (n - 1)).toNat 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370615.P7468975709360012399

/-! ## A370615.P15553685279112102709

`Δ[A372421(n-char[A264966(n+1)])]`
-/

namespace A370615.P15553685279112102709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264966 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372421 (n - (if ∃ j, f2 j = (n : ℤ) then 1 else 0))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370615.P15553685279112102709

/-!
# A370616: Coefficient of x^n in the expansion of ( (1-x) / (1-x-x^2) )^n.

The programs for A370616, there is no canonical definition to state claims against.
-/

/-! ## A370616.P18250306385770901966

`A332051(n)+A057428(n)`
-/

namespace A370616.P18250306385770901966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332051 n + A057428 n

end

end A370616.P18250306385770901966

/-! ## A370616.P12963150581000534634

`A332051(n)-A057427(n)`
-/

namespace A370616.P12963150581000534634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332051 n - A057427 n

end

end A370616.P12963150581000534634

/-! ## A370616.P5290666292014232997

`A000007(n)+A332051(n)-1`
-/

namespace A370616.P5290666292014232997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A332051 n - 1)

end

end A370616.P5290666292014232997

/-! ## A370616.P779335082218431549

`A332051(n)-A000040(n+1)%2`
-/

namespace A370616.P779335082218431549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332051 n - Int.tmod (A000040 (n + 1)) 2

end

end A370616.P779335082218431549

/-! ## A370616.P2573006180583300700

`A332051(n)-(A298036(n)+1)%2`
-/

namespace A370616.P2573006180583300700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332051 n - Int.tmod (A298036 n + 1) 2

end

end A370616.P2573006180583300700

/-! ## A370616.P4713939225861579982

`A332051(n)-(A320140(n)+1)%2`
-/

namespace A370616.P4713939225861579982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332051 n - Int.tmod (A320140 n + 1) 2

end

end A370616.P4713939225861579982

/-! ## A370616.P17021978342838354829

`A332051(n)-A341643(n+1)%2`
-/

namespace A370616.P17021978342838354829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332051 n - Int.tmod (A341643 (n + 1)) 2

end

end A370616.P17021978342838354829

/-! ## A370616.P8898756226279089628

`A002865(n)+A332051(n)-A232697(n)`
-/

namespace A370616.P8898756226279089628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n + (A332051 n - A232697 n)

end

end A370616.P8898756226279089628

/-!
# A370617: Coefficient of x^n in the expansion of 1 / (1-x-x^2)^(2*n).

The programs for A370617, there is no canonical definition to state claims against.
-/

/-! ## A370617.P9318339134031704598

`A038137(A022266(n))`
-/

namespace A370617.P9318339134031704598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 (A022266 n).toNat

end

end A370617.P9318339134031704598

/-! ## A370617.P13491402601876026481

`A210565(A117625(n))`
-/

namespace A370617.P13491402601876026481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210565 (A117625 n).toNat

end

end A370617.P13491402601876026481

/-! ## A370617.P2786813521923735765

`A155161(A062728(n))`
-/

namespace A370617.P2786813521923735765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A062728 n).toNat

end

end A370617.P2786813521923735765

/-! ## A370617.P14940606745156086108

`A155161(A195160(2*n))`
-/

namespace A370617.P14940606745156086108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A195160 (2 * n)).toNat

end

end A370617.P14940606745156086108

/-! ## A370617.P6863688088831073710

`A155161(A000217(3*n+1)-(n+1))`
-/

namespace A370617.P6863688088831073710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A000217 (3 * n + 1) - (n + 1 : ℤ)).toNat

end

end A370617.P6863688088831073710

/-!
# A370618: Coefficient of x^n in the expansion of ( (1-x) / (1-x-x^2)^2 )^n.

The programs for A370618, there is no canonical definition to state claims against.
-/

/-! ## A370618.P8692317667452710534

`A377434(a(n-1)+1)` with `a(0)=1, a(1)=1, a(2)=7`
-/

namespace A370618.P8692317667452710534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 7] fun n a =>
  A377434 (a (n - 1) + 1).toNat

end

end A370618.P8692317667452710534

/-!
# A370619: Coefficient of x^n in the expansion of ( (1-x) / (1-x-x^2) )^(2*n).

The programs for A370619, there is no canonical definition to state claims against.
-/

/-! ## A370619.P12207170482566490172

`A331332(A062728(n))`
-/

namespace A370619.P12207170482566490172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331332 (A062728 n).toNat

end

end A370619.P12207170482566490172

/-! ## A370619.P14545906726903838313

`A360361(A204087(n)+A000032(n))`
-/

namespace A370619.P14545906726903838313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360361 (A204087 n + A000032 n).toNat

end

end A370619.P14545906726903838313

/-!
# A370620: Coefficient of x^n in the expansion of 1 / (1-x-x^2)^(3*n).

The programs for A370620, there is no canonical definition to state claims against.
-/

/-! ## A370620.P16162987368005942289

`A038137(A139274(n))`
-/

namespace A370620.P16162987368005942289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 (A139274 n).toNat

end

end A370620.P16162987368005942289

/-! ## A370620.P14435309177926262952

`A155161(A139277(n))`
-/

namespace A370620.P14435309177926262952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A139277 n).toNat

end

end A370620.P14435309177926262952

/-! ## A370620.P1751599020791706037

`A210565(A383464(n))`
-/

namespace A370620.P1751599020791706037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210565 (A383464 n).toNat

end

end A370620.P1751599020791706037

/-! ## A370620.P17891333989433900230

`A155161(A033587(n)-n)`
-/

namespace A370620.P17891333989433900230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A033587 n - (n : ℤ)).toNat

end

end A370620.P17891333989433900230

/-! ## A370620.P4285199179552420655

`A155161(A046092(2*n)+n)`
-/

namespace A370620.P4285199179552420655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A046092 (2 * n) + (n : ℤ)).toNat

end

end A370620.P4285199179552420655

/-!
# A370621: Coefficient of x^n in the expansion of ( (1-x) / (1-x-x^2)^3 )^n.

The programs for A370621, there is no canonical definition to state claims against.
-/

/-! ## A370621.P9278734056796299329

`ceil(A268335(A361553(n))/2)`
-/

namespace A370621.P9278734056796299329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A268335 (A361553 n).toNat : ℚ) / 2⌉

end

end A370621.P9278734056796299329

/-!
# A370622: Coefficient of x^n in the expansion of ( (1-x)^2 / (1-x-x^2)^3 )^n.

The programs for A370622, there is no canonical definition to state claims against.
-/

/-! ## A370622.P3439704975792349209

`A140364(a(n-1))+n` with `a(0)=1, a(1)=1`
-/

namespace A370622.P3439704975792349209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A140364 (a (n - 1)).toNat + (n : ℤ)

end

end A370622.P3439704975792349209

/-!
# A370623: Coefficient of x^n in the expansion of ( (1-x) / (1-x-x^2) )^(3*n).

The programs for A370623, there is no canonical definition to state claims against.
-/

/-! ## A370623.P13185679040545530165

`A331332(A139277(n))`
-/

namespace A370623.P13185679040545530165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331332 (A139277 n).toNat

end

end A370623.P13185679040545530165

/-! ## A370623.P13079517597978990491

`A331332(A033586(n)+n)`
-/

namespace A370623.P13079517597978990491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331332 (A033586 n + (n : ℤ)).toNat

end

end A370623.P13079517597978990491

/-! ## A370623.P8001499827768949165

`A331332(A046092(2*n)+n)`
-/

namespace A370623.P8001499827768949165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331332 (A046092 (2 * n) + (n : ℤ)).toNat

end

end A370623.P8001499827768949165

/-!
# A370624: Coefficient of x^n in the expansion of 1 / (1-x-x^3)^n.

The programs for A370624, there is no canonical definition to state claims against.
-/

/-! ## A370624.P14031430253212192527

`A144401(A058331(n))`
-/

namespace A370624.P14031430253212192527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144401 (A058331 n).toNat

end

end A370624.P14031430253212192527

/-! ## A370624.P9674270726825209793

`A144401(A005408(n²))`
-/

namespace A370624.P9674270726825209793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144401 (A005408 (n ^ 2)).toNat

end

end A370624.P9674270726825209793

/-! ## A370624.P3567493529849885485

`A096605(A084782(n+1))`
-/

namespace A370624.P3567493529849885485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096605 (A084782 (n + 1)).toNat

end

end A370624.P3567493529849885485

/-!
# A370626: Coefficient of x^n in the expansion of 1 / (1-x-x^3)^(2*n).

The programs for A370626, there is no canonical definition to state claims against.
-/

/-! ## A370626.P13124207240195438766

`A144401(A276819(n))`
-/

namespace A370626.P13124207240195438766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144401 (A276819 n).toNat

end

end A370626.P13124207240195438766

/-!
# A370627: a(n) = 2^(n - 1)*((-1)^(n + 1) + 7*2^n)/3 = 2^(n - 1)*A062092(n).

The programs for A370627, the canonical program `A370627.P11802343042202960112` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370627 has offset 0).

The definition of A370627 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370627.P11802343042202960112

`2*a(n-1)+8*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A370627

/-- `2*a(n-1)+8*a(n-2)` -/
def P11802343042202960112.Spec : Prop :=
  ∀ n, (P11802343042202960112.a n : ℤ) = A370627 n

theorem P11802343042202960112.correct : P11802343042202960112.Spec := by
  intro n
  simp only [A370627]

end A370627

/-! ## A370627.P16416424301248898331

`2^(n-1)*((-1)^(n+1)+7*2^n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A370627.P16416424301248898331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((-1) ^ (n + 1) + (7 * 2 ^ n : ℤ) : ℚ) / 3

end

end A370627.P16416424301248898331

namespace A370627

/-- `2^(n-1)*((-1)^(n+1)+7*2^n)/3` -/
def P16416424301248898331.Spec : Prop :=
  ∀ n, P16416424301248898331.a n = (A370627 n : ℚ)

end A370627

/-! ## A370627.P10744263653515359988

`A003683(n)+4^n`
-/

namespace A370627.P10744263653515359988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003683 n + (4 ^ n : ℤ)

end

end A370627.P10744263653515359988

namespace A370627

/-- `A003683(n)+4^n` -/
def P10744263653515359988.Spec : Prop :=
  ∀ n, P10744263653515359988.a n = A370627 n

end A370627

/-! ## A370627.P7115654260218414470

`2^(n-1)*A062092(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A370627.P7115654260218414470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A062092 n : ℚ)

end

end A370627.P7115654260218414470

namespace A370627

/-- `2^(n-1)*A062092(n)` -/
def P7115654260218414470.Spec : Prop :=
  ∀ n, P7115654260218414470.a n = (A370627 n : ℚ)

end A370627

/-! ## A370627.P4429869637265740488

`ogf((1+3x)/(1-2x-8x^2))`
-/

namespace A370627.P4429869637265740488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -2, -8] n

end

end A370627.P4429869637265740488

namespace A370627

/-- `ogf((1+3x)/(1-2x-8x^2))` -/
def P4429869637265740488.Spec : Prop :=
  ∀ n, P4429869637265740488.a n = A370627 n

end A370627

/-! ## A370627.P18320638978192662157

`A004171(n)-A083424(n)`
-/

namespace A370627.P18320638978192662157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n - A083424 n

end

end A370627.P18320638978192662157

namespace A370627

/-- `A004171(n)-A083424(n)` -/
def P18320638978192662157.Spec : Prop :=
  ∀ n, P18320638978192662157.a n = A370627 n

end A370627

/-! ## A370627.P5233554415408701650

`A246030(n)-A003674(n)`
-/

namespace A370627.P5233554415408701650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246030 n - A003674 n

end

end A370627.P5233554415408701650

namespace A370627

/-- `A246030(n)-A003674(n)` -/
def P5233554415408701650.Spec : Prop :=
  ∀ n, P5233554415408701650.a n = A370627 n

end A370627

/-! ## A370627.P7122270028443157131

`A246036(n)-A003683(n)`
-/

namespace A370627.P7122270028443157131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246036 n - A003683 n

end

end A370627.P7122270028443157131

namespace A370627

/-- `A246036(n)-A003683(n)` -/
def P7122270028443157131.Spec : Prop :=
  ∀ n, P7122270028443157131.a n = A370627 n

end A370627

/-! ## A370627.P15746519199772334087

`xor(A000302(n), A003683(n))`
-/

namespace A370627.P15746519199772334087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000302 n) (A003683 n)

end

end A370627.P15746519199772334087

namespace A370627

/-- `xor(A000302(n), A003683(n))` -/
def P15746519199772334087.Spec : Prop :=
  ∀ n, P15746519199772334087.a n = A370627 n

end A370627

/-! ## A370627.P2509656767562774378

`xor(A003674(n), A266846(n))`
-/

namespace A370627.P2509656767562774378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003674 n) (A266846 n)

end

end A370627.P2509656767562774378

namespace A370627

/-- `xor(A003674(n), A266846(n))` -/
def P2509656767562774378.Spec : Prop :=
  ∀ n, P2509656767562774378.a n = A370627 n

end A370627

/-! ## A370627.P16871573632350357381

`A122803(n)²+A003683(n)`
-/

namespace A370627.P16871573632350357381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n ^ 2 + A003683 n

end

end A370627.P16871573632350357381

namespace A370627

/-- `A122803(n)²+A003683(n)` -/
def P16871573632350357381.Spec : Prop :=
  ∀ n, P16871573632350357381.a n = A370627 n

end A370627

/-! ## A370627.P2900159966936913512

`A192382(n+1)+A083424(n)`
-/

namespace A370627.P2900159966936913512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192382 (n + 1) + A083424 n

end

end A370627.P2900159966936913512

namespace A370627

/-- `A192382(n+1)+A083424(n)` -/
def P2900159966936913512.Spec : Prop :=
  ∀ n, P2900159966936913512.a n = A370627 n

end A370627

/-! ## A370627.P17737979692091172911

`A122803(2*n)+A003683(n)`
-/

namespace A370627.P17737979692091172911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 (2 * n) + A003683 n

end

end A370627.P17737979692091172911

namespace A370627

/-- `A122803(2*n)+A003683(n)` -/
def P17737979692091172911.Spec : Prop :=
  ∀ n, P17737979692091172911.a n = A370627 n

end A370627

/-! ## A370627.P15889551581615456149

`A374098(2*n)+A003683(n)`
-/

namespace A370627.P15889551581615456149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374098 (2 * n) + A003683 n

end

end A370627.P15889551581615456149

namespace A370627

/-- `A374098(2*n)+A003683(n)` -/
def P15889551581615456149.Spec : Prop :=
  ∀ n, P15889551581615456149.a n = A370627 n

end A370627

/-! ## A370627.P17690282886145259615

`2*A083424(n)-A003665(n)`
-/

namespace A370627.P17690282886145259615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083424 n - A003665 n

end

end A370627.P17690282886145259615

namespace A370627

/-- `2*A083424(n)-A003665(n)` -/
def P17690282886145259615.Spec : Prop :=
  ∀ n, P17690282886145259615.a n = A370627 n

end A370627

/-! ## A370627.P18225057053200298812

`A011782(2*n+1)+A003683(n)`
-/

namespace A370627.P18225057053200298812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n + 1) + A003683 n

end

end A370627.P18225057053200298812

namespace A370627

/-- `A011782(2*n+1)+A003683(n)` -/
def P18225057053200298812.Spec : Prop :=
  ∀ n, P18225057053200298812.a n = A370627 n

end A370627

/-! ## A370627.P11839601975528350101

`A131577(2*n+1)+A003683(n)`
-/

namespace A370627.P11839601975528350101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (2 * n + 1) + A003683 n

end

end A370627.P11839601975528350101

namespace A370627

/-- `A131577(2*n+1)+A003683(n)` -/
def P11839601975528350101.Spec : Prop :=
  ∀ n, P11839601975528350101.a n = A370627 n

end A370627

/-! ## A370627.P10713376459381900436

`A003665(n)+2*A192382(n+1)`
-/

namespace A370627.P10713376459381900436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003665 n + 2 * A192382 (n + 1)

end

end A370627.P10713376459381900436

namespace A370627

/-- `A003665(n)+2*A192382(n+1)` -/
def P10713376459381900436.Spec : Prop :=
  ∀ n, P10713376459381900436.a n = A370627 n

end A370627

/-! ## A370627.P6690436059199576990

`A374927(2*n+1)+A003683(n)`
-/

namespace A370627.P6690436059199576990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374927 (2 * n + 1) + A003683 n

end

end A370627.P6690436059199576990

namespace A370627

/-- `A374927(2*n+1)+A003683(n)` -/
def P6690436059199576990.Spec : Prop :=
  ∀ n, P6690436059199576990.a n = A370627 n

end A370627

/-!
# A370628: a(n) = GCD(A280864(n), A280864(n+1)).

The programs for A370628, there is no canonical definition to state claims against.
-/

/-! ## A370628.P12487313887444422803

`gcd(A280864(n+1), A280864(n+2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A370628.P12487313887444422803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A280864 (n + 1)) (A280864 (n + 2))

end

end A370628.P12487313887444422803

/-! ## A370628.P854094108697775452

`A280738(n+2)%record[A055161(n)]`
-/

namespace A370628.P854094108697775452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280738 (n + 2)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A370628.P854094108697775452

/-! ## A370628.P10232491995987937292

`A280738(n+2)*A340375(A000079(n))`
-/

namespace A370628.P10232491995987937292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280738 (n + 2) * A340375 (A000079 n).toNat

end

end A370628.P10232491995987937292

/-! ## A370628.P3332015773090962153

`A143532(A143532(n+1))*A280738(n+2)`
-/

namespace A370628.P3332015773090962153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143532 (A143532 (n + 1)).toNat * A280738 (n + 2)

end

end A370628.P3332015773090962153

/-!
# A370630: Lexicographically earliest sequence of distinct positive integers such that the Zeckendorf expansions of two consecutive terms have exactly one common term.

The programs for A370630, there is no canonical definition to state claims against.
-/

/-! ## A370630.P2688753502058440114

`A370631(n+1)+A326291(A187219(n+1))`
-/

namespace A370630.P2688753502058440114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370631 (n + 1) + A326291 (A187219 (n + 1)).toNat

end

end A370630.P2688753502058440114

/-! ## A370630.P3715341562474055694

`A370631(n+1)+A225654(A185284(2*(n+2)))`
-/

namespace A370630.P3715341562474055694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370631 (n + 1) + A225654 (A185284 (2 * (n + 2))).toNat

end

end A370630.P3715341562474055694

/-!
# A370631: Lexicographically earliest sequence of distinct positive integers such that the Zeckendorf expansions of two consecutive terms have at least one common term.

The programs for A370631, there is no canonical definition to state claims against.
-/

/-! ## A370631.P16832457695591378079

`A001222(2^A370630(n+1))`
-/

namespace A370631.P16832457695591378079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A370630 (n + 1) : ℤ))).toNat

end

end A370631.P16832457695591378079

/-! ## A370631.P10172557277261324090

`A051903(2^A370630(n+1))`
-/

namespace A370631.P10172557277261324090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A370630 (n + 1) : ℤ))).toNat

end

end A370631.P10172557277261324090

/-! ## A370631.P17580461324327900144

`A370630(n+1)%A273109(2*n+5)`
-/

namespace A370631.P17580461324327900144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A370630 (n + 1)) (A273109 (2 * n + 5))

end

end A370631.P17580461324327900144

/-! ## A370631.P18045318561003549976

`A370630(n+1)+A024155(A174504(n))`
-/

namespace A370631.P18045318561003549976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370630 (n + 1) + A024155 (A174504 n).toNat

end

end A370631.P18045318561003549976

/-! ## A370631.P7479387099276856675

`A370630(n+1)+A366124(A214727(n))`
-/

namespace A370631.P7479387099276856675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370630 (n + 1) + A366124 (A214727 n).toNat

end

end A370631.P7479387099276856675

/-!
# A370633: Numbers k such that A372041(k) = 3.

The programs for A370633, there is no canonical definition to state claims against.
-/

/-! ## A370633.P4864479257165601421

`(A160358(n+1)-1)/2`
-/

namespace A370633.P4864479257165601421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160358 (n + 1) - 1 : ℚ) / 2

end

end A370633.P4864479257165601421

/-! ## A370633.P13804354306091259468

`floor(A160358(n+1)/2)`
-/

namespace A370633.P13804354306091259468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160358 (n + 1) : ℚ) / 2⌋

end

end A370633.P13804354306091259468

/-! ## A370633.P3052216159798061700

`A004524(A160358(n+1))`
-/

namespace A370633.P3052216159798061700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A160358 (n + 1)).toNat

end

end A370633.P3052216159798061700

/-! ## A370633.P13328831193815808943

`A377734(A160358(n+1)+1)`
-/

namespace A370633.P13328831193815808943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377734 (A160358 (n + 1) + 1).toNat

end

end A370633.P13328831193815808943

/-! ## A370633.P9642958875068929737

`A004526(A160358(n+1)-1)`
-/

namespace A370633.P9642958875068929737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A160358 (n + 1) - 1).toNat

end

end A370633.P9642958875068929737

/-! ## A370633.P15207290357543790250

`A026741(A160358(n+1)-1)`
-/

namespace A370633.P15207290357543790250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A160358 (n + 1) - 1).toNat

end

end A370633.P15207290357543790250

/-! ## A370633.P12230640995982842511

`A078898(A160358(n+1)-1)`
-/

namespace A370633.P12230640995982842511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A160358 (n + 1) - 1).toNat

end

end A370633.P12230640995982842511

/-! ## A370633.P14402665043268396513

`A252759(A160358(n+1)-1)`
-/

namespace A370633.P14402665043268396513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252759 (A160358 (n + 1) - 1).toNat

end

end A370633.P14402665043268396513

/-! ## A370633.P8546501127423230962

`A003602(A160358(n+1)-2)`
-/

namespace A370633.P8546501127423230962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A160358 (n + 1) - 2).toNat

end

end A370633.P8546501127423230962

/-!
# A370634: A135507(n) is the product of the first n terms of this sequence.

The programs for A370634, the canonical program `A370634.P2494409983904551626` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370634 has offset 1).

The definition of A370634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370634.P2494409983904551626

`ratio[A135507(A004273(n)-(n-1))]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A370634

/-- `ratio[A135507(A004273(n)-(n-1))]` -/
def P2494409983904551626.Spec : Prop :=
  ∀ n, P2494409983904551626.a n = (A370634 (n + 1) : ℚ)

end A370634

/-!
# A370636: Number of subsets of {1..n} such that it is possible to choose a different binary index of each element.

The programs for A370636, there is no canonical definition to state claims against.
-/

/-! ## A370636.P14755448097231022312

`∑[A370639(n)]+1`
-/

namespace A370636.P14755448097231022312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370639 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A370636.P14755448097231022312

/-! ## A370636.P13680037767026068718

`∑[A370639(A028310(n))]`
-/

namespace A370636.P13680037767026068718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370639 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370636.P13680037767026068718

/-! ## A370636.P10219590828470480788

`∑[A370639(A065033(2*n))]`
-/

namespace A370636.P10219590828470480788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370639 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370636.P10219590828470480788

/-! ## A370636.P3705488679120251865

`∑[gcd(A151878(n), A370639(n))]`
-/

namespace A370636.P3705488679120251865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151878 n) (A370639 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370636.P3705488679120251865

/-! ## A370636.P12909027874215076454

`∑[A370639(C(n, A178334(n)))]`
-/

namespace A370636.P12909027874215076454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370639 (Nat.choose n (A178334 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370636.P12909027874215076454

/-!
# A370637: Number of subsets of {1..n} such that it is not possible to choose a different binary index of each element.

The programs for A370637, there is no canonical definition to state claims against.
-/

/-! ## A370637.P15611338050772029761

`∑[A370589(n)]`
-/

namespace A370637.P15611338050772029761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370589 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370637.P15611338050772029761

/-! ## A370637.P4342650747160956146

`2^n-A370636(n)`
-/

namespace A370637.P4342650747160956146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A370636 n

end

end A370637.P4342650747160956146

/-! ## A370637.P10551532531017344405

`∑[floor(2^(n-1))-A370639(n)]`
-/

namespace A370637.P10551532531017344405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A370639 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370637.P10551532531017344405

/-! ## A370637.P11946474902426242421

`abs(A000079(n)-A370636(n))`
-/

namespace A370637.P11946474902426242421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A370636 n|

end

end A370637.P11946474902426242421

/-! ## A370637.P8008286516196199522

`and(-A370636(n), A000225(n))`
-/

namespace A370637.P8008286516196199522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A370636 n) (A000225 n)

end

end A370637.P8008286516196199522

/-!
# A370638: Number of subsets of {1..n} such that a unique set can be obtained by choosing a different binary index of each element.

The programs for A370638, there is no canonical definition to state claims against.
-/

/-! ## A370638.P1194294646451238255

`A353528(n+1)+A018321(C(4, n)!%2+2*n)`
-/

namespace A370638.P1194294646451238255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353528 (n + 1) + A018321 (Nat.factorial (Nat.choose 4 n) % 2 + 2 * n)

end

end A370638.P1194294646451238255

/-!
# A370639: Number of subsets of {1..n} containing n such that it is possible to choose a different binary index of each element.

The programs for A370639, there is no canonical definition to state claims against.
-/

/-! ## A370639.P12418456492826925870

`record[Δ[A370636(floor(n/3))]]`
-/

namespace A370639.P12418456492826925870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370636 ⌊(n : ℚ) / 3⌋.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370639.P12418456492826925870

/-! ## A370639.P5779098484882395882

`Δ[A370636(log2(A011782(n)))]`
-/

namespace A370639.P5779098484882395882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370636 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370639.P5779098484882395882

/-! ## A370639.P8867477176790567919

`Δ[A370636(A004526(comp[2*(n+1)]))]`
-/

namespace A370639.P8867477176790567919
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370636 (A004526 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370639.P8867477176790567919

/-! ## A370639.P3761837557932576588

`floor(2^(n-1))-A370589(n)`
-/

namespace A370639.P3761837557932576588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A370589 n

end

end A370639.P3761837557932576588

/-! ## A370639.P16062981598513224519

`abs(A131577(n)-A370589(n))`
-/

namespace A370639.P16062981598513224519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131577 n - A370589 n|

end

end A370639.P16062981598513224519

/-!
# A370640: Number of maximal subsets of {1..n} such that it is possible to choose a different binary index of each element.

The programs for A370640, there is no canonical definition to state claims against.
-/

/-! ## A370640.P4178893257167645668

`A067539(A001156(2*n+1-floor(xor(n, 2*n)/(n+1)))²)`
-/

namespace A370640.P4178893257167645668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067539 (A001156 ((2 * n + 1 : ℤ) - ⌊(Nat.xor n (2 * n) : ℚ) / (n + 1 : ℚ)⌋).toNat ^ 2).toNat

end

end A370640.P4178893257167645668

/-!
# A370641: Number of maximal subsets of {1..n} containing n such that it is possible to choose a different binary index of each element.

The programs for A370641, there is no canonical definition to state claims against.
-/

/-! ## A370641.P14456328401288471733

`A352218(A249560(n+1))`
-/

namespace A370641.P14456328401288471733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352218 (A249560 (n + 1)).toNat

end

end A370641.P14456328401288471733

/-! ## A370641.P12784325361967290552

`A084359(A196265(n+1))`
-/

namespace A370641.P12784325361967290552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084359 (A196265 (n + 1)).toNat

end

end A370641.P12784325361967290552

/-! ## A370641.P10243998171072485727

`∑[A283314(n)-A104872(n)]`
-/

namespace A370641.P10243998171072485727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283314 n - A104872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A370641.P10243998171072485727

/-! ## A370641.P4027133193228547977

`A025442(A024429(n))+A000045(n)`
-/

namespace A370641.P4027133193228547977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (A024429 n).toNat + A000045 n

end

end A370641.P4027133193228547977

/-! ## A370641.P580908746845161193

`A027193(n)+A003141(A027187(n))`
-/

namespace A370641.P580908746845161193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027193 n + A003141 (A027187 n).toNat

end

end A370641.P580908746845161193

/-!
# A370643: Number of subsets of {2..n} such that it is not possible to choose a different binary index of each element.

The programs for A370643, there is no canonical definition to state claims against.
-/

/-! ## A370643.P2577054316020593285

`A327186(3*A241461(n+1))`
-/

namespace A370643.P2577054316020593285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327186 (3 * A241461 (n + 1)).toNat

end

end A370643.P2577054316020593285

/-! ## A370643.P1518624525062398390

`Δ[A205567(n+2)]%A161454(n+2)`
-/

namespace A370643.P1518624525062398390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205567 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A161454 (n + 2))

end

end A370643.P1518624525062398390

/-! ## A370643.P16443318236115129723

`Δ[A205567(n+2)%A139250(n+3)]`
-/

namespace A370643.P16443318236115129723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205567 (n + 2)) (A139250 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A370643.P16443318236115129723

/-! ## A370643.P12513863854987154104

`A305929(A006127(n)%A362352(n))`
-/

namespace A370643.P12513863854987154104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305929 (Int.tmod (A006127 n) (A362352 n)).toNat

end

end A370643.P12513863854987154104

/-! ## A370643.P16721347381667396746

`A236627(A361658(n)+A000040(n+1))`
-/

namespace A370643.P16721347381667396746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236627 (A361658 n + A000040 (n + 1)).toNat

end

end A370643.P16721347381667396746

/-!
# A370645: Number of integer factorizations of n into unordered factors > 1 such that only one set can be obtained by choosing a different prime factor of each factor.

The programs for A370645, there is no canonical definition to state claims against.
-/

/-! ## A370645.P16211089049659182580

`floor(2*A340654(n+1)/log2(6))+1`
-/

namespace A370645.P16211089049659182580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * A340654 (n + 1) : ℝ) / Real.logb 2 (6 : ℝ)⌋ + 1

end

end A370645.P16211089049659182580

/-! ## A370645.P1382127549112013120

`A003004(A340654(n+1))`
-/

namespace A370645.P1382127549112013120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003004 (A340654 (n + 1)).toNat

end

end A370645.P1382127549112013120

/-! ## A370645.P12564191708388904734

`A025528(A340654(n+1)+1)`
-/

namespace A370645.P12564191708388904734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (A340654 (n + 1) + 1).toNat

end

end A370645.P12564191708388904734

/-! ## A370645.P12584309424249273495

`A161621(A281116(n+1)+1)`
-/

namespace A370645.P12584309424249273495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161621 (A281116 (n + 1) + 1).toNat

end

end A370645.P12584309424249273495

/-! ## A370645.P4963598004733045774

`A172266(A340654(n+1)+1)`
-/

namespace A370645.P4963598004733045774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172266 (A340654 (n + 1) + 1).toNat

end

end A370645.P4963598004733045774

/-! ## A370645.P7602064411987335045

`A187737(A340654(n+1)+1)`
-/

namespace A370645.P7602064411987335045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187737 (A340654 (n + 1) + 1).toNat

end

end A370645.P7602064411987335045

/-! ## A370645.P14191381032070688303

`A356860(A340654(n+1)+2)`
-/

namespace A370645.P14191381032070688303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356860 (A340654 (n + 1) + 2).toNat

end

end A370645.P14191381032070688303

/-! ## A370645.P17453194044420451325

`A325106(A340654(n+1)+3)`
-/

namespace A370645.P17453194044420451325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325106 (A340654 (n + 1) + 3).toNat

end

end A370645.P17453194044420451325

/-! ## A370645.P6625389072840998589

`A000720(2*A340654(n+1))`
-/

namespace A370645.P6625389072840998589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (2 * A340654 (n + 1)).toNat

end

end A370645.P6625389072840998589

/-! ## A370645.P359995249182664156

`A157792(2*A340654(n+1))`
-/

namespace A370645.P359995249182664156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157792 (2 * A340654 (n + 1)).toNat

end

end A370645.P359995249182664156

/-!
# A370646: Number of non-isomorphic multiset partitions of weight n such that only one set can be obtained by choosing a different element of each block.

The programs for A370646, there is no canonical definition to state claims against.
-/

/-! ## A370646.P12032481918593169721

`A055086(or(A052859(n), A086646(n)))`
-/

namespace A370646.P12032481918593169721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (Int.lor (A052859 n) (A086646 n)).toNat

end

end A370646.P12032481918593169721

/-! ## A370646.P15562835241509017523

`A001462(A200755(n))-A158925(n+1)`
-/

namespace A370646.P15562835241509017523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A200755 n).toNat - A158925 (n + 1)

end

end A370646.P15562835241509017523

/-! ## A370646.P11641407553415426092

`A124480(A028310(n))-A096693(3*n+2)`
-/

namespace A370646.P11641407553415426092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124480 (A028310 n).toNat - A096693 (3 * n + 2)

end

end A370646.P11641407553415426092

/-! ## A370646.P6290389353718938598

`A321994(n+1)+A054923(A192001(2*n+1))`
-/

namespace A370646.P6290389353718938598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321994 (n + 1) + A054923 (A192001 (2 * n + 1)).toNat

end

end A370646.P6290389353718938598

/-!
# A370647: Numbers such that only one set can be obtained by choosing a different prime factor of each prime index.

The programs for A370647, there is no canonical definition to state claims against.
-/

/-! ## A370647.P921363291631761032

`record[A000265(A319899(n+1))]`
-/

namespace A370647.P921363291631761032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A319899 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370647.P921363291631761032

/-! ## A370647.P1254712774989655356

`filter[A319899(n+1), A000035(#)]`
-/

namespace A370647.P1254712774989655356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A370647.P1254712774989655356

/-! ## A370647.P2621179936649040384

`filter[A319899(n+1), A035263(#)]`
-/

namespace A370647.P2621179936649040384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A370647.P2621179936649040384

/-! ## A370647.P3949074747082723933

`filter[A319899(n+1), A093719(#)]`
-/

namespace A370647.P3949074747082723933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A370647.P3949074747082723933

/-! ## A370647.P3067274371289248316

`filter[A319899(n+1), A104106(#)]`
-/

namespace A370647.P3067274371289248316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104106 (f1 j).toNat = 1) n)

end

end A370647.P3067274371289248316

/-!
# A370648: Number of ways to choose a subset s of [n] and then for each element in s choose a different prime factor.

The programs for A370648, there is no canonical definition to state claims against.
-/

/-! ## A370648.P10245580569017476105

`A090811(A006498(n+1))`
-/

namespace A370648.P10245580569017476105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090811 (A006498 (n + 1)).toNat

end

end A370648.P10245580569017476105

/-!
# A370649: Dimension of space of equivariant linear maps from R^{n^3} to R^{n^3} under diagonal action of {-1, 1}^n.

The programs for A370649, the canonical program `A370649.P9233916880484194882` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370649 has offset 0).

The definition of A370649 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370649.P9233916880484194882

`((15*n-30)*n+16)*n`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A370649

/-- `((15*n-30)*n+16)*n` -/
def P9233916880484194882.Spec : Prop :=
  ∀ n, P9233916880484194882.a n = A370649 n

theorem P9233916880484194882.correct : P9233916880484194882.Spec := by
  intro n
  simp only [A370649]

end A370649

/-! ## A370649.P11286290279960018045

`5*A270205(n)+n`
-/

namespace A370649.P11286290279960018045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A270205 n + (n : ℤ)

end

end A370649.P11286290279960018045

namespace A370649

/-- `5*A270205(n)+n` -/
def P11286290279960018045.Spec : Prop :=
  ∀ n, P11286290279960018045.a n = A370649 n

end A370649

/-! ## A370649.P8871330365795142690

`A272134(n)-A153448(n)`
-/

namespace A370649.P8871330365795142690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272134 n - A153448 n

end

end A370649.P8871330365795142690

namespace A370649

/-- `A272134(n)-A153448(n)` -/
def P8871330365795142690.Spec : Prop :=
  ∀ n, P8871330365795142690.a n = A370649 n

end A370649

/-! ## A370649.P4795225198180121241

`A064046(n)-n-A153448(n)`
-/

namespace A370649.P4795225198180121241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064046 n - (n : ℤ) - A153448 n

end

end A370649.P4795225198180121241

namespace A370649

/-- `A064046(n)-n-A153448(n)` -/
def P4795225198180121241.Spec : Prop :=
  ∀ n, P4795225198180121241.a n = A370649 n

end A370649

/-! ## A370649.P6083866800823396634

`6*n*(A192136(n)-n)-2*n-A153448(n)`
-/

namespace A370649.P6083866800823396634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ((n : ℤ) * (A192136 n - (n : ℤ))) - (2 * n : ℤ) - A153448 n

end

end A370649.P6083866800823396634

namespace A370649

/-- `6*n*(A192136(n)-n)-2*n-A153448(n)` -/
def P6083866800823396634.Spec : Prop :=
  ∀ n, P6083866800823396634.a n = A370649 n

end A370649

/-!
# A370650: Numbers whose number of infinitary divisors that are terms of A366242 is equal to the number of infinitary divisors that are terms of A366243.

The programs for A370650, the canonical program `A370650.P533710446170374147` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370650 has offset 1).

The definition of A370650 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1797 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370650.P533710446170374147

`filter[A000379(n+1), A373975(#)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A370650

/-- `filter[A000379(n+1), A373975(#)]` -/
def P533710446170374147.Spec : Prop :=
  ∀ n, P533710446170374147.a n = A370650 (n + 1)

theorem P533710446170374147.correct : P533710446170374147.Spec := by
  intro n
  simp only [A370650, Nat.add_sub_cancel]

end A370650

/-! ## A370650.P14271205571647070675

`∩[A000379(n+1), A145784(n+1)]`
-/

namespace A370650.P14271205571647070675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370650.P14271205571647070675

namespace A370650

/-- `∩[A000379(n+1), A145784(n+1)]` -/
def P14271205571647070675.Spec : Prop :=
  ∀ n, (P14271205571647070675.a n : ℤ) = A370650 (n + 1)

end A370650

/-! ## A370650.P1177431835990978148

`filter[A383112(n+1), A373975(#)]`
-/

namespace A370650.P1177431835990978148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373975 (f1 j).toNat = 1) n)

end

end A370650.P1177431835990978148

namespace A370650

/-- `filter[A383112(n+1), A373975(#)]` -/
def P1177431835990978148.Spec : Prop :=
  ∀ n, P1177431835990978148.a n = A370650 (n + 1)

end A370650

/-! ## A370650.P4538656772131597567

`∩[A145784(n+1), A383112(n+1)]`
-/

namespace A370650.P4538656772131597567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370650.P4538656772131597567

namespace A370650

/-- `∩[A145784(n+1), A383112(n+1)]` -/
def P4538656772131597567.Spec : Prop :=
  ∀ n, (P4538656772131597567.a n : ℤ) = A370650 (n + 1)

end A370650

/-! ## A370650.P12706746523063791710

`filter[A145784(n+1), A174889(#)]`
-/

namespace A370650.P12706746523063791710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174889 (f1 j).toNat = 1) n)

end

end A370650.P12706746523063791710

namespace A370650

/-- `filter[A145784(n+1), A174889(#)]` -/
def P12706746523063791710.Spec : Prop :=
  ∀ n, P12706746523063791710.a n = A370650 (n + 1)

end A370650

/-!
# A370651: Terms of A370650 that are of least prime signature.

The programs for A370651, there is no canonical definition to state claims against.
-/

/-! ## A370651.P12190789166998726383

`∩[A025487(n+1), A370650(n+1)]`
-/

namespace A370651.P12190789166998726383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370651.P12190789166998726383

/-! ## A370651.P8057278578460508338

`∩[A324212(n+1), A370650(n+1)]`
-/

namespace A370651.P8057278578460508338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370651.P8057278578460508338

/-! ## A370651.P13942422388605687291

`∩[A333964(n+1), A370650(n+1)]`
-/

namespace A370651.P13942422388605687291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370650 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370651.P13942422388605687291

/-! ## A370651.P15570068552311183701

`filter[A370650(n+1), A322585(#)]`
-/

namespace A370651.P15570068552311183701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A370651.P15570068552311183701

/-!
# A370652: Number of permutations of [n] having exactly two adjacent 4-cycles.

The programs for A370652, there is no canonical definition to state claims against.
-/

/-! ## A370652.P13931622954472166534

`A210716(A011907(n))`
-/

namespace A370652.P13931622954472166534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210716 (A011907 n).toNat

end

end A370652.P13931622954472166534

/-! ## A370652.P17329202866372501268

`A210716(A175724(n))`
-/

namespace A370652.P17329202866372501268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210716 (A175724 n).toNat

end

end A370652.P17329202866372501268

/-! ## A370652.P4456896616753132

`A210716(A193146(n))`
-/

namespace A370652.P4456896616753132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210716 (A193146 n).toNat

end

end A370652.P4456896616753132

/-! ## A370652.P17042463751821806351

`A210716(A241550(n))`
-/

namespace A370652.P17042463751821806351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210716 (A241550 n).toNat

end

end A370652.P17042463751821806351

/-! ## A370652.P10007098424164990760

`A210716(A387137(n))`
-/

namespace A370652.P10007098424164990760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210716 (A387137 n).toNat

end

end A370652.P10007098424164990760

/-!
# A370653: Number of permutations of [n] having exactly three adjacent 4-cycles.

The programs for A370653, there is no canonical definition to state claims against.
-/

/-! ## A370653.P15324675917064312666

`C(A332281(n), A002828(A367652(n)))`
-/

namespace A370653.P15324675917064312666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A332281 n).toNat (A002828 (A367652 n).toNat).toNat

end

end A370653.P15324675917064312666

/-! ## A370653.P12701901356357847535

`C(A332281(n), A332273(A269409(3*n+2)))`
-/

namespace A370653.P12701901356357847535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A332281 n).toNat (A332273 (A269409 (3 * n + 2)).toNat).toNat

end

end A370653.P12701901356357847535

/-!
# A370655: Triangle read by rows where row n is a block of length 4*n-1 which is a permutation of the numbers of its constituents.

The programs for A370655, there is no canonical definition to state claims against.
-/

/-! ## A370655.P1785115491705953272

`A374494(A373498(n+1))`
-/

namespace A370655.P1785115491705953272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374494 (A373498 (n + 1)).toNat

end

end A370655.P1785115491705953272

/-! ## A370655.P4913113946170331861

`A374531(A374447(n+1))`
-/

namespace A370655.P4913113946170331861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374531 (A374447 (n + 1)).toNat

end

end A370655.P4913113946170331861

/-! ## A370655.P1566771511780168790

`A374531(A373498(A374531(n+1)))`
-/

namespace A370655.P1566771511780168790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374531 (A373498 (A374531 (n + 1)).toNat).toNat

end

end A370655.P1566771511780168790

/-! ## A370655.P7471192007440816731

`A374494(A374447(A374494(n+1)))`
-/

namespace A370655.P7471192007440816731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374494 (A374447 (A374494 (n + 1)).toNat).toNat

end

end A370655.P7471192007440816731

/-! ## A370655.P12211221185533672709

`A373498(A373498(A373498(A378705(A378200(n+1)))))`
-/

namespace A370655.P12211221185533672709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373498 (A373498 (A373498 (A378705 (A378200 (n + 1)).toNat).toNat).toNat).toNat

end

end A370655.P12211221185533672709

/-! ## A370655.P15836213745329214176

`A373498(A373498(A373498(A378762(A378762(n+1)))))`
-/

namespace A370655.P15836213745329214176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373498 (A373498 (A373498 (A378762 (A378762 (n + 1)).toNat).toNat).toNat).toNat

end

end A370655.P15836213745329214176

/-! ## A370655.P13698950356164619548

`A374447(A374447(A374447(A379342(A378684(n+1)))))`
-/

namespace A370655.P13698950356164619548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374447 (A374447 (A374447 (A379342 (A378684 (n + 1)).toNat).toNat).toNat).toNat

end

end A370655.P13698950356164619548

/-! ## A370655.P10761986132436747412

`A373498(A373498(A373498(A381664(A380245(n+1)))))`
-/

namespace A370655.P10761986132436747412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373498 (A373498 (A373498 (A381664 (A380245 (n + 1)).toNat).toNat).toNat).toNat

end

end A370655.P10761986132436747412

/-! ## A370655.P4134252471241088390

`A374447(A374447(A374447(A380817(A380817(n+1)))))`
-/

namespace A370655.P4134252471241088390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374447 (A374447 (A374447 (A380817 (A380817 (n + 1)).toNat).toNat).toNat).toNat

end

end A370655.P4134252471241088390

/-! ## A370655.P10380139564713035924

`A374447(A374447(A374447(A381662(A381662(n+1)))))`
-/

namespace A370655.P10380139564713035924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374447 (A374447 (A374447 (A381662 (A381662 (n + 1)).toNat).toNat).toNat).toNat

end

end A370655.P10380139564713035924

/-! ## A370655.P3399970365659531045

`A376214(A373498(A373498(A373498(A376214(n+1)))))`
-/

namespace A370655.P3399970365659531045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376214 (A373498 (A373498 (A373498 (A376214 (n + 1)).toNat).toNat).toNat).toNat

end

end A370655.P3399970365659531045

/-!
# A370656: Number of cross-equivalence classes of the symmetric group S_n, where two permutations are cross-equivalent if the multiset of forward distances for every element i in the permutation, for 1 <= i <= n-1, up to and including n, is the same.

The programs for A370656, there is no canonical definition to state claims against.
-/

/-! ## A370656.P13134007593273004172

`ceil(A114162(∑[ceil(n²/2)])/2)`
-/

namespace A370656.P13134007593273004172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A114162 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2⌉

end

end A370656.P13134007593273004172

/-! ## A370656.P12154343173168201069

`ceil(A035026(ceil(10^(n-2)/3)+1)/2)`
-/

namespace A370656.P12154343173168201069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035026 (⌈(10 : ℚ) ^ ((n : ℤ) - 2 : ℤ) / 3⌉ + 1).toNat : ℚ) / 2⌉

end

end A370656.P12154343173168201069

/-! ## A370656.P1484747050317109870

`A256228(A036610(n))`
-/

namespace A370656.P1484747050317109870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256228 (A036610 n).toNat

end

end A370656.P1484747050317109870

/-!
# A370658: Numbers k such that (3^k + 3*k)/3 is prime.

The programs for A370658, there is no canonical definition to state claims against.
-/

/-! ## A370658.P15163734402495061682

`A301632(n+1)+1`
-/

namespace A370658.P15163734402495061682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301632 (n + 1) + 1

end

end A370658.P15163734402495061682

/-! ## A370658.P3502597069655727483

`eq[A013598(n), A331737(n+1)]+1`
-/

namespace A370658.P3502597069655727483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013598 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A370658.P3502597069655727483

/-! ## A370658.P16219167251526764163

`∑[A276150(n)*A328771(A002110(n))]+1`
-/

namespace A370658.P16219167251526764163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 n * A328771 (A002110 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A370658.P16219167251526764163

/-!
# A370659: Numbers k such that (4^k + 4*k)/4 is prime.

The programs for A370659, there is no canonical definition to state claims against.
-/

/-! ## A370659.P2427239268551104533

`2*A301633(n+1)+1`
-/

namespace A370659.P2427239268551104533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A301633 (n + 1) + 1

end

end A370659.P2427239268551104533

/-! ## A370659.P16159616088381322688

`A005843(A301633(n+1))+1`
-/

namespace A370659.P16159616088381322688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A301633 (n + 1)).toNat + 1

end

end A370659.P16159616088381322688

/-!
# A370660: Numbers k such that (7^k + 7*k)/7 is prime.

The programs for A370660, there is no canonical definition to state claims against.
-/

/-! ## A370660.P15781659149156437579

`A007953(A236956(n))*A332443(n+1)`
-/

namespace A370660.P15781659149156437579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A236956 n).toNat * A332443 (n + 1)

end

end A370660.P15781659149156437579

/-!
# A370661: Numbers k such that (8^k + 8*k)/8 is prime.

The programs for A370661, there is no canonical definition to state claims against.
-/

/-! ## A370661.P16243110265616340142

`A194583(A299102(n))`
-/

namespace A370661.P16243110265616340142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194583 (A299102 n).toNat

end

end A370661.P16243110265616340142

/-!
# A370662: Numbers m such that 3 does not divide the m-th Catalan number A000108(m); m such that A067397(m) = 0.

The programs for A370662, the canonical program `A370662.P9386268318337991202` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370662 has offset 1).

The definition of A370662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A370662.P9386268318337991202

`(record[3-(a(n-2)+a(xor(n, n-2)/2))]-2)/3` with `a(0)=2, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A370662

/-- `(record[3-(a(n-2)+a(xor(n, n-2)/2))]-2)/3` -/
def P9386268318337991202.Spec : Prop :=
  ∀ n, P9386268318337991202.a n = (A370662 (n + 1) : ℚ)

end A370662

/-! ## A370662.P15314544564342401112

`∪[A005836(n+1), A089118(n+1)]`
-/

namespace A370662.P15314544564342401112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A370662.P15314544564342401112

namespace A370662

/-- `∪[A005836(n+1), A089118(n+1)]` -/
def P15314544564342401112.Spec : Prop :=
  ∀ n, (P15314544564342401112.a n : ℤ) = A370662 (n + 1)

end A370662

/-! ## A370662.P16452254043183049060

`eq[n+1, A174574(2*n+1)]`
-/

namespace A370662.P16452254043183049060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174574 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A370662.P16452254043183049060

namespace A370662

/-- `eq[n+1, A174574(2*n+1)]` -/
def P16452254043183049060.Spec : Prop :=
  ∀ n, (P16452254043183049060.a n : ℤ) = A370662 (n + 1)

end A370662

/-! ## A370662.P16621833024033157007

`eq[A089643(n), A365722(n)]`
-/

namespace A370662.P16621833024033157007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365722 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370662.P16621833024033157007

namespace A370662

/-- `eq[A089643(n), A365722(n)]` -/
def P16621833024033157007.Spec : Prop :=
  ∀ n, (P16621833024033157007.a n : ℤ) = A370662 (n + 1)

end A370662

/-! ## A370662.P8207127822869062728

`eq[0, A067397(n)]`
-/

namespace A370662.P8207127822869062728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067397 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A370662.P8207127822869062728

namespace A370662

/-- `eq[0, A067397(n)]` -/
def P8207127822869062728.Spec : Prop :=
  ∀ n, (P8207127822869062728.a n : ℤ) = A370662 (n + 1)

end A370662

/-! ## A370662.P18351191816715735103

`lt[A060373(n), 2]`
-/

namespace A370662.P18351191816715735103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060373 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A370662.P18351191816715735103

namespace A370662

/-- `lt[A060373(n), 2]` -/
def P18351191816715735103.Spec : Prop :=
  ∀ n, (P18351191816715735103.a n : ℤ) = A370662 (n + 1)

end A370662

/-! ## A370662.P61471262060614262

`lt[A353158(n), 2]`
-/

namespace A370662.P61471262060614262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353158 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A370662.P61471262060614262

namespace A370662

/-- `lt[A353158(n), 2]` -/
def P61471262060614262.Spec : Prop :=
  ∀ n, (P61471262060614262.a n : ℤ) = A370662 (n + 1)

end A370662

/-! ## A370662.P14500594130073630915

`lt[1, A039969(n)+1]`
-/

namespace A370662.P14500594130073630915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039969 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A370662.P14500594130073630915

namespace A370662

/-- `lt[1, A039969(n)+1]` -/
def P14500594130073630915.Spec : Prop :=
  ∀ n, (P14500594130073630915.a n : ℤ) = A370662 (n + 1)

end A370662

/-! ## A370662.P5047713228375352531

`lt[A289814(n+1), 2]`
-/

namespace A370662.P5047713228375352531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A370662.P5047713228375352531

namespace A370662

/-- `lt[A289814(n+1), 2]` -/
def P5047713228375352531.Spec : Prop :=
  ∀ n, (P5047713228375352531.a n : ℤ) = A370662 (n + 1)

end A370662

/-! ## A370662.P3556620007420947240

`lt[A330267(n+2), 2]`
-/

namespace A370662.P3556620007420947240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330267 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A370662.P3556620007420947240

namespace A370662

/-- `lt[A330267(n+2), 2]` -/
def P3556620007420947240.Spec : Prop :=
  ∀ n, (P3556620007420947240.a n : ℤ) = A370662 (n + 1)

end A370662

/-! ## A370662.P7734665553375563438

`lt[A060372(n), n+2]`
-/

namespace A370662.P7734665553375563438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A370662.P7734665553375563438

namespace A370662

/-- `lt[A060372(n), n+2]` -/
def P7734665553375563438.Spec : Prop :=
  ∀ n, (P7734665553375563438.a n : ℤ) = A370662 (n + 1)

end A370662

/-! ## A370662.P11919848121173425929

`record[A128173(2*n)/2]`
-/

namespace A370662.P11919848121173425929
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128173 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A370662.P11919848121173425929

namespace A370662

/-- `record[A128173(2*n)/2]` -/
def P11919848121173425929.Spec : Prop :=
  ∀ n, P11919848121173425929.a n = (A370662 (n + 1) : ℚ)

end A370662

/-! ## A370662.P14448416929701693082

`(A356447(n+1)-2)/3`
-/

namespace A370662.P14448416929701693082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356447 (n + 1) - 2 : ℚ) / 3

end

end A370662.P14448416929701693082

namespace A370662

/-- `(A356447(n+1)-2)/3` -/
def P14448416929701693082.Spec : Prop :=
  ∀ n, P14448416929701693082.a n = (A370662 (n + 1) : ℚ)

end A370662

/-! ## A370662.P7253409161770461223

`eq[A060373(n), A116178(n)]`
-/

namespace A370662.P7253409161770461223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060373 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116178 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370662.P7253409161770461223

namespace A370662

/-- `eq[A060373(n), A116178(n)]` -/
def P7253409161770461223.Spec : Prop :=
  ∀ n, (P7253409161770461223.a n : ℤ) = A370662 (n + 1)

end A370662

/-! ## A370662.P17649031163756279527

`eq[A060372(n), A130481(n)]`
-/

namespace A370662.P17649031163756279527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A370662.P17649031163756279527

namespace A370662

/-- `eq[A060372(n), A130481(n)]` -/
def P17649031163756279527.Spec : Prop :=
  ∀ n, (P17649031163756279527.a n : ℤ) = A370662 (n + 1)

end A370662

/-!
# A370668: Expansion of Sum_{k>0} k! * ( x * (1+x^k) )^k.

The programs for A370668, there is no canonical definition to state claims against.
-/

/-! ## A370668.P2797950966036356121

`A204890(A007948(n+1)*A275549(n))`
-/

namespace A370668.P2797950966036356121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (A007948 (n + 1) * A275549 n).toNat

end

end A370668.P2797950966036356121

/-!
# A370669: Expansion of Sum_{k>=0} k! * ( x/(1+x^2) )^k.

The programs for A370669, the canonical program `A370669.P6949341186884511879` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370669 has offset 0).

The definition of A370669 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370669.P6949341186884511879

`n*a(n-1)+(n-4)*a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=5, a(4)=20`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A370669

/-- `n*a(n-1)+(n-4)*a(n-3)+a(n-4)` -/
def P6949341186884511879.Spec : Prop :=
  ∀ n, P6949341186884511879.a n = A370669 n

theorem P6949341186884511879.correct : P6949341186884511879.Spec := by
  intro n
  simp only [A370669]

end A370669

/-! ## A370669.P250874379009564454

`filter[A261779(n+2), A022933(#)]`
-/

namespace A370669.P250874379009564454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261779 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022933 (f1 j).toNat = 1) n)

end

end A370669.P250874379009564454

namespace A370669

/-- `filter[A261779(n+2), A022933(#)]` -/
def P250874379009564454.Spec : Prop :=
  ∀ n, P250874379009564454.a n = A370669 n

end A370669

/-! ## A370669.P7893572554875346736

`filter[A261779(n+2), A047999(#)]`
-/

namespace A370669.P7893572554875346736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261779 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A047999 (f1 j).toNat = 1) n)

end

end A370669.P7893572554875346736

namespace A370669

/-- `filter[A261779(n+2), A047999(#)]` -/
def P7893572554875346736.Spec : Prop :=
  ∀ n, P7893572554875346736.a n = A370669 n

end A370669

/-!
# A370670: Expansion of Sum_{k>=0} k! * ( x/(1+x^3) )^k.

The programs for A370670, the canonical program `A370670.P7028708747106469246` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A370670 has offset 0).

The definition of A370670 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A370670.P7028708747106469246

`n*a(n-1)+a(n-3)+(n-6)*a(n-4)+2*a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6, a(4)=23, a(5)=116, a(6)=702`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A370670

/-- `n*a(n-1)+a(n-3)+(n-6)*a(n-4)+2*a(n-6)` -/
def P7028708747106469246.Spec : Prop :=
  ∀ n, P7028708747106469246.a n = A370670 n

theorem P7028708747106469246.correct : P7028708747106469246.Spec := by
  intro n
  simp only [A370670]

end A370670

/-! ## A370670.P10407467791228486094

`A370508(n)+A080224(A001803(n))`
-/

namespace A370670.P10407467791228486094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370508 n + A080224 (A001803 n).toNat

end

end A370670.P10407467791228486094

namespace A370670

/-- `A370508(n)+A080224(A001803(n))` -/
def P10407467791228486094.Spec : Prop :=
  ∀ n, P10407467791228486094.a n = A370670 n

end A370670

/-! ## A370670.P17973206862956065790

`A370508(n)+A086078(A316109(n))`
-/

namespace A370670.P17973206862956065790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370508 n + A086078 (A316109 n).toNat

end

end A370670.P17973206862956065790

namespace A370670

/-- `A370508(n)+A086078(A316109(n))` -/
def P17973206862956065790.Spec : Prop :=
  ∀ n, P17973206862956065790.a n = A370670 n

end A370670

/-!
# A370671: a(n) = Sum_{i=2..n-1} i*n^(i-2).

The programs for A370671, there is no canonical definition to state claims against.
-/

/-! ## A370671.P17694506163205910006

`A002378(A023037(n))%A000272(n)`
-/

namespace A370671.P17694506163205910006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002378 (A023037 n).toNat) (A000272 n)

end

end A370671.P17694506163205910006

/-! ## A370671.P7462486188284419644

`A033109((n+1)^n+1)`
-/

namespace A370671.P7462486188284419644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033109 ((n + 1) ^ n + 1)

end

end A370671.P7462486188284419644

/-!
# A370672: Number of ways of arranging 2n+1 nonattacking queens on a 2n+1 X 2n+1 toroidal board using knight moves.

The programs for A370672, there is no canonical definition to state claims against.
-/

/-! ## A370672.P10650036777054440265

`A123565(2*n+1)*(2*n+1)`
-/

namespace A370672.P10650036777054440265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123565 (2 * n + 1) * (2 * n + 1 : ℤ)

end

end A370672.P10650036777054440265

/-! ## A370672.P2119283861842475976

`A338562(n)/(2*n)!`
-/

namespace A370672.P2119283861842475976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338562 n : ℚ) / (Nat.factorial (2 * n) : ℚ)

end

end A370672.P2119283861842475976

/-! ## A370672.P11951679272929512023

`Δ[n²]*A123565(2*n+1)`
-/

namespace A370672.P11951679272929512023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A123565 (2 * n + 1)

end

end A370672.P11951679272929512023

/-! ## A370672.P7456481664270288166

`A123565(Δ[n²]²)`
-/

namespace A370672.P7456481664270288166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123565 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat

end

end A370672.P7456481664270288166

/-! ## A370672.P15374230621422839803

`and(-1, A123565(A016754(n)))`
-/

namespace A370672.P15374230621422839803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A123565 (A016754 n).toNat)

end

end A370672.P15374230621422839803

/-! ## A370672.P1533066788789753855

`A123565(A016754(n))%A001946(n)`
-/

namespace A370672.P1533066788789753855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123565 (A016754 n).toNat) (A001946 n)

end

end A370672.P1533066788789753855

/-! ## A370672.P6016807401234133416

`A123565(2*(n+1))+A123565(A016754(n))`
-/

namespace A370672.P6016807401234133416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123565 (2 * (n + 1)) + A123565 (A016754 n).toNat

end

end A370672.P6016807401234133416

/-!
# A370673: a(n) is the minimum value of k > 0 such that sopf(n) = sopf(n+k) with n > 1 (where sopf(n)=A008472(n)).

The programs for A370673, there is no canonical definition to state claims against.
-/

/-! ## A370673.P6052332449801026693

`A081382(n+2)-(n+2)`
-/

namespace A370673.P6052332449801026693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081382 (n + 2) - (n + 2 : ℤ)

end

end A370673.P6052332449801026693

/-!
# A370674: Expansion of Sum_{k>0} k! * x^k/(1+x^k)^(k+1).

The programs for A370674, there is no canonical definition to state claims against.
-/

/-! ## A370674.P15777644223697677145

`A164732(A217687(n))`
-/

namespace A370674.P15777644223697677145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164732 (A217687 n).toNat

end

end A370674.P15777644223697677145

/-!
# A370677: a(n) is the dimension of the multilinear part of the free flexible Lie-admissible algebra with n generators.

The programs for A370677, there is no canonical definition to state claims against.
-/

/-! ## A370677.P10814742862209954001

`char[5]+2^n*n!`
-/

namespace A370677.P10814742862209954001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 2 ^ n * Nat.factorial n

end

end A370677.P10814742862209954001

/-!
# A370678: a(n) is the number of pairs x <= y of n-digit numbers such that the number of distinct digits in their product is less than in their concatenation.

The programs for A370678, there is no canonical definition to state claims against.
-/

/-! ## A370678.P16951273590299910924

`9*2^(n-2)*5^(n-1)*(10+9*10^(n+1))-A370679(n+1)-A370680(n+1)`
-/

namespace A370678.P16951273590299910924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (10 + 9 * 10 ^ (n + 1) : ℚ) - (A370679 (n + 1) : ℚ) - (A370680 (n + 1) : ℚ)

end

end A370678.P16951273590299910924

/-!
# A370681: a(n) is the alternating sum of the unitary divisors of n, when these divisors are starting with n and decreasing.

The programs for A370681, there is no canonical definition to state claims against.
-/

/-! ## A370681.P12493177343555301930

`A000005(A011782(n))-A100574(n+1)`
-/

namespace A370681.P12493177343555301930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A011782 n).toNat - A100574 (n + 1)

end

end A370681.P12493177343555301930

/-! ## A370681.P11403933183461230719

`A238690(round(2^(n-1)))-A046665(n+1)`
-/

namespace A370681.P11403933183461230719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat - A046665 (n + 1)

end

end A370681.P11403933183461230719

/-! ## A370681.P15745598945751148801

`A070939(2^((n-1)%(n+1)))-A046665(n+1)`
-/

namespace A370681.P15745598945751148801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ))).toNat - A046665 (n + 1)

end

end A370681.P15745598945751148801

/-! ## A370681.P9064182576841925592

`A051903(A020714(n))-A046665(n+1)`
-/

namespace A370681.P9064182576841925592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A020714 n).toNat - A046665 (n + 1)

end

end A370681.P9064182576841925592

/-! ## A370681.P13255547279674440

`A065120(A011782(n))-A046665(n+1)`
-/

namespace A370681.P13255547279674440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (A011782 n).toNat - A046665 (n + 1)

end

end A370681.P13255547279674440

/-!
# A370682: Numbers k such that A370681(k) = A370681(k+1).

The programs for A370682, there is no canonical definition to state claims against.
-/

/-! ## A370682.P3701242884562810567

`A390627(A290571(n+4))`
-/

namespace A370682.P3701242884562810567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390627 (A290571 (n + 4)).toNat

end

end A370682.P3701242884562810567

/-! ## A370682.P17645929664384985115

`A334044(A056038(3*n))+A250120(n)`
-/

namespace A370682.P17645929664384985115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334044 (A056038 (3 * n)).toNat + A250120 n

end

end A370682.P17645929664384985115

/-!
# A370684: Numbers k such that there is no j with 2 <= j < k such that j*k divides binomial(k,j).

The programs for A370684, there is no canonical definition to state claims against.
-/

/-! ## A370684.P8385989956297620770

`eq[1, A051574(n+1)]+1`
-/

namespace A370684.P8385989956297620770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051574 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A370684.P8385989956297620770

/-!
# A370686: a(n) is the number of 132-avoiding permutations p so that p^3 is the identity permutation.

The programs for A370686, there is no canonical definition to state claims against.
-/

/-! ## A370686.P11120627365733610597

`A326763(n)-A014495(n)`
-/

namespace A370686.P11120627365733610597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326763 n - A014495 n

end

end A370686.P11120627365733610597

/-! ## A370686.P4807737263554896991

`A243713(A300355(n))`
-/

namespace A370686.P4807737263554896991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243713 (A300355 n).toNat

end

end A370686.P4807737263554896991

/-! ## A370686.P1942662303099770966

`A220604(A369626(n))`
-/

namespace A370686.P1942662303099770966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220604 (A369626 n).toNat

end

end A370686.P1942662303099770966

/-! ## A370686.P15949529708862627518

`A194975(A373292(n+1))`
-/

namespace A370686.P15949529708862627518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194975 (A373292 (n + 1)).toNat

end

end A370686.P15949529708862627518

/-! ## A370686.P18313303284748020305

`or(1, A376268(A003242(n)))`
-/

namespace A370686.P18313303284748020305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A376268 (A003242 n).toNat)

end

end A370686.P18313303284748020305

/-!
# A370688: Numbers k such that A052410(k) = A010888(k).

The programs for A370688, there is no canonical definition to state claims against.
-/

/-! ## A370688.P1037746419494742371

`A035327(A001684(n))+n`
-/

namespace A370688.P1037746419494742371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A001684 n).toNat + (n : ℤ)

end

end A370688.P1037746419494742371

/-! ## A370688.P6855358161188943974

`A303293(A072876(n+1))+n`
-/

namespace A370688.P6855358161188943974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303293 (A072876 (n + 1)).toNat + (n : ℤ)

end

end A370688.P6855358161188943974

/-! ## A370688.P4327662117715694207

`A326569(A335362(n+1))+n`
-/

namespace A370688.P4327662117715694207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326569 (A335362 (n + 1)).toNat + (n : ℤ)

end

end A370688.P4327662117715694207

/-!
# A370689: Numerator of sigma(phi(n))/phi(sigma(n)), where sigma is the sum of the divisors function and phi is the Euler totient function.

The programs for A370689, there is no canonical definition to state claims against.
-/

/-! ## A370689.P4554566484322544132

`A062402(n+1)/A062401(n+1)*A370690(n+1)`
-/

namespace A370689.P4554566484322544132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062402 (n + 1) : ℚ) / (A062401 (n + 1) : ℚ) * (A370690 (n + 1) : ℚ)

end

end A370689.P4554566484322544132

/-!
# A370691: Square array read by upward antidiagonals: T(n, k) = denominator( 2*k!*(-2)^k*Sum_{m=1..n}( 1/(2*m-1)^(k+1) ) ).

The programs for A370691, there is no canonical definition to state claims against.
-/

/-! ## A370691.P6158045680104381375

`A268496(A330490(n+2))`
-/

namespace A370691.P6158045680104381375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268496 (A330490 (n + 2)).toNat

end

end A370691.P6158045680104381375

/-! ## A370691.P2381935110514037319

`gcd(A059366(n), A103522(A286514(n+1)))`
-/

namespace A370691.P2381935110514037319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059366 n) (A103522 (A286514 (n + 1)).toNat)

end

end A370691.P2381935110514037319

/-! ## A370691.P5962279691655345343

`A339886(A101494(n)^A165070(3*n+5))`
-/

namespace A370691.P5962279691655345343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339886 (SequenceMachineLib.roundAway ((A101494 n : ℚ) ^ (A165070 (3 * n + 5) : ℤ))).toNat

end

end A370691.P5962279691655345343

/-!
# A370693: Cubes sandwiched between squarefree numbers.

The programs for A370693, there is no canonical definition to state claims against.
-/

/-! ## A370693.P17465016096578110052

`∩[A373077(n+1), A000578(n)]`
-/

namespace A370693.P17465016096578110052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370693.P17465016096578110052

/-! ## A370693.P6840659285340443410

`∩[A373077(n+1), A016743(n)]`
-/

namespace A370693.P6840659285340443410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016743 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370693.P6840659285340443410

/-! ## A370693.P6049318762856978836

`∩[A373077(n+1), A016767(n)]`
-/

namespace A370693.P6049318762856978836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370693.P6049318762856978836

/-! ## A370693.P17858417475470524541

`∩[A373077(n+1), A016911(n)]`
-/

namespace A370693.P17858417475470524541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016911 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370693.P17858417475470524541

/-! ## A370693.P11234958646399708117

`∩[A373077(n+1), A109900(n)]`
-/

namespace A370693.P11234958646399708117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A370693.P11234958646399708117

/-!
# A370695: G.f. A(x) satisfies A(x) = (1 + x*A(x)^(3/4) / (1-x))^4.

The programs for A370695, there is no canonical definition to state claims against.
-/

/-! ## A370695.P12615161256307643301

`A003987(A351021(n))+A001652(n)`
-/

namespace A370695.P12615161256307643301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A351021 n).toNat + A001652 n

end

end A370695.P12615161256307643301

/-!
# A370696: Expansion of e.g.f. exp(x^3)/(1-x).

The programs for A370696, there is no canonical definition to state claims against.
-/

/-! ## A370696.P5953826814042887336

`A101109(n)+n*a(log2(1/2)+n)` with `a(0)=1`
-/

namespace A370696.P5953826814042887336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A101109 n + (n : ℤ) * a (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ) + (n : ℝ))).toNat

end

end A370696.P5953826814042887336

/-! ## A370696.P2584042253934817762

`A018194(A060726(n))*A060726(n)`
-/

namespace A370696.P2584042253934817762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018194 (A060726 n).toNat * A060726 n

end

end A370696.P2584042253934817762

/-! ## A370696.P45363718623742771

`A001710(n)*A117607(A101268(n))`
-/

namespace A370696.P45363718623742771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001710 n * A117607 (A101268 n).toNat

end

end A370696.P45363718623742771

/-!
# A370698: Rectangular array, read by antidiagonals: row n consists of the numbers m whose binary representation has exactly n runs.

The programs for A370698, there is no canonical definition to state claims against.
-/

/-! ## A370698.P8117027317926353340

`A341911(A067576(n+1))`
-/

namespace A370698.P8117027317926353340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341911 (A067576 (n + 1)).toNat

end

end A370698.P8117027317926353340

/-!
# A370699: Expansion of e.g.f. exp(-x^3/6)/(1-x).

The programs for A370699, there is no canonical definition to state claims against.
-/

/-! ## A370699.P11353712721600962743

`A370569(n)+A127322(A019300(n))`
-/

namespace A370699.P11353712721600962743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370569 n + A127322 (A019300 n).toNat

end

end A370699.P11353712721600962743

/-! ## A370699.P2279234608316003587

`A000142(n)-A085863(A365150(n))`
-/

namespace A370699.P2279234608316003587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A085863 (A365150 n).toNat

end

end A370699.P2279234608316003587

/-! ## A370699.P6032697811323595255

`xor(A100950(A100938(n)), A369830(n))`
-/

namespace A370699.P6032697811323595255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A100950 (A100938 n).toNat) (A369830 n)

end

end A370699.P6032697811323595255

