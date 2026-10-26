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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A147900: Number of permutations of floor(i*3/2), i=0..n-1, with all sums of 2 through 4 adjacent terms respectively unique.

The programs for A147900, there is no canonical definition to state claims against.
-/

/-! ## A147900.P16266509853934549419

`A147908(n-∑{digits}[n, #]+n+1)`
-/

namespace A147900.P16266509853934549419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147908 ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n + 1 : ℤ)).toNat

end

end A147900.P16266509853934549419

/-! ## A147900.P14396323370094594558

`A147908(A143797(∑[n]))`
-/

namespace A147900.P14396323370094594558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147908 (A143797 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A147900.P14396323370094594558

/-! ## A147900.P1080172032882446700

`A000027(A147908(n+1))`
-/

namespace A147900.P1080172032882446700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A147908 (n + 1)).toNat

end

end A147900.P1080172032882446700

/-! ## A147900.P3306844977443074946

`A147908(A085908(n+1))`
-/

namespace A147900.P3306844977443074946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147908 (A085908 (n + 1)).toNat

end

end A147900.P3306844977443074946

/-! ## A147900.P7405212110952750534

`A147908(n+1)%A129220(n)²`
-/

namespace A147900.P7405212110952750534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147908 (n + 1)) (A129220 n ^ 2)

end

end A147900.P7405212110952750534

/-!
# A147901: Number of permutations of floor(i*5/2), i=0..n-1, with all sums of 2 through 4 adjacent terms respectively unique.

The programs for A147901, there is no canonical definition to state claims against.
-/

/-! ## A147901.P5737309194685498734

`A147909(∑[A139337(n)])`
-/

namespace A147901.P5737309194685498734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147909 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147901.P5737309194685498734

/-! ## A147901.P14403578880407307107

`A147911(∑[A139337(n)])`
-/

namespace A147901.P14403578880407307107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147911 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147901.P14403578880407307107

/-! ## A147901.P13683643642394434479

`A147909(A173588(∑[n]))`
-/

namespace A147901.P13683643642394434479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147909 (A173588 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A147901.P13683643642394434479

/-! ## A147901.P10464441026526619514

`A147909(∑[A213217(n)])`
-/

namespace A147901.P10464441026526619514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147909 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147901.P10464441026526619514

/-! ## A147901.P2197121383799252862

`A147911(∑[A213217(n)])`
-/

namespace A147901.P2197121383799252862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147911 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147901.P2197121383799252862

/-!
# A147902: Number of permutations of floor(i*5/4), i=0..n-1, with all sums of 2 through 4 adjacent terms respectively unique.

The programs for A147902, there is no canonical definition to state claims against.
-/

/-! ## A147902.P5513334321847541230

`A147910(n-∑{digits}[n, #]+n+1)`
-/

namespace A147902.P5513334321847541230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147910 ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n + 1 : ℤ)).toNat

end

end A147902.P5513334321847541230

/-! ## A147902.P408865027142856000

`A147910(∑[A213217(n)])`
-/

namespace A147902.P408865027142856000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147910 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147902.P408865027142856000

/-! ## A147902.P3429995239354209968

`A000027(A147910(n+1))`
-/

namespace A147902.P3429995239354209968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A147910 (n + 1)).toNat

end

end A147902.P3429995239354209968

/-! ## A147902.P3210232204807089143

`A147910(A002998(n)+1)`
-/

namespace A147902.P3210232204807089143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147910 (A002998 n + 1).toNat

end

end A147902.P3210232204807089143

/-! ## A147902.P15183137237567368225

`A147910(A051022(n)+1)`
-/

namespace A147902.P15183137237567368225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147910 (A051022 n + 1).toNat

end

end A147902.P15183137237567368225

/-!
# A147903: Number of permutations of floor(i*7/4), i=0..n-1, with all sums of 2 through 4 adjacent terms respectively unique.

The programs for A147903, there is no canonical definition to state claims against.
-/

/-! ## A147903.P3549597103941157813

`A147912(n-∑{digits}[n, #]+n+1)`
-/

namespace A147903.P3549597103941157813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147912 ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n + 1 : ℤ)).toNat

end

end A147903.P3549597103941157813

/-! ## A147903.P6499395235052450239

`A147912(A156136(∑[n]))`
-/

namespace A147903.P6499395235052450239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147912 (A156136 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A147903.P6499395235052450239

/-! ## A147903.P10884983031654210241

`A147912(C(A117923(n+1), n))`
-/

namespace A147903.P10884983031654210241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147912 (Nat.choose (A117923 (n + 1)).toNat n)

end

end A147903.P10884983031654210241

/-! ## A147903.P18444269901342607603

`A147912(n+1)%A129220(n)²`
-/

namespace A147903.P18444269901342607603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147912 (n + 1)) (A129220 n ^ 2)

end

end A147903.P18444269901342607603

/-!
# A147904: Number of permutations of floor(i*7/6), i=0..n-1, with all sums of 2 through 4 adjacent terms respectively unique.

The programs for A147904, there is no canonical definition to state claims against.
-/

/-! ## A147904.P15945591825506670549

`A147913(n-∑{digits}[n, #]+n+1)`
-/

namespace A147904.P15945591825506670549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147913 ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n + 1 : ℤ)).toNat

end

end A147904.P15945591825506670549

/-! ## A147904.P2850808375752240020

`A147913(A256079(n))`
-/

namespace A147904.P2850808375752240020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147913 (A256079 n).toNat

end

end A147904.P2850808375752240020

/-! ## A147904.P7092690387028949767

`A000027(A147913(n+1))`
-/

namespace A147904.P7092690387028949767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A147913 (n + 1)).toNat

end

end A147904.P7092690387028949767

/-! ## A147904.P3352630355405134492

`A147913(A110304(n+1))`
-/

namespace A147904.P3352630355405134492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147913 (A110304 (n + 1)).toNat

end

end A147904.P3352630355405134492

/-! ## A147904.P2203883350113717924

`A147913(n+1)%A129220(n)²`
-/

namespace A147904.P2203883350113717924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147913 (n + 1)) (A129220 n ^ 2)

end

end A147904.P2203883350113717924

/-!
# A147905: Number of permutations of floor(i*8/5), i=0..n-1, with all sums of 2 through 4 adjacent terms respectively unique.

The programs for A147905, there is no canonical definition to state claims against.
-/

/-! ## A147905.P1686569115564858617

`A147914(A199343(n))`
-/

namespace A147905.P1686569115564858617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147914 (A199343 n).toNat

end

end A147905.P1686569115564858617

/-! ## A147905.P13413335502946550739

`A147914(record[A048379(n)])`
-/

namespace A147905.P13413335502946550739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147914 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A147905.P13413335502946550739

/-! ## A147905.P17393592813583039104

`A147914(A001104(n+1))`
-/

namespace A147905.P17393592813583039104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147914 (A001104 (n + 1)).toNat

end

end A147905.P17393592813583039104

/-! ## A147905.P12019543828842194587

`A147914(A002998(n+1))`
-/

namespace A147905.P12019543828842194587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147914 (A002998 (n + 1)).toNat

end

end A147905.P12019543828842194587

/-! ## A147905.P2891316295418819758

`A147914(A107070(n+1))`
-/

namespace A147905.P2891316295418819758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147914 (A107070 (n + 1)).toNat

end

end A147905.P2891316295418819758

/-!
# A147906: Number of permutations of floor(i*9/5), i=0..n-1, with all sums of 2 through 4 adjacent terms respectively unique.

The programs for A147906, there is no canonical definition to state claims against.
-/

/-! ## A147906.P5680920500523305573

`A147915(n+1)%p?[p?[n²+2]+n+1]`
-/

namespace A147906.P5680920500523305573
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) + (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147915 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A147906.P5680920500523305573

/-! ## A147906.P12634946814479087289

`A000027(A147915(n+1))`
-/

namespace A147906.P12634946814479087289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A147915 (n + 1)).toNat

end

end A147906.P12634946814479087289

/-! ## A147906.P18446633699688403326

`A147915(A002998(n)+1)`
-/

namespace A147906.P18446633699688403326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147915 (A002998 n + 1).toNat

end

end A147906.P18446633699688403326

/-! ## A147906.P438346244528167908

`A147915(A068860(n+1))`
-/

namespace A147906.P438346244528167908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147915 (A068860 (n + 1)).toNat

end

end A147906.P438346244528167908

/-! ## A147906.P11228939568063658851

`A147915(A087051(n)+1)`
-/

namespace A147906.P11228939568063658851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147915 (A087051 n + 1).toNat

end

end A147906.P11228939568063658851

/-!
# A147907: Number of permutations of floor(i*9/8), i=0..n-1, with all sums of 2 through 4 adjacent terms respectively unique.

The programs for A147907, there is no canonical definition to state claims against.
-/

/-! ## A147907.P17628123364158393275

`A147916(∑[n-∏{digits}[n, #]+1])`
-/

namespace A147907.P17628123364158393275
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147916 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147907.P17628123364158393275

/-! ## A147907.P14989003789524888582

`A147916(n-∏{digits}[n, #]+1+n)`
-/

namespace A147907.P14989003789524888582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147916 ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ) + 1 + (n : ℤ)).toNat

end

end A147907.P14989003789524888582

/-! ## A147907.P1541815792308038992

`A000027(A147916(n+1))`
-/

namespace A147907.P1541815792308038992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A147916 (n + 1)).toNat

end

end A147907.P1541815792308038992

/-! ## A147907.P60646873654852783

`A147916(A110304(n+1))`
-/

namespace A147907.P60646873654852783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147916 (A110304 (n + 1)).toNat

end

end A147907.P60646873654852783

/-! ## A147907.P7082599499342375830

`A147916(A302502(n+1)+1)`
-/

namespace A147907.P7082599499342375830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147916 (A302502 (n + 1) + 1).toNat

end

end A147907.P7082599499342375830

/-!
# A147917: Number of permutations of floor(i*4/3), i=0..n-1, with all sums of two adjacent terms unique.

The programs for A147917, there is no canonical definition to state claims against.
-/

/-! ## A147917.P14338802321235570834

`A003963(∑[A121680(n)])`
-/

namespace A147917.P14338802321235570834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147917.P14338802321235570834

/-! ## A147917.P4281182298391923799

`A185278(A056632(n+1))`
-/

namespace A147917.P4281182298391923799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185278 (A056632 (n + 1)).toNat

end

end A147917.P4281182298391923799

/-!
# A147918: Number of permutations of floor(i*5/3), i=0..n-1, with all sums of two adjacent terms unique.

The programs for A147918, there is no canonical definition to state claims against.
-/

/-! ## A147918.P3324869984574313109

`A228354(∑[(1-n)²]+n)`
-/

namespace A147918.P3324869984574313109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228354 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A147918.P3324869984574313109

/-! ## A147918.P583430725090011172

`A147948(n+1)^C(n, 5)!`
-/

namespace A147918.P583430725090011172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147948 (n + 1) ^ Nat.factorial (Nat.choose n 5)

end

end A147918.P583430725090011172

/-!
# A147919: Number of permutations of floor(i*6/5), i=0..n-1, with all sums of two adjacent terms unique.

The programs for A147919, there is no canonical definition to state claims against.
-/

/-! ## A147919.P8455550810078873919

`A030307((2*a(n-1)+1)*2^n)` with `a(0)=1, a(1)=2`
-/

namespace A147919.P8455550810078873919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A030307 ((2 * a (n - 1) + 1) * (2 ^ n : ℤ)).toNat

end

end A147919.P8455550810078873919

/-! ## A147919.P18241601189655634262

`A030307(2^n*xor(1, 2*a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A147919.P18241601189655634262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A030307 ((2 ^ n : ℤ) * Int.xor 1 (2 * a (n - 1))).toNat

end

end A147919.P18241601189655634262

/-!
# A147921: Number of permutations of floor(i*7/5), i=0..n-1, with all sums of two adjacent terms unique.

The programs for A147921, there is no canonical definition to state claims against.
-/

/-! ## A147921.P14199039819753250863

`A147929(a(n-3))` with `a(0)=1, a(1)=2, a(2)=6, a(3)=24, a(4)=74`
-/

namespace A147921.P14199039819753250863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6, 24, 74] fun n a =>
  A147929 (a (n - 3)).toNat

end

end A147921.P14199039819753250863

/-! ## A147921.P1029913530891098977

`A122651(A361881(n))`
-/

namespace A147921.P1029913530891098977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122651 (A361881 n).toNat

end

end A147921.P1029913530891098977

/-!
# A147923: Number of permutations of floor(i*9/4), i=0..n-1, with all sums of two adjacent terms unique.

The programs for A147923, there is no canonical definition to state claims against.
-/

/-! ## A147923.P11939716885099945201

`A147932(∑[A146406(n+1)])`
-/

namespace A147923.P11939716885099945201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147932 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147923.P11939716885099945201

/-! ## A147923.P9639163444212419395

`A147941(∑[A146406(n+1)])`
-/

namespace A147923.P9639163444212419395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147941 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147923.P9639163444212419395

/-!
# A147925: Number of permutations of floor(i*4/3), i=0..n-1, with all sums of two and three adjacent terms respectively unique.

The programs for A147925, there is no canonical definition to state claims against.
-/

/-! ## A147925.P820377179217224823

`A147934(∑[A290622(n)])`
-/

namespace A147925.P820377179217224823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147934 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147925.P820377179217224823

/-! ## A147925.P17548181827803536592

`A147934(∑[A290624(n)])`
-/

namespace A147925.P17548181827803536592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147934 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147925.P17548181827803536592

/-! ## A147925.P17819759431081591384

`A147943(A154701(n+1))`
-/

namespace A147925.P17819759431081591384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147943 (A154701 (n + 1)).toNat

end

end A147925.P17819759431081591384

/-! ## A147925.P13921307102040305063

`A359099(A147934(n+1))`
-/

namespace A147925.P13921307102040305063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359099 (A147934 (n + 1)).toNat

end

end A147925.P13921307102040305063

/-!
# A147926: Number of permutations of floor(i*5/3), i=0..n-1, with all sums of two and three adjacent terms respectively unique.

The programs for A147926, there is no canonical definition to state claims against.
-/

/-! ## A147926.P15861196462180423857

`A147944(((n+1)/∏{p}[n+1, #^val(n+1, #²)])^((n+1)/∏{p}[n+1, #]))`
-/

namespace A147926.P15861196462180423857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147944 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ) : ℝ) ^ ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) : ℝ))).toNat

end

end A147926.P15861196462180423857

/-! ## A147926.P11409513476423535190

`A028310(A147935(n+1))`
-/

namespace A147926.P11409513476423535190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A147935 (n + 1)).toNat

end

end A147926.P11409513476423535190

/-!
# A147927: Number of permutations of floor(i*6/5), i=0..n-1, with all sums of two and three adjacent terms respectively unique.

The programs for A147927, there is no canonical definition to state claims against.
-/

/-! ## A147927.P14648615026394310247

`A147936((n+1)/4^val(n+1, 4)*∏{p}[n+1, #^val(n+1, #²)]²)`
-/

namespace A147927.P14648615026394310247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147936 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ) * (((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2 : ℕ) : ℚ))).toNat

end

end A147927.P14648615026394310247

/-! ## A147927.P15480480463637305263

`A147936(∑[A286831(n)])`
-/

namespace A147927.P15480480463637305263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147936 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147927.P15480480463637305263

/-! ## A147927.P10385235050717185319

`A147936(∑[A286833(n)])`
-/

namespace A147927.P10385235050717185319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286833 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147936 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147927.P10385235050717185319

/-!
# A147928: Number of permutations of floor(i*7/3), i=0..n-1, with all sums of two and three adjacent terms respectively unique.

The programs for A147928, there is no canonical definition to state claims against.
-/

/-! ## A147928.P18109261269377830116

`A147946(n+1)%p?[∑{p}[n+1, ceil(n/#)^4]]`
-/

namespace A147928.P18109261269377830116
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌈(n : ℚ) / (p : ℚ)⌉ ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147946 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A147928.P18109261269377830116

/-! ## A147928.P15205397929191607553

`A147937(A073789(n)+1)`
-/

namespace A147928.P15205397929191607553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147937 (A073789 n + 1).toNat

end

end A147928.P15205397929191607553

/-! ## A147928.P460853256912082661

`A147946(A073789(n)+1)`
-/

namespace A147928.P460853256912082661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147946 (A073789 n + 1).toNat

end

end A147928.P460853256912082661

/-! ## A147928.P13662614058883007014

`A147937(A171644(n)+1)`
-/

namespace A147928.P13662614058883007014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147937 (A171644 n + 1).toNat

end

end A147928.P13662614058883007014

/-!
# A147929: Number of permutations of floor(i*7/5), i=0..n-1, with all sums of two and three adjacent terms respectively unique.

The programs for A147929, there is no canonical definition to state claims against.
-/

/-! ## A147929.P16636206999426796381

`A147947(n+1)%p?[2^n-1]`
-/

namespace A147929.P16636206999426796381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147947 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A147929.P16636206999426796381

/-! ## A147929.P5784303461386194960

`A147938(A065639(n+1))`
-/

namespace A147929.P5784303461386194960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147938 (A065639 (n + 1)).toNat

end

end A147929.P5784303461386194960

/-! ## A147929.P190817511197014126

`A236851(A147938(n+1))`
-/

namespace A147929.P190817511197014126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236851 (A147938 (n + 1)).toNat

end

end A147929.P190817511197014126

/-!
# A147930: Number of permutations of floor(i*8/3), i=0..n-1, with all sums of two and three adjacent terms respectively unique.

The programs for A147930, there is no canonical definition to state claims against.
-/

/-! ## A147930.P6862423698014057452

`A147948(∑[(8^val(n+1, 8))²])`
-/

namespace A147930.P6862423698014057452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (8 ^ SequenceMachineLib.valuation (n + 1) 8) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147948 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A147930.P6862423698014057452

/-! ## A147930.P6488308700645523256

`A028310(A147939(n+1))`
-/

namespace A147930.P6488308700645523256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A147939 (n + 1)).toNat

end

end A147930.P6488308700645523256

/-! ## A147930.P1804690158057765573

`A359099(A147948(n+1))`
-/

namespace A147930.P1804690158057765573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359099 (A147948 (n + 1)).toNat

end

end A147930.P1804690158057765573

/-!
# A147931: Number of permutations of floor(i*8/7), i=0..n-1, with all sums of two and three adjacent terms respectively unique.

The programs for A147931, there is no canonical definition to state claims against.
-/

/-! ## A147931.P18392549565625111206

`A147940(∑[A286831(n)])`
-/

namespace A147931.P18392549565625111206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147940 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147931.P18392549565625111206

/-! ## A147931.P16163092641910840665

`A147940(∑[A286833(n)])`
-/

namespace A147931.P16163092641910840665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286833 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147940 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147931.P16163092641910840665

/-! ## A147931.P15522937599938454775

`A147949(∑[A286831(n)])`
-/

namespace A147931.P15522937599938454775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147949 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147931.P15522937599938454775

/-! ## A147931.P18330695594497293900

`A147949(∑[A286833(n)])`
-/

namespace A147931.P18330695594497293900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286833 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147949 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147931.P18330695594497293900

/-!
# A147932: Number of permutations of floor(i*9/4), i=0..n-1, with all sums of two and three adjacent terms respectively unique.

The programs for A147932, there is no canonical definition to state claims against.
-/

/-! ## A147932.P4458313409760971105

`A147941(n+1)%p?[∑[2^n]]`
-/

namespace A147932.P4458313409760971105
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147941 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A147932.P4458313409760971105

/-! ## A147932.P6783537119871912739

`A147950(n+1)%p?[2^n-1]`
-/

namespace A147932.P6783537119871912739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147950 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A147932.P6783537119871912739

/-! ## A147932.P1933573188780741972

`A147941(C(2^n, ∑{digits}[n, floor(#/7)])+n)`
-/

namespace A147932.P1933573188780741972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147941 (Nat.choose (2 ^ n) ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 7⌋).sum.toNat + n)

end

end A147932.P1933573188780741972

/-!
# A147933: Number of permutations of floor(i*9/7), i=0..n-1, with all sums of two and three adjacent terms respectively unique.

The programs for A147933, there is no canonical definition to state claims against.
-/

/-! ## A147933.P6342827145647443667

`A147951(n+1)%p?[2^n-3]`
-/

namespace A147933.P6342827145647443667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147951 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A147933.P6342827145647443667

/-! ## A147933.P4860730838614246742

`A147942(∑[A286831(n)])`
-/

namespace A147933.P4860730838614246742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147942 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147933.P4860730838614246742

/-! ## A147933.P12639278301156052762

`A147942(∑[A286833(n)])`
-/

namespace A147933.P12639278301156052762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286833 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147942 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147933.P12639278301156052762

/-! ## A147933.P9487124468221537647

`A147951(∑[A286831(n)])`
-/

namespace A147933.P9487124468221537647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147951 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147933.P9487124468221537647

/-!
# A147934: Number of permutations of floor(i*4/3), i=0..n-1, with all sums of 2 through 4 adjacent terms respectively unique.

The programs for A147934, there is no canonical definition to state claims against.
-/

/-! ## A147934.P245127296904507317

`A147943(Δ[n²]-dr(n))`
-/

namespace A147934.P245127296904507317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147943 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ)).toNat

end

end A147934.P245127296904507317

/-! ## A147934.P16429362858606082720

`A147943(2*(n+1)-(dr(n)+1))`
-/

namespace A147934.P16429362858606082720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147943 (2 * (n + 1) - (SequenceMachineLib.digitalRoot (n : ℤ) + 1))

