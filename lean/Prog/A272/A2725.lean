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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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

/-!
# A272500: Number of ordered set partitions of [n] with nondecreasing block sizes and maximal block size equal to ten.

The programs for A272500, there is no canonical definition to state claims against.
-/

/-! ## A272500.P1161251362082829727

`A262071(eq[10, A002262(n)])`
-/

namespace A272500.P1161251362082829727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272500.P1161251362082829727

/-! ## A272500.P5893955188881402783

`A262071(eq[10, A144328(n+1)])`
-/

namespace A272500.P5893955188881402783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272500.P5893955188881402783

/-! ## A272500.P5289961084340279621

`A262071(eq[11, A002260(n+1)])`
-/

namespace A272500.P5289961084340279621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272500.P5289961084340279621

/-! ## A272500.P15314639052463419169

`A262071(eq[11, A134868(n+1)])`
-/

namespace A272500.P15314639052463419169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272500.P15314639052463419169

/-! ## A272500.P5695310020994916714

`A262071(eq[11, A133232(n+1)])`
-/

namespace A272500.P5695310020994916714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272500.P5695310020994916714

/-!
# A272501: Number of n-letter strings over a ten letter alphabet where no letter appears exactly three times.

The programs for A272501, there is no canonical definition to state claims against.
-/

/-! ## A272501.P5368747613838521897

`A011557(n)-A185255(A297147(n+1))`
-/

namespace A272501.P5368747613838521897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n - A185255 (A297147 (n + 1)).toNat

end

end A272501.P5368747613838521897

/-!
# A272502: Number of n-letter strings over a ten-letter alphabet where no letter appears exactly four times.

The programs for A272502, there is no canonical definition to state claims against.
-/

/-! ## A272502.P12849547994125842597

`∑{digits}[n, 10^#]-A185264(C(2*n, 2))`
-/

namespace A272502.P12849547994125842597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum : ℕ) : ℤ) - A185264 (Nat.choose (2 * n) 2)

end

end A272502.P12849547994125842597

/-!
# A272503: Number of n-letter strings over a ten letter alphabet where no letter appears exactly five times.

The programs for A272503, there is no canonical definition to state claims against.
-/

/-! ## A272503.P13364988160609742612

`5*A189716(a(n-1))` with `a(0)=1`
-/

namespace A272503.P13364988160609742612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * A189716 (a (n - 1)).toNat

end

end A272503.P13364988160609742612

/-! ## A272503.P7997902693076634097

`∑{digits}[n, 10^#]-A185255(6*n)`
-/

namespace A272503.P7997902693076634097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum : ℕ) : ℤ) - A185255 (6 * n)

end

end A272503.P7997902693076634097

/-!
# A272504: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 485", based on the 5-celled von Neumann neighborhood.

The programs for A272504, there is no canonical definition to state claims against.
-/

/-! ## A272504.P11958471035963507081

`∑[A272350(n)]`
-/

namespace A272504.P11958471035963507081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272350 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272504.P11958471035963507081

/-! ## A272504.P3869834452438466098

`∑[∑[A272505(abs(1-n))]+4]`
-/

namespace A272504.P3869834452438466098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272505 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272504.P3869834452438466098

/-! ## A272504.P10003987365541211583

`A272350(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A272504.P10003987365541211583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272350 n + a (A023443 n).toNat

end

end A272504.P10003987365541211583

/-! ## A272504.P10271220004400129608

`a(n-1)+A272350(n)%A016970(n)` with `a(0)=1`
-/

namespace A272504.P10271220004400129608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A272350 n) (A016970 n)

end

end A272504.P10271220004400129608

/-! ## A272504.P13907275352322196059

`a(n-1)+n-(A028310(n)-A272350(n))` with `a(0)=1`
-/

namespace A272504.P13907275352322196059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n : ℤ) - (A028310 n - A272350 n)

end

end A272504.P13907275352322196059

/-! ## A272504.P11996605481378823695

`a(n-1)-A008683(A002148(n))*A272350(n)` with `a(0)=1`
-/

namespace A272504.P11996605481378823695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A008683 (A002148 n).toNat * A272350 n

end

end A272504.P11996605481378823695

/-!
# A272505: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 485", based on the 5-celled von Neumann neighborhood.

The programs for A272505, there is no canonical definition to state claims against.
-/

/-! ## A272505.P3604636166732175436

`Δ[A272350(n)]`
-/

namespace A272505.P3604636166732175436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272350 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272505.P3604636166732175436

/-! ## A272505.P17666132870710828000

`A272350(n+1)-A272350(n)`
-/

namespace A272505.P17666132870710828000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272350 (n + 1) - A272350 n

end

end A272505.P17666132870710828000

/-! ## A272505.P329882270782224634

`A272350(n+1)+A001478(A272350(n)+1)+1`
-/

namespace A272505.P329882270782224634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272350 (n + 1) + (A001478 (A272350 n + 1).toNat + 1)

end

end A272505.P329882270782224634

/-!
# A272506: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 486", based on the 5-celled von Neumann neighborhood.

The programs for A272506, there is no canonical definition to state claims against.
-/

/-! ## A272506.P3237025339244158114

`A272509(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272506.P3237025339244158114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272509 (n - 1) + a (n - 1)

end

end A272506.P3237025339244158114

/-! ## A272506.P2740031412761476864

`Δ[A272508(n)]-A272509(n)`
-/

namespace A272506.P2740031412761476864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272508 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272509 n

end

end A272506.P2740031412761476864

/-! ## A272506.P909355221091181197

`A272508(n+1)-(A272509(n)+A272508(n))`
-/

namespace A272506.P909355221091181197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272508 (n + 1) - (A272509 n + A272508 n)

end

end A272506.P909355221091181197

/-! ## A272506.P10635296995715122909

`A033954(n)%A273208(n)+n+1`
-/

namespace A272506.P10635296995715122909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033954 n) (A273208 n) + (n + 1 : ℤ)

end

end A272506.P10635296995715122909

/-! ## A272506.P9018784352639705349

`(2*n+1)*record[A141310(A008619(n))]-A273208(n)`
-/

namespace A272506.P9018784352639705349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A273208 n

end

end A272506.P9018784352639705349

/-! ## A272506.P17584732801784373091

`A181385(A016825(n))-A273208(n)`
-/

namespace A272506.P17584732801784373091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A273208 n

end

end A272506.P17584732801784373091

/-! ## A272506.P18133365416542918873

`A008740(A008458(n))-A273208(n)`
-/

namespace A272506.P18133365416542918873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A273208 n

end

end A272506.P18133365416542918873

/-! ## A272506.P17518705620189836345

`record[A014682(A077591(n))]-A273208(n)`
-/

namespace A272506.P17518705620189836345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A077591 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A273208 n

end

end A272506.P17518705620189836345

/-!
# A272507: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 486", based on the 5-celled von Neumann neighborhood.

The programs for A272507, there is no canonical definition to state claims against.
-/

/-! ## A272507.P9272991831163993845

`A272506(2^n-1)`
-/

namespace A272507.P9272991831163993845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272506 (2 ^ n - 1)

end

end A272507.P9272991831163993845

/-! ## A272507.P4005786408438134137

`record[A272506(A091264(n))]`
-/

namespace A272507.P4005786408438134137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272506 (A091264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272507.P4005786408438134137

/-! ## A272507.P764454563167739174

`record[A272506(A218616(n))]`
-/

namespace A272507.P764454563167739174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272506 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272507.P764454563167739174

/-! ## A272507.P9322053758714544103

`record[A272506(Δ[A228693(n)])]`
-/

namespace A272507.P9322053758714544103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272506 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272507.P9322053758714544103

/-! ## A272507.P1008582881299047604

`record[A272506(A253564(n+1))]`
-/

namespace A272507.P1008582881299047604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272506 (A253564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272507.P1008582881299047604

/-!
# A272508: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 486", based on the 5-celled von Neumann neighborhood.

The programs for A272508, there is no canonical definition to state claims against.
-/

/-! ## A272508.P15089878001800232759

`∑[∑[A272509(n)]+1-A272509(n)]`
-/

namespace A272508.P15089878001800232759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272509 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272509 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272508.P15089878001800232759

/-! ## A272508.P11503684656959988560

`∑[A272506(n)]`
-/

namespace A272508.P11503684656959988560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272508.P11503684656959988560

/-! ## A272508.P18392028858708593671

`a(n-1)+A272506(n)%A016754(n)` with `a(0)=1`
-/

namespace A272508.P18392028858708593671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A272506 n) (A016754 n)

end

end A272508.P18392028858708593671

/-! ## A272508.P712852277331184620

`∑[A181385(A016825(n))-A273208(n)]`
-/

namespace A272508.P712852277331184620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A273208 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272508.P712852277331184620

/-! ## A272508.P17488049391052061474

`∑[A181385(A016825(n))]-A273210(n)`
-/

namespace A272508.P17488049391052061474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A273210 n

end

end A272508.P17488049391052061474

/-! ## A272508.P15935752924573216539

`∑[A008740(A008458(n))-A273208(n)]`
-/

namespace A272508.P15935752924573216539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A273208 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272508.P15935752924573216539

/-! ## A272508.P11474422068518833589

`∑[A008740(A008458(n))]-A273210(n)`
-/

namespace A272508.P11474422068518833589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A273210 n

end

end A272508.P11474422068518833589

/-!
# A272509: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 486", based on the 5-celled von Neumann neighborhood.

The programs for A272509, there is no canonical definition to state claims against.
-/

/-! ## A272509.P17113504565029343028

`Δ[A272506(n)]`
-/

namespace A272509.P17113504565029343028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272509.P17113504565029343028

/-! ## A272509.P6185272951464338383

`A272506(n+1)-A272506(n)`
-/

namespace A272509.P6185272951464338383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272506 (n + 1) - A272506 n

end

end A272509.P6185272951464338383

/-! ## A272509.P9562269707077196504

`Δ[A181385(A016825(n))-A273208(n)]`
-/

namespace A272509.P9562269707077196504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A273208 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272509.P9562269707077196504

/-! ## A272509.P14356115289824394023

`Δ[A181385(A016825(n))]-A273211(n)`
-/

namespace A272509.P14356115289824394023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273211 n

end

end A272509.P14356115289824394023

/-! ## A272509.P11469514034830978102

`Δ[A008740(A008458(n))-A273208(n)]`
-/

namespace A272509.P11469514034830978102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A273208 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272509.P11469514034830978102

/-! ## A272509.P7741295592758719232

`Δ[A008740(A008458(n))]-A273211(n)`
-/

namespace A272509.P7741295592758719232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273211 n

end

end A272509.P7741295592758719232

/-!
# A272510: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 489", based on the 5-celled von Neumann neighborhood.

The programs for A272510, there is no canonical definition to state claims against.
-/

/-! ## A272510.P4514148107380780622

`A272513(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272510.P4514148107380780622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272513 (n - 1) + a (n - 1)

end

end A272510.P4514148107380780622

/-! ## A272510.P2245260805514821483

`∑[A272513(round(sqrt(n²+1))-1)]-2`
-/

namespace A272510.P2245260805514821483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272513 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A272510.P2245260805514821483

/-! ## A272510.P5702487486648214784

`abs(∑[A272513(A028310(n)-1)]-2)`
-/

namespace A272510.P5702487486648214784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272513 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 2|

end

end A272510.P5702487486648214784

/-! ## A272510.P4531408901662005469

`Δ[A272512(n)]-A272513(n)`
-/

namespace A272510.P4531408901662005469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272512 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272513 n

end

end A272510.P4531408901662005469

/-! ## A272510.P62641993312610628

`A272512(n+1)-(A272513(n)+A272512(n))`
-/

namespace A272510.P62641993312610628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272512 (n + 1) - (A272513 n + A272512 n)

end

end A272510.P62641993312610628

/-! ## A272510.P14608168653672960100

`∑[A272513(A025581(A167614(n+1)))]`
-/

namespace A272510.P14608168653672960100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272513 (A025581 (A167614 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272510.P14608168653672960100

/-!
# A272511: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 489", based on the 5-celled von Neumann neighborhood.

The programs for A272511, there is no canonical definition to state claims against.
-/

/-! ## A272511.P12432807401480960984

`A272510(2^n-1)`
-/

namespace A272511.P12432807401480960984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272510 (2 ^ n - 1)

end

end A272511.P12432807401480960984

/-! ## A272511.P3309387922632887165

`record[A272510(A173787(n))]`
-/

namespace A272511.P3309387922632887165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272510 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272511.P3309387922632887165

/-! ## A272511.P4762530333253702107

`record[A272510(A218616(n))]`
-/

namespace A272511.P4762530333253702107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272510 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272511.P4762530333253702107

/-! ## A272511.P329979113440033845

`record[A272510(A303763(n))]`
-/

namespace A272511.P329979113440033845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272510 (A303763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272511.P329979113440033845

/-! ## A272511.P7275710749455124472

`and(-1, A272510(A000225(n)))`
-/

namespace A272511.P7275710749455124472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A272510 (A000225 n).toNat)

end

end A272511.P7275710749455124472

/-!
# A272512: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 489", based on the 5-celled von Neumann neighborhood.

The programs for A272512, there is no canonical definition to state claims against.
-/

/-! ## A272512.P7742596399738024372

`∑[A272510(n)]`
-/

namespace A272512.P7742596399738024372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272510 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272512.P7742596399738024372

/-! ## A272512.P9667152225611028360

`∑[A272513(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A272512.P9667152225611028360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A272513 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272512.P9667152225611028360

/-! ## A272512.P11401635455350688970

`∑[∑[A272513(n)]+1-A272513(n)]`
-/

namespace A272512.P11401635455350688970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272513 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272513 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272512.P11401635455350688970

/-! ## A272512.P13246491496525441754

`a(n-1)+A272510(n)+A000007(n)` with `a(0)=1`
-/

namespace A272512.P13246491496525441754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A272510 n + A000007 n)

end

end A272512.P13246491496525441754

/-! ## A272512.P16017512997226854915

`A272510(n%A272510(n))+a(n-1)` with `a(0)=1`
-/

namespace A272512.P16017512997226854915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272510 (Int.tmod (n : ℤ) (A272510 n)).toNat + a (n - 1)

end

end A272512.P16017512997226854915

/-! ## A272512.P11993550656070056632

`A272510(lcm(n, A014963(n)))+a(n-1)` with `a(0)=1`
-/

namespace A272512.P11993550656070056632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272510 (Int.lcm (n : ℤ) (A014963 n)) + a (n - 1)

end

end A272512.P11993550656070056632

/-! ## A272512.P9803445796993217606

`A272510(n+1)+a(n-1)-A272513(n)` with `a(0)=1`
-/

namespace A272512.P9803445796993217606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272510 (n + 1) + (a (n - 1) - A272513 n)

end

end A272512.P9803445796993217606

/-!
# A272513: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 489", based on the 5-celled von Neumann neighborhood.

The programs for A272513, there is no canonical definition to state claims against.
-/

/-! ## A272513.P7208390739863006454

`Δ[A272510(n)]`
-/

namespace A272513.P7208390739863006454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272510 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272513.P7208390739863006454

/-! ## A272513.P10471608115370456064

`A272510(n+1)-A272510(n)`
-/

namespace A272513.P10471608115370456064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272510 (n + 1) - A272510 n

end

end A272513.P10471608115370456064

/-!
# A272514: Number of set partitions of [n] into two blocks with distinct sizes.

The programs for A272514, the canonical program `A272514.P2917555472459059865` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272514 has offset 3).

The definition of A272514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272514.P1599831374153194941

`A058622(n+3)-1`
-/

namespace A272514.P1599831374153194941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058622 (n + 3) - 1

end

end A272514.P1599831374153194941

namespace A272514

/-- `A058622(n+3)-1` -/
def P1599831374153194941.Spec : Prop :=
  ∀ n, P1599831374153194941.a n = A272514 (n + 3)

end A272514

/-! ## A272514.P14085222100389442379

`A294175(n+2)+A226881(n+2)`
-/

namespace A272514.P14085222100389442379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294175 (n + 2) + A226881 (n + 2)

end

end A272514.P14085222100389442379

namespace A272514

/-- `A294175(n+2)+A226881(n+2)` -/
def P14085222100389442379.Spec : Prop :=
  ∀ n, P14085222100389442379.a n = A272514 (n + 3)

end A272514

/-! ## A272514.P4509145779814866952

`A153881(n+2)+A058622(n+3)`
-/

namespace A272514.P4509145779814866952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A058622 (n + 3)

end

end A272514.P4509145779814866952

namespace A272514

/-- `A153881(n+2)+A058622(n+3)` -/
def P4509145779814866952.Spec : Prop :=
  ∀ n, P4509145779814866952.a n = A272514 (n + 3)

end A272514

/-! ## A272514.P2917555472459059865

`A258143(n+3)-A001405(n+3)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A272514

/-- `A258143(n+3)-A001405(n+3)` -/
def P2917555472459059865.Spec : Prop :=
  ∀ n, P2917555472459059865.a n = A272514 (n + 3)

theorem P2917555472459059865.correct : P2917555472459059865.Spec := by
  intro n
  simp only [A272514, Nat.add_sub_cancel]

end A272514

/-! ## A272514.P12206825615716448848

`A075427(A004275(n+2))-A138364(n+2)`
-/

namespace A272514.P12206825615716448848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075427 (A004275 (n + 2)).toNat - A138364 (n + 2)

end

end A272514.P12206825615716448848

namespace A272514

/-- `A075427(A004275(n+2))-A138364(n+2)` -/
def P12206825615716448848.Spec : Prop :=
  ∀ n, P12206825615716448848.a n = A272514 (n + 3)

end A272514

/-! ## A272514.P1774758486420873407

`A202736(n+3)/2-1`
-/

namespace A272514.P1774758486420873407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202736 (n + 3) : ℚ) / 2 - 1

end

end A272514.P1774758486420873407

namespace A272514

/-- `A202736(n+3)/2-1` -/
def P1774758486420873407.Spec : Prop :=
  ∀ n, P1774758486420873407.a n = (A272514 (n + 3) : ℚ)

end A272514

/-! ## A272514.P1904402658306192473

`A285917(n+3)-A000225(n+2)`
-/

namespace A272514.P1904402658306192473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285917 (n + 3) - A000225 (n + 2)

end

end A272514.P1904402658306192473

namespace A272514

/-- `A285917(n+3)-A000225(n+2)` -/
def P1904402658306192473.Spec : Prop :=
  ∀ n, P1904402658306192473.a n = A272514 (n + 3)

end A272514

/-! ## A272514.P3095722447992687667

`∑[A008949(∑[a(n-2)+2])]` with `a(0)=4, a(1)=2`
-/

namespace A272514.P3095722447992687667
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4, 2] fun n f2 =>
  f2 (n - 2) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272514.P3095722447992687667

namespace A272514

/-- `∑[A008949(∑[a(n-2)+2])]` -/
def P3095722447992687667.Spec : Prop :=
  ∀ n, P3095722447992687667.a n = A272514 (n + 3)

end A272514

/-! ## A272514.P13889972360514349014

`∑[A008949(∑[∑[2-a(n-1)]])]` with `a(0)=4`
-/

namespace A272514.P13889972360514349014
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f3 =>
  2 - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272514.P13889972360514349014

namespace A272514

/-- `∑[A008949(∑[∑[2-a(n-1)]])]` -/
def P13889972360514349014.Spec : Prop :=
  ∀ n, P13889972360514349014.a n = A272514 (n + 3)

end A272514

/-! ## A272514.P15305617735550606810

`A117670(A074148(n+2))`
-/

namespace A272514.P15305617735550606810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117670 (A074148 (n + 2)).toNat

end

end A272514.P15305617735550606810

namespace A272514

/-- `A117670(A074148(n+2))` -/
def P15305617735550606810.Spec : Prop :=
  ∀ n, P15305617735550606810.a n = A272514 (n + 3)

end A272514

/-! ## A272514.P2692453264896403984

`record[ratio[A131632(n+3)]]`
-/

namespace A272514.P2692453264896403984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131632 (n + 3)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272514.P2692453264896403984

namespace A272514

/-- `record[ratio[A131632(n+3)]]` -/
def P2692453264896403984.Spec : Prop :=
  ∀ n, P2692453264896403984.a n = (A272514 (n + 3) : ℚ)

end A272514

/-! ## A272514.P398446479261967956

`A131632(∑[A003056(n+2)]+3)`
-/

namespace A272514.P398446479261967956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131632 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A272514.P398446479261967956

namespace A272514

/-- `A131632(∑[A003056(n+2)]+3)` -/
def P398446479261967956.Spec : Prop :=
  ∀ n, P398446479261967956.a n = A272514 (n + 3)

end A272514

/-!
# A272515: Number of set partitions of [n] into three blocks with distinct sizes.

The programs for A272515, there is no canonical definition to state claims against.
-/

/-! ## A272515.P17123305404258476066

`A131632(A006463(n+6)+3)`
-/

namespace A272515.P17123305404258476066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131632 (A006463 (n + 6) + 3).toNat

end

end A272515.P17123305404258476066

/-! ## A272515.P13120139120176827150

`record[A131632(n+11)/A131632(n+9)]`
-/

namespace A272515.P13120139120176827150
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131632 (n + 11) : ℚ) / (A131632 (n + 9) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272515.P13120139120176827150

/-!
# A272516: Number of set partitions of [n] into four blocks with distinct sizes.

The programs for A272516, there is no canonical definition to state claims against.
-/

/-! ## A272516.P16810607646889582896

`A131632(A006463(n+10)+4)`
-/

namespace A272516.P16810607646889582896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131632 (A006463 (n + 10) + 4).toNat

end

end A272516.P16810607646889582896

/-!
# A272524: Refactorable triangular numbers.

The programs for A272524, there is no canonical definition to state claims against.
-/

/-! ## A272524.P12240453946398143141

`∩[A033950(n+1), A000217(n)]`
-/

namespace A272524.P12240453946398143141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272524.P12240453946398143141

/-! ## A272524.P11708895733408677544

`∩[A033950(n+1), A000096(n)+1]`
-/

namespace A272524.P11708895733408677544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272524.P11708895733408677544

/-! ## A272524.P3265661715261529449

`∩[A024412(n+1), A033950(n+1)]`
-/

namespace A272524.P3265661715261529449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272524.P3265661715261529449

/-! ## A272524.P2080026470323886083

`∩[A033950(n+1), A129966(n+1)]`
-/

namespace A272524.P2080026470323886083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272524.P2080026470323886083

/-! ## A272524.P17997826275779900360

`∩[A129966(n+1), A245047(n+1)]`
-/

namespace A272524.P17997826275779900360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272524.P17997826275779900360

/-!
# A272525: Convolution of nonzero repunits (A002275) with themselves.

The programs for A272525, the canonical program `A272525.P15536388176538652971` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272525 has offset 0).

The definition of A272525 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272525.P15536388176538652971

`(9*n*(10^(n+2)+1)+7*10^(n+2)+29)/729`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A272525

/-- `(9*n*(10^(n+2)+1)+7*10^(n+2)+29)/729` -/
def P15536388176538652971.Spec : Prop :=
  ∀ n, P15536388176538652971.a n = (A272525 n : ℚ)

end A272525

/-! ## A272525.P13495977385906473217

`∑[A014925(n+1)]`
-/

namespace A272525.P13495977385906473217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272525.P13495977385906473217

namespace A272525

/-- `∑[A014925(n+1)]` -/
def P13495977385906473217.Spec : Prop :=
  ∀ n, P13495977385906473217.a n = A272525 n

end A272525

/-! ## A272525.P4063799729990108669

`∑[∑[A053541(n+1)]]`
-/

namespace A272525.P4063799729990108669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272525.P4063799729990108669

namespace A272525

/-- `∑[∑[A053541(n+1)]]` -/
def P4063799729990108669.Spec : Prop :=
  ∀ n, P4063799729990108669.a n = A272525 n

end A272525

/-! ## A272525.P13465805462516090160

`∑[A033713(n+2)/9]`
-/

namespace A272525.P13465805462516090160
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033713 (n + 2) : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272525.P13465805462516090160

namespace A272525

/-- `∑[A033713(n+2)/9]` -/
def P13465805462516090160.Spec : Prop :=
  ∀ n, P13465805462516090160.a n = (A272525 n : ℚ)

end A272525

/-! ## A272525.P16749135443995397295

`∑[∑[∑[A081045(n)]]+1]-(n+1)`
-/

namespace A272525.P16749135443995397295
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A272525.P16749135443995397295

namespace A272525

/-- `∑[∑[∑[A081045(n)]]+1]-(n+1)` -/
def P16749135443995397295.Spec : Prop :=
  ∀ n, P16749135443995397295.a n = A272525 n

end A272525

/-! ## A272525.P11044897559120442497

`∑[∑[4*(n+1)*A011557(n)]/4]`
-/

namespace A272525.P11044897559120442497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) * A011557 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272525.P11044897559120442497

namespace A272525

/-- `∑[∑[4*(n+1)*A011557(n)]/4]` -/
def P11044897559120442497.Spec : Prop :=
  ∀ n, P11044897559120442497.a n = (A272525 n : ℚ)

end A272525

/-! ## A272525.P12807695860159916897

`∑[A000042(n+1)+10*a(n-1)]` with `a(0)=1`
-/

namespace A272525.P12807695860159916897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000042 (n + 1) + 10 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272525.P12807695860159916897

namespace A272525

/-- `∑[A000042(n+1)+10*a(n-1)]` -/
def P12807695860159916897.Spec : Prop :=
  ∀ n, P12807695860159916897.a n = A272525 n

end A272525

/-! ## A272525.P17180777898086804535

`A294328(n+1)-∑[A294344(n)]`
-/

namespace A272525.P17180777898086804535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294344 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294328 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272525.P17180777898086804535

namespace A272525

/-- `A294328(n+1)-∑[A294344(n)]` -/
def P17180777898086804535.Spec : Prop :=
  ∀ n, P17180777898086804535.a n = A272525 n

end A272525

/-!
# A272527: Numbers k such that prime(k) - 2 is the average of four consecutive odd squares.

The programs for A272527, there is no canonical definition to state claims against.
-/

/-! ## A272527.P13959688251610594597

`A000720(p?[(n+4)²-2*n])`
-/

namespace A272527.P13959688251610594597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 4) ^ 2 : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A272527.P13959688251610594597

/-! ## A272527.P2870817604402153738

`A000720(A079138(n+3))`
-/

namespace A272527.P2870817604402153738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A079138 (n + 3)).toNat

end

end A272527.P2870817604402153738

/-! ## A272527.P5546120684598975897

`A061395(p?[A079138(n+3)])`
-/

namespace A272527.P5546120684598975897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079138 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A272527.P5546120684598975897

/-! ## A272527.P655518978100719416

`record[A061395(A117619(n+4))]`
-/

namespace A272527.P655518978100719416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A117619 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272527.P655518978100719416

/-! ## A272527.P11190043673361657637

`record[A061395(Δ[A001845(n+1)]+5)]`
-/

namespace A272527.P11190043673361657637
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001845 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f2 (n + 1) - f2 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272527.P11190043673361657637

/-!
# A272528: Numbers n such that the arithmetic derivative of the totient(n) is equal to the cototient(n).

The programs for A272528, there is no canonical definition to state claims against.
-/

/-! ## A272528.P2358967021181052481

`eq[1, A129283(A000010(n+1))-n]+1`
-/

namespace A272528.P2358967021181052481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 (A000010 (n + 1)).toNat - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A272528.P2358967021181052481

/-!
# A272530: Position of first occurrence of n in A072347.

The programs for A272530, there is no canonical definition to state claims against.
-/

/-! ## A272530.P18364412323396929409

`A006697(A026651(n+2))%A026630(n+1)`
-/

namespace A272530.P18364412323396929409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006697 (A026651 (n + 2)).toNat) (A026630 (n + 1))

end

end A272530.P18364412323396929409

/-! ## A272530.P11708828106387256662

`A088697(eq[A007913(n+1), A090806(n+2)])`
-/

namespace A272530.P11708828106387256662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090806 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088697 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A272530.P11708828106387256662

/-!
# A272532: Single bit representation of the sum of two sinusoids with periods 2 and 2*sqrt(2).

The programs for A272532, the canonical program `A272532.P12999477762665833133` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272532 has offset 1).

The definition of A272532 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272532.P10635721279828677427

`ceil(sqrt(∑[or(1, n)]))%2`
-/

namespace A272532.P10635721279828677427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ 2

end

end A272532.P10635721279828677427

namespace A272532

/-- `ceil(sqrt(∑[or(1, n)]))%2` -/
def P10635721279828677427.Spec : Prop :=
  ∀ n, P10635721279828677427.a n = A272532 (n + 1)

end A272532

/-! ## A272532.P13463222328575304011

`ceil((n+1)/sqrt(2))%2`
-/

namespace A272532.P13463222328575304011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(n + 1 : ℝ) / Real.sqrt (2 : ℝ)⌉ 2

end

end A272532.P13463222328575304011

namespace A272532

/-- `ceil((n+1)/sqrt(2))%2` -/
def P13463222328575304011.Spec : Prop :=
  ∀ n, P13463222328575304011.a n = A272532 (n + 1)

end A272532

/-! ## A272532.P11604581943709667342

`and(1, ceil((n+1)/sqrt(2)))`
-/

namespace A272532.P11604581943709667342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌈(n + 1 : ℝ) / Real.sqrt (2 : ℝ)⌉

end

end A272532.P11604581943709667342

namespace A272532

/-- `and(1, ceil((n+1)/sqrt(2)))` -/
def P11604581943709667342.Spec : Prop :=
  ∀ n, P11604581943709667342.a n = A272532 (n + 1)

end A272532

/-! ## A272532.P8058116578941948143

`log2(gcd(2, floor((n+1)/sqrt(2))))`
-/

namespace A272532.P8058116578941948143
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 ⌊(n + 1 : ℝ) / Real.sqrt (2 : ℝ)⌋ : ℝ)

end

end A272532.P8058116578941948143

namespace A272532

/-- `log2(gcd(2, floor((n+1)/sqrt(2))))` -/
def P8058116578941948143.Spec : Prop :=
  ∀ n, P8058116578941948143.a n = (A272532 (n + 1) : ℝ)

end A272532

/-! ## A272532.P4121137968721391443

`char[floor(n*sqrt(2))-n%2]`
-/

namespace A272532.P4121137968721391443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ - ((n % 2 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A272532.P4121137968721391443

namespace A272532

/-- `char[floor(n*sqrt(2))-n%2]` -/
def P4121137968721391443.Spec : Prop :=
  ∀ n, (P4121137968721391443.a n : ℤ) = A272532 (n + 1)

end A272532

/-! ## A272532.P16404989316037401336

`char[floor(n*sqrt(2))-and(1, n)]`
-/

namespace A272532.P16404989316037401336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ - (Nat.land 1 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A272532.P16404989316037401336

namespace A272532

/-- `char[floor(n*sqrt(2))-and(1, n)]` -/
def P16404989316037401336.Spec : Prop :=
  ∀ n, (P16404989316037401336.a n : ℤ) = A272532 (n + 1)

end A272532

/-! ## A272532.P10455993708455719286

`1-floor((n+1)/sqrt(2))%2`
-/

namespace A272532.P10455993708455719286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod ⌊(n + 1 : ℝ) / Real.sqrt (2 : ℝ)⌋ 2

end

end A272532.P10455993708455719286

namespace A272532

/-- `1-floor((n+1)/sqrt(2))%2` -/
def P10455993708455719286.Spec : Prop :=
  ∀ n, P10455993708455719286.a n = A272532 (n + 1)

end A272532

/-! ## A272532.P5805798619888162395

`1-and(1, floor((n+1)/sqrt(2)))`
-/

namespace A272532.P5805798619888162395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 1 ⌊(n + 1 : ℝ) / Real.sqrt (2 : ℝ)⌋

end

end A272532.P5805798619888162395

namespace A272532

/-- `1-and(1, floor((n+1)/sqrt(2)))` -/
def P5805798619888162395.Spec : Prop :=
  ∀ n, P5805798619888162395.a n = A272532 (n + 1)

end A272532

/-! ## A272532.P7384514787258061749

`C(and(2, floor((n+1)*sqrt(2))-2), 2)`
-/

namespace A272532.P7384514787258061749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.land 2 (⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋ - 2)).toNat 2

end

end A272532.P7384514787258061749

namespace A272532

/-- `C(and(2, floor((n+1)*sqrt(2))-2), 2)` -/
def P7384514787258061749.Spec : Prop :=
  ∀ n, (P7384514787258061749.a n : ℤ) = A272532 (n + 1)

end A272532

/-! ## A272532.P17531281408193090092

`∑{e}[and(2, floor((n+1)*sqrt(2))-2), #]`
-/

namespace A272532.P17531281408193090092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋ - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A272532.P17531281408193090092

namespace A272532

/-- `∑{e}[and(2, floor((n+1)*sqrt(2))-2), #]` -/
def P17531281408193090092.Spec : Prop :=
  ∀ n, (P17531281408193090092.a n : ℤ) = A272532 (n + 1)

end A272532

/-! ## A272532.P12999477762665833133

`(A049474(n+1)%2)²`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A272532

/-- `(A049474(n+1)%2)²` -/
def P12999477762665833133.Spec : Prop :=
  ∀ n, P12999477762665833133.a n = A272532 (n + 1)

theorem P12999477762665833133.correct : P12999477762665833133.Spec := by
  intro n
  simp only [A272532, Nat.add_sub_cancel]

end A272532

/-! ## A272532.P14056391684546423915

`gcd(2, A007882(n+1))-1`
-/

namespace A272532.P14056391684546423915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A007882 (n + 1)) : ℤ) - 1

