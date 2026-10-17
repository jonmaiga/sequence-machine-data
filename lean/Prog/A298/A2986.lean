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
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B003.C004
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

/-!
# A298600: Expansion of Product_{k>=2} 1/(1 + x^(k^2)).

The programs for A298600, there is no canonical definition to state claims against.
-/

/-! ## A298600.P7542871068400235318

`A008683(gcd(A326692(n+1), A326743(n)))`
-/

namespace A298600.P7542871068400235318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.gcd (A326692 (n + 1)) (A326743 n))

end

end A298600.P7542871068400235318

/-! ## A298600.P1852179993305731941

`(-A280126(n))^A305738(n+1)`
-/

namespace A298600.P1852179993305731941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A280126 n : ℚ) ^ (A305738 (n + 1) : ℤ)

end

end A298600.P1852179993305731941

/-! ## A298600.P2338296195012847130

`A010892(A014628(n+3)+A003132(3*(n+1)))`
-/

namespace A298600.P2338296195012847130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A014628 (n + 3) + A003132 (3 * (n + 1))).toNat

end

end A298600.P2338296195012847130

/-! ## A298600.P18444106678328337838

`A016421(A048183(n))`
-/

namespace A298600.P18444106678328337838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016421 (A048183 n).toNat

end

end A298600.P18444106678328337838

/-! ## A298600.P17608523961496242656

`A016412(A174648(n+1))`
-/

namespace A298600.P17608523961496242656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016412 (A174648 (n + 1)).toNat

end

end A298600.P17608523961496242656

/-!
# A298601: Expansion of Product_{k>=2} (1 - x^(k^2)).

The programs for A298601, there is no canonical definition to state claims against.
-/

/-! ## A298601.P2663752899613369446

`∑[A276516(n)]`
-/

namespace A298601.P2663752899613369446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298601.P2663752899613369446

/-! ## A298601.P9525789260068826111

`∑[A339366(n)-A339367(n)]`
-/

namespace A298601.P9525789260068826111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339366 n - A339367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298601.P9525789260068826111

/-! ## A298601.P16000321845381735514

`A276516(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A298601.P16000321845381735514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A276516 n + a (A023443 n).toNat

end

end A298601.P16000321845381735514

/-! ## A298601.P3009381145443092687

`∑[2*A339366(n)-A033461(n)]`
-/

namespace A298601.P3009381145443092687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339366 n - A033461 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298601.P3009381145443092687

/-! ## A298601.P2446423073484160093

`∑[A033461(n)-2*A339367(n)]`
-/

namespace A298601.P2446423073484160093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 n - 2 * A339367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298601.P2446423073484160093

/-! ## A298601.P1733742447548881234

`(A276516(n)+a(n-1))%A000009(n)` with `a(0)=1`
-/

namespace A298601.P1733742447548881234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A276516 n + a (n - 1)) (A000009 n)

end

end A298601.P1733742447548881234

/-! ## A298601.P9181481667420355296

`A276516(A004525(2*n))+a(n-1)` with `a(0)=1`
-/

namespace A298601.P9181481667420355296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A276516 (A004525 (2 * n)).toNat + a (n - 1)

end

end A298601.P9181481667420355296

/-!
# A298602: Expansion of (1 - x)*Product_{k>=1} (1 - x^prime(k)).

The programs for A298602, there is no canonical definition to state claims against.
-/

/-! ## A298602.P13720943662391534415

`Δ[A046675(abs(1-n))]`
-/

namespace A298602.P13720943662391534415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046675 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A298602.P13720943662391534415

/-! ## A298602.P8016050521846069272

`A046675(n)-A046675(abs(1-n))`
-/

namespace A298602.P8016050521846069272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046675 n - A046675 |1 - (n : ℤ)|.toNat

end

end A298602.P8016050521846069272

/-! ## A298602.P6024585193410882603

`A036497(n)-2*A339383(n)`
-/

namespace A298602.P6024585193410882603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036497 n - 2 * A339383 n

end

end A298602.P6024585193410882603

/-! ## A298602.P1733544914523206616

`A339382(n)-A339383(n)`
-/

namespace A298602.P1733544914523206616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339382 n - A339383 n

end

end A298602.P1733544914523206616

/-! ## A298602.P7781290948503481405

`2*A339382(n)-A036497(n)`
-/

namespace A298602.P7781290948503481405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339382 n - A036497 n

end

end A298602.P7781290948503481405

/-! ## A298602.P14237708746479801569

`A005843(A339382(n))-A036497(n)`
-/

namespace A298602.P14237708746479801569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A339382 n).toNat - A036497 n

end

end A298602.P14237708746479801569

/-! ## A298602.P11389791319221242036

`A005843(A298604(lcm(2, n)%(n+2)))-A036497(n)`
-/

namespace A298602.P11389791319221242036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A298604 (Nat.lcm 2 n % (n + 2))).toNat - A036497 n

end

end A298602.P11389791319221242036

/-!
# A298603: Number of partitions of n into odd prime parts (including 1).

The programs for A298603, there is no canonical definition to state claims against.
-/

/-! ## A298603.P14579599995593590342

`∑[A099773(n)]`
-/

namespace A298603.P14579599995593590342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298603.P14579599995593590342

/-! ## A298603.P17133698581230597527

`A099773(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A298603.P17133698581230597527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A099773 n + a (A023443 n).toNat

end

end A298603.P17133698581230597527

/-! ## A298603.P18123629757462821454

`A000607(abs(1-n))+A000607(n)`
-/

namespace A298603.P18123629757462821454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 |1 - (n : ℤ)|.toNat + A000607 n

end

end A298603.P18123629757462821454

/-! ## A298603.P10708230253882020448

`∑{d}[A027746(n+1), A000607(n-A001221(#))]`
-/

namespace A298603.P10708230253882020448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000607 ((n : ℤ) - A001221 d).toNat

end

end A298603.P10708230253882020448

/-! ## A298603.P9395627539560202274

`∑{d}[A027746(n+1), A000607(n-A001222(#))]`
-/

namespace A298603.P9395627539560202274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000607 ((n : ℤ) - A001222 d).toNat

end

end A298603.P9395627539560202274

/-! ## A298603.P10721684128158440098

`∑{d}[A027746(n+1), A000607(n-A329656(#))]`
-/

namespace A298603.P10721684128158440098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000607 ((n : ℤ) - A329656 d).toNat

end

end A298603.P10721684128158440098

/-! ## A298603.P11374980927879666858

`A000607(n+1)+A000607(n)-A099773(n+1)`
-/

namespace A298603.P11374980927879666858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (n + 1) + (A000607 n - A099773 (n + 1))

end

end A298603.P11374980927879666858

/-!
# A298604: Number of partitions of n into distinct odd prime parts (including 1).

The programs for A298604, there is no canonical definition to state claims against.
-/

/-! ## A298604.P2293195749216515184

`∑[(-1)^n*A046675(n)]`
-/

namespace A298604.P2293195749216515184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A046675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298604.P2293195749216515184

/-! ## A298604.P16995024267703807282

`A036497(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A298604.P16995024267703807282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A036497 n - a (n - 2)

end

end A298604.P16995024267703807282

/-! ## A298604.P2775309780683709112

`A000586(n)+Δ[A024937(n)]`
-/

namespace A298604.P2775309780683709112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 n + (f1 (n + 1) - f1 n)

end

end A298604.P2775309780683709112

/-! ## A298604.P18165616364616292937

`A024937(n+1)+A024937(n+2)`
-/

namespace A298604.P18165616364616292937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024937 (n + 1) + A024937 (n + 2)

end

end A298604.P18165616364616292937

/-! ## A298604.P6549629606109897718

`A339383(xor(1, n)+1)`
-/

namespace A298604.P6549629606109897718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339383 (Nat.xor 1 n + 1)

end

end A298604.P6549629606109897718

/-! ## A298604.P14448758958371070701

`A339383(A014681(n+1))`
-/

namespace A298604.P14448758958371070701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339383 (A014681 (n + 1)).toNat

end

end A298604.P14448758958371070701

/-! ## A298604.P11334268079074921738

`A339383(A103889(n+1))`
-/

namespace A298604.P11334268079074921738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339383 (A103889 (n + 1)).toNat

end

end A298604.P11334268079074921738

/-! ## A298604.P13300823989273257155

`A339383(A114112(n+1))`
-/

namespace A298604.P13300823989273257155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339383 (A114112 (n + 1)).toNat

end

end A298604.P13300823989273257155

/-! ## A298604.P1826516268990621275

`∑[A024939(n)-A024937(n)]`
-/

namespace A298604.P1826516268990621275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024939 n - A024937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298604.P1826516268990621275

/-! ## A298604.P13052735205510868249

`A024939(n)+A024937(n+1)`
-/

namespace A298604.P13052735205510868249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024939 n + A024937 (n + 1)

end

end A298604.P13052735205510868249

/-! ## A298604.P3571252543706635159

`A000586(n+1)+A024939(n)-A024939(n+1)`
-/

namespace A298604.P3571252543706635159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (n + 1) + (A024939 n - A024939 (n + 1))

end

end A298604.P3571252543706635159

/-! ## A298604.P12371678737464379835

`A339382(xor(1, n+1))`
-/

namespace A298604.P12371678737464379835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339382 (Nat.xor 1 (n + 1))

end

end A298604.P12371678737464379835

/-! ## A298604.P6371072689463521849

`A339382(1-(-1)^n+n)`
-/

namespace A298604.P6371072689463521849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339382 (1 - (-1) ^ n + (n : ℤ)).toNat

end

end A298604.P6371072689463521849

/-!
# A298605: T(n,k) is 1/(k-1)! times the n-th derivative of the difference between the k-th tetration of x (power tower of order k) and its predecessor at x=1; triangle T(n,k), n>=1, 1<=k<=n, read by rows.

The programs for A298605, there is no canonical definition to state claims against.
-/

/-! ## A298605.P2482177229279316679

`A180013(n+1)%lt[98, A256548(2*(n+2))]`
-/

namespace A298605.P2482177229279316679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  98

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256548 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180013 (n + 1)) (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ)

end

end A298605.P2482177229279316679

/-! ## A298605.P12179671049232351499

`A119900(n)+A110124(A157221(n))`
-/

namespace A298605.P12179671049232351499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119900 n + A110124 (A157221 n).toNat

end

end A298605.P12179671049232351499

/-! ## A298605.P3314541542994338658

`A001222(A140513(n)^A293113(n))`
-/

namespace A298605.P3314541542994338658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A140513 n : ℚ) ^ (A293113 n : ℤ))).toNat

end

end A298605.P3314541542994338658

/-! ## A298605.P7648442866843249260

`A180013(n+1)/A006530(A309864(n))`
-/

namespace A298605.P7648442866843249260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180013 (n + 1) : ℚ) / (A006530 (A309864 n).toNat : ℚ)

end

end A298605.P7648442866843249260

/-! ## A298605.P9464007214511482062

`A180013(n+1)/A329314(A295682(n))`
-/

namespace A298605.P9464007214511482062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180013 (n + 1) : ℚ) / (A329314 (A295682 n).toNat : ℚ)

end

end A298605.P9464007214511482062

/-!
# A298606: Partial sums of A293630.

The programs for A298606, there is no canonical definition to state claims against.
-/

/-! ## A298606.P14551049480850136953

`∑[A293630(n+1)]`
-/

namespace A298606.P14551049480850136953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298606.P14551049480850136953

/-! ## A298606.P17521637262276375751

`∑[A293630(-xor(n, -1))]%A085001(n)`
-/

namespace A298606.P17521637262276375751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293630 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A085001 n)

end

end A298606.P17521637262276375751

/-! ## A298606.P4947829245645455896

`a(n-1)+A293630(n+1)^A293630(n+2)` with `a(0)=1`
-/

namespace A298606.P4947829245645455896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A293630 (n + 1) : ℚ) ^ (A293630 (n + 2) : ℤ)

end

end A298606.P4947829245645455896

/-! ## A298606.P2816203393183020864

`A028310(∑[A293630(-xor(n, -1))])`
-/

namespace A298606.P2816203393183020864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293630 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A298606.P2816203393183020864

/-! ## A298606.P12100179369293152687

`∑[A293630(-xor(n, -1))]-A000035(2*n)`
-/

namespace A298606.P12100179369293152687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293630 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000035 (2 * n)

end

end A298606.P12100179369293152687

/-! ## A298606.P9795512321843408840

`∑[A322426(∑[n]+2)]`
-/

namespace A298606.P9795512321843408840
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322426 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298606.P9795512321843408840

/-!
# A298607: Powers of 2 with the digit '0' in their decimal expansion.

The programs for A298607, there is no canonical definition to state claims against.
-/

/-! ## A298607.P1856208837369167869

`2^comp[lt[0, ∏{digits}[2^n, #]]]`
-/

namespace A298607.P1856208837369167869
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => x).prod

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A298607.P1856208837369167869

/-! ## A298607.P9109886055428760225

`2^A320601(n+1)`
-/

namespace A298607.P9109886055428760225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A320601 (n + 1) : ℤ)

end

end A298607.P9109886055428760225

/-! ## A298607.P6887046007471860220

`2^eq[1, A224782(n)]`
-/

namespace A298607.P6887046007471860220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224782 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298607.P6887046007471860220

/-! ## A298607.P13698892884518582761

`2^comp[record[A305932(n)]]`
-/

namespace A298607.P13698892884518582761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305932 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A298607.P13698892884518582761

/-! ## A298607.P9993190336689594889

`2^comp[A007377(n+1)]`
-/

namespace A298607.P9993190336689594889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A298607.P9993190336689594889

/-!
# A298608: Polynomials related to the Motzkin numbers for Coxeter type D, T(n, k) for n >= 0 and 0 <= k <= n.

The programs for A298608, there is no canonical definition to state claims against.
-/

/-! ## A298608.P96648049149289643

`A298609(n)+A109187(n)`
-/

namespace A298608.P96648049149289643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298609 n + A109187 n

end

end A298608.P96648049149289643

/-! ## A298608.P15079663402159116298

`gcd(A109187(n), A298609(A028310(n)))`
-/

namespace A298608.P15079663402159116298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109187 n) (A298609 (A028310 n).toNat)

end

end A298608.P15079663402159116298

/-! ## A298608.P641015436955290549

`A298609(n)+A046854(n)*A108044(n)`
-/

namespace A298608.P641015436955290549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298609 n + A046854 n * A108044 n

end

end A298608.P641015436955290549

/-! ## A298608.P15007455167272113884

`A298609(n)+A061554(n)*A168561(n)`
-/

namespace A298608.P15007455167272113884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298609 n + A061554 n * A168561 n

end

end A298608.P15007455167272113884

/-! ## A298608.P4423189394671471181

`(A109187(n)-A298609(n))*A097807(n)`
-/

namespace A298608.P4423189394671471181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109187 n - A298609 n) * A097807 n

end

end A298608.P4423189394671471181

/-! ## A298608.P9552611514972013184

`gcd(A109187(n)-A298609(n), A000038(n))`
-/

namespace A298608.P9552611514972013184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109187 n - A298609 n) (A000038 n)

end

end A298608.P9552611514972013184

/-! ## A298608.P2329756740507475409

`lcm(A109187(n)-A298609(n), A020985(n))`
-/

namespace A298608.P2329756740507475409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A109187 n - A298609 n) (A020985 n)

end

end A298608.P2329756740507475409

/-! ## A298608.P2331608249322406949

`∑{d}[A109187(n)-A298609(n), A000010(#)]`
-/

namespace A298608.P2331608249322406949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109187 n - A298609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A298608.P2331608249322406949

/-! ## A298608.P1890576549244172928

`abs((A109187(n)-A298609(n))*A033999(n))`
-/

namespace A298608.P1890576549244172928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A109187 n - A298609 n) * A033999 n|

end

end A298608.P1890576549244172928

/-! ## A298608.P5727415029755550868

`A298609(n)+A030111(n+1)*A053121(n)`
-/

namespace A298608.P5727415029755550868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298609 n + A030111 (n + 1) * A053121 n