end

end A147934.P16429362858606082720

/-! ## A147934.P8051301124079631603

`A147943(A216556(n))`
-/

namespace A147934.P8051301124079631603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147943 (A216556 n).toNat

end

end A147934.P8051301124079631603

/-! ## A147934.P9604607892741542565

`A000027(A147943(n+1))`
-/

namespace A147934.P9604607892741542565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A147943 (n + 1)).toNat

end

end A147934.P9604607892741542565

/-! ## A147934.P8966832108920092237

`A147943(A110304(n+1))`
-/

namespace A147934.P8966832108920092237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147943 (A110304 (n + 1)).toNat

end

end A147934.P8966832108920092237

/-!
# A147935: Number of permutations of floor(i*5/3), i=0..n-1, with all sums of 2 through 4 adjacent terms respectively unique.

The programs for A147935, there is no canonical definition to state claims against.
-/

/-! ## A147935.P9662744734214228440

`A147944(A034710(n+1))`
-/

namespace A147935.P9662744734214228440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147944 (A034710 (n + 1)).toNat

end

end A147935.P9662744734214228440

/-! ## A147935.P14860231619458445433

`A147944(A039723(n+1))`
-/

namespace A147935.P14860231619458445433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147944 (A039723 (n + 1)).toNat

end

end A147935.P14860231619458445433

/-! ## A147935.P6125327362043915903

`A052410(A147944(n+1))`
-/

namespace A147935.P6125327362043915903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A147944 (n + 1)).toNat

end

end A147935.P6125327362043915903

/-! ## A147935.P8507746204601195876

`A147944(A062998(n+1))`
-/

namespace A147935.P8507746204601195876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147944 (A062998 (n + 1)).toNat

end

end A147935.P8507746204601195876

/-! ## A147935.P5269051151911043167

`A147944(A124107(n+1))`
-/

namespace A147935.P5269051151911043167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147944 (A124107 (n + 1)).toNat

end

end A147935.P5269051151911043167

/-!
# A147936: Number of permutations of floor(i*6/5), i=0..n-1, with all sums of 2 through 4 adjacent terms respectively unique.

The programs for A147936, there is no canonical definition to state claims against.
-/

/-! ## A147936.P12140188086407908970

`A147945(Δ[A121295(n)])`
-/

namespace A147936.P12140188086407908970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121295 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147945 (f1 (n + 1) - f1 n).toNat

end

end A147936.P12140188086407908970

/-! ## A147936.P4292144901536366258

`A147945(A034710(n+1))`
-/

namespace A147936.P4292144901536366258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147945 (A034710 (n + 1)).toNat

end

end A147936.P4292144901536366258

/-! ## A147936.P10301519154859814926

`A147945(A076105(n+1))`
-/

namespace A147936.P10301519154859814926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147945 (A076105 (n + 1)).toNat

end

end A147936.P10301519154859814926

/-! ## A147936.P7277790262694922385

`A147945(A077739(n+1))`
-/

namespace A147936.P7277790262694922385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147945 (A077739 (n + 1)).toNat

end

end A147936.P7277790262694922385

/-! ## A147936.P7997837391193244693

`A147945(A098488(n+1))`
-/

namespace A147936.P7997837391193244693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147945 (A098488 (n + 1)).toNat

end

end A147936.P7997837391193244693

/-!
# A147937: Number of permutations of floor(i*7/3), i=0..n-1, with all sums of 2 through 4 adjacent terms respectively unique.

The programs for A147937, there is no canonical definition to state claims against.
-/

/-! ## A147937.P4176294250229254504

`A147946(record[A048379(n)])`
-/

namespace A147937.P4176294250229254504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147946 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A147937.P4176294250229254504

/-! ## A147937.P10532765132253307365

`A000027(A147946(n+1))`
-/

namespace A147937.P10532765132253307365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A147946 (n + 1)).toNat

end

end A147937.P10532765132253307365

/-! ## A147937.P3104315829134577745

`A147946(A061219(n+1))`
-/

namespace A147937.P3104315829134577745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147946 (A061219 (n + 1)).toNat

end

end A147937.P3104315829134577745

/-! ## A147937.P15096986856079174973

`A147946(A153670(n+1))`
-/

namespace A147937.P15096986856079174973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147946 (A153670 (n + 1)).toNat

end

end A147937.P15096986856079174973

/-! ## A147937.P3163034358709749345

`A147946(C(A222261(n+1), n))`
-/

namespace A147937.P3163034358709749345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147946 (Nat.choose (A222261 (n + 1)).toNat n)

end

end A147937.P3163034358709749345

/-!
# A147938: Number of permutations of floor(i*7/5), i=0..n-1, with all sums of 2 through 4 adjacent terms respectively unique.

The programs for A147938, there is no canonical definition to state claims against.
-/

/-! ## A147938.P4439174588400205605

`A147947(Δ[n²]-dr(n))`
-/

namespace A147938.P4439174588400205605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147947 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ)).toNat

end

end A147938.P4439174588400205605

/-! ## A147938.P154556605861926553

`A147947(n+1)%∑[n+2]!`
-/

namespace A147938.P154556605861926553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147947 (n + 1)) (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A147938.P154556605861926553

/-! ## A147938.P8409826459749512792

`A000027(A147947(n+1))`
-/

namespace A147938.P8409826459749512792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A147947 (n + 1)).toNat

end

end A147938.P8409826459749512792

/-! ## A147938.P2787991809670584552

`A147947(A002998(n)+1)`
-/

namespace A147938.P2787991809670584552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147947 (A002998 n + 1).toNat

end

end A147938.P2787991809670584552

/-! ## A147938.P859350064947695086

`A147947(A051022(n)+1)`
-/

namespace A147938.P859350064947695086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147947 (A051022 n + 1).toNat

end

end A147938.P859350064947695086

/-!
# A147939: Number of permutations of floor(i*8/3), i=0..n-1, with all sums of 2 through 4 adjacent terms respectively unique.

The programs for A147939, there is no canonical definition to state claims against.
-/

/-! ## A147939.P9824624184201801420

`A147948(Δ[n²]-dr(n))`
-/

namespace A147939.P9824624184201801420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147948 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ)).toNat

end

end A147939.P9824624184201801420

/-! ## A147939.P17107576561434758664

`A147948(A216556(n))`
-/

namespace A147939.P17107576561434758664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147948 (A216556 n).toNat

end

end A147939.P17107576561434758664

/-! ## A147939.P18351033290625524149

`A147948(∑[A213217(n)])`
-/

namespace A147939.P18351033290625524149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147948 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A147939.P18351033290625524149

/-! ## A147939.P18064201383665241937

`A147948(A062399(n+1))`
-/

namespace A147939.P18064201383665241937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147948 (A062399 (n + 1)).toNat

end

end A147939.P18064201383665241937

/-! ## A147939.P14653173980380602020

`A147948(A213217(n)+n)`
-/

namespace A147939.P14653173980380602020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147948 (A213217 n + (n : ℤ)).toNat

end

end A147939.P14653173980380602020

/-!
# A147940: Number of permutations of floor(i*8/7), i=0..n-1, with all sums of 2 through 4 adjacent terms respectively unique.

The programs for A147940, there is no canonical definition to state claims against.
-/

/-! ## A147940.P11204861394170994014

`A147949(A199343(n))`
-/

namespace A147940.P11204861394170994014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147949 (A199343 n).toNat

end

end A147940.P11204861394170994014

/-! ## A147940.P10329377546827961300

`A147949(record[A048379(n)])`
-/

namespace A147940.P10329377546827961300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147949 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A147940.P10329377546827961300

/-! ## A147940.P5318176950827741290

`A147949(A001104(n+1))`
-/

namespace A147940.P5318176950827741290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147949 (A001104 (n + 1)).toNat

end

end A147940.P5318176950827741290

/-! ## A147940.P8066910402335715322

`A147949(A024656(n)+1)`
-/

namespace A147940.P8066910402335715322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147949 (A024656 n + 1).toNat

end

end A147940.P8066910402335715322

/-! ## A147940.P13067367494201133901

`A147949(A034710(n+1))`
-/

namespace A147940.P13067367494201133901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147949 (A034710 (n + 1)).toNat

end

end A147940.P13067367494201133901

/-!
# A147941: Number of permutations of floor(i*9/4), i=0..n-1, with all sums of 2 through 4 adjacent terms respectively unique.

The programs for A147941, there is no canonical definition to state claims against.
-/

/-! ## A147941.P3924488206410087598

`A147950(A199344(n))`
-/

namespace A147941.P3924488206410087598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147950 (A199344 n).toNat

end

end A147941.P3924488206410087598

/-! ## A147941.P11812659943213466936

`A147950(record[A252648(n)])`
-/

namespace A147941.P11812659943213466936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147950 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A147941.P11812659943213466936

/-! ## A147941.P11865642936095304550

`A000027(A147950(n+1))`
-/

namespace A147941.P11865642936095304550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A147950 (n + 1)).toNat

end

end A147941.P11865642936095304550

/-! ## A147941.P17663342358345441132

`A147950(A034710(n+1))`
-/

namespace A147941.P17663342358345441132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147950 (A034710 (n + 1)).toNat

end

end A147941.P17663342358345441132

/-!
# A147942: Number of permutations of floor(i*9/7), i=0..n-1, with all sums of 2 through 4 adjacent terms respectively unique.

The programs for A147942, there is no canonical definition to state claims against.
-/

/-! ## A147942.P16697354343642180455

`A147951(record[A048379(n)])`
-/

namespace A147942.P16697354343642180455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147951 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A147942.P16697354343642180455

/-! ## A147942.P7078363747838821719

`A147951(record[A252648(n)])`
-/

namespace A147942.P7078363747838821719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252648 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147951 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A147942.P7078363747838821719

/-! ## A147942.P3875387487980638500

`A147951(A032555(n+1))`
-/

namespace A147942.P3875387487980638500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147951 (A032555 (n + 1)).toNat

end

end A147942.P3875387487980638500

/-! ## A147942.P16047280941550474814

`A147951(A067043(n+1))`
-/

namespace A147942.P16047280941550474814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147951 (A067043 (n + 1)).toNat

end

end A147942.P16047280941550474814

/-! ## A147942.P14850079252040986358

`A147951(A076105(n+1))`
-/

namespace A147942.P14850079252040986358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147951 (A076105 (n + 1)).toNat

end

end A147942.P14850079252040986358

/-!
# A147952: a(0) = 0, a(1) = a(2) = 1, and for n >= 3, a(n) = a(a(n-2)) + r(n), where r(n) = a(a(floor(n/3))) when n == 0 or 1 (mod 3) and = a(n - a(floor(n/3))) when n == 2 (mod 3).

The programs for A147952, there is no canonical definition to state claims against.
-/

/-! ## A147952.P14544713187926395777

`A147981(comp[A087686(n+2)])`
-/

namespace A147952.P14544713187926395777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087686 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147981 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A147952.P14544713187926395777

/-! ## A147952.P11364456870338696821

`A147981(record[A080677(n+1)*A093879(n+1)])`
-/

namespace A147952.P11364456870338696821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080677 (n + 1) * A093879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147981 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A147952.P11364456870338696821

/-! ## A147952.P17694913778165388587

`A147981(record[A093879(n+1)*A162598(n+1)])`
-/

namespace A147952.P17694913778165388587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093879 (n + 1) * A162598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147981 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A147952.P17694913778165388587

/-! ## A147952.P5136176617618791250

`A147981(A188163(n+1)-1)`
-/

namespace A147952.P5136176617618791250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147981 (A188163 (n + 1) - 1).toNat

end

end A147952.P5136176617618791250

/-! ## A147952.P1074766787991381829

`A147981(eq[1, A265332(n+1)])`
-/

namespace A147952.P1074766787991381829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147981 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A147952.P1074766787991381829

/-! ## A147952.P5108418366343350234

`A147981(lt[A265332(n+1), 2])`
-/

namespace A147952.P5108418366343350234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265332 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147981 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A147952.P5108418366343350234

/-! ## A147952.P3324391037419431085

`A147981(A087815(n+1))%(n+1)`
-/

namespace A147952.P3324391037419431085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147981 (A087815 (n + 1)).toNat) (n + 1 : ℤ)

end

end A147952.P3324391037419431085

/-! ## A147952.P16326558438058693853

`A147981(∑[A051135(n+1)]-A051135(n+1))`
-/

namespace A147952.P16326558438058693853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147981 (∑ j ∈ Finset.range (n + 1), f1 j - A051135 (n + 1)).toNat

end

end A147952.P16326558438058693853

/-!
# A147953: Expansion of Product_{k > 0} (1 + f(k)*x^k), where f(n) = A147952(n).

The programs for A147953, there is no canonical definition to state claims against.
-/

/-! ## A147953.P7326652670659613000

`A328518(A374762(n+1))`
-/

namespace A147953.P7326652670659613000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328518 (A374762 (n + 1)).toNat

end

end A147953.P7326652670659613000

/-! ## A147953.P5628298331228938055

`A105224(12*A052101(n))`
-/

namespace A147953.P5628298331228938055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (12 * A052101 n).toNat

end

end A147953.P5628298331228938055

/-! ## A147953.P911806189775791975

`A273190(12*A052101(n))`
-/

namespace A147953.P911806189775791975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (12 * A052101 n).toNat

end

end A147953.P911806189775791975

/-!
# A147955: Expansion of Product_{k >= 0} (1 + A147954(k)*x^k).

The programs for A147955, there is no canonical definition to state claims against.
-/

/-! ## A147955.P17237312022810458034

`Δ[A206822(a(n-1)-1)]` with `a(0)=3`
-/

namespace A147955.P17237312022810458034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A206822 (f1 (n - 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147955.P17237312022810458034

/-! ## A147955.P14747939572638877326

`A300305(A274160(n))`
-/

namespace A147955.P14747939572638877326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300305 (A274160 n).toNat

end

end A147955.P14747939572638877326

/-! ## A147955.P3375442417372642425

`A316846(A198518(n)²)`
-/

namespace A147955.P3375442417372642425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316846 (A198518 n ^ 2).toNat

end

end A147955.P3375442417372642425

/-! ## A147955.P2331654575556153585

`A105224(A089264(n+4))`
-/

namespace A147955.P2331654575556153585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A089264 (n + 4)).toNat

end

end A147955.P2331654575556153585

/-!
# A147956: All positive integers that are not multiples of any Fibonacci numbers >= 2.

The programs for A147956, the canonical program `A147956.P1737531422126429600` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147956 has offset 1).

The definition of A147956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4843 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A147956.P1737531422126429600

