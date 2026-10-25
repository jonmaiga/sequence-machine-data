import SequenceMachineLib
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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
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

/-!
# A294500: Binomial transform of the number of planar partitions (A000219).

The programs for A294500, there is no canonical definition to state claims against.
-/

/-! ## A294500.P12503197679809019689

`∑[A320563(n)]`
-/

namespace A294500.P12503197679809019689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294500.P12503197679809019689

/-! ## A294500.P1897193545965775367

`A320563(char[1]+n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A294500.P1897193545965775367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A320563 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A294500.P1897193545965775367

/-! ## A294500.P2838248967212987128

`A320563(n)-(A000007(n)-a(n-1))` with `a(0)=1`
-/

namespace A294500.P2838248967212987128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320563 n - (A000007 n - a (n - 1))

end

end A294500.P2838248967212987128

/-! ## A294500.P14359760265152536934

`A320563(n)-(A000038(n)-a(n-1))` with `a(0)=1`
-/

namespace A294500.P14359760265152536934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320563 n - (A000038 n - a (n - 1))

end

end A294500.P14359760265152536934

/-! ## A294500.P13387450394779101802

`∑{d}[A000079(n), A320563(log2(#))]`
-/

namespace A294500.P13387450394779101802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A320563 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A294500.P13387450394779101802

/-!
# A294502: Binomial transform of A026007.

The programs for A294502, there is no canonical definition to state claims against.
-/

/-! ## A294502.P18444637023840329166

`∑[A320564(n)]`
-/

namespace A294502.P18444637023840329166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320564 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294502.P18444637023840329166

/-! ## A294502.P10622476395348748577

`A320564(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A294502.P10622476395348748577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320564 n + a (A023443 n).toNat

end

end A294502.P10622476395348748577

/-! ## A294502.P7506152828472802216

`A320564(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A294502.P7506152828472802216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320564 n + a (A028310 n - 1).toNat

end

end A294502.P7506152828472802216

/-! ## A294502.P8524070113794610386

`A320564(n)+a(n%A001937(n)-1)` with `a(0)=1`
-/

namespace A294502.P8524070113794610386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320564 n + a (Int.tmod (n : ℤ) (A001937 n) - 1).toNat

end

end A294502.P8524070113794610386

/-!
# A294504: Binomial transform of A156616.

The programs for A294504, there is no canonical definition to state claims against.
-/

/-! ## A294504.P7272905251517041972

`A262872(A069996(n))`
-/

namespace A294504.P7272905251517041972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262872 (A069996 n).toNat

end

end A294504.P7272905251517041972

/-!
# A294506: E.g.f.: 1/Product_{k>0} (1-x^(2*k-1)/(2*k-1)).

The programs for A294506, there is no canonical definition to state claims against.
-/

/-! ## A294506.P148349137412363704

`A005843(n!)-A001472(n)`
-/

namespace A294506.P148349137412363704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Nat.factorial n) - A001472 n

end

end A294506.P148349137412363704

/-! ## A294506.P18389580166301734776

`A004277(n!)-A005388(n)`
-/

namespace A294506.P18389580166301734776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Nat.factorial n) - A005388 n

end

end A294506.P18389580166301734776

/-! ## A294506.P12308895666856141557

`A005843(n!)-A005388(n)`
-/

namespace A294506.P12308895666856141557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Nat.factorial n) - A005388 n

end

end A294506.P12308895666856141557

/-! ## A294506.P1029364978835569405

`A005843(n!)-A053498(n)`
-/

namespace A294506.P1029364978835569405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Nat.factorial n) - A053498 n

end

end A294506.P1029364978835569405

/-!
# A294507: Sum(m^p, m=1..p-1) / p^2 as p runs through the odd primes.

The programs for A294507, there is no canonical definition to state claims against.
-/

/-! ## A294507.P12070474854515099142

`A219550(n+1)/A065091(n+1)`
-/

namespace A294507.P12070474854515099142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219550 (n + 1) : ℚ) / (A065091 (n + 1) : ℚ)

end

end A294507.P12070474854515099142

/-! ## A294507.P1920029057668710204

`A219550(n+1)/A000040(n+2)`
-/

namespace A294507.P1920029057668710204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219550 (n + 1) : ℚ) / (A000040 (n + 2) : ℚ)

end

end A294507.P1920029057668710204

/-!
# A294508: Regular triangular array read by rows: T(n,m) = pi(n*m) - pi(n)*pi(m) for n > 0 and 0 < m <= n.

The programs for A294508, there is no canonical definition to state claims against.
-/

/-! ## A294508.P6636442819629184791

`A257081(A257081(∑[A020706(n)]))`
-/

namespace A294508.P6636442819629184791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257081 (A257081 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A294508.P6636442819629184791

/-! ## A294508.P8060812546317679060

`A303708(A132106(n)+A008864(n+1))`
-/

namespace A294508.P8060812546317679060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303708 (A132106 n + A008864 (n + 1)).toNat

end

end A294508.P8060812546317679060

/-! ## A294508.P11169166975740349510

`A243180(A005897(n+3))%A164358(n)`
-/

namespace A294508.P11169166975740349510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243180 (A005897 (n + 3)).toNat) (A164358 n)

end

end A294508.P11169166975740349510

/-! ## A294508.P51912265426487231

`A196564(A289881(n)+A025877(n))`
-/

namespace A294508.P51912265426487231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A289881 n + A025877 n).toNat

end

end A294508.P51912265426487231

/-! ## A294508.P6315629882371757519

`and(A043555(n), A250898(A096277(n+1)))`
-/

namespace A294508.P6315629882371757519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043555 n) (A250898 (A096277 (n + 1)).toNat)

end

end A294508.P6315629882371757519

/-!
# A294509: a(n) is the least value of pi(n*m) - pi(n)*pi(m) for any positive m <= n.

The programs for A294509, there is no canonical definition to state claims against.
-/

/-! ## A294509.P7800748278144232117

`A059571(n+1)-A054025(A141523(n))`
-/

namespace A294509.P7800748278144232117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059571 (n + 1) - A054025 (A141523 n).toNat

end

end A294509.P7800748278144232117

/-! ## A294509.P2701370337010668004

`A059571(n+1)-A054525(A006203(n+1))`
-/

namespace A294509.P2701370337010668004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059571 (n + 1) - A054525 (A006203 (n + 1)).toNat

end

end A294509.P2701370337010668004

/-! ## A294509.P2832740405894344123

`A059571(n+1)-A011695(A083720(n+1))`
-/

namespace A294509.P2832740405894344123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059571 (n + 1) - A011695 (A083720 (n + 1)).toNat

end

end A294509.P2832740405894344123

/-! ## A294509.P14278062816405924147

`A059571(n+1)-A101637(A282390(n+1))`
-/

namespace A294509.P14278062816405924147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059571 (n + 1) - A101637 (A282390 (n + 1)).toNat

end

end A294509.P14278062816405924147

/-! ## A294509.P4487142330836742009

`A059571(n+1)-A346070(A291219(n))`
-/

namespace A294509.P4487142330836742009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059571 (n + 1) - A346070 (A291219 n).toNat

end

end A294509.P4487142330836742009

/-!
# A294511: a(n) = n! * [x^n] exp(2*n*x)*(BesselI(0,2*x) - BesselI(1,2*x))^n.

The programs for A294511, there is no canonical definition to state claims against.
-/

/-! ## A294511.P1763834632320243440

`A294498(∑[4*n])`
-/

namespace A294511.P1763834632320243440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294498 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294511.P1763834632320243440

/-! ## A294511.P9490954795356317501

`A294498(A046092(n))%A135654(n+4)`
-/

namespace A294511.P9490954795356317501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294498 (A046092 n).toNat) (A135654 (n + 4))

end

end A294511.P9490954795356317501

/-!
# A294512: Denominators of partial sums of the reciprocals of octagonal numbers.

The programs for A294512, there is no canonical definition to state claims against.
-/

/-! ## A294512.P17470596621499174218

`A250400(n+1)/(n+1)`
-/

namespace A294512.P17470596621499174218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250400 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A294512.P17470596621499174218

/-!
# A294513: Denominators of the partial sums of the reciprocals of twice the pentagonal numbers.

The programs for A294513, there is no canonical definition to state claims against.
-/

/-! ## A294513.P13146997684792843496

`2/(n+1)*A250327(n+1)`
-/

namespace A294513.P13146997684792843496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A250327 (n + 1) : ℚ)

end

end A294513.P13146997684792843496

/-!
# A294515: Denominators of partial sums of the reciprocals of the decagonal numbers.

The programs for A294515, there is no canonical definition to state claims against.
-/

/-! ## A294515.P4324978918530972546

`A250550(n+1)/(n+1)`
-/

namespace A294515.P4324978918530972546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250550 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A294515.P4324978918530972546

/-!
# A294517: Denominators of the partial sums of the reciprocals of (k+1)*(4*k+3) = A033991(k+1), for k >= 0.

The programs for A294517, there is no canonical definition to state claims against.
-/

/-! ## A294517.P11799607475571093024

`A034176(n+1)*A051802(A214825(3*n+2))`
-/

namespace A294517.P11799607475571093024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034176 (n + 1) * A051802 (A214825 (3 * n + 2)).toNat

end

end A294517.P11799607475571093024

/-!
# A294519: Convolution triangle for Chebyshev S polynomials (rising powers).

The programs for A294519, there is no canonical definition to state claims against.
-/

/-! ## A294519.P3260779401026990245

`comp[∑[4*n]]%2*A122765(n+1)`
-/

namespace A294519.P3260779401026990245
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ) * A122765 (n + 1)

end

end A294519.P3260779401026990245

/-! ## A294519.P12981870304419586339

`(1-C(∑[char[∑[n]]], 2)+n)*A112552(n)`
-/

namespace A294519.P12981870304419586339
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A112552 n

end

end A294519.P12981870304419586339

/-! ## A294519.P5799607836811812818

`(1-C(∑[char[∑[n]]], 2)+n)*A049310(comp[∑[n]])`
-/

namespace A294519.P5799607836811812818
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A049310 (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n)

end

end A294519.P5799607836811812818

/-! ## A294519.P3424518531663114333

`A112552(n)*A134199(n)`
-/

namespace A294519.P3424518531663114333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112552 n * A134199 n

end

end A294519.P3424518531663114333

/-! ## A294519.P8569573545387993842

`A002260(n+1)*A112552(n)`
-/

namespace A294519.P8569573545387993842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A112552 n

end

end A294519.P8569573545387993842

/-! ## A294519.P13544410842554714963

`(A002262(n)+1)*A112552(n)`
-/

namespace A294519.P13544410842554714963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A112552 n

end

end A294519.P13544410842554714963

/-! ## A294519.P8654325001397560648

`A049310(n)*A128180(n+1)`
-/

namespace A294519.P8654325001397560648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n * A128180 (n + 1)

end

end A294519.P8654325001397560648

/-! ## A294519.P14409085841871666715

`A112552(n)*A128179(n+1)`
-/

namespace A294519.P14409085841871666715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112552 n * A128179 (n + 1)

end

end A294519.P14409085841871666715

/-! ## A294519.P1250523401724927520

`A112552(n)*A128221(n+1)`
-/

namespace A294519.P1250523401724927520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112552 n * A128221 (n + 1)

end

end A294519.P1250523401724927520

/-! ## A294519.P15739957923360223784

`A112552(n)*A134226(n+1)`
-/

namespace A294519.P15739957923360223784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112552 n * A134226 (n + 1)

end

end A294519.P15739957923360223784

/-!
# A294522: Triangle read by rows: T(n,k) is the number of simple connected graphs on n nodes with diameter k (0<=k

The programs for A294522, there is no canonical definition to state claims against.
-/

/-! ## A294522.P11561105006488406153

`A354469(A326474(n))`
-/

namespace A294522.P11561105006488406153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354469 (A326474 n).toNat

end

end A294522.P11561105006488406153

/-! ## A294522.P11125099311087531821

`A276190(A267546(n+2))`
-/

namespace A294522.P11125099311087531821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276190 (A267546 (n + 2)).toNat

end

end A294522.P11125099311087531821

/-! ## A294522.P14479502142637398042

`A060773(∑{d}[A004248(n), #])`
-/

namespace A294522.P14479502142637398042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060773 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A294522.P14479502142637398042

/-! ## A294522.P4900466591942741679

`A058710(n)%A108800(A331562(n))`
-/

namespace A294522.P4900466591942741679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058710 n) (A108800 (A331562 n).toNat)

end

end A294522.P4900466591942741679

/-!
# A294523: Lexicographically earliest sequence of positive terms, such that, for any n > 0, the binary expansion of n, say of size k+1, is (1, a(n) mod 2, a^2(n) mod 2, ..., a^k(n) mod 2) (where a^i denotes the i-th iterate of the sequence).

