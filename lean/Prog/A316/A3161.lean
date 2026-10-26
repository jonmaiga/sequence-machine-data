import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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

/-!
# A316100: Numbers k such that k is deficient but k+1 is abundant, that is, a deficient number followed by an abundant number.

The programs for A316100, there is no canonical definition to state claims against.
-/

/-! ## A316100.P12528329880331534672

`A046667(A224907(n+1))`
-/

namespace A316100.P12528329880331534672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A224907 (n + 1)).toNat

end

end A316100.P12528329880331534672

/-! ## A316100.P9921787162141105693

`A378645(A133855(n+1))+A005101(n+1)`
-/

namespace A316100.P9921787162141105693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378645 (A133855 (n + 1)).toNat + A005101 (n + 1)

end

end A316100.P9921787162141105693

/-! ## A316100.P17297750546487793086

`A091194(A217740(n+1)-1)`
-/

namespace A316100.P17297750546487793086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091194 (A217740 (n + 1) - 1).toNat

end

end A316100.P17297750546487793086

/-! ## A316100.P12647540364080392360

`eq[A060862(n+1)*A136125(n+1), A136125(n+1)]`
-/

namespace A316100.P12647540364080392360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060862 (n + 1) * A136125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136125 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316100.P12647540364080392360

/-! ## A316100.P15345199792132872462

`eq[A317448(n), A341621(n+1)]`
-/

namespace A316100.P15345199792132872462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317448 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341621 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316100.P15345199792132872462

/-! ## A316100.P3842971059728774790

`eq[A079981(n), A341621(n+1)]`
-/

namespace A316100.P3842971059728774790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079981 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341621 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316100.P3842971059728774790

/-! ## A316100.P6880881596737860838

`eq[A287285(n), A341621(n+1)]`
-/

namespace A316100.P6880881596737860838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287285 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341621 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316100.P6880881596737860838

/-! ## A316100.P9128176310703680262

`eq[A016724(n), A064162(n+1)]`
-/

namespace A316100.P9128176310703680262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016724 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064162 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316100.P9128176310703680262

/-! ## A316100.P5589383188889818924

`eq[A052552(n), A060862(n+1)]`
-/

namespace A316100.P5589383188889818924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060862 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316100.P5589383188889818924

/-! ## A316100.P5838152246937203396

`eq[A052552(n), A082551(n+1)]`
-/

namespace A316100.P5838152246937203396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316100.P5838152246937203396

/-! ## A316100.P7657471745727822282

`eq[A052552(n), A294937(n+1)]`
-/

namespace A316100.P7657471745727822282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316100.P7657471745727822282

/-! ## A316100.P3825227677597082645

`eq[A077966(n), A341621(n+1)]`
-/

namespace A316100.P3825227677597082645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077966 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341621 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316100.P3825227677597082645

/-!
# A316101: Sequence a_k of column k shifts left when Weigh transform is applied k times with a_k(n) = n for n=0, k>=0, read by antidiagonals.

The programs for A316101, there is no canonical definition to state claims against.
-/

/-! ## A316101.P12120175274737740175

`gcd(A275327(A215703(n)), A318757(n))`
-/

namespace A316101.P12120175274737740175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A275327 (A215703 n).toNat) (A318757 n)

end

end A316101.P12120175274737740175

/-! ## A316101.P10299857314849293434

`A195174(A069160(A263744(n+1)²))`
-/

namespace A316101.P10299857314849293434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A069160 (A263744 (n + 1) ^ 2).toNat).toNat

end

end A316101.P10299857314849293434

/-! ## A316101.P10208489715462235088

`A122402(xor(1, A102752(n)))`
-/

namespace A316101.P10208489715462235088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122402 (Int.xor 1 (A102752 n)).toNat

end

end A316101.P10208489715462235088

/-! ## A316101.P6973457900856716417

`A005136(A002262(n)*A303694(n))`
-/

namespace A316101.P6973457900856716417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (A002262 n * A303694 n).toNat

end

end A316101.P6973457900856716417

/-! ## A316101.P18008166598848320026

`A325385(A037276(3*(n+1)))%A276562(n+1)`
-/

namespace A316101.P18008166598848320026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325385 (A037276 (3 * (n + 1))).toNat) (A276562 (n + 1))

end

end A316101.P18008166598848320026

/-!
# A316102: a(n) is the n-th term of the sequence that shifts left by one position when Weigh transform is applied n times; a(0) = 0.

The programs for A316102, there is no canonical definition to state claims against.
-/

/-! ## A316102.P8405366412516755105

`A316101(∑[4*n])`
-/

namespace A316102.P8405366412516755105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A316102.P8405366412516755105

/-! ## A316102.P66465946978761636

`A057427(n)*A316101((n+1)*2*n)`
-/

namespace A316102.P66465946978761636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A316101 ((n + 1) * (2 * n))

end

end A316102.P66465946978761636

/-! ## A316102.P11919259189360067033

`A316101((n+1)*2*n)%A082034(n)`
-/

namespace A316102.P11919259189360067033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316101 ((n + 1) * (2 * n))) (A082034 n)

end

end A316102.P11919259189360067033

/-! ## A316102.P1355892431123224044

`A316101(A046092(n))+A055671(n²)`
-/

namespace A316102.P1355892431123224044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A046092 n).toNat + A055671 (n ^ 2)

end

end A316102.P1355892431123224044

/-! ## A316102.P7742481118650769111

`A316101(A046092(n))+A024155(A205708(n+1))`
-/

namespace A316102.P7742481118650769111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A046092 n).toNat + A024155 (A205708 (n + 1)).toNat

end

end A316102.P7742481118650769111

/-! ## A316102.P15085204624475268464

`A316101(A132209(n)+1)+A000007(A059030(n+1))`
-/

namespace A316102.P15085204624475268464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A132209 n + 1).toNat + A000007 (A059030 (n + 1)).toNat

end

end A316102.P15085204624475268464

/-! ## A316102.P3087109880221113669

`A316101(A132209(n)+1)+A000007(A132209(n)+1)`
-/

namespace A316102.P3087109880221113669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A132209 n + 1).toNat + A000007 (A132209 n + 1).toNat

end

end A316102.P3087109880221113669

/-!
# A316103: Sequence shifts left when Weigh transform is applied three times with a(n) = n for n

The programs for A316103, there is no canonical definition to state claims against.
-/

/-! ## A316103.P1858692128684262048

`A316101(∑[n+3]+n+3)`
-/

namespace A316103.P1858692128684262048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A316103.P1858692128684262048

/-! ## A316103.P746124802877431433

`4*A316101(A060577(n+3))/2/2`
-/

namespace A316103.P746124802877431433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A316101 (A060577 (n + 3)).toNat : ℚ) / 2) / 2

end

end A316103.P746124802877431433

/-! ## A316103.P4914641831252885312

`A316101(A060577(n+3))%A108261(n)`
-/

namespace A316103.P4914641831252885312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316101 (A060577 (n + 3)).toNat) (A108261 n)

end

end A316103.P4914641831252885312

/-! ## A316103.P14238681982494646019

`lcm(A178334(n), A316101(A060577(n+3)))`
-/

namespace A316103.P14238681982494646019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A178334 n) (A316101 (A060577 (n + 3)).toNat)

end

end A316103.P14238681982494646019

/-! ## A316103.P1539554494882199420

`and(A057428(n), A316101(A060577(n+3)))`
-/

namespace A316103.P1539554494882199420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A316101 (A060577 (n + 3)).toNat)

end

end A316103.P1539554494882199420

/-! ## A316103.P7067046829700108503

`A316101(A060577(n+3))+A000122(3*n+2)`
-/

namespace A316103.P7067046829700108503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A060577 (n + 3)).toNat + A000122 (3 * n + 2)

end

end A316103.P7067046829700108503

/-!
# A316104: Sequence shifts left when Weigh transform is applied four times with a(n) = n for n

The programs for A316104, there is no canonical definition to state claims against.
-/

/-! ## A316104.P4594100321144187585

`A316101(∑[n+5]+5)`
-/

namespace A316104.P4594100321144187585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A316104.P4594100321144187585

/-! ## A316104.P2662422659151545491

`A316101(A000217(n+5)-5)%A084128(n)`
-/

namespace A316104.P2662422659151545491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316101 (A000217 (n + 5) - 5).toNat) (A084128 n)

end

end A316104.P2662422659151545491

/-! ## A316104.P7764628909214201426

`A316101(A000217(n+5)-5)+A000007(n+1)`
-/

namespace A316104.P7764628909214201426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A000217 (n + 5) - 5).toNat + A000007 (n + 1)

end

end A316104.P7764628909214201426

/-! ## A316104.P10954052276070909912

`A316101(A000217(n+5)-5)+A000038(n+1)`
-/

namespace A316104.P10954052276070909912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A000217 (n + 5) - 5).toNat + A000038 (n + 1)

end

end A316104.P10954052276070909912

/-! ## A316104.P16575788281327191118

`A055231((n+1)²)*A316101(A000217(n+5)-5)`
-/

namespace A316104.P16575788281327191118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 ((n + 1) ^ 2) * A316101 (A000217 (n + 5) - 5).toNat

end

end A316104.P16575788281327191118

/-! ## A316104.P11953057657683852703

`A014963(4*n+2)*A316101(A000217(n+5)-5)`
-/

namespace A316104.P11953057657683852703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A316101 (A000217 (n + 5) - 5).toNat

end

end A316104.P11953057657683852703

/-! ## A316104.P15481140231780213483

`A316101(A000217(n+5)-5)+A053121(A027379(n+3)-1)`
-/

namespace A316104.P15481140231780213483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A000217 (n + 5) - 5).toNat + A053121 (A027379 (n + 3) - 1).toNat

end

end A316104.P15481140231780213483

/-! ## A316104.P18301901485427527896

`A008315((5-n)²)*A316101(A000217(n+5)-5)`
-/

namespace A316104.P18301901485427527896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 ((5 - (n : ℤ)) ^ 2).toNat * A316101 (A000217 (n + 5) - 5).toNat