end

end A298608.P5727415029755550868

/-!
# A298609: Polynomials related to the Motzkin sums for Coxeter type D, T(n, k) for n >= 0 and 0 <= k <= n.

The programs for A298609, there is no canonical definition to state claims against.
-/

/-! ## A298609.P652177309063044745

`A298608(n)-A109187(n)`
-/

namespace A298609.P652177309063044745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298608 n - A109187 n

end

end A298609.P652177309063044745

/-! ## A298609.P8610849578366195546

`A298608(n)%A107230(n)`
-/

namespace A298609.P8610849578366195546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298608 n) (A107230 n)

end

end A298609.P8610849578366195546

/-! ## A298609.P13512799512576638341

`(1-A128174(n+1))*A298608(n)`
-/

namespace A298609.P13512799512576638341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A128174 (n + 1)) * A298608 n

end

end A298609.P13512799512576638341

/-! ## A298609.P8690031656499677401

`A000035(A025581(n))*A298608(n)`
-/

namespace A298609.P8690031656499677401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A025581 n).toNat * A298608 n

end

end A298609.P8690031656499677401

/-! ## A298609.P14881487113433605905

`C(A298608(n), A325597(A109187(n)+1))`
-/

namespace A298609.P14881487113433605905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A298608 n).toNat (A325597 (A109187 n + 1).toNat).toNat

end

end A298609.P14881487113433605905

/-! ## A298609.P12312814917937947324

`A298608(n)-lcm(A053121(n), A298608(n))`
-/

namespace A298609.P12312814917937947324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298608 n - (Int.lcm (A053121 n) (A298608 n) : ℤ)

end

end A298609.P12312814917937947324

/-!
# A298610: Triangle read by rows, the unsigned coefficients of G(n, n, x/2) where G(n,a,x) denotes the n-th Gegenbauer polynomial, T(n, k) for 0 <= k <= n.

The programs for A298610, there is no canonical definition to state claims against.
-/

/-! ## A298610.P16146863149479301361

`A165042(A006882(n))*A242653(n)`
-/

namespace A298610.P16146863149479301361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165042 (A006882 n).toNat * A242653 n

end

end A298610.P16146863149479301361

/-! ## A298610.P18272292269445504559

`A225413(3*(n+1))+A010051(A205647(3*(n+1)))`
-/

namespace A298610.P18272292269445504559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225413 (3 * (n + 1)) + A010051 (A205647 (3 * (n + 1))).toNat

end

end A298610.P18272292269445504559

/-!
# A298611: Expansion of (1 - 6*x + x^2 - 8*x^3 + 16*x^4)^(-1/2).

The programs for A298611, there is no canonical definition to state claims against.
-/

/-! ## A298611.P6970115279512831992

`A008619(A003948(n)-A114462(3*n))`
-/

namespace A298611.P6970115279512831992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A003948 n - A114462 (3 * n)).toNat

end

end A298611.P6970115279512831992

/-! ## A298611.P17916225526643040843

`A124533(n+1)-A061398(A124533(n+1))`
-/

namespace A298611.P17916225526643040843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124533 (n + 1) - A061398 (A124533 (n + 1)).toNat

end

end A298611.P17916225526643040843

/-!
# A298612: The number of concave polygon classes.

The programs for A298612, the canonical program `A298612.P5426295925633337968` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298612 has offset 3).

The definition of A298612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 338 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298612.P5426295925633337968

`A262232(n+3)-1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A298612

/-- `A262232(n+3)-1` -/
def P5426295925633337968.Spec : Prop :=
  ∀ n, P5426295925633337968.a n = A298612 (n + 3)

theorem P5426295925633337968.correct : P5426295925633337968.Spec := by
  intro n
  simp only [A298612, Nat.add_sub_cancel]

end A298612

/-! ## A298612.P15991777569411583526

`record[A262232(n)-floor(atan(n))]`
-/

namespace A298612.P15991777569411583526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262232 n - ⌊Real.arctan (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298612.P15991777569411583526

namespace A298612

/-- `record[A262232(n)-floor(atan(n))]` -/
def P15991777569411583526.Spec : Prop :=
  ∀ n, P15991777569411583526.a n = A298612 (n + 3)

end A298612

/-! ## A298612.P15350785799590965023

`A008965(n+3)-(ceil(n/2)+3)`
-/

namespace A298612.P15350785799590965023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008965 (n + 3) - (⌈(n : ℚ) / 2⌉ + 3)

end

end A298612.P15350785799590965023

namespace A298612

/-- `A008965(n+3)-(ceil(n/2)+3)` -/
def P15350785799590965023.Spec : Prop :=
  ∀ n, P15350785799590965023.a n = A298612 (n + 3)

end A298612

/-! ## A298612.P16221364700624657038

`record[A262232(n)+A057428(n)]`
-/

namespace A298612.P16221364700624657038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262232 n + A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298612.P16221364700624657038

namespace A298612

/-- `record[A262232(n)+A057428(n)]` -/
def P16221364700624657038.Spec : Prop :=
  ∀ n, P16221364700624657038.a n = A298612 (n + 3)

end A298612

/-! ## A298612.P9848609845372800234

`record[A262232(n)+A134824(n)]`
-/

namespace A298612.P9848609845372800234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262232 n + A134824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298612.P9848609845372800234

namespace A298612

/-- `record[A262232(n)+A134824(n)]` -/
def P9848609845372800234.Spec : Prop :=
  ∀ n, P9848609845372800234.a n = A298612 (n + 3)

end A298612

/-!
# A298614: Number of primitive Heronian triangles with perimeter A096468(n).

The programs for A298614, there is no canonical definition to state claims against.
-/

/-! ## A298614.P15653787345005247552

`A070138(A096468(n+1))`
-/

namespace A298614.P15653787345005247552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070138 (A096468 (n + 1)).toNat

end

end A298614.P15653787345005247552

/-! ## A298614.P10973234403848644745

`A070138(lt[0, A070138(n+1)]+1)`
-/

namespace A298614.P10973234403848644745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070138 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A298614.P10973234403848644745

/-! ## A298614.P2419323835468704893

`A070138(record[A224302(n+1)%A224302(n+2)])`
-/

namespace A298614.P2419323835468704893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224302 (n + 1)) (A224302 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070138 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A298614.P2419323835468704893

/-! ## A298614.P7126436073332468880

`A070138(∪[A331367(n+1), A334338(n+1)])`
-/

namespace A298614.P7126436073332468880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334338 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070138 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A298614.P7126436073332468880

/-! ## A298614.P16840931706892349888

`A070138(∪[A334338(n+1), A334984(n+1)])`
-/

namespace A298614.P16840931706892349888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334984 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070138 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A298614.P16840931706892349888

/-! ## A298614.P1657350702125472679

`A070138(∪[A334560(n+1), A334983(n+1)])`
-/

namespace A298614.P1657350702125472679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334983 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070138 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A298614.P1657350702125472679

/-! ## A298614.P15202787018168968542

`A070138(∪[A334560(n+1), A334984(n+1)])`
-/

namespace A298614.P15202787018168968542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334984 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070138 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A298614.P15202787018168968542

/-! ## A298614.P14434792792000468844

`ceil(A334120(n+1)/A331264(n+1))`
-/

namespace A298614.P14434792792000468844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A334120 (n + 1) : ℚ) / (A331264 (n + 1) : ℚ)⌉

end

end A298614.P14434792792000468844

/-! ## A298614.P14746815607170333773

`A070138(∪[A334983(n+1), A334984(n+1)])`
-/

namespace A298614.P14746815607170333773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334984 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070138 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A298614.P14746815607170333773

/-!
# A298615: Let b(k) be A056240(k); this sequence lists numbers b(2n) such that there is at least one m > n for which b(2m) < b(2n) belongs to A297150.

The programs for A298615, there is no canonical definition to state claims against.
-/

/-! ## A298615.P4807987297175681415

`A056240(A298366(n+1))`
-/

namespace A298615.P4807987297175681415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056240 (A298366 (n + 1)).toNat

end

end A298615.P4807987297175681415

/-! ## A298615.P14954179724987679655

`A056240(A025583(n+1)+3)`
-/

namespace A298615.P14954179724987679655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056240 (A025583 (n + 1) + 3).toNat

end

end A298615.P14954179724987679655

/-! ## A298615.P2994261698960709801

`A056240(A061673(n+1)+4)`
-/

namespace A298615.P2994261698960709801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056240 (A061673 (n + 1) + 4).toNat

end

end A298615.P2994261698960709801

/-! ## A298615.P14880767491825054638

`A288814(A061673(n+1)+4)`
-/

namespace A298615.P14880767491825054638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288814 (A061673 (n + 1) + 4).toNat

end

end A298615.P14880767491825054638

/-! ## A298615.P16612641355637219417

`A056240(A269345(n+1)+5)`
-/

namespace A298615.P16612641355637219417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056240 (A269345 (n + 1) + 5).toNat

end

end A298615.P16612641355637219417

/-! ## A298615.P15232633656850864539

`A288814(lcm(2, A298366(n+1)))`
-/

namespace A298615.P15232633656850864539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288814 (Int.lcm 2 (A298366 (n + 1)))

end

end A298615.P15232633656850864539

/-! ## A298615.P10566489762108712169

`A288814(A298366(2*n+1-n))`
-/

namespace A298615.P10566489762108712169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288814 (A298366 (2 * n + 1 - n)).toNat

end

end A298615.P10566489762108712169

/-! ## A298615.P15987698479160925601

`A292081(A196276(n+1))`
-/

namespace A298615.P15987698479160925601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292081 (A196276 (n + 1)).toNat

end

end A298615.P15987698479160925601

/-! ## A298615.P6877682578262487832

`filter[A292081(n+2), A358847(#)]`
-/

namespace A298615.P6877682578262487832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292081 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358847 (f1 j).toNat = 1) n)

end

end A298615.P6877682578262487832

/-! ## A298615.P2319642706387993644

`filter[A292081(n+1), A011558(#)]`
-/

namespace A298615.P2319642706387993644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A298615.P2319642706387993644

/-!
# A298616: Number of n X n 0..1 arrays with every element equal to 1, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298616, there is no canonical definition to state claims against.
-/

/-! ## A298616.P8705308000163592431

`A298622(∑[4*n]+1)`
-/

namespace A298616.P8705308000163592431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298622 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298616.P8705308000163592431

/-! ## A298616.P16672093347014524056

`∑{digits}[n, A298622(A001844(#))]`
-/

namespace A298616.P16672093347014524056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A298622 (A001844 x).toNat).sum

end

end A298616.P16672093347014524056

/-! ## A298616.P15928570773372020273

`A298622(A001844(n))+char[9]`
-/

namespace A298616.P15928570773372020273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298622 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298616.P15928570773372020273

/-! ## A298616.P18199898482289598126

`A342845(n)+A298622(A001844(n))`
-/

namespace A298616.P18199898482289598126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342845 n + A298622 (A001844 n).toNat

end

end A298616.P18199898482289598126

/-! ## A298616.P12775773652300099622

`A347689(n)+A298622(A001844(n))`
-/

namespace A298616.P12775773652300099622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n + A298622 (A001844 n).toNat

end

end A298616.P12775773652300099622

/-!
# A298617: Number of nX3 0..1 arrays with every element equal to 1, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298617, there is no canonical definition to state claims against.
-/

/-! ## A298617.P7467096295774236625

`A298622(∑[n+2]+4)`
-/

namespace A298617.P7467096295774236625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298622 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298617.P7467096295774236625

/-! ## A298617.P385831330933479588

`and(-1, A298622(A167614(n+1)))`
-/

namespace A298617.P385831330933479588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A298622 (A167614 (n + 1)).toNat)

end

end A298617.P385831330933479588

/-! ## A298617.P18189898183707585535

`A298622(A034856(n+1)+5)+char[17]`
-/

namespace A298617.P18189898183707585535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298622 (A034856 (n + 1) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298617.P18189898183707585535

/-! ## A298617.P1215520595181504899

`A298622(A167614(n+1))+A011731(n)`
-/

namespace A298617.P1215520595181504899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298622 (A167614 (n + 1)).toNat + A011731 n

end

end A298617.P1215520595181504899

/-! ## A298617.P1887328761051819001

`A298622(A167614(n+1))+A011738(n)`
-/

namespace A298617.P1887328761051819001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298622 (A167614 (n + 1)).toNat + A011738 n

end

end A298617.P1887328761051819001

/-!
# A298618: Number of nX4 0..1 arrays with every element equal to 1, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298618, there is no canonical definition to state claims against.
-/

/-! ## A298618.P2006559135764389210

`A298622(∑[n+3]+7)`
-/

namespace A298618.P2006559135764389210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298622 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298618.P2006559135764389210

/-! ## A298618.P4003201209784029368

`A298622(A027379(n+1)+7)+char[20]`
-/

namespace A298618.P4003201209784029368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298622 (A027379 (n + 1) + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298618.P4003201209784029368

/-! ## A298618.P4413195850071758676

`A274196(n)*A298622(A374004(n+1))`
-/

namespace A298618.P4413195850071758676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274196 n * A298622 (A374004 (n + 1)).toNat

end

end A298618.P4413195850071758676

/-! ## A298618.P17913307810382582241

`A298622(A374004(n+1))+A000007(n+1)`
-/

namespace A298618.P17913307810382582241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298622 (A374004 (n + 1)).toNat + A000007 (n + 1)

end

end A298618.P17913307810382582241

/-! ## A298618.P7811898747372195417

`A007318(C(2, n))*A298622(A027379(n+1)+7)`
-/

namespace A298618.P7811898747372195417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A298622 (A027379 (n + 1) + 7).toNat

end

end A298618.P7811898747372195417

/-!
# A298619: Number of nX5 0..1 arrays with every element equal to 1, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298619, there is no canonical definition to state claims against.
-/

/-! ## A298619.P12484718259196413390

`A298622(∑[n+4]+11)`
-/

namespace A298619.P12484718259196413390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298622 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A298619.P12484718259196413390

/-! ## A298619.P10403711549071962775

`A274196(n)*A298622(A167499(n+3))`
-/

namespace A298619.P10403711549071962775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274196 n * A298622 (A167499 (n + 3)).toNat

end

end A298619.P10403711549071962775

/-! ## A298619.P7941129147025015019

`A298622(A374005(n+1))%A126998(n)`
-/

namespace A298619.P7941129147025015019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298622 (A374005 (n + 1)).toNat) (A126998 n)

end

end A298619.P7941129147025015019

/-! ## A298619.P8271427953524154233

`A278657(n)*A298622(A155212(n)+13)`
-/

namespace A298619.P8271427953524154233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 n * A298622 (A155212 n + 13).toNat

end

end A298619.P8271427953524154233

/-! ## A298619.P6387619644471286709

`A267084(n+1)*A298622(A167499(n+3))`
-/

namespace A298619.P6387619644471286709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267084 (n + 1) * A298622 (A167499 (n + 3)).toNat

end

end A298619.P6387619644471286709

/-!
# A298620: Number of nX6 0..1 arrays with every element equal to 1, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298620, there is no canonical definition to state claims against.
-/

/-! ## A298620.P17911259652869238626

`A298622(A374007(n+1))`
-/

namespace A298620.P17911259652869238626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298622 (A374007 (n + 1)).toNat

end

end A298620.P17911259652869238626

/-! ## A298620.P16127261444256287472

`A298622(A166136(n+4))`
-/

namespace A298620.P16127261444256287472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298622 (A166136 (n + 4)).toNat

end

end A298620.P16127261444256287472

/-! ## A298620.P12465625187702792691

`A298622(A056115(n)+21)`
-/

namespace A298620.P12465625187702792691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298622 (A056115 n + 21).toNat

end

end A298620.P12465625187702792691

/-! ## A298620.P13766942755525133520

`A298622(A167499(n+4)+1)`
-/

namespace A298620.P13766942755525133520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298622 (A167499 (n + 4) + 1).toNat

end

end A298620.P13766942755525133520

/-! ## A298620.P16748956909585757967

`A298622(A167614(n+4)+3)`
-/

namespace A298620.P16748956909585757967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298622 (A167614 (n + 4) + 3).toNat

end

end A298620.P16748956909585757967

/-!
# A298621: Number of nX7 0..1 arrays with every element equal to 1, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298621, there is no canonical definition to state claims against.
-/

/-! ## A298621.P15142254543941101947

`A298622(A374008(n+1))`
-/

namespace A298621.P15142254543941101947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298622 (A374008 (n + 1)).toNat

end

end A298621.P15142254543941101947

/-! ## A298621.P2462242359151821742

`A298622(A167487(n+5))`
-/

namespace A298621.P2462242359151821742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298622 (A167487 (n + 5)).toNat

end

end A298621.P2462242359151821742

/-! ## A298621.P5631662665475968204

`A298622(eq[11, A066657(n)])`
-/

namespace A298621.P5631662665475968204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298622 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298621.P5631662665475968204

/-! ## A298621.P8841010495738438081

`A298622(A167499(n+5)+2)`
-/

namespace A298621.P8841010495738438081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298622 (A167499 (n + 5) + 2).toNat

end

end A298621.P8841010495738438081

/-! ## A298621.P12757174920688385191

`A298622(A167614(n+5)+4)`
-/

namespace A298621.P12757174920688385191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298622 (A167614 (n + 5) + 4).toNat

end

end A298621.P12757174920688385191

/-!
# A298622: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298622, there is no canonical definition to state claims against.
-/

/-! ## A298622.P956330487914949743

`A299528(n+1)-A082858(A174116(n))`
-/

namespace A298622.P956330487914949743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299528 (n + 1) - A082858 (A174116 n).toNat

end

end A298622.P956330487914949743

/-! ## A298622.P7135187242051999366

`A299588(n+1)-A082858(A289481(n))`
-/

namespace A298622.P7135187242051999366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299588 (n + 1) - A082858 (A289481 n).toNat

end

end A298622.P7135187242051999366

/-! ## A298622.P14538000037475037752

`xor(A082858(A289481(n)), A298834(n+1))`
-/

namespace A298622.P14538000037475037752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A082858 (A289481 n).toNat) (A298834 (n + 1))

