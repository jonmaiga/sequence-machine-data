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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
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
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A004100: Number of labeled nonseparable bipartite graphs on n nodes.

The programs for A004100, there is no canonical definition to state claims against.
-/

/-! ## A004100.P218463289976534334

`A215775(2-(∑[1-n]-a(n-1)))` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A004100.P218463289976534334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  A215775 (2 - (∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1))).toNat

end

end A004100.P218463289976534334

/-! ## A004100.P4673417615705775114

`A033627(A007318(6*a(n-1)-a(n-2)+1))` with `a(0)=0, a(1)=1, a(2)=0, a(3)=3`
-/

namespace A004100.P4673417615705775114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 3] fun n a =>
  A033627 (A007318 (6 * a (n - 1) - a (n - 2) + 1).toNat).toNat

end

end A004100.P4673417615705775114

/-!
# A004101: Number of partitions of n of the form a_1*b_1^2 + a_2*b_2^2 + ...; number of semisimple rings with p^n elements for any prime p.

The programs for A004101, there is no canonical definition to state claims against.
-/

/-! ## A004101.P12393956187608666488

`A052305(A025488(n))`
-/

namespace A004101.P12393956187608666488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052305 (A025488 n).toNat

end

end A004101.P12393956187608666488

/-! ## A004101.P5570271438165900303

`A052305(A101296(2^n))`
-/

namespace A004101.P5570271438165900303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052305 (A101296 (2 ^ n)).toNat

end

end A004101.P5570271438165900303

/-! ## A004101.P5384475920146695515

`A038538(2^n)`
-/

namespace A004101.P5384475920146695515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038538 (2 ^ n)

end

end A004101.P5384475920146695515

/-! ## A004101.P1637280314829131362

`and(-1, A038538(A000079(n)))`
-/

namespace A004101.P1637280314829131362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A038538 (A000079 n).toNat)

end

end A004101.P1637280314829131362

/-! ## A004101.P7499855565006791954

`A105519(n)+A038538(A000079(n))`
-/

namespace A004101.P7499855565006791954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105519 n + A038538 (A000079 n).toNat

end

end A004101.P7499855565006791954

/-!
# A004102: Number of signed graphs with n nodes. Also number of 2-multigraphs on n nodes.

The programs for A004102, there is no canonical definition to state claims against.
-/

/-! ## A004102.P2335121107094538642

`A063841(∑[n+2]-1)`
-/

namespace A004102.P2335121107094538642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063841 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A004102.P2335121107094538642

/-! ## A004102.P16111970169406197099

`A327084(eq[2, A325002(n+1)])`
-/

namespace A004102.P16111970169406197099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004102.P16111970169406197099

/-! ## A004102.P13750469058778176845

`A327084(A233583(n+1)+A212342(n))`
-/

namespace A004102.P13750469058778176845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327084 (A233583 (n + 1) + A212342 n).toNat

end

end A004102.P13750469058778176845

/-! ## A004102.P3434783358109761172

`lcm(A033999(n), A063841(A034856(n+1)))`
-/

namespace A004102.P3434783358109761172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A063841 (A034856 (n + 1)).toNat)

end

end A004102.P3434783358109761172

/-! ## A004102.P16598493130297881348

`or(A000007(n), A063841(A034856(n+1)))`
-/

namespace A004102.P16598493130297881348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A063841 (A034856 (n + 1)).toNat)

end

end A004102.P16598493130297881348

/-!
# A004103: Number of nets on n unlabeled nodes.

The programs for A004103, there is no canonical definition to state claims against.
-/

/-! ## A004103.P4911296537474598275

`(n+1)*A002150(a(n-1))` with `a(0)=1`
-/

namespace A004103.P4911296537474598275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * A002150 (a (n - 1)).toNat

end

end A004103.P4911296537474598275

/-!
# A004106: Number of line-self-dual nets (or edge-self-dual nets) with n nodes.

The programs for A004106, there is no canonical definition to state claims against.
-/

/-! ## A004106.P5919360253778150504

`A262290(a(n-1)-1)` with `a(0)=1, a(1)=2`
-/

namespace A004106.P5919360253778150504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A262290 (a (n - 1) - 1).toNat

end

end A004106.P5919360253778150504

/-! ## A004106.P5510183234451534606

`A130514(∑[abs(n²-(n+1))])`
-/

namespace A004106.P5510183234451534606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) - (n + 1 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130514 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A004106.P5510183234451534606

/-!
# A004107: Number of self-dual nets with 2n nodes.

The programs for A004107, there is no canonical definition to state claims against.
-/

/-! ## A004107.P17248626653950070969

`A063841(eq[7, A025581(n)])`
-/

namespace A004107.P17248626653950070969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004107.P17248626653950070969

/-! ## A004107.P17758280480853796537

`A063841(eq[8, A193739(n)])`
-/

namespace A004107.P17758280480853796537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004107.P17758280480853796537

/-! ## A004107.P7686026495109163539

`A063841(eq[8, A195663(n)])`
-/

namespace A004107.P7686026495109163539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004107.P7686026495109163539

/-! ## A004107.P5264405386183825571

`A063841(eq[15, A099375(n)])`
-/

namespace A004107.P5264405386183825571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004107.P5264405386183825571

/-! ## A004107.P438191869962118469

`A063841(eq[8, A004736(n+1)])`
-/

namespace A004107.P438191869962118469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063841 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004107.P438191869962118469

/-!
# A004108: Number of n-node unlabeled connected graphs without endpoints.

The programs for A004108, there is no canonical definition to state claims against.
-/

/-! ## A004108.P17662087536249195250

`A304222(∑[n])`
-/

namespace A004108.P17662087536249195250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304222 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004108.P17662087536249195250

/-! ## A004108.P3723525193548111904

`A304222(A000217(n))^A178489(n)`
-/

namespace A004108.P3723525193548111904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304222 (A000217 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A004108.P3723525193548111904

/-! ## A004108.P5716572275493313197

`gcd(A000038(n), A304222(A000217(n)))`
-/

namespace A004108.P5716572275493313197
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A304222 (A000217 n).toNat)

end

end A004108.P5716572275493313197

/-! ## A004108.P12779352476903028598

`or(A025443(n), A304222(A000217(n)))`
-/

namespace A004108.P12779352476903028598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025443 n) (A304222 (A000217 n).toNat)

end

end A004108.P12779352476903028598

/-! ## A004108.P8419401517691226785

`A304222(A000217(n))+A000007(n+1)`
-/

namespace A004108.P8419401517691226785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304222 (A000217 n).toNat + A000007 (n + 1)

end

end A004108.P8419401517691226785

/-!
# A004109: Number of connected trivalent (or cubic) labeled graphs with 2n nodes.

The programs for A004109, there is no canonical definition to state claims against.
-/

/-! ## A004109.P12068195100086539848

`A002829(n)-A007102(A028310(n))`
-/

namespace A004109.P12068195100086539848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002829 n - A007102 (A028310 n).toNat

end

end A004109.P12068195100086539848

/-! ## A004109.P10251101282532580679

`A002829(n)-A007102(A233583(n+1))`
-/

namespace A004109.P10251101282532580679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002829 n - A007102 (A233583 (n + 1)).toNat

end

end A004109.P10251101282532580679

/-! ## A004109.P3726044645149728630

`A002829(n)-A007102(n)%A005814(n)`
-/

namespace A004109.P3726044645149728630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002829 n - Int.tmod (A007102 n) (A005814 n)

end

end A004109.P3726044645149728630

/-! ## A004109.P2791726252809603002

`A059441(A130883(n)+3)-A007102(A028310(n))`
-/

namespace A004109.P2791726252809603002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059441 (A130883 n + 3).toNat - A007102 (A028310 n).toNat

end

end A004109.P2791726252809603002

/-! ## A004109.P3899582303620449914

`A059441(A130883(n)+3)-A007102(A233583(n+1))`
-/

namespace A004109.P3899582303620449914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059441 (A130883 n + 3).toNat - A007102 (A233583 (n + 1)).toNat

end

end A004109.P3899582303620449914

/-!
# A004110: Number of n-node unlabeled graphs without endpoints (i.e., no nodes of degree 1).

The programs for A004110, there is no canonical definition to state claims against.
-/

/-! ## A004110.P1623146841856270577

`∑[A261919(n)]`
-/

namespace A004110.P1623146841856270577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004110.P1623146841856270577

/-! ## A004110.P11940677034749105588

`A327371(∑[n])`
-/

namespace A004110.P11940677034749105588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327371 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004110.P11940677034749105588

/-! ## A004110.P3461823808436981894

`∑[A327372(∑[n])]`
-/

namespace A004110.P3461823808436981894
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327372 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004110.P3461823808436981894

/-! ## A004110.P8871495626343215289

`A025443(n)!*A327371(A000217(n))`
-/

namespace A004110.P8871495626343215289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025443 n).toNat : ℤ) * A327371 (A000217 n).toNat

end

end A004110.P8871495626343215289

/-! ## A004110.P15466144352359254765

`A361404(∑[n])-A141580(A028310(n))`
-/

namespace A004110.P15466144352359254765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361404 (∑ j ∈ Finset.range (n + 1), f1 j) - A141580 (A028310 n).toNat

end

end A004110.P15466144352359254765

/-!
# A004111: Number of rooted identity trees with n nodes (rooted trees whose automorphism group is the identity group).

The programs for A004111, there is no canonical definition to state claims against.
-/

/-! ## A004111.P17765561858422627532

`Δ[A196118(round(sqrt(n²+1))-1)]`
-/

namespace A004111.P17765561858422627532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196118 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004111.P17765561858422627532

/-! ## A004111.P270782953165541974

`A318758(A238531(n)+A000007(n))`
-/

namespace A004111.P270782953165541974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (A238531 n + A000007 n).toNat

end

end A004111.P270782953165541974

/-! ## A004111.P11528398722972307570

`A318758(A238531(n))%A000244(n)`
-/

namespace A004111.P11528398722972307570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318758 (A238531 n).toNat) (A000244 n)

end

end A004111.P11528398722972307570

/-! ## A004111.P3421021438781459508

`A316074(A152949(n+1)-2)-A000007(n)`
-/

namespace A004111.P3421021438781459508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316074 (A152949 (n + 1) - 2).toNat - A000007 n

end

end A004111.P3421021438781459508

/-! ## A004111.P6990440264330405257

`A318757(∑[n+2]-1)`
-/

namespace A004111.P6990440264330405257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A004111.P6990440264330405257

/-! ## A004111.P13231152821482168030

`A196118(n)-A196118(A227819(∑[n+1]+n+1))`
-/

namespace A004111.P13231152821482168030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196118 n - A196118 (A227819 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1))).toNat

end

end A004111.P13231152821482168030

/-! ## A004111.P12993557974237896036

`A316101(∑[n+2]-1)`
-/

namespace A004111.P12993557974237896036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A004111.P12993557974237896036

/-! ## A004111.P11997884842415212475

`A255517(∑[n+2]-1)`
-/

namespace A004111.P11997884842415212475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255517 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A004111.P11997884842415212475

/-! ## A004111.P2111254359571465704

`A255517(A034856(n+1))%A000084(n+1)`
-/

namespace A004111.P2111254359571465704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255517 (A034856 (n + 1)).toNat) (A000084 (n + 1))

end

end A004111.P2111254359571465704

/-!
# A004112: Numbers k where |cos(k)| (or |cosec(k)| or |cot(k)|) decreases monotonically to 0; also numbers k where |tan(k)| (or |sec(k)|, or |sin(k)|) increases.

The programs for A004112, there is no canonical definition to state claims against.
-/

/-! ## A004112.P6033255760004310057

`record[A142150(A097545(n))]`
-/

namespace A004112.P6033255760004310057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A097545 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004112.P6033255760004310057

/-! ## A004112.P6999252033386105352

`∑[∑[A168315(A145027(n+1))]]`
-/

namespace A004112.P6999252033386105352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168315 (A145027 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004112.P6999252033386105352

/-! ## A004112.P7562130266723021391

`∪[A046959(n+1), A244551(a(n-1))+1]` with `a(0)=0, a(1)=5`
-/

namespace A004112.P7562130266723021391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n f2 =>
  A244551 (f2 (n - 1)).toNat + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004112.P7562130266723021391

/-!
# A004113: Number of rooted trees with n nodes and 2-colored non-leaf nodes.

The programs for A004113, there is no canonical definition to state claims against.
-/

/-! ## A004113.P9936660570528652227

`A036453(n+1)*A394948(n)`
-/

namespace A004113.P9936660570528652227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A394948 n

end

end A004113.P9936660570528652227

/-! ## A004113.P16814215016309521336

`A185284(n²)+A048117(n+2)`
-/

namespace A004113.P16814215016309521336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (n ^ 2) + A048117 (n + 2)

end

end A004113.P16814215016309521336

/-!
# A004114: Number of trees with n nodes and 2-colored internal (non-leaf) nodes.

The programs for A004114, there is no canonical definition to state claims against.
-/

/-! ## A004114.P4275383480585033993

`ceil(A095093(2*n+5)/A095114(3*n+5))`
-/

namespace A004114.P4275383480585033993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A095093 (2 * n + 5) : ℚ) / (A095114 (3 * n + 5) : ℚ)⌉

end

end A004114.P4275383480585033993

/-! ## A004114.P10109394862300647650

`A000006(A265165(n)+A048760(n))`
-/

namespace A004114.P10109394862300647650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A265165 n + A048760 n).toNat

end

end A004114.P10109394862300647650

/-! ## A004114.P16175752919321161301

`A173442(∏[A216631(n+1)])+A076822(n)`
-/

namespace A004114.P16175752919321161301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173442 (∏ j ∈ Finset.range (n + 1), f1 j).toNat + A076822 n

end

end A004114.P16175752919321161301

/-! ## A004114.P16607555223705197231

`A175018(A005206(A004001(A005169(2*n+1))))`
-/

namespace A004114.P16607555223705197231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175018 (A005206 (A004001 (A005169 (2 * n + 1)).toNat).toNat).toNat

end

end A004114.P16607555223705197231

/-!
# A004115: Number of unlabeled rooted nonseparable graphs with n nodes.

The programs for A004115, there is no canonical definition to state claims against.
-/

/-! ## A004115.P5094615438126396589

`∑[A341941(3*(n+1)²)]`
-/

namespace A004115.P5094615438126396589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341941 (3 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004115.P5094615438126396589

/-! ## A004115.P16895041625515977022

`2*A091578(a(n-1))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A004115.P16895041625515977022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  2 * A091578 (a (n - 1)).toNat

end

end A004115.P16895041625515977022

/-!
# A004116: a(n) = floor((n^2 + 6n - 3)/4).

The programs for A004116, the canonical program `A004116.P15234877776239012169` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004116 has offset 1).

The definition of A004116 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004116.P15234877776239012169

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=9`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004116

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P15234877776239012169.Spec : Prop :=
  ∀ n, P15234877776239012169.a n = A004116 (n + 1)

theorem P15234877776239012169.correct : P15234877776239012169.Spec := by
  intro n
  simp only [A004116, Nat.add_sub_cancel]

end A004116

/-! ## A004116.P292152760864561212

`∑[∑[log2(gcd(2, n))]]+n`
-/

namespace A004116.P292152760864561212
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)

end

end A004116.P292152760864561212

namespace A004116

/-- `∑[∑[log2(gcd(2, n))]]+n` -/
def P292152760864561212.Spec : Prop :=
  ∀ n, P292152760864561212.a n = (A004116 (n + 1) : ℝ)

end A004116

/-! ## A004116.P11188935918770869788

`∑[∑[char[2*n]]]+n`
-/

namespace A004116.P11188935918770869788
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A004116.P11188935918770869788

namespace A004116

/-- `∑[∑[char[2*n]]]+n` -/
def P11188935918770869788.Spec : Prop :=
  ∀ n, (P11188935918770869788.a n : ℤ) = A004116 (n + 1)

end A004116

/-! ## A004116.P5587279951699431554

`round(∑[∑[cos(n)²]]+n)`
-/

namespace A004116.P5587279951699431554
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ) ^ 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ))

end

end A004116.P5587279951699431554

namespace A004116

/-- `round(∑[∑[cos(n)²]]+n)` -/
def P5587279951699431554.Spec : Prop :=
  ∀ n, P5587279951699431554.a n = A004116 (n + 1)

end A004116

/-! ## A004116.P8598505941006045426

`∑[a(n-2)+1]` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A004116.P8598505941006045426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004116.P8598505941006045426

namespace A004116

/-- `∑[a(n-2)+1]` -/
def P8598505941006045426.Spec : Prop :=
  ∀ n, (P8598505941006045426.a n : ℤ) = A004116 (n + 1)

end A004116

/-! ## A004116.P10415754462389781879

`∑[∑[char[1]+(n+1)%2]]`
-/

namespace A004116.P10415754462389781879
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + (n + 1) % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004116.P10415754462389781879

namespace A004116

/-- `∑[∑[char[1]+(n+1)%2]]` -/
def P10415754462389781879.Spec : Prop :=
  ∀ n, (P10415754462389781879.a n : ℤ) = A004116 (n + 1)

end A004116

/-! ## A004116.P13710952716543174176

`∑[floor(cot(2/(n+1)))+2]`
-/

namespace A004116.P13710952716543174176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (2 / (n + 1 : ℚ) : ℝ)⌋ + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004116.P13710952716543174176

namespace A004116

/-- `∑[floor(cot(2/(n+1)))+2]` -/
def P13710952716543174176.Spec : Prop :=
  ∀ n, P13710952716543174176.a n = A004116 (n + 1)

end A004116

/-! ## A004116.P9189305710190182577

`∑[ceil(cot(2/(n+1)))+1]`
-/

namespace A004116.P9189305710190182577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (2 / (n + 1 : ℚ) : ℝ)⌉ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004116.P9189305710190182577

namespace A004116

/-- `∑[ceil(cot(2/(n+1)))+1]` -/
def P9189305710190182577.Spec : Prop :=
  ∀ n, P9189305710190182577.a n = A004116 (n + 1)

end A004116

/-! ## A004116.P15760658515913491809

`∑[∑[and(1, char[1]+1+n)]]`
-/

namespace A004116.P15760658515913491809
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 ((if ∃ j, f3 j = n then 1 else 0) + 1 + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004116.P15760658515913491809

namespace A004116

/-- `∑[∑[and(1, char[1]+1+n)]]` -/
def P15760658515913491809.Spec : Prop :=
  ∀ n, (P15760658515913491809.a n : ℤ) = A004116 (n + 1)

end A004116

/-! ## A004116.P2649179008055800286

`record[floor(((n-2)/2)²-n)]`
-/

namespace A004116.P2649179008055800286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n : ℤ) - 2 : ℚ) / 2) ^ 2 - (n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004116.P2649179008055800286

namespace A004116

/-- `record[floor(((n-2)/2)²-n)]` -/
def P2649179008055800286.Spec : Prop :=
  ∀ n, P2649179008055800286.a n = A004116 (n + 1)

end A004116

/-! ## A004116.P13113175904890484339

`round(record[((n-2)/2)²]+n)`
-/

namespace A004116.P13113175904890484339
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 2 : ℚ) / 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℚ))

end

end A004116.P13113175904890484339

namespace A004116

/-- `round(record[((n-2)/2)²]+n)` -/
def P13113175904890484339.Spec : Prop :=
  ∀ n, P13113175904890484339.a n = A004116 (n + 1)

end A004116

/-! ## A004116.P11112602706894158853

`round(record[((n-2)/2)²-n])`
-/

namespace A004116.P11112602706894158853
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 2 : ℚ) / 2) ^ 2 - (n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A004116.P11112602706894158853

namespace A004116

/-- `round(record[((n-2)/2)²-n])` -/
def P11112602706894158853.Spec : Prop :=
  ∀ n, P11112602706894158853.a n = A004116 (n + 1)

end A004116

/-! ## A004116.P16582656847560505492

`∑[ceil((atan(n)+n+1)/2)]`
-/

namespace A004116.P16582656847560505492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.arctan (n : ℝ) + (n + 1 : ℝ)) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004116.P16582656847560505492

namespace A004116

/-- `∑[ceil((atan(n)+n+1)/2)]` -/
def P16582656847560505492.Spec : Prop :=
  ∀ n, P16582656847560505492.a n = A004116 (n + 1)

end A004116

/-! ## A004116.P4616968384728368409

`round(∑[∑[sin(n+1)²]]+n)`
-/

namespace A004116.P4616968384728368409
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n + 1 : ℝ) ^ 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ))

end

end A004116.P4616968384728368409

namespace A004116

/-- `round(∑[∑[sin(n+1)²]]+n)` -/
def P4616968384728368409.Spec : Prop :=
  ∀ n, P4616968384728368409.a n = A004116 (n + 1)

end A004116

/-! ## A004116.P15644177863063730200

`∑[∑[1-a(n-1)]]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A004116.P15644177863063730200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f2 =>
  1 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004116.P15644177863063730200

namespace A004116

/-- `∑[∑[1-a(n-1)]]` -/
def P15644177863063730200.Spec : Prop :=
  ∀ n, P15644177863063730200.a n = A004116 (n + 1)

end A004116

/-! ## A004116.P3301370497341898438

`abs(a(n-2)+3+n)` with `a(0)=1, a(1)=3`
-/

namespace A004116.P3301370497341898438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + 3 + n

end

end A004116.P3301370497341898438

namespace A004116

/-- `abs(a(n-2)+3+n)` -/
def P3301370497341898438.Spec : Prop :=
  ∀ n, (P3301370497341898438.a n : ℤ) = A004116 (n + 1)

end A004116

/-! ## A004116.P10350157154663042944

`floor(a(n-2)+3+n)` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A004116.P10350157154663042944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + 3 + n

end

end A004116.P10350157154663042944

namespace A004116

/-- `floor(a(n-2)+3+n)` -/
def P10350157154663042944.Spec : Prop :=
  ∀ n, (P10350157154663042944.a n : ℤ) = A004116 (n + 1)

end A004116

/-! ## A004116.P15929734690143143541

`ceil(a(n-2)+3+n)` with `a(0)=1, a(1)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A004116.P15929734690143143541
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + 3 + n

end

end A004116.P15929734690143143541

namespace A004116

/-- `ceil(a(n-2)+3+n)` -/
def P15929734690143143541.Spec : Prop :=
  ∀ n, (P15929734690143143541.a n : ℤ) = A004116 (n + 1)

end A004116

/-! ## A004116.P17447790280125839952

`round(a(n-2)+3+n)` with `a(0)=1, a(1)=3`

`round` is left out, it is the identity on integers.
-/

namespace A004116.P17447790280125839952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + 3 + n

end

end A004116.P17447790280125839952

namespace A004116

/-- `round(a(n-2)+3+n)` -/
def P17447790280125839952.Spec : Prop :=
  ∀ n, (P17447790280125839952.a n : ℤ) = A004116 (n + 1)

end A004116

/-! ## A004116.P5302678497089950823

`∑[∑[and(1, n+1)^(n-1)]]`
-/

namespace A004116.P5302678497089950823
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (n + 1) : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004116.P5302678497089950823

namespace A004116

/-- `∑[∑[and(1, n+1)^(n-1)]]` -/
def P5302678497089950823.Spec : Prop :=
  ∀ n, P5302678497089950823.a n = (A004116 (n + 1) : ℚ)

end A004116

/-!
# A004117: Numerators of expansion of (1-x)^(-1/3).

The programs for A004117, the canonical program `A004117.P2862625931059711381` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004117 has offset 0).

The definition of A004117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004117.P2862625931059711381

`A004987(n)/A125824(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A004117

/-- `A004987(n)/A125824(n)` -/
def P2862625931059711381.Spec : Prop :=
  ∀ n, P2862625931059711381.a n = (A004117 n : ℚ)

end A004117

/-! ## A004117.P17247295895362172129

`A255811(∑[n+2]+4)`
-/

namespace A004117.P17247295895362172129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255811 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A004117.P17247295895362172129

namespace A004117

/-- `A255811(∑[n+2]+4)` -/
def P17247295895362172129.Spec : Prop :=
  ∀ n, P17247295895362172129.a n = A004117 n

end A004117

/-! ## A004117.P6640274232926049830

`gcd(A004987(n), A007559(n))`
-/

namespace A004117.P6640274232926049830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004987 n) (A007559 n)

end

end A004117.P6640274232926049830

namespace A004117

/-- `gcd(A004987(n), A007559(n))` -/
def P6640274232926049830.Spec : Prop :=
  ∀ n, (P6640274232926049830.a n : ℤ) = A004117 n

end A004117

/-! ## A004117.P13744251054463242631

`A007559(n)/gcd(A000142(n), A008544(n))`
-/

namespace A004117.P13744251054463242631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007559 n : ℚ) / (Int.gcd (A000142 n) (A008544 n) : ℚ)

end

end A004117.P13744251054463242631

namespace A004117

/-- `A007559(n)/gcd(A000142(n), A008544(n))` -/
def P13744251054463242631.Spec : Prop :=
  ∀ n, P13744251054463242631.a n = (A004117 n : ℚ)

end A004117

/-! ## A004117.P6366342084420594394

`A047657(n)/gcd(A000165(n), A047657(n))`
-/

namespace A004117.P6366342084420594394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047657 n : ℚ) / (Int.gcd (A000165 n) (A047657 n) : ℚ)

end

end A004117.P6366342084420594394

namespace A004117

/-- `A047657(n)/gcd(A000165(n), A047657(n))` -/
def P6366342084420594394.Spec : Prop :=
  ∀ n, P6366342084420594394.a n = (A004117 n : ℚ)

end A004117

/-!
# A004118: Maximal excess of a Hadamard matrix of order 4n.

The programs for A004118, there is no canonical definition to state claims against.
-/

/-! ## A004118.P10743915472206776160

`A158865(n)+A006792(A000203(n+1))`
-/

namespace A004118.P10743915472206776160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158865 n + A006792 ((A000203 (n + 1)).toNat + 10)

end

end A004118.P10743915472206776160

/-! ## A004118.P15975603229773243999

`∑{e}[A032031(n), A001749(#)]`
-/

namespace A004118.P15975603229773243999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001749 (Nat.factorization (f1 n).natAbs p)

end

end A004118.P15975603229773243999

/-! ## A004118.P12518651456887869502

`record[and(A218602(n), A234998(n+1))]`
-/

namespace A004118.P12518651456887869502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A218602 n) (A234998 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004118.P12518651456887869502

/-!
# A004119: a(0) = 1; thereafter a(n) = 3*2^(n-1) + 1.

The programs for A004119, the canonical program `A004119.P13776656003286862494` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004119 has offset 0).

The definition of A004119 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004119.P13776656003286862494

`2*a(n-1)-1` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004119

/-- `2*a(n-1)-1` -/
def P13776656003286862494.Spec : Prop :=
  ∀ n, P13776656003286862494.a n = A004119 n

theorem P13776656003286862494.correct : P13776656003286862494.Spec := by
  intro n
  simp only [A004119]

end A004119

/-! ## A004119.P6663566883014653245

`xor(3, lcm(2, a(n-1)))` with `a(0)=1, a(1)=4`
-/

namespace A004119.P6663566883014653245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  Nat.xor 3 (Nat.lcm 2 (a (n - 1)))

end

end A004119.P6663566883014653245

namespace A004119

/-- `xor(3, lcm(2, a(n-1)))` -/
def P6663566883014653245.Spec : Prop :=
  ∀ n, (P6663566883014653245.a n : ℤ) = A004119 n

end A004119

/-! ## A004119.P3898056952331084278

`3*floor(2^(n-1))+1`
-/

namespace A004119.P3898056952331084278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1

end

end A004119.P3898056952331084278

namespace A004119

/-- `3*floor(2^(n-1))+1` -/
def P3898056952331084278.Spec : Prop :=
  ∀ n, P3898056952331084278.a n = A004119 n

end A004119

/-! ## A004119.P11266279779628682464

`∑[a(n-1)+a(n-1)]` with `a(0)=1, a(1)=3, a(2)=3`
-/

namespace A004119.P11266279779628682464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004119.P11266279779628682464

namespace A004119

/-- `∑[a(n-1)+a(n-1)]` -/
def P11266279779628682464.Spec : Prop :=
  ∀ n, (P11266279779628682464.a n : ℤ) = A004119 n

end A004119

/-! ## A004119.P9915623451451563678

`abs(a(n-1)+a(n-1)-1)` with `a(0)=1, a(1)=4`
-/

namespace A004119.P9915623451451563678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  |a (n - 1) + (a (n - 1) - 1)|

end

end A004119.P9915623451451563678

namespace A004119

/-- `abs(a(n-1)+a(n-1)-1)` -/
def P9915623451451563678.Spec : Prop :=
  ∀ n, P9915623451451563678.a n = A004119 n

end A004119

/-! ## A004119.P7524583901654958261

`abs(1-a(n-1)-a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A004119.P7524583901654958261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  |1 - a (n - 1) - a (n - 1)|

end

end A004119.P7524583901654958261

namespace A004119

/-- `abs(1-a(n-1)-a(n-1))` -/
def P7524583901654958261.Spec : Prop :=
  ∀ n, P7524583901654958261.a n = A004119 n

end A004119

/-! ## A004119.P3950247690737165659

`floor(a(n-1)+a(n-1)-1)` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A004119.P3950247690737165659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + (a (n - 1) - 1)

end

end A004119.P3950247690737165659

namespace A004119

/-- `floor(a(n-1)+a(n-1)-1)` -/
def P3950247690737165659.Spec : Prop :=
  ∀ n, P3950247690737165659.a n = A004119 n

theorem P3950247690737165659.correct : P3950247690737165659.Spec := by
  intro n
  simp only [A004119, Nat.add_sub_cancel, A004119.P3950247690737165659.a, A004119.P13776656003286862494.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A004119

/-! ## A004119.P929401029865869059

`floor(a(n-1)-(1-a(n-1)))` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A004119.P929401029865869059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) - (1 - a (n - 1))

end

end A004119.P929401029865869059

namespace A004119

/-- `floor(a(n-1)-(1-a(n-1)))` -/
def P929401029865869059.Spec : Prop :=
  ∀ n, P929401029865869059.a n = A004119 n

theorem P929401029865869059.correct : P929401029865869059.Spec := by
  intro n
  simp only [A004119, Nat.add_sub_cancel, A004119.P929401029865869059.a, A004119.P13776656003286862494.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A004119

/-! ## A004119.P1208733504668565069

`ceil(a(n-1)+a(n-1)-1)` with `a(0)=1, a(1)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A004119.P1208733504668565069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + (a (n - 1) - 1)

end

end A004119.P1208733504668565069

namespace A004119

/-- `ceil(a(n-1)+a(n-1)-1)` -/
def P1208733504668565069.Spec : Prop :=
  ∀ n, P1208733504668565069.a n = A004119 n

theorem P1208733504668565069.correct : P1208733504668565069.Spec := by
  intro n
  simp only [A004119, Nat.add_sub_cancel, A004119.P1208733504668565069.a, A004119.P13776656003286862494.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A004119

/-! ## A004119.P17177691163945283872

`ceil(a(n-1)-(1-a(n-1)))` with `a(0)=1, a(1)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A004119.P17177691163945283872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) - (1 - a (n - 1))

end

end A004119.P17177691163945283872

namespace A004119

/-- `ceil(a(n-1)-(1-a(n-1)))` -/
def P17177691163945283872.Spec : Prop :=
  ∀ n, P17177691163945283872.a n = A004119 n

theorem P17177691163945283872.correct : P17177691163945283872.Spec := by
  intro n
  simp only [A004119, Nat.add_sub_cancel, A004119.P17177691163945283872.a, A004119.P13776656003286862494.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A004119

/-! ## A004119.P1134340114426749270

`round(a(n-1)+a(n-1)-1)` with `a(0)=1, a(1)=4`

`round` is left out, it is the identity on integers.
-/

namespace A004119.P1134340114426749270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + (a (n - 1) - 1)

end

end A004119.P1134340114426749270

namespace A004119

/-- `round(a(n-1)+a(n-1)-1)` -/
def P1134340114426749270.Spec : Prop :=
  ∀ n, P1134340114426749270.a n = A004119 n

theorem P1134340114426749270.correct : P1134340114426749270.Spec := by
  intro n
  simp only [A004119, Nat.add_sub_cancel, A004119.P1134340114426749270.a, A004119.P13776656003286862494.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A004119

/-! ## A004119.P11389805699887715756

`round(a(n-1)-(1-a(n-1)))` with `a(0)=1, a(1)=4`

`round` is left out, it is the identity on integers.
-/

namespace A004119.P11389805699887715756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) - (1 - a (n - 1))

end

end A004119.P11389805699887715756

namespace A004119

/-- `round(a(n-1)-(1-a(n-1)))` -/
def P11389805699887715756.Spec : Prop :=
  ∀ n, P11389805699887715756.a n = A004119 n

theorem P11389805699887715756.correct : P11389805699887715756.Spec := by
  intro n
  simp only [A004119, Nat.add_sub_cancel, A004119.P11389805699887715756.a, A004119.P13776656003286862494.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A004119

/-! ## A004119.P1410060513971551386

`record[a(n-2)+a(n-2)-1]` with `a(0)=1, a(1)=4`
-/

namespace A004119.P1410060513971551386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 2) + (f1 (n - 2) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004119.P1410060513971551386

namespace A004119

/-- `record[a(n-2)+a(n-2)-1]` -/
def P1410060513971551386.Spec : Prop :=
  ∀ n, P1410060513971551386.a n = A004119 n

end A004119

/-! ## A004119.P2967912054659266830

`record[a(n-2)-(1-a(n-2))]` with `a(0)=1, a(1)=4`
-/

namespace A004119.P2967912054659266830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 2) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004119.P2967912054659266830

namespace A004119

/-- `record[a(n-2)-(1-a(n-2))]` -/
def P2967912054659266830.Spec : Prop :=
  ∀ n, P2967912054659266830.a n = A004119 n

end A004119

/-! ## A004119.P14946547717492337303

`(a(n-1)+a(n-1)-1)/a(n-1)%3` with `a(0)=1, a(1)=4`
-/

namespace A004119.P14946547717492337303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  (a (n - 1) + (a (n - 1) - 1)) / (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) 3 : ℚ)

end

end A004119.P14946547717492337303

namespace A004119

/-- `(a(n-1)+a(n-1)-1)/a(n-1)%3` -/
def P14946547717492337303.Spec : Prop :=
  ∀ n, P14946547717492337303.a n = (A004119 n : ℚ)

end A004119

/-! ## A004119.P6441151989902468936

`(a(n-1)+a(n-1)-1)/gcd(3, a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A004119.P6441151989902468936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  (a (n - 1) + (a (n - 1) - 1)) / (Int.gcd 3 (SequenceMachineLib.roundAway (a (n - 1))) : ℚ)

end

end A004119.P6441151989902468936

namespace A004119

/-- `(a(n-1)+a(n-1)-1)/gcd(3, a(n-1))` -/
def P6441151989902468936.Spec : Prop :=
  ∀ n, P6441151989902468936.a n = (A004119 n : ℚ)

end A004119

/-! ## A004119.P7689314578558785385

`abs(3-A003461(n))`
-/

namespace A004119.P7689314578558785385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A003461 n|

end

end A004119.P7689314578558785385

namespace A004119

/-- `abs(3-A003461(n))` -/
def P7689314578558785385.Spec : Prop :=
  ∀ n, P7689314578558785385.a n = A004119 n

end A004119

/-! ## A004119.P1746234484915614144

`∑[lcm(2, A003945(n))/2]`
-/

namespace A004119.P1746234484915614144
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A003945 n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004119.P1746234484915614144

namespace A004119

/-- `∑[lcm(2, A003945(n))/2]` -/
def P1746234484915614144.Spec : Prop :=
  ∀ n, P1746234484915614144.a n = (A004119 n : ℚ)

end A004119

/-! ## A004119.P7605525915081874562

`∑[A098011(n+2)+char[1]]`
-/

namespace A004119.P7605525915081874562
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (n + 2) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004119.P7605525915081874562

namespace A004119

/-- `∑[A098011(n+2)+char[1]]` -/
def P7605525915081874562.Spec : Prop :=
  ∀ n, P7605525915081874562.a n = A004119 n

end A004119

/-!
# A004120: Expansion of (1 + x - x^5) / (1 - x)^3.

The programs for A004120, the canonical program `A004120.P15397146199482507471` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004120 has offset 0).

The definition of A004120 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004120.P15397146199482507471

`∑[a(n-1)+1]` with `a(0)=1, a(1)=3, a(2)=5, a(3)=7, a(4)=9`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004120

/-- `∑[a(n-1)+1]` -/
def P15397146199482507471.Spec : Prop :=
  ∀ n, (P15397146199482507471.a n : ℤ) = A004120 n

theorem P15397146199482507471.correct : P15397146199482507471.Spec := by
  intro n
  simp only [A004120]

end A004120

/-! ## A004120.P18146676576208166109

`∑[∪[2*(n+5), 2*n+1]]`
-/

namespace A004120.P18146676576208166109
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 5)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004120.P18146676576208166109

namespace A004120

/-- `∑[∪[2*(n+5), 2*n+1]]` -/
def P18146676576208166109.Spec : Prop :=
  ∀ n, (P18146676576208166109.a n : ℤ) = A004120 n

end A004120

/-! ## A004120.P1163745282064042023

`∑[3*n+1-comp[2*n+5]]`
-/

namespace A004120.P1163745282064042023
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004120.P1163745282064042023

namespace A004120

/-- `∑[3*n+1-comp[2*n+5]]` -/
def P1163745282064042023.Spec : Prop :=
  ∀ n, P1163745282064042023.a n = A004120 n

end A004120

/-! ## A004120.P2389268090115984931

`A296515(n)+A034856(n+1)`
-/

namespace A004120.P2389268090115984931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296515 n + A034856 (n + 1)

end

end A004120.P2389268090115984931

namespace A004120

/-- `A296515(n)+A034856(n+1)` -/
def P2389268090115984931.Spec : Prop :=
  ∀ n, P2389268090115984931.a n = A004120 n

end A004120

/-! ## A004120.P12827491944958559907

`A246172(n+1)-A267884(n)`
-/

namespace A004120.P12827491944958559907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246172 (n + 1) - A267884 n

end

end A004120.P12827491944958559907

namespace A004120

/-- `A246172(n+1)-A267884(n)` -/
def P12827491944958559907.Spec : Prop :=
  ∀ n, P12827491944958559907.a n = A004120 n

end A004120

/-! ## A004120.P5301085053581982030

`∑[n]+A296515(n)+A005408(n)`
-/

namespace A004120.P5301085053581982030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A296515 n + A005408 n)