end

end A316104.P18301901485427527896

/-! ## A316104.P7015386035728924173

`A010052((n+1)²)*A316101(A000217(n+5)-5)`
-/

namespace A316104.P7015386035728924173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 ((n + 1) ^ 2) * A316101 (A000217 (n + 5) - 5).toNat

end

end A316104.P7015386035728924173

/-!
# A316105: Sequence shifts left when Weigh transform is applied five times with a(n) = n for n

The programs for A316105, there is no canonical definition to state claims against.
-/

/-! ## A316105.P4269286985319268468

`A316101((n+4)²-∑[n+1])`
-/

namespace A316105.P4269286985319268468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 ((n + 4) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A316105.P4269286985319268468

/-! ## A316105.P13301255825990489218

`A316101(eq[11, A099375(n)])%(7^n)`
-/

namespace A316105.P13301255825990489218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (7 ^ n : ℤ)

end

end A316105.P13301255825990489218

/-! ## A316105.P3000446413552474196

`C(n, C(n, n²))*A316101(A000124(n+6)-7)`
-/

namespace A316105.P3000446413552474196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (Nat.choose n (n ^ 2)) : ℤ) * A316101 (A000124 (n + 6) - 7).toNat

end

end A316105.P3000446413552474196

/-! ## A316105.P10249214985691425871

`A057427(n)*A316101(A055999(n+3))`
-/

namespace A316105.P10249214985691425871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A316101 (A055999 (n + 3)).toNat

end

end A316105.P10249214985691425871

/-! ## A316105.P3511506024201519132

`lcm(A057077(n), A316101(A055999(n+3)))`
-/

namespace A316105.P3511506024201519132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A316101 (A055999 (n + 3)).toNat)

end

end A316105.P3511506024201519132

/-! ## A316105.P2801360477546613457

`A316101(A055999(n+3))+A000007(n+1)`
-/

namespace A316105.P2801360477546613457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A055999 (n + 3)).toNat + A000007 (n + 1)

end

end A316105.P2801360477546613457

/-! ## A316105.P7490275770627343667

`A007318(∑[n+1])*A316101(A055999(n+3))`
-/

namespace A316105.P7490275770627343667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A316101 (A055999 (n + 3)).toNat

end

end A316105.P7490275770627343667

/-! ## A316105.P7447446233416983021

`(A000027(n+1)-n)*A316101(A055999(n+3))`
-/

namespace A316105.P7447446233416983021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) - (n : ℤ)) * A316101 (A055999 (n + 3)).toNat

end

end A316105.P7447446233416983021

/-! ## A316105.P2242956956426088475

`A000007(C(2, n+2))*A316101(A000124(n+6)-7)`
-/

namespace A316105.P2242956956426088475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Nat.choose 2 (n + 2)) * A316101 (A000124 (n + 6) - 7).toNat

end

end A316105.P2242956956426088475

/-! ## A316105.P2755965738478159131

`A000120(A053644(n))*A316101(A000124(n+6)-7)`
-/

namespace A316105.P2755965738478159131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A053644 n).toNat * A316101 (A000124 (n + 6) - 7).toNat

end

end A316105.P2755965738478159131

/-!
# A316106: Sequence shifts left when Weigh transform is applied six times with a(n) = n for n

The programs for A316106, there is no canonical definition to state claims against.
-/

/-! ## A316106.P3322447282698849601

`A316101(A052905(n+4)-2)`
-/

namespace A316106.P3322447282698849601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A052905 (n + 4) - 2).toNat

end

end A316106.P3322447282698849601

/-! ## A316106.P2492545775900000046

`A316101(A034856(n+6)-5)`
-/

namespace A316106.P2492545775900000046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A034856 (n + 6) - 5).toNat

end

end A316106.P2492545775900000046

/-! ## A316106.P10742897407240100125

`A316101(A000217(n+7)-7)`
-/

namespace A316106.P10742897407240100125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A000217 (n + 7) - 7).toNat

end

end A316106.P10742897407240100125

/-! ## A316106.P14131794778820222383

`A316101(A000124(n+7)-8)`
-/

namespace A316106.P14131794778820222383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A000124 (n + 7) - 8).toNat

end

end A316106.P14131794778820222383

/-! ## A316106.P5750942469425458921

`A316101(eq[7, A004736(n+1)])`
-/

namespace A316106.P5750942469425458921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316106.P5750942469425458921

/-! ## A316106.P3813269480573228803

`A316101(A000096(n+5)+n+1)`
-/

namespace A316106.P3813269480573228803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A000096 (n + 5) + (n + 1 : ℤ)).toNat

end

end A316106.P3813269480573228803

/-! ## A316106.P7630564792830713908

`A316101(2*n+A000124(n+5)+5)`
-/

namespace A316106.P7630564792830713908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 ((2 * n : ℤ) + (A000124 (n + 5) + 5)).toNat

end

end A316106.P7630564792830713908

/-!
# A316107: Sequence shifts left when Weigh transform is applied seven times with a(n) = n for n

The programs for A316107, there is no canonical definition to state claims against.
-/

/-! ## A316107.P13815363995447119003

`A316101(A052905(n+5)-3)`
-/

namespace A316107.P13815363995447119003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A052905 (n + 5) - 3).toNat

end

end A316107.P13815363995447119003

/-! ## A316107.P10491153154288451433

`A316101(A034856(n+7)-6)`
-/

namespace A316107.P10491153154288451433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A034856 (n + 7) - 6).toNat

end

end A316107.P10491153154288451433

/-! ## A316107.P15636801637886971963

`A316101(A000096(n+7)-7)`
-/

namespace A316107.P15636801637886971963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A000096 (n + 7) - 7).toNat

end

end A316107.P15636801637886971963

/-! ## A316107.P16330201024373568662

`A316101(A000217(n+8)-8)`
-/

namespace A316107.P16330201024373568662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A000217 (n + 8) - 8).toNat

end

end A316107.P16330201024373568662

/-! ## A316107.P1434709400908605362

`A316101(A103517(n+3)+A000096(n+5))`
-/

namespace A316107.P1434709400908605362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A103517 (n + 3) + A000096 (n + 5)).toNat

end

end A316107.P1434709400908605362

/-! ## A316107.P3566783845684537509

`A316101(A005843(n+3)+A000124(n+6))`
-/

namespace A316107.P3566783845684537509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A005843 (n + 3) + A000124 (n + 6)).toNat

end

end A316107.P3566783845684537509

/-!
# A316108: Sequence shifts left when Weigh transform is applied eight times with a(n) = n for n

The programs for A316108, there is no canonical definition to state claims against.
-/

/-! ## A316108.P13606351871352715356

`A316101(A034856(n+8)-7)`
-/

namespace A316108.P13606351871352715356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A034856 (n + 8) - 7).toNat

end

end A316108.P13606351871352715356

/-! ## A316108.P9664403519951304964

`A316101(A000096(n+8)-8)`
-/

namespace A316108.P9664403519951304964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A000096 (n + 8) - 8).toNat

end

end A316108.P9664403519951304964

/-! ## A316108.P15596274155266035604

`A316101(A000217(n+9)-9)`
-/

namespace A316108.P15596274155266035604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A000217 (n + 9) - 9).toNat

end

end A316108.P15596274155266035604

/-! ## A316108.P14852328250243750123

`A316101(2*n+A000217(n+7)+8)`
-/

namespace A316108.P14852328250243750123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 ((2 * n : ℤ) + (A000217 (n + 7) + 8)).toNat

end

end A316108.P14852328250243750123

/-! ## A316108.P5884457734575971099

`A316101(A002378(n+6)-A161680(n+4))`
-/

namespace A316108.P5884457734575971099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A002378 (n + 6) - A161680 (n + 4)).toNat

end

end A316108.P5884457734575971099

/-!
# A316109: Sequence shifts left when Weigh transform is applied nine times with a(n) = n for n

The programs for A316109, there is no canonical definition to state claims against.
-/

/-! ## A316109.P5768944318417831631

`A316101(A034856(n+9)-8)`
-/

namespace A316109.P5768944318417831631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A034856 (n + 9) - 8).toNat

end

end A316109.P5768944318417831631

/-! ## A316109.P14247902230386355057

`A316101(A000096(n+9)-9)`
-/

namespace A316109.P14247902230386355057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A000096 (n + 9) - 9).toNat

end

end A316109.P14247902230386355057

/-! ## A316109.P13334768262898215896

`A316101(A000217(n+10)-10)`
-/

namespace A316109.P13334768262898215896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A000217 (n + 10) - 10).toNat

end

end A316109.P13334768262898215896

/-! ## A316109.P14412153822286254092

`A316101(A103517(n+4)+A000096(n+7))`
-/

namespace A316109.P14412153822286254092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A103517 (n + 4) + A000096 (n + 7)).toNat

end

end A316109.P14412153822286254092

/-! ## A316109.P4074620109265026435

`A316101(A005843(n+4)+A000124(n+8))`
-/

namespace A316109.P4074620109265026435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A005843 (n + 4) + A000124 (n + 8)).toNat

end

end A316109.P4074620109265026435

/-!
# A316110: Sequence shifts left when Weigh transform is applied ten times with a(n) = n for n

The programs for A316110, there is no canonical definition to state claims against.
-/

/-! ## A316110.P2002844984118230118

`A316101(A034856(n+10)-9)`
-/

namespace A316110.P2002844984118230118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A034856 (n + 10) - 9).toNat

end

end A316110.P2002844984118230118

/-! ## A316110.P16412136876376057140

`A316101(A000217(n+11)-11)`
-/

namespace A316110.P16412136876376057140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A000217 (n + 11) - 11).toNat

end

end A316110.P16412136876376057140

/-! ## A316110.P4827800431571405720

`A316101(A008593(n+5)+∑[n])`
-/

namespace A316110.P4827800431571405720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A008593 (n + 5) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A316110.P4827800431571405720

/-! ## A316110.P15276725843583692051