end

end A298622.P14538000037475037752

/-! ## A298622.P14174799131727369317

`A298454(n+1)-A166301(A174116(n))²`
-/

namespace A298622.P14174799131727369317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298454 (n + 1) - A166301 (A174116 n).toNat ^ 2

end

end A298622.P14174799131727369317

/-! ## A298622.P8797862179810785192

`A106445(A298454(n+1))`
-/

namespace A298622.P8797862179810785192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106445 (A298454 (n + 1)).toNat

end

end A298622.P8797862179810785192

/-!
# A298623: Number of n X n 0..1 arrays with every element equal to 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298623, there is no canonical definition to state claims against.
-/

/-! ## A298623.P11096445360753776462

`A298629(∑[4*n]+1)`
-/

namespace A298623.P11096445360753776462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298629 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298623.P11096445360753776462

/-! ## A298623.P18198324341507955214

`A298629(A001844(n))+char[10]`
-/

namespace A298623.P18198324341507955214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298629 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298623.P18198324341507955214

/-! ## A298623.P10935738969573539835

`A007318(A001222(n+1)!)*A298629(A001844(n))`
-/

namespace A298623.P10935738969573539835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.factorial (A001222 (n + 1)).toNat) * A298629 (A001844 n).toNat

end

end A298623.P10935738969573539835

/-! ## A298623.P13598847532214941238

`A014963(2*A000040(n+1))*A298629(A001844(n))`
-/

namespace A298623.P13598847532214941238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * A000040 (n + 1)).toNat * A298629 (A001844 n).toNat

end

end A298623.P13598847532214941238

/-! ## A298623.P13159953955938811519

`A007318(A020639(2*(n+1)))*A298629(A001844(n))`
-/

namespace A298623.P13159953955938811519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A020639 (2 * (n + 1))).toNat * A298629 (A001844 n).toNat

end

end A298623.P13159953955938811519

/-!
# A298624: Number of nX3 0..1 arrays with every element equal to 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298624, there is no canonical definition to state claims against.
-/

/-! ## A298624.P9196082869502104409

`A298629(∑[n+2]+4)`
-/

namespace A298624.P9196082869502104409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298629 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298624.P9196082869502104409

/-! ## A298624.P17082236126252596174

`A298629(A167614(n+1))+A025469(n)`
-/

namespace A298624.P17082236126252596174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298629 (A167614 (n + 1)).toNat + A025469 n

end

end A298624.P17082236126252596174

/-! ## A298624.P14337954959384169779

`A298629(A167614(n+1))%A017550(n)`
-/

namespace A298624.P14337954959384169779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298629 (A167614 (n + 1)).toNat) (A017550 n)

end

end A298624.P14337954959384169779

/-! ## A298624.P10172398874896979744

`lcm(A257679(n), A298629(A167614(n+1)))`
-/

namespace A298624.P10172398874896979744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A257679 n) (A298629 (A167614 (n + 1)).toNat)

end

end A298624.P10172398874896979744

/-! ## A298624.P9818483832614723091

`A062513(n+1)*A298629(A167614(n+1))`
-/

namespace A298624.P9818483832614723091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062513 (n + 1) * A298629 (A167614 (n + 1)).toNat

end

end A298624.P9818483832614723091

/-!
# A298625: Number of nX4 0..1 arrays with every element equal to 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298625, there is no canonical definition to state claims against.
-/

/-! ## A298625.P2206481012241852180

`A298629(A374004(n+1))`
-/

namespace A298625.P2206481012241852180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298629 (A374004 (n + 1)).toNat

end

end A298625.P2206481012241852180

/-! ## A298625.P4462763532196068355

`A298629(A141214(n)+7)`
-/

namespace A298625.P4462763532196068355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298629 (A141214 n + 7).toNat

end

end A298625.P4462763532196068355

/-! ## A298625.P5973376925595271255

`A298629(A052905(n)+9)`
-/

namespace A298625.P5973376925595271255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298629 (A052905 n + 9).toNat

end

end A298625.P5973376925595271255

/-! ## A298625.P12540544953962052277

`A298629(A055999(n)+10)`
-/

namespace A298625.P12540544953962052277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298629 (A055999 n + 10).toNat

end

end A298625.P12540544953962052277

/-! ## A298625.P15201661556979208716

`A298629(A167614(n+2)+1)`
-/

namespace A298625.P15201661556979208716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298629 (A167614 (n + 2) + 1).toNat

end

end A298625.P15201661556979208716

/-!
# A298626: Number of nX5 0..1 arrays with every element equal to 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298626, there is no canonical definition to state claims against.
-/

/-! ## A298626.P14121483299727176497

`A298629(A374005(n+1))`
-/

namespace A298626.P14121483299727176497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298629 (A374005 (n + 1)).toNat

end

end A298626.P14121483299727176497

/-! ## A298626.P16614140733999232240

`A298629(A155212(n)+13)`
-/

namespace A298626.P16614140733999232240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298629 (A155212 n + 13).toNat

end

end A298626.P16614140733999232240

/-! ## A298626.P6970212455840030143

`A298629(A056000(n)+15)`
-/

namespace A298626.P6970212455840030143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298629 (A056000 n + 15).toNat

end

end A298626.P6970212455840030143

/-! ## A298626.P5645692168824679973

`A298629(Δ[A264443(n)])`
-/

namespace A298626.P5645692168824679973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298629 (f1 (n + 1) - f1 n).toNat

end

end A298626.P5645692168824679973

/-! ## A298626.P15907185255180004706

`A298629(A056115(n)+11)`
-/

namespace A298626.P15907185255180004706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298629 (A056115 n + 11).toNat

end

end A298626.P15907185255180004706

/-!
# A298627: Number of nX6 0..1 arrays with every element equal to 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298627, there is no canonical definition to state claims against.
-/

/-! ## A298627.P16286386332424023707

`A298629(A374007(n+1))`
-/

namespace A298627.P16286386332424023707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298629 (A374007 (n + 1)).toNat

end

end A298627.P16286386332424023707

/-! ## A298627.P529839425750953486

`A298629(A000124(n+5)+5)`
-/

namespace A298627.P529839425750953486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298629 (A000124 (n + 5) + 5).toNat

end

end A298627.P529839425750953486

/-! ## A298627.P6353220382887696868

`A298629(eq[6, A002260(n+1)]+1)`
-/

namespace A298627.P6353220382887696868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298629 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A298627.P6353220382887696868

/-! ## A298627.P7623075431019464473

`A298629(eq[3, A219347(n)])`
-/

namespace A298627.P7623075431019464473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298629 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298627.P7623075431019464473

/-! ## A298627.P13866544743981036172

`A298629(eq[5, A193592(n)])`
-/

namespace A298627.P13866544743981036172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298629 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298627.P13866544743981036172

/-!
# A298628: Number of n X 7 0..1 arrays with every element equal to 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298628, there is no canonical definition to state claims against.
-/

/-! ## A298628.P13904151212618937336

`A298629(A374008(n+1))`
-/

namespace A298628.P13904151212618937336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298629 (A374008 (n + 1)).toNat

end

end A298628.P13904151212618937336

/-! ## A298628.P1148614523798774983

`A298629(eq[8, A131818(n+1)])`
-/

namespace A298628.P1148614523798774983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298629 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298628.P1148614523798774983

/-! ## A298628.P17309698723111912364

`A298629(eq[4, A219347(n)])`
-/

namespace A298628.P17309698723111912364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298629 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298628.P17309698723111912364

/-! ## A298628.P601256173173683079

`A298629(eq[6, A193592(n)])`
-/

namespace A298628.P601256173173683079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298629 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298628.P601256173173683079

/-! ## A298628.P2475060909414568814

`A298629(eq[6, A025581(n)]+1)`
-/

namespace A298628.P2475060909414568814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298629 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A298628.P2475060909414568814

/-!
# A298629: T(n,k)=Number of nXk 0..1 arrays with every element equal to 2, 3, 4, 5 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298629, there is no canonical definition to state claims against.
-/

/-! ## A298629.P7696093646449530437

`A127288(A298461(n+1))`
-/

namespace A298629.P7696093646449530437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127288 (A298461 (n + 1)).toNat

end

end A298629.P7696093646449530437

/-! ## A298629.P13234043991489310245

`A299602(n+1)-A121262(A228900(n))`
-/

namespace A298629.P13234043991489310245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299602 (n + 1) - A121262 (A228900 n).toNat

end

end A298629.P13234043991489310245

/-! ## A298629.P1888996740427534661

`A298461(n+1)-A065040(A296548(n))`
-/

namespace A298629.P1888996740427534661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298461 (n + 1) - A065040 (A296548 n).toNat

end

end A298629.P1888996740427534661

/-! ## A298629.P3967178879011343447

`A299334(n+1)-A235943(A297978(n+1))`
-/

namespace A298629.P3967178879011343447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299334 (n + 1) - A235943 (A297978 (n + 1)).toNat

end

end A298629.P3967178879011343447

/-! ## A298629.P9016587721753157131

`A000196(A297978(n+1)*A299334(n+1))`
-/

namespace A298629.P9016587721753157131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A297978 (n + 1) * A299334 (n + 1)).toNat

end

end A298629.P9016587721753157131

/-!
# A298630: Number of n X n 0..1 arrays with every element equal to 0, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298630, there is no canonical definition to state claims against.
-/

/-! ## A298630.P9718092346720066689

`A298635(∑[4*n]+1)`
-/

namespace A298630.P9718092346720066689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298635 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298630.P9718092346720066689

/-! ## A298630.P124702297110978819

`or(char[3], A298635(A001844(n)))`
-/

namespace A298630.P124702297110978819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A298635 (A001844 n).toNat)

end

end A298630.P124702297110978819

/-! ## A298630.P7998323232804626423

`A298635(A001844(n))+A185255(n)`
-/

namespace A298630.P7998323232804626423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298635 (A001844 n).toNat + A185255 n

end

end A298630.P7998323232804626423

/-! ## A298630.P12084529381329764949

`A298635(A001844(n))+A185284(n)`
-/

namespace A298630.P12084529381329764949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298635 (A001844 n).toNat + A185284 n

end

end A298630.P12084529381329764949

/-! ## A298630.P1687062006716344577

`A298635(A001844(n))+A006983(n+1)`
-/

namespace A298630.P1687062006716344577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298635 (A001844 n).toNat + A006983 (n + 1)

end

end A298630.P1687062006716344577

/-!
# A298631: Number of nX4 0..1 arrays with every element equal to 0, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298631, there is no canonical definition to state claims against.
-/

/-! ## A298631.P8393443578988508883

`A297982(n+1)+2%A285943(n)`
-/

namespace A298631.P8393443578988508883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297982 (n + 1) + Int.tmod 2 (A285943 n)

end

end A298631.P8393443578988508883

/-! ## A298631.P6042781853493255585

`A298635(∑[n+3]+7)`
-/

namespace A298631.P6042781853493255585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298635 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298631.P6042781853493255585

/-! ## A298631.P4976731452054476466

`or(char[1], A298635(A000096(n+2)+5))`
-/

namespace A298631.P4976731452054476466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A298635 (A000096 (n + 2) + 5).toNat)

end

end A298631.P4976731452054476466

/-! ## A298631.P1956393584734979456

`A007318(C(2, n))*A298635(A000096(n+2)+5)`
-/

namespace A298631.P1956393584734979456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A298635 (A000096 (n + 2) + 5).toNat

end

end A298631.P1956393584734979456

/-! ## A298631.P17522944028213217004

`A000108(C(2, n+2))*A298635(A000096(n+2)+5)`
-/

namespace A298631.P17522944028213217004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A298635 (A000096 (n + 2) + 5).toNat

end

end A298631.P17522944028213217004

/-!
# A298632: Number of nX5 0..1 arrays with every element equal to 0, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298632, there is no canonical definition to state claims against.
-/

/-! ## A298632.P2234376929113180228

`A298635(A374005(n+1))`
-/

namespace A298632.P2234376929113180228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298635 (A374005 (n + 1)).toNat

end

end A298632.P2234376929113180228

/-! ## A298632.P7659205267466688344

`A298635(A155212(n)+13)`
-/

namespace A298632.P7659205267466688344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298635 (A155212 n + 13).toNat

end

end A298632.P7659205267466688344

/-! ## A298632.P6694285221761361033

`A298635(A056000(n)+15)`
-/

namespace A298632.P6694285221761361033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298635 (A056000 n + 15).toNat

end

end A298632.P6694285221761361033

/-! ## A298632.P16644780222657258166

`A298635(A167614(n+3)+2)`
-/

namespace A298632.P16644780222657258166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298635 (A167614 (n + 3) + 2).toNat

end

end A298632.P16644780222657258166

/-! ## A298632.P8880262238594642602

`A298635(A000124(n+4)+4)`
-/

namespace A298632.P8880262238594642602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298635 (A000124 (n + 4) + 4).toNat

end

end A298632.P8880262238594642602

/-!
# A298633: Number of nX6 0..1 arrays with every element equal to 0, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298633, there is no canonical definition to state claims against.
-/

/-! ## A298633.P13905749351421670999

`A298635(A374007(n+1))`
-/

namespace A298633.P13905749351421670999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298635 (A374007 (n + 1)).toNat

end

end A298633.P13905749351421670999

/-! ## A298633.P9659500098105174564

`A298635(A166136(n+4))`
-/

namespace A298633.P9659500098105174564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298635 (A166136 (n + 4)).toNat

end

end A298633.P9659500098105174564

/-! ## A298633.P5493889873328468992

`A298635(A056115(n)+21)`
-/

namespace A298633.P5493889873328468992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298635 (A056115 n + 21).toNat

end

end A298633.P5493889873328468992

/-! ## A298633.P16794173340502434511

`A298635(Δ[A264443(n)]+10)`
-/

namespace A298633.P16794173340502434511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298635 (f1 (n + 1) - f1 n + 10).toNat

