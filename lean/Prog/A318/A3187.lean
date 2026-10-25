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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A318700: Positive numbers that contain odd and even digits.

The programs for A318700, there is no canonical definition to state claims against.
-/

/-! ## A318700.P9909850632280935319

`comp[A059707(n)]`
-/

namespace A318700.P9909850632280935319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059707 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A318700.P9909850632280935319

/-! ## A318700.P3295477416406584204

`comp[A059717(n)]`
-/

namespace A318700.P3295477416406584204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A318700.P3295477416406584204

/-! ## A318700.P3850265057102832385

`comp[A391869(n)]`
-/

namespace A318700.P3850265057102832385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391869 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A318700.P3850265057102832385

/-! ## A318700.P5623595315871856773

`lt[0, A374097(n)]`
-/

namespace A318700.P5623595315871856773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374097 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A318700.P5623595315871856773

/-! ## A318700.P11782768838720278599

`comp[A059708(n+1)]`
-/

namespace A318700.P11782768838720278599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A318700.P11782768838720278599

/-! ## A318700.P11488757684791409654

`A228709(n+6)-10`
-/

namespace A318700.P11488757684791409654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228709 (n + 6) - 10

end

end A318700.P11488757684791409654

/-! ## A318700.P2635130439619054841

`lt[0, A347688(n)%2]`
-/

namespace A318700.P2635130439619054841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347688 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A318700.P2635130439619054841

/-! ## A318700.P3313418843014449477

`eq[1, A020985(A171797(n))]`
-/

namespace A318700.P3313418843014449477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A171797 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A318700.P3313418843014449477

/-! ## A318700.P6113744907203964986

`eq[1, A000035(A347688(n))]`
-/

namespace A318700.P6113744907203964986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A347688 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A318700.P6113744907203964986

/-! ## A318700.P5623205480262846253

`eq[2, A001613(A073053(n))]`
-/

namespace A318700.P5623205480262846253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001613 (A073053 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A318700.P5623205480262846253

/-!
# A318701: Tetrahedral numbers that are not divisible by any smaller tetrahedral number except 1.

The programs for A318701, there is no canonical definition to state claims against.
-/

/-! ## A318701.P2651525773958781466

`record[C(A073757(n+3), A127255(3*n+1))]`
-/

namespace A318701.P2651525773958781466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A073757 (n + 3)).toNat (A127255 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318701.P2651525773958781466

/-! ## A318701.P17735687222930815120

`A008804(A067945(n+1)%A277628(n+1))`
-/

namespace A318701.P17735687222930815120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 (Int.tmod (A067945 (n + 1)) (A277628 (n + 1))).toNat

end

end A318701.P17735687222930815120

/-! ## A318701.P16640646116256452119

`C(A101762(n+1), A074804(A026671(n)))`
-/

namespace A318701.P16640646116256452119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A101762 (n + 1)).toNat (A074804 (A026671 n).toNat).toNat

end

end A318701.P16640646116256452119

/-!
# A318702: For any n >= 0 with binary expansion Sum_{k=0..w} b_k * 2^k, let f(n) = Sum_{k=0..w} b_k * i^k * 2^floor(k/2) (where i denotes the imaginary unit); a(n) is the real part of f(n).

The programs for A318702, there is no canonical definition to state claims against.
-/

/-! ## A318702.P195064832047561868

`A053985(A059905(n))`
-/

namespace A318702.P195064832047561868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 (A059905 n).toNat

end

end A318702.P195064832047561868

/-! ## A318702.P8762277030601731398

`A318703(A004468(n))`
-/

namespace A318702.P8762277030601731398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318703 (A004468 n).toNat

end

end A318702.P8762277030601731398

/-! ## A318702.P15515722002122412785

`A318703(A004514(n))`
-/

namespace A318702.P15515722002122412785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318703 (A004514 n).toNat

end

end A318702.P15515722002122412785

/-! ## A318702.P4643352646058011657

`A318703(A057300(n))`
-/

namespace A318702.P4643352646058011657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318703 (A057300 n).toNat

end

end A318702.P4643352646058011657

/-! ## A318702.P17641860112723822526

`A318703(A088442(n))`
-/

namespace A318702.P17641860112723822526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318703 (A088442 n).toNat

end

end A318702.P17641860112723822526

/-! ## A318702.P1828605826216085669

`A348910(A063694(n))`
-/

namespace A318702.P1828605826216085669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348910 (A063694 n).toNat

end

end A318702.P1828605826216085669

/-! ## A318702.P16738279807688806641

`A318703(A379578(n))`
-/

namespace A318702.P16738279807688806641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318703 (A379578 n).toNat

end

end A318702.P16738279807688806641

/-! ## A318702.P13650483432754060064

`A318703(A053985(n)+n)`
-/

namespace A318702.P13650483432754060064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318703 (A053985 n + (n : ℤ)).toNat

end

end A318702.P13650483432754060064

/-! ## A318702.P7619388703002054618

`A053985(A292373(2*n)+A292372(2*n))`
-/

namespace A318702.P7619388703002054618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 (A292373 (2 * n) + A292372 (2 * n)).toNat

end

end A318702.P7619388703002054618

/-! ## A318702.P12933938359351271918

`A053985(or(A292372(2*n), A292373(2*n)))`
-/

namespace A318702.P12933938359351271918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 (Int.lor (A292372 (2 * n)) (A292373 (2 * n))).toNat

end

end A318702.P12933938359351271918

/-! ## A318702.P5245897787232191730

`A053985(xor(A292372(2*n), A292373(2*n)))`
-/

namespace A318702.P5245897787232191730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 (Int.xor (A292372 (2 * n)) (A292373 (2 * n))).toNat

end

end A318702.P5245897787232191730

/-! ## A318702.P15325779640086381523

`A318703(2*n)`
-/

namespace A318702.P15325779640086381523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318703 (2 * n)

end

end A318702.P15325779640086381523

/-! ## A318702.P10908051195225545512

`A348911(A063695(2*n))`
-/

namespace A318702.P10908051195225545512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348911 (A063695 (2 * n)).toNat

end

end A318702.P10908051195225545512

/-! ## A318702.P17384241703119000250

`A053985(A059906(2*n))`
-/

namespace A318702.P17384241703119000250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 (A059906 (2 * n)).toNat

end

end A318702.P17384241703119000250

/-!
# A318703: For any n >= 0 with binary expansion Sum_{k=0..w} b_k * 2^k, let f(n) = Sum_{k=0..w} b_k * i^k * 2^floor(k/2) (where i denotes the imaginary unit); a(n) is the imaginary part of f(n).

The programs for A318703, there is no canonical definition to state claims against.
-/

/-! ## A318703.P7875875043102742419

`A053985(A059906(n))`
-/

namespace A318703.P7875875043102742419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 (A059906 n).toNat

end

end A318703.P7875875043102742419

/-! ## A318703.P10308713324703444224

`A318702(floor(n/2))`
-/

namespace A318703.P10308713324703444224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318702 ⌊(n : ℚ) / 2⌋.toNat

end

end A318703.P10308713324703444224

/-! ## A318703.P12166021612789376525

`A348911(A063695(n))`
-/

namespace A318703.P12166021612789376525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348911 (A063695 n).toNat

end

end A318703.P12166021612789376525

/-! ## A318703.P15458688652715019881

`A053985(A292373(n)+A292372(n))`
-/

namespace A318703.P15458688652715019881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 (A292373 n + A292372 n).toNat

end

end A318703.P15458688652715019881

/-! ## A318703.P11584470794838835890

`A318702(A004526(n))/A054977(n)`
-/

namespace A318703.P11584470794838835890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318702 (A004526 n).toNat : ℚ) / (A054977 n : ℚ)

end

end A318703.P11584470794838835890

/-! ## A318703.P5392218999491736280

`A053985(or(A292372(n), A292373(n)))`
-/

namespace A318703.P5392218999491736280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 (Int.lor (A292372 n) (A292373 n)).toNat

end

end A318703.P5392218999491736280

/-! ## A318703.P1288394799936331782

`A053985(xor(A292372(n), A292373(n)))`
-/

namespace A318703.P1288394799936331782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 (Int.xor (A292372 n) (A292373 n)).toNat

end

end A318703.P1288394799936331782

/-! ## A318703.P5045344003446858551

`(1-A318702(2*n+1))/2`
-/

namespace A318703.P5045344003446858551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A318702 (2 * n + 1) : ℚ) / 2

end

end A318703.P5045344003446858551

/-! ## A318703.P888623919819464583

`A318702(2*n)/2-A318702(2*n)`
-/

namespace A318703.P888623919819464583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318702 (2 * n) : ℚ) / 2 - (A318702 (2 * n) : ℚ)

end

end A318703.P888623919819464583

/-! ## A318703.P7486993777394056662

`A318702(2*n)/A318702(A020639(2*(n+1))²)`
-/

namespace A318703.P7486993777394056662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318702 (2 * n) : ℚ) / (A318702 (A020639 (2 * (n + 1)) ^ 2).toNat : ℚ)

end

end A318703.P7486993777394056662

/-! ## A318703.P6776929806039686515

`A053985(A059905(2*n)/2)`
-/

namespace A318703.P6776929806039686515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053985 (SequenceMachineLib.roundAway ((A059905 (2 * n) : ℚ) / 2)).toNat

end

end A318703.P6776929806039686515

/-! ## A318703.P4880751699931687897

`A318702(8*n)/4`
-/

namespace A318703.P4880751699931687897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318702 (8 * n) : ℚ) / 4

end

end A318703.P4880751699931687897

/-!
# A318704: For any n >= 0 with binary expansion Sum_{k=0..w} b_k * 2^k, let f(n) = Sum_{k=0..w} b_k * i^k * 2^floor(k/2) (where i denotes the imaginary unit); a(n) is the square of the modulus of f(n).

The programs for A318704, there is no canonical definition to state claims against.
-/

/-! ## A318704.P4680084908283247992

`A318702(n)²+A318703(n)²`
-/

namespace A318704.P4680084908283247992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318702 n ^ 2 + A318703 n ^ 2

end

end A318704.P4680084908283247992

/-! ## A318704.P7399892031781017762

`A318703(A004468(n))²+A318703(n)²`
-/

namespace A318704.P7399892031781017762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318703 (A004468 n).toNat ^ 2 + A318703 n ^ 2

end

end A318704.P7399892031781017762

/-! ## A318704.P2740503011884505968

`A318703(A004514(n))²+A318703(n)²`
-/

namespace A318704.P2740503011884505968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318703 (A004514 n).toNat ^ 2 + A318703 n ^ 2

end

end A318704.P2740503011884505968

/-! ## A318704.P8420614739747781786

`A318702(A004526(n))²+A318702(n)²`
-/

namespace A318704.P8420614739747781786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318702 (A004526 n).toNat ^ 2 + A318702 n ^ 2

end

end A318704.P8420614739747781786

/-! ## A318704.P10959345791419805049

`A318702(A006015(n))²+A318702(n)²`
-/

namespace A318704.P10959345791419805049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318702 (A006015 n).toNat ^ 2 + A318702 n ^ 2

end

end A318704.P10959345791419805049

/-! ## A318704.P8735280035307269313

`A318702(A057300(n))²+A318702(n)²`
-/

namespace A318704.P8735280035307269313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318702 (A057300 n).toNat ^ 2 + A318702 n ^ 2

end

end A318704.P8735280035307269313

/-!
# A318707: For any n >= 0 with base-9 representation Sum_{k=0..w} d_k * 9^k, let g(n) = Sum_{k=0..w} s(d_k) * 3^k (where s(0) = 0, s(1+2*j) = i^j and s(2+2*j) = i^j * (1+i) for any j > 0, and i denotes the imaginary unit); a(n) is the square of the modulus of g(n).

The programs for A318707, there is no canonical definition to state claims against.
-/

/-! ## A318707.P9775024252878208893

`A318705(n)²+A318706(n)²`
-/

namespace A318707.P9775024252878208893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318705 n ^ 2 + A318706 n ^ 2

end

end A318707.P9775024252878208893

/-!
# A318708: Terms resulting from application of a prime sieve to the digits of the decimal expansions of the positive integers.

The programs for A318708, there is no canonical definition to state claims against.
-/

/-! ## A318708.P13401957988434016401

`A019516(A064997(n+1)-A000005(2^n))`
-/

namespace A318708.P13401957988434016401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019516 (A064997 (n + 1) - A000005 (2 ^ n)).toNat

end

end A318708.P13401957988434016401

/-!
# A318712: Numbers k for which a riffle shuffle permutation with two or more packets permutes all except the first and the last of the k cards.

The programs for A318712, there is no canonical definition to state claims against.
-/

/-! ## A318712.P13512907251424550178

`A225184(n+2)+1`
-/

namespace A318712.P13512907251424550178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225184 (n + 2) + 1

end

end A318712.P13512907251424550178

/-! ## A318712.P18093465988628496710

`∑{d}[A225184(2-(n-2*n)), #]`
-/

namespace A318712.P18093465988628496710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225184 (2 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A318712.P18093465988628496710

/-! ## A318712.P249339877783282699

`A000203(A225184(n+2))`
-/

namespace A318712.P249339877783282699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A225184 (n + 2)).toNat

end

end A318712.P249339877783282699

/-! ## A318712.P16436876309308448477

`A326647(A000043(n+1))+A059634(n+1)`
-/

namespace A318712.P16436876309308448477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326647 (A000043 (n + 1)).toNat + A059634 (n + 1)

end

end A318712.P16436876309308448477

/-! ## A318712.P9157967172806936770

`A326647(A002144(n+1))+A059634(n+1)`
-/

namespace A318712.P9157967172806936770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326647 (A002144 (n + 1)).toNat + A059634 (n + 1)

end

end A318712.P9157967172806936770

/-!
# A318715: Number of strict integer partitions of n with relatively prime parts in which no two parts are relatively prime.

The programs for A318715, there is no canonical definition to state claims against.
-/

/-! ## A318715.P9719541767498127818

`A318717(n+1)-A303280(n+1)`
-/

namespace A318715.P9719541767498127818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318717 (n + 1) - A303280 (n + 1)

end

end A318715.P9719541767498127818

/-! ## A318715.P16229330527504654786

`A202385(A017221(4*n)%(n+1))`
-/

namespace A318715.P16229330527504654786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202385 ((Int.tmod (A017221 (4 * n)) (n + 1 : ℤ)).toNat + 31)

end

end A318715.P16229330527504654786

/-! ## A318715.P7961918102596744080

`A318717(C(2, n)+n+1)+A001489(A303280(n+1))`
-/

namespace A318715.P7961918102596744080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318717 (Nat.choose 2 n + n + 1) + A001489 (A303280 (n + 1)).toNat

end

end A318715.P7961918102596744080

/-! ## A318715.P9334268291343792631

`A318717(A000027(n+1))+A001489(A303280(n+1))`
-/

namespace A318715.P9334268291343792631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318717 (A000027 (n + 1)).toNat + A001489 (A303280 (n + 1)).toNat

end

end A318715.P9334268291343792631

/-! ## A318715.P3868862676524458479

`A318717(A028310(n)+1)+A001489(A303280(n+1))`
-/

namespace A318715.P3868862676524458479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318717 (A028310 n + 1).toNat + A001489 (A303280 (n + 1)).toNat

end

end A318715.P3868862676524458479

/-!
# A318716: Heinz numbers of strict integer partitions with relatively prime parts in which no two parts are relatively prime.

The programs for A318716, there is no canonical definition to state claims against.
-/

/-! ## A318716.P1479617246089078986

`record[∏{p}[A328679(n+2), #]]`
-/

namespace A318716.P1479617246089078986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328679 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318716.P1479617246089078986

/-! ## A318716.P15120150406144647329

`A328868(gcd(n*a((2*n)%(n+1)), n!))` with `a(0)=2`
-/

namespace A318716.P15120150406144647329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A328868 (Int.gcd ((n : ℤ) * a (2 * n % (n + 1))) (Nat.factorial n : ℤ))

end

end A318716.P15120150406144647329

/-! ## A318716.P8984948551978395981

`A328868(a(A326629(n))-2+n)` with `a(0)=2`
-/

namespace A318716.P8984948551978395981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A328868 (a (A326629 n).toNat - 2 + (n : ℤ)).toNat

end

end A318716.P8984948551978395981

/-!
# A318717: Number of strict integer partitions of n in which no two parts are relatively prime.

The programs for A318717, there is no canonical definition to state claims against.
-/

/-! ## A318717.P4514300273582205554

`A303280(A233583(n+1)+A151815(n))`
-/

namespace A318717.P4514300273582205554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303280 (A233583 (n + 1) + A151815 n).toNat

end

end A318717.P4514300273582205554

/-! ## A318717.P17104211816387799932

`A303280(A233583(n+1))+A010894(A071051(n))`
-/

namespace A318717.P17104211816387799932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303280 (A233583 (n + 1)).toNat + A010894 ((A071051 n).toNat + 21)

end

end A318717.P17104211816387799932

/-! ## A318717.P12584231075961371571

`A303280(A233583(n+1))+A000038(A309876(n))`
-/

namespace A318717.P12584231075961371571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303280 (A233583 (n + 1)).toNat + A000038 (A309876 n).toNat

end

end A318717.P12584231075961371571

/-! ## A318717.P17873411557844202520

`A303280(round(acot(n)+n))%A302796(2*n+3)`
-/

namespace A318717.P17873411557844202520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303280 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat) (A302796 (2 * n + 3))

end

end A318717.P17873411557844202520

/-! ## A318717.P11676117565759584612

`A303280((5%A299757(3*n+4))!%3+n)`
-/

namespace A318717.P11676117565759584612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303280 (Nat.factorial (Int.tmod 5 (A299757 (3 * n + 4))).toNat % 3 + n)

end

end A318717.P11676117565759584612

/-!
# A318718: Heinz numbers of strict integer partitions with a common divisor > 1.

The programs for A318718, there is no canonical definition to state claims against.
-/

/-! ## A318718.P11436457153925444582

`∪[p?[2*n+1], A339002(n+1)]`
-/

namespace A318718.P11436457153925444582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A318718.P11436457153925444582

/-! ## A318718.P12721693122571012450

`record[A327656(A002734(n+2))]`
-/