end

end A004120.P5301085053581982030

namespace A004120

/-- `∑[n]+A296515(n)+A005408(n)` -/
def P5301085053581982030.Spec : Prop :=
  ∀ n, P5301085053581982030.a n = A004120 n

end A004120

/-! ## A004120.P8225343667090460284

`A357778(n+2)+∑[n]`
-/

namespace A004120.P8225343667090460284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357778 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A004120.P8225343667090460284

namespace A004120

/-- `A357778(n+2)+∑[n]` -/
def P8225343667090460284.Spec : Prop :=
  ∀ n, P8225343667090460284.a n = A004120 n

end A004120

/-! ## A004120.P11892890948751750291

`A161680(n+2)+A004271(A004273(n))`
-/

namespace A004120.P11892890948751750291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 2) + A004271 (A004273 n).toNat

end

end A004120.P11892890948751750291

namespace A004120

/-- `A161680(n+2)+A004271(A004273(n))` -/
def P11892890948751750291.Spec : Prop :=
  ∀ n, P11892890948751750291.a n = A004120 n

end A004120

/-!
# A004123: Number of generalized weak orders on n points.

The programs for A004123, there is no canonical definition to state claims against.
-/

/-! ## A004123.P8269360619144100343

`ceil(A027882(n)/3)`
-/

namespace A004123.P8269360619144100343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A027882 n : ℚ) / 3⌉

end

end A004123.P8269360619144100343

/-! ## A004123.P3342535844113440605

`record[Δ[A185285(n+1)]]`
-/

namespace A004123.P3342535844113440605
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185285 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004123.P3342535844113440605

/-! ## A004123.P3303505847889244688

`A185285(∑[n+1]+1)`
-/

namespace A004123.P3303505847889244688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185285 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A004123.P3303505847889244688

/-! ## A004123.P7394971702236875958

`floor((2*A201339(n)+1)/3)`
-/

namespace A004123.P7394971702236875958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * A201339 n + 1 : ℚ) / 3⌋

end

end A004123.P7394971702236875958

/-! ## A004123.P15109407917851314494

`A036453(n+1)*A050351(n)`
-/

namespace A004123.P15109407917851314494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A050351 n

end

end A004123.P15109407917851314494

/-! ## A004123.P10041187214727549166

`2*A050351(n)-A151878(n)`
-/

namespace A004123.P10041187214727549166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050351 n - A151878 n

end

end A004123.P10041187214727549166

/-! ## A004123.P1975846773571109060

`(A201339(n)+A050351(n))/2`
-/

namespace A004123.P1975846773571109060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201339 n + A050351 n : ℚ) / 2

end

end A004123.P1975846773571109060

/-! ## A004123.P10652539992049553421

`A050351(n)*A127750(2*n)`
-/

namespace A004123.P10652539992049553421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050351 n * A127750 (2 * n)

end

end A004123.P10652539992049553421

/-! ## A004123.P12720050527634110561

`A020639(A004277(n))*A050351(n)`
-/

namespace A004123.P12720050527634110561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A050351 n

end

end A004123.P12720050527634110561

/-!
# A004124: Discriminant of n-th cyclotomic polynomial.

The programs for A004124, there is no canonical definition to state claims against.
-/

/-! ## A004124.P4265464965987146898

`A344407(lcm(2, n+1)/2)`
-/

namespace A004124.P4265464965987146898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344407 (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 1) : ℚ) / 2)).toNat

end

end A004124.P4265464965987146898

/-! ## A004124.P8641118632912298924

`A344407(gcd((n+1)², ∑[n+1]))`
-/

namespace A004124.P8641118632912298924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344407 (Nat.gcd ((n + 1) ^ 2) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A004124.P8641118632912298924

/-! ## A004124.P14820254037226844488

`A344407((n+1)/gcd(n+1, 2*n))`
-/

namespace A004124.P14820254037226844488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344407 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd (n + 1) (2 * n) : ℚ))).toNat

end

end A004124.P14820254037226844488

/-! ## A004124.P8493710793688295200

`A344407(A026741(n+1))`
-/

namespace A004124.P8493710793688295200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344407 (A026741 (n + 1)).toNat

end

end A004124.P8493710793688295200

/-! ## A004124.P7996385039863919676

`A344407(∑[∑[A274922(n)]])`
-/

namespace A004124.P7996385039863919676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344407 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A004124.P7996385039863919676

/-! ## A004124.P13075311412749639750

`A344407((n+1)/A000034(n))`
-/

namespace A004124.P13075311412749639750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344407 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000034 n : ℚ))).toNat

end

end A004124.P13075311412749639750

/-!
# A004125: Sum of remainders of n mod k, for k = 1, 2, 3, ..., n.

The programs for A004125, the canonical program `A004125.P11473636144360276607` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004125 has offset 1).

The definition of A004125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004125.P12891546058801257474

`A067439(n+1)+A072514(n+1)`
-/

namespace A004125.P12891546058801257474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067439 (n + 1) + A072514 (n + 1)

end

end A004125.P12891546058801257474

namespace A004125

/-- `A067439(n+1)+A072514(n+1)` -/
def P12891546058801257474.Spec : Prop :=
  ∀ n, P12891546058801257474.a n = A004125 (n + 1)

end A004125

/-! ## A004125.P11473636144360276607

`∑[Δ[n²]-∑{d}[n+1, #]]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004125

/-- `∑[Δ[n²]-∑{d}[n+1, #]]` -/
def P11473636144360276607.Spec : Prop :=
  ∀ n, P11473636144360276607.a n = A004125 (n + 1)

theorem P11473636144360276607.correct : P11473636144360276607.Spec := by
  intro n
  simp only [A004125, Nat.add_sub_cancel]

end A004125

/-! ## A004125.P2832438351622358797

`(n+1)²-∑[∑{d}[n+1, #]]`
-/

namespace A004125.P2832438351622358797
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A004125.P2832438351622358797

namespace A004125

/-- `(n+1)²-∑[∑{d}[n+1, #]]` -/
def P2832438351622358797.Spec : Prop :=
  ∀ n, P2832438351622358797.a n = A004125 (n + 1)

end A004125

/-! ## A004125.P17994620096309234399

`(n+1)²%∑[∑{d}[n+1, #]]`
-/

namespace A004125.P17994620096309234399
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 % (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004125.P17994620096309234399

namespace A004125

/-- `(n+1)²%∑[∑{d}[n+1, #]]` -/
def P17994620096309234399.Spec : Prop :=
  ∀ n, (P17994620096309234399.a n : ℤ) = A004125 (n + 1)

end A004125

/-! ## A004125.P796974515121842232

`∑[2*n+1-∑{d}[n+1, #]]`
-/

namespace A004125.P796974515121842232
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (1 - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004125.P796974515121842232

namespace A004125

/-- `∑[2*n+1-∑{d}[n+1, #]]` -/
def P796974515121842232.Spec : Prop :=
  ∀ n, P796974515121842232.a n = A004125 (n + 1)

theorem P796974515121842232.correct : P796974515121842232.Spec := by
  intro n
  simp only [A004125, Nat.add_sub_cancel, A004125.P796974515121842232.f2, A004125.P796974515121842232.f1, A004125.P796974515121842232.a, A004125.P11473636144360276607.f2, A004125.P11473636144360276607.f3, A004125.P11473636144360276607.f1, A004125.P11473636144360276607.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A004125

/-! ## A004125.P13951370655336016707

`∑[n+1-∑{d}[n+1, #]+n]`
-/

namespace A004125.P13951370655336016707
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004125.P13951370655336016707

namespace A004125

/-- `∑[n+1-∑{d}[n+1, #]+n]` -/
def P13951370655336016707.Spec : Prop :=
  ∀ n, P13951370655336016707.a n = A004125 (n + 1)

theorem P13951370655336016707.correct : P13951370655336016707.Spec := by
  intro n
  simp only [A004125, Nat.add_sub_cancel, A004125.P13951370655336016707.f2, A004125.P13951370655336016707.f1, A004125.P13951370655336016707.a, A004125.P11473636144360276607.f2, A004125.P11473636144360276607.f3, A004125.P11473636144360276607.f1, A004125.P11473636144360276607.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A004125

/-! ## A004125.P7424048930337330013

`a(n-1)+2*n+1-∑{d}[n+1, #]` with `a(0)=0`
-/

namespace A004125.P7424048930337330013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((2 * n + 1 : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ))

end

end A004125.P7424048930337330013

namespace A004125

/-- `a(n-1)+2*n+1-∑{d}[n+1, #]` -/
def P7424048930337330013.Spec : Prop :=
  ∀ n, P7424048930337330013.a n = A004125 (n + 1)

end A004125

/-! ## A004125.P8613501866620023437

`Δ[A072481(n)]`
-/

namespace A004125.P8613501866620023437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004125.P8613501866620023437

namespace A004125

/-- `Δ[A072481(n)]` -/
def P8613501866620023437.Spec : Prop :=
  ∀ n, P8613501866620023437.a n = A004125 (n + 1)

end A004125

/-! ## A004125.P11427774040243040611

`∑[A235796(n+1)]`
-/

namespace A004125.P11427774040243040611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004125.P11427774040243040611

namespace A004125

/-- `∑[A235796(n+1)]` -/
def P11427774040243040611.Spec : Prop :=
  ∀ n, P11427774040243040611.a n = A004125 (n + 1)

end A004125

/-! ## A004125.P17276233877276853629

`A067436(n+1)/2`
-/

namespace A004125.P17276233877276853629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067436 (n + 1) : ℚ) / 2

end

end A004125.P17276233877276853629

namespace A004125

/-- `A067436(n+1)/2` -/
def P17276233877276853629.Spec : Prop :=
  ∀ n, P17276233877276853629.a n = (A004125 (n + 1) : ℚ)

end A004125

/-! ## A004125.P1460981412146103746

`abs(∑[A237588(n+1)])`
-/

namespace A004125.P1460981412146103746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A004125.P1460981412146103746

namespace A004125

/-- `abs(∑[A237588(n+1)])` -/
def P1460981412146103746.Spec : Prop :=
  ∀ n, P1460981412146103746.a n = A004125 (n + 1)

end A004125

/-! ## A004125.P2170936065862001526

`∑[Δ[A111490(n)]-1]`
-/

namespace A004125.P2170936065862001526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111490 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004125.P2170936065862001526

namespace A004125

/-- `∑[Δ[A111490(n)]-1]` -/
def P2170936065862001526.Spec : Prop :=
  ∀ n, P2170936065862001526.a n = A004125 (n + 1)

end A004125

/-! ## A004125.P2887223162424412959

`∑[A033879(n+1)-1]`
-/

namespace A004125.P2887223162424412959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004125.P2887223162424412959

namespace A004125

/-- `∑[A033879(n+1)-1]` -/
def P2887223162424412959.Spec : Prop :=
  ∀ n, P2887223162424412959.a n = A004125 (n + 1)

end A004125

/-! ## A004125.P11295983397186216056

`∑[n-A001065(n+1)]`
-/

namespace A004125.P11295983397186216056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004125.P11295983397186216056

namespace A004125

/-- `∑[n-A001065(n+1)]` -/
def P11295983397186216056.Spec : Prop :=
  ∀ n, P11295983397186216056.a n = A004125 (n + 1)

end A004125

/-! ## A004125.P12150486711040302336

`A049766(n+1)-∑[n]`
-/

namespace A004125.P12150486711040302336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049766 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A004125.P12150486711040302336

namespace A004125

/-- `A049766(n+1)-∑[n]` -/
def P12150486711040302336.Spec : Prop :=
  ∀ n, P12150486711040302336.a n = A004125 (n + 1)

end A004125

/-! ## A004125.P1945378427982071700

`∑[n]-A153485(n+1)`
-/

namespace A004125.P1945378427982071700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A153485 (n + 1)

end

end A004125.P1945378427982071700

namespace A004125

/-- `∑[n]-A153485(n+1)` -/
def P1945378427982071700.Spec : Prop :=
  ∀ n, P1945378427982071700.a n = A004125 (n + 1)

end A004125

/-! ## A004125.P17154347137318566864

`A111490(n+1)-(n+1)`
-/

namespace A004125.P17154347137318566864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111490 (n + 1) - (n + 1 : ℤ)

end

end A004125.P17154347137318566864

namespace A004125

/-- `A111490(n+1)-(n+1)` -/
def P17154347137318566864.Spec : Prop :=
  ∀ n, P17154347137318566864.a n = A004125 (n + 1)

end A004125

/-! ## A004125.P5399099027472320681

`A256532(n+1)/(n+1)`
-/

namespace A004125.P5399099027472320681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256532 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A004125.P5399099027472320681

namespace A004125

/-- `A256532(n+1)/(n+1)` -/
def P5399099027472320681.Spec : Prop :=
  ∀ n, P5399099027472320681.a n = (A004125 (n + 1) : ℚ)

end A004125

/-! ## A004125.P8436094736837386555

`abs(∑[A033880(n+1)+1])`
-/

namespace A004125.P8436094736837386555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A004125.P8436094736837386555

namespace A004125

/-- `abs(∑[A033880(n+1)+1])` -/
def P8436094736837386555.Spec : Prop :=
  ∀ n, P8436094736837386555.a n = A004125 (n + 1)

end A004125

/-! ## A004125.P12849342287854807328

`∑[A235799(n+1)-n²]`
-/

namespace A004125.P12849342287854807328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235799 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004125.P12849342287854807328

namespace A004125

/-- `∑[A235799(n+1)-n²]` -/
def P12849342287854807328.Spec : Prop :=
  ∀ n, P12849342287854807328.a n = A004125 (n + 1)

end A004125

/-!
# A004126: a(n) = n*(7*n^2 - 1)/6.

The programs for A004126, the canonical program `A004126.P15120813235954928389` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004126 has offset 0).

The definition of A004126 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004126.P15120813235954928389

`n*(7*n²-1)/6`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004126

/-- `n*(7*n²-1)/6` -/
def P15120813235954928389.Spec : Prop :=
  ∀ n, P15120813235954928389.a n = (A004126 n : ℚ)

end A004126

/-! ## A004126.P5640220372899680761

`∑[7*C(n, 2)]+n`
-/

namespace A004126.P5640220372899680761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A004126.P5640220372899680761

namespace A004126

/-- `∑[7*C(n, 2)]+n` -/
def P5640220372899680761.Spec : Prop :=
  ∀ n, (P5640220372899680761.a n : ℤ) = A004126 n

end A004126

/-! ## A004126.P4182123291921427343

`∑[C(n, 2)]+n^3`
-/

namespace A004126.P4182123291921427343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ 3

end

end A004126.P4182123291921427343

namespace A004126

/-- `∑[C(n, 2)]+n^3` -/
def P4182123291921427343.Spec : Prop :=
  ∀ n, (P4182123291921427343.a n : ℤ) = A004126 n

end A004126

/-! ## A004126.P7155572440993342295

`7*C(n+1, 3)+n`
-/

namespace A004126.P7155572440993342295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * Nat.choose (n + 1) 3 + n

end

end A004126.P7155572440993342295

namespace A004126

/-- `7*C(n+1, 3)+n` -/
def P7155572440993342295.Spec : Prop :=
  ∀ n, (P7155572440993342295.a n : ℤ) = A004126 n

end A004126

/-! ## A004126.P14201471918946544472

`C(n+1, 3)+n^3`
-/

namespace A004126.P14201471918946544472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 3 + n ^ 3

end

end A004126.P14201471918946544472

namespace A004126

/-- `C(n+1, 3)+n^3` -/
def P14201471918946544472.Spec : Prop :=
  ∀ n, (P14201471918946544472.a n : ℤ) = A004126 n

end A004126

/-! ## A004126.P12021976606594312000

`∑[∑[a(n-1)+7]]` with `a(0)=0, a(1)=1, a(2)=7`
-/

namespace A004126.P12021976606594312000
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 7] fun n f2 =>
  f2 (n - 1) + 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004126.P12021976606594312000

namespace A004126

/-- `∑[∑[a(n-1)+7]]` -/
def P12021976606594312000.Spec : Prop :=
  ∀ n, (P12021976606594312000.a n : ℤ) = A004126 n

end A004126

/-! ## A004126.P4093053570408330029

`n-∑[∑[a(n-1)-7]]` with `a(0)=0, a(1)=0`
-/

namespace A004126.P4093053570408330029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  f2 (n - 1) - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004126.P4093053570408330029

namespace A004126

/-- `n-∑[∑[a(n-1)-7]]` -/
def P4093053570408330029.Spec : Prop :=
  ∀ n, P4093053570408330029.a n = A004126 n

end A004126

/-! ## A004126.P16617363130470834343

`(A063521(n)+n)/2`
-/

namespace A004126.P16617363130470834343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063521 n + (n : ℤ) : ℚ) / 2

end

end A004126.P16617363130470834343

namespace A004126

/-- `(A063521(n)+n)/2` -/
def P16617363130470834343.Spec : Prop :=
  ∀ n, P16617363130470834343.a n = (A004126 n : ℚ)

end A004126

/-! ## A004126.P661597782282725784

`A007584(n)-C(n, 2)`
-/

namespace A004126.P661597782282725784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007584 n - (Nat.choose n 2 : ℤ)

end

end A004126.P661597782282725784

namespace A004126

/-- `A007584(n)-C(n, 2)` -/
def P661597782282725784.Spec : Prop :=
  ∀ n, P661597782282725784.a n = A004126 n

end A004126

/-! ## A004126.P3927774948134968884

`∑[A218471(n)]-n²`
-/

namespace A004126.P3927774948134968884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218471 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A004126.P3927774948134968884

namespace A004126

/-- `∑[A218471(n)]-n²` -/
def P3927774948134968884.Spec : Prop :=
  ∀ n, P3927774948134968884.a n = A004126 n

end A004126

/-! ## A004126.P4365752966678186036

`A160378(n)+∑[∑[n]]`
-/

namespace A004126.P4365752966678186036
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160378 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A004126.P4365752966678186036

namespace A004126

/-- `A160378(n)+∑[∑[n]]` -/
def P4365752966678186036.Spec : Prop :=
  ∀ n, P4365752966678186036.a n = A004126 n

end A004126

/-! ## A004126.P4090683326993865690

`A185788(n+1)-∑[n]`
-/

namespace A004126.P4090683326993865690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185788 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A004126.P4090683326993865690

namespace A004126

/-- `A185788(n+1)-∑[n]` -/
def P4090683326993865690.Spec : Prop :=
  ∀ n, P4090683326993865690.a n = A004126 n

end A004126

/-! ## A004126.P17893784042496063788

`A101165(n)-∑[2*n]`
-/

namespace A004126.P17893784042496063788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101165 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A004126.P17893784042496063788

namespace A004126

/-- `A101165(n)-∑[2*n]` -/
def P17893784042496063788.Spec : Prop :=
  ∀ n, P17893784042496063788.a n = A004126 n

end A004126

/-! ## A004126.P4885186160582542081

`A000578(n)+∑[C(n, 2)]`
-/

namespace A004126.P4885186160582542081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A004126.P4885186160582542081

namespace A004126

/-- `A000578(n)+∑[C(n, 2)]` -/
def P4885186160582542081.Spec : Prop :=
  ∀ n, P4885186160582542081.a n = A004126 n

end A004126

/-! ## A004126.P3503356624698785402

`A000447(n)-∑[C(n, 2)]`
-/

namespace A004126.P3503356624698785402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A004126.P3503356624698785402

namespace A004126

/-- `A000447(n)-∑[C(n, 2)]` -/
def P3503356624698785402.Spec : Prop :=
  ∀ n, P3503356624698785402.a n = A004126 n

end A004126

/-! ## A004126.P3292979149334943037

`∑[A001106(n)-n]+n`
-/

namespace A004126.P3292979149334943037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A004126.P3292979149334943037

namespace A004126

/-- `∑[A001106(n)-n]+n` -/
def P3292979149334943037.Spec : Prop :=
  ∀ n, P3292979149334943037.a n = A004126 n

end A004126

/-! ## A004126.P11196966259892508382

`∑[(1-A004277(n))²-C(n, 2)]`
-/

namespace A004126.P11196966259892508382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A004277 n) ^ 2 - (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004126.P11196966259892508382

namespace A004126

/-- `∑[(1-A004277(n))²-C(n, 2)]` -/
def P11196966259892508382.Spec : Prop :=
  ∀ n, P11196966259892508382.a n = A004126 n

end A004126

/-! ## A004126.P5939824198273523650

`A135503(n)+A005900(n)`
-/

namespace A004126.P5939824198273523650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + A005900 n

end

end A004126.P5939824198273523650

namespace A004126

/-- `A135503(n)+A005900(n)` -/
def P5939824198273523650.Spec : Prop :=
  ∀ n, P5939824198273523650.a n = A004126 n

end A004126

/-! ## A004126.P10630160980716013255

`A146298(n)+A006002(n)`
-/

namespace A004126.P10630160980716013255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146298 n + A006002 n

end

end A004126.P10630160980716013255

namespace A004126

/-- `A146298(n)+A006002(n)` -/
def P10630160980716013255.Spec : Prop :=
  ∀ n, P10630160980716013255.a n = A004126 n

end A004126

/-! ## A004126.P17058001974338772798

`A203552(n)+A051925(n)`
-/

namespace A004126.P17058001974338772798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203552 n + A051925 n

end

end A004126.P17058001974338772798

namespace A004126

/-- `A203552(n)+A051925(n)` -/
def P17058001974338772798.Spec : Prop :=
  ∀ n, P17058001974338772798.a n = A004126 n

end A004126

/-!
# A004127: Number of planar hexagon trees with n hexagons.

The programs for A004127, there is no canonical definition to state claims against.
-/

/-! ## A004127.P2091013564245362383

`A295260(A055998(n+2))`
-/

namespace A004127.P2091013564245362383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295260 (A055998 (n + 2)).toNat

end

end A004127.P2091013564245362383

/-! ## A004127.P11973712865141797864

`A295260(A155212(n)+5)`
-/

namespace A004127.P11973712865141797864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295260 (A155212 n + 5).toNat

end

end A004127.P11973712865141797864

/-! ## A004127.P11540857492980384109

`A295260(A046691(n+2)+1)`
-/

namespace A004127.P11540857492980384109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295260 (A046691 (n + 2) + 1).toNat

end

end A004127.P11540857492980384109

/-! ## A004127.P17971613385460822907

`A295260(A000096(n+3)-2)`
-/

namespace A004127.P17971613385460822907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295260 (A000096 (n + 3) - 2).toNat

end

end A004127.P17971613385460822907

/-! ## A004127.P9890575684885665606

`A295260(A054254(n+4)-1)`
-/

namespace A004127.P9890575684885665606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295260 (A054254 (n + 4) - 1).toNat

end

end A004127.P9890575684885665606

/-!
# A004128: a(n) = Sum_{k=1..n} floor(3*n/3^k).

The programs for A004128, the canonical program `A004128.P18258741337771919541` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004128 has offset 0).

The definition of A004128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004128.P18258741337771919541

`n+a(floor(n/3))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004128

/-- `n+a(floor(n/3))` -/
def P18258741337771919541.Spec : Prop :=
  ∀ n, (P18258741337771919541.a n : ℤ) = A004128 n

theorem P18258741337771919541.correct : P18258741337771919541.Spec := by
  intro n
  simp only [A004128]

end A004128

/-! ## A004128.P16120559156428374625

`n+A054861(n)`
-/

namespace A004128.P16120559156428374625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A054861 n

end

end A004128.P16120559156428374625

namespace A004128

/-- `n+A054861(n)` -/
def P16120559156428374625.Spec : Prop :=
  ∀ n, P16120559156428374625.a n = A004128 n

end A004128

/-! ## A004128.P4423755999525997291

`(3*n-A053735(n))/2`
-/

namespace A004128.P4423755999525997291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n : ℤ) - A053735 n : ℚ) / 2

end

end A004128.P4423755999525997291

namespace A004128

/-- `(3*n-A053735(n))/2` -/
def P4423755999525997291.Spec : Prop :=
  ∀ n, P4423755999525997291.a n = (A004128 n : ℚ)

end A004128

/-! ## A004128.P6100841927012378301

`A054861(3*n)`
-/

namespace A004128.P6100841927012378301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (3 * n)

end

end A004128.P6100841927012378301

namespace A004128

/-- `A054861(3*n)` -/
def P6100841927012378301.Spec : Prop :=
  ∀ n, P6100841927012378301.a n = A004128 n

end A004128

/-! ## A004128.P11995049249638849920

`∑[a(∑[∑[n]]%n)+1]` with `a(0)=0`
-/

namespace A004128.P11995049249638849920
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004128.P11995049249638849920

namespace A004128

/-- `∑[a(∑[∑[n]]%n)+1]` -/
def P11995049249638849920.Spec : Prop :=
  ∀ n, (P11995049249638849920.a n : ℤ) = A004128 n

end A004128

/-! ## A004128.P10794662673626716178

`a(n-1)+val(n, 3)+1` with `a(0)=0`
-/

namespace A004128.P10794662673626716178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + SequenceMachineLib.valuation n 3 + 1

end

end A004128.P10794662673626716178

namespace A004128

/-- `a(n-1)+val(n, 3)+1` -/
def P10794662673626716178.Spec : Prop :=
  ∀ n, (P10794662673626716178.a n : ℤ) = A004128 n

end A004128

/-! ## A004128.P17493403176026771040

`∑[val(abs(1-3*n)+1, 3)]`
-/

namespace A004128.P17493403176026771040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (3 * n : ℤ)| + 1).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004128.P17493403176026771040

namespace A004128

/-- `∑[val(abs(1-3*n)+1, 3)]` -/
def P17493403176026771040.Spec : Prop :=
  ∀ n, (P17493403176026771040.a n : ℤ) = A004128 n

end A004128

/-! ## A004128.P8603173497552231226

`∑[val(abs(1-n)+1, 3)]+n`
-/

namespace A004128.P8603173497552231226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A004128.P8603173497552231226

namespace A004128

/-- `∑[val(abs(1-n)+1, 3)]+n` -/
def P8603173497552231226.Spec : Prop :=
  ∀ n, (P8603173497552231226.a n : ℤ) = A004128 n

end A004128

/-! ## A004128.P373779069666487748

`2*n-(n-a(floor(n/3)))` with `a(0)=0`
-/

namespace A004128.P373779069666487748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * n : ℤ) - ((n : ℤ) - a ⌊(n : ℚ) / 3⌋.toNat)

end

end A004128.P373779069666487748

namespace A004128

/-- `2*n-(n-a(floor(n/3)))` -/
def P373779069666487748.Spec : Prop :=
  ∀ n, P373779069666487748.a n = A004128 n

end A004128

/-! ## A004128.P13675956180597911895

`∑[val(comp[2*(n+1)]+1, 3)+1]-1`
-/

namespace A004128.P13675956180597911895
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) 3 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A004128.P13675956180597911895

namespace A004128

/-- `∑[val(comp[2*(n+1)]+1, 3)+1]-1` -/
def P13675956180597911895.Spec : Prop :=
  ∀ n, P13675956180597911895.a n = A004128 n

end A004128

/-! ## A004128.P10167778987125366720

`comp[A096346(n)]`
-/

namespace A004128.P10167778987125366720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096346 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004128.P10167778987125366720

namespace A004128

/-- `comp[A096346(n)]` -/
def P10167778987125366720.Spec : Prop :=
  ∀ n, (P10167778987125366720.a n : ℤ) = A004128 n

end A004128

/-! ## A004128.P14384755491121542848

`A346502(n)/2`
-/

namespace A004128.P14384755491121542848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346502 n : ℚ) / 2

end

end A004128.P14384755491121542848

namespace A004128

/-- `A346502(n)/2` -/
def P14384755491121542848.Spec : Prop :=
  ∀ n, P14384755491121542848.a n = (A004128 n : ℚ)

end A004128

/-! ## A004128.P11413579089473522949

`A120514(n+1)-1`
-/

namespace A004128.P11413579089473522949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120514 (n + 1) - 1

end

end A004128.P11413579089473522949

namespace A004128

/-- `A120514(n+1)-1` -/
def P11413579089473522949.Spec : Prop :=
  ∀ n, P11413579089473522949.a n = A004128 n

end A004128

/-! ## A004128.P1903777118505504888

`2*n-A089792(n)`
-/

namespace A004128.P1903777118505504888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A089792 n

end

end A004128.P1903777118505504888

namespace A004128

/-- `2*n-A089792(n)` -/
def P1903777118505504888.Spec : Prop :=
  ∀ n, P1903777118505504888.a n = A004128 n

end A004128

/-! ## A004128.P2959025825594944910

`A344853(n)/2+n`
-/

namespace A004128.P2959025825594944910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344853 n : ℚ) / 2 + (n : ℚ)

end

end A004128.P2959025825594944910

namespace A004128

/-- `A344853(n)/2+n` -/
def P2959025825594944910.Spec : Prop :=
  ∀ n, P2959025825594944910.a n = (A004128 n : ℚ)

end A004128

/-! ## A004128.P16604937730823740318

`comp[A007844(n+1)+n]`
-/

namespace A004128.P16604937730823740318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007844 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004128.P16604937730823740318

namespace A004128

/-- `comp[A007844(n+1)+n]` -/
def P16604937730823740318.Spec : Prop :=
  ∀ n, (P16604937730823740318.a n : ℤ) = A004128 n

end A004128

/-! ## A004128.P16993392412575602946

`A001281(A344853(n))+n`
-/

namespace A004128.P16993392412575602946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A344853 n).toNat + (n : ℤ)

end

end A004128.P16993392412575602946

namespace A004128

/-- `A001281(A344853(n))+n` -/
def P16993392412575602946.Spec : Prop :=
  ∀ n, P16993392412575602946.a n = A004128 n

end A004128

/-! ## A004128.P2524458231496122505

`A054861(n)-A001489(n)`
-/

namespace A004128.P2524458231496122505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n - A001489 n

end

end A004128.P2524458231496122505

namespace A004128

/-- `A054861(n)-A001489(n)` -/
def P2524458231496122505.Spec : Prop :=
  ∀ n, P2524458231496122505.a n = A004128 n

end A004128

/-! ## A004128.P11413545352777429269

`A127427(n)-A000989(n)`
-/

namespace A004128.P11413545352777429269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127427 n - A000989 n

end

end A004128.P11413545352777429269

namespace A004128

/-- `A127427(n)-A000989(n)` -/
def P11413545352777429269.Spec : Prop :=
  ∀ n, P11413545352777429269.a n = A004128 n

end A004128

/-! ## A004128.P2680780054099147819

`(A004134(n)-A180017(n))/2`
-/

namespace A004128.P2680780054099147819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004134 n - A180017 n : ℚ) / 2

end

end A004128.P2680780054099147819

namespace A004128

/-- `(A004134(n)-A180017(n))/2` -/
def P2680780054099147819.Spec : Prop :=
  ∀ n, P2680780054099147819.a n = (A004128 n : ℚ)

end A004128

/-!
# A004129: Postage stamp problem: largest m such that there exists an n-subset S of nonnegative integers such that 1,...,m can be expressed as a sum of two distinct elements of S.

The programs for A004129, there is no canonical definition to state claims against.
-/

/-! ## A004129.P14040636352597856089

`A093697(A269132(n+1))`
-/

namespace A004129.P14040636352597856089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093697 (A269132 (n + 1)).toNat

end

end A004129.P14040636352597856089

/-! ## A004129.P17491889976148765126

`A353024(∑[n+1]+1)`
-/

namespace A004129.P17491889976148765126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353024 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A004129.P17491889976148765126

/-! ## A004129.P3322448568742094165

`A353086(A184009(n+2))`
-/

namespace A004129.P3322448568742094165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353086 (A184009 (n + 2)).toNat

end

end A004129.P3322448568742094165

/-! ## A004129.P18276807107375376952

`∑[∑[A010060(A066723(n))]]`
-/

namespace A004129.P18276807107375376952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A066723 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004129.P18276807107375376952

/-!
# A004130: Numerators in expansion of (1-x)^{-1/4}.

The programs for A004130, the canonical program `A004130.P4035814024961052107` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004130 has offset 0).

The definition of A004130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004130.P4035814024961052107

`A004981(n)/A000079(A000120(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004130

/-- `A004981(n)/A000079(A000120(n))` -/
def P4035814024961052107.Spec : Prop :=
  ∀ n, P4035814024961052107.a n = (A004130 n : ℚ)

end A004130

/-! ## A004130.P8963291146031534457

`A004981(n)/gcd(A000079(n), A000984(n))`
-/

namespace A004130.P8963291146031534457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004981 n : ℚ) / (Int.gcd (A000079 n) (A000984 n) : ℚ)

end

end A004130.P8963291146031534457

namespace A004130

/-- `A004981(n)/gcd(A000079(n), A000984(n))` -/
def P8963291146031534457.Spec : Prop :=
  ∀ n, P8963291146031534457.a n = (A004130 n : ℚ)

end A004130

/-! ## A004130.P17876727658544409897

`A127776(n)/gcd(A034385(n), A127776(n))`
-/

namespace A004130.P17876727658544409897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127776 n : ℚ) / (Int.gcd (A034385 n) (A127776 n) : ℚ)

end

end A004130.P17876727658544409897

namespace A004130

/-- `A127776(n)/gcd(A034385(n), A127776(n))` -/
def P17876727658544409897.Spec : Prop :=
  ∀ n, P17876727658544409897.a n = (A004130 n : ℚ)

end A004130

/-! ## A004130.P9204780525039151099

`A255811(A167614(n+2)+1)`
-/

namespace A004130.P9204780525039151099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255811 (A167614 (n + 2) + 1).toNat

end

end A004130.P9204780525039151099

namespace A004130

/-- `A255811(A167614(n+2)+1)` -/
def P9204780525039151099.Spec : Prop :=
  ∀ n, P9204780525039151099.a n = A004130 n

end A004130

/-! ## A004130.P209947359541604816

`gcd(A004981(n), A007696(n))`
-/

namespace A004130.P209947359541604816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004981 n) (A007696 n)