end

end A272532.P14056391684546423915

namespace A272532

/-- `gcd(2, A007882(n+1))-1` -/
def P14056391684546423915.Spec : Prop :=
  ∀ n, P14056391684546423915.a n = A272532 (n + 1)

end A272532

/-! ## A272532.P6564596123073303170

`and(2, A188302(n+1))/2`
-/

namespace A272532.P6564596123073303170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A188302 (n + 1)) : ℚ) / 2

end

end A272532.P6564596123073303170

namespace A272532

/-- `and(2, A188302(n+1))/2` -/
def P6564596123073303170.Spec : Prop :=
  ∀ n, P6564596123073303170.a n = (A272532 (n + 1) : ℚ)

end A272532

/-! ## A272532.P11048471425606145981

`a(A171588(n)+a(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A272532.P11048471425606145981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (A171588 n + (a (n - 1) : ℤ)).toNat

end

end A272532.P11048471425606145981

namespace A272532

/-- `a(A171588(n)+a(n-1))` -/
def P11048471425606145981.Spec : Prop :=
  ∀ n, (P11048471425606145981.a n : ℤ) = A272532 (n + 1)

end A272532

/-! ## A272532.P6690291054521284013

`(A188295(n+1)-a(n-1))²` with `a(0)=1`
-/

namespace A272532.P6690291054521284013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A188295 (n + 1) - a (n - 1)) ^ 2

end

end A272532.P6690291054521284013

namespace A272532

/-- `(A188295(n+1)-a(n-1))²` -/
def P6690291054521284013.Spec : Prop :=
  ∀ n, P6690291054521284013.a n = A272532 (n + 1)

end A272532

/-! ## A272532.P4845788935118977833

`A168324(and(2, floor((n+1)*sqrt(2))-2)+1)`
-/

namespace A272532.P4845788935118977833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168324 (Int.land 2 (⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋ - 2) + 1).toNat

end

end A272532.P4845788935118977833

namespace A272532

/-- `A168324(and(2, floor((n+1)*sqrt(2))-2)+1)` -/
def P4845788935118977833.Spec : Prop :=
  ∀ n, P4845788935118977833.a n = A272532 (n + 1)

end A272532

/-! ## A272532.P16849662467912195475

`A246272(and(2, -(floor((n+1)*sqrt(2))+1))+1)`
-/

namespace A272532.P16849662467912195475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246272 (Int.land 2 (-(⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋ + 1)) + 1).toNat

end

end A272532.P16849662467912195475

namespace A272532

/-- `A246272(and(2, -(floor((n+1)*sqrt(2))+1))+1)` -/
def P16849662467912195475.Spec : Prop :=
  ∀ n, P16849662467912195475.a n = A272532 (n + 1)

end A272532

/-! ## A272532.P12682436611260921073

`A000035(A049474(n+1))`
-/

namespace A272532.P12682436611260921073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A049474 (n + 1)).toNat

end

end A272532.P12682436611260921073

namespace A272532

/-- `A000035(A049474(n+1))` -/
def P12682436611260921073.Spec : Prop :=
  ∀ n, P12682436611260921073.a n = A272532 (n + 1)

end A272532

/-! ## A272532.P13147860346720402803

`A071028(A007590(n+1))`
-/

namespace A272532.P13147860346720402803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 (A007590 (n + 1)).toNat

end

end A272532.P13147860346720402803

namespace A272532

/-- `A071028(A007590(n+1))` -/
def P13147860346720402803.Spec : Prop :=
  ∀ n, P13147860346720402803.a n = A272532 (n + 1)

end A272532

/-! ## A272532.P9525322557845512026

`A059841(A049472(n+1))`
-/

namespace A272532.P9525322557845512026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A049472 (n + 1)).toNat

end

end A272532.P9525322557845512026

namespace A272532

/-- `A059841(A049472(n+1))` -/
def P9525322557845512026.Spec : Prop :=
  ∀ n, P9525322557845512026.a n = A272532 (n + 1)

end A272532

/-!
# A272533: Numbers n such that A072499(n)!=A072504(n).

The programs for A272533, the canonical program `A272533.P7437355540614725294` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272533 has offset 1).

The definition of A272533 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5600 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272533.P7437355540614725294

`lt[1, A333748(n+1)]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A272533

/-- `lt[1, A333748(n+1)]+1` -/
def P7437355540614725294.Spec : Prop :=
  ∀ n, (P7437355540614725294.a n : ℤ) = A272533 (n + 1)

theorem P7437355540614725294.correct : P7437355540614725294.Spec := by
  intro n
  simp only [A272533, Nat.add_sub_cancel]

end A272533

/-! ## A272533.P14134289857564022701

`lt[1, A333751(n+1)]+1`
-/

namespace A272533.P14134289857564022701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333751 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A272533.P14134289857564022701

namespace A272533

/-- `lt[1, A333751(n+1)]+1` -/
def P14134289857564022701.Spec : Prop :=
  ∀ n, (P14134289857564022701.a n : ℤ) = A272533 (n + 1)

end A272533

/-! ## A272533.P17329947336484186464

`lt[4, A348955(A028310(n))]`
-/

namespace A272533.P17329947336484186464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348955 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A272533.P17329947336484186464

namespace A272533

/-- `lt[4, A348955(A028310(n))]` -/
def P17329947336484186464.Spec : Prop :=
  ∀ n, (P17329947336484186464.a n : ℤ) = A272533 (n + 1)

end A272533

/-! ## A272533.P1372894998656528860

`lt[A137735(n), A054576(n+1)]+1`
-/

namespace A272533.P1372894998656528860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A272533.P1372894998656528860

namespace A272533

/-- `lt[A137735(n), A054576(n+1)]+1` -/
def P1372894998656528860.Spec : Prop :=
  ∀ n, (P1372894998656528860.a n : ℤ) = A272533 (n + 1)

end A272533

/-! ## A272533.P7227571333640910366

`lt[A072504(n+1), A072499(n+1)]+1`
-/

namespace A272533.P7227571333640910366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072499 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A272533.P7227571333640910366

namespace A272533

/-- `lt[A072504(n+1), A072499(n+1)]+1` -/
def P7227571333640910366.Spec : Prop :=
  ∀ n, (P7227571333640910366.a n : ℤ) = A272533 (n + 1)

end A272533

/-! ## A272533.P18198477075337992912

`A065475(lt[A137735(n), A054576(n+1)])`
-/

namespace A272533.P18198477075337992912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A272533.P18198477075337992912

namespace A272533

/-- `A065475(lt[A137735(n), A054576(n+1)])` -/
def P18198477075337992912.Spec : Prop :=
  ∀ n, P18198477075337992912.a n = A272533 (n + 1)

end A272533

/-! ## A272533.P6403078076731133823

`A020725(lt[A072504(n+1), A072499(n+1)])`
-/

namespace A272533.P6403078076731133823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A272533.P6403078076731133823

namespace A272533

/-- `A020725(lt[A072504(n+1), A072499(n+1)])` -/
def P6403078076731133823.Spec : Prop :=
  ∀ n, P6403078076731133823.a n = A272533 (n + 1)

end A272533

/-! ## A272533.P4623843578644073721

`lt[A092976(n), A327642(n)]`
-/

namespace A272533.P4623843578644073721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272533.P4623843578644073721

namespace A272533

/-- `lt[A092976(n), A327642(n)]` -/
def P4623843578644073721.Spec : Prop :=
  ∀ n, (P4623843578644073721.a n : ℤ) = A272533 (n + 1)

end A272533

/-! ## A272533.P10911156892202901500

`lt[4, A348955(A000007(n)+n)]`
-/

namespace A272533.P10911156892202901500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348955 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A272533.P10911156892202901500

namespace A272533

/-- `lt[4, A348955(A000007(n)+n)]` -/
def P10911156892202901500.Spec : Prop :=
  ∀ n, (P10911156892202901500.a n : ℤ) = A272533 (n + 1)

end A272533

/-! ## A272533.P15239196699069472234

`record[A025480(A326112(n+1))]%A114826(n+1)`
-/

namespace A272533.P15239196699069472234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A326112 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A114826 (n + 1))

end

end A272533.P15239196699069472234

namespace A272533

/-- `record[A025480(A326112(n+1))]%A114826(n+1)` -/
def P15239196699069472234.Spec : Prop :=
  ∀ n, P15239196699069472234.a n = A272533 (n + 1)

end A272533

/-!
# A272537: Numbers k such that (28*10^k + 173)/3 is prime.

The programs for A272537, there is no canonical definition to state claims against.
-/

/-! ## A272537.P18131498769271829846

`lt[A257677(A000720(n+1)), A237591(2*n+3)]`
-/