`A316101(A000096(n+9)+n+1)`
-/

namespace A316110.P15276725843583692051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A000096 (n + 9) + (n + 1 : ℤ)).toNat

end

end A316110.P15276725843583692051

/-! ## A316110.P6083966565443815495

`A316101(A055998(n+8)+n+3)`
-/

namespace A316110.P6083966565443815495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A055998 (n + 8) + (n + 3 : ℤ)).toNat

end

end A316110.P6083966565443815495

/-!
# A316111: a(n) is the smallest k > 1 such that gcd(k, n^k - n) = 1, for n > 1.

The programs for A316111, there is no canonical definition to state claims against.
-/

/-! ## A316111.P12842978872163380029

`A381805((n+3)!)`
-/

namespace A316111.P12842978872163380029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381805 (Nat.factorial (n + 3))

end

end A316111.P12842978872163380029

/-!
# A316112: Number of leaves in the free pure symmetric multifunction (with empty expressions allowed) with e-number n.

The programs for A316112, there is no canonical definition to state claims against.
-/

/-! ## A316112.P7550956002889879767

`ceil(γ*A317994(n+1))`
-/

namespace A316112.P7550956002889879767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.eulerMascheroniConstant * (A317994 (n + 1) : ℝ)⌉

end

end A316112.P7550956002889879767

/-! ## A316112.P6296838573942183193

`A008619(lcm((-1)^n, A317994(n+1)))`
-/

namespace A316112.P6296838573942183193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.lcm ((-1) ^ n) (A317994 (n + 1)))

end

end A316112.P6296838573942183193

/-! ## A316112.P16259286264235332433

`A318037(abs(abs(A317994(n+1)-n)-n))`
-/

namespace A316112.P16259286264235332433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318037 |(|A317994 (n + 1) - (n : ℤ)| - (n : ℤ))|.toNat

end

end A316112.P16259286264235332433

/-! ## A316112.P4355593107723259453

`floor(A317994(n+1)/A000034(2*n+3))+1`
-/

namespace A316112.P4355593107723259453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A317994 (n + 1) : ℚ) / (A000034 (2 * n + 3) : ℚ)⌋ + 1

end

end A316112.P4355593107723259453

/-! ## A316112.P1375371025805787278

`floor(A019303(2*(n+1))+γ*A317994(n+1))`
-/

namespace A316112.P1375371025805787278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019303 (2 * (n + 1)) : ℝ) + Real.eulerMascheroniConstant * (A317994 (n + 1) : ℝ)⌋

end

end A316112.P1375371025805787278

/-! ## A316112.P10046595129025496716

`floor(A007318(C(2, n+1))+γ*A317994(n+1))`
-/

namespace A316112.P10046595129025496716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007318 (Nat.choose 2 (n + 1)) : ℝ) + Real.eulerMascheroniConstant * (A317994 (n + 1) : ℝ)⌋

end

end A316112.P10046595129025496716

/-! ## A316112.P18233568468413384589

`floor(A000010(((-1)^n)²)+γ*A317994(n+1))`
-/

namespace A316112.P18233568468413384589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (((-1) ^ n) ^ 2).toNat : ℝ) + Real.eulerMascheroniConstant * (A317994 (n + 1) : ℝ)⌋

end

end A316112.P18233568468413384589

/-! ## A316112.P7445553541060742380

`A055086(A317994(n+1)+A025444(n))`
-/

namespace A316112.P7445553541060742380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A317994 (n + 1) + A025444 n).toNat

end

end A316112.P7445553541060742380

/-! ## A316112.P11548130815452154644

`A103128(A317994(n+1)+A178334(n))`
-/

namespace A316112.P11548130815452154644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A317994 (n + 1) + A178334 n).toNat

end

end A316112.P11548130815452154644

/-! ## A316112.P14561496016132824201

`A226762(A000032(C(2, n+2))*A317994(n+1)+1)`
-/

namespace A316112.P14561496016132824201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A000032 (Nat.choose 2 (n + 2)) * A317994 (n + 1) + 1).toNat

end

end A316112.P14561496016132824201

/-!
# A316114: Distinct terms in A274016.

The programs for A316114, there is no canonical definition to state claims against.
-/

/-! ## A316114.P11518975034385777711

`eq[1, char[A274016(n+2)]]`
-/

namespace A316114.P11518975034385777711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274016 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A316114.P11518975034385777711

/-! ## A316114.P9427759878285329916

`lt[1, char[A274016(floor(n/3)+2)]+1]`
-/

namespace A316114.P9427759878285329916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274016 (⌊(n : ℚ) / 3⌋ + 2).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A316114.P9427759878285329916

/-! ## A316114.P13630507443724318127

`lt[1, char[A274016(n+2)]*A065091(n+1)]`
-/

namespace A316114.P13630507443724318127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274016 (n + 2)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A065091 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A316114.P13630507443724318127

/-! ## A316114.P12469925186462243444

`record[A274016(n+2)%A330853(3*n+4)]`
-/

namespace A316114.P12469925186462243444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274016 (n + 2)) (A330853 (3 * n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316114.P12469925186462243444

/-! ## A316114.P3779785004341276779

`∑[A002117(∑[A288324(n)])]`
-/

namespace A316114.P3779785004341276779
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288324 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002117 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316114.P3779785004341276779

/-!
# A316115: Numbers k such that A274016(k) = k - 1.

The programs for A316115, there is no canonical definition to state claims against.
-/

/-! ## A316115.P5604702923969769973

`lt[n, A274016(n+2)]+1`
-/

namespace A316115.P5604702923969769973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274016 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A316115.P5604702923969769973

/-! ## A316115.P10119834514018787170

`eq[n, A274016(abs(1-n)+2)]`
-/

namespace A316115.P10119834514018787170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274016 (|1 - (n : ℤ)| + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A316115.P10119834514018787170

/-! ## A316115.P18219969682638481087

`A274016(record[n*(A274016(n+2)-n)]+2)`
-/

namespace A316115.P18219969682638481087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A274016 (n + 2) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274016 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2).toNat

end

end A316115.P18219969682638481087

/-! ## A316115.P12443119713584182153

`record[A000124(A274016(n+2))-A000124(n)]`
-/

namespace A316115.P12443119713584182153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A274016 (n + 2)).toNat - A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316115.P12443119713584182153

/-! ## A316115.P17407552417006289267

`record[A000217(A274016(n+2))-A000217(n)]`
-/

namespace A316115.P17407552417006289267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A274016 (n + 2)).toNat - A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316115.P17407552417006289267

/-!
# A316116: Least odd primitive abundant number having its prime signature.

The programs for A316116, there is no canonical definition to state claims against.
-/

/-! ## A316116.P5843396135472180244

`∩[A005231(n+1), A357921(n+1)]`
-/

namespace A316116.P5843396135472180244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316116.P5843396135472180244

/-! ## A316116.P7615628259013973853

`∩[A006038(n+1), A357921(n+1)]`
-/

namespace A316116.P7615628259013973853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316116.P7615628259013973853

/-! ## A316116.P18445587871444764428

`∩[A036798(n+1), A357921(n+1)]`
-/

namespace A316116.P18445587871444764428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316116.P18445587871444764428

/-! ## A316116.P12013257236896832731

`∩[A174830(n+1), A357921(n+1)]`
-/

namespace A316116.P12013257236896832731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316116.P12013257236896832731

/-!
# A316117: Number of nXn 0..1 arrays with every element unequal to 0, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316117, there is no canonical definition to state claims against.
-/

/-! ## A316117.P11049688083234231722

`A316123(∑[4*n]+1)`
-/

namespace A316117.P11049688083234231722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316123 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316117.P11049688083234231722

/-! ## A316117.P16456005128697581297

`and(-1, A316123(A001844(n)))`
-/

namespace A316117.P16456005128697581297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A316123 (A001844 n).toNat)

end

end A316117.P16456005128697581297

/-! ## A316117.P13394606019082881449

`record[A316123(A330613(n+1))]`
-/

namespace A316117.P13394606019082881449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316123 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316117.P13394606019082881449

/-! ## A316117.P15712010083343779018

`record[A003982(n)*A316123(n+1)]`
-/

namespace A316117.P15712010083343779018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A316123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316117.P15712010083343779018

/-! ## A316117.P6101712342330452753

`record[A214505(n)*A316123(n+1)]`
-/

namespace A316117.P6101712342330452753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A316123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316117.P6101712342330452753

/-!
# A316118: Number of nX3 0..1 arrays with every element unequal to 0, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316118, there is no canonical definition to state claims against.
-/

/-! ## A316118.P18119411786171375236

`A316123(∑[n+2]+4)`
-/

namespace A316118.P18119411786171375236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316123 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A316118.P18119411786171375236

/-! ## A316118.P8341606556275341050

`A316123(A167614(n+1))+char[18]`
-/

namespace A316118.P8341606556275341050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316123 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316118.P8341606556275341050

/-! ## A316118.P1005458678098799908

`A316123(A046691(n)+7)+char[19]`
-/

namespace A316118.P1005458678098799908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316123 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316118.P1005458678098799908

/-! ## A316118.P6573456824691633549

`record[A010054(n)*A316123(n+3)]`
-/

namespace A316118.P6573456824691633549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A316123 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316118.P6573456824691633549

/-! ## A316118.P11018634453032548671

`record[gcd(A303913(n), A316123(n+1))]`
-/

namespace A316118.P11018634453032548671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303913 n) (A316123 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316118.P11018634453032548671

/-!
# A316119: Number of nX4 0..1 arrays with every element unequal to 0, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316119, there is no canonical definition to state claims against.
-/

/-! ## A316119.P2317005151776964989

`A316123(∑[n+3]+7)`
-/

namespace A316119.P2317005151776964989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316123 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A316119.P2317005151776964989

/-! ## A316119.P3766741522829392252

`record[gcd(A300453(n), A316123(n+1))]`
-/

namespace A316119.P3766741522829392252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A300453 n) (A316123 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316119.P3766741522829392252

/-! ## A316119.P13332360808126339257

`record[gcd(A303913(n), A316123(n+2))]`
-/

namespace A316119.P13332360808126339257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303913 n) (A316123 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316119.P13332360808126339257

/-! ## A316119.P8667017558424264325

`A316123(A167614(n+2)+1)+char[18]`
-/

namespace A316119.P8667017558424264325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316123 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316119.P8667017558424264325

/-! ## A316119.P8222606102753755853

`A000010(gcd(n, n+1))*A316123(A167614(n+2)+1)`
-/

namespace A316119.P8222606102753755853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.gcd n (n + 1)) * A316123 (A167614 (n + 2) + 1).toNat