`eq[1, A005092(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A147956

/-- `eq[1, A005092(n+1)]+1` -/
def P1737531422126429600.Spec : Prop :=
  ∀ n, (P1737531422126429600.a n : ℤ) = A147956 (n + 1)

theorem P1737531422126429600.correct : P1737531422126429600.Spec := by
  intro n
  simp only [A147956, Nat.add_sub_cancel]

end A147956

/-! ## A147956.P7390101872125650432

`eq[1, ∑{d}[n, A010056(#)]]`
-/

namespace A147956.P7390101872125650432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), A010056 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A147956.P7390101872125650432

namespace A147956

/-- `eq[1, ∑{d}[n, A010056(#)]]` -/
def P7390101872125650432.Spec : Prop :=
  ∀ n, (P7390101872125650432.a n : ℤ) = A147956 (n + 1)

end A147956

/-! ## A147956.P11200588742837821476

`record[A054495(2*n+1)]`
-/

namespace A147956.P11200588742837821476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054495 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147956.P11200588742837821476

namespace A147956

/-- `record[A054495(2*n+1)]` -/
def P11200588742837821476.Spec : Prop :=
  ∀ n, P11200588742837821476.a n = A147956 (n + 1)

end A147956

/-! ## A147956.P12323880162873891711

`eq[1, A005086(n+1)]+1`
-/

namespace A147956.P12323880162873891711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005086 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A147956.P12323880162873891711

namespace A147956

/-- `eq[1, A005086(n+1)]+1` -/
def P12323880162873891711.Spec : Prop :=
  ∀ n, (P12323880162873891711.a n : ℤ) = A147956 (n + 1)

end A147956

/-! ## A147956.P2883502598940133869

`eq[1, A005093(n+1)]+1`
-/

namespace A147956.P2883502598940133869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005093 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A147956.P2883502598940133869

namespace A147956

/-- `eq[1, A005093(n+1)]+1` -/
def P2883502598940133869.Spec : Prop :=
  ∀ n, (P2883502598940133869.a n : ℤ) = A147956 (n + 1)

end A147956

/-! ## A147956.P17849479890309304817

`eq[1, A054494(n+1)]+1`
-/

namespace A147956.P17849479890309304817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054494 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A147956.P17849479890309304817

namespace A147956

/-- `eq[1, A054494(n+1)]+1` -/
def P17849479890309304817.Spec : Prop :=
  ∀ n, (P17849479890309304817.a n : ℤ) = A147956 (n + 1)

end A147956

/-! ## A147956.P13341413069905862115

`lt[n, A054495(n+1)]+1`
-/

namespace A147956.P13341413069905862115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054495 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A147956.P13341413069905862115

namespace A147956

/-- `lt[n, A054495(n+1)]+1` -/
def P13341413069905862115.Spec : Prop :=
  ∀ n, (P13341413069905862115.a n : ℤ) = A147956 (n + 1)

end A147956

/-! ## A147956.P11891953151696620146

`A054495(eq[n+1, A054495(n+1)]+1)`
-/

namespace A147956.P11891953151696620146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054495 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054495 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A147956.P11891953151696620146

namespace A147956

/-- `A054495(eq[n+1, A054495(n+1)]+1)` -/
def P11891953151696620146.Spec : Prop :=
  ∀ n, P11891953151696620146.a n = A147956 (n + 1)

end A147956

/-! ## A147956.P7410012714860685666

`record[A061579(A061579(2*n+1))/A054494(2*n+1)]`
-/

namespace A147956.P7410012714860685666
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061579 (A061579 (2 * n + 1)).toNat : ℚ) / (A054494 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147956.P7410012714860685666

namespace A147956

/-- `record[A061579(A061579(2*n+1))/A054494(2*n+1)]` -/
def P7410012714860685666.Spec : Prop :=
  ∀ n, P7410012714860685666.a n = (A147956 (n + 1) : ℚ)

end A147956

/-! ## A147956.P14013245330736367722

`record[(n+1)/A061579(2*A054494(n+1))]`
-/

namespace A147956.P14013245330736367722
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A061579 (2 * A054494 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147956.P14013245330736367722

namespace A147956

/-- `record[(n+1)/A061579(2*A054494(n+1))]` -/
def P14013245330736367722.Spec : Prop :=
  ∀ n, P14013245330736367722.a n = (A147956 (n + 1) : ℚ)

end A147956

/-!
# A147957: a(n) = ((6 + sqrt(2))^n + (6 - sqrt(2))^n)/2.

The programs for A147957, the canonical program `A147957.P15283061775637171330` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147957 has offset 0).

The definition of A147957 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147957.P15283061775637171330

`12*a(n-1)-34*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A147957

/-- `12*a(n-1)-34*a(n-2)` -/
def P15283061775637171330.Spec : Prop :=
  ∀ n, P15283061775637171330.a n = A147957 n

theorem P15283061775637171330.correct : P15283061775637171330.Spec := by
  intro n
  simp only [A147957]

end A147957

/-! ## A147957.P10237898014629049765

`A163458(n)-A081183(n)`
-/

namespace A147957.P10237898014629049765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163458 n - A081183 n

end

end A147957.P10237898014629049765

namespace A147957

/-- `A163458(n)-A081183(n)` -/
def P10237898014629049765.Spec : Prop :=
  ∀ n, P10237898014629049765.a n = A147957 n

end A147957

/-! ## A147957.P9951455929534713229

`((sqrt(2)+6)^n+(6-sqrt(2))^n)/2`
-/

namespace A147957.P9951455929534713229
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (2 : ℝ) + 6) ^ n + (6 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A147957.P9951455929534713229

namespace A147957

/-- `((sqrt(2)+6)^n+(6-sqrt(2))^n)/2` -/
def P9951455929534713229.Spec : Prop :=
  ∀ n, P9951455929534713229.a n = (A147957 n : ℝ)

theorem P9951455929534713229.correct : P9951455929534713229.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A147957, Nat.add_sub_cancel, A147957.P9951455929534713229.a, A147957.P15283061775637171330.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A147957, Nat.add_sub_cancel, A147957.P9951455929534713229.a, A147957.P15283061775637171330.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A147957

/-! ## A147957.P2442069951305044326

`A163444(n)-2*A081183(n)`
-/

namespace A147957.P2442069951305044326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163444 n - 2 * A081183 n

end

end A147957.P2442069951305044326

namespace A147957

/-- `A163444(n)-2*A081183(n)` -/
def P2442069951305044326.Spec : Prop :=
  ∀ n, P2442069951305044326.a n = A147957 n

end A147957

/-! ## A147957.P12619701535596824999

`2*A163444(n)-A163412(n)`
-/

namespace A147957.P12619701535596824999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163444 n - A163412 n

end

end A147957.P12619701535596824999

namespace A147957

/-- `2*A163444(n)-A163412(n)` -/
def P12619701535596824999.Spec : Prop :=
  ∀ n, P12619701535596824999.a n = A147957 n

end A147957

/-! ## A147957.P9691239012511282458

`2*A163458(n)-A163444(n)`
-/

namespace A147957.P9691239012511282458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163458 n - A163444 n

end

end A147957.P9691239012511282458

namespace A147957

/-- `2*A163458(n)-A163444(n)` -/
def P9691239012511282458.Spec : Prop :=
  ∀ n, P9691239012511282458.a n = A147957 n

end A147957

/-! ## A147957.P13155824111474536799

`4*A163458(n)-A164021(n)`
-/

namespace A147957.P13155824111474536799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A163458 n - A164021 n

end

end A147957.P13155824111474536799

namespace A147957

/-- `4*A163458(n)-A164021(n)` -/
def P13155824111474536799.Spec : Prop :=
  ∀ n, P13155824111474536799.a n = A147957 n

end A147957

/-! ## A147957.P2707068169352986985

`A163458(n+1)%A164021(n)`
-/

namespace A147957.P2707068169352986985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163458 (n + 1)) (A164021 n)

end

end A147957.P2707068169352986985

namespace A147957

/-- `A163458(n+1)%A164021(n)` -/
def P2707068169352986985.Spec : Prop :=
  ∀ n, P2707068169352986985.a n = A147957 n

end A147957

/-!
# A147958: a(n) = ((7 + sqrt(2))^n + (7 - sqrt(2))^n)/2.

The programs for A147958, the canonical program `A147958.P8248710295534629563` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147958 has offset 0).

The definition of A147958 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147958.P8248710295534629563

`14*a(n-1)-47*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A147958

/-- `14*a(n-1)-47*a(n-2)` -/
def P8248710295534629563.Spec : Prop :=
  ∀ n, P8248710295534629563.a n = A147958 n

theorem P8248710295534629563.correct : P8248710295534629563.Spec := by
  intro n
  simp only [A147958]

end A147958

/-! ## A147958.P2015537271080670738

`((sqrt(2)+7)^n+(7-sqrt(2))^n)/2`
-/

namespace A147958.P2015537271080670738
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (2 : ℝ) + 7) ^ n + (7 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A147958.P2015537271080670738

namespace A147958

/-- `((sqrt(2)+7)^n+(7-sqrt(2))^n)/2` -/
def P2015537271080670738.Spec : Prop :=
  ∀ n, P2015537271080670738.a n = (A147958 n : ℝ)

theorem P2015537271080670738.correct : P2015537271080670738.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A147958, Nat.add_sub_cancel, A147958.P2015537271080670738.a, A147958.P8248710295534629563.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A147958, Nat.add_sub_cancel, A147958.P2015537271080670738.a, A147958.P8248710295534629563.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A147958

/-! ## A147958.P11359990590285357090

`A163459(n)-A081184(n)`
-/

namespace A147958.P11359990590285357090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163459 n - A081184 n

end

end A147958.P11359990590285357090

namespace A147958

/-- `A163459(n)-A081184(n)` -/
def P11359990590285357090.Spec : Prop :=
  ∀ n, P11359990590285357090.a n = A147958 n

end A147958

/-! ## A147958.P2929532972558052430

`A163445(n)-2*A081184(n)`
-/

namespace A147958.P2929532972558052430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163445 n - 2 * A081184 n

end

end A147958.P2929532972558052430

namespace A147958

/-- `A163445(n)-2*A081184(n)` -/
def P2929532972558052430.Spec : Prop :=
  ∀ n, P2929532972558052430.a n = A147958 n

end A147958

/-! ## A147958.P5856186555430492707

`A163459(n)+A163459(n)-A163445(n)`
-/

namespace A147958.P5856186555430492707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163459 n + (A163459 n - A163445 n)

end

end A147958.P5856186555430492707

namespace A147958

/-- `A163459(n)+A163459(n)-A163445(n)` -/
def P5856186555430492707.Spec : Prop :=
  ∀ n, P5856186555430492707.a n = A147958 n

end A147958

/-! ## A147958.P6744436774290005943

`2*A163445(n)-A163413(n)`
-/

namespace A147958.P6744436774290005943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163445 n - A163413 n

end

end A147958.P6744436774290005943

namespace A147958

/-- `2*A163445(n)-A163413(n)` -/
def P6744436774290005943.Spec : Prop :=
  ∀ n, P6744436774290005943.a n = A147958 n

end A147958

/-! ## A147958.P3402884974104338316

`2*A163459(n)-A163445(n)`
-/

namespace A147958.P3402884974104338316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163459 n - A163445 n

end

end A147958.P3402884974104338316

namespace A147958

/-- `2*A163459(n)-A163445(n)` -/
def P3402884974104338316.Spec : Prop :=
  ∀ n, P3402884974104338316.a n = A147958 n

end A147958

/-!
# A147959: a(n) = ((8 + sqrt(2))^n + (8 - sqrt(2))^n)/2.

The programs for A147959, the canonical program `A147959.P9910638442327005096` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147959 has offset 0).

The definition of A147959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147959.P9910638442327005096

`16*a(n-1)-62*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A147959

/-- `16*a(n-1)-62*a(n-2)` -/
def P9910638442327005096.Spec : Prop :=
  ∀ n, P9910638442327005096.a n = A147959 n

theorem P9910638442327005096.correct : P9910638442327005096.Spec := by
  intro n
  simp only [A147959]

end A147959

/-! ## A147959.P18078587554102403531

`((sqrt(2)+8)^n+(8-sqrt(2))^n)/2`
-/

namespace A147959.P18078587554102403531
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (2 : ℝ) + 8) ^ n + (8 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A147959.P18078587554102403531

namespace A147959

/-- `((sqrt(2)+8)^n+(8-sqrt(2))^n)/2` -/
def P18078587554102403531.Spec : Prop :=
  ∀ n, P18078587554102403531.a n = (A147959 n : ℝ)

theorem P18078587554102403531.correct : P18078587554102403531.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A147959, Nat.add_sub_cancel, A147959.P18078587554102403531.a, A147959.P9910638442327005096.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A147959, Nat.add_sub_cancel, A147959.P18078587554102403531.a, A147959.P9910638442327005096.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A147959

/-! ## A147959.P518199000639086164

`A163460(n)-A081185(n)`
-/

namespace A147959.P518199000639086164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163460 n - A081185 n

end

end A147959.P518199000639086164

namespace A147959

/-- `A163460(n)-A081185(n)` -/
def P518199000639086164.Spec : Prop :=
  ∀ n, P518199000639086164.a n = A147959 n

end A147959

/-! ## A147959.P5959815754259299924

`A163446(n)-2*A081185(n)`
-/

namespace A147959.P5959815754259299924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163446 n - 2 * A081185 n

end

end A147959.P5959815754259299924

namespace A147959

/-- `A163446(n)-2*A081185(n)` -/
def P5959815754259299924.Spec : Prop :=
  ∀ n, P5959815754259299924.a n = A147959 n

end A147959

/-! ## A147959.P2275433891957215515

`2*A163460(n)-A163446(n)`
-/

namespace A147959.P2275433891957215515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163460 n - A163446 n

end

end A147959.P2275433891957215515

namespace A147959

/-- `2*A163460(n)-A163446(n)` -/
def P2275433891957215515.Spec : Prop :=
  ∀ n, P2275433891957215515.a n = A147959 n

end A147959

/-! ## A147959.P10536514374031296717

`A081185(n+1)-8*A081185(n)`
-/

namespace A147959.P10536514374031296717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081185 (n + 1) - 8 * A081185 n

end

end A147959.P10536514374031296717

namespace A147959

/-- `A081185(n+1)-8*A081185(n)` -/
def P10536514374031296717.Spec : Prop :=
  ∀ n, P10536514374031296717.a n = A147959 n

end A147959

/-! ## A147959.P10197507489821976405

`A163460(A118759(n))-(A163446(n)-A163460(n))`
-/

namespace A147959.P10197507489821976405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163460 (A118759 n).toNat - (A163446 n - A163460 n)

end

end A147959.P10197507489821976405

namespace A147959

/-- `A163460(A118759(n))-(A163446(n)-A163460(n))` -/
def P10197507489821976405.Spec : Prop :=
  ∀ n, P10197507489821976405.a n = A147959 n

end A147959

/-!
# A147960: a(n) = ((9 + sqrt(2))^n + (9 - sqrt(2))^n)/2.

The programs for A147960, the canonical program `A147960.P8666373508841639999` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147960 has offset 0).

The definition of A147960 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147960.P8666373508841639999

`18*a(n-1)-79*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A147960

/-- `18*a(n-1)-79*a(n-2)` -/
def P8666373508841639999.Spec : Prop :=
  ∀ n, P8666373508841639999.a n = A147960 n

theorem P8666373508841639999.correct : P8666373508841639999.Spec := by
  intro n
  simp only [A147960]

end A147960

/-! ## A147960.P4481374122778025622

`((sqrt(2)+9)^n+(9-sqrt(2))^n)/2`
-/

namespace A147960.P4481374122778025622
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (2 : ℝ) + 9) ^ n + (9 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A147960.P4481374122778025622

namespace A147960

/-- `((sqrt(2)+9)^n+(9-sqrt(2))^n)/2` -/
def P4481374122778025622.Spec : Prop :=
  ∀ n, P4481374122778025622.a n = (A147960 n : ℝ)

theorem P4481374122778025622.correct : P4481374122778025622.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A147960, Nat.add_sub_cancel, A147960.P4481374122778025622.a, A147960.P8666373508841639999.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A147960, Nat.add_sub_cancel, A147960.P4481374122778025622.a, A147960.P8666373508841639999.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A147960

/-! ## A147960.P91275653041815063

`2*A163461(n)-A163447(n)`
-/

namespace A147960.P91275653041815063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163461 n - A163447 n

end

end A147960.P91275653041815063

namespace A147960

/-- `2*A163461(n)-A163447(n)` -/
def P91275653041815063.Spec : Prop :=
  ∀ n, P91275653041815063.a n = A147960 n

end A147960

/-! ## A147960.P15175429112122942592

`2*A163447(n)-A163415(n)`
-/

namespace A147960.P15175429112122942592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163447 n - A163415 n

end

end A147960.P15175429112122942592

namespace A147960

/-- `2*A163447(n)-A163415(n)` -/
def P15175429112122942592.Spec : Prop :=
  ∀ n, P15175429112122942592.a n = A147960 n

end A147960

/-! ## A147960.P17449138375279179643

`2*A163415(n)-A164600(n)`
-/

namespace A147960.P17449138375279179643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163415 n - A164600 n

end

end A147960.P17449138375279179643

namespace A147960

/-- `2*A163415(n)-A164600(n)` -/
def P17449138375279179643.Spec : Prop :=
  ∀ n, P17449138375279179643.a n = A147960 n

end A147960

/-! ## A147960.P7100603603905102786

`A163461(n)+A164600(n)-A153593(n+1)`
-/

namespace A147960.P7100603603905102786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163461 n + (A164600 n - A153593 (n + 1))

end

end A147960.P7100603603905102786

namespace A147960

/-- `A163461(n)+A164600(n)-A153593(n+1)` -/
def P7100603603905102786.Spec : Prop :=
  ∀ n, P7100603603905102786.a n = A147960 n

end A147960

/-!
# A147961: a(n) = ((6+sqrt(3))^n + (6-sqrt(3))^n)/2.

The programs for A147961, the canonical program `A147961.P766835372102188457` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147961 has offset 0).

The definition of A147961 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((6+sqrt(3))^n+(6-sqrt(3))^n)/2` (program `A147961.P10984482318842982010`, by `A147961.P10984482318842982010.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147961.P766835372102188457

`12*a(n-1)-33*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A147961

/-- `12*a(n-1)-33*a(n-2)` -/
def P766835372102188457.Spec : Prop :=
  ∀ n, P766835372102188457.a n = A147961 n

theorem P766835372102188457.correct : P766835372102188457.Spec := by
  intro n
  simp only [A147961]

end A147961

/-! ## A147961.P10984482318842982010

`((6+sqrt(3))^n+(6-sqrt(3))^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A147961.P10984482318842982010
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((6 + Real.sqrt (3 : ℝ)) ^ n + (6 - Real.sqrt (3 : ℝ)) ^ n) / 2

end

end A147961.P10984482318842982010

namespace A147961

/-- `((6+sqrt(3))^n+(6-sqrt(3))^n)/2` -/
def P10984482318842982010.Spec : Prop :=
  ∀ n, P10984482318842982010.a n = (A147961 n : ℝ)

theorem P10984482318842982010.correct : P10984482318842982010.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A147961, Nat.add_sub_cancel, A147961.P10984482318842982010.a, A147961.P766835372102188457.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A147961, Nat.add_sub_cancel, A147961.P10984482318842982010.a, A147961.P766835372102188457.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A147961

/-! ## A147961.P8875609437818859812

`A164311(n)-A163472(n)`
-/

namespace A147961.P8875609437818859812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164311 n - A163472 n

end

end A147961.P8875609437818859812

namespace A147961

/-- `A164311(n)-A163472(n)` -/
def P8875609437818859812.Spec : Prop :=
  ∀ n, P8875609437818859812.a n = A147961 n

end A147961

/-! ## A147961.P1923253987338760679

`A164311(n)-3*A162757(n)`
-/

namespace A147961.P1923253987338760679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164311 n - 3 * A162757 n

end

end A147961.P1923253987338760679

namespace A147961

/-- `A164311(n)-3*A162757(n)` -/
def P1923253987338760679.Spec : Prop :=
  ∀ n, P1923253987338760679.a n = A147961 n

end A147961

/-! ## A147961.P2297870892544953892

`A162816(n)-A164311(n)`
-/

namespace A147961.P2297870892544953892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162816 n - A164311 n

end

end A147961.P2297870892544953892

namespace A147961

/-- `A162816(n)-A164311(n)` -/
def P2297870892544953892.Spec : Prop :=
  ∀ n, P2297870892544953892.a n = A147961 n

end A147961

/-!
# A147962: a(n) = ((7+sqrt(3))^n + (7-sqrt(3))^n) / 2.

The programs for A147962, the canonical program `A147962.P15545334599843178835` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147962 has offset 0).

The definition of A147962 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((7+sqrt(3))^n+(7-sqrt(3))^n)/2` (program `A147962.P14553324703069063219`, by `A147962.P14553324703069063219.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147962.P15545334599843178835

`14*a(n-1)-46*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A147962

/-- `14*a(n-1)-46*a(n-2)` -/
def P15545334599843178835.Spec : Prop :=
  ∀ n, P15545334599843178835.a n = A147962 n

theorem P15545334599843178835.correct : P15545334599843178835.Spec := by
  intro n
  simp only [A147962]

end A147962

/-! ## A147962.P14553324703069063219

`((7+sqrt(3))^n+(7-sqrt(3))^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A147962.P14553324703069063219
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((7 + Real.sqrt (3 : ℝ)) ^ n + (7 - Real.sqrt (3 : ℝ)) ^ n) / 2

end

end A147962.P14553324703069063219

namespace A147962

/-- `((7+sqrt(3))^n+(7-sqrt(3))^n)/2` -/
def P14553324703069063219.Spec : Prop :=
  ∀ n, P14553324703069063219.a n = (A147962 n : ℝ)

theorem P14553324703069063219.correct : P14553324703069063219.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A147962, Nat.add_sub_cancel, A147962.P14553324703069063219.a, A147962.P15545334599843178835.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A147962, Nat.add_sub_cancel, A147962.P14553324703069063219.a, A147962.P15545334599843178835.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A147962

/-!
# A147965: a(n) = n + 1 - A001223(n) = n - A046933(n). In words, a(n) is the difference between n+1 and the n-th gap between primes.

The programs for A147965, the canonical program `A147965.P3324423489024112170` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147965 has offset 1).

The definition of A147965 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147965.P3324423489024112170