end

end A298633.P16794173340502434511

/-! ## A298633.P1271828899752418744

`A298635(A167614(n+4)+3)`
-/

namespace A298633.P1271828899752418744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298635 (A167614 (n + 4) + 3).toNat

end

end A298633.P1271828899752418744

/-!
# A298634: Number of nX7 0..1 arrays with every element equal to 0, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298634, there is no canonical definition to state claims against.
-/

/-! ## A298634.P4853783300909315772

`A298635(A374008(n+1))`
-/

namespace A298634.P4853783300909315772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298635 (A374008 (n + 1)).toNat

end

end A298634.P4853783300909315772

/-! ## A298634.P5550205385597825675

`A298635(A056119(n)+28)`
-/

namespace A298634.P5550205385597825675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298635 (A056119 n + 28).toNat

end

end A298634.P5550205385597825675

/-! ## A298634.P8352665680595548274

`A298635(A000124(n+6)+6)`
-/

namespace A298634.P8352665680595548274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298635 (A000124 (n + 6) + 6).toNat

end

end A298634.P8352665680595548274

/-! ## A298634.P4062717855515653097

`A298635(A000217(n+6)+7)`
-/

namespace A298634.P4062717855515653097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298635 (A000217 (n + 6) + 7).toNat

end

end A298634.P4062717855515653097

/-! ## A298634.P16730190134134950875

`A298635(A089071(n+8)+5)`
-/

namespace A298634.P16730190134134950875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298635 (A089071 (n + 8) + 5).toNat

end

end A298634.P16730190134134950875

/-!
# A298636: Square array T(m,n) = number of ways to draw m-1 horizontal lines [a(i),b(i)] with 0 <= a(i) < b(i) <= n such that if two lines start or end on the same coordinate, no intermediate line crosses this coordinate (see comments); m, n >= 1.

The programs for A298636, there is no canonical definition to state claims against.
-/

/-! ## A298636.P15323488639736132574

`A225086(A247285(n+1))+A107846(A002531(n))`
-/

namespace A298636.P15323488639736132574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225086 (A247285 (n + 1)).toNat + A107846 (A002531 n).toNat

end

end A298636.P15323488639736132574

/-! ## A298636.P15950194304149773333

`A133567(n+1)^A225641(n)!`
-/

namespace A298636.P15950194304149773333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133567 (n + 1) ^ Nat.factorial (A225641 n).toNat

end

end A298636.P15950194304149773333

/-! ## A298636.P5731695772234539404

`A133567(n+1)^A233543(n)!`
-/

namespace A298636.P5731695772234539404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133567 (n + 1) ^ Nat.factorial (A233543 n).toNat

end

end A298636.P5731695772234539404

/-! ## A298636.P15890453931423706263

`A133567(n+1)^A002262(n)!!`
-/

namespace A298636.P15890453931423706263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133567 (n + 1) ^ Nat.factorial (Nat.factorial (A002262 n).toNat)

end

end A298636.P15890453931423706263

/-! ## A298636.P14654368998438425846

`A133567(n+1)*A194973(A316623(n))`
-/

namespace A298636.P14654368998438425846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133567 (n + 1) * A194973 (A316623 n).toNat

end

end A298636.P14654368998438425846

/-!
# A298637: Triangular array of a Catalan number variety: T(n,k) is the number of words consisting of n parentheses containing k well-balanced pairs.

The programs for A298637, the canonical program `A298637.P8725967472440177117` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298637 has offset 0).

The definition of A298637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298637.P8725967472440177117

