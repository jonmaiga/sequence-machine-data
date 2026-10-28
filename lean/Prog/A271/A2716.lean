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
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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
# A271600: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 390", based on the 5-celled von Neumann neighborhood.

The programs for A271600, there is no canonical definition to state claims against.
-/

/-! ## A271600.P5630187953807587163

`∑[A271601(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A271600.P5630187953807587163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A271601 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271600.P5630187953807587163

/-! ## A271600.P10814461492374309421

`∑[∑[A271601(n)]+1-A271601(n)]`
-/

namespace A271600.P10814461492374309421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271601 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A271601 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271600.P10814461492374309421

/-! ## A271600.P1182683943659100558

`∑[A271598(n)]`
-/

namespace A271600.P1182683943659100558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271600.P1182683943659100558

/-! ## A271600.P18306603642499035257

`∑[A181385(A016825(n))-A273299(n)]`
-/

namespace A271600.P18306603642499035257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A273299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271600.P18306603642499035257

/-! ## A271600.P14404381331225363166

`A273316(n)+1-A273301(n)+n`
-/

namespace A271600.P14404381331225363166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273316 n + (1 - A273301 n + (n : ℤ))

end

end A271600.P14404381331225363166

/-! ## A271600.P7612055770792615996

`A271598(n)+a(A259361(n²))` with `a(0)=1`
-/

namespace A271600.P7612055770792615996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271598 n + a (A259361 (n ^ 2)).toNat

end

end A271600.P7612055770792615996

/-!
# A271601: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 390", based on the 5-celled von Neumann neighborhood.

The programs for A271601, there is no canonical definition to state claims against.
-/

/-! ## A271601.P4298831409115485642

`Δ[A271598(n)]`
-/

namespace A271601.P4298831409115485642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271601.P4298831409115485642

/-! ## A271601.P10204927509040053947

`A271598(n+1)-A271598(n)`
-/

namespace A271601.P10204927509040053947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271598 (n + 1) - A271598 n

end

end A271601.P10204927509040053947

/-! ## A271601.P3989010297600334685

`A017353(n)-(A273303(n)+A004273(n))`
-/

namespace A271601.P3989010297600334685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n - (A273303 n + A004273 n)

end

end A271601.P3989010297600334685

/-! ## A271601.P10624514425943049611

`Δ[A181385(A016825(n))-A273299(n)]`
-/

namespace A271601.P10624514425943049611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A273299 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271601.P10624514425943049611

/-! ## A271601.P18262774456238513891

`Δ[A181385(A016825(n))]-A273303(n)`
-/

namespace A271601.P18262774456238513891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273303 n

end

end A271601.P18262774456238513891

/-!
# A271602: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 393", based on the 5-celled von Neumann neighborhood.

The programs for A271602, there is no canonical definition to state claims against.
-/

/-! ## A271602.P13847233613226150154

`∑[A271605(abs(1-n))]`
-/

namespace A271602.P13847233613226150154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271605 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271602.P13847233613226150154

/-! ## A271602.P12391514396989345195

`A271605(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271602.P12391514396989345195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271605 (n - 1) + a (n - 1)

end

end A271602.P12391514396989345195

/-! ## A271602.P17374314667442009754

`Δ[A271604(n)]-A271605(n)`
-/

namespace A271602.P17374314667442009754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271605 n

end

end A271602.P17374314667442009754

/-! ## A271602.P12721851134919436727

`A271604(n+1)-(A271605(n)+A271604(n))`
-/

namespace A271602.P12721851134919436727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271604 (n + 1) - (A271605 n + A271604 n)

end

end A271602.P12721851134919436727

/-! ## A271602.P7642764020939607284

`A020725(∑[A271605(n)])-A271605(n)`
-/

namespace A271602.P7642764020939607284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A271605 n

end

end A271602.P7642764020939607284

/-!
# A271603: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 393", based on the 5-celled von Neumann neighborhood.

The programs for A271603, there is no canonical definition to state claims against.
-/

/-! ## A271603.P2943185575193261603

`A271602(2^n-1)`
-/

namespace A271603.P2943185575193261603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271602 (2 ^ n - 1)

end

end A271603.P2943185575193261603

/-! ## A271603.P15352961780960184612

`record[A271602(A091264(n))]`
-/

namespace A271603.P15352961780960184612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271602 (A091264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271603.P15352961780960184612

/-! ## A271603.P14276245694767016037

`record[A271602(A173787(n))]`
-/

namespace A271603.P14276245694767016037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271602 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271603.P14276245694767016037

/-! ## A271603.P4395241327944463549

`record[A271602(A252756(n+1))]`
-/

namespace A271603.P4395241327944463549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271602 (A252756 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271603.P4395241327944463549

/-! ## A271603.P1101694497682346500

`record[A271602(A323243(n+1))]`
-/

namespace A271603.P1101694497682346500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271602 (A323243 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271603.P1101694497682346500

/-!
# A271604: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 393", based on the 5-celled von Neumann neighborhood.

The programs for A271604, there is no canonical definition to state claims against.
-/

/-! ## A271604.P18050926977531566343

`∑[A271602(n)]`
-/

namespace A271604.P18050926977531566343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271604.P18050926977531566343

/-! ## A271604.P4727710381275025270

`∑[∑[A271605(abs(1-n))]]`
-/

namespace A271604.P4727710381275025270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271605 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271604.P4727710381275025270

/-! ## A271604.P4745580118010166439

`A271602(n%(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A271604.P4745580118010166439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271602 (n % (n + 1)) + a (n - 1)

end

end A271604.P4745580118010166439

/-! ## A271604.P245074776348416618

`A271602(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A271604.P245074776348416618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271602 n + a (A023443 n).toNat

end

end A271604.P245074776348416618

/-! ## A271604.P14081533007212434554

`a(n-1)+A271602(n)%A017320(n)` with `a(0)=1`
-/

namespace A271604.P14081533007212434554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A271602 n) (A017320 n)

end

end A271604.P14081533007212434554

/-!
# A271605: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 393", based on the 5-celled von Neumann neighborhood.

The programs for A271605, there is no canonical definition to state claims against.
-/

/-! ## A271605.P17840674191782452920

`Δ[A271602(n)]`
-/

namespace A271605.P17840674191782452920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271605.P17840674191782452920

/-! ## A271605.P5424374122335584852

`A271602(n+1)-A271602(n)`
-/

namespace A271605.P5424374122335584852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271602 (n + 1) - A271602 n

end

end A271605.P5424374122335584852

/-! ## A271605.P6896523715049336383

`A271602(n+1)+A271602(n)/A057428(n+1)`
-/

namespace A271605.P6896523715049336383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271602 (n + 1) : ℚ) + (A271602 n : ℚ) / (A057428 (n + 1) : ℚ)

end

end A271605.P6896523715049336383

/-! ## A271605.P6704929342698911604

`A271602(n+1)+A001478(A271602(n)+1)+1`
-/

namespace A271605.P6704929342698911604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271602 (n + 1) + A001478 (A271602 n + 1).toNat + 1

end

end A271605.P6704929342698911604

/-! ## A271605.P11054720327243737805

`A271602(n+1)+A001489(A271602(n)+1)+1`
-/

namespace A271605.P11054720327243737805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271602 (n + 1) + (A001489 (A271602 n + 1).toNat + 1)

end

end A271605.P11054720327243737805

/-!
# A271606: Number of numbers k such that sigma_e(k) = n for some e > 0.

The programs for A271606, there is no canonical definition to state claims against.
-/

/-! ## A271606.P1791848319061365445

`A054973(n+1)^A238123(A293113(n))`
-/

namespace A271606.P1791848319061365445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054973 (n + 1) : ℚ) ^ (A238123 (A293113 n).toNat : ℤ)

end

end A271606.P1791848319061365445

/-! ## A271606.P12846901662919103662

`Δ[A074753(n+1)]^A238123(A293113(n))`
-/

namespace A271606.P12846901662919103662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074753 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A238123 (A293113 n).toNat : ℤ)

end

end A271606.P12846901662919103662

/-! ## A271606.P10835963333433869870

`A238123(A141214(A056576(n))%A130330(n))`
-/

namespace A271606.P10835963333433869870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 (Int.tmod (A141214 (A056576 n).toNat) (A130330 n)).toNat

end

end A271606.P10835963333433869870

/-! ## A271606.P16727892781261335745

`(A074753(n+2)-A074753(n+1))^A238123(A293113(n))`
-/

namespace A271606.P16727892781261335745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074753 (n + 2) - A074753 (n + 1) : ℚ) ^ (A238123 (A293113 n).toNat : ℤ)

end

end A271606.P16727892781261335745

/-! ## A271606.P17071572627001849156

`A008611(A170969(3*n+2)*A221857(n))`
-/

namespace A271606.P17071572627001849156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A170969 (3 * n + 2) * A221857 n).toNat

end

end A271606.P17071572627001849156

/-!
# A271607: Number of set partitions of [2n+1] such that n+1 is the largest element of the last block.

The programs for A271607, there is no canonical definition to state claims against.
-/

/-! ## A271607.P7491252746953950525

`A271466((n+1)²+n²)`
-/

namespace A271607.P7491252746953950525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271466 ((n + 1) ^ 2 + n ^ 2)

end

end A271607.P7491252746953950525

/-! ## A271607.P3196375112233854455

`gcd(A000038(n), A271466(A001844(n)))`
-/

namespace A271607.P3196375112233854455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A271466 (A001844 n).toNat)

end

end A271607.P3196375112233854455

/-! ## A271607.P594442547933821286

`or(A000007(n), A271466(A001844(n)))`
-/

namespace A271607.P594442547933821286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A271466 (A001844 n).toNat)

end

end A271607.P594442547933821286

/-! ## A271607.P9143433136316834946

`or(A003982(n), A271466(A001844(n)))`
-/

namespace A271607.P9143433136316834946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003982 n) (A271466 (A001844 n).toNat)

end

end A271607.P9143433136316834946

/-! ## A271607.P17456822599972986304

`A007318(∑[n])*A271466(A001844(n))`
-/

namespace A271607.P17456822599972986304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A271466 (A001844 n).toNat

end

end A271607.P17456822599972986304

/-!
# A271608: Number of ordered ways to write n as pen(u) + pen(v) + pen(x) + pen(y) + pen(z) with u,v,x,y,z nonnegative integers such that u + 2*v + 4*x + 5*y + 6*z is a pentagonal number, where pen(k) denotes the pentagonal number k*(3k-1)/2.

The programs for A271608, there is no canonical definition to state claims against.
-/

/-! ## A271608.P933190024311686759

`A288375(A222038(n+1))+A025793(n)`
-/

namespace A271608.P933190024311686759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288375 (A222038 (n + 1)).toNat + A025793 n

end

end A271608.P933190024311686759

/-! ## A271608.P7922020529632584430

`A055642(A139491(n+1)*A254218(n+1))`
-/

namespace A271608.P7922020529632584430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A139491 (n + 1) * A254218 (n + 1)).toNat

end

end A271608.P7922020529632584430

/-! ## A271608.P3435483371325314250

`A001221(A317306(n+5)-A129511(n+1))`
-/

namespace A271608.P3435483371325314250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A317306 (n + 5) - A129511 (n + 1)).toNat

end

end A271608.P3435483371325314250

/-! ## A271608.P12105860334826207798

`A353516(3*n+2)+A117944(A112054(3*n+5))`
-/

namespace A271608.P12105860334826207798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353516 (3 * n + 2) + A117944 (A112054 (3 * n + 5)).toNat

end

end A271608.P12105860334826207798

/-! ## A271608.P1824224109396449717

`A001221(∑[A000598(n)]+10)`
-/

namespace A271608.P1824224109396449717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j + 10).toNat

end

end A271608.P1824224109396449717

/-!
# A271609: Number of ways to reciprocally link elements of an n X n X n triangular array with themselves or a neighbor, with no more than n elements linked to themselves.

The programs for A271609, there is no canonical definition to state claims against.
-/

/-! ## A271609.P13804048521761777954

`A271617(∑[4*n]+1)`
-/

namespace A271609.P13804048521761777954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271617 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A271609.P13804048521761777954

/-! ## A271609.P17849568769464781013

`record[gcd(A271617(n+1), A296339(n))]`
-/

namespace A271609.P17849568769464781013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A271617 (n + 1)) (A296339 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271609.P17849568769464781013

/-! ## A271609.P2528648931427412229

`A271617(A001844(n))+A026816(n)`
-/

namespace A271609.P2528648931427412229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271617 (A001844 n).toNat + A026816 n

end

end A271609.P2528648931427412229

/-! ## A271609.P5067086166875358913

`A271617(A001844(n))+A066568(n)`
-/

namespace A271609.P5067086166875358913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271617 (A001844 n).toNat + A066568 n

end

end A271609.P5067086166875358913

/-! ## A271609.P2920795930496221043

`A271617(A001844(n))+A185254(n)`
-/

namespace A271609.P2920795930496221043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271617 (A001844 n).toNat + A185254 n

end

end A271609.P2920795930496221043

/-!
# A271610: Number of ways to reciprocally link elements of an n X n X n triangular array with themselves or a neighbor, with no more than 1 elements linked to themselves.

The programs for A271610, there is no canonical definition to state claims against.
-/

/-! ## A271610.P17979308852296039941

`A271617(∑[n+1])`
-/

namespace A271610.P17979308852296039941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271617 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271610.P17979308852296039941

/-! ## A271610.P1798030770209826309

`A326686(n)+A271617(A000217(n+1))`
-/

namespace A271610.P1798030770209826309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326686 n + A271617 (A000217 (n + 1)).toNat

end

end A271610.P1798030770209826309

/-! ## A271610.P15352467465031332247

`gcd(2, A000040(n+2))*A271617(A000217(n+1))`
-/

namespace A271610.P15352467465031332247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 2)) : ℤ) * A271617 (A000217 (n + 1)).toNat

end

end A271610.P15352467465031332247

/-! ## A271610.P301181451201911113

`A000041(C(2, n+2))*A271617(A000217(n+1))`
-/

namespace A271610.P301181451201911113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A271617 (A000217 (n + 1)).toNat

end

end A271610.P301181451201911113

/-! ## A271610.P18299527222598748943

`A000045(A020639(2*(n+1)))*A271617(A000217(n+1))`
-/

namespace A271610.P18299527222598748943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020639 (2 * (n + 1))).toNat * A271617 (A000217 (n + 1)).toNat

end

end A271610.P18299527222598748943

/-!
# A271611: Number of ways to reciprocally link elements of an n X n X n triangular array with themselves or a neighbor, with no more than 2 elements linked to themselves.

The programs for A271611, there is no canonical definition to state claims against.
-/

/-! ## A271611.P10965492477797528849

`A271617(∑[n+2])`
-/

namespace A271611.P10965492477797528849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271617 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271611.P10965492477797528849

/-! ## A271611.P2386402851828609785

`record[A271617(A193974(n))]`
-/

namespace A271611.P2386402851828609785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271617 (A193974 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271611.P2386402851828609785

/-! ## A271611.P12328973448805398739

`record[A271617(A333530(n+1))]`
-/

namespace A271611.P12328973448805398739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271617 (A333530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271611.P12328973448805398739

/-! ## A271611.P2532900476569045336

`record[gcd(A008290(n), A271617(n+1))]`
-/

namespace A271611.P2532900476569045336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008290 n) (A271617 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271611.P2532900476569045336

/-! ## A271611.P10896695479747434852

`record[and(A167374(n), A271617(n+1))]`
-/

namespace A271611.P10896695479747434852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A167374 n) (A271617 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271611.P10896695479747434852

/-!
# A271612: Number of ways to reciprocally link elements of an n X n X n triangular array with themselves or a neighbor, with no more than 3 elements linked to themselves.

The programs for A271612, there is no canonical definition to state claims against.
-/

/-! ## A271612.P5027524826718449766

`A271617(∑[n+3]+1)`
-/

namespace A271612.P5027524826718449766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271617 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A271612.P5027524826718449766

/-! ## A271612.P12110751085445665206

`record[A271617(A193974(n)-1)]`
-/

namespace A271612.P12110751085445665206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271617 (A193974 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271612.P12110751085445665206

/-! ## A271612.P2090637392159702431

`record[A271617(gcd(n, A008290(n)))]`
-/

namespace A271612.P2090637392159702431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271617 (Int.gcd (n : ℤ) (A008290 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271612.P2090637392159702431

/-! ## A271612.P12771515288031114039

`record[A271617(A333530(n+1)-1)]`
-/

namespace A271612.P12771515288031114039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271617 (A333530 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271612.P12771515288031114039

/-! ## A271612.P15023698423743676515

`record[A167374(n+2)*A271617(n+1)]`
-/

namespace A271612.P15023698423743676515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 (n + 2) * A271617 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271612.P15023698423743676515

/-!
# A271613: Number of ways to reciprocally link elements of an n X n X n triangular array with themselves or a neighbor, with no more than 4 elements linked to themselves.

The programs for A271613, there is no canonical definition to state claims against.
-/

/-! ## A271613.P3945284299945696930

`A271617(A141214(n+1))`
-/

namespace A271613.P3945284299945696930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271617 (A141214 (n + 1)).toNat

end

end A271613.P3945284299945696930

/-! ## A271613.P1862678770318954655

`A271617(A155212(n)+5)`
-/

namespace A271613.P1862678770318954655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271617 (A155212 n + 5).toNat

end

end A271613.P1862678770318954655

/-! ## A271613.P123057488571151059

`A271617(A056000(n)+7)`
-/

namespace A271613.P123057488571151059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271617 (A056000 n + 7).toNat

end

end A271613.P123057488571151059

/-! ## A271613.P18021023931051960331

`A271617(eq[2, A152157(n)])`
-/

namespace A271613.P18021023931051960331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271613.P18021023931051960331

/-! ## A271613.P4857546596489094944

`A271617(eq[3, A193592(n)])`
-/

namespace A271613.P4857546596489094944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271613.P4857546596489094944

/-!
# A271614: Number of ways to reciprocally link elements of an n X n X n triangular array with themselves or a neighbor, with no more than 5 elements linked to themselves.

The programs for A271614, there is no canonical definition to state claims against.
-/

/-! ## A271614.P12182640753809137998

`A271617(A060577(n+4))`
-/

namespace A271614.P12182640753809137998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271617 (A060577 (n + 4)).toNat

end

end A271614.P12182640753809137998

/-! ## A271614.P14974785103446373912

`A271617(eq[3, A152157(n)])`
-/

namespace A271614.P14974785103446373912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271614.P14974785103446373912

/-! ## A271614.P7161780752636147314

`A271617(eq[4, A193592(n)])`
-/

namespace A271614.P7161780752636147314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271614.P7161780752636147314

/-! ## A271614.P5323139113207471697

`A271617(Δ[A023545(n+1)])`
-/

namespace A271614.P5323139113207471697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271617 (f1 (n + 1) - f1 n).toNat

end

end A271614.P5323139113207471697

/-! ## A271614.P854960878553829094

`A271617(eq[5, A200370(n+1)])`
-/

namespace A271614.P854960878553829094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271614.P854960878553829094

/-!
# A271615: Number of ways to reciprocally link elements of an n X n X n triangular array with themselves or a neighbor, with no more than 6 elements linked to themselves.

The programs for A271615, there is no canonical definition to state claims against.
-/

/-! ## A271615.P1433593192927779397

`A271617(eq[3, A219347(n)])`
-/

namespace A271615.P1433593192927779397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271615.P1433593192927779397

/-! ## A271615.P13191239943352640537

`A271617(eq[5, A152157(n)])`
-/

namespace A271615.P13191239943352640537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271615.P13191239943352640537

/-! ## A271615.P1660284916048175220

`A271617(eq[5, A193592(n)])`
-/

namespace A271615.P1660284916048175220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271615.P1660284916048175220

/-! ## A271615.P4357546261237182042

`A271617(eq[8, A258709(n)])`
-/

namespace A271615.P4357546261237182042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271615.P4357546261237182042

/-! ## A271615.P12567937007475153117

`A271617(eq[6, A200370(n+1)])`
-/

namespace A271615.P12567937007475153117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271615.P12567937007475153117

/-!
# A271616: Number of ways to reciprocally link elements of an n X n X n triangular array with themselves or a neighbor, with no more than 7 elements linked to themselves.

The programs for A271616, there is no canonical definition to state claims against.
-/

/-! ## A271616.P11848475588992941836

`A271617(eq[4, A219347(n)])`
-/

namespace A271616.P11848475588992941836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271616.P11848475588992941836

/-! ## A271616.P3483945503822808982

`A271617(eq[6, A193592(n)])`
-/

namespace A271616.P3483945503822808982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271616.P3483945503822808982

/-! ## A271616.P9642813170176734868

`A271617(eq[7, A152157(n)])`
-/

namespace A271616.P9642813170176734868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271616.P9642813170176734868

/-! ## A271616.P14245263367201226825

`A271617(eq[7, A200370(n+1)])`
-/

namespace A271616.P14245263367201226825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271616.P14245263367201226825

/-! ## A271616.P11488146739136090049

`A271617(eq[10, A185782(n+1)])`
-/

namespace A271616.P11488146739136090049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271617 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271616.P11488146739136090049

/-!
# A271619: Twice partitioned numbers where the first partition is strict.

The programs for A271619, there is no canonical definition to state claims against.
-/

/-! ## A271619.P1934923232728434638

`A296118(2^n)`
-/

namespace A271619.P1934923232728434638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296118 (2 ^ n)

end

end A271619.P1934923232728434638

/-! ## A271619.P4183516662145079173

`A296118(A000079(n))+char[16]`
-/

namespace A271619.P4183516662145079173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296118 (A000079 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A271619.P4183516662145079173

/-! ## A271619.P16381465405980239770

`A296118(A000079(n))/A175782(n)`
-/

namespace A271619.P16381465405980239770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296118 (A000079 n).toNat : ℚ) / (A175782 n : ℚ)

end

end A271619.P16381465405980239770

/-! ## A271619.P10579770595817192595

`A296118(A000079(n))%A008776(n)`
-/

namespace A271619.P10579770595817192595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296118 (A000079 n).toNat) (A008776 n)

end

end A271619.P10579770595817192595

/-! ## A271619.P2286248085907874230

`gcd(A151933(n), A296118(A000079(n)))`
-/

namespace A271619.P2286248085907874230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151933 n) (A296118 (A000079 n).toNat)

end

end A271619.P2286248085907874230

/-!
# A271620: First row (row 0) of the Sprague-Grundy values of "3-pile Sharing Nim".

The programs for A271620, there is no canonical definition to state claims against.
-/

/-! ## A271620.P7170868508633674340

`A057354(gcd(4, n+2)^A003557(n+1))`
-/

namespace A271620.P7170868508633674340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (SequenceMachineLib.roundAway ((Nat.gcd 4 (n + 2) : ℚ) ^ (A003557 (n + 1) : ℤ))).toNat

end

end A271620.P7170868508633674340

/-! ## A271620.P18061661689608149235

`A058305(A027642(A099575(n))*A123726(n))`
-/

namespace A271620.P18061661689608149235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (A027642 (A099575 n).toNat * A123726 n).toNat

end

end A271620.P18061661689608149235

/-! ## A271620.P6747120570240862326

`A122840(abs(A122858(n²)))`
-/

namespace A271620.P6747120570240862326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 |A122858 (n ^ 2)|.toNat

end

end A271620.P6747120570240862326

/-! ## A271620.P1558795571482216504

`A107760(20*A227033(n+1))`
-/

namespace A271620.P1558795571482216504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107760 (20 * A227033 (n + 1)).toNat

end

end A271620.P1558795571482216504

/-! ## A271620.P17392930590347520975

`A007814(or(n, A327249(n+4)))`
-/

namespace A271620.P17392930590347520975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.lor (n : ℤ) (A327249 (n + 4))).toNat

end

end A271620.P17392930590347520975

/-!
# A271621: a(1) = 2, a(2) = 3, a(n) = A020639(a(n-2)) + A006530(a(n-1)).

The programs for A271621, the canonical program `A271621.P7773583698365688322` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271621 has offset 1).

The definition of A271621 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)` (program `A271621.P7773583698365688322`, by `A271621.P7773583698365688322.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271621.P7773583698365688322

`a(n-1)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=8, a(4)=7, a(5)=9, a(6)=10, a(7)=8, a(8)=4`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271621

/-- `a(n-1)` -/
def P7773583698365688322.Spec : Prop :=
  ∀ n, (P7773583698365688322.a n : ℤ) = A271621 (n + 1)

theorem P7773583698365688322.correct : P7773583698365688322.Spec := by
  intro n
  simp only [A271621, Nat.add_sub_cancel]

end A271621

/-! ## A271621.P4799279793954209813

`a(n-2)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=8, a(4)=7, a(5)=9, a(6)=10, a(7)=8, a(8)=4, a(9)=4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A271621.P4799279793954209813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 5, 8, 7, 9, 10, 8, 4, 4] fun n a =>
  a (n - 2)

end

end A271621.P4799279793954209813

namespace A271621

/-- `a(n-2)` -/
def P4799279793954209813.Spec : Prop :=
  ∀ n, (P4799279793954209813.a n : ℤ) = A271621 (n + 1)

end A271621

/-! ## A271621.P4264216839395335622

`A020639(a(n-2))+A006530(a(n-1))` with `a(0)=2, a(1)=3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A271621.P4264216839395335622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A020639 (a (n - 2)).toNat + A006530 (a (n - 1)).toNat

end

end A271621.P4264216839395335622

namespace A271621

/-- `A020639(a(n-2))+A006530(a(n-1))` -/
def P4264216839395335622.Spec : Prop :=
  ∀ n, P4264216839395335622.a n = A271621 (n + 1)

end A271621

/-!
# A271622: Expansion of -2/(x*sqrt(4*x+1)+x-2).

The programs for A271622, there is no canonical definition to state claims against.
-/

/-! ## A271622.P15800267589284260313

`∑[(-1)^n*A127539(n)]`
-/

namespace A271622.P15800267589284260313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A127539 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271622.P15800267589284260313

/-! ## A271622.P1297043774962978758

`∑[A127539(n)/A033999(n)]`
-/

namespace A271622.P1297043774962978758
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127539 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271622.P1297043774962978758

/-! ## A271622.P9958612989640462787

`∑[A127539(n)/(A004442(n)-n)]`
-/

namespace A271622.P9958612989640462787
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127539 n : ℚ) / (A004442 n - (n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271622.P9958612989640462787

/-! ## A271622.P10564863624596928324

`a(n-1)+A000038(n)+(-1)^n*A127539(n)` with `a(0)=1`
-/

namespace A271622.P10564863624596928324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A000038 n + (-1) ^ n * A127539 n)

end

end A271622.P10564863624596928324

/-!
# A271624: a(n) = 2*n^2 - 4*n + 4.

The programs for A271624, the canonical program `A271624.P5642077601287799624` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271624 has offset 1).