`n+1-A046933(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A147965

/-- `n+1-A046933(n+1)` -/
def P3324423489024112170.Spec : Prop :=
  ∀ n, P3324423489024112170.a n = A147965 (n + 1)

theorem P3324423489024112170.correct : P3324423489024112170.Spec := by
  intro n
  simp only [A147965, Nat.add_sub_cancel]

end A147965

/-! ## A147965.P11849317799631508240

`n+2-A001223(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A147965.P11849317799631508240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A001223 (n + 1)

end

end A147965.P11849317799631508240

namespace A147965

/-- `n+2-A001223(n+1)` -/
def P11849317799631508240.Spec : Prop :=
  ∀ n, P11849317799631508240.a n = A147965 (n + 1)

theorem P11849317799631508240.correct : P11849317799631508240.Spec := by
  intro n
  simp only [A147965, Nat.add_sub_cancel, A147965.P11849317799631508240.a, A147965.P3324423489024112170.a, A001223, A001223.P5034056745985311719.a, A046933, A046933.P9479947770746769512.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147965

/-! ## A147965.P7983072502846318780

`A141042(n+1)%(n+2)`
-/

namespace A147965.P7983072502846318780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141042 (n + 1)) (n + 2 : ℤ)

end

end A147965.P7983072502846318780

namespace A147965

/-- `A141042(n+1)%(n+2)` -/
def P7983072502846318780.Spec : Prop :=
  ∀ n, P7983072502846318780.a n = A147965 (n + 1)

end A147965

/-! ## A147965.P18328017305285199462

`2-log2(A218075(n+1))+n`
-/

namespace A147965.P18328017305285199462
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 - Real.logb 2 (A218075 (n + 1) : ℝ) + (n : ℝ)

end

end A147965.P18328017305285199462

namespace A147965

/-- `2-log2(A218075(n+1))+n` -/
def P18328017305285199462.Spec : Prop :=
  ∀ n, P18328017305285199462.a n = (A147965 (n + 1) : ℝ)

end A147965

/-! ## A147965.P14993766952889443253

`2*(n+1)-A147966(n+1)`
-/

namespace A147965.P14993766952889443253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A147966 (n + 1)

end

end A147965.P14993766952889443253

namespace A147965

/-- `2*(n+1)-A147966(n+1)` -/
def P14993766952889443253.Spec : Prop :=
  ∀ n, P14993766952889443253.a n = A147965 (n + 1)

theorem P14993766952889443253.correct : P14993766952889443253.Spec := by
  intro n
  simp only [A147965, Nat.add_sub_cancel, A147965.P14993766952889443253.a, A147965.P3324423489024112170.a, A046933, A046933.P9479947770746769512.a, A147966, A147966.P17845740115898667296.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147965

/-! ## A147965.P15193192462974598211

`2*n+3-A123128(n+1)`
-/

namespace A147965.P15193192462974598211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A123128 (n + 1)

end

end A147965.P15193192462974598211

namespace A147965

/-- `2*n+3-A123128(n+1)` -/
def P15193192462974598211.Spec : Prop :=
  ∀ n, P15193192462974598211.a n = A147965 (n + 1)

theorem P15193192462974598211.correct : P15193192462974598211.Spec := by
  intro n
  simp only [A147965, Nat.add_sub_cancel, A147965.P15193192462974598211.a, A147965.P3324423489024112170.a, A046933, A046933.P9479947770746769512.a, A123128, A123128.P14620295915267660605.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147965

/-! ## A147965.P11935210813831409072

`a(n-1)+1-A036263(n)` with `a(0)=1`
-/

namespace A147965.P11935210813831409072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (1 - A036263 n)

end

end A147965.P11935210813831409072

namespace A147965

/-- `a(n-1)+1-A036263(n)` -/
def P11935210813831409072.Spec : Prop :=
  ∀ n, P11935210813831409072.a n = A147965 (n + 1)

end A147965

/-! ## A147965.P11692254297344910826

`n+1-A147967(n+1)/(n+1)`
-/

namespace A147965.P11692254297344910826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A147967 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A147965.P11692254297344910826

namespace A147965

/-- `n+1-A147967(n+1)/(n+1)` -/
def P11692254297344910826.Spec : Prop :=
  ∀ n, P11692254297344910826.a n = (A147965 (n + 1) : ℚ)

end A147965

/-! ## A147965.P16769467986743563127

`A062234(n+1)-A065890(n+1)`
-/

namespace A147965.P16769467986743563127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (n + 1) - A065890 (n + 1)

end

end A147965.P16769467986743563127

namespace A147965

/-- `A062234(n+1)-A065890(n+1)` -/
def P16769467986743563127.Spec : Prop :=
  ∀ n, P16769467986743563127.a n = A147965 (n + 1)

theorem P16769467986743563127.correct : P16769467986743563127.Spec := by
  intro n
  simp only [A147965, Nat.add_sub_cancel, A147965.P16769467986743563127.a, A147965.P3324423489024112170.a, A046933, A046933.P9479947770746769512.a, A062234, A062234.P8592873382335253705.a, A065890, A065890.P15936493256530540462.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147965

/-! ## A147965.P9613157812003538176

`A124115(n+1)-A014692(n+1)`
-/

namespace A147965.P9613157812003538176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124115 (n + 1) - A014692 (n + 1)

end

end A147965.P9613157812003538176

namespace A147965

/-- `A124115(n+1)-A014692(n+1)` -/
def P9613157812003538176.Spec : Prop :=
  ∀ n, P9613157812003538176.a n = A147965 (n + 1)

theorem P9613157812003538176.correct : P9613157812003538176.Spec := by
  intro n
  simp only [A147965, Nat.add_sub_cancel, A147965.P9613157812003538176.a, A147965.P3324423489024112170.a, A014692, A014692.P2004927767556050134.a, A046933, A046933.P9479947770746769512.a, A124115, A124115.P8341029799723134222.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147965

/-! ## A147965.P8413524022348976396

`A123128(n+1)-A100803(n+1)`
-/

namespace A147965.P8413524022348976396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123128 (n + 1) - A100803 (n + 1)

end

end A147965.P8413524022348976396

namespace A147965

/-- `A123128(n+1)-A100803(n+1)` -/
def P8413524022348976396.Spec : Prop :=
  ∀ n, P8413524022348976396.a n = A147965 (n + 1)

theorem P8413524022348976396.correct : P8413524022348976396.Spec := by
  intro n
  simp only [A147965, Nat.add_sub_cancel, A147965.P8413524022348976396.a, A147965.P3324423489024112170.a, A046933, A046933.P9479947770746769512.a, A100803, A100803.P18284078702291543981.a, A123128, A123128.P14620295915267660605.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147965

/-! ## A147965.P4169377243335132088

`A062968(n+1)-A161911(n+1)`
-/

namespace A147965.P4169377243335132088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062968 (n + 1) - A161911 (n + 1)

end

end A147965.P4169377243335132088

namespace A147965

/-- `A062968(n+1)-A161911(n+1)` -/
def P4169377243335132088.Spec : Prop :=
  ∀ n, P4169377243335132088.a n = A147965 (n + 1)

theorem P4169377243335132088.correct : P4169377243335132088.Spec := by
  intro n
  simp only [A147965, Nat.add_sub_cancel, A147965.P4169377243335132088.a, A147965.P3324423489024112170.a, A046933, A046933.P9479947770746769512.a, A062968, A062968.P12745258028289340812.a, A161911, A161911.P18164703308584755265.a, A000005, A000005.P16091521709108585461.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A049820, A049820.P9428372222244335888.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147965

/-! ## A147965.P4579239884504060567

`A134591(n+1)-A108568(n+1)`
-/

namespace A147965.P4579239884504060567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134591 (n + 1) - A108568 (n + 1)

end

end A147965.P4579239884504060567

namespace A147965

/-- `A134591(n+1)-A108568(n+1)` -/
def P4579239884504060567.Spec : Prop :=
  ∀ n, P4579239884504060567.a n = A147965 (n + 1)

theorem P4579239884504060567.correct : P4579239884504060567.Spec := by
  intro n
  simp only [A147965, Nat.add_sub_cancel, A147965.P4579239884504060567.a, A147965.P3324423489024112170.a, A046933, A046933.P9479947770746769512.a, A108568, A108568.P10577643578053520447.a, A134591, A134591.P13784663667261059065.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147965

/-! ## A147965.P12398087044312374795

`n+2-A304117(A082910(n+1))`
-/

namespace A147965.P12398087044312374795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A304117 (A082910 (n + 1)).toNat

end

end A147965.P12398087044312374795

namespace A147965

/-- `n+2-A304117(A082910(n+1))` -/
def P12398087044312374795.Spec : Prop :=
  ∀ n, P12398087044312374795.a n = A147965 (n + 1)

end A147965

/-! ## A147965.P10672812206494309349

`A144396(n+1)%A123128(n+1)`
-/

namespace A147965.P10672812206494309349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144396 (n + 1)) (A123128 (n + 1))

end

end A147965.P10672812206494309349

namespace A147965

/-- `A144396(n+1)%A123128(n+1)` -/
def P10672812206494309349.Spec : Prop :=
  ∀ n, P10672812206494309349.a n = A147965 (n + 1)

end A147965

/-! ## A147965.P14594283243470993702

`A014688(n+1)+1-A065091(n+1)`
-/

namespace A147965.P14594283243470993702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) + (1 - A065091 (n + 1))

end

end A147965.P14594283243470993702

namespace A147965

/-- `A014688(n+1)+1-A065091(n+1)` -/
def P14594283243470993702.Spec : Prop :=
  ∀ n, P14594283243470993702.a n = A147965 (n + 1)

end A147965

/-! ## A147965.P15958640727154308476

`A014689(n+1)-2*A008507(n+1)`
-/

namespace A147965.P15958640727154308476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) - 2 * A008507 (n + 1)

end

end A147965.P15958640727154308476

namespace A147965

/-- `A014689(n+1)-2*A008507(n+1)` -/
def P15958640727154308476.Spec : Prop :=
  ∀ n, P15958640727154308476.a n = A147965 (n + 1)

end A147965

/-! ## A147965.P8921801894158465157

`A062234(n+1)-A040976(n+1)+n`
-/

namespace A147965.P8921801894158465157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (n + 1) - A040976 (n + 1) + (n : ℤ)

end

end A147965.P8921801894158465157

namespace A147965

/-- `A062234(n+1)-A040976(n+1)+n` -/
def P8921801894158465157.Spec : Prop :=
  ∀ n, P8921801894158465157.a n = A147965 (n + 1)

theorem P8921801894158465157.correct : P8921801894158465157.Spec := by
  intro n
  simp only [A147965, Nat.add_sub_cancel, A147965.P8921801894158465157.a, A147965.P3324423489024112170.a, A040976, A040976.P11599754272797435513.a, A046933, A046933.P9479947770746769512.a, A062234, A062234.P8592873382335253705.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147965

/-! ## A147965.P14307658372494744386

`A000040(n+1)-(A008507(n+1)+A005097(n+1))`
-/

namespace A147965.P14307658372494744386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (A008507 (n + 1) + A005097 (n + 1))

end

end A147965.P14307658372494744386

namespace A147965

/-- `A000040(n+1)-(A008507(n+1)+A005097(n+1))` -/
def P14307658372494744386.Spec : Prop :=
  ∀ n, P14307658372494744386.a n = A147965 (n + 1)

end A147965

/-! ## A147965.P7456456875824128354

`n-Δ[A131733(n+1)]`
-/

namespace A147965.P7456456875824128354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A147965.P7456456875824128354

namespace A147965

/-- `n-Δ[A131733(n+1)]` -/
def P7456456875824128354.Spec : Prop :=
  ∀ n, P7456456875824128354.a n = A147965 (n + 1)

theorem P7456456875824128354.correct : P7456456875824128354.Spec := by
  intro n
  simp only [A147965, Nat.add_sub_cancel, A147965.P7456456875824128354.f1, A147965.P7456456875824128354.a, A147965.P3324423489024112170.a, A046933, A046933.P9479947770746769512.a, A131733, A131733.P2209471722626615476.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147965

/-!
# A147966: a(n) = n+(A001223(n)-1) = n+A046933(n).

The programs for A147966, the canonical program `A147966.P17845740115898667296` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147966 has offset 1).

The definition of A147966 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147966.P17845740115898667296

`n+A001223(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A147966

/-- `n+A001223(n+1)` -/
def P17845740115898667296.Spec : Prop :=
  ∀ n, P17845740115898667296.a n = A147966 (n + 1)

theorem P17845740115898667296.correct : P17845740115898667296.Spec := by
  intro n
  simp only [A147966, Nat.add_sub_cancel]

end A147966

/-! ## A147966.P17256946673873665980

`n+1+A046933(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A147966.P17256946673873665980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A046933 (n + 1)

end

end A147966.P17256946673873665980

namespace A147966

/-- `n+1+A046933(n+1)` -/
def P17256946673873665980.Spec : Prop :=
  ∀ n, P17256946673873665980.a n = A147966 (n + 1)

theorem P17256946673873665980.correct : P17256946673873665980.Spec := by
  intro n
  simp only [A147966, Nat.add_sub_cancel, A147966.P17256946673873665980.a, A147966.P17845740115898667296.a, A001223, A001223.P5034056745985311719.a, A046933, A046933.P9479947770746769512.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147966

/-! ## A147966.P15433375851330606306

`n+1+A001223(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A147966.P15433375851330606306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A001223 (n + 1) - 1)

end

end A147966.P15433375851330606306

namespace A147966

/-- `n+1+A001223(n+1)-1` -/
def P15433375851330606306.Spec : Prop :=
  ∀ n, P15433375851330606306.a n = A147966 (n + 1)

theorem P15433375851330606306.correct : P15433375851330606306.Spec := by
  intro n
  simp only [A147966, Nat.add_sub_cancel, A147966.P15433375851330606306.a, A147966.P17845740115898667296.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A147966

/-! ## A147966.P13604979406825755989

`A123128(n+1)-1`
-/

namespace A147966.P13604979406825755989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123128 (n + 1) - 1

end

end A147966.P13604979406825755989

namespace A147966

/-- `A123128(n+1)-1` -/
def P13604979406825755989.Spec : Prop :=
  ∀ n, P13604979406825755989.a n = A147966 (n + 1)

theorem P13604979406825755989.correct : P13604979406825755989.Spec := by
  intro n
  simp only [A147966, Nat.add_sub_cancel, A147966.P13604979406825755989.a, A147966.P17845740115898667296.a, A001223, A001223.P5034056745985311719.a, A123128, A123128.P14620295915267660605.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147966

/-! ## A147966.P16667661759625972692

`sqrt(A076821(n+1))+n`
-/

namespace A147966.P16667661759625972692
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A076821 (n + 1) : ℝ) + (n : ℝ)

end

end A147966.P16667661759625972692

namespace A147966

/-- `sqrt(A076821(n+1))+n` -/
def P16667661759625972692.Spec : Prop :=
  ∀ n, P16667661759625972692.a n = (A147966 (n + 1) : ℝ)

end A147966

/-! ## A147966.P406853575706066990

`2*(n+1)-A147965(n+1)`
-/

namespace A147966.P406853575706066990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A147965 (n + 1)

end

end A147966.P406853575706066990

namespace A147966

/-- `2*(n+1)-A147965(n+1)` -/
def P406853575706066990.Spec : Prop :=
  ∀ n, P406853575706066990.a n = A147966 (n + 1)

theorem P406853575706066990.correct : P406853575706066990.Spec := by
  intro n
  simp only [A147966, Nat.add_sub_cancel, A147966.P406853575706066990.a, A147966.P17845740115898667296.a, A001223, A001223.P5034056745985311719.a, A147965, A147965.P3324423489024112170.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147966

/-! ## A147966.P17950181531206612241

`A141042(n+1)/(n+1)+n`
-/

namespace A147966.P17950181531206612241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141042 (n + 1) : ℚ) / (n + 1 : ℚ) + (n : ℚ)

end

end A147966.P17950181531206612241

namespace A147966

/-- `A141042(n+1)/(n+1)+n` -/
def P17950181531206612241.Spec : Prop :=
  ∀ n, P17950181531206612241.a n = (A147966 (n + 1) : ℚ)

theorem P17950181531206612241.correct : P17950181531206612241.Spec := by
  intro n
  simp only [A147966, Nat.add_sub_cancel, A147966.P17950181531206612241.a, A147966.P17845740115898667296.a, A001223, A001223.P5034056745985311719.a, A141042, A141042.P12825020349384849254.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147966

/-! ## A147966.P12365687728662997130

`A147967(n+1)/(n+1)+n+1`
-/

namespace A147966.P12365687728662997130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147967 (n + 1) : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)

end

end A147966.P12365687728662997130

namespace A147966

/-- `A147967(n+1)/(n+1)+n+1` -/
def P12365687728662997130.Spec : Prop :=
  ∀ n, P12365687728662997130.a n = (A147966 (n + 1) : ℚ)

theorem P12365687728662997130.correct : P12365687728662997130.Spec := by
  intro n
  simp only [A147966, Nat.add_sub_cancel, A147966.P12365687728662997130.a, A147966.P17845740115898667296.a, A001223, A001223.P5034056745985311719.a, A147967, A147967.P11868943010124678636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147966

/-! ## A147966.P15570800328785399059

`A304117(A082910(n+1))+n`
-/

namespace A147966.P15570800328785399059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304117 (A082910 (n + 1)).toNat + (n : ℤ)

end

end A147966.P15570800328785399059

namespace A147966

/-- `A304117(A082910(n+1))+n` -/
def P15570800328785399059.Spec : Prop :=
  ∀ n, P15570800328785399059.a n = A147966 (n + 1)

end A147966

/-! ## A147966.P12893367359494461690

`A014690(n+1)%A008864(n+1)`
-/

namespace A147966.P12893367359494461690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014690 (n + 1)) (A008864 (n + 1))

end

end A147966.P12893367359494461690

namespace A147966

/-- `A014690(n+1)%A008864(n+1)` -/
def P12893367359494461690.Spec : Prop :=
  ∀ n, P12893367359494461690.a n = A147966 (n + 1)

end A147966

/-! ## A147966.P1104176759721038711

`A075526(n+1)+n`
-/

namespace A147966.P1104176759721038711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 (n + 1) + (n : ℤ)

end

end A147966.P1104176759721038711

namespace A147966

/-- `A075526(n+1)+n` -/
def P1104176759721038711.Spec : Prop :=
  ∀ n, P1104176759721038711.a n = A147966 (n + 1)

end A147966

/-! ## A147966.P7304336856751767440

`A054541(n+2)+n`
-/

namespace A147966.P7304336856751767440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 2) + (n : ℤ)

end

end A147966.P7304336856751767440

namespace A147966

/-- `A054541(n+2)+n` -/
def P7304336856751767440.Spec : Prop :=
  ∀ n, P7304336856751767440.a n = A147966 (n + 1)

end A147966

/-! ## A147966.P14251405278667724120

`A125266(n+2)+n`
-/

namespace A147966.P14251405278667724120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 2) + (n : ℤ)

end

end A147966.P14251405278667724120

namespace A147966

/-- `A125266(n+2)+n` -/
def P14251405278667724120.Spec : Prop :=
  ∀ n, P14251405278667724120.a n = A147966 (n + 1)

end A147966

/-! ## A147966.P3872308652204402877

`Δ[Δ[A007504(n)]]+n`
-/

namespace A147966.P3872308652204402877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A147966.P3872308652204402877

namespace A147966

/-- `Δ[Δ[A007504(n)]]+n` -/
def P3872308652204402877.Spec : Prop :=
  ∀ n, P3872308652204402877.a n = A147966 (n + 1)

end A147966

/-! ## A147966.P12518868477420293179

`Δ[A000040(n+1)]+n`
-/

namespace A147966.P12518868477420293179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A147966.P12518868477420293179

namespace A147966

/-- `Δ[A000040(n+1)]+n` -/
def P12518868477420293179.Spec : Prop :=
  ∀ n, P12518868477420293179.a n = A147966 (n + 1)

theorem P12518868477420293179.correct : P12518868477420293179.Spec := by
  intro n
  simp only [A147966, Nat.add_sub_cancel, A147966.P12518868477420293179.f1, A147966.P12518868477420293179.a, A147966.P17845740115898667296.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147966

/-! ## A147966.P15619185878989807253

`Δ[A006093(n+1)]+n`
-/

namespace A147966.P15619185878989807253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A147966.P15619185878989807253

namespace A147966

/-- `Δ[A006093(n+1)]+n` -/
def P15619185878989807253.Spec : Prop :=
  ∀ n, P15619185878989807253.a n = A147966 (n + 1)

theorem P15619185878989807253.correct : P15619185878989807253.Spec := by
  intro n
  simp only [A147966, Nat.add_sub_cancel, A147966.P15619185878989807253.f1, A147966.P15619185878989807253.a, A147966.P17845740115898667296.a, A001223, A001223.P5034056745985311719.a, A006093, A006093.P2906174024863549003.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147966

/-! ## A147966.P3972023830720116930

`Δ[A008864(n+1)]+n`
-/

namespace A147966.P3972023830720116930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A147966.P3972023830720116930

namespace A147966

/-- `Δ[A008864(n+1)]+n` -/
def P3972023830720116930.Spec : Prop :=
  ∀ n, P3972023830720116930.a n = A147966 (n + 1)

theorem P3972023830720116930.correct : P3972023830720116930.Spec := by
  intro n
  simp only [A147966, Nat.add_sub_cancel, A147966.P3972023830720116930.f1, A147966.P3972023830720116930.a, A147966.P17845740115898667296.a, A001223, A001223.P5034056745985311719.a, A008864, A008864.P9177617808325052279.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147966

/-! ## A147966.P8949662535647250767

`Δ[A028815(n+1)]+n`
-/

namespace A147966.P8949662535647250767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A147966.P8949662535647250767

namespace A147966

/-- `Δ[A028815(n+1)]+n` -/
def P8949662535647250767.Spec : Prop :=
  ∀ n, P8949662535647250767.a n = A147966 (n + 1)

end A147966

/-! ## A147966.P6792688714530248283

`Δ[A040976(n+1)]+n`
-/

namespace A147966.P6792688714530248283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A147966.P6792688714530248283

namespace A147966

/-- `Δ[A040976(n+1)]+n` -/
def P6792688714530248283.Spec : Prop :=
  ∀ n, P6792688714530248283.a n = A147966 (n + 1)

theorem P6792688714530248283.correct : P6792688714530248283.Spec := by
  intro n
  simp only [A147966, Nat.add_sub_cancel, A147966.P6792688714530248283.f1, A147966.P6792688714530248283.a, A147966.P17845740115898667296.a, A001223, A001223.P5034056745985311719.a, A040976, A040976.P11599754272797435513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147966

/-! ## A147966.P2970908383009684155

`Δ[A052147(n+1)]+n`
-/

namespace A147966.P2970908383009684155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A147966.P2970908383009684155

namespace A147966

/-- `Δ[A052147(n+1)]+n` -/
def P2970908383009684155.Spec : Prop :=
  ∀ n, P2970908383009684155.a n = A147966 (n + 1)

theorem P2970908383009684155.correct : P2970908383009684155.Spec := by
  intro n
  simp only [A147966, Nat.add_sub_cancel, A147966.P2970908383009684155.f1, A147966.P2970908383009684155.a, A147966.P17845740115898667296.a, A001223, A001223.P5034056745985311719.a, A052147, A052147.P15217781913070555828.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147966

/-!
# A147967: a(n) = n*(A001223(n)-1) = n*A046933(n).

The programs for A147967, the canonical program `A147967.P11868943010124678636` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147967 has offset 1).

The definition of A147967 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147967.P11868943010124678636

`(n+1)*A046933(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A147967

/-- `(n+1)*A046933(n+1)` -/
def P11868943010124678636.Spec : Prop :=
  ∀ n, P11868943010124678636.a n = A147967 (n + 1)

theorem P11868943010124678636.correct : P11868943010124678636.Spec := by
  intro n
  simp only [A147967, Nat.add_sub_cancel]

end A147967

/-! ## A147967.P11060290628781167465

`(n+1)*(A001223(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A147967.P11060290628781167465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A001223 (n + 1) - 1)

end

end A147967.P11060290628781167465

namespace A147967

/-- `(n+1)*(A001223(n+1)-1)` -/
def P11060290628781167465.Spec : Prop :=
  ∀ n, P11060290628781167465.a n = A147967 (n + 1)

end A147967

/-! ## A147967.P15858738400583661702

`A141042(n+1)-(n+1)`
-/

namespace A147967.P15858738400583661702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141042 (n + 1) - (n + 1 : ℤ)

end

end A147967.P15858738400583661702

namespace A147967

/-- `A141042(n+1)-(n+1)` -/
def P15858738400583661702.Spec : Prop :=
  ∀ n, P15858738400583661702.a n = A147967 (n + 1)

theorem P15858738400583661702.correct : P15858738400583661702.Spec := by
  intro n
  simp only [A147967, Nat.add_sub_cancel, A147967.P15858738400583661702.a, A147967.P11868943010124678636.a, A046933, A046933.P9479947770746769512.a, A141042, A141042.P12825020349384849254.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147967

/-! ## A147967.P2806478066289082327

`(n+1)*(n+1-A147965(n+1))`
-/

namespace A147967.P2806478066289082327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) - A147965 (n + 1))

end

end A147967.P2806478066289082327

namespace A147967

/-- `(n+1)*(n+1-A147965(n+1))` -/
def P2806478066289082327.Spec : Prop :=
  ∀ n, P2806478066289082327.a n = A147967 (n + 1)

theorem P2806478066289082327.correct : P2806478066289082327.Spec := by
  intro n
  simp only [A147967, Nat.add_sub_cancel, A147967.P2806478066289082327.a, A147967.P11868943010124678636.a, A046933, A046933.P9479947770746769512.a, A147965, A147965.P3324423489024112170.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147967

/-! ## A147967.P18182798358958134628

`(n+1)*(A147966(n+1)-(n+1))`
-/

namespace A147967.P18182798358958134628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A147966 (n + 1) - (n + 1 : ℤ))

end

end A147967.P18182798358958134628

namespace A147967

/-- `(n+1)*(A147966(n+1)-(n+1))` -/
def P18182798358958134628.Spec : Prop :=
  ∀ n, P18182798358958134628.a n = A147967 (n + 1)

theorem P18182798358958134628.correct : P18182798358958134628.Spec := by
  intro n
  simp only [A147967, Nat.add_sub_cancel, A147967.P18182798358958134628.a, A147967.P11868943010124678636.a, A046933, A046933.P9479947770746769512.a, A147966, A147966.P17845740115898667296.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147967

/-! ## A147967.P14071528780450251480

`(n+1)*(A123128(n+1)-(n+2))`
-/

namespace A147967.P14071528780450251480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A123128 (n + 1) - (n + 2 : ℤ))

end

end A147967.P14071528780450251480

namespace A147967

/-- `(n+1)*(A123128(n+1)-(n+2))` -/
def P14071528780450251480.Spec : Prop :=
  ∀ n, P14071528780450251480.a n = A147967 (n + 1)

theorem P14071528780450251480.correct : P14071528780450251480.Spec := by
  intro n
  simp only [A147967, Nat.add_sub_cancel, A147967.P14071528780450251480.a, A147967.P11868943010124678636.a, A046933, A046933.P9479947770746769512.a, A123128, A123128.P14620295915267660605.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147967

/-! ## A147967.P7431317189931829464

`A033287(n)-A014690(n+1)`
-/

namespace A147967.P7431317189931829464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033287 n - A014690 (n + 1)

end

end A147967.P7431317189931829464

namespace A147967

/-- `A033287(n)-A014690(n+1)` -/
def P7431317189931829464.Spec : Prop :=
  ∀ n, P7431317189931829464.a n = A147967 (n + 1)

theorem P7431317189931829464.correct : P7431317189931829464.Spec := by
  intro n
  simp only [A147967, Nat.add_sub_cancel, A147967.P7431317189931829464.a, A147967.P11868943010124678636.a, A014690, A014690.P15659938011012629912.a, A033287, A033287.P5066765549217672205.a, A046933, A046933.P9479947770746769512.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A062357, A062357.P6547862121818116138.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147967

/-! ## A147967.P15476815929449738635

`A062357(n+1)+A014689(n+1)`
-/

namespace A147967.P15476815929449738635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062357 (n + 1) + A014689 (n + 1)

end

end A147967.P15476815929449738635

namespace A147967

/-- `A062357(n+1)+A014689(n+1)` -/
def P15476815929449738635.Spec : Prop :=
  ∀ n, P15476815929449738635.a n = A147967 (n + 1)

theorem P15476815929449738635.correct : P15476815929449738635.Spec := by
  intro n
  simp only [A147967, Nat.add_sub_cancel, A147967.P15476815929449738635.a, A147967.P11868943010124678636.a, A014689, A014689.P6286543075765329050.a, A046933, A046933.P9479947770746769512.a, A062357, A062357.P6547862121818116138.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147967

/-! ## A147967.P17447203270080337103

`A247380(n+1)-A014688(n+1)`
-/

namespace A147967.P17447203270080337103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247380 (n + 1) - A014688 (n + 1)

end

end A147967.P17447203270080337103

namespace A147967

/-- `A247380(n+1)-A014688(n+1)` -/
def P17447203270080337103.Spec : Prop :=
  ∀ n, P17447203270080337103.a n = A147967 (n + 1)

end A147967

/-! ## A147967.P8314169800608962254

`(n+1)*A023443(A001223(n+1))`
-/

namespace A147967.P8314169800608962254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A023443 (A001223 (n + 1)).toNat

end

end A147967.P8314169800608962254

namespace A147967

/-- `(n+1)*A023443(A001223(n+1))` -/
def P8314169800608962254.Spec : Prop :=
  ∀ n, P8314169800608962254.a n = A147967 (n + 1)

end A147967

/-! ## A147967.P11358577749867371476

`(n+1)*A004524(A100803(n+1))`
-/

namespace A147967.P11358577749867371476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004524 (A100803 (n + 1)).toNat

end

end A147967.P11358577749867371476

namespace A147967

/-- `(n+1)*A004524(A100803(n+1))` -/
def P11358577749867371476.Spec : Prop :=
  ∀ n, P11358577749867371476.a n = A147967 (n + 1)

end A147967

/-! ## A147967.P197712382546558581

`(n+1)*A033270(A082910(n+1))`
-/

namespace A147967.P197712382546558581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A033270 (A082910 (n + 1)).toNat

end

end A147967.P197712382546558581

namespace A147967

/-- `(n+1)*A033270(A082910(n+1))` -/
def P197712382546558581.Spec : Prop :=
  ∀ n, P197712382546558581.a n = A147967 (n + 1)

end A147967

/-! ## A147967.P6296693488247206407

`A005097(n+1)*A005843(n+1)-A033286(n+1)`
-/

namespace A147967.P6296693488247206407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) * A005843 (n + 1) - A033286 (n + 1)

end

end A147967.P6296693488247206407

namespace A147967

/-- `A005097(n+1)*A005843(n+1)-A033286(n+1)` -/
def P6296693488247206407.Spec : Prop :=
  ∀ n, P6296693488247206407.a n = A147967 (n + 1)

end A147967

/-! ## A147967.P10574182624331970808

`Δ[A152535(n+1)]-(n+1)`
-/

namespace A147967.P10574182624331970808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A147967.P10574182624331970808

namespace A147967

/-- `Δ[A152535(n+1)]-(n+1)` -/
def P10574182624331970808.Spec : Prop :=
  ∀ n, P10574182624331970808.a n = A147967 (n + 1)

end A147967

/-! ## A147967.P1329418750969929494

`(n+1)*Δ[A014692(n+1)]`
-/

namespace A147967.P1329418750969929494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A147967.P1329418750969929494

namespace A147967

/-- `(n+1)*Δ[A014692(n+1)]` -/
def P1329418750969929494.Spec : Prop :=
  ∀ n, P1329418750969929494.a n = A147967 (n + 1)

theorem P1329418750969929494.correct : P1329418750969929494.Spec := by
  intro n
  simp only [A147967, Nat.add_sub_cancel, A147967.P1329418750969929494.f1, A147967.P1329418750969929494.a, A147967.P11868943010124678636.a, A014692, A014692.P2004927767556050134.a, A046933, A046933.P9479947770746769512.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147967

/-! ## A147967.P14443498941392066760

`(n+1)*Δ[A065890(n+1)]`
-/

namespace A147967.P14443498941392066760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A147967.P14443498941392066760

namespace A147967

/-- `(n+1)*Δ[A065890(n+1)]` -/
def P14443498941392066760.Spec : Prop :=
  ∀ n, P14443498941392066760.a n = A147967 (n + 1)

theorem P14443498941392066760.correct : P14443498941392066760.Spec := by
  intro n
  simp only [A147967, Nat.add_sub_cancel, A147967.P14443498941392066760.f1, A147967.P14443498941392066760.a, A147967.P11868943010124678636.a, A046933, A046933.P9479947770746769512.a, A065890, A065890.P15936493256530540462.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014689, A014689.P6286543075765329050.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147967

/-! ## A147967.P4890354204307682707

`(n+1)*(A075526(n+1)-1)`
-/

namespace A147967.P4890354204307682707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A075526 (n + 1) - 1)

end

end A147967.P4890354204307682707

namespace A147967

/-- `(n+1)*(A075526(n+1)-1)` -/
def P4890354204307682707.Spec : Prop :=
  ∀ n, P4890354204307682707.a n = A147967 (n + 1)

end A147967

/-! ## A147967.P13333684356573504788

`(n+1)*(A054541(n+2)-1)`
-/

namespace A147967.P13333684356573504788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A054541 (n + 2) - 1)

end

end A147967.P13333684356573504788

namespace A147967

/-- `(n+1)*(A054541(n+2)-1)` -/
def P13333684356573504788.Spec : Prop :=
  ∀ n, P13333684356573504788.a n = A147967 (n + 1)

end A147967

/-! ## A147967.P13147699642768269941

`(n+1)*(A230847(n+2)-2)`
-/

namespace A147967.P13147699642768269941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A230847 (n + 2) - 2)

end

end A147967.P13147699642768269941

namespace A147967

/-- `(n+1)*(A230847(n+2)-2)` -/
def P13147699642768269941.Spec : Prop :=
  ∀ n, P13147699642768269941.a n = A147967 (n + 1)

end A147967

/-! ## A147967.P15456333176932766085

`(n+1)*(Δ[A000040(n+1)]-1)`
-/

namespace A147967.P15456333176932766085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n - 1)

end

end A147967.P15456333176932766085

namespace A147967

/-- `(n+1)*(Δ[A000040(n+1)]-1)` -/
def P15456333176932766085.Spec : Prop :=
  ∀ n, P15456333176932766085.a n = A147967 (n + 1)

theorem P15456333176932766085.correct : P15456333176932766085.Spec := by
  intro n
  simp only [A147967, Nat.add_sub_cancel, A147967.P15456333176932766085.f1, A147967.P15456333176932766085.a, A147967.P11868943010124678636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147967

/-!
# A147969: Smallest prime p modulo which numbers 1,2,...,n are quadratic residues.

The programs for A147969, there is no canonical definition to state claims against.
-/

/-! ## A147969.P11960288466036677135

`A147970(A000005(3^A000720(n+1)))`
-/

namespace A147969.P11960288466036677135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147970 (A000005 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A000720 (n + 1) : ℤ))).toNat).toNat

end

end A147969.P11960288466036677135

/-!
# A147970: Primes corresponding to the records in the sequence of smallest positive quadratic nonresidues (A053760).

The programs for A147970, there is no canonical definition to state claims against.
-/

/-! ## A147970.P3474865394274350032

`A000040(A147971(n+1))`
-/

namespace A147970.P3474865394274350032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A147971 (n + 1)).toNat

end

end A147970.P3474865394274350032

/-! ## A147970.P11414545590929140479

`record[A147969(ceil((n+2)%6/4)+n)]`
-/

namespace A147970.P11414545590929140479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147969 (⌈(((n + 2) % 6 : ℕ) : ℚ) / 4⌉ + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147970.P11414545590929140479

/-! ## A147970.P335770426943421271

`record[A147969(A304740(n))]`
-/

namespace A147970.P335770426943421271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147969 (A304740 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147970.P335770426943421271

/-! ## A147970.P16685972848704835253

`record[A147969(A000010(n+1))]`
-/

namespace A147970.P16685972848704835253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147969 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147970.P16685972848704835253

/-! ## A147970.P9979915669983338416

`record[A147969(A002322(n+1))]`
-/

namespace A147970.P9979915669983338416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147969 (A002322 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147970.P9979915669983338416

/-!
# A147971: Indices of the records in the sequence of smallest positive quadratic nonresidues (A053760).

The programs for A147971, there is no canonical definition to state claims against.
-/

/-! ## A147971.P4401723800772456297

`A000720(A147970(n+1))`
-/

namespace A147971.P4401723800772456297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A147970 (n + 1)).toNat

end

end A147971.P4401723800772456297

/-! ## A147971.P11257491925654131150

`A061395(2*A147970(n+1))`
-/

namespace A147971.P11257491925654131150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A147970 (n + 1)).toNat

end

end A147971.P11257491925654131150

/-! ## A147971.P13248874953219915055

`A061395(lcm(2, A147970(n+1)))`
-/

namespace A147971.P13248874953219915055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A147970 (n + 1)))

end

end A147971.P13248874953219915055

/-!
# A147972: Smallest prime p modulo which the first n primes are nonzero quadratic residues.

The programs for A147972, there is no canonical definition to state claims against.
-/

/-! ## A147972.P15906969303320221522

`A147969(p?[comp[n²]])`
-/

namespace A147972.P15906969303320221522
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147969 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A147972.P15906969303320221522

/-! ## A147972.P13492817496598545745

`A147969(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A147972.P13492817496598545745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147969 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A147972.P13492817496598545745

/-! ## A147972.P10273168993961941449

`A147969(∏{p}[p?[round(8*n/7)]², #])`
-/

namespace A147972.P10273168993961941449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147969 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A147972.P10273168993961941449

/-! ## A147972.P16396707028032654469

`A147969(2*floor(p?[2*n+1]/2))`
-/

namespace A147972.P16396707028032654469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147969 (2 * ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2⌋).toNat

end

end A147972.P16396707028032654469

/-! ## A147972.P12928344728269863956

`A147969(ceil(acot(n))+p?[2*n+1]-3)`
-/

namespace A147972.P12928344728269863956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147969 (⌈SequenceMachineLib.acot (n : ℝ)⌉ + ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 3)).toNat

end

end A147972.P12928344728269863956

/-!
# A147973: a(n) = -2*n^2 + 12*n - 14.

The programs for A147973, the canonical program `A147973.P3363999461709547637` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147973 has offset 1).

The definition of A147973 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-2*(n+1)²+12*(n+1)-14` (program `A147973.P3363999461709547637`, by `A147973.P3363999461709547637.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147973.P3363999461709547637

`-2*(n+1)²+12*(n+1)-14`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A147973

/-- `-2*(n+1)²+12*(n+1)-14` -/
def P3363999461709547637.Spec : Prop :=
  ∀ n, P3363999461709547637.a n = A147973 (n + 1)

theorem P3363999461709547637.correct : P3363999461709547637.Spec := by
  intro n
  simp only [A147973, Nat.add_sub_cancel]

end A147973

/-! ## A147973.P12117243150271035720

`∑[a(n-1)-4]` with `a(0)=-4, a(1)=6`
-/

namespace A147973.P12117243150271035720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-4, 6] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147973.P12117243150271035720

namespace A147973

/-- `∑[a(n-1)-4]` -/
def P12117243150271035720.Spec : Prop :=
  ∀ n, P12117243150271035720.a n = A147973 (n + 1)

end A147973

/-! ## A147973.P15398520070801498228

`-or(4, 2*n*(n-4))`
-/

namespace A147973.P15398520070801498228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 4 (2 * ((n : ℤ) * ((n : ℤ) - 4)))

end

end A147973.P15398520070801498228

namespace A147973

/-- `-or(4, 2*n*(n-4))` -/
def P15398520070801498228.Spec : Prop :=
  ∀ n, P15398520070801498228.a n = A147973 (n + 1)

end A147973

/-! ## A147973.P13827565277862182494

`-xor(4, 2*n*(n-4))`
-/

namespace A147973.P13827565277862182494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 4 (2 * ((n : ℤ) * ((n : ℤ) - 4)))

end

end A147973.P13827565277862182494

namespace A147973

/-- `-xor(4, 2*n*(n-4))` -/
def P13827565277862182494.Spec : Prop :=
  ∀ n, P13827565277862182494.a n = A147973 (n + 1)

end A147973

/-! ## A147973.P462097014847953344

`∑{d}[-a(n-1), #-(2-n)²]` with `a(0)=3`
-/

namespace A147973.P462097014847953344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d : ℤ) - (2 - (n : ℤ)) ^ 2)

end

end A147973.P462097014847953344

namespace A147973

/-- `∑{d}[-a(n-1), #-(2-n)²]` -/
def P462097014847953344.Spec : Prop :=
  ∀ n, P462097014847953344.a n = A147973 (n + 1)

end A147973

/-! ## A147973.P13340679115000988012

`2*A022958(A022958(n)²)`
-/

namespace A147973.P13340679115000988012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022958 (A022958 n ^ 2).toNat

end

end A147973.P13340679115000988012

namespace A147973

/-- `2*A022958(A022958(n)²)` -/
def P13340679115000988012.Spec : Prop :=
  ∀ n, P13340679115000988012.a n = A147973 (n + 1)

end A147973

/-!
# A147974: a(n) = n^3-((n-1)^3+(n-2)^3+(n-3)^3).

The programs for A147974, the canonical program `A147974.P14657821766977351545` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147974 has offset 1).

The definition of A147974 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^3-(n^3+(n-1)^3+(n-2)^3)` (program `A147974.P14657821766977351545`, by `A147974.P14657821766977351545.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147974.P14657821766977351545

`(n+1)^3-(n^3+(n-1)^3+(n-2)^3)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A147974

/-- `(n+1)^3-(n^3+(n-1)^3+(n-2)^3)` -/
def P14657821766977351545.Spec : Prop :=
  ∀ n, P14657821766977351545.a n = A147974 (n + 1)

theorem P14657821766977351545.correct : P14657821766977351545.Spec := by
  intro n
  simp only [A147974, Nat.add_sub_cancel]

end A147974

/-! ## A147974.P2479074670722564019

`(4*C(n, 2)+2)*(5-n)`
-/

namespace A147974.P2479074670722564019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * Nat.choose n 2 + 2 : ℤ) * (5 - (n : ℤ))

end

end A147974.P2479074670722564019

namespace A147974

/-- `(4*C(n, 2)+2)*(5-n)` -/
def P2479074670722564019.Spec : Prop :=
  ∀ n, P2479074670722564019.a n = A147974 (n + 1)

theorem P2479074670722564019.correct : P2479074670722564019.Spec := by
  intro n
  simp only [A147974, Nat.add_sub_cancel, A147974.P2479074670722564019.a, A147974.P14657821766977351545.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A147974

/-! ## A147974.P13069740142741651886

`(5-n)*∑[a(n-1)+4]` with `a(0)=2, a(1)=0`
-/

namespace A147974.P13069740142741651886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 - (n : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A147974.P13069740142741651886

namespace A147974

/-- `(5-n)*∑[a(n-1)+4]` -/
def P13069740142741651886.Spec : Prop :=
  ∀ n, P13069740142741651886.a n = A147974 (n + 1)

end A147974

/-! ## A147974.P12712502689954126016

`(5-n)*A051890(n)`
-/

namespace A147974.P12712502689954126016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 - (n : ℤ)) * A051890 n

end

end A147974.P12712502689954126016

namespace A147974

/-- `(5-n)*A051890(n)` -/
def P12712502689954126016.Spec : Prop :=
  ∀ n, P12712502689954126016.a n = A147974 (n + 1)

theorem P12712502689954126016.correct : P12712502689954126016.Spec := by
  intro n
  simp only [A147974, Nat.add_sub_cancel, A147974.P12712502689954126016.a, A147974.P14657821766977351545.a, A051890, A051890.P17202989188408252135.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147974

/-!
# A147975: a(n) = 4^n-3^n-2^n-1.

The programs for A147975, the canonical program `A147975.P1263960409103768383` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147975 has offset 1).

The definition of A147975 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n-3^n-2^n-1` (program `A147975.P1263960409103768383`, by `A147975.P1263960409103768383.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147975.P1263960409103768383

`4^n-3^n-2^n-1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A147975

/-- `4^n-3^n-2^n-1` -/
def P1263960409103768383.Spec : Prop :=
  ∀ n, P1263960409103768383.a n = A147975 (n + 1)

theorem P1263960409103768383.correct : P1263960409103768383.Spec := by
  intro n
  simp only [A147975, Nat.add_sub_cancel]

end A147975

/-! ## A147975.P14948515884163208456

`xor(1, A137786(n))`
-/

namespace A147975.P14948515884163208456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A137786 n)

end

end A147975.P14948515884163208456

namespace A147975

/-- `xor(1, A137786(n))` -/
def P14948515884163208456.Spec : Prop :=
  ∀ n, P14948515884163208456.a n = A147975 (n + 1)

end A147975

/-! ## A147975.P3092136893466751131

`-(2^n-A005061(n)+1)`
-/

namespace A147975.P3092136893466751131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((2 ^ n : ℤ) - A005061 n + 1)

end

end A147975.P3092136893466751131

namespace A147975

/-- `-(2^n-A005061(n)+1)` -/
def P3092136893466751131.Spec : Prop :=
  ∀ n, P3092136893466751131.a n = A147975 (n + 1)

theorem P3092136893466751131.correct : P3092136893466751131.Spec := by
  intro n
  simp only [A147975, Nat.add_sub_cancel, A147975.P3092136893466751131.a, A147975.P1263960409103768383.a, A005061, A005061.P16496871994776631977.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147975

/-! ## A147975.P5362017719228594457

`-(A000051(n)+3^n-4^n)`
-/

namespace A147975.P5362017719228594457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A000051 n + ((3 ^ n : ℤ) - (4 ^ n : ℤ)))

end

end A147975.P5362017719228594457

namespace A147975

/-- `-(A000051(n)+3^n-4^n)` -/
def P5362017719228594457.Spec : Prop :=
  ∀ n, P5362017719228594457.a n = A147975 (n + 1)

theorem P5362017719228594457.correct : P5362017719228594457.Spec := by
  intro n
  simp only [A147975, Nat.add_sub_cancel, A147975.P5362017719228594457.a, A147975.P1263960409103768383.a, A000051, A000051.P14067217022188782580.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147975

/-! ## A147975.P15133792889983789599

`round(A020522(n)-ratio[n+3]-3^n)`
-/

namespace A147975.P15133792889983789599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A020522 n : ℚ) - (f1 (n + 1) : ℚ) / (f1 n : ℚ) - (3 ^ n : ℚ))

end

end A147975.P15133792889983789599

namespace A147975

/-- `round(A020522(n)-ratio[n+3]-3^n)` -/
def P15133792889983789599.Spec : Prop :=
  ∀ n, P15133792889983789599.a n = A147975 (n + 1)

end A147975

/-! ## A147975.P2852653388689376897

`2*(A006516(n)-A007051(n))`
-/

namespace A147975.P2852653388689376897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006516 n - A007051 n)

end

end A147975.P2852653388689376897

namespace A147975

/-- `2*(A006516(n)-A007051(n))` -/
def P2852653388689376897.Spec : Prop :=
  ∀ n, P2852653388689376897.a n = A147975 (n + 1)

end A147975

/-! ## A147975.P10684241974905024625

`xor(1, A005061(n)-A000079(n))`
-/

namespace A147975.P10684241974905024625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A005061 n - A000079 n)

end

end A147975.P10684241974905024625

namespace A147975

/-- `xor(1, A005061(n)-A000079(n))` -/
def P10684241974905024625.Spec : Prop :=
  ∀ n, P10684241974905024625.a n = A147975 (n + 1)

end A147975

/-! ## A147975.P7812598963969764711

`xor(1, A000302(n)-A007689(n))`
-/

namespace A147975.P7812598963969764711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A000302 n - A007689 n)