end

end A316119.P8222606102753755853

/-!
# A316120: Number of nX5 0..1 arrays with every element unequal to 0, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316120, there is no canonical definition to state claims against.
-/

/-! ## A316120.P15453712205412309417

`A316123(∑[n+4]+11)`
-/

namespace A316120.P15453712205412309417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316123 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A316120.P15453712205412309417

/-! ## A316120.P12915407568508664392

`A316123(A056000(n)+15)+char[20]`
-/

namespace A316120.P12915407568508664392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316123 (A056000 n + 15).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316120.P12915407568508664392

/-! ## A316120.P5267877089932520407

`A007318(C(3, n))*A316123(A056000(n)+15)`
-/

namespace A316120.P5267877089932520407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A316123 (A056000 n + 15).toNat

end

end A316120.P5267877089932520407

/-! ## A316120.P3657867555230681169

`A316123(A056000(n)+15)^and(1, A000040(n+1))`
-/

namespace A316120.P3657867555230681169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316123 (A056000 n + 15).toNat : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A316120.P3657867555230681169

/-! ## A316120.P10148077377593806802

`A316123(A056000(n)+15)^A014963(C(n+3, 2))`
-/

namespace A316120.P10148077377593806802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316123 (A056000 n + 15).toNat : ℚ) ^ (A014963 (Nat.choose (n + 3) 2) : ℤ)

end

end A316120.P10148077377593806802

/-!
# A316121: Number of nX6 0..1 arrays with every element unequal to 0, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316121, there is no canonical definition to state claims against.
-/

/-! ## A316121.P13534175390217362115

`A316123(A166136(n+4))`
-/

namespace A316121.P13534175390217362115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316123 (A166136 (n + 4)).toNat

end

end A316121.P13534175390217362115

/-! ## A316121.P16727449899065356889

`A316123(A056115(n)+21)`
-/

namespace A316121.P16727449899065356889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316123 (A056115 n + 21).toNat

end

end A316121.P16727449899065356889

/-! ## A316121.P11373696930715127681

`A316123(A167499(n+4)+1)`
-/

namespace A316121.P11373696930715127681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316123 (A167499 (n + 4) + 1).toNat

end

end A316121.P11373696930715127681

/-! ## A316121.P13693575110427619646

`A316123(A167614(n+4)+3)`
-/

namespace A316121.P13693575110427619646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316123 (A167614 (n + 4) + 3).toNat

end

end A316121.P13693575110427619646

/-! ## A316121.P11480039887308515809

`A316123(A145018(n+6)+2)`
-/

namespace A316121.P11480039887308515809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316123 (A145018 (n + 6) + 2).toNat

end

end A316121.P11480039887308515809

/-!
# A316122: Number of n X 7 0..1 arrays with every element unequal to 0, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316122, there is no canonical definition to state claims against.
-/

/-! ## A316122.P6554048948613518177

`A316123(A056119(n)+28)`
-/

namespace A316122.P6554048948613518177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316123 (A056119 n + 28).toNat

end

end A316122.P6554048948613518177

/-! ## A316122.P14336825932764303469

`A316123(eq[11, A066657(n)])`
-/

namespace A316122.P14336825932764303469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316123 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316122.P14336825932764303469

/-! ## A316122.P13732487926035563652

`A316123(A166136(n+5)+1)`
-/

namespace A316122.P13732487926035563652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316123 (A166136 (n + 5) + 1).toNat

end

end A316122.P13732487926035563652

/-! ## A316122.P13174292033039073286

`A316123(A000217(n+6)+7)`
-/

namespace A316122.P13174292033039073286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316123 (A000217 (n + 6) + 7).toNat

end

end A316122.P13174292033039073286

/-! ## A316122.P82162840430236679

`A316123(A161680(n+7)+7)`
-/

namespace A316122.P82162840430236679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316123 (A161680 (n + 7) + 7).toNat

end

end A316122.P82162840430236679

/-!
# A316123: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316123, there is no canonical definition to state claims against.
-/

/-! ## A316123.P5735642491733309369

`or(A124761(A304676(n+1)), A304676(n+1))`
-/

namespace A316123.P5735642491733309369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124761 (A304676 (n + 1)).toNat) (A304676 (n + 1))

end

end A316123.P5735642491733309369

/-!
# A316124: Number of nXn 0..1 arrays with every element unequal to 1, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316124, there is no canonical definition to state claims against.
-/

/-! ## A316124.P4130406723487527063

`A316130(∑[4*n]+1)`
-/

namespace A316124.P4130406723487527063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316130 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316124.P4130406723487527063

/-! ## A316124.P13041053389976269825

`record[A316130(Δ[A235355(n)])]`
-/

namespace A316124.P13041053389976269825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316130 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316124.P13041053389976269825

/-! ## A316124.P16795558398012542867

`record[A316130(A330613(n+1))]`
-/

namespace A316124.P16795558398012542867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316130 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316124.P16795558398012542867

/-! ## A316124.P5697602600069634705

`A316130(A001844(n))+char[10]`
-/

namespace A316124.P5697602600069634705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316130 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316124.P5697602600069634705

/-! ## A316124.P18352971967954725796

`record[A316130(Δ[A079824(n+1)])]`
-/

namespace A316124.P18352971967954725796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316130 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316124.P18352971967954725796

/-!
# A316125: Number of nX3 0..1 arrays with every element unequal to 1, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316125, there is no canonical definition to state claims against.
-/

/-! ## A316125.P2015597092012283072

`A316130(∑[n+2]+4)`
-/

namespace A316125.P2015597092012283072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316130 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A316125.P2015597092012283072

/-! ## A316125.P921157765142465691

`and(1, 2*n+1)*A316130(A167614(n+1))`
-/

namespace A316125.P921157765142465691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (2 * n + 1) : ℤ) * A316130 (A167614 (n + 1)).toNat

end

end A316125.P921157765142465691

/-! ## A316125.P9401444264889008865

`or(A016389(n), A316130(A167614(n+1)))`
-/

namespace A316125.P9401444264889008865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016389 n) (A316130 (A167614 (n + 1)).toNat)

end

end A316125.P9401444264889008865

/-! ## A316125.P12219988904217112969

`or(A016389(n), A316130(A167499(n)+n))`
-/

namespace A316125.P12219988904217112969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A016389 n) (A316130 (A167499 n + (n : ℤ)).toNat)

end

end A316125.P12219988904217112969

/-! ## A316125.P17187689351127576738

`or(A055641(n), A316130(A167499(n)+n))`
-/

namespace A316125.P17187689351127576738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055641 n) (A316130 (A167499 n + (n : ℤ)).toNat)

end

end A316125.P17187689351127576738

/-!
# A316126: Number of nX4 0..1 arrays with every element unequal to 1, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316126, there is no canonical definition to state claims against.
-/

/-! ## A316126.P12936452926626008772

`A316130(A374004(n+1))`
-/

namespace A316126.P12936452926626008772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316130 (A374004 (n + 1)).toNat

end

end A316126.P12936452926626008772

/-! ## A316126.P8259062570024002576

`A316130(A141214(n)+7)`
-/

namespace A316126.P8259062570024002576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316130 (A141214 n + 7).toNat

end

end A316126.P8259062570024002576

/-! ## A316126.P15264752908825976569

`A316130(A052905(n)+9)`
-/

namespace A316126.P15264752908825976569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316130 (A052905 n + 9).toNat

end

end A316126.P15264752908825976569

/-! ## A316126.P5276588351873607658

`A316130(A055999(n)+10)`
-/

namespace A316126.P5276588351873607658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316130 (A055999 n + 10).toNat

end

end A316126.P5276588351873607658

/-! ## A316126.P8791830878517306097

`A316130(A167614(n+2)+1)`
-/

namespace A316126.P8791830878517306097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316130 (A167614 (n + 2) + 1).toNat

end

end A316126.P8791830878517306097

/-!
# A316127: Number of nX5 0..1 arrays with every element unequal to 1, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316127, there is no canonical definition to state claims against.
-/

/-! ## A316127.P5448790714647211233

`A316130(A374005(n+1))`
-/

namespace A316127.P5448790714647211233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316130 (A374005 (n + 1)).toNat

end

end A316127.P5448790714647211233

/-! ## A316127.P8060005649579969418

`A316130(A167499(n+3))`
-/

namespace A316127.P8060005649579969418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316130 (A167499 (n + 3)).toNat

end

end A316127.P8060005649579969418

/-! ## A316127.P2926523805820232525

`A316130(A155212(n)+13)`
-/

namespace A316127.P2926523805820232525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316130 (A155212 n + 13).toNat

end

end A316127.P2926523805820232525

/-! ## A316127.P17759527612037120726

`A316130(A056000(n)+15)`
-/

namespace A316127.P17759527612037120726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316130 (A056000 n + 15).toNat

end

end A316127.P17759527612037120726

/-! ## A316127.P14764857086820195548

`A316130(eq[6, A131818(n+1)])`
-/

namespace A316127.P14764857086820195548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316130 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316127.P14764857086820195548

/-!
# A316128: Number of nX6 0..1 arrays with every element unequal to 1, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316128, there is no canonical definition to state claims against.
-/

/-! ## A316128.P1496592406308551652

`A316130(A374007(n+1))`
-/

namespace A316128.P1496592406308551652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316130 (A374007 (n + 1)).toNat

end

end A316128.P1496592406308551652