namespace A272537.P18131498769271829846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257677 (A000720 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237591 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272537.P18131498769271829846

/-!
# A272539: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 491", based on the 5-celled von Neumann neighborhood.

The programs for A272539, there is no canonical definition to state claims against.
-/

/-! ## A272539.P15658801977098345873

`A272542(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272539.P15658801977098345873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272542 (n - 1) + a (n - 1)

end

end A272539.P15658801977098345873

/-! ## A272539.P2208692085713616846

`Δ[A272541(n)]-A272542(n)`
-/

namespace A272539.P2208692085713616846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272542 n

end

end A272539.P2208692085713616846

/-! ## A272539.P3628735025761654871

`A272541(n+1)-(A272542(n)+A272541(n))`
-/

namespace A272539.P3628735025761654871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272541 (n + 1) - (A272542 n + A272541 n)

end

end A272539.P3628735025761654871

/-! ## A272539.P12236386832139890850

`A065357(n)²-(A272542(n)-∑[A272542(n)])`
-/

namespace A272539.P12236386832139890850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065357 n ^ 2 - (A272542 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A272539.P12236386832139890850

/-! ## A272539.P5749760622897318869

`A057427(n+1)-(A272542(n)-∑[A272542(n)])`
-/

namespace A272539.P5749760622897318869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) - (A272542 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A272539.P5749760622897318869

/-! ## A272539.P3498520420195707808

`A000034(2*n)-(A272542(n)-∑[A272542(n)])`
-/

namespace A272539.P3498520420195707808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) - (A272542 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A272539.P3498520420195707808

/-! ## A272539.P17937533216499847110

`A034947(n+1)²-(A272542(n)-∑[A272542(n)])`
-/

namespace A272539.P17937533216499847110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) ^ 2 - (A272542 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A272539.P17937533216499847110

/-! ## A272539.P17435763790098121986

`A000035(2*n+1)-(A272542(n)-∑[A272542(n)])`
-/

namespace A272539.P17435763790098121986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) - (A272542 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A272539.P17435763790098121986

/-! ## A272539.P14894765557108239455

`1-(A272542(n)-∑[A272542(n)])%A166010(n+2)`
-/

namespace A272539.P14894765557108239455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A272542 n - ∑ j ∈ Finset.range (n + 1), f1 j) (A166010 (n + 2))

end

end A272539.P14894765557108239455

/-! ## A272539.P13637530212832381653

`A080827(n+2)%2-(A272542(n)-∑[A272542(n)])`
-/

namespace A272539.P13637530212832381653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080827 (n + 2)) 2 - (A272542 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A272539.P13637530212832381653

/-! ## A272539.P9571293446630924151

`(A004736(n+1)%2)!-(A272542(n)-∑[A272542(n)])`
-/

namespace A272539.P9571293446630924151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A004736 (n + 1)) 2).toNat : ℤ) - (A272542 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A272539.P9571293446630924151

/-! ## A272539.P13921495293144029328

`A000027(1-(A272542(n)-∑[A272542(n)]))`
-/

namespace A272539.P13921495293144029328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (1 - (A272542 n - ∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A272539.P13921495293144029328

/-! ## A272539.P311059456216218077

`A126646(n)%2-(A272542(n)-∑[A272542(n)])`
-/

namespace A272539.P311059456216218077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 n) 2 - (A272542 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A272539.P311059456216218077

/-!
# A272540: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 491", based on the 5-celled von Neumann neighborhood.

The programs for A272540, there is no canonical definition to state claims against.
-/

/-! ## A272540.P15402612813905216048

`A272539(2^n-1)`
-/

namespace A272540.P15402612813905216048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272539 (2 ^ n - 1)

end

end A272540.P15402612813905216048

/-! ## A272540.P14925403526148702223

`record[A272539(A173787(n))]`
-/

namespace A272540.P14925403526148702223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272539 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272540.P14925403526148702223

/-! ## A272540.P7999155895934212663

`record[A272539(A255565(n))]`
-/

namespace A272540.P7999155895934212663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272539 (A255565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272540.P7999155895934212663

/-! ## A272540.P2527776087133023684

`record[A272539(A334076(n))]`
-/

namespace A272540.P2527776087133023684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272539 (A334076 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272540.P2527776087133023684

/-! ## A272540.P7783380921379272704

`record[A272539(A334727(n))]`
-/

namespace A272540.P7783380921379272704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272539 (A334727 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272540.P7783380921379272704

/-!
# A272541: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 491", based on the 5-celled von Neumann neighborhood.

The programs for A272541, there is no canonical definition to state claims against.
-/

/-! ## A272541.P8646032374222028000

`∑[A272539(n)]`
-/

namespace A272541.P8646032374222028000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272539 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272541.P8646032374222028000

/-! ## A272541.P4804803191214202496

`A272539(n%(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A272541.P4804803191214202496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272539 (n % (n + 1)) + a (n - 1)

end

end A272541.P4804803191214202496

/-! ## A272541.P17906521386826136883

`A272539(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A272541.P17906521386826136883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272539 n + a (A023443 n).toNat

end

end A272541.P17906521386826136883

/-! ## A272541.P17376454976919659626

`∑[A272542(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A272541.P17376454976919659626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A272542 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272541.P17376454976919659626

/-! ## A272541.P13525384940419664600

`∑[1-(A272542(n)-∑[A272542(n)])]`
-/

namespace A272541.P13525384940419664600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272542 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A272542 n - ∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272541.P13525384940419664600

/-!
# A272542: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 491", based on the 5-celled von Neumann neighborhood.

The programs for A272542, there is no canonical definition to state claims against.
-/

/-! ## A272542.P14505479606512200375

`Δ[A272539(n)]`
-/

namespace A272542.P14505479606512200375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272539 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272542.P14505479606512200375

/-! ## A272542.P8908897225614567782

`A272539(n+1)-A272539(n)`
-/

namespace A272542.P8908897225614567782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272539 (n + 1) - A272539 n

end

end A272542.P8908897225614567782

/-!
# A272543: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 493", based on the 5-celled von Neumann neighborhood.

The programs for A272543, there is no canonical definition to state claims against.
-/

/-! ## A272543.P4578203671105623783

`A272546(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272543.P4578203671105623783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272546 (n - 1) + a (n - 1)

end

end A272543.P4578203671105623783

/-! ## A272543.P13048573582679303841

`Δ[A272545(n)]-A272546(n)`
-/

namespace A272543.P13048573582679303841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272545 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272546 n

end

end A272543.P13048573582679303841

/-! ## A272543.P9454159370921428773

`A272545(n+1)-(A272546(n)+A272545(n))`
-/

namespace A272543.P9454159370921428773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272545 (n + 1) - (A272546 n + A272545 n)

end

end A272543.P9454159370921428773

/-!
# A272544: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 493", based on the 5-celled von Neumann neighborhood.

The programs for A272544, there is no canonical definition to state claims against.
-/

/-! ## A272544.P5763925674094499975

`A272543(2^n-1)`
-/

namespace A272544.P5763925674094499975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272543 (2 ^ n - 1)

end

end A272544.P5763925674094499975

/-! ## A272544.P15914010652029399965

`record[A272543(A073138(n))]`
-/

namespace A272544.P15914010652029399965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272543 (A073138 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272544.P15914010652029399965

/-! ## A272544.P7135762036795231112

`record[A272543(A173787(n))]`
-/

namespace A272544.P7135762036795231112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272543 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272544.P7135762036795231112

/-! ## A272544.P4149750948363834137

`record[A272543(A218616(n))]`
-/

namespace A272544.P4149750948363834137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272543 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272544.P4149750948363834137

/-! ## A272544.P1464298610694367513

`record[A272543(A232751(n))]`
-/

namespace A272544.P1464298610694367513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272543 (A232751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272544.P1464298610694367513

/-!
# A272545: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 493", based on the 5-celled von Neumann neighborhood.

The programs for A272545, there is no canonical definition to state claims against.
-/

/-! ## A272545.P14801026224994751493

`∑[A272546(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A272545.P14801026224994751493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A272546 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272545.P14801026224994751493

/-! ## A272545.P12730587327769461890

`∑[A272543(n)]`
-/

namespace A272545.P12730587327769461890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272545.P12730587327769461890

/-! ## A272545.P7221148686640110932

`A272543(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A272545.P7221148686640110932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272543 n + a (A023443 n).toNat

end

end A272545.P7221148686640110932

/-! ## A272545.P12698436873482205831

`A272543(n)+a(n-A057427(n))` with `a(0)=1`
-/

namespace A272545.P12698436873482205831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272543 n + a ((n : ℤ) - A057427 n).toNat

end

end A272545.P12698436873482205831

/-! ## A272545.P10469884854144514349

`A272543(n)+a(abs(A131738(n))-2)` with `a(0)=1`
-/

namespace A272545.P10469884854144514349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272543 n + a (|A131738 n| - 2).toNat

end

end A272545.P10469884854144514349

/-!
# A272546: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 493", based on the 5-celled von Neumann neighborhood.

The programs for A272546, there is no canonical definition to state claims against.
-/

/-! ## A272546.P10465476207022478960

`Δ[A272543(n)]`
-/

namespace A272546.P10465476207022478960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272546.P10465476207022478960

/-! ## A272546.P17800019926237905903

`A272543(n+1)-A272543(n)`
-/

namespace A272546.P17800019926237905903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272543 (n + 1) - A272543 n

end

end A272546.P17800019926237905903

/-! ## A272546.P261520586130630961

`A272543(n+1)+A008683(A007918(n))*A272543(n)`
-/

namespace A272546.P261520586130630961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272543 (n + 1) + A008683 (A007918 n).toNat * A272543 n

end

end A272546.P261520586130630961

/-!
# A272547: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 494", based on the 5-celled von Neumann neighborhood.

The programs for A272547, there is no canonical definition to state claims against.
-/

/-! ## A272547.P3278394035378859766

`A169705(2^n-1)`
-/

namespace A272547.P3278394035378859766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169705 (2 ^ n - 1)

end

end A272547.P3278394035378859766

/-! ## A272547.P1854164665001832162

`record[A169705(A038573(n))]`
-/

namespace A272547.P1854164665001832162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169705 (A038573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272547.P1854164665001832162

/-! ## A272547.P12489478428501907985

`record[A169705(A227351(n))]`
-/

namespace A272547.P12489478428501907985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169705 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272547.P12489478428501907985

/-! ## A272547.P18277853420112420936

`record[A169705(A303763(n))]`
-/

namespace A272547.P18277853420112420936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169705 (A303763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272547.P18277853420112420936

/-! ## A272547.P9780265105128035225

`record[A169705(A365279(n))]`
-/

namespace A272547.P9780265105128035225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169705 (A365279 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272547.P9780265105128035225

/-!
# A272548: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 494", based on the 5-celled von Neumann neighborhood.

The programs for A272548, there is no canonical definition to state claims against.
-/

/-! ## A272548.P16391045815837467167

`∑[A169705(n)]`
-/

namespace A272548.P16391045815837467167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272548.P16391045815837467167

/-! ## A272548.P13727490471685817966

`∑[∑[A169706(n)]+1-A169706(n)]`
-/

namespace A272548.P13727490471685817966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169706 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A169706 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272548.P13727490471685817966

/-! ## A272548.P6151627966180961259

`A169705(n+1)+a(n-1)-A169706(n)` with `a(0)=1`
-/

namespace A272548.P6151627966180961259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A169705 (n + 1) + (a (n - 1) - A169706 n)

end

end A272548.P6151627966180961259

/-! ## A272548.P15943954279166018771

`a(n-1)+A169705(n)%A272113(n)` with `a(0)=1`
-/

namespace A272548.P15943954279166018771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A169705 n) (A272113 n)

end

end A272548.P15943954279166018771

/-! ## A272548.P10396752156230003853

`∑[A016754(n)-A272834(n)]+1`
-/

namespace A272548.P10396752156230003853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A272834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A272548.P10396752156230003853

/-! ## A272548.P8498254703657699383

`∑[(A016754(n)-A272834(n))^A019426(2*n)]`
-/

namespace A272548.P8498254703657699383
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016754 n - A272834 n : ℚ) ^ (A019426 (2 * n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272548.P8498254703657699383

/-! ## A272548.P3461565916717049303

`a(n-1)+(A016754(n)-A272834(n))%A069280(n+1)` with `a(0)=1`
-/

namespace A272548.P3461565916717049303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A016754 n - A272834 n) (A069280 (n + 1))

end

end A272548.P3461565916717049303

/-! ## A272548.P16020206547116813164

`∑[Δ[n²]²-A272834(n)%A272836(n)]`
-/

namespace A272548.P16020206547116813164
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2 - Int.tmod (A272834 n) (A272836 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272548.P16020206547116813164

/-! ## A272548.P17282608847070955317

`∑[A181385(A016825(n))]-A272836(n)`
-/

namespace A272548.P17282608847070955317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A272836 n

end

end A272548.P17282608847070955317

/-! ## A272548.P604742033742819989

`∑[A141310(A333714(n+1))-A272834(n)]`
-/

namespace A272548.P604742033742819989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A333714 (n + 1)).toNat - A272834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272548.P604742033742819989

/-!
# A272549: Expansion of x*(1 + 5*x - 3*x^2 + 7*x^3 + 3*x^4 + 3 *x^5 - x^6 + x^7)/((1 - x)^3*(1 + x + x^2 + x^3)^2).

The programs for A272549, the canonical program `A272549.P16579211066219233561` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272549 has offset 0).

The definition of A272549 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+5x^2-3x^3+7x^4+3x^5+3x^6-x^7+x^8)/(1-x-2x^4+2x^5+x^8-x^9))` (program `A272549.P16579211066219233561`, by `A272549.P16579211066219233561.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A272549.P16579211066219233561

`ogf((x+5x^2-3x^3+7x^4+3x^5+3x^6-x^7+x^8)/(1-x-2x^4+2x^5+x^8-x^9))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A272549

/-- `ogf((x+5x^2-3x^3+7x^4+3x^5+3x^6-x^7+x^8)/(1-x-2x^4+2x^5+x^8-x^9))` -/
def P16579211066219233561.Spec : Prop :=
  ∀ n, P16579211066219233561.a n = A272549 n

theorem P16579211066219233561.correct : P16579211066219233561.Spec := by
  intro n
  simp only [A272549]

end A272549

/-! ## A272549.P17942425938936607261

`a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=3, a(4)=10, a(5)=15, a(6)=28, a(7)=21, a(8)=36`
-/

namespace A272549.P17942425938936607261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 6, 3, 10, 15, 28, 21, 36] fun n a =>
  a (n - 1) + 2 * a (n - 4) - 2 * a (n - 5) - a (n - 8) + a (n - 9)

end

end A272549.P17942425938936607261

namespace A272549

/-- `a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` -/
def P17942425938936607261.Spec : Prop :=
  ∀ n, P17942425938936607261.a n = A272549 n

end A272549

/-! ## A272549.P12305531538807761423

`C((n%4)!%3+n, 2)`
-/

namespace A272549.P12305531538807761423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial (n % 4) % 3 + n) 2

end

end A272549.P12305531538807761423

namespace A272549

/-- `C((n%4)!%3+n, 2)` -/
def P12305531538807761423.Spec : Prop :=
  ∀ n, (P12305531538807761423.a n : ℤ) = A272549 n

end A272549

/-! ## A272549.P16495438925360989339

`or(1, n)*ceil(or(2, n-1)/2)`
-/

namespace A272549.P16495438925360989339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) * ⌈(Int.lor 2 ((n : ℤ) - 1) : ℚ) / 2⌉

end

end A272549.P16495438925360989339

namespace A272549

/-- `or(1, n)*ceil(or(2, n-1)/2)` -/
def P16495438925360989339.Spec : Prop :=
  ∀ n, P16495438925360989339.a n = A272549 n

end A272549

/-! ## A272549.P10676160449006144599

`C(A133256(n+1), 2)`
-/

namespace A272549.P10676160449006144599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A133256 (n + 1)).toNat 2

end

end A272549.P10676160449006144599

namespace A272549

/-- `C(A133256(n+1), 2)` -/
def P10676160449006144599.Spec : Prop :=
  ∀ n, (P10676160449006144599.a n : ℤ) = A272549 n

end A272549

/-! ## A272549.P9740511250318573503

`A000217(xor(n, char[or(2, n)]))`
-/

namespace A272549.P9740511250318573503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Nat.xor n (if ∃ j, f1 j = n then 1 else 0))

end

end A272549.P9740511250318573503

namespace A272549

/-- `A000217(xor(n, char[or(2, n)]))` -/
def P9740511250318573503.Spec : Prop :=
  ∀ n, P9740511250318573503.a n = A272549 n

end A272549

/-! ## A272549.P14816131819809271656

`A000217(xor(n, and(2, n)/2))`
-/

namespace A272549.P14816131819809271656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.xor (n : ℤ) (SequenceMachineLib.roundAway ((Nat.land 2 n : ℚ) / 2))).toNat

end

end A272549.P14816131819809271656

namespace A272549

/-- `A000217(xor(n, and(2, n)/2))` -/
def P14816131819809271656.Spec : Prop :=
  ∀ n, P14816131819809271656.a n = A272549 n

end A272549

/-! ## A272549.P15880131310759249895

`A000217(xor(n, C(n, 2)%2))`
-/

namespace A272549.P15880131310759249895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Nat.xor n (Nat.choose n 2 % 2))

end

end A272549.P15880131310759249895

namespace A272549

/-- `A000217(xor(n, C(n, 2)%2))` -/
def P15880131310759249895.Spec : Prop :=
  ∀ n, P15880131310759249895.a n = A272549 n

end A272549

/-! ## A272549.P17056851582479600678

`A000217(xor(n, and(1, C(n, 2))))`
-/

namespace A272549.P17056851582479600678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Nat.xor n (Nat.land 1 (Nat.choose n 2)))

end

end A272549.P17056851582479600678

namespace A272549

/-- `A000217(xor(n, and(1, C(n, 2))))` -/
def P17056851582479600678.Spec : Prop :=
  ∀ n, P17056851582479600678.a n = A272549 n

end A272549

/-! ## A272549.P11871916315436321267

`A000217(xor(n, C(n, or(2, n))))`
-/

namespace A272549.P11871916315436321267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Nat.xor n (Nat.choose n (Nat.lor 2 n)))

end

end A272549.P11871916315436321267

namespace A272549

/-- `A000217(xor(n, C(n, or(2, n))))` -/
def P11871916315436321267.Spec : Prop :=
  ∀ n, P11871916315436321267.a n = A272549 n

end A272549

/-! ## A272549.P10092982089198958390

`C(A000045(and(3, n-3))+n, 2)`
-/

namespace A272549.P10092982089198958390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000045 (Int.land 3 ((n : ℤ) - 3)).toNat + (n : ℤ)).toNat 2

end

end A272549.P10092982089198958390

namespace A272549

/-- `C(A000045(and(3, n-3))+n, 2)` -/
def P10092982089198958390.Spec : Prop :=
  ∀ n, (P10092982089198958390.a n : ℤ) = A272549 n

end A272549

/-! ## A272549.P413341088406804086

`C(A284307(round(sqrt((n+2)%4)+n)), 2)`
-/

namespace A272549.P413341088406804086
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A284307 (SequenceMachineLib.roundAway (Real.sqrt (((n + 2) % 4 : ℕ) : ℝ) + (n : ℝ))).toNat).toNat 2

end

end A272549.P413341088406804086

namespace A272549

/-- `C(A284307(round(sqrt((n+2)%4)+n)), 2)` -/
def P413341088406804086.Spec : Prop :=
  ∀ n, (P413341088406804086.a n : ℤ) = A272549 n

end A272549

/-! ## A272549.P16412667837247536509

`A161680(A133256(n+1))`
-/

namespace A272549.P16412667837247536509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A133256 (n + 1)).toNat

end

end A272549.P16412667837247536509

namespace A272549

/-- `A161680(A133256(n+1))` -/
def P16412667837247536509.Spec : Prop :=
  ∀ n, P16412667837247536509.a n = A272549 n

end A272549

/-! ## A272549.P13952500015286275427

`A109613(n)*A285869(n)`
-/

namespace A272549.P13952500015286275427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n * A285869 n

end

end A272549.P13952500015286275427

namespace A272549

/-- `A109613(n)*A285869(n)` -/
def P13952500015286275427.Spec : Prop :=
  ∀ n, P13952500015286275427.a n = A272549 n

end A272549

/-! ## A272549.P12674082319767317980

`A000217(xor(n, A021913(n)))`
-/

namespace A272549.P12674082319767317980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.xor (n : ℤ) (A021913 n)).toNat

end

end A272549.P12674082319767317980

namespace A272549

/-- `A000217(xor(n, A021913(n)))` -/
def P12674082319767317980.Spec : Prop :=
  ∀ n, P12674082319767317980.a n = A272549 n

end A272549

/-! ## A272549.P11100913037888249514

`A063196(n+1)*A285869(n)`
-/

namespace A272549.P11100913037888249514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (n + 1) * A285869 n

end

end A272549.P11100913037888249514

namespace A272549

/-- `A063196(n+1)*A285869(n)` -/
def P11100913037888249514.Spec : Prop :=
  ∀ n, P11100913037888249514.a n = A272549 n

end A272549

/-! ## A272549.P3883342667219001019

`A109613(n)*A212831(A186421(n))`
-/

namespace A272549.P3883342667219001019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n * A212831 (A186421 n).toNat

end

end A272549.P3883342667219001019

namespace A272549

/-- `A109613(n)*A212831(A186421(n))` -/
def P3883342667219001019.Spec : Prop :=
  ∀ n, P3883342667219001019.a n = A272549 n

end A272549