The programs for A294523, there is no canonical definition to state claims against.
-/

/-! ## A294523.P16440023971317629639

`gcd(A080476(A005554(n+1)), A080541(n+1))`
-/

namespace A294523.P16440023971317629639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080476 (A005554 (n + 1)).toNat) (A080541 (n + 1))

end

end A294523.P16440023971317629639

/-!
# A294525: Triangle read by rows: T(n,k) is the number of simple connected graphs on n nodes with k center nodes.

The programs for A294525, there is no canonical definition to state claims against.
-/

/-! ## A294525.P2136343900615816767

`A000120(A199660(n))*A348422(n+1)`
-/

namespace A294525.P2136343900615816767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A199660 n).toNat * A348422 (n + 1)

end

end A294525.P2136343900615816767

/-! ## A294525.P2334161735747178399

`A086010(A055226(n))+A065600(n)`
-/

namespace A294525.P2334161735747178399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086010 (A055226 n).toNat + A065600 n

end

end A294525.P2334161735747178399

/-! ## A294525.P8928364072164875140

`A001227(A037223(n))*A116598(n)`
-/

namespace A294525.P8928364072164875140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A037223 n).toNat * A116598 n

end

end A294525.P8928364072164875140

/-! ## A294525.P10440902373521168110

`lcm(A130693(A276058(n)), A144157(n))`
-/

namespace A294525.P10440902373521168110
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A130693 (A276058 n).toNat) (A144157 n)

end

end A294525.P10440902373521168110

/-! ## A294525.P8859110311074733256

`and(A027293(A079496(n)), A028305(n))`
-/

namespace A294525.P8859110311074733256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027293 (A079496 n).toNat) (A028305 n)

end

end A294525.P8859110311074733256

/-!
# A294527: Number of Dyck paths of length 2n with exactly 2 hills.

The programs for A294527, there is no canonical definition to state claims against.
-/

/-! ## A294527.P16652573484190902701

`A065600(∑[C(n, a(n-1))])` with `a(0)=4`
-/

namespace A294527.P16652573484190902701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  Nat.choose n (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065600 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294527.P16652573484190902701

/-! ## A294527.P16198393975248168446

`A065600(A212342(n)+3)`
-/

namespace A294527.P16198393975248168446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065600 (A212342 n + 3).toNat

end

end A294527.P16198393975248168446

/-! ## A294527.P276085784889711969

`A065600(A133263(n)+char[1])`
-/

namespace A294527.P276085784889711969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065600 (A133263 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A294527.P276085784889711969

/-! ## A294527.P385489137409455655

`A065600(A133263(n-char[1]))`
-/

namespace A294527.P385489137409455655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065600 (A133263 (n - (if ∃ j, f1 j = n then 1 else 0))).toNat

end

end A294527.P385489137409455655

/-! ## A294527.P1341607706694367446

`A065600(A133263(n))%A000108(n)`
-/

namespace A294527.P1341607706694367446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065600 (A133263 n).toNat) (A000108 n)

end

end A294527.P1341607706694367446

/-!
# A294528: a(n) is the smallest prime that begins a run of exactly n consecutive numbers having 2, 4, ..., 2*n divisors.

The programs for A294528, there is no canonical definition to state claims against.
-/

/-! ## A294528.P13407670218929809131

`record[A363335(n+1)]`
-/

namespace A294528.P13407670218929809131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294528.P13407670218929809131

/-!
# A294529: Binomial transform of A001156.

The programs for A294529, there is no canonical definition to state claims against.
-/

/-! ## A294529.P6967005747906143729

`∑[A028310(A307264(n)-1)]`
-/

namespace A294529.P6967005747906143729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A307264 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294529.P6967005747906143729

/-! ## A294529.P864191593807322354

`A020705(∑[A307264(n)])-(n+4)`
-/

namespace A294529.P864191593807322354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n + 4 : ℤ)

end

end A294529.P864191593807322354

/-! ## A294529.P2621341859252602837

`A124789(5*A077741(n+1))`
-/

namespace A294529.P2621341859252602837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124789 (5 * A077741 (n + 1)).toNat

end

end A294529.P2621341859252602837

/-! ## A294529.P11457824918856918255

`A103372(A172338(n)^gcd(11, n)+3+n)`
-/

namespace A294529.P11457824918856918255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103372 (A172338 n ^ Nat.gcd 11 n + 3 + (n : ℤ)).toNat

end

end A294529.P11457824918856918255

/-! ## A294529.P9558021067912138326

`lcm(A014963(A050040(5*n+1)), A103372(5*n+2))`
-/

namespace A294529.P9558021067912138326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014963 (A050040 (5 * n + 1)).toNat) (A103372 (5 * n + 2))

end

end A294529.P9558021067912138326

/-!
# A294530: Binomial transform of A023871.

The programs for A294530, there is no canonical definition to state claims against.
-/

/-! ## A294530.P4498125318793988805

`A248227(A003500(n))-n`
-/

namespace A294530.P4498125318793988805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A003500 n).toNat - (n : ℤ)

end

end A294530.P4498125318793988805

/-! ## A294530.P16262235681137378335

`A247971(xor(comp[7*n-3], A032443(n)))`
-/

namespace A294530.P16262235681137378335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) - 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247971 (Int.xor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A032443 n)).toNat

end

end A294530.P16262235681137378335

/-!
# A294531: E.g.f.: 1/Product_{k>0} (1-x^(2*k-1)/(2*k-1)!).

The programs for A294531, there is no canonical definition to state claims against.
-/

/-! ## A294531.P9964934166453305943

`ceil(A074779(∏[n+1])/(n+1))`
-/

namespace A294531.P9964934166453305943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A074779 (∏ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)⌉

end

end A294531.P9964934166453305943

/-! ## A294531.P11915299255397509033

`A071995(floor(sqrt(A099694(n))))`
-/

namespace A294531.P11915299255397509033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071995 (Int.sqrt (A099694 n)).toNat

end

end A294531.P11915299255397509033

/-! ## A294531.P9995606594935836487

`A008620(A160564(n)+A008611(n))`
-/

namespace A294531.P9995606594935836487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A160564 n + A008611 n).toNat

end

end A294531.P9995606594935836487

/-!
# A294532: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-2), where a(0) = 1, a(1) = 2, b(0) = 3.

The programs for A294532, there is no canonical definition to state claims against.
-/

/-! ## A294532.P14099818356167976699

`A004277(A294545(n))-A294565(n)`
-/

namespace A294532.P14099818356167976699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A294545 n).toNat - A294565 n

end

end A294532.P14099818356167976699

/-! ## A294532.P5277967121906906887

`A276796(A294550(n)+1)`
-/

namespace A294532.P5277967121906906887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (A294550 n + 1).toNat

end

end A294532.P5277967121906906887

/-! ## A294532.P17727612137502117135

`A276796(or(1, A296555(n)))`
-/

namespace A294532.P17727612137502117135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (Int.lor 1 (A296555 n)).toNat

end

end A294532.P17727612137502117135

/-! ## A294532.P7313889905788994880

`A276796(A296555(n)-1)+1`
-/

namespace A294532.P7313889905788994880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (A296555 n - 1).toNat + 1

end

end A294532.P7313889905788994880

/-! ## A294532.P15747323872391148533

`A276796(A296555(n)+A010054(n))`
-/

namespace A294532.P15747323872391148533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (A296555 n + A010054 n).toNat

end

end A294532.P15747323872391148533

/-!
# A294533: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-2) + 1, where a(0) = 1, a(1) = 2, b(0) = 3.

The programs for A294533, there is no canonical definition to state claims against.
-/

/-! ## A294533.P15927723320231469238

`A004277(A294541(n))-A294564(n)`
-/

namespace A294533.P15927723320231469238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A294541 n).toNat - A294564 n

end

end A294533.P15927723320231469238

/-! ## A294533.P14257575036063319852

`A295862(n)-record[A229047(n)]`
-/

namespace A294533.P14257575036063319852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229047 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295862 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294533.P14257575036063319852

/-! ## A294533.P2433724910933489291

`record[A293358(n)-A120659(n)]`
-/

namespace A294533.P2433724910933489291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293358 n - A120659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294533.P2433724910933489291

/-! ## A294533.P5351424140503969411

`A295965(n)-A000045(A061497(n+1))`
-/

namespace A294533.P5351424140503969411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295965 n - A000045 (A061497 (n + 1)).toNat

end

end A294533.P5351424140503969411

/-! ## A294533.P7962939481902553407

`A295965(n)-A000045(A077741(n+1))`
-/

namespace A294533.P7962939481902553407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295965 n - A000045 (A077741 (n + 1)).toNat

end

end A294533.P7962939481902553407

/-!
# A294534: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-2) + 2, where a(0) = 1, a(1) = 2, b(0) = 3.

The programs for A294534, there is no canonical definition to state claims against.
-/

/-! ## A294534.P10642606349710346479

`A295951(n)-A000045(A077168(n))`
-/

namespace A294534.P10642606349710346479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295951 n - A000045 (A077168 n).toNat

end

end A294534.P10642606349710346479

/-! ## A294534.P7838051177614439048

`A293406(n)-A140358(A033192(n))`
-/

namespace A294534.P7838051177614439048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293406 n - A140358 (A033192 n).toNat

end

end A294534.P7838051177614439048

/-! ## A294534.P3578458789154426949

`A293406(A004907(n+1))-A000045(n)`
-/

namespace A294534.P3578458789154426949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293406 (A004907 (n + 1)).toNat - A000045 n

end

end A294534.P3578458789154426949

/-! ## A294534.P4993293718828232282

`A293406(A004917(n+1))-A000045(n)`
-/

namespace A294534.P4993293718828232282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293406 (A004917 (n + 1)).toNat - A000045 n

end

end A294534.P4993293718828232282

/-!
# A294535: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-2) + 3, where a(0) = 1, a(1) = 2, b(0) = 3.

The programs for A294535, there is no canonical definition to state claims against.
-/

/-! ## A294535.P4569094445687592069

`A295962(n)-2`
-/

namespace A294535.P4569094445687592069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295962 n - 2

end

end A294535.P4569094445687592069

/-! ## A294535.P12638065906050837992

`A327274(p?[2*n+1])+A295962(n)`
-/

namespace A294535.P12638065906050837992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327274 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + A295962 n

end

end A294535.P12638065906050837992

/-! ## A294535.P17669462640786309976

`A327274(A045457(n+1))+A295962(n)`
-/

namespace A294535.P17669462640786309976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327274 (A045457 (n + 1)).toNat + A295962 n

end

end A294535.P17669462640786309976

/-! ## A294535.P13949508030733086430

`A327274(A007693(n+2))+A295962(n)`
-/

namespace A294535.P13949508030733086430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327274 (A007693 (n + 2)).toNat + A295962 n

end

end A294535.P13949508030733086430

/-! ## A294535.P10773316715423287077

`A327274(A139889(n+1))+A295962(n)`
-/

namespace A294535.P10773316715423287077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327274 (A139889 (n + 1)).toNat + A295962 n

end

end A294535.P10773316715423287077

/-!
# A294536: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-2) - 1, where a(0) = 1, a(1) = 2, b(0) = 3.

The programs for A294536, there is no canonical definition to state claims against.
-/

/-! ## A294536.P738601933321726415

`∑[∑[A000196(A176738(n))]]`
-/

namespace A294536.P738601933321726415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A176738 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294536.P738601933321726415

/-! ## A294536.P17973676683847238596

`A000006(A048746(n))-n`
-/

namespace A294536.P17973676683847238596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A048746 n).toNat - (n : ℤ)

end

end A294536.P17973676683847238596

/-! ## A294536.P1475038636232461640

`A026819(A185003(n+1))`
-/

namespace A294536.P1475038636232461640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A185003 (n + 1)).toNat

end

end A294536.P1475038636232461640

/-! ## A294536.P4790336685179507446

`A026819(A222115(n+1))`
-/

namespace A294536.P4790336685179507446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A222115 (n + 1)).toNat

end

end A294536.P4790336685179507446

/-! ## A294536.P795626828782398998

`A033183(35*A000712(n))`
-/

namespace A294536.P795626828782398998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (35 * A000712 n).toNat

end

end A294536.P795626828782398998

/-!
# A294537: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-2) + n, where a(0) = 1, a(1) = 2, b(0) = 3.

The programs for A294537, there is no canonical definition to state claims against.
-/

/-! ## A294537.P579149513106301195

`(A294543(n)+A065220(n))%A153058(A000330(n+1))`
-/

namespace A294537.P579149513106301195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294543 n + A065220 n) (A153058 (A000330 (n + 1)).toNat)

end

end A294537.P579149513106301195

/-! ## A294537.P12177876130783323724

`(A294543(n)+A065220(n))*A014963(A142087(n+1)+1)`
-/

namespace A294537.P12177876130783323724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A294543 n + A065220 n) * A014963 (A142087 (n + 1) + 1).toNat