namespace A318718.P12721693122571012450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (A002734 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318718.P12721693122571012450

/-! ## A318718.P5215258877711126355

`record[A000026(A327656(n+3))]`
-/

namespace A318718.P5215258877711126355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A327656 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318718.P5215258877711126355

/-! ## A318718.P10786528805894436212

`record[A327656(A005117(n+3))]`
-/

namespace A318718.P10786528805894436212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (A005117 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318718.P10786528805894436212

/-! ## A318718.P18366390768776684183

`record[A327656(A007947(n+3))]`
-/

namespace A318718.P18366390768776684183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (A007947 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318718.P18366390768776684183

/-! ## A318718.P10792612458666376646

`record[A327656(A019554(n+3))]`
-/

namespace A318718.P10792612458666376646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (A019554 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318718.P10792612458666376646

/-! ## A318718.P8948930007685643308

`record[A327656(A081211(n+3))]`
-/

namespace A318718.P8948930007685643308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (A081211 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318718.P8948930007685643308

/-! ## A318718.P14840122179256480187

`filter[A328336(n+2), A323239(#)]`
-/

namespace A318718.P14840122179256480187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328336 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A318718.P14840122179256480187

/-! ## A318718.P2543777909472888269

`filter[A328336(n+2), A359590(#)]`
-/

namespace A318718.P2543777909472888269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328336 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A318718.P2543777909472888269

/-!
# A318719: Heinz numbers of strict integer partitions in which no two parts are relatively prime.

The programs for A318719, there is no canonical definition to state claims against.
-/

/-! ## A318719.P13598425891038151213

`filter[A328336(n+1), A008966(#)]`
-/

namespace A318719.P13598425891038151213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A318719.P13598425891038151213

/-! ## A318719.P9750910883858403291

`filter[A328336(n+1), A323154(#)]`
-/

namespace A318719.P9750910883858403291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A318719.P9750910883858403291

/-! ## A318719.P13968628543008514056

`filter[A328336(n+1), A353559(#)]`
-/

namespace A318719.P13968628543008514056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A318719.P13968628543008514056

/-! ## A318719.P3953812842786329897

`filter[A328336(n+1), A353627(#)]`
-/

namespace A318719.P3953812842786329897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A318719.P3953812842786329897

/-! ## A318719.P14349607463691174771

`filter[A328336(n+1), A359834(#)]`
-/

namespace A318719.P14349607463691174771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A318719.P14349607463691174771

/-!
# A318721: Number of strict relatively prime factorizations of n.

The programs for A318721, there is no canonical definition to state claims against.
-/

/-! ## A318721.P17029648290970103498

`A240010(A304817(n+1))`
-/

namespace A318721.P17029648290970103498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240010 (A304817 (n + 1)).toNat

end

end A318721.P17029648290970103498

/-! ## A318721.P3433334718518396416

`A240010(A183096(n+1)+1)`
-/

namespace A318721.P3433334718518396416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240010 (A183096 (n + 1) + 1).toNat

end

end A318721.P3433334718518396416

/-! ## A318721.P864615645051651253

`A000164(A295557(n+1)+5)`
-/

namespace A318721.P864615645051651253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (A295557 (n + 1) + 5).toNat

end

end A318721.P864615645051651253

/-! ## A318721.P5115187864467158162

`A025436(or(5, A295557(n+1)))`
-/

namespace A318721.P5115187864467158162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025436 (Int.lor 5 (A295557 (n + 1))).toNat

end

end A318721.P5115187864467158162

/-! ## A318721.P3268818093696124274

`A255001(ceil(A183096(n+1)/2))`
-/

namespace A318721.P3268818093696124274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255001 ⌈(A183096 (n + 1) : ℚ) / 2⌉.toNat

end

end A318721.P3268818093696124274

/-! ## A318721.P12453744358349074593

`floor(γ*(A089233(n+1)+A054977(n)))`
-/

namespace A318721.P12453744358349074593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.eulerMascheroniConstant * (A089233 (n + 1) + A054977 n : ℝ)⌋

end

end A318721.P12453744358349074593

/-! ## A318721.P8752189757062018950

`A045778(n+1)-A318749(n+1)%(n+1)`
-/

namespace A318721.P8752189757062018950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (n + 1) - Int.tmod (A318749 (n + 1)) (n + 1 : ℤ)

end

end A318721.P8752189757062018950

/-! ## A318721.P15413948333996505525

`A283834(abs(A001057(A183096(n+1))))`
-/

namespace A318721.P15413948333996505525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283834 |A001057 (A183096 (n + 1)).toNat|.toNat

end

end A318721.P15413948333996505525

/-! ## A318721.P5212146268593949573

`A038128(A089233(n+1)+A054977(n))`
-/

namespace A318721.P5212146268593949573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038128 (A089233 (n + 1) + A054977 n).toNat

end

end A318721.P5212146268593949573

/-! ## A318721.P7130102199273201026

`A097337(A089233(n+1)+A054977(n))`
-/

namespace A318721.P7130102199273201026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (A089233 (n + 1) + A054977 n).toNat

end

end A318721.P7130102199273201026

/-!
# A318724: Let f(0) = 0 and f(t*4^k + u) = i^t * ((1+i) * 2^k - f(u)) for any t in {1, 2, 3} and k >= 0 and u such that 0 <= u < 4^k (i denoting the imaginary unit); for any n >= 0, let g(n) = (f(A042968(n)) - 1 - i) / 2; a(n) is the square of the modulus of g(n).

The programs for A318724, there is no canonical definition to state claims against.
-/

/-! ## A318724.P8312916433556065362

`A318722(n)²+A318723(n)²`
-/

namespace A318724.P8312916433556065362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318722 n ^ 2 + A318723 n ^ 2

end

end A318724.P8312916433556065362

/-! ## A318724.P3991496295857715797

`gcd(A091321(2*(n+1)), A193592(A037239(2*(n+1))))`
-/

namespace A318724.P3991496295857715797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091321 (2 * (n + 1))) (A193592 (A037239 (2 * (n + 1))).toNat)

end

end A318724.P3991496295857715797

/-!
# A318726: Number of integer compositions of n that have only one part or whose consecutive parts are indivisible and the last and first part are also indivisible.

The programs for A318726, there is no canonical definition to state claims against.
-/

/-! ## A318726.P4391153672823769556

`A328598(n+1)+1`
-/

namespace A318726.P4391153672823769556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328598 (n + 1) + 1

end

end A318726.P4391153672823769556

/-! ## A318726.P5187728896525439358

`Δ[∑[A328598(n)]-A024000(n)]`
-/

namespace A318726.P5187728896525439358
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328598 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A024000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A318726.P5187728896525439358

/-! ## A318726.P13248542127395228763

`Δ[∑[A328598(n)]-A001057(2*n)]`
-/

namespace A318726.P13248542127395228763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328598 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A001057 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A318726.P13248542127395228763

/-!
# A318727: Number of integer compositions of n where adjacent parts are indivisible (either way) and the last and first part are also indivisible (either way).

The programs for A318727, there is no canonical definition to state claims against.
-/

/-! ## A318727.P3250116801528690032

`A328599(n+1)+1`
-/

namespace A318727.P3250116801528690032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328599 (n + 1) + 1

end

end A318727.P3250116801528690032

/-! ## A318727.P12281423530043186672

`or(1, A328599(4/2-(1-n)))`
-/

namespace A318727.P12281423530043186672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A328599 (SequenceMachineLib.roundAway ((4 : ℚ) / 2 - (1 - (n : ℤ) : ℚ))).toNat)

end

end A318727.P12281423530043186672

/-! ## A318727.P4624390701845625883

`xor(1, A328599(A028242(2*n)))`
-/

namespace A318727.P4624390701845625883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A328599 (A028242 (2 * n)).toNat)

end

end A318727.P4624390701845625883

/-! ## A318727.P13792404422985793067

`1-A328599(A028242(2*n))/A164117(Δ[n²])`
-/

namespace A318727.P13792404422985793067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (A328599 (A028242 (2 * n)).toNat : ℚ) / (A164117 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A318727.P13792404422985793067

/-! ## A318727.P13594817626885625711

`A141310(A328599(n+1))`
-/

namespace A318727.P13594817626885625711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A328599 (n + 1)).toNat

end

end A318727.P13594817626885625711

/-!
# A318728: Number of cyclic compositions (necklaces of positive integers) summing to n that have only one part or whose adjacent parts (including the last with first) are coprime.

The programs for A318728, there is no canonical definition to state claims against.
-/

/-! ## A318728.P10856404573041628487

`ceil(A328597(n+1)+sin(n)²)`
-/

namespace A318728.P10856404573041628487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A328597 (n + 1) : ℝ) + Real.sin (n : ℝ) ^ 2⌉

end

end A318728.P10856404573041628487

/-! ## A318728.P5967502019448276898

`A328597(n+1)+A057427(n)`
-/

namespace A318728.P5967502019448276898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328597 (n + 1) + A057427 n

end

end A318728.P5967502019448276898

/-! ## A318728.P6029683409001963285

`A328597(n+1)+A178334(n)`
-/

namespace A318728.P6029683409001963285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328597 (n + 1) + A178334 n

end

end A318728.P6029683409001963285

/-! ## A318728.P5163188507840540178

`A328597(n+1)-A057428(n)`
-/

namespace A318728.P5163188507840540178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328597 (n + 1) - A057428 n

end

end A318728.P5163188507840540178

/-! ## A318728.P5155298832270603682

`A328597(n+1)+char[A052938(n)]`
-/

namespace A318728.P5155298832270603682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328597 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A318728.P5155298832270603682

/-! ## A318728.P15914682382010607138

`A328597(n+1)+char[A328628(n)]`
-/

namespace A318728.P15914682382010607138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328628 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328597 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A318728.P15914682382010607138

/-! ## A318728.P5143175530539042873

`A328597(n+1)+char[A328629(n)]`
-/

namespace A318728.P5143175530539042873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328629 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328597 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A318728.P5143175530539042873

/-! ## A318728.P9004385309174694389

`A328597(n+1)+1-A000007(n)`
-/

namespace A318728.P9004385309174694389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328597 (n + 1) + (1 - A000007 n)

end

end A318728.P9004385309174694389

/-! ## A318728.P2136030181556075005

`A328597(n+1)%A008965(n+1)+1`
-/

namespace A318728.P2136030181556075005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328597 (n + 1)) (A008965 (n + 1)) + 1

end

end A318728.P2136030181556075005

/-! ## A318728.P5611218436419955963

`A328597(n+1)+and(1, A000040(n+1))`
-/

namespace A318728.P5611218436419955963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328597 (n + 1) + Int.land 1 (A000040 (n + 1))

end

end A318728.P5611218436419955963

/-! ## A318728.P1156997769201174709

`A328597(n+1)+A055396(A008458(n))`
-/

namespace A318728.P1156997769201174709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328597 (n + 1) + A055396 (A008458 n).toNat

end

end A318728.P1156997769201174709

/-! ## A318728.P8595740671516202943

`A328597(n+1)+A035931(A035931(n))`
-/

namespace A318728.P8595740671516202943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328597 (n + 1) + A035931 (A035931 n).toNat

end

end A318728.P8595740671516202943

/-! ## A318728.P7837159619934967461

`A328597(n+1)+A048766(A048766(n))`
-/

namespace A318728.P7837159619934967461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328597 (n + 1) + A048766 (A048766 n).toNat

end

end A318728.P7837159619934967461

/-! ## A318728.P17716567095186136514

`A328597(n+1)+A001222(A008578(n+1))`
-/

namespace A318728.P17716567095186136514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328597 (n + 1) + A001222 (A008578 (n + 1)).toNat

end

end A318728.P17716567095186136514

/-! ## A318728.P5373414059636075251

`A328597(n+1)+A001221(A034699(n+1))`
-/

namespace A318728.P5373414059636075251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328597 (n + 1) + A001221 (A034699 (n + 1)).toNat

end

end A318728.P5373414059636075251

/-!
# A318729: Number of cyclic compositions (necklaces of positive integers) summing to n that have only one part or whose consecutive parts (including the last with first) are indivisible.

The programs for A318729, there is no canonical definition to state claims against.
-/

/-! ## A318729.P1145904549227013257

`A328600(n+1)+1`
-/

namespace A318729.P1145904549227013257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328600 (n + 1) + 1

end

end A318729.P1145904549227013257

/-! ## A318729.P4249531893993234129

`Δ[A338331(record[A185646(n)])]`
-/

namespace A318729.P4249531893993234129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185646 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338331 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A318729.P4249531893993234129

/-!
# A318730: Number of cyclic compositions (necklaces of positive integers) summing to n with adjacent parts (including the last and first part) being indivisible (either way).

The programs for A318730, there is no canonical definition to state claims against.
-/

/-! ## A318730.P16516445134802990788

`A328601(n+1)+1`
-/

namespace A318730.P16516445134802990788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328601 (n + 1) + 1

end

end A318730.P16516445134802990788

/-! ## A318730.P14941753562993816834

`∑{d}[n+1, A318747(#)-1]+1`
-/

namespace A318730.P14941753562993816834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A318747 d - 1) + 1

end

end A318730.P14941753562993816834

/-! ## A318730.P7347256854411702748

`A318747(n+1)+A318673(A318644(n))`
-/

namespace A318730.P7347256854411702748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318747 (n + 1) + A318673 (A318644 n).toNat

end

end A318730.P7347256854411702748

/-!
# A318731: Number of relatively prime Lyndon compositions (aperiodic necklaces of positive integers) with sum n.

The programs for A318731, the canonical program `A318731.P555593411939680418` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318731 has offset 1).

The definition of A318731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 340 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318731.P555593411939680418