/-! ## A272549.P7800867495218673632

`(A285869(n)+A106249(n))*A285869(n)`
-/

namespace A272549.P7800867495218673632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285869 n + A106249 n) * A285869 n

end

end A272549.P7800867495218673632

namespace A272549

/-- `(A285869(n)+A106249(n))*A285869(n)` -/
def P7800867495218673632.Spec : Prop :=
  ∀ n, P7800867495218673632.a n = A272549 n

end A272549

/-! ## A272549.P13420608620149091022

`(A109613(n)-A106249(n))*A109613(n)`
-/

namespace A272549.P13420608620149091022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109613 n - A106249 n) * A109613 n

end

end A272549.P13420608620149091022

namespace A272549

/-- `(A109613(n)-A106249(n))*A109613(n)` -/
def P13420608620149091022.Spec : Prop :=
  ∀ n, P13420608620149091022.a n = A272549 n

end A272549

/-! ## A272549.P7954794161180828197

`A056699(n+1)/A116966(n)*A000217(n)`
-/

namespace A272549.P7954794161180828197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056699 (n + 1) : ℚ) / (A116966 n : ℚ) * (A000217 n : ℚ)

end

end A272549.P7954794161180828197

namespace A272549

/-- `A056699(n+1)/A116966(n)*A000217(n)` -/
def P7954794161180828197.Spec : Prop :=
  ∀ n, P7954794161180828197.a n = (A272549 n : ℚ)

end A272549

/-!
# A272550: Lexicographically earliest increasing sequence of primes such that odd-indexed terms have final digit 1 and even-indexed terms have final digit 9.

The programs for A272550, there is no canonical definition to state claims against.
-/

/-! ## A272550.P1701705391672464352

`A000040(A254438(n+1)+A079611(2*n+3))`
-/

namespace A272550.P1701705391672464352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A254438 (n + 1) + A079611 (2 * n + 3)).toNat

end

end A272550.P1701705391672464352

/-! ## A272550.P2270264531803149915

`A045468(eq[A065683(n+1), A159684(n+3)])`
-/

namespace A272550.P2270264531803149915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A272550.P2270264531803149915

/-! ## A272550.P14983222678871425851

`A038872(A143826(n+2)%A078866(3*(n+1)))`
-/

namespace A272550.P14983222678871425851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (Int.tmod (A143826 (n + 2)) (A078866 (3 * (n + 1)))).toNat

end

end A272550.P14983222678871425851

/-!
# A272551: Number of singular vector tuples for a general 4-dimensional n X n X n X n tensor.

The programs for A272551, there is no canonical definition to state claims against.
-/

/-! ## A272551.P393179020302181748

`A284308(A141214(n+1))`
-/

namespace A272551.P393179020302181748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284308 (A141214 (n + 1)).toNat

end

end A272551.P393179020302181748

/-! ## A272551.P13853911986886566025

`A284308(eq[2, A054123(n)])`
-/

namespace A272551.P13853911986886566025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284308 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272551.P13853911986886566025

/-! ## A272551.P13482515548411287487

`A284308(A046691(n+2)+1)`
-/

namespace A272551.P13482515548411287487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284308 (A046691 (n + 2) + 1).toNat

end

end A272551.P13482515548411287487

/-! ## A272551.P9367731521347395222

`A284308(eq[4, A194921(n+1)])`
-/

namespace A272551.P9367731521347395222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284308 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272551.P9367731521347395222

/-! ## A272551.P4149015186607372212

`record[A284308(A141214(A347285(n)))]`
-/

namespace A272551.P4149015186607372212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284308 (A141214 (A347285 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272551.P4149015186607372212

/-!
# A272554: Nonnegative numbers n such that abs(1/(36)(n^6 - 126n^5 + 6217n^4 - 153066n^3 + 1987786n^2 - 13055316n + 34747236)) is prime.

The programs for A272554, there is no canonical definition to state claims against.
-/

/-! ## A272554.P6869085076422758747

`2*A185245(and(n, 2*n))+n`
-/

namespace A272554.P6869085076422758747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A185245 (Nat.land n (2 * n)) + (n : ℤ)

end

end A272554.P6869085076422758747

/-! ## A272554.P1646403363620864368

`A089799(A360134(n+1))+n`
-/

namespace A272554.P1646403363620864368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089799 (A360134 (n + 1)).toNat + (n : ℤ)

end

end A272554.P1646403363620864368

/-! ## A272554.P2695906961463505065

`A353419(A375295(n+1))+n`
-/

namespace A272554.P2695906961463505065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353419 (A375295 (n + 1)).toNat + (n : ℤ)

end

end A272554.P2695906961463505065

/-! ## A272554.P9342047015724666099

`A055941(A186729(n+3))+n`
-/

namespace A272554.P9342047015724666099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (A186729 (n + 3)).toNat + (n : ℤ)

end

end A272554.P9342047015724666099

/-! ## A272554.P13029748940114794474

`A000122(A339472(n+3))+n`
-/

namespace A272554.P13029748940114794474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A339472 (n + 3)).toNat + (n : ℤ)

end

end A272554.P13029748940114794474

/-! ## A272554.P615326612618452263

`A000122(A305701(n+4))+n`
-/

namespace A272554.P615326612618452263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A305701 (n + 4)).toNat + (n : ℤ)

end

end A272554.P615326612618452263

/-! ## A272554.P11591753574142955225

`A000122(A321454(n+1)-1)+n`
-/

namespace A272554.P11591753574142955225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A321454 (n + 1) - 1).toNat + (n : ℤ)

end

end A272554.P11591753574142955225

/-! ## A272554.P12248116966788437515

`2*A249832(A193845(n+1))+n`
-/

namespace A272554.P12248116966788437515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A249832 (A193845 (n + 1)).toNat + (n : ℤ)

end

end A272554.P12248116966788437515

/-! ## A272554.P3431588461524157001

`A000038(A072178(3*n+1))+n`
-/

namespace A272554.P3431588461524157001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A072178 (3 * n + 1)).toNat + (n : ℤ)

end

end A272554.P3431588461524157001

/-! ## A272554.P9415568750860383765

`A188431(A186719(3*n+1))+n-1`
-/

namespace A272554.P9415568750860383765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188431 (A186719 (3 * n + 1)).toNat + ((n : ℤ) - 1)

end

end A272554.P9415568750860383765

/-!
# A272555: Primes of the form abs(1/(36)(n^6 - 126n^5 + 6217n^4 - 153066n^3 + 1987786n^2 - 13055316n + 34747236)) in order of increasing nonnegative n.

The programs for A272555, there is no canonical definition to state claims against.
-/

/-! ## A272555.P8678157512589166562

`abs(A121888(A272554(n+1)))`
-/

namespace A272555.P8678157512589166562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121888 (A272554 (n + 1)).toNat|

end

end A272555.P8678157512589166562

/-! ## A272555.P4712714298686405684

`lcm(A033999(n), A121888(A272554(n+1)))`
-/

namespace A272555.P4712714298686405684
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A121888 (A272554 (n + 1)).toNat)

end

end A272555.P4712714298686405684

/-! ## A272555.P2447708302897244173

`gcd(A000038(n+1), A121888(A272554(n+1)))`
-/

namespace A272555.P2447708302897244173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (n + 1)) (A121888 (A272554 (n + 1)).toNat)

end

end A272555.P2447708302897244173

/-! ## A272555.P16145082336572179316

`lcm(A001222(A090236(n)), A121888(n))`
-/

namespace A272555.P16145082336572179316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001222 (A090236 n).toNat) (A121888 n)

end

end A272555.P16145082336572179316

/-! ## A272555.P10643278729661860926

`abs(A121888(n))*A057427(A277186(n+1))`
-/

namespace A272555.P10643278729661860926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121888 n| * A057427 (A277186 (n + 1)).toNat

end

end A272555.P10643278729661860926

/-! ## A272555.P9021594959251528700

`A056965(A020485(n))+abs(A121888(n))`
-/

namespace A272555.P9021594959251528700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A020485 n).toNat + |A121888 n|

end

end A272555.P9021594959251528700

/-! ## A272555.P7440184678671903013

`abs(A001222(A127956(n+1))*A121888(n))`
-/

namespace A272555.P7440184678671903013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001222 (A127956 (n + 1)).toNat * A121888 n|

end

end A272555.P7440184678671903013

/-!
# A272556: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 497", based on the 5-celled von Neumann neighborhood.

The programs for A272556, there is no canonical definition to state claims against.
-/

/-! ## A272556.P1403040073554086934

`A272559(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272556.P1403040073554086934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272559 (n - 1) + a (n - 1)

end

end A272556.P1403040073554086934

/-! ## A272556.P9378514015485208825

`Δ[A272558(n)]-A272559(n)`
-/

namespace A272556.P9378514015485208825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272559 n

end

end A272556.P9378514015485208825

/-! ## A272556.P4731214895418539283

`∑[A272559(A028310(n)-1)]-2`
-/

namespace A272556.P4731214895418539283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272559 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A272556.P4731214895418539283

/-! ## A272556.P13540577125729180969

`A272558(n+1)-(A272559(n)+A272558(n))`
-/

namespace A272556.P13540577125729180969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272558 (n + 1) - (A272559 n + A272558 n)

end

end A272556.P13540577125729180969

/-! ## A272556.P4462443344210692328

`A115510(A272560(n))`
-/

namespace A272556.P4462443344210692328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115510 (A272560 n).toNat

end

end A272556.P4462443344210692328

/-!
# A272557: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 497", based on the 5-celled von Neumann neighborhood.

The programs for A272557, there is no canonical definition to state claims against.
-/

/-! ## A272557.P61229729728389117

`A272556(2^n-1)`
-/

namespace A272557.P61229729728389117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272556 (2 ^ n - 1)

end

end A272557.P61229729728389117

/-! ## A272557.P8993093175220033479

`record[A272556(A173787(n))]`
-/

namespace A272557.P8993093175220033479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272556 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272557.P8993093175220033479

/-! ## A272557.P16973891724061122721

`record[A272556(A303765(n))]`
-/

namespace A272557.P16973891724061122721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272556 (A303765 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272557.P16973891724061122721

/-! ## A272557.P5877133499644331684

`record[A272556(A243071(n+1))]`
-/

namespace A272557.P5877133499644331684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272556 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272557.P5877133499644331684

/-! ## A272557.P17691044655768047161

`A272556(A000225(n))+char[15]`
-/

namespace A272557.P17691044655768047161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272556 (A000225 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A272557.P17691044655768047161

/-!
# A272558: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 497", based on the 5-celled von Neumann neighborhood.

The programs for A272558, there is no canonical definition to state claims against.
-/

/-! ## A272558.P3161385420453957871

`∑[∑[A272559(A028310(n)-1)]-2]`
-/

namespace A272558.P3161385420453957871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272559 (A028310 n - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272558.P3161385420453957871

/-! ## A272558.P6442725973044502054

`∑[∑[A272559(n)]+1-A272559(n)]`
-/

namespace A272558.P6442725973044502054
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272559 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272559 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272558.P6442725973044502054

/-! ## A272558.P5739471484965827596

`∑[A272556(n)]`
-/

namespace A272558.P5739471484965827596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272556 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272558.P5739471484965827596

/-! ## A272558.P9608277122121483836

`A272556(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A272558.P9608277122121483836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272556 n + a (A023443 n).toNat

end

end A272558.P9608277122121483836

/-! ## A272558.P7653684009969600434

`A272556(n)+a(n-(A000038(n)+1))` with `a(0)=1`
-/

namespace A272558.P7653684009969600434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272556 n + a ((n : ℤ) - (A000038 n + 1)).toNat

end

end A272558.P7653684009969600434

/-! ## A272558.P4200352004191957923

`A272556(n)+a(A003056(A161680(n)))` with `a(0)=1`
-/

namespace A272558.P4200352004191957923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272556 n + a (A003056 (A161680 n).toNat).toNat

end

end A272558.P4200352004191957923

/-!
# A272559: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 497", based on the 5-celled von Neumann neighborhood.

The programs for A272559, there is no canonical definition to state claims against.
-/

/-! ## A272559.P5838386419982317520

`Δ[A272556(n)]`
-/

namespace A272559.P5838386419982317520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272556 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272559.P5838386419982317520

/-! ## A272559.P9095293856258905554

`A272556(n+1)-A272556(n)`
-/

namespace A272559.P9095293856258905554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272556 (n + 1) - A272556 n

end

end A272559.P9095293856258905554

/-! ## A272559.P2719433952006968066

`Δ[A272560(n)-A073424(A016826(n))]`
-/

namespace A272559.P2719433952006968066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272560 n - A073424 (A016826 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272559.P2719433952006968066

/-! ## A272559.P2926102142115110568

`Δ[A272560(n)-A185012(A096507(n+1))]`
-/

namespace A272559.P2926102142115110568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272560 n - A185012 (A096507 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272559.P2926102142115110568

/-! ## A272559.P3973851971496452856

`Δ[A272560(n)-A133101(A127936(2*n+5))]`
-/

namespace A272559.P3973851971496452856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272560 n - A133101 (A127936 (2 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272559.P3973851971496452856

/-!
# A272560: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 499", based on the 5-celled von Neumann neighborhood.

The programs for A272560, there is no canonical definition to state claims against.
-/

/-! ## A272560.P15527596391768504389

`A272563(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272560.P15527596391768504389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272563 (n - 1) + a (n - 1)

end

end A272560.P15527596391768504389

/-! ## A272560.P3796275736159562135

`Δ[A272562(n)]-A272563(n)`
-/

namespace A272560.P3796275736159562135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272563 n

end

end A272560.P3796275736159562135

/-! ## A272560.P17475803524958274055

`A272562(n+1)-(A272563(n)+A272562(n))`
-/

namespace A272560.P17475803524958274055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272562 (n + 1) - (A272563 n + A272562 n)

end

end A272560.P17475803524958274055

/-! ## A272560.P16206818618688492935

`A272562(-xor(n, -1))%(A272563(n)+A272562(n))`
-/

namespace A272560.P16206818618688492935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272562 (-Int.xor (n : ℤ) (-1)).toNat) (A272563 n + A272562 n)

end

end A272560.P16206818618688492935

/-! ## A272560.P9757144389611160893

`∑[A272563(A025581(A167614(n+1)))]`
-/

namespace A272560.P9757144389611160893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272563 (A025581 (A167614 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272560.P9757144389611160893

/-!
# A272561: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 499", based on the 5-celled von Neumann neighborhood.

The programs for A272561, there is no canonical definition to state claims against.
-/

/-! ## A272561.P14420685447685151097

`A272560(2^n-1)`
-/

namespace A272561.P14420685447685151097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272560 (2 ^ n - 1)

end

end A272561.P14420685447685151097

/-! ## A272561.P112241326032209688

`record[A272560(A173787(n))]`
-/

namespace A272561.P112241326032209688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272560 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272561.P112241326032209688

/-! ## A272561.P1264420752883593350

`record[A272560(A303765(n))]`
-/

namespace A272561.P1264420752883593350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272560 (A303765 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272561.P1264420752883593350

/-! ## A272561.P13908033366077490337

`and(-1, A272560(A000225(n)))`
-/

namespace A272561.P13908033366077490337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A272560 (A000225 n).toNat)

end

end A272561.P13908033366077490337

/-! ## A272561.P5547135191439171379

`record[A272560(A243071(n+1))]`
-/

namespace A272561.P5547135191439171379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272560 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272561.P5547135191439171379

/-!
# A272562: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 499", based on the 5-celled von Neumann neighborhood.

The programs for A272562, there is no canonical definition to state claims against.
-/

/-! ## A272562.P3486434657085345902

`∑[A272563(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A272562.P3486434657085345902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A272563 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272562.P3486434657085345902

/-! ## A272562.P9457902040562439483

`∑[A272560(n)]`
-/

namespace A272562.P9457902040562439483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272562.P9457902040562439483

/-! ## A272562.P12717861178958832717

`A272560(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A272562.P12717861178958832717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272560 n + a (A023443 n).toNat

end

end A272562.P12717861178958832717

/-! ## A272562.P8167321749675133520

`a(n-1)+A272560(n)+A000007(n)` with `a(0)=1`
-/

namespace A272562.P8167321749675133520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A272560 n + A000007 n)

end

end A272562.P8167321749675133520

/-! ## A272562.P14788927565889545170

`a(n-1)+A272560(n)%A286624(n+2)` with `a(0)=1`
-/

namespace A272562.P14788927565889545170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A272560 n) (A286624 (n + 2))

end

end A272562.P14788927565889545170

/-! ## A272562.P12754915966915875926

`a(n-1)+A054977(n)^A280865(n+1)*A272560(n)` with `a(0)=1`
-/

namespace A272562.P12754915966915875926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A054977 n : ℚ) ^ (A280865 (n + 1) : ℤ) * (A272560 n : ℚ)

end

end A272562.P12754915966915875926

/-!
# A272563: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 499", based on the 5-celled von Neumann neighborhood.

The programs for A272563, there is no canonical definition to state claims against.
-/

/-! ## A272563.P9471372075687923929

`Δ[A272560(n)]`
-/

namespace A272563.P9471372075687923929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272563.P9471372075687923929

/-! ## A272563.P8788661006469379011

`A272560(n+1)-A272560(n)`
-/

namespace A272563.P8788661006469379011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272560 (n + 1) - A272560 n

end

end A272563.P8788661006469379011

/-! ## A272563.P15935204956842755057

`Δ[A272556(n)+A073424(A016826(n))]`
-/

namespace A272563.P15935204956842755057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272556 n + A073424 (A016826 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272563.P15935204956842755057

/-! ## A272563.P6804196627030965730

`A272559(n)+A008683(A038215(n))`
-/

namespace A272563.P6804196627030965730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272559 n + A008683 (A038215 n).toNat

end

end A272563.P6804196627030965730

/-! ## A272563.P15800809968323354428

`A272559(n)+A121373(A272558(n))`
-/

namespace A272563.P15800809968323354428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272559 n + A121373 (A272558 n).toNat

end

end A272563.P15800809968323354428

/-!
# A272564: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 501", based on the 5-celled von Neumann neighborhood.

The programs for A272564, there is no canonical definition to state claims against.
-/

/-! ## A272564.P2216690307072646777

`A272567(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272564.P2216690307072646777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272567 (n - 1) + a (n - 1)

end

end A272564.P2216690307072646777

/-! ## A272564.P11442549131664358859

`∑[A272567(n)]+1-A272567(n)`
-/

namespace A272564.P11442549131664358859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A272567 n)

end

end A272564.P11442549131664358859

/-! ## A272564.P2095604064021342331

`A272566(n+1)-(A272567(n)+A272566(n))`
-/

namespace A272564.P2095604064021342331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272566 (n + 1) - (A272567 n + A272566 n)

end

end A272564.P2095604064021342331

/-! ## A272564.P8941103947264703342

`A271004(n)+char[2]`
-/

namespace A272564.P8941103947264703342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271004 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A272564.P8941103947264703342

/-! ## A272564.P16245244615113384459

`or(A005369(n), A271004(n))`
-/

namespace A272564.P16245244615113384459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005369 n) (A271004 n)

end

end A272564.P16245244615113384459

/-! ## A272564.P15473191422880686869

`or(A036988(n), A271004(n))`
-/

namespace A272564.P15473191422880686869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036988 n) (A271004 n)

end

end A272564.P15473191422880686869

/-! ## A272564.P17225181183732767714

`or(A059841(n), A271004(n))`
-/

namespace A272564.P17225181183732767714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059841 n) (A271004 n)

end

end A272564.P17225181183732767714

/-! ## A272564.P11541299511027644582

`or(A080116(n), A271004(n))`
-/

namespace A272564.P11541299511027644582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080116 n) (A271004 n)

end

end A272564.P11541299511027644582

/-! ## A272564.P5674779350016670217

`or(A111406(n), A271004(n))`
-/

namespace A272564.P5674779350016670217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A111406 n) (A271004 n)

end

end A272564.P5674779350016670217

/-! ## A272564.P13828546852377755429

`or(A225569(n), A271004(n))`
-/

namespace A272564.P13828546852377755429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A225569 n) (A271004 n)

end

end A272564.P13828546852377755429

/-! ## A272564.P13056033413758030566

`or(A267423(n), A271004(n))`
-/

namespace A272564.P13056033413758030566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A267423 n) (A271004 n)

end

end A272564.P13056033413758030566

/-! ## A272564.P15065717272284539231

`xor(A185012(n), A271004(n))`
-/

namespace A272564.P15065717272284539231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185012 n) (A271004 n)

end

end A272564.P15065717272284539231

/-! ## A272564.P2231493791653553423

`or(A014845(n)², A271004(n))`
-/

namespace A272564.P2231493791653553423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014845 n ^ 2) (A271004 n)

end

end A272564.P2231493791653553423

/-! ## A272564.P13693373213373244292

`or(Δ[A000194(n)], A271004(n))`
-/

namespace A272564.P13693373213373244292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A271004 n)

end

end A272564.P13693373213373244292

/-! ## A272564.P15829913799336420158

`or(Δ[A065033(n)], A271004(n))`
-/

namespace A272564.P15829913799336420158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A271004 n)

end

end A272564.P15829913799336420158

/-! ## A272564.P10833402287635416223

`or(Δ[A080513(n)], A271004(n))`
-/

namespace A272564.P10833402287635416223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A271004 n)

end