end

end A147975.P7812598963969764711

namespace A147975

/-- `xor(1, A000302(n)-A007689(n))` -/
def P7812598963969764711.Spec : Prop :=
  ∀ n, P7812598963969764711.a n = A147975 (n + 1)

end A147975

/-! ## A147975.P8462861898095044941

`(A137786(n)-1)%A052548(n)²`
-/

namespace A147975.P8462861898095044941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137786 n - 1) (A052548 n ^ 2)

end

end A147975.P8462861898095044941

namespace A147975

/-- `(A137786(n)-1)%A052548(n)²` -/
def P8462861898095044941.Spec : Prop :=
  ∀ n, P8462861898095044941.a n = A147975 (n + 1)

end A147975

/-! ## A147975.P8690211747445326487

`(4^n-A001550(n))%A052548(n)²`
-/

namespace A147975.P8690211747445326487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((4 ^ n : ℤ) - A001550 n) (A052548 n ^ 2)

end

end A147975.P8690211747445326487

namespace A147975

/-- `(4^n-A001550(n))%A052548(n)²` -/
def P8690211747445326487.Spec : Prop :=
  ∀ n, P8690211747445326487.a n = A147975 (n + 1)

end A147975

/-! ## A147975.P4403704336604766069

`2*(A032263(n+1)+A003063(n+1))`
-/