end

end A004130.P209947359541604816

namespace A004130

/-- `gcd(A004981(n), A007696(n))` -/
def P209947359541604816.Spec : Prop :=
  ∀ n, (P209947359541604816.a n : ℤ) = A004130 n

end A004130

/-! ## A004130.P7469505464052557712

`A007696(n)/gcd(A000142(n), A001147(n))`
-/

namespace A004130.P7469505464052557712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007696 n : ℚ) / (Int.gcd (A000142 n) (A001147 n) : ℚ)

end

end A004130.P7469505464052557712

namespace A004130

/-- `A007696(n)/gcd(A000142(n), A001147(n))` -/
def P7469505464052557712.Spec : Prop :=
  ∀ n, P7469505464052557712.a n = (A004130 n : ℚ)

end A004130

/-! ## A004130.P12500906041847220138

`A007696(n)/gcd(A008545(n), A047053(n))`
-/

namespace A004130.P12500906041847220138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007696 n : ℚ) / (Int.gcd (A008545 n) (A047053 n) : ℚ)

end

end A004130.P12500906041847220138

namespace A004130

/-- `A007696(n)/gcd(A008545(n), A047053(n))` -/
def P12500906041847220138.Spec : Prop :=
  ∀ n, P12500906041847220138.a n = (A004130 n : ℚ)

end A004130

/-!
# A004131: Modular postage stamp problem: largest m such that there exists an n-subset S of nonnegative integers such that 0,...,m-1 can be expressed as a mod-m sum of two distinct elements of S.

The programs for A004131, there is no canonical definition to state claims against.
-/

/-! ## A004131.P18087765816897222605

`floor(sqrt(∑[A226863(n+1)]))`
-/

namespace A004131.P18087765816897222605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004131.P18087765816897222605

/-! ## A004131.P5135738011806363950

`A353968(2*n+1)-char[2]`
-/

namespace A004131.P5135738011806363950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353968 (2 * n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A004131.P5135738011806363950

/-! ## A004131.P5796527733994655928

`∑[A078826(∑[n²]+1)+1]`
-/

namespace A004131.P5796527733994655928
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078826 (∑ j ∈ Finset.range (n + 1), f2 j + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004131.P5796527733994655928

/-! ## A004131.P16436505595036233602

`∑[round(log(A094670(3*n+2)))]`
-/

namespace A004131.P16436505595036233602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A094670 (3 * n + 2) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004131.P16436505595036233602

/-!
# A004132: Modular postage stamp problem.

The programs for A004132, there is no canonical definition to state claims against.
-/

/-! ## A004132.P5028897956035785833

`or(A001221(3*n+2), A347623(A046022(2*n+3)))`
-/

namespace A004132.P5028897956035785833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (3 * n + 2)) (A347623 (A046022 (2 * n + 3)).toNat)

end

end A004132.P5028897956035785833

/-!
# A004133: Additive bases: a(n) is the least integer such that there is an n-element set of nonnegative integers, the sums of pairs (of distinct elements) of which are distinct and at most a(n).

The programs for A004133, there is no canonical definition to state claims against.
-/

/-! ## A004133.P6968199143852934144

`A030298(A205801(n))+A007504(n)`
-/

namespace A004133.P6968199143852934144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030298 (A205801 n).toNat + A007504 n

end

end A004133.P6968199143852934144

/-! ## A004133.P17537993242266930373

`A007895(A301462(n))+A007504(n)`
-/

namespace A004133.P17537993242266930373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A301462 n).toNat + A007504 n

end

end A004133.P17537993242266930373

/-!
# A004134: Denominators in expansion of (1-x)^{-1/4} are 2^a(n).

The programs for A004134, the canonical program `A004134.P15858984416175637375` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004134 has offset 0).

The definition of A004134 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004134.P15858984416175637375

`A005187(n)+n`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004134

/-- `A005187(n)+n` -/
def P15858984416175637375.Spec : Prop :=
  ∀ n, P15858984416175637375.a n = A004134 n

theorem P15858984416175637375.correct : P15858984416175637375.Spec := by
  intro n
  simp only [A004134]

end A004134

/-! ## A004134.P82266247178116945

`a(n-1)+val(n, 2)+2` with `a(0)=0`
-/

namespace A004134.P82266247178116945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (SequenceMachineLib.valuation n 2 + 2)

end

end A004134.P82266247178116945

namespace A004134

/-- `a(n-1)+val(n, 2)+2` -/
def P82266247178116945.Spec : Prop :=
  ∀ n, (P82266247178116945.a n : ℤ) = A004134 n

end A004134

/-! ## A004134.P3318656786742579238

`∑[val(record[lcm(2, n)+2], 2)]-1`
-/

namespace A004134.P3318656786742579238
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A004134.P3318656786742579238

namespace A004134

/-- `∑[val(record[lcm(2, n)+2], 2)]-1` -/
def P3318656786742579238.Spec : Prop :=
  ∀ n, P3318656786742579238.a n = A004134 n

end A004134

/-! ## A004134.P17238022212267290816

`∑[a(∑[n]%n)+1]-1` with `a(0)=1`
-/

namespace A004134.P17238022212267290816
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A004134.P17238022212267290816

namespace A004134

/-- `∑[a(∑[n]%n)+1]-1` -/
def P17238022212267290816.Spec : Prop :=
  ∀ n, P17238022212267290816.a n = A004134 n

end A004134

/-! ## A004134.P6216971476552724242

`∑[∏{e}[xor(n, -n), #]]-1+n`
-/

namespace A004134.P6216971476552724242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 + (n : ℤ)

end

end A004134.P6216971476552724242

namespace A004134

/-- `∑[∏{e}[xor(n, -n), #]]-1+n` -/
def P6216971476552724242.Spec : Prop :=
  ∀ n, P6216971476552724242.a n = A004134 n

end A004134

/-! ## A004134.P4472645109873275037

`n-(1-∑[∏{e}[xor(n, -n), #]])`
-/

namespace A004134.P4472645109873275037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A004134.P4472645109873275037

namespace A004134

/-- `n-(1-∑[∏{e}[xor(n, -n), #]])` -/
def P4472645109873275037.Spec : Prop :=
  ∀ n, P4472645109873275037.a n = A004134 n

end A004134

/-! ## A004134.P4377727233691130814

`ceil(n/2)+a(floor(n/2))+n` with `a(0)=0`
-/

namespace A004134.P4377727233691130814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈(n : ℚ) / 2⌉ + (a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ))

end

end A004134.P4377727233691130814

namespace A004134

/-- `ceil(n/2)+a(floor(n/2))+n` -/
def P4377727233691130814.Spec : Prop :=
  ∀ n, P4377727233691130814.a n = A004134 n

end A004134

/-! ## A004134.P3583437409749931857

`A120738(n)-n`
-/

namespace A004134.P3583437409749931857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120738 n - (n : ℤ)

end

end A004134.P3583437409749931857

namespace A004134

/-- `A120738(n)-n` -/
def P3583437409749931857.Spec : Prop :=
  ∀ n, P3583437409749931857.a n = A004134 n

end A004134

/-! ## A004134.P5706577833773617508

`∑[val(A008574(n), 2)]`
-/

namespace A004134.P5706577833773617508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008574 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004134.P5706577833773617508

namespace A004134

/-- `∑[val(A008574(n), 2)]` -/
def P5706577833773617508.Spec : Prop :=
  ∀ n, (P5706577833773617508.a n : ℤ) = A004134 n

end A004134

/-! ## A004134.P9505891455856761090

`record[A339451(n)+n]`
-/

namespace A004134.P9505891455856761090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339451 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004134.P9505891455856761090

namespace A004134

/-- `record[A339451(n)+n]` -/
def P9505891455856761090.Spec : Prop :=
  ∀ n, P9505891455856761090.a n = A004134 n

end A004134

/-! ## A004134.P15724940955699656597

`A288933(n+1)-2`
-/

namespace A004134.P15724940955699656597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288933 (n + 1) - 2

end

end A004134.P15724940955699656597

namespace A004134

/-- `A288933(n+1)-2` -/
def P15724940955699656597.Spec : Prop :=
  ∀ n, P15724940955699656597.a n = A004134 n

end A004134

/-! ## A004134.P5616025754773276960

`A101925(n)-1+n`
-/

namespace A004134.P5616025754773276960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101925 n - 1 + (n : ℤ)

end

end A004134.P5616025754773276960

namespace A004134

/-- `A101925(n)-1+n` -/
def P5616025754773276960.Spec : Prop :=
  ∀ n, P5616025754773276960.a n = A004134 n

end A004134

/-! ## A004134.P18224673798032187691

`A011371(n)+2*n`
-/

namespace A004134.P18224673798032187691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n + (2 * n : ℤ)

end

end A004134.P18224673798032187691

namespace A004134

/-- `A011371(n)+2*n` -/
def P18224673798032187691.Spec : Prop :=
  ∀ n, P18224673798032187691.a n = A004134 n

end A004134

/-! ## A004134.P12599044960073155690

`3*n-A000120(n)`
-/

namespace A004134.P12599044960073155690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A000120 n

end

end A004134.P12599044960073155690

namespace A004134

/-- `3*n-A000120(n)` -/
def P12599044960073155690.Spec : Prop :=
  ∀ n, P12599044960073155690.a n = A004134 n

end A004134

/-! ## A004134.P3008683116436536

`A272666(n)-3*n`
-/

namespace A004134.P3008683116436536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272666 n - (3 * n : ℤ)

end

end A004134.P3008683116436536

namespace A004134

/-- `A272666(n)-3*n` -/
def P3008683116436536.Spec : Prop :=
  ∀ n, P3008683116436536.a n = A004134 n

end A004134

/-! ## A004134.P1092357081433019653

`4*n-A092391(n)`
-/

namespace A004134.P1092357081433019653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A092391 n

end

end A004134.P1092357081433019653

namespace A004134

/-- `4*n-A092391(n)` -/
def P1092357081433019653.Spec : Prop :=
  ∀ n, P1092357081433019653.a n = A004134 n

end A004134

/-! ## A004134.P8488969423518376727

`∑[abs(A123725(n))]-1`
-/

namespace A004134.P8488969423518376727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123725 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A004134.P8488969423518376727

namespace A004134

/-- `∑[abs(A123725(n))]-1` -/
def P8488969423518376727.Spec : Prop :=
  ∀ n, P8488969423518376727.a n = A004134 n

end A004134

/-! ## A004134.P7206598559837146042

`∑{d}[n, A297111(#)]+n`
-/

namespace A004134.P7206598559837146042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A297111 d + (n : ℤ)

end

end A004134.P7206598559837146042

namespace A004134

/-- `∑{d}[n, A297111(#)]+n` -/
def P7206598559837146042.Spec : Prop :=
  ∀ n, P7206598559837146042.a n = A004134 n

end A004134

/-! ## A004134.P11918221410769302816

`A086343(n+1)-(n+2)`
-/

namespace A004134.P11918221410769302816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086343 (n + 1) - (n + 2 : ℤ)

end

end A004134.P11918221410769302816

namespace A004134

/-- `A086343(n+1)-(n+2)` -/
def P11918221410769302816.Spec : Prop :=
  ∀ n, P11918221410769302816.a n = A004134 n

end A004134

/-!
# A004135: Additive bases: a(n) is the least integer k such that in the cyclic group Z_k there is a subset of n elements all pairs (of distinct elements) of which add up to a different sum (in Z_k).

The programs for A004135, there is no canonical definition to state claims against.
-/

/-! ## A004135.P6574620461732032012

`and(-∏{e}[n+1, #], A288583(n+1))`
-/

namespace A004135.P6574620461732032012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)) (A288583 (n + 1))

end

end A004135.P6574620461732032012

/-! ## A004135.P4599694868902592761

`∑[A279783(A099574(floor(ϕ*n)))]`
-/

namespace A004135.P4599694868902592761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279783 (A099574 ⌊Real.goldenRatio * (n : ℝ)⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004135.P4599694868902592761

/-! ## A004135.P16272275252888287993

`and(-A135900(n), A288583(n+1))`
-/

namespace A004135.P16272275252888287993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A135900 n) (A288583 (n + 1))

end

end A004135.P16272275252888287993

/-! ## A004135.P3740242457140159977

`and(-A138904(n), A288583(n+1))`
-/

namespace A004135.P3740242457140159977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A138904 n) (A288583 (n + 1))

end

end A004135.P3740242457140159977

/-!
# A004136: Additive bases: a(n) is the least integer k such that in the cyclic group Z_k there is a subset of n elements all pairs (of not necessarily distinct elements) of which add up to a different sum (in Z_k).

The programs for A004136, there is no canonical definition to state claims against.
-/

/-! ## A004136.P16871571576655842765

`A079074(n)+record[A163255(n+1)]`
-/

namespace A004136.P16871571576655842765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079074 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004136.P16871571576655842765

/-! ## A004136.P14444222212691040995

`A091480(∏{p}[∑[n+1], #])+∑[2*n]`
-/

namespace A004136.P14444222212691040995
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091480 (∏ p ∈ Nat.primeFactors (f1 n), p) + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A004136.P14444222212691040995

/-! ## A004136.P3186220994415019821

`A134247(∑[n])²-A319654(n)`
-/

namespace A004136.P3186220994415019821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134247 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - A319654 n

end

end A004136.P3186220994415019821

/-! ## A004136.P1081925273829493173

`A000688(A041999(n))+∑[2*n]`
-/

namespace A004136.P1081925273829493173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A041999 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A004136.P1081925273829493173

/-! ## A004136.P13254532899806237365

`A039735(A118022(n))+∑[2*n]`
-/

namespace A004136.P13254532899806237365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039735 (A118022 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A004136.P13254532899806237365

/-!
# A004137: Maximal number of edges in a graceful graph on n nodes.

The programs for A004137, there is no canonical definition to state claims against.
-/

/-! ## A004137.P3462048831059827818

`∑[A103297(n)%A003199(n)]`
-/

namespace A004137.P3462048831059827818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103297 n) (A003199 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004137.P3462048831059827818

/-! ## A004137.P6089363299842167140

`A057428(A000032(n+1))+∑[A103297(n)]`
-/

namespace A004137.P6089363299842167140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A000032 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004137.P6089363299842167140

/-! ## A004137.P18245720016272257352

`A057428(A002496(n+1))+∑[A103297(n)]`
-/

namespace A004137.P18245720016272257352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A002496 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004137.P18245720016272257352

/-! ## A004137.P8996412370107644478

`A057428(A004136(n+1))+∑[A103297(n)]`
-/

namespace A004137.P8996412370107644478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A004136 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004137.P8996412370107644478

/-! ## A004137.P8433597493493406223

`∑[A103297(n)]-A001222(A087562(n+1))`
-/

namespace A004137.P8433597493493406223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103297 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001222 (A087562 (n + 1)).toNat

end

end A004137.P8433597493493406223

/-!
# A004138: From a counter moving problem.

The programs for A004138, the canonical program `A004138.P4122402643005732364` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004138 has offset 1).

The definition of A004138 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004138.P4122402643005732364

`a(n-1)+a(n-2)-a(n-3)+2*a(n-4)+2` with `a(0)=1, a(1)=2, a(2)=3, a(3)=8`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004138

/-- `a(n-1)+a(n-2)-a(n-3)+2*a(n-4)+2` -/
def P4122402643005732364.Spec : Prop :=
  ∀ n, P4122402643005732364.a n = A004138 (n + 1)

theorem P4122402643005732364.correct : P4122402643005732364.Spec := by
  intro n
  simp only [A004138, Nat.add_sub_cancel]

end A004138

/-! ## A004138.P14698613448419814505

`A326024(A032555(n+1))-A034693(n+1)`
-/

namespace A004138.P14698613448419814505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326024 (A032555 (n + 1)).toNat - A034693 (n + 1)

end

end A004138.P14698613448419814505

namespace A004138

/-- `A326024(A032555(n+1))-A034693(n+1)` -/
def P14698613448419814505.Spec : Prop :=
  ∀ n, P14698613448419814505.a n = A004138 (n + 1)

end A004138

/-!
# A004139: Odd primes excluding 5.

The programs for A004139, the canonical program `A004139.P7741252772910998599` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004139 has offset 1).

The definition of A004139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004139.P7741252772910998599

`p?[a(n-1)+2]` with `a(0)=3, a(1)=7`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004139

/-- `p?[a(n-1)+2]` -/
def P7741252772910998599.Spec : Prop :=
  ∀ n, (P7741252772910998599.a n : ℤ) = A004139 (n + 1)

theorem P7741252772910998599.correct : P7741252772910998599.Spec := by
  intro n
  simp only [A004139, Nat.add_sub_cancel]

end A004139

/-! ## A004139.P8697744248732891297

`p?[2%(n+1)+2*n+1]`
-/

namespace A004139.P8697744248732891297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 % (n + 1) + (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A004139.P8697744248732891297

namespace A004139

/-- `p?[2%(n+1)+2*n+1]` -/
def P8697744248732891297.Spec : Prop :=
  ∀ n, (P8697744248732891297.a n : ℤ) = A004139 (n + 1)

end A004139

/-! ## A004139.P9530536267592331213

`A172367(n+1)+A040002(n)`
-/

namespace A004139.P9530536267592331213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1) + A040002 n

end

end A004139.P9530536267592331213

namespace A004139

/-- `A172367(n+1)+A040002(n)` -/
def P9530536267592331213.Spec : Prop :=
  ∀ n, P9530536267592331213.a n = A004139 (n + 1)

end A004139

/-! ## A004139.P491286249594784044

`A215848(n+1)-A000038(n)`
-/

namespace A004139.P491286249594784044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) - A000038 n

end

end A004139.P491286249594784044

namespace A004139

/-- `A215848(n+1)-A000038(n)` -/
def P491286249594784044.Spec : Prop :=
  ∀ n, P491286249594784044.a n = A004139 (n + 1)

end A004139

/-! ## A004139.P17359506454800592120

`∪[A071621(n+1), A112786(n)]`
-/

namespace A004139.P17359506454800592120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112786 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004139.P17359506454800592120

namespace A004139

/-- `∪[A071621(n+1), A112786(n)]` -/
def P17359506454800592120.Spec : Prop :=
  ∀ n, (P17359506454800592120.a n : ℤ) = A004139 (n + 1)

end A004139

/-! ## A004139.P6842349048596996748

`A211280(n+1)+A036263(n+1)`
-/

namespace A004139.P6842349048596996748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211280 (n + 1) + A036263 (n + 1)

end

end A004139.P6842349048596996748

namespace A004139

/-- `A211280(n+1)+A036263(n+1)` -/
def P6842349048596996748.Spec : Prop :=
  ∀ n, P6842349048596996748.a n = A004139 (n + 1)

end A004139

/-! ## A004139.P17948056286672581035

`∪[A296933(n+1), A034849(n+1)]`
-/

namespace A004139.P17948056286672581035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004139.P17948056286672581035

namespace A004139

/-- `∪[A296933(n+1), A034849(n+1)]` -/
def P17948056286672581035.Spec : Prop :=
  ∀ n, (P17948056286672581035.a n : ℤ) = A004139 (n + 1)

end A004139

/-! ## A004139.P11099995163241377785

`p?[char[1]+p?[2*n+1]]`
-/

namespace A004139.P11099995163241377785
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A004139.P11099995163241377785

namespace A004139

/-- `p?[char[1]+p?[2*n+1]]` -/
def P11099995163241377785.Spec : Prop :=
  ∀ n, (P11099995163241377785.a n : ℤ) = A004139 (n + 1)

end A004139

/-! ## A004139.P12402580450468881229

`A045319(n+2)`
-/

namespace A004139.P12402580450468881229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 2)

end

end A004139.P12402580450468881229

namespace A004139

/-- `A045319(n+2)` -/
def P12402580450468881229.Spec : Prop :=
  ∀ n, P12402580450468881229.a n = A004139 (n + 1)

end A004139

/-! ## A004139.P11890505183541355141

`A065091(A065475(n+1))`
-/

namespace A004139.P11890505183541355141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A065475 (n + 1)).toNat

end

end A004139.P11890505183541355141

namespace A004139

/-- `A065091(A065475(n+1))` -/
def P11890505183541355141.Spec : Prop :=
  ∀ n, P11890505183541355141.a n = A004139 (n + 1)

end A004139

/-! ## A004139.P3118125759048300912

`record[A161847(n+2)]`
-/

namespace A004139.P3118125759048300912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161847 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004139.P3118125759048300912

namespace A004139

/-- `record[A161847(n+2)]` -/
def P3118125759048300912.Spec : Prop :=
  ∀ n, P3118125759048300912.a n = A004139 (n + 1)

end A004139

/-! ## A004139.P11162759033155055058

`A000040(n+3-floor(acot(n)))`
-/

namespace A004139.P11162759033155055058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n + 3 : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A004139.P11162759033155055058

namespace A004139

/-- `A000040(n+3-floor(acot(n)))` -/
def P11162759033155055058.Spec : Prop :=
  ∀ n, P11162759033155055058.a n = A004139 (n + 1)

end A004139

/-! ## A004139.P17948337803828729712

`A000040(ceil(n+3-acot(n)))`
-/

namespace A004139.P17948337803828729712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ⌈(n + 3 : ℝ) - SequenceMachineLib.acot (n : ℝ)⌉.toNat

end

end A004139.P17948337803828729712

namespace A004139

/-- `A000040(ceil(n+3-acot(n)))` -/
def P17948337803828729712.Spec : Prop :=
  ∀ n, P17948337803828729712.a n = A004139 (n + 1)

end A004139

/-! ## A004139.P16342229859340987576

`A000040(xor(n+3, floor(acot(n))))`
-/

namespace A004139.P16342229859340987576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.xor (n + 3 : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A004139.P16342229859340987576

namespace A004139

/-- `A000040(xor(n+3, floor(acot(n))))` -/
def P16342229859340987576.Spec : Prop :=
  ∀ n, P16342229859340987576.a n = A004139 (n + 1)

end A004139

/-! ## A004139.P4739199719308784690

`p?[xor(C(2, n), A000040(n+1))]`
-/

namespace A004139.P4739199719308784690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.choose 2 n : ℤ) (A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A004139.P4739199719308784690

namespace A004139

/-- `p?[xor(C(2, n), A000040(n+1))]` -/
def P4739199719308784690.Spec : Prop :=
  ∀ n, P4739199719308784690.a n = A004139 (n + 1)

end A004139

/-! ## A004139.P1259840453371407598

`A000040(3-C(2, n+2)+n)`
-/

namespace A004139.P1259840453371407598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (3 - (Nat.choose 2 (n + 2) : ℤ) + (n : ℤ)).toNat

end

end A004139.P1259840453371407598

namespace A004139

/-- `A000040(3-C(2, n+2)+n)` -/
def P1259840453371407598.Spec : Prop :=
  ∀ n, P1259840453371407598.a n = A004139 (n + 1)

end A004139

/-! ## A004139.P18113431727332995105

`A000040(xor(n+3, C(2, n+2)))`
-/

namespace A004139.P18113431727332995105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.xor (n + 3) (Nat.choose 2 (n + 2)))

end

end A004139.P18113431727332995105

namespace A004139

/-- `A000040(xor(n+3, C(2, n+2)))` -/
def P18113431727332995105.Spec : Prop :=
  ∀ n, P18113431727332995105.a n = A004139 (n + 1)

end A004139

/-! ## A004139.P11115787878979955563

`A000040(n%a(n-1)+3)` with `a(0)=3`
-/

namespace A004139.P11115787878979955563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A000040 (Int.tmod (n : ℤ) (a (n - 1)) + 3).toNat

end

end A004139.P11115787878979955563

namespace A004139

/-- `A000040(n%a(n-1)+3)` -/
def P11115787878979955563.Spec : Prop :=
  ∀ n, P11115787878979955563.a n = A004139 (n + 1)

end A004139

/-!
# A004140: Number of nonempty labeled simple graphs on nodes chosen from an n-set.

The programs for A004140, there is no canonical definition to state claims against.
-/

/-! ## A004140.P1458814819900573544

`A006896(n)-1`
-/

namespace A004140.P1458814819900573544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006896 n - 1

end

end A004140.P1458814819900573544

/-! ## A004140.P5706075897167475704

`A379706(n)+A000225(n)`
-/

namespace A004140.P5706075897167475704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379706 n + A000225 n

end

end A004140.P5706075897167475704

/-! ## A004140.P15754605749559862331

`A057428(n+1)+A006896(n)`
-/

namespace A004140.P15754605749559862331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A006896 n

end

end A004140.P15754605749559862331

/-! ## A004140.P10778262145444633485

`A260196(n+2)+A006896(n)`
-/

namespace A004140.P10778262145444633485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A006896 n

end

end A004140.P10778262145444633485

/-! ## A004140.P6370999730167302665

`A280193(2*n+1)+A006896(n)`
-/

namespace A004140.P6370999730167302665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A006896 n

end

end A004140.P6370999730167302665

/-!
# A004141: Norm of a matrix.

The programs for A004141, there is no canonical definition to state claims against.
-/

/-! ## A004141.P16543543260162856719

`A259868(n+1)/(n+1)`
-/

namespace A004141.P16543543260162856719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259868 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A004141.P16543543260162856719

/-! ## A004141.P7998959603700540173

`A000010(A000079(n)*A045664(n))`
-/

namespace A004141.P7998959603700540173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000079 n * A045664 n).toNat

end

end A004141.P7998959603700540173

/-! ## A004141.P4921063610077716062

`A000079(n)*A057142(A000262(n))`
-/

namespace A004141.P4921063610077716062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A057142 (A000262 n).toNat

end

end A004141.P4921063610077716062

/-!
# A004142: a(n) = n*(3^n - 2^n).

The programs for A004142, the canonical program `A004142.P11338516985138851570` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004142 has offset 0).

The definition of A004142 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(3^n-2^n)` (program `A004142.P11338516985138851570`, by `A004142.P11338516985138851570.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004142.P11338516985138851570

`n*(3^n-2^n)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004142

/-- `n*(3^n-2^n)` -/
def P11338516985138851570.Spec : Prop :=
  ∀ n, P11338516985138851570.a n = A004142 n

theorem P11338516985138851570.correct : P11338516985138851570.Spec := by
  intro n
  simp only [A004142]

end A004142

/-! ## A004142.P12210612675294417064

`A036290(n)-A036289(n)`
-/

namespace A004142.P12210612675294417064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036290 n - A036289 n

end

end A004142.P12210612675294417064

namespace A004142

/-- `A036290(n)-A036289(n)` -/
def P12210612675294417064.Spec : Prop :=
  ∀ n, P12210612675294417064.a n = A004142 n

end A004142

/-! ## A004142.P4288547965305824185

`A152692(n)+n`
-/

namespace A004142.P4288547965305824185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152692 n + (n : ℤ)

end

end A004142.P4288547965305824185

namespace A004142

/-- `A152692(n)+n` -/
def P4288547965305824185.Spec : Prop :=
  ∀ n, P4288547965305824185.a n = A004142 n

end A004142

/-! ## A004142.P1765489566967666259

`n*A056182(n)/2`
-/

namespace A004142.P1765489566967666259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A056182 n : ℚ) / 2

end

end A004142.P1765489566967666259

namespace A004142

/-- `n*A056182(n)/2` -/
def P1765489566967666259.Spec : Prop :=
  ∀ n, P1765489566967666259.a n = (A004142 n : ℚ)

end A004142

/-! ## A004142.P10132117907647317187

`n*A083323(n)-n`
-/

namespace A004142.P10132117907647317187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A083323 n - (n : ℤ)

end

end A004142.P10132117907647317187

namespace A004142

/-- `n*A083323(n)-n` -/
def P10132117907647317187.Spec : Prop :=
  ∀ n, P10132117907647317187.a n = A004142 n

end A004142

/-! ## A004142.P7583757623226914769

`lcm(n, n*A001047(n))`
-/

namespace A004142.P7583757623226914769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) * A001047 n)

end

end A004142.P7583757623226914769

namespace A004142

/-- `lcm(n, n*A001047(n))` -/
def P7583757623226914769.Spec : Prop :=
  ∀ n, (P7583757623226914769.a n : ℤ) = A004142 n

end A004142

/-! ## A004142.P4491664827363085117

`n*Δ[A101052(n)]/2`
-/

namespace A004142.P4491664827363085117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101052 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A004142.P4491664827363085117

namespace A004142

/-- `n*Δ[A101052(n)]/2` -/
def P4491664827363085117.Spec : Prop :=
  ∀ n, P4491664827363085117.a n = (A004142 n : ℚ)

end A004142

/-! ## A004142.P6788380998286334670

`abs(n*Δ[A000392(n+1)])`
-/

namespace A004142.P6788380998286334670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (f1 (n + 1) - f1 n)|

end

end A004142.P6788380998286334670

namespace A004142

/-- `abs(n*Δ[A000392(n+1)])` -/
def P6788380998286334670.Spec : Prop :=
  ∀ n, P6788380998286334670.a n = A004142 n

end A004142

/-! ## A004142.P7478081898048990652

`n*Δ[A003063(n+1)]/2`
-/

namespace A004142.P7478081898048990652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003063 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A004142.P7478081898048990652

namespace A004142

/-- `n*Δ[A003063(n+1)]/2` -/
def P7478081898048990652.Spec : Prop :=
  ∀ n, P7478081898048990652.a n = (A004142 n : ℚ)

end A004142

/-! ## A004142.P13605339502748279091

`n*Δ[A028243(n+1)]/2`
-/

namespace A004142.P13605339502748279091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028243 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A004142.P13605339502748279091

namespace A004142

/-- `n*Δ[A028243(n+1)]/2` -/
def P13605339502748279091.Spec : Prop :=
  ∀ n, P13605339502748279091.a n = (A004142 n : ℚ)

end A004142

/-! ## A004142.P2910053664920360552

`A050914(n)-A002064(n)`
-/

namespace A004142.P2910053664920360552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050914 n - A002064 n

end

end A004142.P2910053664920360552

namespace A004142

/-- `A050914(n)-A002064(n)` -/
def P2910053664920360552.Spec : Prop :=
  ∀ n, P2910053664920360552.a n = A004142 n

end A004142

/-! ## A004142.P17076309837909032176

`abs(A001047(n)*A001489(n))`
-/

namespace A004142.P17076309837909032176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001047 n * A001489 n|

end

end A004142.P17076309837909032176

namespace A004142

/-- `abs(A001047(n)*A001489(n))` -/
def P17076309837909032176.Spec : Prop :=
  ∀ n, P17076309837909032176.a n = A004142 n

end A004142

/-! ## A004142.P11254972288620367274

`A036290(n)+1-A002064(n)`
-/

namespace A004142.P11254972288620367274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036290 n + (1 - A002064 n)

end

end A004142.P11254972288620367274

namespace A004142

/-- `A036290(n)+1-A002064(n)` -/
def P11254972288620367274.Spec : Prop :=
  ∀ n, P11254972288620367274.a n = A004142 n

end A004142

/-! ## A004142.P9777436545310677044

`A036290(n)-A097064(n+1)`
-/

namespace A004142.P9777436545310677044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036290 n - A097064 (n + 1)

end

end A004142.P9777436545310677044

namespace A004142

/-- `A036290(n)-A097064(n+1)` -/
def P9777436545310677044.Spec : Prop :=
  ∀ n, P9777436545310677044.a n = A004142 n

end A004142

/-! ## A004142.P3066412978349406114

`A036290(n)-2*A001787(n)`
-/

namespace A004142.P3066412978349406114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036290 n - 2 * A001787 n

end

end A004142.P3066412978349406114

namespace A004142

/-- `A036290(n)-2*A001787(n)` -/
def P3066412978349406114.Spec : Prop :=
  ∀ n, P3066412978349406114.a n = A004142 n

end A004142

/-! ## A004142.P10713084954696045624

`A036290(n)+n-A069229(n)`
-/

namespace A004142.P10713084954696045624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036290 n + ((n : ℤ) - A069229 n)

end

end A004142.P10713084954696045624

namespace A004142

/-- `A036290(n)+n-A069229(n)` -/
def P10713084954696045624.Spec : Prop :=
  ∀ n, P10713084954696045624.a n = A004142 n

end A004142

/-! ## A004142.P5678722198468310900

`A036290(n)-n*A000079(n)`
-/

namespace A004142.P5678722198468310900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036290 n - (n : ℤ) * A000079 n

end

end A004142.P5678722198468310900

namespace A004142

/-- `A036290(n)-n*A000079(n)` -/
def P5678722198468310900.Spec : Prop :=
  ∀ n, P5678722198468310900.a n = A004142 n

end A004142

/-! ## A004142.P7252800116530249771

`n*A000244(n)-A036289(n)`
-/

namespace A004142.P7252800116530249771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000244 n - A036289 n

end

end A004142.P7252800116530249771

namespace A004142

/-- `n*A000244(n)-A036289(n)` -/
def P7252800116530249771.Spec : Prop :=
  ∀ n, P7252800116530249771.a n = A004142 n

end A004142

/-! ## A004142.P10692434972566729556

`n*(A000244(n)-A000051(n))+n`
-/

namespace A004142.P10692434972566729556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000244 n - A000051 n) + (n : ℤ)

end

end A004142.P10692434972566729556

namespace A004142

/-- `n*(A000244(n)-A000051(n))+n` -/
def P10692434972566729556.Spec : Prop :=
  ∀ n, P10692434972566729556.a n = A004142 n

end A004142

/-! ## A004142.P17064671887332623617

`A008683(12*n+8)+n*A001047(n)`
-/

namespace A004142.P17064671887332623617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (12 * n + 8) + (n : ℤ) * A001047 n

end

end A004142.P17064671887332623617

namespace A004142

/-- `A008683(12*n+8)+n*A001047(n)` -/
def P17064671887332623617.Spec : Prop :=
  ∀ n, P17064671887332623617.a n = A004142 n

end A004142

/-!
# A004144: Nonhypotenuse numbers (indices of positive squares that are not the sums of 2 distinct nonzero squares).

The programs for A004144, the canonical program `A004144.P17382156593889680767` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004144 has offset 1).

The definition of A004144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004144.P3833839198834628250

`sqrt(A050804(n+1)/2)`
-/

namespace A004144.P3833839198834628250
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A050804 (n + 1) : ℚ) / 2 : ℝ)

end

end A004144.P3833839198834628250

namespace A004144

/-- `sqrt(A050804(n+1)/2)` -/
def P3833839198834628250.Spec : Prop :=
  ∀ n, P3833839198834628250.a n = (A004144 (n + 1) : ℝ)

end A004144

/-! ## A004144.P17382156593889680767

`sqrt(A081324(n+2)/2)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A004144