`(A082375(n)+1)*A008315(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A298637

/-- `(A082375(n)+1)*A008315(n)` -/
def P8725967472440177117.Spec : Prop :=
  ∀ n, P8725967472440177117.a n = A298637 n

theorem P8725967472440177117.correct : P8725967472440177117.Spec := by
  intro n
  simp only [A298637]

end A298637

/-! ## A298637.P14349493211868252970

`A008315(n)*A122196(n+1)`
-/

namespace A298637.P14349493211868252970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 n * A122196 (n + 1)

end

end A298637.P14349493211868252970

namespace A298637

/-- `A008315(n)*A122196(n+1)` -/
def P14349493211868252970.Spec : Prop :=
  ∀ n, P14349493211868252970.a n = A298637 n

end A298637

/-! ## A298637.P9879804747073286159

`ceil(A152204(n)/2)*A008315(n)`
-/

namespace A298637.P9879804747073286159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A152204 n : ℚ) / 2⌉ * A008315 n

end

end A298637.P9879804747073286159

namespace A298637

/-- `ceil(A152204(n)/2)*A008315(n)` -/
def P9879804747073286159.Spec : Prop :=
  ∀ n, P9879804747073286159.a n = A298637 n

end A298637

/-! ## A298637.P2717741523681587695

`A000463(A152204(n))*A008315(n)`
-/

namespace A298637.P2717741523681587695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A152204 n).toNat * A008315 n

end

end A298637.P2717741523681587695

namespace A298637

/-- `A000463(A152204(n))*A008315(n)` -/
def P2717741523681587695.Spec : Prop :=
  ∀ n, P2717741523681587695.a n = A298637 n

end A298637

/-! ## A298637.P17915050693073865334

`A004736(A056536(n+1))*A008315(n)`
-/

namespace A298637.P17915050693073865334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A056536 (n + 1)).toNat * A008315 n

end

end A298637.P17915050693073865334

namespace A298637

/-- `A004736(A056536(n+1))*A008315(n)` -/
def P17915050693073865334.Spec : Prop :=
  ∀ n, P17915050693073865334.a n = A298637 n

end A298637

/-! ## A298637.P225709092722265972

`A004736(A091018(n)+1)*A008315(n)`
-/

namespace A298637.P225709092722265972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A091018 n + 1).toNat * A008315 n

end

end A298637.P225709092722265972

namespace A298637

/-- `A004736(A091018(n)+1)*A008315(n)` -/
def P225709092722265972.Spec : Prop :=
  ∀ n, P225709092722265972.a n = A298637 n

end A298637

/-! ## A298637.P14189624891602273946

`A009766(A091018(n))*A122196(n+1)`
-/

namespace A298637.P14189624891602273946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (A091018 n).toNat * A122196 (n + 1)

end

end A298637.P14189624891602273946

namespace A298637

/-- `A009766(A091018(n))*A122196(n+1)` -/
def P14189624891602273946.Spec : Prop :=
  ∀ n, P14189624891602273946.a n = A298637 n

end A298637

/-! ## A298637.P13667171408347458658

`A008315(n)*A114327(lt[0, A114327(n)])`
-/

namespace A298637.P13667171408347458658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 n * A114327 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A298637.P13667171408347458658

namespace A298637

/-- `A008315(n)*A114327(lt[0, A114327(n)])` -/
def P13667171408347458658.Spec : Prop :=
  ∀ n, P13667171408347458658.a n = A298637 n

end A298637

/-! ## A298637.P11763391392526136573

`A004736(comp[n²]+n+1)*A008315(n)`
-/

namespace A298637.P11763391392526136573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n + 1) * A008315 n

end

end A298637.P11763391392526136573

namespace A298637

/-- `A004736(comp[n²]+n+1)*A008315(n)` -/
def P11763391392526136573.Spec : Prop :=
  ∀ n, P11763391392526136573.a n = A298637 n

end A298637

/-! ## A298637.P8080380233681357984

`(A025581(comp[n²]+n)+1)*A008315(n)`
-/

namespace A298637.P8080380233681357984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) + 1) * A008315 n

end

end A298637.P8080380233681357984

namespace A298637

/-- `(A025581(comp[n²]+n)+1)*A008315(n)` -/
def P8080380233681357984.Spec : Prop :=
  ∀ n, P8080380233681357984.a n = A298637 n

end A298637

/-! ## A298637.P2172380046706305641

`A008315(n)*A025581(lt[1, A238801(n)])`
-/

namespace A298637.P2172380046706305641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238801 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 n * A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A298637.P2172380046706305641

namespace A298637

/-- `A008315(n)*A025581(lt[1, A238801(n)])` -/
def P2172380046706305641.Spec : Prop :=
  ∀ n, P2172380046706305641.a n = A298637 n

end A298637

/-! ## A298637.P11885559036906384926

`A008315(n)*A130517(A274427(n+1))`
-/

namespace A298637.P11885559036906384926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 n * A130517 (A274427 (n + 1)).toNat

end

end A298637.P11885559036906384926

namespace A298637

/-- `A008315(n)*A130517(A274427(n+1))` -/
def P11885559036906384926.Spec : Prop :=
  ∀ n, P11885559036906384926.a n = A298637 n

end A298637

/-! ## A298637.P607262038864194375

`A008315(n)*A025581(lt[A163626(n+1), 0])`
-/

namespace A298637.P607262038864194375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163626 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 n * A025581 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A298637.P607262038864194375

namespace A298637

/-- `A008315(n)*A025581(lt[A163626(n+1), 0])` -/
def P607262038864194375.Spec : Prop :=
  ∀ n, P607262038864194375.a n = A298637 n

end A298637

/-!
# A298638: Numbers k such that the digital sum of k and the digital root of k have opposite parity.

The programs for A298638, the canonical program `A298638.P11624616744762784382` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298638 has offset 1).

The definition of A298638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298638.P9696524090708353288

`eq[0, A015415(A169805(n))]`
-/

namespace A298638.P9696524090708353288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015415 (A169805 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298638.P9696524090708353288

namespace A298638

/-- `eq[0, A015415(A169805(n))]` -/
def P9696524090708353288.Spec : Prop :=
  ∀ n, (P9696524090708353288.a n : ℤ) = A298638 (n + 1)

end A298638

/-! ## A298638.P11624616744762784382

`eq[1, A179081(n)+A113217(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A298638

/-- `eq[1, A179081(n)+A113217(n)]` -/
def P11624616744762784382.Spec : Prop :=
  ∀ n, (P11624616744762784382.a n : ℤ) = A298638 (n + 1)

theorem P11624616744762784382.correct : P11624616744762784382.Spec := by
  intro n
  simp only [A298638, Nat.add_sub_cancel]

end A298638

/-! ## A298638.P15929122694803273795

`eq[1, A053735(A007953(n)-dr(n))]`
-/

namespace A298638.P15929122694803273795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A007953 n - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298638.P15929122694803273795

namespace A298638

/-- `eq[1, A053735(A007953(n)-dr(n))]` -/
def P15929122694803273795.Spec : Prop :=
  ∀ n, (P15929122694803273795.a n : ℤ) = A298638 (n + 1)

end A298638

/-! ## A298638.P166929728406605450

`eq[A010888(n), A199264(A007953(n))]`
-/

namespace A298638.P166929728406605450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199264 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A298638.P166929728406605450

namespace A298638

/-- `eq[A010888(n), A199264(A007953(n))]` -/
def P166929728406605450.Spec : Prop :=
  ∀ n, (P166929728406605450.a n : ℤ) = A298638 (n + 1)

end A298638

/-! ## A298638.P9121379954159062727

`eq[1, A000035(A010888(n)+A007953(n))]`
-/

namespace A298638.P9121379954159062727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A010888 n + A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298638.P9121379954159062727

namespace A298638

/-- `eq[1, A000035(A010888(n)+A007953(n))]` -/
def P9121379954159062727.Spec : Prop :=
  ∀ n, (P9121379954159062727.a n : ℤ) = A298638 (n + 1)

end A298638

/-! ## A298638.P16726806282578783016

`eq[1, A000035(A007953(n)-A010888(n))]`
-/

namespace A298638.P16726806282578783016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A007953 n - A010888 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298638.P16726806282578783016

namespace A298638

/-- `eq[1, A000035(A007953(n)-A010888(n))]` -/
def P16726806282578783016.Spec : Prop :=
  ∀ n, (P16726806282578783016.a n : ℤ) = A298638 (n + 1)

end A298638

/-! ## A298638.P3689126060998549741

`eq[1, A138471(A061762(10*n))]`
-/

namespace A298638.P3689126060998549741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138471 (A061762 (10 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298638.P3689126060998549741

namespace A298638

/-- `eq[1, A138471(A061762(10*n))]` -/
def P3689126060998549741.Spec : Prop :=
  ∀ n, (P3689126060998549741.a n : ℤ) = A298638 (n + 1)

end A298638

/-! ## A298638.P12877910985457575942

`eq[1, A138471(A062329(10*n))]`
-/

namespace A298638.P12877910985457575942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138471 (A062329 (10 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298638.P12877910985457575942

namespace A298638

/-- `eq[1, A138471(A062329(10*n))]` -/
def P12877910985457575942.Spec : Prop :=
  ∀ n, (P12877910985457575942.a n : ℤ) = A298638 (n + 1)

end A298638

/-! ## A298638.P8652806790749619911

`eq[A031286(n), A341345(A111046(n+1))]`
-/

namespace A298638.P8652806790749619911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341345 (A111046 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A298638.P8652806790749619911

namespace A298638

/-- `eq[A031286(n), A341345(A111046(n+1))]` -/
def P8652806790749619911.Spec : Prop :=
  ∀ n, (P8652806790749619911.a n : ℤ) = A298638 (n + 1)

end A298638

/-! ## A298638.P11837363623090205307

`eq[A031286(n)², A031347(A034051(n+1))]`
-/

namespace A298638.P11837363623090205307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031347 (A034051 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A298638.P11837363623090205307

namespace A298638

/-- `eq[A031286(n)², A031347(A034051(n+1))]` -/
def P11837363623090205307.Spec : Prop :=
  ∀ n, (P11837363623090205307.a n : ℤ) = A298638 (n + 1)

end A298638

/-! ## A298638.P17821686905284090958

`eq[A000034(A019338(n+1)), A031286(n)]`
-/

namespace A298638.P17821686905284090958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A019338 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A298638.P17821686905284090958

namespace A298638

/-- `eq[A000034(A019338(n+1)), A031286(n)]` -/
def P17821686905284090958.Spec : Prop :=
  ∀ n, (P17821686905284090958.a n : ℤ) = A298638 (n + 1)

end A298638

/-! ## A298638.P10666183312891738288

`eq[A031286(n), A064547(A077068(n+1))]`
-/

namespace A298638.P10666183312891738288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A077068 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A298638.P10666183312891738288

namespace A298638

/-- `eq[A031286(n), A064547(A077068(n+1))]` -/
def P10666183312891738288.Spec : Prop :=
  ∀ n, (P10666183312891738288.a n : ℤ) = A298638 (n + 1)

end A298638

/-! ## A298638.P14622206906060611453

`eq[A031286(n), A040080(A110358(n+1))]`
-/

namespace A298638.P14622206906060611453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040080 (A110358 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A298638.P14622206906060611453

namespace A298638

/-- `eq[A031286(n), A040080(A110358(n+1))]` -/
def P14622206906060611453.Spec : Prop :=
  ∀ n, (P14622206906060611453.a n : ℤ) = A298638 (n + 1)

end A298638

/-! ## A298638.P2039895271340809199

`eq[A001316(A165825(n+1)), A031286(n)]`
-/

namespace A298638.P2039895271340809199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A165825 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A298638.P2039895271340809199

namespace A298638

/-- `eq[A001316(A165825(n+1)), A031286(n)]` -/
def P2039895271340809199.Spec : Prop :=
  ∀ n, (P2039895271340809199.a n : ℤ) = A298638 (n + 1)

end A298638

/-! ## A298638.P3357832400103037155

`eq[2, A031286(n)]%A269808(n+1)`
-/

namespace A298638.P3357832400103037155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A269808 (n + 1))

end

end A298638.P3357832400103037155

namespace A298638

/-- `eq[2, A031286(n)]%A269808(n+1)` -/
def P3357832400103037155.Spec : Prop :=
  ∀ n, P3357832400103037155.a n = A298638 (n + 1)

end A298638

/-! ## A298638.P16552105661677548731

`eq[A031286(n), A046523(A001913(2*(n+1)))]`
-/

namespace A298638.P16552105661677548731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A001913 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A298638.P16552105661677548731

namespace A298638

/-- `eq[A031286(n), A046523(A001913(2*(n+1)))]` -/
def P16552105661677548731.Spec : Prop :=
  ∀ n, (P16552105661677548731.a n : ℤ) = A298638 (n + 1)

end A298638

/-! ## A298638.P9589947497941983529

`eq[A020639(A008122(n)), A031286(n)]`
-/

namespace A298638.P9589947497941983529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008122 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A298638.P9589947497941983529

namespace A298638

/-- `eq[A020639(A008122(n)), A031286(n)]` -/
def P9589947497941983529.Spec : Prop :=
  ∀ n, (P9589947497941983529.a n : ℤ) = A298638 (n + 1)

end A298638

/-!
# A298639: Numbers k such that the digital sum of k and the digital root of k have the same parity.

The programs for A298639, the canonical program `A298639.P12281402705215784674` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298639 has offset 1).

The definition of A298639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298639.P12281402705215784674

`comp[A298638(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A298639

/-- `comp[A298638(n+1)]` -/
def P12281402705215784674.Spec : Prop :=
  ∀ n, (P12281402705215784674.a n : ℤ) = A298639 (n + 1)

theorem P12281402705215784674.correct : P12281402705215784674.Spec := by
  intro n
  simp only [A298639, Nat.add_sub_cancel]

end A298639

/-! ## A298639.P12117281882690415416

`eq[A113217(n), A179081(n)]`
-/

namespace A298639.P12117281882690415416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A298639.P12117281882690415416

namespace A298639

/-- `eq[A113217(n), A179081(n)]` -/
def P12117281882690415416.Spec : Prop :=
  ∀ n, (P12117281882690415416.a n : ℤ) = A298639 (n + 1)

end A298639

/-! ## A298639.P12826501835313956291

`eq[A000035(A007953(n)), A113217(n)]`
-/

namespace A298639.P12826501835313956291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113217 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A298639.P12826501835313956291

namespace A298639

/-- `eq[A000035(A007953(n)), A113217(n)]` -/
def P12826501835313956291.Spec : Prop :=
  ∀ n, (P12826501835313956291.a n : ℤ) = A298639 (n + 1)

end A298639

/-! ## A298639.P13675166361107410622

`lt[A143629(A007953(n)), 3]`
-/

namespace A298639.P13675166361107410622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143629 (A007953 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A298639.P13675166361107410622

namespace A298639

/-- `lt[A143629(A007953(n)), 3]` -/
def P13675166361107410622.Spec : Prop :=
  ∀ n, (P13675166361107410622.a n : ℤ) = A298639 (n + 1)

end A298639

/-! ## A298639.P772079545562761177

`lt[A007953(n), A010691(A062324(n+1))]`
-/

namespace A298639.P772079545562761177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010691 (A062324 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A298639.P772079545562761177

namespace A298639

/-- `lt[A007953(n), A010691(A062324(n+1))]` -/
def P772079545562761177.Spec : Prop :=
  ∀ n, (P772079545562761177.a n : ℤ) = A298639 (n + 1)

end A298639

/-! ## A298639.P868008376982160669

`lt[A108773(n), A257981(A005382(n+4))]`
-/

namespace A298639.P868008376982160669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108773 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257981 (A005382 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A298639.P868008376982160669

namespace A298639

/-- `lt[A108773(n), A257981(A005382(n+4))]` -/
def P868008376982160669.Spec : Prop :=
  ∀ n, (P868008376982160669.a n : ℤ) = A298639 (n + 1)

end A298639

/-! ## A298639.P10894827912812087053

`lt[A108773(n), A174257(A067377(3*n+1))]`
-/

namespace A298639.P10894827912812087053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108773 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174257 (A067377 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A298639.P10894827912812087053

namespace A298639

/-- `lt[A108773(n), A174257(A067377(3*n+1))]` -/
def P10894827912812087053.Spec : Prop :=
  ∀ n, (P10894827912812087053.a n : ℤ) = A298639 (n + 1)

end A298639

/-!
# A298640: Number of compositions (ordered partitions) of n^2 into squares > 1.

The programs for A298640, there is no canonical definition to state claims against.
-/

/-! ## A298640.P4141008182591132229

`A280542(A000290(n))`
-/

namespace A298640.P4141008182591132229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280542 (A000290 n).toNat

end

end A298640.P4141008182591132229

/-! ## A298640.P9404999263697789591

`A280542(n²)`
-/

namespace A298640.P9404999263697789591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280542 (n ^ 2)

end

end A298640.P9404999263697789591

/-!
# A298641: Number of partitions of n^3 into cubes > 1.

The programs for A298641, there is no canonical definition to state claims against.
-/

/-! ## A298641.P6236180003988456874

`A078128(A000578(abs(1-n)+1))`
-/

namespace A298641.P6236180003988456874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078128 (A000578 (|1 - (n : ℤ)| + 1).toNat).toNat

end

end A298641.P6236180003988456874

/-! ## A298641.P12798701174731283413

`A008290(lt[A284690(n+1), A264998(3*n)])`
-/

namespace A298641.P12798701174731283413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264998 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A298641.P12798701174731283413

/-!
# A298642: Number of partitions of n^2 into distinct squares > 1.

The programs for A298642, there is no canonical definition to state claims against.
-/

/-! ## A298642.P3441222274010664988

`A280129(A000290(n))`
-/

namespace A298642.P3441222274010664988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280129 (A000290 n).toNat

end

end A298642.P3441222274010664988

/-! ## A298642.P2651077012839375868

`A280129(n²)`
-/

namespace A298642.P2651077012839375868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280129 (n ^ 2)

end

end A298642.P2651077012839375868

/-! ## A298642.P1190795937520537296

`A280129(n*n)%A000032(n)`
-/

namespace A298642.P1190795937520537296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280129 (n * n)) (A000032 n)

end

end A298642.P1190795937520537296

/-! ## A298642.P11755254740706473548

`or(C(2, n)%2, A280129(A253909(n)))`
-/

namespace A298642.P11755254740706473548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((Nat.choose 2 n % 2 : ℕ) : ℤ) (A280129 (A253909 n).toNat)

end

end A298642.P11755254740706473548

/-! ## A298642.P15294792965364850571

`A280129(n*n)+A000007(n+1)`
-/

namespace A298642.P15294792965364850571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280129 (n * n) + A000007 (n + 1)

end

end A298642.P15294792965364850571

/-! ## A298642.P16625326661130125060

`A014963(∑[n+1])*A280129(n*n)`
-/

namespace A298642.P16625326661130125060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ j ∈ Finset.range (n + 1), f1 j) * A280129 (n * n)

end

end A298642.P16625326661130125060

/-! ## A298642.P5002271955776040466

`A280129(n*n)+A008683(8*n+4)`
-/

namespace A298642.P5002271955776040466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280129 (n * n) + A008683 (8 * n + 4)

end

end A298642.P5002271955776040466

/-! ## A298642.P2780198081521338277

`A280129(n*n)+val(A020639(n+2), 4)`
-/

namespace A298642.P2780198081521338277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280129 (n * n) + (SequenceMachineLib.valuation (A020639 (n + 2)).toNat 4 : ℤ)

end

end A298642.P2780198081521338277

/-! ## A298642.P14982552172611413013

`or(and(1, A000010(n+2)), A280129(n*n))`
-/

namespace A298642.P14982552172611413013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.land 1 (A000010 (n + 2))) (A280129 (n * n))

end

end A298642.P14982552172611413013

/-!
# A298644: The indices of the Carlitz compositions (i.e., compositions without adjacent equal parts).

The programs for A298644, there is no canonical definition to state claims against.
-/

/-! ## A298644.P4888476226824529284

`eq[1, A333381(xor(n, floor(n/2)))]`
-/

namespace A298644.P4888476226824529284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298644.P4888476226824529284

/-! ## A298644.P13072695687506092282

`eq[1, A357137(xor(n, floor(n/2)))]`
-/

namespace A298644.P13072695687506092282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357137 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298644.P13072695687506092282

/-! ## A298644.P5286132239684362801

`eq[1, A333381(A003188(n))]`
-/

namespace A298644.P5286132239684362801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A003188 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A298644.P5286132239684362801

/-! ## A298644.P4729080760352093693

`eq[A057427(2*(n+1)), A357137(A003188(n))]`
-/

namespace A298644.P4729080760352093693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357137 (A003188 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A298644.P4729080760352093693

/-!
# A298645: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n having degree of asymmetry k (n >= 1, 0 <= k <= n-1).

The programs for A298645, there is no canonical definition to state claims against.
-/

/-! ## A298645.P17375237063191581027

`A341445(∑[char[∑[n]]]²-n)`
-/

namespace A298645.P17375237063191581027
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341445 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A298645.P17375237063191581027

/-! ## A298645.P9981563799840203940

`and(-1, A341445(A038722(n+1)))`
-/

namespace A298645.P9981563799840203940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A341445 (A038722 (n + 1)).toNat)

end

end A298645.P9981563799840203940

/-! ## A298645.P3997075723201853504

`A341445(A038722(n+1))%A001539(n)`
-/

namespace A298645.P3997075723201853504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341445 (A038722 (n + 1)).toNat) (A001539 n)

end

end A298645.P3997075723201853504

/-! ## A298645.P14038977758134029169

`lcm(A020985(n), A341445(A038722(n+1)))`
-/

namespace A298645.P14038977758134029169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A341445 (A038722 (n + 1)).toNat)

end

end A298645.P14038977758134029169

/-! ## A298645.P8604097545759104377

`A007318(∑[n])*A341445(A038722(n+1))`
-/

namespace A298645.P8604097545759104377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A341445 (A038722 (n + 1)).toNat

end

end A298645.P8604097545759104377

/-! ## A298645.P4697775983405019254

`A341445(A038722(n+1))/A008835(n²+1)`
-/

namespace A298645.P4697775983405019254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341445 (A038722 (n + 1)).toNat : ℚ) / (A008835 (n ^ 2 + 1) : ℚ)

end

end A298645.P4697775983405019254

/-! ## A298645.P3208030253810376993

`A341445(A038722(n+1))^A056926(2*n²)`
-/

namespace A298645.P3208030253810376993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341445 (A038722 (n + 1)).toNat : ℚ) ^ (A056926 (2 * n ^ 2) : ℤ)

end

end A298645.P3208030253810376993

/-! ## A298645.P13118013394522737917

`A341445(A038722(n+1))^(A000040(n+1)%2)`
-/

namespace A298645.P13118013394522737917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341445 (A038722 (n + 1)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A298645.P13118013394522737917

/-! ## A298645.P13301130589418616264

`A341445(A038722(n+1))/A000045(C(n, n²)+1)`
-/

namespace A298645.P13301130589418616264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341445 (A038722 (n + 1)).toNat : ℚ) / (A000045 (Nat.choose n (n ^ 2) + 1) : ℚ)

end

end A298645.P13301130589418616264

/-!
# A298646: a(n) is the sum of the degrees of asymmetry of all Dyck paths of semilength n.

The programs for A298646, there is no canonical definition to state claims against.
-/

/-! ## A298646.P8941921361491126251

`n*(A024417(A149743(n))-1)`
-/

namespace A298646.P8941921361491126251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A024417 (A149743 n).toNat - 1)

end

end A298646.P8941921361491126251

/-! ## A298646.P10943158764807413843

`n*(A156689(A149056(n))-1)`
-/

namespace A298646.P10943158764807413843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A156689 (A149056 n).toNat - 1)

end

end A298646.P10943158764807413843

/-! ## A298646.P1099922412155975075

`n*(A260124(A104383(n))-1)`
-/

namespace A298646.P1099922412155975075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A260124 (A104383 n).toNat - 1)

end

end A298646.P1099922412155975075

/-!
# A298647: Number of Dyck paths of semilength n having maximal degree of asymmetry, namely n-1 for n>2 and 0 otherwise.

The programs for A298647, there is no canonical definition to state claims against.
-/

/-! ## A298647.P13040125470433805312

`A341445(or(A152947(n+1), A326453(n)))`
-/

namespace A298647.P13040125470433805312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341445 (Int.lor (A152947 (n + 1)) (A326453 n)).toNat

end

end A298647.P13040125470433805312

/-!
# A298648: Number of smallest coverings of the n-dipyramidal graph by maximal cliques.

The programs for A298648, the canonical program `A298648.P9302377571345511697` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298648 has offset 3).

The definition of A298648 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298648.P9302377571345511697

`6*a(n-2)-13*a(n-4)+12*a(n-6)-4*a(n-8)` with `a(0)=1, a(1)=4, a(2)=30, a(3)=12, a(4)=98, a(5)=28, a(6)=270, a(7)=60, a(8)=682`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A298648

/-- `6*a(n-2)-13*a(n-4)+12*a(n-6)-4*a(n-8)` -/
def P9302377571345511697.Spec : Prop :=
  ∀ n, P9302377571345511697.a n = A298648 (n + 3)

theorem P9302377571345511697.correct : P9302377571345511697.Spec := by
  intro n
  simp only [A298648, Nat.add_sub_cancel]

end A298648

/-!
# A298649: Number of n X n 0..1 arrays with every element equal to 1, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298649, there is no canonical definition to state claims against.
-/

/-! ## A298649.P13836956371988865930

`A298653(∑[4*n]+1)`
-/

namespace A298649.P13836956371988865930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298653 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298649.P13836956371988865930

/-! ## A298649.P3293468538966032171

`record[A298653(Δ[A235355(n)])]`
-/

namespace A298649.P3293468538966032171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298653 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298649.P3293468538966032171

/-! ## A298649.P5401557571619209671

`record[A298653(A330613(n+1))]`
-/

namespace A298649.P5401557571619209671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298653 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298649.P5401557571619209671

/-! ## A298649.P12366535345534098327

`A298653(A001844(n))+char[15]`
-/

namespace A298649.P12366535345534098327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298653 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298649.P12366535345534098327

/-! ## A298649.P149302332900751979

`record[A003982(n)*A298653(n+1)]`
-/

namespace A298649.P149302332900751979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A298653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298649.P149302332900751979

/-!
# A298650: Number of nX5 0..1 arrays with every element equal to 1, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298650, there is no canonical definition to state claims against.
-/

/-! ## A298650.P1236735057048563396

`A298653(∑[n+4]+11)`
-/

namespace A298650.P1236735057048563396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298653 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A298650.P1236735057048563396

/-! ## A298650.P1606709452596276926

`A298653(A000096(n+3)+6)+char[21]`
-/

namespace A298650.P1606709452596276926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298653 (A000096 (n + 3) + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298650.P1606709452596276926

/-! ## A298650.P4273551204742592782

`A007318(C(2, n))*A298653(A000096(n+3)+6)`
-/

namespace A298650.P4273551204742592782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A298653 (A000096 (n + 3) + 6).toNat

end

end A298650.P4273551204742592782

/-! ## A298650.P6393887394978261803

`A014963(4*n+10)*A298653(A000096(n+3)+6)`
-/

namespace A298650.P6393887394978261803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 10) * A298653 (A000096 (n + 3) + 6).toNat

end

end A298650.P6393887394978261803

/-! ## A298650.P7091066489445282256

`A298653(A000096(n+3)+6)/A007318(C(2, n+2))`
-/

namespace A298650.P7091066489445282256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298653 (A000096 (n + 3) + 6).toNat : ℚ) / (A007318 (Nat.choose 2 (n + 2)) : ℚ)

end

end A298650.P7091066489445282256

/-!
# A298651: Number of nX6 0..1 arrays with every element equal to 1, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298651, there is no canonical definition to state claims against.
-/

/-! ## A298651.P8583126096972056648

`A298653(∑[n+5]+16)`
-/

namespace A298651.P8583126096972056648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298653 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A298651.P8583126096972056648

/-! ## A298651.P3063324709391770437

`A298653(eq[7, A131818(n+1)])%A298652(n+1)`
-/

namespace A298651.P3063324709391770437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A298652 (n + 1))

end

end A298651.P3063324709391770437

/-! ## A298651.P1925520326523180420

`A298653(A052905(n+3))+A025444(n)`
-/

namespace A298651.P1925520326523180420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298653 (A052905 (n + 3)).toNat + A025444 n

end

end A298651.P1925520326523180420

/-! ## A298651.P14600172282969823997

`A298653(A052905(n+3))+A235145(n)`
-/

namespace A298651.P14600172282969823997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298653 (A052905 (n + 3)).toNat + A235145 n

end

end A298651.P14600172282969823997

/-! ## A298651.P1681641994476809312

`A298653(eq[5, A193592(n)])%A016963(n)`
-/

namespace A298651.P1681641994476809312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A016963 n)

end

end A298651.P1681641994476809312

/-!
# A298652: Number of nX7 0..1 arrays with every element equal to 1, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298652, there is no canonical definition to state claims against.
-/

/-! ## A298652.P4936889913339299628

`A298653(A167487(n+5))`
-/

namespace A298652.P4936889913339299628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298653 (A167487 (n + 5)).toNat

end

end A298652.P4936889913339299628

/-! ## A298652.P2080108426743057681

`A298653(A056119(n)+28)`
-/

namespace A298652.P2080108426743057681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298653 (A056119 n + 28).toNat

end

end A298652.P2080108426743057681

/-! ## A298652.P1188872656785560893

`A298653(A167499(n+5)+2)`
-/

namespace A298652.P1188872656785560893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298653 (A167499 (n + 5) + 2).toNat

end

end A298652.P1188872656785560893

/-! ## A298652.P6194608281621557971

`A298653(A000124(n+6)+6)`
-/

namespace A298652.P6194608281621557971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298653 (A000124 (n + 6) + 6).toNat

end

end A298652.P6194608281621557971

/-! ## A298652.P1009461253792102522

`A298653(A000096(n+5)+8)`
-/

namespace A298652.P1009461253792102522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298653 (A000096 (n + 5) + 8).toNat

end

end A298652.P1009461253792102522

/-!
# A298653: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 3, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298653, there is no canonical definition to state claims against.
-/

/-! ## A298653.P17756337085689032409

`A299607(n+1)-A235145(A177944(n))`
-/

namespace A298653.P17756337085689032409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299607 (n + 1) - A235145 (A177944 n).toNat

end

end A298653.P17756337085689032409

/-! ## A298653.P16744629759518927794

`A299607(n+1)-A046660(A220054(n))`
-/

namespace A298653.P16744629759518927794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299607 (n + 1) - A046660 (A220054 n).toNat

end

end A298653.P16744629759518927794

/-! ## A298653.P7276942020911690869

`A299607(n+1)-A025469(A138381(n+1))`
-/

namespace A298653.P7276942020911690869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299607 (n + 1) - A025469 (A138381 (n + 1)).toNat

end

end A298653.P7276942020911690869

/-! ## A298653.P15156950008728131713

`A299607(n+1)-A025469(A080510(n+1))`
-/

namespace A298653.P15156950008728131713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299607 (n + 1) - A025469 (A080510 (n + 1)).toNat

end

end A298653.P15156950008728131713

/-! ## A298653.P13283846989513282630

`A299607(n+1)-A059995(A010894(n))`
-/

namespace A298653.P13283846989513282630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299607 (n + 1) - A059995 (A010894 (n + 21)).toNat

end

end A298653.P13283846989513282630

/-!
# A298655: Number of n X n 0..1 arrays with every element equal to 1, 2, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298655, there is no canonical definition to state claims against.
-/

/-! ## A298655.P12456035613071221574

`A298660(∑[4*n]+1)`
-/

namespace A298655.P12456035613071221574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298660 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298655.P12456035613071221574

/-! ## A298655.P413392889701009945

`record[A298660(Δ[A235355(n)])]`
-/

namespace A298655.P413392889701009945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298660 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298655.P413392889701009945

/-! ## A298655.P11567691915247336258

`and(-1, A298660(A001844(n)))`
-/

namespace A298655.P11567691915247336258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A298660 (A001844 n).toNat)

end

end A298655.P11567691915247336258

/-! ## A298655.P8582418088451580897

`record[A298660(A330613(n+1))]`
-/

namespace A298655.P8582418088451580897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298660 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298655.P8582418088451580897

/-! ## A298655.P5176483443744728779

`record[A003982(n)*A298660(n+1)]`
-/

namespace A298655.P5176483443744728779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A298660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298655.P5176483443744728779

/-!
# A298656: Number of nX4 0..1 arrays with every element equal to 1, 2, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298656, there is no canonical definition to state claims against.
-/

/-! ## A298656.P12382964447170980086

`A298660(∑[n+3]+7)`
-/

namespace A298656.P12382964447170980086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298660 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298656.P12382964447170980086

/-! ## A298656.P13713510427516332909

`A298660(A027379(n+1)+7)+char[30]`
-/

namespace A298656.P13713510427516332909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298660 (A027379 (n + 1) + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298656.P13713510427516332909

/-! ## A298656.P18362149611262856661

`and(1, n)!*A298660(A000217(n+3)+4)`
-/

namespace A298656.P18362149611262856661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.land 1 n) : ℤ) * A298660 (A000217 (n + 3) + 4).toNat

end

end A298656.P18362149611262856661

/-! ## A298656.P17337551014553226511

`(A000041(n)%2)!*A298660(A027379(n+1)+7)`
-/

namespace A298656.P17337551014553226511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A298660 (A027379 (n + 1) + 7).toNat

end

end A298656.P17337551014553226511

/-! ## A298656.P18171591462502412831

`A000108(round(n/39))*A298660(A000217(n+3)+4)`
-/

namespace A298656.P18171591462502412831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.roundAway ((n : ℚ) / 39)).toNat * A298660 (A000217 (n + 3) + 4).toNat

end

end A298656.P18171591462502412831

/-!
# A298657: Number of nX5 0..1 arrays with every element equal to 1, 2, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298657, there is no canonical definition to state claims against.
-/

/-! ## A298657.P9379841424052352503

`A298660(A167499(n+3))`
-/

namespace A298657.P9379841424052352503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298660 (A167499 (n + 3)).toNat

end

end A298657.P9379841424052352503

/-! ## A298657.P8802756581116535594

`A298660(A155212(n)+13)`
-/

namespace A298657.P8802756581116535594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298660 (A155212 n + 13).toNat

end

end A298657.P8802756581116535594

/-! ## A298657.P11808795499532473475

`A298660(A056000(n)+15)`
-/

namespace A298657.P11808795499532473475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298660 (A056000 n + 15).toNat

end

end A298657.P11808795499532473475

/-! ## A298657.P1821582685815178067

`A298660(eq[7, A066657(n)])`
-/

namespace A298657.P1821582685815178067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298657.P1821582685815178067

/-! ## A298657.P340625585504868970

`A298660(A166136(n+3)-1)`
-/

namespace A298657.P340625585504868970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298660 (A166136 (n + 3) - 1).toNat

end

end A298657.P340625585504868970

/-!
# A298658: Number of nX6 0..1 arrays with every element equal to 1, 2, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298658, there is no canonical definition to state claims against.
-/

/-! ## A298658.P9689142738390049387

`A298660(∑[n+5]+16)`
-/

namespace A298658.P9689142738390049387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298660 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A298658.P9689142738390049387

/-! ## A298658.P272001896556070889

`A298660(A000217(n+5)+6)+char[17]`
-/

namespace A298658.P272001896556070889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298660 (A000217 (n + 5) + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298658.P272001896556070889

/-! ## A298658.P6676760788824104755

`A000041(round(n/39))*A298660(A000217(n+5)+6)`
-/

namespace A298658.P6676760788824104755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((n : ℚ) / 39)).toNat * A298660 (A000217 (n + 5) + 6).toNat

end

end A298658.P6676760788824104755

/-! ## A298658.P13164012025614277215

`A298660(A000217(n+5)+6)/A014963(6*(n+2))`
-/

namespace A298658.P13164012025614277215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298660 (A000217 (n + 5) + 6).toNat : ℚ) / (A014963 (6 * (n + 2)) : ℚ)

end

end A298658.P13164012025614277215

/-! ## A298658.P6897228119421583688

`A007318(C(2, n+1))*A298660(A000217(n+5)+6)`
-/

namespace A298658.P6897228119421583688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 1)) * A298660 (A000217 (n + 5) + 6).toNat

end

end A298658.P6897228119421583688

/-!
# A298659: Number of nX7 0..1 arrays with every element equal to 1, 2, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298659, there is no canonical definition to state claims against.
-/

/-! ## A298659.P8733607882182690868

`A298660(A167487(n+5))`
-/

namespace A298659.P8733607882182690868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298660 (A167487 (n + 5)).toNat

end

end A298659.P8733607882182690868

/-! ## A298659.P12208976859948290065

`A298660(A056119(n)+28)`
-/

namespace A298659.P12208976859948290065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298660 (A056119 n + 28).toNat

end

end A298659.P12208976859948290065

/-! ## A298659.P5580671968191078627

`A298660(eq[11, A066657(n)])`
-/

namespace A298659.P5580671968191078627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298659.P5580671968191078627

/-! ## A298659.P5477776159837393481

`A298660(A166136(n+5)+1)`
-/

namespace A298659.P5477776159837393481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298660 (A166136 (n + 5) + 1).toNat

end

end A298659.P5477776159837393481

/-! ## A298659.P18009541753540153536

`A298660(A167499(n+5)+2)`
-/

namespace A298659.P18009541753540153536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298660 (A167499 (n + 5) + 2).toNat

end

end A298659.P18009541753540153536

/-!
# A298660: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298660, there is no canonical definition to state claims against.
-/

/-! ## A298660.P3780795397565416480

`A299612(n+1)+A275966(A094553(n+1))`
-/

namespace A298660.P3780795397565416480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299612 (n + 1) + A275966 (A094553 (n + 1)).toNat

end

end A298660.P3780795397565416480

/-! ## A298660.P8849958647747465658

`A299612(n+1)-A002265(A010894(n))`
-/

namespace A298660.P8849958647747465658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299612 (n + 1) - A002265 (A010894 (n + 21)).toNat

end

end A298660.P8849958647747465658

/-! ## A298660.P5673922023853125741

`A299612(n+1)-and(A010894(n), A155212(n))`
-/

namespace A298660.P5673922023853125741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299612 (n + 1) - Int.land (A010894 (n + 21)) (A155212 n)

end

end A298660.P5673922023853125741

/-! ## A298660.P6168160721146052030

`A299612(n+1)-and(A000096(3*n+4), A010894(n))`
-/

namespace A298660.P6168160721146052030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299612 (n + 1) - Int.land (A000096 (3 * n + 4)) (A010894 (n + 21))

end

end A298660.P6168160721146052030

/-! ## A298660.P14583286654075117337

`A299612(n+1)%A080312(n)`
-/

namespace A298660.P14583286654075117337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299612 (n + 1)) (A080312 n)

end

end A298660.P14583286654075117337

/-!
# A298661: Number of n X n 0..1 arrays with every element equal to 0, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298661, there is no canonical definition to state claims against.
-/

/-! ## A298661.P15009996307990296550

`A298667(∑[4*n]+1)`
-/

namespace A298661.P15009996307990296550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298667 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298661.P15009996307990296550

/-! ## A298661.P3049629277824550664

`A175782(n)*A298667(A001844(n))`
-/

namespace A298661.P3049629277824550664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175782 n * A298667 (A001844 n).toNat

end

end A298661.P3049629277824550664

/-! ## A298661.P17972374319535904

`A298667(A001844(n))*A377060(n)`
-/

namespace A298661.P17972374319535904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298667 (A001844 n).toNat * A377060 n

end

end A298661.P17972374319535904

/-! ## A298661.P9295305918399906408

`A298667(A001844(n))+char[A038011(n)]`
-/

namespace A298661.P9295305918399906408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038011 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298667 (A001844 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A298661.P9295305918399906408

/-! ## A298661.P7986654712579644883

`A298667(A001844(n))%Δ[A002903(n)]`
-/

namespace A298661.P7986654712579644883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298667 (A001844 n).toNat) (f1 (n + 1) - f1 n)

end

end A298661.P7986654712579644883

/-!
# A298662: Number of nX3 0..1 arrays with every element equal to 0, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298662, there is no canonical definition to state claims against.
-/

/-! ## A298662.P4021503974438618828

`A298667(∑[n+2]+4)`
-/

namespace A298662.P4021503974438618828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298667 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298662.P4021503974438618828

/-! ## A298662.P177212924250649890

`A298667(A167614(n+1))+char[21]`
-/

namespace A298662.P177212924250649890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298667 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298662.P177212924250649890

/-! ## A298662.P17039039119675908777

`A298667(A152950(n+3))+char[21]`
-/

namespace A298662.P17039039119675908777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298667 (A152950 (n + 3)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298662.P17039039119675908777

/-! ## A298662.P15033010321998140492

`A298667(A167614(n+1))/A063435(n)`
-/

namespace A298662.P15033010321998140492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298667 (A167614 (n + 1)).toNat : ℚ) / (A063435 n : ℚ)

end

end A298662.P15033010321998140492

/-! ## A298662.P13687354263958282537

`A298667(A167614(n+1))%A001060(n)`
-/

namespace A298662.P13687354263958282537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298667 (A167614 (n + 1)).toNat) (A001060 n)

end

end A298662.P13687354263958282537

/-!
# A298663: Number of nX4 0..1 arrays with every element equal to 0, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298663, there is no canonical definition to state claims against.
-/

/-! ## A298663.P14621175061355142568

`A298667(∑[n+3]+7)`
-/

namespace A298663.P14621175061355142568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298667 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298663.P14621175061355142568

/-! ## A298663.P17141317611668180211

`A298667(A141214(n)+7)+char[22]`
-/

namespace A298663.P17141317611668180211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298667 (A141214 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298663.P17141317611668180211

/-! ## A298663.P15543104904641209261

`A298667(A141214(n)+7)%(7*A000108(n))`
-/

namespace A298663.P15543104904641209261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298667 (A141214 n + 7).toNat) (7 * A000108 n)

end

end A298663.P15543104904641209261

/-! ## A298663.P11300611881229850478

`A007318(C(2, n))*A298667(A141214(n)+7)`
-/

namespace A298663.P11300611881229850478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A298667 (A141214 n + 7).toNat

end

end A298663.P11300611881229850478

/-! ## A298663.P5010673819851838554

`A298667(A141214(n)+7)^A007318(C(n, 64))`
-/

namespace A298663.P5010673819851838554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298667 (A141214 n + 7).toNat : ℚ) ^ (A007318 (Nat.choose n 64) : ℤ)

end

end A298663.P5010673819851838554

/-!
# A298664: Number of nX5 0..1 arrays with every element equal to 0, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298664, there is no canonical definition to state claims against.
-/

/-! ## A298664.P9094629547298351413

`A298667(A167499(n+3))`
-/

namespace A298664.P9094629547298351413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298667 (A167499 (n + 3)).toNat

end

end A298664.P9094629547298351413

/-! ## A298664.P3013160432856982945

`A298667(A155212(n)+13)`
-/

namespace A298664.P3013160432856982945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298667 (A155212 n + 13).toNat

end

end A298664.P3013160432856982945

/-! ## A298664.P490102623767581152

`A298667(A056000(n)+15)`
-/

namespace A298664.P490102623767581152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298667 (A056000 n + 15).toNat

end

end A298664.P490102623767581152

/-! ## A298664.P11643706533175481031

`A298667(eq[7, A066657(n)])`
-/

namespace A298664.P11643706533175481031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298664.P11643706533175481031

/-!
# A298665: Number of nX6 0..1 arrays with every element equal to 0, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298665, there is no canonical definition to state claims against.
-/

/-! ## A298665.P5771899521909672377

`A298667(A166136(n+4))`
-/

namespace A298665.P5771899521909672377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298667 (A166136 (n + 4)).toNat

end

end A298665.P5771899521909672377

/-! ## A298665.P16010406432176450766

`A298667(A167499(n+4)+1)`
-/

namespace A298665.P16010406432176450766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298667 (A167499 (n + 4) + 1).toNat

end

end A298665.P16010406432176450766

/-! ## A298665.P2986771718352292336

`A298667(A167614(n+4)+3)`
-/

namespace A298665.P2986771718352292336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298667 (A167614 (n + 4) + 3).toNat

end

end A298665.P2986771718352292336

/-! ## A298665.P13388108202340609186

`A298667(A000124(n+5)+5)`
-/

namespace A298665.P13388108202340609186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298667 (A000124 (n + 5) + 5).toNat

end

end A298665.P13388108202340609186

/-! ## A298665.P3205162715354003620

`A298667(A000096(n+4)+7)`
-/

namespace A298665.P3205162715354003620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298667 (A000096 (n + 4) + 7).toNat

end

end A298665.P3205162715354003620

/-!
# A298666: Number of nX7 0..1 arrays with every element equal to 0, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298666, there is no canonical definition to state claims against.
-/

/-! ## A298666.P5944341756235718427

`A298667(A056119(n)+28)`
-/

namespace A298666.P5944341756235718427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298667 (A056119 n + 28).toNat

end

end A298666.P5944341756235718427

/-! ## A298666.P17070379564041568484

`A298667(eq[11, A066657(n)])`
-/

namespace A298666.P17070379564041568484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298666.P17070379564041568484

/-! ## A298666.P18163983730744768510

`A298667(A166136(n+5)+1)`
-/

namespace A298666.P18163983730744768510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298667 (A166136 (n + 5) + 1).toNat

end

end A298666.P18163983730744768510

/-! ## A298666.P8532593655619407285

`A298667(A167499(n+5)+2)`
-/

namespace A298666.P8532593655619407285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298667 (A167499 (n + 5) + 2).toNat

end

end A298666.P8532593655619407285

/-! ## A298666.P9989614116084736565

`A298667(A167614(n+5)+4)`
-/

namespace A298666.P9989614116084736565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298667 (A167614 (n + 5) + 4).toNat

end

end A298666.P9989614116084736565

/-!
# A298667: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298667, there is no canonical definition to state claims against.
-/

/-! ## A298667.P9777741171522028456

`A264620(2*A103450(n))`
-/

namespace A298667.P9777741171522028456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264620 (2 * A103450 n).toNat

end

end A298667.P9777741171522028456

/-!
# A298668: Number T(n,k) of set partitions of [n] into k blocks such that the absolute difference between least elements of consecutive blocks is always > 1; triangle T(n,k), n>=0, 0<=k<=ceiling(n/2), read by rows.

The programs for A298668, there is no canonical definition to state claims against.
-/

/-! ## A298668.P7922596898981763490

`A142071(A056536(n+2)-A057427(n))`
-/

namespace A298668.P7922596898981763490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142071 (A056536 (n + 2) - A057427 n).toNat

end

end A298668.P7922596898981763490

/-! ## A298668.P2580786749719919920

`A142071(A057427(n)*A091018(n+1))`
-/

namespace A298668.P2580786749719919920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142071 (A057427 n * A091018 (n + 1)).toNat

end

end A298668.P2580786749719919920

/-! ## A298668.P12496010332803691519

`A142071(A091018(n+1)%A000124(n))`
-/

namespace A298668.P12496010332803691519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142071 (Int.tmod (A091018 (n + 1)) (A000124 n)).toNat

end

end A298668.P12496010332803691519

/-! ## A298668.P5803881798697696706

`A367106(A262992(n+2))`
-/

namespace A298668.P5803881798697696706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367106 (A262992 (n + 2)).toNat

end

end A298668.P5803881798697696706

/-! ## A298668.P8094360611862944644

`A234300(A293815(n*a(n-1)))` with `a(0)=1`
-/

namespace A298668.P8094360611862944644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A234300 (A293815 ((n : ℤ) * a (n - 1)).toNat).toNat

end

end A298668.P8094360611862944644

/-!
# A298671: Number of ordered ways of writing n^3 as a sum of n nonnegative cubes.

The programs for A298671, there is no canonical definition to state claims against.
-/

/-! ## A298671.P12132377855511382905

`A361045(A001465(n))`
-/

namespace A298671.P12132377855511382905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361045 (A001465 n).toNat

end

end A298671.P12132377855511382905

/-! ## A298671.P10357631790696810486

`A064741(A376407(n)+2)`
-/

namespace A298671.P10357631790696810486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064741 (A376407 n + 2).toNat

end

end A298671.P10357631790696810486

/-! ## A298671.P9577398917632561160

`A277193(A246613(n))+n`
-/

namespace A298671.P9577398917632561160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277193 (A246613 n).toNat + (n : ℤ)

end

end A298671.P9577398917632561160

/-!
# A298672: Number of ordered ways of writing n^3 as a sum of n positive cubes.

The programs for A298672, there is no canonical definition to state claims against.
-/

/-! ## A298672.P4532764735094597833

`A026741(and(A052064(2*(n+2)), A292549(n)))`
-/

namespace A298672.P4532764735094597833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.land (A052064 (2 * (n + 2))) (A292549 n)).toNat

end

end A298672.P4532764735094597833

/-!
# A298673: Inverse matrix of A135494.

The programs for A298673, there is no canonical definition to state claims against.
-/

/-! ## A298673.P13198969919394559733

`A225171(n+1)/∏[char[∑[n]]+1]`
-/

namespace A298673.P13198969919394559733
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225171 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A298673.P13198969919394559733

/-! ## A298673.P1438455800729991750

`floor(A225171(n+1)/A140513(n))`
-/

namespace A298673.P1438455800729991750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A225171 (n + 1) : ℚ) / (A140513 n : ℚ)⌋

end

end A298673.P1438455800729991750

/-! ## A298673.P10840531604780200989

`floor(A225171(n+1)/A137688(A080036(n)))`
-/

namespace A298673.P10840531604780200989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A225171 (n + 1) : ℚ) / (A137688 (A080036 n).toNat : ℚ)⌋

end

end A298673.P10840531604780200989

/-! ## A298673.P10423945682235645895

`gcd(A225171(n+1)/A140513(n), A000038(n))`
-/

namespace A298673.P10423945682235645895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A225171 (n + 1) : ℚ) / (A140513 n : ℚ))) (A000038 n)

end

end A298673.P10423945682235645895

/-! ## A298673.P6338683304185566520

`ceil(A225171(A005843(n+1)/2)/A140513(n))`
-/

namespace A298673.P6338683304185566520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A225171 (SequenceMachineLib.roundAway ((A005843 (n + 1) : ℚ) / 2)).toNat : ℚ) / (A140513 n : ℚ)⌉

end

end A298673.P6338683304185566520

/-! ## A298673.P14725755208338972007

`A159075(n+2)+A225171(n+1)/A140513(n)`
-/

namespace A298673.P14725755208338972007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159075 (n + 2) : ℚ) + (A225171 (n + 1) : ℚ) / (A140513 n : ℚ)

end

end A298673.P14725755208338972007

/-! ## A298673.P9280318712643967431

`(A225171(n+1)/A140513(n))%A338893(n+1)`
-/

namespace A298673.P9280318712643967431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A225171 (n + 1) : ℚ) / (A140513 n : ℚ))) (A338893 (n + 1))

end

end A298673.P9280318712643967431

/-! ## A298673.P14014754902612055585

`A168223((-1)^n+1)+A225171(n+1)/A140513(n)`
-/

namespace A298673.P14014754902612055585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168223 ((-1) ^ n + 1).toNat : ℚ) + (A225171 (n + 1) : ℚ) / (A140513 n : ℚ)

end

end A298673.P14014754902612055585

/-! ## A298673.P6626198311047166986

`(A088917(∑[2*n+1])+1)*A225171(n+1)/A140513(n)`
-/

namespace A298673.P6626198311047166986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088917 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 : ℚ) * ((A225171 (n + 1) : ℚ) / (A140513 n : ℚ))

end

end A298673.P6626198311047166986

/-!
# A298675: Rectangular array A: first differences of row entries of array A294099, read by antidiagonals.

The programs for A298675, there is no canonical definition to state claims against.
-/

/-! ## A298675.P2156770906471288286

`A060964((n-comp[∑[n]])²-n)`
-/

namespace A298675.P2156770906471288286
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060964 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - (n : ℤ)).toNat

end

end A298675.P2156770906471288286

/-! ## A298675.P17255897834423094897

`A294099(A133196(n+1)+n)-A294099(n+1)`
-/

namespace A298675.P17255897834423094897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294099 (A133196 (n + 1) + (n : ℤ)).toNat - A294099 (n + 1)

end

end A298675.P17255897834423094897

/-!
# A298677: a(n) = 110*a(n-1) - a(n-2) for n >= 2, a(0)=1, a(1)=111.

The programs for A298677, the canonical program `A298677.P15077443699067316739` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298677 has offset 0).

The definition of A298677 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `110*a(n-1)-a(n-2)` (program `A298677.P15077443699067316739`, by `A298677.P15077443699067316739.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A298677.P15077443699067316739

`110*a(n-1)-a(n-2)` with `a(0)=1, a(1)=111`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A298677

/-- `110*a(n-1)-a(n-2)` -/
def P15077443699067316739.Spec : Prop :=
  ∀ n, P15077443699067316739.a n = A298677 n

theorem P15077443699067316739.correct : P15077443699067316739.Spec := by
  intro n
  simp only [A298677]

end A298677

/-! ## A298677.P725061867623194505

`A041351(4*n+1)`
-/

namespace A298677.P725061867623194505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041351 (4 * n + 1)

end

end A298677.P725061867623194505

namespace A298677

/-- `A041351(4*n+1)` -/
def P725061867623194505.Spec : Prop :=
  ∀ n, P725061867623194505.a n = A298677 n

end A298677

/-! ## A298677.P11241581902441955746

`A350967(n+1)/9`
-/

namespace A298677.P11241581902441955746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350967 (n + 1) : ℚ) / 9

end

end A298677.P11241581902441955746

namespace A298677

/-- `A350967(n+1)/9` -/
def P11241581902441955746.Spec : Prop :=
  ∀ n, P11241581902441955746.a n = (A298677 n : ℚ)

end A298677

/-! ## A298677.P403753603756511970

`A041148(2*n)/9`
-/

namespace A298677.P403753603756511970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041148 (2 * n) : ℚ) / 9

end

end A298677.P403753603756511970

namespace A298677

/-- `A041148(2*n)/9` -/
def P403753603756511970.Spec : Prop :=
  ∀ n, P403753603756511970.a n = (A298677 n : ℚ)

end A298677

/-! ## A298677.P14470002256664647301

`∑[2*A114049(n)]-1`
-/

namespace A298677.P14470002256664647301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A114049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A298677.P14470002256664647301

namespace A298677

/-- `∑[2*A114049(n)]-1` -/
def P14470002256664647301.Spec : Prop :=
  ∀ n, P14470002256664647301.a n = A298677 n

end A298677

/-!
# A298678: Start with the hexagonal tile of the Shield tiling and recursively apply the substitution rule. a(n) is the number of hexagonal tiles after n iterations.

The programs for A298678, the canonical program `A298678.P13311135200692640671` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298678 has offset 0).

The definition of A298678 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298678.P13311135200692640671

`2*a(n-1)+7*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=0, a(2)=7`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A298678

/-- `2*a(n-1)+7*a(n-2)-2*a(n-3)` -/
def P13311135200692640671.Spec : Prop :=
  ∀ n, P13311135200692640671.a n = A298678 n

theorem P13311135200692640671.correct : P13311135200692640671.Spec := by
  intro n
  simp only [A298678]

end A298678

/-! ## A298678.P15105860041705387609

`A001075(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A298678.P15105860041705387609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001075 n - 2 * a (n - 1)

end

end A298678.P15105860041705387609

namespace A298678

/-- `A001075(n)-2*a(n-1)` -/
def P15105860041705387609.Spec : Prop :=
  ∀ n, P15105860041705387609.a n = A298678 n

end A298678

/-! ## A298678.P7440903928566529595

`Δ[A298681(n)/4]`
-/

namespace A298678.P7440903928566529595
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298681 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A298678.P7440903928566529595

namespace A298678

/-- `Δ[A298681(n)/4]` -/
def P7440903928566529595.Spec : Prop :=
  ∀ n, P7440903928566529595.a n = (A298678 n : ℚ)

end A298678

/-! ## A298678.P17202662557188699068

`A003500(n)/2-a(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A298678.P17202662557188699068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A003500 n : ℚ) / 2 - a (n - 1) - a (n - 1)

end

end A298678.P17202662557188699068

namespace A298678

/-- `A003500(n)/2-a(n-1)-a(n-1)` -/
def P17202662557188699068.Spec : Prop :=
  ∀ n, P17202662557188699068.a n = (A298678 n : ℚ)

end A298678

/-! ## A298678.P15796292749824826083

`A298683(n+1)+1-A001075(n)`
-/

namespace A298678.P15796292749824826083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298683 (n + 1) + (1 - A001075 n)

end

end A298678.P15796292749824826083

namespace A298678

/-- `A298683(n+1)+1-A001075(n)` -/
def P15796292749824826083.Spec : Prop :=
  ∀ n, P15796292749824826083.a n = A298678 n

end A298678

/-!
# A298679: Start with the hexagonal tile of the Shield tiling and recursively apply the substitution rule. a(n) is the number of square tiles after n iterations.

The programs for A298679, the canonical program `A298679.P10254205681485100619` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298679 has offset 0).

The definition of A298679 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298679.P10254205681485100619

`2*a(n-1)+7*a(n-2)-2*a(n-3)` with `a(0)=0, a(1)=3, a(2)=6`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A298679

/-- `2*a(n-1)+7*a(n-2)-2*a(n-3)` -/
def P10254205681485100619.Spec : Prop :=
  ∀ n, P10254205681485100619.a n = A298679 n

theorem P10254205681485100619.correct : P10254205681485100619.Spec := by
  intro n
  simp only [A298679]

end A298679

/-! ## A298679.P5913211566645360089

`A001353(n)-a(n-1)+A052530(n)-a(n-1)` with `a(0)=0`
-/

namespace A298679.P5913211566645360089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001353 n - a (n - 1) + (A052530 n - a (n - 1))

end

end A298679.P5913211566645360089

namespace A298679

/-- `A001353(n)-a(n-1)+A052530(n)-a(n-1)` -/
def P5913211566645360089.Spec : Prop :=
  ∀ n, P5913211566645360089.a n = A298679 n

end A298679

/-! ## A298679.P7512819967725939228

`A048788(2*n)-a(n-1)+A001353(n)-a(n-1)` with `a(0)=0`
-/

namespace A298679.P7512819967725939228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A048788 (2 * n) - a (n - 1) + (A001353 n - a (n - 1))

end

end A298679.P7512819967725939228

namespace A298679

/-- `A048788(2*n)-a(n-1)+A001353(n)-a(n-1)` -/
def P7512819967725939228.Spec : Prop :=
  ∀ n, P7512819967725939228.a n = A298679 n

end A298679

/-! ## A298679.P1638213930152783180

`A254308(3*n)-a(n-1)+A001353(n)-a(n-1)` with `a(0)=0`
-/

namespace A298679.P1638213930152783180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A254308 (3 * n) - a (n - 1) + (A001353 n - a (n - 1))

end

end A298679.P1638213930152783180

namespace A298679

/-- `A254308(3*n)-a(n-1)+A001353(n)-a(n-1)` -/
def P1638213930152783180.Spec : Prop :=
  ∀ n, P1638213930152783180.a n = A298679 n

end A298679

/-! ## A298679.P9037750210459858574

`A005320(n)-2*a(n-1)` with `a(0)=0`
-/

namespace A298679.P9037750210459858574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005320 n - 2 * a (n - 1)

end

end A298679.P9037750210459858574

namespace A298679

/-- `A005320(n)-2*a(n-1)` -/
def P9037750210459858574.Spec : Prop :=
  ∀ n, P9037750210459858574.a n = A298679 n

end A298679

/-! ## A298679.P3255978507650497452

`3*A001353(n)-2*a(n-1)` with `a(0)=0`
-/

namespace A298679.P3255978507650497452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * A001353 n - 2 * a (n - 1)

end

end A298679.P3255978507650497452

namespace A298679

/-- `3*A001353(n)-2*a(n-1)` -/
def P3255978507650497452.Spec : Prop :=
  ∀ n, P3255978507650497452.a n = A298679 n

end A298679

/-! ## A298679.P11496514459047884089

`A001075(n+1)-Δ[A298682(n+1)]`
-/

namespace A298679.P11496514459047884089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 (n + 1) - (f1 (n + 1) - f1 n)

end

end A298679.P11496514459047884089

namespace A298679

/-- `A001075(n+1)-Δ[A298682(n+1)]` -/
def P11496514459047884089.Spec : Prop :=
  ∀ n, P11496514459047884089.a n = A298679 n

end A298679

/-! ## A298679.P7606745522729607657

`Δ[A298683(n+1)/4]`
-/

namespace A298679.P7606745522729607657
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298683 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A298679.P7606745522729607657

namespace A298679

/-- `Δ[A298683(n+1)/4]` -/
def P7606745522729607657.Spec : Prop :=
  ∀ n, P7606745522729607657.a n = (A298679 n : ℚ)

end A298679

/-!
# A298680: Start with the triangle with 4 markings of the Shield tiling and recursively apply the substitution rule. a(n) is the number of triangles with 6 markings after n iterations.

The programs for A298680, the canonical program `A298680.P1866899019783736132` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298680 has offset 0).

The definition of A298680 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298680.P1866899019783736132

`3*a(n-1)+5*a(n-2)-9*a(n-3)+2*a(n-4)` with `a(0)=0, a(1)=0, a(2)=4, a(3)=12`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A298680

/-- `3*a(n-1)+5*a(n-2)-9*a(n-3)+2*a(n-4)` -/
def P1866899019783736132.Spec : Prop :=
  ∀ n, P1866899019783736132.a n = A298680 n

theorem P1866899019783736132.correct : P1866899019783736132.Spec := by
  intro n
  simp only [A298680]

end A298680

/-! ## A298680.P1820611804526205979

`∑[Δ[A298683(n)]/3]`
-/

namespace A298680.P1820611804526205979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298683 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298680.P1820611804526205979

namespace A298680

/-- `∑[Δ[A298683(n)]/3]` -/
def P1820611804526205979.Spec : Prop :=
  ∀ n, P1820611804526205979.a n = (A298680 n : ℚ)

end A298680

/-! ## A298680.P7015302395001909039

`floor(A298683(n+1)/3)`
-/

namespace A298680.P7015302395001909039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A298683 (n + 1) : ℚ) / 3⌋

end

end A298680.P7015302395001909039

namespace A298680

/-- `floor(A298683(n+1)/3)` -/
def P7015302395001909039.Spec : Prop :=
  ∀ n, P7015302395001909039.a n = A298680 n

end A298680

/-! ## A298680.P10020519524329965816

`round(A298683(n+1)/3)%A041111(n)`
-/

namespace A298680.P10020519524329965816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A298683 (n + 1) : ℚ) / 3)) (A041111 n)