The definition of A271624 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+1)²-4*(n+1)+4` (program `A271624.P5642077601287799624`, by `A271624.P5642077601287799624.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271624.P6180480325070398615

`2+2*n²`
-/

namespace A271624.P6180480325070398615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + 2 * n ^ 2

end

end A271624.P6180480325070398615

namespace A271624

/-- `2+2*n²` -/
def P6180480325070398615.Spec : Prop :=
  ∀ n, (P6180480325070398615.a n : ℤ) = A271624 (n + 1)

theorem P6180480325070398615.correct : P6180480325070398615.Spec := by
  intro n
  simp only [A271624, Nat.add_sub_cancel, A271624.P6180480325070398615.a, A271624.P5642077601287799624.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A271624

/-! ## A271624.P4915259923339961936

`ogf((2-2x+4x^2)/(1-3x+3x^2-x^3))`
-/

namespace A271624.P4915259923339961936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, 4] [1, -3, 3, -1] n

end

end A271624.P4915259923339961936

namespace A271624

/-- `ogf((2-2x+4x^2)/(1-3x+3x^2-x^3))` -/
def P4915259923339961936.Spec : Prop :=
  ∀ n, P4915259923339961936.a n = A271624 (n + 1)

end A271624

/-! ## A271624.P5642077601287799624

`2*(n+1)²-4*(n+1)+4`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271624

/-- `2*(n+1)²-4*(n+1)+4` -/
def P5642077601287799624.Spec : Prop :=
  ∀ n, P5642077601287799624.a n = A271624 (n + 1)

theorem P5642077601287799624.correct : P5642077601287799624.Spec := by
  intro n
  simp only [A271624, Nat.add_sub_cancel]

end A271624

/-! ## A271624.P6080724896523864406

`2*A002522(n)`
-/

namespace A271624.P6080724896523864406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002522 n

end

end A271624.P6080724896523864406

namespace A271624

/-- `2*A002522(n)` -/
def P6080724896523864406.Spec : Prop :=
  ∀ n, P6080724896523864406.a n = A271624 (n + 1)

theorem P6080724896523864406.correct : P6080724896523864406.Spec := by
  intro n
  simp only [A271624, Nat.add_sub_cancel, A271624.P6080724896523864406.a, A271624.P5642077601287799624.a, A002522, A002522.P3778392011853271743.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A271624

/-! ## A271624.P17517144770753119729

`2*A160457(n+1)`
-/

namespace A271624.P17517144770753119729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160457 (n + 1)

end

end A271624.P17517144770753119729

namespace A271624

/-- `2*A160457(n+1)` -/
def P17517144770753119729.Spec : Prop :=
  ∀ n, P17517144770753119729.a n = A271624 (n + 1)

theorem P17517144770753119729.correct : P17517144770753119729.Spec := by
  intro n
  simp only [A271624, Nat.add_sub_cancel, A271624.P17517144770753119729.a, A271624.P5642077601287799624.a, A160457, A160457.P13231799295759563819.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A271624

/-! ## A271624.P8490692331695176296

`2/cos(atan(n))²`
-/

namespace A271624.P8490692331695176296
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 / Real.cos (Real.arctan (n : ℝ)) ^ 2

end

end A271624.P8490692331695176296

namespace A271624

/-- `2/cos(atan(n))²` -/
def P8490692331695176296.Spec : Prop :=
  ∀ n, P8490692331695176296.a n = (A271624 (n + 1) : ℝ)

end A271624

/-! ## A271624.P12256912508719911467

`2/sin(acot(n))²`
-/

namespace A271624.P12256912508719911467
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 / Real.sin (SequenceMachineLib.acot (n : ℝ)) ^ 2

end

end A271624.P12256912508719911467

namespace A271624

/-- `2/sin(acot(n))²` -/
def P12256912508719911467.Spec : Prop :=
  ∀ n, P12256912508719911467.a n = (A271624 (n + 1) : ℝ)

end A271624

/-! ## A271624.P9344914000575420307

`∑[lcm(2, 1-2*n)]`
-/

namespace A271624.P9344914000575420307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (1 - (2 * n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271624.P9344914000575420307

namespace A271624

/-- `∑[lcm(2, 1-2*n)]` -/
def P9344914000575420307.Spec : Prop :=
  ∀ n, (P9344914000575420307.a n : ℤ) = A271624 (n + 1)

end A271624

/-! ## A271624.P10164654283441193625

`abs(2*xor(-1, n²))`
-/

namespace A271624.P10164654283441193625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * Int.xor (-1) (n ^ 2 : ℤ)|

end

end A271624.P10164654283441193625

namespace A271624

/-- `abs(2*xor(-1, n²))` -/
def P10164654283441193625.Spec : Prop :=
  ∀ n, P10164654283441193625.a n = A271624 (n + 1)

end A271624

/-! ## A271624.P1179106937718558341

`-(2*xor(-1, n²))`
-/

namespace A271624.P1179106937718558341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * Int.xor (-1) (n ^ 2 : ℤ))

end

end A271624.P1179106937718558341

namespace A271624

/-- `-(2*xor(-1, n²))` -/
def P1179106937718558341.Spec : Prop :=
  ∀ n, P1179106937718558341.a n = A271624 (n + 1)

end A271624

/-! ## A271624.P2608968744174623960

`ceil(2*(n²-cos(3)))`
-/

namespace A271624.P2608968744174623960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((n ^ 2 : ℝ) - Real.cos (3 : ℝ))⌉

end

end A271624.P2608968744174623960

namespace A271624

/-- `ceil(2*(n²-cos(3)))` -/
def P2608968744174623960.Spec : Prop :=
  ∀ n, P2608968744174623960.a n = A271624 (n + 1)

end A271624

/-! ## A271624.P17252730785636415007

`round(2*(n²-cos(3)))`
-/

namespace A271624.P17252730785636415007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((n ^ 2 : ℝ) - Real.cos (3 : ℝ)))

end

end A271624.P17252730785636415007

namespace A271624

/-- `round(2*(n²-cos(3)))` -/
def P17252730785636415007.Spec : Prop :=
  ∀ n, P17252730785636415007.a n = A271624 (n + 1)

end A271624

/-! ## A271624.P5021869579469883989

`floor(2/acot(n²+1))`
-/

namespace A271624.P5021869579469883989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n ^ 2 + 1 : ℝ)⌋

end

end A271624.P5021869579469883989

namespace A271624

/-- `floor(2/acot(n²+1))` -/
def P5021869579469883989.Spec : Prop :=
  ∀ n, P5021869579469883989.a n = A271624 (n + 1)

end A271624

/-! ## A271624.P14992541090654476950

`2/tan(acot(n²+1))`
-/

namespace A271624.P14992541090654476950
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 / Real.tan (SequenceMachineLib.acot (n ^ 2 + 1 : ℝ))

end

end A271624.P14992541090654476950

namespace A271624

/-- `2/tan(acot(n²+1))` -/
def P14992541090654476950.Spec : Prop :=
  ∀ n, P14992541090654476950.a n = (A271624 (n + 1) : ℝ)

end A271624

/-! ## A271624.P12433956093130837696

`(n²+1)/cot(atan(2))`
-/

namespace A271624.P12433956093130837696
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 : ℝ) / Real.cot (Real.arctan (2 : ℝ))

end

end A271624.P12433956093130837696

namespace A271624

/-- `(n²+1)/cot(atan(2))` -/
def P12433956093130837696.Spec : Prop :=
  ∀ n, P12433956093130837696.a n = (A271624 (n + 1) : ℝ)

end A271624

/-! ## A271624.P16879319346196081079

`∑[a(n-1)+4]` with `a(0)=2, a(1)=2`
-/

namespace A271624.P16879319346196081079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271624.P16879319346196081079

namespace A271624

/-- `∑[a(n-1)+4]` -/
def P16879319346196081079.Spec : Prop :=
  ∀ n, (P16879319346196081079.a n : ℤ) = A271624 (n + 1)

end A271624

/-! ## A271624.P11805994631895747065

`xor(1, n*2*n+3)`
-/

namespace A271624.P11805994631895747065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n * (2 * n) + 3)

end

end A271624.P11805994631895747065

namespace A271624

/-- `xor(1, n*2*n+3)` -/
def P11805994631895747065.Spec : Prop :=
  ∀ n, (P11805994631895747065.a n : ℤ) = A271624 (n + 1)

end A271624

/-! ## A271624.P664689592119388178

`ceil(or(3, (2*n)²)/2)`
-/

namespace A271624.P664689592119388178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 3 ((2 * n) ^ 2) : ℚ) / 2⌉

end

end A271624.P664689592119388178

namespace A271624

/-- `ceil(or(3, (2*n)²)/2)` -/
def P664689592119388178.Spec : Prop :=
  ∀ n, P664689592119388178.a n = A271624 (n + 1)

end A271624

/-! ## A271624.P6857396348350284253

`round(or(3, (2*n)²)/2)`
-/

namespace A271624.P6857396348350284253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 3 ((2 * n) ^ 2) : ℚ) / 2)

end

end A271624.P6857396348350284253

namespace A271624

/-- `round(or(3, (2*n)²)/2)` -/
def P6857396348350284253.Spec : Prop :=
  ∀ n, P6857396348350284253.a n = A271624 (n + 1)

end A271624

/-! ## A271624.P2310324805338608336

`ceil(xor(3, (2*n)²)/2)`
-/

namespace A271624.P2310324805338608336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 3 ((2 * n) ^ 2) : ℚ) / 2⌉

end

end A271624.P2310324805338608336

namespace A271624

/-- `ceil(xor(3, (2*n)²)/2)` -/
def P2310324805338608336.Spec : Prop :=
  ∀ n, P2310324805338608336.a n = A271624 (n + 1)

end A271624

/-!
# A271625: a(n) = = 2*(n+1)^2 - 5.

The programs for A271625, the canonical program `A271625.P5598533269613636058` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271625 has offset 1).

The definition of A271625 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(n+2)²-5` (program `A271625.P5598533269613636058`, by `A271625.P5598533269613636058.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271625.P5598533269613636058

`2*(n+2)²-5`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271625

/-- `2*(n+2)²-5` -/
def P5598533269613636058.Spec : Prop :=
  ∀ n, P5598533269613636058.a n = A271625 (n + 1)

theorem P5598533269613636058.correct : P5598533269613636058.Spec := by
  intro n
  simp only [A271625, Nat.add_sub_cancel]

end A271625

/-! ## A271625.P16250429990712156877

`ogf((3+4x-3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A271625.P16250429990712156877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 4, -3] [1, -3, 3, -1] n

end

end A271625.P16250429990712156877

namespace A271625

/-- `ogf((3+4x-3x^2)/(1-3x+3x^2-x^3))` -/
def P16250429990712156877.Spec : Prop :=
  ∀ n, P16250429990712156877.a n = A271625 (n + 1)

end A271625

/-! ## A271625.P12134075632304071181

`∑[record[6-xor(3, -n)]]`
-/

namespace A271625.P12134075632304071181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - Int.xor 3 (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271625.P12134075632304071181

namespace A271625

/-- `∑[record[6-xor(3, -n)]]` -/
def P12134075632304071181.Spec : Prop :=
  ∀ n, P12134075632304071181.a n = A271625 (n + 1)

end A271625

/-! ## A271625.P4673649599677876711

`∑[a(n-1)+4]` with `a(0)=3, a(1)=10`
-/

namespace A271625.P4673649599677876711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 10] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271625.P4673649599677876711

namespace A271625

/-- `∑[a(n-1)+4]` -/
def P4673649599677876711.Spec : Prop :=
  ∀ n, (P4673649599677876711.a n : ℤ) = A271625 (n + 1)

end A271625

/-! ## A271625.P10562635746103884134

`record[2*(2-n)²-5]`
-/

namespace A271625.P10562635746103884134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 - (n : ℤ)) ^ 2 - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271625.P10562635746103884134

namespace A271625

/-- `record[2*(2-n)²-5]` -/
def P10562635746103884134.Spec : Prop :=
  ∀ n, P10562635746103884134.a n = A271625 (n + 1)

end A271625

/-! ## A271625.P6239349565971798816

`∑[record[xor(3, n+3)+3]]`
-/

namespace A271625.P6239349565971798816
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 3) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271625.P6239349565971798816

namespace A271625

/-- `∑[record[xor(3, n+3)+3]]` -/
def P6239349565971798816.Spec : Prop :=
  ∀ n, (P6239349565971798816.a n : ℤ) = A271625 (n + 1)

end A271625

/-! ## A271625.P10267629520005005865

`∑[ogf((3+4x-3x^2)/(1-2x+x^2))]`
-/

namespace A271625.P10267629520005005865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 4, -3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271625.P10267629520005005865

namespace A271625

/-- `∑[ogf((3+4x-3x^2)/(1-2x+x^2))]` -/
def P10267629520005005865.Spec : Prop :=
  ∀ n, P10267629520005005865.a n = A271625 (n + 1)

end A271625

/-! ## A271625.P2349700001438137493

`or(1, 2*((n+1)²+2*n))`
-/

namespace A271625.P2349700001438137493
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * ((n + 1) ^ 2 + 2 * n))

end

end A271625.P2349700001438137493

namespace A271625

/-- `or(1, 2*((n+1)²+2*n))` -/
def P2349700001438137493.Spec : Prop :=
  ∀ n, (P2349700001438137493.a n : ℤ) = A271625 (n + 1)

end A271625

/-! ## A271625.P6124966089523173248

`xor(1, 2*((n+1)²+2*n))`
-/

namespace A271625.P6124966089523173248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * ((n + 1) ^ 2 + 2 * n))

end

end A271625.P6124966089523173248

namespace A271625

/-- `xor(1, 2*((n+1)²+2*n))` -/
def P6124966089523173248.Spec : Prop :=
  ∀ n, (P6124966089523173248.a n : ℤ) = A271625 (n + 1)

end A271625

/-! ## A271625.P5922139377215099663

`floor(4*n+a(n-1)+6)` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A271625.P5922139377215099663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  4 * n + (a (n - 1) + 6)

end

end A271625.P5922139377215099663

namespace A271625

/-- `floor(4*n+a(n-1)+6)` -/
def P5922139377215099663.Spec : Prop :=
  ∀ n, (P5922139377215099663.a n : ℤ) = A271625 (n + 1)

theorem P5922139377215099663.correct : P5922139377215099663.Spec := by
  intro n
  induction n with
  | zero => simp [A271625, A271625.P5922139377215099663.a, A271625.P5598533269613636058.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A271625, Nat.add_sub_cancel, A271625.P5922139377215099663.a, A271625.P5598533269613636058.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A271625

/-! ## A271625.P7279401581991633643

`Δ[C(n*(n+3), 2)]/(n+2)`
-/

namespace A271625.P7279401581991633643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n * (n + 3)) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (n + 2 : ℚ)

end

end A271625.P7279401581991633643

namespace A271625

/-- `Δ[C(n*(n+3), 2)]/(n+2)` -/
def P7279401581991633643.Spec : Prop :=
  ∀ n, P7279401581991633643.a n = (A271625 (n + 1) : ℚ)

theorem P7279401581991633643.correct : P7279401581991633643.Spec := by
  intro n
  simp only [A271625, Nat.add_sub_cancel, A271625.P7279401581991633643.f1, A271625.P7279401581991633643.a, A271625.P5598533269613636058.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A271625

/-! ## A271625.P2305377721563578175

`floor((2*n+1)/acot(n+3)+n)`
-/

namespace A271625.P2305377721563578175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℝ) / SequenceMachineLib.acot (n + 3 : ℝ) + (n : ℝ)⌋

end

end A271625.P2305377721563578175

namespace A271625

/-- `floor((2*n+1)/acot(n+3)+n)` -/
def P2305377721563578175.Spec : Prop :=
  ∀ n, P2305377721563578175.a n = A271625 (n + 1)

end A271625

/-! ## A271625.P7445932485794279251

`abs(lcm(n+2, 2*n+3)+n-3)`
-/

namespace A271625.P7445932485794279251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lcm (n + 2) (2 * n + 3) : ℤ) + ((n : ℤ) - 3)|

end

end A271625.P7445932485794279251

namespace A271625

/-- `abs(lcm(n+2, 2*n+3)+n-3)` -/
def P7445932485794279251.Spec : Prop :=
  ∀ n, P7445932485794279251.a n = A271625 (n + 1)

end A271625

/-! ## A271625.P7343223871468746530

`∑[(n+1)*3%(n+3)+n+3]`
-/

namespace A271625.P7343223871468746530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (3 % (n + 3)) + (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271625.P7343223871468746530

namespace A271625

/-- `∑[(n+1)*3%(n+3)+n+3]` -/
def P7343223871468746530.Spec : Prop :=
  ∀ n, (P7343223871468746530.a n : ℤ) = A271625 (n + 1)

end A271625

/-! ## A271625.P8013621646569278470

`4*((a(n-1)+2)/4+n+1)` with `a(0)=3`
-/

namespace A271625.P8013621646569278470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  4 * ((a (n - 1) + 2) / 4 + (n + 1 : ℚ))

end

end A271625.P8013621646569278470

namespace A271625

/-- `4*((a(n-1)+2)/4+n+1)` -/
def P8013621646569278470.Spec : Prop :=
  ∀ n, P8013621646569278470.a n = (A271625 (n + 1) : ℚ)

theorem P8013621646569278470.correct : P8013621646569278470.Spec := by
  intro n
  induction n with
  | zero => simp [A271625, A271625.P8013621646569278470.a, A271625.P5598533269613636058.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A271625, Nat.add_sub_cancel, A271625.P8013621646569278470.a, A271625.P5598533269613636058.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A271625

/-! ## A271625.P9219450194603630086

`lcm(2, (2*n+1)*(n+3)+n)/2`
-/

namespace A271625.P9219450194603630086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 ((2 * n + 1) * (n + 3) + n) : ℚ) / 2

end

end A271625.P9219450194603630086

namespace A271625

/-- `lcm(2, (2*n+1)*(n+3)+n)/2` -/
def P9219450194603630086.Spec : Prop :=
  ∀ n, P9219450194603630086.a n = (A271625 (n + 1) : ℚ)

end A271625

/-! ## A271625.P2360149246292067896

`ceil((2*n+1)/acot(n+3)+n-1)`
-/

namespace A271625.P2360149246292067896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n + 1 : ℝ) / SequenceMachineLib.acot (n + 3 : ℝ) + ((n : ℤ) - 1 : ℝ)⌉

end

end A271625.P2360149246292067896

namespace A271625

/-- `ceil((2*n+1)/acot(n+3)+n-1)` -/
def P2360149246292067896.Spec : Prop :=
  ∀ n, P2360149246292067896.a n = A271625 (n + 1)

end A271625

/-! ## A271625.P17129518924463725737

`abs(or(1, (2*n+1)*(n+3)+n-1))`
-/

namespace A271625.P17129518924463725737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (((2 * n + 1) * (n + 3) : ℤ) + ((n : ℤ) - 1))|

end

end A271625.P17129518924463725737

namespace A271625

/-- `abs(or(1, (2*n+1)*(n+3)+n-1))` -/
def P17129518924463725737.Spec : Prop :=
  ∀ n, P17129518924463725737.a n = A271625 (n + 1)

end A271625

/-! ## A271625.P1647010941498693729

`abs(xor(1, (2*n+1)*(n+3)+n-1))`
-/

namespace A271625.P1647010941498693729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (((2 * n + 1) * (n + 3) : ℤ) + ((n : ℤ) - 1))|

end

end A271625.P1647010941498693729

namespace A271625

/-- `abs(xor(1, (2*n+1)*(n+3)+n-1))` -/
def P1647010941498693729.Spec : Prop :=
  ∀ n, P1647010941498693729.a n = A271625 (n + 1)

end A271625

/-! ## A271625.P10852490903333162301

`gcd((2*n+1)*(n+3)+n, C(2, n+3))`
-/

namespace A271625.P10852490903333162301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((2 * n + 1) * (n + 3) + n) (Nat.choose 2 (n + 3))

end

end A271625.P10852490903333162301

namespace A271625

/-- `gcd((2*n+1)*(n+3)+n, C(2, n+3))` -/
def P10852490903333162301.Spec : Prop :=
  ∀ n, (P10852490903333162301.a n : ℤ) = A271625 (n + 1)

end A271625

/-!
# A271626: Numbers n such that the sum of the digits of the numbers from 0 to n is a square.

The programs for A271626, there is no canonical definition to state claims against.
-/

/-! ## A271626.P1669192828367342004

`eq[1, A331844(A037123(n))%2]`
-/

namespace A271626.P1669192828367342004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331844 (A037123 n).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271626.P1669192828367342004

/-! ## A271626.P13901107182168227253

`eq[A002828(A037123(n)), A057427(n)]`
-/

namespace A271626.P13901107182168227253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A037123 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271626.P13901107182168227253

/-! ## A271626.P15840485970984872029

`eq[1, A010052(A037123(n))]`
-/

namespace A271626.P15840485970984872029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A037123 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271626.P15840485970984872029

/-! ## A271626.P1784471252566499677

`eq[1, A010052(A239324(n)+A051351(n))]`
-/

namespace A271626.P1784471252566499677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A239324 n + A051351 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271626.P1784471252566499677

/-!
# A271627: Numbers n such that the sum of the digits of the numbers from 1 to n is a prime.

The programs for A271627, there is no canonical definition to state claims against.
-/

/-! ## A271627.P15873811253598441190

`eq[1, A302055(A037123(n))]`
-/

namespace A271627.P15873811253598441190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 (A037123 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271627.P15873811253598441190

/-! ## A271627.P10138759892147086904

`eq[1, A003415(A037123(n))]`
-/

namespace A271627.P10138759892147086904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A037123 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271627.P10138759892147086904

/-! ## A271627.P18431349878838451794

`record[(n+2)%A014963(A037123(n+2))]`
-/

namespace A271627.P18431349878838451794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A014963 (A037123 (n + 2)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271627.P18431349878838451794

/-! ## A271627.P4104991603659105985

`eq[A032741(A037123(n)), A053164(n+1)]`
-/

namespace A271627.P4104991603659105985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A037123 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053164 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271627.P4104991603659105985

/-!
# A271628: Primes that are the sum of the digits of the numbers from 1 to n, for some n.

The programs for A271628, the canonical program `A271628.P3554160973588019430` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271628 has offset 1).

The definition of A271628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 376 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271628.P3554160973588019430

`p?[A037123(n)]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A271628