end A272564.P10833402287635416223

/-! ## A272564.P7361114190609647912

`or(char[A005843(n)], A271004(n))`
-/

namespace A272564.P7361114190609647912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A271004 n)

end

end A272564.P7361114190609647912

/-! ## A272564.P1975567111338747457

`or(char[A140960(n)], A271004(n))`
-/

namespace A272564.P1975567111338747457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140960 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A271004 n)

end

end A272564.P1975567111338747457

/-! ## A272564.P320607777751484225

`or(A000035(n+1), A271004(n))`
-/

namespace A272564.P320607777751484225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (n + 1)) (A271004 n)

end

end A272564.P320607777751484225

/-! ## A272564.P9802306915878253709

`or(1, A271004(n))-A000035(n)`
-/

namespace A272564.P9802306915878253709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A271004 n) - A000035 n

end

end A272564.P9802306915878253709

/-!
# A272565: Smallest ludic factor of n.

The programs for A272565, there is no canonical definition to state claims against.
-/

/-! ## A272565.P221769396734980921

`A003309(1+A260738(n+1))`
-/

namespace A272565.P221769396734980921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (1 + A260738 (n + 1)).toNat

end

end A272565.P221769396734980921

/-! ## A272565.P18417708339932768928

`(A271419(n+1)+n)%(n+1)+1`
-/

namespace A272565.P18417708339932768928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271419 (n + 1) + (n : ℤ)) (n + 1 : ℤ) + 1

end

end A272565.P18417708339932768928

/-! ## A272565.P14066928722403925074

`A271419(n+1)+(n+1)*A192490(n+1)`
-/

namespace A272565.P14066928722403925074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271419 (n + 1) + (n + 1 : ℤ) * A192490 (n + 1)

end

end A272565.P14066928722403925074

/-! ## A272565.P11481167343899671813

`A003309(A271420(n+1)+1)+n*A192490(n+1)`
-/

namespace A272565.P11481167343899671813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (A271420 (n + 1) + 1).toNat + (n : ℤ) * A192490 (n + 1)

end

end A272565.P11481167343899671813

/-! ## A272565.P16813628540445296155

`A255407(A020639(A269172(n+1)))`
-/

namespace A272565.P16813628540445296155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (A020639 (A269172 (n + 1)).toNat).toNat

end

end A272565.P16813628540445296155

/-! ## A272565.P3591145118086424519

`A269171(A020639(A255408(n+1)))`
-/

namespace A272565.P3591145118086424519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269171 (A020639 (A255408 (n + 1)).toNat).toNat

end

end A272565.P3591145118086424519

/-! ## A272565.P3947308455509136362

`A269171(A020639(A302026(n+1)))`
-/

namespace A272565.P3947308455509136362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269171 (A020639 (A302026 (n + 1)).toNat).toNat

end

end A272565.P3947308455509136362

/-! ## A272565.P1000725290793812957

`A002260(A271419(n+1)+∑[n+1])`
-/

namespace A272565.P1000725290793812957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A271419 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A272565.P1000725290793812957

/-! ## A272565.P11780416141399283099

`A004736(A000124(n)-A271419(n+1))`
-/

namespace A272565.P11780416141399283099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A000124 n - A271419 (n + 1)).toNat

end

end A272565.P11780416141399283099

/-!
# A272566: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 501", based on the 5-celled von Neumann neighborhood.

The programs for A272566, there is no canonical definition to state claims against.
-/

/-! ## A272566.P3151418233213571517

`∑[A272564(n)]`
-/

namespace A272566.P3151418233213571517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272564 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272566.P3151418233213571517

/-! ## A272566.P1222123565859159310

`floor(A271006(n)+atan(n))`
-/

namespace A272566.P1222123565859159310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A271006 n : ℝ) + Real.arctan (n : ℝ)⌋

end

end A272566.P1222123565859159310

/-! ## A272566.P363495360709994273

`∑[A272567(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A272566.P363495360709994273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A272567 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272566.P363495360709994273

/-! ## A272566.P9110646431479139942

`A271006(n)+A157928(n)`
-/

namespace A272566.P9110646431479139942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271006 n + A157928 n

end

end A272566.P9110646431479139942

/-! ## A272566.P2839131833030565661

`A272564(n+1)+a(n-1)-A272567(n)` with `a(0)=1`
-/

namespace A272566.P2839131833030565661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272564 (n + 1) + (a (n - 1) - A272567 n)

end

end A272566.P2839131833030565661

/-! ## A272566.P3823943895213977449

`∑[A271004(n)+char[2]]`
-/

namespace A272566.P3823943895213977449
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271004 n + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272566.P3823943895213977449

/-! ## A272566.P3541073637525142677

`∑[or(A005369(n), A271004(n))]`
-/

namespace A272566.P3541073637525142677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005369 n) (A271004 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272566.P3541073637525142677

/-! ## A272566.P5817712489585545189

`∑[or(A036988(n), A271004(n))]`
-/

namespace A272566.P5817712489585545189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036988 n) (A271004 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272566.P5817712489585545189

/-! ## A272566.P12396813600919883315

`∑[or(A059841(n), A271004(n))]`
-/

namespace A272566.P12396813600919883315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059841 n) (A271004 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272566.P12396813600919883315

/-! ## A272566.P10472435694879694476

`∑[A271004(n)]+and(1, A271007(n+1))`
-/

namespace A272566.P10472435694879694476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.land 1 (A271007 (n + 1))

end

end A272566.P10472435694879694476

/-! ## A272566.P12244067215442738926

`A271006(n)+A001221(A001316(A161680(n)))`
-/

namespace A272566.P12244067215442738926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271006 n + A001221 (A001316 (A161680 n).toNat).toNat

end

end A272566.P12244067215442738926

/-! ## A272566.P8474241627027597650

`A271006(n)+A006530(A271004(n+1))%2`
-/

namespace A272566.P8474241627027597650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271006 n + Int.tmod (A006530 (A271004 (n + 1)).toNat) 2

end

end A272566.P8474241627027597650

/-! ## A272566.P10020210456838208845

`A271006(n)+A014306(A271148(n))`
-/

namespace A272566.P10020210456838208845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271006 n + A014306 (A271148 n).toNat

end

end A272566.P10020210456838208845

/-!
# A272567: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 501", based on the 5-celled von Neumann neighborhood.

The programs for A272567, there is no canonical definition to state claims against.
-/

/-! ## A272567.P13112598410530256034

`or(1, A271007(n)-char[2])`
-/

namespace A272567.P13112598410530256034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A271007 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A272567.P13112598410530256034

/-! ## A272567.P6534682970336187950

`Δ[A272564(n)]`
-/

namespace A272567.P6534682970336187950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272564 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272567.P6534682970336187950

/-! ## A272567.P2844877194369593991

`A272564(n+1)-A272564(n)`
-/

namespace A272567.P2844877194369593991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272564 (n + 1) - A272564 n

end

end A272567.P2844877194369593991

/-! ## A272567.P6808521103899058661

`Δ[A271004(n)+char[2]]`
-/

namespace A272567.P6808521103899058661
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271004 n + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272567.P6808521103899058661

/-! ## A272567.P199537919271752071

`Δ[or(A005369(n), A271004(n))]`
-/

namespace A272567.P199537919271752071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005369 n) (A271004 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272567.P199537919271752071

/-! ## A272567.P2768927456338968103

`Δ[or(A036988(n), A271004(n))]`
-/

namespace A272567.P2768927456338968103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036988 n) (A271004 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272567.P2768927456338968103

/-! ## A272567.P1546984966282169864

`Δ[or(A059841(n), A271004(n))]`
-/

namespace A272567.P1546984966282169864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059841 n) (A271004 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272567.P1546984966282169864

/-! ## A272567.P17679229736610182825

`or(1, Δ[A271004(n)-A000194(n)])`
-/

namespace A272567.P17679229736610182825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271004 n - A000194 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A272567.P17679229736610182825

/-! ## A272567.P997300973916906381

`or(1, Δ[A271004(n)-A065033(n)])`
-/

namespace A272567.P997300973916906381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271004 n - A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A272567.P997300973916906381

/-! ## A272567.P4533924455825434744

`or(1, Δ[A271004(n)-A080513(n)])`
-/

namespace A272567.P4533924455825434744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271004 n - A080513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A272567.P4533924455825434744

/-!
# A272568: Number of distinct n-step paths of a knight moving on an n X n chessboard, starting to at a corner and not visiting any cell twice.

The programs for A272568, there is no canonical definition to state claims against.
-/

/-! ## A272568.P14696701946800340099

`A054918(n+1)%A342938(A006155(n))`
-/

namespace A272568.P14696701946800340099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054918 (n + 1)) (A342938 (A006155 n).toNat)

end

end A272568.P14696701946800340099

/-! ## A272568.P8727610231807844772

`and(A211513(A211475(n+1)), A211560(n+1))`
-/

namespace A272568.P8727610231807844772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A211513 (A211475 (n + 1)).toNat) (A211560 (n + 1))

end

end A272568.P8727610231807844772

/-!
# A272569: A variation on Stern's diatomic sequence.

The programs for A272569, the canonical program `A272569.P17664590215106579410` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272569 has offset 1).

The definition of A272569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272569.P2655898004237489446

`A119272(A025480(n)+2)`
-/

namespace A272569.P2655898004237489446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119272 (A025480 n + 2).toNat

end

end A272569.P2655898004237489446

namespace A272569

/-- `A119272(A025480(n)+2)` -/
def P2655898004237489446.Spec : Prop :=
  ∀ n, P2655898004237489446.a n = A272569 (n + 1)

end A272569

/-! ## A272569.P17519627301305576817

`A119272(A103391(n+2))`
-/

namespace A272569.P17519627301305576817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119272 (A103391 (n + 2)).toNat

end

end A272569.P17519627301305576817

namespace A272569

/-- `A119272(A103391(n+2))` -/
def P17519627301305576817.Spec : Prop :=
  ∀ n, P17519627301305576817.a n = A272569 (n + 1)

end A272569

/-! ## A272569.P5624997052072161544

`A119272(A003602(n+1)+1)`
-/

namespace A272569.P5624997052072161544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119272 (A003602 (n + 1) + 1).toNat

end

end A272569.P5624997052072161544

namespace A272569

/-- `A119272(A003602(n+1)+1)` -/
def P5624997052072161544.Spec : Prop :=
  ∀ n, P5624997052072161544.a n = A272569 (n + 1)

end A272569

/-! ## A272569.P5819049453586767308

`A287729(n+1)*A287730(n+1)`
-/

namespace A272569.P5819049453586767308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287729 (n + 1) * A287730 (n + 1)

end

end A272569.P5819049453586767308

namespace A272569

/-- `A287729(n+1)*A287730(n+1)` -/
def P5819049453586767308.Spec : Prop :=
  ∀ n, P5819049453586767308.a n = A272569 (n + 1)

end A272569

/-! ## A272569.P17414981533409191929

`(A020951(n)+A020944(n))*A020951(n)`
-/

namespace A272569.P17414981533409191929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020951 n + A020944 n) * A020951 n

end

end A272569.P17414981533409191929

namespace A272569

/-- `(A020951(n)+A020944(n))*A020951(n)` -/
def P17414981533409191929.Spec : Prop :=
  ∀ n, P17414981533409191929.a n = A272569 (n + 1)

end A272569

/-! ## A272569.P17664590215106579410

`(A002487(n+1)-A020951(n))*A020951(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A272569

/-- `(A002487(n+1)-A020951(n))*A020951(n)` -/
def P17664590215106579410.Spec : Prop :=
  ∀ n, P17664590215106579410.a n = A272569 (n + 1)

theorem P17664590215106579410.correct : P17664590215106579410.Spec := by
  intro n
  simp only [A272569, Nat.add_sub_cancel]

end A272569

/-! ## A272569.P14685890712883550615

`(A002487(n+1)-A174980(n))*A174980(n)`
-/

namespace A272569.P14685890712883550615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002487 (n + 1) - A174980 n) * A174980 n

end

end A272569.P14685890712883550615

namespace A272569

/-- `(A002487(n+1)-A174980(n))*A174980(n)` -/
def P14685890712883550615.Spec : Prop :=
  ∀ n, P14685890712883550615.a n = A272569 (n + 1)

end A272569

/-! ## A272569.P9231687758092657444

`A287729(A054429(n+1)+1)*A287729(n+1)`
-/

namespace A272569.P9231687758092657444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287729 (A054429 (n + 1) + 1).toNat * A287729 (n + 1)

end

end A272569.P9231687758092657444

namespace A272569

/-- `A287729(A054429(n+1)+1)*A287729(n+1)` -/
def P9231687758092657444.Spec : Prop :=
  ∀ n, P9231687758092657444.a n = A272569 (n + 1)

end A272569

/-! ## A272569.P13926128328996625628

`A287730(A054429(n+1)+1)*A287730(n+1)`
-/

namespace A272569.P13926128328996625628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287730 (A054429 (n + 1) + 1).toNat * A287730 (n + 1)

end

end A272569.P13926128328996625628

namespace A272569

/-- `A287730(A054429(n+1)+1)*A287730(n+1)` -/
def P13926128328996625628.Spec : Prop :=
  ∀ n, P13926128328996625628.a n = A272569 (n + 1)

end A272569

/-! ## A272569.P5433661705208841441

`A287729(2*(n+1))*A287729(n+1)`
-/

namespace A272569.P5433661705208841441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287729 (2 * (n + 1)) * A287729 (n + 1)

end

end A272569.P5433661705208841441

namespace A272569

/-- `A287729(2*(n+1))*A287729(n+1)` -/
def P5433661705208841441.Spec : Prop :=
  ∀ n, P5433661705208841441.a n = A272569 (n + 1)

end A272569

/-! ## A272569.P17836712434242061943

`A287730(2*(n+1))*A287730(n+1)`
-/

namespace A272569.P17836712434242061943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287730 (2 * (n + 1)) * A287730 (n + 1)

end

end A272569.P17836712434242061943

namespace A272569

/-- `A287730(2*(n+1))*A287730(n+1)` -/
def P17836712434242061943.Spec : Prop :=
  ∀ n, P17836712434242061943.a n = A272569 (n + 1)

end A272569

/-! ## A272569.P14031254801675641538

`A020951(A171763(n+1)-2)*A174980(n)`
-/

namespace A272569.P14031254801675641538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (A171763 (n + 1) - 2).toNat * A174980 n

end

end A272569.P14031254801675641538

namespace A272569

/-- `A020951(A171763(n+1)-2)*A174980(n)` -/
def P14031254801675641538.Spec : Prop :=
  ∀ n, P14031254801675641538.a n = A272569 (n + 1)

end A272569

/-! ## A272569.P8647302677959386673

`A020951(A171763(2*n+1))*A174980(n)`
-/

namespace A272569.P8647302677959386673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (A171763 (2 * n + 1)).toNat * A174980 n

end

end A272569.P8647302677959386673

namespace A272569

/-- `A020951(A171763(2*n+1))*A174980(n)` -/
def P8647302677959386673.Spec : Prop :=
  ∀ n, P8647302677959386673.a n = A272569 (n + 1)

end A272569

/-! ## A272569.P6334596169440431517

`A020951(n)*A295515(A116882(n+1))`
-/

namespace A272569.P6334596169440431517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 n * A295515 (A116882 (n + 1)).toNat

end

end A272569.P6334596169440431517

namespace A272569

/-- `A020951(n)*A295515(A116882(n+1))` -/
def P6334596169440431517.Spec : Prop :=
  ∀ n, P6334596169440431517.a n = A272569 (n + 1)

end A272569

/-! ## A272569.P10282393073941870992

`A020944(A004755(n+1)-1)*A070879(n)`
-/

namespace A272569.P10282393073941870992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020944 (A004755 (n + 1) - 1).toNat * A070879 n

end

end A272569.P10282393073941870992

namespace A272569

/-- `A020944(A004755(n+1)-1)*A070879(n)` -/
def P10282393073941870992.Spec : Prop :=
  ∀ n, P10282393073941870992.a n = A272569 (n + 1)

end A272569

/-! ## A272569.P5009681667380687809

`A002487(A062050(n+1)-1)*A070879(n)`
-/

namespace A272569.P5009681667380687809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A062050 (n + 1) - 1).toNat * A070879 n

end

end A272569.P5009681667380687809

namespace A272569

/-- `A002487(A062050(n+1)-1)*A070879(n)` -/
def P5009681667380687809.Spec : Prop :=
  ∀ n, P5009681667380687809.a n = A272569 (n + 1)

end A272569

/-! ## A272569.P12403769256769560628

`A020951(A171763(n+1)-2)*A070879(n)`
-/

namespace A272569.P12403769256769560628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (A171763 (n + 1) - 2).toNat * A070879 n

end

end A272569.P12403769256769560628

namespace A272569

/-- `A020951(A171763(n+1)-2)*A070879(n)` -/
def P12403769256769560628.Spec : Prop :=
  ∀ n, P12403769256769560628.a n = A272569 (n + 1)

end A272569

/-! ## A272569.P12000219183857335600

`(A002487(n+1)-A070879(n))*A070879(n)`
-/

namespace A272569.P12000219183857335600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002487 (n + 1) - A070879 n) * A070879 n

end

end A272569.P12000219183857335600

namespace A272569

/-- `(A002487(n+1)-A070879(n))*A070879(n)` -/
def P12000219183857335600.Spec : Prop :=
  ∀ n, P12000219183857335600.a n = A272569 (n + 1)

end A272569

/-!
# A272571: Primes of the form n^4 + n + 1 with n positive.

The programs for A272571, there is no canonical definition to state claims against.
-/

/-! ## A272571.P13011452829030396042

`A049408(n+1)+A049408(n+1)²²+1`
-/

namespace A272571.P13011452829030396042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049408 (n + 1) + ((A049408 (n + 1) ^ 2) ^ 2 + 1)

end

end A272571.P13011452829030396042

/-! ## A272571.P8931826691936964457

`A091940(A049408(n+1)+1)+1`
-/

namespace A272571.P8931826691936964457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091940 (A049408 (n + 1) + 1).toNat + 1

end

end A272571.P8931826691936964457

/-! ## A272571.P4637761539089357484

`∩[A091940(n+1)+1, A346156(n+1)]`
-/

namespace A272571.P4637761539089357484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091940 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272571.P4637761539089357484

/-! ## A272571.P7892802970913464501

`p?[n^4+1+n]`
-/

namespace A272571.P7892802970913464501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A272571.P7892802970913464501

/-! ## A272571.P132046515099855445

`or(1, p?[n²²+1+n])`
-/

namespace A272571.P132046515099855445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2 + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A272571.P132046515099855445

/-!
# A272572: Primes of the form n^4 + n^3 + 1 with n positive.

The programs for A272572, there is no canonical definition to state claims against.
-/

/-! ## A272572.P11201058199902071512

`p?[(n+1)*n^3+1]`
-/

namespace A272572.P11201058199902071512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * n ^ 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A272572.P11201058199902071512

/-! ## A272572.P3885425786061542355

`∏{p}[p?[n²²+n^3+1], #]`
-/

namespace A272572.P3885425786061542355
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2 + (n ^ 3 + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A272572.P3885425786061542355

/-! ## A272572.P7680804898060322505

`round(sqrt(p?[(n+1)*n*n²+1]²+1))`
-/

namespace A272572.P7680804898060322505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n * n ^ 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2 + 1 : ℝ))

end

end A272572.P7680804898060322505

/-!
# A272574: a(n) = f(9, f(8, n)), where f(k,m) = floor(m*k/(k-1)).

The programs for A272574, the canonical program `A272574.P10882337522992826394` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272574 has offset 0).

The definition of A272574 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272574.P10882337522992826394

`a(n-1)+a(n-7)-a(n-8)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=6, a(7)=9`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A272574

/-- `a(n-1)+a(n-7)-a(n-8)` -/
def P10882337522992826394.Spec : Prop :=
  ∀ n, P10882337522992826394.a n = A272574 n

theorem P10882337522992826394.correct : P10882337522992826394.Spec := by
  intro n
  simp only [A272574]

end A272574

/-! ## A272574.P4904099245242052501

`∑[gcd(7, n)%4]-3`
-/

namespace A272574.P4904099245242052501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 7 n % 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3

end

end A272574.P4904099245242052501

namespace A272574

/-- `∑[gcd(7, n)%4]-3` -/
def P4904099245242052501.Spec : Prop :=
  ∀ n, P4904099245242052501.a n = A272574 n

end A272574

/-! ## A272574.P8644892015286672297

`2*floor(n/7)+n`
-/

namespace A272574.P8644892015286672297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℚ) / 7⌋ + (n : ℤ)

end

end A272574.P8644892015286672297

namespace A272574

/-- `2*floor(n/7)+n` -/
def P8644892015286672297.Spec : Prop :=
  ∀ n, P8644892015286672297.a n = A272574 n

end A272574

/-! ## A272574.P10676518028784936078

`comp[a(n-2)+9]` with `a(0)=7, a(1)=8`
-/

namespace A272574.P10676518028784936078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 8] fun n f1 =>
  f1 (n - 2) + 9

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A272574.P10676518028784936078

namespace A272574

/-- `comp[a(n-2)+9]` -/
def P10676518028784936078.Spec : Prop :=
  ∀ n, (P10676518028784936078.a n : ℤ) = A272574 n

end A272574

/-! ## A272574.P15962160257782580810