end

end A298680.P10020519524329965816

namespace A298680

/-- `round(A298683(n+1)/3)%A041111(n)` -/
def P10020519524329965816.Spec : Prop :=
  ∀ n, P10020519524329965816.a n = A298680 n

end A298680

/-!
# A298681: Start with the square tile of the Shield tiling and recursively apply the substitution rule. a(n) is the number of triangles with 6 markings after n iterations.

The programs for A298681, the canonical program `A298681.P10469199238310320272` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298681 has offset 0).

The definition of A298681 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298681.P10469199238310320272

`3*a(n-1)+5*a(n-2)-9*a(n-3)+2*a(n-4)` with `a(0)=0, a(1)=4, a(2)=4, a(3)=32`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A298681

/-- `3*a(n-1)+5*a(n-2)-9*a(n-3)+2*a(n-4)` -/
def P10469199238310320272.Spec : Prop :=
  ∀ n, P10469199238310320272.a n = A298681 n

theorem P10469199238310320272.correct : P10469199238310320272.Spec := by
  intro n
  simp only [A298681]

end A298681

/-! ## A298681.P14042212247652908879

`A298682(n+1)+A140962(n+3)-A140962(n+1)`
-/

namespace A298681.P14042212247652908879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298682 (n + 1) + (A140962 (n + 3) - A140962 (n + 1))