/-- `p?[A037123(n)]` -/
def P3554160973588019430.Spec : Prop :=
  ∀ n, P3554160973588019430.a n = A271628 (n + 1)

theorem P3554160973588019430.correct : P3554160973588019430.Spec := by
  intro n
  simp only [A271628, Nat.add_sub_cancel]

end A271628

/-! ## A271628.P6046847988995373752

`A037123(A271627(n+1))`
-/

namespace A271628.P6046847988995373752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 (A271627 (n + 1)).toNat

end

end A271628.P6046847988995373752

namespace A271628

/-- `A037123(A271627(n+1))` -/
def P6046847988995373752.Spec : Prop :=
  ∀ n, P6046847988995373752.a n = A271628 (n + 1)

end A271628

/-! ## A271628.P761246139747025192

`p?[A239324(n)+A051351(n)]`
-/

namespace A271628.P761246139747025192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239324 n + A051351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271628.P761246139747025192

namespace A271628

/-- `p?[A239324(n)+A051351(n)]` -/
def P761246139747025192.Spec : Prop :=
  ∀ n, P761246139747025192.a n = A271628 (n + 1)

end A271628

/-! ## A271628.P15552365383521201158

`∩[A007645(n+1), A037123(n)]`
-/

namespace A271628.P15552365383521201158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271628.P15552365383521201158

namespace A271628

/-- `∩[A007645(n+1), A037123(n)]` -/
def P15552365383521201158.Spec : Prop :=
  ∀ n, (P15552365383521201158.a n : ℤ) = A271628 (n + 1)

end A271628

/-! ## A271628.P6305695684528510717

`∩[A045331(n+1), A037123(n)]`
-/

namespace A271628.P6305695684528510717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271628.P6305695684528510717

namespace A271628

/-- `∩[A045331(n+1), A037123(n)]` -/
def P6305695684528510717.Spec : Prop :=
  ∀ n, (P6305695684528510717.a n : ℤ) = A271628 (n + 1)

end A271628

/-! ## A271628.P5891516447180331633

`∩[A055058(n+1), A037123(n)]`
-/

namespace A271628.P5891516447180331633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271628.P5891516447180331633

namespace A271628

/-- `∩[A055058(n+1), A037123(n)]` -/
def P5891516447180331633.Spec : Prop :=
  ∀ n, (P5891516447180331633.a n : ℤ) = A271628 (n + 1)

end A271628

/-! ## A271628.P6625112175067015572

`∩[A079131(n+1), A037123(n)]`
-/

namespace A271628.P6625112175067015572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271628.P6625112175067015572

namespace A271628

/-- `∩[A079131(n+1), A037123(n)]` -/
def P6625112175067015572.Spec : Prop :=
  ∀ n, (P6625112175067015572.a n : ℤ) = A271628 (n + 1)

end A271628

/-! ## A271628.P11669012047867760174

`∩[A279815(n+1), A037123(n)]`
-/

namespace A271628.P11669012047867760174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271628.P11669012047867760174

namespace A271628

/-- `∩[A279815(n+1), A037123(n)]` -/
def P11669012047867760174.Spec : Prop :=
  ∀ n, (P11669012047867760174.a n : ℤ) = A271628 (n + 1)

end A271628

/-! ## A271628.P11540207177369306977

`∩[A040116(n+1), A037123(n)]`
-/

namespace A271628.P11540207177369306977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271628.P11540207177369306977

namespace A271628

/-- `∩[A040116(n+1), A037123(n)]` -/
def P11540207177369306977.Spec : Prop :=
  ∀ n, (P11540207177369306977.a n : ℤ) = A271628 (n + 1)

end A271628

/-! ## A271628.P13819362432496353446

`∩[A325143(n+1), A037123(n)]`
-/

namespace A271628.P13819362432496353446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271628.P13819362432496353446

namespace A271628

/-- `∩[A325143(n+1), A037123(n)]` -/
def P13819362432496353446.Spec : Prop :=
  ∀ n, (P13819362432496353446.a n : ℤ) = A271628 (n + 1)

end A271628

/-! ## A271628.P16375952234235381345

`∩[A058501(n+1), A037123(n)]`
-/

namespace A271628.P16375952234235381345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271628.P16375952234235381345

namespace A271628

/-- `∩[A058501(n+1), A037123(n)]` -/
def P16375952234235381345.Spec : Prop :=
  ∀ n, (P16375952234235381345.a n : ℤ) = A271628 (n + 1)

end A271628

/-! ## A271628.P16383276425870765057

`∩[A261456(n+1), A037123(n)]`
-/

namespace A271628.P16383276425870765057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271628.P16383276425870765057

namespace A271628

/-- `∩[A261456(n+1), A037123(n)]` -/
def P16383276425870765057.Spec : Prop :=
  ∀ n, (P16383276425870765057.a n : ℤ) = A271628 (n + 1)

end A271628

/-! ## A271628.P13677111583010636642

`∩[A059456(n+1), A037123(n)]`
-/

namespace A271628.P13677111583010636642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271628.P13677111583010636642

namespace A271628

/-- `∩[A059456(n+1), A037123(n)]` -/
def P13677111583010636642.Spec : Prop :=
  ∀ n, (P13677111583010636642.a n : ℤ) = A271628 (n + 1)

end A271628

/-! ## A271628.P10511460674147836929

`∩[A084445(n+1), A037123(n)]`
-/

namespace A271628.P10511460674147836929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084445 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271628.P10511460674147836929

namespace A271628

/-- `∩[A084445(n+1), A037123(n)]` -/
def P10511460674147836929.Spec : Prop :=
  ∀ n, (P10511460674147836929.a n : ℤ) = A271628 (n + 1)

end A271628

/-! ## A271628.P12097448458463263520

`∩[A000040(n+1), A037123(n)]`
-/

namespace A271628.P12097448458463263520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271628.P12097448458463263520

namespace A271628

/-- `∩[A000040(n+1), A037123(n)]` -/
def P12097448458463263520.Spec : Prop :=
  ∀ n, (P12097448458463263520.a n : ℤ) = A271628 (n + 1)

end A271628

/-! ## A271628.P7089387989185401638

`∩[A004139(n+1), A037123(n)]`
-/

namespace A271628.P7089387989185401638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271628.P7089387989185401638

namespace A271628

/-- `∩[A004139(n+1), A037123(n)]` -/
def P7089387989185401638.Spec : Prop :=
  ∀ n, (P7089387989185401638.a n : ℤ) = A271628 (n + 1)

end A271628

/-! ## A271628.P5061521359257991986

`∩[A045319(n+1), A037123(n)]`
-/

namespace A271628.P5061521359257991986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271628.P5061521359257991986

namespace A271628

/-- `∩[A045319(n+1), A037123(n)]` -/
def P5061521359257991986.Spec : Prop :=
  ∀ n, (P5061521359257991986.a n : ℤ) = A271628 (n + 1)

end A271628

/-! ## A271628.P820085621212694781

`∩[A065091(n+1), A037123(n)]`
-/

namespace A271628.P820085621212694781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271628.P820085621212694781

namespace A271628

/-- `∩[A065091(n+1), A037123(n)]` -/
def P820085621212694781.Spec : Prop :=
  ∀ n, (P820085621212694781.a n : ℤ) = A271628 (n + 1)

end A271628

/-! ## A271628.P10909840977719105143

`∩[A065396(n+1), A037123(n)]`
-/

namespace A271628.P10909840977719105143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271628.P10909840977719105143

namespace A271628

/-- `∩[A065396(n+1), A037123(n)]` -/
def P10909840977719105143.Spec : Prop :=
  ∀ n, (P10909840977719105143.a n : ℤ) = A271628 (n + 1)

end A271628

/-!
# A271629: Squares that are the sum of the digits of the numbers from 0 to n, for some n.

The programs for A271629, there is no canonical definition to state claims against.
-/

/-! ## A271629.P164268661374145982

`∩[∑[∑{digits}[n, #]], n²]`
-/

namespace A271629.P164268661374145982
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = x) n

end

end A271629.P164268661374145982

/-! ## A271629.P4519513449437498924

`∩[n², A037123(n)]`
-/

namespace A271629.P4519513449437498924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271629.P4519513449437498924

/-! ## A271629.P1351280722080482374

`A037123(A271626(n+1))`
-/

namespace A271629.P1351280722080482374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 (A271626 (n + 1)).toNat

end

end A271629.P1351280722080482374

/-! ## A271629.P17545780863364078728

`∩[A037123(n), A117676(n)]`
-/

namespace A271629.P17545780863364078728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117676 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271629.P17545780863364078728

/-! ## A271629.P6560220998683986356

`∩[A037123(n), A188915(n)]`
-/

namespace A271629.P6560220998683986356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188915 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271629.P6560220998683986356

/-!
# A271634: Numbers n such that Bernoulli number B_{n} has denominator 510.

The programs for A271634, the canonical program `A271634.P9830776161485334030` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271634 has offset 1).

The definition of A271634 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271634.P9830776161485334030