end

end A294537.P12177876130783323724

/-! ## A294537.P12837152836567109155

`A294543(n)+A065220(n)-C(n, A340930(n+1))`
-/

namespace A294537.P12837152836567109155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294543 n + A065220 n - (Nat.choose n (A340930 (n + 1)).toNat : ℤ)

end

end A294537.P12837152836567109155

/-! ## A294537.P5179919355486137202

`A294543(n)+A065220(n)%A316983(n)`
-/

namespace A294537.P5179919355486137202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294543 n + Int.tmod (A065220 n) (A316983 n)

end

end A294537.P5179919355486137202

/-! ## A294537.P16904797011892170330

`A154269(A160370(n+1))+A294543(n)+A065220(n)`
-/

namespace A294537.P16904797011892170330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A160370 (n + 1)).toNat + (A294543 n + A065220 n)

end

end A294537.P16904797011892170330

/-!
# A294538: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-2) + 2n, where a(0) = 1, a(1) = 2, b(0) = 3.

The programs for A294538, there is no canonical definition to state claims against.
-/

/-! ## A294538.P15355658667741578262

`A294547(n)+A024000(∑[A212804(n)])`
-/

namespace A294538.P15355658667741578262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294547 n + A024000 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A294538.P15355658667741578262

/-! ## A294538.P10010322312831903196

`A294547(n)-A023443(∑[A212804(n)])`
-/

namespace A294538.P10010322312831903196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294547 n - A023443 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A294538.P10010322312831903196

/-! ## A294538.P12562346469075101808

`A294547(n)+A001489(A000071(n+1))`
-/

namespace A294538.P12562346469075101808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294547 n + A001489 (A000071 (n + 1)).toNat

end

end A294538.P12562346469075101808

/-! ## A294538.P12634897223992772860

`A294170(n)-A005843(A000071(n+1))`
-/

namespace A294538.P12634897223992772860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294170 n - A005843 (A000071 (n + 1)).toNat

end

end A294538.P12634897223992772860

/-! ## A294538.P10146664463897714152

`A294170(n)+A024000(A000045(n+1))-A000071(n+1)`
-/

namespace A294538.P10146664463897714152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294170 n + A024000 (A000045 (n + 1)).toNat - A000071 (n + 1)

end

end A294538.P10146664463897714152

/-!
# A294539: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-2) + n - 1, where a(0) = 1, a(1) = 2, b(0) = 3.

The programs for A294539, there is no canonical definition to state claims against.
-/

/-! ## A294539.P16822871251510602010

`A065220(n+1)+(A294542(n)-Δ[A065220(n)])%A201268(n+1)`
-/

namespace A294539.P16822871251510602010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 (n + 1) + Int.tmod (A294542 n - (f1 (n + 1) - f1 n)) (A201268 (n + 1))

end

end A294539.P16822871251510602010

/-! ## A294539.P13498038718637405216

`A065220(n+1)+(A295965(n)-A212804(n))%A098186(A028310(n))`
-/

namespace A294539.P13498038718637405216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 (n + 1) + Int.tmod (A295965 n - A212804 n) (A098186 (A028310 n).toNat)

end

end A294539.P13498038718637405216

/-! ## A294539.P3062708260586901090

`A065220(n)+A000027(A294542(n))`
-/

namespace A294539.P3062708260586901090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + A000027 (A294542 n).toNat

end

end A294539.P3062708260586901090

/-! ## A294539.P3590976823190769684

`A000027(A065220(n)+A295965(n)-1)`
-/

namespace A294539.P3590976823190769684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A065220 n + (A295965 n - 1)).toNat

end

end A294539.P3590976823190769684

/-! ## A294539.P528974961160983189

`A000027(A065220(n)-(1-A295965(n)))`
-/

namespace A294539.P528974961160983189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A065220 n - (1 - A295965 n)).toNat

end

end A294539.P528974961160983189

/-!
# A294540: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-2) + 2*n - 1, where a(0) = 1, a(1) = 2, b(0) = 3.

The programs for A294540, there is no canonical definition to state claims against.
-/

/-! ## A294540.P15888783705606880486

`A065220(n)+A000027(A294549(n))`
-/

namespace A294540.P15888783705606880486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + A000027 (A294549 n).toNat

end

end A294540.P15888783705606880486

/-! ## A294540.P11338352248776207094

`A294365(n)+∑[A023443(A212804(n))]`
-/

namespace A294540.P11338352248776207094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A212804 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294365 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294540.P11338352248776207094

/-! ## A294540.P6113081714135912866

`A065220(n)+A294365(n)+A023443(A212804(n))`
-/

namespace A294540.P6113081714135912866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + (A294365 n + A023443 (A212804 n).toNat)

end

end A294540.P6113081714135912866

/-! ## A294540.P7536065238947537922

`A065220(n+1)+A295957(n)+∑[A023443(A212804(n))]`
-/

namespace A294540.P7536065238947537922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A212804 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 (n + 1) + (A295957 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294540.P7536065238947537922

/-! ## A294540.P3370890569410109197

`A294549(n)-A024000(A065220(n)+1)`
-/

namespace A294540.P3370890569410109197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294549 n - A024000 (A065220 n + 1).toNat

end

end A294540.P3370890569410109197

/-!
# A294541: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1), where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294541, there is no canonical definition to state claims against.
-/

/-! ## A294541.P11600729464548030704

`(A294564(n)+A294533(n))/A000005(A174878(n+1))`
-/

namespace A294541.P11600729464548030704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294564 n + A294533 n : ℚ) / (A000005 (A174878 (n + 1)).toNat : ℚ)

end

end A294541.P11600729464548030704

/-! ## A294541.P12571119193195436506

`(A294564(n)+A294533(n))/A040015(A137795(n+1))`
-/

namespace A294541.P12571119193195436506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294564 n + A294533 n : ℚ) / (A040015 (A137795 (n + 1)).toNat : ℚ)

end

end A294541.P12571119193195436506

/-! ## A294541.P3002642196426419835

`A293767(n)+A023443(A212804(n))`
-/

namespace A294541.P3002642196426419835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293767 n + A023443 (A212804 n).toNat

end

end A294541.P3002642196426419835

/-! ## A294541.P15027476665861431899

`(A294564(n)+A294533(n))/A000005(A174858(n+1))`
-/

namespace A294541.P15027476665861431899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294564 n + A294533 n : ℚ) / (A000005 (A174858 (n + 1)).toNat : ℚ)

end

end A294541.P15027476665861431899

/-! ## A294541.P12324672758787253737

`A000701(2*n+3)-A162642(A223599(n+1))`
-/

namespace A294541.P12324672758787253737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000701 (2 * n + 3) - A162642 (A223599 (n + 1)).toNat

end

end A294541.P12324672758787253737

/-!
# A294542: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) + 1, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294542, there is no canonical definition to state claims against.
-/

/-! ## A294542.P8370217475403220252

`A295965(n)-1`
-/

namespace A294542.P8370217475403220252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295965 n - 1

end

end A294542.P8370217475403220252

/-! ## A294542.P9365812034050039848

`A307428(A007917(n+2))+A295965(n)`
-/

namespace A294542.P9365812034050039848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307428 (A007917 (n + 2)).toNat + A295965 n

end

end A294542.P9365812034050039848

/-! ## A294542.P10312536817547818473

`A317531(10*A000040(n+1))+A295965(n)`
-/

namespace A294542.P10312536817547818473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317531 (10 * A000040 (n + 1)).toNat + A295965 n

end

end A294542.P10312536817547818473

/-! ## A294542.P3090782179040761538

`A343785(A000217(n)+5)+A295965(n)`
-/

namespace A294542.P3090782179040761538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343785 (A000217 n + 5).toNat + A295965 n

end

end A294542.P3090782179040761538

/-! ## A294542.P17816897916622790718

`A319116(A319150(n))+A295965(n)`
-/

namespace A294542.P17816897916622790718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319116 (A319150 n).toNat + A295965 n

end

end A294542.P17816897916622790718

/-! ## A294542.P17549819615211080507

`A307420(A300334(n+1))+A295965(n)`
-/

namespace A294542.P17549819615211080507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307420 (A300334 (n + 1)).toNat + A295965 n

end

end A294542.P17549819615211080507

/-! ## A294542.P9226119864832925425

`A331430(A000217(n))+A295965(n)`
-/

namespace A294542.P9226119864832925425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331430 (A000217 n).toNat + A295965 n

end

end A294542.P9226119864832925425

/-!
# A294543: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) + 2, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294543, there is no canonical definition to state claims against.
-/

/-! ## A294543.P18163486158876889356

`A295951(n)-1`
-/

namespace A294543.P18163486158876889356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295951 n - 1

end

end A294543.P18163486158876889356

/-! ## A294543.P12370252118415978049

`(A295951(n)+log2(1/2))*char[A006068(n)]`
-/

namespace A294543.P12370252118415978049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 n

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A295951 n : ℝ) + Real.logb 2 ((1 : ℚ) / 2 : ℝ)) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ)

end

end A294543.P12370252118415978049

/-! ## A294543.P12625863867280186140

`A000007(n+1)+A295951(n)+log2(1/2)`
-/

namespace A294543.P12625863867280186140
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000007 (n + 1) : ℝ) + ((A295951 n : ℝ) + Real.logb 2 ((1 : ℚ) / 2 : ℝ))

end

end A294543.P12625863867280186140

/-! ## A294543.P3895096371981312091

`abs(A295951(n)+A008683(A062584(n)))`
-/

namespace A294543.P3895096371981312091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A295951 n + A008683 (A062584 n).toNat|

end

end A294543.P3895096371981312091

/-! ## A294543.P10519384120319251602

`(A295951(n)+log2(1/2))*A007318(A020639(2*(n+1)))`
-/

namespace A294543.P10519384120319251602
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A295951 n : ℝ) + Real.logb 2 ((1 : ℚ) / 2 : ℝ)) * (A007318 (A020639 (2 * (n + 1))).toNat : ℝ)

end

end A294543.P10519384120319251602

/-! ## A294543.P6991972926736705300

`(A295951(n)+log2(1/2))^A001221(A188666(2*n+1))`
-/

namespace A294543.P6991972926736705300
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A295951 n : ℝ) + Real.logb 2 ((1 : ℚ) / 2 : ℝ)) ^ (A001221 (A188666 (2 * n + 1)).toNat : ℤ)

end

end A294543.P6991972926736705300

/-! ## A294543.P10424376457358305394

`(A295951(n)+A008683(A062584(n)))%A055243(n+1)`
-/

namespace A294543.P10424376457358305394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295951 n + A008683 (A062584 n).toNat) (A055243 (n + 1))

end

end A294543.P10424376457358305394

/-! ## A294543.P3551079984611154891

`(A295951(n)+log2(1/2))*A001221(A081256(n+1))`
-/

namespace A294543.P3551079984611154891
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A295951 n : ℝ) + Real.logb 2 ((1 : ℚ) / 2 : ℝ)) * (A001221 (A081256 (n + 1)).toNat : ℝ)

end

end A294543.P3551079984611154891

/-! ## A294543.P3626094149906372880

`A132380(n²)+A295951(n)+A008683(A062584(n))`
-/

namespace A294543.P3626094149906372880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132380 (n ^ 2) + (A295951 n + A008683 (A062584 n).toNat)

end

end A294543.P3626094149906372880

/-!
# A294544: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) + 3, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294544, there is no canonical definition to state claims against.
-/

/-! ## A294544.P2425039677750545644

`A295958(n)-1`
-/

namespace A294544.P2425039677750545644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295958 n - 1

end

end A294544.P2425039677750545644

/-! ## A294544.P1112049388714306226

`A309214(4*n+2)+A295958(n)`
-/

namespace A294544.P1112049388714306226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309214 (4 * n + 2) + A295958 n

end

end A294544.P1112049388714306226

/-! ## A294544.P7185857287290476753

`A349340(A051698(n))+A295958(n)`
-/

namespace A294544.P7185857287290476753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349340 (A051698 n).toNat + A295958 n

end

end A294544.P7185857287290476753

/-! ## A294544.P553427465240342472

`A328729(A020639(2*(n+1)))+A295958(n)`
-/

namespace A294544.P553427465240342472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328729 (A020639 (2 * (n + 1))).toNat + A295958 n

end

end A294544.P553427465240342472

/-! ## A294544.P4802501350282597713

`A319116(A319150(n))+A295958(n)`
-/

namespace A294544.P4802501350282597713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319116 (A319150 n).toNat + A295958 n

end

end A294544.P4802501350282597713

/-!
# A294545: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) - 1, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294545, there is no canonical definition to state claims against.
-/

/-! ## A294545.P8257145878775806805

`A295959(A289207(n+1))+A057427(n)`
-/

namespace A294545.P8257145878775806805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295959 (A289207 (n + 1)).toNat + A057427 n