`∑{d}[n+1, A007427(#)*A008965((n+1)/#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A318731

/-- `∑{d}[n+1, A007427(#)*A008965((n+1)/#)]` -/
def P555593411939680418.Spec : Prop :=
  ∀ n, P555593411939680418.a n = A318731 (n + 1)

theorem P555593411939680418.correct : P555593411939680418.Spec := by
  intro n
  simp only [A318731, Nat.add_sub_cancel]

end A318731

/-! ## A318731.P14289285096785401690

`∑{d}[n+1, A008683(#)*A059966((n+1)/#)]`
-/

namespace A318731.P14289285096785401690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A059966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318731.P14289285096785401690

namespace A318731

/-- `∑{d}[n+1, A008683(#)*A059966((n+1)/#)]` -/
def P14289285096785401690.Spec : Prop :=
  ∀ n, P14289285096785401690.a n = A318731 (n + 1)

end A318731

/-! ## A318731.P16340570240996218727

`∑{d}[n+1, A092673(#)*A383034((n+1)/#)]`
-/

namespace A318731.P16340570240996218727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092673 d * A383034 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318731.P16340570240996218727

namespace A318731

/-- `∑{d}[n+1, A092673(#)*A383034((n+1)/#)]` -/
def P16340570240996218727.Spec : Prop :=
  ∀ n, P16340570240996218727.a n = A318731 (n + 1)

end A318731

/-! ## A318731.P16170804975599480130

`A057574(n)+∑[A029151(n)-1]`
-/

namespace A318731.P16170804975599480130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029151 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057574 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318731.P16170804975599480130

namespace A318731

/-- `A057574(n)+∑[A029151(n)-1]` -/
def P16170804975599480130.Spec : Prop :=
  ∀ n, P16170804975599480130.a n = A318731 (n + 1)

end A318731

/-! ## A318731.P6434150087879723304

`A057574(n)+∑[A023443(A029151(n))]`
-/

namespace A318731.P6434150087879723304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A029151 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057574 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318731.P6434150087879723304

namespace A318731

/-- `A057574(n)+∑[A023443(A029151(n))]` -/
def P6434150087879723304.Spec : Prop :=
  ∀ n, P6434150087879723304.a n = A318731 (n + 1)

end A318731

/-!
# A318734: a(n) = Sum_{k=1..n} (-1)^(k + 1) * d(2*k - 1), where d(k) is the number of divisors of k (A000005).

The programs for A318734, the canonical program `A318734.P12849207879321018043` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318734 has offset 1).

The definition of A318734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318734.P14256516354432989029

`∑[(-1)^n*A000005(2*n+1)]`
-/

namespace A318734.P14256516354432989029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000005 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318734.P14256516354432989029

namespace A318734

/-- `∑[(-1)^n*A000005(2*n+1)]` -/
def P14256516354432989029.Spec : Prop :=
  ∀ n, P14256516354432989029.a n = A318734 (n + 1)

end A318734

/-! ## A318734.P12849207879321018043

`∑[A033999(n)*A099774(n+1)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A318734

/-- `∑[A033999(n)*A099774(n+1)]` -/
def P12849207879321018043.Spec : Prop :=
  ∀ n, P12849207879321018043.a n = A318734 (n + 1)

theorem P12849207879321018043.correct : P12849207879321018043.Spec := by
  intro n
  simp only [A318734, Nat.add_sub_cancel]

end A318734

/-! ## A318734.P13625857815810662843

`∑[A000005(A005408(n))/(-1)^n]`
-/

namespace A318734.P13625857815810662843
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A005408 n).toNat : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318734.P13625857815810662843

namespace A318734

/-- `∑[A000005(A005408(n))/(-1)^n]` -/
def P13625857815810662843.Spec : Prop :=
  ∀ n, P13625857815810662843.a n = (A318734 (n + 1) : ℚ)

end A318734

/-! ## A318734.P8692231756968282778

`∑[A000005(2*n+1)*A033999(n)]`
-/

namespace A318734.P8692231756968282778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318734.P8692231756968282778

namespace A318734

/-- `∑[A000005(2*n+1)*A033999(n)]` -/
def P8692231756968282778.Spec : Prop :=
  ∀ n, P8692231756968282778.a n = A318734 (n + 1)

end A318734

/-! ## A318734.P6833015829052616894

`∑[A000005(2*n+1)*A062157(n+1)]`
-/

namespace A318734.P6833015829052616894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1) * A062157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318734.P6833015829052616894

namespace A318734

/-- `∑[A000005(2*n+1)*A062157(n+1)]` -/
def P6833015829052616894.Spec : Prop :=
  ∀ n, P6833015829052616894.a n = A318734 (n + 1)

end A318734

/-! ## A318734.P15070412503064626935

`∑[(A014681(n+1)-(n+1))*A099774(n+1)]`
-/

namespace A318734.P15070412503064626935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014681 (n + 1) - (n + 1 : ℤ)) * A099774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318734.P15070412503064626935

namespace A318734

/-- `∑[(A014681(n+1)-(n+1))*A099774(n+1)]` -/
def P15070412503064626935.Spec : Prop :=
  ∀ n, P15070412503064626935.a n = A318734 (n + 1)

end A318734

/-! ## A318734.P11034294329509867067

`∑[A000005(2*n+1)*A057077(2*n)]`
-/

namespace A318734.P11034294329509867067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1) * A057077 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318734.P11034294329509867067

namespace A318734

/-- `∑[A000005(2*n+1)*A057077(2*n)]` -/
def P11034294329509867067.Spec : Prop :=
  ∀ n, P11034294329509867067.a n = A318734 (n + 1)

end A318734

/-!
# A318737: Numbers n=2*k-1 where Sum_{j=1..k} (-1)^(j+1) * d(2*j-1) achieves a new record, with d(n) = number of divisors of n (A000005).

The programs for A318737, there is no canonical definition to state claims against.
-/

/-! ## A318737.P8975214185931166326

`A059592(A094847(n+1))+A033996(n)`
-/

namespace A318737.P8975214185931166326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059592 (A094847 (n + 1)).toNat + A033996 n

end

end A318737.P8975214185931166326

/-! ## A318737.P4565304872248886009

`A063864(A265063(n+3))+(2*n+1)²`
-/

namespace A318737.P4565304872248886009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063864 (A265063 (n + 3)).toNat + ((2 * n + 1) ^ 2 : ℤ)

end

end A318737.P4565304872248886009

/-!
# A318738: Numbers n=2*k-1 where Sum_{j=1..k} (-1)^(j+1) * d(2*j-1) achieves a new negative record, with d(n) = number of divisors of n (A000005).

The programs for A318738, there is no canonical definition to state claims against.
-/

/-! ## A318738.P12700012665484858525

`A195758(A097855(3*n+4))*A273204(n)`
-/

namespace A318738.P12700012665484858525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195758 (A097855 (3 * n + 4)).toNat * A273204 n

end

end A318738.P12700012665484858525

/-!
# A318742: a(n) = Sum_{k=1..n} floor(n/k)^3.

The programs for A318742, the canonical program `A318742.P13794595884572258610` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318742 has offset 1).

The definition of A318742 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318742.P13794595884572258610

`A006218(n+1)-3*A024916(n+1)+3*A064602(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A318742

/-- `A006218(n+1)-3*A024916(n+1)+3*A064602(n+1)` -/
def P13794595884572258610.Spec : Prop :=
  ∀ n, P13794595884572258610.a n = A318742 (n + 1)

theorem P13794595884572258610.correct : P13794595884572258610.Spec := by
  intro n
  simp only [A318742, Nat.add_sub_cancel]

end A318742

/-! ## A318742.P17332260978066481608

`∑[∑{d}[n+1, A003215(#-1)]]`
-/

namespace A318742.P17332260978066481608
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A003215 (d - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318742.P17332260978066481608

namespace A318742

/-- `∑[∑{d}[n+1, A003215(#-1)]]` -/
def P17332260978066481608.Spec : Prop :=
  ∀ n, P17332260978066481608.a n = A318742 (n + 1)

end A318742

/-! ## A318742.P6306700214682508695

`2*A350144(n+1)-A344721(n+1)`
-/

namespace A318742.P6306700214682508695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A350144 (n + 1) - A344721 (n + 1)

end

end A318742.P6306700214682508695

namespace A318742

/-- `2*A350144(n+1)-A344721(n+1)` -/
def P6306700214682508695.Spec : Prop :=
  ∀ n, P6306700214682508695.a n = A318742 (n + 1)

end A318742

/-! ## A318742.P5486969494612580657

`∑[A000005(n+1)+3*A086666(n+1)]`
-/

namespace A318742.P5486969494612580657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + 3 * A086666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318742.P5486969494612580657

namespace A318742

/-- `∑[A000005(n+1)+3*A086666(n+1)]` -/
def P5486969494612580657.Spec : Prop :=
  ∀ n, P5486969494612580657.a n = A318742 (n + 1)

end A318742

/-! ## A318742.P8138411091266400204

`∑[∑{d}[n+1, A056105(#)-#]]`
-/

namespace A318742.P8138411091266400204
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (A056105 d - (d : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318742.P8138411091266400204

namespace A318742

/-- `∑[∑{d}[n+1, A056105(#)-#]]` -/
def P8138411091266400204.Spec : Prop :=
  ∀ n, P8138411091266400204.a n = A318742 (n + 1)

end A318742

/-! ## A318742.P13603103828440186730

`∑[∑{d}[n+1, A054552(#)-#²]]`
-/

namespace A318742.P13603103828440186730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (A054552 d - (d ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318742.P13603103828440186730

namespace A318742

/-- `∑[∑{d}[n+1, A054552(#)-#²]]` -/
def P13603103828440186730.Spec : Prop :=
  ∀ n, P13603103828440186730.a n = A318742 (n + 1)

end A318742

/-! ## A318742.P13068160574366247943

`∑[∑{d}[n+1, A016777(#²-#)]]`
-/

namespace A318742.P13068160574366247943
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A016777 (d ^ 2 - d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318742.P13068160574366247943

namespace A318742

/-- `∑[∑{d}[n+1, A016777(#²-#)]]` -/
def P13068160574366247943.Spec : Prop :=
  ∀ n, P13068160574366247943.a n = A318742 (n + 1)

end A318742

/-! ## A318742.P12682125010197302023

`∑[∑{d}[n+1, A007310(A002061(#))]]`
-/

namespace A318742.P12682125010197302023
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A007310 (A002061 d).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318742.P12682125010197302023

namespace A318742

/-- `∑[∑{d}[n+1, A007310(A002061(#))]]` -/
def P12682125010197302023.Spec : Prop :=
  ∀ n, P12682125010197302023.a n = A318742 (n + 1)

end A318742

/-! ## A318742.P15360513133449419498

`A344725(∑[n+3]+1)`
-/

namespace A318742.P15360513133449419498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344725 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A318742.P15360513133449419498

namespace A318742

/-- `A344725(∑[n+3]+1)` -/
def P15360513133449419498.Spec : Prop :=
  ∀ n, P15360513133449419498.a n = A318742 (n + 1)

end A318742

/-!
# A318743: a(n) = Sum_{k=1..n} floor(n/k)^4.

The programs for A318743, the canonical program `A318743.P15297176175404902628` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318743 has offset 1).

The definition of A318743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318743.P15297176175404902628

`∑[∑{d}[n+1, A005917(#)]]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A318743

/-- `∑[∑{d}[n+1, A005917(#)]]` -/
def P15297176175404902628.Spec : Prop :=
  ∀ n, P15297176175404902628.a n = A318743 (n + 1)

theorem P15297176175404902628.correct : P15297176175404902628.Spec := by
  intro n
  simp only [A318743, Nat.add_sub_cancel]

end A318743

/-! ## A318743.P18113829782649314164

`A344725(∑[n+4]+3)`
-/

namespace A318743.P18113829782649314164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344725 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A318743.P18113829782649314164

namespace A318743

/-- `A344725(∑[n+4]+3)` -/
def P18113829782649314164.Spec : Prop :=
  ∀ n, P18113829782649314164.a n = A318743 (n + 1)

end A318743

/-! ## A318743.P6042789845503493803

`A344725(Δ[A006503(n+1)])^A178334(n)`
-/

namespace A318743.P6042789845503493803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344725 (f1 (n + 1) - f1 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A318743.P6042789845503493803

namespace A318743

/-- `A344725(Δ[A006503(n+1)])^A178334(n)` -/
def P6042789845503493803.Spec : Prop :=
  ∀ n, P6042789845503493803.a n = (A318743 (n + 1) : ℚ)

end A318743

/-! ## A318743.P1061248198631739694

`lcm(A283131(n+1), A344725(A155212(n)+5))`
-/

namespace A318743.P1061248198631739694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A283131 (n + 1)) (A344725 (A155212 n + 5).toNat)

end

end A318743.P1061248198631739694

namespace A318743

/-- `lcm(A283131(n+1), A344725(A155212(n)+5))` -/
def P1061248198631739694.Spec : Prop :=
  ∀ n, (P1061248198631739694.a n : ℤ) = A318743 (n + 1)

end A318743

/-! ## A318743.P15804655480934738499

`A344725(A155212(n)+5)%A268493(n)`
-/

namespace A318743.P15804655480934738499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344725 (A155212 n + 5).toNat) (A268493 n)

end

end A318743.P15804655480934738499

namespace A318743

/-- `A344725(A155212(n)+5)%A268493(n)` -/
def P15804655480934738499.Spec : Prop :=
  ∀ n, P15804655480934738499.a n = A318743 (n + 1)

end A318743

/-!
# A318744: a(n) = Sum_{k=1..n} floor(n/k)^5.

The programs for A318744, the canonical program `A318744.P5868279293464878838` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318744 has offset 1).

The definition of A318744 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064602, A064603, A064604, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318744.P5868279293464878838

`A006218(n+1)-5*A024916(n+1)+10*A064602(n+1)-10*A064603(n+1)+5*A064604(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A318744

/-- `A006218(n+1)-5*A024916(n+1)+10*A064602(n+1)-10*A064603(n+1)+5*A064604(n+1)` -/
def P5868279293464878838.Spec : Prop :=
  ∀ n, P5868279293464878838.a n = A318744 (n + 1)

theorem P5868279293464878838.correct : P5868279293464878838.Spec := by
  intro n
  simp only [A318744, Nat.add_sub_cancel]

end A318744

/-! ## A318744.P6771827759272423719

`∑[∑{d}[n+1, A022521(#-1)]]`
-/

namespace A318744.P6771827759272423719
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A022521 (d - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318744.P6771827759272423719

namespace A318744

/-- `∑[∑{d}[n+1, A022521(#-1)]]` -/
def P6771827759272423719.Spec : Prop :=
  ∀ n, P6771827759272423719.a n = A318744 (n + 1)

end A318744

/-! ## A318744.P3543460824889457210

`A344725(A046691(n+3))`
-/

namespace A318744.P3543460824889457210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344725 (A046691 (n + 3)).toNat

end

end A318744.P3543460824889457210

namespace A318744

/-- `A344725(A046691(n+3))` -/
def P3543460824889457210.Spec : Prop :=
  ∀ n, P3543460824889457210.a n = A318744 (n + 1)

end A318744

/-! ## A318744.P17217490721770225340

`A344725(Δ[A023545(n+1)])`
-/

namespace A318744.P17217490721770225340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344725 (f1 (n + 1) - f1 n).toNat

end

end A318744.P17217490721770225340

namespace A318744

/-- `A344725(Δ[A023545(n+1)])` -/
def P17217490721770225340.Spec : Prop :=
  ∀ n, P17217490721770225340.a n = A318744 (n + 1)

end A318744

/-! ## A318744.P5188024110690748249

`A344725(A000096(n+4)-3)`
-/

namespace A318744.P5188024110690748249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344725 (A000096 (n + 4) - 3).toNat

end

end A318744.P5188024110690748249

namespace A318744

/-- `A344725(A000096(n+4)-3)` -/
def P5188024110690748249.Spec : Prop :=
  ∀ n, P5188024110690748249.a n = A318744 (n + 1)

end A318744

/-! ## A318744.P4601914299992093060

`A344725(Δ[A034857(n+2)]-1)`
-/

namespace A318744.P4601914299992093060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344725 (f1 (n + 1) - f1 n - 1).toNat

end

end A318744.P4601914299992093060

namespace A318744

/-- `A344725(Δ[A034857(n+2)]-1)` -/
def P4601914299992093060.Spec : Prop :=
  ∀ n, P4601914299992093060.a n = A318744 (n + 1)

end A318744

/-! ## A318744.P16846778990594464312

`A344725(A014132(Δ[A034857(n+1)]))`
-/

namespace A318744.P16846778990594464312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344725 (A014132 (f1 (n + 1) - f1 n).toNat).toNat

end

end A318744.P16846778990594464312

namespace A318744

/-- `A344725(A014132(Δ[A034857(n+1)]))` -/
def P16846778990594464312.Spec : Prop :=
  ∀ n, P16846778990594464312.a n = A318744 (n + 1)

end A318744

/-!
# A318745: Number of Lyndon compositions (aperiodic necklaces of positive integers) with sum n and adjacent parts (including the last with the first part) being coprime.

The programs for A318745, there is no canonical definition to state claims against.
-/

/-! ## A318745.P13388893392267291414

`ceil(sqrt(A328669(n+1)²+n))`
-/

namespace A318745.P13388893392267291414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A328669 (n + 1) ^ 2 + (n : ℤ) : ℝ)⌉

end

end A318745.P13388893392267291414

/-! ## A318745.P10221174628570187974

`A328669(n+1)+A057427(n)`
-/

namespace A318745.P10221174628570187974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328669 (n + 1) + A057427 n

end

end A318745.P10221174628570187974

/-! ## A318745.P12546319144846596450

`A328669(n+1)+A178334(n)`
-/

namespace A318745.P12546319144846596450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328669 (n + 1) + A178334 n

end

end A318745.P12546319144846596450

/-! ## A318745.P1729205290698250557

`A328669(n+1)-A057428(n)`
-/

namespace A318745.P1729205290698250557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328669 (n + 1) - A057428 n

end

end A318745.P1729205290698250557

/-! ## A318745.P190577367421786034

`A328669(A137735(n²)+1)+1`
-/

namespace A318745.P190577367421786034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328669 (A137735 (n ^ 2) + 1).toNat + 1

end

end A318745.P190577367421786034

/-! ## A318745.P6631441537491718917

`A328669(n+1)+char[A133310(n)]`
-/

namespace A318745.P6631441537491718917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328669 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A318745.P6631441537491718917

/-! ## A318745.P2345374124323972460

`A328669(A000007(n)+1+n)+1`
-/

namespace A318745.P2345374124323972460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328669 (A000007 n + 1 + (n : ℤ)).toNat + 1

end

end A318745.P2345374124323972460

/-! ## A318745.P11747357304338398778

`A328669(n+1)%A041153(n)+1`
-/

namespace A318745.P11747357304338398778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328669 (n + 1)) (A041153 n) + 1

end

end A318745.P11747357304338398778

/-! ## A318745.P938497153640590334

`A328669(A007318(∑[n]+1)+1)+1`
-/

namespace A318745.P938497153640590334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328669 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1).toNat + 1

end

end A318745.P938497153640590334

/-! ## A318745.P9051354467445116285

`A328669(n+1)+A071231(n)%(n+1)`
-/

namespace A318745.P9051354467445116285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328669 (n + 1) + Int.tmod (A071231 n) (n + 1 : ℤ)

end

end A318745.P9051354467445116285

/-! ## A318745.P6173527497539390372

`A328669(n+1)+A211666(A246029(n))`
-/

namespace A318745.P6173527497539390372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328669 (n + 1) + A211666 (A246029 n).toNat

end

end A318745.P6173527497539390372

/-! ## A318745.P6173724456282070775

`A328669(n+1)+A000035(∑[A007400(n)])`
-/

namespace A318745.P6173724456282070775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328669 (n + 1) + A000035 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A318745.P6173724456282070775

/-! ## A318745.P15615172953842200276

`A328669(n+1)+A088433(A006530(n+1))`
-/

namespace A318745.P15615172953842200276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328669 (n + 1) + A088433 (A006530 (n + 1)).toNat

end

end A318745.P15615172953842200276

/-! ## A318745.P10513972050243618

`A318728(n+1)+A328669(n+1)-A328597(n+1)`
-/

namespace A318745.P10513972050243618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318728 (n + 1) + (A328669 (n + 1) - A328597 (n + 1))

end

end A318745.P10513972050243618

/-! ## A318745.P14812066388823326694

`A318748(n+1)+A328669(n+1)-A328609(n+1)`
-/

namespace A318745.P14812066388823326694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318748 (n + 1) + (A328669 (n + 1) - A328609 (n + 1))

end

end A318745.P14812066388823326694

/-!
# A318748: Number of integer compositions of n that have only one part or whose consecutive parts are coprime and the last and first part are also coprime.

The programs for A318748, there is no canonical definition to state claims against.
-/

/-! ## A318748.P15480957855616757057

`A328609(n)+1-C(n, n²)`
-/

namespace A318748.P15480957855616757057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328609 n + (1 - (Nat.choose n (n ^ 2) : ℤ))

end

end A318748.P15480957855616757057

/-! ## A318748.P5467100190219859930

`A328609(n)+A157928(n)`
-/

namespace A318748.P5467100190219859930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328609 n + A157928 n

end

end A318748.P5467100190219859930

/-! ## A318748.P7041506541996191777

`A328609(n)%A034299(n)+1`
-/

namespace A318748.P7041506541996191777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328609 n) (A034299 n) + 1

end

end A318748.P7041506541996191777

/-! ## A318748.P10240268359070846609

`A328609(n)+A019430(n)%2`
-/

namespace A318748.P10240268359070846609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328609 n + Int.tmod (A019430 n) 2

end

end A318748.P10240268359070846609

/-! ## A318748.P10721533696657417606

`A328609(n)+A265644(C(3, n²))`
-/

namespace A318748.P10721533696657417606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328609 n + A265644 (Nat.choose 3 (n ^ 2))

end

end A318748.P10721533696657417606

/-! ## A318748.P15974568555304592025

`A328609(n)+A095999(A095999(n+1)+2)`
-/

namespace A318748.P15974568555304592025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328609 n + A095999 (A095999 (n + 1) + 2).toNat

end

end A318748.P15974568555304592025

/-! ## A318748.P14244542066793532972

`A328609(n)+A004525(A001222(A070939(n)))`
-/

namespace A318748.P14244542066793532972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328609 n + A004525 (A001222 (A070939 n).toNat).toNat

end

end A318748.P14244542066793532972

/-! ## A318748.P13614642568330943794

`A070939(n)+A328609(n)-A070939(A004525(n))`
-/

namespace A318748.P13614642568330943794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n + (A328609 n - A070939 (A004525 n).toNat)

end

end A318748.P13614642568330943794

/-!
# A318749: Number of pairwise relatively nonprime strict factorizations of n (no two factors are coprime).

The programs for A318749, there is no canonical definition to state claims against.
-/

/-! ## A318749.P2430151263514856031

`A194621(A316978(n+1))`
-/

namespace A318749.P2430151263514856031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194621 (A316978 (n + 1)).toNat

end

end A318749.P2430151263514856031

/-! ## A318749.P106754597084259079

`A088004(A316978(n+1)+3)`
-/

namespace A318749.P106754597084259079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088004 (A316978 (n + 1) + 3).toNat

end

end A318749.P106754597084259079

/-! ## A318749.P13321388146371070954

`A329040(2^A316978(n+1))`
-/

namespace A318749.P13321388146371070954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329040 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A316978 (n + 1) : ℤ))).toNat

end

end A318749.P13321388146371070954

/-! ## A318749.P5790373570210947039

`ceil(A336422(n+1)/9)`
-/

namespace A318749.P5790373570210947039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A336422 (n + 1) : ℚ) / 9⌉

end

end A318749.P5790373570210947039

/-! ## A318749.P11867752873062544127

`A133880(A336422(n+1)+2)`
-/

namespace A318749.P11867752873062544127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133880 (A336422 (n + 1) + 2).toNat

end

end A318749.P11867752873062544127

/-! ## A318749.P17929923431675896214

`A179051(A336422(n+1)+2)`
-/

namespace A318749.P17929923431675896214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179051 (A336422 (n + 1) + 2).toNat

end

end A318749.P17929923431675896214

/-! ## A318749.P15376447203907104285

`A267263(2^A316978(n+1))`
-/

namespace A318749.P15376447203907104285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A316978 (n + 1) : ℤ))).toNat

end

end A318749.P15376447203907104285

/-! ## A318749.P18083454978246590149

`A045778(n+1)-A059829(A114717(n+1))`
-/

namespace A318749.P18083454978246590149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (n + 1) - A059829 (A114717 (n + 1)).toNat

end

end A318749.P18083454978246590149

/-! ## A318749.P709398615525559108

`A065033(A181591(n+1))+A000007(A119481(n+1))`
-/

namespace A318749.P709398615525559108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A181591 (n + 1)).toNat + A000007 (A119481 (n + 1)).toNat

end

end A318749.P709398615525559108

/-!
# A318750: a(n) = Sum_{k=1..n} k * tau_3(k), where tau_3 is A007425.

The programs for A318750, the canonical program `A318750.P2316248381120503005` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318750 has offset 1).

The definition of A318750 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318750.P2316248381120503005