`2*(eq[17, A165949(n+1)]+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A271634

/-- `2*(eq[17, A165949(n+1)]+1)` -/
def P9830776161485334030.Spec : Prop :=
  ∀ n, (P9830776161485334030.a n : ℤ) = A271634 (n + 1)

theorem P9830776161485334030.correct : P9830776161485334030.Spec := by
  intro n
  simp only [A271634, Nat.add_sub_cancel]

end A271634

/-! ## A271634.P5736406095609456713

`A026491(eq[17, A165949(n+1)])`
-/

namespace A271634.P5736406095609456713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271634.P5736406095609456713

namespace A271634

/-- `A026491(eq[17, A165949(n+1)])` -/
def P5736406095609456713.Spec : Prop :=
  ∀ n, P5736406095609456713.a n = A271634 (n + 1)

end A271634

/-! ## A271634.P6808637518858990439

`A103517(eq[17, A165949(n+1)])`
-/

namespace A271634.P6808637518858990439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271634.P6808637518858990439

namespace A271634

/-- `A103517(eq[17, A165949(n+1)])` -/
def P6808637518858990439.Spec : Prop :=
  ∀ n, P6808637518858990439.a n = A271634 (n + 1)

end A271634

/-! ## A271634.P17063137815719564953

`eq[16, A346467(n+1)]`
-/

namespace A271634.P17063137815719564953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346467 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271634.P17063137815719564953

namespace A271634

/-- `eq[16, A346467(n+1)]` -/
def P17063137815719564953.Spec : Prop :=
  ∀ n, (P17063137815719564953.a n : ℤ) = A271634 (n + 1)

end A271634

/-! ## A271634.P5127772997062884674

`eq[A023458(A166333(n)), A040276(n)]`
-/

namespace A271634.P5127772997062884674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023458 (A166333 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040276 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271634.P5127772997062884674

namespace A271634

/-- `eq[A023458(A166333(n)), A040276(n)]` -/
def P5127772997062884674.Spec : Prop :=
  ∀ n, (P5127772997062884674.a n : ℤ) = A271634 (n + 1)

end A271634

/-! ## A271634.P3390349252945229812

`eq[A004442(A166333(n)), A220130(n)]`
-/

namespace A271634.P3390349252945229812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A166333 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220130 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271634.P3390349252945229812

namespace A271634

/-- `eq[A004442(A166333(n)), A220130(n)]` -/
def P3390349252945229812.Spec : Prop :=
  ∀ n, (P3390349252945229812.a n : ℤ) = A271634 (n + 1)

end A271634

/-! ## A271634.P2698688491193750157

`eq[A004525(n), A022144(A346468(n+1))]`
-/

namespace A271634.P2698688491193750157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A346468 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A271634.P2698688491193750157

namespace A271634

/-- `eq[A004525(n), A022144(A346468(n+1))]` -/
def P2698688491193750157.Spec : Prop :=
  ∀ n, (P2698688491193750157.a n : ℤ) = A271634 (n + 1)

end A271634

/-!
# A271635: Numbers n such that Bernoulli number B_{n} has denominator 138.

The programs for A271635, there is no canonical definition to state claims against.
-/

/-! ## A271635.P822591274424460814

`eq[22, A346467(n+1)]`
-/

namespace A271635.P822591274424460814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346467 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271635.P822591274424460814

/-! ## A271635.P12756533585569485860

`eq[11, A322315(A028310(n))]`
-/

namespace A271635.P12756533585569485860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322315 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271635.P12756533585569485860

/-! ## A271635.P8757441489604267504

`2*eq[23, A177735(n)]`
-/

namespace A271635.P8757441489604267504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A271635.P8757441489604267504

/-! ## A271635.P13125625800088915037

`A005843(eq[23, A177735(n)])`
-/

namespace A271635.P13125625800088915037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271635.P13125625800088915037

/-!
# A271636: a(n) = 4*n*(4*n^2 + 3).

The programs for A271636, the canonical program `A271636.P3875615987854989896` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271636 has offset 0).

The definition of A271636 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n*(4*n²+3)` (program `A271636.P3875615987854989896`, by `A271636.P3875615987854989896.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271636.P3875615987854989896

`4*n*(4*n²+3)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271636

/-- `4*n*(4*n²+3)` -/
def P3875615987854989896.Spec : Prop :=
  ∀ n, (P3875615987854989896.a n : ℤ) = A271636 n

theorem P3875615987854989896.correct : P3875615987854989896.Spec := by
  intro n
  simp only [A271636]

end A271636

/-! ## A271636.P3661373907092493864

`ogf((28x+40x^2+28x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A271636.P3661373907092493864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 28, 40, 28] [1, -4, 6, -4, 1] n

end

end A271636.P3661373907092493864

namespace A271636

/-- `ogf((28x+40x^2+28x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P3661373907092493864.Spec : Prop :=
  ∀ n, P3661373907092493864.a n = A271636 n

end A271636

/-! ## A271636.P17168684219984124924

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=28, a(2)=152, a(3)=468`
-/

namespace A271636.P17168684219984124924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 28, 152, 468] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A271636.P17168684219984124924

namespace A271636

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P17168684219984124924.Spec : Prop :=
  ∀ n, P17168684219984124924.a n = A271636 n

theorem P17168684219984124924.correct : P17168684219984124924.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A271636, Nat.add_sub_cancel, A271636.P17168684219984124924.a, A271636.P3875615987854989896.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A271636, Nat.add_sub_cancel, A271636.P17168684219984124924.a, A271636.P3875615987854989896.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A271636

/-! ## A271636.P6619568709959131296

`A144965(n)+8*n`
-/

namespace A271636.P6619568709959131296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144965 n + (8 * n : ℤ)

end

end A271636.P6619568709959131296

namespace A271636

/-- `A144965(n)+8*n` -/
def P6619568709959131296.Spec : Prop :=
  ∀ n, P6619568709959131296.a n = A271636 n

theorem P6619568709959131296.correct : P6619568709959131296.Spec := by
  intro n
  simp only [A271636, Nat.add_sub_cancel, A271636.P6619568709959131296.a, A271636.P3875615987854989896.a, A144965, A144965.P16257968433978150562.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A271636

/-! ## A271636.P7699228676546995690

`A046142(n+1)-A185212(n)`
-/

namespace A271636.P7699228676546995690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046142 (n + 1) - A185212 n

end

end A271636.P7699228676546995690

namespace A271636

/-- `A046142(n+1)-A185212(n)` -/
def P7699228676546995690.Spec : Prop :=
  ∀ n, P7699228676546995690.a n = A271636 n

end A271636

/-! ## A271636.P13102619927012119047

`A008594(n)+2*A016743(n)`
-/

namespace A271636.P13102619927012119047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 n + 2 * A016743 n

end

end A271636.P13102619927012119047

namespace A271636

/-- `A008594(n)+2*A016743(n)` -/
def P13102619927012119047.Spec : Prop :=
  ∀ n, P13102619927012119047.a n = A271636 n

theorem P13102619927012119047.correct : P13102619927012119047.Spec := by
  intro n
  simp only [A271636, Nat.add_sub_cancel, A271636.P13102619927012119047.a, A271636.P3875615987854989896.a, A008594, A008594.P9877215682521385096.a, A016743, A016743.P7621108068918767533.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A271636

/-! ## A271636.P363524500832167821

`lcm(n, A144965(n)+A022144(n))`
-/

namespace A271636.P363524500832167821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A144965 n + A022144 n)

end

end A271636.P363524500832167821

namespace A271636

/-- `lcm(n, A144965(n)+A022144(n))` -/
def P363524500832167821.Spec : Prop :=
  ∀ n, (P363524500832167821.a n : ℤ) = A271636 n

end A271636

/-! ## A271636.P13627315741772731689

`A008586(n)+A144965(n)+A008586(n)`
-/

namespace A271636.P13627315741772731689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n + (A144965 n + A008586 n)

end

end A271636.P13627315741772731689

namespace A271636

/-- `A008586(n)+A144965(n)+A008586(n)` -/
def P13627315741772731689.Spec : Prop :=
  ∀ n, P13627315741772731689.a n = A271636 n

theorem P13627315741772731689.correct : P13627315741772731689.Spec := by
  intro n
  simp only [A271636, Nat.add_sub_cancel, A271636.P13627315741772731689.a, A271636.P3875615987854989896.a, A008586, A008586.P15642444062404201100.a, A144965, A144965.P16257968433978150562.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A271636

/-! ## A271636.P13230710603982206786

`A008586(n)+A005899(n)*A008586(n)`
-/

namespace A271636.P13230710603982206786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n + A005899 n * A008586 n

end

end A271636.P13230710603982206786

namespace A271636

/-- `A008586(n)+A005899(n)*A008586(n)` -/
def P13230710603982206786.Spec : Prop :=
  ∀ n, P13230710603982206786.a n = A271636 n

end A271636

/-! ## A271636.P8169327801417872909

`Δ[Δ[A030441(n)/2]²]`
-/

namespace A271636.P8169327801417872909
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030441 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271636.P8169327801417872909

namespace A271636

/-- `Δ[Δ[A030441(n)/2]²]` -/
def P8169327801417872909.Spec : Prop :=
  ∀ n, P8169327801417872909.a n = (A271636 n : ℚ)

end A271636

/-! ## A271636.P10430823832199744824

`A033431(2*n)+12*n`
-/

namespace A271636.P10430823832199744824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 (2 * n) + (12 * n : ℤ)

end

end A271636.P10430823832199744824

namespace A271636

/-- `A033431(2*n)+12*n` -/
def P10430823832199744824.Spec : Prop :=
  ∀ n, P10430823832199744824.a n = A271636 n

theorem P10430823832199744824.correct : P10430823832199744824.Spec := by
  intro n
  simp only [A271636, Nat.add_sub_cancel, A271636.P10430823832199744824.a, A271636.P3875615987854989896.a, A033431, A033431.P14261726496554658204.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A271636

/-! ## A271636.P296640263957482158

`lcm(4*n, A079908(2*n))`
-/

namespace A271636.P296640263957482158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (4 * n : ℤ) (A079908 (2 * n))

end

end A271636.P296640263957482158

namespace A271636

/-- `lcm(4*n, A079908(2*n))` -/
def P296640263957482158.Spec : Prop :=
  ∀ n, (P296640263957482158.a n : ℤ) = A271636 n

end A271636

/-! ## A271636.P995244050652732581

`12*n+2*A000578(2*n)`
-/

namespace A271636.P995244050652732581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n : ℤ) + 2 * A000578 (2 * n)

end

end A271636.P995244050652732581

namespace A271636

/-- `12*n+2*A000578(2*n)` -/
def P995244050652732581.Spec : Prop :=
  ∀ n, P995244050652732581.a n = A271636 n

theorem P995244050652732581.correct : P995244050652732581.Spec := by
  intro n
  simp only [A271636, Nat.add_sub_cancel, A271636.P995244050652732581.a, A271636.P3875615987854989896.a, A000578, A000578.P12162961755414704816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A271636

/-! ## A271636.P4163509780481000023

`A155965(2*n)+A054602(2*n)`
-/

namespace A271636.P4163509780481000023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155965 (2 * n) + A054602 (2 * n)

end

end A271636.P4163509780481000023

namespace A271636

/-- `A155965(2*n)+A054602(2*n)` -/
def P4163509780481000023.Spec : Prop :=
  ∀ n, P4163509780481000023.a n = A271636 n

theorem P4163509780481000023.correct : P4163509780481000023.Spec := by
  intro n
  simp only [A271636, Nat.add_sub_cancel, A271636.P4163509780481000023.a, A271636.P3875615987854989896.a, A054602, A054602.P284734914928046851.a, A155965, A155965.P4744673239626898850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A271636

/-! ## A271636.P10129946947350450341

`A008513(2*n)/A005897(2*n)`
-/

namespace A271636.P10129946947350450341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008513 (2 * n) : ℚ) / (A005897 (2 * n) : ℚ)

end

end A271636.P10129946947350450341

namespace A271636

/-- `A008513(2*n)/A005897(2*n)` -/
def P10129946947350450341.Spec : Prop :=
  ∀ n, P10129946947350450341.a n = (A271636 n : ℚ)

end A271636

/-! ## A271636.P8518237890814668179

`4*n+2*A020875(2*n)`
-/

namespace A271636.P8518237890814668179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + 2 * A020875 (2 * n)

end

end A271636.P8518237890814668179

namespace A271636

/-- `4*n+2*A020875(2*n)` -/
def P8518237890814668179.Spec : Prop :=
  ∀ n, P8518237890814668179.a n = A271636 n

end A271636

/-! ## A271636.P12615481495437594620

`8*n+A105374(2*n)/2`
-/

namespace A271636.P12615481495437594620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * n : ℚ) + (A105374 (2 * n) : ℚ) / 2

end

end A271636.P12615481495437594620

namespace A271636

/-- `8*n+A105374(2*n)/2` -/
def P12615481495437594620.Spec : Prop :=
  ∀ n, P12615481495437594620.a n = (A271636 n : ℚ)

theorem P12615481495437594620.correct : P12615481495437594620.Spec := by
  intro n
  simp only [A271636, Nat.add_sub_cancel, A271636.P12615481495437594620.a, A271636.P3875615987854989896.a, A105374, A105374.P15227727533401661173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A271636

/-! ## A271636.P8848402478412317730

`10*n+A061804(2*n)/2`
-/

namespace A271636.P8848402478412317730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 * n : ℚ) + (A061804 (2 * n) : ℚ) / 2

end

end A271636.P8848402478412317730

namespace A271636

/-- `10*n+A061804(2*n)/2` -/
def P8848402478412317730.Spec : Prop :=
  ∀ n, P8848402478412317730.a n = (A271636 n : ℚ)

theorem P8848402478412317730.correct : P8848402478412317730.Spec := by
  intro n
  simp only [A271636, Nat.add_sub_cancel, A271636.P8848402478412317730.a, A271636.P3875615987854989896.a, A061804, A061804.P16305426185761710400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A271636

/-! ## A271636.P3610684713821349796

`A061317(2*n)+A008592(n)`
-/

namespace A271636.P3610684713821349796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061317 (2 * n) + A008592 n

end

end A271636.P3610684713821349796

namespace A271636

/-- `A061317(2*n)+A008592(n)` -/
def P3610684713821349796.Spec : Prop :=
  ∀ n, P3610684713821349796.a n = A271636 n

theorem P3610684713821349796.correct : P3610684713821349796.Spec := by
  intro n
  simp only [A271636, Nat.add_sub_cancel, A271636.P3610684713821349796.a, A271636.P3875615987854989896.a, A008592, A008592.P4981059802862696142.a, A061317, A061317.P8488168899613189018.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A271636

/-! ## A271636.P13325907836513491681

`A280058(2*n)+A033580(2*n)`
-/

namespace A271636.P13325907836513491681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280058 (2 * n) + A033580 (2 * n)

end

end A271636.P13325907836513491681

namespace A271636

/-- `A280058(2*n)+A033580(2*n)` -/
def P13325907836513491681.Spec : Prop :=
  ∀ n, P13325907836513491681.a n = A271636 n

theorem P13325907836513491681.correct : P13325907836513491681.Spec := by
  intro n
  simp only [A271636, Nat.add_sub_cancel, A271636.P13325907836513491681.a, A271636.P3875615987854989896.a, A033580, A033580.P10508890947649140634.a, A280058, A280058.P16968223727792884466.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A271636

/-!
# A271638: The total sum of the cubes of all parts of all compositions of n.

The programs for A271638, the canonical program `A271638.P1348052769453587003` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271638 has offset 1).

The definition of A271638 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271638.P1348052769453587003

`(13*(n+1)-36)*2^n+6*(n+1)+18`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271638

/-- `(13*(n+1)-36)*2^n+6*(n+1)+18` -/
def P1348052769453587003.Spec : Prop :=
  ∀ n, P1348052769453587003.a n = A271638 (n + 1)

theorem P1348052769453587003.correct : P1348052769453587003.Spec := by
  intro n
  simp only [A271638, Nat.add_sub_cancel]

end A271638

/-! ## A271638.P9559574915901796646

`ogf((1+4x+x^2)/(1-6x+13x^2-12x^3+4x^4))`
-/

namespace A271638.P9559574915901796646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 1] [1, -6, 13, -12, 4] n

end

end A271638.P9559574915901796646

namespace A271638

/-- `ogf((1+4x+x^2)/(1-6x+13x^2-12x^3+4x^4))` -/
def P9559574915901796646.Spec : Prop :=
  ∀ n, P9559574915901796646.a n = A271638 (n + 1)

end A271638

/-! ## A271638.P4899206658179957109

`∑[∑[ogf((1+4x+x^2)/(1-4x+4x^2))]]`
-/

namespace A271638.P4899206658179957109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 1] [1, -4, 4] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271638.P4899206658179957109

namespace A271638

/-- `∑[∑[ogf((1+4x+x^2)/(1-4x+4x^2))]]` -/
def P4899206658179957109.Spec : Prop :=
  ∀ n, P4899206658179957109.a n = A271638 (n + 1)

end A271638

/-! ## A271638.P4151259937302801808

`∑[∑[A113070(n)+A036289(n)]]`
-/

namespace A271638.P4151259937302801808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113070 n + A036289 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271638.P4151259937302801808

namespace A271638

/-- `∑[∑[A113070(n)+A036289(n)]]` -/
def P4151259937302801808.Spec : Prop :=
  ∀ n, P4151259937302801808.a n = A271638 (n + 1)

end A271638

/-! ## A271638.P2485549785668431232

`∑[A036799(n)+∑[A113070(n)]]`
-/

namespace A271638.P2485549785668431232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113070 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036799 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271638.P2485549785668431232

namespace A271638

/-- `∑[A036799(n)+∑[A113070(n)]]` -/
def P2485549785668431232.Spec : Prop :=
  ∀ n, P2485549785668431232.a n = A271638 (n + 1)

end A271638

/-! ## A271638.P641576416912862107

`∑[∑[A139756(n)+A130129(n)]]`
-/

namespace A271638.P641576416912862107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n + A130129 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271638.P641576416912862107

namespace A271638

/-- `∑[∑[A139756(n)+A130129(n)]]` -/
def P641576416912862107.Spec : Prop :=
  ∀ n, P641576416912862107.a n = A271638 (n + 1)

end A271638

/-! ## A271638.P8179804869791493828

`∑[∑[A118417(n)-A339252(n)]]`
-/

namespace A271638.P8179804869791493828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118417 n - A339252 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271638.P8179804869791493828

namespace A271638

/-- `∑[∑[A118417(n)-A339252(n)]]` -/
def P8179804869791493828.Spec : Prop :=
  ∀ n, P8179804869791493828.a n = A271638 (n + 1)

end A271638

/-! ## A271638.P3324105565107080671

`∑[A001792(n)+6*A000337(n)]`
-/

namespace A271638.P3324105565107080671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n + 6 * A000337 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271638.P3324105565107080671

namespace A271638

/-- `∑[A001792(n)+6*A000337(n)]` -/
def P3324105565107080671.Spec : Prop :=
  ∀ n, P3324105565107080671.a n = A271638 (n + 1)

end A271638

/-!
# A271647: Irregular triangle read by rows: the natural numbers from right to left.

The programs for A271647, there is no canonical definition to state claims against.
-/

/-! ## A271647.P7006037036835054502

`A271584(n)+A269837(n)`
-/

namespace A271647.P7006037036835054502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271584 n + A269837 n

end

end A271647.P7006037036835054502

/-! ## A271647.P3188032914749434183

`C(ceil(2/acot(sqrt(n))), 2)-n`
-/

namespace A271647.P3188032914749434183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ⌈2 / SequenceMachineLib.acot (Real.sqrt (n : ℝ))⌉.toNat 2 : ℤ) - (n : ℤ)

end

end A271647.P3188032914749434183

/-! ## A271647.P258270893185888566

`C(ceil(2*sqrt(n+1)), 2)-n`
-/

namespace A271647.P258270893185888566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ⌈2 * Real.sqrt (n + 1 : ℝ)⌉.toNat 2 : ℤ) - (n : ℤ)

end

end A271647.P258270893185888566

/-! ## A271647.P7340857791028905984

`abs(C(floor(sqrt(4*n+1))+1, 2)-n)`
-/

namespace A271647.P7340857791028905984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (Nat.sqrt (4 * n + 1) + 1) 2 : ℤ) - (n : ℤ)|

end

end A271647.P7340857791028905984

/-! ## A271647.P17703088385288445214

`A020703(4*n+2)/4`
-/

namespace A271647.P17703088385288445214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020703 (4 * n + 2) : ℚ) / 4

end

end A271647.P17703088385288445214

/-! ## A271647.P16049347432551628215

`A094064(4*n+3)/4`
-/

namespace A271647.P16049347432551628215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094064 (4 * n + 3) : ℚ) / 4

end

end A271647.P16049347432551628215

/-! ## A271647.P11765078612723800989

`ceil(A020703(record[xor(3, n)])/4)`
-/

namespace A271647.P11765078612723800989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020703 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℚ) / 4⌉

end

end A271647.P11765078612723800989

/-! ## A271647.P13753399515068237652

`round(sqrt(n+1))²-A196199(n)`
-/

namespace A271647.P13753399515068237652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 - A196199 n

end

end A271647.P13753399515068237652

/-! ## A271647.P6390017025280225300

`A000217(floor(sqrt(4*n+1)))-n`
-/

namespace A271647.P6390017025280225300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Nat.sqrt (4 * n + 1)) - (n : ℤ)

end

end A271647.P6390017025280225300

/-! ## A271647.P13569952023151578706

`A161680(ceil(sqrt(4*(n+1))))-n`
-/

namespace A271647.P13569952023151578706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 ⌈Real.sqrt (4 * (n + 1) : ℝ)⌉.toNat - (n : ℤ)

end

end A271647.P13569952023151578706

/-!
# A271648: Number of permutations in S_{2*n+3} containing the pattern 2143...(2n)(2n-1).

The programs for A271648, the canonical program `A271648.P5111600160907182785` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271648 has offset 0).

The definition of A271648 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271648.P5111600160907182785

`A217193(2*n)-A289207(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A271648

/-- `A217193(2*n)-A289207(n)` -/
def P5111600160907182785.Spec : Prop :=
  ∀ n, P5111600160907182785.a n = A271648 n

theorem P5111600160907182785.correct : P5111600160907182785.Spec := by
  intro n
  simp only [A271648]

end A271648

/-! ## A271648.P2000179184426156275

`A217193(2*n)-A001221(A146579(2*n+1))`
-/

namespace A271648.P2000179184426156275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217193 (2 * n) - A001221 (A146579 (2 * n + 1)).toNat

end

end A271648.P2000179184426156275

namespace A271648

/-- `A217193(2*n)-A001221(A146579(2*n+1))` -/
def P2000179184426156275.Spec : Prop :=
  ∀ n, P2000179184426156275.a n = A271648 n

end A271648

/-!
# A271649: a(n) = 2*(n^2 - n + 2).

The programs for A271649, the canonical program `A271649.P3588751524819908092` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271649 has offset 1).

The definition of A271649 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*((n+1)²-(n+1)+2)` (program `A271649.P3588751524819908092`, by `A271649.P3588751524819908092.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271649.P2025705052162209612

`ogf((4-4x+4x^2)/(1-3x+3x^2-x^3))`
-/

namespace A271649.P2025705052162209612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -4, 4] [1, -3, 3, -1] n

end

end A271649.P2025705052162209612

namespace A271649

/-- `ogf((4-4x+4x^2)/(1-3x+3x^2-x^3))` -/
def P2025705052162209612.Spec : Prop :=
  ∀ n, P2025705052162209612.a n = A271649 (n + 1)

end A271649

/-! ## A271649.P3588751524819908092

`2*((n+1)²-(n+1)+2)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271649

/-- `2*((n+1)²-(n+1)+2)` -/
def P3588751524819908092.Spec : Prop :=
  ∀ n, P3588751524819908092.a n = A271649 (n + 1)

theorem P3588751524819908092.correct : P3588751524819908092.Spec := by
  intro n
  simp only [A271649, Nat.add_sub_cancel]

end A271649

/-! ## A271649.P4183805973138078819

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=4, a(1)=8, a(2)=16`
-/

namespace A271649.P4183805973138078819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 8, 16] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A271649.P4183805973138078819

namespace A271649

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P4183805973138078819.Spec : Prop :=
  ∀ n, P4183805973138078819.a n = A271649 (n + 1)

theorem P4183805973138078819.correct : P4183805973138078819.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A271649, Nat.add_sub_cancel, A271649.P4183805973138078819.a, A271649.P3588751524819908092.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A271649, Nat.add_sub_cancel, A271649.P4183805973138078819.a, A271649.P3588751524819908092.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A271649

/-! ## A271649.P10813186481447546444

`abs(xor(∑[4*n], -4))`
-/

namespace A271649.P10813186481447546444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (-4)|

end

end A271649.P10813186481447546444

namespace A271649

/-- `abs(xor(∑[4*n], -4))` -/
def P10813186481447546444.Spec : Prop :=
  ∀ n, P10813186481447546444.a n = A271649 (n + 1)

end A271649

/-! ## A271649.P3445886944462717454

`-xor(∑[4*n], -4)`
-/

namespace A271649.P3445886944462717454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (-4)

end

end A271649.P3445886944462717454

namespace A271649

/-- `-xor(∑[4*n], -4)` -/
def P3445886944462717454.Spec : Prop :=
  ∀ n, P3445886944462717454.a n = A271649 (n + 1)

end A271649

/-! ## A271649.P2291439768627950

`4*C(n+1, 2)+4`
-/

namespace A271649.P2291439768627950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose (n + 1) 2 + 4

end

end A271649.P2291439768627950

namespace A271649

/-- `4*C(n+1, 2)+4` -/
def P2291439768627950.Spec : Prop :=
  ∀ n, (P2291439768627950.a n : ℤ) = A271649 (n + 1)

theorem P2291439768627950.correct : P2291439768627950.Spec := by
  intro n
  simp only [A271649, Nat.add_sub_cancel, A271649.P2291439768627950.a, A271649.P3588751524819908092.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A271649

/-! ## A271649.P3641331913668786020

`∑[a(n-1)+4]` with `a(0)=4, a(1)=4`
-/

namespace A271649.P3641331913668786020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 4] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271649.P3641331913668786020

namespace A271649

/-- `∑[a(n-1)+4]` -/
def P3641331913668786020.Spec : Prop :=
  ∀ n, (P3641331913668786020.a n : ℤ) = A271649 (n + 1)

end A271649

/-! ## A271649.P5409655579525919483

`2*lcm(n, n+1)+4`
-/

namespace A271649.P5409655579525919483
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lcm n (n + 1) + 4

end

end A271649.P5409655579525919483

namespace A271649

/-- `2*lcm(n, n+1)+4` -/
def P5409655579525919483.Spec : Prop :=
  ∀ n, (P5409655579525919483.a n : ℤ) = A271649 (n + 1)

end A271649

/-! ## A271649.P11806382265126587396

`a(n-1)+4*n` with `a(0)=4`
-/

namespace A271649.P11806382265126587396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + 4 * n

end

end A271649.P11806382265126587396

namespace A271649

/-- `a(n-1)+4*n` -/
def P11806382265126587396.Spec : Prop :=
  ∀ n, (P11806382265126587396.a n : ℤ) = A271649 (n + 1)

theorem P11806382265126587396.correct : P11806382265126587396.Spec := by
  intro n
  induction n with
  | zero => simp [A271649, A271649.P11806382265126587396.a, A271649.P3588751524819908092.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A271649, Nat.add_sub_cancel, A271649.P11806382265126587396.a, A271649.P3588751524819908092.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A271649

/-! ## A271649.P15050740516888304167

`∑[n*a(n%2)]` with `a(0)=4, a(1)=4`
-/

namespace A271649.P15050740516888304167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 4] fun n f1 =>
  n * f1 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271649.P15050740516888304167

namespace A271649

/-- `∑[n*a(n%2)]` -/
def P15050740516888304167.Spec : Prop :=
  ∀ n, (P15050740516888304167.a n : ℤ) = A271649 (n + 1)

end A271649

/-! ## A271649.P8813249966436948696

`∑[n*a(∑[(-1)^n])]` with `a(0)=4`
-/

namespace A271649.P8813249966436948696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  n * f1 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271649.P8813249966436948696

namespace A271649

/-- `∑[n*a(∑[(-1)^n])]` -/
def P8813249966436948696.Spec : Prop :=
  ∀ n, (P8813249966436948696.a n : ℤ) = A271649 (n + 1)

end A271649

/-! ## A271649.P9669100960846443028

`∑[ogf((4-4x+4x^2)/(1-2x+x^2))]`
-/

namespace A271649.P9669100960846443028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -4, 4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271649.P9669100960846443028

namespace A271649

/-- `∑[ogf((4-4x+4x^2)/(1-2x+x^2))]` -/
def P9669100960846443028.Spec : Prop :=
  ∀ n, P9669100960846443028.a n = A271649 (n + 1)

end A271649

/-! ## A271649.P13459087219934164137

`4-∑[a(n-1)-4]` with `a(0)=0`
-/

namespace A271649.P13459087219934164137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271649.P13459087219934164137

namespace A271649

/-- `4-∑[a(n-1)-4]` -/
def P13459087219934164137.Spec : Prop :=
  ∀ n, P13459087219934164137.a n = A271649 (n + 1)

end A271649

/-! ## A271649.P715873178591551400

`lcm(2, n²+n+1)+2`
-/

namespace A271649.P715873178591551400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n ^ 2 + (n + 1)) + 2