end

end A294545.P8257145878775806805

/-! ## A294545.P9506365137857662880

`A295959(A289207(n+1))-A057428(n)`
-/

namespace A294545.P9506365137857662880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295959 (A289207 (n + 1)).toNat - A057428 n

end

end A294545.P9506365137857662880

/-! ## A294545.P3018657861217128573

`A295959(n-A057427(n))+A057427(n)`
-/

namespace A294545.P3018657861217128573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295959 ((n : ℤ) - A057427 n).toNat + A057427 n

end

end A294545.P3018657861217128573

/-! ## A294545.P1094072396335517575

`A295959(A057428(n)+n)-A057428(n)`
-/

namespace A294545.P1094072396335517575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295959 (A057428 n + (n : ℤ)).toNat - A057428 n

end

end A294545.P1094072396335517575

/-! ## A294545.P10353295566887092278

`A295959(A289207(n+1))+char[A126759(n)]`
-/

namespace A294545.P10353295566887092278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295959 (A289207 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A294545.P10353295566887092278

/-! ## A294545.P527793175067906182

`A295959(A289207(n+1))+A057428(2*n)²`
-/

namespace A294545.P527793175067906182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295959 (A289207 (n + 1)).toNat + A057428 (2 * n) ^ 2

end

end A294545.P527793175067906182

/-! ## A294545.P11916828982213678997

`A295959(A289207(n+1))+char[A059893(n+1)]`
-/

namespace A294545.P11916828982213678997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295959 (A289207 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A294545.P11916828982213678997

/-! ## A294545.P3859208754764942521

`A295959(A289207(n+1))+char[A067004(n+1)]`
-/

namespace A294545.P3859208754764942521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067004 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295959 (A289207 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A294545.P3859208754764942521

/-!
# A294546: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) + n, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294546, there is no canonical definition to state claims against.
-/

/-! ## A294546.P14050468910641128264

`A065220(n+1)+A000027(A295953(n))`
-/

namespace A294546.P14050468910641128264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 (n + 1) + A000027 (A295953 n).toNat

end

end A294546.P14050468910641128264

/-! ## A294546.P852588911934304718

`A294367(n)+A023443(A212804(n))`
-/

namespace A294546.P852588911934304718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294367 n + A023443 (A212804 n).toNat

end

end A294546.P852588911934304718

/-! ## A294546.P10266998666345719100

`A295953(n)-∑[A024000(A212804(n))]`
-/

namespace A294546.P10266998666345719100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A212804 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295953 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294546.P10266998666345719100

/-! ## A294546.P8369496929256258446

`A293349(n)+A023443(A006355(n))`
-/

namespace A294546.P8369496929256258446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293349 n + A023443 (A006355 n).toNat

end

end A294546.P8369496929256258446

/-! ## A294546.P9687383540747496341

`Δ[A065220(n)]+A293349(n)+A004526(A006355(n))`
-/

namespace A294546.P9687383540747496341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A293349 n + A004526 (A006355 n).toNat)

end

end A294546.P9687383540747496341

/-!
# A294547: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) + 2n, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294547, there is no canonical definition to state claims against.
-/

/-! ## A294547.P9707386130919865722

`A293350(n)+A023443(A006355(n))`
-/

namespace A294547.P9707386130919865722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293350 n + A023443 (A006355 n).toNat

end

end A294547.P9707386130919865722

/-! ## A294547.P18000916248804854889

`A003849(A247970(n+1))+A294552(n)-A000071(n+1)`
-/

namespace A294547.P18000916248804854889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A247970 (n + 1)).toNat + (A294552 n - A000071 (n + 1))

end

end A294547.P18000916248804854889

/-! ## A294547.P7221243152966242319

`A294170(n)+A001489(A000071(n+1))`
-/

namespace A294547.P7221243152966242319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294170 n + A001489 (A000071 (n + 1)).toNat

end

end A294547.P7221243152966242319

/-! ## A294547.P18326444186132553443

`A294170(n)+A024000(A000045(n+1))`
-/

namespace A294547.P18326444186132553443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294170 n + A024000 (A000045 (n + 1)).toNat

end

end A294547.P18326444186132553443

/-! ## A294547.P12741693909975476406

`A294538(n)-A001489(A000071(n+1))`
-/

namespace A294547.P12741693909975476406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294538 n - A001489 (A000071 (n + 1)).toNat

end

end A294547.P12741693909975476406

/-!
# A294548: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) + n - 1, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294548, there is no canonical definition to state claims against.
-/

/-! ## A294548.P10552360593625359032

`A065220(n+1)+(A295964(n)+A295956(n))/A000034(A289094(n))`
-/

namespace A294548.P10552360593625359032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065220 (n + 1) : ℚ) + (A295964 n + A295956 n : ℚ) / (A000034 (A289094 n).toNat : ℚ)

end

end A294548.P10552360593625359032

/-! ## A294548.P15591254157518717031

`A065220(n)+A000027(A295956(n))`
-/

namespace A294548.P15591254157518717031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + A000027 (A295956 n).toNat

end

end A294548.P15591254157518717031

/-! ## A294548.P14415734499407741865

`A065220(n+1)+A000027(A295862(n))`
-/

namespace A294548.P14415734499407741865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 (n + 1) + A000027 (A295862 n).toNat

end

end A294548.P14415734499407741865

/-! ## A294548.P10481360557024221524

`A295862(n)+∑[A023443(A212804(n))]`
-/

namespace A294548.P10481360557024221524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A212804 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295862 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294548.P10481360557024221524

/-! ## A294548.P8241231774299970767

`A065220(n+1)+A295964(n)+A023443(A212804(n))`
-/

namespace A294548.P8241231774299970767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 (n + 1) + (A295964 n + A023443 (A212804 n).toNat)

end

end A294548.P8241231774299970767

/-!
# A294549: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) + n + 1, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294549, there is no canonical definition to state claims against.
-/

/-! ## A294549.P4115317560527183569

`A294365(n)+A023443(A212804(n))`
-/

namespace A294549.P4115317560527183569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294365 n + A023443 (A212804 n).toNat

end

end A294549.P4115317560527183569

/-! ## A294549.P5013844951315552456

`Δ[A065220(n)]+A295957(n)+∑[A023443(A212804(n))]`
-/

namespace A294549.P5013844951315552456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A212804 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A295957 n + ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A294549.P5013844951315552456

/-! ## A294549.P10963895504496914607

`A293357(n)+A023443(A006355(n))`
-/

namespace A294549.P10963895504496914607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293357 n + A023443 (A006355 n).toNat

end

end A294549.P10963895504496914607

/-! ## A294549.P158240596172223571

`Δ[A065220(n)]+A293357(n)+A004526(A006355(n))`
-/

namespace A294549.P158240596172223571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A293357 n + A004526 (A006355 n).toNat)

end

end A294549.P158240596172223571

/-! ## A294549.P14334758691652790780

`n-A212804(n+1)+A296556(n)-A001222(2^n)`
-/

namespace A294549.P14334758691652790780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A212804 (n + 1) + (A296556 n - A001222 (2 ^ n))

end

end A294549.P14334758691652790780

/-!
# A294550: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) + b(n-2), where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294550, there is no canonical definition to state claims against.
-/

/-! ## A294550.P5371133819382127018

`A296555(n)-A079978(A243083(n))`
-/

namespace A294550.P5371133819382127018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296555 n - A079978 (A243083 n).toNat

end

end A294550.P5371133819382127018

/-! ## A294550.P6239825272498726559

`A296555(n)-A038573(A079262(n)²)`
-/

namespace A294550.P6239825272498726559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296555 n - A038573 (A079262 n ^ 2).toNat

end

end A294550.P6239825272498726559

/-! ## A294550.P17989566723027877142

`A294414(n)-Δ[A106345(A011782(n))]`
-/

namespace A294550.P17989566723027877142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106345 (A011782 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294414 n - (f1 (n + 1) - f1 n)

end

end A294550.P17989566723027877142

/-! ## A294550.P15508672480675188172

`A294549(n)+A107846(A133494(n))`
-/

namespace A294550.P15508672480675188172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294549 n + A107846 (A133494 n).toNat

end

end A294550.P15508672480675188172

/-!
# A294551: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) + b(n-2) + 1, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294551, there is no canonical definition to state claims against.
-/

/-! ## A294551.P14988991245078573394

`A294550(n)+A000194(A179006(2*n+1))`
-/

namespace A294551.P14988991245078573394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294550 n + A000194 (A179006 (2 * n + 1)).toNat

end

end A294551.P14988991245078573394

/-! ## A294551.P17958993888415671202

`A294538(A087051(n))-A065220(n)`
-/

namespace A294551.P17958993888415671202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294538 (A087051 n).toNat - A065220 n

end

end A294551.P17958993888415671202

/-! ## A294551.P13926871464785321594

`A294538(A227549(n+1))-A065220(n)`
-/

namespace A294551.P13926871464785321594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294538 (A227549 (n + 1)).toNat - A065220 n

end

end A294551.P13926871464785321594

/-! ## A294551.P314280090678291114

`A294538(A004903(n+1))-A065220(n)`
-/

namespace A294551.P314280090678291114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294538 (A004903 (n + 1)).toNat - A065220 n

end

end A294551.P314280090678291114

/-! ## A294551.P7369244647308224877

`A294554(n)-A000071(A087051(n+1))`
-/

namespace A294551.P7369244647308224877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294554 n - A000071 (A087051 (n + 1)).toNat

end

end A294551.P7369244647308224877

/-!
# A294552: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) + b(n-2) + n, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294552, there is no canonical definition to state claims against.
-/

/-! ## A294552.P13257085061287336495

`A294170(n)-A003849(A247970(n+1))`
-/

namespace A294552.P13257085061287336495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294170 n - A003849 (A247970 (n + 1)).toNat

end

end A294552.P13257085061287336495

/-! ## A294552.P17588120508372373644

`A294170(n)-A359899(A120041(n))`
-/

namespace A294552.P17588120508372373644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294170 n - A359899 (A120041 n).toNat

end

end A294552.P17588120508372373644

/-! ## A294552.P9908219289286722893

`A294170(n)-A280710(A320424(n))`
-/

namespace A294552.P9908219289286722893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294170 n - A280710 (A320424 n).toNat

end

end A294552.P9908219289286722893

/-! ## A294552.P1622619430649881145

`A296776(A062399(n))-A000045(n)`
-/

namespace A294552.P1622619430649881145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296776 (A062399 n).toNat - A000045 n

end

end A294552.P1622619430649881145

/-! ## A294552.P13043465756771640465

`A296776(A120126(n))-A000045(n)`
-/

namespace A294552.P13043465756771640465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296776 (A120126 n).toNat - A000045 n

end

end A294552.P13043465756771640465

/-!
# A294553: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) + b(n-2) - n, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294553, there is no canonical definition to state claims against.
-/

/-! ## A294553.P9372890173827009858

`A179111(A004917(n+1))+A293406(n)-A000045(n)`
-/

namespace A294553.P9372890173827009858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179111 (A004917 (n + 1)).toNat + (A293406 n - A000045 n)

end

end A294553.P9372890173827009858

/-! ## A294553.P12125103168793440388

`A295949(n)-A337383(A007052(n))`
-/

namespace A294553.P12125103168793440388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295949 n - A337383 (A007052 n).toNat

end

end A294553.P12125103168793440388

/-! ## A294553.P13931093302889153228

`A295949(n)-A192082(A128335(n+1))`
-/

namespace A294553.P13931093302889153228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295949 n - A192082 (A128335 (n + 1)).toNat

end

end A294553.P13931093302889153228

/-! ## A294553.P13133044722113688704

`A231149(A295953(n)+A294367(n))`
-/

namespace A294553.P13133044722113688704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231149 (A295953 n + A294367 n).toNat

end

end A294553.P13133044722113688704

/-! ## A294553.P14098766181702034837

`A295949(n)-A225099(A090906(n+1))`
-/

namespace A294553.P14098766181702034837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295949 n - A225099 (A090906 (n + 1)).toNat

end

end A294553.P14098766181702034837

/-!
# A294554: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) + b(n-2) + 2, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294554, there is no canonical definition to state claims against.
-/

/-! ## A294554.P11070053157196848842

`A294555(A087051(n))-A000071(n+1)`
-/

namespace A294554.P11070053157196848842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294555 (A087051 n).toNat - A000071 (n + 1)

end

end A294554.P11070053157196848842

/-! ## A294554.P11713549522398502068

`A294555(A087051(n))-A000045(n+1)+1`
-/

namespace A294554.P11713549522398502068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294555 (A087051 n).toNat - A000045 (n + 1) + 1

end

end A294554.P11713549522398502068

/-! ## A294554.P9759043353971058021

`A294555(A227549(n+1))-A000071(n+1)`
-/

namespace A294554.P9759043353971058021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294555 (A227549 (n + 1)).toNat - A000071 (n + 1)

end

end A294554.P9759043353971058021

/-! ## A294554.P6254931741406262039

`A210731(A344822(n+1))+∑[n]+A193044(n)+n`
-/

namespace A294554.P6254931741406262039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210731 (A344822 (n + 1)).toNat + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A193044 n + (n : ℤ)))