`∑[(n+1)*∏{e}[n+1, C(#+2, 2)]]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A318750

/-- `∑[(n+1)*∏{e}[n+1, C(#+2, 2)]]` -/
def P2316248381120503005.Spec : Prop :=
  ∀ n, (P2316248381120503005.a n : ℤ) = A318750 (n + 1)

theorem P2316248381120503005.correct : P2316248381120503005.Spec := by
  intro n
  simp only [A318750, Nat.add_sub_cancel]

end A318750

/-! ## A318750.P16242028655041490184

`∑[A034718(n+1)]`
-/

namespace A318750.P16242028655041490184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318750.P16242028655041490184

namespace A318750

/-- `∑[A034718(n+1)]` -/
def P16242028655041490184.Spec : Prop :=
  ∀ n, P16242028655041490184.a n = A318750 (n + 1)

theorem P16242028655041490184.correct : P16242028655041490184.Spec := by
  intro n
  simp only [A318750, Nat.add_sub_cancel, A318750.P16242028655041490184.f1, A318750.P16242028655041490184.a, A318750.P2316248381120503005.f2, A318750.P2316248381120503005.f1, A318750.P2316248381120503005.a, A034718, A034718.P3593226666238207661.a, A007425, A007425.P3441111155356079205.f1, A007425.P3441111155356079205.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A318750

/-! ## A318750.P5662445887339769457

`∑[(n+1)*A007425(n+1)]`
-/

namespace A318750.P5662445887339769457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318750.P5662445887339769457

namespace A318750

/-- `∑[(n+1)*A007425(n+1)]` -/
def P5662445887339769457.Spec : Prop :=
  ∀ n, P5662445887339769457.a n = A318750 (n + 1)

theorem P5662445887339769457.correct : P5662445887339769457.Spec := by
  intro n
  simp only [A318750, Nat.add_sub_cancel, A318750.P5662445887339769457.f1, A318750.P5662445887339769457.a, A318750.P2316248381120503005.f2, A318750.P2316248381120503005.f1, A318750.P2316248381120503005.a, A007425, A007425.P3441111155356079205.f1, A007425.P3441111155356079205.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A318750

/-! ## A318750.P6906177250452486511

`∑[∑{d}[n+1, (n+1)*A000005(#)]]`
-/

namespace A318750.P6906177250452486511
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (n + 1 : ℤ) * A000005 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318750.P6906177250452486511

namespace A318750

/-- `∑[∑{d}[n+1, (n+1)*A000005(#)]]` -/
def P6906177250452486511.Spec : Prop :=
  ∀ n, P6906177250452486511.a n = A318750 (n + 1)

end A318750

/-! ## A318750.P6528855638914648270

`∑[(n+1)*∏{e}[n+1, A000217(A090109(#+1))]]`
-/

namespace A318750.P6528855638914648270
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ p ∈ Nat.primeFactors (f2 n), A000217 (A090109 (Nat.factorization (f2 n) p + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318750.P6528855638914648270

namespace A318750

/-- `∑[(n+1)*∏{e}[n+1, A000217(A090109(#+1))]]` -/
def P6528855638914648270.Spec : Prop :=
  ∀ n, P6528855638914648270.a n = A318750 (n + 1)

end A318750

/-! ## A318750.P17800039489752821388

`∑[(n+1)*∑{d}[n+1, A010052(#)*A048691((n+1)/#)]]`
-/

namespace A318750.P17800039489752821388
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f2 n), A010052 d * A048691 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318750.P17800039489752821388

namespace A318750

/-- `∑[(n+1)*∑{d}[n+1, A010052(#)*A048691((n+1)/#)]]` -/
def P17800039489752821388.Spec : Prop :=
  ∀ n, P17800039489752821388.a n = A318750 (n + 1)

end A318750

/-! ## A318750.P3548269217380030373

`∑[(n+1)*∑{d}[n+1, A007427(#)*A061200((n+1)/#)]]`
-/

namespace A318750.P3548269217380030373
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f2 n), A007427 d * A061200 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318750.P3548269217380030373

namespace A318750

/-- `∑[(n+1)*∑{d}[n+1, A007427(#)*A061200((n+1)/#)]]` -/
def P3548269217380030373.Spec : Prop :=
  ∀ n, P3548269217380030373.a n = A318750 (n + 1)

end A318750

/-! ## A318750.P6677293937912150510

`∑[(n+1)*A388067((n+1)²)]`
-/

namespace A318750.P6677293937912150510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A388067 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318750.P6677293937912150510

namespace A318750

/-- `∑[(n+1)*A388067((n+1)²)]` -/
def P6677293937912150510.Spec : Prop :=
  ∀ n, P6677293937912150510.a n = A318750 (n + 1)

end A318750

/-!
# A318753: Number A(n,k) of rooted trees with n nodes such that no more than k subtrees extending from the same node have the same number of nodes; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A318753, there is no canonical definition to state claims against.
-/

/-! ## A318753.P16554316265272762343

`A318757(n)-A003849(A060430(A288003(n+1)))`
-/

namespace A318753.P16554316265272762343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 n - A003849 (A060430 (A288003 (n + 1)).toNat).toNat

end

end A318753.P16554316265272762343

/-! ## A318753.P15388535674243054707

`A318757(n)-A090418(A023931(n))`
-/

namespace A318753.P15388535674243054707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 n - A090418 (A023931 n).toNat

end

end A318753.P15388535674243054707

/-! ## A318753.P17474257319241592438

`A318757(n)-A025437(A241067(n))`
-/

namespace A318753.P17474257319241592438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 n - A025437 (A241067 n).toNat

end

end A318753.P17474257319241592438

/-! ## A318753.P436243692156282482

`A318757(n)+A025437(A241067(n))*A244895(n)`
-/

namespace A318753.P436243692156282482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318757 n + A025437 (A241067 n).toNat * A244895 n

end

end A318753.P436243692156282482

/-! ## A318753.P4690588970370217860

`A318757(n)%∑[A162246(n)]`
-/

namespace A318753.P4690588970370217860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162246 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318757 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A318753.P4690588970370217860

/-! ## A318753.P17641246841052605722

`A318757(n)%A000664(n)`
-/

namespace A318753.P17641246841052605722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318757 n) (A000664 n)

end

end A318753.P17641246841052605722

/-! ## A318753.P7967847855941297005

`and(A141311(n+1), A318757(n))`
-/

namespace A318753.P7967847855941297005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141311 (n + 1)) (A318757 n)

end

end A318753.P7967847855941297005

/-!
# A318754: Number T(n,k) of rooted trees with n nodes such that k equals the maximal number of subtrees extending from the same node and having the same number of nodes; triangle T(n,k), n>=1, 0<=k<=n-1, read by rows.

The programs for A318754, there is no canonical definition to state claims against.
-/

/-! ## A318754.P8265260513255059325

`A318758(n+1)%A079397(n)`
-/

namespace A318754.P8265260513255059325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318758 (n + 1)) (A079397 n)

end

end A318754.P8265260513255059325

/-! ## A318754.P981298144197376892

`A318758(n+1)+A010051(A005898(n))`
-/

namespace A318754.P981298144197376892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (n + 1) + A010051 (A005898 n).toNat

end

end A318754.P981298144197376892

/-! ## A318754.P2978333774906369586

`A318758(n+1)+A000007(A065658(n))`
-/

namespace A318754.P2978333774906369586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (n + 1) + A000007 (A065658 n).toNat

end

end A318754.P2978333774906369586

/-! ## A318754.P9641005338591547761

`A318758(n+1)+A000007(A220083(n))`
-/

namespace A318754.P9641005338591547761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (n + 1) + A000007 (A220083 n).toNat

end

end A318754.P9641005338591547761

/-! ## A318754.P8276997720438110660

`A318758(n+1)+A185013(A097701(n))`
-/

namespace A318754.P8276997720438110660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (n + 1) + A185013 (A097701 n).toNat

end

end A318754.P8276997720438110660

/-!
# A318755: a(n) = Sum_{k=1..n} tau(k)^3, where tau is A000005.

The programs for A318755, the canonical program `A318755.P17419297004659125854` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318755 has offset 1).

The definition of A318755 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318755.P17419297004659125854

`∑[∏{e}[n+1, (#+1)^3]]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A318755

/-- `∑[∏{e}[n+1, (#+1)^3]]` -/
def P17419297004659125854.Spec : Prop :=
  ∀ n, (P17419297004659125854.a n : ℤ) = A318755 (n + 1)

theorem P17419297004659125854.correct : P17419297004659125854.Spec := by
  intro n
  simp only [A318755, Nat.add_sub_cancel]

end A318755

/-! ## A318755.P10880303676008741952

`∑[∑{d}[n+1, gcd(n, #)]^3]`
-/

namespace A318755.P10880303676008741952
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n), Nat.gcd n d) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318755.P10880303676008741952

namespace A318755

/-- `∑[∑{d}[n+1, gcd(n, #)]^3]` -/
def P10880303676008741952.Spec : Prop :=
  ∀ n, (P10880303676008741952.a n : ℤ) = A318755 (n + 1)

end A318755

/-! ## A318755.P16578187498336096364

`∑[A319089(n+1)]`
-/

namespace A318755.P16578187498336096364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318755.P16578187498336096364

namespace A318755

/-- `∑[A319089(n+1)]` -/
def P16578187498336096364.Spec : Prop :=
  ∀ n, P16578187498336096364.a n = A318755 (n + 1)

theorem P16578187498336096364.correct : P16578187498336096364.Spec := by
  intro n
  simp only [A318755, Nat.add_sub_cancel, A318755.P16578187498336096364.f1, A318755.P16578187498336096364.a, A318755.P17419297004659125854.f2, A318755.P17419297004659125854.f1, A318755.P17419297004659125854.a, A319089, A319089.P15206136038751736355.f1, A319089.P15206136038751736355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318755

/-! ## A318755.P8289778644080460749

`∑[Δ[A006218(n)]^3]`
-/

namespace A318755.P8289778644080460749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318755.P8289778644080460749

namespace A318755

/-- `∑[Δ[A006218(n)]^3]` -/
def P8289778644080460749.Spec : Prop :=
  ∀ n, P8289778644080460749.a n = A318755 (n + 1)

end A318755

/-! ## A318755.P9900570417562064190

`∑[Δ[A054519(n)]^3]`
-/

namespace A318755.P9900570417562064190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318755.P9900570417562064190

namespace A318755

/-- `∑[Δ[A054519(n)]^3]` -/
def P9900570417562064190.Spec : Prop :=
  ∀ n, P9900570417562064190.a n = A318755 (n + 1)

end A318755

/-! ## A318755.P3562784583658926925

`∑[A000005(n+1)^3]`
-/

namespace A318755.P3562784583658926925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318755.P3562784583658926925

namespace A318755

/-- `∑[A000005(n+1)^3]` -/
def P3562784583658926925.Spec : Prop :=
  ∀ n, P3562784583658926925.a n = A318755 (n + 1)

end A318755

/-! ## A318755.P1820225800747754966

`∑[(A038040(n+1)/(n+1))^3]`
-/

namespace A318755.P1820225800747754966
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318755.P1820225800747754966

namespace A318755

/-- `∑[(A038040(n+1)/(n+1))^3]` -/
def P1820225800747754966.Spec : Prop :=
  ∀ n, P1820225800747754966.a n = (A318755 (n + 1) : ℚ)

end A318755

/-! ## A318755.P18163791342679138243

`∑[A000578(A000005(n+1))]`
-/

namespace A318755.P18163791342679138243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318755.P18163791342679138243

namespace A318755

/-- `∑[A000578(A000005(n+1))]` -/
def P18163791342679138243.Spec : Prop :=
  ∀ n, P18163791342679138243.a n = A318755 (n + 1)

end A318755

/-! ## A318755.P11328109490397694514

`∑[A000093(A035116(n+1))]`
-/

namespace A318755.P11328109490397694514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A035116 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318755.P11328109490397694514

namespace A318755

/-- `∑[A000093(A035116(n+1))]` -/
def P11328109490397694514.Spec : Prop :=
  ∀ n, P11328109490397694514.a n = A318755 (n + 1)

end A318755

/-! ## A318755.P9217403619556297143

`∑[A000005(n+1)*A035116(n+1)]`
-/

namespace A318755.P9217403619556297143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A035116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318755.P9217403619556297143

namespace A318755

/-- `∑[A000005(n+1)*A035116(n+1)]` -/
def P9217403619556297143.Spec : Prop :=
  ∀ n, P9217403619556297143.a n = A318755 (n + 1)

end A318755

/-! ## A318755.P12123859823624421298

`∑[(A006218(n+1)-A006218(n))^3]`
-/

namespace A318755.P12123859823624421298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006218 (n + 1) - A006218 n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318755.P12123859823624421298

namespace A318755

/-- `∑[(A006218(n+1)-A006218(n))^3]` -/
def P12123859823624421298.Spec : Prop :=
  ∀ n, P12123859823624421298.a n = A318755 (n + 1)

end A318755

/-! ## A318755.P11412999184643657505

`∑[A000005(n+1)²*Δ[A006218(n)]]`
-/

namespace A318755.P11412999184643657505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) ^ 2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318755.P11412999184643657505

namespace A318755

/-- `∑[A000005(n+1)²*Δ[A006218(n)]]` -/
def P11412999184643657505.Spec : Prop :=
  ∀ n, P11412999184643657505.a n = A318755 (n + 1)

end A318755

/-! ## A318755.P15014590150366610924

`∑[abs(A329484(n+1))*A329484(n+1)²]`
-/

namespace A318755.P15014590150366610924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A329484 (n + 1)| * A329484 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318755.P15014590150366610924

namespace A318755

/-- `∑[abs(A329484(n+1))*A329484(n+1)²]` -/
def P15014590150366610924.Spec : Prop :=
  ∀ n, P15014590150366610924.a n = A318755 (n + 1)

end A318755

/-! ## A318755.P10374658499632674782

`∑[A320111(2*(n+1))²*A320111(2*(n+1))]`
-/

namespace A318755.P10374658499632674782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * (n + 1)) ^ 2 * A320111 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318755.P10374658499632674782

namespace A318755

/-- `∑[A320111(2*(n+1))²*A320111(2*(n+1))]` -/
def P10374658499632674782.Spec : Prop :=
  ∀ n, P10374658499632674782.a n = A318755 (n + 1)

end A318755

/-! ## A318755.P10383033234123014690

`∑[A000005(2*n+1-n)²*A000005(n+1)]`
-/

namespace A318755.P10383033234123014690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1 - n) ^ 2 * A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318755.P10383033234123014690

namespace A318755

/-- `∑[A000005(2*n+1-n)²*A000005(n+1)]` -/
def P10383033234123014690.Spec : Prop :=
  ∀ n, P10383033234123014690.a n = A318755 (n + 1)

end A318755

/-! ## A318755.P18039802636732199410

`∑[A000290(A000005(n+1)²)/A000005(n+1)]`
-/

namespace A318755.P18039802636732199410
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (A000005 (n + 1) ^ 2).toNat : ℚ) / (A000005 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318755.P18039802636732199410

namespace A318755

/-- `∑[A000290(A000005(n+1)²)/A000005(n+1)]` -/
def P18039802636732199410.Spec : Prop :=
  ∀ n, P18039802636732199410.a n = (A318755 (n + 1) : ℚ)

end A318755

/-! ## A318755.P9796519829786933783

`∑[∑{d}[n+1, A057427(#)]^3]`
-/

namespace A318755.P9796519829786933783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n), A057427 d) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318755.P9796519829786933783

namespace A318755

/-- `∑[∑{d}[n+1, A057427(#)]^3]` -/
def P9796519829786933783.Spec : Prop :=
  ∀ n, P9796519829786933783.a n = A318755 (n + 1)

end A318755

/-! ## A318755.P825229905107233419

`∑[A069157(2*(n+1))²*A069157(2*(n+1))]`
-/

namespace A318755.P825229905107233419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069157 (2 * (n + 1)) ^ 2 * A069157 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318755.P825229905107233419

namespace A318755

/-- `∑[A069157(2*(n+1))²*A069157(2*(n+1))]` -/
def P825229905107233419.Spec : Prop :=
  ∀ n, P825229905107233419.a n = A318755 (n + 1)

end A318755

/-! ## A318755.P13891077905584614721

`∑[A183063(2*(n+1))²*A183063(2*(n+1))]`
-/

namespace A318755.P13891077905584614721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * (n + 1)) ^ 2 * A183063 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318755.P13891077905584614721

namespace A318755

/-- `∑[A183063(2*(n+1))²*A183063(2*(n+1))]` -/
def P13891077905584614721.Spec : Prop :=
  ∀ n, P13891077905584614721.a n = A318755 (n + 1)

end A318755

/-! ## A318755.P13903116426448773844

`∑[A001222(A100587(n+1)+1)^3]`
-/

namespace A318755.P13903116426448773844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A100587 (n + 1) + 1).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318755.P13903116426448773844

namespace A318755

/-- `∑[A001222(A100587(n+1)+1)^3]` -/
def P13903116426448773844.Spec : Prop :=
  ∀ n, P13903116426448773844.a n = A318755 (n + 1)

end A318755

/-!
# A318756: Total number of binary digits used to write all partitions of n in binary notation.

The programs for A318756, there is no canonical definition to state claims against.
-/

/-! ## A318756.P9655749997317631400

`A123578(C(A008637(n+3), 3))`
-/

namespace A318756.P9655749997317631400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (Nat.choose (A008637 (n + 3)).toNat 3)

end

end A318756.P9655749997317631400

/-! ## A318756.P17499635148779638178

`A383473(A355547(n+1)+A330226(n+1))`
-/

namespace A318756.P17499635148779638178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383473 (A355547 (n + 1) + A330226 (n + 1)).toNat

end

end A318756.P17499635148779638178

/-! ## A318756.P13811159245203686654

`A344654(2*(n+2))+A277707(A002057(n))`
-/

namespace A318756.P13811159245203686654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344654 (2 * (n + 2)) + A277707 (A002057 n).toNat

end

end A318756.P13811159245203686654

/-!
# A318757: Number A(n,k) of rooted trees with n nodes such that no more than k isomorphic subtrees extend from the same node; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A318757, there is no canonical definition to state claims against.
-/

/-! ## A318757.P11161813642314870299

`A318753(n)+A090418(A023931(n))`
-/

namespace A318757.P11161813642314870299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 n + A090418 (A023931 n).toNat

end

end A318757.P11161813642314870299

/-! ## A318757.P3174806563995640784

`A318753(n)+A025437(A241067(n))`
-/

namespace A318757.P3174806563995640784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 n + A025437 (A241067 n).toNat

end

end A318757.P3174806563995640784

/-! ## A318757.P18185520135486392347

`A318753(n)-(A025437(A241067(n))-A028557(n))%2`
-/

namespace A318757.P18185520135486392347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 n - Int.tmod (A025437 (A241067 n).toNat - A028557 n) 2

end

end A318757.P18185520135486392347

/-!
# A318758: Number T(n,k) of rooted trees with n nodes such that k equals the maximal number of isomorphic subtrees extending from the same node; triangle T(n,k), n>=1, 0<=k<=n-1, read by rows.

The programs for A318758, there is no canonical definition to state claims against.
-/

/-! ## A318758.P4483560968917241570

`A318754(n+1)+A133010(A328479(n+1)+A318754(n+1))`
-/

namespace A318758.P4483560968917241570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318754 (n + 1) + A133010 (A328479 (n + 1) + A318754 (n + 1)).toNat

end

end A318758.P4483560968917241570

/-!
# A318761: Composite k that divides 2^(k-2) + 3^(k-2) + 6^(k-2) - 1.

The programs for A318761, there is no canonical definition to state claims against.
-/

/-! ## A318761.P12873346581159198653

`∩[A067936(n+1), A200878(n+1)]`
-/

namespace A318761.P12873346581159198653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A318761.P12873346581159198653

/-! ## A318761.P15325514221474117920

`A344994(n+1)+A002262(A091713(n+1))`
-/

namespace A318761.P15325514221474117920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344994 (n + 1) + A002262 (A091713 (n + 1)).toNat

end

end A318761.P15325514221474117920

/-!
# A318762: Number of permutations of a multiset whose multiplicities are the prime indices of n.

The programs for A318762, the canonical program `A318762.P1577526234185032386` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318762 has offset 1).

The definition of A318762 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008480, A181821, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A318762.P217757045575302353

`A112624(n+1)*A124794(n+1)`
-/

namespace A318762.P217757045575302353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (n + 1) * A124794 (n + 1)

end

end A318762.P217757045575302353

namespace A318762