/-- `sqrt(A081324(n+2)/2)` -/
def P17382156593889680767.Spec : Prop :=
  ∀ n, P17382156593889680767.a n = (A004144 (n + 1) : ℝ)

end A004144

/-! ## A004144.P16877114503888441577

`A290501(n+1)/A290501(A057237(2*(n+2)))`
-/

namespace A004144.P16877114503888441577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290501 (n + 1) : ℚ) / (A290501 (A057237 (2 * (n + 2))).toNat : ℚ)

end

end A004144.P16877114503888441577

namespace A004144

/-- `A290501(n+1)/A290501(A057237(2*(n+2)))` -/
def P16877114503888441577.Spec : Prop :=
  ∀ n, P16877114503888441577.a n = (A004144 (n + 1) : ℚ)

end A004144

/-! ## A004144.P15503836206408396056

`eq[0, A046080(n+1)]+1`
-/

namespace A004144.P15503836206408396056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A004144.P15503836206408396056

namespace A004144

/-- `eq[0, A046080(n+1)]+1` -/
def P15503836206408396056.Spec : Prop :=
  ∀ n, (P15503836206408396056.a n : ℤ) = A004144 (n + 1)

end A004144

/-! ## A004144.P12087868685143213901

`sqrt(A000548(n+1))`
-/

namespace A004144.P12087868685143213901
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000548 (n + 1) : ℝ)

end

end A004144.P12087868685143213901

namespace A004144

/-- `sqrt(A000548(n+1))` -/
def P12087868685143213901.Spec : Prop :=
  ∀ n, P12087868685143213901.a n = (A004144 (n + 1) : ℝ)

end A004144

/-! ## A004144.P13572016040365778585

`eq[4, A046109(n)]`
-/

namespace A004144.P13572016040365778585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004144.P13572016040365778585

namespace A004144

/-- `eq[4, A046109(n)]` -/
def P13572016040365778585.Spec : Prop :=
  ∀ n, (P13572016040365778585.a n : ℤ) = A004144 (n + 1)

end A004144

/-! ## A004144.P2023627522986585003

`record[A072438(n+1)]`
-/

namespace A004144.P2023627522986585003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004144.P2023627522986585003

namespace A004144

/-- `record[A072438(n+1)]` -/
def P2023627522986585003.Spec : Prop :=
  ∀ n, P2023627522986585003.a n = A004144 (n + 1)

end A004144

/-! ## A004144.P4281774465697491044

`eq[1, A170818(n+1)]+1`
-/

namespace A004144.P4281774465697491044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A004144.P4281774465697491044

namespace A004144

/-- `eq[1, A170818(n+1)]+1` -/
def P4281774465697491044.Spec : Prop :=
  ∀ n, (P4281774465697491044.a n : ℤ) = A004144 (n + 1)

end A004144

/-! ## A004144.P11089327261183471545

`eq[1, A256452(n+1)]+1`
-/

namespace A004144.P11089327261183471545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256452 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A004144.P11089327261183471545

namespace A004144

/-- `eq[1, A256452(n+1)]+1` -/
def P11089327261183471545.Spec : Prop :=
  ∀ n, (P11089327261183471545.a n : ℤ) = A004144 (n + 1)

end A004144

/-! ## A004144.P17761685687827375406

`eq[1, A286361(n+1)]+1`
-/

namespace A004144.P17761685687827375406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A004144.P17761685687827375406

namespace A004144

/-- `eq[1, A286361(n+1)]+1` -/
def P17761685687827375406.Spec : Prop :=
  ∀ n, (P17761685687827375406.a n : ℤ) = A004144 (n + 1)

end A004144

/-! ## A004144.P11307791538404455613

`lt[A005078(n+1), 1]+1`
-/

namespace A004144.P11307791538404455613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005078 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A004144.P11307791538404455613

namespace A004144

/-- `lt[A005078(n+1), 1]+1` -/
def P11307791538404455613.Spec : Prop :=
  ∀ n, (P11307791538404455613.a n : ℤ) = A004144 (n + 1)

end A004144

/-! ## A004144.P5420185484528938465

`lt[A005079(n+1), 1]+1`
-/

namespace A004144.P5420185484528938465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005079 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A004144.P5420185484528938465

namespace A004144

/-- `lt[A005079(n+1), 1]+1` -/
def P5420185484528938465.Spec : Prop :=
  ∀ n, (P5420185484528938465.a n : ℤ) = A004144 (n + 1)

end A004144

/-! ## A004144.P3876716884368791930

`lt[A005080(n+1), 1]+1`
-/

namespace A004144.P3876716884368791930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005080 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A004144.P3876716884368791930

namespace A004144

/-- `lt[A005080(n+1), 1]+1` -/
def P3876716884368791930.Spec : Prop :=
  ∀ n, (P3876716884368791930.a n : ℤ) = A004144 (n + 1)

end A004144

/-! ## A004144.P11702201081549171079

`lt[A005081(n+1), 1]+1`
-/

namespace A004144.P11702201081549171079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005081 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A004144.P11702201081549171079

namespace A004144

/-- `lt[A005081(n+1), 1]+1` -/
def P11702201081549171079.Spec : Prop :=
  ∀ n, (P11702201081549171079.a n : ℤ) = A004144 (n + 1)

end A004144

/-! ## A004144.P12891171991189716153

`lt[A108707(n+1), 1]+1`
-/

namespace A004144.P12891171991189716153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108707 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A004144.P12891171991189716153

namespace A004144

/-- `lt[A108707(n+1), 1]+1` -/
def P12891171991189716153.Spec : Prop :=
  ∀ n, (P12891171991189716153.a n : ℤ) = A004144 (n + 1)

end A004144

/-! ## A004144.P14474618525456538767

`lt[A108708(n+1), 1]+1`
-/

namespace A004144.P14474618525456538767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108708 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A004144.P14474618525456538767

namespace A004144

/-- `lt[A108708(n+1), 1]+1` -/
def P14474618525456538767.Spec : Prop :=
  ∀ n, (P14474618525456538767.a n : ℤ) = A004144 (n + 1)

end A004144

/-! ## A004144.P17847085724517787125

`lt[A309228(n+1), 2]+1`
-/

namespace A004144.P17847085724517787125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309228 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A004144.P17847085724517787125

namespace A004144

/-- `lt[A309228(n+1), 2]+1` -/
def P17847085724517787125.Spec : Prop :=
  ∀ n, (P17847085724517787125.a n : ℤ) = A004144 (n + 1)

end A004144

/-! ## A004144.P210033513443690073

`eq[A010152(n), A063014(n)]`
-/

namespace A004144.P210033513443690073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010152 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004144.P210033513443690073

namespace A004144

/-- `eq[A010152(n), A063014(n)]` -/
def P210033513443690073.Spec : Prop :=
  ∀ n, (P210033513443690073.a n : ℤ) = A004144 (n + 1)

end A004144

/-! ## A004144.P18185683698465726165

`eq[A010227(n), A063014(n)]`
-/

namespace A004144.P18185683698465726165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010227 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004144.P18185683698465726165

namespace A004144

/-- `eq[A010227(n), A063014(n)]` -/
def P18185683698465726165.Spec : Prop :=
  ∀ n, (P18185683698465726165.a n : ℤ) = A004144 (n + 1)

end A004144

/-! ## A004144.P4725729023729035450

`eq[A011558(n), A063014(n)]`
-/

namespace A004144.P4725729023729035450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004144.P4725729023729035450

namespace A004144

/-- `eq[A011558(n), A063014(n)]` -/
def P4725729023729035450.Spec : Prop :=
  ∀ n, (P4725729023729035450.a n : ℤ) = A004144 (n + 1)

end A004144

/-!
# A004145: Number of degenerate simplices in n-cube.

The programs for A004145, there is no canonical definition to state claims against.
-/

/-! ## A004145.P908766298008071037

`A268408(A295058(n))`
-/

namespace A004145.P908766298008071037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268408 (A295058 n).toNat

end

end A004145.P908766298008071037

/-!
# A004146: Alternate Lucas numbers - 2.

The programs for A004146, the canonical program `A004146.P7346826017881566823` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004146 has offset 0).

The definition of A004146 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004146.P13998536216504526653

`A005248(n)-2`
-/

namespace A004146.P13998536216504526653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n - 2

end

end A004146.P13998536216504526653

namespace A004146

/-- `A005248(n)-2` -/
def P13998536216504526653.Spec : Prop :=
  ∀ n, P13998536216504526653.a n = A004146 n

end A004146

/-! ## A004146.P7346826017881566823

`A000032(2*n)-2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004146

/-- `A000032(2*n)-2` -/
def P7346826017881566823.Spec : Prop :=
  ∀ n, P7346826017881566823.a n = A004146 n

theorem P7346826017881566823.correct : P7346826017881566823.Spec := by
  intro n
  simp only [A004146]

end A004146

/-! ## A004146.P9039750127711463153

`4*a(n-1)-4*a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A004146.P9039750127711463153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2) + a (n - 3)

end

end A004146.P9039750127711463153

namespace A004146

/-- `4*a(n-1)-4*a(n-2)+a(n-3)` -/
def P9039750127711463153.Spec : Prop :=
  ∀ n, P9039750127711463153.a n = A004146 n

end A004146

/-! ## A004146.P14597720786437031281

`floor((ϕ^n)²)-1`
-/

namespace A004146.P14597720786437031281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.goldenRatio ^ n) ^ 2⌋ - 1

end

end A004146.P14597720786437031281

namespace A004146

/-- `floor((ϕ^n)²)-1` -/
def P14597720786437031281.Spec : Prop :=
  ∀ n, P14597720786437031281.a n = A004146 n

end A004146

/-! ## A004146.P15389059172413693196

`floor(record[(-ϕ)^n-1])`
-/

namespace A004146.P15389059172413693196
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-Real.goldenRatio) ^ n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A004146.P15389059172413693196

namespace A004146

/-- `floor(record[(-ϕ)^n-1])` -/
def P15389059172413693196.Spec : Prop :=
  ∀ n, P15389059172413693196.a n = A004146 n

end A004146

/-! ## A004146.P17822028553776132161

`xor(-floor((ϕ^n)²), -1)`
-/

namespace A004146.P17822028553776132161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-⌊(Real.goldenRatio ^ n) ^ 2⌋) (-1)

end

end A004146.P17822028553776132161

namespace A004146

/-- `xor(-floor((ϕ^n)²), -1)` -/
def P17822028553776132161.Spec : Prop :=
  ∀ n, P17822028553776132161.a n = A004146 n

end A004146

/-! ## A004146.P6727345015109917999

`(3-(a(n-2)-2)/a(n-1))*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A004146.P6727345015109917999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (3 - (a (n - 2) - 2) / a (n - 1)) * a (n - 1)

end

end A004146.P6727345015109917999

namespace A004146

/-- `(3-(a(n-2)-2)/a(n-1))*a(n-1)` -/
def P6727345015109917999.Spec : Prop :=
  ∀ n, P6727345015109917999.a n = (A004146 n : ℚ)

end A004146

/-! ## A004146.P7289039729494358001

`A001350(2*n)`
-/

namespace A004146.P7289039729494358001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001350 (2 * n)

end

end A004146.P7289039729494358001

namespace A004146

/-- `A001350(2*n)` -/
def P7289039729494358001.Spec : Prop :=
  ∀ n, P7289039729494358001.a n = A004146 n

end A004146

/-! ## A004146.P9784951916305897984

`∑[record[A005013(n)]]`
-/

namespace A004146.P9784951916305897984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005013 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004146.P9784951916305897984

namespace A004146

/-- `∑[record[A005013(n)]]` -/
def P9784951916305897984.Spec : Prop :=
  ∀ n, P9784951916305897984.a n = A004146 n

end A004146

/-! ## A004146.P9372447647131057639

`record[A005247(n)-2]`
-/

namespace A004146.P9372447647131057639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004146.P9372447647131057639

namespace A004146

/-- `record[A005247(n)-2]` -/
def P9372447647131057639.Spec : Prop :=
  ∀ n, P9372447647131057639.a n = A004146 n

end A004146

/-! ## A004146.P7885933200857768067

`∑{d}[2*n, A031367(#)]`
-/

namespace A004146.P7885933200857768067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A031367 d

end

end A004146.P7885933200857768067

namespace A004146

/-- `∑{d}[2*n, A031367(#)]` -/
def P7885933200857768067.Spec : Prop :=
  ∀ n, P7885933200857768067.a n = A004146 n

end A004146

/-! ## A004146.P5091285951419203841

`∑[record[A210209(2*n)]]`
-/

namespace A004146.P5091285951419203841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210209 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004146.P5091285951419203841

namespace A004146

/-- `∑[record[A210209(2*n)]]` -/
def P5091285951419203841.Spec : Prop :=
  ∀ n, P5091285951419203841.a n = A004146 n

end A004146

/-! ## A004146.P10298836654151239720

`∑{d}[n, #*A032170(#)]`
-/

namespace A004146.P10298836654151239720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A032170 d

end

end A004146.P10298836654151239720

namespace A004146

/-- `∑{d}[n, #*A032170(#)]` -/
def P10298836654151239720.Spec : Prop :=
  ∀ n, P10298836654151239720.a n = A004146 n

end A004146

/-! ## A004146.P12721101587063164053

`abs(2-A005247(2*n))`
-/

namespace A004146.P12721101587063164053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A005247 (2 * n)|

end

end A004146.P12721101587063164053

namespace A004146

/-- `abs(2-A005247(2*n))` -/
def P12721101587063164053.Spec : Prop :=
  ∀ n, P12721101587063164053.a n = A004146 n

end A004146

/-! ## A004146.P8975064590978243193

`record[A061084(n+1)-2]`
-/

namespace A004146.P8975064590978243193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061084 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004146.P8975064590978243193

namespace A004146

/-- `record[A061084(n+1)-2]` -/
def P8975064590978243193.Spec : Prop :=
  ∀ n, P8975064590978243193.a n = A004146 n

end A004146

/-! ## A004146.P2236433430352039590

`record[A063726(n+1)-2]`
-/

namespace A004146.P2236433430352039590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063726 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004146.P2236433430352039590

namespace A004146

/-- `record[A063726(n+1)-2]` -/
def P2236433430352039590.Spec : Prop :=
  ∀ n, P2236433430352039590.a n = A004146 n

end A004146

/-! ## A004146.P4608420611837729307

`A301653(A004273(n))`
-/

namespace A004146.P4608420611837729307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301653 (A004273 n).toNat

end

end A004146.P4608420611837729307

namespace A004146

/-- `A301653(A004273(n))` -/
def P4608420611837729307.Spec : Prop :=
  ∀ n, P4608420611837729307.a n = A004146 n

end A004146

/-! ## A004146.P3189721144689772853

`A005013(n)*A203976(n)`
-/

namespace A004146.P3189721144689772853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005013 n * A203976 n

end

end A004146.P3189721144689772853

namespace A004146

/-- `A005013(n)*A203976(n)` -/
def P3189721144689772853.Spec : Prop :=
  ∀ n, P3189721144689772853.a n = A004146 n

end A004146

/-!
# A004148: Generalized Catalan numbers: a(n+1) = a(n) + Sum_{k=1..n-1} a(k)*a(n-1-k).

The programs for A004148, there is no canonical definition to state claims against.
-/

/-! ## A004148.P1273237533441481930

`A088518(2*n)+A088518(2*n+1)-A088518(2*n+2)`
-/

namespace A004148.P1273237533441481930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088518 (2 * n) + A088518 (2 * n + 1) - A088518 (2 * n + 2)

end

end A004148.P1273237533441481930

/-! ## A004148.P10017490053250253235

`A203019(n+2)`
-/

namespace A004148.P10017490053250253235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203019 (n + 2)

end

end A004148.P10017490053250253235

/-! ## A004148.P543462124767759218

`A292460(abs(1-n))`
-/

namespace A004148.P543462124767759218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292460 |1 - (n : ℤ)|.toNat

end

end A004148.P543462124767759218

/-! ## A004148.P7040053997522749617

`abs(A292461(n+2))`
-/

namespace A004148.P7040053997522749617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292461 (n + 2)|

end

end A004148.P7040053997522749617

/-! ## A004148.P5157606671748397875

`∑[∑[A097779(n)]]-n`
-/

namespace A004148.P5157606671748397875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097779 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A004148.P5157606671748397875

/-! ## A004148.P13295688826628978152

`A325920(n)+A325918(n)`
-/

namespace A004148.P13295688826628978152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325920 n + A325918 n

end

end A004148.P13295688826628978152

/-! ## A004148.P10179103966222573398

`A350114(n+1)+A350114(n)`
-/

namespace A004148.P10179103966222573398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350114 (n + 1) + A350114 n

end

end A004148.P10179103966222573398

/-! ## A004148.P18030232700515615622

`-A292461(A131732(2*n)+1)`
-/

namespace A004148.P18030232700515615622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A292461 (A131732 (2 * n) + 1).toNat

end

end A004148.P18030232700515615622

/-! ## A004148.P13185540042478028640

`char[A292471(n+1)]-A292461(n+2)`
-/

namespace A004148.P13185540042478028640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292471 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A292461 (n + 2)

end

end A004148.P13185540042478028640

/-! ## A004148.P13894162514148317854

`char[A292486(n+4)]-A292461(n+2)`
-/

namespace A004148.P13894162514148317854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292486 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A292461 (n + 2)

end

end A004148.P13894162514148317854

/-! ## A004148.P817801958897971258

`A089735(n)-Δ[A292460(n)]`
-/

namespace A004148.P817801958897971258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292460 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089735 n - (f1 (n + 1) - f1 n)

end

end A004148.P817801958897971258

/-! ## A004148.P10958284049532124458

`∑[A088518(2*n)]-Δ[A088518(2*n)]`
-/

namespace A004148.P10958284049532124458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088518 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088518 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (f2 (n + 1) - f2 n)

end

end A004148.P10958284049532124458

/-! ## A004148.P15783841377526428153

`A088518(2*n+1)-Δ[A088518(2*n)]`
-/

namespace A004148.P15783841377526428153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088518 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088518 (2 * n + 1) - (f1 (n + 1) - f1 n)

end

end A004148.P15783841377526428153

/-! ## A004148.P5249900455424600129

`A097860(∑[ceil(n/2)])`
-/

namespace A004148.P5249900455424600129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097860 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A004148.P5249900455424600129

/-! ## A004148.P9381178804234270017

`A273713(∑[n-1]+3)`
-/

namespace A004148.P9381178804234270017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273713 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A004148.P9381178804234270017

/-! ## A004148.P9428692388442221378

`A097724(∑[n])`
-/

namespace A004148.P9428692388442221378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097724 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004148.P9428692388442221378

/-! ## A004148.P7018449717800308016

`A064645(∑[n+1]+1)`
-/

namespace A004148.P7018449717800308016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064645 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A004148.P7018449717800308016

/-! ## A004148.P14826349637282259609

`A162981(∑[n+1]+1)`
-/

namespace A004148.P14826349637282259609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162981 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A004148.P14826349637282259609

/-! ## A004148.P13360396176862925367

`A212363(∑[n+3])`
-/

namespace A004148.P13360396176862925367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212363 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004148.P13360396176862925367

/-!
# A004149: Generalized Catalan numbers: a(n+1) = a(n) + Sum_{k=2..n-1} a(k)*a(n-1-k).

The programs for A004149, there is no canonical definition to state claims against.
-/

/-! ## A004149.P8499504269934241899

`A064645(∑[n+2]+3)`
-/

namespace A004149.P8499504269934241899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064645 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A004149.P8499504269934241899

/-! ## A004149.P9240939911974110153

`A258709(∑[n]+2%(n+1))`
-/

namespace A004149.P9240939911974110153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 (∑ j ∈ Finset.range (n + 1), f1 j + 2 % (n + 1))

end

end A004149.P9240939911974110153

/-! ## A004149.P6053755814703257508

`A258709(A238531(n)+n)`
-/

namespace A004149.P6053755814703257508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 (A238531 n + (n : ℤ)).toNat

end

end A004149.P6053755814703257508

/-! ## A004149.P7616312429458746976

`A258709(A133263(A063524(n)+n))`
-/

namespace A004149.P7616312429458746976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 (A133263 (A063524 n + (n : ℤ)).toNat).toNat

end

end A004149.P7616312429458746976

/-! ## A004149.P7093736964646005769

`A258709(A133263(n))-A063524(n)`
-/

namespace A004149.P7093736964646005769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 (A133263 n).toNat - A063524 n

end

end A004149.P7093736964646005769

/-! ## A004149.P7875348204338469581

`A258709(A133263(n)-A130713(n))`
-/

namespace A004149.P7875348204338469581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 (A133263 n - A130713 n).toNat

end

end A004149.P7875348204338469581

/-! ## A004149.P12440879164517412161

`A258709(A000096(n)-A289207(n))`
-/

namespace A004149.P12440879164517412161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 (A000096 n - A289207 n).toNat

end

end A004149.P12440879164517412161

/-! ## A004149.P11341684934779571040

`A258709(A133263(n)%A000079(n))`
-/

namespace A004149.P11341684934779571040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 (Int.tmod (A133263 n) (A000079 n)).toNat

end

end A004149.P11341684934779571040

/-! ## A004149.P15141505378458806014

`A258709(and(A152950(n+1)-1, A000225(n)))`
-/

namespace A004149.P15141505378458806014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 (Int.land (A152950 (n + 1) - 1) (A000225 n)).toNat

end

end A004149.P15141505378458806014

/-!
# A004150: Euler numbers written backwards.

The programs for A004150, there is no canonical definition to state claims against.
-/

/-! ## A004150.P16832586807442362413

`A004086(A000111(n))`
-/

namespace A004150.P16832586807442362413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A000111 n).toNat

end

end A004150.P16832586807442362413

/-! ## A004150.P1683690374132185495

`A004086(round(2*n!*(2/π)^(n+1)))`
-/

namespace A004150.P1683690374132185495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway ((2 * Nat.factorial n : ℝ) * (2 / Real.pi) ^ (n + 1))).toNat

end

end A004150.P1683690374132185495

/-! ## A004150.P4714842158933265077

`A004086(A275711(n))`
-/

namespace A004150.P4714842158933265077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A275711 n).toNat

end

end A004150.P4714842158933265077

/-! ## A004150.P9579377938520448047

`A004086(abs(A346838(n)))`
-/

namespace A004150.P9579377938520448047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 |A346838 n|.toNat

end

end A004150.P9579377938520448047

/-! ## A004150.P15872947948398458549

`A321474(abs(A346838(n)))`
-/

namespace A004150.P15872947948398458549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321474 |A346838 n|.toNat

end

end A004150.P15872947948398458549

/-!
# A004151: Omit trailing zeros from n.

The programs for A004151, the canonical program `A004151.P17925112897147848492` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004151 has offset 1).

The definition of A004151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004151.P17925112897147848492

`(n+1)/10^val(n+1, 10)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004151

/-- `(n+1)/10^val(n+1, 10)` -/
def P17925112897147848492.Spec : Prop :=
  ∀ n, P17925112897147848492.a n = (A004151 (n + 1) : ℚ)

end A004151

/-! ## A004151.P8818054249826358362

`(n+1)*10^-val(n+1, 10)`
-/

namespace A004151.P8818054249826358362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (10 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 10 : ℤ) : ℤ)

end

end A004151.P8818054249826358362

namespace A004151

/-- `(n+1)*10^-val(n+1, 10)` -/
def P8818054249826358362.Spec : Prop :=
  ∀ n, P8818054249826358362.a n = (A004151 (n + 1) : ℚ)

end A004151

/-! ## A004151.P14184841522164269514

`(n+1)/(A199344(n)-n)`
-/

namespace A004151.P14184841522164269514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A199344 n - (n : ℤ) : ℚ)

end

end A004151.P14184841522164269514

namespace A004151

/-- `(n+1)/(A199344(n)-n)` -/
def P14184841522164269514.Spec : Prop :=
  ∀ n, P14184841522164269514.a n = (A004151 (n + 1) : ℚ)

end A004151

/-! ## A004151.P18321752643329807421

`A004086(A004086(n+1))`
-/

namespace A004151.P18321752643329807421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A004086 (n + 1)).toNat

end

end A004151.P18321752643329807421

namespace A004151

/-- `A004086(A004086(n+1))` -/
def P18321752643329807421.Spec : Prop :=
  ∀ n, P18321752643329807421.a n = A004151 (n + 1)

end A004151

/-! ## A004151.P13536048542256334892

`A084011(A084011(n+1))`
-/

namespace A004151.P13536048542256334892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084011 (A084011 (n + 1)).toNat

end

end A004151.P13536048542256334892

namespace A004151

/-- `A084011(A084011(n+1))` -/
def P13536048542256334892.Spec : Prop :=
  ∀ n, P13536048542256334892.a n = A004151 (n + 1)

end A004151

/-! ## A004151.P3516358243606441913

`A083822(A083822(n+1))`
-/

namespace A004151.P3516358243606441913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083822 (A083822 (n + 1)).toNat

end

end A004151.P3516358243606441913

namespace A004151

/-- `A083822(A083822(n+1))` -/
def P3516358243606441913.Spec : Prop :=
  ∀ n, P3516358243606441913.a n = A004151 (n + 1)

end A004151

/-! ## A004151.P3905188259076128154

`A083824(A083824(n+1))`
-/

namespace A004151.P3905188259076128154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083824 (A083824 (n + 1)).toNat

end

end A004151.P3905188259076128154

namespace A004151

/-- `A083824(A083824(n+1))` -/
def P3905188259076128154.Spec : Prop :=
  ∀ n, P3905188259076128154.a n = A004151 (n + 1)

end A004151

/-! ## A004151.P3781619730750878798

`A135020(2*A135020(2*(n+1)))`
-/

namespace A004151.P3781619730750878798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135020 (2 * A135020 (2 * (n + 1))).toNat

end

end A004151.P3781619730750878798

namespace A004151

/-- `A135020(2*A135020(2*(n+1)))` -/
def P3781619730750878798.Spec : Prop :=
  ∀ n, P3781619730750878798.a n = A004151 (n + 1)

end A004151

/-! ## A004151.P10604024038259008692

`A068636(A008592(A068636(A008592(n+1))))`
-/

namespace A004151.P10604024038259008692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068636 (A008592 (A068636 (A008592 (n + 1)).toNat).toNat).toNat

end

end A004151.P10604024038259008692

namespace A004151

/-- `A068636(A008592(A068636(A008592(n+1))))` -/
def P10604024038259008692.Spec : Prop :=
  ∀ n, P10604024038259008692.a n = A004151 (n + 1)

end A004151

/-! ## A004151.P10916742833046446886

`A061816(n+1)/A061906(n+1)`
-/

namespace A004151.P10916742833046446886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061816 (n + 1) : ℚ) / (A061906 (n + 1) : ℚ)

end

end A004151.P10916742833046446886

namespace A004151

/-- `A061816(n+1)/A061906(n+1)` -/
def P10916742833046446886.Spec : Prop :=
  ∀ n, P10916742833046446886.a n = (A004151 (n + 1) : ℚ)

end A004151

/-!
# A004152: Sum of digits of n!.

The programs for A004152, there is no canonical definition to state claims against.
-/

/-! ## A004152.P15052360236968112512

`∑{digits}[A181952(n), #]`
-/

namespace A004152.P15052360236968112512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004152.P15052360236968112512

/-! ## A004152.P44808733980417037

`∑{digits}[A356757(n), #]`
-/

namespace A004152.P44808733980417037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356757 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004152.P44808733980417037

/-! ## A004152.P15744071780875141241

`∑{digits}[A004153(n), #]`
-/

namespace A004152.P15744071780875141241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004153 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004152.P15744071780875141241

/-! ## A004152.P7752611355061361550

`∑{digits}[A004154(n), #]`
-/

namespace A004152.P7752611355061361550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004152.P7752611355061361550

/-! ## A004152.P16692503121335189090

`∑{digits}[n!, #]`
-/

namespace A004152.P16692503121335189090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A004152.P16692503121335189090

/-! ## A004152.P12593244231380359668

`∑{digits}[∏[round(1/acot(n))], #]`
-/

namespace A004152.P12593244231380359668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004152.P12593244231380359668

/-! ## A004152.P16606412786674617433

`∑{digits}[∏[floor(acot(n)+n)], #]`
-/

namespace A004152.P16606412786674617433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004152.P16606412786674617433

/-! ## A004152.P9850267788590959508

`∑{digits}[n*a(n-1), #]` with `a(0)=1`
-/

namespace A004152.P9850267788590959508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A004152.P9850267788590959508

/-! ## A004152.P4249156126194282409

`∑{digits}[∏[C(n, a(n-1))], #]` with `a(0)=1, a(1)=1`
-/

namespace A004152.P4249156126194282409
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  Nat.choose n (f2 (n - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A004152.P4249156126194282409

/-! ## A004152.P7278162993340615992

`∑{digits}[A000142(n), #]`
-/

namespace A004152.P7278162993340615992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004152.P7278162993340615992

/-!
# A004153: Factorial numbers written backwards.

The programs for A004153, there is no canonical definition to state claims against.
-/

/-! ## A004153.P7903507228579726163

`A004086(A000142(n))`
-/

namespace A004153.P7903507228579726163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A000142 n).toNat

end

end A004153.P7903507228579726163

/-! ## A004153.P1645679132115244273

`A004086(A004154(n))`
-/

namespace A004153.P1645679132115244273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A004154 n).toNat

end

end A004153.P1645679132115244273

/-! ## A004153.P15667441645222682729

`A004086(n!/A011557(floor(n/5)))`
-/

namespace A004153.P15667441645222682729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / (A011557 ⌊(n : ℚ) / 5⌋.toNat : ℚ))).toNat

end

end A004153.P15667441645222682729

/-! ## A004153.P7120717117936366753

`A004086(A062919(n)/A160941(n+2))`
-/

namespace A004153.P7120717117936366753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway ((A062919 n : ℚ) / (A160941 (n + 2) : ℚ))).toNat

end

end A004153.P7120717117936366753

/-! ## A004153.P5935891071613778003

`A004086(A062919(n)/Δ[A070839(n+1)])`
-/

namespace A004153.P5935891071613778003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway ((A062919 n : ℚ) / (f1 (n + 1) - f1 n : ℚ))).toNat

end

end A004153.P5935891071613778003

/-!
# A004154: a(n) = n! with trailing zeros omitted.

The programs for A004154, the canonical program `A004154.P15946096281681469454` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004154 has offset 0).

The definition of A004154 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004154.P15946096281681469454

`A000142(n)/10^A027868(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004154

/-- `A000142(n)/10^A027868(n)` -/
def P15946096281681469454.Spec : Prop :=
  ∀ n, P15946096281681469454.a n = (A004154 n : ℚ)

end A004154

/-! ## A004154.P7503708880896777051

`A004151(A000142(n))`
-/

namespace A004154.P7503708880896777051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A000142 n).toNat

end

end A004154.P7503708880896777051

namespace A004154

/-- `A004151(A000142(n))` -/
def P7503708880896777051.Spec : Prop :=
  ∀ n, P7503708880896777051.a n = A004154 n

end A004154

/-! ## A004154.P15645345809502647288

`n!/A011557(A027868(n))`
-/

namespace A004154.P15645345809502647288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A011557 (A027868 n).toNat : ℚ)

end

end A004154.P15645345809502647288

namespace A004154

/-- `n!/A011557(A027868(n))` -/
def P15645345809502647288.Spec : Prop :=
  ∀ n, P15645345809502647288.a n = (A004154 n : ℚ)

end A004154

/-! ## A004154.P12928828713079208111

`A000142(n)/A011557(A027868(n))`
-/

namespace A004154.P12928828713079208111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A011557 (A027868 n).toNat : ℚ)

end

end A004154.P12928828713079208111

namespace A004154

/-- `A000142(n)/A011557(A027868(n))` -/
def P12928828713079208111.Spec : Prop :=
  ∀ n, P12928828713079208111.a n = (A004154 n : ℚ)

end A004154

/-!
# A004155: Sum of digits of n-th odd number.

The programs for A004155, the canonical program `A004155.P2911733724081887475` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004155 has offset 0).

The definition of A004155 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004155.P2911733724081887475

`A007953(2*n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004155

/-- `A007953(2*n+1)` -/
def P2911733724081887475.Spec : Prop :=
  ∀ n, P2911733724081887475.a n = A004155 n

theorem P2911733724081887475.correct : P2911733724081887475.Spec := by
  intro n
  simp only [A004155]

end A004155

/-! ## A004155.P4500875473340923172

`∑{digits}[Δ[n²], #]`
-/

namespace A004155.P4500875473340923172
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004155.P4500875473340923172

namespace A004155

/-- `∑{digits}[Δ[n²], #]` -/
def P4500875473340923172.Spec : Prop :=
  ∀ n, (P4500875473340923172.a n : ℤ) = A004155 n

end A004155

/-! ## A004155.P9587693995212004332

`∑{digits}[2*n, #]+1`
-/

namespace A004155.P9587693995212004332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + 1

end

end A004155.P9587693995212004332

namespace A004155

/-- `∑{digits}[2*n, #]+1` -/
def P9587693995212004332.Spec : Prop :=
  ∀ n, (P9587693995212004332.a n : ℤ) = A004155 n

end A004155

/-! ## A004155.P7524532549418382978

`log(∏{digits}[comp[2*n], exp(#)])`
-/

namespace A004155.P7524532549418382978
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod

end

end A004155.P7524532549418382978

namespace A004155

/-- `log(∏{digits}[comp[2*n], exp(#)])` -/
def P7524532549418382978.Spec : Prop :=
  ∀ n, P7524532549418382978.a n = (A004155 n : ℝ)

end A004155

/-! ## A004155.P7110406680411069890

`log(∏{digits}[2*n, exp(#)])+1`
-/

namespace A004155.P7110406680411069890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod + 1

end

end A004155.P7110406680411069890

namespace A004155

/-- `log(∏{digits}[2*n, exp(#)])+1` -/
def P7110406680411069890.Spec : Prop :=
  ∀ n, P7110406680411069890.a n = (A004155 n : ℝ)

end A004155

/-! ## A004155.P1280177524528619322

`-xor(-1, ∑{digits}[2*n, #])`
-/

namespace A004155.P1280177524528619322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A004155.P1280177524528619322

namespace A004155

/-- `-xor(-1, ∑{digits}[2*n, #])` -/
def P1280177524528619322.Spec : Prop :=
  ∀ n, P1280177524528619322.a n = A004155 n

end A004155

/-! ## A004155.P3209070985867893304

`log2(∏{digits}[2*n+1, 2^#])`
-/

namespace A004155.P3209070985867893304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ)

end

end A004155.P3209070985867893304

namespace A004155

/-- `log2(∏{digits}[2*n+1, 2^#])` -/
def P3209070985867893304.Spec : Prop :=
  ∀ n, P3209070985867893304.a n = (A004155 n : ℝ)

end A004155

/-! ## A004155.P4979233335548197616

`root(∑{digits}[n+1+n, #], 2)²`
-/

namespace A004155.P4979233335548197616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A004155.P4979233335548197616

namespace A004155

/-- `root(∑{digits}[n+1+n, #], 2)²` -/
def P4979233335548197616.Spec : Prop :=
  ∀ n, P4979233335548197616.a n = (A004155 n : ℝ)

end A004155

/-! ## A004155.P7059850527053078717

`ϕ²-(ϕ-∑{digits}[2*n, #])`
-/

namespace A004155.P7059850527053078717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ 2 - (Real.goldenRatio - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℝ))

end

end A004155.P7059850527053078717

namespace A004155

/-- `ϕ²-(ϕ-∑{digits}[2*n, #])` -/
def P7059850527053078717.Spec : Prop :=
  ∀ n, P7059850527053078717.a n = (A004155 n : ℝ)

end A004155

/-! ## A004155.P7954265443197545971