end

end A271649.P715873178591551400

namespace A271649

/-- `lcm(2, n²+n+1)+2` -/
def P715873178591551400.Spec : Prop :=
  ∀ n, (P715873178591551400.a n : ℤ) = A271649 (n + 1)

end A271649

/-! ## A271649.P1368211578804870798

`xor(2, 2*(n²+3+n))`
-/

namespace A271649.P1368211578804870798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (2 * (n ^ 2 + 3 + n))

end

end A271649.P1368211578804870798

namespace A271649

/-- `xor(2, 2*(n²+3+n))` -/
def P1368211578804870798.Spec : Prop :=
  ∀ n, (P1368211578804870798.a n : ℤ) = A271649 (n + 1)

end A271649

/-! ## A271649.P18259407143461001472

`2*or(2, n²)+2*n`
-/

namespace A271649.P18259407143461001472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor 2 (n ^ 2) + 2 * n

end

end A271649.P18259407143461001472

namespace A271649

/-- `2*or(2, n²)+2*n` -/
def P18259407143461001472.Spec : Prop :=
  ∀ n, (P18259407143461001472.a n : ℤ) = A271649 (n + 1)

end A271649

/-! ## A271649.P8152389354408831357

`4-2*n*xor(n, -1)`
-/

namespace A271649.P8152389354408831357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (2 * n : ℤ) * Int.xor (n : ℤ) (-1)

end

end A271649.P8152389354408831357

namespace A271649

/-- `4-2*n*xor(n, -1)` -/
def P8152389354408831357.Spec : Prop :=
  ∀ n, P8152389354408831357.a n = A271649 (n + 1)

end A271649

/-! ## A271649.P5868664031240503856

`(n+1)²-xor(-3, n²)`
-/

namespace A271649.P5868664031240503856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - Int.xor (-3) (n ^ 2 : ℤ)

end

end A271649.P5868664031240503856

namespace A271649

/-- `(n+1)²-xor(-3, n²)` -/
def P5868664031240503856.Spec : Prop :=
  ∀ n, P5868664031240503856.a n = A271649 (n + 1)

end A271649

/-! ## A271649.P7428138619176120047

`record[(1-n)²+3]+n²`
-/

namespace A271649.P7428138619176120047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n ^ 2 : ℤ)

end

end A271649.P7428138619176120047

namespace A271649

/-- `record[(1-n)²+3]+n²` -/
def P7428138619176120047.Spec : Prop :=
  ∀ n, P7428138619176120047.a n = A271649 (n + 1)

end A271649

/-! ## A271649.P15194672566959490540

`or(1, (n+1)*2*n)+3`
-/

namespace A271649.P15194672566959490540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((n + 1) * (2 * n)) + 3

end

end A271649.P15194672566959490540

namespace A271649

/-- `or(1, (n+1)*2*n)+3` -/
def P15194672566959490540.Spec : Prop :=
  ∀ n, (P15194672566959490540.a n : ℤ) = A271649 (n + 1)

end A271649

/-!
# A271652: Number of n X n number squares where all (n-1)^2 2 X 2 subset diagonals have the same sum though those sums may differ.

The programs for A271652, there is no canonical definition to state claims against.
-/

/-! ## A271652.P1929058081522633346

`A000203((n+1)!)²*A297192(n)`
-/

namespace A271652.P1929058081522633346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.factorial (n + 1)) ^ 2 * A297192 n

end

end A271652.P1929058081522633346

/-!
# A271653: Primes of the form 2*prime(2k) - prime(k).

The programs for A271653, the canonical program `A271653.P7087006881751362329` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271653 has offset 1).

The definition of A271653 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271653.P6042086458528685075

`p?[A272042(n+1)]`
-/

namespace A271653.P6042086458528685075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271653.P6042086458528685075

namespace A271653

/-- `p?[A272042(n+1)]` -/
def P6042086458528685075.Spec : Prop :=
  ∀ n, P6042086458528685075.a n = A271653 (n + 1)

theorem P6042086458528685075.correct : P6042086458528685075.Spec := by
  intro n
  simp only [A271653, Nat.add_sub_cancel, A271653.P6042086458528685075.f1, A271653.P6042086458528685075.a, A271653.P7087006881751362329.f1, A271653.P7087006881751362329.a, A031215, A031215.P2952175553723239727.a, A072473, A072473.P11303799734713741739.a, A272042, A272042.P8498336041531170135.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A271653

/-! ## A271653.P7087006881751362329

`p?[A072473(n+1)+A031215(n+1)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A271653

/-- `p?[A072473(n+1)+A031215(n+1)]` -/
def P7087006881751362329.Spec : Prop :=
  ∀ n, P7087006881751362329.a n = A271653 (n + 1)

theorem P7087006881751362329.correct : P7087006881751362329.Spec := by
  intro n
  simp only [A271653, Nat.add_sub_cancel]

end A271653

/-! ## A271653.P13695119896299531843

`p?[A092390(n+1)+A066066(n+1)]`
-/

namespace A271653.P13695119896299531843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092390 (n + 1) + A066066 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271653.P13695119896299531843

namespace A271653

/-- `p?[A092390(n+1)+A066066(n+1)]` -/
def P13695119896299531843.Spec : Prop :=
  ∀ n, P13695119896299531843.a n = A271653 (n + 1)

end A271653

/-! ## A271653.P13362528553030791873

`p?[A000040(n+1)+2*A072473(n+1)]`
-/

namespace A271653.P13362528553030791873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2 * A072473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271653.P13362528553030791873

namespace A271653

/-- `p?[A000040(n+1)+2*A072473(n+1)]` -/
def P13362528553030791873.Spec : Prop :=
  ∀ n, P13362528553030791873.a n = A271653 (n + 1)

end A271653

/-! ## A271653.P14732757901397348098

`p?[2*A031215(n+1)-A000040(n+1)]`
-/

namespace A271653.P14732757901397348098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A031215 (n + 1) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271653.P14732757901397348098

namespace A271653

/-- `p?[2*A031215(n+1)-A000040(n+1)]` -/
def P14732757901397348098.Spec : Prop :=
  ∀ n, P14732757901397348098.a n = A271653 (n + 1)

theorem P14732757901397348098.correct : P14732757901397348098.Spec := by
  intro n
  simp only [A271653, Nat.add_sub_cancel, A271653.P14732757901397348098.f1, A271653.P14732757901397348098.a, A271653.P7087006881751362329.f1, A271653.P7087006881751362329.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031215, A031215.P2952175553723239727.a, A072473, A072473.P11303799734713741739.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A271653

/-! ## A271653.P11105768818894628886

`p?[A073582(2*(n+1))-A000040(n+1)]`
-/

namespace A271653.P11105768818894628886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073582 (2 * (n + 1)) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271653.P11105768818894628886

namespace A271653

/-- `p?[A073582(2*(n+1))-A000040(n+1)]` -/
def P11105768818894628886.Spec : Prop :=
  ∀ n, P11105768818894628886.a n = A271653 (n + 1)

end A271653

/-! ## A271653.P7097968186392159863

`p?[A100484(2*(n+1))-A000040(n+1)]`
-/

namespace A271653.P7097968186392159863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (2 * (n + 1)) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271653.P7097968186392159863

namespace A271653

/-- `p?[A100484(2*(n+1))-A000040(n+1)]` -/
def P7097968186392159863.Spec : Prop :=
  ∀ n, P7097968186392159863.a n = A271653 (n + 1)

theorem P7097968186392159863.correct : P7097968186392159863.Spec := by
  intro n
  simp only [A271653, Nat.add_sub_cancel, A271653.P7097968186392159863.f1, A271653.P7097968186392159863.a, A271653.P7087006881751362329.f1, A271653.P7087006881751362329.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031215, A031215.P2952175553723239727.a, A072473, A072473.P11303799734713741739.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A271653

/-! ## A271653.P3114293114359178090

`p?[A100484(2*(n+1))-A008578(n+2)]`
-/

namespace A271653.P3114293114359178090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (2 * (n + 1)) - A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271653.P3114293114359178090

namespace A271653

/-- `p?[A100484(2*(n+1))-A008578(n+2)]` -/
def P3114293114359178090.Spec : Prop :=
  ∀ n, P3114293114359178090.a n = A271653 (n + 1)

end A271653

/-! ## A271653.P702506973133356497

`p?[2*A000040(2*(n+1))-A000040(n+1)]`
-/

namespace A271653.P702506973133356497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (2 * (n + 1)) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271653.P702506973133356497

namespace A271653

/-- `p?[2*A000040(2*(n+1))-A000040(n+1)]` -/
def P702506973133356497.Spec : Prop :=
  ∀ n, P702506973133356497.a n = A271653 (n + 1)

theorem P702506973133356497.correct : P702506973133356497.Spec := by
  intro n
  simp only [A271653, Nat.add_sub_cancel, A271653.P702506973133356497.f1, A271653.P702506973133356497.a, A271653.P7087006881751362329.f1, A271653.P7087006881751362329.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031215, A031215.P2952175553723239727.a, A072473, A072473.P11303799734713741739.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A271653

/-! ## A271653.P3798920983055703194

`filter[A272042(n+1), A010051(#)]`
-/

namespace A271653.P3798920983055703194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A271653.P3798920983055703194

namespace A271653

/-- `filter[A272042(n+1), A010051(#)]` -/
def P3798920983055703194.Spec : Prop :=
  ∀ n, P3798920983055703194.a n = A271653 (n + 1)

end A271653

/-! ## A271653.P6161490306769030998

`filter[A272042(n+1), A379969(#)]`
-/

namespace A271653.P6161490306769030998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A271653.P6161490306769030998

namespace A271653

/-- `filter[A272042(n+1), A379969(#)]` -/
def P6161490306769030998.Spec : Prop :=
  ∀ n, P6161490306769030998.a n = A271653 (n + 1)

end A271653

/-! ## A271653.P11295691889018520754

`filter[A272042(n+1), A380467(#)]`
-/

namespace A271653.P11295691889018520754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A271653.P11295691889018520754

namespace A271653

/-- `filter[A272042(n+1), A380467(#)]` -/
def P11295691889018520754.Spec : Prop :=
  ∀ n, P11295691889018520754.a n = A271653 (n + 1)

end A271653

/-! ## A271653.P12871754194102253748

`filter[A272042(n+2), A365716(#)]`
-/

namespace A271653.P12871754194102253748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272042 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A271653.P12871754194102253748

namespace A271653

/-- `filter[A272042(n+2), A365716(#)]` -/
def P12871754194102253748.Spec : Prop :=
  ∀ n, P12871754194102253748.a n = A271653 (n + 1)

end A271653

/-! ## A271653.P3893925231327452859

`filter[A272042(n+1), A323152(#)]`
-/

namespace A271653.P3893925231327452859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A271653.P3893925231327452859

namespace A271653

/-- `filter[A272042(n+1), A323152(#)]` -/
def P3893925231327452859.Spec : Prop :=
  ∀ n, P3893925231327452859.a n = A271653 (n + 1)

end A271653

/-! ## A271653.P4088739543765555108

`filter[A272042(n+1), A323153(#)]`
-/

namespace A271653.P4088739543765555108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A271653.P4088739543765555108

namespace A271653

/-- `filter[A272042(n+1), A323153(#)]` -/
def P4088739543765555108.Spec : Prop :=
  ∀ n, P4088739543765555108.a n = A271653 (n + 1)

end A271653

/-! ## A271653.P16799248796343464309

`filter[A272042(n+1), A353670(#)]`
-/

namespace A271653.P16799248796343464309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A271653.P16799248796343464309

namespace A271653

/-- `filter[A272042(n+1), A353670(#)]` -/
def P16799248796343464309.Spec : Prop :=
  ∀ n, P16799248796343464309.a n = A271653 (n + 1)

end A271653

/-! ## A271653.P9580356930566508761

`filter[A272042(n+2), A340371(#)]`
-/

namespace A271653.P9580356930566508761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272042 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A271653.P9580356930566508761

namespace A271653

/-- `filter[A272042(n+2), A340371(#)]` -/
def P9580356930566508761.Spec : Prop :=
  ∀ n, P9580356930566508761.a n = A271653 (n + 1)

end A271653

/-!
# A271654: a(n) = Sum_{k|n} binomial(n-1,k-1).

The programs for A271654, the canonical program `A271654.P1113296937614329341` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271654 has offset 1).

The definition of A271654 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{d}[n+1, C(n, #-1)]` (program `A271654.P1113296937614329341`, by `A271654.P1113296937614329341.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A271654.P1113296937614329341

`∑{d}[n+1, C(n, #-1)]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271654

/-- `∑{d}[n+1, C(n, #-1)]` -/
def P1113296937614329341.Spec : Prop :=
  ∀ n, (P1113296937614329341.a n : ℤ) = A271654 (n + 1)

theorem P1113296937614329341.correct : P1113296937614329341.Spec := by
  intro n
  simp only [A271654, Nat.add_sub_cancel]

end A271654

/-! ## A271654.P13531222589683128998

`A367864(n+1)/(n+1)`
-/

namespace A271654.P13531222589683128998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367864 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A271654.P13531222589683128998

namespace A271654

/-- `A367864(n+1)/(n+1)` -/
def P13531222589683128998.Spec : Prop :=
  ∀ n, P13531222589683128998.a n = (A271654 (n + 1) : ℚ)

end A271654

/-! ## A271654.P8572042523281863371

`∑{d}[n+1, #*C(n+1, #)]/(n+1)`
-/

namespace A271654.P8572042523281863371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d * Nat.choose (n + 1) d : ℕ) : ℚ) / (n + 1 : ℚ)

end

end A271654.P8572042523281863371

namespace A271654

/-- `∑{d}[n+1, #*C(n+1, #)]/(n+1)` -/
def P8572042523281863371.Spec : Prop :=
  ∀ n, P8572042523281863371.a n = (A271654 (n + 1) : ℚ)

end A271654

/-! ## A271654.P13663410416279201489

`∑{d}[n+1, A007318(A000217(n+1)-#)]`
-/

namespace A271654.P13663410416279201489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007318 (A000217 (n + 1) - (d : ℤ)).toNat

end

end A271654.P13663410416279201489

namespace A271654

/-- `∑{d}[n+1, A007318(A000217(n+1)-#)]` -/
def P13663410416279201489.Spec : Prop :=
  ∀ n, P13663410416279201489.a n = A271654 (n + 1)

end A271654

/-! ## A271654.P15029809946020820891

`∑{d}[n+1, A007318(A007318(A027379(n+1))-#)]`
-/

namespace A271654.P15029809946020820891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007318 (A007318 (A027379 (n + 1)).toNat - (d : ℤ)).toNat

end

end A271654.P15029809946020820891

namespace A271654

/-- `∑{d}[n+1, A007318(A007318(A027379(n+1))-#)]` -/
def P15029809946020820891.Spec : Prop :=
  ∀ n, P15029809946020820891.a n = A271654 (n + 1)

end A271654

/-! ## A271654.P4203813396286059314

`∑{d}[n+1, A007318(A007318(A055998(n+1))-#)]`
-/

namespace A271654.P4203813396286059314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007318 (A007318 (A055998 (n + 1)).toNat - (d : ℤ)).toNat

end

end A271654.P4203813396286059314

namespace A271654

/-- `∑{d}[n+1, A007318(A007318(A055998(n+1))-#)]` -/
def P4203813396286059314.Spec : Prop :=
  ∀ n, P4203813396286059314.a n = A271654 (n + 1)

end A271654

/-!
# A271655: Primes p such that phi(p+1) = phi(phi(p-1)+1).

The programs for A271655, there is no canonical definition to state claims against.
-/

/-! ## A271655.P15014421897812649329

`A265851(n+1)%A036690(n+5)`
-/

namespace A271655.P15014421897812649329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265851 (n + 1)) (A036690 (n + 5))

end

end A271655.P15014421897812649329

/-!
# A271656: Odd primes p such that phi(p+1) = phi(phi(p-2)+1).

The programs for A271656, there is no canonical definition to state claims against.
-/

/-! ## A271656.P516939708028182313

`p?[xor(2^n+3, C(comp[∑[n]]-n, 2)-n)]`
-/

namespace A271656.P516939708028182313
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 ^ n + 3 : ℤ) ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271656.P516939708028182313

/-!
# A271658: Primes p such that phi(p-3) = phi(phi(p-2)-1).

The programs for A271658, there is no canonical definition to state claims against.
-/

/-! ## A271658.P8529725660434592595

`record[A006530(A349550(n+1)+4)]`
-/

namespace A271658.P8529725660434592595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A349550 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271658.P8529725660434592595

/-!
# A271659: Primes p such that phi(phi(p-1)+1) = phi(phi(p-2)+1).

The programs for A271659, there is no canonical definition to state claims against.
-/

/-! ## A271659.P11321469734188199957

`p?[A341910(record[A053204(n)])]`
-/

namespace A271659.P11321469734188199957
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341910 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271659.P11321469734188199957

/-!
# A271660: Primes p such that phi(phi(p-2)-1) = phi(phi(p-1)-1).

The programs for A271660, there is no canonical definition to state claims against.
-/

/-! ## A271660.P5931120750401677755

`record[p?[A016789(A111577(n+1))]]`
-/

namespace A271660.P5931120750401677755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A111577 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271660.P5931120750401677755

/-!
# A271661: Expansion of phi(-x^6) / f(-x) in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A271661, there is no canonical definition to state claims against.
-/

/-! ## A271661.P13768956879796398050

`A257639((n+1)*A061255(n))`
-/

namespace A271661.P13768956879796398050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 ((n + 1 : ℤ) * A061255 n).toNat

end

end A271661.P13768956879796398050

/-! ## A271661.P15358483923235287251

`A003056(∑[A008619(A262196(n+3))])`
-/

namespace A271661.P15358483923235287251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A262196 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A271661.P15358483923235287251

/-! ## A271661.P18388798667511113886

`A103128(A208516(n+1)+A045931(3*n+1))`
-/

namespace A271661.P18388798667511113886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A208516 (n + 1) + A045931 (3 * n + 1)).toNat

end

end A271661.P18388798667511113886

/-! ## A271661.P9467691997137131843

`A103128(A112798(n+2)+A045931(3*n+1))`
-/

namespace A271661.P9467691997137131843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A112798 (n + 2) + A045931 (3 * n + 1)).toNat

end

end A271661.P9467691997137131843

/-! ## A271661.P7154311436834622387

`round(A103257(A187829(n+1))/3)`
-/

namespace A271661.P7154311436834622387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A103257 (A187829 (n + 1)).toNat : ℚ) / 3)

end

end A271661.P7154311436834622387

/-!
# A271662: Convolution of nonzero pentagonal numbers (A000326) with themselves.

The programs for A271662, the canonical program `A271662.P4204790357408194713` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271662 has offset 0).

The definition of A271662 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271662.P4475472381749549142

`ogf((1+4x+4x^2)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A271662.P4475472381749549142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 4] [1, -6, 15, -20, 15, -6, 1] n

end

end A271662.P4475472381749549142

namespace A271662

/-- `ogf((1+4x+4x^2)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P4475472381749549142.Spec : Prop :=
  ∀ n, P4475472381749549142.a n = A271662 n

end A271662

/-! ## A271662.P4204790357408194713

`(n+1)*(n+2)*(n+3)*(9*n²+21*n+20)/120`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271662

/-- `(n+1)*(n+2)*(n+3)*(9*n²+21*n+20)/120` -/
def P4204790357408194713.Spec : Prop :=
  ∀ n, P4204790357408194713.a n = (A271662 n : ℚ)

end A271662

/-! ## A271662.P9681019533944689199

`∑[∑[∑[C(3*n+1, 2)+1]]]`
-/

namespace A271662.P9681019533944689199
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n + 1) 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271662.P9681019533944689199

namespace A271662

/-- `∑[∑[∑[C(3*n+1, 2)+1]]]` -/
def P9681019533944689199.Spec : Prop :=
  ∀ n, (P9681019533944689199.a n : ℤ) = A271662 n

end A271662

/-! ## A271662.P3052608696029507095

`∑[∑[∑[∑[a(n-1)+9]]]]` with `a(0)=1, a(1)=6`
-/

namespace A271662.P3052608696029507095
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f4 =>
  f4 (n - 1) + 9

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271662.P3052608696029507095

namespace A271662

/-- `∑[∑[∑[∑[a(n-1)+9]]]]` -/
def P3052608696029507095.Spec : Prop :=
  ∀ n, (P3052608696029507095.a n : ℤ) = A271662 n

end A271662

/-! ## A271662.P5984277883242296913

`C(n+5, 5)+4*C(n+4, 5)+4*C(n+3, 5)`
-/

namespace A271662.P5984277883242296913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 5) 5 + 4 * Nat.choose (n + 4) 5 + 4 * Nat.choose (n + 3) 5

end

end A271662.P5984277883242296913

namespace A271662

/-- `C(n+5, 5)+4*C(n+4, 5)+4*C(n+3, 5)` -/
def P5984277883242296913.Spec : Prop :=
  ∀ n, (P5984277883242296913.a n : ℤ) = A271662 n

end A271662

/-! ## A271662.P6099617907396610404

`∑[∑[A100175(n+1)]]`
-/

namespace A271662.P6099617907396610404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100175 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271662.P6099617907396610404

namespace A271662

/-- `∑[∑[A100175(n+1)]]` -/
def P6099617907396610404.Spec : Prop :=
  ∀ n, P6099617907396610404.a n = A271662 n

end A271662

/-! ## A271662.P1106597915659716269

`∑[A213830(n+1)/2]`
-/