/-- `A112624(n+1)*A124794(n+1)` -/
def P217757045575302353.Spec : Prop :=
  ∀ n, P217757045575302353.a n = A318762 (n + 1)

end A318762

/-! ## A318762.P1577526234185032386

`A008480(A181821(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A318762

/-- `A008480(A181821(n+1))` -/
def P1577526234185032386.Spec : Prop :=
  ∀ n, P1577526234185032386.a n = A318762 (n + 1)

theorem P1577526234185032386.correct : P1577526234185032386.Spec := by
  intro n
  simp only [A318762, Nat.add_sub_cancel]

end A318762

/-! ## A318762.P9510333486821997515

`A318808(2*(n+1))`
-/

namespace A318762.P9510333486821997515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318808 (2 * (n + 1))

end

end A318762.P9510333486821997515

namespace A318762

/-- `A318808(2*(n+1))` -/
def P9510333486821997515.Spec : Prop :=
  ∀ n, P9510333486821997515.a n = A318762 (n + 1)

end A318762

/-! ## A318762.P4219905895330407528

`A318810(2*(n+1))`
-/

namespace A318762.P4219905895330407528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318810 (2 * (n + 1))

end

end A318762.P4219905895330407528

namespace A318762

/-- `A318810(2*(n+1))` -/
def P4219905895330407528.Spec : Prop :=
  ∀ n, P4219905895330407528.a n = A318762 (n + 1)

end A318762

/-! ## A318762.P7334881376071526297

`A318810(A103517(n))^floor(root(2, n+1))`
-/

namespace A318762.P7334881376071526297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318810 (A103517 n).toNat : ℚ) ^ (⌊(2 : ℝ) ^ (1 / (n + 1 : ℝ))⌋ : ℤ)

end

end A318762.P7334881376071526297

namespace A318762

/-- `A318810(A103517(n))^floor(root(2, n+1))` -/
def P7334881376071526297.Spec : Prop :=
  ∀ n, P7334881376071526297.a n = (A318762 (n + 1) : ℚ)

end A318762

/-! ## A318762.P3242102202515560056

`A318810(A051755(n+2))+A046660(A038879(n+1))`
-/

namespace A318762.P3242102202515560056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318810 (A051755 (n + 2)).toNat + A046660 (A038879 (n + 1)).toNat

end

end A318762.P3242102202515560056

namespace A318762

/-- `A318810(A051755(n+2))+A046660(A038879(n+1))` -/
def P3242102202515560056.Spec : Prop :=
  ∀ n, P3242102202515560056.a n = A318762 (n + 1)

end A318762

/-! ## A318762.P14439935015156944266

`A050382(A361808(n+1))`
-/

namespace A318762.P14439935015156944266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050382 (A361808 (n + 1)).toNat

end

end A318762.P14439935015156944266

namespace A318762

/-- `A050382(A361808(n+1))` -/
def P14439935015156944266.Spec : Prop :=
  ∀ n, P14439935015156944266.a n = A318762 (n + 1)

end A318762

/-!
# A318764: Expansion of Product_{i>=1, j>=1, k>=1} ((1 + x^(i*j*k))/(1 - x^(i*j*k)))^(i*j*k).

The programs for A318764, there is no canonical definition to state claims against.
-/

/-! ## A318764.P7668009261210080206

`abs(2-A018416(2*n+1))`
-/

namespace A318764.P7668009261210080206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A018416 (2 * n + 1)|

end

end A318764.P7668009261210080206

/-!
# A318765: a(n) = (n + 2)*(n^2 + n - 1).

The programs for A318765, the canonical program `A318765.P2998745398220553870` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318765 has offset 0).

The definition of A318765 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)*(n²+n-1)` (program `A318765.P2998745398220553870`, by `A318765.P2998745398220553870.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A318765.P2998745398220553870

`(n+2)*(n²+n-1)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A318765

/-- `(n+2)*(n²+n-1)` -/
def P2998745398220553870.Spec : Prop :=
  ∀ n, P2998745398220553870.a n = A318765 n

theorem P2998745398220553870.correct : P2998745398220553870.Spec := by
  intro n
  simp only [A318765]

end A318765

/-! ## A318765.P16090430071522727053

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=-2, a(1)=3, a(2)=20, a(3)=55`
-/

namespace A318765.P16090430071522727053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-2, 3, 20, 55] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A318765.P16090430071522727053

namespace A318765

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P16090430071522727053.Spec : Prop :=
  ∀ n, P16090430071522727053.a n = A318765 n

theorem P16090430071522727053.correct : P16090430071522727053.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A318765, Nat.add_sub_cancel, A318765.P16090430071522727053.a, A318765.P2998745398220553870.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A318765, Nat.add_sub_cancel, A318765.P16090430071522727053.a, A318765.P2998745398220553870.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A318765

/-! ## A318765.P9213826771988466399

`Δ[(1-C(n+1, 2))²-n]`
-/

namespace A318765.P9213826771988466399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (n + 1) 2 : ℤ)) ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A318765.P9213826771988466399

namespace A318765

/-- `Δ[(1-C(n+1, 2))²-n]` -/
def P9213826771988466399.Spec : Prop :=
  ∀ n, P9213826771988466399.a n = A318765 n

theorem P9213826771988466399.correct : P9213826771988466399.Spec := by
  intro n
  simp only [A318765, Nat.add_sub_cancel, A318765.P9213826771988466399.f1, A318765.P9213826771988466399.a, A318765.P2998745398220553870.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A318765

/-! ## A318765.P1552749283293246737

`-((n+2)*or(1, ∑[-(2*n)]))`
-/

namespace A318765.P1552749283293246737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 2 : ℤ) * Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A318765.P1552749283293246737

namespace A318765

/-- `-((n+2)*or(1, ∑[-(2*n)]))` -/
def P1552749283293246737.Spec : Prop :=
  ∀ n, P1552749283293246737.a n = A318765 n

end A318765

/-! ## A318765.P328349406048399889

`-((n+2)*xor(1, ∑[-(2*n)]))`
-/

namespace A318765.P328349406048399889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 2 : ℤ) * Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A318765.P328349406048399889

namespace A318765

/-- `-((n+2)*xor(1, ∑[-(2*n)]))` -/
def P328349406048399889.Spec : Prop :=
  ∀ n, P328349406048399889.a n = A318765 n

end A318765

/-! ## A318765.P10461572545658251589

`∑[A004538(n)]-1`
-/

namespace A318765.P10461572545658251589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A318765.P10461572545658251589

namespace A318765

/-- `∑[A004538(n)]-1` -/
def P10461572545658251589.Spec : Prop :=
  ∀ n, P10461572545658251589.a n = A318765 n

end A318765

/-! ## A318765.P1223691533143712524

`Δ[A085740(n)]-2`
-/

namespace A318765.P1223691533143712524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085740 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A318765.P1223691533143712524

namespace A318765

/-- `Δ[A085740(n)]-2` -/
def P1223691533143712524.Spec : Prop :=
  ∀ n, P1223691533143712524.a n = A318765 n

end A318765

/-! ## A318765.P6738569946166524457

`A242135(n+1)-1`
-/

namespace A318765.P6738569946166524457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242135 (n + 1) - 1

end

end A318765.P6738569946166524457

namespace A318765

/-- `A242135(n+1)-1` -/
def P6738569946166524457.Spec : Prop :=
  ∀ n, P6738569946166524457.a n = A318765 n

theorem P6738569946166524457.correct : P6738569946166524457.Spec := by
  intro n
  simp only [A318765, Nat.add_sub_cancel, A318765.P6738569946166524457.a, A318765.P2998745398220553870.a, A242135, A242135.P980314958597288477.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318765

/-! ## A318765.P14565002829371247576

`A366151(n)-2+n`
-/

namespace A318765.P14565002829371247576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366151 n - 2 + (n : ℤ)

end

end A318765.P14565002829371247576

namespace A318765

/-- `A366151(n)-2+n` -/
def P14565002829371247576.Spec : Prop :=
  ∀ n, P14565002829371247576.a n = A318765 n

theorem P14565002829371247576.correct : P14565002829371247576.Spec := by
  intro n
  simp only [A318765, Nat.add_sub_cancel, A318765.P14565002829371247576.a, A318765.P2998745398220553870.a, A366151, A366151.P1265820382094336323.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318765

/-! ## A318765.P14153802894266466491

`n*A028387(n)-2`
-/

namespace A318765.P14153802894266466491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A028387 n - 2

end

end A318765.P14153802894266466491

namespace A318765

/-- `n*A028387(n)-2` -/
def P14153802894266466491.Spec : Prop :=
  ∀ n, P14153802894266466491.a n = A318765 n

theorem P14153802894266466491.correct : P14153802894266466491.Spec := by
  intro n
  simp only [A318765, Nat.add_sub_cancel, A318765.P14153802894266466491.a, A318765.P2998745398220553870.a, A028387, A028387.P5954590561330899546.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318765

/-! ## A318765.P6672579772016689552

`A126420(n+1)-(n+1)`
-/

namespace A318765.P6672579772016689552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126420 (n + 1) - (n + 1 : ℤ)

end

end A318765.P6672579772016689552

namespace A318765

/-- `A126420(n+1)-(n+1)` -/
def P6672579772016689552.Spec : Prop :=
  ∀ n, P6672579772016689552.a n = A318765 n

theorem P6672579772016689552.correct : P6672579772016689552.Spec := by
  intro n
  simp only [A318765, Nat.add_sub_cancel, A318765.P6672579772016689552.a, A318765.P2998745398220553870.a, A126420, A126420.P400369601322111787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318765

/-! ## A318765.P15482015625215380472

`(n+1)*A008865(n+1)-1`
-/

namespace A318765.P15482015625215380472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008865 (n + 1) - 1

end

end A318765.P15482015625215380472

namespace A318765

/-- `(n+1)*A008865(n+1)-1` -/
def P15482015625215380472.Spec : Prop :=
  ∀ n, P15482015625215380472.a n = A318765 n

theorem P15482015625215380472.correct : P15482015625215380472.Spec := by
  intro n
  simp only [A318765, Nat.add_sub_cancel, A318765.P15482015625215380472.a, A318765.P2998745398220553870.a, A008865, A008865.P16699731729816255732.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318765

/-! ## A318765.P1253762377890277084

`A068601(n+1)-2*(n+1)`
-/

namespace A318765.P1253762377890277084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (n + 1) - (2 * (n + 1) : ℤ)

end

end A318765.P1253762377890277084

namespace A318765

/-- `A068601(n+1)-2*(n+1)` -/
def P1253762377890277084.Spec : Prop :=
  ∀ n, P1253762377890277084.a n = A318765 n

theorem P1253762377890277084.correct : P1253762377890277084.Spec := by
  intro n
  simp only [A318765, Nat.add_sub_cancel, A318765.P1253762377890277084.a, A318765.P2998745398220553870.a, A068601, A068601.P18163521696996894258.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318765

/-! ## A318765.P2238865282661912908

`A000578(n+1)-(2*n+3)`
-/

namespace A318765.P2238865282661912908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) - (2 * n + 3 : ℤ)

end

end A318765.P2238865282661912908

namespace A318765

/-- `A000578(n+1)-(2*n+3)` -/
def P2238865282661912908.Spec : Prop :=
  ∀ n, P2238865282661912908.a n = A318765 n

theorem P2238865282661912908.correct : P2238865282661912908.Spec := by
  intro n
  simp only [A318765, Nat.add_sub_cancel, A318765.P2238865282661912908.a, A318765.P2998745398220553870.a, A000578, A000578.P12162961755414704816.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318765

/-! ## A318765.P9074634746289448498

`(n+1)*A123968(n+1)+n`
-/

namespace A318765.P9074634746289448498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A123968 (n + 1) + (n : ℤ)

end

end A318765.P9074634746289448498

namespace A318765

/-- `(n+1)*A123968(n+1)+n` -/
def P9074634746289448498.Spec : Prop :=
  ∀ n, P9074634746289448498.a n = A318765 n

theorem P9074634746289448498.correct : P9074634746289448498.Spec := by
  intro n
  simp only [A318765, Nat.add_sub_cancel, A318765.P9074634746289448498.a, A318765.P2998745398220553870.a, A123968, A123968.P4707337920841887922.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318765

/-! ## A318765.P16713158148358106735

`A047929(n+2)/(n+2)-(n+2)`
-/

namespace A318765.P16713158148358106735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047929 (n + 2) : ℚ) / (n + 2 : ℚ) - (n + 2 : ℚ)

end

end A318765.P16713158148358106735

namespace A318765

/-- `A047929(n+2)/(n+2)-(n+2)` -/
def P16713158148358106735.Spec : Prop :=
  ∀ n, P16713158148358106735.a n = (A318765 n : ℚ)

end A318765

/-! ## A318765.P9862011109528933898

`A062158(n)+A000466(n)`
-/

namespace A318765.P9862011109528933898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062158 n + A000466 n

end

end A318765.P9862011109528933898

namespace A318765

/-- `A062158(n)+A000466(n)` -/
def P9862011109528933898.Spec : Prop :=
  ∀ n, P9862011109528933898.a n = A318765 n

theorem P9862011109528933898.correct : P9862011109528933898.Spec := by
  intro n
  simp only [A318765, Nat.add_sub_cancel, A318765.P9862011109528933898.a, A318765.P2998745398220553870.a, A000466, A000466.P5626493666969552810.a, A062158, A062158.P5395940326210202878.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318765

/-! ## A318765.P7388013484197907962

`A134481(n)+A129936(n)`
-/

namespace A318765.P7388013484197907962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134481 n + A129936 n

end

end A318765.P7388013484197907962

namespace A318765

/-- `A134481(n)+A129936(n)` -/
def P7388013484197907962.Spec : Prop :=
  ∀ n, P7388013484197907962.a n = A318765 n

end A318765

/-! ## A318765.P2990694664093357197

`A366151(n)+A023444(n)`
-/

namespace A318765.P2990694664093357197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366151 n + A023444 n

end

end A318765.P2990694664093357197

namespace A318765

/-- `A366151(n)+A023444(n)` -/
def P2990694664093357197.Spec : Prop :=
  ∀ n, P2990694664093357197.a n = A318765 n

theorem P2990694664093357197.correct : P2990694664093357197.Spec := by
  intro n
  simp only [A318765, Nat.add_sub_cancel, A318765.P2990694664093357197.a, A318765.P2998745398220553870.a, A023444, A023444.P8712163668128210297.a, A366151, A366151.P1265820382094336323.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318765

/-! ## A318765.P15569033027167899475

`A055112(n)-A084380(n)`
-/

namespace A318765.P15569033027167899475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055112 n - A084380 n

end

end A318765.P15569033027167899475

namespace A318765

/-- `A055112(n)-A084380(n)` -/
def P15569033027167899475.Spec : Prop :=
  ∀ n, P15569033027167899475.a n = A318765 n

theorem P15569033027167899475.correct : P15569033027167899475.Spec := by
  intro n
  simp only [A318765, Nat.add_sub_cancel, A318765.P15569033027167899475.a, A318765.P2998745398220553870.a, A055112, A055112.P15553195109781773626.a, A084380, A084380.P6829574100812521440.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A318765

/-!
# A318766: a(0) = 1; for n > 0, a(n) = (prime(n)^2 - 1) * a(n-1).

The programs for A318766, the canonical program `A318766.P4448423762240243735` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318766 has offset 0).

The definition of A318766 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A318766.P4448423762240243735

`A084920(n)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A318766

/-- `A084920(n)*a(n-1)` -/
def P4448423762240243735.Spec : Prop :=
  ∀ n, P4448423762240243735.a n = A318766 n

theorem P4448423762240243735.correct : P4448423762240243735.Spec := by
  intro n
  simp only [A318766]

end A318766

/-! ## A318766.P10726414134157236875

`∏[record[A306933(n+1)]]`
-/

namespace A318766.P10726414134157236875
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306933 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A318766.P10726414134157236875

namespace A318766

/-- `∏[record[A306933(n+1)]]` -/
def P10726414134157236875.Spec : Prop :=
  ∀ n, P10726414134157236875.a n = A318766 n

end A318766

/-! ## A318766.P17039527805156906205

`∏[record[A347118(n+1)]]`
-/

namespace A318766.P17039527805156906205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347118 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A318766.P17039527805156906205

namespace A318766

/-- `∏[record[A347118(n+1)]]` -/
def P17039527805156906205.Spec : Prop :=
  ∀ n, P17039527805156906205.a n = A318766 n

end A318766

/-! ## A318766.P10114254496487197349

`∏[record[A009262(n+1)+n]]`
-/

namespace A318766.P10114254496487197349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009262 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A318766.P10114254496487197349

namespace A318766

/-- `∏[record[A009262(n+1)+n]]` -/
def P10114254496487197349.Spec : Prop :=
  ∀ n, P10114254496487197349.a n = A318766 n

end A318766

/-! ## A318766.P11717165035138624473

`∏[record[A174824(n+1)+n]]`
-/

namespace A318766.P11717165035138624473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174824 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A318766.P11717165035138624473

namespace A318766

/-- `∏[record[A174824(n+1)+n]]` -/
def P11717165035138624473.Spec : Prop :=
  ∀ n, P11717165035138624473.a n = A318766 n

end A318766

/-!
# A318767: G.f. satisfies: A(x) = (1+x)/(1-x) * A(x^2)*A(x^3)*A(x^4)*...*A(x^n)*... .

The programs for A318767, there is no canonical definition to state claims against.
-/

/-! ## A318767.P11737918266564556203

`A057142(∑[A007714(n)])`
-/

namespace A318767.P11737918266564556203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057142 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A318767.P11737918266564556203

/-! ## A318767.P9642420349572178302

`∑[A134361(A182746(n))]`
-/

namespace A318767.P9642420349572178302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134361 (A182746 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318767.P9642420349572178302

/-! ## A318767.P9633988715154872980

`A057142(A116828(n+1))`
-/

namespace A318767.P9633988715154872980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057142 (A116828 (n + 1)).toNat

end

end A318767.P9633988715154872980

/-! ## A318767.P2965105941692013388

`A340854(A018135(n+1))`
-/

namespace A318767.P2965105941692013388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340854 (A018135 (n + 1)).toNat

end

end A318767.P2965105941692013388

/-!
# A318768: a(n) = Sum_{d|n} (-1)^(n/d+1) * Sum_{j|d} tau(j), where tau = number of divisors (A000005).

The programs for A318768, the canonical program `A318768.P995000323633037411` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318768 has offset 1).

The definition of A318768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318768.P995000323633037411

`∑{d}[n+1, A288571(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A318768

/-- `∑{d}[n+1, A288571(#)]` -/
def P995000323633037411.Spec : Prop :=
  ∀ n, P995000323633037411.a n = A318768 (n + 1)

theorem P995000323633037411.correct : P995000323633037411.Spec := by
  intro n
  simp only [A318768, Nat.add_sub_cancel]

end A318768

/-! ## A318768.P7117963767506823561

`2*A326417(n+1)-A007426(n+1)`
-/

namespace A318768.P7117963767506823561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A326417 (n + 1) - A007426 (n + 1)

end

end A318768.P7117963767506823561

namespace A318768

/-- `2*A326417(n+1)-A007426(n+1)` -/
def P7117963767506823561.Spec : Prop :=
  ∀ n, P7117963767506823561.a n = A318768 (n + 1)

end A318768

/-! ## A318768.P12336196604519763942

`∑{d}[n+1, A000005(#)*A048272((n+1)/#)]`
-/

namespace A318768.P12336196604519763942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A048272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318768.P12336196604519763942

namespace A318768

/-- `∑{d}[n+1, A000005(#)*A048272((n+1)/#)]` -/
def P12336196604519763942.Spec : Prop :=
  ∀ n, P12336196604519763942.a n = A318768 (n + 1)

end A318768

/-! ## A318768.P13762973013379698028

`∑{d}[n+1, A007430(#)*A117212((n+1)/#)]`
-/

namespace A318768.P13762973013379698028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007430 d * A117212 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318768.P13762973013379698028

namespace A318768

/-- `∑{d}[n+1, A007430(#)*A117212((n+1)/#)]` -/
def P13762973013379698028.Spec : Prop :=
  ∀ n, P13762973013379698028.a n = A318768 (n + 1)

end A318768

/-! ## A318768.P1647635114148823

`∑{d}[n+1, A088705(#)*A133700((n+1)/#)]`
-/

namespace A318768.P1647635114148823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A088705 d * A133700 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318768.P1647635114148823

namespace A318768

/-- `∑{d}[n+1, A088705(#)*A133700((n+1)/#)]` -/
def P1647635114148823.Spec : Prop :=
  ∀ n, P1647635114148823.a n = A318768 (n + 1)

end A318768

/-! ## A318768.P6122255640562237185

`∑{d}[n+1, A023900(#)*A318845((n+1)/#)]`
-/

namespace A318768.P6122255640562237185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A318845 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318768.P6122255640562237185

namespace A318768

/-- `∑{d}[n+1, A023900(#)*A318845((n+1)/#)]` -/
def P6122255640562237185.Spec : Prop :=
  ∀ n, P6122255640562237185.a n = A318768 (n + 1)

end A318768

/-! ## A318768.P13296139765753076604

`∑{d}[n+1, A048691(#)*A317529((n+1)/#)]`
-/

namespace A318768.P13296139765753076604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d * A317529 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318768.P13296139765753076604

namespace A318768

/-- `∑{d}[n+1, A048691(#)*A317529((n+1)/#)]` -/
def P13296139765753076604.Spec : Prop :=
  ∀ n, P13296139765753076604.a n = A318768 (n + 1)

end A318768

/-! ## A318768.P13389194970326362869

`∑{d}[n+1, A038712(#)*A369100((n+1)/#)]`
-/

namespace A318768.P13389194970326362869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038712 d * A369100 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318768.P13389194970326362869

namespace A318768

/-- `∑{d}[n+1, A038712(#)*A369100((n+1)/#)]` -/
def P13389194970326362869.Spec : Prop :=
  ∀ n, P13389194970326362869.a n = A318768 (n + 1)

end A318768

/-! ## A318768.P3452428662153691377

`∑{d}[n+1, A130054(#)*A288417((n+1)/#)]`
-/

namespace A318768.P3452428662153691377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A288417 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318768.P3452428662153691377

namespace A318768

/-- `∑{d}[n+1, A130054(#)*A288417((n+1)/#)]` -/
def P3452428662153691377.Spec : Prop :=
  ∀ n, P3452428662153691377.a n = A318768 (n + 1)

end A318768

/-! ## A318768.P15549723304624027611

`∑{d}[n+1, A061200(#)*A361019((n+1)/#)]`
-/

namespace A318768.P15549723304624027611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061200 d * A361019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318768.P15549723304624027611

namespace A318768

/-- `∑{d}[n+1, A061200(#)*A361019((n+1)/#)]` -/
def P15549723304624027611.Spec : Prop :=
  ∀ n, P15549723304624027611.a n = A318768 (n + 1)

end A318768

/-! ## A318768.P9302387380409244835

`∑{d}[n+1, A124315(#)*A317528((n+1)/#)]`
-/

namespace A318768.P9302387380409244835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A124315 d * A317528 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318768.P9302387380409244835

namespace A318768

/-- `∑{d}[n+1, A124315(#)*A317528((n+1)/#)]` -/
def P9302387380409244835.Spec : Prop :=
  ∀ n, P9302387380409244835.a n = A318768 (n + 1)

end A318768

/-! ## A318768.P17214366630201242853

`∑{d}[n+1, A256232(#)*A328484((n+1)/#)]`
-/

namespace A318768.P17214366630201242853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A256232 d * A328484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A318768.P17214366630201242853

namespace A318768

/-- `∑{d}[n+1, A256232(#)*A328484((n+1)/#)]` -/
def P17214366630201242853.Spec : Prop :=
  ∀ n, P17214366630201242853.a n = A318768 (n + 1)

end A318768

/-! ## A318768.P1806734025086671686

`∑{d}[n+1, A007425(#)*A033999((n+1)/#-1)]`
-/

namespace A318768.P1806734025086671686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A033999 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A318768.P1806734025086671686

namespace A318768

/-- `∑{d}[n+1, A007425(#)*A033999((n+1)/#-1)]` -/
def P1806734025086671686.Spec : Prop :=
  ∀ n, P1806734025086671686.a n = A318768 (n + 1)

end A318768

/-!
# A318769: Expansion of e.g.f. Product_{k>=1} (1 + x^k)^(sigma(k)/k), where sigma(k) is the sum of the divisors of k.

The programs for A318769, there is no canonical definition to state claims against.
-/

/-! ## A318769.P16389823602678276075

`A294392(n)-A294405(gcd(n, C(2, n))+n)`
-/

namespace A318769.P16389823602678276075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294392 n - A294405 (Nat.gcd n (Nat.choose 2 n) + n)

end

end A318769.P16389823602678276075

/-! ## A318769.P14609418714124045381

`A233905(A001147(n))+A000142(n)`
-/

namespace A318769.P14609418714124045381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233905 (A001147 n).toNat + A000142 n

end

end A318769.P14609418714124045381

/-!
# A318770: Expansion of Sum_{k>=0} x^(k^2) / Product_{j=1..k} (1 - j*x^j).

The programs for A318770, there is no canonical definition to state claims against.
-/

/-! ## A318770.P15350345921405906765

`A214129(eq[A002262(n), A270880(n)])`
-/

namespace A318770.P15350345921405906765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214129 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A318770.P15350345921405906765

/-! ## A318770.P12613691998258091933

`A214129(lt[A270880(n), A029898(n)])`
-/

namespace A318770.P12613691998258091933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270880 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214129 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A318770.P12613691998258091933

/-! ## A318770.P11000880609624429578

`A214129(lt[A270880(n), A146103(n)])`
-/

namespace A318770.P11000880609624429578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270880 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214129 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A318770.P11000880609624429578

/-! ## A318770.P4914363810480463001

`A214129(lt[A270880(n), A014499(n+1)])`
-/

namespace A318770.P4914363810480463001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270880 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214129 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A318770.P4914363810480463001

/-! ## A318770.P7955481629478095160

`A214129(lt[A270880(n), A194976(n+1)])`
-/

namespace A318770.P7955481629478095160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270880 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214129 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A318770.P7955481629478095160

/-!
# A318771: Expansion of Sum_{k>=0} x^(k^2) / Product_{j=1..k} (1 - x^j)^j.

The programs for A318771, there is no canonical definition to state claims against.
-/

/-! ## A318771.P16335997571087394535

`A156261(A325098(n)+A156263(n+1))`
-/

namespace A318771.P16335997571087394535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156261 (A325098 n + A156263 (n + 1)).toNat

end

end A318771.P16335997571087394535

/-! ## A318771.P9831090714712711502

`A331995(A326186(2^n)+A240019(n))`
-/

namespace A318771.P9831090714712711502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331995 (A326186 (2 ^ n) + A240019 (n + 10)).toNat

end

end A318771.P9831090714712711502

/-!
# A318772: Triangle read by rows: T(0,0) = 1; T(n,k) = T(n-1,k) + 3 * T(n-4,k-1) for k = 0..floor(n/4); T(n,k)=0 for n or k < 0.

The programs for A318772, there is no canonical definition to state claims against.
-/

/-! ## A318772.P10263548871375067586

`A169946(A107386(n))`
-/

namespace A318772.P10263548871375067586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169946 (A107386 n).toNat

end

end A318772.P10263548871375067586

/-! ## A318772.P9101849117016836023

`A329515(A325689(n+1))`
-/

namespace A318772.P9101849117016836023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329515 (A325689 (n + 1)).toNat

end

end A318772.P9101849117016836023

/-! ## A318772.P2541548287039054794

`A226602(abs(A054532(2^n)))`
-/

namespace A318772.P2541548287039054794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 |A054532 (2 ^ n)|.toNat

end

end A318772.P2541548287039054794

/-! ## A318772.P10763457979572984078

`A329508(A325689(n+1)+1)`
-/

namespace A318772.P10763457979572984078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329508 (A325689 (n + 1) + 1).toNat

end

end A318772.P10763457979572984078

/-! ## A318772.P8345992214202754431

`A146531(A016028(n+1)-n)`
-/

namespace A318772.P8345992214202754431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146531 (A016028 (n + 1) - (n : ℤ)).toNat

end

end A318772.P8345992214202754431

/-!
# A318773: Triangle T(n,k) = 3*T(n-1,k) + T(n-4,k-1) for k = 0..floor(n/4), with T(0,0) = 1 and T(n,k) = 0 for n or k < 0, read by rows.

The programs for A318773, there is no canonical definition to state claims against.
-/

/-! ## A318773.P1081685320379431411

`a(n-5)^(5*a(n-1))` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27, a(4)=81`
-/

namespace A318773.P1081685320379431411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 9, 27, 81] fun n a =>
  a (n - 5) ^ (5 * a (n - 1))

end

end A318773.P1081685320379431411

/-! ## A318773.P8755048262239297449

`A289257(((n+1)/∏{p}[n+1, (n+1)/#])^∏{e}[n+1, #!])`
-/

namespace A318773.P8755048262239297449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289257 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))) ^ (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p)))).toNat