/-! ## A316128.P5317518989742892351

`A316130(A166136(n+4))`
-/

namespace A316128.P5317518989742892351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316130 (A166136 (n + 4)).toNat

end

end A316128.P5317518989742892351

/-! ## A316128.P5032617777181531952

`A316130(A056115(n)+21)`
-/

namespace A316128.P5032617777181531952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316130 (A056115 n + 21).toNat

end

end A316128.P5032617777181531952

/-! ## A316128.P15941581255590593919

`A316130(eq[7, A131818(n+1)])`
-/

namespace A316128.P15941581255590593919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316130 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316128.P15941581255590593919

/-! ## A316128.P11574302347289641443

`A316130(A056119(n)+16)`
-/

namespace A316128.P11574302347289641443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316130 (A056119 n + 16).toNat

end

end A316128.P11574302347289641443

/-!
# A316129: Number of nX7 0..1 arrays with every element unequal to 1, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316129, there is no canonical definition to state claims against.
-/

/-! ## A316129.P16404707799995680422

`A316130(A374008(n+1))`
-/

namespace A316129.P16404707799995680422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316130 (A374008 (n + 1)).toNat

end

end A316129.P16404707799995680422

/-! ## A316129.P2046116144652245919

`A316130(A056119(n)+28)`
-/

namespace A316129.P2046116144652245919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316130 (A056119 n + 28).toNat

end

end A316129.P2046116144652245919

/-! ## A316129.P14233216393134332093

`A316130(eq[11, A066657(n)])`
-/

namespace A316129.P14233216393134332093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316130 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316129.P14233216393134332093

/-! ## A316129.P14100421929030690740

`A316130(eq[8, A131818(n+1)])`
-/

namespace A316129.P14100421929030690740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316130 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316129.P14100421929030690740

/-! ## A316129.P4782087005268199606

`A316130(A055999(n+4))`
-/

namespace A316129.P4782087005268199606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316130 (A055999 (n + 4)).toNat

end

end A316129.P4782087005268199606

/-!
# A316130: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316130, there is no canonical definition to state claims against.
-/

/-! ## A316130.P2519512047329870118

`A317436(n+1)-A173636(A174545(n))`
-/

namespace A316130.P2519512047329870118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317436 (n + 1) - A173636 (A174545 n).toNat

end

end A316130.P2519512047329870118

/-! ## A316130.P13778857317975608631

`A317436(n+1)+A305633(A334709(n+1))`
-/

namespace A316130.P13778857317975608631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317436 (n + 1) + A305633 (A334709 (n + 1)).toNat

end

end A316130.P13778857317975608631

/-! ## A316130.P15104269255487590536

`A317436(n+1)-A065040(A282230(n+1))`
-/

namespace A316130.P15104269255487590536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317436 (n + 1) - A065040 (A282230 (n + 1)).toNat

end

end A316130.P15104269255487590536

/-! ## A316130.P2860636474321489548

`A317436(n+1)-A316717(A316576(n+1))²`
-/

namespace A316130.P2860636474321489548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317436 (n + 1) - A316717 (A316576 (n + 1)).toNat ^ 2

end

end A316130.P2860636474321489548

/-! ## A316130.P13795668708665312138

`A317436(n+1)+A016389(A022166(n))`
-/

namespace A316130.P13795668708665312138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317436 (n + 1) + A016389 (A022166 n).toNat

end

end A316130.P13795668708665312138

/-!
# A316140: Denominator of the autosequence 2/((n+2)*(n+3)) difference table written by antidiagonals.

The programs for A316140, there is no canonical definition to state claims against.
-/

/-! ## A316140.P12120028989738015959

`lcm(2, A061928(n+1))/2`
-/

namespace A316140.P12120028989738015959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A061928 (n + 1)) : ℚ) / 2

end

end A316140.P12120028989738015959

/-! ## A316140.P2137482765773288872

`A026741(A061928(n+1))`
-/

namespace A316140.P2137482765773288872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A061928 (n + 1)).toNat

end

end A316140.P2137482765773288872

/-! ## A316140.P3572236051342371816

`A145051(A061928(n+1)-1)`
-/

namespace A316140.P3572236051342371816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145051 (A061928 (n + 1) - 1).toNat

end

end A316140.P3572236051342371816

/-! ## A316140.P4108932773212433282

`A060819(2*A061928(n+1))`
-/

namespace A316140.P4108932773212433282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (2 * A061928 (n + 1)).toNat

end

end A316140.P4108932773212433282

/-! ## A316140.P15426507334811052555

`A001281(lcm(2, A061928(n+1)))`
-/

namespace A316140.P15426507334811052555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (Int.lcm 2 (A061928 (n + 1)))

end

end A316140.P15426507334811052555

/-!
# A316142: Expansion of e.g.f. Product_{k>=1} (1 + (exp(x)-1)^k)^2.

The programs for A316142, there is no canonical definition to state claims against.
-/

/-! ## A316142.P3807937389641329400

`A053438(A320352(n))+A052876(n)`
-/

namespace A316142.P3807937389641329400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 (A320352 n).toNat + A052876 n

end

end A316142.P3807937389641329400

/-! ## A316142.P15680454527361252809

`A004277(A167137(n))-A052841(n)`
-/

namespace A316142.P15680454527361252809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A167137 n).toNat - A052841 n

end

end A316142.P15680454527361252809

/-!
# A316143: Expansion of e.g.f. Product_{k>=1} 1 / (1 - (exp(x)-1)^k)^2.

The programs for A316143, there is no canonical definition to state claims against.
-/

/-! ## A316143.P2012258706341552629

`A306046(n)+A004526(A306045(n))`
-/

namespace A316143.P2012258706341552629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306046 n + A004526 (A306045 n).toNat

end

end A316143.P2012258706341552629

/-!
# A316144: Expansion of e.g.f. Product_{k>=1} ((1 + (exp(x)-1)^k) / (1 - (exp(x)-1)^k))^2.

The programs for A316144, there is no canonical definition to state claims against.
-/

/-! ## A316144.P396633597836048573

`A008619(∑[∏[2*(n+2)]/4])`
-/

namespace A316144.P396633597836048573
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A316144.P396633597836048573

/-!
# A316147: Numbers, with digits in nondecreasing order, whose product of digits equals the number of digits times the sum of digits.

The programs for A316147, there is no canonical definition to state claims against.
-/

/-! ## A316147.P17273504097631889182

`∩[A009994(n+1), A064154(n+1)]`
-/

namespace A316147.P17273504097631889182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316147.P17273504097631889182

/-! ## A316147.P16932528793390612084

`∩[A064154(n+1), A249443(n+1)]`
-/

namespace A316147.P16932528793390612084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316147.P16932528793390612084

/-! ## A316147.P7083248168155738525

`∩[A064154(n+1), A381509(n+1)]`
-/

namespace A316147.P7083248168155738525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316147.P7083248168155738525

/-! ## A316147.P14480221263809102689

`∩[A064154(n+1), A179239(n)]`
-/

namespace A316147.P14480221263809102689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179239 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316147.P14480221263809102689

/-!
# A316148: Number of non-congruent solutions of x^2+y^2 == z^2+w^2 (mod n).

The programs for A316148, there is no canonical definition to state claims against.
-/

/-! ## A316148.P12830863783702823378

`A140670(n+1)*A240547(n+1)`
-/

namespace A316148.P12830863783702823378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140670 (n + 1) * A240547 (n + 1)

end

end A316148.P12830863783702823378

/-! ## A316148.P9409908853877727087

`A028310(A135481(n))*A240547(n+1)`
-/

namespace A316148.P9409908853877727087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A135481 n).toNat * A240547 (n + 1)

end

end A316148.P9409908853877727087

/-! ## A316148.P12783146231888986008

`A038712(A004525(n+1))*A240547(n+1)`
-/

namespace A316148.P12783146231888986008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A004525 (n + 1)).toNat * A240547 (n + 1)

end

end A316148.P12783146231888986008

/-! ## A316148.P13588823636766188487

`A078896(A006519(n+1))*A240547(n+1)`
-/

namespace A316148.P13588823636766188487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078896 (A006519 (n + 1)).toNat * A240547 (n + 1)

end

end A316148.P13588823636766188487

/-! ## A316148.P9629994794381361141

`A000203(A160467(n+1))*A240547(n+1)`
-/

namespace A316148.P9629994794381361141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A160467 (n + 1)).toNat * A240547 (n + 1)

end

end A316148.P9629994794381361141

/-!
# A316150: Inverse Weigh transform of n^2.

The programs for A316150, there is no canonical definition to state claims against.
-/

/-! ## A316150.P8666480424174633048

`∑{d}[n+1, A036987(#-1)*A316152((n+1)/#)]`
-/

namespace A316150.P8666480424174633048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A316152 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A316150.P8666480424174633048

/-!
# A316151: Heinz numbers of strict integer partitions of prime numbers into prime parts.

The programs for A316151, there is no canonical definition to state claims against.
-/

/-! ## A316151.P7728407055472013422

`∪[A006450(n+1), A001748(A054799(n+1))]`
-/