namespace A147975.P4403704336604766069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A032263 (n + 1) + A003063 (n + 1))

end

end A147975.P4403704336604766069

namespace A147975

/-- `2*(A032263(n+1)+A003063(n+1))` -/
def P4403704336604766069.Spec : Prop :=
  ∀ n, P4403704336604766069.a n = A147975 (n + 1)

end A147975

/-! ## A147975.P11417847777557486048

`and(A007427(A137812(n+1)), A137786(n))`
-/

namespace A147975.P11417847777557486048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007427 (A137812 (n + 1)).toNat) (A137786 n)

end

end A147975.P11417847777557486048

namespace A147975

/-- `and(A007427(A137812(n+1)), A137786(n))` -/
def P11417847777557486048.Spec : Prop :=
  ∀ n, P11417847777557486048.a n = A147975 (n + 1)

end A147975

/-! ## A147975.P9729232429002301721

`(A005061(n)-A000051(n))%A000108(n+7)`
-/

namespace A147975.P9729232429002301721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005061 n - A000051 n) (A000108 (n + 7))

end

end A147975.P9729232429002301721

namespace A147975

/-- `(A005061(n)-A000051(n))%A000108(n+7)` -/
def P9729232429002301721.Spec : Prop :=
  ∀ n, P9729232429002301721.a n = A147975 (n + 1)

end A147975

/-! ## A147975.P15528220982680118836

`and(A007427(A137796(n+1)), A137786(n))`
-/

namespace A147975.P15528220982680118836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007427 (A137796 (n + 1)).toNat) (A137786 n)

end

end A147975.P15528220982680118836

namespace A147975

/-- `and(A007427(A137796(n+1)), A137786(n))` -/
def P15528220982680118836.Spec : Prop :=
  ∀ n, P15528220982680118836.a n = A147975 (n + 1)

end A147975

/-!
# A147976: a(n) = 5^n-4^n-3^n-2^n-1.

The programs for A147976, the canonical program `A147976.P17678870407371948011` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147976 has offset 1).

The definition of A147976 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n-4^n-3^n-2^n-1` (program `A147976.P17678870407371948011`, by `A147976.P17678870407371948011.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147976.P17678870407371948011

`5^n-4^n-3^n-2^n-1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A147976

/-- `5^n-4^n-3^n-2^n-1` -/
def P17678870407371948011.Spec : Prop :=
  ∀ n, P17678870407371948011.a n = A147976 (n + 1)

theorem P17678870407371948011.correct : P17678870407371948011.Spec := by
  intro n
  simp only [A147976, Nat.add_sub_cancel]

end A147976

/-! ## A147976.P8735834620259530657

`xor(1, A137787(n)-2)`
-/

namespace A147976.P8735834620259530657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A137787 n - 2)

end

end A147976.P8735834620259530657

namespace A147976

/-- `xor(1, A137787(n)-2)` -/
def P8735834620259530657.Spec : Prop :=
  ∀ n, P8735834620259530657.a n = A147976 (n + 1)

end A147976

/-! ## A147976.P9410932770708882397

`or(1, A081684(n)-4)`
-/

namespace A147976.P9410932770708882397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A081684 n - 4)

end

end A147976.P9410932770708882397

namespace A147976

/-- `or(1, A081684(n)-4)` -/
def P9410932770708882397.Spec : Prop :=
  ∀ n, P9410932770708882397.a n = A147976 (n + 1)

end A147976

/-! ## A147976.P17695197550572845007

`(A081684(n)-4)%A254364(n)`
-/

namespace A147976.P17695197550572845007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081684 n - 4) (A254364 n)

end

end A147976.P17695197550572845007

namespace A147976

/-- `(A081684(n)-4)%A254364(n)` -/
def P17695197550572845007.Spec : Prop :=
  ∀ n, P17695197550572845007.a n = A147976 (n + 1)

end A147976

/-! ## A147976.P1369258860906409545

`xor(A081684(n)-4, A000038(n+1))`
-/

namespace A147976.P1369258860906409545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A081684 n - 4) (A000038 (n + 1))

end

end A147976.P1369258860906409545

namespace A147976

/-- `xor(A081684(n)-4, A000038(n+1))` -/
def P1369258860906409545.Spec : Prop :=
  ∀ n, P1369258860906409545.a n = A147976 (n + 1)

end A147976

/-! ## A147976.P3076189657813080997

`xor(A081684(n)-4, A000035(2*n))`
-/

namespace A147976.P3076189657813080997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A081684 n - 4) (A000035 (2 * n))

end

end A147976.P3076189657813080997

namespace A147976

/-- `xor(A081684(n)-4, A000035(2*n))` -/
def P3076189657813080997.Spec : Prop :=
  ∀ n, P3076189657813080997.a n = A147976 (n + 1)

end A147976

/-!
# A147977: a(n) = 6^n-5^n-4^n-3^n-2^n-1.

The programs for A147977, the canonical program `A147977.P11681093656513450778` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147977 has offset 1).

The definition of A147977 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^n-5^n-4^n-3^n-2^n-1` (program `A147977.P11681093656513450778`, by `A147977.P11681093656513450778.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147977.P11681093656513450778

`6^n-5^n-4^n-3^n-2^n-1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A147977

/-- `6^n-5^n-4^n-3^n-2^n-1` -/
def P11681093656513450778.Spec : Prop :=
  ∀ n, P11681093656513450778.a n = A147977 (n + 1)

theorem P11681093656513450778.correct : P11681093656513450778.Spec := by
  intro n
  simp only [A147977, Nat.add_sub_cancel]

end A147977

/-! ## A147977.P14380666943278132121

`or(4, A000400(n)-A001552(n))`
-/

namespace A147977.P14380666943278132121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A000400 n - A001552 n)

end

end A147977.P14380666943278132121

namespace A147977

/-- `or(4, A000400(n)-A001552(n))` -/
def P14380666943278132121.Spec : Prop :=
  ∀ n, P14380666943278132121.a n = A147977 (n + 1)

end A147977

/-! ## A147977.P4816112119623305663

`(A000400(n)-A001552(n))*A033999(n)²`
-/

namespace A147977.P4816112119623305663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000400 n - A001552 n) * A033999 n ^ 2

end

end A147977.P4816112119623305663

namespace A147977

/-- `(A000400(n)-A001552(n))*A033999(n)²` -/
def P4816112119623305663.Spec : Prop :=
  ∀ n, P4816112119623305663.a n = A147977 (n + 1)

end A147977

/-! ## A147977.P3124693259871084250

`(A000400(n)-A001552(n))*A007318(∑[n])`
-/

namespace A147977.P3124693259871084250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000400 n - A001552 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A147977.P3124693259871084250

namespace A147977

/-- `(A000400(n)-A001552(n))*A007318(∑[n])` -/
def P3124693259871084250.Spec : Prop :=
  ∀ n, P3124693259871084250.a n = A147977 (n + 1)

end A147977

/-! ## A147977.P4280342288183444148

`(A000400(n)-A001552(n))*(2-A010684(n))²`
-/

namespace A147977.P4280342288183444148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000400 n - A001552 n) * (2 - A010684 n) ^ 2

end

end A147977.P4280342288183444148

namespace A147977

/-- `(A000400(n)-A001552(n))*(2-A010684(n))²` -/
def P4280342288183444148.Spec : Prop :=
  ∀ n, P4280342288183444148.a n = A147977 (n + 1)

end A147977

/-! ## A147977.P10650243421294190439

`(A000400(n)-A001552(n))*A000108(C(2, n+2))`
-/

namespace A147977.P10650243421294190439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000400 n - A001552 n) * A000108 (Nat.choose 2 (n + 2))

end

end A147977.P10650243421294190439

namespace A147977

/-- `(A000400(n)-A001552(n))*A000108(C(2, n+2))` -/
def P10650243421294190439.Spec : Prop :=
  ∀ n, P10650243421294190439.a n = A147977 (n + 1)

end A147977

/-! ## A147977.P1935064412854570882

`(A000400(n)-A001552(n))*A001222(A063535(n))`
-/

namespace A147977.P1935064412854570882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000400 n - A001552 n) * A001222 (A063535 n).toNat

end

end A147977.P1935064412854570882

namespace A147977

/-- `(A000400(n)-A001552(n))*A001222(A063535(n))` -/
def P1935064412854570882.Spec : Prop :=
  ∀ n, P1935064412854570882.a n = A147977 (n + 1)

end A147977

/-! ## A147977.P14541611062080370856

`(A000400(n)-A001552(n))*A033273(A000040(n+1))`
-/

namespace A147977.P14541611062080370856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000400 n - A001552 n) * A033273 (A000040 (n + 1)).toNat

end

end A147977.P14541611062080370856

namespace A147977

/-- `(A000400(n)-A001552(n))*A033273(A000040(n+1))` -/
def P14541611062080370856.Spec : Prop :=
  ∀ n, P14541611062080370856.a n = A147977 (n + 1)

end A147977

/-! ## A147977.P12719947983248967516

`(A000400(n)-A001552(n))*A317673(A065091(n+1))²`
-/

namespace A147977.P12719947983248967516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000400 n - A001552 n) * A317673 (A065091 (n + 1)).toNat ^ 2

end

end A147977.P12719947983248967516

namespace A147977

/-- `(A000400(n)-A001552(n))*A317673(A065091(n+1))²` -/
def P12719947983248967516.Spec : Prop :=
  ∀ n, P12719947983248967516.a n = A147977 (n + 1)

end A147977

/-! ## A147977.P760174540491738416

`(A000400(n)-A001552(n))%A001554(n)`
-/

namespace A147977.P760174540491738416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000400 n - A001552 n) (A001554 n)

end

end A147977.P760174540491738416

namespace A147977

/-- `(A000400(n)-A001552(n))%A001554(n)` -/
def P760174540491738416.Spec : Prop :=
  ∀ n, P760174540491738416.a n = A147977 (n + 1)

end A147977

/-!
# A147978: a(n) = 7^n-6^n-5^n-4^n-3^n-2^n-1.

The programs for A147978, the canonical program `A147978.P6457472604230576053` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147978 has offset 1).

The definition of A147978 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n-6^n-5^n-4^n-3^n-2^n-1` (program `A147978.P6457472604230576053`, by `A147978.P6457472604230576053.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147978.P6457472604230576053

`7^n-6^n-5^n-4^n-3^n-2^n-1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A147978

/-- `7^n-6^n-5^n-4^n-3^n-2^n-1` -/
def P6457472604230576053.Spec : Prop :=
  ∀ n, P6457472604230576053.a n = A147978 (n + 1)

theorem P6457472604230576053.correct : P6457472604230576053.Spec := by
  intro n
  simp only [A147978, Nat.add_sub_cancel]

end A147978

/-!
# A147979: a(n) = 8^n-7^n-6^n-5^n-4^n-3^n-2^n-1.

The programs for A147979, the canonical program `A147979.P9396029058969249710` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147979 has offset 1).

The definition of A147979 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n-7^n-6^n-5^n-4^n-3^n-2^n-1` (program `A147979.P9396029058969249710`, by `A147979.P9396029058969249710.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A147979.P9396029058969249710

`8^n-7^n-6^n-5^n-4^n-3^n-2^n-1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A147979

/-- `8^n-7^n-6^n-5^n-4^n-3^n-2^n-1` -/
def P9396029058969249710.Spec : Prop :=
  ∀ n, P9396029058969249710.a n = A147979 (n + 1)

theorem P9396029058969249710.correct : P9396029058969249710.Spec := by
  intro n
  simp only [A147979, Nat.add_sub_cancel]

end A147979

/-! ## A147979.P10199221660776514287

`(A001018(n)-A001554(n))%A001555(n)`
-/

namespace A147979.P10199221660776514287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001018 n - A001554 n) (A001555 n)

end

end A147979.P10199221660776514287

namespace A147979

/-- `(A001018(n)-A001554(n))%A001555(n)` -/
def P10199221660776514287.Spec : Prop :=
  ∀ n, P10199221660776514287.a n = A147979 (n + 1)

end A147979

/-! ## A147979.P13294080930947981617

`(A001018(n)-A001554(n))*A000108(C(n, n²))`
-/

namespace A147979.P13294080930947981617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001018 n - A001554 n) * A000108 (Nat.choose n (n ^ 2))

end

end A147979.P13294080930947981617

namespace A147979

/-- `(A001018(n)-A001554(n))*A000108(C(n, n²))` -/
def P13294080930947981617.Spec : Prop :=
  ∀ n, P13294080930947981617.a n = A147979 (n + 1)

end A147979

/-! ## A147979.P15145485149172320868

`(A001018(n)-A001554(n))*A008683(∏{e}[n, #²])!`
-/

namespace A147979.P15145485149172320868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001018 n - A001554 n) * (Nat.factorial (A008683 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ 2)).toNat : ℤ)

end

end A147979.P15145485149172320868

namespace A147979

/-- `(A001018(n)-A001554(n))*A008683(∏{e}[n, #²])!` -/
def P15145485149172320868.Spec : Prop :=
  ∀ n, P15145485149172320868.a n = A147979 (n + 1)

end A147979

/-! ## A147979.P17662824086453666508

`(A001018(n)-A001554(n))*(A261470(n+1)%2)!`
-/

namespace A147979.P17662824086453666508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001018 n - A001554 n) * (Nat.factorial (Int.tmod (A261470 (n + 1)) 2).toNat : ℤ)

end

end A147979.P17662824086453666508

namespace A147979

/-- `(A001018(n)-A001554(n))*(A261470(n+1)%2)!` -/
def P17662824086453666508.Spec : Prop :=
  ∀ n, P17662824086453666508.a n = A147979 (n + 1)

end A147979

/-! ## A147979.P9199067016495261804

`(A001018(n)-A001554(n))*A007318(∑[n])^(n+1)`
-/

namespace A147979.P9199067016495261804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001018 n - A001554 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A147979.P9199067016495261804

namespace A147979

/-- `(A001018(n)-A001554(n))*A007318(∑[n])^(n+1)` -/
def P9199067016495261804.Spec : Prop :=
  ∀ n, P9199067016495261804.a n = A147979 (n + 1)

end A147979

/-! ## A147979.P16932842065190794893

`(A001018(n)-A001554(n))*A057077(A006530(n+2)²)`
-/

namespace A147979.P16932842065190794893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001018 n - A001554 n) * A057077 (A006530 (n + 2) ^ 2).toNat

end

end A147979.P16932842065190794893

namespace A147979

/-- `(A001018(n)-A001554(n))*A057077(A006530(n+2)²)` -/
def P16932842065190794893.Spec : Prop :=
  ∀ n, P16932842065190794893.a n = A147979 (n + 1)

end A147979

/-!
# A147980: Given a set of positive integers A={1,2,...,n-1,n}, n>=2. Take subsets of A of the form {1,...,n} so only subsets containing numbers 1 and n are allowed. Then a(1)=1 and a(n) is the number of subsets where arithmetic mean of the subset is an integer.

The programs for A147980, the canonical program `A147980.P8121745463830340896` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147980 has offset 1).

The definition of A147980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A147980.P8121745463830340896

`Δ[A000016(n)*A036453(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A147980

/-- `Δ[A000016(n)*A036453(n+1)]` -/
def P8121745463830340896.Spec : Prop :=
  ∀ n, P8121745463830340896.a n = A147980 (n + 1)

theorem P8121745463830340896.correct : P8121745463830340896.Spec := by
  intro n
  simp only [A147980, Nat.add_sub_cancel]

end A147980

/-! ## A147980.P11063850272533292473

`Δ[A000016(n)*A020639(A005893(n))]`
-/

namespace A147980.P11063850272533292473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 n * A020639 (A005893 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147980.P11063850272533292473

namespace A147980

/-- `Δ[A000016(n)*A020639(A005893(n))]` -/
def P11063850272533292473.Spec : Prop :=
  ∀ n, P11063850272533292473.a n = A147980 (n + 1)

end A147980

/-! ## A147980.P1275983345634840668

`Δ[A000016(n)*A014963(A062383(n))]`
-/

namespace A147980.P1275983345634840668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 n * A014963 (A062383 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147980.P1275983345634840668

namespace A147980

/-- `Δ[A000016(n)*A014963(A062383(n))]` -/
def P1275983345634840668.Spec : Prop :=
  ∀ n, P1275983345634840668.a n = A147980 (n + 1)

end A147980

/-! ## A147980.P16898712956588978744

`Δ[A000005(A008578(n+1))*A000016(n)]`
-/

namespace A147980.P16898712956588978744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008578 (n + 1)).toNat * A000016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147980.P16898712956588978744

namespace A147980

/-- `Δ[A000005(A008578(n+1))*A000016(n)]` -/
def P16898712956588978744.Spec : Prop :=
  ∀ n, P16898712956588978744.a n = A147980 (n + 1)

end A147980

/-! ## A147980.P8217402333498649680

`Δ[A020639(A141767(n+1))*A000016(n)]`
-/

namespace A147980.P8217402333498649680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A141767 (n + 1)).toNat * A000016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147980.P8217402333498649680

namespace A147980

/-- `Δ[A020639(A141767(n+1))*A000016(n)]` -/
def P8217402333498649680.Spec : Prop :=
  ∀ n, P8217402333498649680.a n = A147980 (n + 1)

end A147980

/-! ## A147980.P8497469079771982150

`Δ[A000016(n)+A000031(n)-A000013(n)]`
-/

namespace A147980.P8497469079771982150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 n + (A000031 n - A000013 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A147980.P8497469079771982150

namespace A147980

/-- `Δ[A000016(n)+A000031(n)-A000013(n)]` -/
def P8497469079771982150.Spec : Prop :=
  ∀ n, P8497469079771982150.a n = A147980 (n + 1)

end A147980

/-!
# A147981: a(n) = A147952(A004001(n)).

The programs for A147981, there is no canonical definition to state claims against.
-/

/-! ## A147981.P8963850038563313368

`A147952(∑[char[A188163(n+1)]])`
-/

namespace A147981.P8963850038563313368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188163 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147952 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A147981.P8963850038563313368

/-! ## A147981.P10528577135513845858

`A147952(A285763(2*n+1)-A004001(n+1))`
-/

namespace A147981.P10528577135513845858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147952 (A285763 (2 * n + 1) - A004001 (n + 1)).toNat

end

end A147981.P10528577135513845858

/-!
# A147982: Expansion of Product_{k > 0} (1 + f(k)*x^k), where f(k) = A147952(A004001(k)).

The programs for A147982, there is no canonical definition to state claims against.
-/

/-! ## A147982.P10726926586566710853

`A027193(n)+A008683(A324020(n+2))`
-/

namespace A147982.P10726926586566710853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027193 n + A008683 (A324020 (n + 2)).toNat

end

end A147982.P10726926586566710853

/-!
# A147984: Column 5 of A144512.

The programs for A147984, there is no canonical definition to state claims against.
-/

/-! ## A147984.P14682948383960048615

`A144510(A056119(n)+16)`
-/

namespace A147984.P14682948383960048615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144510 (A056119 n + 16).toNat

end

end A147984.P14682948383960048615

/-! ## A147984.P12668966515941607452

`A144510(lt[4, A144462(n+5)])`
-/

namespace A147984.P12668966515941607452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144462 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144510 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A147984.P12668966515941607452

/-!
# A147985: Coefficients of numerator polynomials S(n,x) associated with reciprocation.

The programs for A147985, there is no canonical definition to state claims against.
-/

/-! ## A147985.P4004757732891387676

`A070747(A225471(n))*A147987(n+1)`
-/

namespace A147985.P4004757732891387676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070747 (A225471 n).toNat * A147987 (n + 1)

end

end A147985.P4004757732891387676

/-! ## A147985.P4969009403443914557

`A020985(A132736(n))*A147987(n+1)`
-/

namespace A147985.P4969009403443914557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A132736 n).toNat * A147987 (n + 1)

end

end A147985.P4969009403443914557

/-! ## A147985.P13454851055500000862

`A380560(A013947(3*n+4))-A112798(n+2)`
-/

namespace A147985.P13454851055500000862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380560 (A013947 (3 * n + 4)).toNat - A112798 (n + 2)

end

end A147985.P13454851055500000862

/-!
# A147986: Coefficients of denominator polynomials T(n,x) associated with reciprocation.

The programs for A147986, there is no canonical definition to state claims against.
-/

/-! ## A147986.P2142914847002331804

`A147988(n+1)*A359738(n)`
-/

namespace A147986.P2142914847002331804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147988 (n + 1) * A359738 n

end

end A147986.P2142914847002331804

/-! ## A147986.P13522174279447488662

`A147988(n/gcd(n, n+1)+1)/A359738(n)`
-/

namespace A147986.P13522174279447488662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147988 (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.gcd n (n + 1) : ℚ) + 1)).toNat : ℚ) / (A359738 n : ℚ)

end

end A147986.P13522174279447488662

/-! ## A147986.P4464260590470279535

`Δ[A064706(A180200(n+1))]*A147988(n+1)`
-/

namespace A147986.P4464260590470279535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064706 (A180200 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A147988 (n + 1)

end

end A147986.P4464260590470279535

/-! ## A147986.P17018620460682703571

`A020985(A060546(n+1)-2)*A147988(n+1)`
-/

namespace A147986.P17018620460682703571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A060546 (n + 1) - 2).toNat * A147988 (n + 1)

end

end A147986.P17018620460682703571

/-! ## A147986.P400738655203373935

`A016345(A218581(n+1))*A147988(n+1)`
-/

namespace A147986.P400738655203373935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016345 (A218581 (n + 1)).toNat * A147988 (n + 1)

end

end A147986.P400738655203373935

/-!
# A147987: Coefficients of numerator polynomials P(n,x) associated with reciprocation.

The programs for A147987, there is no canonical definition to state claims against.
-/

/-! ## A147987.P14073353841569431824

`abs(A147985(n+1))`
-/

namespace A147987.P14073353841569431824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A147985 (n + 1)|

end

end A147987.P14073353841569431824

/-! ## A147987.P10298983120397859358

`gcd(A000038(n), A147985(n+1))`
-/

namespace A147987.P10298983120397859358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A147985 (n + 1))

end

end A147987.P10298983120397859358

/-! ## A147987.P5404204549904121137

`lcm(A020985(n), A147985(n+1))`
-/

namespace A147987.P5404204549904121137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A147985 (n + 1))

end

end A147987.P5404204549904121137

/-! ## A147987.P5828211643865018856

`lcm(-A147985(n+1), A064179(n+1))`
-/

namespace A147987.P5828211643865018856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A147985 (n + 1)) (A064179 (n + 1))

end

end A147987.P5828211643865018856

/-! ## A147987.P15727974411337047630

`gcd(-A147985(n+1), A024362(2*(n+1)))`
-/

namespace A147987.P15727974411337047630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A147985 (n + 1)) (A024362 (2 * (n + 1)))

end

end A147987.P15727974411337047630

/-! ## A147987.P6010252573848961690

`sqrt(A147985(n+1)^gcd(2, A000010(n+2)))`
-/

namespace A147987.P6010252573848961690
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A147985 (n + 1) ^ Int.gcd 2 (A000010 (n + 2)) : ℝ)

end

end A147987.P6010252573848961690

/-!
# A147988: Coefficients of denominator polynomials Q(n,x) associated with reciprocation.

The programs for A147988, there is no canonical definition to state claims against.
-/

/-! ## A147988.P6248337335307419219

`abs(A147986(n+1))`
-/

namespace A147988.P6248337335307419219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A147986 (n + 1)|

end

end A147988.P6248337335307419219

/-! ## A147988.P9768813574677644019

`A147986(n+1)*A359738(n)`
-/

namespace A147988.P9768813574677644019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147986 (n + 1) * A359738 n

end

end A147988.P9768813574677644019

/-! ## A147988.P14067551760200844440

`gcd(A000038(n), A147986(n+1))`
-/

namespace A147988.P14067551760200844440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A147986 (n + 1))

end

end A147988.P14067551760200844440

/-! ## A147988.P7990505890711462547

`lcm(A020985(n), A147986(n+1))`
-/

namespace A147988.P7990505890711462547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A147986 (n + 1))

end

end A147988.P7990505890711462547

/-! ## A147988.P17518869142670233166

`∑{d}[A147986(n+1), A000010(#)]`
-/

namespace A147988.P17518869142670233166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A147988.P17518869142670233166

/-! ## A147988.P7751376681133101783

`sqrt(A147986(n+1)^A244228(n+4))`
-/

namespace A147988.P7751376681133101783
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A147986 (n + 1) : ℚ) ^ (A244228 (n + 4) : ℤ) : ℝ)