end

end A318773.P8755048262239297449

/-! ## A318773.P11390269904153007108

`3^A090330(A009867(n))`
-/

namespace A318773.P11390269904153007108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A090330 (A009867 n).toNat : ℤ)

end

end A318773.P11390269904153007108

/-!
# A318774: Coefficients in expansion of 1/(1 - x - 3*x^4).

The programs for A318774, the canonical program `A318774.P885320567624395702` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318774 has offset 0).

The definition of A318774 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A318774.P885320567624395702

`a(n-1)+3*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A318774

/-- `a(n-1)+3*a(n-4)` -/
def P885320567624395702.Spec : Prop :=
  ∀ n, (P885320567624395702.a n : ℤ) = A318774 n

theorem P885320567624395702.correct : P885320567624395702.Spec := by
  intro n
  simp only [A318774]

end A318774

/-! ## A318774.P7528070101332958380

`ogf(1/(1-x-3x^4))`
-/

namespace A318774.P7528070101332958380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, 0, 0, -3] n

end

end A318774.P7528070101332958380

namespace A318774

/-- `ogf(1/(1-x-3x^4))` -/
def P7528070101332958380.Spec : Prop :=
  ∀ n, P7528070101332958380.a n = A318774 n

end A318774

/-! ## A318774.P15353425620409685351

`Δ[A143454(n)/3]`
-/

namespace A318774.P15353425620409685351
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143454 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A318774.P15353425620409685351

namespace A318774

/-- `Δ[A143454(n)/3]` -/
def P15353425620409685351.Spec : Prop :=
  ∀ n, P15353425620409685351.a n = (A318774 n : ℚ)

end A318774

/-! ## A318774.P17234500717231123880

`A193516(∑[n+2]-1)`
-/

namespace A318774.P17234500717231123880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193516 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A318774.P17234500717231123880

namespace A318774

/-- `A193516(∑[n+2]-1)` -/
def P17234500717231123880.Spec : Prop :=
  ∀ n, P17234500717231123880.a n = A318774 n

end A318774

/-! ## A318774.P6631395118195377689

`A193516(A034856(n+1))%A000051(n)`
-/

namespace A318774.P6631395118195377689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193516 (A034856 (n + 1)).toNat) (A000051 n)

end

end A318774.P6631395118195377689

namespace A318774

/-- `A193516(A034856(n+1))%A000051(n)` -/
def P6631395118195377689.Spec : Prop :=
  ∀ n, P6631395118195377689.a n = A318774 n

end A318774

/-! ## A318774.P8292903434532594066

`A193516(A034856(n+1))+A010051(A002943(n+1))`
-/

namespace A318774.P8292903434532594066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193516 (A034856 (n + 1)).toNat + A010051 (A002943 (n + 1)).toNat

end

end A318774.P8292903434532594066

namespace A318774

/-- `A193516(A034856(n+1))+A010051(A002943(n+1))` -/
def P8292903434532594066.Spec : Prop :=
  ∀ n, P8292903434532594066.a n = A318774 n

end A318774

/-!
# A318775: Triangle read by rows: T(0,0) = 1; T(n,k) = T(n-1,k) + 2 * T(n-5,k-1) for k = 0..floor(n/5); T(n,k)=0 for n or k < 0.

The programs for A318775, there is no canonical definition to state claims against.
-/

/-! ## A318775.P1546755148513195335

`A136480(A296030(A011782(n))²)`
-/

namespace A318775.P1546755148513195335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A296030 (A011782 n).toNat ^ 2).toNat

end

end A318775.P1546755148513195335

/-! ## A318775.P1079282889341777121

`A302291(A094865(A025480(n))+A059841(n))`
-/

namespace A318775.P1079282889341777121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302291 (A094865 (A025480 n).toNat + A059841 n).toNat

end

end A318775.P1079282889341777121

/-! ## A318775.P3803890829141590968

`∏{p}[A184221(n+1)^n, n-#²]`
-/

namespace A318775.P3803890829141590968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184221 (n + 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((n : ℤ) - (p ^ 2 : ℤ))

end

end A318775.P3803890829141590968

/-! ## A318775.P6195137534653553755

`A291149(A303785(n+2))`
-/

namespace A318775.P6195137534653553755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291149 (A303785 (n + 2)).toNat

end

end A318775.P6195137534653553755

/-! ## A318775.P11771773350819313591

`A239308(A164735(n+2))`
-/

namespace A318775.P11771773350819313591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239308 (A164735 (n + 2)).toNat

end

end A318775.P11771773350819313591

/-!
# A318776: Triangle read by rows: T(0,0) = 1; T(n,k) = 2*T(n-1,k) + T(n-5,k-1) for k = 0..floor(n/5); T(n,k)=0 for n or k < 0.

The programs for A318776, there is no canonical definition to state claims against.
-/

/-! ## A318776.P8634420194763668448

`A220810(A138777(n+2)^A136400(n))`
-/

namespace A318776.P8634420194763668448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220810 (SequenceMachineLib.roundAway ((A138777 (n + 2) : ℚ) ^ (A136400 n : ℤ))).toNat

end

end A318776.P8634420194763668448

/-! ## A318776.P3271768919800649043

`A269505(A138777(n+2)^A136400(n))`
-/

namespace A318776.P3271768919800649043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269505 (SequenceMachineLib.roundAway ((A138777 (n + 2) : ℚ) ^ (A136400 n : ℤ))).toNat

end

end A318776.P3271768919800649043

/-! ## A318776.P556594234320003048

`gcd(A000079(n), A359681(A250120(n+1)))`
-/

namespace A318776.P556594234320003048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 n) (A359681 (A250120 (n + 1)).toNat)

end

end A318776.P556594234320003048

/-! ## A318776.P11912960638626332979

`A221467(gcd(A232743(n+1), A275010(n)))`
-/

namespace A318776.P11912960638626332979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221467 (Int.gcd (A232743 (n + 1)) (A275010 n))

end

end A318776.P11912960638626332979

/-! ## A318776.P9409514828152888300

`A006519(A072011(n+1)*A147006(n+1))`
-/

namespace A318776.P9409514828152888300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A072011 (n + 1) * A147006 (n + 1)).toNat

end

end A318776.P9409514828152888300

/-!
# A318777: Coefficients in expansion of 1/(1 - x - 2*x^5).

The programs for A318777, the canonical program `A318777.P17355647795412999696` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318777 has offset 0).

The definition of A318777 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A318777.P17355647795412999696

`a(n-1)+2*a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A318777

/-- `a(n-1)+2*a(n-5)` -/
def P17355647795412999696.Spec : Prop :=
  ∀ n, (P17355647795412999696.a n : ℤ) = A318777 n

theorem P17355647795412999696.correct : P17355647795412999696.Spec := by
  intro n
  simp only [A318777]

end A318777

/-! ## A318777.P2308641987601788194

`ogf(1/(1-x-2x^5))`
-/

namespace A318777.P2308641987601788194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, 0, 0, 0, -2] n

end

end A318777.P2308641987601788194

namespace A318777

/-- `ogf(1/(1-x-2x^5))` -/
def P2308641987601788194.Spec : Prop :=
  ∀ n, P2308641987601788194.a n = A318777 n

end A318777

/-! ## A318777.P15479802964797218376

`a(n-1)+a(n-5)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A318777.P15479802964797218376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n a =>
  a (n - 1) + (a (n - 5) + a (n - 5))

end

end A318777.P15479802964797218376

namespace A318777

/-- `a(n-1)+a(n-5)+a(n-5)` -/
def P15479802964797218376.Spec : Prop :=
  ∀ n, (P15479802964797218376.a n : ℤ) = A318777 n

theorem P15479802964797218376.correct : P15479802964797218376.Spec := by
  intro n
  simp only [A318777, Nat.add_sub_cancel, A318777.P15479802964797218376.a, A318777.P17355647795412999696.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A318777

/-! ## A318777.P17309873632959613753

`Δ[A143447(n)/2]`
-/

namespace A318777.P17309873632959613753
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143447 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A318777.P17309873632959613753

namespace A318777

/-- `Δ[A143447(n)/2]` -/
def P17309873632959613753.Spec : Prop :=
  ∀ n, P17309873632959613753.a n = (A318777 n : ℚ)

end A318777

/-! ## A318777.P10788985549423025152

`A193517(record[abs(1-∑[n])])`
-/

namespace A318777.P10788985549423025152
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193517 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A318777.P10788985549423025152

namespace A318777

/-- `A193517(record[abs(1-∑[n])])` -/
def P10788985549423025152.Spec : Prop :=
  ∀ n, P10788985549423025152.a n = A318777 n

end A318777

/-! ## A318777.P17333550090341739045

`A193517(A212342(n+1))`
-/

namespace A318777.P17333550090341739045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193517 (A212342 (n + 1)).toNat

end

end A318777.P17333550090341739045

namespace A318777

/-- `A193517(A212342(n+1))` -/
def P17333550090341739045.Spec : Prop :=
  ∀ n, P17333550090341739045.a n = A318777 n

end A318777

/-! ## A318777.P268764691686379508

`A193517(A347513(n+3))`
-/

namespace A318777.P268764691686379508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193517 (A347513 (n + 3)).toNat

end

end A318777.P268764691686379508

namespace A318777

/-- `A193517(A347513(n+3))` -/
def P268764691686379508.Spec : Prop :=
  ∀ n, P268764691686379508.a n = A318777 n

end A318777

/-! ## A318777.P13961522502585598119

`A193517(A347553(n+3))`
-/

namespace A318777.P13961522502585598119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193517 (A347553 (n + 3)).toNat

end

end A318777.P13961522502585598119

namespace A318777

/-- `A193517(A347553(n+3))` -/
def P13961522502585598119.Spec : Prop :=
  ∀ n, P13961522502585598119.a n = A318777 n

end A318777

/-! ## A318777.P7885910814453384262

`A193517(A027379(n)-n)`
-/

namespace A318777.P7885910814453384262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193517 (A027379 n - (n : ℤ)).toNat

end

end A318777.P7885910814453384262

namespace A318777

/-- `A193517(A027379(n)-n)` -/
def P7885910814453384262.Spec : Prop :=
  ∀ n, P7885910814453384262.a n = A318777 n

end A318777

/-! ## A318777.P7288221460800683085

`A193517(A066182(∑[n+1]))`
-/

namespace A318777.P7288221460800683085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193517 (A066182 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A318777.P7288221460800683085

namespace A318777

/-- `A193517(A066182(∑[n+1]))` -/
def P7288221460800683085.Spec : Prop :=
  ∀ n, P7288221460800683085.a n = A318777 n

end A318777

/-! ## A318777.P17780571654614474287

`A193517(A028310(∑[n]+n))`
-/

namespace A318777.P17780571654614474287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193517 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j + n)).toNat