namespace A316151.P7728407055472013422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (A054799 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316151.P7728407055472013422

/-! ## A316151.P11491068023545115024

`∪[A001748(A001359(n+1)), A175247(n+2)]`
-/

namespace A316151.P11491068023545115024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (A001359 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175247 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316151.P11491068023545115024

/-! ## A316151.P13125947022853412817

`∪[A001748(A001359(n+1)), A141138(n+1)+1]`
-/

namespace A316151.P13125947022853412817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (A001359 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141138 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316151.P13125947022853412817

/-! ## A316151.P13193329006289673431

`∪[A001748(A054799(n+1)), A262021(n+1)+1+n]`
-/

namespace A316151.P13193329006289673431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (A054799 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262021 (n + 1) + 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A316151.P13193329006289673431

/-!
# A316152: Inverse Euler transform of n^2.

The programs for A316152, there is no canonical definition to state claims against.
-/

/-! ## A316152.P9999565686997149952

`∑{d}[n+1, A154955(#)*A316150((n+1)/#)]`
-/

namespace A316152.P9999565686997149952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A154955 d * A316150 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A316152.P9999565686997149952

/-!
# A316153: Heinz numbers of integer partitions of prime numbers into a prime number of prime parts.

The programs for A316153, there is no canonical definition to state claims against.
-/

/-! ## A316153.P18442951520244371828

`filter[A316092(n+1), A359464(#)]`
-/

namespace A316153.P18442951520244371828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A316153.P18442951520244371828

/-! ## A316153.P2289901185336504259

`∩[A000379(n+1), A316092(n+1)]`
-/

namespace A316153.P2289901185336504259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316153.P2289901185336504259

/-! ## A316153.P7608052831049770265

`∩[A023886(n+1), A316092(n+1)]`
-/

namespace A316153.P7608052831049770265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316153.P7608052831049770265

/-! ## A316153.P10831906375282842734

`∩[A033872(n+1), A316092(n+1)]`
-/

namespace A316153.P10831906375282842734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316153.P10831906375282842734

/-! ## A316153.P3927541515075532873

`∩[A063989(n+1), A316092(n+1)]`
-/

namespace A316153.P3927541515075532873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316153.P3927541515075532873

/-!
# A316154: Number of integer partitions of prime(n) into a prime number of prime parts.

The programs for A316154, there is no canonical definition to state claims against.
-/

/-! ## A316154.P11946360877614260257

`xor(A039982(A149405(n)), A126042(n))`
-/

namespace A316154.P11946360877614260257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A039982 (A149405 n).toNat) (A126042 n)

end

end A316154.P11946360877614260257

/-! ## A316154.P638049698578985608

`A272269(A008637(n))-A015740(n+1)`
-/

namespace A316154.P638049698578985608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272269 (A008637 n).toNat - A015740 (n + 1)

end

end A316154.P638049698578985608

/-! ## A316154.P18335334452765602260

`A214526(A242450(n)-A305212(n+1))`
-/

namespace A316154.P18335334452765602260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A242450 n - A305212 (n + 1)).toNat

end

end A316154.P18335334452765602260

/-! ## A316154.P7664966971534937530

`A118302(A118330(n))+∑[A118302(n+1)]`
-/

namespace A316154.P7664966971534937530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118302 (A118330 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316154.P7664966971534937530

/-! ## A316154.P9783059658690733657

`A065855(A018261(n+1)+A000700(2*n+3))`
-/

namespace A316154.P9783059658690733657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A018261 (n + 1) + A000700 (2 * n + 3)).toNat

end

end A316154.P9783059658690733657

/-!
# A316156: The lexicographically earliest increasing sequence such that a(n) divides the sum of the first a(n)+1 terms.

The programs for A316156, there is no canonical definition to state claims against.
-/

/-! ## A316156.P10374352897408525994

`A318873(n)+a(n-1)` with `a(0)=1`
-/

namespace A316156.P10374352897408525994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A318873 n + a (n - 1)

end

end A316156.P10374352897408525994

/-! ## A316156.P546327428371497901

`∑[A318873(A028310(n))]`
-/

namespace A316156.P546327428371497901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318873 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316156.P546327428371497901

/-! ## A316156.P8197770353477218861

`∑[A318873(A000038(n)+n)]`
-/

namespace A316156.P8197770353477218861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318873 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316156.P8197770353477218861

/-! ## A316156.P11055012258966082011

`∑[A318873(A108069(or(1, n))+n)]`
-/

namespace A316156.P11055012258966082011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318873 (A108069 (Nat.lor 1 n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316156.P11055012258966082011

/-! ## A316156.P16665590502263373741

`∑[A318873(n-A019428(2*n)+1)]`
-/

namespace A316156.P16665590502263373741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318873 ((n : ℤ) - A019428 (2 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316156.P16665590502263373741

/-! ## A316156.P1808814349466593564

`∑[A318873(n+1)]+1-A318873(n+1)`
-/

namespace A316156.P1808814349466593564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A318873 (n + 1))

end

end A316156.P1808814349466593564

/-! ## A316156.P16152938196545441418

`A318872(n+2)-(A318873(n+1)+A318872(n+1))`
-/

namespace A316156.P16152938196545441418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318872 (n + 2) - (A318873 (n + 1) + A318872 (n + 1))

end

end A316156.P16152938196545441418

/-! ## A316156.P2519012287307752922

`∑[A318873(A108069(n+12)+n)]`
-/

namespace A316156.P2519012287307752922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318873 (A108069 (n + 12) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316156.P2519012287307752922

/-! ## A316156.P14330462673195063780

`∑[A318873(A123108(2*n))]`
-/

namespace A316156.P14330462673195063780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318873 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316156.P14330462673195063780

/-! ## A316156.P15835461740631932260

`∑[A318873(A103128(∑[n]+1))]`
-/

namespace A316156.P15835461740631932260
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318873 (A103128 (∑ j ∈ Finset.range (n + 1), f2 j + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A316156.P15835461740631932260

/-!
# A316158: Expansion of e.g.f. exp(exp(exp(x*exp(x)) - 1) - 1).

The programs for A316158, there is no canonical definition to state claims against.
-/

/-! ## A316158.P14295995130574261898

`A209631(∑[n+4]+2)`
-/

namespace A316158.P14295995130574261898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209631 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A316158.P14295995130574261898

/-! ## A316158.P14580150271035903382

`A002264((A243156(n)+1)²)`
-/

namespace A316158.P14580150271035903382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 ((A243156 n + 1) ^ 2).toNat

end

end A316158.P14580150271035903382

/-!
# A316160: Number of pairs of compositions of n corresponding to a seaweed algebra of index n-3.

The programs for A316160, the canonical program `A316160.P13123242928267186193` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A316160 has offset 3).

The definition of A316160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A316160.P13123242928267186193

`2*Δ[A060747(n)*A111297(n)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A316160

/-- `2*Δ[A060747(n)*A111297(n)]` -/
def P13123242928267186193.Spec : Prop :=
  ∀ n, P13123242928267186193.a n = A316160 (n + 3)

theorem P13123242928267186193.correct : P13123242928267186193.Spec := by
  intro n
  simp only [A316160, Nat.add_sub_cancel]

end A316160

/-!
# A316170: Number of nXn 0..1 arrays with every element unequal to 1, 2, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316170, there is no canonical definition to state claims against.
-/

/-! ## A316170.P12062435805676405788

`A316176(∑[4*n]+1)`
-/

namespace A316170.P12062435805676405788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316176 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316170.P12062435805676405788

/-! ## A316170.P17861791560245838635

`record[A316176(Δ[A235355(n)])]`
-/

namespace A316170.P17861791560245838635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316176 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316170.P17861791560245838635

/-! ## A316170.P16682807058159719882

`and(-1, A316176(A001844(n)))`
-/

namespace A316170.P16682807058159719882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A316176 (A001844 n).toNat)

end

end A316170.P16682807058159719882

/-! ## A316170.P12991196000482778799

`record[A316176(A272267(n+1))]`
-/

namespace A316170.P12991196000482778799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316176 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316170.P12991196000482778799

/-! ## A316170.P1711638305191702644

`record[A316176(A330613(n+1))]`
-/

namespace A316170.P1711638305191702644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316176 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316170.P1711638305191702644

/-!
# A316171: Number of nX3 0..1 arrays with every element unequal to 1, 2, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316171, there is no canonical definition to state claims against.
-/

/-! ## A316171.P1733760956143624609

`A316176(∑[n+2]+4)`
-/

namespace A316171.P1733760956143624609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316176 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A316171.P1733760956143624609

/-! ## A316171.P11599381301876249579

`and(-1, A316176(A167614(n+1)))`
-/

namespace A316171.P11599381301876249579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A316176 (A167614 (n + 1)).toNat)

end

end A316171.P11599381301876249579

/-! ## A316171.P14900599472878057628

`record[gcd(A303913(n), A316176(n+1))]`
-/

namespace A316171.P14900599472878057628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303913 n) (A316176 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316171.P14900599472878057628

/-! ## A316171.P12551199613482475750

`A326543(n)+A316176(A167614(n+1))`
-/

namespace A316171.P12551199613482475750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326543 n + A316176 (A167614 (n + 1)).toNat

end

end A316171.P12551199613482475750

/-! ## A316171.P530547358790271849

`A316176(A167614(n+1))%A038831(n)`
-/

namespace A316171.P530547358790271849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316176 (A167614 (n + 1)).toNat) (A038831 n)

end

end A316171.P530547358790271849

/-!
# A316172: Number of nX4 0..1 arrays with every element unequal to 1, 2, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316172, there is no canonical definition to state claims against.
-/

/-! ## A316172.P2886083588325014684

`A316176(∑[n+3]+7)`
-/

namespace A316172.P2886083588325014684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316176 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A316172.P2886083588325014684

/-! ## A316172.P10514653505775178004

`A316176(A052905(n)+9)+char[17]`
-/

namespace A316172.P10514653505775178004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316176 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316172.P10514653505775178004

/-! ## A316172.P13770458489018207522

`lcm(A033999(n), A316176(A374004(n+1)))`
-/

namespace A316172.P13770458489018207522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A316176 (A374004 (n + 1)).toNat)

end

end A316172.P13770458489018207522

/-! ## A316172.P5941531515993977753

`A007318(C(2, n))*A316176(A052905(n)+9)`
-/

namespace A316172.P5941531515993977753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A316176 (A052905 n + 9).toNat

end

end A316172.P5941531515993977753

/-! ## A316172.P148063249021040930

`A000041(C(n, 64))*A316176(A052905(n)+9)`
-/

namespace A316172.P148063249021040930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n 64) * A316176 (A052905 n + 9).toNat

end

end A316172.P148063249021040930

/-!
# A316173: Number of nX5 0..1 arrays with every element unequal to 1, 2, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316173, there is no canonical definition to state claims against.
-/

/-! ## A316173.P16833409810385023260

`A316176(∑[n+4]+11)`
-/

namespace A316173.P16833409810385023260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316176 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A316173.P16833409810385023260

/-! ## A316173.P5189609886386387537

`A316176(A000217(n+4)+5)+char[18]`
-/

namespace A316173.P5189609886386387537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316176 (A000217 (n + 4) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A316173.P5189609886386387537

/-! ## A316173.P5373047361368673347

`A316176(A167499(n+3))/A153675(n+1)`
-/

namespace A316173.P5373047361368673347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316176 (A167499 (n + 3)).toNat : ℚ) / (A153675 (n + 1) : ℚ)

end

end A316173.P5373047361368673347

/-! ## A316173.P6572881187394234508

`A316176(A374005(n+1))%A200707(n+5)`
-/

namespace A316173.P6572881187394234508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316176 (A374005 (n + 1)).toNat) (A200707 (n + 5))

end

end A316173.P6572881187394234508

/-! ## A316173.P13483247813694806032

`(A000041(n)%2)!*A316176(A000217(n+4)+5)`
-/

namespace A316173.P13483247813694806032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A316176 (A000217 (n + 4) + 5).toNat

end

end A316173.P13483247813694806032

/-!
# A316174: Number of n X 6 0..1 arrays with every element unequal to 1, 2, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316174, there is no canonical definition to state claims against.
-/

/-! ## A316174.P6906831358225980011

`A316176(A374007(n+1))`
-/

namespace A316174.P6906831358225980011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316176 (A374007 (n + 1)).toNat

end

end A316174.P6906831358225980011

/-! ## A316174.P10153405039095704431

`A316176(A056115(n)+21)`
-/

namespace A316174.P10153405039095704431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316176 (A056115 n + 21).toNat

end

end A316174.P10153405039095704431

/-! ## A316174.P17242696563247559544

`A316176(Δ[A264443(n)]+10)`
-/

namespace A316174.P17242696563247559544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316176 (f1 (n + 1) - f1 n + 10).toNat

end

end A316174.P17242696563247559544

/-! ## A316174.P2050063300942540171

`A316176(A167499(n+4)+1)`
-/

namespace A316174.P2050063300942540171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316176 (A167499 (n + 4) + 1).toNat

end

end A316174.P2050063300942540171

/-! ## A316174.P12332134582931583976

`A316176(A167614(n+4)+3)`
-/

namespace A316174.P12332134582931583976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316176 (A167614 (n + 4) + 3).toNat

end

end A316174.P12332134582931583976

/-!
# A316175: Number of nX7 0..1 arrays with every element unequal to 1, 2, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316175, there is no canonical definition to state claims against.
-/

/-! ## A316175.P6928796199829285354

`A316176(A374008(n+1))`
-/

namespace A316175.P6928796199829285354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316176 (A374008 (n + 1)).toNat

end

end A316175.P6928796199829285354

/-! ## A316175.P3324018514312878122

`A316176(A167487(n+5))`
-/

namespace A316175.P3324018514312878122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316176 (A167487 (n + 5)).toNat

end

end A316175.P3324018514312878122

/-! ## A316175.P14092550813925282247

`A316176(A056119(n)+28)`
-/

namespace A316175.P14092550813925282247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316176 (A056119 n + 28).toNat

end

end A316175.P14092550813925282247

/-! ## A316175.P12978640674983508982

`A316176(eq[11, A066657(n)])`
-/

namespace A316175.P12978640674983508982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316176 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316175.P12978640674983508982

/-! ## A316175.P17837754423219569373

`A316176(A166136(n+5)+1)`
-/

namespace A316175.P17837754423219569373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316176 (A166136 (n + 5) + 1).toNat

end

end A316175.P17837754423219569373

/-!
# A316176: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 1, 2, 4, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A316176, there is no canonical definition to state claims against.
-/

/-! ## A316176.P15919982950918198047

`A316648(n+1)+A170980(A099594(n))`
-/

namespace A316176.P15919982950918198047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316648 (n + 1) + A170980 (A099594 n).toNat

end

end A316176.P15919982950918198047

/-! ## A316176.P17057646865006962605

`A316648(n+1)+A244415(A168549(n))`
-/

namespace A316176.P17057646865006962605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316648 (n + 1) + A244415 (A168549 n).toNat

end

end A316176.P17057646865006962605

/-! ## A316176.P14624609503559868979

`A316648(n+1)+A131809(A331277(n))`
-/

namespace A316176.P14624609503559868979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316648 (n + 1) + A131809 (A331277 n).toNat

end

end A316176.P14624609503559868979

/-! ## A316176.P9873068121523746059

`A316648(n+1)+A133723(A331562(n))`
-/

namespace A316176.P9873068121523746059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316648 (n + 1) + A133723 (A331562 n).toNat

end

end A316176.P9873068121523746059

/-! ## A316176.P5688882100863881047

`A317458(n+1)-A186034(A022167(n))`
-/

namespace A316176.P5688882100863881047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317458 (n + 1) - A186034 (A022167 n).toNat

end

end A316176.P5688882100863881047

/-!
# A316177: Number of n X n 0..1 arrays with every element unequal to 0, 1, 2, 3, 4 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316177, there is no canonical definition to state claims against.
-/

/-! ## A316177.P4656117240841652883

`A316183(∑[4*n]+1)`
-/

namespace A316177.P4656117240841652883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316183 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A316177.P4656117240841652883

/-! ## A316177.P10763250358037827741

`record[A003982(n)*A316183(n+1)]`
-/

namespace A316177.P10763250358037827741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A316183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316177.P10763250358037827741

/-! ## A316177.P7009779566226621377

`record[gcd(A037012(n), A316183(n+1))]`
-/

namespace A316177.P7009779566226621377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A316183 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A316177.P7009779566226621377

/-! ## A316177.P13626388565551521351

`A316183(A001844(n))+A011739(n)`
-/

namespace A316177.P13626388565551521351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316183 (A001844 n).toNat + A011739 n

end

end A316177.P13626388565551521351

/-! ## A316177.P8342023023933454368

`A245013(n)*A316183(A001844(n))`
-/

namespace A316177.P8342023023933454368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 n * A316183 (A001844 n).toNat

end

end A316177.P8342023023933454368

/-!
# A316178: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 3, 4 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316178, there is no canonical definition to state claims against.
-/

/-! ## A316178.P12400509411142288606

`A316183(∑[n+2]+4)`
-/

namespace A316178.P12400509411142288606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316183 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A316178.P12400509411142288606

/-! ## A316178.P18392311436750611615

`A316183(A167614(n+1))+A025444(n)`
-/

namespace A316178.P18392311436750611615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316183 (A167614 (n + 1)).toNat + A025444 n

end

end A316178.P18392311436750611615

/-! ## A316178.P14077091627097989523

`A316183(A167614(n+1))+A178798(n)`
-/

namespace A316178.P14077091627097989523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316183 (A167614 (n + 1)).toNat + A178798 n

end

end A316178.P14077091627097989523

/-! ## A316178.P11933991993323384427

`A316183(A167614(n+1))+A185284(n)`
-/

namespace A316178.P11933991993323384427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316183 (A167614 (n + 1)).toNat + A185284 n

end

end A316178.P11933991993323384427

/-! ## A316178.P9253207089425110028

`A316183(A167614(n+1))%A016976(n)`
-/

namespace A316178.P9253207089425110028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316183 (A167614 (n + 1)).toNat) (A016976 n)

end

end A316178.P9253207089425110028

/-!
# A316179: Number of nX4 0..1 arrays with every element unequal to 0, 1, 2, 3, 4 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316179, there is no canonical definition to state claims against.
-/

/-! ## A316179.P3404562097883103814

`A316183(∑[n+3]+7)`
-/

namespace A316179.P3404562097883103814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316183 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A316179.P3404562097883103814

/-! ## A316179.P4618373768114990983

`A316183(A141214(n+1))+A178780(n)`
-/

namespace A316179.P4618373768114990983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316183 (A141214 (n + 1)).toNat + A178780 n

end

end A316179.P4618373768114990983

/-! ## A316179.P7748369594580832830

`A316183(A055998(n+2))+A178780(n)`
-/

namespace A316179.P7748369594580832830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316183 (A055998 (n + 2)).toNat + A178780 n

end

end A316179.P7748369594580832830

/-! ## A316179.P9087131232719954590

`A316183(A141214(n+1))%A281951(n+2)`
-/

namespace A316179.P9087131232719954590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316183 (A141214 (n + 1)).toNat) (A281951 (n + 2))

end

end A316179.P9087131232719954590

/-! ## A316179.P11083956160663914341

`A316183(A055998(n+2))%A281951(n+2)`
-/

namespace A316179.P11083956160663914341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316183 (A055998 (n + 2)).toNat) (A281951 (n + 2))

end

end A316179.P11083956160663914341

/-!
# A316180: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 3, 4 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316180, there is no canonical definition to state claims against.
-/

/-! ## A316180.P9213236863198213000

`A316183(A167499(n+3))`
-/

namespace A316180.P9213236863198213000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316183 (A167499 (n + 3)).toNat

end

end A316180.P9213236863198213000

/-! ## A316180.P12840603479160238104

`A316183(A155212(n)+13)`
-/

namespace A316180.P12840603479160238104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316183 (A155212 n + 13).toNat

end

end A316180.P12840603479160238104

/-! ## A316180.P13584625333625759436

`A316183(eq[7, A066657(n)])`
-/

namespace A316180.P13584625333625759436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316183 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316180.P13584625333625759436

/-! ## A316180.P15180014767388197338

`A316183(A051936(n+4)+14)`
-/

namespace A316180.P15180014767388197338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316183 (A051936 (n + 4) + 14).toNat

end

end A316180.P15180014767388197338

/-! ## A316180.P12440072042236749128

`A316183(eq[6, A131818(n+1)])`
-/

namespace A316180.P12440072042236749128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316183 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316180.P12440072042236749128

/-!
# A316181: Number of n X 6 0..1 arrays with every element unequal to 0, 1, 2, 3, 4 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316181, there is no canonical definition to state claims against.
-/

/-! ## A316181.P10885179566250318429

`A316183(eq[7, A131818(n+1)])`
-/

namespace A316181.P10885179566250318429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316183 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316181.P10885179566250318429

/-! ## A316181.P1487095625718809311

`A316183(A374007(n+1))`
-/

namespace A316181.P1487095625718809311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316183 (A374007 (n + 1)).toNat

end

end A316181.P1487095625718809311

/-! ## A316181.P10204300223399565034

`A316183(A052905(n+3))`
-/

namespace A316181.P10204300223399565034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316183 (A052905 (n + 3)).toNat

end

end A316181.P10204300223399565034

/-! ## A316181.P870225132754793094

`A316183(A056119(n)+16)`
-/

namespace A316181.P870225132754793094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316183 (A056119 n + 16).toNat

end

end A316181.P870225132754793094

/-! ## A316181.P17978152188572806118

`A316183(eq[3, A219347(n)])`
-/

namespace A316181.P17978152188572806118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316183 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316181.P17978152188572806118

/-!
# A316182: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 3, 4 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316182, there is no canonical definition to state claims against.
-/

/-! ## A316182.P6280886309576852657

`A316183(A000217(n+6)+7)`
-/

namespace A316182.P6280886309576852657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316183 (A000217 (n + 6) + 7).toNat

end

end A316182.P6280886309576852657

/-! ## A316182.P14154286096219449083

`A316183(eq[8, A131818(n+1)])`
-/

namespace A316182.P14154286096219449083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316183 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316182.P14154286096219449083

/-! ## A316182.P11486539249662402445

`A316183(A374008(n+1))`
-/

namespace A316182.P11486539249662402445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316183 (A374008 (n + 1)).toNat

end

end A316182.P11486539249662402445

/-! ## A316182.P1808182036637889197

`A316183(A055999(n+4))`
-/

namespace A316182.P1808182036637889197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316183 (A055999 (n + 4)).toNat

end

end A316182.P1808182036637889197

/-! ## A316182.P637432562796830450

`A316183(eq[4, A219347(n)])`
-/

namespace A316182.P637432562796830450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316183 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A316182.P637432562796830450

/-!
# A316183: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 1, 2, 3, 4 or 8 king-move adjacent elements, with upper left element zero.

The programs for A316183, there is no canonical definition to state claims against.
-/

/-! ## A316183.P12625006205611363686

`A281955(n+1)+A011731(A022171(n))`
-/

namespace A316183.P12625006205611363686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281955 (n + 1) + A011731 (A022171 n).toNat

end

end A316183.P12625006205611363686

/-! ## A316183.P11792752666671307069

`A281955(n+1)+A025465(A023105(n))`
-/

namespace A316183.P11792752666671307069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281955 (n + 1) + A025465 (A023105 n).toNat

end

end A316183.P11792752666671307069

/-! ## A316183.P5430378351388792864

`A281955(n+1)+A055641(A022112(n))`
-/

namespace A316183.P5430378351388792864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281955 (n + 1) + A055641 (A022112 n).toNat

end

end A316183.P5430378351388792864

/-! ## A316183.P6781806746740771926

`A281955(n+1)+A016389(A086645(n))`
-/

namespace A316183.P6781806746740771926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281955 (n + 1) + A016389 (A086645 n).toNat

end

end A316183.P6781806746740771926

/-! ## A316183.P12235434408468127207

`A281955(n+1)+A102683(A000579(n))`
-/

namespace A316183.P12235434408468127207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281955 (n + 1) + A102683 (A000579 n).toNat

end

end A316183.P12235434408468127207

/-!
# A316187: Positive integers k that k^2 is a palindrome not containing a 0 digit.

The programs for A316187, there is no canonical definition to state claims against.
-/

/-! ## A316187.P13762312219919957608

`∩[A002778(n+1), A052040(n+1)]`
-/

namespace A316187.P13762312219919957608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A316187.P13762312219919957608

/-! ## A316187.P16435278239996479460

`A002778(lt[A121267(n+1), A000217(n)])`
-/

namespace A316187.P16435278239996479460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A316187.P16435278239996479460

/-! ## A316187.P1303783478433470952

`A002778(lt[A121267(n+1), A001844(n)])`
-/

namespace A316187.P1303783478433470952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A316187.P1303783478433470952

/-! ## A316187.P10186928247811066697

`A002778(lt[A121267(n+1), A250120(n)])`
-/

namespace A316187.P10186928247811066697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A316187.P10186928247811066697

/-! ## A316187.P6397280381788598273

`A002778(lt[A121267(n+1), A312165(n)])`
-/

namespace A316187.P6397280381788598273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A316187.P6397280381788598273

/-!
# A316188: Primes p >= 7 such that p == 5 (mod 6) and for all r in the range 5 <= r < p - 2 we have p - 2 != r (mod r*(r + 1)/2).

The programs for A316188, there is no canonical definition to state claims against.
-/

/-! ## A316188.P2073268938844375770

`p?[A064429(A177029(n+1))]`
-/

namespace A316188.P2073268938844375770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A177029 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A316188.P2073268938844375770

/-! ## A316188.P16297591534587073752

`p?[A143097(A304690(n+1))]`
-/

namespace A316188.P16297591534587073752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143097 (A304690 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A316188.P16297591534587073752

/-! ## A316188.P7515260737597957591

`filter[A304690(n+1), A080846(#)]`
-/

namespace A316188.P7515260737597957591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080846 (f1 j).toNat = 1) n)

end

end A316188.P7515260737597957591

/-! ## A316188.P7550417983737789656

`filter[A304690(n+1), A131532(#)]`
-/

namespace A316188.P7550417983737789656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131532 (f1 j).toNat = 1) n)

end

end A316188.P7550417983737789656

/-! ## A316188.P17835126759710552906

`filter[A304690(n+1), A131735(#)]`
-/

namespace A316188.P17835126759710552906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131735 (f1 j).toNat = 1) n)

end

end A316188.P17835126759710552906

/-!
# A316190: a(n) is the distance between n and the nearest prime power (in the sense of A246655) other than n.

The programs for A316190, there is no canonical definition to state claims against.
-/

/-! ## A316190.P2615144812121077321

`A284761((A324182(n)+1)²)`
-/

namespace A316190.P2615144812121077321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284761 ((A324182 n + 1) ^ 2).toNat

end

end A316190.P2615144812121077321

/-! ## A316190.P6125830696764416326

`gcd(A040001(A331925(n)), A331925(n+2))`
-/

namespace A316190.P6125830696764416326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040001 (A331925 n).toNat) (A331925 (n + 2))

end

end A316190.P6125830696764416326

/-! ## A316190.P17305260251324145017

`gcd(A036662(n), A247462(n+1))`
-/

namespace A316190.P17305260251324145017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036662 n) (A247462 (n + 1))

end

end A316190.P17305260251324145017

/-! ## A316190.P7299672743028313045

`gcd(A007090(A002522(3*(n+1))), A335465(n+1))`
-/

namespace A316190.P7299672743028313045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007090 (A002522 (3 * (n + 1))).toNat) (A335465 (n + 1))