end

end A294554.P6254931741406262039

/-! ## A294554.P12112319279281008069

`A210731(A344822(n+1))+A111314(n)+A001924(n)`
-/

namespace A294554.P12112319279281008069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210731 (A344822 (n + 1)).toNat + (A111314 n + A001924 n)

end

end A294554.P12112319279281008069

/-!
# A294555: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) + b(n-2) + 3, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294555, there is no canonical definition to state claims against.
-/

/-! ## A294555.P12288432220082853749

`A210678(n)+record[A210675(A210659(n+1))]`
-/

namespace A294555.P12288432220082853749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210675 (A210659 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210678 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294555.P12288432220082853749

/-! ## A294555.P8921275926044621703

`A210678(A087051(n))+A210675(n)`
-/

namespace A294555.P8921275926044621703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210678 (A087051 n).toNat + A210675 n

end

end A294555.P8921275926044621703

/-! ## A294555.P10107554251898684211

`A296249(A087051(n))-A296266(n)`
-/

namespace A294555.P10107554251898684211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296249 (A087051 n).toNat - A296266 n

end

end A294555.P10107554251898684211

/-! ## A294555.P1946330069266004443

`A294554(A087051(n))+A000071(n+1)`
-/

namespace A294555.P1946330069266004443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294554 (A087051 n).toNat + A000071 (n + 1)

end

end A294555.P1946330069266004443

/-! ## A294555.P9196875031462259912

`A210678(A227549(n+1))+A210675(n)`
-/

namespace A294555.P9196875031462259912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210678 (A227549 (n + 1)).toNat + A210675 n

end

end A294555.P9196875031462259912

/-!
# A294556: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) + b(n-2) + n + 1, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294556, there is no canonical definition to state claims against.
-/

/-! ## A294556.P2940223930027704518

`A294559(n)-A307598(A078495(n))`
-/

namespace A294556.P2940223930027704518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294559 n - A307598 (A078495 n).toNat

end

end A294556.P2940223930027704518

/-! ## A294556.P1305566833837669354

`A004526(A294558(n)+A294554(n))`
-/

namespace A294556.P1305566833837669354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A294558 n + A294554 n).toNat

end

end A294556.P1305566833837669354

/-! ## A294556.P4368983139640112622

`A123108(A294558(n)+A294554(n))`
-/

namespace A294556.P4368983139640112622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A294558 n + A294554 n).toNat

end

end A294556.P4368983139640112622

/-! ## A294556.P8097707703635581241

`A294559(n)-A185284(A303944(n))`
-/

namespace A294556.P8097707703635581241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294559 n - A185284 (A303944 n).toNat

end

end A294556.P8097707703635581241

/-! ## A294556.P10691129006197377117

`A294559(n)-A185284(A008578(n+1))`
-/

namespace A294556.P10691129006197377117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294559 n - A185284 (A008578 (n + 1)).toNat

end

end A294556.P10691129006197377117

/-!
# A294557: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) + b(n-2) + n - 1, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294557, there is no canonical definition to state claims against.
-/

/-! ## A294557.P9159625516252236117

`A294547(n)+A257265(A294561(n+3))`
-/

namespace A294557.P9159625516252236117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294547 n + A257265 (A294561 (n + 3)).toNat

end

end A294557.P9159625516252236117

/-! ## A294557.P12319918219705754199

`A294547(n)+A185238(A179006(n))`
-/

namespace A294557.P12319918219705754199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294547 n + A185238 (A179006 n).toNat

end

end A294557.P12319918219705754199

/-! ## A294557.P4590497940955747233

`A294547(n)+A031346(A351870(n))`
-/

namespace A294557.P4590497940955747233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294547 n + A031346 (A351870 n).toNat

end

end A294557.P4590497940955747233

/-! ## A294557.P16922898423510141263

`A294547(A351870(n))+A059995(n)`
-/

namespace A294557.P16922898423510141263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294547 (A351870 n).toNat + A059995 n

end

end A294557.P16922898423510141263

/-! ## A294557.P18125854159785723203

`A326626(n)+A294547(A351870(n))`
-/

namespace A294557.P18125854159785723203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326626 n + A294547 (A351870 n).toNat

end

end A294557.P18125854159785723203

/-!
# A294558: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) + b(n-2) + 2*n, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294558, there is no canonical definition to state claims against.
-/

/-! ## A294558.P3916876717217283488

`A351006(3*n*A056811(3*n+4))`
-/

namespace A294558.P3916876717217283488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351006 ((3 * n : ℤ) * A056811 (3 * n + 4)).toNat

end

end A294558.P3916876717217283488

/-! ## A294558.P7252791530808045993

`A351006(A008585(n)*A060594(n+1))`
-/

namespace A294558.P7252791530808045993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351006 (A008585 n * A060594 (n + 1)).toNat

end

end A294558.P7252791530808045993

/-! ## A294558.P15328561741465972623

`A351006(A008585(n)*A025422(n+2))`
-/

namespace A294558.P15328561741465972623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351006 (A008585 n * A025422 (n + 2)).toNat

end

end A294558.P15328561741465972623

/-!
# A294559: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) + 2*b(n-2), where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294559, there is no canonical definition to state claims against.
-/

/-! ## A294559.P13880488664809422549

`A307598(A078495(n))+A294556(n)`
-/

namespace A294559.P13880488664809422549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 (A078495 n).toNat + A294556 n

end

end A294559.P13880488664809422549

/-! ## A294559.P16536089401389688973

`or(A124761(A000217(n)), A294556(n))`
-/

namespace A294559.P16536089401389688973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124761 (A000217 n).toNat) (A294556 n)

end

end A294559.P16536089401389688973

/-! ## A294559.P8020133404592770576

`A294556(n)+A185284(A027193(n))`
-/

namespace A294559.P8020133404592770576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294556 n + A185284 (A027193 n).toNat

end

end A294559.P8020133404592770576

/-! ## A294559.P13655473688293773539

`A294556(n)+A079262(A185254(n))`
-/

namespace A294559.P13655473688293773539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294556 n + A079262 (A185254 n).toNat

end

end A294559.P13655473688293773539

/-! ## A294559.P5516939218704622549

`A004525(A294558(n)+A294554(n))`
-/

namespace A294559.P5516939218704622549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A294558 n + A294554 n).toNat

end

end A294559.P5516939218704622549

/-!
# A294560: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + 2*b(n-1) + 2*b(n-2), where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294560, there is no canonical definition to state claims against.
-/

/-! ## A294560.P17491967743756492580

`A326774(A001105(n))+A110510(n)`
-/

namespace A294560.P17491967743756492580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326774 (A001105 n).toNat + A110510 n

end

end A294560.P17491967743756492580

/-! ## A294560.P2248349741631645710

`A326774(A001105(n))+A271703(n)`
-/

namespace A294560.P2248349741631645710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326774 (A001105 n).toNat + A271703 n

end

end A294560.P2248349741631645710

/-!
# A294561: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + 2*b(n-1) + b(n-2), where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294561, there is no canonical definition to state claims against.
-/

/-! ## A294561.P16830273015029367148

`A294420(n)-Δ[A004526(A006355(n))]`
-/

namespace A294561.P16830273015029367148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A006355 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294420 n - (f1 (n + 1) - f1 n)

end

end A294561.P16830273015029367148

/-! ## A294561.P11648139851954442702

`A294420(n)-Δ[A106345(A011782(n))]`
-/

namespace A294561.P11648139851954442702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106345 (A011782 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294420 n - (f1 (n + 1) - f1 n)

end

end A294561.P11648139851954442702

/-! ## A294561.P10019121588757686026

`A294556(A087051(n))+A000071(n+1)`
-/

namespace A294561.P10019121588757686026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294556 (A087051 n).toNat + A000071 (n + 1)

end

end A294561.P10019121588757686026

/-! ## A294561.P17423907247579724883

`A376455(A294551(n))`
-/

namespace A294561.P17423907247579724883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376455 (A294551 n).toNat

end

end A294561.P17423907247579724883

/-!
# A294562: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) - b(n-2) + 1, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294562, there is no canonical definition to state claims against.
-/

/-! ## A294562.P8004944023774733866

`A119661(A000032(Δ[n²]))-2`
-/

namespace A294562.P8004944023774733866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119661 (A000032 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat - 2

end

end A294562.P8004944023774733866

/-! ## A294562.P15299710894099072723

`A119661(Δ[A000032(2*n)])-2`
-/

namespace A294562.P15299710894099072723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119661 (f1 (n + 1) - f1 n).toNat - 2

end

end A294562.P15299710894099072723

/-! ## A294562.P15917164946146338774

`A105223(A280174(n+2))`
-/

namespace A294562.P15917164946146338774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105223 (A280174 (n + 2)).toNat

end

end A294562.P15917164946146338774

/-! ## A294562.P8392372339153244434

`A276581(A291242(n))-1`
-/

namespace A294562.P8392372339153244434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276581 (A291242 n).toNat - 1

end

end A294562.P8392372339153244434

/-!
# A294563: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) - b(n-2) + n, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294563, there is no canonical definition to state claims against.
-/

/-! ## A294563.P18076253565960759997

`A001462(abs(n*∑[2^n]-1))`
-/

namespace A294563.P18076253565960759997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 |((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 1|.toNat

end

end A294563.P18076253565960759997

/-! ## A294563.P15911374510261318049

`A000006(Δ[Δ[A259709(n+1)]])`
-/

namespace A294563.P15911374510261318049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259709 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (f1 (n + 1) - f1 n).toNat

end

end A294563.P15911374510261318049

/-! ## A294563.P3664825368204359204

`A193832(A001906(n+3)+1)-(n+4)`
-/

namespace A294563.P3664825368204359204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193832 (A001906 (n + 3) + 1).toNat - (n + 4 : ℤ)

end

end A294563.P3664825368204359204

/-! ## A294563.P14841680076982427138

`A026819(or(A014480(n), A080037(n)))`
-/

namespace A294563.P14841680076982427138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (Int.lor (A014480 n) (A080037 n)).toNat

end

end A294563.P14841680076982427138

/-! ## A294563.P1526766670891668838

`A026819(or(A004277(n+1), A014480(n)))`
-/

namespace A294563.P1526766670891668838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (Int.lor (A004277 (n + 1)) (A014480 n)).toNat

end

end A294563.P1526766670891668838

/-!
# A294564: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + 2*b(n-1) - b(n-2) - 1, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294564, there is no canonical definition to state claims against.
-/

/-! ## A294564.P654875128281905437

`A004277(A294541(n))-A294533(n)`
-/

namespace A294564.P654875128281905437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A294541 n).toNat - A294533 n

end

end A294564.P654875128281905437

/-! ## A294564.P4984427866246272326

`A294541(n)+A025458(A000142(n))`
-/

namespace A294564.P4984427866246272326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294541 n + A025458 (A000142 n).toNat

end

end A294564.P4984427866246272326

/-! ## A294564.P5039866299987293882

`A064415(A343349(n))+A058696(n)`
-/

namespace A294564.P5039866299987293882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (A343349 n).toNat + A058696 n

end

end A294564.P5039866299987293882

/-! ## A294564.P1893793401845438885

`A333382(A333375(n))+A294541(n)`
-/

namespace A294564.P1893793401845438885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A333375 n).toNat + A294541 n

end

end A294564.P1893793401845438885

/-!
# A294565: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + 2*b(n-1) - b(n-2) - 2, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A294565, there is no canonical definition to state claims against.
-/

/-! ## A294565.P11851526315380851090

`A004277(A294545(n))-A294532(n)`
-/

namespace A294565.P11851526315380851090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A294545 n).toNat - A294532 n

end

end A294565.P11851526315380851090

/-! ## A294565.P8175310571072964865

`A004277(A294545(n))-A276796(A294550(n)+1)`
-/

namespace A294565.P8175310571072964865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A294545 n).toNat - A276796 (A294550 n + 1).toNat

end

end A294565.P8175310571072964865

/-! ## A294565.P7755056218279004326

`A004277(A294545(n))-A276796(or(1, A296555(n)))`
-/

namespace A294565.P7755056218279004326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A294545 n).toNat - A276796 (Int.lor 1 (A296555 n)).toNat

end

end A294565.P7755056218279004326

/-! ## A294565.P10832937485276556579

`A004277(A294545(n))-(A276796(A296555(n)-1)+1)`
-/

namespace A294565.P10832937485276556579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A294545 n).toNat - (A276796 (A296555 n - 1).toNat + 1)