end

end A147988.P7751376681133101783

/-! ## A147988.P7090739568246770888

`sqrt(A147986(n+1)^gcd(2, A000010(n+2)))`
-/

namespace A147988.P7090739568246770888
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A147986 (n + 1) ^ Int.gcd 2 (A000010 (n + 2)) : ℝ)

end

end A147988.P7090739568246770888

/-!
# A147990: Array A147985 (Polynomial coefficients) with zeros deleted.

The programs for A147990, there is no canonical definition to state claims against.
-/

/-! ## A147990.P11771211794623351537

`A147985(record[n+2-A147987(n+1)])`
-/

namespace A147990.P11771211794623351537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A147987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147985 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A147990.P11771211794623351537

/-! ## A147990.P793086759334580111

`A147989(lt[A147987(n+1), A055396(n+1)])`
-/

namespace A147990.P793086759334580111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147989 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A147990.P793086759334580111

/-!
# A147991: Sequence S such that 1 is in S and if x is in S, then 3x-1 and 3x+1 are in S.

The programs for A147991, the canonical program `A147991.P1055187431059900303` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147991 has offset 1).

The definition of A147991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A147991.P1055187431059900303

`A137951(n)+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A147991

/-- `A137951(n)+1` -/
def P1055187431059900303.Spec : Prop :=
  ∀ n, P1055187431059900303.a n = A147991 (n + 1)

theorem P1055187431059900303.correct : P1055187431059900303.Spec := by
  intro n
  simp only [A147991, Nat.add_sub_cancel]

end A147991

/-! ## A147991.P5030381085202264642

`∑[A061393(A053645(n+1))]`
-/

namespace A147991.P5030381085202264642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 (A053645 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147991.P5030381085202264642

namespace A147991

/-- `∑[A061393(A053645(n+1))]` -/
def P5030381085202264642.Spec : Prop :=
  ∀ n, P5030381085202264642.a n = A147991 (n + 1)

end A147991

/-! ## A147991.P11842967940563192351

`∑[A061393(A053646(n+1))]`
-/

namespace A147991.P11842967940563192351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 (A053646 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147991.P11842967940563192351

namespace A147991

/-- `∑[A061393(A053646(n+1))]` -/
def P11842967940563192351.Spec : Prop :=
  ∀ n, P11842967940563192351.a n = A147991 (n + 1)

theorem P11842967940563192351.correct : P11842967940563192351.Spec := by
  intro n
  simp only [A147991, Nat.add_sub_cancel, A147991.P11842967940563192351.f1, A147991.P11842967940563192351.a, A147991.P1055187431059900303.a, A053646, A053646.P18187844312180991750.a, A061393, A061393.P6485860587196988669.a, A137951, A137951.P11331642743113292686.f1, A137951.P11331642743113292686.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147991

/-! ## A147991.P8423042801256832581

`∑[A006046(A080940(n+1))+1]`
-/

namespace A147991.P8423042801256832581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (A080940 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147991.P8423042801256832581

namespace A147991

/-- `∑[A006046(A080940(n+1))+1]` -/
def P8423042801256832581.Spec : Prop :=
  ∀ n, P8423042801256832581.a n = A147991 (n + 1)

end A147991

/-! ## A147991.P1511193196038101720

`1-(A060373(A060373(n))-A137951(n))`
-/

namespace A147991.P1511193196038101720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A060373 (A060373 n).toNat - A137951 n)

end

end A147991.P1511193196038101720

namespace A147991

/-- `1-(A060373(A060373(n))-A137951(n))` -/
def P1511193196038101720.Spec : Prop :=
  ∀ n, P1511193196038101720.a n = A147991 (n + 1)

end A147991

/-! ## A147991.P4585482749056191627

`A005836(n+2)-A083904(n+1)`
-/

namespace A147991.P4585482749056191627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 2) - A083904 (n + 1)

end

end A147991.P4585482749056191627

namespace A147991

/-- `A005836(n+2)-A083904(n+1)` -/
def P4585482749056191627.Spec : Prop :=
  ∀ n, P4585482749056191627.a n = A147991 (n + 1)

end A147991

/-! ## A147991.P10218729699201504576

`A191109(n+2)-A005836(n+2)`
-/

namespace A147991.P10218729699201504576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191109 (n + 2) - A005836 (n + 2)

end

end A147991.P10218729699201504576

namespace A147991

/-- `A191109(n+2)-A005836(n+2)` -/
def P10218729699201504576.Spec : Prop :=
  ∀ n, P10218729699201504576.a n = A147991 (n + 1)

end A147991

/-! ## A147991.P17913700287899730501

`A191109(n+2)+1-A003278(n+2)`
-/

namespace A147991.P17913700287899730501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191109 (n + 2) + (1 - A003278 (n + 2))

end

end A147991.P17913700287899730501

namespace A147991

/-- `A191109(n+2)+1-A003278(n+2)` -/
def P17913700287899730501.Spec : Prop :=
  ∀ n, P17913700287899730501.a n = A147991 (n + 1)

end A147991

/-! ## A147991.P18267790260996933272

`A191109(n+2)-A005823(n+2)/2`
-/

namespace A147991.P18267790260996933272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191109 (n + 2) : ℚ) - (A005823 (n + 2) : ℚ) / 2

end

end A147991.P18267790260996933272

namespace A147991

/-- `A191109(n+2)-A005823(n+2)/2` -/
def P18267790260996933272.Spec : Prop :=
  ∀ n, P18267790260996933272.a n = (A147991 (n + 1) : ℚ)

end A147991

/-! ## A147991.P12571607490636587814

`A005836(n+2)-A005836(A080079(n+1))`
-/

namespace A147991.P12571607490636587814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 2) - A005836 (A080079 (n + 1)).toNat

end

end A147991.P12571607490636587814

namespace A147991

/-- `A005836(n+2)-A005836(A080079(n+1))` -/
def P12571607490636587814.Spec : Prop :=
  ∀ n, P12571607490636587814.a n = A147991 (n + 1)

end A147991

/-! ## A147991.P4102973022366465729

`A191110(n+1)+A005836(n+2)-A132140(n+1)`
-/

namespace A147991.P4102973022366465729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191110 (n + 1) + (A005836 (n + 2) - A132140 (n + 1))

end

end A147991.P4102973022366465729

namespace A147991

/-- `A191110(n+1)+A005836(n+2)-A132140(n+1)` -/
def P4102973022366465729.Spec : Prop :=
  ∀ n, P4102973022366465729.a n = A147991 (n + 1)

end A147991

/-! ## A147991.P12567968444291512462

`A032924(2*(n+1))-A005836(n+2)`
-/

namespace A147991.P12567968444291512462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (2 * (n + 1)) - A005836 (n + 2)

end

end A147991.P12567968444291512462

namespace A147991

/-- `A032924(2*(n+1))-A005836(n+2)` -/
def P12567968444291512462.Spec : Prop :=
  ∀ n, P12567968444291512462.a n = A147991 (n + 1)

end A147991

/-! ## A147991.P13902744690145903396

`A153775(2*(n+1))-A005836(n+2)`
-/

namespace A147991.P13902744690145903396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153775 (2 * (n + 1)) - A005836 (n + 2)

end

end A147991.P13902744690145903396

namespace A147991

/-- `A153775(2*(n+1))-A005836(n+2)` -/
def P13902744690145903396.Spec : Prop :=
  ∀ n, P13902744690145903396.a n = A147991 (n + 1)

end A147991

/-! ## A147991.P1074712800989801803

`A032924(2*n+1)+2-A003278(n+2)`
-/

namespace A147991.P1074712800989801803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032924 (2 * n + 1) + (2 - A003278 (n + 2))

end

end A147991.P1074712800989801803

namespace A147991

/-- `A032924(2*n+1)+2-A003278(n+2)` -/
def P1074712800989801803.Spec : Prop :=
  ∀ n, P1074712800989801803.a n = A147991 (n + 1)

end A147991

/-! ## A147991.P4644423477038157597

`A032924(2*(n+1))-A005823(n+2)/2`
-/

namespace A147991.P4644423477038157597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032924 (2 * (n + 1)) : ℚ) - (A005823 (n + 2) : ℚ) / 2

end

end A147991.P4644423477038157597

namespace A147991

/-- `A032924(2*(n+1))-A005823(n+2)/2` -/
def P4644423477038157597.Spec : Prop :=
  ∀ n, P4644423477038157597.a n = (A147991 (n + 1) : ℚ)

end A147991

/-! ## A147991.P987979616489303095

`A107681(2*(n+1))+A107681(A054429(n+2))`
-/

namespace A147991.P987979616489303095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107681 (2 * (n + 1)) + A107681 (A054429 (n + 2)).toNat

end

end A147991.P987979616489303095

namespace A147991

/-- `A107681(2*(n+1))+A107681(A054429(n+2))` -/
def P987979616489303095.Spec : Prop :=
  ∀ n, P987979616489303095.a n = A147991 (n + 1)

end A147991

/-! ## A147991.P5712001196579569113

`record[A232798(n+1)]`
-/

namespace A147991.P5712001196579569113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147991.P5712001196579569113

namespace A147991

/-- `record[A232798(n+1)]` -/
def P5712001196579569113.Spec : Prop :=
  ∀ n, P5712001196579569113.a n = A147991 (n + 1)

end A147991

/-! ## A147991.P3779130116962736400

`record[A308364(n+1)]`
-/

namespace A147991.P3779130116962736400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147991.P3779130116962736400

namespace A147991

/-- `record[A308364(n+1)]` -/
def P3779130116962736400.Spec : Prop :=
  ∀ n, P3779130116962736400.a n = A147991 (n + 1)

end A147991

/-! ## A147991.P9184413525456341039

`lt[n, 2*A308364(n)]`
-/

namespace A147991.P9184413525456341039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A308364 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A147991.P9184413525456341039

namespace A147991

/-- `lt[n, 2*A308364(n)]` -/
def P9184413525456341039.Spec : Prop :=
  ∀ n, (P9184413525456341039.a n : ℤ) = A147991 (n + 1)

end A147991

/-! ## A147991.P13570794528616220101

`A308364(lt[n/2, A308364(n)])`
-/

namespace A147991.P13570794528616220101
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308364 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A147991.P13570794528616220101

namespace A147991

/-- `A308364(lt[n/2, A308364(n)])` -/
def P13570794528616220101.Spec : Prop :=
  ∀ n, P13570794528616220101.a n = A147991 (n + 1)

end A147991

/-!
# A147992: Sequence S such that 1 is in S and if x is in S, then 4x-1 and 4x+1 are in S.

The programs for A147992, the canonical program `A147992.P5768023493417768980` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147992 has offset 1).

The definition of A147992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A147992.P15399295529092522683

`∑[(A276390(n)+1)/2]`
-/

namespace A147992.P15399295529092522683
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276390 n + 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A147992.P15399295529092522683

namespace A147992

/-- `∑[(A276390(n)+1)/2]` -/
def P15399295529092522683.Spec : Prop :=
  ∀ n, P15399295529092522683.a n = (A147992 (n + 1) : ℚ)

end A147992

/-! ## A147992.P5768023493417768980

`∑[∑{d}[A135517(n), #²]]+n`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A147992

/-- `∑[∑{d}[A135517(n), #²]]+n` -/
def P5768023493417768980.Spec : Prop :=
  ∀ n, (P5768023493417768980.a n : ℤ) = A147992 (n + 1)

theorem P5768023493417768980.correct : P5768023493417768980.Spec := by
  intro n
  simp only [A147992, Nat.add_sub_cancel]

end A147992

/-! ## A147992.P7571570083233116421

`A179888(n+1)-A374625(n+1)`
-/

namespace A147992.P7571570083233116421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179888 (n + 1) - A374625 (n + 1)

end

end A147992.P7571570083233116421

namespace A147992

/-- `A179888(n+1)-A374625(n+1)` -/
def P7571570083233116421.Spec : Prop :=
  ∀ n, P7571570083233116421.a n = A147992 (n + 1)

end A147992

/-! ## A147992.P4122325198632037197

`A000695(n+1)-A000695(A035327(n+1))`
-/

namespace A147992.P4122325198632037197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (n + 1) - A000695 (A035327 (n + 1)).toNat

end

end A147992.P4122325198632037197

namespace A147992

/-- `A000695(n+1)-A000695(A035327(n+1))` -/
def P4122325198632037197.Spec : Prop :=
  ∀ n, P4122325198632037197.a n = A147992 (n + 1)

end A147992

/-! ## A147992.P14299626177182705169

`A032925(2*(n+1))/2`
-/

namespace A147992.P14299626177182705169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032925 (2 * (n + 1)) : ℚ) / 2

end

end A147992.P14299626177182705169

namespace A147992

/-- `A032925(2*(n+1))/2` -/
def P14299626177182705169.Spec : Prop :=
  ∀ n, P14299626177182705169.a n = (A147992 (n + 1) : ℚ)

end A147992

/-! ## A147992.P16360861973501277449

`A000695(n+1)+A115638(n)-A115637(n)`
-/

namespace A147992.P16360861973501277449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (n + 1) + (A115638 n - A115637 n)

end

end A147992.P16360861973501277449

namespace A147992

/-- `A000695(n+1)+A115638(n)-A115637(n)` -/
def P16360861973501277449.Spec : Prop :=
  ∀ n, P16360861973501277449.a n = A147992 (n + 1)

end A147992

/-! ## A147992.P7684259933593129387

`record[A379657(n+1)]`
-/

namespace A147992.P7684259933593129387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A147992.P7684259933593129387

namespace A147992

/-- `record[A379657(n+1)]` -/
def P7684259933593129387.Spec : Prop :=
  ∀ n, P7684259933593129387.a n = A147992 (n + 1)

end A147992

/-! ## A147992.P10230819385069518493

`A006288(A147991(n+1))`
-/

namespace A147992.P10230819385069518493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006288 (A147991 (n + 1)).toNat

end

end A147992.P10230819385069518493

namespace A147992

/-- `A006288(A147991(n+1))` -/
def P10230819385069518493.Spec : Prop :=
  ∀ n, P10230819385069518493.a n = A147992 (n + 1)

end A147992

/-! ## A147992.P9181593518987947170

`A006288(record[A308364(n+1)])`
-/

namespace A147992.P9181593518987947170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006288 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A147992.P9181593518987947170

namespace A147992

/-- `A006288(record[A308364(n+1)])` -/
def P9181593518987947170.Spec : Prop :=
  ∀ n, P9181593518987947170.a n = A147992 (n + 1)

end A147992

/-! ## A147992.P4811786493599648596

`A006288(lt[n, 2*A308364(n)])`
-/

namespace A147992.P4811786493599648596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A308364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006288 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A147992.P4811786493599648596

namespace A147992

/-- `A006288(lt[n, 2*A308364(n)])` -/
def P4811786493599648596.Spec : Prop :=
  ∀ n, P4811786493599648596.a n = A147992 (n + 1)

end A147992

/-! ## A147992.P6424246929528104820

`A006288(lt[n/2, A308364(n)])`
-/

namespace A147992.P6424246929528104820
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006288 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A147992.P6424246929528104820

namespace A147992

/-- `A006288(lt[n/2, A308364(n)])` -/
def P6424246929528104820.Spec : Prop :=
  ∀ n, P6424246929528104820.a n = A147992 (n + 1)

end A147992

/-! ## A147992.P15169131933072909737

`A000265(A032925(2*(n+1)))`
-/

namespace A147992.P15169131933072909737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A032925 (2 * (n + 1))).toNat

end

end A147992.P15169131933072909737

namespace A147992

/-- `A000265(A032925(2*(n+1)))` -/
def P15169131933072909737.Spec : Prop :=
  ∀ n, P15169131933072909737.a n = A147992 (n + 1)

end A147992

/-! ## A147992.P14918069210373884146

`A000265(A032925(n+1+n)+1)`
-/

namespace A147992.P14918069210373884146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A032925 (n + 1 + n) + 1).toNat

end

end A147992.P14918069210373884146

namespace A147992

/-- `A000265(A032925(n+1+n)+1)` -/
def P14918069210373884146.Spec : Prop :=
  ∀ n, P14918069210373884146.a n = A147992 (n + 1)

end A147992

/-! ## A147992.P6742025427349575167

`A023705(A032924(2*(n+1)))/2`
-/

namespace A147992.P6742025427349575167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023705 (A032924 (2 * (n + 1))).toNat : ℚ) / 2

end

end A147992.P6742025427349575167

namespace A147992

/-- `A023705(A032924(2*(n+1)))/2` -/
def P6742025427349575167.Spec : Prop :=
  ∀ n, P6742025427349575167.a n = (A147992 (n + 1) : ℚ)

end A147992

/-! ## A147992.P11069894120444466534

`A006257(A179888(n+1))`
-/

namespace A147992.P11069894120444466534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A179888 (n + 1)).toNat

end

end A147992.P11069894120444466534

namespace A147992

/-- `A006257(A179888(n+1))` -/
def P11069894120444466534.Spec : Prop :=
  ∀ n, P11069894120444466534.a n = A147992 (n + 1)

end A147992

/-! ## A147992.P14527126760516946466

`∩[A031461(2*(n+1)), A023717(n+1)]/2`
-/

namespace A147992.P14527126760516946466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031461 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A147992.P14527126760516946466

namespace A147992

/-- `∩[A031461(2*(n+1)), A023717(n+1)]/2` -/
def P14527126760516946466.Spec : Prop :=
  ∀ n, P14527126760516946466.a n = (A147992 (n + 1) : ℚ)