end

end A316190.P7299672743028313045

/-! ## A316190.P3121701538473947876

`A332292(C(A030307(n+3), 3))`
-/

namespace A316190.P3121701538473947876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332292 (Nat.choose (A030307 (n + 3)).toNat 3)

end

end A316190.P3121701538473947876

/-!
# A316191: List of indices where the maximum of {A316190(j) | j<=n} increases.

The programs for A316191, there is no canonical definition to state claims against.
-/

/-! ## A316191.P8258899766620615007

`A089167(A272705(n))`
-/

namespace A316191.P8258899766620615007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089167 (A272705 n).toNat

end

end A316191.P8258899766620615007

/-!
# A316196: Number of symmetric self-avoiding polygons on hexagonal lattice with perimeter n, not counting rotations and reflections as distinct.

The programs for A316196, there is no canonical definition to state claims against.
-/

/-! ## A316196.P2863832331020001110

`A116537(A121304(n+2)+1)`
-/

namespace A316196.P2863832331020001110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116537 (A121304 (n + 2) + 1).toNat

end

end A316196.P2863832331020001110

/-!
# A316197: Number of self-avoiding polygons with perimeter 2*n and sides = 1 that have vertex angles from the set +-Pi/7, +-3*Pi/7, +-5*Pi/7, not counting rotations and reflections as distinct.