end

end A294565.P10832937485276556579

/-! ## A294565.P15022500756816112439

`A004277(A294545(n))-A276796(A296555(n)+A010054(n))`
-/

namespace A294565.P15022500756816112439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A294545 n).toNat - A276796 (A296555 n + A010054 n).toNat

end

end A294565.P15022500756816112439

/-!
# A294566: a(n) is the smallest positive integer of length (distance from origin) n in the Cayley graph of the integers generated by all powers of 5.

The programs for A294566, the canonical program `A294566.P5326316582338048329` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294566 has offset 1).

The definition of A294566 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294566.P5326316582338048329

`a(n-1)+5*a(n-2)-5*a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A294566

/-- `a(n-1)+5*a(n-2)-5*a(n-3)` -/
def P5326316582338048329.Spec : Prop :=
  ∀ n, P5326316582338048329.a n = A294566 (n + 1)

theorem P5326316582338048329.correct : P5326316582338048329.Spec := by
  intro n
  simp only [A294566, Nat.add_sub_cancel]

end A294566

/-! ## A294566.P634223824404750219

`∑[ogf((1+x-4x^2)/(1-5x^2))]`
-/

namespace A294566.P634223824404750219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -4] [1, 0, -5] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294566.P634223824404750219

namespace A294566

/-- `∑[ogf((1+x-4x^2)/(1-5x^2))]` -/
def P634223824404750219.Spec : Prop :=
  ∀ n, P634223824404750219.a n = A294566 (n + 1)

end A294566

/-! ## A294566.P15415875962923559208

`ogf((1+x-4x^2)/(1-x-5x^2+5x^3))`
-/

namespace A294566.P15415875962923559208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -4] [1, -1, -5, 5] n

end

end A294566.P15415875962923559208

namespace A294566

/-- `ogf((1+x-4x^2)/(1-x-5x^2+5x^3))` -/
def P15415875962923559208.Spec : Prop :=
  ∀ n, P15415875962923559208.a n = A294566 (n + 1)

end A294566

/-! ## A294566.P16351283999960304008

`5*a(n-2)-2` with `a(0)=1, a(1)=2`
-/

namespace A294566.P16351283999960304008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  5 * a (n - 2) - 2

end

end A294566.P16351283999960304008

namespace A294566

/-- `5*a(n-2)-2` -/
def P16351283999960304008.Spec : Prop :=
  ∀ n, P16351283999960304008.a n = A294566 (n + 1)

end A294566

/-! ## A294566.P17103499945817853094

`lcm(5, a(n-2))-2` with `a(0)=1, a(1)=2`
-/

namespace A294566.P17103499945817853094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (Int.lcm 5 (a (n - 2)) : ℤ) - 2

end

end A294566.P17103499945817853094

namespace A294566

/-- `lcm(5, a(n-2))-2` -/
def P17103499945817853094.Spec : Prop :=
  ∀ n, P17103499945817853094.a n = A294566 (n + 1)

end A294566

/-! ## A294566.P16718079143614574689

`∑[5^floor(∑[n]/(n+2))]`
-/

namespace A294566.P16718079143614574689
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / (n + 2 : ℚ)⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294566.P16718079143614574689

namespace A294566

/-- `∑[5^floor(∑[n]/(n+2))]` -/
def P16718079143614574689.Spec : Prop :=
  ∀ n, P16718079143614574689.a n = (A294566 (n + 1) : ℚ)

end A294566

/-! ## A294566.P13199836024327109463

`ceil(A056487(n)/2)`
-/

namespace A294566.P13199836024327109463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A056487 n : ℚ) / 2⌉

end

end A294566.P13199836024327109463

namespace A294566

/-- `ceil(A056487(n)/2)` -/
def P13199836024327109463.Spec : Prop :=
  ∀ n, P13199836024327109463.a n = A294566 (n + 1)

end A294566

/-! ## A294566.P14168777815881799481

`(A140730(2*n)+1)/2`
-/

namespace A294566.P14168777815881799481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140730 (2 * n) + 1 : ℚ) / 2

end

end A294566.P14168777815881799481

namespace A294566

/-- `(A140730(2*n)+1)/2` -/
def P14168777815881799481.Spec : Prop :=
  ∀ n, P14168777815881799481.a n = (A294566 (n + 1) : ℚ)

end A294566

/-! ## A294566.P14300405348474490420

`A074872(n)+a(n-1)` with `a(0)=1`
-/

namespace A294566.P14300405348474490420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A074872 n + a (n - 1)

end

end A294566.P14300405348474490420

namespace A294566

/-- `A074872(n)+a(n-1)` -/
def P14300405348474490420.Spec : Prop :=
  ∀ n, P14300405348474490420.a n = A294566 (n + 1)

end A294566

/-! ## A294566.P10973628990714071123

`A181287(2*n+1)/2+1`
-/

namespace A294566.P10973628990714071123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181287 (2 * n + 1) : ℚ) / 2 + 1

end

end A294566.P10973628990714071123

namespace A294566

/-- `A181287(2*n+1)/2+1` -/
def P10973628990714071123.Spec : Prop :=
  ∀ n, P10973628990714071123.a n = (A294566 (n + 1) : ℚ)

end A294566

/-! ## A294566.P15995386140465618900

`A026395(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A294566.P15995386140465618900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026395 n + (1 - a (n - 1))

end

end A294566.P15995386140465618900

namespace A294566

/-- `A026395(n)+1-a(n-1)` -/
def P15995386140465618900.Spec : Prop :=
  ∀ n, P15995386140465618900.a n = A294566 (n + 1)

end A294566

/-! ## A294566.P15059620636928605565

`A056451(n-2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A294566.P15059620636928605565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A056451 (n - 2) + a (n - 1)

end

end A294566.P15059620636928605565

namespace A294566

/-- `A056451(n-2)+a(n-1)` -/
def P15059620636928605565.Spec : Prop :=
  ∀ n, P15059620636928605565.a n = A294566 (n + 1)

end A294566

/-! ## A294566.P5649687111960521350

`(A133335(A007494(n))+1)/2`
-/

namespace A294566.P5649687111960521350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133335 (A007494 n).toNat + 1 : ℚ) / 2

end

end A294566.P5649687111960521350

namespace A294566

/-- `(A133335(A007494(n))+1)/2` -/
def P5649687111960521350.Spec : Prop :=
  ∀ n, P5649687111960521350.a n = (A294566 (n + 1) : ℚ)

end A294566

/-! ## A294566.P16014133867042331527

`(Δ[A026383(n)]+1)/2`
-/

namespace A294566.P16014133867042331527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026383 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 1 : ℚ) / 2

end

end A294566.P16014133867042331527

namespace A294566

/-- `(Δ[A026383(n)]+1)/2` -/
def P16014133867042331527.Spec : Prop :=
  ∀ n, P16014133867042331527.a n = (A294566 (n + 1) : ℚ)

end A294566

/-! ## A294566.P17038432661875854620

`∑[A074872(n+1)]+1-A074872(n+1)`
-/

namespace A294566.P17038432661875854620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A074872 (n + 1))

end

end A294566.P17038432661875854620

namespace A294566

/-- `∑[A074872(n+1)]+1-A074872(n+1)` -/
def P17038432661875854620.Spec : Prop :=
  ∀ n, P17038432661875854620.a n = A294566 (n + 1)

end A294566

/-! ## A294566.P9688595756017842632

`∑[5^n/a(n-1)]/5` with `a(0)=5, a(1)=5`
-/

namespace A294566.P9688595756017842632
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [5, 5] fun n f1 =>
  (5 ^ n : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) / 5

end

end A294566.P9688595756017842632

namespace A294566

/-- `∑[5^n/a(n-1)]/5` -/
def P9688595756017842632.Spec : Prop :=
  ∀ n, P9688595756017842632.a n = (A294566 (n + 1) : ℚ)

end A294566

/-! ## A294566.P4701857933330695707

`A121101(n+2)-A003463(n)`
-/

namespace A294566.P4701857933330695707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121101 (n + 2) - A003463 n

end

end A294566.P4701857933330695707

namespace A294566

/-- `A121101(n+2)-A003463(n)` -/
def P4701857933330695707.Spec : Prop :=
  ∀ n, P4701857933330695707.a n = A294566 (n + 1)

end A294566

/-! ## A294566.P14745727377718718393

`A121102(n+2)+A056487(n)-A003463(n)`
-/

namespace A294566.P14745727377718718393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121102 (n + 2) + (A056487 n - A003463 n)

end

end A294566.P14745727377718718393

namespace A294566

/-- `A121102(n+2)+A056487(n)-A003463(n)` -/
def P14745727377718718393.Spec : Prop :=
  ∀ n, P14745727377718718393.a n = A294566 (n + 1)

end A294566

/-!
# A294567: a(n) = Sum_{d|n} d^(1 + 2*n/d).

The programs for A294567, the canonical program `A294567.P10563433257385022510` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294567 has offset 1).

The definition of A294567 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294567.P10563433257385022510

`∑{d}[n+1, #^(1+2*(n+1)/#)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A294567

/-- `∑{d}[n+1, #^(1+2*(n+1)/#)]` -/
def P10563433257385022510.Spec : Prop :=
  ∀ n, P10563433257385022510.a n = (A294567 (n + 1) : ℝ)

end A294567

/-! ## A294567.P3169519810480316491

`A294579(∑[n+3]+1)`
-/

namespace A294567.P3169519810480316491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294579 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A294567.P3169519810480316491

namespace A294567

/-- `A294579(∑[n+3]+1)` -/
def P3169519810480316491.Spec : Prop :=
  ∀ n, P3169519810480316491.a n = A294567 (n + 1)

end A294567

/-!
# A294573: a(n) = n! * [x^n] exp((n+1)*x)*BesselI(1,2*x)/x.

The programs for A294573, there is no canonical definition to state claims against.
-/

/-! ## A294573.P15405296674626764725

`A292629(n+1)/(n+1)`
-/

namespace A294573.P15405296674626764725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292629 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A294573.P15405296674626764725

/-! ## A294573.P5716074321455459758

`A247495(2*(n+1)²)`
-/

namespace A294573.P5716074321455459758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247495 (2 * (n + 1) ^ 2)

end

end A294573.P5716074321455459758

/-! ## A294573.P10428138104061943812

`record[A247495(2*n²)-char[1]]`
-/

namespace A294573.P10428138104061943812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247495 (2 * n ^ 2) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294573.P10428138104061943812

/-! ## A294573.P10645988316427981436

`record[A247495(A078898(n²))]`
-/

namespace A294573.P10645988316427981436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247495 (A078898 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294573.P10645988316427981436

/-! ## A294573.P10649318004524901209

`record[A247495(∑[A014682(n)])]`
-/

namespace A294573.P10649318004524901209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247495 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294573.P10649318004524901209

/-!
# A294574: Numbers having exactly one representation as sum of squares of primes.

The programs for A294574, there is no canonical definition to state claims against.
-/

/-! ## A294574.P13711850840207947716

`eq[gcd(37, n), A090677(n)]`
-/

namespace A294574.P13711850840207947716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 37 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090677 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294574.P13711850840207947716

/-! ## A294574.P7253229115136530722

`eq[1, A090677(n+1)]+1`
-/

namespace A294574.P7253229115136530722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090677 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A294574.P7253229115136530722

/-! ## A294574.P16866641959400005486

`eq[1, A090677(A028310(n))]`
-/

namespace A294574.P16866641959400005486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090677 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294574.P16866641959400005486

/-! ## A294574.P18087026642668755464

`eq[A054977(n), A090677(n)]`
-/

namespace A294574.P18087026642668755464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090677 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294574.P18087026642668755464

/-! ## A294574.P3323979473719860523

`eq[A057427(n), A090677(n)]`
-/

namespace A294574.P3323979473719860523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090677 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294574.P3323979473719860523

/-!
# A294575: Numbers n such that 2 * A243823(n) > n.

The programs for A294575, there is no canonical definition to state claims against.
-/

/-! ## A294575.P12925141893709203356

`lt[n, 2*A243823(A028310(n))]`
-/

namespace A294575.P12925141893709203356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A243823 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294575.P12925141893709203356

/-! ## A294575.P7835328642217702597

`lt[A073757(n+1), A300858(n+1)]+1`
-/

namespace A294575.P7835328642217702597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300858 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A294575.P7835328642217702597

/-! ## A294575.P5030238450539292941

`A020725(lt[A073757(n+1), A300858(n+1)])`
-/

namespace A294575.P5030238450539292941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A294575.P5030238450539292941

/-! ## A294575.P643056135289660251

`lt[A004526(n), A243823(A028310(n))]`
-/

namespace A294575.P643056135289660251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243823 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294575.P643056135289660251

/-! ## A294575.P11716226630630586110

`lt[A123108(n), A243823(A028310(n))]`
-/

namespace A294575.P11716226630630586110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243823 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294575.P11716226630630586110

/-! ## A294575.P5851254505056246237

`lt[A123108(n), A243823(A123108(2*n))]`
-/

namespace A294575.P5851254505056246237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243823 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294575.P5851254505056246237

/-! ## A294575.P13997761338998271366

`A113484(lt[A073757(n+1), A300858(n+1)])`
-/

namespace A294575.P13997761338998271366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300858 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A294575.P13997761338998271366

/-! ## A294575.P2135472148951188972

`lt[n, 2*A243823(A233583(n+1))]`
-/

namespace A294575.P2135472148951188972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A243823 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294575.P2135472148951188972

/-! ## A294575.P17116870022318281646

`lt[A004526(n), A243823(A233583(n+1))]`
-/

namespace A294575.P17116870022318281646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243823 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294575.P17116870022318281646

/-!
# A294576: Odd numbers n such that 2 * A243823(n) > n.

The programs for A294576, there is no canonical definition to state claims against.
-/

/-! ## A294576.P1869408469664451945

`∩[A294575(n+1), A005408(n)]`
-/

namespace A294576.P1869408469664451945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294576.P1869408469664451945

/-! ## A294576.P15720317747680336074

`record[A005231(n+4)/A020639(A082897(3*n+4))]`
-/

namespace A294576.P15720317747680336074
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005231 (n + 4) : ℚ) / (A020639 (A082897 (3 * n + 4)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294576.P15720317747680336074

/-!
# A294577: Numbers that are the sum of three squares (square 0 allowed) in exactly four ways.

The programs for A294577, there is no canonical definition to state claims against.
-/

/-! ## A294577.P8851535890980330473

`eq[4, A000164(n)]`
-/

namespace A294577.P8851535890980330473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294577.P8851535890980330473

/-! ## A294577.P18419998423291741316

`eq[4, A025427(n)+A000161(n)]`
-/

namespace A294577.P18419998423291741316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n + A000161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294577.P18419998423291741316

/-! ## A294577.P10272612911735637046

`eq[A025428(n)+4, A002635(n)]`
-/

namespace A294577.P10272612911735637046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294577.P10272612911735637046

/-! ## A294577.P15977464618712638683

`eq[A002635(n), A020705(A025428(n))]`
-/

namespace A294577.P15977464618712638683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A025428 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294577.P15977464618712638683

/-! ## A294577.P11400185604420913918

`eq[4, A085202(A000925(n))+A025427(n)]`
-/

namespace A294577.P11400185604420913918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085202 (A000925 n).toNat + A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294577.P11400185604420913918

/-!
# A294578: Numbers which can be expressed as an ordered sum of 3 squares in 6 or more different ways.

The programs for A294578, there is no canonical definition to state claims against.
-/

/-! ## A294578.P389498642012912174

`∪[A294595(n+1), A294596(n+1)]`
-/

namespace A294578.P389498642012912174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A294578.P389498642012912174

/-! ## A294578.P11056090496516685026

`lt[5, A000164(n)]`
-/

namespace A294578.P11056090496516685026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294578.P11056090496516685026

/-! ## A294578.P7271516175042969693

`lt[5, A025427(n)+A000161(n)]`
-/

namespace A294578.P7271516175042969693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n + A000161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294578.P7271516175042969693

/-! ## A294578.P4804304058010918922

`lt[5, A002635(n)-A025428(n)]`
-/

namespace A294578.P4804304058010918922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n - A025428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294578.P4804304058010918922

/-! ## A294578.P9222164882964695664

`lt[5, A110654(A000925(n))+A025427(n)]`
-/

namespace A294578.P9222164882964695664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A000925 n).toNat + A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294578.P9222164882964695664

/-! ## A294578.P1492259850261856971

`lt[5, A010052(n)+A025427(n)+A025426(n)]`
-/

namespace A294578.P1492259850261856971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n + (A025427 n + A025426 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294578.P1492259850261856971

/-! ## A294578.P16433349184288782450

`lt[5, A216282(A022144(n))+A025436(n)]`
-/

namespace A294578.P16433349184288782450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216282 (A022144 n).toNat + A025436 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294578.P16433349184288782450

/-!
# A294579: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals, where A(n,k) is Sum_{d|n} d^(1 + k*n/d).

The programs for A294579, there is no canonical definition to state claims against.
-/

/-! ## A294579.P262194698844320159

`A308502(n+1)-A000122(A020695(n))`
-/

namespace A294579.P262194698844320159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308502 (n + 1) - A000122 (A020695 n).toNat

end

end A294579.P262194698844320159

/-! ## A294579.P15626390316494718499

`A319278(n+1)+A014083(A325012(n+1))²`
-/

namespace A294579.P15626390316494718499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319278 (n + 1) + A014083 (A325012 (n + 1)).toNat ^ 2

end

end A294579.P15626390316494718499

/-! ## A294579.P7969623871790225629

`A113221(A319278(n+1))`
-/

namespace A294579.P7969623871790225629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113221 (A319278 (n + 1)).toNat

end

end A294579.P7969623871790225629

/-! ## A294579.P8897935400135906333

`A308502(n+1)-A290081(A296601(n+1))`
-/

namespace A294579.P8897935400135906333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308502 (n + 1) - A290081 (A296601 (n + 1)).toNat

end

end A294579.P8897935400135906333

/-! ## A294579.P16510924041277644898

`A308502(n+1)-A326332(A261959(n))`
-/

namespace A294579.P16510924041277644898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308502 (n + 1) - A326332 (A261959 n).toNat

end

end A294579.P16510924041277644898

/-!
# A294580: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of Product_{j>=1} (1 - j^k*x^j)^j.

The programs for A294580, there is no canonical definition to state claims against.
-/

/-! ## A294580.P11453955524013779608

`A294587(n)+A025469(A000016(n))`
-/

namespace A294580.P11453955524013779608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294587 n + A025469 (A000016 n).toNat

end

end A294580.P11453955524013779608

/-! ## A294580.P15296403600268769347

`A294587(n)+A102683(A126120(n))`
-/

namespace A294580.P15296403600268769347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294587 n + A102683 (A126120 n).toNat

end

end A294580.P15296403600268769347

/-! ## A294580.P14605983846744824042

`A294587(n)+A025468(A211795(n))`
-/

namespace A294580.P14605983846744824042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294587 n + A025468 (A211795 n).toNat

end

end A294580.P14605983846744824042

/-! ## A294580.P2783051431263554513

`A294587(n)+A025469(A125118(n+1))`
-/

namespace A294580.P2783051431263554513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294587 n + A025469 (A125118 (n + 1)).toNat

end

end A294580.P2783051431263554513

/-! ## A294580.P3696501478031639964

`A283272(comp[∑[n-1]]%A336413(3*n+2))`
-/

namespace A294580.P3696501478031639964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A336413 (3 * n + 2))).toNat

end

end A294580.P3696501478031639964

/-!
# A294581: Expansion of Product_{k>=1} (1 - k^2*x^k)^k.

The programs for A294581, there is no canonical definition to state claims against.
-/

/-! ## A294581.P621371480203669619

`A294580(∑[n+3])`
-/

namespace A294581.P621371480203669619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294580 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294581.P621371480203669619

/-! ## A294581.P3143710599786901465

`A294580(A055998(n+1))%Δ[A001692(n)]`
-/

namespace A294581.P3143710599786901465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294580 (A055998 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A294581.P3143710599786901465

/-!
# A294582: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of Product_{j>=1} 1/(1 - j^k*x^j)^j.

The programs for A294582, there is no canonical definition to state claims against.
-/

/-! ## A294582.P10487453835614020909

`A294589(n)-A025469(A000016(n))`
-/

namespace A294582.P10487453835614020909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294589 n - A025469 (A000016 n).toNat

end

end A294582.P10487453835614020909

/-! ## A294582.P8783445908143813167

`A294589(n)-A102683(A126120(n))`
-/

namespace A294582.P8783445908143813167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294589 n - A102683 (A126120 n).toNat

end

end A294582.P8783445908143813167

/-! ## A294582.P5485669518483746928

`A294589(n)-A025468(A211795(n))`
-/

namespace A294582.P5485669518483746928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294589 n - A025468 (A211795 n).toNat

end

end A294582.P5485669518483746928

/-! ## A294582.P507016512761248268

`A294589(n)-A025469(A125118(n+1))`
-/

namespace A294582.P507016512761248268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294589 n - A025469 (A125118 (n + 1)).toNat

end

end A294582.P507016512761248268

/-! ## A294582.P7707694564049151112

`A144048(lt[A289253(3*(n+1)), A249197(n+1)])`
-/

namespace A294582.P7707694564049151112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289253 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A294582.P7707694564049151112

/-!
# A294583: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of Product_{j>=1} (1 - j^k*x^j)^(j^k).

The programs for A294583, there is no canonical definition to state claims against.
-/

/-! ## A294583.P11519626747437081314

`A292166(A000007(A000048(n))+n)*A284992(n)`
-/

namespace A294583.P11519626747437081314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292166 (A000007 (A000048 n).toNat + (n : ℤ)).toNat * A284992 n

end

end A294583.P11519626747437081314

/-! ## A294583.P794410451973497993

`A283675(n)%A262025(A047436(n+1))`
-/

namespace A294583.P794410451973497993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283675 n) (A262025 (A047436 (n + 1)).toNat)

end

end A294583.P794410451973497993

/-! ## A294583.P941024206429839838

`A294653(n)%A262025(A047436(n+1))`
-/

namespace A294583.P941024206429839838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294653 n) (A262025 (A047436 (n + 1)).toNat)

end

end A294583.P941024206429839838

/-! ## A294583.P6727178765815857038

`(A284992(n)+A016396(A294609(n)))*A292166(n)`
-/

namespace A294583.P6727178765815857038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A284992 n + A016396 (A294609 n).toNat) * A292166 n