`record[n-2%dr(n+1)]`
-/

namespace A272574.P15962160257782580810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((2 % SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272574.P15962160257782580810

namespace A272574

/-- `record[n-2%dr(n+1)]` -/
def P15962160257782580810.Spec : Prop :=
  ∀ n, P15962160257782580810.a n = A272574 n

end A272574

/-! ## A272574.P16458619827915962950

`lt[n*(3-dr(n+3)), 1]`
-/

namespace A272574.P16458619827915962950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (3 - (SequenceMachineLib.digitalRoot (n + 3 : ℤ) : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A272574.P16458619827915962950

namespace A272574

/-- `lt[n*(3-dr(n+3)), 1]` -/
def P16458619827915962950.Spec : Prop :=
  ∀ n, (P16458619827915962950.a n : ℤ) = A272574 n

end A272574

/-! ## A272574.P18405828546456519363

`lt[n^(3-dr(n+3)), 2]`
-/

namespace A272574.P18405828546456519363
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (3 - (SequenceMachineLib.digitalRoot (n + 3 : ℤ) : ℤ) : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A272574.P18405828546456519363

namespace A272574

/-- `lt[n^(3-dr(n+3)), 2]` -/
def P18405828546456519363.Spec : Prop :=
  ∀ n, (P18405828546456519363.a n : ℤ) = A272574 n

end A272574

/-! ## A272574.P388483284235890947

`lt[n+2, dr(n+3)+n]`
-/

namespace A272574.P388483284235890947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n + 3 : ℤ) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272574.P388483284235890947

namespace A272574

/-- `lt[n+2, dr(n+3)+n]` -/
def P388483284235890947.Spec : Prop :=
  ∀ n, (P388483284235890947.a n : ℤ) = A272574 n

end A272574

/-! ## A272574.P2431536817713725749

`lt[n+1, (n+2)%9+n]`
-/

namespace A272574.P2431536817713725749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) % 9 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272574.P2431536817713725749

namespace A272574

/-- `lt[n+1, (n+2)%9+n]` -/
def P2431536817713725749.Spec : Prop :=
  ∀ n, (P2431536817713725749.a n : ℤ) = A272574 n

end A272574

/-! ## A272574.P4097646980329433336

`record[n-1-(-1)^dr(2*n+1)]`
-/

namespace A272574.P4097646980329433336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - (-1) ^ SequenceMachineLib.digitalRoot (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272574.P4097646980329433336

namespace A272574

/-- `record[n-1-(-1)^dr(2*n+1)]` -/
def P4097646980329433336.Spec : Prop :=
  ∀ n, P4097646980329433336.a n = A272574 n

end A272574

/-! ## A272574.P4656808796797719554

`comp[A274406(n+1)-1]`
-/

namespace A272574.P4656808796797719554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274406 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A272574.P4656808796797719554

namespace A272574

/-- `comp[A274406(n+1)-1]` -/
def P4656808796797719554.Spec : Prop :=
  ∀ n, (P4656808796797719554.a n : ℤ) = A272574 n

end A272574

/-! ## A272574.P3643315164489591123

`lt[dr(A205006(n+1)), 8]`
-/

namespace A272574.P3643315164489591123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A205006 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272574.P3643315164489591123

namespace A272574

/-- `lt[dr(A205006(n+1)), 8]` -/
def P3643315164489591123.Spec : Prop :=
  ∀ n, (P3643315164489591123.a n : ℤ) = A272574 n

end A272574

/-! ## A272574.P2173518255058811849

`comp[∑[A040019(n+1)]-2]`
-/

namespace A272574.P2173518255058811849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040019 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A272574.P2173518255058811849

namespace A272574

/-- `comp[∑[A040019(n+1)]-2]` -/
def P2173518255058811849.Spec : Prop :=
  ∀ n, (P2173518255058811849.a n : ℤ) = A272574 n

end A272574

/-! ## A272574.P14967694504065350355

`comp[A168332(n+1)+1+n]`
-/

namespace A272574.P14967694504065350355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168332 (n + 1) + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A272574.P14967694504065350355

namespace A272574

/-- `comp[A168332(n+1)+1+n]` -/
def P14967694504065350355.Spec : Prop :=
  ∀ n, (P14967694504065350355.a n : ℤ) = A272574 n

end A272574

/-! ## A272574.P5318070500953035148

`comp[A168336(n+1)+2+n]`
-/

namespace A272574.P5318070500953035148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168336 (n + 1) + 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A272574.P5318070500953035148

namespace A272574

/-- `comp[A168336(n+1)+2+n]` -/
def P5318070500953035148.Spec : Prop :=
  ∀ n, (P5318070500953035148.a n : ℤ) = A272574 n

end A272574

/-! ## A272574.P9140063890508765128

`comp[A168337(n+1)-2+n]`
-/

namespace A272574.P9140063890508765128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168337 (n + 1) - 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A272574.P9140063890508765128

namespace A272574

/-- `comp[A168337(n+1)-2+n]` -/
def P9140063890508765128.Spec : Prop :=
  ∀ n, (P9140063890508765128.a n : ℤ) = A272574 n

end A272574

/-! ## A272574.P3529026785464320267

`comp[3*n+1+A168198(n+2)]`
-/

namespace A272574.P3529026785464320267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) + A168198 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A272574.P3529026785464320267

namespace A272574

/-- `comp[3*n+1+A168198(n+2)]` -/
def P3529026785464320267.Spec : Prop :=
  ∀ n, (P3529026785464320267.a n : ℤ) = A272574 n

end A272574

/-! ## A272574.P1034528649647121166

`∪[A028835(n+1)-2, A350668(n)]`
-/

namespace A272574.P1034528649647121166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350668 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272574.P1034528649647121166

namespace A272574

/-- `∪[A028835(n+1)-2, A350668(n)]` -/
def P1034528649647121166.Spec : Prop :=
  ∀ n, (P1034528649647121166.a n : ℤ) = A272574 n

end A272574

/-! ## A272574.P16348881924859404539

`A248375(A004777(n+1))`
-/

namespace A272574.P16348881924859404539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248375 (A004777 (n + 1)).toNat

end

end A272574.P16348881924859404539

namespace A272574

/-- `A248375(A004777(n+1))` -/
def P16348881924859404539.Spec : Prop :=
  ∀ n, P16348881924859404539.a n = A272574 n

end A272574

/-! ## A272574.P9672375855972260750

`A248375(A132270(n+1)+n)`
-/

namespace A272574.P9672375855972260750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248375 (A132270 (n + 1) + (n : ℤ)).toNat

end

end A272574.P9672375855972260750

namespace A272574

/-- `A248375(A132270(n+1)+n)` -/
def P9672375855972260750.Spec : Prop :=
  ∀ n, P9672375855972260750.a n = A272574 n

end A272574

/-!
# A272575: Perfect powers that are the sum of two Fibonacci numbers.

The programs for A272575, there is no canonical definition to state claims against.
-/

/-! ## A272575.P10499188293388569888

`∩[A001597(n+1), A084176(n+1)]`
-/

namespace A272575.P10499188293388569888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272575.P10499188293388569888

/-! ## A272575.P5317888924727789151

`filter[A084176(n+2), A075802(#)]`
-/

namespace A272575.P5317888924727789151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084176 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A272575.P5317888924727789151

/-! ## A272575.P12825679305990852412

`filter[A362295(n+2), A075802(#)]`
-/

namespace A272575.P12825679305990852412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362295 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A272575.P12825679305990852412

/-! ## A272575.P3572385332182268200

`∩[A001597(n+1), A362295(n+1)]`
-/

namespace A272575.P3572385332182268200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272575.P3572385332182268200

/-!
# A272576: a(n) = f(10, f(9, n)), where f(k,m) = floor(m*k/(k-1)).

The programs for A272576, the canonical program `A272576.P9642019668271147073` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272576 has offset 0).

The definition of A272576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272576.P9642019668271147073

`a(n-1)+a(n-8)-a(n-9)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=6, a(7)=7, a(8)=10`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A272576

/-- `a(n-1)+a(n-8)-a(n-9)` -/
def P9642019668271147073.Spec : Prop :=
  ∀ n, P9642019668271147073.a n = A272576 n

theorem P9642019668271147073.correct : P9642019668271147073.Spec := by
  intro n
  simp only [A272576]

end A272576

/-! ## A272576.P10748548865183805065

`2*floor(n/8)+n`
-/

namespace A272576.P10748548865183805065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℚ) / 8⌋ + (n : ℤ)

end

end A272576.P10748548865183805065

namespace A272576

/-- `2*floor(n/8)+n` -/
def P10748548865183805065.Spec : Prop :=
  ∀ n, P10748548865183805065.a n = A272576 n

end A272576

/-! ## A272576.P6654630607379949315

`comp[a(n-2)+10]` with `a(0)=8, a(1)=9`
-/

namespace A272576.P6654630607379949315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 9] fun n f1 =>
  f1 (n - 2) + 10

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A272576.P6654630607379949315

namespace A272576

/-- `comp[a(n-2)+10]` -/
def P6654630607379949315.Spec : Prop :=
  ∀ n, (P6654630607379949315.a n : ℤ) = A272576 n

end A272576

/-! ## A272576.P18173550010014011868

`lt[n+1, (n+2)%10+n]`
-/

namespace A272576.P18173550010014011868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) % 10 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272576.P18173550010014011868

namespace A272576

/-- `lt[n+1, (n+2)%10+n]` -/
def P18173550010014011868.Spec : Prop :=
  ∀ n, (P18173550010014011868.a n : ℤ) = A272576 n

end A272576

/-! ## A272576.P12900799791383695514

`∪[A293292(n+1), A047217(n+1)]`
-/

namespace A272576.P12900799791383695514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272576.P12900799791383695514

namespace A272576

/-- `∪[A293292(n+1), A047217(n+1)]` -/
def P12900799791383695514.Spec : Prop :=
  ∀ n, (P12900799791383695514.a n : ℤ) = A272576 n

end A272576

/-! ## A272576.P9973873307284446234

`record[n/Δ[A199343(n)]]`
-/

namespace A272576.P9973873307284446234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272576.P9973873307284446234

namespace A272576

/-- `record[n/Δ[A199343(n)]]` -/
def P9973873307284446234.Spec : Prop :=
  ∀ n, P9973873307284446234.a n = (A272576 n : ℚ)

end A272576

/-! ## A272576.P10434627941709941236

`lt[1, Δ[A003132(n+1)]]`
-/

namespace A272576.P10434627941709941236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A272576.P10434627941709941236

namespace A272576

/-- `lt[1, Δ[A003132(n+1)]]` -/
def P10434627941709941236.Spec : Prop :=
  ∀ n, (P10434627941709941236.a n : ℤ) = A272576 n

end A272576

/-! ## A272576.P6380456580968501102

`lt[A007953(n), A007953(n+2)]`
-/

namespace A272576.P6380456580968501102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272576.P6380456580968501102

namespace A272576

/-- `lt[A007953(n), A007953(n+2)]` -/
def P6380456580968501102.Spec : Prop :=
  ∀ n, (P6380456580968501102.a n : ℤ) = A272576 n

end A272576

/-! ## A272576.P12129249615895349077

`A298486(∑[n+3])`
-/

namespace A272576.P12129249615895349077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298486 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A272576.P12129249615895349077

namespace A272576

/-- `A298486(∑[n+3])` -/
def P12129249615895349077.Spec : Prop :=
  ∀ n, P12129249615895349077.a n = A272576 n

end A272576

/-! ## A272576.P15297507065284974708

`A023444(A344543(n+2))`
-/

namespace A272576.P15297507065284974708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A344543 (n + 2)).toNat

end

end A272576.P15297507065284974708

namespace A272576

/-- `A023444(A344543(n+2))` -/
def P15297507065284974708.Spec : Prop :=
  ∀ n, P15297507065284974708.a n = A272576 n

end A272576

/-!
# A272577: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 502", based on the 5-celled von Neumann neighborhood.

The programs for A272577, there is no canonical definition to state claims against.
-/

/-! ## A272577.P16293145832453864385

`A272580(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272577.P16293145832453864385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272580 (n - 1) + a (n - 1)

end

end A272577.P16293145832453864385

/-! ## A272577.P11300475246033018740

`∑[∏{e}[A020639(n+1), A272580(n-#)]]`
-/

namespace A272577.P11300475246033018740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, A272580 (n - Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272577.P11300475246033018740

/-! ## A272577.P12974011818508594059

`Δ[A272579(n)]-A272580(n)`
-/

namespace A272577.P12974011818508594059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272580 n

end

end A272577.P12974011818508594059

/-! ## A272577.P5285234924723481722

`A272579(n+1)-(A272580(n)+A272579(n))`
-/

namespace A272577.P5285234924723481722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272579 (n + 1) - (A272580 n + A272579 n)

end

end A272577.P5285234924723481722

/-! ## A272577.P13438952986003487075

`A000007(n)+A016754(n)-A273022(n)`
-/

namespace A272577.P13438952986003487075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A016754 n - A273022 n)

end

end A272577.P13438952986003487075

/-! ## A272577.P12403493010615379572

`A000124(n)+A024966(n)%A273022(n)`
-/

namespace A272577.P12403493010615379572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + Int.tmod (A024966 n) (A273022 n)

end

end A272577.P12403493010615379572

/-! ## A272577.P4838884081977121781

`A005897(n)%2+A016754(n)-A273022(n)`
-/

namespace A272577.P4838884081977121781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005897 n) 2 + (A016754 n - A273022 n)

end

end A272577.P4838884081977121781

/-! ## A272577.P8989810639588165854

`A005901(n)%2+A016754(n)-A273022(n)`
-/

namespace A272577.P8989810639588165854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005901 n) 2 + (A016754 n - A273022 n)

end

end A272577.P8989810639588165854

/-! ## A272577.P9325219622775865000

`A008683(A008574(n))+A016754(n)-A273022(n)`
-/

namespace A272577.P9325219622775865000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008574 n).toNat + (A016754 n - A273022 n)

end

end A272577.P9325219622775865000

/-! ## A272577.P15633008056252833809

`A016754(n+1)-(A273022(n+1)+A272580(n))`
-/

namespace A272577.P15633008056252833809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 (n + 1) - (A273022 (n + 1) + A272580 n)

end

end A272577.P15633008056252833809

/-! ## A272577.P18350133914723653793

`A181385(A016825(n))-A273022(n)`
-/

namespace A272577.P18350133914723653793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A273022 n

end

end A272577.P18350133914723653793

/-!
# A272578: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 502", based on the 5-celled von Neumann neighborhood.

The programs for A272578, there is no canonical definition to state claims against.
-/

/-! ## A272578.P12813406943062531778

`A272577(2^n-1)`
-/

namespace A272578.P12813406943062531778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272577 (2 ^ n - 1)

end

end A272578.P12813406943062531778

/-! ## A272578.P6764399545224820802

`record[A272577(A038573(n))]`
-/

namespace A272578.P6764399545224820802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272577 (A038573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272578.P6764399545224820802

/-! ## A272578.P7908651853494236361

`record[A272577(A232751(n))]`
-/

namespace A272578.P7908651853494236361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272577 (A232751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272578.P7908651853494236361

/-! ## A272578.P3453209269268625217

`record[A272577(A243071(n+1))]`
-/

namespace A272578.P3453209269268625217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272577 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272578.P3453209269268625217

/-! ## A272578.P5824445722243980183

`record[A272577(A252756(n+1))]`
-/

namespace A272578.P5824445722243980183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272577 (A252756 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272578.P5824445722243980183

/-!
# A272579: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 502", based on the 5-celled von Neumann neighborhood.

The programs for A272579, there is no canonical definition to state claims against.
-/

/-! ## A272579.P11449766509591521742

`∑[A272577(n)]`
-/

namespace A272579.P11449766509591521742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272579.P11449766509591521742

/-! ## A272579.P9556012830910200669

`A272577(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A272579.P9556012830910200669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272577 n + a (A023443 n).toNat

end

end A272579.P9556012830910200669

/-! ## A272579.P14138797306317788382

`A272577(n)+a(abs(A024000(n)))` with `a(0)=1`
-/

namespace A272579.P14138797306317788382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272577 n + a |A024000 n|.toNat

end

end A272579.P14138797306317788382

/-! ## A272579.P11114722879999915688

`a(n-1)+A272577(n)%A062725(n)` with `a(0)=1`
-/

namespace A272579.P11114722879999915688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A272577 n) (A062725 n)

end

end A272579.P11114722879999915688

/-! ## A272579.P7679472308758013014

`∑[A016754(n)-A273022(n)]+1`
-/

namespace A272579.P7679472308758013014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A273022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A272579.P7679472308758013014

/-! ## A272579.P5571817351126138770

`∑[A000124(n)+A024966(n)%A273022(n)]`
-/

namespace A272579.P5571817351126138770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + Int.tmod (A024966 n) (A273022 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272579.P5571817351126138770

/-! ## A272579.P15738740961433116672

`∑[A181385(A016825(n))-A273022(n)]`
-/

namespace A272579.P15738740961433116672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A273022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272579.P15738740961433116672

/-! ## A272579.P11806977531961333070

`∑[A181385(A016825(n))]-A273024(n)`
-/

namespace A272579.P11806977531961333070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A273024 n

end

end A272579.P11806977531961333070

/-!
# A272580: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 502", based on the 5-celled von Neumann neighborhood.

The programs for A272580, there is no canonical definition to state claims against.
-/

/-! ## A272580.P7875870734222547569

`Δ[A272577(n)]`
-/

namespace A272580.P7875870734222547569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272580.P7875870734222547569

/-! ## A272580.P5554462963111345084

`A272577(n+1)-A272577(n)`
-/

namespace A272580.P5554462963111345084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272577 (n + 1) - A272577 n

end

end A272580.P5554462963111345084

/-! ## A272580.P11431701234675734702

`Δ[A024966(n)%A273022(n)]+n+1`
-/

namespace A272580.P11431701234675734702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024966 n) (A273022 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A272580.P11431701234675734702

/-! ## A272580.P16579983525628880294

`Δ[A000124(n)+A024966(n)%A273022(n)]`
-/

namespace A272580.P16579983525628880294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n + Int.tmod (A024966 n) (A273022 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272580.P16579983525628880294

/-! ## A272580.P10343993570250135662

`Δ[A181385(A016825(n))-A273022(n)]`
-/

namespace A272580.P10343993570250135662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A273022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272580.P10343993570250135662

/-!
# A272581: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 505", based on the 5-celled von Neumann neighborhood.

The programs for A272581, there is no canonical definition to state claims against.
-/

/-! ## A272581.P6018118786611253504

`A272585(n)-char[1]`
-/

namespace A272581.P6018118786611253504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272585 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A272581.P6018118786611253504

/-! ## A272581.P13903596448507688681

`xor(A063524(n), A272585(n))`
-/

namespace A272581.P13903596448507688681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A272585 n)

end

end A272581.P13903596448507688681

/-! ## A272581.P9293358271960082735

`and(-A000034(n), A272585(n))`
-/

namespace A272581.P9293358271960082735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A000034 n) (A272585 n)

end

end A272581.P9293358271960082735

/-! ## A272581.P14374420910350001055

`and(-A010685(n), A272585(n))`
-/

namespace A272581.P14374420910350001055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A010685 n) (A272585 n)

end

end A272581.P14374420910350001055

/-! ## A272581.P10733749757297985660

`and(-A010702(n), A272585(n))`
-/

namespace A272581.P10733749757297985660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A010702 n) (A272585 n)

end

end A272581.P10733749757297985660

/-! ## A272581.P18212497272023196962

`xor(char[A006352(n)], A272585(n))`
-/

namespace A272581.P18212497272023196962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006352 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A272585 n)

end

end A272581.P18212497272023196962

/-! ## A272581.P3759737930811323632

`xor(char[A013973(n)], A272585(n))`
-/

namespace A272581.P3759737930811323632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013973 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A272585 n)

end

end A272581.P3759737930811323632

/-! ## A272581.P10654717345531784535

`xor(char[A016925(n)], A272585(n))`
-/

namespace A272581.P10654717345531784535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016925 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A272585 n)

end

end A272581.P10654717345531784535

/-! ## A272581.P1863731099591337725

`xor(char[A165747(n)], A272585(n))`
-/

namespace A272581.P1863731099591337725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165747 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A272585 n)

end

end A272581.P1863731099591337725

/-! ## A272581.P5021595470995669301

`xor(char[A184882(n)], A272585(n))`
-/

namespace A272581.P5021595470995669301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184882 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A272585 n)

end

end A272581.P5021595470995669301

/-! ## A272581.P15229830998427858472

`or(1, A272585(n))-A000035(n)`
-/

namespace A272581.P15229830998427858472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A272585 n) - A000035 n

end

end A272581.P15229830998427858472

/-! ## A272581.P4140478500677403002

`xor(char[1], A272585(n))%A000292(n+15)`
-/

namespace A272581.P4140478500677403002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A272585 n)) (A000292 (n + 15))

end

end A272581.P4140478500677403002

/-! ## A272581.P11124308437455284904

`A272584(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272581.P11124308437455284904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272584 (n - 1) + a (n - 1)

end

end A272581.P11124308437455284904

/-! ## A272581.P7079244372227664327

`Δ[A272583(n)]-A272584(n)`
-/

namespace A272581.P7079244372227664327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272584 n

end

end A272581.P7079244372227664327

/-! ## A272581.P4061855652989898316

`A272583(n+1)-(A272584(n)+A272583(n))`
-/

namespace A272581.P4061855652989898316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272583 (n + 1) - (A272584 n + A272583 n)

end

end A272581.P4061855652989898316

/-! ## A272581.P10359800976862990823

`A000027(xor(char[1], A272585(n)))`
-/

namespace A272581.P10359800976862990823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A272585 n)).toNat

end

end A272581.P10359800976862990823

/-! ## A272581.P11902820436465835331

`and(A267890(n), A272585(n))`
-/

namespace A272581.P11902820436465835331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267890 n) (A272585 n)

end

end A272581.P11902820436465835331

/-! ## A272581.P13180970874851864334

`A271286(n)+A272585(n)-A272586(n)`
-/

namespace A272581.P13180970874851864334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271286 n + (A272585 n - A272586 n)

end

end A272581.P13180970874851864334

/-!
# A272582: The number of strongly connected digraphs with n vertices and n+1 edges.

The programs for A272582, the canonical program `A272582.P17504890261964408401` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272582 has offset 2).