end A147992

/-! ## A147992.P12873483538529460488

`∩[A031461(2*(n+1)), A023705(n+2)]/2`
-/

namespace A147992.P12873483538529460488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031461 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A147992.P12873483538529460488

namespace A147992

/-- `∩[A031461(2*(n+1)), A023705(n+2)]/2` -/
def P12873483538529460488.Spec : Prop :=
  ∀ n, P12873483538529460488.a n = (A147992 (n + 1) : ℚ)

end A147992

/-! ## A147992.P859546423571051462

`A307485(A000695(n+1))`
-/

namespace A147992.P859546423571051462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307485 (A000695 (n + 1)).toNat

end

end A147992.P859546423571051462

namespace A147992

/-- `A307485(A000695(n+1))` -/
def P859546423571051462.Spec : Prop :=
  ∀ n, P859546423571051462.a n = A147992 (n + 1)

end A147992

/-! ## A147992.P5442769072653229561

`A261693(A374625(n+1))`
-/

namespace A147992.P5442769072653229561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261693 (A374625 (n + 1)).toNat

end

end A147992.P5442769072653229561

namespace A147992

/-- `A261693(A374625(n+1))` -/
def P5442769072653229561.Spec : Prop :=
  ∀ n, P5442769072653229561.a n = A147992 (n + 1)

end A147992

/-! ## A147992.P8007906434419052782

`eq[A101614(n), A319416(n)]`
-/

namespace A147992.P8007906434419052782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101614 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A147992.P8007906434419052782

namespace A147992

/-- `eq[A101614(n), A319416(n)]` -/
def P8007906434419052782.Spec : Prop :=
  ∀ n, (P8007906434419052782.a n : ℤ) = A147992 (n + 1)

end A147992

/-!
# A147993: Sequence S such that 1 is in S and if x is in S, then 6x-1 and 6x+1 are in S.

The programs for A147993, the canonical program `A147993.P9268513682852722789` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147993 has offset 1).

The definition of A147993 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A147993.P9268513682852722789

`6*a(A065033(n)-1)+1-A010673(n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A147993

/-- `6*a(A065033(n)-1)+1-A010673(n)` -/
def P9268513682852722789.Spec : Prop :=
  ∀ n, P9268513682852722789.a n = A147993 (n + 1)

theorem P9268513682852722789.correct : P9268513682852722789.Spec := by
  intro n
  simp only [A147993, Nat.add_sub_cancel]

end A147993

/-! ## A147993.P5448868024910479249

`A032806(2*(n+1))/3`
-/

namespace A147993.P5448868024910479249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032806 (2 * (n + 1)) : ℚ) / 3

end

end A147993.P5448868024910479249

namespace A147993

/-- `A032806(2*(n+1))/3` -/
def P5448868024910479249.Spec : Prop :=
  ∀ n, P5448868024910479249.a n = (A147993 (n + 1) : ℚ)

end A147993

/-! ## A147993.P17047378011312191650

`ceil(A032806(n+1+n)/3)`
-/

namespace A147993.P17047378011312191650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A032806 (n + 1 + n) : ℚ) / 3⌉

end

end A147993.P17047378011312191650

namespace A147993

/-- `ceil(A032806(n+1+n)/3)` -/
def P17047378011312191650.Spec : Prop :=
  ∀ n, P17047378011312191650.a n = A147993 (n + 1)

end A147993

/-! ## A147993.P18104383606494633414

`floor(A032806(n+2+n)/3)`
-/

namespace A147993.P18104383606494633414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A032806 (n + 2 + n) : ℚ) / 3⌋

end

end A147993.P18104383606494633414

namespace A147993

/-- `floor(A032806(n+2+n)/3)` -/
def P18104383606494633414.Spec : Prop :=
  ∀ n, P18104383606494633414.a n = A147993 (n + 1)

end A147993

/-! ## A147993.P3688906005186738210

`round(A032806(A005408(n))/3)`
-/

namespace A147993.P3688906005186738210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A032806 (A005408 n).toNat : ℚ) / 3)

end

end A147993.P3688906005186738210

namespace A147993

/-- `round(A032806(A005408(n))/3)` -/
def P3688906005186738210.Spec : Prop :=
  ∀ n, P3688906005186738210.a n = A147993 (n + 1)

end A147993

/-!
# A147994: Gray code base 4 applied to Hofstadter's(A005185 Hofstadter Q - sequence): a(n)=GrayCode[Hofstadter[n] - 1, 4].

The programs for A147994, there is no canonical definition to state claims against.
-/

/-! ## A147994.P11630908123556021169

`A003188(A008683(A201848(n+1))+A005185(n+1))`
-/

namespace A147994.P11630908123556021169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A008683 (A201848 (n + 1)).toNat + A005185 (n + 1)).toNat

end

end A147994.P11630908123556021169

/-! ## A147994.P13628550018460638033

`A003188(A008683(A100698(n+1))+A005185(n+1))`
-/

namespace A147994.P13628550018460638033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A008683 (A100698 (n + 1)).toNat + A005185 (n + 1)).toNat

end

end A147994.P13628550018460638033

/-!
# A147995: Array of N X N grid hopping "almost-walk", read by antidiagonals.

The programs for A147995, there is no canonical definition to state claims against.
-/

/-! ## A147995.P6061354010765538121

`A163485(A057300(A054238(n)))`
-/

namespace A147995.P6061354010765538121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163485 (A057300 (A054238 n).toNat).toNat

end

end A147995.P6061354010765538121

/-! ## A147995.P12349143175392291730

`A163485(A346453(n))`
-/

namespace A147995.P12349143175392291730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163485 (A346453 n).toNat

end

end A147995.P12349143175392291730

/-! ## A147995.P7535700383398324160

`A163485(A054238(A061579(n)))`
-/

namespace A147995.P7535700383398324160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163485 (A054238 (A061579 n).toNat).toNat

end

end A147995.P7535700383398324160

/-! ## A147995.P4779777859463098003

`A048647(A163545(n))`
-/

namespace A147995.P4779777859463098003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048647 (A163545 n).toNat

end

end A147995.P4779777859463098003

/-! ## A147995.P15639825101670481573

`A163545(A061579(n))`
-/

namespace A147995.P15639825101670481573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163545 (A061579 n).toNat

end

end A147995.P15639825101670481573

/-! ## A147995.P10936975896485711374

`A247891(A163237(n))`
-/

namespace A147995.P10936975896485711374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247891 (A163237 n).toNat

end

end A147995.P10936975896485711374

/-! ## A147995.P8003597474070059864

`A163545(A038722(n+1)-1)`
-/

namespace A147995.P8003597474070059864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163545 (A038722 (n + 1) - 1).toNat

end

end A147995.P8003597474070059864

/-! ## A147995.P11566902591387726950

`A163545(A057944(n)+A025581(n))`
-/

namespace A147995.P11566902591387726950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163545 (A057944 n + A025581 n).toNat

end

end A147995.P11566902591387726950

/-!
# A147996: a(n) = 9^n-8^n-7^n-6^n-5^n-4^n-3^n-2^n-1.

The programs for A147996, the canonical program `A147996.P1933238142574789408` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147996 has offset 1).

The definition of A147996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A147996.P1610884325055027501

`Δ[(3^n/2)²]-A001556(n)`
-/

namespace A147996.P1610884325055027501
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A001556 n : ℚ)

end

end A147996.P1610884325055027501

namespace A147996

/-- `Δ[(3^n/2)²]-A001556(n)` -/
def P1610884325055027501.Spec : Prop :=
  ∀ n, P1610884325055027501.a n = (A147996 (n + 1) : ℚ)

end A147996

/-! ## A147996.P1933238142574789408

`A001019(n)-A001555(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A147996

/-- `A001019(n)-A001555(n)` -/
def P1933238142574789408.Spec : Prop :=
  ∀ n, P1933238142574789408.a n = A147996 (n + 1)

theorem P1933238142574789408.correct : P1933238142574789408.Spec := by
  intro n
  simp only [A147996, Nat.add_sub_cancel]

end A147996

/-! ## A147996.P4575426802648180194

`A000244(n)²-A001555(n)`
-/

namespace A147996.P4575426802648180194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n ^ 2 - A001555 n

end

end A147996.P4575426802648180194

namespace A147996

/-- `A000244(n)²-A001555(n)` -/
def P4575426802648180194.Spec : Prop :=
  ∀ n, P4575426802648180194.a n = A147996 (n + 1)

end A147996

/-! ## A147996.P11505362425091943529

`Δ[A002452(n)]-A001555(n)`
-/

namespace A147996.P11505362425091943529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001555 n

end

end A147996.P11505362425091943529

namespace A147996

/-- `Δ[A002452(n)]-A001555(n)` -/
def P11505362425091943529.Spec : Prop :=
  ∀ n, P11505362425091943529.a n = A147996 (n + 1)

end A147996

/-! ## A147996.P16586537681709275476

`A000244(2*n)-A001555(n)`
-/

namespace A147996.P16586537681709275476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (2 * n) - A001555 n

end

end A147996.P16586537681709275476

namespace A147996

/-- `A000244(2*n)-A001555(n)` -/
def P16586537681709275476.Spec : Prop :=
  ∀ n, P16586537681709275476.a n = A147996 (n + 1)

end A147996

/-! ## A147996.P14966976919739000292

`A001556(n)-2*A001555(n)`
-/

namespace A147996.P14966976919739000292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001556 n - 2 * A001555 n

end

end A147996.P14966976919739000292

namespace A147996

/-- `A001556(n)-2*A001555(n)` -/
def P14966976919739000292.Spec : Prop :=
  ∀ n, P14966976919739000292.a n = A147996 (n + 1)

theorem P14966976919739000292.correct : P14966976919739000292.Spec := by
  intro n
  simp only [A147996, Nat.add_sub_cancel, A147996.P14966976919739000292.a, A147996.P1933238142574789408.a, A001019, A001019.P4632907595368420400.a, A001555, A001555.P13748076003785863365.a, A001556, A001556.P2048726826330034795.a, A001018, A001018.P5588564631493008987.a, A001554, A001554.P2025650633643354615.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147996

/-! ## A147996.P7020909258030108989

`A001019(n)+A001019(n)-A001556(n)`
-/

namespace A147996.P7020909258030108989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n + (A001019 n - A001556 n)

end

end A147996.P7020909258030108989

namespace A147996

/-- `A001019(n)+A001019(n)-A001556(n)` -/
def P7020909258030108989.Spec : Prop :=
  ∀ n, P7020909258030108989.a n = A147996 (n + 1)

theorem P7020909258030108989.correct : P7020909258030108989.Spec := by
  intro n
  simp only [A147996, Nat.add_sub_cancel, A147996.P7020909258030108989.a, A147996.P1933238142574789408.a, A001019, A001019.P4632907595368420400.a, A001555, A001555.P13748076003785863365.a, A001556, A001556.P2048726826330034795.a, A001018, A001018.P5588564631493008987.a, A001554, A001554.P2025650633643354615.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A147996

/-!
# A147997: Number of nonnegative even integers <= Fibonacci(n).

The programs for A147997, the canonical program `A147997.P4020817507240813686` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A147997 has offset 0).

The definition of A147997 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A147997.P4020817507240813686

`a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A147997

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` -/
def P4020817507240813686.Spec : Prop :=
  ∀ n, P4020817507240813686.a n = A147997 n

theorem P4020817507240813686.correct : P4020817507240813686.Spec := by
  intro n
  simp only [A147997]

end A147997

/-! ## A147997.P17124777304098546562

`1+A004695(n)`
-/

namespace A147997.P17124777304098546562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A004695 n

end

end A147997.P17124777304098546562

namespace A147997

/-- `1+A004695(n)` -/
def P17124777304098546562.Spec : Prop :=
  ∀ n, P17124777304098546562.a n = A147997 n

end A147997

/-! ## A147997.P8130394734590001617

`1+floor(A000045(n)/2)`
-/

namespace A147997.P8130394734590001617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ⌊(A000045 n : ℚ) / 2⌋

end

end A147997.P8130394734590001617

namespace A147997

/-- `1+floor(A000045(n)/2)` -/
def P8130394734590001617.Spec : Prop :=
  ∀ n, P8130394734590001617.a n = A147997 n

end A147997

/-! ## A147997.P17807479314105359009

`a(n-1)+a(n-2)-n²%3` with `a(0)=1, a(1)=1`
-/

namespace A147997.P17807479314105359009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (a (n - 2) - ((n ^ 2 % 3 : ℕ) : ℤ))

end

end A147997.P17807479314105359009

namespace A147997

/-- `a(n-1)+a(n-2)-n²%3` -/
def P17807479314105359009.Spec : Prop :=
  ∀ n, P17807479314105359009.a n = A147997 n

end A147997

/-! ## A147997.P2241406045461869534

`a(n-2)+a(n-1)-gcd(3, n)%3` with `a(0)=1, a(1)=1`
-/

namespace A147997.P2241406045461869534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) - ((Nat.gcd 3 n % 3 : ℕ) : ℤ)

end

end A147997.P2241406045461869534

namespace A147997

/-- `a(n-2)+a(n-1)-gcd(3, n)%3` -/
def P2241406045461869534.Spec : Prop :=
  ∀ n, P2241406045461869534.a n = A147997 n

end A147997

/-! ## A147997.P11725959983817222192

`a(n-2)+a(n-1)-(n*n)%3` with `a(0)=1, a(1)=1`
-/

namespace A147997.P11725959983817222192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 1) - ((n * n % 3 : ℕ) : ℤ)

end

end A147997.P11725959983817222192

namespace A147997

/-- `a(n-2)+a(n-1)-(n*n)%3` -/
def P11725959983817222192.Spec : Prop :=
  ∀ n, P11725959983817222192.a n = A147997 n

end A147997

/-! ## A147997.P7653056690048518686

`A173673(2*n)+1`
-/

namespace A147997.P7653056690048518686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (2 * n) + 1

end

end A147997.P7653056690048518686

namespace A147997

/-- `A173673(2*n)+1` -/
def P7653056690048518686.Spec : Prop :=
  ∀ n, P7653056690048518686.a n = A147997 n

end A147997

/-! ## A147997.P9409993620704661773

`a(n-3)-A152163(n)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A147997.P9409993620704661773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 3) - A152163 n

end

end A147997.P9409993620704661773

namespace A147997

/-- `a(n-3)-A152163(n)` -/
def P9409993620704661773.Spec : Prop :=
  ∀ n, P9409993620704661773.a n = A147997 n

end A147997

/-! ## A147997.P1149751471783241974

`A000045(n-2)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A147997.P1149751471783241974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A000045 (n - 2) + a (n - 3)

end

end A147997.P1149751471783241974

namespace A147997

/-- `A000045(n-2)+a(n-3)` -/
def P1149751471783241974.Spec : Prop :=
  ∀ n, P1149751471783241974.a n = A147997 n

end A147997

/-! ## A147997.P12967988456961746927

`A173173(n)+A079978(n)`
-/

namespace A147997.P12967988456961746927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 n + A079978 n

end

end A147997.P12967988456961746927

namespace A147997

/-- `A173173(n)+A079978(n)` -/
def P12967988456961746927.Spec : Prop :=
  ∀ n, P12967988456961746927.a n = A147997 n

end A147997

/-! ## A147997.P4893882399221946536

`A173173(n)+1-A011655(n)`
-/

namespace A147997.P4893882399221946536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 n + (1 - A011655 n)

end

end A147997.P4893882399221946536

namespace A147997

/-- `A173173(n)+1-A011655(n)` -/
def P4893882399221946536.Spec : Prop :=
  ∀ n, P4893882399221946536.a n = A147997 n

end A147997

/-! ## A147997.P10768014662706984845

`A173173(n)+A010892(n+1)*A010892(n)`
-/

namespace A147997.P10768014662706984845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 n + A010892 (n + 1) * A010892 n

end

end A147997.P10768014662706984845

namespace A147997

/-- `A173173(n)+A010892(n+1)*A010892(n)` -/
def P10768014662706984845.Spec : Prop :=
  ∀ n, P10768014662706984845.a n = A147997 n

end A147997

/-! ## A147997.P5052941157289568519

`floor(∑[a(n-1)+a(n-2)]/2)` with `a(0)=2, a(1)=1, a(2)=0`
-/

namespace A147997.P5052941157289568519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌋

end

end A147997.P5052941157289568519

namespace A147997

/-- `floor(∑[a(n-1)+a(n-2)]/2)` -/
def P5052941157289568519.Spec : Prop :=
  ∀ n, P5052941157289568519.a n = A147997 n

end A147997

/-! ## A147997.P12916820008282373623

`floor(A157725(n)/2)`
-/

namespace A147997.P12916820008282373623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A157725 n : ℚ) / 2⌋

end

end A147997.P12916820008282373623

namespace A147997

/-- `floor(A157725(n)/2)` -/
def P12916820008282373623.Spec : Prop :=
  ∀ n, P12916820008282373623.a n = A147997 n

end A147997

/-! ## A147997.P5212569959777442663

`ceil(A001611(n)/2)`
-/

namespace A147997.P5212569959777442663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001611 n : ℚ) / 2⌉

end

end A147997.P5212569959777442663

namespace A147997

/-- `ceil(A001611(n)/2)` -/
def P5212569959777442663.Spec : Prop :=
  ∀ n, P5212569959777442663.a n = A147997 n

end A147997

/-! ## A147997.P7384914949925308835

`ceil(A104220(n)/2)`
-/

namespace A147997.P7384914949925308835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A104220 n : ℚ) / 2⌉

end

end A147997.P7384914949925308835

namespace A147997

/-- `ceil(A104220(n)/2)` -/
def P7384914949925308835.Spec : Prop :=
  ∀ n, P7384914949925308835.a n = A147997 n

end A147997

/-! ## A147997.P14725936739187484068

`A104221(n)/2+1`
-/

namespace A147997.P14725936739187484068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104221 n : ℚ) / 2 + 1

end

end A147997.P14725936739187484068

namespace A147997

/-- `A104221(n)/2+1` -/
def P14725936739187484068.Spec : Prop :=
  ∀ n, P14725936739187484068.a n = (A147997 n : ℚ)

end A147997

/-! ## A147997.P323062008483889250

`floor((A157726(n)-1)/2)`
-/

namespace A147997.P323062008483889250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A157726 n - 1 : ℚ) / 2⌋

end

end A147997.P323062008483889250

namespace A147997

/-- `floor((A157726(n)-1)/2)` -/
def P323062008483889250.Spec : Prop :=
  ∀ n, P323062008483889250.a n = A147997 n

end A147997

/-! ## A147997.P16229859994724780766

`ceil(A157729(n)/2)-2`
-/

namespace A147997.P16229859994724780766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A157729 n : ℚ) / 2⌉ - 2

end

end A147997.P16229859994724780766

namespace A147997

/-- `ceil(A157729(n)/2)-2` -/
def P16229859994724780766.Spec : Prop :=
  ∀ n, P16229859994724780766.a n = A147997 n

end A147997

/-! ## A147997.P5180304355537295833

`ceil(∑[A000045(abs(2-n))]/2)`
-/

namespace A147997.P5180304355537295833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A147997.P5180304355537295833

namespace A147997

/-- `ceil(∑[A000045(abs(2-n))]/2)` -/
def P5180304355537295833.Spec : Prop :=
  ∀ n, P5180304355537295833.a n = A147997 n

end A147997

/-!
# A147998: [r]*[2r]*[3r]*...[nr], where r=(1+sqrt(5))/2 and []=floor.

The programs for A147998, there is no canonical definition to state claims against.
-/

/-! ## A147998.P17177079069164591401

`∏[floor(ϕ*(n+1))]`
-/

namespace A147998.P17177079069164591401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A147998.P17177079069164591401

/-! ## A147998.P9670500514526486396

`abs(∏[-ceil(ϕ*xor(n, -1))])`
-/

namespace A147998.P9670500514526486396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈Real.goldenRatio * (Int.xor (n : ℤ) (-1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A147998.P9670500514526486396

/-! ## A147998.P18175287201188574661

`floor(ϕ*(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A147998.P18175287201188574661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ * a (n - 1)

end

end A147998.P18175287201188574661

/-! ## A147998.P2764558172529460268

`abs(∏[ceil(ϕ*C(n+1, n))-1])`
-/

namespace A147998.P2764558172529460268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (Nat.choose (n + 1) n : ℝ)⌉ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A147998.P2764558172529460268

/-! ## A147998.P11112019748012095189

`abs(∏[ceil((n+1)*(ϕ-acot(n+1)))])`
-/

namespace A147998.P11112019748012095189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * (Real.goldenRatio - SequenceMachineLib.acot (n + 1 : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A147998.P11112019748012095189

/-!
# A147999: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, 0), (1, 0, 0)}.

The programs for A147999, there is no canonical definition to state claims against.
-/

/-! ## A147999.P9230841599842037668

`A004526(A148044(n)+A001405(n))`
-/

namespace A147999.P9230841599842037668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A148044 n + A001405 n).toNat

end

end A147999.P9230841599842037668

/-! ## A147999.P16335661544076744009

`A325641(A148044(n)+A001405(n))`
-/

namespace A147999.P16335661544076744009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325641 (A148044 n + A001405 n).toNat

end

end A147999.P16335661544076744009

/-! ## A147999.P17438916486140427907

`A148044(n)-A004526(A148044(n)-A001405(n))`
-/

namespace A147999.P17438916486140427907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148044 n - A004526 (A148044 n - A001405 n).toNat

end

end A147999.P17438916486140427907