`val(∏{digits}[2*n+1, 2^#], 2)`
-/

namespace A004155.P7954265443197545971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod 2

end

end A004155.P7954265443197545971

namespace A004155

/-- `val(∏{digits}[2*n+1, 2^#], 2)` -/
def P7954265443197545971.Spec : Prop :=
  ∀ n, (P7954265443197545971.a n : ℤ) = A004155 n

end A004155

/-! ## A004155.P15218555044759329070

`abs(∑{digits}[n+1+n, #]-1)+1`
-/

namespace A004155.P15218555044759329070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - 1| + 1

end

end A004155.P15218555044759329070

namespace A004155

/-- `abs(∑{digits}[n+1+n, #]-1)+1` -/
def P15218555044759329070.Spec : Prop :=
  ∀ n, P15218555044759329070.a n = A004155 n

end A004155

/-! ## A004155.P6577255128199063597

`A004092(n)+1`
-/

namespace A004155.P6577255128199063597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 n + 1

end

end A004155.P6577255128199063597

namespace A004155

/-- `A004092(n)+1` -/
def P6577255128199063597.Spec : Prop :=
  ∀ n, P6577255128199063597.a n = A004155 n

end A004155

/-! ## A004155.P12454233779585122301

`A326746(2*n)+1`
-/

namespace A004155.P12454233779585122301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (2 * n) + 1

end

end A004155.P12454233779585122301

namespace A004155

/-- `A326746(2*n)+1` -/
def P12454233779585122301.Spec : Prop :=
  ∀ n, P12454233779585122301.a n = A004155 n

end A004155

/-! ## A004155.P5093190793418688516

`∑{digits}[A000027(n+1)+n, #]%A000040(n+3)`
-/

namespace A004155.P5093190793418688516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) (A000040 (n + 3))

end

end A004155.P5093190793418688516

namespace A004155

/-- `∑{digits}[A000027(n+1)+n, #]%A000040(n+3)` -/
def P5093190793418688516.Spec : Prop :=
  ∀ n, P5093190793418688516.a n = A004155 n

end A004155

/-! ## A004155.P17059353920429385885

`A037123(2*n+1)-A037123(2*n)`
-/

namespace A004155.P17059353920429385885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 (2 * n + 1) - A037123 (2 * n)

end

end A004155.P17059353920429385885

namespace A004155

/-- `A037123(2*n+1)-A037123(2*n)` -/
def P17059353920429385885.Spec : Prop :=
  ∀ n, P17059353920429385885.a n = A004155 n

end A004155

/-! ## A004155.P13294701424973565830

`sqrt(A118881(2*n))+1`
-/

namespace A004155.P13294701424973565830
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118881 (2 * n) : ℝ) + 1

end

end A004155.P13294701424973565830

namespace A004155

/-- `sqrt(A118881(2*n))+1` -/
def P13294701424973565830.Spec : Prop :=
  ∀ n, P13294701424973565830.a n = (A004155 n : ℝ)

end A004155

/-! ## A004155.P11665525394125150507

`log2(2*A329562(2*n))`
-/

namespace A004155.P11665525394125150507
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (2 * A329562 (2 * n) : ℝ)

end

end A004155.P11665525394125150507

namespace A004155

/-- `log2(2*A329562(2*n))` -/
def P11665525394125150507.Spec : Prop :=
  ∀ n, P11665525394125150507.a n = (A004155 n : ℝ)

end A004155

/-! ## A004155.P1516824249631953093

`A092383(Δ[n²])`
-/

namespace A004155.P1516824249631953093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092383 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A004155.P1516824249631953093

namespace A004155

/-- `A092383(Δ[n²])` -/
def P1516824249631953093.Spec : Prop :=
  ∀ n, P1516824249631953093.a n = A004155 n

end A004155

/-! ## A004155.P14238427497613471163

`A092384(2*n)+1`
-/

namespace A004155.P14238427497613471163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092384 (2 * n) + 1

end

end A004155.P14238427497613471163

namespace A004155

/-- `A092384(2*n)+1` -/
def P14238427497613471163.Spec : Prop :=
  ∀ n, P14238427497613471163.a n = A004155 n

end A004155

/-! ## A004155.P16592772352716266247

`A169805(Δ[n²])/2`
-/

namespace A004155.P16592772352716266247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169805 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A004155.P16592772352716266247

namespace A004155

/-- `A169805(Δ[n²])/2` -/
def P16592772352716266247.Spec : Prop :=
  ∀ n, P16592772352716266247.a n = (A004155 n : ℚ)

end A004155

/-!
# A004156: Odd numbers written backwards.

The programs for A004156, there is no canonical definition to state claims against.
-/

/-! ## A004156.P12077114122684369068

`A004086(A005408(n))`
-/

namespace A004156.P12077114122684369068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A005408 n).toNat

end

end A004156.P12077114122684369068

/-! ## A004156.P842268395610447707

`A004086(Δ[n²])`
-/

namespace A004156.P842268395610447707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A004156.P842268395610447707

/-! ## A004156.P14163953140786087093

`A056964(Δ[n²])-Δ[n²]`
-/

namespace A004156.P14163953140786087093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A004156.P14163953140786087093

/-! ## A004156.P805910556153780046

`and(-1, A004086(2*n+1))`
-/

namespace A004156.P805910556153780046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A004086 (2 * n + 1))

end

end A004156.P805910556153780046

/-! ## A004156.P17791717507933650170

`or(char[2], A004086(or(1, 2*n)))`
-/

namespace A004156.P17791717507933650170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A004086 (Nat.lor 1 (2 * n)))

end

end A004156.P17791717507933650170

/-! ## A004156.P12372253785120157228

`floor(sqrt(A004086(n+1+n)²+1))`
-/

namespace A004156.P12372253785120157228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A004086 (n + 1 + n) ^ 2 + 1)

end

end A004156.P12372253785120157228

/-! ## A004156.P17386480809314565401

`A000027(A004086(comp[2*n]))`
-/

namespace A004156.P17386480809314565401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A004086 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A004156.P17386480809314565401

/-! ## A004156.P6171684567860139847

`∑{d}[A004086(2*n+1), A000010(#)]`
-/

namespace A004156.P6171684567860139847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A004156.P6171684567860139847

/-! ## A004156.P7343292510099911280

`A004086(2*n+1)%A006567(n+1)`
-/

namespace A004156.P7343292510099911280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (2 * n + 1)) (A006567 (n + 1))

end

end A004156.P7343292510099911280

/-! ## A004156.P5434181071220470686

`A069192(2*n+1)-A069250(2*n+1)`
-/

namespace A004156.P5434181071220470686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069192 (2 * n + 1) - A069250 (2 * n + 1)

end

end A004156.P5434181071220470686

/-! ## A004156.P15820368550390729816

`A004086(2*n+1)+2-A020639(2*(n+1))`
-/

namespace A004156.P15820368550390729816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (2 * n + 1) + (2 - A020639 (2 * (n + 1)))

end

end A004156.P15820368550390729816

/-! ## A004156.P16546448687820658817

`A004086(2*n+1)+A000007(n+1)`
-/

namespace A004156.P16546448687820658817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (2 * n + 1) + A000007 (n + 1)

end

end A004156.P16546448687820658817

/-! ## A004156.P15249546677404372626

`A004086(2*n+1)+C(2, A000040(n+2))`
-/

namespace A004156.P15249546677404372626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (2 * n + 1) + (Nat.choose 2 (A000040 (n + 2)).toNat : ℤ)

end

end A004156.P15249546677404372626

/-! ## A004156.P12722471001844440526

`A076641(A187318(n+1))`
-/

namespace A004156.P12722471001844440526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076641 (A187318 (n + 1)).toNat

end

end A004156.P12722471001844440526

/-! ## A004156.P5110656997297278784

`Δ[n²]-A056965(2*n+1)`
-/

namespace A004156.P5110656997297278784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A056965 (2 * n + 1)

end

end A004156.P5110656997297278784

/-! ## A004156.P1863203770746542302

`A061205(2*n+1)/Δ[n²]`
-/

namespace A004156.P1863203770746542302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061205 (2 * n + 1) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A004156.P1863203770746542302

/-! ## A004156.P933010225120461692

`xor(Δ[n²], A256756(2*n+1))`
-/

namespace A004156.P933010225120461692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (A256756 (2 * n + 1))

end

end A004156.P933010225120461692

/-! ## A004156.P15301688850478417821

`filter[A004086(2*n+1), A168184(#)]`
-/

namespace A004156.P15301688850478417821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A004156.P15301688850478417821

/-! ## A004156.P6028653128952155002

`A347347(2*(n+1))+A004086(2*n+1)`
-/

namespace A004156.P6028653128952155002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347347 (2 * (n + 1)) + A004086 (2 * n + 1)

end

end A004156.P6028653128952155002

/-! ## A004156.P7783168488629960692

`A340479(2*n+1)-A007953(2*n+1)`
-/

namespace A004156.P7783168488629960692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340479 (2 * n + 1) - A007953 (2 * n + 1)

end

end A004156.P7783168488629960692

/-!
# A004157: Sum of digits of n-th triangular number.

The programs for A004157, the canonical program `A004157.P13225285824347406028` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004157 has offset 0).

The definition of A004157 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004157.P13225285824347406028

`A007953(A000217(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004157

/-- `A007953(A000217(n))` -/
def P13225285824347406028.Spec : Prop :=
  ∀ n, P13225285824347406028.a n = A004157 n

theorem P13225285824347406028.correct : P13225285824347406028.Spec := by
  intro n
  simp only [A004157]

end A004157

/-! ## A004157.P3577690747366653357

`∑{digits}[∑[n], #]`
-/

namespace A004157.P3577690747366653357
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A004157.P3577690747366653357

namespace A004157

/-- `∑{digits}[∑[n], #]` -/
def P3577690747366653357.Spec : Prop :=
  ∀ n, (P3577690747366653357.a n : ℤ) = A004157 n

end A004157

/-! ## A004157.P14767156728449377078

`log(∏{digits}[∑[n], exp(#)])`
-/

namespace A004157.P14767156728449377078
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod

end

end A004157.P14767156728449377078

namespace A004157

/-- `log(∏{digits}[∑[n], exp(#)])` -/
def P14767156728449377078.Spec : Prop :=
  ∀ n, P14767156728449377078.a n = (A004157 n : ℝ)

end A004157

/-! ## A004157.P13547344414117471652

`log2(∏{digits}[∑[n], 2^#])`
-/

namespace A004157.P13547344414117471652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ)

end

end A004157.P13547344414117471652

namespace A004157

/-- `log2(∏{digits}[∑[n], 2^#])` -/
def P13547344414117471652.Spec : Prop :=
  ∀ n, P13547344414117471652.a n = (A004157 n : ℝ)

end A004157

/-! ## A004157.P6528587182447855488

`val(∏{digits}[∑[n], 2^#], 2)`
-/

namespace A004157.P6528587182447855488
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod 2

end

end A004157.P6528587182447855488

namespace A004157

/-- `val(∏{digits}[∑[n], 2^#], 2)` -/
def P6528587182447855488.Spec : Prop :=
  ∀ n, (P6528587182447855488.a n : ℤ) = A004157 n

end A004157

/-! ## A004157.P559863444102418308

`∑{digits}[C(n+1, 2)+1, #]-1`
-/

namespace A004157.P559863444102418308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - 1

end

end A004157.P559863444102418308

namespace A004157

/-- `∑{digits}[C(n+1, 2)+1, #]-1` -/
def P559863444102418308.Spec : Prop :=
  ∀ n, P559863444102418308.a n = A004157 n

end A004157

/-! ## A004157.P4798930601153393085

`∑{digits}[a(n-1)+n, #]-1` with `a(0)=1`
-/

namespace A004157.P4798930601153393085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - 1

end

end A004157.P4798930601153393085

namespace A004157

/-- `∑{digits}[a(n-1)+n, #]-1` -/
def P4798930601153393085.Spec : Prop :=
  ∀ n, P4798930601153393085.a n = A004157 n

end A004157

/-! ## A004157.P18020797934735323992

`∑{digits}[C(n+1, 2), #]%(2*n+1)`
-/

namespace A004157.P18020797934735323992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum % (2 * n + 1)

end

end A004157.P18020797934735323992

namespace A004157

/-- `∑{digits}[C(n+1, 2), #]%(2*n+1)` -/
def P18020797934735323992.Spec : Prop :=
  ∀ n, (P18020797934735323992.a n : ℤ) = A004157 n

end A004157

/-! ## A004157.P5803694460737520428

`A118759(∑{digits}[C(n+1, 2), #])`
-/

namespace A004157.P5803694460737520428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A004157.P5803694460737520428

namespace A004157

/-- `A118759(∑{digits}[C(n+1, 2), #])` -/
def P5803694460737520428.Spec : Prop :=
  ∀ n, P5803694460737520428.a n = A004157 n

end A004157

/-! ## A004157.P14871060428179432

`A283442(5*∑{digits}[A000217(n), #])`
-/

namespace A004157.P14871060428179432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283442 (5 * ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum)

end

end A004157.P14871060428179432

namespace A004157

/-- `A283442(5*∑{digits}[A000217(n), #])` -/
def P14871060428179432.Spec : Prop :=
  ∀ n, P14871060428179432.a n = A004157 n

end A004157

/-! ## A004157.P4526063006448008834

`∑{digits}[A000217(n), #]%A002385(n+1)`
-/

namespace A004157.P4526063006448008834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) (A002385 (n + 1))

end

end A004157.P4526063006448008834

namespace A004157

/-- `∑{digits}[A000217(n), #]%A002385(n+1)` -/
def P4526063006448008834.Spec : Prop :=
  ∀ n, P4526063006448008834.a n = A004157 n

end A004157

/-! ## A004157.P239667992017313906

`A326746(∑[n])`
-/

namespace A004157.P239667992017313906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004157.P239667992017313906

namespace A004157

/-- `A326746(∑[n])` -/
def P239667992017313906.Spec : Prop :=
  ∀ n, P239667992017313906.a n = A004157 n

end A004157

/-! ## A004157.P13090919141845716915

`A007953(∑[n])`
-/

namespace A004157.P13090919141845716915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004157.P13090919141845716915

namespace A004157

/-- `A007953(∑[n])` -/
def P13090919141845716915.Spec : Prop :=
  ∀ n, P13090919141845716915.a n = A004157 n

end A004157

/-! ## A004157.P6539322117515075281

`sqrt(A118881(∑[n]))`
-/

namespace A004157.P6539322117515075281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118881 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A004157.P6539322117515075281

namespace A004157

/-- `sqrt(A118881(∑[n]))` -/
def P6539322117515075281.Spec : Prop :=
  ∀ n, P6539322117515075281.a n = (A004157 n : ℝ)

end A004157

/-! ## A004157.P2380863626016090155

`log2(A329562(∑[n]))`
-/

namespace A004157.P2380863626016090155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A004157.P2380863626016090155

namespace A004157

/-- `log2(A329562(∑[n]))` -/
def P2380863626016090155.Spec : Prop :=
  ∀ n, P2380863626016090155.a n = (A004157 n : ℝ)

end A004157

/-! ## A004157.P9124012019438626244

`A169805(∑[n])/2`
-/

namespace A004157.P9124012019438626244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169805 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A004157.P9124012019438626244

namespace A004157

/-- `A169805(∑[n])/2` -/
def P9124012019438626244.Spec : Prop :=
  ∀ n, P9124012019438626244.a n = (A004157 n : ℚ)

end A004157

/-! ## A004157.P5523123024679683636

`A062028(∑[n])-∑[n]`
-/

namespace A004157.P5523123024679683636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (∑ j ∈ Finset.range (n + 1), f1 j) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A004157.P5523123024679683636

namespace A004157

/-- `A062028(∑[n])-∑[n]` -/
def P5523123024679683636.Spec : Prop :=
  ∀ n, P5523123024679683636.a n = A004157 n

end A004157

/-!
# A004158: Triangular numbers written backwards.

The programs for A004158, there is no canonical definition to state claims against.
-/

/-! ## A004158.P2760102626554386249

`A004086(A000217(n))`
-/

namespace A004158.P2760102626554386249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A000217 n).toNat

end

end A004158.P2760102626554386249

/-! ## A004158.P12192126894711078803

`A127698(n)-∑[n]`
-/

namespace A004158.P12192126894711078803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127698 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A004158.P12192126894711078803

/-! ## A004158.P5621990270429469729

`A004086(∑[n])`
-/

namespace A004158.P5621990270429469729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004158.P5621990270429469729

/-! ## A004158.P4098770181423061156

`A004086((n²+n)/2)%C(n+7, 6)`
-/

namespace A004158.P4098770181423061156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat) (Nat.choose (n + 7) 6 : ℤ)

end

end A004158.P4098770181423061156

/-! ## A004158.P7570567720256735845

`A004086(C(n+1, 2))+A000007(n+1)`
-/

namespace A004158.P7570567720256735845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Nat.choose (n + 1) 2) + A000007 (n + 1)

end

end A004158.P7570567720256735845

/-! ## A004158.P15668872479085119405

`A056964(∑[n])-∑[n]`
-/

namespace A004158.P15668872479085119405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (∑ j ∈ Finset.range (n + 1), f1 j) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A004158.P15668872479085119405

/-! ## A004158.P17104715137633984775

`∑[n]-A056965(∑[n])`
-/

namespace A004158.P17104715137633984775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A056965 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A004158.P17104715137633984775

/-! ## A004158.P1089593186486526062

`A061601(A267193(∑[n]))`
-/

namespace A004158.P1089593186486526062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A267193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A004158.P1089593186486526062

/-! ## A004158.P3114133826961685388

`A391365(A213479(n))`
-/

namespace A004158.P3114133826961685388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391365 (A213479 n).toNat

end

end A004158.P3114133826961685388

/-! ## A004158.P15687864964822845363

`A391365(A026381(n+2))`
-/

namespace A004158.P15687864964822845363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391365 (A026381 (n + 2)).toNat

end

end A004158.P15687864964822845363

/-!
# A004159: Sum of digits of n^2.

The programs for A004159, the canonical program `A004159.P2005974215749459282` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004159 has offset 0).

The definition of A004159 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004159.P2005974215749459282

`A007953(A000290(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004159

/-- `A007953(A000290(n))` -/
def P2005974215749459282.Spec : Prop :=
  ∀ n, P2005974215749459282.a n = A004159 n

theorem P2005974215749459282.correct : P2005974215749459282.Spec := by
  intro n
  simp only [A004159]

end A004159

/-! ## A004159.P3176149032313345783

`∑{digits}[n², #]`
-/

namespace A004159.P3176149032313345783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A004159.P3176149032313345783

namespace A004159

/-- `∑{digits}[n², #]` -/
def P3176149032313345783.Spec : Prop :=
  ∀ n, (P3176149032313345783.a n : ℤ) = A004159 n

end A004159

/-! ## A004159.P8498117299941853359

`log(∏{digits}[n², exp(#)])`
-/

namespace A004159.P8498117299941853359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod

end

end A004159.P8498117299941853359

namespace A004159

/-- `log(∏{digits}[n², exp(#)])` -/
def P8498117299941853359.Spec : Prop :=
  ∀ n, P8498117299941853359.a n = (A004159 n : ℝ)

end A004159

/-! ## A004159.P12869390188053369335

`log2(∏{digits}[n², 2^#])`
-/

namespace A004159.P12869390188053369335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ)

end

end A004159.P12869390188053369335

namespace A004159

/-- `log2(∏{digits}[n², 2^#])` -/
def P12869390188053369335.Spec : Prop :=
  ∀ n, P12869390188053369335.a n = (A004159 n : ℝ)

end A004159

/-! ## A004159.P7506104753488202376

`val(∏{digits}[n², 2^#], 2)`
-/

namespace A004159.P7506104753488202376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod 2

end

end A004159.P7506104753488202376

namespace A004159

/-- `val(∏{digits}[n², 2^#], 2)` -/
def P7506104753488202376.Spec : Prop :=
  ∀ n, (P7506104753488202376.a n : ℤ) = A004159 n

end A004159

/-! ## A004159.P2434517683828058503

`∑{digits}[20*n*n/2+1, #]-1`
-/

namespace A004159.P2434517683828058503
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (20 * n : ℚ) * ((n : ℚ) / 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - 1

end

end A004159.P2434517683828058503

namespace A004159

/-- `∑{digits}[20*n*n/2+1, #]-1` -/
def P2434517683828058503.Spec : Prop :=
  ∀ n, P2434517683828058503.a n = A004159 n

end A004159

/-! ## A004159.P4651590108419527545

`∑{digits}[n^2, #]+n^2-n*n`
-/

namespace A004159.P4651590108419527545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + n ^ 2 : ℕ) : ℤ) - (n * n : ℤ)

end

end A004159.P4651590108419527545

namespace A004159

/-- `∑{digits}[n^2, #]+n^2-n*n` -/
def P4651590108419527545.Spec : Prop :=
  ∀ n, P4651590108419527545.a n = A004159 n

end A004159

/-! ## A004159.P14137224227937631676

`A171613(n)-n²`
-/

namespace A004159.P14137224227937631676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171613 n - (n ^ 2 : ℤ)

end

end A004159.P14137224227937631676

namespace A004159

/-- `A171613(n)-n²` -/
def P14137224227937631676.Spec : Prop :=
  ∀ n, P14137224227937631676.a n = A004159 n

end A004159

/-! ## A004159.P11951005870024361

`n²-A224977(n)`
-/

namespace A004159.P11951005870024361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A224977 n

end

end A004159.P11951005870024361

namespace A004159

/-- `n²-A224977(n)` -/
def P11951005870024361.Spec : Prop :=
  ∀ n, P11951005870024361.a n = A004159 n

end A004159

/-! ## A004159.P6191767621634931832

`A240752(n)+a(n-1)` with `a(0)=0`
-/

namespace A004159.P6191767621634931832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A240752 n + a (n - 1)

end

end A004159.P6191767621634931832

namespace A004159

/-- `A240752(n)+a(n-1)` -/
def P6191767621634931832.Spec : Prop :=
  ∀ n, P6191767621634931832.a n = A004159 n

end A004159

/-! ## A004159.P12033910205221109850

`A118881(n)-A067552(n)`
-/

namespace A004159.P12033910205221109850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n - A067552 n

end

end A004159.P12033910205221109850

namespace A004159

/-- `A118881(n)-A067552(n)` -/
def P12033910205221109850.Spec : Prop :=
  ∀ n, P12033910205221109850.a n = A004159 n

end A004159

/-! ## A004159.P3670337916975618034

`A007953(n)²-A067552(n)`
-/

namespace A004159.P3670337916975618034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n ^ 2 - A067552 n

end

end A004159.P3670337916975618034

namespace A004159

/-- `A007953(n)²-A067552(n)` -/
def P3670337916975618034.Spec : Prop :=
  ∀ n, P3670337916975618034.a n = A004159 n

end A004159

/-! ## A004159.P10058335656676962880

`∑[A240752(n+1)]-A240752(n+1)`
-/

namespace A004159.P10058335656676962880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A240752 (n + 1)

end

end A004159.P10058335656676962880

namespace A004159

/-- `∑[A240752(n+1)]-A240752(n+1)` -/
def P10058335656676962880.Spec : Prop :=
  ∀ n, P10058335656676962880.a n = A004159 n

end A004159

/-! ## A004159.P14151854104957872635

`A003132(n)+A069816(n)-A067552(n)`
-/

namespace A004159.P14151854104957872635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n + (A069816 n - A067552 n)

end

end A004159.P14151854104957872635

namespace A004159

/-- `A003132(n)+A069816(n)-A067552(n)` -/
def P14151854104957872635.Spec : Prop :=
  ∀ n, P14151854104957872635.a n = A004159 n

end A004159

/-! ## A004159.P13452208225925214480

`Δ[A071317(n)-∑{digits}[A000290(n), #]]`
-/

namespace A004159.P13452208225925214480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071317 n - ((((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004159.P13452208225925214480

namespace A004159

/-- `Δ[A071317(n)-∑{digits}[A000290(n), #]]` -/
def P13452208225925214480.Spec : Prop :=
  ∀ n, P13452208225925214480.a n = A004159 n

end A004159

/-! ## A004159.P1620993562560474763

`A268227(5*n)`
-/

namespace A004159.P1620993562560474763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268227 (5 * n)

end

end A004159.P1620993562560474763

namespace A004159

/-- `A268227(5*n)` -/
def P1620993562560474763.Spec : Prop :=
  ∀ n, P1620993562560474763.a n = A004159 n

end A004159

/-! ## A004159.P16216512573142926856

`A007953(A028907(n))`
-/

namespace A004159.P16216512573142926856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A028907 n).toNat

end

end A004159.P16216512573142926856

namespace A004159

/-- `A007953(A028907(n))` -/
def P16216512573142926856.Spec : Prop :=
  ∀ n, P16216512573142926856.a n = A004159 n

end A004159

/-! ## A004159.P12894520007403696170

`A007953(n²)`
-/

namespace A004159.P12894520007403696170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n ^ 2)

end

end A004159.P12894520007403696170

namespace A004159

/-- `A007953(n²)` -/
def P12894520007403696170.Spec : Prop :=
  ∀ n, P12894520007403696170.a n = A004159 n

end A004159

/-! ## A004159.P491009738410695726

`sqrt(A118881(n²))`
-/

namespace A004159.P491009738410695726
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118881 (n ^ 2) : ℝ)

end

end A004159.P491009738410695726

namespace A004159

/-- `sqrt(A118881(n²))` -/
def P491009738410695726.Spec : Prop :=
  ∀ n, P491009738410695726.a n = (A004159 n : ℝ)

end A004159

/-! ## A004159.P15896470456485751355

`log2(A329562(n²))`
-/

namespace A004159.P15896470456485751355
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A329562 (n ^ 2) : ℝ)

end

end A004159.P15896470456485751355

namespace A004159

/-- `log2(A329562(n²))` -/
def P15896470456485751355.Spec : Prop :=
  ∀ n, P15896470456485751355.a n = (A004159 n : ℝ)

end A004159

/-!
# A004160: Sum of digits of the n-th tetrahedral number.

The programs for A004160, the canonical program `A004160.P8090586305270952692` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004160 has offset 1).

The definition of A004160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004160.P8090586305270952692

`∑{digits}[C(n+3, 3), #]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004160

/-- `∑{digits}[C(n+3, 3), #]` -/
def P8090586305270952692.Spec : Prop :=
  ∀ n, (P8090586305270952692.a n : ℤ) = A004160 (n + 1)

theorem P8090586305270952692.correct : P8090586305270952692.Spec := by
  intro n
  simp only [A004160, Nat.add_sub_cancel]

end A004160

/-! ## A004160.P17464103620534505305

`∑{digits}[∑[∑[n+1]], #]`
-/

namespace A004160.P17464103620534505305
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A004160.P17464103620534505305

namespace A004160

/-- `∑{digits}[∑[∑[n+1]], #]` -/
def P17464103620534505305.Spec : Prop :=
  ∀ n, (P17464103620534505305.a n : ℤ) = A004160 (n + 1)

end A004160

/-! ## A004160.P16436411876342639474

`log2(∏{digits}[∑[∑[n+1]], 2^#])`
-/

namespace A004160.P16436411876342639474
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ)

end

end A004160.P16436411876342639474

namespace A004160

/-- `log2(∏{digits}[∑[∑[n+1]], 2^#])` -/
def P16436411876342639474.Spec : Prop :=
  ∀ n, P16436411876342639474.a n = (A004160 (n + 1) : ℝ)

end A004160

/-! ## A004160.P13271089591551800479

`A000027(∑{digits}[A000292(n+1), #])`
-/

namespace A004160.P13271089591551800479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004160.P13271089591551800479

namespace A004160

/-- `A000027(∑{digits}[A000292(n+1), #])` -/
def P13271089591551800479.Spec : Prop :=
  ∀ n, P13271089591551800479.a n = A004160 (n + 1)

end A004160

/-! ## A004160.P3941199406170722227

`A028310(∑{digits}[Δ[A145126(n)], #])`
-/

namespace A004160.P3941199406170722227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145126 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004160.P3941199406170722227

namespace A004160

/-- `A028310(∑{digits}[Δ[A145126(n)], #])` -/
def P3941199406170722227.Spec : Prop :=
  ∀ n, P3941199406170722227.a n = A004160 (n + 1)

end A004160

/-! ## A004160.P3489379219629084553

`A028310(∑{digits}[A160790(2*n+1), #])`
-/

namespace A004160.P3489379219629084553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160790 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004160.P3489379219629084553

namespace A004160

/-- `A028310(∑{digits}[A160790(2*n+1), #])` -/
def P3489379219629084553.Spec : Prop :=
  ∀ n, P3489379219629084553.a n = A004160 (n + 1)

end A004160

/-! ## A004160.P9250961784851106954

`A096145(A167614(n+2))`
-/

namespace A004160.P9250961784851106954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096145 (A167614 (n + 2)).toNat

end

end A004160.P9250961784851106954

namespace A004160

/-- `A096145(A167614(n+2))` -/
def P9250961784851106954.Spec : Prop :=
  ∀ n, P9250961784851106954.a n = A004160 (n + 1)

end A004160

/-! ## A004160.P16312034929820642201

`A096145(∑[n+3]+n+3)`
-/

namespace A004160.P16312034929820642201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096145 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A004160.P16312034929820642201

namespace A004160

/-- `A096145(∑[n+3]+n+3)` -/
def P16312034929820642201.Spec : Prop :=
  ∀ n, P16312034929820642201.a n = A004160 (n + 1)

end A004160

/-!
# A004161: Tetrahedral numbers written backwards.

The programs for A004161, there is no canonical definition to state claims against.
-/

/-! ## A004161.P11139297372440025209

`A004086(∑[∑[n]])`
-/

namespace A004161.P11139297372440025209
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004161.P11139297372440025209

/-! ## A004161.P15337986903953339709

`or(char[1], A004086(C(n+2, 3)))`
-/

namespace A004161.P15337986903953339709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A004086 (Nat.choose (n + 2) 3))

end

end A004161.P15337986903953339709

/-! ## A004161.P9634290899172545762

`and(-1, A004086(A000292(n)))`
-/

namespace A004161.P9634290899172545762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A004086 (A000292 n).toNat)

end

end A004161.P9634290899172545762

/-! ## A004161.P14765530730969321709

`or(char[1], A004086(A005581(n)+n))`
-/

namespace A004161.P14765530730969321709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A004086 (A005581 n + (n : ℤ)).toNat)

end

end A004161.P14765530730969321709

/-! ## A004161.P5555874914667223451

`A004086(C(n+2, 3))*A158388(n)`
-/

namespace A004161.P5555874914667223451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Nat.choose (n + 2) 3) * A158388 n

end

end A004161.P5555874914667223451

/-! ## A004161.P9717040400298149798

`A007318(C(2, n))*A004086(C(n+2, 3))`
-/

namespace A004161.P9717040400298149798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A004086 (Nat.choose (n + 2) 3)

end

end A004161.P9717040400298149798

/-! ## A004161.P14030846186470237781

`A004086(C(n+2, 3))/A007318(C(n, n²))`
-/

namespace A004161.P14030846186470237781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004086 (Nat.choose (n + 2) 3) : ℚ) / (A007318 (Nat.choose n (n ^ 2)) : ℚ)

end

end A004161.P14030846186470237781

/-! ## A004161.P8062183556653952899

`A000040(n+1)%2*A004086(C(n+2, 3))`
-/

namespace A004161.P8062183556653952899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A004086 (Nat.choose (n + 2) 3)

end

end A004161.P8062183556653952899

/-! ## A004161.P16758261773747287479

`A004086(C(n+2, 3))+val(A000005(n+1), 16)`
-/

namespace A004161.P16758261773747287479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Nat.choose (n + 2) 3) + (SequenceMachineLib.valuation (A000005 (n + 1)).toNat 16 : ℤ)

end

end A004161.P16758261773747287479

/-! ## A004161.P12116430696193090082

`∑{d}[A004086(A000292(n)), A000010(#)]`
-/

namespace A004161.P12116430696193090082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A000292 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A004161.P12116430696193090082

/-!
# A004162: Sum of digits of pentagonal numbers.

The programs for A004162, the canonical program `A004162.P5939139631614176325` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004162 has offset 1).

The definition of A004162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004162.P5939139631614176325

`∑{digits}[∑[3*n+1], #]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004162

/-- `∑{digits}[∑[3*n+1], #]` -/
def P5939139631614176325.Spec : Prop :=
  ∀ n, (P5939139631614176325.a n : ℤ) = A004162 (n + 1)

theorem P5939139631614176325.correct : P5939139631614176325.Spec := by
  intro n
  simp only [A004162, Nat.add_sub_cancel]

end A004162

/-! ## A004162.P10972224440680318707

`∑{digits}[∑[A016777(n)]+1, #]-1`
-/

namespace A004162.P10972224440680318707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - 1

end

end A004162.P10972224440680318707

namespace A004162

/-- `∑{digits}[∑[A016777(n)]+1, #]-1` -/
def P10972224440680318707.Spec : Prop :=
  ∀ n, P10972224440680318707.a n = A004162 (n + 1)

end A004162

/-! ## A004162.P5285529793886639973

`A000027(∑{digits}[∑[a(n-1)+3], #])` with `a(0)=1`
-/

namespace A004162.P5285529793886639973
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A004162.P5285529793886639973

namespace A004162

/-- `A000027(∑{digits}[∑[a(n-1)+3], #])` -/
def P5285529793886639973.Spec : Prop :=
  ∀ n, P5285529793886639973.a n = A004162 (n + 1)

end A004162

/-! ## A004162.P16166255266234119043

`A000027(∑{digits}[A000326(n+1), #])`
-/

namespace A004162.P16166255266234119043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004162.P16166255266234119043

namespace A004162

/-- `A000027(∑{digits}[A000326(n+1), #])` -/
def P16166255266234119043.Spec : Prop :=
  ∀ n, P16166255266234119043.a n = A004162 (n + 1)

end A004162

/-! ## A004162.P8997658872537857638

`A028310(∑{digits}[A000326(n+1), #])`
-/

namespace A004162.P8997658872537857638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004162.P8997658872537857638

namespace A004162

/-- `A028310(∑{digits}[A000326(n+1), #])` -/
def P8997658872537857638.Spec : Prop :=
  ∀ n, P8997658872537857638.a n = A004162 (n + 1)

end A004162

/-! ## A004162.P5049968703151728442

`A326746(∑[3*n+1])`
-/

namespace A004162.P5049968703151728442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004162.P5049968703151728442

namespace A004162

/-- `A326746(∑[3*n+1])` -/
def P5049968703151728442.Spec : Prop :=
  ∀ n, P5049968703151728442.a n = A004162 (n + 1)

end A004162

/-! ## A004162.P7458807316616971441

`A007953(Δ[n*∑[n]])`
-/

namespace A004162.P7458807316616971441
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A004162.P7458807316616971441

namespace A004162

/-- `A007953(Δ[n*∑[n]])` -/
def P7458807316616971441.Spec : Prop :=
  ∀ n, P7458807316616971441.a n = A004162 (n + 1)

end A004162

/-! ## A004162.P7545050601785219492

`sqrt(A118881(∑[3*n+1]))`
-/

namespace A004162.P7545050601785219492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118881 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A004162.P7545050601785219492

namespace A004162

/-- `sqrt(A118881(∑[3*n+1]))` -/
def P7545050601785219492.Spec : Prop :=
  ∀ n, P7545050601785219492.a n = (A004162 (n + 1) : ℝ)

end A004162

/-! ## A004162.P6777163788265850737

`A007953(∑[A008486(n)]+1+n)-1`
-/

namespace A004162.P6777163788265850737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)).toNat - 1

end

end A004162.P6777163788265850737

namespace A004162