end

end A298681.P14042212247652908879

namespace A298681

/-- `A298682(n+1)+A140962(n+3)-A140962(n+1)` -/
def P14042212247652908879.Spec : Prop :=
  ∀ n, P14042212247652908879.a n = A298681 n

end A298681

/-! ## A298681.P9989445331239110403

`Δ[A298680(n)]-A298680(n)`
-/

namespace A298681.P9989445331239110403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A298680 n

end

end A298681.P9989445331239110403

namespace A298681

/-- `Δ[A298680(n)]-A298680(n)` -/
def P9989445331239110403.Spec : Prop :=
  ∀ n, P9989445331239110403.a n = A298681 n

end A298681

/-! ## A298681.P7841596846173720861

`A298680(n+1)-2*A298680(n)`
-/

namespace A298681.P7841596846173720861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298680 (n + 1) - 2 * A298680 n

end

end A298681.P7841596846173720861

namespace A298681

/-- `A298680(n+1)-2*A298680(n)` -/
def P7841596846173720861.Spec : Prop :=
  ∀ n, P7841596846173720861.a n = A298681 n

end A298681

/-! ## A298681.P15084047257420396984

`record[A298680(A009947(n))]-2*A298680(n)`
-/

namespace A298681.P15084047257420396984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298680 (A009947 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2 * A298680 n

end

end A298681.P15084047257420396984

namespace A298681

/-- `record[A298680(A009947(n))]-2*A298680(n)` -/
def P15084047257420396984.Spec : Prop :=
  ∀ n, P15084047257420396984.a n = A298681 n

end A298681

/-!
# A298682: Start with the triangle with 4 markings of the Shield tiling and recursively apply the substitution rule. a(n) is the number of triangles with 4 markings after n iterations.

The programs for A298682, the canonical program `A298682.P10559095343807076967` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298682 has offset 0).