The programs for A316197, there is no canonical definition to state claims against.
-/

/-! ## A316197.P10074681433993086433

`A276335(A352839(n)+1)`
-/

namespace A316197.P10074681433993086433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276335 (A352839 n + 1).toNat

end

end A316197.P10074681433993086433

/-! ## A316197.P9059771512526320692

`A325002(A260532(n))%A260532(n)`
-/

namespace A316197.P9059771512526320692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325002 (A260532 n).toNat) (A260532 n)

end

end A316197.P9059771512526320692

/-!
# A316198: Number of self-avoiding polygons with perimeter 2*n and sides = 1 that have vertex angles from the set 0, +-Pi/4, +-Pi/2, +-3*Pi/4, not counting rotations and reflections as distinct.

The programs for A316198, there is no canonical definition to state claims against.
-/

/-! ## A316198.P1250361444116912157

`A242062(A337555(n+1)+2)`
-/

namespace A316198.P1250361444116912157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (A337555 (n + 1) + 2).toNat

end

end A316198.P1250361444116912157

/-!
# A316199: Number of self-avoiding polygons with perimeter 2*n and sides = 1 that have vertex angles from the set +-Pi/9, +-3*Pi/9, +-5*Pi/9, +-7*Pi/9, not counting rotations and reflections as distinct.

The programs for A316199, there is no canonical definition to state claims against.
-/

/-! ## A316199.P13390683514988455508

`A350811(9*n^n)`
-/

namespace A316199.P13390683514988455508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350811 (9 * n ^ n)

end

end A316199.P13390683514988455508