/-- `A007953(∑[A008486(n)]+1+n)-1` -/
def P6777163788265850737.Spec : Prop :=
  ∀ n, P6777163788265850737.a n = A004162 (n + 1)

end A004162

/-!
# A004163: Pentagonal numbers written backwards.

The programs for A004163, there is no canonical definition to state claims against.
-/

/-! ## A004163.P3790664206447093157

`A004086(A000326(n))`
-/

namespace A004163.P3790664206447093157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A000326 n).toNat

end

end A004163.P3790664206447093157

/-! ## A004163.P9688357321648237263

`A004086(C(n, 2)+n²)`
-/

namespace A004163.P9688357321648237263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Nat.choose n 2 + n ^ 2)

end

end A004163.P9688357321648237263

/-! ## A004163.P10081513860603007925

`A004086(C(3*n, 2)/3)`
-/

namespace A004163.P10081513860603007925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.roundAway ((Nat.choose (3 * n) 2 : ℚ) / 3)).toNat

end

end A004163.P10081513860603007925

/-! ## A004163.P309374742730328191

`A004086(3*C(n, 2)+n)`
-/

namespace A004163.P309374742730328191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (3 * Nat.choose n 2 + n)

end

end A004163.P309374742730328191

/-! ## A004163.P6191162923918103956

`A004086(2*n²-∑[n])`
-/

namespace A004163.P6191162923918103956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (2 * n ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004163.P6191162923918103956

/-! ## A004163.P11855317221981731912

`ceil(sin(n)²)*A004086(n*((n-1)/2+n))`
-/

namespace A004163.P11855317221981731912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ * A004086 (SequenceMachineLib.roundAway ((n : ℚ) * (((n : ℤ) - 1 : ℚ) / 2 + (n : ℚ)))).toNat

end

end A004163.P11855317221981731912

/-! ## A004163.P7928780000030574988

`A004086(∑[record[n²%(2*n+1)]])%((n+1)*Δ[n^3])`
-/

namespace A004163.P7928780000030574988
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (∑ j ∈ Finset.range (n + 1), f1 j)) ((n + 1 : ℤ) * ((f3 (n + 1) : ℤ) - (f3 n : ℤ)))

end

end A004163.P7928780000030574988

/-!
# A004164: Sum of digits of n^3.

The programs for A004164, the canonical program `A004164.P11859133401643135210` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004164 has offset 0).

The definition of A004164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004164.P11859133401643135210

`∑{digits}[n^3, #]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004164

/-- `∑{digits}[n^3, #]` -/
def P11859133401643135210.Spec : Prop :=
  ∀ n, (P11859133401643135210.a n : ℤ) = A004164 n

theorem P11859133401643135210.correct : P11859133401643135210.Spec := by
  intro n
  simp only [A004164]

end A004164

/-! ## A004164.P14689706532243047254

`log2(∏{digits}[n^3, 2^#])`
-/

namespace A004164.P14689706532243047254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ)

end

end A004164.P14689706532243047254

namespace A004164

/-- `log2(∏{digits}[n^3, 2^#])` -/
def P14689706532243047254.Spec : Prop :=
  ∀ n, P14689706532243047254.a n = (A004164 n : ℝ)

end A004164

/-! ## A004164.P3330934551357861259

`3*A372924(n)+n`
-/

namespace A004164.P3330934551357861259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A372924 n + (n : ℤ)

end

end A004164.P3330934551357861259

namespace A004164

/-- `3*A372924(n)+n` -/
def P3330934551357861259.Spec : Prop :=
  ∀ n, P3330934551357861259.a n = A004164 n

end A004164

/-! ## A004164.P12784034560506193171

`or(char[1], ∑{digits}[A000578(n), #])`
-/

namespace A004164.P12784034560506193171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (if ∃ j, f1 j = n then 1 else 0) ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004164.P12784034560506193171

namespace A004164

/-- `or(char[1], ∑{digits}[A000578(n), #])` -/
def P12784034560506193171.Spec : Prop :=
  ∀ n, (P12784034560506193171.a n : ℤ) = A004164 n

end A004164

/-! ## A004164.P12263029801977242327

`A118880(n)-A069973(n)`
-/

namespace A004164.P12263029801977242327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 n - A069973 n

end

end A004164.P12263029801977242327

namespace A004164

/-- `A118880(n)-A069973(n)` -/
def P12263029801977242327.Spec : Prop :=
  ∀ n, P12263029801977242327.a n = A004164 n

end A004164

/-! ## A004164.P2760496545165442229

`A001221(A000015(n+1))*∑{digits}[A000578(n), #]`
-/

namespace A004164.P2760496545165442229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000015 (n + 1)).toNat * ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A004164.P2760496545165442229

namespace A004164

/-- `A001221(A000015(n+1))*∑{digits}[A000578(n), #]` -/
def P2760496545165442229.Spec : Prop :=
  ∀ n, P2760496545165442229.a n = A004164 n

end A004164

/-! ## A004164.P15936038915062462935

`A001221(A000961(n+1))*∑{digits}[A000578(n), #]`
-/

namespace A004164.P15936038915062462935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000961 (n + 1)).toNat * ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A004164.P15936038915062462935

namespace A004164

/-- `A001221(A000961(n+1))*∑{digits}[A000578(n), #]` -/
def P15936038915062462935.Spec : Prop :=
  ∀ n, P15936038915062462935.a n = A004164 n

end A004164

/-! ## A004164.P4002459474954026582

`A163817(2*(n+1))+∑{digits}[A000578(n), #]`
-/

namespace A004164.P4002459474954026582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163817 (2 * (n + 1)) + ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A004164.P4002459474954026582

namespace A004164

/-- `A163817(2*(n+1))+∑{digits}[A000578(n), #]` -/
def P4002459474954026582.Spec : Prop :=
  ∀ n, P4002459474954026582.a n = A004164 n

end A004164

/-! ## A004164.P6177339590510612825

`∑{digits}[A000578(n), #]*A151935(A151935(n))`
-/

namespace A004164.P6177339590510612825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) * A151935 (A151935 n).toNat

end

end A004164.P6177339590510612825

namespace A004164

/-- `∑{digits}[A000578(n), #]*A151935(A151935(n))` -/
def P6177339590510612825.Spec : Prop :=
  ∀ n, P6177339590510612825.a n = A004164 n

end A004164

/-!
# A004165: Cubes written backwards.

The programs for A004165, there is no canonical definition to state claims against.
-/

/-! ## A004165.P13380544206987157839

`A319603(n+1)-(n+1)^3`
-/

namespace A004165.P13380544206987157839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319603 (n + 1) - ((n + 1) ^ 3 : ℤ)

end

end A004165.P13380544206987157839

/-! ## A004165.P3092131611447965834

`∑[Δ[A319603(n)]-A003215(n)]`
-/

namespace A004165.P3092131611447965834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319603 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004165.P3092131611447965834

/-! ## A004165.P17820600019118361045

`Δ[a(n-1)+A319603(n)-A000578(n)]` with `a(0)=2`
-/

namespace A004165.P17820600019118361045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) + (A319603 n - A000578 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004165.P17820600019118361045

/-! ## A004165.P2448469158358604036

`Δ[∑[A319603(n)]-A000537(n)]`
-/

namespace A004165.P2448469158358604036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319603 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004165.P2448469158358604036

/-! ## A004165.P1268884956738510105

`Δ[∑[A319603(n)-A000578(n)+1]-n]`
-/

namespace A004165.P1268884956738510105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319603 n - A000578 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004165.P1268884956738510105

/-!
# A004166: Sum of digits of 3^n.

The programs for A004166, the canonical program `A004166.P14404355174760254413` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004166 has offset 0).

The definition of A004166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004166.P4479768493485721504

`∑{digits}[A321540(n), #]`
-/

namespace A004166.P4479768493485721504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321540 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004166.P4479768493485721504

namespace A004166

/-- `∑{digits}[A321540(n), #]` -/
def P4479768493485721504.Spec : Prop :=
  ∀ n, (P4479768493485721504.a n : ℤ) = A004166 n

end A004166

/-! ## A004166.P14404355174760254413

`∑{digits}[3^n, #]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004166

/-- `∑{digits}[3^n, #]` -/
def P14404355174760254413.Spec : Prop :=
  ∀ n, (P14404355174760254413.a n : ℤ) = A004166 n

theorem P14404355174760254413.correct : P14404355174760254413.Spec := by
  intro n
  simp only [A004166]

end A004166

/-! ## A004166.P12032703382954963833

`∑{digits}[A024023(n), #]+1`
-/

namespace A004166.P12032703382954963833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum + 1

end

end A004166.P12032703382954963833

namespace A004166

/-- `∑{digits}[A024023(n), #]+1` -/
def P12032703382954963833.Spec : Prop :=
  ∀ n, (P12032703382954963833.a n : ℤ) = A004166 n

end A004166

/-! ## A004166.P7021943117883562210

`∑{digits}[1-A000244(n), #]+1`
-/

namespace A004166.P7021943117883562210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000244 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum + 1

end

end A004166.P7021943117883562210

namespace A004166

/-- `∑{digits}[1-A000244(n), #]+1` -/
def P7021943117883562210.Spec : Prop :=
  ∀ n, (P7021943117883562210.a n : ℤ) = A004166 n

end A004166

/-! ## A004166.P14266975793294454620

`∑{digits}[Δ[A007051(n)]-1, #]+1`
-/

namespace A004166.P14266975793294454620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum + 1

end

end A004166.P14266975793294454620

namespace A004166

/-- `∑{digits}[Δ[A007051(n)]-1, #]+1` -/
def P14266975793294454620.Spec : Prop :=
  ∀ n, (P14266975793294454620.a n : ℤ) = A004166 n

end A004166

/-! ## A004166.P3991706656480726823

`A000027(∑{digits}[3*a(n-1), #])` with `a(0)=1`
-/

namespace A004166.P3991706656480726823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A004166.P3991706656480726823

namespace A004166

/-- `A000027(∑{digits}[3*a(n-1), #])` -/
def P3991706656480726823.Spec : Prop :=
  ∀ n, P3991706656480726823.a n = A004166 n

end A004166

/-! ## A004166.P4388943176497725788

`A000027(∑{digits}[A000244(n), #])`
-/

namespace A004166.P4388943176497725788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004166.P4388943176497725788

namespace A004166

/-- `A000027(∑{digits}[A000244(n), #])` -/
def P4388943176497725788.Spec : Prop :=
  ∀ n, P4388943176497725788.a n = A004166 n

end A004166

/-! ## A004166.P12512489886333382104

`A028310(∑{digits}[A000244(n), #])`
-/

namespace A004166.P12512489886333382104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004166.P12512489886333382104

namespace A004166

/-- `A028310(∑{digits}[A000244(n), #])` -/
def P12512489886333382104.Spec : Prop :=
  ∀ n, P12512489886333382104.a n = A004166 n

end A004166

/-! ## A004166.P4985060141059231296

`A000027(∑{digits}[A038754(2*n), #])`
-/

namespace A004166.P4985060141059231296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A004166.P4985060141059231296

namespace A004166

/-- `A000027(∑{digits}[A038754(2*n), #])` -/
def P4985060141059231296.Spec : Prop :=
  ∀ n, P4985060141059231296.a n = A004166 n

end A004166

/-! ## A004166.P14679988483064000508

`A254006(2*n+1)+∑{digits}[A254006(2*n), #]`
-/

namespace A004166.P14679988483064000508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 (2 * n + 1) + ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A004166.P14679988483064000508

namespace A004166

/-- `A254006(2*n+1)+∑{digits}[A254006(2*n), #]` -/
def P14679988483064000508.Spec : Prop :=
  ∀ n, P14679988483064000508.a n = A004166 n

end A004166

/-! ## A004166.P8684194376081053040

`log2(∏{digits}[3^n, 2^#])`
-/

namespace A004166.P8684194376081053040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ)

end

end A004166.P8684194376081053040

namespace A004166

/-- `log2(∏{digits}[3^n, 2^#])` -/
def P8684194376081053040.Spec : Prop :=
  ∀ n, P8684194376081053040.a n = (A004166 n : ℝ)

end A004166

/-!
# A004167: Powers of 3 written backwards.

The programs for A004167, there is no canonical definition to state claims against.
-/

/-! ## A004167.P5476966739085597937

`A004086(A000244(n))`
-/

namespace A004167.P5476966739085597937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A000244 n).toNat

end

end A004167.P5476966739085597937

/-! ## A004167.P14442270088392871723

`A004086(3^n)`
-/

namespace A004167.P14442270088392871723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (3 ^ n)

end

end A004167.P14442270088392871723

/-! ## A004167.P7693901712050231921

`A004156(floor(3^n/2))`
-/

namespace A004167.P7693901712050231921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004156 ⌊(3 ^ n : ℚ) / 2⌋.toNat

end

end A004167.P7693901712050231921

/-! ## A004167.P5942323038438212487

`A056964(3^n)-3^n`
-/

namespace A004167.P5942323038438212487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (3 ^ n) - (3 ^ n : ℤ)

end

end A004167.P5942323038438212487

/-! ## A004167.P9895428455600786373

`lcm(∏{e}[n+1, #!], A004086(A238939(n+1)))`
-/

namespace A004167.P9895428455600786373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p) : ℕ) : ℤ) (A004086 (A238939 (n + 1)).toNat)

end

end A004167.P9895428455600786373

/-!
# A004168: a(n+1) = a(n)*(a(n)+1).

The programs for A004168, the canonical program `A004168.P4976382268762137156` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004168 has offset 0).

The definition of A004168 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004168.P4976382268762137156

`a(n-1)*(a(n-1)+1)` with `a(0)=3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004168

/-- `a(n-1)*(a(n-1)+1)` -/
def P4976382268762137156.Spec : Prop :=
  ∀ n, (P4976382268762137156.a n : ℤ) = A004168 n

theorem P4976382268762137156.correct : P4976382268762137156.Spec := by
  intro n
  simp only [A004168]

end A004168

/-! ## A004168.P17010986108474315685

`A082732(n+3)-1`
-/

namespace A004168.P17010986108474315685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082732 (n + 3) - 1

end

end A004168.P17010986108474315685

namespace A004168

/-- `A082732(n+3)-1` -/
def P17010986108474315685.Spec : Prop :=
  ∀ n, P17010986108474315685.a n = A004168 n

end A004168

/-! ## A004168.P14292833309736049399

`2*C(a(n-1)+1, 2)` with `a(0)=3`
-/

namespace A004168.P14292833309736049399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  2 * Nat.choose (a (n - 1) + 1) 2

end

end A004168.P14292833309736049399

namespace A004168

/-- `2*C(a(n-1)+1, 2)` -/
def P14292833309736049399.Spec : Prop :=
  ∀ n, (P14292833309736049399.a n : ℤ) = A004168 n

end A004168

/-! ## A004168.P3310808310312924068

`lcm(4, C(a(n-1)+1, 2))` with `a(0)=3`
-/

namespace A004168.P3310808310312924068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.lcm 4 (Nat.choose (a (n - 1) + 1) 2)

end

end A004168.P3310808310312924068

namespace A004168

/-- `lcm(4, C(a(n-1)+1, 2))` -/
def P3310808310312924068.Spec : Prop :=
  ∀ n, (P3310808310312924068.a n : ℤ) = A004168 n

end A004168

/-!
# A004169: Values of m for which a regular polygon with m sides cannot be constructed with ruler and compass.

The programs for A004169, the canonical program `A004169.P3341630025634182314` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004169 has offset 1).

The definition of A004169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004169.P3267822770539657779

`comp[A058213(n)-1]+1`
-/

namespace A004169.P3267822770539657779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058213 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A004169.P3267822770539657779

namespace A004169

/-- `comp[A058213(n)-1]+1` -/
def P3267822770539657779.Spec : Prop :=
  ∀ n, (P3267822770539657779.a n : ℤ) = A004169 (n + 1)

end A004169

/-! ## A004169.P17118781947084393761

`comp[A099884(n)-1]+1`
-/

namespace A004169.P17118781947084393761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099884 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A004169.P17118781947084393761

namespace A004169

/-- `comp[A099884(n)-1]+1` -/
def P17118781947084393761.Spec : Prop :=
  ∀ n, (P17118781947084393761.a n : ℤ) = A004169 (n + 1)

end A004169

/-! ## A004169.P2212876243566533928

`lt[0, A293516(n+1)]+1`
-/

namespace A004169.P2212876243566533928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293516 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A004169.P2212876243566533928

namespace A004169

/-- `lt[0, A293516(n+1)]+1` -/
def P2212876243566533928.Spec : Prop :=
  ∀ n, (P2212876243566533928.a n : ℤ) = A004169 (n + 1)

end A004169

/-! ## A004169.P12635619338639176879

`lt[A336477(n+1), 1]+1`
-/

namespace A004169.P12635619338639176879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336477 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A004169.P12635619338639176879

namespace A004169

/-- `lt[A336477(n+1), 1]+1` -/
def P12635619338639176879.Spec : Prop :=
  ∀ n, (P12635619338639176879.a n : ℤ) = A004169 (n + 1)

end A004169

/-! ## A004169.P3341630025634182314

`lt[2, A080400(n+1)]+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004169

/-- `lt[2, A080400(n+1)]+1` -/
def P3341630025634182314.Spec : Prop :=
  ∀ n, (P3341630025634182314.a n : ℤ) = A004169 (n + 1)

theorem P3341630025634182314.correct : P3341630025634182314.Spec := by
  intro n
  simp only [A004169, Nat.add_sub_cancel]

end A004169

/-! ## A004169.P2556034074564220897

`comp[A003401(n+1)-1]+1`
-/

namespace A004169.P2556034074564220897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A004169.P2556034074564220897

namespace A004169

/-- `comp[A003401(n+1)-1]+1` -/
def P2556034074564220897.Spec : Prop :=
  ∀ n, (P2556034074564220897.a n : ℤ) = A004169 (n + 1)

end A004169

/-! ## A004169.P4251839862676274629

`lt[1, A001221(A000010(n+1))]+1`
-/

namespace A004169.P4251839862676274629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A004169.P4251839862676274629

namespace A004169

/-- `lt[1, A001221(A000010(n+1))]+1` -/
def P4251839862676274629.Spec : Prop :=
  ∀ n, (P4251839862676274629.a n : ℤ) = A004169 (n + 1)

end A004169

/-! ## A004169.P14952085602708927048

`lt[2, A006530(A046073(n+1))]+1`
-/

namespace A004169.P14952085602708927048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A046073 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A004169.P14952085602708927048

namespace A004169

/-- `lt[2, A006530(A046073(n+1))]+1` -/
def P14952085602708927048.Spec : Prop :=
  ∀ n, (P14952085602708927048.a n : ℤ) = A004169 (n + 1)

end A004169

/-! ## A004169.P15827454871876486926

`∪[A048136(n+1), A051913(n+1)]`
-/

namespace A004169.P15827454871876486926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004169.P15827454871876486926

namespace A004169

/-- `∪[A048136(n+1), A051913(n+1)]` -/
def P15827454871876486926.Spec : Prop :=
  ∀ n, (P15827454871876486926.a n : ℤ) = A004169 (n + 1)

end A004169

/-! ## A004169.P9376484443025581362

`∪[A048136(n+1), A066498(n+1)]`
-/

namespace A004169.P9376484443025581362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066498 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004169.P9376484443025581362

namespace A004169

/-- `∪[A048136(n+1), A066498(n+1)]` -/
def P9376484443025581362.Spec : Prop :=
  ∀ n, (P9376484443025581362.a n : ℤ) = A004169 (n + 1)

end A004169

/-! ## A004169.P17602028440740440248

`lt[A062570(A062570(n+1)), A062570(n+1)]+1`
-/

namespace A004169.P17602028440740440248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (A062570 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A004169.P17602028440740440248

namespace A004169

/-- `lt[A062570(A062570(n+1)), A062570(n+1)]+1` -/
def P17602028440740440248.Spec : Prop :=
  ∀ n, (P17602028440740440248.a n : ℤ) = A004169 (n + 1)

end A004169

/-! ## A004169.P1062612667315170740

`lt[1, A053575(n+1)]+1`
-/

namespace A004169.P1062612667315170740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053575 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A004169.P1062612667315170740

namespace A004169

/-- `lt[1, A053575(n+1)]+1` -/
def P1062612667315170740.Spec : Prop :=
  ∀ n, (P1062612667315170740.a n : ℤ) = A004169 (n + 1)

end A004169

/-! ## A004169.P92257167818662782

`lt[1, A193169(n+1)]+1`
-/

namespace A004169.P92257167818662782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193169 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A004169.P92257167818662782

namespace A004169

/-- `lt[1, A193169(n+1)]+1` -/
def P92257167818662782.Spec : Prop :=
  ∀ n, (P92257167818662782.a n : ℤ) = A004169 (n + 1)

end A004169

/-! ## A004169.P6069653531529410732

`lt[1, A193454(n+1)]+1`
-/

namespace A004169.P6069653531529410732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193454 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A004169.P6069653531529410732

namespace A004169

/-- `lt[1, A193454(n+1)]+1` -/
def P6069653531529410732.Spec : Prop :=
  ∀ n, (P6069653531529410732.a n : ℤ) = A004169 (n + 1)

end A004169

/-! ## A004169.P16888481449626653645

`lt[1, A256608(n+1)]+1`
-/

namespace A004169.P16888481449626653645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256608 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A004169.P16888481449626653645

namespace A004169

/-- `lt[1, A256608(n+1)]+1` -/
def P16888481449626653645.Spec : Prop :=
  ∀ n, (P16888481449626653645.a n : ℤ) = A004169 (n + 1)

end A004169

/-! ## A004169.P12860846278247239550

`lt[2, A000120(A039649(n+1))]+1`
-/

namespace A004169.P12860846278247239550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A039649 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A004169.P12860846278247239550

namespace A004169

/-- `lt[2, A000120(A039649(n+1))]+1` -/
def P12860846278247239550.Spec : Prop :=
  ∀ n, (P12860846278247239550.a n : ℤ) = A004169 (n + 1)

end A004169

/-! ## A004169.P13227138665348514818

`lt[2, A008472(A055034(n+1))]+1`
-/

namespace A004169.P13227138665348514818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A055034 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A004169.P13227138665348514818

namespace A004169

/-- `lt[2, A008472(A055034(n+1))]+1` -/
def P13227138665348514818.Spec : Prop :=
  ∀ n, (P13227138665348514818.a n : ℤ) = A004169 (n + 1)

end A004169

/-! ## A004169.P12786695347237561311

`lt[1, A006257(A109606(n+1)+1)]+1`
-/

namespace A004169.P12786695347237561311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A109606 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A004169.P12786695347237561311

namespace A004169

/-- `lt[1, A006257(A109606(n+1)+1)]+1` -/
def P12786695347237561311.Spec : Prop :=
  ∀ n, (P12786695347237561311.a n : ℤ) = A004169 (n + 1)

end A004169

/-! ## A004169.P15136590971640494067

`lt[3, A093074(∏{p}[A000010(n+1), #])]+1`
-/

namespace A004169.P15136590971640494067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (∏ p ∈ Nat.primeFactors (f3 n).natAbs, p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A004169.P15136590971640494067

namespace A004169

/-- `lt[3, A093074(∏{p}[A000010(n+1), #])]+1` -/
def P15136590971640494067.Spec : Prop :=
  ∀ n, (P15136590971640494067.a n : ℤ) = A004169 (n + 1)

end A004169

/-! ## A004169.P309915757323584102

`lt[2, A000010(∏{p}[A000010(n+1), #])+1]+1`
-/

namespace A004169.P309915757323584102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∏ p ∈ Nat.primeFactors (f3 n).natAbs, p) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A004169.P309915757323584102

namespace A004169

/-- `lt[2, A000010(∏{p}[A000010(n+1), #])+1]+1` -/
def P309915757323584102.Spec : Prop :=
  ∀ n, (P309915757323584102.a n : ℤ) = A004169 (n + 1)

end A004169

/-!
# A004170: Reversals of Fibonacci numbers (sorted).

The programs for A004170, there is no canonical definition to state claims against.
-/

/-! ## A004170.P8254380440272852324

`xor(A107479(n), A119464(A350249(n)))`
-/

namespace A004170.P8254380440272852324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A107479 n) (A119464 (A350249 n).toNat)

end

end A004170.P8254380440272852324

/-! ## A004170.P5841259677923804083

`A000045(n)-A111900(A072852(n+1))`
-/

namespace A004170.P5841259677923804083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A111900 (A072852 (n + 1)).toNat

end

end A004170.P5841259677923804083

/-! ## A004170.P9911217140731920729

`A000045(n)-A104515(A219274(n+3))`
-/

namespace A004170.P9911217140731920729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n - A104515 (A219274 (n + 3)).toNat

end

end A004170.P9911217140731920729

/-!
# A004171: a(n) = 2^(2n+1).

The programs for A004171, the canonical program `A004171.P14920447653103211752` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004171 has offset 0).

The definition of A004171 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004171.P14920447653103211752