end

end A294583.P6727178765815857038

/-! ## A294583.P15007050708614923960

`A294653(n)%A129286(A173018(n))`
-/

namespace A294583.P15007050708614923960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294653 n) (A129286 (A173018 n).toNat)

end

end A294583.P15007050708614923960

/-!
# A294584: Expansion of Product_{k>=1} (1 - k^2*x^k)^(k^2).

The programs for A294584, there is no canonical definition to state claims against.
-/

/-! ## A294584.P11498026583421817506

`A294583(∑[n+3])`
-/

namespace A294584.P11498026583421817506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294583 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294584.P11498026583421817506

/-! ## A294584.P13278210755514891580

`A294583(A055998(n+1))+A000007(n+1)`
-/

namespace A294584.P13278210755514891580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294583 (A055998 (n + 1)).toNat + A000007 (n + 1)

end

end A294584.P13278210755514891580

/-! ## A294584.P12769087353481333341

`A294583(A055998(n+1))+A063524(n+2)`
-/

namespace A294584.P12769087353481333341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294583 (A055998 (n + 1)).toNat + A063524 (n + 2)

end

end A294584.P12769087353481333341

/-! ## A294584.P10416505158445107105

`A007318(val(n+1, 12))*A294583(A055998(n+1))`
-/

namespace A294584.P10416505158445107105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 12) * A294583 (A055998 (n + 1)).toNat

end

end A294584.P10416505158445107105

/-! ## A294584.P5047440330647291218

`A008683(A005117(n+1))²*A294583(A055998(n+1))`
-/

namespace A294584.P5047440330647291218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005117 (n + 1)).toNat ^ 2 * A294583 (A055998 (n + 1)).toNat

end

end A294584.P5047440330647291218

/-!
# A294585: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of Product_{j>=1} 1/(1 - j^k*x^j)^(j^k).

The programs for A294585, there is no canonical definition to state claims against.
-/

/-! ## A294585.P17554817726232334405

`A283674(n)%A180134(A283674(n))`
-/

namespace A294585.P17554817726232334405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283674 n) (A180134 (A283674 n).toNat)

end

end A294585.P17554817726232334405

/-! ## A294585.P17461337267832536589

`A294758(n)%A180134(A294758(n))`
-/

namespace A294585.P17461337267832536589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294758 n) (A180134 (A294758 n).toNat)

end

end A294585.P17461337267832536589

/-! ## A294585.P3539979774469108182

`A348582(A294758(n)²)%A066990(A272027(n+1))`
-/

namespace A294585.P3539979774469108182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348582 (A294758 n ^ 2).toNat) (A066990 (A272027 (n + 1)).toNat)

end

end A294585.P3539979774469108182

/-! ## A294585.P3695277249177634063

`A351870(A283674(n))%18`
-/

namespace A294585.P3695277249177634063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351870 (A283674 n).toNat) 18

end

end A294585.P3695277249177634063

/-! ## A294585.P10098782242738091229

`A351870(A294758(n))%18`
-/

namespace A294585.P10098782242738091229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351870 (A294758 n).toNat) 18

end