namespace A271662.P1106597915659716269
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213830 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271662.P1106597915659716269

namespace A271662

/-- `∑[A213830(n+1)/2]` -/
def P1106597915659716269.Spec : Prop :=
  ∀ n, P1106597915659716269.a n = (A271662 n : ℚ)

end A271662

/-! ## A271662.P16715361661347382955

`A051879(n)-∑[∑[∑[4*n]]]`
-/

namespace A271662.P16715361661347382955
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051879 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A271662.P16715361661347382955

namespace A271662

/-- `A051879(n)-∑[∑[∑[4*n]]]` -/
def P16715361661347382955.Spec : Prop :=
  ∀ n, P16715361661347382955.a n = A271662 n

end A271662

/-! ## A271662.P18120536397474487922

`A271663(n)+A051836(n)`
-/

namespace A271662.P18120536397474487922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271663 n + A051836 n

end

end A271662.P18120536397474487922

namespace A271662

/-- `A271663(n)+A051836(n)` -/
def P18120536397474487922.Spec : Prop :=
  ∀ n, P18120536397474487922.a n = A271662 n

end A271662

/-! ## A271662.P12206939564303130378

`A114241(n)-A277935(n+1)`
-/

namespace A271662.P12206939564303130378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114241 n - A277935 (n + 1)

end

end A271662.P12206939564303130378

namespace A271662

/-- `A114241(n)-A277935(n+1)` -/
def P12206939564303130378.Spec : Prop :=
  ∀ n, P12206939564303130378.a n = A271662 n

end A271662

/-! ## A271662.P16989108656538129506

`A034263(n)+n*∑[A000292(n)]`
-/

namespace A271662.P16989108656538129506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n + (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271662.P16989108656538129506

namespace A271662

/-- `A034263(n)+n*∑[A000292(n)]` -/
def P16989108656538129506.Spec : Prop :=
  ∀ n, P16989108656538129506.a n = A271662 n

end A271662

/-! ## A271662.P15165898258012796561

`A051836(n+1)+2*A051836(n)`
-/

namespace A271662.P15165898258012796561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051836 (n + 1) + 2 * A051836 n

end

end A271662.P15165898258012796561

namespace A271662

/-- `A051836(n+1)+2*A051836(n)` -/
def P15165898258012796561.Spec : Prop :=
  ∀ n, P15165898258012796561.a n = A271662 n

end A271662

/-!
# A271663: Convolution of nonzero squares (A000290) with nonzero pentagonal numbers (A000326).

The programs for A271663, the canonical program `A271663.P2983554676900216359` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271663 has offset 0).

The definition of A271663 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271663.P2607323976668969371

`ogf((1+3x+2x^2)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A271663.P2607323976668969371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 2] [1, -6, 15, -20, 15, -6, 1] n

end

end A271663.P2607323976668969371

namespace A271663

/-- `ogf((1+3x+2x^2)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P2607323976668969371.Spec : Prop :=
  ∀ n, P2607323976668969371.a n = A271663 n

end A271663

/-! ## A271663.P2983554676900216359

`(n+1)*(n+2)*(n+3)*(6*n²+19*n+20)/120`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271663

/-- `(n+1)*(n+2)*(n+3)*(6*n²+19*n+20)/120` -/
def P2983554676900216359.Spec : Prop :=
  ∀ n, P2983554676900216359.a n = (A271663 n : ℚ)

end A271663

/-! ## A271663.P13686302436598716613

`∑[n+1]²+a(n-1)-∑[∑[n]]` with `a(0)=1`
-/

namespace A271663.P13686302436598716613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + (a (n - 1) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

end

end A271663.P13686302436598716613

namespace A271663

/-- `∑[n+1]²+a(n-1)-∑[∑[n]]` -/
def P13686302436598716613.Spec : Prop :=
  ∀ n, P13686302436598716613.a n = A271663 n

end A271663

/-! ## A271663.P4909839714186632476

`∑[∑[A081436(n)]]`
-/

namespace A271663.P4909839714186632476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081436 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271663.P4909839714186632476

namespace A271663

/-- `∑[∑[A081436(n)]]` -/
def P4909839714186632476.Spec : Prop :=
  ∀ n, P4909839714186632476.a n = A271663 n

end A271663

/-! ## A271663.P294906005061656759

`∑[A132117(n+1)]`
-/

namespace A271663.P294906005061656759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271663.P294906005061656759

namespace A271663

/-- `∑[A132117(n+1)]` -/
def P294906005061656759.Spec : Prop :=
  ∀ n, P294906005061656759.a n = A271663 n

end A271663

/-! ## A271663.P15907822510273034992

`A006322(n+1)+∑[∑[n]²]`
-/

namespace A271663.P15907822510273034992
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006322 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A271663.P15907822510273034992

namespace A271663

/-- `A006322(n+1)+∑[∑[n]²]` -/
def P15907822510273034992.Spec : Prop :=
  ∀ n, P15907822510273034992.a n = A271663 n

end A271663

/-! ## A271663.P6223875710798934956

`∑[∑[n+1]²]-∑[A000292(n)]`
-/

namespace A271663.P6223875710798934956
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f3 j

end

end A271663.P6223875710798934956

namespace A271663

/-- `∑[∑[n+1]²]-∑[A000292(n)]` -/
def P6223875710798934956.Spec : Prop :=
  ∀ n, P6223875710798934956.a n = A271663 n

end A271663

/-! ## A271663.P6297422891781588019

`A174002(n)+A027660(n)`
-/

namespace A271663.P6297422891781588019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174002 n + A027660 n

end

end A271663.P6297422891781588019

namespace A271663

/-- `A174002(n)+A027660(n)` -/
def P6297422891781588019.Spec : Prop :=
  ∀ n, P6297422891781588019.a n = A271663 n

end A271663

/-! ## A271663.P15950989463864980117

`A271662(n)-A051836(n)`
-/

namespace A271663.P15950989463864980117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271662 n - A051836 n

end

end A271663.P15950989463864980117

namespace A271663

/-- `A271662(n)-A051836(n)` -/
def P15950989463864980117.Spec : Prop :=
  ∀ n, P15950989463864980117.a n = A271663 n

end A271663

/-! ## A271663.P7950904135722144696

`A024166(n)+A006322(n+1)`
-/

namespace A271663.P7950904135722144696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024166 n + A006322 (n + 1)

end

end A271663.P7950904135722144696

namespace A271663

/-- `A024166(n)+A006322(n+1)` -/
def P7950904135722144696.Spec : Prop :=
  ∀ n, P7950904135722144696.a n = A271663 n

end A271663

/-! ## A271663.P5200207134836154225

`A051843(n)+A002417(n+1)`
-/

namespace A271663.P5200207134836154225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051843 n + A002417 (n + 1)

end

end A271663.P5200207134836154225

namespace A271663

/-- `A051843(n)+A002417(n+1)` -/
def P5200207134836154225.Spec : Prop :=
  ∀ n, P5200207134836154225.a n = A271663 n

end A271663

/-! ## A271663.P2615866178529398524

`A244882(n)+∑[∑[A000292(n)]]`
-/

namespace A271663.P2615866178529398524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244882 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271663.P2615866178529398524

namespace A271663

/-- `A244882(n)+∑[∑[A000292(n)]]` -/
def P2615866178529398524.Spec : Prop :=
  ∀ n, P2615866178529398524.a n = A271663 n

end A271663

/-! ## A271663.P6138266190916165517

`A033455(n+1)+∑[∑[A000330(n)]]`
-/

namespace A271663.P6138266190916165517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033455 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271663.P6138266190916165517

namespace A271663

/-- `A033455(n+1)+∑[∑[A000330(n)]]` -/
def P6138266190916165517.Spec : Prop :=
  ∀ n, P6138266190916165517.a n = A271663 n

end A271663

/-! ## A271663.P6684181603993155973

`2*A033455(n+1)-A005585(n+1)`
-/

namespace A271663.P6684181603993155973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033455 (n + 1) - A005585 (n + 1)

end

end A271663.P6684181603993155973

namespace A271663

/-- `2*A033455(n+1)-A005585(n+1)` -/
def P6684181603993155973.Spec : Prop :=
  ∀ n, P6684181603993155973.a n = A271663 n

end A271663

/-! ## A271663.P6854119474466023694

`A051836(n)-(∑[A051836(n)]-A051923(n))`
-/

namespace A271663.P6854119474466023694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051836 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051836 n - (∑ j ∈ Finset.range (n + 1), f1 j - A051923 n)

end

end A271663.P6854119474466023694

namespace A271663

/-- `A051836(n)-(∑[A051836(n)]-A051923(n))` -/
def P6854119474466023694.Spec : Prop :=
  ∀ n, P6854119474466023694.a n = A271663 n

end A271663

/-! ## A271663.P6399836461139037634

`A051836(n+1)+A051836(n)`
-/

namespace A271663.P6399836461139037634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051836 (n + 1) + A051836 n

end

end A271663.P6399836461139037634

namespace A271663

/-- `A051836(n+1)+A051836(n)` -/
def P6399836461139037634.Spec : Prop :=
  ∀ n, P6399836461139037634.a n = A271663 n

end A271663

/-! ## A271663.P6827497226807441572

`A024166(n+1)-(A000332(n+1)+A000330(n))`
-/

namespace A271663.P6827497226807441572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024166 (n + 1) - (A000332 (n + 1) + A000330 n)

end

end A271663.P6827497226807441572

namespace A271663

/-- `A024166(n+1)-(A000332(n+1)+A000330(n))` -/
def P6827497226807441572.Spec : Prop :=
  ∀ n, P6827497226807441572.a n = A271663 n

end A271663

/-! ## A271663.P12699092385213342539

`A112851(n+1)+A002415(n+2)`
-/

namespace A271663.P12699092385213342539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112851 (n + 1) + A002415 (n + 2)

end

end A271663.P12699092385213342539

namespace A271663

/-- `A112851(n+1)+A002415(n+2)` -/
def P12699092385213342539.Spec : Prop :=
  ∀ n, P12699092385213342539.a n = A271663 n

end A271663

/-! ## A271663.P2849791471477633130

`A006414(n)+A000389(n+3)`
-/

namespace A271663.P2849791471477633130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006414 n + A000389 (n + 3)

end

end A271663.P2849791471477633130

namespace A271663

/-- `A006414(n)+A000389(n+3)` -/
def P2849791471477633130.Spec : Prop :=
  ∀ n, P2849791471477633130.a n = A271663 n

end A271663

/-! ## A271663.P6455210677376221208

`A024166(n+1)-A000332(n+3)`
-/

namespace A271663.P6455210677376221208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024166 (n + 1) - A000332 (n + 3)

end

end A271663.P6455210677376221208

namespace A271663

/-- `A024166(n+1)-A000332(n+3)` -/
def P6455210677376221208.Spec : Prop :=
  ∀ n, P6455210677376221208.a n = A271663 n

end A271663

/-!
# A271665: Number of ordered ways to write n as w^2 + x^2 + y^2 + z^2 such that w^2 + 4*x*y + 8*y*z + 32*z*x is a square, where w is a positive integer and x,y,z are nonnegative integers.

The programs for A271665, there is no canonical definition to state claims against.
-/

/-! ## A271665.P12781330634607844490

`gcd(A049727(A287493(n)), A072861(n+1))`
-/

namespace A271665.P12781330634607844490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049727 (A287493 n).toNat) (A072861 (n + 1))

end

end A271665.P12781330634607844490

/-! ## A271665.P5116349247198584536

`gcd(A116432(3*n+4), A181071(A007913(n+1)))`
-/

namespace A271665.P5116349247198584536
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A116432 (3 * n + 4)) (A181071 (A007913 (n + 1)).toNat)

end

end A271665.P5116349247198584536

/-! ## A271665.P12410132835661097973

`gcd(∑{d}[n+1, #], A062964(A006131(n)))`
-/

namespace A271665.P12410132835661097973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A062964 (A006131 n).toNat)

end

end A271665.P12410132835661097973

/-! ## A271665.P7065997846434657281

`gcd(∏{p}[n+1, #+1], A281113(A365376(n+3)))`
-/

namespace A271665.P7065997846434657281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ p ∈ Nat.primeFactors (f1 n), (p + 1) : ℕ) : ℤ) (A281113 (A365376 (n + 3)).toNat)

end

end A271665.P7065997846434657281

/-! ## A271665.P11234900117608512511

`A130270(gcd(A286410(n), A286424(n)))`
-/

namespace A271665.P11234900117608512511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (Int.gcd (A286410 n) (A286424 n))

end

end A271665.P11234900117608512511

/-!
# A271666: Primes p such that 4*p^2+4*p-1 is prime.

The programs for A271666, there is no canonical definition to state claims against.
-/

/-! ## A271666.P14122606991413756430

`p?[A088572(n+1)]`
-/

namespace A271666.P14122606991413756430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271666.P14122606991413756430

/-! ## A271666.P7784688201172686598

`p?[floor(A028870(n+1)/2)]`
-/

namespace A271666.P7784688201172686598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A028870 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271666.P7784688201172686598

/-! ## A271666.P14907600294380721716

`filter[A088572(n+1), A010051(#)]`
-/

namespace A271666.P14907600294380721716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A271666.P14907600294380721716

/-! ## A271666.P9861214547667288224

`∩[A000040(n+1), A088572(n+1)]`
-/

namespace A271666.P9861214547667288224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271666.P9861214547667288224

/-! ## A271666.P274152581618341959

`∩[A042966(n+1), A088572(n+1)]`
-/

namespace A271666.P274152581618341959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271666.P274152581618341959

/-! ## A271666.P17233202985452009584

`∩[A045319(n+1), A088572(n+1)]`
-/

namespace A271666.P17233202985452009584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271666.P17233202985452009584

/-! ## A271666.P12950673012354932242

`∩[A045320(n+1), A088572(n+1)]`
-/

namespace A271666.P12950673012354932242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271666.P12950673012354932242

/-! ## A271666.P4977442901147289726

`∩[A045322(n+1), A088572(n+1)]`
-/

namespace A271666.P4977442901147289726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271666.P4977442901147289726

/-! ## A271666.P9580506379800538902

`∩[A088572(n+1), A106118(n+1)]`
-/

namespace A271666.P9580506379800538902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271666.P9580506379800538902

/-! ## A271666.P5663501191715507182

`∩[A088572(n+1), A182986(n+1)]`
-/

namespace A271666.P5663501191715507182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271666.P5663501191715507182

/-! ## A271666.P1458174828710896633

`∩[A088572(n+1), A216881(n+1)]`
-/

namespace A271666.P1458174828710896633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271666.P1458174828710896633

/-! ## A271666.P3895515156180795829

`∩[A088572(n+1), A216882(n+1)]`
-/

namespace A271666.P3895515156180795829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A271666.P3895515156180795829

/-! ## A271666.P12460975287218073461

`p?[A273943(A028870(n+1)-1)]`
-/

namespace A271666.P12460975287218073461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A028870 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271666.P12460975287218073461

/-! ## A271666.P17117435356422688695

`record[A006530(A089623(n+2))]`
-/

namespace A271666.P17117435356422688695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A089623 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271666.P17117435356422688695

/-! ## A271666.P13007900727765830840

`record[A006530(A028870(n+2)-1)]`
-/

namespace A271666.P13007900727765830840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028870 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271666.P13007900727765830840

/-! ## A271666.P4300030377142416448

`record[A006530(2*floor(A028870(n+1)/2))]`
-/

namespace A271666.P4300030377142416448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * ⌊(A028870 (n + 1) : ℚ) / 2⌋).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271666.P4300030377142416448

/-! ## A271666.P412835540207964125

`p?[record[A308085(n+1)]]`
-/

namespace A271666.P412835540207964125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308085 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271666.P412835540207964125

/-! ## A271666.P8693162472173638455

`record[A006530(A308085(n+3))]`
-/

namespace A271666.P8693162472173638455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A308085 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271666.P8693162472173638455

/-! ## A271666.P15637793135531446633

`filter[A088572(n+2), A080339(#)]`
-/

namespace A271666.P15637793135531446633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088572 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A271666.P15637793135531446633

/-!
# A271667: Primes p such that 6*p^2+6*p-1 is prime.

The programs for A271667, there is no canonical definition to state claims against.
-/

/-! ## A271667.P12605667229928466120

`p?[A001281(A063451(n+1))]`
-/

namespace A271667.P12605667229928466120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A063451 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271667.P12605667229928466120

/-! ## A271667.P4140484059357691144

`p?[A029578(A063451(n+3))]`
-/

namespace A271667.P4140484059357691144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A063451 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271667.P4140484059357691144

/-! ## A271667.P6731627205599584012

`p?[A142150(A063451(A000027(n+1)))]`
-/

namespace A271667.P6731627205599584012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A063451 (A000027 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271667.P6731627205599584012

/-! ## A271667.P16737829325365260596

`A000265(p?[A142150(A063451(n+1))])`
-/

namespace A271667.P16737829325365260596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A063451 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A271667.P16737829325365260596

/-! ## A271667.P15426167887743886521

`A000038(n+1)+p?[A142150(A063451(n+1))]`
-/

namespace A271667.P15426167887743886521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A063451 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A271667.P15426167887743886521

/-! ## A271667.P16450149192000899376

`p?[A142150(A063451(n+1))]%(A000041(n+2)+2)²`
-/

namespace A271667.P16450149192000899376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A063451 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ((A000041 (n + 2) + 2) ^ 2)

end

end A271667.P16450149192000899376

/-!
# A271668: Triangle read by rows. The first column is A000217(n+1). From the second row we apply - A002262(n) for the following terms of the row.

The programs for A271668, the canonical program `A271668.P273675855261280975` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271668 has offset 0).

The definition of A271668 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271668.P273675855261280975