`2*4^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004171

/-- `2*4^n` -/
def P14920447653103211752.Spec : Prop :=
  ∀ n, (P14920447653103211752.a n : ℤ) = A004171 n

theorem P14920447653103211752.correct : P14920447653103211752.Spec := by
  intro n
  simp only [A004171]

end A004171

/-!
# A004172: Triangle of coefficients of Euler polynomials E_2n(x) (exponents in increasing order).

The programs for A004172, there is no canonical definition to state claims against.
-/

/-! ## A004172.P2535242176882828640

`A058940(A161983(n))`
-/

namespace A004172.P2535242176882828640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058940 (A161983 n).toNat

end

end A004172.P2535242176882828640

/-! ## A004172.P11464219733672028719

`A060096(A116942(2*n))`
-/

namespace A004172.P11464219733672028719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060096 (A116942 (2 * n)).toNat

end

end A004172.P11464219733672028719

/-! ## A004172.P3202462681963489588

`A060096(eq[1, A057211(n+1)])`
-/

namespace A004172.P3202462681963489588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060096 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004172.P3202462681963489588

/-! ## A004172.P10937179263982448513

`A060096(eq[n+1, A056011(n+1)])`
-/

namespace A004172.P10937179263982448513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060096 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004172.P10937179263982448513

/-! ## A004172.P16373864409689359782

`A004173(A020703(n+1)-1)`
-/

namespace A004172.P16373864409689359782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004173 (A020703 (n + 1) - 1).toNat

end

end A004172.P16373864409689359782

/-! ## A004172.P2711518039303316273

`A004173(A020703(n+2))`
-/

namespace A004172.P2711518039303316273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004173 (A020703 (n + 2)).toNat

end

end A004172.P2711518039303316273

/-! ## A004172.P15867987484036061579

`A141684(A007606(n+1))`
-/

namespace A004172.P15867987484036061579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141684 (A007606 (n + 1)).toNat

end

end A004172.P15867987484036061579

/-! ## A004172.P2377423299475856951

`A141684(A161983(n)+1)`
-/

namespace A004172.P2377423299475856951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141684 (A161983 n + 1).toNat

end

end A004172.P2377423299475856951

/-! ## A004172.P1781946199351337674

`A141684(2*n+1-A196199(n))`
-/

namespace A004172.P1781946199351337674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141684 ((2 * n + 1 : ℤ) - A196199 n).toNat

end

end A004172.P1781946199351337674

/-!
# A004173: Triangle of coefficients of Euler polynomials E_2n(x) (exponents in decreasing order).

The programs for A004173, there is no canonical definition to state claims against.
-/

/-! ## A004173.P353790947864828347

`A004172(A020703(n+1)-1)`
-/

namespace A004173.P353790947864828347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004172 (A020703 (n + 1) - 1).toNat

end

end A004173.P353790947864828347

/-! ## A004173.P7132501771207762526

`A059341(A161983(n))`
-/

namespace A004173.P7132501771207762526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059341 (A161983 n).toNat

end

end A004173.P7132501771207762526

/-! ## A004173.P3034095100081875446

`A059341(A007606(n+1)-1)`
-/

namespace A004173.P3034095100081875446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059341 (A007606 (n + 1) - 1).toNat

end

end A004173.P3034095100081875446

/-! ## A004173.P10234466532440342843

`A059341(eq[1, A057211(n+1)])`
-/

namespace A004173.P10234466532440342843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059341 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004173.P10234466532440342843

/-! ## A004173.P11444438904116166334

`A059341(2*n-A196199(n))`
-/

namespace A004173.P11444438904116166334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059341 ((2 * n : ℤ) - A196199 n).toNat

end

end A004173.P11444438904116166334

/-! ## A004173.P1847911489734991848

`A059341(n-A196199(n)+n)`
-/

namespace A004173.P1847911489734991848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059341 ((n : ℤ) - A196199 n + (n : ℤ)).toNat

end

end A004173.P1847911489734991848

/-! ## A004173.P17794067025485640756

`A059341(n-(A196199(n)-n))`
-/

namespace A004173.P17794067025485640756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059341 ((n : ℤ) - (A196199 n - (n : ℤ))).toNat

end

end A004173.P17794067025485640756

/-! ## A004173.P6201232594009240700

`A059341(eq[n+1, A056011(n+1)])`
-/

namespace A004173.P6201232594009240700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059341 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004173.P6201232594009240700

/-!
# A004174: Triangle of coefficients of Euler polynomials 2^n*E_n(x) (exponents in increasing order).

The programs for A004174, there is no canonical definition to state claims against.
-/

/-! ## A004174.P17719093113958181950

`A059268(n)*A081733(n)`
-/

namespace A004174.P17719093113958181950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A081733 n

end

end A004174.P17719093113958181950

/-! ## A004174.P7168403443971868743

`A000079(A002262(n))*A081733(n)`
-/

namespace A004174.P7168403443971868743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A081733 n

end

end A004174.P7168403443971868743

/-! ## A004174.P3306283286433878553

`A011782(A002260(n+1))*A081733(n)`
-/

namespace A004174.P3306283286433878553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002260 (n + 1)).toNat * A081733 n

end

end A004174.P3306283286433878553

/-! ## A004174.P3541968109690785190

`A004175(A061579(n))`
-/

namespace A004174.P3541968109690785190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004175 (A061579 n).toNat

end

end A004174.P3541968109690785190

/-! ## A004174.P8922626303229823072

`A004175(A114327(n)+n)`
-/

namespace A004174.P8922626303229823072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004175 (A114327 n + (n : ℤ)).toNat

end

end A004174.P8922626303229823072

/-! ## A004174.P17498488725341865905

`A004175(A038722(n+1)-1)`
-/

namespace A004174.P17498488725341865905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004175 (A038722 (n + 1) - 1).toNat

end

end A004174.P17498488725341865905

/-! ## A004174.P7686633669838896856

`A004175(abs(A024000(A038722(n+1))))`
-/

namespace A004174.P7686633669838896856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004175 |A024000 (A038722 (n + 1)).toNat|.toNat

end

end A004174.P7686633669838896856

/-! ## A004174.P14294382168361656630

`A004175(-A024000(A038722(n+1)))`
-/

namespace A004174.P14294382168361656630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004175 (-A024000 (A038722 (n + 1)).toNat).toNat

end

end A004174.P14294382168361656630

/-! ## A004174.P16217629406368437994

`A004175(A185869(n+1)-A016789(n))`
-/

namespace A004174.P16217629406368437994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004175 (A185869 (n + 1) - A016789 n).toNat

end

end A004174.P16217629406368437994

/-! ## A004174.P13926578389042385823

`A004175(A185869(n+1)%A016789(n))`
-/

namespace A004174.P13926578389042385823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004175 (Int.tmod (A185869 (n + 1)) (A016789 n)).toNat

end

end A004174.P13926578389042385823

/-!
# A004175: Triangle of coefficients of Euler polynomials 2^n*E_n(x) (exponents in decreasing order).

The programs for A004175, there is no canonical definition to state claims against.
-/

/-! ## A004175.P13745715742605213091

`A004174(∑[char[∑[n]]]²-(n+1))`
-/

namespace A004175.P13745715742605213091
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004174 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A004175.P13745715742605213091

/-! ## A004175.P15461606903137098311

`A004174(A061579(n))+A000007(n+1)`
-/

namespace A004175.P15461606903137098311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004174 (A061579 n).toNat + A000007 (n + 1)

end

end A004175.P15461606903137098311

/-! ## A004175.P12414900267616977365

`A004174(A061579(n))*A054977(n+11)`
-/

namespace A004175.P12414900267616977365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004174 (A061579 n).toNat * A054977 (n + 11)

end

end A004175.P12414900267616977365

/-! ## A004175.P11455221416340676905

`or(A000007(n), A004174(A038722(n+1)-1))`
-/

namespace A004175.P11455221416340676905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A004174 (A038722 (n + 1) - 1).toNat)

end

end A004175.P11455221416340676905

/-! ## A004175.P15191186816893142092

`A004174(A038722(n+1)-1)+A000007(n+1)`
-/

namespace A004175.P15191186816893142092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004174 (A038722 (n + 1) - 1).toNat + A000007 (n + 1)

end

end A004175.P15191186816893142092

/-! ## A004175.P6575492655317405900

`A004174(A061579(n))^A014963(A016825(n))`
-/

namespace A004175.P6575492655317405900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004174 (A061579 n).toNat : ℚ) ^ (A014963 (A016825 n).toNat : ℤ)

end

end A004175.P6575492655317405900

/-! ## A004175.P2494721743350778786

`A001222(A083016(n+1))*A004174(A061579(n))`
-/

namespace A004175.P2494721743350778786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A083016 (n + 1)).toNat * A004174 (A061579 n).toNat

end

end A004175.P2494721743350778786

/-! ## A004175.P14357404312115008460

`A004174(A061579(n))%A000051(n)`
-/

namespace A004175.P14357404312115008460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004174 (A061579 n).toNat) (A000051 n)

end

end A004175.P14357404312115008460

/-! ## A004175.P8633720491336739722

`A004174(A038722(n+1)-1)%A252137(n+1)`
-/

namespace A004175.P8633720491336739722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004174 (A038722 (n + 1) - 1).toNat) (A252137 (n + 1))

end

end A004175.P8633720491336739722

/-!
# A004176: Omit 1's from n.

The programs for A004176, there is no canonical definition to state claims against.
-/

/-! ## A004176.P6554948250272623575

`A035043(A004177(A035043(n)))`
-/

namespace A004176.P6554948250272623575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A004177 (A035043 n).toNat).toNat

end

end A004176.P6554948250272623575

/-! ## A004176.P6979817168342891732

`A222220(A004178(A222220(n)))`
-/

namespace A004176.P6979817168342891732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 (A004178 (A222220 n).toNat).toNat

end

end A004176.P6979817168342891732

/-! ## A004176.P14725488243209041225

`A222221(A004179(A222221(n)))`
-/

namespace A004176.P14725488243209041225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 (A004179 (A222221 n).toNat).toNat

end

end A004176.P14725488243209041225

/-! ## A004176.P3315596742031144935

`floor(A004720(A017281(n))/10)`
-/

namespace A004176.P3315596742031144935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004720 (A017281 n).toNat : ℚ) / 10⌋

end

end A004176.P3315596742031144935

/-!
# A004177: Omit 2's from n.

The programs for A004177, there is no canonical definition to state claims against.
-/

/-! ## A004177.P9794545767323054821

`A035043(A004176(A035043(n)))`
-/

namespace A004177.P9794545767323054821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 (A004176 (A035043 n).toNat).toNat

end

end A004177.P9794545767323054821

/-! ## A004177.P3848030156017841896

`A222228(A004179(A222228(n)))`
-/

namespace A004177.P3848030156017841896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (A004179 (A222228 n).toNat).toNat

end

end A004177.P3848030156017841896

/-! ## A004177.P3267634212580467482

`A222229(A004180(A222229(n)))`
-/

namespace A004177.P3267634212580467482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222229 (A004180 (A222229 n).toNat).toNat

end

end A004177.P3267634212580467482

/-!
# A004178: Omit 3's from n.

The programs for A004178, there is no canonical definition to state claims against.
-/

/-! ## A004178.P2800852230492277522

`A222235(A004180(A222235(n)))`
-/

namespace A004178.P2800852230492277522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (A004180 (A222235 n).toNat).toNat

end

end A004178.P2800852230492277522

/-! ## A004178.P6446658478373004097

`n%A032559(A004185(n+7))`
-/

namespace A004178.P6446658478373004097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A032559 (A004185 (n + 7)).toNat)

end

end A004178.P6446658478373004097

/-! ## A004178.P617589016525787988

`A001221(A000043(n+1))*A008611(A004151(3*n+1))`
-/

namespace A004178.P617589016525787988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000043 (n + 1)).toNat * A008611 (A004151 (3 * n + 1)).toNat

end

end A004178.P617589016525787988

/-!
# A004179: Omit 4's from n.

The programs for A004179, there is no canonical definition to state claims against.
-/

/-! ## A004179.P9804635298430215092

`A222240(A004180(A222240(n)))`
-/

namespace A004179.P9804635298430215092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 (A004180 (A222240 n).toNat).toNat

end

end A004179.P9804635298430215092

/-!
# A004180: Omit 5's from n.

The programs for A004180, there is no canonical definition to state claims against.
-/

/-! ## A004180.P14438321334624987443

`n%A054531(A087348(n+1))`
-/

namespace A004180.P14438321334624987443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A054531 (A087348 (n + 1)).toNat)

end

end A004180.P14438321334624987443

/-!
# A004181: Omit 6's from n.

The programs for A004181, there is no canonical definition to state claims against.
-/

/-! ## A004181.P405360391929142409

`A222230(A004177(A222230(n)))`
-/

namespace A004181.P405360391929142409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (A004177 (A222230 n).toNat).toNat

end

end A004181.P405360391929142409

/-! ## A004181.P13624893874098527414

`A222249(A004182(A222249(n)))`
-/

namespace A004181.P13624893874098527414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (A004182 (A222249 n).toNat).toNat

end

end A004181.P13624893874098527414

/-! ## A004181.P14078010800324263932

`A028896(A028896(n))%A004151(3*n+2)`
-/

namespace A004181.P14078010800324263932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028896 (A028896 n).toNat) (A004151 (3 * n + 2))

end

end A004181.P14078010800324263932

/-! ## A004181.P2133284667885437610

`A002264(A004151(3*n+2)%A038123(n+1))`
-/

namespace A004181.P2133284667885437610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.tmod (A004151 (3 * n + 2)) (A038123 (n + 1))).toNat

end

end A004181.P2133284667885437610

/-! ## A004181.P9171120097636945747

`A002264(A004151(3*n+2))%A193412(n+1)`
-/

namespace A004181.P9171120097636945747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002264 (A004151 (3 * n + 2)).toNat) (A193412 (n + 1))

end

end A004181.P9171120097636945747

/-! ## A004181.P7269607274495985991

`(n%A004151(3*n+2))%A091509(n+1)`
-/

namespace A004181.P7269607274495985991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (n : ℤ) (A004151 (3 * n + 2))) (A091509 (n + 1))

end

end A004181.P7269607274495985991

/-! ## A004181.P8729371358381984112

`n%A330031(A061816(n+4))`
-/

namespace A004181.P8729371358381984112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A330031 (A061816 (n + 4)).toNat)

end

end A004181.P8729371358381984112

/-!
# A004182: Omit 7's from n.

The programs for A004182, there is no canonical definition to state claims against.
-/

/-! ## A004182.P6366782119752770489

`A222249(A004181(A222249(n)))`
-/

namespace A004182.P6366782119752770489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (A004181 (A222249 n).toNat).toNat

end

end A004182.P6366782119752770489

/-! ## A004182.P9053825987362005009

`A222252(A004183(A222252(n)))`
-/

namespace A004182.P9053825987362005009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A004183 (A222252 n).toNat).toNat

end

end A004182.P9053825987362005009

/-! ## A004182.P15983213651806467307

`floor(n/Δ[A111706(n+2)])`
-/

namespace A004182.P15983213651806467307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111706 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A004182.P15983213651806467307

/-! ## A004182.P4640195948805392563

`n%A365376(A004151(n+3))`
-/

namespace A004182.P4640195948805392563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A365376 (A004151 (n + 3)).toNat)

end

end A004182.P4640195948805392563

/-!
# A004183: Omit 8's from n.

The programs for A004183, there is no canonical definition to state claims against.
-/

/-! ## A004183.P14616458645351726432

`A222254(A004184(A222254(n)))`
-/

namespace A004183.P14616458645351726432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A004184 (A222254 n).toNat).toNat

end

end A004183.P14616458645351726432

/-! ## A004183.P5514467372628563209

`floor(n/Δ[A111706(n+1)])`
-/

namespace A004183.P5514467372628563209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A004183.P5514467372628563209

/-! ## A004183.P18412366120948370404

`A222254(A222254(n)%A216139(n+2)²)`
-/

namespace A004183.P18412366120948370404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (Int.tmod (A222254 n) (A216139 (n + 2) ^ 2)).toNat

end

end A004183.P18412366120948370404

/-!
# A004184: Omit 9's from n.

The programs for A004184, there is no canonical definition to state claims against.
-/

/-! ## A004184.P14262318261903939802

`A004728(A004151(n+1)-A160093(n+1))`
-/

namespace A004184.P14262318261903939802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004728 (A004151 (n + 1) - A160093 (n + 1)).toNat

end

end A004184.P14262318261903939802

/-! ## A004184.P6243746449472195952

`A382056(A017377(n))`
-/

namespace A004184.P6243746449472195952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382056 (A017377 n).toNat

end

end A004184.P6243746449472195952

/-! ## A004184.P7499474452908891378

`A382056(A017353(n)+2)`
-/

namespace A004184.P7499474452908891378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382056 (A017353 n + 2).toNat

end

end A004184.P7499474452908891378

/-! ## A004184.P12444540332530946915

`A382056(A017341(n)+3)`
-/

namespace A004184.P12444540332530946915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382056 (A017341 n + 3).toNat

end

end A004184.P12444540332530946915

/-! ## A004184.P6352671036789837268

`floor(A004728(10*n+1)/10)`
-/

namespace A004184.P6352671036789837268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004728 (10 * n + 1) : ℚ) / 10⌋

end

end A004184.P6352671036789837268

/-! ## A004184.P6206525416819970394

`n%A050683(A271641(n))`
-/

namespace A004184.P6206525416819970394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A050683 (A271641 n).toNat)

end

end A004184.P6206525416819970394

/-! ## A004184.P10555465944881802460

`A061601(A061601(n))%A004719(A000007(n²+1)+n+1)`
-/

namespace A004184.P10555465944881802460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061601 (A061601 n).toNat) (A004719 (A000007 (n ^ 2 + 1) + (n : ℤ) + 1).toNat)

end

end A004184.P10555465944881802460

/-! ## A004184.P7065847924993293148

`(n+1)/10^val(n+1, 10)-A057077(∑[n*gcd(2, n)²])`
-/

namespace A004184.P7065847924993293148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ) - (A057077 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A004184.P7065847924993293148

/-! ## A004184.P16593297530514773024

`(n+1)/10^val(n+1, 10)-A001222(A293660(n+1))`
-/

namespace A004184.P16593297530514773024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ) - (A001222 (A293660 (n + 1)).toNat : ℚ)

end

end A004184.P16593297530514773024

/-! ## A004184.P9022860546427278054

`A057428(A181061(n))+A004719(n+1)`
-/

namespace A004184.P9022860546427278054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A181061 n).toNat + A004719 (n + 1)

end

end A004184.P9022860546427278054

/-!
# A004185: Arrange digits of n in increasing order, then (for n > 0) omit the zeros.

The programs for A004185, there is no canonical definition to state claims against.
-/

/-! ## A004185.P15615469634747283483

`A070196(n)-n`
-/

namespace A004185.P15615469634747283483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070196 n - (n : ℤ)

end

end A004185.P15615469634747283483

/-! ## A004185.P13474843347478081591

`n-A193581(n)`
-/

namespace A004185.P13474843347478081591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A193581 n

end

end A004185.P13474843347478081591

/-! ## A004185.P1696736437572091468

`A004086(A004186(n))`
-/

namespace A004185.P1696736437572091468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A004186 n).toNat

end

end A004185.P1696736437572091468

/-! ## A004185.P10785275183306238612

`A004086(A108782(n)+n)`
-/

namespace A004185.P10785275183306238612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A108782 n + (n : ℤ)).toNat

end

end A004185.P10785275183306238612

/-! ## A004185.P1939364988866343525

`A052008(n)-A004186(n)`
-/

namespace A004185.P1939364988866343525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052008 n - A004186 n

end

end A004185.P1939364988866343525

/-! ## A004185.P10733038471818246189

`A004186(n)-A151949(n)`
-/

namespace A004185.P10733038471818246189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n - A151949 n

end

end A004185.P10733038471818246189

/-! ## A004185.P12880986989177182736

`A004186(n)-9*A151950(n)`
-/

namespace A004185.P12880986989177182736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n - 9 * A151950 n

end

end A004185.P12880986989177182736

/-! ## A004185.P16380493655001433120

`A052008(n)-(A108782(n)+n)`
-/

namespace A004185.P16380493655001433120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052008 n - (A108782 n + (n : ℤ))

end

end A004185.P16380493655001433120

/-! ## A004185.P4333562386236659487

`A108782(n)+n-A151949(n)`
-/

namespace A004185.P4333562386236659487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 n + ((n : ℤ) - A151949 n)

end

end A004185.P4333562386236659487

/-! ## A004185.P6376240911233534329

`A340479(A004186(n))-A007953(n)`
-/

namespace A004185.P6376240911233534329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340479 (A004186 n).toNat - A007953 n

end

end A004185.P6376240911233534329

/-! ## A004185.P13276280212887419177

`A056967(A047842(n))`
-/

namespace A004185.P13276280212887419177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056967 (A047842 n).toNat

end

end A004185.P13276280212887419177

/-! ## A004185.P9305061484566047062

`A056967(A045918(n)-A097601(n))`
-/

namespace A004185.P9305061484566047062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056967 (A045918 n - A097601 n).toNat

end

end A004185.P9305061484566047062

/-!
# A004186: Arrange digits of n in decreasing order.

The programs for A004186, there is no canonical definition to state claims against.
-/

/-! ## A004186.P11131666801482170489

`A108782(n)+n`
-/

namespace A004186.P11131666801482170489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 n + (n : ℤ)

end

end A004186.P11131666801482170489

/-! ## A004186.P3787085812585132393

`9*A283001(n)+n`
-/

namespace A004186.P3787085812585132393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A283001 n + (n : ℤ)

end

end A004186.P3787085812585132393

/-! ## A004186.P976078679432064000

`A333659(A328447(n))`
-/

namespace A004186.P976078679432064000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333659 (A328447 n).toNat

end

end A004186.P976078679432064000

/-! ## A004186.P12281016331382628014

`A151949(n)+A004185(n)`
-/

namespace A004186.P12281016331382628014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 n + A004185 n

end

end A004186.P12281016331382628014

/-! ## A004186.P3347743467693475617

`A193581(A061601(n))+n`
-/

namespace A004186.P3347743467693475617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 (A061601 n).toNat + (n : ℤ)

end

end A004186.P3347743467693475617

/-! ## A004186.P1642572319527585110

`A008591(A283001(n))+n`
-/

namespace A004186.P1642572319527585110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A283001 n).toNat + (n : ℤ)

end

end A004186.P1642572319527585110

/-! ## A004186.P7787430250904903510

`A052008(n)-A004185(n)`
-/

namespace A004186.P7787430250904903510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052008 n - A004185 n

end

end A004186.P7787430250904903510

/-! ## A004186.P17385008848594624225

`A004185(n)+9*A151950(n)`
-/

namespace A004186.P17385008848594624225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n + 9 * A151950 n

end

end A004186.P17385008848594624225

/-! ## A004186.P5058125342016738554

`A052008(n)+n-A070196(n)`
-/

namespace A004186.P5058125342016738554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052008 n + ((n : ℤ) - A070196 n)

end

end A004186.P5058125342016738554

/-! ## A004186.P11267720054544370048

`A070196(n)+A151949(n)-n`
-/

namespace A004186.P11267720054544370048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070196 n + (A151949 n - (n : ℤ))

end

end A004186.P11267720054544370048

/-! ## A004186.P4576933054149873882

`A052008(n)+A193581(n)-n`
-/

namespace A004186.P4576933054149873882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052008 n + (A193581 n - (n : ℤ))

end

end A004186.P4576933054149873882

/-! ## A004186.P17783102710328452672

`A151949(n)+n-A193581(n)`
-/

namespace A004186.P17783102710328452672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 n + ((n : ℤ) - A193581 n)

end

end A004186.P17783102710328452672

/-! ## A004186.P11049514705580090012

`A056967(A244112(n))`
-/

namespace A004186.P11049514705580090012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056967 (A244112 n).toNat

end

end A004186.P11049514705580090012

/-! ## A004186.P13601594488620375180

`A193581(n)+A118759(A004086(n))`
-/

namespace A004186.P13601594488620375180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193581 n + A118759 (A004086 n).toNat

end

end A004186.P13601594488620375180

/-! ## A004186.P11662421873119506389

`A109014(n²)*A227362(n)`
-/

namespace A004186.P11662421873119506389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109014 (n ^ 2) * A227362 n

end

end A004186.P11662421873119506389

/-!
# A004187: a(n) = 7*a(n-1) - a(n-2) with a(0) = 0, a(1) = 1.

The programs for A004187, the canonical program `A004187.P8580463108432200656` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004187 has offset 0).

The definition of A004187 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*a(n-1)-a(n-2)` (program `A004187.P8580463108432200656`, by `A004187.P8580463108432200656.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004187.P8580463108432200656

`7*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004187

/-- `7*a(n-1)-a(n-2)` -/
def P8580463108432200656.Spec : Prop :=
  ∀ n, P8580463108432200656.a n = A004187 n

theorem P8580463108432200656.correct : P8580463108432200656.Spec := by
  intro n
  simp only [A004187]

end A004187

/-! ## A004187.P3490797913892592277

`A167816(4*n)`
-/

namespace A004187.P3490797913892592277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167816 (4 * n)

end

end A004187.P3490797913892592277

namespace A004187

/-- `A167816(4*n)` -/
def P3490797913892592277.Spec : Prop :=
  ∀ n, P3490797913892592277.a n = A004187 n

end A004187

/-! ## A004187.P5337764230372455753

`A081072(n)/3-1`
-/

namespace A004187.P5337764230372455753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081072 n : ℚ) / 3 - 1

end

end A004187.P5337764230372455753

namespace A004187

/-- `A081072(n)/3-1` -/
def P5337764230372455753.Spec : Prop :=
  ∀ n, P5337764230372455753.a n = (A004187 n : ℚ)

end A004187

/-! ## A004187.P17933908896193291458

`(((7+sqrt(45))/2)^n-((7-sqrt(45))/2)^n)/sqrt(45)`
-/

namespace A004187.P17933908896193291458
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((7 + Real.sqrt (45 : ℝ)) / 2) ^ n - ((7 - Real.sqrt (45 : ℝ)) / 2) ^ n) / Real.sqrt (45 : ℝ)

end

end A004187.P17933908896193291458

namespace A004187

/-- `(((7+sqrt(45))/2)^n-((7-sqrt(45))/2)^n)/sqrt(45)` -/
def P17933908896193291458.Spec : Prop :=
  ∀ n, P17933908896193291458.a n = (A004187 n : ℝ)

end A004187

/-!
# A004188: a(n) = n*(3*n^2 - 1)/2.

The programs for A004188, the canonical program `A004188.P5039121648678825611` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004188 has offset 0).

The definition of A004188 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004188.P77751111441216913

`n*(3*n²-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A004188.P77751111441216913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((3 * n ^ 2 : ℤ) - 1 : ℚ) / 2)

end

end A004188.P77751111441216913

namespace A004188

/-- `n*(3*n²-1)/2` -/
def P77751111441216913.Spec : Prop :=
  ∀ n, P77751111441216913.a n = (A004188 n : ℚ)

end A004188

/-! ## A004188.P5039121648678825611

`A000578(n)+A135503(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004188

/-- `A000578(n)+A135503(n)` -/
def P5039121648678825611.Spec : Prop :=
  ∀ n, P5039121648678825611.a n = A004188 n

theorem P5039121648678825611.correct : P5039121648678825611.Spec := by
  intro n
  simp only [A004188]

end A004188

/-! ## A004188.P17372027318624925891

`A007588(n)-A135503(n)`
-/

namespace A004188.P17372027318624925891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 n - A135503 n

end

end A004188.P17372027318624925891

namespace A004188

/-- `A007588(n)-A135503(n)` -/
def P17372027318624925891.Spec : Prop :=
  ∀ n, P17372027318624925891.a n = A004188 n

end A004188

/-! ## A004188.P9808955427748883312

`∑[9*C(n, 2)]+n`
-/

namespace A004188.P9808955427748883312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A004188.P9808955427748883312

namespace A004188

/-- `∑[9*C(n, 2)]+n` -/
def P9808955427748883312.Spec : Prop :=
  ∀ n, (P9808955427748883312.a n : ℤ) = A004188 n

end A004188

/-! ## A004188.P3959347207870856666

`9*C(n+1, 3)+n`
-/

namespace A004188.P3959347207870856666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Nat.choose (n + 1) 3 + n

end

end A004188.P3959347207870856666

namespace A004188

/-- `9*C(n+1, 3)+n` -/
def P3959347207870856666.Spec : Prop :=
  ∀ n, (P3959347207870856666.a n : ℤ) = A004188 n

end A004188

/-! ## A004188.P8862012704721154551

`∑[C(abs(1-3*n), 2)]`
-/

namespace A004188.P8862012704721154551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |1 - (3 * n : ℤ)|.toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004188.P8862012704721154551

namespace A004188

/-- `∑[C(abs(1-3*n), 2)]` -/
def P8862012704721154551.Spec : Prop :=
  ∀ n, (P8862012704721154551.a n : ℤ) = A004188 n

end A004188

/-! ## A004188.P17422308332742273665

`∑[C(n, 2)]+C(Δ[n²], 3)`
-/

namespace A004188.P17422308332742273665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat 3

end

end A004188.P17422308332742273665

namespace A004188

/-- `∑[C(n, 2)]+C(Δ[n²], 3)` -/
def P17422308332742273665.Spec : Prop :=
  ∀ n, (P17422308332742273665.a n : ℤ) = A004188 n

end A004188

/-! ## A004188.P6283579967856794789

`∑[∑[a(n-1)+9]]` with `a(0)=0, a(1)=1, a(2)=9`
-/

namespace A004188.P6283579967856794789
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 9] fun n f2 =>
  f2 (n - 1) + 9

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004188.P6283579967856794789

namespace A004188

/-- `∑[∑[a(n-1)+9]]` -/
def P6283579967856794789.Spec : Prop :=
  ∀ n, (P6283579967856794789.a n : ℤ) = A004188 n

end A004188

/-! ## A004188.P12887933641929889611

`(A117642(n)-n)/2`
-/

namespace A004188.P12887933641929889611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117642 n - (n : ℤ) : ℚ) / 2

end

end A004188.P12887933641929889611

namespace A004188

/-- `(A117642(n)-n)/2` -/
def P12887933641929889611.Spec : Prop :=
  ∀ n, P12887933641929889611.a n = (A004188 n : ℚ)

end A004188

/-! ## A004188.P18438388035714876377

`∑[record[C(A014682(n), 2)]]`
-/

namespace A004188.P18438388035714876377
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014682 n).toNat 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004188.P18438388035714876377

namespace A004188

/-- `∑[record[C(A014682(n), 2)]]` -/
def P18438388035714876377.Spec : Prop :=
  ∀ n, (P18438388035714876377.a n : ℤ) = A004188 n

end A004188

/-! ## A004188.P8971112933560440898

`∑[A062708(n)]-n²`
-/

namespace A004188.P8971112933560440898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A004188.P8971112933560440898

namespace A004188

/-- `∑[A062708(n)]-n²` -/
def P8971112933560440898.Spec : Prop :=
  ∀ n, P8971112933560440898.a n = A004188 n

end A004188

/-! ## A004188.P16143705916187766387

`∑[A117625(n)-n]-1`
-/

namespace A004188.P16143705916187766387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117625 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A004188.P16143705916187766387

namespace A004188

/-- `∑[A117625(n)-n]-1` -/
def P16143705916187766387.Spec : Prop :=
  ∀ n, P16143705916187766387.a n = A004188 n

end A004188

/-! ## A004188.P5642619191293542501

`A294315(n)/2-∑[n]`
-/

namespace A004188.P5642619191293542501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294315 n : ℚ) / 2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A004188.P5642619191293542501

namespace A004188

/-- `A294315(n)/2-∑[n]` -/
def P5642619191293542501.Spec : Prop :=
  ∀ n, P5642619191293542501.a n = (A004188 n : ℚ)

end A004188

/-! ## A004188.P13332735149439249516

`A000447(n)+∑[C(n, 2)]`
-/

namespace A004188.P13332735149439249516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A004188.P13332735149439249516

namespace A004188

/-- `A000447(n)+∑[C(n, 2)]` -/
def P13332735149439249516.Spec : Prop :=
  ∀ n, P13332735149439249516.a n = A004188 n

end A004188

/-! ## A004188.P9651795972604132733

`A007586(n)+n-∑[n]`
-/

namespace A004188.P9651795972604132733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007586 n + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A004188.P9651795972604132733

namespace A004188

/-- `A007586(n)+n-∑[n]` -/
def P9651795972604132733.Spec : Prop :=
  ∀ n, P9651795972604132733.a n = A004188 n

end A004188

/-! ## A004188.P15297662570621118049

`∑[A051682(n)-n]+n`
-/

namespace A004188.P15297662570621118049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051682 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A004188.P15297662570621118049

namespace A004188

/-- `∑[A051682(n)-n]+n` -/
def P15297662570621118049.Spec : Prop :=
  ∀ n, P15297662570621118049.a n = A004188 n

end A004188

/-! ## A004188.P13533390335814268083

`A160378(n)+n*∑[n]`
-/

namespace A004188.P13533390335814268083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160378 n + ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A004188.P13533390335814268083

namespace A004188

/-- `A160378(n)+n*∑[n]` -/
def P13533390335814268083.Spec : Prop :=
  ∀ n, P13533390335814268083.a n = A004188 n

end A004188

/-! ## A004188.P16185145789084219546

`n*A005449(n)-∑[n]`
-/

namespace A004188.P16185145789084219546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005449 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A004188.P16185145789084219546

namespace A004188

/-- `n*A005449(n)-∑[n]` -/
def P16185145789084219546.Spec : Prop :=
  ∀ n, P16185145789084219546.a n = A004188 n

end A004188

/-! ## A004188.P301229411283091300

`A050509(n)-Δ[n²]²`
-/

namespace A004188.P301229411283091300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050509 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A004188.P301229411283091300

namespace A004188

/-- `A050509(n)-Δ[n²]²` -/
def P301229411283091300.Spec : Prop :=
  ∀ n, P301229411283091300.a n = A004188 n

end A004188

/-! ## A004188.P5822674524590224872

`3*A006003(n)-2*n`
-/

namespace A004188.P5822674524590224872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006003 n - (2 * n : ℤ)

end

end A004188.P5822674524590224872

namespace A004188

/-- `3*A006003(n)-2*n` -/
def P5822674524590224872.Spec : Prop :=
  ∀ n, P5822674524590224872.a n = A004188 n

end A004188

/-!
# A004189: a(n) = 10*a(n-1) - a(n-2); a(0) = 0, a(1) = 1.

The programs for A004189, the canonical program `A004189.P15540389601031025057` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004189 has offset 0).

The definition of A004189 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-a(n-2)` (program `A004189.P15540389601031025057`, by `A004189.P15540389601031025057.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004189.P15540389601031025057

`10*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004189

/-- `10*a(n-1)-a(n-2)` -/
def P15540389601031025057.Spec : Prop :=
  ∀ n, P15540389601031025057.a n = A004189 n

theorem P15540389601031025057.correct : P15540389601031025057.Spec := by
  intro n
  simp only [A004189]

end A004189

/-! ## A004189.P15570333099162556018

`((5+2*sqrt(6))^n-(5-2*sqrt(6))^n)/(4*sqrt(6))`
-/

namespace A004189.P15570333099162556018
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + 2 * Real.sqrt (6 : ℝ)) ^ n - (5 - 2 * Real.sqrt (6 : ℝ)) ^ n) / (4 * Real.sqrt (6 : ℝ))

end

end A004189.P15570333099162556018

namespace A004189

/-- `((5+2*sqrt(6))^n-(5-2*sqrt(6))^n)/(4*sqrt(6))` -/
def P15570333099162556018.Spec : Prop :=
  ∀ n, P15570333099162556018.a n = (A004189 n : ℝ)

end A004189

/-! ## A004189.P12838003655585138159

`sqrt((A001079(n)²-1)/24)`
-/

namespace A004189.P12838003655585138159
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A001079 n ^ 2 - 1 : ℚ) / 24 : ℝ)

end

end A004189.P12838003655585138159

namespace A004189

/-- `sqrt((A001079(n)²-1)/24)` -/
def P12838003655585138159.Spec : Prop :=
  ∀ n, P12838003655585138159.a n = (A004189 n : ℝ)

end A004189

/-! ## A004189.P12054315014256492772

`∑[A072256(n)]-1`
-/

namespace A004189.P12054315014256492772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A004189.P12054315014256492772

namespace A004189

/-- `∑[A072256(n)]-1` -/
def P12054315014256492772.Spec : Prop :=
  ∀ n, P12054315014256492772.a n = A004189 n

end A004189

/-! ## A004189.P6429224135677071480

`record[n%2*A041039(n)]`
-/

namespace A004189.P6429224135677071480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A041039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004189.P6429224135677071480

namespace A004189

/-- `record[n%2*A041039(n)]` -/
def P6429224135677071480.Spec : Prop :=
  ∀ n, P6429224135677071480.a n = A004189 n

end A004189

/-! ## A004189.P3180004055930996205

`∑[A080872(abs(1-2*n))]-1`
-/

namespace A004189.P3180004055930996205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080872 |1 - (2 * n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A004189.P3180004055930996205

namespace A004189

/-- `∑[A080872(abs(1-2*n))]-1` -/
def P3180004055930996205.Spec : Prop :=
  ∀ n, P3180004055930996205.a n = A004189 n

end A004189

/-! ## A004189.P10972720002826715214

`∑[A041039(A004275(n))]-1`
-/

namespace A004189.P10972720002826715214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041039 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A004189.P10972720002826715214

namespace A004189

/-- `∑[A041039(A004275(n))]-1` -/
def P10972720002826715214.Spec : Prop :=
  ∀ n, P10972720002826715214.a n = A004189 n

end A004189

/-! ## A004189.P1920829079534548374

`∑[A001078(n)]-A098297(n)`
-/

namespace A004189.P1920829079534548374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A098297 n

end

end A004189.P1920829079534548374

namespace A004189

/-- `∑[A001078(n)]-A098297(n)` -/
def P1920829079534548374.Spec : Prop :=
  ∀ n, P1920829079534548374.a n = A004189 n

end A004189

/-! ## A004189.P2172807299282582795

`∑[A057427(n)*A072256(n)]`
-/

namespace A004189.P2172807299282582795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A072256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004189.P2172807299282582795

namespace A004189

/-- `∑[A057427(n)*A072256(n)]` -/
def P2172807299282582795.Spec : Prop :=
  ∀ n, P2172807299282582795.a n = A004189 n

end A004189

/-! ## A004189.P14108317560411791508

`record[A041007(n)-A041039(n)]`
-/

namespace A004189.P14108317560411791508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041007 n - A041039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004189.P14108317560411791508

namespace A004189

/-- `record[A041007(n)-A041039(n)]` -/
def P14108317560411791508.Spec : Prop :=
  ∀ n, P14108317560411791508.a n = A004189 n

end A004189

/-! ## A004189.P3751996503215360701

`A080873(2*n)-A072256(n)`
-/

namespace A004189.P3751996503215360701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080873 (2 * n) - A072256 n

end

end A004189.P3751996503215360701

namespace A004189

/-- `A080873(2*n)-A072256(n)` -/
def P3751996503215360701.Spec : Prop :=
  ∀ n, P3751996503215360701.a n = A004189 n

end A004189

/-! ## A004189.P17836425243436450187

`∑[2*A098308(n)]-A098308(n)`
-/

namespace A004189.P17836425243436450187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A098308 n

end

end A004189.P17836425243436450187

namespace A004189

/-- `∑[2*A098308(n)]-A098308(n)` -/
def P17836425243436450187.Spec : Prop :=
  ∀ n, P17836425243436450187.a n = A004189 n

end A004189

/-! ## A004189.P531294009741931612

`record[A000035(n)/2*A041007(n)]`
-/

namespace A004189.P531294009741931612
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000035 n : ℚ) / 2 * (A041007 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004189.P531294009741931612

namespace A004189

/-- `record[A000035(n)/2*A041007(n)]` -/
def P531294009741931612.Spec : Prop :=
  ∀ n, P531294009741931612.a n = (A004189 n : ℚ)

end A004189

/-! ## A004189.P17596133420018414549

`record[lcm(A041007(n), A188510(n))/2]`
-/

namespace A004189.P17596133420018414549
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A041007 n) (A188510 n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004189.P17596133420018414549

namespace A004189

/-- `record[lcm(A041007(n), A188510(n))/2]` -/
def P17596133420018414549.Spec : Prop :=
  ∀ n, P17596133420018414549.a n = (A004189 n : ℚ)

end A004189

/-! ## A004189.P7462820657102108083

`(1/2)²*A122652(n)`
-/

namespace A004189.P7462820657102108083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 2) ^ 2 * (A122652 n : ℚ)

end

end A004189.P7462820657102108083

namespace A004189

/-- `(1/2)²*A122652(n)` -/
def P7462820657102108083.Spec : Prop :=
  ∀ n, P7462820657102108083.a n = (A004189 n : ℚ)

end A004189

/-! ## A004189.P15685294578148572390

`A077251(n)-A054320(n)`
-/

namespace A004189.P15685294578148572390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077251 n - A054320 n

end

end A004189.P15685294578148572390

namespace A004189

/-- `A077251(n)-A054320(n)` -/
def P15685294578148572390.Spec : Prop :=
  ∀ n, P15685294578148572390.a n = A004189 n

end A004189

/-! ## A004189.P6566177487198168081

`A140780(n)-A140781(n)`
-/

namespace A004189.P6566177487198168081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140780 n - A140781 n

end

end A004189.P6566177487198168081

namespace A004189

/-- `A140780(n)-A140781(n)` -/
def P6566177487198168081.Spec : Prop :=
  ∀ n, P6566177487198168081.a n = A004189 n

end A004189

/-! ## A004189.P10859559920576742533

`A152448(2*n)-A001079(n)`
-/

namespace A004189.P10859559920576742533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152448 (2 * n) - A001079 n

end

end A004189.P10859559920576742533

namespace A004189

/-- `A152448(2*n)-A001079(n)` -/
def P10859559920576742533.Spec : Prop :=
  ∀ n, P10859559920576742533.a n = A004189 n

end A004189

/-! ## A004189.P6274178025903131999

`A105038(n)-A077288(2*n)`
-/

namespace A004189.P6274178025903131999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105038 n - A077288 (2 * n)

end

end A004189.P6274178025903131999

namespace A004189

/-- `A105038(n)-A077288(2*n)` -/
def P6274178025903131999.Spec : Prop :=
  ∀ n, P6274178025903131999.a n = A004189 n

end A004189

/-!
# A004190: Expansion of 1/(1 - 11*x + x^2).

The programs for A004190, the canonical program `A004190.P17261032913552999059` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004190 has offset 0).

The definition of A004190 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004190.P17261032913552999059

`11*a(n-1)-a(n-2)` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004190

/-- `11*a(n-1)-a(n-2)` -/
def P17261032913552999059.Spec : Prop :=
  ∀ n, P17261032913552999059.a n = A004190 n

theorem P17261032913552999059.correct : P17261032913552999059.Spec := by
  intro n
  simp only [A004190]

end A004190

/-! ## A004190.P15778251632714685172

`A075835(n+2)/3`
-/

namespace A004190.P15778251632714685172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075835 (n + 2) : ℚ) / 3

end

end A004190.P15778251632714685172

namespace A004190

/-- `A075835(n+2)/3` -/
def P15778251632714685172.Spec : Prop :=
  ∀ n, P15778251632714685172.a n = (A004190 n : ℚ)

end A004190

/-! ## A004190.P13473558491979196276

`A006190(2*n+2)/3`
-/

namespace A004190.P13473558491979196276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006190 (2 * n + 2) : ℚ) / 3

end

end A004190.P13473558491979196276

namespace A004190

/-- `A006190(2*n+2)/3` -/
def P13473558491979196276.Spec : Prop :=
  ∀ n, P13473558491979196276.a n = (A004190 n : ℚ)

end A004190

/-! ## A004190.P2063824020328348087

`((11+3*sqrt(13))^(n+1)-(11-3*sqrt(13))^(n+1))/(2^(n+1)*3*sqrt(13))`
-/

namespace A004190.P2063824020328348087
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((11 + 3 * Real.sqrt (13 : ℝ)) ^ (n + 1) - (11 - 3 * Real.sqrt (13 : ℝ)) ^ (n + 1)) / ((2 ^ (n + 1) : ℝ) * (3 * Real.sqrt (13 : ℝ)))

end

end A004190.P2063824020328348087

namespace A004190

/-- `((11+3*sqrt(13))^(n+1)-(11-3*sqrt(13))^(n+1))/(2^(n+1)*3*sqrt(13))` -/
def P2063824020328348087.Spec : Prop :=
  ∀ n, P2063824020328348087.a n = (A004190 n : ℝ)

end A004190

/-! ## A004190.P7183653819977515499

`sqrt((A057076(n+1)²-4)/117)`
-/

namespace A004190.P7183653819977515499
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A057076 (n + 1) ^ 2 - 4 : ℚ) / 117 : ℝ)

end

end A004190.P7183653819977515499

namespace A004190

/-- `sqrt((A057076(n+1)²-4)/117)` -/
def P7183653819977515499.Spec : Prop :=
  ∀ n, P7183653819977515499.a n = (A004190 n : ℝ)

end A004190

/-! ## A004190.P17573151972156315730

`∑[A078922(n+1)]`
-/

namespace A004190.P17573151972156315730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004190.P17573151972156315730

namespace A004190

/-- `∑[A078922(n+1)]` -/
def P17573151972156315730.Spec : Prop :=
  ∀ n, P17573151972156315730.a n = A004190 n

end A004190

/-! ## A004190.P3996007873973179638

`∑[A006190(Δ[n²])]`
-/

namespace A004190.P3996007873973179638
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004190.P3996007873973179638

namespace A004190

/-- `∑[A006190(Δ[n²])]` -/
def P3996007873973179638.Spec : Prop :=
  ∀ n, P3996007873973179638.a n = A004190 n

end A004190

/-! ## A004190.P9624243801363227719

`∑[∑[A052906(2*n)]]`
-/

namespace A004190.P9624243801363227719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052906 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004190.P9624243801363227719

namespace A004190

/-- `∑[∑[A052906(2*n)]]` -/
def P9624243801363227719.Spec : Prop :=
  ∀ n, P9624243801363227719.a n = A004190 n

end A004190

/-! ## A004190.P535356190381370511

`∑[A249579(8*n+4)]`
-/

namespace A004190.P535356190381370511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249579 (8 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004190.P535356190381370511

namespace A004190

/-- `∑[A249579(8*n+4)]` -/
def P535356190381370511.Spec : Prop :=
  ∀ n, P535356190381370511.a n = A004190 n

end A004190

/-!
# A004191: Expansion of 1/(1 - 12*x + x^2).

The programs for A004191, the canonical program `A004191.P5932018785409946769` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004191 has offset 0).

The definition of A004191 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004191.P5932018785409946769

`12*a(n-1)-a(n-2)` with `a(0)=1, a(1)=12`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A004191

/-- `12*a(n-1)-a(n-2)` -/
def P5932018785409946769.Spec : Prop :=
  ∀ n, P5932018785409946769.a n = A004191 n

theorem P5932018785409946769.correct : P5932018785409946769.Spec := by
  intro n
  simp only [A004191]

end A004191

/-! ## A004191.P12698375037230861891

`((6+sqrt(35))^(n+1)-(6-sqrt(35))^(n+1))/(2*sqrt(35))`
-/

namespace A004191.P12698375037230861891
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((6 + Real.sqrt (35 : ℝ)) ^ (n + 1) - (6 - Real.sqrt (35 : ℝ)) ^ (n + 1)) / (2 * Real.sqrt (35 : ℝ))

end

end A004191.P12698375037230861891

namespace A004191

/-- `((6+sqrt(35))^(n+1)-(6-sqrt(35))^(n+1))/(2*sqrt(35))` -/
def P12698375037230861891.Spec : Prop :=
  ∀ n, P12698375037230861891.a n = (A004191 n : ℝ)

end A004191

/-! ## A004191.P9085290278254716466

`∑[A077417(n)]`
-/

namespace A004191.P9085290278254716466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004191.P9085290278254716466

namespace A004191

/-- `∑[A077417(n)]` -/
def P9085290278254716466.Spec : Prop :=
  ∀ n, P9085290278254716466.a n = A004191 n

end A004191

/-! ## A004191.P11466132558436955060

`A041059(Δ[n²])`
-/

namespace A004191.P11466132558436955060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041059 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A004191.P11466132558436955060

namespace A004191

/-- `A041059(Δ[n²])` -/
def P11466132558436955060.Spec : Prop :=
  ∀ n, P11466132558436955060.a n = A004191 n

end A004191

/-! ## A004191.P16577462026542525297

`∑[A041059(2*n)]`
-/

namespace A004191.P16577462026542525297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041059 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004191.P16577462026542525297

namespace A004191

/-- `∑[A041059(2*n)]` -/
def P16577462026542525297.Spec : Prop :=
  ∀ n, P16577462026542525297.a n = A004191 n

end A004191

/-! ## A004191.P16827882253528935240

`∑[A080875(2*n+1)]`
-/

namespace A004191.P16827882253528935240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080875 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004191.P16827882253528935240

namespace A004191

/-- `∑[A080875(2*n+1)]` -/
def P16827882253528935240.Spec : Prop :=
  ∀ n, P16827882253528935240.a n = A004191 n

end A004191

/-! ## A004191.P12529201730942527164

`Δ[A253621(n+1)/5]`
-/

namespace A004191.P12529201730942527164
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253621 (n + 1) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A004191.P12529201730942527164

namespace A004191

/-- `Δ[A253621(n+1)/5]` -/
def P12529201730942527164.Spec : Prop :=
  ∀ n, P12529201730942527164.a n = (A004191 n : ℚ)

end A004191

/-! ## A004191.P7450168094892828208

`A077416(n)-a(n-1)` with `a(0)=1`
-/

namespace A004191.P7450168094892828208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077416 n - a (n - 1)

end

end A004191.P7450168094892828208

namespace A004191

/-- `A077416(n)-a(n-1)` -/
def P7450168094892828208.Spec : Prop :=
  ∀ n, P7450168094892828208.a n = A004191 n

end A004191

/-! ## A004191.P5689053749902271349

`A023038(n)+6*a(n-1)` with `a(0)=1`
-/

namespace A004191.P5689053749902271349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A023038 n + 6 * a (n - 1)

end

end A004191.P5689053749902271349

namespace A004191

/-- `A023038(n)+6*a(n-1)` -/
def P5689053749902271349.Spec : Prop :=
  ∀ n, P5689053749902271349.a n = A004191 n

end A004191

/-!
# A004192: Numbers obtained by reversing digits of factorial numbers.

The programs for A004192, there is no canonical definition to state claims against.
-/

/-! ## A004192.P17243161945419224490

`A004086(A082353(n)!)`
-/

namespace A004192.P17243161945419224490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Nat.factorial (A082353 n).toNat)

end

end A004192.P17243161945419224490

/-! ## A004192.P1613168251538803245

`A004086(A089851(n)!)`
-/

namespace A004192.P1613168251538803245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Nat.factorial (A089851 n).toNat)

end

end A004192.P1613168251538803245

/-! ## A004192.P6598433771218793202

`A004086(A122305(n)!)`
-/

namespace A004192.P6598433771218793202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Nat.factorial (A122305 n).toNat)

end

end A004192.P6598433771218793202

/-! ## A004192.P4334443460793276814

`A004086(A122310(n)!)`
-/

namespace A004192.P4334443460793276814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Nat.factorial (A122310 n).toNat)

end

end A004192.P4334443460793276814

/-! ## A004192.P8750324124601912291

`A004086(A122343(n)!)`
-/

namespace A004192.P8750324124601912291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Nat.factorial (A122343 n).toNat)

end

end A004192.P8750324124601912291

/-!
# A004193: a(n) = -(-1)^n*2*(2*n+1)!*Bernoulli(2*n)/(n!*2^n).

The programs for A004193, there is no canonical definition to state claims against.
-/

/-! ## A004193.P12952265965106407544

`abs(A168136(n+1)/A011782(n+1))`
-/

namespace A004193.P12952265965106407544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A168136 (n + 1) : ℚ) / (A011782 (n + 1) : ℚ)|

end

end A004193.P12952265965106407544

/-! ## A004193.P6267014342816546181

`abs(A168136(n+1)/A016116(2*n))`
-/

namespace A004193.P6267014342816546181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A168136 (n + 1) : ℚ) / (A016116 (2 * n) : ℚ)|

end

end A004193.P6267014342816546181

/-!
# A004194: Number of partitions of 1/n into 3 reciprocals of positive integers.

The programs for A004194, there is no canonical definition to state claims against.
-/

/-! ## A004194.P12905273684981744554

`A192787(4*(n+1))`
-/

namespace A004194.P12905273684981744554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192787 (4 * (n + 1))

end

end A004194.P12905273684981744554

/-! ## A004194.P342369849267249825

`A192787((n+2)²-n²)%A107151(n+1)`
-/

namespace A004194.P342369849267249825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A192787 ((n + 2) ^ 2 - n ^ 2)) (A107151 (n + 1))

end

end A004194.P342369849267249825

/-! ## A004194.P15409307476017943678

`A226641(2*(n+1))`
-/

namespace A004194.P15409307476017943678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226641 (2 * (n + 1))

end

end A004194.P15409307476017943678

/-! ## A004194.P14075377123446244312

`A361689(n+1)+A227610(n+1)`
-/

namespace A004194.P14075377123446244312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361689 (n + 1) + A227610 (n + 1)

end

end A004194.P14075377123446244312

/-! ## A004194.P8676526419141809135

`A226641(Δ[A002378(n)])%A250352(n+1)`
-/

namespace A004194.P8676526419141809135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226641 (f1 (n + 1) - f1 n).toNat) (A250352 (n + 1))

end

end A004194.P8676526419141809135

/-! ## A004194.P4488248420189643519

`A226645(6*(n+1))`
-/

namespace A004194.P4488248420189643519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226645 (6 * (n + 1))

end

end A004194.P4488248420189643519

/-!
# A004195: The numbers not expressible as the sum of 4 distinct nonzero squares can be written D*4^n union E. This is D.

The programs for A004195, there is no canonical definition to state claims against.
-/

/-! ## A004195.P12666966761227665552

`lt[A025437(n), A007877(n)]`
-/

namespace A004195.P12666966761227665552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004195.P12666966761227665552

/-! ## A004195.P2421528707552327840

`eq[A014017(n), A025443(A008574(n))]`
-/

namespace A004195.P2421528707552327840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014017 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004195.P2421528707552327840

/-! ## A004195.P13707715579205934377

`eq[A014017(n), A025443(A008586(n))]`
-/

namespace A004195.P13707715579205934377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014017 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (A008586 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004195.P13707715579205934377

/-! ## A004195.P4544719239930663476

`eq[A025443(A008574(n)), A035444(n)]`
-/

namespace A004195.P4544719239930663476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004195.P4544719239930663476

/-! ## A004195.P15486055224090838696

`eq[A025443(A008586(n)), A035444(n)]`
-/

namespace A004195.P15486055224090838696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (A008586 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004195.P15486055224090838696

/-!
# A004196: The numbers not expressible as the sum of 4 distinct nonzero squares can be written D*4^n union E. This is E.

The programs for A004196, there is no canonical definition to state claims against.
-/

/-! ## A004196.P16718198922950164388

`eq[A000007(A025443(4*n)), A025443(n)]`
-/

namespace A004196.P16718198922950164388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A025443 (4 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004196.P16718198922950164388

/-! ## A004196.P6339699464737301144

`lt[n*A025443(n), A025443(A008574(n))]`
-/

namespace A004196.P6339699464737301144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A025443 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004196.P6339699464737301144

/-! ## A004196.P8801525113272270968

`lt[n*A025443(n), A025443(A008586(n))]`
-/

namespace A004196.P8801525113272270968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A025443 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025443 (A008586 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004196.P8801525113272270968

/-! ## A004196.P7592501530867556342

`eq[3, A248509(n^(n%2))]`
-/

namespace A004196.P7592501530867556342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248509 (n ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004196.P7592501530867556342

/-! ## A004196.P1493383081459384871

`eq[3, A248509(A093178(n))]`
-/

namespace A004196.P1493383081459384871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248509 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004196.P1493383081459384871

/-!
# A004197: Triangle read by rows. T(n, k) = n - k if n - k < k, otherwise k.

The programs for A004197, the canonical program `A004197.P2905520585302697030` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004197 has offset 0).

The definition of A004197 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003983, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A004197.P2905520585302697030

`A003983(n+1)-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A004197