end A294585.P10098782242738091229

/-!
# A294586: Expansion of Product_{k>=1} 1/(1 - k^2*x^k)^(k^2).

The programs for A294586, there is no canonical definition to state claims against.
-/

/-! ## A294586.P13752042142555523537

`A294585(∑[n+3])`
-/

namespace A294586.P13752042142555523537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294585 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294586.P13752042142555523537

/-! ## A294586.P2881811251732742235

`or(char[1], A294585(A055998(n+1)))`
-/

namespace A294586.P2881811251732742235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A294585 (A055998 (n + 1)).toNat)

end

end A294586.P2881811251732742235

/-! ## A294586.P103865591234576767

`A294585(A055998(n+1))+A008683(4*(n+1))`
-/

namespace A294586.P103865591234576767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294585 (A055998 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A294586.P103865591234576767

/-! ## A294586.P13635685191918909179

`A000203(((-1)^n)²)*A294585(A055998(n+1))`
-/

namespace A294586.P13635685191918909179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (((-1) ^ n) ^ 2).toNat * A294585 (A055998 (n + 1)).toNat

end

end A294586.P13635685191918909179

/-! ## A294586.P3746575263488044365

`A007318(A000096(n))*A294585(A055998(n+1))`
-/

namespace A294586.P3746575263488044365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A294585 (A055998 (n + 1)).toNat

end

end A294586.P3746575263488044365

/-!
# A294587: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of Product_{j>=1} (1 - j*x^j)^(j^k).

The programs for A294587, there is no canonical definition to state claims against.
-/

/-! ## A294587.P6002690423143006129

`A294580(n)-A025469(A000016(n))`
-/

namespace A294587.P6002690423143006129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294580 n - A025469 (A000016 n).toNat

end

end A294587.P6002690423143006129

/-! ## A294587.P9822907894082069881

`A294580(n)-A102683(A126120(n))`
-/

namespace A294587.P9822907894082069881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294580 n - A102683 (A126120 n).toNat

end

end A294587.P9822907894082069881

/-! ## A294587.P15207145948497334641

`A294580(n)-A025468(A211795(n))`
-/

namespace A294587.P15207145948497334641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294580 n - A025468 (A211795 n).toNat

end

end A294587.P15207145948497334641

/-! ## A294587.P2133598272943855857

`or(A016423(A001608(n)), A294580(n))`
-/

namespace A294587.P2133598272943855857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016423 (A001608 n).toNat) (A294580 n)

end

end A294587.P2133598272943855857

/-! ## A294587.P5444633386701874598

`A294580(n)-A025469(A125118(n+1))`
-/

namespace A294587.P5444633386701874598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294580 n - A025469 (A125118 (n + 1)).toNat

end

end A294587.P5444633386701874598

/-!
# A294588: Expansion of Product_{k>=1} (1 - k*x^k)^(k^2).

The programs for A294588, there is no canonical definition to state claims against.
-/

/-! ## A294588.P13102725105726808785

`A294587(∑[n+3])`
-/

namespace A294588.P13102725105726808785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294587 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294588.P13102725105726808785

/-! ## A294588.P12259879266200829808

`A294587(A055998(n+1))+A000007(n+1)`
-/

namespace A294588.P12259879266200829808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294587 (A055998 (n + 1)).toNat + A000007 (n + 1)

end

end A294588.P12259879266200829808

/-! ## A294588.P8977252066845173959

`A294587(A055998(n+1))+A000038(n+1)`
-/

namespace A294588.P8977252066845173959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294587 (A055998 (n + 1)).toNat + A000038 (n + 1)

end

end A294588.P8977252066845173959

/-! ## A294588.P4793836047843346124

`A001511(2*n+1)*A294587(A055998(n+1))`
-/

namespace A294588.P4793836047843346124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A294587 (A055998 (n + 1)).toNat

end

end A294588.P4793836047843346124

/-! ## A294588.P7261182986692256416

`A294587(A055998(n+1))^A014963(C(n+2, 2))`
-/

namespace A294588.P7261182986692256416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294587 (A055998 (n + 1)).toNat : ℚ) ^ (A014963 (Nat.choose (n + 2) 2) : ℤ)

end

end A294588.P7261182986692256416

/-!
# A294589: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of Product_{j>=1} 1/(1 - j*x^j)^(j^k).

The programs for A294589, there is no canonical definition to state claims against.
-/

/-! ## A294589.P10901506610826752371

`A294582(n)+A025469(A000016(n))`
-/

namespace A294589.P10901506610826752371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294582 n + A025469 (A000016 n).toNat

end

end A294589.P10901506610826752371

/-! ## A294589.P10857497055260348454

`A294582(n)+A102683(A126120(n))`
-/

namespace A294589.P10857497055260348454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294582 n + A102683 (A126120 n).toNat

end

end A294589.P10857497055260348454

/-! ## A294589.P10610892417317666442

`A294582(n)+A025468(A211795(n))`
-/

namespace A294589.P10610892417317666442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294582 n + A025468 (A211795 n).toNat

end

end A294589.P10610892417317666442

/-! ## A294589.P12903860518947882546

`A294582(n)+A023533(A089085(n+1))`
-/

namespace A294589.P12903860518947882546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294582 n + A023533 (A089085 (n + 1)).toNat

end

end A294589.P12903860518947882546

/-!
# A294590: Expansion of Product_{k>=1} 1/(1 - k*x^k)^(k^3).

The programs for A294590, there is no canonical definition to state claims against.
-/

/-! ## A294590.P11565932033199265372

`A294589(∑[n+3]+n+3)`
-/

namespace A294590.P11565932033199265372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294589 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A294590.P11565932033199265372

/-!
# A294591: Expansion of Product_{k>=1} 1/((1 - x^(2*k-1))^(k*(3*k-1)/2)*(1 - x^(2*k))^(k*(3*k+1)/2)).

The programs for A294591, there is no canonical definition to state claims against.
-/

/-! ## A294591.P14296719474014984595

`A046781(n)+A000006(A150126(n))`
-/

namespace A294591.P14296719474014984595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046781 n + A000006 (A150126 n).toNat

end

end A294591.P14296719474014984595

/-! ## A294591.P18428042759790921821

`A000006(A360267(n))-A360250(n)`
-/

namespace A294591.P18428042759790921821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A360267 n).toNat - A360250 n

end

end A294591.P18428042759790921821

/-!
# A294592: a(n) = [x^n] (theta_3(x)/theta_4(x))^n, where theta_() is the Jacobi theta function.

The programs for A294592, there is no canonical definition to state claims against.
-/

/-! ## A294592.P563553682969510779

`A100631(2*(n+1)²)`
-/

namespace A294592.P563553682969510779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100631 (2 * (n + 1) ^ 2)

end

end A294592.P563553682969510779

/-!
# A294593: Number of natural disjoint covering systems of cardinality n, with gcd of the moduli equal to 2.

The programs for A294593, there is no canonical definition to state claims against.
-/

/-! ## A294593.P10115170260422572754

`A008618(∏[(n-1)/a(n-1)+3])` with `a(0)=1, a(1)=9`
-/

namespace A294593.P10115170260422572754
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) / f1 (n - 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A294593.P10115170260422572754

/-! ## A294593.P6185435949523756477

`A008676(A150210(n+1))`
-/

namespace A294593.P6185435949523756477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A150210 (n + 1)).toNat

end

end A294593.P6185435949523756477

/-! ## A294593.P18376356988483387239

`A253092(∑[A049652(n)]+1)`
-/

namespace A294593.P18376356988483387239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253092 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A294593.P18376356988483387239

/-!
# A294594: Numbers that are the sum of three squares (square 0 allowed) in exactly five ways.

The programs for A294594, there is no canonical definition to state claims against.
-/

/-! ## A294594.P15909555448838911076

`eq[5, A000164(n)]`
-/

namespace A294594.P15909555448838911076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294594.P15909555448838911076

/-! ## A294594.P10057125382099629053

`eq[5, A025427(n)+A000161(n)]`
-/

namespace A294594.P10057125382099629053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n + A000161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294594.P10057125382099629053

/-! ## A294594.P120943639666627045

`eq[A025428(n)+5, A002635(n)]`
-/

namespace A294594.P120943639666627045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294594.P120943639666627045

/-! ## A294594.P11263286342535692299

`eq[A002635(n), A020710(A025428(n))]`
-/

namespace A294594.P11263286342535692299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (A025428 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294594.P11263286342535692299

/-! ## A294594.P16933253631123073908

`eq[5, A085202(A000925(n))+A025427(n)]`
-/

namespace A294594.P16933253631123073908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085202 (A000925 n).toNat + A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294594.P16933253631123073908

/-!
# A294595: Numbers that are the sum of three squares (square 0 allowed) in exactly six ways.

The programs for A294595, there is no canonical definition to state claims against.
-/

/-! ## A294595.P5797092290006548759

`eq[6, A000164(n)]`
-/

namespace A294595.P5797092290006548759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294595.P5797092290006548759

/-! ## A294595.P12093823427169265558

`eq[A002635(n), A020715(A025428(n))]`
-/

namespace A294595.P12093823427169265558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 (A025428 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294595.P12093823427169265558

/-! ## A294595.P9455258596152564407

`A294578(eq[A054907(n), A185017(n)])`
-/

namespace A294595.P9455258596152564407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054907 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294578 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A294595.P9455258596152564407

/-!
# A294596: Numbers which can be expressed as an ordered sum of 3 squares in 7 or more different ways.

The programs for A294596, there is no canonical definition to state claims against.
-/

/-! ## A294596.P9094878795541003608

`∪[A294597(n+1), A294710(n+1)]`
-/

namespace A294596.P9094878795541003608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A294596.P9094878795541003608

/-! ## A294596.P11317465944568177926

`lt[6, A000164(n)]`
-/

namespace A294596.P11317465944568177926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294596.P11317465944568177926

/-! ## A294596.P5874060364622124478

`lt[6, A025427(n)+A000161(n)]`
-/

namespace A294596.P5874060364622124478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n + A000161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294596.P5874060364622124478

/-! ## A294596.P6041169231804180972

`lt[6, A002635(n)-A025428(n)]`
-/

namespace A294596.P6041169231804180972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n - A025428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294596.P6041169231804180972

/-! ## A294596.P16583342788828598230

`lt[6, A110654(A000925(n))+A025427(n)]`
-/

namespace A294596.P16583342788828598230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A000925 n).toNat + A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294596.P16583342788828598230

/-! ## A294596.P11299895888220079259

`lt[6, A010052(n)+A025427(n)+A025426(n)]`
-/

namespace A294596.P11299895888220079259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n + (A025427 n + A025426 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294596.P11299895888220079259

/-! ## A294596.P16272666511600507876

`lt[6, A216282(A022144(n))+A025436(n)]`
-/

namespace A294596.P16272666511600507876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216282 (A022144 n).toNat + A025436 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294596.P16272666511600507876

/-!
# A294597: Numbers which can be expressed as an ordered sum of 3 squares in 8 or more different ways.

The programs for A294597, there is no canonical definition to state claims against.
-/

/-! ## A294597.P13984992197142115925

`∪[A294711(n+1), A294714(n+1)]`
-/

namespace A294597.P13984992197142115925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A294597.P13984992197142115925

/-! ## A294597.P14251787872415920609

`lt[7, A000164(n)]`
-/

namespace A294597.P14251787872415920609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294597.P14251787872415920609

/-! ## A294597.P3863272927680458232

`lt[7, A025427(n)+A000161(n)]`
-/

namespace A294597.P3863272927680458232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n + A000161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294597.P3863272927680458232

/-! ## A294597.P17337414328657217549

`lt[7, A002635(n)-A025428(n)]`
-/

namespace A294597.P17337414328657217549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 n - A025428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294597.P17337414328657217549

/-! ## A294597.P14712267344619945982

`lt[7, A110654(A000925(n))+A025427(n)]`
-/

namespace A294597.P14712267344619945982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A000925 n).toNat + A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294597.P14712267344619945982

/-! ## A294597.P1028554712030663851

`lt[7, A010052(n)+A025427(n)+A025426(n)]`
-/

namespace A294597.P1028554712030663851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n + (A025427 n + A025426 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294597.P1028554712030663851

/-! ## A294597.P4465577466664693968

`lt[7, A216282(A022144(n))+A025436(n)]`
-/

namespace A294597.P4465577466664693968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216282 (A022144 n).toNat + A025436 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A294597.P4465577466664693968

/-!
# A294598: Expansion of 1/(Sum_{i>=0} q^(i^2)/Product_{j=1..i} (1 - q^j + q^(2*j))).

The programs for A294598, there is no canonical definition to state claims against.
-/

/-! ## A294598.P2801540799744185441

`Δ[Δ[A001221(A274289(n))]]`
-/

namespace A294598.P2801540799744185441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A274289 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A294598.P2801540799744185441