The definition of A272582 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272582.P17504890261964408401

`n*(n+5)*(n+2)!/4`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A272582

/-- `n*(n+5)*(n+2)!/4` -/
def P17504890261964408401.Spec : Prop :=
  ∀ n, P17504890261964408401.a n = (A272582 (n + 2) : ℚ)

end A272582

/-! ## A272582.P5302547238911820380

`n/2*A038720(n+2)`
-/

namespace A272582.P5302547238911820380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A038720 (n + 2) : ℚ)

end

end A272582.P5302547238911820380

namespace A272582

/-- `n/2*A038720(n+2)` -/
def P5302547238911820380.Spec : Prop :=
  ∀ n, P5302547238911820380.a n = (A272582 (n + 2) : ℚ)

end A272582

/-! ## A272582.P2927821445008367315

`n!*A000096(n+2)*∑[n]`
-/

namespace A272582.P2927821445008367315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000096 (n + 2) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A272582.P2927821445008367315

namespace A272582

/-- `n!*A000096(n+2)*∑[n]` -/
def P2927821445008367315.Spec : Prop :=
  ∀ n, P2927821445008367315.a n = A272582 (n + 2)

end A272582

/-! ## A272582.P5666407501183517942

`A055998(n)*A062139(∑[n])`
-/

namespace A272582.P5666407501183517942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n * A062139 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A272582.P5666407501183517942

namespace A272582

/-- `A055998(n)*A062139(∑[n])` -/
def P5666407501183517942.Spec : Prop :=
  ∀ n, P5666407501183517942.a n = A272582 (n + 2)

end A272582

/-! ## A272582.P7983909056953907162

`A001710(n+2)*A055998(n)`
-/

namespace A272582.P7983909056953907162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001710 (n + 2) * A055998 n

end

end A272582.P7983909056953907162

namespace A272582

/-- `A001710(n+2)*A055998(n)` -/
def P7983909056953907162.Spec : Prop :=
  ∀ n, P7983909056953907162.a n = A272582 (n + 2)

end A272582

/-! ## A272582.P15725515318581372311

`A000096(n+2)*A180119(n)`
-/

namespace A272582.P15725515318581372311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 2) * A180119 n

end

end A272582.P15725515318581372311

namespace A272582

/-- `A000096(n+2)*A180119(n)` -/
def P15725515318581372311.Spec : Prop :=
  ∀ n, P15725515318581372311.a n = A272582 (n + 2)

end A272582

/-! ## A272582.P821503290306013068

`(A052905(n)+4)*A180119(n)`
-/

namespace A272582.P821503290306013068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052905 n + 4) * A180119 n

end

end A272582.P821503290306013068

namespace A272582

/-- `(A052905(n)+4)*A180119(n)` -/
def P821503290306013068.Spec : Prop :=
  ∀ n, P821503290306013068.a n = A272582 (n + 2)

end A272582

/-! ## A272582.P3022238907903078874

`∑[A074143(n+1)]*A055998(n)`
-/

namespace A272582.P3022238907903078874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A055998 n

end

end A272582.P3022238907903078874

namespace A272582

/-- `∑[A074143(n+1)]*A055998(n)` -/
def P3022238907903078874.Spec : Prop :=
  ∀ n, P3022238907903078874.a n = A272582 (n + 2)

end A272582

/-! ## A272582.P5619415253632707242

`∏[A065475(n+1)]*A055998(n)`
-/

namespace A272582.P5619415253632707242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A055998 n

end

end A272582.P5619415253632707242

namespace A272582

/-- `∏[A065475(n+1)]*A055998(n)` -/
def P5619415253632707242.Spec : Prop :=
  ∀ n, P5619415253632707242.a n = A272582 (n + 2)

end A272582

/-! ## A272582.P1241197440471979953

`A055998(n)*A185105(A000124(n))`
-/

namespace A272582.P1241197440471979953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n * A185105 (A000124 n).toNat

end

end A272582.P1241197440471979953

namespace A272582

/-- `A055998(n)*A185105(A000124(n))` -/
def P1241197440471979953.Spec : Prop :=
  ∀ n, P1241197440471979953.a n = A272582 (n + 2)

end A272582

/-!
# A272583: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 505", based on the 5-celled von Neumann neighborhood.

The programs for A272583, there is no canonical definition to state claims against.
-/

/-! ## A272583.P4975156355051055921

`∑[A272581(n)]`
-/

namespace A272583.P4975156355051055921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272583.P4975156355051055921

/-! ## A272583.P12619682568340597478

`∑[A272585(n)-char[1]]`
-/

namespace A272583.P12619682568340597478
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272585 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272583.P12619682568340597478

/-! ## A272583.P14177672792644431205

`∑[A272585(n)]-A057427(n)`
-/

namespace A272583.P14177672792644431205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057427 n

end

end A272583.P14177672792644431205

/-! ## A272583.P15635610032701950380

`∑[A272585(n)]-A019425(2*n)`
-/

namespace A272583.P15635610032701950380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A019425 (2 * n)

end

end A272583.P15635610032701950380

/-! ## A272583.P2443813860632888296

`A272587(n)+A057428(n)`
-/

namespace A272583.P2443813860632888296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272587 n + A057428 n

end

end A272583.P2443813860632888296

/-! ## A272583.P7160628282682405582

`A272587(n)-A057427(n)`
-/

namespace A272583.P7160628282682405582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272587 n - A057427 n

end

end A272583.P7160628282682405582

/-! ## A272583.P12053922751636874323

`A272587(n)-abs(A165471(n))`
-/

namespace A272583.P12053922751636874323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272587 n - |A165471 n|

end

end A272583.P12053922751636874323

/-! ## A272583.P3489459837839736728

`A272587(n)-char[A029579(n)]`
-/

namespace A272583.P3489459837839736728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272587 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A272583.P3489459837839736728

/-! ## A272583.P12050073841221271447

`A272587(n)-char[A052938(n)]`
-/

namespace A272583.P12050073841221271447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272587 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A272583.P12050073841221271447

/-! ## A272583.P2456793815152688789

`A000007(n)+A272587(n)-1`
-/

namespace A272583.P2456793815152688789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A272587 n - 1)

end

end A272583.P2456793815152688789

/-! ## A272583.P7074762494807904573

`A272587(n)-A066247(2*(n+1))`
-/

namespace A272583.P7074762494807904573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272587 n - A066247 (2 * (n + 1))

end

end A272583.P7074762494807904573

/-! ## A272583.P10131649718984077938

`A272587(n)-A001221(A001316(n))`
-/

namespace A272583.P10131649718984077938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272587 n - A001221 (A001316 n).toNat

end

end A272583.P10131649718984077938

/-! ## A272583.P157169778464594621

`A272587(n)-A046079(A020484(n))`
-/

namespace A272583.P157169778464594621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272587 n - A046079 (A020484 n).toNat

end

end A272583.P157169778464594621

/-! ## A272583.P5127324978389787811

`A272587(n)-A001221(A004760(n+2)-n)`
-/

namespace A272583.P5127324978389787811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272587 n - A001221 (A004760 (n + 2) - (n : ℤ)).toNat

end

end A272583.P5127324978389787811

/-! ## A272583.P4938567608692858872

`A272587(n)-A165471(n²)`
-/

namespace A272583.P4938567608692858872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272587 n - A165471 (n ^ 2)

end

end A272583.P4938567608692858872

/-!
# A272584: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 505", based on the 5-celled von Neumann neighborhood.

The programs for A272584, there is no canonical definition to state claims against.
-/

/-! ## A272584.P10551614612058080770

`Δ[A272581(n)]`
-/

namespace A272584.P10551614612058080770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272584.P10551614612058080770

/-! ## A272584.P4800932720777128985

`Δ[A272585(n)+A159075(n)]`
-/

namespace A272584.P4800932720777128985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272585 n + A159075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272584.P4800932720777128985

/-! ## A272584.P4907011098741651172

`A272588(n)-A154955(n+1)`
-/

namespace A272584.P4907011098741651172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272588 n - A154955 (n + 1)

end

end A272584.P4907011098741651172

/-! ## A272584.P17986528454910806633

`A272581(n+1)-A272581(n)`
-/

namespace A272584.P17986528454910806633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272581 (n + 1) - A272581 n

end

end A272584.P17986528454910806633

/-! ## A272584.P7035204717047970183

`or(1, A272588(n)-A000007(n))`
-/

namespace A272584.P7035204717047970183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A272588 n - A000007 n)

end

end A272584.P7035204717047970183

/-! ## A272584.P11114007112219513301

`Δ[and(-A000034(n), A272585(n))]`
-/

namespace A272584.P11114007112219513301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A000034 n) (A272585 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272584.P11114007112219513301

/-! ## A272584.P11117857618905705064

`Δ[and(-A010685(n), A272585(n))]`
-/

namespace A272584.P11117857618905705064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A010685 n) (A272585 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272584.P11117857618905705064

/-! ## A272584.P12663999505755100798

`Δ[A272585(n)-A053644(n)%2]`
-/

namespace A272584.P12663999505755100798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272585 n - Int.tmod (A053644 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272584.P12663999505755100798

/-! ## A272584.P894823370675438889

`A272588(n)-A008683(A062383(n))`
-/

namespace A272584.P894823370675438889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272588 n - A008683 (A062383 n).toNat

end

end A272584.P894823370675438889

/-! ## A272584.P7157587138777685836

`Δ[A272585(n)-A000034(A004275(n))]`
-/

namespace A272584.P7157587138777685836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272585 n - A000034 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272584.P7157587138777685836

/-! ## A272584.P8990452835883725708

`Δ[A272585(n)-A000007(A004442(n))]`
-/

namespace A272584.P8990452835883725708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272585 n - A000007 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272584.P8990452835883725708

/-! ## A272584.P1604847267102432829

`Δ[A272585(n)-A000007(A007599(n))]`
-/

namespace A272584.P1604847267102432829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272585 n - A000007 (A007599 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272584.P1604847267102432829

/-! ## A272584.P11858925289935878250

`Δ[A272585(n)-A000007(A008611(n))]`
-/

namespace A272584.P11858925289935878250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272585 n - A000007 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272584.P11858925289935878250

/-! ## A272584.P8072606603984508766

`Δ[A272585(n)]-A008683(A062383(n))`
-/

namespace A272584.P8072606603984508766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A008683 (A062383 n).toNat

end

end A272584.P8072606603984508766

/-! ## A272584.P18398886392694094463

`Δ[A272585(n)-A001511(A008578(n+1))]`
-/

namespace A272584.P18398886392694094463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272585 n - A001511 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272584.P18398886392694094463

/-! ## A272584.P5073842084937592504

`Δ[A272585(n)-A179527(A100484(n+1))]`
-/

namespace A272584.P5073842084937592504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272585 n - A179527 (A100484 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272584.P5073842084937592504

/-! ## A272584.P6839138826759290450

`A272588(n)-A008683(A270022(n))`
-/

namespace A272584.P6839138826759290450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272588 n - A008683 (A270022 n).toNat

end

end A272584.P6839138826759290450

/-! ## A272584.P8657602757013847624

`A272588(n)+A008683(2*A270022(n))`
-/

namespace A272584.P8657602757013847624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272588 n + A008683 (2 * A270022 n).toNat

end

end A272584.P8657602757013847624

/-!
# A272585: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 507", based on the 5-celled von Neumann neighborhood.

The programs for A272585, there is no canonical definition to state claims against.
-/

/-! ## A272585.P16675029409298053455

`A272581(n)+char[1]`
-/

namespace A272585.P16675029409298053455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272581 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A272585.P16675029409298053455

/-! ## A272585.P8374369916263009738

`or(A209229(n), A272581(n))`
-/

namespace A272585.P8374369916263009738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A209229 n) (A272581 n)

end

end A272585.P8374369916263009738

/-! ## A272585.P13592331865596133942

`or(A266591(n), A272581(n))`
-/

namespace A272585.P13592331865596133942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266591 n) (A272581 n)

end

end A272585.P13592331865596133942

/-! ## A272585.P15160638634700459899

`xor(A063524(n), A272581(n))`
-/

namespace A272585.P15160638634700459899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A272581 n)

end

end A272585.P15160638634700459899

/-! ## A272585.P12231305104996140459

`or(char[A000013(n)], A272581(n))`
-/

namespace A272585.P12231305104996140459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A272581 n)

end

end A272585.P12231305104996140459

/-! ## A272585.P2900279325043269892

`or(char[A000016(n)], A272581(n))`
-/

namespace A272585.P2900279325043269892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A272581 n)

end

end A272585.P2900279325043269892

/-! ## A272585.P17744786231217431797

`or(char[A000079(n)], A272581(n))`
-/

namespace A272585.P17744786231217431797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A272581 n)

end

end A272585.P17744786231217431797

/-! ## A272585.P17991989813997898491

`or(char[A000142(n)], A272581(n))`
-/

namespace A272585.P17991989813997898491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A272581 n)

end

end A272585.P17991989813997898491

/-! ## A272585.P8115289124042916103

`or(char[A000984(n)], A272581(n))`
-/

namespace A272585.P8115289124042916103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A272581 n)

end

end A272585.P8115289124042916103

/-! ## A272585.P14400666352749780617

`or(char[A001316(n)], A272581(n))`
-/

namespace A272585.P14400666352749780617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A272581 n)

end

end A272585.P14400666352749780617

/-! ## A272585.P5039675555612682869

`or(char[A002088(n)], A272581(n))`
-/

namespace A272585.P5039675555612682869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A272581 n)

end

end A272585.P5039675555612682869

/-! ## A272585.P2938510598085244934

`or(char[A002605(n)], A272581(n))`
-/

namespace A272585.P2938510598085244934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A272581 n)

end

end A272585.P2938510598085244934

/-! ## A272585.P1424529911767734784

`or(char[A002999(n)], A272581(n))`
-/

namespace A272585.P1424529911767734784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002999 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A272581 n)

end

end A272585.P1424529911767734784

/-! ## A272585.P12186656207285133692

`or(char[A008414(n)], A272581(n))`
-/

namespace A272585.P12186656207285133692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008414 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A272581 n)

end

end A272585.P12186656207285133692

/-! ## A272585.P7375085884099708744

`or(char[A008458(n)], A272581(n))`
-/

namespace A272585.P7375085884099708744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A272581 n)

end

end A272585.P7375085884099708744

/-! ## A272585.P1142610477386782625

`or(char[A008574(n)], A272581(n))`
-/

namespace A272585.P1142610477386782625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A272581 n)

end

end A272585.P1142610477386782625

/-! ## A272585.P6129012498477052254

`or(char[A022067(n)], A272581(n))`
-/

namespace A272585.P6129012498477052254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022067 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A272581 n)

end

end A272585.P6129012498477052254

/-! ## A272585.P6257849943036057504

`A272588(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272585.P6257849943036057504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272588 (n - 1) + a (n - 1)

end

end A272585.P6257849943036057504

/-! ## A272585.P14886606929803648949

`Δ[A272587(n)]-A272588(n)`
-/

namespace A272585.P14886606929803648949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272588 n

end

end A272585.P14886606929803648949

/-! ## A272585.P14177835729319929583

`A272587(n+1)-(A272588(n)+A272587(n))`
-/

namespace A272585.P14177835729319929583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272587 (n + 1) - (A272588 n + A272587 n)

end

end A272585.P14177835729319929583

/-!
# A272586: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 507", based on the 5-celled von Neumann neighborhood.

The programs for A272586, the canonical program `A272586.P6385831151519138502` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272586 has offset 0).

The definition of A272586 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272586.P6385831151519138502

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=5, a(2)=40, a(3)=200, a(4)=872`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A272586

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P6385831151519138502.Spec : Prop :=
  ∀ n, P6385831151519138502.a n = A272586 n

theorem P6385831151519138502.correct : P6385831151519138502.Spec := by
  intro n
  simp only [A272586]

end A272586

/-! ## A272586.P10856460473721383345

`A271286(n)+char[1]`
-/

namespace A272586.P10856460473721383345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271286 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A272586.P10856460473721383345

namespace A272586

/-- `A271286(n)+char[1]` -/
def P10856460473721383345.Spec : Prop :=
  ∀ n, P10856460473721383345.a n = A272586 n

end A272586

/-! ## A272586.P3809118161579605968

`xor(A063524(n), A271286(n))`
-/

namespace A272586.P3809118161579605968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A271286 n)

end

end A272586.P3809118161579605968

namespace A272586

/-- `xor(A063524(n), A271286(n))` -/
def P3809118161579605968.Spec : Prop :=
  ∀ n, P3809118161579605968.a n = A272586 n

end A272586

/-! ## A272586.P9843568662022670928

`or(A271286(n), A278105(n+2))`
-/

namespace A272586.P9843568662022670928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A271286 n) (A278105 (n + 2))

end

end A272586.P9843568662022670928

namespace A272586

/-- `or(A271286(n), A278105(n+2))` -/
def P9843568662022670928.Spec : Prop :=
  ∀ n, P9843568662022670928.a n = A272586 n

end A272586

/-! ## A272586.P15605888083237013705

`A254667(n)+A271286(n)-n`
-/

namespace A272586.P15605888083237013705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n + (A271286 n - (n : ℤ))

end

end A272586.P15605888083237013705

namespace A272586

/-- `A254667(n)+A271286(n)-n` -/
def P15605888083237013705.Spec : Prop :=
  ∀ n, P15605888083237013705.a n = A272586 n

end A272586

/-! ## A272586.P16421902300053647578

`A298426(∑[n+2])+A271286(n)`
-/

namespace A272586.P16421902300053647578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298426 (∑ j ∈ Finset.range (n + 1), f1 j) + A271286 n

end

end A272586.P16421902300053647578

namespace A272586

/-- `A298426(∑[n+2])+A271286(n)` -/
def P16421902300053647578.Spec : Prop :=
  ∀ n, P16421902300053647578.a n = A272586 n

end A272586

/-! ## A272586.P11626329783670026761

`xor(char[A271306(3*n)], A271286(n))`
-/

namespace A272586.P11626329783670026761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271306 (3 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A271286 n)

end

end A272586.P11626329783670026761

namespace A272586

/-- `xor(char[A271306(3*n)], A271286(n))` -/
def P11626329783670026761.Spec : Prop :=
  ∀ n, P11626329783670026761.a n = A272586 n

end A272586

/-! ## A272586.P14139076626155017508

`xor(A151909(A008624(n)), A271286(n))`
-/

namespace A272586.P14139076626155017508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A151909 (A008624 n).toNat) (A271286 n)

end

end A272586.P14139076626155017508

namespace A272586

/-- `xor(A151909(A008624(n)), A271286(n))` -/
def P14139076626155017508.Spec : Prop :=
  ∀ n, P14139076626155017508.a n = A272586 n

end A272586

/-! ## A272586.P8674259439721870557

`A272585(n)+A271286(n)-A272581(n)`
-/

namespace A272586.P8674259439721870557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272585 n + (A271286 n - A272581 n)

end

end A272586.P8674259439721870557

namespace A272586

/-- `A272585(n)+A271286(n)-A272581(n)` -/
def P8674259439721870557.Spec : Prop :=
  ∀ n, P8674259439721870557.a n = A272586 n

end A272586

/-! ## A272586.P10274694807319691802

`or(A080339(A298305(n+1)), A271286(n))`
-/

namespace A272586.P10274694807319691802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080339 (A298305 (n + 1)).toNat) (A271286 n)

end

end A272586.P10274694807319691802

namespace A272586

/-- `or(A080339(A298305(n+1)), A271286(n))` -/
def P10274694807319691802.Spec : Prop :=
  ∀ n, P10274694807319691802.a n = A272586 n

end A272586

/-!
# A272587: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 507", based on the 5-celled von Neumann neighborhood.

The programs for A272587, there is no canonical definition to state claims against.
-/

/-! ## A272587.P4110009875396382098

`∑[A272585(n)]`
-/

namespace A272587.P4110009875396382098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272587.P4110009875396382098

/-! ## A272587.P13707670166783441022

`∑[A272581(n)+char[1]]`
-/

namespace A272587.P13707670166783441022
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272581 n + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272587.P13707670166783441022

/-! ## A272587.P3959719063516455776

`A272583(n)+1-floor(acot(n))`
-/