/-- `A003983(n+1)-1` -/
def P2905520585302697030.Spec : Prop :=
  ∀ n, P2905520585302697030.a n = A004197 n

theorem P2905520585302697030.correct : P2905520585302697030.Spec := by
  intro n
  simp only [A004197]

end A004197

/-! ## A004197.P13998832641434876394

`(A003056(n)-A049581(n))/2`
-/

namespace A004197.P13998832641434876394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003056 n - A049581 n : ℚ) / 2

end

end A004197.P13998832641434876394

namespace A004197

/-- `(A003056(n)-A049581(n))/2` -/
def P13998832641434876394.Spec : Prop :=
  ∀ n, P13998832641434876394.a n = (A004197 n : ℚ)

end A004197

/-! ## A004197.P8827912243203478965

`log2(A144464(n))`
-/

namespace A004197.P8827912243203478965
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A144464 n : ℝ)

end

end A004197.P8827912243203478965

namespace A004197

/-- `log2(A144464(n))` -/
def P8827912243203478965.Spec : Prop :=
  ∀ n, P8827912243203478965.a n = (A004197 n : ℝ)

end A004197

/-! ## A004197.P13988785344353231686

`val(A152714(n), 3)`
-/

namespace A004197.P13988785344353231686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A152714 n).toNat 3

end

end A004197.P13988785344353231686

namespace A004197

/-- `val(A152714(n), 3)` -/
def P13988785344353231686.Spec : Prop :=
  ∀ n, (P13988785344353231686.a n : ℤ) = A004197 n

end A004197

/-! ## A004197.P9546655747299266631

`val(A152716(n), 4)`
-/

namespace A004197.P9546655747299266631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A152716 n).toNat 4

end

end A004197.P9546655747299266631

namespace A004197

/-- `val(A152716(n), 4)` -/
def P9546655747299266631.Spec : Prop :=
  ∀ n, (P9546655747299266631.a n : ℤ) = A004197 n

end A004197

/-! ## A004197.P1284292120222124026

`val(A152717(n), 5)`
-/

namespace A004197.P1284292120222124026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A152717 n).toNat 5

end

end A004197.P1284292120222124026

namespace A004197

/-- `val(A152717(n), 5)` -/
def P1284292120222124026.Spec : Prop :=
  ∀ n, (P1284292120222124026.a n : ℤ) = A004197 n

end A004197

/-! ## A004197.P14852744137021975077

`val(A036561(n), 6)`
-/

namespace A004197.P14852744137021975077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A036561 n).toNat 6

end

end A004197.P14852744137021975077

namespace A004197

/-- `val(A036561(n), 6)` -/
def P14852744137021975077.Spec : Prop :=
  ∀ n, (P14852744137021975077.a n : ℤ) = A004197 n

end A004197

/-! ## A004197.P1463009960595131597

`val(A175840(n), 6)`
-/

namespace A004197.P1463009960595131597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A175840 n).toNat 6

end

end A004197.P1463009960595131597

namespace A004197

/-- `val(A175840(n), 6)` -/
def P1463009960595131597.Spec : Prop :=
  ∀ n, (P1463009960595131597.a n : ℤ) = A004197 n

end A004197

/-! ## A004197.P1557389450787711200

`floor(log2(A143086(n)))`
-/

namespace A004197.P1557389450787711200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A143086 n).toNat

end

end A004197.P1557389450787711200

namespace A004197

/-- `floor(log2(A143086(n)))` -/
def P1557389450787711200.Spec : Prop :=
  ∀ n, (P1557389450787711200.a n : ℤ) = A004197 n

end A004197

/-! ## A004197.P3343612858481526641

`floor(A157458(n)/2)`
-/

namespace A004197.P3343612858481526641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A157458 n : ℚ) / 2⌋

end

end A004197.P3343612858481526641

namespace A004197

/-- `floor(A157458(n)/2)` -/
def P3343612858481526641.Spec : Prop :=
  ∀ n, P3343612858481526641.a n = A004197 n

end A004197

/-! ## A004197.P473707077281335209

`val(A082234(n+1), 6)`
-/

namespace A004197.P473707077281335209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A082234 (n + 1)).toNat 6

end

end A004197.P473707077281335209

namespace A004197

/-- `val(A082234(n+1), 6)` -/
def P473707077281335209.Spec : Prop :=
  ∀ n, (P473707077281335209.a n : ℤ) = A004197 n

end A004197

/-! ## A004197.P3529502993400351750

`sqrt(A106314(n+1))-1`
-/

namespace A004197.P3529502993400351750
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A106314 (n + 1) : ℝ) - 1

end

end A004197.P3529502993400351750

namespace A004197

/-- `sqrt(A106314(n+1))-1` -/
def P3529502993400351750.Spec : Prop :=
  ∀ n, P3529502993400351750.a n = (A004197 n : ℝ)

end A004197

/-! ## A004197.P1311974112754056448

`floor(A157454(n+1)/2)`
-/

namespace A004197.P1311974112754056448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A157454 (n + 1) : ℚ) / 2⌋

end

end A004197.P1311974112754056448

namespace A004197

/-- `floor(A157454(n+1)/2)` -/
def P1311974112754056448.Spec : Prop :=
  ∀ n, P1311974112754056448.a n = A004197 n

end A004197

/-! ## A004197.P13052969112147906033

`floor(A204028(n+1)/3)`
-/

namespace A004197.P13052969112147906033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A204028 (n + 1) : ℚ) / 3⌋

end

end A004197.P13052969112147906033

namespace A004197

/-- `floor(A204028(n+1)/3)` -/
def P13052969112147906033.Spec : Prop :=
  ∀ n, P13052969112147906033.a n = A004197 n

end A004197

/-! ## A004197.P16107333271141060024

`val(A082693(2*n+1), 4)`
-/

namespace A004197.P16107333271141060024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A082693 (2 * n + 1)).toNat 4

end

end A004197.P16107333271141060024

namespace A004197

/-- `val(A082693(2*n+1), 4)` -/
def P16107333271141060024.Spec : Prop :=
  ∀ n, (P16107333271141060024.a n : ℤ) = A004197 n

end A004197

/-! ## A004197.P16514533057884780099

`sqrt(A168281(n+1)/2)-1`
-/

namespace A004197.P16514533057884780099
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A168281 (n + 1) : ℚ) / 2 : ℝ) - 1

end

end A004197.P16514533057884780099

namespace A004197

/-- `sqrt(A168281(n+1)/2)-1` -/
def P16514533057884780099.Spec : Prop :=
  ∀ n, P16514533057884780099.a n = (A004197 n : ℝ)

end A004197

/-! ## A004197.P13925123006410965830

`A053616(A056943(n))`
-/

namespace A004197.P13925123006410965830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (A056943 n).toNat

end

end A004197.P13925123006410965830

namespace A004197

/-- `A053616(A056943(n))` -/
def P13925123006410965830.Spec : Prop :=
  ∀ n, P13925123006410965830.a n = A004197 n

end A004197

/-! ## A004197.P15445978268617823027

`A002265(A115281(n))`
-/

namespace A004197.P15445978268617823027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A115281 n).toNat

end

end A004197.P15445978268617823027

namespace A004197

/-- `A002265(A115281(n))` -/
def P15445978268617823027.Spec : Prop :=
  ∀ n, P15445978268617823027.a n = A004197 n

end A004197

/-! ## A004197.P5389026569163335740

`A053616(A083920(n))`
-/

namespace A004197.P5389026569163335740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (A083920 n).toNat

end

end A004197.P5389026569163335740

namespace A004197

/-- `A053616(A083920(n))` -/
def P5389026569163335740.Spec : Prop :=
  ∀ n, P5389026569163335740.a n = A004197 n

end A004197

/-! ## A004197.P961408482481384009

`A004526(A157458(n))`
-/

namespace A004197.P961408482481384009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A157458 n).toNat

end

end A004197.P961408482481384009

namespace A004197

/-- `A004526(A157458(n))` -/
def P961408482481384009.Spec : Prop :=
  ∀ n, P961408482481384009.a n = A004197 n

end A004197

/-!
# A004198: Table of x AND y, where (x,y) = (0,0),(0,1),(1,0),(0,2),(1,1),(2,0),...

The programs for A004198, the canonical program `A004198.P12357337643379645634` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004198 has offset 0).

The definition of A004198 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004198.P9468796410105300825

`A221146(n)/2`
-/

namespace A004198.P9468796410105300825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221146 n : ℚ) / 2

end

end A004198.P9468796410105300825

namespace A004198

/-- `A221146(n)/2` -/
def P9468796410105300825.Spec : Prop :=
  ∀ n, P9468796410105300825.a n = (A004198 n : ℚ)

end A004198

/-! ## A004198.P232606450757499158

`∑[char[∑[n+1]]]-A003986(n)`
-/

namespace A004198.P232606450757499158
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A003986 n

end

end A004198.P232606450757499158

namespace A004198

/-- `∑[char[∑[n+1]]]-A003986(n)` -/
def P232606450757499158.Spec : Prop :=
  ∀ n, P232606450757499158.a n = A004198 n

end A004198

/-! ## A004198.P11143559523119498138

`C(comp[∑[n]]-n, 2)-(n+1)-A099026(n)`
-/

namespace A004198.P11143559523119498138
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) - A099026 n

end

end A004198.P11143559523119498138

namespace A004198

/-- `C(comp[∑[n]]-n, 2)-(n+1)-A099026(n)` -/
def P11143559523119498138.Spec : Prop :=
  ∀ n, P11143559523119498138.a n = A004198 n

end A004198

/-! ## A004198.P5891474681729263994

`A001281(A221146(n))`
-/

namespace A004198.P5891474681729263994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A221146 n).toNat

end

end A004198.P5891474681729263994

namespace A004198

/-- `A001281(A221146(n))` -/
def P5891474681729263994.Spec : Prop :=
  ∀ n, P5891474681729263994.a n = A004198 n

end A004198

/-! ## A004198.P11836268154301314824

`A002262(A286098(n))`
-/

namespace A004198.P11836268154301314824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A286098 n).toNat

end

end A004198.P11836268154301314824

namespace A004198

/-- `A002262(A286098(n))` -/
def P11836268154301314824.Spec : Prop :=
  ∀ n, P11836268154301314824.a n = A004198 n

end A004198

/-! ## A004198.P1234911575164086438

`A292373(A054238(n))`
-/

namespace A004198.P1234911575164086438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (A054238 n).toNat

end

end A004198.P1234911575164086438

namespace A004198

/-- `A292373(A054238(n))` -/
def P1234911575164086438.Spec : Prop :=
  ∀ n, P1234911575164086438.a n = A004198 n

end A004198

/-! ## A004198.P182062873971372882

`A103822(A286099(n))`
-/

namespace A004198.P182062873971372882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103822 (A286099 n).toNat

end

end A004198.P182062873971372882

namespace A004198

/-- `A103822(A286099(n))` -/
def P182062873971372882.Spec : Prop :=
  ∀ n, P182062873971372882.a n = A004198 n

end A004198

/-! ## A004198.P7329100890466679395

`A292373(A346453(n))`
-/

namespace A004198.P7329100890466679395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (A346453 n).toNat

end

end A004198.P7329100890466679395

namespace A004198

/-- `A292373(A346453(n))` -/
def P7329100890466679395.Spec : Prop :=
  ∀ n, P7329100890466679395.a n = A004198 n

end A004198

/-! ## A004198.P13305423740371819863

`A002265(2*A221146(n))`
-/

namespace A004198.P13305423740371819863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A221146 n).toNat

end

end A004198.P13305423740371819863

namespace A004198

/-- `A002265(2*A221146(n))` -/
def P13305423740371819863.Spec : Prop :=
  ∀ n, P13305423740371819863.a n = A004198 n

end A004198

/-! ## A004198.P12357337643379645634

`A003986(n)-A003987(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A004198

/-- `A003986(n)-A003987(n)` -/
def P12357337643379645634.Spec : Prop :=
  ∀ n, P12357337643379645634.a n = A004198 n

theorem P12357337643379645634.correct : P12357337643379645634.Spec := by
  intro n
  simp only [A004198]

end A004198

/-! ## A004198.P1390003077983394463

`A025581(n)-A099026(n)`
-/

namespace A004198.P1390003077983394463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n - A099026 n

end

end A004198.P1390003077983394463

namespace A004198

/-- `A025581(n)-A099026(n)` -/
def P1390003077983394463.Spec : Prop :=
  ∀ n, P1390003077983394463.a n = A004198 n

end A004198

/-! ## A004198.P14966320203337921519

`A286098(n)-A057944(n)`
-/

namespace A004198.P14966320203337921519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286098 n - A057944 n

end

end A004198.P14966320203337921519

namespace A004198

/-- `A286098(n)-A057944(n)` -/
def P14966320203337921519.Spec : Prop :=
  ∀ n, P14966320203337921519.a n = A004198 n

end A004198

/-! ## A004198.P7262548754142925349

`A286099(n)-A286109(n)`
-/

namespace A004198.P7262548754142925349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286099 n - A286109 n

end

end A004198.P7262548754142925349

namespace A004198

/-- `A286099(n)-A286109(n)` -/
def P7262548754142925349.Spec : Prop :=
  ∀ n, P7262548754142925349.a n = A004198 n

end A004198

/-! ## A004198.P14496854087057421977

`A286108(n)-A286098(n)`
-/

namespace A004198.P14496854087057421977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286108 n - A286098 n

end

end A004198.P14496854087057421977

namespace A004198

/-- `A286108(n)-A286098(n)` -/
def P14496854087057421977.Spec : Prop :=
  ∀ n, P14496854087057421977.a n = A004198 n

end A004198

/-! ## A004198.P4858145630851612487

`and(A003984(n), A004197(n))`
-/

namespace A004198.P4858145630851612487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003984 n) (A004197 n)

end

end A004198.P4858145630851612487

namespace A004198

/-- `and(A003984(n), A004197(n))` -/
def P4858145630851612487.Spec : Prop :=
  ∀ n, P4858145630851612487.a n = A004198 n

end A004198

/-! ## A004198.P9128399662791839578

`and(A002262(n), A025581(n))`
-/

namespace A004198.P9128399662791839578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002262 n) (A025581 n)

end

end A004198.P9128399662791839578

namespace A004198

/-- `and(A002262(n), A025581(n))` -/
def P9128399662791839578.Spec : Prop :=
  ∀ n, P9128399662791839578.a n = A004198 n

end A004198

/-! ## A004198.P13007183168807084092

`and(A025581(n), A114219(n))`
-/

namespace A004198.P13007183168807084092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025581 n) (A114219 n)

end

end A004198.P13007183168807084092

namespace A004198

/-- `and(A025581(n), A114219(n))` -/
def P13007183168807084092.Spec : Prop :=
  ∀ n, P13007183168807084092.a n = A004198 n

end A004198

/-! ## A004198.P16494768853170132528

`and(A103822(n), A103823(n))`
-/

namespace A004198.P16494768853170132528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103822 n) (A103823 n)

end

end A004198.P16494768853170132528

namespace A004198

/-- `and(A103822(n), A103823(n))` -/
def P16494768853170132528.Spec : Prop :=
  ∀ n, P16494768853170132528.a n = A004198 n

end A004198

/-! ## A004198.P17071812989624203919

`and(A025581(n), A191532(n))`
-/

namespace A004198.P17071812989624203919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025581 n) (A191532 n)

end

end A004198.P17071812989624203919

namespace A004198

/-- `and(A025581(n), A191532(n))` -/
def P17071812989624203919.Spec : Prop :=
  ∀ n, P17071812989624203919.a n = A004198 n

end A004198

/-! ## A004198.P10062806376642452756

`A002260(A286098(n)+1)-1`
-/

namespace A004198.P10062806376642452756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A286098 n + 1).toNat - 1

end

end A004198.P10062806376642452756

namespace A004198

/-- `A002260(A286098(n)+1)-1` -/
def P10062806376642452756.Spec : Prop :=
  ∀ n, P10062806376642452756.a n = A004198 n

end A004198

/-!
# A004199: Table of [ x/y ], where (x,y) = (1,1),(1,2),(2,1),(1,3),(2,2),(3,1),...

The programs for A004199, the canonical program `A004199.P14394472422688968774` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004199 has offset 1).

The definition of A004199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004199.P8717012647790583859

`A025581(A286156(n+1))`
-/

namespace A004199.P8717012647790583859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A286156 (n + 1)).toNat

end

end A004199.P8717012647790583859

namespace A004199

/-- `A025581(A286156(n+1))` -/
def P8717012647790583859.Spec : Prop :=
  ∀ n, P8717012647790583859.a n = A004199 (n + 1)

end A004199

/-! ## A004199.P14965097497214083989

`floor(A074909(n)/A135278(n))`
-/

namespace A004199.P14965097497214083989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074909 n : ℚ) / (A135278 n : ℚ)⌋

end

end A004199.P14965097497214083989

namespace A004199

/-- `floor(A074909(n)/A135278(n))` -/
def P14965097497214083989.Spec : Prop :=
  ∀ n, P14965097497214083989.a n = A004199 (n + 1)

end A004199

/-! ## A004199.P10870527520530071395

`A101688(n)*A204123(n+1)`
-/

namespace A004199.P10870527520530071395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n * A204123 (n + 1)

end

end A004199.P10870527520530071395

namespace A004199

/-- `A101688(n)*A204123(n+1)` -/
def P10870527520530071395.Spec : Prop :=
  ∀ n, P10870527520530071395.a n = A004199 (n + 1)

end A004199

/-! ## A004199.P5731290633105972634

`lcm(A187034(n), A204123(n+1))`
-/

namespace A004199.P5731290633105972634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A187034 n) (A204123 (n + 1))

end

end A004199.P5731290633105972634

namespace A004199

/-- `lcm(A187034(n), A204123(n+1))` -/
def P5731290633105972634.Spec : Prop :=
  ∀ n, (P5731290633105972634.a n : ℤ) = A004199 (n + 1)

end A004199

/-! ## A004199.P10373036913233672110

`floor(A074909(n)/A074909(n+1))`
-/

namespace A004199.P10373036913233672110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074909 n : ℚ) / (A074909 (n + 1) : ℚ)⌋

end

end A004199.P10373036913233672110

namespace A004199

/-- `floor(A074909(n)/A074909(n+1))` -/
def P10373036913233672110.Spec : Prop :=
  ∀ n, P10373036913233672110.a n = A004199 (n + 1)

end A004199

/-! ## A004199.P8188733167010319364

`A004736(A286156(n+1)+1)-1`
-/

namespace A004199.P8188733167010319364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A286156 (n + 1) + 1).toNat - 1

end

end A004199.P8188733167010319364

namespace A004199

/-- `A004736(A286156(n+1)+1)-1` -/
def P8188733167010319364.Spec : Prop :=
  ∀ n, P8188733167010319364.a n = A004199 (n + 1)

end A004199

/-! ## A004199.P14394472422688968774

`floor(A002260(n+1)/A004736(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A004199

/-- `floor(A002260(n+1)/A004736(n+1))` -/
def P14394472422688968774.Spec : Prop :=
  ∀ n, P14394472422688968774.a n = A004199 (n + 1)

theorem P14394472422688968774.correct : P14394472422688968774.Spec := by
  intro n
  simp only [A004199, Nat.add_sub_cancel]

end A004199

/-! ## A004199.P1964613681809191068

`floor((A002262(n)+1)/A004736(n+1))`
-/

namespace A004199.P1964613681809191068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002262 n + 1 : ℚ) / (A004736 (n + 1) : ℚ)⌋

end

end A004199.P1964613681809191068

namespace A004199

/-- `floor((A002262(n)+1)/A004736(n+1))` -/
def P1964613681809191068.Spec : Prop :=
  ∀ n, P1964613681809191068.a n = A004199 (n + 1)

end A004199

/-! ## A004199.P5559108766911213360

`floor(A002260(n+1)/(A025581(n)+1))`
-/

namespace A004199.P5559108766911213360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002260 (n + 1) : ℚ) / (A025581 n + 1 : ℚ)⌋

end

end A004199.P5559108766911213360

namespace A004199

/-- `floor(A002260(n+1)/(A025581(n)+1))` -/
def P5559108766911213360.Spec : Prop :=
  ∀ n, P5559108766911213360.a n = A004199 (n + 1)

end A004199

/-! ## A004199.P14307810832824706520

`floor((A002262(n)+1)/(A025581(n)+1))`
-/

namespace A004199.P14307810832824706520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002262 n + 1 : ℚ) / (A025581 n + 1 : ℚ)⌋

end

end A004199.P14307810832824706520

namespace A004199

/-- `floor((A002262(n)+1)/(A025581(n)+1))` -/
def P14307810832824706520.Spec : Prop :=
  ∀ n, P14307810832824706520.a n = A004199 (n + 1)

end A004199

/-! ## A004199.P16924837536117139123

`floor(A003991(n+1)/A055461(n+1))`
-/

namespace A004199.P16924837536117139123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003991 (n + 1) : ℚ) / (A055461 (n + 1) : ℚ)⌋

end

end A004199.P16924837536117139123

namespace A004199

/-- `floor(A003991(n+1)/A055461(n+1))` -/
def P16924837536117139123.Spec : Prop :=
  ∀ n, P16924837536117139123.a n = A004199 (n + 1)

end A004199

/-! ## A004199.P910061011156609842

`floor(A002260(n+1)²/A003991(n+1))`
-/

namespace A004199.P910061011156609842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002260 (n + 1) ^ 2 : ℚ) / (A003991 (n + 1) : ℚ)⌋

end

end A004199.P910061011156609842

namespace A004199

/-- `floor(A002260(n+1)²/A003991(n+1))` -/
def P910061011156609842.Spec : Prop :=
  ∀ n, P910061011156609842.a n = A004199 (n + 1)

end A004199

/-! ## A004199.P14488684650192393759

`floor(A002260(n+1)/A002260(A278818(n)))`
-/

namespace A004199.P14488684650192393759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002260 (n + 1) : ℚ) / (A002260 (A278818 n).toNat : ℚ)⌋

end

end A004199.P14488684650192393759

namespace A004199

/-- `floor(A002260(n+1)/A002260(A278818(n)))` -/
def P14488684650192393759.Spec : Prop :=
  ∀ n, P14488684650192393759.a n = A004199 (n + 1)

end A004199

/-! ## A004199.P13630355410142780781

`floor(A002260(n+1)/A002260(A038722(n+1)))`
-/

namespace A004199.P13630355410142780781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002260 (n + 1) : ℚ) / (A002260 (A038722 (n + 1)).toNat : ℚ)⌋

end

end A004199.P13630355410142780781

namespace A004199

/-- `floor(A002260(n+1)/A002260(A038722(n+1)))` -/
def P13630355410142780781.Spec : Prop :=
  ∀ n, P13630355410142780781.a n = A004199 (n + 1)

end A004199

/-! ## A004199.P9489385909319648451

`(A002260(n+1)-A051126(n+1))/A004736(n+1)`
-/

namespace A004199.P9489385909319648451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) - A051126 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ)

end

end A004199.P9489385909319648451

namespace A004199

/-- `(A002260(n+1)-A051126(n+1))/A004736(n+1)` -/
def P9489385909319648451.Spec : Prop :=
  ∀ n, P9489385909319648451.a n = (A004199 (n + 1) : ℚ)

end A004199

/-! ## A004199.P3362169834650842129

`floor(A002260(n+1)/(A003057(n+2)-A002260(n+1)))`
-/

namespace A004199.P3362169834650842129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002260 (n + 1) : ℚ) / (A003057 (n + 2) - A002260 (n + 1) : ℚ)⌋

end

end A004199.P3362169834650842129

namespace A004199

/-- `floor(A002260(n+1)/(A003057(n+2)-A002260(n+1)))` -/
def P3362169834650842129.Spec : Prop :=
  ∀ n, P3362169834650842129.a n = A004199 (n + 1)

end A004199

/-! ## A004199.P5572812494368153046

`A003988(A038722(n+1))`
-/

namespace A004199.P5572812494368153046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003988 (A038722 (n + 1)).toNat

end

end A004199.P5572812494368153046

namespace A004199

/-- `A003988(A038722(n+1))` -/
def P5572812494368153046.Spec : Prop :=
  ∀ n, P5572812494368153046.a n = A004199 (n + 1)

end A004199

/-! ## A004199.P12027448894498170380

`A003988(A061579(n)+1)`
-/

namespace A004199.P12027448894498170380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003988 (A061579 n + 1).toNat

end

end A004199.P12027448894498170380

namespace A004199

/-- `A003988(A061579(n)+1)` -/
def P12027448894498170380.Spec : Prop :=
  ∀ n, P12027448894498170380.a n = A004199 (n + 1)

end A004199

/-! ## A004199.P8031275958608037580

`A003988(A114327(n)+1+n)`
-/

namespace A004199.P8031275958608037580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003988 (A114327 n + 1 + (n : ℤ)).toNat

end

end A004199.P8031275958608037580

namespace A004199

/-- `A003988(A114327(n)+1+n)` -/
def P8031275958608037580.Spec : Prop :=
  ∀ n, P8031275958608037580.a n = A004199 (n + 1)

end A004199

/-! ## A004199.P14331939969113157806

`A220415(n+1)-A003988(n+1)`
-/

namespace A004199.P14331939969113157806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220415 (n + 1) - A003988 (n + 1)

end

end A004199.P14331939969113157806

namespace A004199

/-- `A220415(n+1)-A003988(n+1)` -/
def P14331939969113157806.Spec : Prop :=
  ∀ n, P14331939969113157806.a n = A004199 (n + 1)

end A004199