`A094728(n+1)-A049780(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A271668

/-- `A094728(n+1)-A049780(n)` -/
def P273675855261280975.Spec : Prop :=
  ∀ n, P273675855261280975.a n = A271668 n

theorem P273675855261280975.correct : P273675855261280975.Spec := by
  intro n
  simp only [A271668]

end A271668

/-! ## A271668.P13816679116552094534

`C(row(n)+2, 2)-C(col(n), 2)`
-/

namespace A271668.P13816679116552094534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n + 2) 2 : ℤ) - (Nat.choose (SequenceMachineLib.triCol n) 2 : ℤ)

end

end A271668.P13816679116552094534

namespace A271668

/-- `C(row(n)+2, 2)-C(col(n), 2)` -/
def P13816679116552094534.Spec : Prop :=
  ∀ n, P13816679116552094534.a n = A271668 n

theorem P13816679116552094534.correct : P13816679116552094534.Spec := by
  intro n
  simp only [A271668, Nat.add_sub_cancel, A271668.P13816679116552094534.a, A271668.P273675855261280975.a, A049780, A049780.P1451714115053196753.a, A094728, A094728.P15119429803493593113.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A271668

/-! ## A271668.P14391624622366054468

`(row(n)+2-col(n))*(row(n)+1+col(n))/2`
-/

namespace A271668.P14391624622366054468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.triRow n + 2 : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (SequenceMachineLib.triRow n + 1 + SequenceMachineLib.triCol n : ℤ) : ℚ) / 2

end

end A271668.P14391624622366054468

namespace A271668

/-- `(row(n)+2-col(n))*(row(n)+1+col(n))/2` -/
def P14391624622366054468.Spec : Prop :=
  ∀ n, P14391624622366054468.a n = (A271668 n : ℚ)

theorem P14391624622366054468.correct : P14391624622366054468.Spec := by
  intro n
  simp only [A271668, Nat.add_sub_cancel, A271668.P14391624622366054468.a, A271668.P273675855261280975.a, A049780, A049780.P1451714115053196753.a, A094728, A094728.P15119429803493593113.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A271668

/-! ## A271668.P2507224077094775015

`comp[∑[n-1]]-C(1-C(∑[char[∑[n]]], 2)+n, 2)`
-/

namespace A271668.P2507224077094775015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (Nat.choose (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) + (n : ℤ)).toNat 2 : ℤ)

end

end A271668.P2507224077094775015

namespace A271668

/-- `comp[∑[n-1]]-C(1-C(∑[char[∑[n]]], 2)+n, 2)` -/
def P2507224077094775015.Spec : Prop :=
  ∀ n, P2507224077094775015.a n = A271668 n

end A271668

/-! ## A271668.P9089164798286032633

`comp[∑[n-1]]-C(1-(C(∑[char[∑[n]]], 2)-n), 2)`
-/

namespace A271668.P9089164798286032633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (Nat.choose (1 - ((Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) - (n : ℤ))).toNat 2 : ℤ)

end

end A271668.P9089164798286032633

namespace A271668

/-- `comp[∑[n-1]]-C(1-(C(∑[char[∑[n]]], 2)-n), 2)` -/
def P9089164798286032633.Spec : Prop :=
  ∀ n, P9089164798286032633.a n = A271668 n

end A271668

/-! ## A271668.P16661449328542678392

`A049777(char[∑[n]]+n)`
-/

namespace A271668.P16661449328542678392
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A271668.P16661449328542678392

namespace A271668

/-- `A049777(char[∑[n]]+n)` -/
def P16661449328542678392.Spec : Prop :=
  ∀ n, P16661449328542678392.a n = A271668 n

end A271668

/-! ## A271668.P5316221800512778582

`A205376(char[∑[n]]+n)/8`
-/

namespace A271668.P5316221800512778582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205376 ((if ∃ j, f1 j = n then 1 else 0) + n) : ℚ) / 8

end

end A271668.P5316221800512778582

namespace A271668

/-- `A205376(char[∑[n]]+n)/8` -/
def P5316221800512778582.Spec : Prop :=
  ∀ n, P5316221800512778582.a n = (A271668 n : ℚ)

end A271668

/-! ## A271668.P12192543162008625689

`A329854(n)+∑[2*char[∑[n+1]]]`
-/

namespace A271668.P12192543162008625689
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329854 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A271668.P12192543162008625689

namespace A271668

/-- `A329854(n)+∑[2*char[∑[n+1]]]` -/
def P12192543162008625689.Spec : Prop :=
  ∀ n, P12192543162008625689.a n = A271668 n

end A271668

/-! ## A271668.P12363727856217275188

`comp[∑[n-1]]-C(A002260(n+1), 2)`
-/

namespace A271668.P12363727856217275188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (Nat.choose (A002260 (n + 1)).toNat 2 : ℤ)

end

end A271668.P12363727856217275188

namespace A271668

/-- `comp[∑[n-1]]-C(A002260(n+1), 2)` -/
def P12363727856217275188.Spec : Prop :=
  ∀ n, P12363727856217275188.a n = A271668 n

end A271668

/-! ## A271668.P8537426180995537507

`A144330(n)+A123578(n)`
-/

namespace A271668.P8537426180995537507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144330 n + A123578 n

end

end A271668.P8537426180995537507

namespace A271668

/-- `A144330(n)+A123578(n)` -/
def P8537426180995537507.Spec : Prop :=
  ∀ n, P8537426180995537507.a n = A271668 n

end A271668

/-! ## A271668.P3541583017561357284

`A049777(n+1)+A002262(n)`
-/

namespace A271668.P3541583017561357284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (n + 1) + A002262 n

end

end A271668.P3541583017561357284

namespace A271668

/-- `A049777(n+1)+A002262(n)` -/
def P3541583017561357284.Spec : Prop :=
  ∀ n, P3541583017561357284.a n = A271668 n

theorem P3541583017561357284.correct : P3541583017561357284.Spec := by
  intro n
  simp only [A271668, Nat.add_sub_cancel, A271668.P3541583017561357284.a, A271668.P273675855261280975.a, A002262, A002262.P17823619022233514403.a, A049777, A049777.P8069278756495172327.a, A049780, A049780.P1451714115053196753.a, A094728, A094728.P15119429803493593113.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A271668

/-! ## A271668.P1961752124316567080

`A094727(n+1)+A049780(n)`
-/

namespace A271668.P1961752124316567080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) + A049780 n

end

end A271668.P1961752124316567080

namespace A271668

/-- `A094727(n+1)+A049780(n)` -/
def P1961752124316567080.Spec : Prop :=
  ∀ n, P1961752124316567080.a n = A271668 n

theorem P1961752124316567080.correct : P1961752124316567080.Spec := by
  intro n
  simp only [A271668, Nat.add_sub_cancel, A271668.P1961752124316567080.a, A271668.P273675855261280975.a, A049780, A049780.P1451714115053196753.a, A094727, A094727.P1041695477673985807.a, A094728, A094728.P15119429803493593113.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A271668

/-! ## A271668.P10673420440681916791

`A007401(n+1)-A112367(n)`
-/

namespace A271668.P10673420440681916791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (n + 1) - A112367 n

end

end A271668.P10673420440681916791

namespace A271668

/-- `A007401(n+1)-A112367(n)` -/
def P10673420440681916791.Spec : Prop :=
  ∀ n, P10673420440681916791.a n = A271668 n

end A271668

/-! ## A271668.P10380017827356960692

`A104587(n)-A095834(n+1)`
-/

namespace A271668.P10380017827356960692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104587 n - A095834 (n + 1)

end

end A271668.P10380017827356960692

namespace A271668

/-- `A104587(n)-A095834(n+1)` -/
def P10380017827356960692.Spec : Prop :=
  ∀ n, P10380017827356960692.a n = A271668 n

end A271668

/-! ## A271668.P11624778472453296255

`A131783(n+1)-A114327(n)`
-/

namespace A271668.P11624778472453296255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131783 (n + 1) - A114327 n

end

end A271668.P11624778472453296255

namespace A271668

/-- `A131783(n+1)-A114327(n)` -/
def P11624778472453296255.Spec : Prop :=
  ∀ n, P11624778472453296255.a n = A271668 n

theorem P11624778472453296255.correct : P11624778472453296255.Spec := by
  intro n
  simp only [A271668, Nat.add_sub_cancel, A271668.P11624778472453296255.a, A271668.P273675855261280975.a, A049780, A049780.P1451714115053196753.a, A094728, A094728.P15119429803493593113.a, A114327, A114327.P12930942860764139837.a, A131783, A131783.P16711198060458241591.a, A025581, A025581.P16112744757063613497.a, A049777, A049777.P8069278756495172327.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A271668

/-! ## A271668.P9617706963675564195

`A130269(n+1)-A143844(n)`
-/

namespace A271668.P9617706963675564195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130269 (n + 1) - A143844 n

end

end A271668.P9617706963675564195

namespace A271668

/-- `A130269(n+1)-A143844(n)` -/
def P9617706963675564195.Spec : Prop :=
  ∀ n, P9617706963675564195.a n = A271668 n

end A271668

/-! ## A271668.P3870024634663847739

`A064801(n+1)-A367964(n)`
-/

namespace A271668.P3870024634663847739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064801 (n + 1) - A367964 n

end

end A271668.P3870024634663847739

namespace A271668

/-- `A064801(n+1)-A367964(n)` -/
def P3870024634663847739.Spec : Prop :=
  ∀ n, P3870024634663847739.a n = A271668 n

end A271668

/-! ## A271668.P4529761597582352342

`A008867(n+2)-A087401(n)`
-/

namespace A271668.P4529761597582352342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008867 (n + 2) - A087401 n

end

end A271668.P4529761597582352342

namespace A271668

/-- `A008867(n+2)-A087401(n)` -/
def P4529761597582352342.Spec : Prop :=
  ∀ n, P4529761597582352342.a n = A271668 n

end A271668

/-! ## A271668.P1204453247769841030

`A130269(n+1)-A002262(n)²`
-/

namespace A271668.P1204453247769841030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130269 (n + 1) - A002262 n ^ 2

end

end A271668.P1204453247769841030

namespace A271668

/-- `A130269(n+1)-A002262(n)²` -/
def P1204453247769841030.Spec : Prop :=
  ∀ n, P1204453247769841030.a n = A271668 n

end A271668

/-! ## A271668.P3075007113920945729

`A014132(n+1)-(A112367(n)+1)`
-/

namespace A271668.P3075007113920945729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1) - (A112367 n + 1)

end

end A271668.P3075007113920945729

namespace A271668

/-- `A014132(n+1)-(A112367(n)+1)` -/
def P3075007113920945729.Spec : Prop :=
  ∀ n, P3075007113920945729.a n = A271668 n

end A271668

/-!
# A271669: Smallest k > n such that n divides k and n^k == n (mod k).

The programs for A271669, there is no canonical definition to state claims against.
-/

/-! ## A271669.P7381308997063301920

`(n+1)*A102457(xor(1, n+2))`
-/

namespace A271669.P7381308997063301920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A102457 (Nat.xor 1 (n + 2))

end

end A271669.P7381308997063301920

/-! ## A271669.P13214323035838610145

`lcm(n+1, A102457(xor(1, n)+2))`
-/

namespace A271669.P13214323035838610145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A102457 (Nat.xor 1 n + 2))

end

end A271669.P13214323035838610145

/-! ## A271669.P2915136537846418488

`(n+1)*A102457(abs(1-n)+2)`
-/

namespace A271669.P2915136537846418488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A102457 (|1 - (n : ℤ)| + 2).toNat

end

end A271669.P2915136537846418488

/-! ## A271669.P3336632415646731249

`lcm(n+1, A102457(A004442(n+2)))`
-/

namespace A271669.P3336632415646731249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A102457 (A004442 (n + 2)).toNat)

end

end A271669.P3336632415646731249

/-! ## A271669.P4232755565302222713

`A102457(A004442(n+2))/(n+1)^(A000007(n)-1)`
-/

namespace A271669.P4232755565302222713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102457 (A004442 (n + 2)).toNat : ℚ) / (n + 1 : ℚ) ^ (A000007 n - 1 : ℤ)

end

end A271669.P4232755565302222713

/-!
# A271675: Numbers m such that 3*m + 4 is a square.

The programs for A271675, the canonical program `A271675.P10096165261987070359` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271675 has offset 1).

The definition of A271675 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A271675.P1361957493845975379

`ogf((4x+3x^2-x^4)/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A271675.P1361957493845975379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 3, 0, -1] [1, -1, -2, 2, 1, -1] n

end

end A271675.P1361957493845975379

namespace A271675

/-- `ogf((4x+3x^2-x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P1361957493845975379.Spec : Prop :=
  ∀ n, P1361957493845975379.a n = A271675 (n + 1)

end A271675

/-! ## A271675.P10096165261987070359

`(6*(n+1)*(n+2)+(2*(n+1)+1)*(-1)^(n+1)-1)/8-1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271675

/-- `(6*(n+1)*(n+2)+(2*(n+1)+1)*(-1)^(n+1)-1)/8-1` -/
def P10096165261987070359.Spec : Prop :=
  ∀ n, P10096165261987070359.a n = (A271675 (n + 1) : ℚ)

end A271675

/-! ## A271675.P3046093169045593209

`∑[ceil(sqrt(lcm(4, n*(n+2))))]`
-/

namespace A271675.P3046093169045593209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.lcm 4 (n * (n + 2)) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271675.P3046093169045593209

namespace A271675

/-- `∑[ceil(sqrt(lcm(4, n*(n+2))))]` -/
def P3046093169045593209.Spec : Prop :=
  ∀ n, P3046093169045593209.a n = A271675 (n + 1)

end A271675

/-! ## A271675.P2635677908839447811

`∑[(n+1)*gcd(2, n+1)]-1`
-/

namespace A271675.P2635677908839447811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.gcd 2 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A271675.P2635677908839447811

namespace A271675

/-- `∑[(n+1)*gcd(2, n+1)]-1` -/
def P2635677908839447811.Spec : Prop :=
  ∀ n, P2635677908839447811.a n = A271675 (n + 1)

end A271675

/-! ## A271675.P10786744462032515480

`2*∑[∑[n]/a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A271675.P10786744462032515480
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271675.P10786744462032515480

namespace A271675

/-- `2*∑[∑[n]/a(n-1)]` -/
def P10786744462032515480.Spec : Prop :=
  ∀ n, P10786744462032515480.a n = (A271675 (n + 1) : ℚ)

end A271675

/-! ## A271675.P8903419058120481786

`∑[gcd(n+2+n, (n+1)²)]-1`
-/

namespace A271675.P8903419058120481786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 2 + n) ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A271675.P8903419058120481786

namespace A271675

/-- `∑[gcd(n+2+n, (n+1)²)]-1` -/
def P8903419058120481786.Spec : Prop :=
  ∀ n, P8903419058120481786.a n = A271675 (n + 1)

end A271675

/-! ## A271675.P11156627915043890157

`∑[(n+1)*(C(n, a(n-1))+1)]` with `a(0)=0`
-/

namespace A271675.P11156627915043890157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  (n + 1) * (Nat.choose n (f1 (n - 1)) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271675.P11156627915043890157

namespace A271675

/-- `∑[(n+1)*(C(n, a(n-1))+1)]` -/
def P11156627915043890157.Spec : Prop :=
  ∀ n, (P11156627915043890157.a n : ℤ) = A271675 (n + 1)

end A271675

/-! ## A271675.P14756234689905014813

`a(n-1)+(n+1)*(n%2+1)` with `a(0)=0`
-/

namespace A271675.P14756234689905014813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n + 1) * (n % 2 + 1)

end

end A271675.P14756234689905014813

namespace A271675

/-- `a(n-1)+(n+1)*(n%2+1)` -/
def P14756234689905014813.Spec : Prop :=
  ∀ n, (P14756234689905014813.a n : ℤ) = A271675 (n + 1)

end A271675

/-! ## A271675.P16376645497793428543

`∑[∑[a(n-1)+4]/a(n-1)]` with `a(0)=0, a(1)=4`
-/

namespace A271675.P16376645497793428543
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271675.P16376645497793428543

namespace A271675

/-- `∑[∑[a(n-1)+4]/a(n-1)]` -/
def P16376645497793428543.Spec : Prop :=
  ∀ n, P16376645497793428543.a n = (A271675 (n + 1) : ℚ)

end A271675

/-! ## A271675.P1563002966622311961

`∑[floor((2*n+1)/gcd(n, n+2))]+n`
-/

namespace A271675.P1563002966622311961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℚ) / (Nat.gcd n (n + 2) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A271675.P1563002966622311961

namespace A271675

/-- `∑[floor((2*n+1)/gcd(n, n+2))]+n` -/
def P1563002966622311961.Spec : Prop :=
  ∀ n, P1563002966622311961.a n = A271675 (n + 1)

end A271675

/-! ## A271675.P14336251352019725290

`∑[(n+1)*∑[floor(a(n-2))]]` with `a(0)=0, a(1)=2, a(2)=-1, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A271675.P14336251352019725290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, -1, 1] fun n f2 =>
  f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271675.P14336251352019725290

namespace A271675

/-- `∑[(n+1)*∑[floor(a(n-2))]]` -/
def P14336251352019725290.Spec : Prop :=
  ∀ n, P14336251352019725290.a n = A271675 (n + 1)

end A271675

/-! ## A271675.P5852311398969747245

`∑[C(n+1, a(n-1))+n+1]-1` with `a(0)=1`
-/

namespace A271675.P5852311398969747245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.choose (n + 1) (f1 (n - 1)) + (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A271675.P5852311398969747245

namespace A271675

/-- `∑[C(n+1, a(n-1))+n+1]-1` -/
def P5852311398969747245.Spec : Prop :=
  ∀ n, P5852311398969747245.a n = A271675 (n + 1)

end A271675

/-! ## A271675.P4760307392516387456

`a(n-1)+(n+1)*gcd(n-1, 2*n)` with `a(0)=0`
-/

namespace A271675.P4760307392516387456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n + 1) * Int.gcd ((n : ℤ) - 1) (2 * n : ℤ)

end

end A271675.P4760307392516387456

namespace A271675

/-- `a(n-1)+(n+1)*gcd(n-1, 2*n)` -/
def P4760307392516387456.Spec : Prop :=
  ∀ n, (P4760307392516387456.a n : ℤ) = A271675 (n + 1)

end A271675

/-! ## A271675.P15549672444094112279

`∑[floor(2*n*lcm(2, n+2)/(2*n+1))]`
-/

namespace A271675.P15549672444094112279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℚ) * ((Nat.lcm 2 (n + 2) : ℚ) / (2 * n + 1 : ℚ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271675.P15549672444094112279

namespace A271675

/-- `∑[floor(2*n*lcm(2, n+2)/(2*n+1))]` -/
def P15549672444094112279.Spec : Prop :=
  ∀ n, P15549672444094112279.a n = A271675 (n + 1)

end A271675

/-! ## A271675.P8911082320346597339

`∑[and(n+1, n-2-a(n-1))+n+1]` with `a(0)=0`
-/

namespace A271675.P8911082320346597339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.land (n + 1 : ℤ) ((n : ℤ) - 2 - f1 (n - 1)) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271675.P8911082320346597339

namespace A271675

/-- `∑[and(n+1, n-2-a(n-1))+n+1]` -/
def P8911082320346597339.Spec : Prop :=
  ∀ n, P8911082320346597339.a n = A271675 (n + 1)

end A271675

/-! ## A271675.P3593417522829835190

`A164576(n+1)%A298027(n)`
-/

namespace A271675.P3593417522829835190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164576 (n + 1)) (A298027 n)

end

end A271675.P3593417522829835190

namespace A271675

/-- `A164576(n+1)%A298027(n)` -/
def P3593417522829835190.Spec : Prop :=
  ∀ n, P3593417522829835190.a n = A271675 (n + 1)

end A271675

/-! ## A271675.P266917425179805701

`Δ[A246695(n)-Δ[n²]]`
-/

namespace A271675.P266917425179805701
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246695 n - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271675.P266917425179805701

namespace A271675

/-- `Δ[A246695(n)-Δ[n²]]` -/
def P266917425179805701.Spec : Prop :=
  ∀ n, P266917425179805701.a n = A271675 (n + 1)

end A271675

/-! ## A271675.P4047052026229509643

`(A186424(n+1)-3)/2`
-/

namespace A271675.P4047052026229509643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186424 (n + 1) - 3 : ℚ) / 2

end

end A271675.P4047052026229509643

namespace A271675

/-- `(A186424(n+1)-3)/2` -/
def P4047052026229509643.Spec : Prop :=
  ∀ n, P4047052026229509643.a n = (A271675 (n + 1) : ℚ)

end A271675

/-! ## A271675.P3908509950811277806

`A014682(n)*A123684(n+3)`
-/

namespace A271675.P3908509950811277806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n * A123684 (n + 3)

end

end A271675.P3908509950811277806

namespace A271675

/-- `A014682(n)*A123684(n+3)` -/
def P3908509950811277806.Spec : Prop :=
  ∀ n, P3908509950811277806.a n = A271675 (n + 1)

end A271675

/-! ## A271675.P2356445292709648165

`A014682(n)*A225126(n+3)`
-/

namespace A271675.P2356445292709648165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n * A225126 (n + 3)

end

end A271675.P2356445292709648165

namespace A271675

/-- `A014682(n)*A225126(n+3)` -/
def P2356445292709648165.Spec : Prop :=
  ∀ n, P2356445292709648165.a n = A271675 (n + 1)

end A271675

/-!
# A271677: Number of ways to move elements of an nXnXn triangular array to themselves or a neighbor, with no more than 1-1 elements moved to themselves.

The programs for A271677, there is no canonical definition to state claims against.
-/

/-! ## A271677.P4003912547877062679

`A271684(∑[n+1])`
-/

namespace A271677.P4003912547877062679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271684 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271677.P4003912547877062679

/-! ## A271677.P10172411909498124742

`record[1-Δ[A271684(n+1)]]`
-/

namespace A271677.P10172411909498124742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271684 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271677.P10172411909498124742

/-! ## A271677.P14624578552324767558

`record[A271684(gcd(n, A129062(n)))]`
-/