end

end A318777.P17780571654614474287

namespace A318777

/-- `A193517(A028310(∑[n]+n))` -/
def P17780571654614474287.Spec : Prop :=
  ∀ n, P17780571654614474287.a n = A318777 n

end A318777

/-! ## A318777.P16949509912992513835

`A193517(A179865(n+1)+n)`
-/

namespace A318777.P16949509912992513835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193517 (A179865 (n + 1) + (n : ℤ)).toNat

end

end A318777.P16949509912992513835

namespace A318777

/-- `A193517(A179865(n+1)+n)` -/
def P16949509912992513835.Spec : Prop :=
  ∀ n, P16949509912992513835.a n = A318777 n

end A318777

/-! ## A318777.P5966166480847287144

`A193517(A000124(n)+abs(1-n))`
-/

namespace A318777.P5966166480847287144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193517 (A000124 n + |1 - (n : ℤ)|).toNat

end

end A318777.P5966166480847287144

namespace A318777

/-- `A193517(A000124(n)+abs(1-n))` -/
def P5966166480847287144.Spec : Prop :=
  ∀ n, P5966166480847287144.a n = A318777 n

end A318777

/-!
# A318778: Number of different positions that an elementary sphinx can occupy in a sphinx of order n.

The programs for A318778, the canonical program `A318778.P1590962967255186819` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318778 has offset 1).

The definition of A318778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318778.P1590962967255186819

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=28, a(2)=128, a(3)=300`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A318778

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P1590962967255186819.Spec : Prop :=
  ∀ n, P1590962967255186819.a n = A318778 (n + 1)

theorem P1590962967255186819.correct : P1590962967255186819.Spec := by
  intro n
  simp only [A318778, Nat.add_sub_cancel]

end A318778

/-! ## A318778.P17725809106377645806

`A008458(n)²-8*n`
-/

namespace A318778.P17725809106377645806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n ^ 2 - (8 * n : ℤ)

end

end A318778.P17725809106377645806

namespace A318778

/-- `A008458(n)²-8*n` -/
def P17725809106377645806.Spec : Prop :=
  ∀ n, P17725809106377645806.a n = A318778 (n + 1)

end A318778

/-! ## A318778.P7447381932997681868

`(7*n-A004277(n)+n)²-4*n-4*n`
-/

namespace A318778.P7447381932997681868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((7 * n : ℤ) - A004277 n + (n : ℤ)) ^ 2 - (4 * n : ℤ) - (4 * n : ℤ)

end

end A318778.P7447381932997681868

namespace A318778

/-- `(7*n-A004277(n)+n)²-4*n-4*n` -/
def P7447381932997681868.Spec : Prop :=
  ∀ n, P7447381932997681868.a n = A318778 (n + 1)

theorem P7447381932997681868.correct : P7447381932997681868.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A318778, Nat.add_sub_cancel, A318778.P7447381932997681868.a, A318778.P1590962967255186819.a, A004277, A004277.P16255821370285667660.a, A000007, A000007.P6599383543502402472.a, A005843, A005843.P3167286115683555970.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      simp only [A318778, Nat.add_sub_cancel, A318778.P7447381932997681868.a, A318778.P1590962967255186819.a, A004277, A004277.P16255821370285667660.a, A000007, A000007.P6599383543502402472.a, A005843, A005843.P3167286115683555970.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A318778

/-! ## A318778.P17100434597271474899

`A195322(n)+A067239(n)`
-/

namespace A318778.P17100434597271474899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195322 n + A067239 n

end

end A318778.P17100434597271474899

namespace A318778

/-- `A195322(n)+A067239(n)` -/
def P17100434597271474899.Spec : Prop :=
  ∀ n, P17100434597271474899.a n = A318778 (n + 1)

end A318778

/-! ## A318778.P16397185147892783163

`A193872(n)+(2-A133653(n+1))²`
-/

namespace A318778.P16397185147892783163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193872 n + (2 - A133653 (n + 1)) ^ 2

end

end A318778.P16397185147892783163

namespace A318778

/-- `A193872(n)+(2-A133653(n+1))²` -/
def P16397185147892783163.Spec : Prop :=
  ∀ n, P16397185147892783163.a n = A318778 (n + 1)

end A318778

/-! ## A318778.P2668311768974372976

`(A004277(n)-A008590(n))²-A008590(n)`
-/

namespace A318778.P2668311768974372976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004277 n - A008590 n) ^ 2 - A008590 n

end

end A318778.P2668311768974372976

namespace A318778

/-- `(A004277(n)-A008590(n))²-A008590(n)` -/
def P2668311768974372976.Spec : Prop :=
  ∀ n, P2668311768974372976.a n = A318778 (n + 1)

theorem P2668311768974372976.correct : P2668311768974372976.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A318778, Nat.add_sub_cancel, A318778.P2668311768974372976.a, A318778.P1590962967255186819.a, A004277, A004277.P16255821370285667660.a, A008590, A008590.P15621076316638553644.a, A000007, A000007.P6599383543502402472.a, A005843, A005843.P3167286115683555970.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      simp only [A318778, Nat.add_sub_cancel, A318778.P2668311768974372976.a, A318778.P1590962967255186819.a, A004277, A004277.P16255821370285667660.a, A008590, A008590.P15621076316638553644.a, A000007, A000007.P6599383543502402472.a, A005843, A005843.P3167286115683555970.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A318778

/-! ## A318778.P9032577869734206840

`A008458(n)²-A008586(n)-A008586(n)`
-/

namespace A318778.P9032577869734206840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n ^ 2 - A008586 n - A008586 n

end

end A318778.P9032577869734206840

namespace A318778

/-- `A008458(n)²-A008586(n)-A008586(n)` -/
def P9032577869734206840.Spec : Prop :=
  ∀ n, P9032577869734206840.a n = A318778 (n + 1)

end A318778

/-! ## A318778.P16460830843339633270

`A008486(2*n)²-8*n`
-/

namespace A318778.P16460830843339633270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) ^ 2 - (8 * n : ℤ)

end

end A318778.P16460830843339633270

namespace A318778

/-- `A008486(2*n)²-8*n` -/
def P16460830843339633270.Spec : Prop :=
  ∀ n, P16460830843339633270.a n = A318778 (n + 1)

end A318778

/-! ## A318778.P13093579812227855173

`A298026(2*n)²-8*n`
-/

namespace A318778.P13093579812227855173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298026 (2 * n) ^ 2 - (8 * n : ℤ)

end

end A318778.P13093579812227855173

namespace A318778

/-- `A298026(2*n)²-8*n` -/
def P13093579812227855173.Spec : Prop :=
  ∀ n, P13093579812227855173.a n = A318778 (n + 1)

end A318778

/-! ## A318778.P6994387605865434784

`A004273(2*n)+(1-6*n)²`
-/

namespace A318778.P6994387605865434784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (2 * n) + (1 - (6 * n : ℤ)) ^ 2

end

end A318778.P6994387605865434784

namespace A318778

/-- `A004273(2*n)+(1-6*n)²` -/
def P6994387605865434784.Spec : Prop :=
  ∀ n, P6994387605865434784.a n = A318778 (n + 1)

end A318778

/-! ## A318778.P13207247240425605676

`(A296910(2*n)+n)*A004277(2*n)`
-/

namespace A318778.P13207247240425605676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A296910 (2 * n) + (n : ℤ)) * A004277 (2 * n)

end

end A318778.P13207247240425605676

namespace A318778

/-- `(A296910(2*n)+n)*A004277(2*n)` -/
def P13207247240425605676.Spec : Prop :=
  ∀ n, P13207247240425605676.a n = A318778 (n + 1)

end A318778

/-! ## A318778.P1390814045115521418

`(A111284(2*n+1)+n)*A004277(2*n)`
-/

namespace A318778.P1390814045115521418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A111284 (2 * n + 1) + (n : ℤ)) * A004277 (2 * n)

end

end A318778.P1390814045115521418

namespace A318778

/-- `(A111284(2*n+1)+n)*A004277(2*n)` -/
def P1390814045115521418.Spec : Prop :=
  ∀ n, P1390814045115521418.a n = A318778 (n + 1)

end A318778

/-! ## A318778.P4629647831457685357

`(A161718(2*n)+n)*A004275(2*n+1)`
-/

namespace A318778.P4629647831457685357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A161718 (2 * n) + (n : ℤ)) * A004275 (2 * n + 1)

end

end A318778.P4629647831457685357

namespace A318778

/-- `(A161718(2*n)+n)*A004275(2*n+1)` -/
def P4629647831457685357.Spec : Prop :=
  ∀ n, P4629647831457685357.a n = A318778 (n + 1)

end A318778

/-! ## A318778.P12620918281754631424

`(A296910(2*n)+n)*A004275(2*n+1)`
-/

namespace A318778.P12620918281754631424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A296910 (2 * n) + (n : ℤ)) * A004275 (2 * n + 1)

end

end A318778.P12620918281754631424

namespace A318778

/-- `(A296910(2*n)+n)*A004275(2*n+1)` -/
def P12620918281754631424.Spec : Prop :=
  ∀ n, P12620918281754631424.a n = A318778 (n + 1)

end A318778

/-! ## A318778.P1680478460524775713

`A139272(2*n)+(2*n+1)*A028310(2*n)`
-/

namespace A318778.P1680478460524775713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139272 (2 * n) + (2 * n + 1 : ℤ) * A028310 (2 * n)

end

end A318778.P1680478460524775713

namespace A318778

/-- `A139272(2*n)+(2*n+1)*A028310(2*n)` -/
def P1680478460524775713.Spec : Prop :=
  ∀ n, P1680478460524775713.a n = A318778 (n + 1)

end A318778

/-! ## A318778.P14898980843290297041

`(A008579(A005843(n))-n)*A008574(n)`
-/

namespace A318778.P14898980843290297041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008579 (A005843 n).toNat - (n : ℤ)) * A008574 n

end

end A318778.P14898980843290297041

namespace A318778

/-- `(A008579(A005843(n))-n)*A008574(n)` -/
def P14898980843290297041.Spec : Prop :=
  ∀ n, P14898980843290297041.a n = A318778 (n + 1)

end A318778

/-! ## A318778.P14922507096810443368

`(A110185(2*n)+A004275(n+1))*A004275(n+1)`
-/

namespace A318778.P14922507096810443368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A110185 (2 * n) + A004275 (n + 1)) * A004275 (n + 1)

end

end A318778.P14922507096810443368

namespace A318778

/-- `(A110185(2*n)+A004275(n+1))*A004275(n+1)` -/
def P14922507096810443368.Spec : Prop :=
  ∀ n, P14922507096810443368.a n = A318778 (n + 1)

end A318778

/-! ## A318778.P18109336734112213971

`A004277(3*n)²-8*n`
-/

namespace A318778.P18109336734112213971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (3 * n) ^ 2 - (8 * n : ℤ)

end

end A318778.P18109336734112213971

namespace A318778

/-- `A004277(3*n)²-8*n` -/
def P18109336734112213971.Spec : Prop :=
  ∀ n, P18109336734112213971.a n = A318778 (n + 1)

theorem P18109336734112213971.correct : P18109336734112213971.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A318778, Nat.add_sub_cancel, A318778.P18109336734112213971.a, A318778.P1590962967255186819.a, A004277, A004277.P16255821370285667660.a, A000007, A000007.P6599383543502402472.a, A005843, A005843.P3167286115683555970.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      simp only [A318778, Nat.add_sub_cancel, A318778.P18109336734112213971.a, A318778.P1590962967255186819.a, A004277, A004277.P16255821370285667660.a, A000007, A000007.P6599383543502402472.a, A005843, A005843.P3167286115683555970.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A318778

/-! ## A318778.P1106323836728180202

`(A008486(A008486(n))-2)*A008574(n)`
-/

namespace A318778.P1106323836728180202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008486 (A008486 n).toNat - 2) * A008574 n

end

end A318778.P1106323836728180202

namespace A318778

/-- `(A008486(A008486(n))-2)*A008574(n)` -/
def P1106323836728180202.Spec : Prop :=
  ∀ n, P1106323836728180202.a n = A318778 (n + 1)

end A318778

/-! ## A318778.P5525176166667214201

`A218864(A008574(n))+A008574(2*n)`
-/

namespace A318778.P5525176166667214201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218864 (A008574 n).toNat + A008574 (2 * n)

end

end A318778.P5525176166667214201

namespace A318778

/-- `A218864(A008574(n))+A008574(2*n)` -/
def P5525176166667214201.Spec : Prop :=
  ∀ n, P5525176166667214201.a n = A318778 (n + 1)

end A318778

/-!
# A318779: Smallest n-th power that is pandigital in base n.

The programs for A318779, there is no canonical definition to state claims against.
-/

/-! ## A318779.P17809296792058655332

`A318780(n+2)^(n+2)`
-/

namespace A318779.P17809296792058655332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318780 (n + 2) ^ (n + 2)

end

end A318779.P17809296792058655332

/-! ## A318779.P7665455849832167405

`A247045(C(n+3, 2))^(n+2)`
-/

namespace A318779.P7665455849832167405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247045 (Nat.choose (n + 3) 2) ^ (n + 2)

end

end A318779.P7665455849832167405

/-! ## A318779.P969134180455949552

`A247045(∑[n+2]+1)^(n+2)`
-/

namespace A318779.P969134180455949552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247045 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ (n + 2)

end

end A318779.P969134180455949552

/-!
# A318780: a(n) is the smallest positive integer k such that k^n is pandigital in base n.

The programs for A318780, there is no canonical definition to state claims against.
-/

/-! ## A318780.P6660728093103897637

`A318779(n+2)^(1/(n+2))`
-/

namespace A318780.P6660728093103897637
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A318779 (n + 2) : ℝ) ^ (1 / (n + 2 : ℚ) : ℝ)

end

end A318780.P6660728093103897637

/-! ## A318780.P3022272118137325763

`A247045(C(n+3, 2))`
-/

namespace A318780.P3022272118137325763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247045 (Nat.choose (n + 3) 2)

end

end A318780.P3022272118137325763

/-! ## A318780.P9151452612278408024

`A247045(∑[n+2]+1)`
-/

namespace A318780.P9151452612278408024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247045 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A318780.P9151452612278408024

/-! ## A318780.P17192181823090366618

`or(char[2], A247045(A000217(n+2)))`
-/

namespace A318780.P17192181823090366618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A247045 (A000217 (n + 2)).toNat)

end

end A318780.P17192181823090366618

/-! ## A318780.P8828036735676781061

`∑{d}[A247045(A000217(n+2)), A000010(#)]`
-/

namespace A318780.P8828036735676781061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247045 (A000217 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A318780.P8828036735676781061

/-!
# A318781: A188999(m)/m for the integers m such that A188999(m) is divisible by m, where A188999 is the bi-unitary sigma function.

The programs for A318781, there is no canonical definition to state claims against.
-/

/-! ## A318781.P15458635302199987996

`A001221(A129024(n+1)*A140210(n+1))`
-/

namespace A318781.P15458635302199987996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A129024 (n + 1) * A140210 (n + 1)).toNat

end

end A318781.P15458635302199987996

/-! ## A318781.P16777499161348009687

`A001221(lcm(A129024(n+1), A140210(n+1)))`
-/

namespace A318781.P16777499161348009687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A129024 (n + 1)) (A140210 (n + 1)))

end

end A318781.P16777499161348009687

/-! ## A318781.P3787534013135037330

`A055642(A160496(n+1)*A340482(n+1))`
-/

namespace A318781.P3787534013135037330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A160496 (n + 1) * A340482 (n + 1)).toNat

end

end A318781.P3787534013135037330

/-! ## A318781.P12590040417594172186

`A055642(A160496(n+1)*A345958(2*(n+1)))`
-/

namespace A318781.P12590040417594172186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A160496 (n + 1) * A345958 (2 * (n + 1))).toNat

end

end A318781.P12590040417594172186

/-! ## A318781.P15941526510311079543

`A055642(A160496(n+1)*A246329(n))`
-/

namespace A318781.P15941526510311079543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A160496 (n + 1) * A246329 n).toNat

end

end A318781.P15941526510311079543

/-!
# A318782: Numbers m such that a^(s-1) + b^(s-1) + c^(s-1) + ... is prime, where a, b, c, ... are the distinct primes dividing m and s is their sum.

The programs for A318782, there is no canonical definition to state claims against.
-/

/-! ## A318782.P9316730249791049262

`eq[A004442(A085296(n+1)), A126759(n)]`
-/

namespace A318782.P9316730249791049262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A085296 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A318782.P9316730249791049262

/-! ## A318782.P10157347900751565373

`eq[A020639(A091823(n+1)), A126759(n)]`
-/

namespace A318782.P10157347900751565373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A091823 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A318782.P10157347900751565373

/-! ## A318782.P10943022927961313559

`eq[A117966(A094473(n+1)), A126759(n)]`
-/

namespace A318782.P10943022927961313559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A094473 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A318782.P10943022927961313559

/-! ## A318782.P2214193655036270455

`eq[A126759(n), A302485(A115364(n+1))]`
-/

namespace A318782.P2214193655036270455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302485 (A115364 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A318782.P2214193655036270455

/-! ## A318782.P16726955166616459930

`eq[A020639(A034856(2*(n+1))), A126759(n)]`
-/

namespace A318782.P16726955166616459930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A034856 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A318782.P16726955166616459930

/-!
# A318785: Numbers which are prime if each digit is replaced by its 9's complement.

The programs for A318785, there is no canonical definition to state claims against.
-/

/-! ## A318785.P17435127984665553022

`A228075(n+1)-1`
-/

namespace A318785.P17435127984665553022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228075 (n + 1) - 1

end

end A318785.P17435127984665553022

/-! ## A318785.P14426542334347330609

`Δ[A228075(n)-(1-a(n-1))]` with `a(0)=0`
-/

namespace A318785.P14426542334347330609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A228075 n - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A318785.P14426542334347330609

/-! ## A318785.P6409253231788105278

`eq[1, A001222(A061601(n+1)+1)]`
-/

namespace A318785.P6409253231788105278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A061601 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A318785.P6409253231788105278

/-! ## A318785.P11626493506144353235

`eq[2, A000005(A061601(n+1)+1)]`
-/

namespace A318785.P11626493506144353235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A061601 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A318785.P11626493506144353235

/-! ## A318785.P1978974373939908426

`eq[1, A010051(A061601(n)+1)]-1`
-/

namespace A318785.P1978974373939908426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A061601 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A318785.P1978974373939908426

/-! ## A318785.P4399901217206535391

`A023443(A228075(n+1))`
-/

namespace A318785.P4399901217206535391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A228075 (n + 1)).toNat