The definition of A298682 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298682.P10559095343807076967

`3*a(n-1)+5*a(n-2)-9*a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A298682

/-- `3*a(n-1)+5*a(n-2)-9*a(n-3)+2*a(n-4)` -/
def P10559095343807076967.Spec : Prop :=
  ∀ n, P10559095343807076967.a n = A298682 n

theorem P10559095343807076967.correct : P10559095343807076967.Spec := by
  intro n
  simp only [A298682]

end A298682

/-! ## A298682.P14012110010486129741

`A048865(A354120(n))+1`
-/

namespace A298682.P14012110010486129741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A354120 n).toNat + 1

end

end A298682.P14012110010486129741

namespace A298682

/-- `A048865(A354120(n))+1` -/
def P14012110010486129741.Spec : Prop :=
  ∀ n, P14012110010486129741.a n = A298682 n

end A298682

/-! ## A298682.P16312143319485297574

`A228354(A386569(n+1))`
-/

namespace A298682.P16312143319485297574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228354 (A386569 (n + 1)).toNat

end

end A298682.P16312143319485297574

namespace A298682

/-- `A228354(A386569(n+1))` -/
def P16312143319485297574.Spec : Prop :=
  ∀ n, P16312143319485297574.a n = A298682 n

end A298682

/-!
# A298683: Start with the square tile of the Shield tiling and recursively apply the substitution rule. a(n) is the number of squares after n iterations.

The programs for A298683, the canonical program `A298683.P6496434122446322999` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298683 has offset 0).

The definition of A298683 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298683.P6496434122446322999

`3*a(n-1)+5*a(n-2)-9*a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=13`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A298683

/-- `3*a(n-1)+5*a(n-2)-9*a(n-3)+2*a(n-4)` -/
def P6496434122446322999.Spec : Prop :=
  ∀ n, P6496434122446322999.a n = A298683 n

theorem P6496434122446322999.correct : P6496434122446322999.Spec := by
  intro n
  simp only [A298683]

end A298683

/-! ## A298683.P811649225713779368

`Δ[A298682(n)]+1-A298682(n)`
-/

namespace A298683.P811649225713779368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (1 - A298682 n)

end

end A298683.P811649225713779368

namespace A298683

/-- `Δ[A298682(n)]+1-A298682(n)` -/
def P811649225713779368.Spec : Prop :=
  ∀ n, P811649225713779368.a n = A298683 n

end A298683

/-! ## A298683.P13175205844190800605

`A005408(A000244(n)-A004667(n))`
-/

namespace A298683.P13175205844190800605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A000244 n - A004667 n).toNat

end

end A298683.P13175205844190800605

namespace A298683

/-- `A005408(A000244(n)-A004667(n))` -/
def P13175205844190800605.Spec : Prop :=
  ∀ n, P13175205844190800605.a n = A298683 n

end A298683

/-!
# A298684: Numbers i such that Fibonacci(i) is divisible by i, i+1, and i+2.

The programs for A298684, there is no canonical definition to state claims against.
-/

/-! ## A298684.P16357380708344488743

`A217738(lt[A305939(3*(n+1)), A006852(n+1)])`
-/

namespace A298684.P16357380708344488743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305939 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006852 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217738 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A298684.P16357380708344488743

/-!
# A298685: Numbers i such that Fibonacci(i) is divisible by i, i+1, i+2, and i+3.

The programs for A298685, there is no canonical definition to state claims against.
-/

/-! ## A298685.P16164208498992651329

`∩[A008486(A100992(n+1)), A298684(n+1)]`
-/

namespace A298685.P16164208498992651329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A100992 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298685.P16164208498992651329

/-!
# A298688: a(n) is the least i such that Fibonacci(i) is divisible by i+k for all k=0..n.

The programs for A298688, there is no canonical definition to state claims against.
-/

/-! ## A298688.P13096178151647377930

`A141766(or(A000629(n), A072797(3*n+1)))`
-/

namespace A298688.P13096178151647377930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141766 (Int.lor (A000629 n) (A072797 (3 * n + 1))).toNat

end

end A298688.P13096178151647377930

/-!
# A298689: G.f. A(x) satisfies: A(x) = Sum_{n>=0} binomial( n^2, n) * x^n / A(x)^( n^2 ).

The programs for A298689, there is no canonical definition to state claims against.
-/

/-! ## A298689.P12940084830391031637

`A314373(C(∑[n], n+1))`
-/

namespace A298689.P12940084830391031637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314373 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1))

end

end A298689.P12940084830391031637

/-!
# A298690: G.f. A(x) satisfies: A(x) = Sum_{n>=0} binomial( n*(n+1)/2, n) * x^n / A(x)^( n*(n+1)/2 ).

The programs for A298690, there is no canonical definition to state claims against.
-/

/-! ## A298690.P12634467318624965961

`ceil(A004525(n^n+floor(2^(n-1))+1)/ϕ)`
-/

namespace A298690.P12634467318624965961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004525 ((n ^ n : ℤ) + (⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1)).toNat : ℝ) / Real.goldenRatio⌉

end

end A298690.P12634467318624965961

/-! ## A298690.P13893651072236682028

`A019446(A119392(n))`
-/

namespace A298690.P13893651072236682028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (A119392 n).toNat

end

end A298690.P13893651072236682028

/-!
# A298691: G.f. A(x) satisfies: A(x) = Sum_{n>=0} binomial( n*(n+1)/2, n) * x^n / A(x)^( n*(n-1)/2 ).

The programs for A298691, there is no canonical definition to state claims against.
-/

/-! ## A298691.P2640793026291731425

`A260731(A038180(n+1)+n)`
-/

namespace A298691.P2640793026291731425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260731 (A038180 (n + 1) + (n : ℤ)).toNat

end

end A298691.P2640793026291731425

/-! ## A298691.P15759620760746449470

`A004526(A290579(n)+A198860(n))`
-/

namespace A298691.P15759620760746449470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A290579 n + A198860 n).toNat

end

end A298691.P15759620760746449470

/-!
# A298692: G.f. A(x) satisfies: 1 = Sum_{n>=0} binomial( n*(n+1), n)/(n+1) * x^n / A(x)^( (n+1)^2 ).

The programs for A298692, there is no canonical definition to state claims against.
-/

/-! ## A298692.P1958899408722697856

`or(A107607(A213091(n+1)), A180835(n+1))`
-/

namespace A298692.P1958899408722697856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A107607 (A213091 (n + 1)).toNat) (A180835 (n + 1))

end

end A298692.P1958899408722697856

/-! ## A298692.P2827458825079498633

`or(A010054(3*(n+1)), A107607(A213091(n+1)))`
-/

namespace A298692.P2827458825079498633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (3 * (n + 1))) (A107607 (A213091 (n + 1)).toNat)

end

end A298692.P2827458825079498633

/-!
# A298693: G.f. A(x) satisfies: A(x) = Sum_{n>=0} binomial( n*(n+1), n)/(n+1) * x^n / A(x)^( n*(n+1) ).

The programs for A298693, there is no canonical definition to state claims against.
-/

/-! ## A298693.P3384047120534276936

`A004211(n)*A299966(A293737(n))`
-/

namespace A298693.P3384047120534276936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004211 n * A299966 (A293737 n).toNat

end

end A298693.P3384047120534276936

/-!
# A298694: G.f. A(x) satisfies: A(x) = Sum_{n>=0} binomial( n*(n+1), n)/(n+1) * x^n / A(x)^(n^2).

The programs for A298694, there is no canonical definition to state claims against.
-/

/-! ## A298694.P13296570018613092227

`419%p?[A031148(n+1)]`
-/

namespace A298694.P13296570018613092227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 419 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A298694.P13296570018613092227

/-!
# A298695: G.f.: Sum_{n>=0} binomial(n^2, n) * x^n / (1 + x)^(n^2).

The programs for A298695, there is no canonical definition to state claims against.
-/

/-! ## A298695.P8551015649252434116

`A139252(A213096(n))`
-/

namespace A298695.P8551015649252434116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139252 (A213096 n).toNat

end

end A298695.P8551015649252434116

/-!
# A298696: G.f.: Sum_{n>=0} binomial(n*(n+1), n)/(n+1) * x^n / (1 + x)^(n*(n+1)).

The programs for A298696, there is no canonical definition to state claims against.
-/

/-! ## A298696.P12132646336647022142

`A152406(2*n²)`
-/

namespace A298696.P12132646336647022142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152406 (2 * n ^ 2)

end

end A298696.P12132646336647022142

/-!
# A298697: E.g.f. A(x) satisfies: 1 = Sum_{n>=0} (n+1)^(2*(n-1)) * x^n/n! / A(x)^((n+1)^2).

The programs for A298697, there is no canonical definition to state claims against.
-/

/-! ## A298697.P1454619224654445348

`A351033(∑[ceil(sqrt(n))]!)`
-/

namespace A298697.P1454619224654445348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351033 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A298697.P1454619224654445348

/-!
# A298698: G.f. A(x) satisfies: A(x) = Sum_{n>=0} Series_Reversion( x/A(x)^n )^n.

The programs for A298698, there is no canonical definition to state claims against.
-/

/-! ## A298698.P9261788085871916982

`or(A005840(n), A052375(A005840(n)))`
-/

namespace A298698.P9261788085871916982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005840 n) (A052375 (A005840 n).toNat)

end

end A298698.P9261788085871916982

/-! ## A298698.P4231949682070166657

`or(A005840(n), A338333(A304914(n)))`
-/

namespace A298698.P4231949682070166657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005840 n) (A338333 (A304914 n).toNat)

end

end A298698.P4231949682070166657

/-! ## A298698.P13041395242025829535

`or(A005840(n), A294141(A092309(n+1)))`
-/

namespace A298698.P13041395242025829535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005840 n) (A294141 (A092309 (n + 1)).toNat)

end

end A298698.P13041395242025829535