namespace A271677.P14624578552324767558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271684 (Int.gcd (n : ℤ) (A129062 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271677.P14624578552324767558

/-! ## A271677.P17730588984201797260

`record[A055138(n)*A271684(n+1)]`
-/

namespace A271677.P17730588984201797260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055138 n * A271684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271677.P17730588984201797260

/-! ## A271677.P15655743313253001395

`record[A081733(n)*A271684(n+1)]`
-/

namespace A271677.P15655743313253001395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081733 n * A271684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271677.P15655743313253001395

/-!
# A271678: Number of ways to move elements of an n X n X n triangular array to themselves or a neighbor, with no more than 2-1 elements moved to themselves.

The programs for A271678, there is no canonical definition to state claims against.
-/

/-! ## A271678.P8990283621275987354

`A271684(∑[n+2])`
-/

namespace A271678.P8990283621275987354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271684 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A271678.P8990283621275987354

/-! ## A271678.P9851486044503927724

`record[A271684(A193974(n))]`
-/

namespace A271678.P9851486044503927724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271684 (A193974 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271678.P9851486044503927724

/-! ## A271678.P3622152665856026927

`record[gcd(A112227(n), A271684(n+1))]`
-/

namespace A271678.P3622152665856026927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112227 n) (A271684 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271678.P3622152665856026927

/-! ## A271678.P11036415133357892356

`record[gcd(A055138(n), A271684(n+2))]`
-/

namespace A271678.P11036415133357892356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055138 n) (A271684 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271678.P11036415133357892356

/-! ## A271678.P16971364880535620849

`A299905(n)+A271684(A000096(n+1))`
-/

namespace A271678.P16971364880535620849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299905 n + A271684 (A000096 (n + 1)).toNat

end

end A271678.P16971364880535620849

/-!
# A271679: Number of ways to move elements of an nXnXn triangular array to themselves or a neighbor, with no more than 3-1 elements moved to themselves.

The programs for A271679, there is no canonical definition to state claims against.
-/

/-! ## A271679.P12243274599633946646

`A271684(∑[n+3]+1)`
-/

namespace A271679.P12243274599633946646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271684 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A271679.P12243274599633946646

/-! ## A271679.P5067564992327332033

`record[A271684(A198464(n+1))]`
-/

namespace A271679.P5067564992327332033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271684 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271679.P5067564992327332033

/-! ## A271679.P12142569046641122348

`record[gcd(A055138(n), A271684(n+1))]`
-/

namespace A271679.P12142569046641122348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055138 n) (A271684 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271679.P12142569046641122348

/-! ## A271679.P2920387852138370790

`record[gcd(A081733(n+1), A271684(n+2))]`
-/

namespace A271679.P2920387852138370790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A081733 (n + 1)) (A271684 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271679.P2920387852138370790

/-! ## A271679.P14424998819417314867

`lcm(A152848(n), A271684(A034856(n+2)))`
-/

namespace A271679.P14424998819417314867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A152848 n) (A271684 (A034856 (n + 2)).toNat)

end

end A271679.P14424998819417314867

/-!
# A271680: Number of ways to move elements of an nXnXn triangular array to themselves or a neighbor, with no more than 4-1 elements moved to themselves.

The programs for A271680, there is no canonical definition to state claims against.
-/

/-! ## A271680.P9903392735084698604

`A271684(A141214(n+1))`
-/

namespace A271680.P9903392735084698604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271684 (A141214 (n + 1)).toNat

end

end A271680.P9903392735084698604

/-! ## A271680.P18358535969041036217

`A271684(A155212(n)+5)`
-/

namespace A271680.P18358535969041036217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271684 (A155212 n + 5).toNat

end

end A271680.P18358535969041036217

/-! ## A271680.P10647508086839703341

`A271684(eq[2, A152157(n)])`
-/

namespace A271680.P10647508086839703341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271684 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271680.P10647508086839703341

/-! ## A271680.P14908124401046240613

`A271684(eq[3, A193592(n)])`
-/

namespace A271680.P14908124401046240613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271684 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271680.P14908124401046240613

/-! ## A271680.P4913228397142008897

`A271684(eq[4, A141020(n)])`
-/

namespace A271680.P4913228397142008897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271684 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271680.P4913228397142008897

/-!
# A271681: Number of ways to move elements of an nXnXn triangular array to themselves or a neighbor, with no more than 5-1 elements moved to themselves.

The programs for A271681, there is no canonical definition to state claims against.
-/

/-! ## A271681.P5803481857598337187

`A271684(∑[n+5]+6)`
-/

namespace A271681.P5803481857598337187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271684 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A271681.P5803481857598337187

/-! ## A271681.P3250898606995463545

`A271684(Δ[A023545(n+1)])+A045888(n+1)`
-/

namespace A271681.P3250898606995463545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271684 (f1 (n + 1) - f1 n).toNat + A045888 (n + 1)

end

end A271681.P3250898606995463545

/-! ## A271681.P18327279966013357472

`A043537(n+1)*A271684(Δ[A023545(n+1)])`
-/

namespace A271681.P18327279966013357472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (n + 1) * A271684 (f1 (n + 1) - f1 n).toNat

end

end A271681.P18327279966013357472

/-!
# A271682: Number of ways to move elements of an nXnXn triangular array to themselves or a neighbor, with no more than 6-1 elements moved to themselves.

The programs for A271682, there is no canonical definition to state claims against.
-/

/-! ## A271682.P8850882734608828363

`A271684(record[a(n-1)+n-1])` with `a(0)=16, a(1)=0, a(2)=0, a(3)=1, a(4)=3, a(5)=6, a(6)=10`
-/

namespace A271682.P8850882734608828363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [16, 0, 0, 1, 3, 6, 10] fun n f1 =>
  f1 (n - 1) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271684 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A271682.P8850882734608828363

/-! ## A271682.P18063308407372602650

`A271684(A052905(n+3))`
-/

namespace A271682.P18063308407372602650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271684 (A052905 (n + 3)).toNat

end

end A271682.P18063308407372602650

/-! ## A271682.P14457369246658132773

`A271684(A056119(n)+16)`
-/

namespace A271682.P14457369246658132773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271684 (A056119 n + 16).toNat

end

end A271682.P14457369246658132773

/-!
# A271683: Number of ways to move elements of an nXnXn triangular array to themselves or a neighbor, with no more than 7-1 elements moved to themselves.

The programs for A271683, there is no canonical definition to state claims against.
-/

/-! ## A271683.P11049742498085743748

`A271684(eq[6, A193592(n)])`
-/

namespace A271683.P11049742498085743748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271684 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A271683.P11049742498085743748

/-!
# A271685: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 395", based on the 5-celled von Neumann neighborhood.

The programs for A271685, there is no canonical definition to state claims against.
-/

/-! ## A271685.P3283351248711370481

`A271688(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271685.P3283351248711370481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271688 (n - 1) + a (n - 1)

end

end A271685.P3283351248711370481

/-! ## A271685.P221764635402267387

`Δ[A271687(n)]-A271688(n)`
-/

namespace A271685.P221764635402267387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271688 n

end

end A271685.P221764635402267387

/-! ## A271685.P13023374099543042380

`∑[A271688(A028310(n))]+1-A271688(n)`
-/

namespace A271685.P13023374099543042380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271688 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A271688 n)

end

end A271685.P13023374099543042380

/-! ## A271685.P8562196078881048774

`A271687(n+1)-(A271688(n)+A271687(n))`
-/

namespace A271685.P8562196078881048774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271687 (n + 1) - (A271688 n + A271687 n)

end

end A271685.P8562196078881048774

/-! ## A271685.P902549943806699715

`∑[A271688(and(1, 2^n)+n)]+1-A271688(n)`
-/

namespace A271685.P902549943806699715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271688 (Nat.land 1 (2 ^ n) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A271688 n)

end

end A271685.P902549943806699715

/-!
# A271686: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 395", based on the 5-celled von Neumann neighborhood.

The programs for A271686, there is no canonical definition to state claims against.
-/

/-! ## A271686.P8496953872848043775

`A271685(2^n-1)`
-/

namespace A271686.P8496953872848043775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271685 (2 ^ n - 1)

end

end A271686.P8496953872848043775

/-! ## A271686.P9249880340676911948

`record[A271685(A303765(n))]`
-/

namespace A271686.P9249880340676911948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271685 (A303765 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271686.P9249880340676911948

/-! ## A271686.P6519456935685269523

`record[A271685(A304083(n))]`
-/

namespace A271686.P6519456935685269523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271685 (A304083 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271686.P6519456935685269523

/-! ## A271686.P17623609518699840638

`record[A271685(A323247(n+1))]`
-/

namespace A271686.P17623609518699840638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271685 (A323247 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271686.P17623609518699840638

/-! ## A271686.P5615444901612938742

`record[gcd(A023416(n), A271685(n))]`
-/

namespace A271686.P5615444901612938742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A023416 n) (A271685 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271686.P5615444901612938742

/-!
# A271687: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 395", based on the 5-celled von Neumann neighborhood.

The programs for A271687, there is no canonical definition to state claims against.
-/

/-! ## A271687.P2159605584697388688

`∑[∑[A271688(n)]+1-A271688(n)]`
-/

namespace A271687.P2159605584697388688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271688 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A271688 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271687.P2159605584697388688

/-! ## A271687.P8571152958400801940

`∑[A271685(n)]`
-/

namespace A271687.P8571152958400801940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271687.P8571152958400801940

/-! ## A271687.P7253142333638631061

`A271685(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A271687.P7253142333638631061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271685 n + a (A023443 n).toNat

end

end A271687.P7253142333638631061

/-! ## A271687.P15904096452382644758

`A271685(n)+a(A000007(n)-1+n)` with `a(0)=1`
-/

namespace A271687.P15904096452382644758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271685 n + a (A000007 n - 1 + (n : ℤ)).toNat

end

end A271687.P15904096452382644758

/-! ## A271687.P12394219921894809786

`a(n-1)+A271685(n)%A245542(n+1)` with `a(0)=1`
-/

namespace A271687.P12394219921894809786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A271685 n) (A245542 (n + 1))

end

end A271687.P12394219921894809786

/-!
# A271688: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 395", based on the 5-celled von Neumann neighborhood.

The programs for A271688, there is no canonical definition to state claims against.
-/

/-! ## A271688.P6639422326980855773

`Δ[A271685(n)]`
-/

namespace A271688.P6639422326980855773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271688.P6639422326980855773

/-! ## A271688.P4239131331103970630

`A271685(n+1)-A271685(n)`
-/

namespace A271688.P4239131331103970630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271685 (n + 1) - A271685 n

end

end A271688.P4239131331103970630

/-! ## A271688.P14917758596056579795

`A271685(n+1)+A024000(A271685(n)+1)`
-/

namespace A271688.P14917758596056579795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271685 (n + 1) + A024000 (A271685 n + 1).toNat

end

end A271688.P14917758596056579795

/-! ## A271688.P8344190724886367529

`A271685(n+1)+A001478(A271685(n)+1)+1`
-/

namespace A271688.P8344190724886367529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271685 (n + 1) + (A001478 (A271685 n + 1).toNat + 1)

end

end A271688.P8344190724886367529

/-!
# A271689: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 397", based on the 5-celled von Neumann neighborhood.

The programs for A271689, there is no canonical definition to state claims against.
-/

/-! ## A271689.P4198888477589349316

`∑[A271692(abs(1-n))]+4`
-/

namespace A271689.P4198888477589349316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271692 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A271689.P4198888477589349316

/-! ## A271689.P11283815527465579479

`A271692(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271689.P11283815527465579479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271692 (n - 1) + a (n - 1)

end

end A271689.P11283815527465579479

/-! ## A271689.P6047916915259278455

`∑[A271692((n-1)%a(n-1))]` with `a(0)=1`
-/

namespace A271689.P6047916915259278455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A271692 (Int.tmod ((n : ℤ) - 1) (f1 (n - 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271689.P6047916915259278455

/-! ## A271689.P9944952035549405305

`Δ[A271691(n)]-A271692(n)`
-/

namespace A271689.P9944952035549405305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271692 n

end

end A271689.P9944952035549405305

/-! ## A271689.P1401958834210311631

`A271691(n+1)-(A271692(n)+A271691(n))`
-/

namespace A271689.P1401958834210311631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271691 (n + 1) - (A271692 n + A271691 n)

end

end A271689.P1401958834210311631

/-!
# A271690: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 397", based on the 5-celled von Neumann neighborhood.

The programs for A271690, there is no canonical definition to state claims against.
-/

/-! ## A271690.P7441412008637756498

`A271689(2^n-1)`
-/

namespace A271690.P7441412008637756498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271689 (2 ^ n - 1)

end

end A271690.P7441412008637756498

/-! ## A271690.P14133510740382629939

`record[A271689(A175920(n))]`
-/

namespace A271690.P14133510740382629939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271689 (A175920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271690.P14133510740382629939

/-! ## A271690.P7252077908907113707

`record[A271689(A255067(n))]`
-/

namespace A271690.P7252077908907113707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271689 (A255067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271690.P7252077908907113707

/-! ## A271690.P16832755499506213910

`record[A271689(A023758(n+1))]`
-/

namespace A271690.P16832755499506213910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271689 (A023758 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271690.P16832755499506213910

/-! ## A271690.P414670640750000365

`record[A271689(A243071(n+1))]`
-/

namespace A271690.P414670640750000365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271689 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271690.P414670640750000365

/-!
# A271691: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 397", based on the 5-celled von Neumann neighborhood.

The programs for A271691, there is no canonical definition to state claims against.
-/

/-! ## A271691.P6147209178883058549

`∑[A271689(n)]`
-/

namespace A271691.P6147209178883058549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271691.P6147209178883058549

/-! ## A271691.P9806467132922215744

`∑[A271692(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A271691.P9806467132922215744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A271692 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271691.P9806467132922215744

/-! ## A271691.P18132585160241601101

`∑[∑[A271692((n-1)%a(n-1))]]` with `a(0)=1`
-/

namespace A271691.P18132585160241601101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A271692 (Int.tmod ((n : ℤ) - 1) (f2 (n - 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271691.P18132585160241601101

/-! ## A271691.P4789629335602453585

`∑[∑[A271692(n)]+1-A271692(n)]`
-/

namespace A271691.P4789629335602453585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271692 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A271692 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271691.P4789629335602453585

/-! ## A271691.P16025696930060640923

`a(n-1)-A024000(A271689(n)+1)` with `a(0)=1`
-/

namespace A271691.P16025696930060640923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A024000 (A271689 n + 1).toNat

end

end A271691.P16025696930060640923

/-!
# A271692: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 397", based on the 5-celled von Neumann neighborhood.

The programs for A271692, there is no canonical definition to state claims against.
-/

/-! ## A271692.P9000316975024082978

`Δ[A271689(n)]`
-/

namespace A271692.P9000316975024082978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271692.P9000316975024082978

/-! ## A271692.P12692555094275120777

`A271689(n+1)-A271689(n)`
-/

namespace A271692.P12692555094275120777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271689 (n + 1) - A271689 n

end

end A271692.P12692555094275120777

/-! ## A271692.P10999652517615059627

`A271689(n+1)+A271689(n)*A342403(A020639(n+2))`
-/

namespace A271692.P10999652517615059627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271689 (n + 1) + A271689 n * A342403 (A020639 (n + 2)).toNat

end

end A271692.P10999652517615059627

/-! ## A271692.P15255300695526880433

`A271689(n+1)+A024000(A271689(n)+1)`
-/

namespace A271692.P15255300695526880433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271689 (n + 1) + A024000 (A271689 n + 1).toNat

end

end A271692.P15255300695526880433

/-!
# A271693: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 398", based on the 5-celled von Neumann neighborhood.

The programs for A271693, there is no canonical definition to state claims against.
-/

/-! ## A271693.P7014041689738103819

`A271696(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A271693.P7014041689738103819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271696 (n - 1) + a (n - 1)

end

end A271693.P7014041689738103819

/-! ## A271693.P15680356971593474808

`Δ[A271695(n)]-A271696(n)`
-/

namespace A271693.P15680356971593474808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271696 n

end

end A271693.P15680356971593474808

/-! ## A271693.P13845208650722470886

`A271695(n+1)-(A271696(n)+A271695(n))`
-/

namespace A271693.P13845208650722470886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271695 (n + 1) - (A271696 n + A271695 n)

end

end A271693.P13845208650722470886

/-! ## A271693.P4704466057274138755

`A033954(n)%A272991(n)+1+n`
-/

namespace A271693.P4704466057274138755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033954 n) (A272991 n) + 1 + (n : ℤ)

end

end A271693.P4704466057274138755

/-! ## A271693.P382625180314883464

`A181385(4*n+2)-A272991(n)`
-/

namespace A271693.P382625180314883464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (4 * n + 2) - A272991 n

end

end A271693.P382625180314883464

/-! ## A271693.P11166731176592905486

`A008740(A008458(n))-A272991(n)`
-/

namespace A271693.P11166731176592905486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272991 n

end

end A271693.P11166731176592905486

/-!
# A271694: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 398", based on the 5-celled von Neumann neighborhood.

The programs for A271694, there is no canonical definition to state claims against.
-/

/-! ## A271694.P1405221876285862638

`A271693(2^n-1)`
-/

namespace A271694.P1405221876285862638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271693 (2 ^ n - 1)

end

end A271694.P1405221876285862638

/-! ## A271694.P15641610823480495893

`record[A271693(A091264(n))]`
-/

namespace A271694.P15641610823480495893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271693 (A091264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271694.P15641610823480495893

/-! ## A271694.P14778422810751865559

`record[A271693(A173787(n))]`
-/

namespace A271694.P14778422810751865559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271693 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271694.P14778422810751865559

/-! ## A271694.P2671203596901156611

`record[A271693(A303763(n))]`
-/

namespace A271694.P2671203596901156611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271693 (A303763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271694.P2671203596901156611

/-! ## A271694.P3489419178781072419

`record[A271693(A303765(n))]`
-/

namespace A271694.P3489419178781072419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271693 (A303765 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A271694.P3489419178781072419

/-!
# A271695: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 398", based on the 5-celled von Neumann neighborhood.

The programs for A271695, there is no canonical definition to state claims against.
-/

/-! ## A271695.P17440893919085718210

`∑[A271696(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A271695.P17440893919085718210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A271696 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271695.P17440893919085718210

/-! ## A271695.P15507546006680904262

`∑[∑[A271696(n)]+1-A271696(n)]`
-/

namespace A271695.P15507546006680904262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271696 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A271696 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271695.P15507546006680904262

/-! ## A271695.P12791388032459642413

`∑[A271693(n)]`
-/

namespace A271695.P12791388032459642413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271695.P12791388032459642413

/-! ## A271695.P17128766820259688055

`a(n-1)+A271693(n)+A000007(n)` with `a(0)=1`
-/

namespace A271695.P17128766820259688055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A271693 n + A000007 n)

end

end A271695.P17128766820259688055

/-! ## A271695.P12168971671702636806

`A271693(n%A271693(n))+a(n-1)` with `a(0)=1`
-/

namespace A271695.P12168971671702636806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271693 (Int.tmod (n : ℤ) (A271693 n)).toNat + a (n - 1)

end

end A271695.P12168971671702636806

/-! ## A271695.P24752875799067562

`A271693(gcd(n, A033954(n)))+a(n-1)` with `a(0)=1`
-/

namespace A271695.P24752875799067562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271693 (Int.gcd (n : ℤ) (A033954 n)) + a (n - 1)

end

end A271695.P24752875799067562

/-! ## A271695.P17455638553776217479

`∑[A033954(n)%A272991(n)+n+1]`
-/

namespace A271695.P17455638553776217479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033954 n) (A272991 n) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271695.P17455638553776217479

/-! ## A271695.P647089625350924711

`∑[A181385(A016825(n))-A272991(n)]`
-/

namespace A271695.P647089625350924711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271695.P647089625350924711

/-! ## A271695.P3254744433244812000

`∑[A008740(A008458(n))-A272991(n)]`
-/

namespace A271695.P3254744433244812000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A271695.P3254744433244812000

/-!
# A271696: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 398", based on the 5-celled von Neumann neighborhood.

The programs for A271696, there is no canonical definition to state claims against.
-/

/-! ## A271696.P12620519309906632337

`Δ[A271693(n)]`
-/

namespace A271696.P12620519309906632337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271693 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271696.P12620519309906632337

/-! ## A271696.P15204309589563154591

`A271693(n+1)-A271693(n)`
-/

namespace A271696.P15204309589563154591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271693 (n + 1) - A271693 n

end

end A271696.P15204309589563154591

/-! ## A271696.P12605810548168978119

`Δ[A033954(n)%A272991(n)]+1`
-/

namespace A271696.P12605810548168978119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033954 n) (A272991 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A271696.P12605810548168978119

/-! ## A271696.P13947122884890059814

`Δ[A181385(A016825(n))-A272991(n)]`
-/

namespace A271696.P13947122884890059814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271696.P13947122884890059814

/-! ## A271696.P3432667795210129635

`Δ[A008740(A008458(n))-A272991(n)]`
-/

namespace A271696.P3432667795210129635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272991 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A271696.P3432667795210129635

/-!
# A271697: Triangle read by rows, T(n,k) = Sum_{j=0..n} C(-j-1,-n-1)*E1(j,k), E1 the Eulerian numbers A173018, for n>=0 and 0<=k<=n.

The programs for A271697, there is no canonical definition to state claims against.
-/

/-! ## A271697.P15522790789093324389

`A119024(A000217(A122083(n))+1)`
-/

namespace A271697.P15522790789093324389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119024 (A000217 (A122083 n).toNat + 1).toNat

end

end A271697.P15522790789093324389

/-! ## A271697.P6394151101114608563

`A349520(A141591(n)²)+A057428(n)`
-/

namespace A271697.P6394151101114608563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (A141591 n ^ 2).toNat + A057428 n

end

end A271697.P6394151101114608563

/-! ## A271697.P5944762708845561283

`A349520(A141591(n)²)-A057427(n)`
-/

namespace A271697.P5944762708845561283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (A141591 n ^ 2).toNat - A057427 n

end

end A271697.P5944762708845561283

/-! ## A271697.P6821621926089427278

`A090477(A157114(n))`
-/

namespace A271697.P6821621926089427278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090477 (A157114 n).toNat

end

end A271697.P6821621926089427278

/-! ## A271697.P3532446031782701858

`A322076(A141617(n))`
-/

namespace A271697.P3532446031782701858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322076 (A141617 n).toNat

end

end A271697.P3532446031782701858

/-!
# A271698: Triangle read by rows, T(n,k) = Sum_{j=0..n} C(-j,-n)*E1(j,k), E1 the Eulerian numbers A173018, for n>=0 and 0<=k<=n.

The programs for A271698, the canonical program `A271698.P3962518961717350893` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A271698 has offset 0).

The definition of A271698 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2588 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A271698.P3962518961717350893

`col(n)*T(n-1,k)+(row(n)-col(n))*T(n-1,k-1)+(row(n)-2)*T(n-2,k-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A271698

/-- `col(n)*T(n-1,k)+(row(n)-col(n))*T(n-1,k-1)+(row(n)-2)*T(n-2,k-1)` -/
def P3962518961717350893.Spec : Prop :=
  ∀ n, P3962518961717350893.a n = A271698 n

theorem P3962518961717350893.correct : P3962518961717350893.Spec := by
  intro n
  simp only [A271698]

end A271698

/-! ## A271698.P3445700732765579425

`A058710(A083920(n))*A331391(A239144(n))`
-/

namespace A271698.P3445700732765579425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058710 (A083920 n).toNat * A331391 (A239144 n).toNat

end

end A271698.P3445700732765579425

namespace A271698

/-- `A058710(A083920(n))*A331391(A239144(n))` -/
def P3445700732765579425.Spec : Prop :=
  ∀ n, P3445700732765579425.a n = A271698 n

end A271698

/-! ## A271698.P4171011374106269094

`A227848(n+1)%A272863(A000032(xor(1, n))-n%2)`
-/

namespace A271698.P4171011374106269094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227848 (n + 1)) (A272863 (A000032 (Nat.xor 1 n) - ((n % 2 : ℕ) : ℤ)).toNat)

end

end A271698.P4171011374106269094

namespace A271698

/-- `A227848(n+1)%A272863(A000032(xor(1, n))-n%2)` -/
def P4171011374106269094.Spec : Prop :=
  ∀ n, P4171011374106269094.a n = A271698 n

end A271698

/-!
# A271699: Triangle read by rows, T(n,k) = Sum_{j=0..n} (-1)^(n-j)*C(-j,-n)*S1(k,j), S1 the Stirling cycle numbers A132393, for n>=0 and 0<=k<=n.

The programs for A271699, there is no canonical definition to state claims against.
-/

/-! ## A271699.P169302353706290664

`A108611(6*A271701(n))`
-/

namespace A271699.P169302353706290664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (6 * A271701 n).toNat

end

end A271699.P169302353706290664

/-! ## A271699.P8955615092079422676

`A271701(n)+A186747(A166350(n+1))`
-/

namespace A271699.P8955615092079422676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271701 n + A186747 (A166350 (n + 1)).toNat

end

end A271699.P8955615092079422676

/-! ## A271699.P5665300458741478498

`A358838(A291452(n))%11`
-/

namespace A271699.P5665300458741478498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358838 (A291452 n).toNat) 11

end

end A271699.P5665300458741478498

/-! ## A271699.P10860248676648406430

`∑{e}[A285835(A285867(n)), #]`
-/

namespace A271699.P10860248676648406430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285835 (A285867 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A271699.P10860248676648406430

/-! ## A271699.P3283105150490582334

`A333627(A271518(n)*A309973(n))`
-/

namespace A271699.P3283105150490582334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 (A271518 n * A309973 n).toNat

end

end A271699.P3283105150490582334