namespace A272587.P3959719063516455776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272583 n + (1 - ⌊SequenceMachineLib.acot (n : ℝ)⌋)

end

end A272587.P3959719063516455776

/-! ## A272587.P3688418157281158622

`A272583(n)+A057427(n)`
-/

namespace A272587.P3688418157281158622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272583 n + A057427 n

end

end A272587.P3688418157281158622

/-! ## A272587.P351791162754205105

`A272583(n)-A057428(n)`
-/

namespace A272587.P351791162754205105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272583 n - A057428 n

end

end A272587.P351791162754205105

/-! ## A272587.P11166912709318860377

`A057427(n)+∑[A272581(n)]`
-/

namespace A272587.P11166912709318860377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272587.P11166912709318860377

/-! ## A272587.P13157788010201122323

`A272583(n)+char[A052938(n)]`
-/

namespace A272587.P13157788010201122323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272583 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A272587.P13157788010201122323

/-! ## A272587.P8264792594646176783

`∑[or(A209229(n), A272581(n))]`
-/

namespace A272587.P8264792594646176783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A209229 n) (A272581 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272587.P8264792594646176783

/-! ## A272587.P7262191535360821942

`A272583(n)+1-A000007(n)`
-/

namespace A272587.P7262191535360821942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272583 n + (1 - A000007 n)

end

end A272587.P7262191535360821942

/-! ## A272587.P17589736916415081042

`A272583(n)+A001221(A001316(n))`
-/

namespace A272587.P17589736916415081042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272583 n + A001221 (A001316 n).toNat

end

end A272587.P17589736916415081042

/-! ## A272587.P5442964663932595944

`A272583(n)+A267084(A267352(n))`
-/

namespace A272587.P5442964663932595944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272583 n + A267084 (A267352 n).toNat

end

end A272587.P5442964663932595944

/-! ## A272587.P485963266229928404

`A000035(A004273(n))+∑[A272581(n)]`
-/

namespace A272587.P485963266229928404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004273 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272587.P485963266229928404

/-! ## A272587.P15589196432182489241

`A272583(n)+A000007(A000045(C(2, n+2)))`
-/

namespace A272587.P15589196432182489241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272583 n + A000007 (A000045 (Nat.choose 2 (n + 2))).toNat

end

end A272587.P15589196432182489241

/-! ## A272587.P2731913936270828973

`A272583(n)+A000007(A000007(n)*A272583(n))`
-/

namespace A272587.P2731913936270828973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272583 n + A000007 (A000007 n * A272583 n).toNat

end

end A272587.P2731913936270828973

/-! ## A272587.P18108371246072192979

`A272583(n)+A000007(A000007(n)/A272583(n))`
-/

namespace A272587.P18108371246072192979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272583 n + A000007 (SequenceMachineLib.roundAway ((A000007 n : ℚ) / (A272583 n : ℚ))).toNat

end

end A272587.P18108371246072192979

/-! ## A272587.P10277219550160776671

`A065475(A065475(n+1))+A272583(n)-A065475(n+1)`
-/

namespace A272587.P10277219550160776671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A065475 (n + 1)).toNat + (A272583 n - A065475 (n + 1))

end

end A272587.P10277219550160776671

/-! ## A272587.P10929921498874119860

`∑[A272581(n)]+A342273(n+1)%2`
-/

namespace A272587.P10929921498874119860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.tmod (A342273 (n + 1)) 2

end

end A272587.P10929921498874119860

/-! ## A272587.P11870705468790305969

`A272583(n)+A267084(A025747(n))`
-/

namespace A272587.P11870705468790305969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272583 n + A267084 (A025747 n).toNat

end

end A272587.P11870705468790305969

/-!
# A272588: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 507", based on the 5-celled von Neumann neighborhood.

The programs for A272588, there is no canonical definition to state claims against.
-/

/-! ## A272588.P3785034606916943219

`Δ[A272585(n)]`
-/

namespace A272588.P3785034606916943219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272588.P3785034606916943219

/-! ## A272588.P1957942134639786965

`Δ[or(A209229(n), A272581(n))]`
-/

namespace A272588.P1957942134639786965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A209229 n) (A272581 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272588.P1957942134639786965

/-! ## A272588.P17403068521104942367

`Δ[or(A266591(n), A272581(n))]`
-/

namespace A272588.P17403068521104942367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A266591 n) (A272581 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272588.P17403068521104942367

/-! ## A272588.P12325145422827205175

`A272585(n+1)-A272585(n)`
-/

namespace A272588.P12325145422827205175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272585 (n + 1) - A272585 n

end

end A272588.P12325145422827205175

/-! ## A272588.P3621692336267726216

`Δ[A272581(n)-and(1, A064555(n+1))]`
-/

namespace A272588.P3621692336267726216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272581 n - Int.land 1 (A064555 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272588.P3621692336267726216

/-! ## A272588.P3300089236780740148

`A008683(A062383(n))+Δ[A272581(n)]`
-/

namespace A272588.P3300089236780740148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A062383 n).toNat + (f1 (n + 1) - f1 n)

end

end A272588.P3300089236780740148

/-! ## A272588.P12776155401275024488

`Δ[A272581(n)+A057428(A123108(n))]`
-/

namespace A272588.P12776155401275024488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272581 n + A057428 (A123108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272588.P12776155401275024488

/-! ## A272588.P8512951462021311877

`A272584(n)+A154955(n+1)`
-/

namespace A272588.P8512951462021311877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272584 n + A154955 (n + 1)

end

end A272588.P8512951462021311877

/-! ## A272588.P1445913424452829879

`A272584(n)+A008683(A062383(n))`
-/

namespace A272588.P1445913424452829879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272584 n + A008683 (A062383 n).toNat

end

end A272588.P1445913424452829879

/-! ## A272588.P17216175233771380284

`A272584(n)+A008683(A270022(n))`
-/

namespace A272588.P17216175233771380284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272584 n + A008683 (A270022 n).toNat

end

end A272588.P17216175233771380284

/-! ## A272588.P3368746718408349753

`A272584(n)-A008683(2*A270022(n))`
-/

namespace A272588.P3368746718408349753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272584 n - A008683 (2 * A270022 n).toNat

end

end A272588.P3368746718408349753

/-! ## A272588.P7160147614072093132

`Δ[A272581(n)+A006519(A005728(n))]`
-/

namespace A272588.P7160147614072093132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272581 n + A006519 (A005728 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272588.P7160147614072093132

/-!
# A272590: a(n) is the smallest number m such that the multiplicative group modulo m is the direct product of n cyclic groups.

The programs for A272590, there is no canonical definition to state claims against.
-/

/-! ## A272590.P4108662049459538305

`(3-(abs(1-n)-n))*∏[lt[n-2, 2*(n+1)-∑{d}[n+1, #]]+1]`
-/

namespace A272590.P4108662049459538305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - ((∑ d ∈ Nat.divisors (f4 n), d : ℕ) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (|1 - (n : ℤ)| - (n : ℤ))) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A272590.P4108662049459538305

/-! ## A272590.P517636239183592640

`2*A097250(n)`
-/

namespace A272590.P517636239183592640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097250 n

end

end A272590.P517636239183592640

/-! ## A272590.P7012072858320874452

`a(n-1)*A000040(n)` with `a(0)=2, a(1)=8`
-/

namespace A272590.P7012072858320874452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n a =>
  a (n - 1) * A000040 n

end

end A272590.P7012072858320874452

/-! ## A272590.P10893837124370346718

`2*A002110(n)*ceil(cosh(sin(n)))`
-/

namespace A272590.P10893837124370346718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002110 n * ⌈Real.cosh (Real.sin (n : ℝ))⌉

end

end A272590.P10893837124370346718

/-! ## A272590.P10661272487504149307

`a(n-1)*comp[A018252(n+1)]` with `a(0)=2, a(1)=8`
-/

namespace A272590.P10661272487504149307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [2, 8] fun n a =>
  a (n - 1) * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A272590.P10661272487504149307

/-!
# A272592: Numbers n such that the multiplicative group modulo n is the direct product of 2 cyclic groups.

The programs for A272592, there is no canonical definition to state claims against.
-/

/-! ## A272592.P17558263689699679823

`eq[2, A046072(n+1)]+1`
-/

namespace A272592.P17558263689699679823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046072 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A272592.P17558263689699679823

/-! ## A272592.P4711855684083154562

`eq[2, A072273(n+1)]+1`
-/

namespace A272592.P4711855684083154562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072273 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A272592.P4711855684083154562

/-! ## A272592.P6200441038472673383

`eq[2, A157230(n+1)]+1`
-/

namespace A272592.P6200441038472673383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157230 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A272592.P6200441038472673383

/-! ## A272592.P1751088062872813505

`eq[3, A155828(n+1)]+1`
-/

namespace A272592.P1751088062872813505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155828 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A272592.P1751088062872813505

/-! ## A272592.P3089400028395105644

`eq[4, A060594(n+1)]+1`
-/

namespace A272592.P3089400028395105644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A272592.P3089400028395105644

/-! ## A272592.P8696745620404850422

`eq[2, A046072(A028310(n))]`
-/

namespace A272592.P8696745620404850422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046072 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272592.P8696745620404850422

/-! ## A272592.P13210197206507757576

`A020725(eq[2, A046072(n+1)])`
-/

namespace A272592.P13210197206507757576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272592.P13210197206507757576

/-! ## A272592.P17383860933471535373

`A020725(eq[2, A072273(n+1)])`
-/

namespace A272592.P17383860933471535373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272592.P17383860933471535373

/-! ## A272592.P7915345682076919696

`A061767(eq[2, A046072(n+1)])`
-/

namespace A272592.P7915345682076919696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272592.P7915345682076919696

/-! ## A272592.P3201118542230063732

`A061767(eq[4, A060594(n+1)])`
-/

namespace A272592.P3201118542230063732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272592.P3201118542230063732

/-!
# A272593: Numbers n such that the multiplicative group modulo n is the direct product of 3 cyclic groups.

The programs for A272593, there is no canonical definition to state claims against.
-/

/-! ## A272593.P14906812489352460455

`eq[3, A046072(n+1)]+1`
-/

namespace A272593.P14906812489352460455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046072 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A272593.P14906812489352460455

/-! ## A272593.P11494717189108908033

`eq[4, A157230(n+1)]+1`
-/

namespace A272593.P11494717189108908033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157230 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A272593.P11494717189108908033

/-! ## A272593.P14875819139756960127

`eq[7, A155828(n+1)]+1`
-/

namespace A272593.P14875819139756960127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155828 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A272593.P14875819139756960127

/-! ## A272593.P2775298376785402723

`eq[8, A060594(n+1)]+1`
-/

namespace A272593.P2775298376785402723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A272593.P2775298376785402723

/-! ## A272593.P2540209364607486086

`eq[1, A072273(n+1)-2]+1`
-/

namespace A272593.P2540209364607486086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072273 (n + 1) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A272593.P2540209364607486086

/-! ## A272593.P8911900702292351521

`eq[8, A060594(A028310(n))]`
-/

namespace A272593.P8911900702292351521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272593.P8911900702292351521

/-! ## A272593.P1595841076649683595

`eq[2, A008619(a(A157230(n)))]` with `a(0)=1, a(1)=4`
-/

namespace A272593.P1595841076649683595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f2 =>
  A008619 (f2 (A157230 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272593.P1595841076649683595

/-! ## A272593.P10933692203255074899

`A020725(eq[1, A072273(n+1)-2])`
-/

namespace A272593.P10933692203255074899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072273 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272593.P10933692203255074899

/-! ## A272593.P3551086711230513079

`lt[1, A001222(A060594(n+1)+1)]+1`
-/

namespace A272593.P3551086711230513079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A060594 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A272593.P3551086711230513079

/-! ## A272593.P6370951548209970442

`lt[1, A001222(val(A319100(n+1), 2)²+1)]+1`
-/

namespace A272593.P6370951548209970442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.valuation (A319100 (n + 1)).toNat 2 ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A272593.P6370951548209970442

/-!
# A272594: Numbers n such that the multiplicative group modulo n is the direct product of 4 cyclic groups.

The programs for A272594, there is no canonical definition to state claims against.
-/

/-! ## A272594.P6258668936934872898

`eq[4, A046072(A028310(n))]`
-/

namespace A272594.P6258668936934872898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046072 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272594.P6258668936934872898

/-! ## A272594.P2142516447287371002

`A020725(eq[4, A046072(n+1)])`
-/

namespace A272594.P2142516447287371002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272594.P2142516447287371002

/-! ## A272594.P14215046003790972058

`A020725(eq[4, A072273(n+1)])`
-/

namespace A272594.P14215046003790972058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272594.P14215046003790972058

/-! ## A272594.P5783445284130015664

`A153152(eq[4, A046072(n+1)])`
-/

namespace A272594.P5783445284130015664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272594.P5783445284130015664

/-! ## A272594.P2605805445519700923

`A153152(eq[4, A072273(n+1)])`
-/

namespace A272594.P2605805445519700923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272594.P2605805445519700923

/-! ## A272594.P4798390802878958490

`A010702(A045536(n+1))*A033992(n+1)`
-/

namespace A272594.P4798390802878958490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010702 (A045536 (n + 1)).toNat * A033992 (n + 1)

end

end A272594.P4798390802878958490

/-! ## A272594.P2713673787614712009

`A033992(n+1)*A040002(A066509(n+1))`
-/

namespace A272594.P2713673787614712009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1) * A040002 (A066509 (n + 1)).toNat

end

end A272594.P2713673787614712009

/-! ## A272594.P17384483592172014459

`A000005(A196226(n+1))*A033992(n+1)`
-/

namespace A272594.P17384483592172014459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A196226 (n + 1)).toNat * A033992 (n + 1)

end

end A272594.P17384483592172014459

/-!
# A272595: Numbers n such that the multiplicative group modulo n is the direct product of 5 cyclic groups.

The programs for A272595, there is no canonical definition to state claims against.
-/

/-! ## A272595.P7184963848028438635

`4*A033993(n+1)`
-/

namespace A272595.P7184963848028438635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A033993 (n + 1)

end

end A272595.P7184963848028438635

/-! ## A272595.P12456404335485264691

`A008574(A033993(n+1))`
-/

namespace A272595.P12456404335485264691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A033993 (n + 1)).toNat

end

end A272595.P12456404335485264691

/-! ## A272595.P1361770366888792786

`A336627(A033993(n+1)+1)`
-/

namespace A272595.P1361770366888792786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336627 (A033993 (n + 1) + 1).toNat

end

end A272595.P1361770366888792786

/-! ## A272595.P7354504464698569390

`A004767(A033993(n+1)-1)+1`
-/

namespace A272595.P7354504464698569390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A033993 (n + 1) - 1).toNat + 1

end

end A272595.P7354504464698569390

/-! ## A272595.P418179515680325029

`A016813(A033993(n+1)-1)+3`
-/

namespace A272595.P418179515680325029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A033993 (n + 1) - 1).toNat + 3

end

end A272595.P418179515680325029

/-! ## A272595.P13273324768882740822

`A005943(A033993(n+1)+1)/2`
-/

namespace A272595.P13273324768882740822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005943 (A033993 (n + 1) + 1).toNat : ℚ) / 2

end

end A272595.P13273324768882740822

/-! ## A272595.P17035272293550673632

`A008586(A033993(n+1)-1)+4`
-/

namespace A272595.P17035272293550673632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A033993 (n + 1) - 1).toNat + 4

end

end A272595.P17035272293550673632

/-! ## A272595.P17871065387499511320

`A033993(n+1)/(A007318(∑[n])/2)²`
-/

namespace A272595.P17871065387499511320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033993 (n + 1) : ℚ) / ((A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2) ^ 2

end

end A272595.P17871065387499511320

/-! ## A272595.P5321581225843970705

`lcm(A008586(A033993(n+1)), A040002(n))`
-/

namespace A272595.P5321581225843970705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008586 (A033993 (n + 1)).toNat) (A040002 n)

end

end A272595.P5321581225843970705

/-! ## A272595.P17759757978971932496

`A005843(A033993(n+1)+A033993(n+1))`
-/

namespace A272595.P17759757978971932496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A033993 (n + 1) + A033993 (n + 1)).toNat

end

end A272595.P17759757978971932496

/-!
# A272596: Numbers n such that the multiplicative group modulo n is the direct product of 6 cyclic groups.

The programs for A272596, there is no canonical definition to state claims against.
-/

/-! ## A272596.P3126373585786467922

`4*A051270(n+1)`
-/

namespace A272596.P3126373585786467922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A051270 (n + 1)

end

end A272596.P3126373585786467922

/-! ## A272596.P6756360252142675161

`A016825(A051270(n+1)-1)+2`
-/

namespace A272596.P6756360252142675161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A051270 (n + 1) - 1).toNat + 2

end

end A272596.P6756360252142675161

/-! ## A272596.P14133911387883444561

`A000027(A051270(n+1)/tan(acot(4)))`
-/

namespace A272596.P14133911387883444561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A051270 (n + 1) : ℝ) / Real.tan (SequenceMachineLib.acot (4 : ℝ)))).toNat

end

end A272596.P14133911387883444561

/-! ## A272596.P6539425495944857066

`A051270(n+1)/(A008836(n+1)/2)²`
-/

namespace A272596.P6539425495944857066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051270 (n + 1) : ℚ) / ((A008836 (n + 1) : ℚ) / 2) ^ 2

end

end A272596.P6539425495944857066

/-! ## A272596.P15580184892359140001

`∑{d}[A051270(n+1), A008574(A000010(#))]`
-/

namespace A272596.P15580184892359140001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008574 (A000010 d).toNat

end

end A272596.P15580184892359140001

/-!
# A272597: Numbers n such that the multiplicative group modulo n is the direct product of 7 cyclic groups.

The programs for A272597, there is no canonical definition to state claims against.
-/

/-! ## A272597.P15949981357101231656

`4*A074969(n+1)`
-/

namespace A272597.P15949981357101231656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A074969 (n + 1)

end

end A272597.P15949981357101231656

/-! ## A272597.P8375813714389879604

`4*A336910(n+4)`
-/

namespace A272597.P8375813714389879604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A336910 (n + 4)

end

end A272597.P8375813714389879604

/-! ## A272597.P1723420481790126843

`2*2*A336910(A020705(n))`
-/

namespace A272597.P1723420481790126843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A336910 (A020705 n).toNat)

end

end A272597.P1723420481790126843

/-! ## A272597.P6729344002882745371

`∑{e}[A033993(n+1), lcm(#, A074969(n+1))]`
-/

namespace A272597.P6729344002882745371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Int.lcm (Nat.factorization (f1 n).natAbs p : ℤ) (A074969 (n + 1))

end

end A272597.P6729344002882745371

/-! ## A272597.P1192157441069751928

`record[4*A074969(A023416(2*n))]`
-/

namespace A272597.P1192157441069751928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A074969 (A023416 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272597.P1192157441069751928

/-!
# A272598: Numbers n such that the multiplicative group modulo n is the direct product of 8 cyclic groups.

The programs for A272598, there is no canonical definition to state claims against.
-/

/-! ## A272598.P10993396557528741160

`4*A176655(n+1)`
-/

namespace A272598.P10993396557528741160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A176655 (n + 1)

end

end A272598.P10993396557528741160

/-! ## A272598.P15809456475510362581

`record[4*A176655(A193592(n))]`
-/

namespace A272598.P15809456475510362581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A176655 (A193592 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272598.P15809456475510362581

/-! ## A272598.P6273880121787447870

`4*∪[A123321(n+1), A190381(n+1)]`
-/

namespace A272598.P6273880121787447870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272598.P6273880121787447870

/-! ## A272598.P2814631037973784629

`A176655(n+1)/(A007318(∑[n])/2)²`
-/

namespace A272598.P2814631037973784629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176655 (n + 1) : ℚ) / ((A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2) ^ 2

end

end A272598.P2814631037973784629

/-! ## A272598.P11819251627487769692

`∑{e}[A046386(n+1), A176655(n+1)/#]`
-/

namespace A272598.P11819251627487769692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A176655 (n + 1) : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ)

end

end A272598.P11819251627487769692

/-!
# A272599: Numbers n such that the multiplicative group modulo n is the direct product of 9 cyclic groups.

The programs for A272599, there is no canonical definition to state claims against.
-/

/-! ## A272599.P16961858413520473789

`4*A348072(n+1)`
-/

namespace A272599.P16961858413520473789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A348072 (n + 1)

end

end A272599.P16961858413520473789

/-! ## A272599.P424976390840347348

`4/A348072(n+1)^A008683(A057673(n))`
-/

namespace A272599.P424976390840347348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (A348072 (n + 1) : ℚ) ^ (A008683 (A057673 n).toNat : ℤ)

end

end A272599.P424976390840347348

/-! ## A272599.P2219618787525017054

`lcm(8, A348072(∑[A287378(n)]))`
-/

namespace A272599.P2219618787525017054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 8 (A348072 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A272599.P2219618787525017054

/-! ## A272599.P2168586102976542574

`4*A123322(A032559(n+1))`
-/

namespace A272599.P2168586102976542574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A123322 (A032559 (n + 1)).toNat

end

end A272599.P2168586102976542574

/-! ## A272599.P2247600066508180863

`4*A123322(A276142(n+1))`
-/

namespace A272599.P2247600066508180863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A123322 (A276142 (n + 1)).toNat

end

end A272599.P2247600066508180863