end

end A318785.P4399901217206535391

/-! ## A318785.P2189723002450073583

`eq[0, A007920(A061601(n))]`
-/

namespace A318785.P2189723002450073583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A061601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A318785.P2189723002450073583

/-! ## A318785.P2036469979885520044

`eq[1, A010051(A178914(n+1))]`
-/

namespace A318785.P2036469979885520044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A178914 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A318785.P2036469979885520044

/-! ## A318785.P10922046480766221581

`A061601(p?[A061601(n)]+n)+n`
-/

namespace A318785.P10922046480766221581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n : ℤ)).toNat + (n : ℤ)

end

end A318785.P10922046480766221581

/-! ## A318785.P8376009737137304929

`eq[2, A284289(2*A061601(n))]`
-/

namespace A318785.P8376009737137304929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 (2 * A061601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A318785.P8376009737137304929

/-!
# A318786: Primes p such that the only term of A000292 that divides A000292(p) is A000292(1).

The programs for A318786, there is no canonical definition to state claims against.
-/

/-! ## A318786.P9486710067564933017

`p?[eq[1, A318556(n+1)]+1]`
-/

namespace A318786.P9486710067564933017
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318556 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A318786.P9486710067564933017

/-! ## A318786.P6816390826188311841

`p?[lcm(n+2, A318556(n+2))]`
-/

namespace A318786.P6816390826188311841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 2 : ℤ) (A318556 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A318786.P6816390826188311841

/-! ## A318786.P14988776859596983624

`p?[eq[1, A318556(A028310(n))]]`
-/

namespace A318786.P14988776859596983624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318556 (A028310 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A318786.P14988776859596983624

/-! ## A318786.P18017783968742722608

`record[A020639(n+2)/A318556(n+2)]`
-/

namespace A318786.P18017783968742722608
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 2) : ℚ) / (A318556 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318786.P18017783968742722608

/-! ## A318786.P17365774089498585477

`eq[A003415(n), A318556(A007918(n))]`
-/

namespace A318786.P17365774089498585477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318556 (A007918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A318786.P17365774089498585477

/-! ## A318786.P7068989622283006831

`record[A020639(A020639(n+2)*A318556(n+2))]`
-/

namespace A318786.P7068989622283006831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A020639 (n + 2) * A318556 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A318786.P7068989622283006831

/-!
# A318789: For n >= 3, a(n) is equal to n-1 plus the alternating sum of all consecutive prime gaps between odd primes <= n.

The programs for A318789, the canonical program `A318789.P4717079052724776887` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318789 has offset 3).

The definition of A318789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318789.P4717079052724776887

`n+3-A330547(A000720(n+3))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A318789

/-- `n+3-A330547(A000720(n+3))` -/
def P4717079052724776887.Spec : Prop :=
  ∀ n, P4717079052724776887.a n = A318789 (n + 3)

theorem P4717079052724776887.correct : P4717079052724776887.Spec := by
  intro n
  simp only [A318789, Nat.add_sub_cancel]

end A318789

/-!
# A318790: One-half of the number of permutations sigma of {1,2,...,n^2 + 1} such that |sigma(i+j)-sigma(i)| >= n for 1 <= i <= n^2 + 1 - j, 1 <= j <= n - 1.

The programs for A318790, there is no canonical definition to state claims against.
-/

/-! ## A318790.P16327069612491877855

`∑[a(n-1)+a(n-3)+n]` with `a(0)=1, a(1)=6, a(2)=13`
-/

namespace A318790.P16327069612491877855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 13] fun n f1 =>
  f1 (n - 1) + (f1 (n - 3) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A318790.P16327069612491877855

/-!
# A318791: Prime generating polynomial: a(n) = 9*n^2 - 249*n + 1763.

The programs for A318791, the canonical program `A318791.P10031734239820775619` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A318791 has offset 1).

The definition of A318791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A318791.P10031734239820775619

`A060566(3*n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A318791

/-- `A060566(3*n+1)` -/
def P10031734239820775619.Spec : Prop :=
  ∀ n, P10031734239820775619.a n = A318791 (n + 1)

theorem P10031734239820775619.correct : P10031734239820775619.Spec := by
  intro n
  simp only [A318791, Nat.add_sub_cancel]

end A318791

/-! ## A318791.P14643548406691187038

`or(1, A060566(Δ[n²]+n))`
-/

namespace A318791.P14643548406691187038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A060566 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat)

end

end A318791.P14643548406691187038

namespace A318791

/-- `or(1, A060566(Δ[n²]+n))` -/
def P14643548406691187038.Spec : Prop :=
  ∀ n, P14643548406691187038.a n = A318791 (n + 1)

end A318791

/-! ## A318791.P358849297897683817

`A060566(Δ[n²]+n)/A033999(n)²`
-/

namespace A318791.P358849297897683817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060566 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A318791.P358849297897683817

namespace A318791

/-- `A060566(Δ[n²]+n)/A033999(n)²` -/
def P358849297897683817.Spec : Prop :=
  ∀ n, P358849297897683817.a n = (A318791 (n + 1) : ℚ)

end A318791

/-! ## A318791.P15404288651047583630

`lcm(A008836(n+1), A060566(Δ[n²]+n))`
-/

namespace A318791.P15404288651047583630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A060566 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat)

end

end A318791.P15404288651047583630

namespace A318791

/-- `lcm(A008836(n+1), A060566(Δ[n²]+n))` -/
def P15404288651047583630.Spec : Prop :=
  ∀ n, (P15404288651047583630.a n : ℤ) = A318791 (n + 1)

end A318791

/-! ## A318791.P6087524772206536980

`A060566(Δ[n²]+n)%A000594(n+5)`
-/

namespace A318791.P6087524772206536980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060566 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat) (A000594 (n + 5))

end

end A318791.P6087524772206536980

namespace A318791

/-- `A060566(Δ[n²]+n)%A000594(n+5)` -/
def P6087524772206536980.Spec : Prop :=
  ∀ n, P6087524772206536980.a n = A318791 (n + 1)

end A318791

/-! ## A318791.P14129425562667556462

`A154269(A004770(n+1))+A060566(Δ[n²]+n)`
-/

namespace A318791.P14129425562667556462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A004770 (n + 1)).toNat + A060566 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat

end

end A318791.P14129425562667556462

namespace A318791

/-- `A154269(A004770(n+1))+A060566(Δ[n²]+n)` -/
def P14129425562667556462.Spec : Prop :=
  ∀ n, P14129425562667556462.a n = A318791 (n + 1)

end A318791

/-! ## A318791.P8960689339856680518

`A060566(Δ[n²]+n)/A001221(A049555(n+2))`
-/

namespace A318791.P8960689339856680518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060566 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat : ℚ) / (A001221 (A049555 (n + 2)).toNat : ℚ)

end

end A318791.P8960689339856680518

namespace A318791

/-- `A060566(Δ[n²]+n)/A001221(A049555(n+2))` -/
def P8960689339856680518.Spec : Prop :=
  ∀ n, P8960689339856680518.a n = (A318791 (n + 1) : ℚ)

end A318791

/-! ## A318791.P9698699004473492415

`A060566(Δ[n²]+n)/A001221(A054819(n+1))`
-/

namespace A318791.P9698699004473492415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060566 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat : ℚ) / (A001221 (A054819 (n + 1)).toNat : ℚ)

end

end A318791.P9698699004473492415

namespace A318791

/-- `A060566(Δ[n²]+n)/A001221(A054819(n+1))` -/
def P9698699004473492415.Spec : Prop :=
  ∀ n, P9698699004473492415.a n = (A318791 (n + 1) : ℚ)

end A318791

/-! ## A318791.P5831484802021014994

`A060566(Δ[n²]+n)+A000035(A017365(n))`
-/

namespace A318791.P5831484802021014994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060566 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat + A000035 (A017365 n).toNat

end

end A318791.P5831484802021014994

namespace A318791

/-- `A060566(Δ[n²]+n)+A000035(A017365(n))` -/
def P5831484802021014994.Spec : Prop :=
  ∀ n, P5831484802021014994.a n = A318791 (n + 1)

end A318791

/-! ## A318791.P3009562360183389558

`A154269(A000217(n+2))+A060566(Δ[n²]+n)`
-/

namespace A318791.P3009562360183389558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A000217 (n + 2)).toNat + A060566 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat

end

end A318791.P3009562360183389558

namespace A318791

/-- `A154269(A000217(n+2))+A060566(Δ[n²]+n)` -/
def P3009562360183389558.Spec : Prop :=
  ∀ n, P3009562360183389558.a n = A318791 (n + 1)

end A318791

/-! ## A318791.P3144559283055669604

`A060566(Δ[n²]+n)/A007318(∑[n])`
-/

namespace A318791.P3144559283055669604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060566 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ)

end

end A318791.P3144559283055669604

namespace A318791

/-- `A060566(Δ[n²]+n)/A007318(∑[n])` -/
def P3144559283055669604.Spec : Prop :=
  ∀ n, P3144559283055669604.a n = (A318791 (n + 1) : ℚ)

end A318791

/-! ## A318791.P8983142574871603711

`A060566(Δ[n²]+n)+A002262(∑[n])`
-/

namespace A318791.P8983142574871603711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060566 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat + A002262 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A318791.P8983142574871603711

namespace A318791

/-- `A060566(Δ[n²]+n)+A002262(∑[n])` -/
def P8983142574871603711.Spec : Prop :=
  ∀ n, P8983142574871603711.a n = A318791 (n + 1)

end A318791

/-! ## A318791.P7689445969080141794

`A000265(A060566(Δ[n²]+n))`
-/

namespace A318791.P7689445969080141794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A060566 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat).toNat

end

end A318791.P7689445969080141794

namespace A318791

/-- `A000265(A060566(Δ[n²]+n))` -/
def P7689445969080141794.Spec : Prop :=
  ∀ n, P7689445969080141794.a n = A318791 (n + 1)

end A318791

/-! ## A318791.P12756633669563043484

`∑{d}[A060566(Δ[n²]+n), A000010(#)]`
-/

namespace A318791.P12756633669563043484
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060566 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A318791.P12756633669563043484

namespace A318791

/-- `∑{d}[A060566(Δ[n²]+n), A000010(#)]` -/
def P12756633669563043484.Spec : Prop :=
  ∀ n, P12756633669563043484.a n = A318791 (n + 1)

end A318791

/-!
# A318793: Constant term in the expansion of (Sum_{k=0..n} k*(x^k + x^(-k)))^n.

The programs for A318793, there is no canonical definition to state claims against.
-/

/-! ## A318793.P14059066994293826361

`A322549(∑[4*n])`
-/

namespace A318793.P14059066994293826361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322549 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A318793.P14059066994293826361

/-! ## A318793.P7853316223003135965

`A322549(A046092(n))+A025469(n)`
-/

namespace A318793.P7853316223003135965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322549 (A046092 n).toNat + A025469 n

end

end A318793.P7853316223003135965

/-! ## A318793.P6390265841578586465

`lcm(A020985(n), A322549(A046092(n)))`
-/

namespace A318793.P6390265841578586465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A322549 (A046092 n).toNat)

end

end A318793.P6390265841578586465

/-! ## A318793.P14134550925622812054

`or(A151810(n), A322549(A046092(n)))`
-/

namespace A318793.P14134550925622812054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151810 n) (A322549 (A046092 n).toNat)

end

end A318793.P14134550925622812054

/-! ## A318793.P16852275881893379026

`A000108(C(2, n+2))*A322549(A046092(n))`
-/

namespace A318793.P16852275881893379026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A322549 (A046092 n).toNat

end

end A318793.P16852275881893379026

/-!
# A318795: Array read by antidiagonals: T(n,k) is the number of inequivalent nonnegative integer n X n matrices with sum of elements equal to k, under row and column permutations.

The programs for A318795, there is no canonical definition to state claims against.
-/

/-! ## A318795.P5275104844552564449

`A123578(A089861(A229706(n+1)²))`
-/

namespace A318795.P5275104844552564449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A089861 (A229706 (n + 1) ^ 2).toNat).toNat

end

end A318795.P5275104844552564449

/-! ## A318795.P13148186504597781466

`A104239(A267655(n+1))+A048004(n)`
-/

namespace A318795.P13148186504597781466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104239 (A267655 (n + 1)).toNat + A048004 n

end

end A318795.P13148186504597781466

/-! ## A318795.P7785251507236208866

`A034463(∑{d}[A046691(A278984(n+1)), #])`
-/

namespace A318795.P7785251507236208866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 (A278984 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034463 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A318795.P7785251507236208866

/-!
# A318796: Number of 2n-length words w over an n-ary alphabet {a1, a2, ..., an} such that #(w,a1) >= #(w,a2) >= ... >= #(w,an) >= 1, where #(w,x) counts the letters x in word w.

The programs for A318796, there is no canonical definition to state claims against.
-/

/-! ## A318796.P6391179022242986911

`A226874(∑[4*n])`
-/

namespace A318796.P6391179022242986911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226874 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A318796.P6391179022242986911

/-! ## A318796.P6726963216738190816

`lcm(A100051(n), A226874(A046092(n)))`
-/

namespace A318796.P6726963216738190816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A100051 n) (A226874 (A046092 n).toNat)

end

end A318796.P6726963216738190816

/-! ## A318796.P15471830196325216219

`or(A000007(n), A226874(A106232(n+1)))`
-/

namespace A318796.P15471830196325216219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A226874 (A106232 (n + 1)).toNat)

end

end A318796.P15471830196325216219

/-! ## A318796.P11942410314008318531

`A226874(A106232(n+1))%A214904(n+1)`
-/

namespace A318796.P11942410314008318531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226874 (A106232 (n + 1)).toNat) (A214904 (n + 1))

end

end A318796.P11942410314008318531

/-! ## A318796.P4871663571548092490

`A213934((n+1)²+n²)`
-/

namespace A318796.P4871663571548092490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213934 ((n + 1) ^ 2 + n ^ 2)

end

end A318796.P4871663571548092490

/-!
# A318797: Number of rooted trees with n nodes such that no more than three subtrees of the same size extend from the same node.

The programs for A318797, there is no canonical definition to state claims against.
-/

/-! ## A318797.P9029170460912392671

`A318753(∑[n+4]+2)`
-/

namespace A318797.P9029170460912392671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A318797.P9029170460912392671

/-! ## A318797.P13458857310293931600

`lcm(A269529(n), A318753(A155212(n)+4))`
-/

namespace A318797.P13458857310293931600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A269529 n) (A318753 (A155212 n + 4).toNat)

end

end A318797.P13458857310293931600

/-! ## A318797.P810126640822281971

`A033999(n)²*A318753(A155212(n)+4)`
-/

namespace A318797.P810126640822281971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A318753 (A155212 n + 4).toNat

end

end A318797.P810126640822281971

/-! ## A318797.P7773340771037434920

`A318753(A167499(n)+A008486(n))-A000007(n)`
-/

namespace A318797.P7773340771037434920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A167499 n + A008486 n).toNat - A000007 n

end

end A318797.P7773340771037434920

/-! ## A318797.P8296655217057268264

`A318753(A167499(n)+A008486(n))%A000244(n)`
-/

namespace A318797.P8296655217057268264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318753 (A167499 n + A008486 n).toNat) (A000244 n)

end

end A318797.P8296655217057268264

/-! ## A318797.P4065956750815209798

`A318753(A167614(n+1)+A005843(n))%A000244(n)`
-/

namespace A318797.P4065956750815209798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318753 (A167614 (n + 1) + A005843 n).toNat) (A000244 n)

end

end A318797.P4065956750815209798

/-!
# A318798: Number of rooted trees with n nodes such that no more than four subtrees of the same size extend from the same node.

The programs for A318798, there is no canonical definition to state claims against.
-/

/-! ## A318798.P6949010068770690757

`A318753(∑[n+5]+5)`
-/

namespace A318798.P6949010068770690757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A318798.P6949010068770690757

/-! ## A318798.P16834818194842999484

`A057427(n)*A318753(A052905(n+2))`
-/

namespace A318798.P16834818194842999484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A318753 (A052905 (n + 2)).toNat

end

end A318798.P16834818194842999484

/-! ## A318798.P11595767424528200140

`lcm(A033999(n), A318753(A052905(n+2)))`
-/

namespace A318798.P11595767424528200140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A318753 (A052905 (n + 2)).toNat)

end

end A318798.P11595767424528200140

/-! ## A318798.P14172390241967804872

`A318753(A052905(n+2))+A000007(n+1)`
-/

namespace A318798.P14172390241967804872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A052905 (n + 2)).toNat + A000007 (n + 1)

end

end A318798.P14172390241967804872

/-! ## A318798.P2785853286034231452

`A318753(A052905(n+2))+A003982(A000040(n+1))`
-/

namespace A318798.P2785853286034231452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A052905 (n + 2)).toNat + A003982 (A000040 (n + 1)).toNat

end

end A318798.P2785853286034231452

/-! ## A318798.P6862356565605073977

`A318753(A052905(n+2))+A008683(A235718(n+1))`
-/

namespace A318798.P6862356565605073977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A052905 (n + 2)).toNat + A008683 (A235718 (n + 1)).toNat

end

end A318798.P6862356565605073977

/-! ## A318798.P10557972767554727558

`A318753(A052905(n+2))+A008683(A235720(n+1))`
-/

namespace A318798.P10557972767554727558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A052905 (n + 2)).toNat + A008683 (A235720 (n + 1)).toNat

end

end A318798.P10557972767554727558

/-!
# A318799: Number of rooted trees with n nodes such that no more than five subtrees of the same size extend from the same node.

The programs for A318799, there is no canonical definition to state claims against.
-/

/-! ## A318799.P15783258954136420591

`A318753(A055999(n+3))`
-/

namespace A318799.P15783258954136420591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A055999 (n + 3)).toNat

end

end A318799.P15783258954136420591

/-! ## A318799.P12315498238057267841

`A318753(A134227(n+4))`
-/

namespace A318799.P12315498238057267841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A134227 (n + 4)).toNat

end

end A318799.P12315498238057267841

/-! ## A318799.P13055143275089039192

`A318753(Δ[A023551(n+1)])`
-/

namespace A318799.P13055143275089039192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (f1 (n + 1) - f1 n).toNat

end

end A318799.P13055143275089039192

/-! ## A318799.P903864115866441419

`A318753(Δ[A026054(n+3)])`
-/

namespace A318799.P903864115866441419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (f1 (n + 1) - f1 n).toNat

end

end A318799.P903864115866441419

/-! ## A318799.P6979633712267518499

`A318753(A000217(n+6)-6)`
-/

namespace A318799.P6979633712267518499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A000217 (n + 6) - 6).toNat

end

end A318799.P6979633712267518499

/-! ## A318799.P13988283078123509362

`A318753(A005843(n+3)+A000096(n+3))`
-/

namespace A318799.P13988283078123509362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A005843 (n + 3) + A000096 (n + 3)).toNat

end

end A318799.P13988283078123509362

/-! ## A318799.P1999963131708197185

`A318753(A004275(n+4)+A000096(n+3))`
-/

namespace A318799.P1999963131708197185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A004275 (n + 4) + A000096 (n + 3)).toNat

end

end A318799.P1999963131708197185

/-! ## A318799.P280355154894633606

`A318753(A133263(n+10)-A016825(n+10))`
-/

namespace A318799.P280355154894633606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A133263 (n + 10) - A016825 (n + 10)).toNat

end

end A318799.P280355154894633606

